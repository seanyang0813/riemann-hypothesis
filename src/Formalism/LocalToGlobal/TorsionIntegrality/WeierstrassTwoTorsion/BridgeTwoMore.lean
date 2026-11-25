module

public import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.StatementQ
public import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.TwoTorsionU
public import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.XPowSuccDvdOfDerivative
public import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.StatementO
public import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.FglInvariant
public import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.FormalGroupConstCoeffZero
public import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.CubeThreeR
public import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.StatementR
public import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.ChordEquation
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.FlowTwoTorsionWp
import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.CurveSer
import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.FormalLogarithmBaseChange
import Mathlib.Tactic.Linter.Style
import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.BridgeJ
import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.EqWSerSubst
import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.Laurent
import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.ToLTDenMulInv
import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.TwoTorsionIntegral

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.NormLeOneOfMonicTwo, Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.DivisionLogarithm, Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.FlowDouble, Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.DifferenceLinearCoeff, Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.WeierstrassPPrimeUnit, Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.BridgeTwoMore

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.NormLeOneOfMonicTwo =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.NormLeOneOfMonicTwo", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.StatementQ\npublic import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.TwoTorsionU\npublic import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.XPowSuccDvdOfDerivative\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open PowerSeries

universe u v

noncomputable section

namespace Formalism.L2.Th1.A

namespace Q2

section Parity

variable {R : Type u} [CommRing R]

theorem subst_neg_X (f : R⟦X⟧) : f.subst (-X : R⟦X⟧) = rescale (-1) f := by
  rw [PowerSeries.rescale_eq_subst, neg_one_smul]

theorem coeff_subst_neg_X (f : R⟦X⟧) (n : ℕ) :
    coeff n (f.subst (-X : R⟦X⟧)) = (-1) ^ n * coeff n f := by
  rw [subst_neg_X, PowerSeries.coeff_rescale]

variable {K : Type u} [Field K] [CharZero K]

theorem coeff_odd_eq_zero {f : K⟦X⟧} (h : f.subst (-X : K⟦X⟧) = f) {n : ℕ} (hn : Odd n) :
    coeff n f = 0 := by
  have h1 := coeff_subst_neg_X f n
  rw [h, hn.neg_one_pow] at h1
  have h2 : (2 : K) * coeff n f = 0 := by linear_combination h1
  simpa using h2

end Parity

section Ball

variable {K : Type} [NormedField K] [IsUltrametricDist K]

theorem nadd {a b : K} (ha : ‖a‖ ≤ 1) (hb : ‖b‖ ≤ 1) : ‖a + b‖ ≤ 1 := (IsUltrametricDist.norm_add_le_max a b).trans (max_le ha hb)

theorem nneg {a : K} (ha : ‖a‖ ≤ 1) : ‖-a‖ ≤ 1 := by
  rw [norm_neg]
  exact ha

theorem nsub {a b : K} (ha : ‖a‖ ≤ 1) (hb : ‖b‖ ≤ 1) : ‖a - b‖ ≤ 1 := by
  rw [sub_eq_add_neg]
  exact nadd ha (nneg hb)

theorem nmul {a b : K} (ha : ‖a‖ ≤ 1) (hb : ‖b‖ ≤ 1) : ‖a * b‖ ≤ 1 := by
  rw [norm_mul]
  nlinarith [norm_nonneg a, norm_nonneg b]

theorem npow {a : K} (ha : ‖a‖ ≤ 1) (n : ℕ) : ‖a ^ n‖ ≤ 1 := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [pow_succ]
    exact nmul ih ha

theorem ntwo : ‖(2 : K)‖ ≤ 1 := by
  have h1 : ‖(1 : K)‖ ≤ 1 := by simp
  have h := nadd h1 h1
  rwa [one_add_one_eq_two] at h

theorem nthree : ‖(3 : K)‖ ≤ 1 := by
  have h1 : ‖(1 : K)‖ ≤ 1 := by simp
  have h : (3 : K) = 2 + 1 := by norm_num
  rw [h]
  exact nadd ntwo h1

theorem norm_le_one_of_monic_two {y b c : K} (hb : ‖b‖ ≤ 1) (hc : ‖c‖ ≤ 1)
    (h : y ^ 2 + b * y = c) : ‖y‖ ≤ 1 := by
  by_contra hy
  push_neg at hy
  have h2 : y ^ 2 = c + -(b * y) := by rw [← h]; ring
  have h3 : ‖y ^ 2‖ ≤ max ‖c‖ ‖-(b * y)‖ := by
    rw [h2]
    exact IsUltrametricDist.norm_add_le_max _ _
  rw [norm_neg, norm_pow, norm_mul] at h3
  have hby : ‖b‖ * ‖y‖ ≤ ‖y‖ := by nlinarith [norm_nonneg b, norm_nonneg y]
  have hmax : max ‖c‖ (‖b‖ * ‖y‖) ≤ ‖y‖ := max_le (by linarith) hby
  nlinarith

end Ball

end Q2

open Q2

theorem two_curves_relation : BridgeTwoMore := by
  intro K _ _ _ W xT yT hE h2
  obtain ⟨hroot, -, hkap, -, -, -, heven, -⟩ := _root_.Formalism.L2.Th1.A.two_torsion_integral K W xT yT hE h2
  refine ⟨hroot, fun n hn => coeff_odd_eq_zero heven hn, ?_⟩
  rintro ⟨h1, h2', h3, h4, h6⟩ hx
  have hy : ‖yT‖ ≤ 1 := by
    rw [WeierstrassCurve.Affine.equation_iff] at hE
    refine norm_le_one_of_monic_two (b := W.a₁ * xT + W.a₃)
      (c := xT ^ 3 + W.a₂ * xT ^ 2 + W.a₄ * xT + W.a₆) (nadd (nmul h1 hx) h3)
      (nadd (nadd (nadd (npow hx 3) (nmul h2' (npow hx 2))) (nmul h4 hx)) h6) ?_
    linear_combination hE
  refine ⟨hy, ?_, ?_⟩
  · have : W.b₂ / 12 - (xT + W.b₂ / 12) = -xT := by ring
    rw [this]; exact nneg hx
  · rw [hkap]
    exact nsub (nadd (nadd (nmul nthree (npow hx 2)) (nmul (nmul ntwo h2') hx)) h4) (nmul h1 hy)

theorem flow_unique_integral : FlowUniqueZ.{u} := by
  intro K _ _ W x y x' y' hF hF' hx0 hy0
  obtain ⟨-, hx, hy⟩ := hF
  obtain ⟨-, hx', hy'⟩ := hF'
  have hR : ∀ (n : ℕ) (r : K), n ≠ 0 → (n : K) * r = 0 → r = 0 := fun n r hn h =>
    (mul_eq_zero.1 h).resolve_left (Nat.cast_ne_zero.2 hn)
  simp only [WeierstrassCurve.map_a₁, WeierstrassCurve.map_a₂, WeierstrassCurve.map_a₃,
    WeierstrassCurve.map_a₄] at hx hy hx' hy'
  have dx : PowerSeries.derivative (x - x') = 2 * (y - y') + C W.a₁ * (x - x') := by
    rw [map_sub, hx, hx']; ring
  have dy : PowerSeries.derivative (y - y')
      = (x - x') * (3 * (x + x') + 2 * C W.a₂) - C W.a₁ * (y - y') := by
    rw [map_sub, hy, hy']; ring
  have cx : constantCoeff (x - x') = 0 := by rw [map_sub, hx0, sub_self]
  have cy : constantCoeff (y - y') = 0 := by rw [map_sub, hy0, sub_self]
  have key : ∀ n : ℕ, X ^ n ∣ x - x' ∧ X ^ n ∣ y - y' := by
    intro n
    induction n with
    | zero => simp
    | succ n ih =>
      obtain ⟨ix, iy⟩ := ih
      refine ⟨Nn.X_pow_succ_dvd_of_derivative hR cx ?_, Nn.X_pow_succ_dvd_of_derivative hR cy ?_⟩
      · rw [dx]
        exact dvd_add (Dvd.dvd.mul_left iy _) (Dvd.dvd.mul_left ix _)
      · rw [dy]
        exact dvd_sub (Dvd.dvd.mul_right ix _) (Dvd.dvd.mul_left iy _)
  exact ⟨sub_eq_zero.1 (Nn.eq_zero_of_forall_X_pow_dvd fun n => (key n).1),
    sub_eq_zero.1 (Nn.eq_zero_of_forall_X_pow_dvd fun n => (key n).2)⟩

end Formalism.L2.Th1.A
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.NormLeOneOfMonicTwo =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.DivisionLogarithm =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.DivisionLogarithm", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.StatementO\npublic import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.FglInvariant\nimport Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.FlowTwoTorsionWp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open PowerSeries

universe u v

noncomputable section

namespace Formalism.L2.Th1.A

theorem division_spec : DivSpec.{u, v} := by
  intro R _ W n hn
  obtain ⟨hcc, hc1⟩ := (zSerSpec R W).1 n
  have hu : IsUnit (coeff 1 (zSer W n)) := by rw [hc1]; exact hn
  obtain ⟨h0, hr, hl, h1, -, -⟩ := compInvSpec R (zSer W n) hcc hu
  refine ⟨h0, ?_, hr, hl, ?_, ?_⟩
  · rw [hc1] at h1
    rw [mul_comm]; exact h1
  · intro S _ φ
    have key := compInvMap R S φ (zSer W n) hcc hu
    rw [zSerMap R S φ W n] at key
    exact key
  · intro h2
    subst h2
    rfl

section Double

variable {A : Type u} [CommRing A]

end Double

end Formalism.L2.Th1.A
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.DivisionLogarithm =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.FlowDouble =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.FlowDouble", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.StatementO\npublic import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.DivisionLogarithm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

universe u v

namespace Formalism.L2.Th1.A

alias divSpec := _root_.Formalism.L2.Th1.A.division_spec

end Formalism.L2.Th1.A
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.FlowDouble =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.DifferenceLinearCoeff =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.DifferenceLinearCoeff", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.StatementQ\npublic import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.FormalGroupConstCoeffZero\npublic import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.CubeThreeR\npublic import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.FglInvariant\npublic import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.FlowDouble\nimport Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.FlowTwoTorsionWp\nimport Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.CurveSer\nimport Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.FormalLogarithmBaseChange\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open PowerSeries

universe u v

noncomputable section

namespace Formalism.L2.Th1.A

namespace Q1

open CubeR

section Diag

variable {R : Type u} [CommRing R]

theorem subst_XX (G : MvPowerSeries (Fin 2) R) :
    G.subst ![(MvPowerSeries.X 0 : MvPowerSeries (Fin 2) R), MvPowerSeries.X 1] = G := by
  have h : (![(MvPowerSeries.X 0 : MvPowerSeries (Fin 2) R), MvPowerSeries.X 1])
      = (MvPowerSeries.X : Fin 2 → MvPowerSeries (Fin 2) R) := by
    funext i
    fin_cases i <;> rfl
  simp only [h, MvPowerSeries.subst_self, id_eq]

theorem eq_single0 (e : Fin 2 →₀ ℕ) (he : e 1 = 0) : e = Finsupp.single 0 (e 0) := by
  ext i
  fin_cases i <;> simp [he]

theorem cc_subst {σ τ : Type*} {a : σ → MvPowerSeries τ R} (ha : MvPowerSeries.HasSubst a)
    (ha' : ∀ i, (a i).constantCoeff = 0) (f : MvPowerSeries σ R) :
    (f.subst a).constantCoeff = f.constantCoeff := by
  have h0 : (f - MvPowerSeries.C f.constantCoeff).constantCoeff = 0 := by simp
  have h1 := MvPowerSeries.constantCoeff_subst_eq_zero ha ha' h0
  rw [MvPowerSeries.subst_sub ha, MvPowerSeries.subst_C, map_sub, MvPowerSeries.constantCoeff_C,
    sub_eq_zero] at h1
  exact h1

theorem coeff_subst_X0_zero (H : MvPowerSeries (Fin 2) R) (e : Fin 2 →₀ ℕ) (he : e 1 = 0) :
    MvPowerSeries.coeff e (H.subst ![(MvPowerSeries.X 0 : MvPowerSeries (Fin 2) R), 0]) =
      MvPowerSeries.coeff e H := by
  classical
  have hs : MvPowerSeries.HasSubst ![(MvPowerSeries.X 0 : MvPowerSeries (Fin 2) R), 0] :=
    MvPowerSeries.HasSubst.X_zero
  have hprod : ∀ d : Fin 2 →₀ ℕ,
      (d.prod fun s n => (![(MvPowerSeries.X 0 : MvPowerSeries (Fin 2) R), 0] s) ^ n)
        = MvPowerSeries.X 0 ^ d 0 * 0 ^ d 1 := by
    intro d
    rw [Finsupp.prod_fintype _ _ (fun i => pow_zero _), Fin.prod_univ_two]
    simp
  rw [MvPowerSeries.coeff_subst hs, finsum_eq_single _ e]
  · rw [hprod, he, pow_zero, mul_one, MvPowerSeries.coeff_X_pow]
    rw [ite_eq_left (eq_single0 e he), smul_eq_mul, mul_one]
  · intro d hd
    rw [hprod]
    rcases Nat.eq_zero_or_pos (d 1) with h1 | h1
    · rw [h1, pow_zero, mul_one, MvPowerSeries.coeff_X_pow, ite_eq_right, smul_zero]
      intro h
      apply hd
      rw [eq_single0 d h1]
      exact h.symm
    · rw [zero_pow h1.ne', mul_zero, map_zero, smul_zero]

theorem X_one_dvd_of_subst_X_zero_eq_zero (H : MvPowerSeries (Fin 2) R)
    (h : H.subst ![(MvPowerSeries.X 0 : MvPowerSeries (Fin 2) R), 0] = 0) :
    (MvPowerSeries.X 1 : MvPowerSeries (Fin 2) R) ∣ H := by
  rw [MvPowerSeries.X_dvd_iff]
  intro m hm
  rw [← coeff_subst_X0_zero H m hm, h, map_zero]

theorem div_diag (H : MvPowerSeries (Fin 2) R)
    (h : H.subst ![(MvPowerSeries.X 0 : MvPowerSeries (Fin 2) R), MvPowerSeries.X 0] = 0) :
    ∃ Q, H = (MvPowerSeries.X 1 - MvPowerSeries.X 0) * Q := by
  have hτ : MvPowerSeries.HasSubst ![(MvPowerSeries.X 0 : MvPowerSeries (Fin 2) R),
      MvPowerSeries.X 1 + MvPowerSeries.X 0] :=
    MvPowerSeries.hasSubst_of_constantCoeff_zero (by simp)
  have hτ' : MvPowerSeries.HasSubst ![(MvPowerSeries.X 0 : MvPowerSeries (Fin 2) R),
      MvPowerSeries.X 1 - MvPowerSeries.X 0] :=
    MvPowerSeries.hasSubst_of_constantCoeff_zero (by simp)
  have hε : MvPowerSeries.HasSubst ![(MvPowerSeries.X 0 : MvPowerSeries (Fin 2) R), 0] :=
    MvPowerSeries.HasSubst.X_zero
  obtain ⟨H', hH'⟩ : ∃ H', H' = H.subst ![(MvPowerSeries.X 0 : MvPowerSeries (Fin 2) R),
      MvPowerSeries.X 1 + MvPowerSeries.X 0] := ⟨_, rfl⟩
  have e1 : H'.subst ![(MvPowerSeries.X 0 : MvPowerSeries (Fin 2) R), 0] = 0 := by
    rw [hH', MvPowerSeries.subst_comp_subst_apply hτ hε]
    have : (fun i => MvPowerSeries.subst ![(MvPowerSeries.X 0 : MvPowerSeries (Fin 2) R), 0]
        (![(MvPowerSeries.X 0 : MvPowerSeries (Fin 2) R), MvPowerSeries.X 1 + MvPowerSeries.X 0] i))
        = ![(MvPowerSeries.X 0 : MvPowerSeries (Fin 2) R), MvPowerSeries.X 0] := by
      funext i; fin_cases i
      · simp [MvPowerSeries.subst_X hε]
      · simp [MvPowerSeries.subst_add hε, MvPowerSeries.subst_X hε]
    rw [this]; exact h
  obtain ⟨Q', hQ'⟩ := X_one_dvd_of_subst_X_zero_eq_zero H' e1
  have hback : H'.subst ![(MvPowerSeries.X 0 : MvPowerSeries (Fin 2) R),
      MvPowerSeries.X 1 - MvPowerSeries.X 0] = H := by
    rw [hH', MvPowerSeries.subst_comp_subst_apply hτ hτ']
    have : (fun i => MvPowerSeries.subst ![(MvPowerSeries.X 0 : MvPowerSeries (Fin 2) R),
        MvPowerSeries.X 1 - MvPowerSeries.X 0]
        (![(MvPowerSeries.X 0 : MvPowerSeries (Fin 2) R), MvPowerSeries.X 1 + MvPowerSeries.X 0] i))
        = ![(MvPowerSeries.X 0 : MvPowerSeries (Fin 2) R), MvPowerSeries.X 1] := by
      funext i; fin_cases i
      · simp [MvPowerSeries.subst_X hτ']
      · simp [MvPowerSeries.subst_add hτ', MvPowerSeries.subst_X hτ']
    rw [this]; exact subst_XX H
  refine ⟨Q'.subst ![(MvPowerSeries.X 0 : MvPowerSeries (Fin 2) R),
      MvPowerSeries.X 1 - MvPowerSeries.X 0], ?_⟩
  conv_lhs => rw [← hback]
  rw [hQ', MvPowerSeries.subst_mul hτ', MvPowerSeries.subst_X hτ']
  simp

theorem coeff_lin (n : MvPowerSeries (Fin 2) R) :
    MvPowerSeries.coeff (Finsupp.single 0 1) ((U₁ - U₂) * n) = n.constantCoeff := by
  classical
  have h10 : ¬ (Finsupp.single (1 : Fin 2) 1 ≤ Finsupp.single (0 : Fin 2) 1) := by
    intro h
    have := h 1
    simp at this
  show MvPowerSeries.coeff (Finsupp.single 0 1) ((MvPowerSeries.X 0 - MvPowerSeries.X 1) * n) =
    n.constantCoeff
  rw [sub_mul, map_sub, MvPowerSeries.X_def, MvPowerSeries.X_def, MvPowerSeries.coeff_monomial_mul,
    MvPowerSeries.coeff_monomial_mul, ite_eq_left le_rfl, ite_eq_right h10, tsub_self, one_mul,
    sub_zero,
    MvPowerSeries.coeff_zero_eq_constantCoeff_apply]

end Diag

section Diff

variable {R : Type u} [CommRing R] (W : WeierstrassCurve R)

theorem X_cc (i : Fin 2) :
    MvPowerSeries.constantCoeff (MvPowerSeries.X i : MvPowerSeries (Fin 2) R) = 0 := by
  simp

theorem difference_subst {τ : Type*} {p q : MvPowerSeries τ R}
    (hp : p.constantCoeff = 0) (hq : q.constantCoeff = 0) :
    (diff2 W).subst ![p, q]
      = MvPowerSeries.subst (![p, (iSer W).subst q] : Fin 2 → MvPowerSeries τ R) (fgl W) := by
  have hs : MvPowerSeries.HasSubst ![p, q] :=
    MvPowerSeries.hasSubst_of_constantCoeff_zero (Fin.forall_fin_two.2 ⟨hp, hq⟩)
  have hi := PowerSeries.constantCoeff_subst_eq_zero (X_cc (R := R) 1) (iSer W) (iSer_cc W)
  have hinner : MvPowerSeries.HasSubst
      ![(U₁ : MvPowerSeries (Fin 2) R), (iSer W).subst (U₂ : MvPowerSeries (Fin 2) R)] :=
    MvPowerSeries.hasSubst_of_constantCoeff_zero (Fin.forall_fin_two.2 ⟨X_cc 0, hi⟩)
  unfold diff2
  rw [MvPowerSeries.subst_comp_subst_apply hinner hs]
  congr 1
  funext i
  fin_cases i
  · simp [MvPowerSeries.subst_X hs]
  · simp [Fgl2.mvsubst_psubst (HasSubst.X 1) hs, MvPowerSeries.subst_X hs]

theorem difference_diagonal : (diff2 W).subst
    ![(MvPowerSeries.X 0 : MvPowerSeries (Fin 2) R), MvPowerSeries.X 0] = 0 := by
  rw [difference_subst W (X_cc 0) (X_cc 0)]
  have h := congrArg (PowerSeries.subst (MvPowerSeries.X 0 : MvPowerSeries (Fin 2) R)) (fglInv R W)
  have hX : HasSubst (MvPowerSeries.X 0 : MvPowerSeries (Fin 2) R) := HasSubst.X 0
  rw [PowerSeries.subst_def, MvPowerSeries.subst_comp_subst_apply (Fgl2.hasSubst_X_iSer W) hX.const,
    ← coe_substAlgHom hX, map_zero] at h
  rw [← h]
  congr 1
  funext i
  fin_cases i
  · exact (PowerSeries.subst_X hX).symm
  · rfl

theorem difference_linear_coeff : MvPowerSeries.coeff (Finsupp.single 0 1) (diff2 W) = 1 := by
  have he : (Finsupp.single (0 : Fin 2) 1 : Fin 2 →₀ ℕ) 1 = 0 := by simp
  rw [← coeff_subst_X0_zero _ _ he, difference_subst W (X_cc 0) (map_zero _)]
  have h0 : (iSer W).subst (0 : MvPowerSeries (Fin 2) R) = 0 := by
    have hz : HasSubst (0 : MvPowerSeries (Fin 2) R) := HasSubst.of_constantCoeff_zero (map_zero _)
    rw [iSer, subst_mul hz, subst_X hz, zero_mul]
  rw [h0, coeff_subst_X0_zero _ _ he]
  exact (fglChord R W).2.2.2.2.2.1

theorem first : ∃ n₁ : MvPowerSeries (Fin 2) R,
    n₁.constantCoeff = 1 ∧ diff2 W = (U₁ - U₂) * n₁ := by
  obtain ⟨Q, hQ⟩ := div_diag (diff2 W) (difference_diagonal W)
  have h : diff2 W = (U₁ - U₂) * -Q := by rw [hQ]; ring
  refine ⟨-Q, ?_, h⟩
  rw [← coeff_lin, ← h, difference_linear_coeff]

theorem second {n₁ : MvPowerSeries (Fin 2) R} (h : diff2 W = (U₁ - U₂) * n₁) :
    fgl W = (U₂ - (iSer W).subst (U₁ : MvPowerSeries (Fin 2) R))
      * n₁.subst ![(U₂ : MvPowerSeries (Fin 2) R), (iSer W).subst (U₁ : MvPowerSeries (Fin 2) R)] := by
  have hi := PowerSeries.constantCoeff_subst_eq_zero (X_cc (R := R) 0) (iSer W) (iSer_cc W)
  have hs : MvPowerSeries.HasSubst
      ![(U₂ : MvPowerSeries (Fin 2) R), (iSer W).subst (U₁ : MvPowerSeries (Fin 2) R)] :=
    MvPowerSeries.hasSubst_of_constantCoeff_zero (Fin.forall_fin_two.2 ⟨X_cc 1, hi⟩)
  have h1 := congrArg (MvPowerSeries.subst
    ![(U₂ : MvPowerSeries (Fin 2) R), (iSer W).subst (U₁ : MvPowerSeries (Fin 2) R)]) h
  rw [difference_subst W (X_cc 1) hi, MvPowerSeries.subst_mul hs, MvPowerSeries.subst_sub hs,
    MvPowerSeries.subst_X hs, MvPowerSeries.subst_X hs,
    ← PowerSeries.subst_comp_subst_apply (HasSubst.of_constantCoeff_zero' (iSer_cc W)) (HasSubst.X 0),
    (iSerSpec R W).2.2.1, PowerSeries.subst_X (HasSubst.X 0)] at h1
  rw [Fgl2.fgl_symm W]
  exact h1

end Diff

end Q1

open Q1 CubeR

theorem cube_mem' : CubeMem.{u} := by
  intro R _ W S h1 h2 h3 h4 h6
  let WS : WeierstrassCurve S := ⟨⟨W.a₁, h1⟩, ⟨W.a₂, h2⟩, ⟨W.a₃, h3⟩, ⟨W.a₄, h4⟩, ⟨W.a₆, h6⟩⟩
  have hW : WS.map S.subtype = W := by ext <;> rfl
  have mem : ∀ {σ : Type} (c : MvPowerSeries σ S) (d : σ →₀ ℕ),
      MvPowerSeries.coeff d (MvPowerSeries.map S.subtype c) ∈ S := by
    intro σ c d
    rw [MvPowerSeries.coeff_map]
    exact (MvPowerSeries.coeff d c).2
  refine ⟨?_, ?_, ?_, ?_⟩
  · obtain ⟨c, hc, h⟩ := _root_.Formalism.L2.Th1.A.cube_two_relation S WS
    refine ⟨MvPowerSeries.map S.subtype c, mem c, ?_, ?_⟩
    · rw [MvPowerSeries.constantCoeff_map, hc, map_neg, map_one]
    · have := congrArg (MvPowerSeries.map S.subtype) (show lhs2 WS = c * fgl WS * diff2 WS from h)
      rw [map_mul, map_mul, map_quadratic_lhs, map_diff2, Fgl1.fgl_map, hW] at this
      exact this
  · obtain ⟨e, he, h⟩ := _root_.Formalism.L2.Th1.A.cube_three_relation S WS
    refine ⟨MvPowerSeries.map S.subtype e, mem e, ?_, ?_⟩
    · rw [MvPowerSeries.constantCoeff_map, he, map_neg, map_one]
    · have := congrArg (MvPowerSeries.map S.subtype)
        (show lhs3 WS = e * sum3 WS * (MvPowerSeries.X 0 - MvPowerSeries.X 1)
          * (MvPowerSeries.X 0 - MvPowerSeries.X 2) * (MvPowerSeries.X 1 - MvPowerSeries.X 2) from h)
      simp only [map_mul, map_sub, map_cubic_lhs, map_cubic_sum, MvPowerSeries.map_X, hW] at this
      exact this
  · obtain ⟨n₁, h0, h⟩ := first WS
    have hi := PowerSeries.constantCoeff_subst_eq_zero (X_cc (R := S) 0) (iSer WS) (iSer_cc WS)
    have hs : MvPowerSeries.HasSubst
        ![(U₂ : MvPowerSeries (Fin 2) S), (iSer WS).subst (U₁ : MvPowerSeries (Fin 2) S)] :=
      MvPowerSeries.hasSubst_of_constantCoeff_zero (Fin.forall_fin_two.2 ⟨X_cc 1, hi⟩)
    have h' := second WS h
    refine ⟨MvPowerSeries.map S.subtype n₁, MvPowerSeries.map S.subtype (n₁.subst
      ![(U₂ : MvPowerSeries (Fin 2) S), (iSer WS).subst (U₁ : MvPowerSeries (Fin 2) S)]),
      mem _, mem _, ?_, ?_, ?_, ?_⟩
    · rw [MvPowerSeries.constantCoeff_map, h0, map_one]
    · rw [MvPowerSeries.constantCoeff_map, cc_subst hs (Fin.forall_fin_two.2 ⟨X_cc 1, hi⟩), h0,
        map_one]
    · have := congrArg (MvPowerSeries.map S.subtype) h
      rw [map_mul, map_sub, map_diff2, MvPowerSeries.map_X, MvPowerSeries.map_X, hW] at this
      exact this
    · have := congrArg (MvPowerSeries.map S.subtype) h'
      rw [map_mul, map_sub, Fgl1.fgl_map, PowerSeries.map_subst (HasSubst.X 0), CurveSer.map_iSer,
        MvPowerSeries.map_X, MvPowerSeries.map_X, hW] at this
      exact this
  · rintro n ⟨h, hh, hn⟩ k
    have hu : IsUnit ((n : ℤ) : S) := by
      refine IsUnit.of_mul_eq_one (⟨h, hh⟩ : S) ?_
      apply Subtype.ext
      simpa using hn
    have := (divSpec.{u, u} S WS n hu).2.2.2.2.1 R S.subtype
    rw [hW] at this
    rw [← this, coeff_map]
    exact (coeff k (divSer WS n)).2

end Formalism.L2.Th1.A
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.DifferenceLinearCoeff =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.WeierstrassPPrimeUnit =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.WeierstrassPPrimeUnit", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.StatementR\npublic import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.ChordEquation\nimport Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.FlowTwoTorsionWp\nimport Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.BridgeJ\npublic import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.DifferenceLinearCoeff\nimport Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.EqWSerSubst\nimport Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.Laurent\nimport Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.ToLTDenMulInv\nimport Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.TwoTorsionIntegral\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open PowerSeries

universe u

noncomputable section

namespace Formalism.L2.Th1.A

namespace Rr

variable {K : Type u} [Field K] [CharZero K] (W : WeierstrassCurve K)

theorem wpPrimeInZ : expSer W ^ 3 * (-2 + X ^ 3 * derivative (wpReg W))
    = X ^ 3 * (-2 * (xS W).subst (expSer W) + C W.a₁ * expSer W * (xS W).subst (expSer W)
        + C W.a₃ * expSer W ^ 3) := by
  have h1 := (wpODE K W).1
  have h2 := (_root_.Formalism.L2.Th1.A.weierstrass_p_prime_shape K W).1
  have hq := Two.exp_mul_inv W
  have hz : (toL X : LaurentSeries K) * uPow (-1) = 1 := Plus.toL_X_mul
  have hy : (yS W).subst (expSer W) = -(xS W).subst (expSer W) := by
    rw [yS, ← coe_substAlgHom (Two.he W), map_neg]
  rw [h2, xZ, yZ, hy, Plus.uPow_neg_three] at h1
  apply toL_injective
  simp only [map_mul, map_add (f := _), map_neg, map_pow, map_ofNat, toL_C] at h1 ⊢
  generalize toL ((xS W).subst (expSer W)) = xs at h1 ⊢
  generalize toL (derivative (wpReg W)) = P at h1 ⊢
  generalize (toL (expSer W))⁻¹ = q at h1 hq ⊢
  generalize toL (expSer W) = E at hq ⊢
  generalize (uPow (-1) : LaurentSeries K) = zi at h1 hz
  generalize (toL X : LaurentSeries K) = Z at hz ⊢
  linear_combination E ^ 3 * Z ^ 3 * h1 + 2 * E ^ 3 * ((Z * zi) ^ 2 + Z * zi + 1) * hz
    - Z ^ 3 * (2 * xs * ((E * q) ^ 2 + E * q + 1) - HahnSeries.C W.a₁ * E * xs * (E * q + 1)) * hq

end Rr

theorem weierstrass_p_prime_unit : WpPrimeInU.{u} := by
  intro K _ _ W
  obtain ⟨l0, -, -, -⟩ := logSpec K W
  obtain ⟨-, -, -, hel, -⟩ := expSpec K W
  have hl : HasSubst (logSer W) := HasSubst.of_constantCoeff_zero' l0
  have h := congrArg (ISer.subHom (logSer W) l0) (Rr.wpPrimeInZ W)
  have k := subst_comp_subst_apply (Two.he W) hl (xS W)
  rw [hel, X_subst] at k
  simp only [map_mul, map_add (f := _), map_neg, map_pow, map_ofNat, ISer.subHom_C, ISer.subHom_X] at h
  simp only [ISer.subHom_apply, hel, k] at h
  exact h

theorem three_curves_relation : BridgeCurve3 := by
  intro K _ _ _ W hW
  refine ⟨weierstrass_p_prime_unit K W, ?_⟩
  obtain ⟨-, ⟨e, he, he0, hdet⟩, -⟩ :=
    cube_mem' K W (Formalism.G.unitBall K) hW.1 hW.2.1 hW.2.2.1 hW.2.2.2.1 hW.2.2.2.2
  refine ⟨e, Bridge.integral_of_mvCoeff he, he0, ?_⟩
  have hy : ∀ i : Fin 3, (yS W).subst (MvPowerSeries.X i : MvPowerSeries (Fin 3) K)
      = -(xS W).subst (MvPowerSeries.X i : MvPowerSeries (Fin 3) K) := by
    intro i
    have hs : HasSubst (MvPowerSeries.X i : MvPowerSeries (Fin 3) K) := HasSubst.X i
    rw [yS, ← coe_substAlgHom hs, map_neg]
  simp only [hy] at hdet
  unfold Formalism.L2.Th1.B.F3 Formalism.InvariantFactorPaths.G7.in3 Formalism.InvariantFactorPaths.G7.at1
  exact hdet

end Formalism.L2.Th1.A
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.WeierstrassPPrimeUnit =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.BridgeTwoMore =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.BridgeTwoMore", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.StatementQ\npublic import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.StatementR\npublic import Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.NormLeOneOfMonicTwo\nimport Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.WeierstrassSubstitution.WeierstrassPPrimeUnit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

universe u v

namespace Formalism.L2.Th1.A

alias flowUniqueZ := _root_.Formalism.L2.Th1.A.flow_unique_integral
theorem bridgeCurve3 : BridgeCurve3 := three_curves_relation

end Formalism.L2.Th1.A
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.WeierstrassTwoTorsion.BridgeTwoMore =====
