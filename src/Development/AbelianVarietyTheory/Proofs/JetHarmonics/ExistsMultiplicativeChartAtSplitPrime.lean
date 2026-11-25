module

public import Mathlib.AlgebraicGeometry.EllipticCurve.VariableChange
public import Mathlib.Analysis.Normed.Field.Instances
public import Mathlib.FieldTheory.AlgebraicClosure
public import Mathlib.NumberTheory.Padics.Complex
public import Mathlib.RingTheory.PowerSeries.Basic
public import Development.AbelianVarietyTheory.Definitions.Jets.CmLatticeCommutatorPairingPowEqOneOfGoodLift
public import Mathlib.RingTheory.FormalGroup.Basic
public import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.NatCastMulCoeffOfPderivEq
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.CpTransportedTaylorSeriesInChartRingHomLaws
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.UwEllipticFlow
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.ImagQuadraticMaximalOrderArithmeticAtSplitPrime
public import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsNumeratorOfInvolution
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.CpSeriesCoeffNormBoundedRingLaws
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.IntegralWeierstrassChartXyUnitSeries
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.MulPowTwoLeTripleProdOfGe
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.NormLeOfDistinct
public import Mathlib.RingTheory.Complex
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.FormalGroupNatMulSeriesProperties
public import Development.AbelianVarietyTheory.Definitions.Jets.PowerSeriesHasSumAt
public import Formalism.UnipotentAdelicQuotients.JetMomFound
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.CpBinomialPowerSubOneSeriesIntegralityCompositio
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.IsIsoGmOfMap
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
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
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Lemma
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
import Mathlib.Topology.Sheaves.Init
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Algebra.Order.Star.Int
import Mathlib.Algebra.Order.Star.Real
import Mathlib.RingTheory.PowerSeries.Inverse
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.TypeStar

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.BlockTheory.JetGauges.NodalSeriesPeriods, Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsFormalGroupAdd, Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsSmallInPrimePow, Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsUnitCoeffMulSeriesLeNorm, Development.AbelianVarietyTheory.Proofs.JetHarmonics.FormalGroupPadicMulIntegralVanishingOrder, Development.AbelianVarietyTheory.Proofs.JetHarmonics.HeightOneOfSplit, Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsMultiplicativeChartAtSplitPrime

-- ===== clump member: Development.AbelianVarietyTheory.BlockTheory.JetGauges.NodalSeriesPeriods =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.BlockTheory.JetGauges.NodalSeriesPeriods", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.EllipticCurve.VariableChange\npublic import Mathlib.Analysis.Normed.Field.Instances\npublic import Mathlib.FieldTheory.AlgebraicClosure\npublic import Mathlib.NumberTheory.Padics.Complex\npublic import Mathlib.RingTheory.PowerSeries.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open PowerSeries

noncomputable section

namespace GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods

abbrev Qbar : Type := ↥(algebraicClosure ℚ ℂ)

abbrev Place (p : ℕ) [Fact p.Prime] : Type := Qbar →+* ℂ_[p]

abbrev incl (p : ℕ) [Fact p.Prime] : 𝓞_ℂ_[p] →+* ℂ_[p] := algebraMap 𝓞_ℂ_[p] ℂ_[p]

section Expansion

variable {A : Type} [CommRing A] (W : WeierstrassCurve A)

def step (v : A⟦X⟧) : A⟦X⟧ :=
  1 + C W.a₁ * X * v + C W.a₂ * X ^ 2 * v + C W.a₃ * X ^ 3 * v ^ 2 + C W.a₄ * X ^ 4 * v ^ 2
    + C W.a₆ * X ^ 6 * v ^ 3

def vSer : A⟦X⟧ := mk fun n => coeff n ((step W)^[n + 1] 0)

def wSer : A⟦X⟧ := X ^ 3 * vSer W

open PowerSeries in
variable {A : Type} [CommRing A] (W : WeierstrassCurve A) in
private lemma nodal_map_sub_eq_X_mul_sub_mul (u v : A⟦X⟧) :
    _root_.GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods.step W u - _root_.GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods.step W v =
      X * (u - v) * (C W.a₁ + C W.a₂ * X + C W.a₃ * X ^ 2 * (u + v) + C W.a₄ * X ^ 3 * (u + v)
        + C W.a₆ * X ^ 5 * (u ^ 2 + u * v + v ^ 2)) := by
  unfold _root_.GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods.step
  ring

open PowerSeries in
variable {A : Type} [CommRing A] (W : WeierstrassCurve A) in
private lemma X_pow_succ_dvd_sub_of_X_pow_dvd {k : ℕ} {u v : A⟦X⟧} (h : X ^ k ∣ u - v) :
    X ^ (k + 1) ∣
      _root_.GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods.step W u - _root_.GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods.step W v := by
  rw [nodal_map_sub_eq_X_mul_sub_mul, pow_succ']
  exact Dvd.dvd.mul_right (mul_dvd_mul_left X h) _

open PowerSeries in
variable {A : Type} [CommRing A] (W : WeierstrassCurve A) in
private lemma X_pow_dvd_iterate_sub_iterate (n m : ℕ) :
    X ^ n ∣ (_root_.GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods.step W)^[n + m] 0
      - (_root_.GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods.step W)^[n] 0 := by
  induction n with
  | zero => rw [pow_zero]; exact one_dvd _
  | succ n ih =>
    have e1 : (_root_.GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods.step W)^[n + 1 + m] 0 =
        _root_.GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods.step W
          ((_root_.GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods.step W)^[n + m] 0) := by
      rw [show n + 1 + m = n + m + 1 by omega]
      exact Function.iterate_succ_apply' _ _ _
    have e2 : (_root_.GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods.step W)^[n + 1] 0 =
        _root_.GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods.step W
          ((_root_.GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods.step W)^[n] 0) :=
      Function.iterate_succ_apply' _ _ _
    rw [e1, e2]
    exact X_pow_succ_dvd_sub_of_X_pow_dvd W ih

open PowerSeries in
variable {A : Type} [CommRing A] (W : WeierstrassCurve A) in
private lemma vSer_isFixedPt :
    _root_.GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods.vSer W =
      _root_.GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods.step W (_root_.GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods.vSer W) := by
  ext k
  have h : X ^ k ∣ _root_.GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods.vSer W
      - (_root_.GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods.step W)^[k] 0 := by
    rw [X_pow_dvd_iff]
    intro m hm
    have h2 := X_pow_dvd_iterate_sub_iterate W (m + 1) (k - (m + 1))
    rw [show m + 1 + (k - (m + 1)) = k by omega, X_pow_dvd_iff] at h2
    have h3 := h2 m (Nat.lt_succ_self m)
    rw [map_sub, sub_eq_zero] at h3
    rw [map_sub, sub_eq_zero, _root_.GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods.vSer, coeff_mk]
    exact h3.symm
  have h2 := X_pow_succ_dvd_sub_of_X_pow_dvd W h
  have e : (_root_.GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods.step W)^[k + 1] 0 =
      _root_.GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods.step W
        ((_root_.GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods.step W)^[k] 0) :=
    Function.iterate_succ_apply' _ _ _
  rw [← e, X_pow_dvd_iff] at h2
  have h3 := h2 k (Nat.lt_succ_self k)
  rw [map_sub, sub_eq_zero] at h3
  rw [h3, _root_.GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods.vSer, coeff_mk]

open PowerSeries in
variable {A : Type} [CommRing A] (W : WeierstrassCurve A) in
theorem _root_.GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods.wSer_eq :
    _root_.GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods.wSer W = X ^ 3 + C W.a₁ * X * _root_.GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods.wSer W
      + C W.a₂ * X ^ 2 * _root_.GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods.wSer W
      + C W.a₃ * _root_.GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods.wSer W ^ 2
      + C W.a₄ * X * _root_.GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods.wSer W ^ 2
      + C W.a₆ * _root_.GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods.wSer W ^ 3 := by
  have hv := vSer_isFixedPt W
  simp only [_root_.GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods.wSer]
  conv_lhs => rw [hv, _root_.GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods.step]
  ring

end Expansion

end GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.BlockTheory.JetGauges.NodalSeriesPeriods =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsFormalGroupAdd =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsFormalGroupAdd", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Jets.CmLatticeCommutatorPairingPowEqOneOfGoodLift\npublic import Mathlib.RingTheory.FormalGroup.Basic\npublic import Development.AbelianVarietyTheory.BlockTheory.JetGauges.NodalSeriesPeriods\npublic import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.NatCastMulCoeffOfPderivEq\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.CpTransportedTaylorSeriesInChartRingHomLaws\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.UwEllipticFlow\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.MomOne.ChordLaw

section Algebra

variable {A B : Type} [CommRing A] [CommRing B]

def eqn (W : WeierstrassCurve A) (u w : A) : A :=
  u ^ 3 + W.a₁ * u * w + W.a₂ * u ^ 2 * w + W.a₃ * w ^ 2 + W.a₄ * u * w ^ 2 + W.a₆ * w ^ 3 - w

def fu (W : WeierstrassCurve A) (u w : A) : A :=
  1 - W.a₁ * u - W.a₂ * u ^ 2 - 2 * W.a₃ * w - 2 * W.a₄ * u * w - 3 * W.a₆ * w ^ 2

def fw (W : WeierstrassCurve A) (u w : A) : A :=
  3 * u ^ 2 + W.a₁ * w + 2 * W.a₂ * u * w + W.a₄ * w ^ 2

def k3 (W : WeierstrassCurve A) (l : A) : A := 1 + W.a₂ * l + W.a₄ * l ^ 2 + W.a₆ * l ^ 3

def k2 (W : WeierstrassCurve A) (l n : A) : A :=
  W.a₁ * l + W.a₂ * n + W.a₃ * l ^ 2 + 2 * W.a₄ * l * n + 3 * W.a₆ * l ^ 2 * n

theorem map_eqn (φ : A →+* B) (W : WeierstrassCurve A) (u w : A) :
    φ (eqn W u w) = eqn (W.map φ) (φ u) (φ w) := by
  simp [eqn]

theorem map_fu (φ : A →+* B) (W : WeierstrassCurve A) (u w : A) :
    φ (fu W u w) = fu (W.map φ) (φ u) (φ w) := by
  simp [fu, map_ofNat]

variable {R : Type} [CommRing R] [Algebra R A]

def Const (D : Derivation R A A) (W : WeierstrassCurve A) : Prop :=
  D W.a₁ = 0 ∧ D W.a₂ = 0 ∧ D W.a₃ = 0 ∧ D W.a₄ = 0 ∧ D W.a₆ = 0

theorem der_two (D : Derivation R A A) : D 2 = 0 := by
  have := D.map_natCast 2
  simpa using this

theorem der_three (D : Derivation R A A) : D 3 = 0 := by
  have := D.map_natCast 3
  simpa using this

theorem der_eqn {D : Derivation R A A} {W : WeierstrassCurve A} (hD : Const D W) {u w : A}
    (h : eqn W u w = 0) : fu W u w * D w = fw W u w * D u := by
  obtain ⟨h1, h2, h3, h4, h6⟩ := hD
  have := congrArg D h
  simp only [eqn, map_add (f := _), map_sub, Derivation.leibniz, Derivation.leibniz_pow, h1, h2, h3, h4, h6,
    smul_eq_mul, nsmul_eq_mul, map_zero] at this
  simp only [fu, fw]
  push_cast at this
  linear_combination -this

theorem third_eqn [IsDomain A] {W : WeierstrassCurve A} {u₀ u₁ u₃ l n : A}
    (h₀ : eqn W u₀ (l * u₀ + n) = 0) (h₁ : eqn W u₁ (l * u₁ + n) = 0) (hne : u₀ ≠ u₁)
    (h₃ : k3 W l * u₃ = -(k3 W l * (u₀ + u₁)) - k2 W l n) :
    eqn W u₃ (l * u₃ + n) = 0 ∧
      fw W u₀ (l * u₀ + n) - l * fu W u₀ (l * u₀ + n) = (u₀ - u₁) * (k3 W l * (u₀ - u₃)) := by
  have hQ : k3 W l * (u₀ ^ 2 + u₀ * u₁ + u₁ ^ 2) + k2 W l n * (u₀ + u₁) +
      (W.a₁ * n + 2 * W.a₃ * l * n + W.a₄ * n ^ 2 + 3 * W.a₆ * l * n ^ 2 - l) = 0 := by
    apply mul_left_cancel₀ (sub_ne_zero.2 hne)
    simp only [eqn, k3, k2] at *
    linear_combination h₀ - h₁
  simp only [eqn, k3, k2, fu, fw] at *
  constructor
  · linear_combination h₀ + (u₃ - u₀) * hQ + (u₃ - u₀) * (u₃ - u₁) * h₃
  · linear_combination hQ + (u₀ - u₁) * h₃

theorem third_flow [IsDomain A] {D : Derivation R A A} {W : WeierstrassCurve A} (hD : Const D W)
    {u₀ u₁ u₃ l n : A}
    (h₀ : eqn W u₀ (l * u₀ + n) = 0) (h₁ : eqn W u₁ (l * u₁ + n) = 0) (hne : u₀ ≠ u₁)
    (h₃ : k3 W l * u₃ = -(k3 W l * (u₀ + u₁)) - k2 W l n) (hk : k3 W l ≠ 0)
    (j₀ : fu W u₀ (l * u₀ + n) ≠ 0) (j₁ : fu W u₁ (l * u₁ + n) ≠ 0)
    (d₀ : D u₀ = fu W u₀ (l * u₀ + n)) (d₁ : D u₁ = 0) :
    D u₃ = -fu W u₃ (l * u₃ + n) := by
  have e₀ : D (l * u₀ + n) = fw W u₀ (l * u₀ + n) := by
    apply mul_left_cancel₀ j₀
    rw [der_eqn hD h₀, d₀, mul_comm]
  have e₁ : D (l * u₁ + n) = 0 := by
    apply mul_left_cancel₀ j₁
    rw [der_eqn hD h₁, d₁, mul_zero, mul_zero]
  simp only [map_add (f := _), Derivation.leibniz, smul_eq_mul, d₀, d₁] at e₀ e₁
  have hl : D l = k3 W l * (u₀ - u₃) := by
    apply mul_left_cancel₀ (sub_ne_zero.2 hne)
    linear_combination e₀ - e₁ + (third_eqn h₀ h₁ hne h₃).2
  have hn : D n = -(u₁ * (k3 W l * (u₀ - u₃))) := by
    rw [← hl]; linear_combination e₁
  obtain ⟨h1, h2, h3, h4, h6⟩ := hD
  have hk3 : D (k3 W l) = (W.a₂ + 2 * W.a₄ * l + 3 * W.a₆ * l ^ 2) * D l := by
    simp only [k3, map_add (f := _), Derivation.leibniz, Derivation.leibniz_pow, h2, h4, h6,
      smul_eq_mul, nsmul_eq_mul, Derivation.map_one_eq_zero]
    push_cast
    ring
  have hk2 : D (k2 W l n) = (W.a₁ + 2 * W.a₃ * l + 2 * W.a₄ * n + 6 * W.a₆ * l * n) * D l +
      (W.a₂ + 2 * W.a₄ * l + 3 * W.a₆ * l ^ 2) * D n := by
    simp only [k2, map_add (f := _), Derivation.leibniz, Derivation.leibniz_pow, h1, h2, h3, h4, h6,
      smul_eq_mul, nsmul_eq_mul, der_two, der_three]
    push_cast
    ring
  have := congrArg D h₃
  simp only [map_add (f := _), map_sub, map_neg, Derivation.leibniz, smul_eq_mul, d₀, d₁, hk3, hk2, hl, hn] at this
  apply mul_left_cancel₀ hk
  generalize k3 W l = κ at *
  simp only [fu] at *
  linear_combination this

theorem neg_eqn [IsDomain A] {W : WeierstrassCurve A} {u w s t : A} (h : eqn W u w = 0)
    (hN : 1 - W.a₁ * u - W.a₃ * w ≠ 0)
    (hs : (1 - W.a₁ * u - W.a₃ * w) * s = -u) (ht : (1 - W.a₁ * u - W.a₃ * w) * t = -w) :
    eqn W s t = 0 := by
  apply mul_left_cancel₀ (pow_ne_zero 3 hN)
  set N := 1 - W.a₁ * u - W.a₃ * w with hNd
  have : N ^ 3 * eqn W s t = (N * s) ^ 3 + W.a₁ * (N * s) * (N * t) * N + W.a₂ * (N * s) ^ 2 * (N * t)
      + W.a₃ * (N * t) ^ 2 * N + W.a₄ * (N * s) * (N * t) ^ 2 + W.a₆ * (N * t) ^ 3 - (N * t) * N ^ 2 := by
    simp only [eqn]; ring
  rw [this, hs, ht, hNd]
  simp only [eqn] at h
  linear_combination -h

theorem neg_flow [IsDomain A] {D : Derivation R A A} {W : WeierstrassCurve A} (hD : Const D W)
    {u w s t : A} (h : eqn W u w = 0) (hN : 1 - W.a₁ * u - W.a₃ * w ≠ 0)
    (hs : (1 - W.a₁ * u - W.a₃ * w) * s = -u) (ht : (1 - W.a₁ * u - W.a₃ * w) * t = -w)
    (j : fu W u w ≠ 0) (d : D u = -fu W u w) : D s = fu W s t := by
  have e : D w = -fw W u w := by
    apply mul_left_cancel₀ j
    rw [der_eqn hD h, d]; ring
  obtain ⟨h1, h2, h3, h4, h6⟩ := hD
  have h' := congrArg D hs
  simp only [map_sub, map_neg, Derivation.leibniz, smul_eq_mul, d, e, h1, h3,
    Derivation.map_one_eq_zero] at h'
  apply mul_left_cancel₀ (pow_ne_zero 2 hN)
  set N := 1 - W.a₁ * u - W.a₃ * w with hNd
  have : N ^ 2 * fu W s t = N ^ 2 - W.a₁ * (N * s) * N - W.a₂ * (N * s) ^ 2
      - 2 * W.a₃ * (N * t) * N - 2 * W.a₄ * (N * s) * (N * t) - 3 * W.a₆ * (N * t) ^ 2 := by
    simp only [fu]; ring
  rw [this, hs, ht]
  have h2 : N ^ 2 * D s = N * fu W u w + u * (W.a₁ * fu W u w + W.a₃ * fw W u w) := by
    linear_combination N * h' - (W.a₁ * fu W u w + W.a₃ * fw W u w) * hs
  rw [h2, hNd]
  simp only [eqn, fu, fw] at *
  linear_combination 3 * W.a₃ * h

end Algebra

section Series

open MvPowerSeries

local notation:max "pderiv" r:arg i:arg => MvPowerSeries.pderiv (R := r) i

variable {R : Type} [CommRing R] {σ : Type}

theorem eqn_sub {A : Type} [CommRing A] {W : WeierstrassCurve A} {u₀ w₀ u₁ w₁ : A}
    (h₀ : eqn W u₀ w₀ = 0) (h₁ : eqn W u₁ w₁ = 0) :
    (1 - W.a₁ * u₁ - W.a₂ * u₁ ^ 2 - W.a₃ * (w₀ + w₁) - W.a₄ * u₁ * (w₀ + w₁)
      - W.a₆ * (w₀ ^ 2 + w₀ * w₁ + w₁ ^ 2)) * (w₀ - w₁) =
    (u₀ ^ 2 + u₀ * u₁ + u₁ ^ 2 + W.a₁ * w₀ + W.a₂ * (u₀ + u₁) * w₀ + W.a₄ * w₀ ^ 2) * (u₀ - u₁) := by
  simp only [eqn] at *
  linear_combination h₁ - h₀

theorem eqn_unique {W : WeierstrassCurve (MvPowerSeries σ R)} {u w w' : MvPowerSeries σ R}
    (hu : constantCoeff u = 0) (hw : constantCoeff w = 0) (hw' : constantCoeff w' = 0)
    (h : eqn W u w = 0) (h' : eqn W u w' = 0) : w = w' := by
  have := eqn_sub h h'
  rw [sub_self, mul_zero, IsUnit.mul_right_eq_zero, sub_eq_zero] at this
  · exact this
  · rw [isUnit_iff_constantCoeff]
    simp [hu, hw, hw']

theorem cc_fu {W : WeierstrassCurve (MvPowerSeries σ R)} {u w : MvPowerSeries σ R}
    (hu : constantCoeff u = 0) (hw : constantCoeff w = 0) : constantCoeff (fu W u w) = 1 := by
  simp [fu, hu, hw]

theorem ne_zero_of_cc [Nontrivial R] {f : MvPowerSeries σ R} (h : constantCoeff f = 1) : f ≠ 0 := by
  rintro rfl
  simp at h

theorem exists_div {a b : MvPowerSeries σ R} (ha : constantCoeff a = 1) (hb : constantCoeff b = 0) :
    ∃ c, constantCoeff c = 0 ∧ a * c = b := by
  have hu : IsUnit a := by rw [isUnit_iff_constantCoeff, ha]; exact isUnit_one
  obtain ⟨c, hc⟩ := hu.dvd (a := b)
  refine ⟨c, ?_, hc.symm⟩
  have := congrArg constantCoeff hc
  simpa [ha, hb] using this.symm

abbrev up (σ : Type) (W : WeierstrassCurve R) : WeierstrassCurve (MvPowerSeries σ R) :=
  W.map (C : R →+* MvPowerSeries σ R)

theorem const_smul_pderiv (W : WeierstrassCurve R) (a : MvPowerSeries σ R) (i : σ) :
    Const (a • pderiv R i) (up σ W) := by
  simp [Const, pderiv_C]

theorem eqn_subst (W : WeierstrassCurve R) {g : MvPowerSeries σ R} (hg : constantCoeff g = 0)
    (a b : PowerSeries R) :
    PowerSeries.subst g (eqn (W.map PowerSeries.C) a b) =
      eqn (up σ W) (PowerSeries.subst g a) (PowerSeries.subst g b) ∧
    PowerSeries.subst g (fu (W.map PowerSeries.C) a b) =
      fu (up σ W) (PowerSeries.subst g a) (PowerSeries.subst g b) := by
  have hs := PowerSeries.HasSubst.of_constantCoeff_zero hg
  have hW : (W.map PowerSeries.C).map (PowerSeries.substAlgHom (R := R) hs).toRingHom = up σ W := by
    rw [WeierstrassCurve.map_map]
    congr 1
    ext1 r
    simp [PowerSeries.coe_substAlgHom, PowerSeries.subst_C]
  have h1 := map_eqn (PowerSeries.substAlgHom (R := R) hs).toRingHom (W.map PowerSeries.C) a b
  have h2 := map_fu (PowerSeries.substAlgHom (R := R) hs).toRingHom (W.map PowerSeries.C) a b
  rw [hW] at h1 h2
  simpa [PowerSeries.coe_substAlgHom] using And.intro h1 h2

theorem exists_law [IsDomain R] (W : WeierstrassCurve R) :
    ∃ (F G : MvPowerSeries (Fin 2) R) (w : Fin 2 → MvPowerSeries (Fin 2) R),
      constantCoeff F = 0 ∧ constantCoeff G = 0 ∧ eqn (up _ W) F G = 0 ∧
      ∀ i, constantCoeff (w i) = 0 ∧ eqn (up _ W) (X i) (w i) = 0 ∧
        fu (up _ W) (X i) (w i) * pderiv R i F = fu (up _ W) F G := by
  haveI : IsDomain (MvPowerSeries (Fin 2) R) := NoZeroDivisors.to_isDomain _
  set V := up (Fin 2) W with hV
  have hw : ∀ i : Fin 2, ∃ w : MvPowerSeries (Fin 2) R, constantCoeff w = 0 ∧ eqn V (X i) w = 0 := by
    intro i
    have hX : constantCoeff (X i : MvPowerSeries (Fin 2) R) = 0 := constantCoeff_X i
    refine ⟨PowerSeries.subst (X i) (GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods.wSer W),
      PowerSeries.constantCoeff_subst_eq_zero hX _ (by simp [GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods.wSer]), ?_⟩
    have h0 : eqn (W.map PowerSeries.C) PowerSeries.X (GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods.wSer W) = 0 := by
      have := GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods.wSer_eq W
      simp only [eqn, WeierstrassCurve.map]
      linear_combination -this
    have hs := PowerSeries.HasSubst.of_constantCoeff_zero hX
    have := (eqn_subst W hX PowerSeries.X (GlobalTheory.IndefiniteRowSideFullHecke.NodalSeriesPeriods.wSer W)).1
    rw [h0, PowerSeries.subst_X hs, ← PowerSeries.coe_substAlgHom hs, map_zero,
      PowerSeries.coe_substAlgHom] at this
    exact this.symm
  choose w hw0 hwe using hw
  obtain ⟨l, hl0, hl⟩ := exists_div
    (a := 1 - V.a₁ * X 1 - V.a₂ * X 1 ^ 2 - V.a₃ * (w 0 + w 1) - V.a₄ * X 1 * (w 0 + w 1)
      - V.a₆ * (w 0 ^ 2 + w 0 * w 1 + w 1 ^ 2))
    (b := X 0 ^ 2 + X 0 * X 1 + X 1 ^ 2 + V.a₁ * w 0 + V.a₂ * (X 0 + X 1) * w 0 + V.a₄ * w 0 ^ 2)
    (by simp [hw0]) (by simp only [map_add (f := _), map_mul, map_pow, hw0, constantCoeff_X]; ring)
  have hsl : w 0 - w 1 = l * (X 0 - X 1) := by
    have := eqn_sub (hwe 0) (hwe 1)
    rw [← hl] at this
    refine mul_left_cancel₀ ?_ (this.trans (mul_assoc _ _ _))
    exact ne_zero_of_cc (by simp [hw0])
  set n := w 1 - l * X 1 with hn
  have hn0 : constantCoeff n = 0 := by simp [hn, hw0]
  have e : ∀ i, w i = l * X i + n := by
    intro i
    fin_cases i
    · simp only [Fin.zero_eta]; rw [hn]; linear_combination hsl
    · simp only [Fin.mk_one]; rw [hn]; ring
  have hk : constantCoeff (k3 V l) = 1 := by simp [k3, hl0]
  obtain ⟨u, hu0, hu⟩ := exists_div (b := -(k3 V l * (X 0 + X 1)) - k2 V l n) hk
    (by simp [k2, hl0, hn0])
  have hne : (X 0 : MvPowerSeries (Fin 2) R) ≠ X 1 := by
    intro h
    have := congrArg (pderiv R 0) h
    simp [pderiv_X_of_ne] at this
  have he : ∀ i, eqn V (X i) (l * X i + n) = 0 := fun i => e i ▸ hwe i
  have hj : ∀ i, fu V (X i) (l * X i + n) ≠ 0 := fun i =>
    ne_zero_of_cc (cc_fu (by simp) (by simp [hn0]))
  have h3 := (third_eqn (he 0) (he 1) hne hu).1
  have hN : constantCoeff (1 - V.a₁ * u - V.a₃ * (l * u + n)) = 1 := by simp [hu0, hn0]
  obtain ⟨F, hF0, hF⟩ := exists_div (b := -u) hN (by simp [hu0])
  obtain ⟨G, hG0, hG⟩ := exists_div (b := -(l * u + n)) hN (by simp [hu0, hn0])
  have j3 : fu V u (l * u + n) ≠ 0 := ne_zero_of_cc (cc_fu hu0 (by simp [hu0, hn0]))
  refine ⟨F, G, w, hF0, hG0, neg_eqn h3 (ne_zero_of_cc hN) hF hG, fun i => ⟨hw0 i, hwe i, ?_⟩⟩
  have hC := const_smul_pderiv W (fu V (X i) (w i)) i
  have := neg_flow hC h3 (ne_zero_of_cc hN) hF hG j3 ?_
  · simpa using this
  have d : ∀ i, (fu V (X i) (w i) • pderiv R i) (X i) = fu V (X i) (l * X i + n) := by
    intro i; rw [← e]; simp
  fin_cases i
  · refine third_flow hC (he 0) (he 1) hne hu (ne_zero_of_cc hk) (hj 0) (hj 1) ?_ ?_
    · exact d 0
    · simp [pderiv_X_of_ne]
  · refine third_flow hC (he 1) (he 0) hne.symm (by rw [hu, add_comm]) (ne_zero_of_cc hk)
      (hj 1) (hj 0) ?_ ?_
    · exact d 1
    · simp [pderiv_X_of_ne]

end Series

section Log

open MvPowerSeries

variable {k : Type} [CommRing k] {σ τ : Type}

theorem subst_psubst {a : σ → MvPowerSeries τ k} (ha : HasSubst a) {g : MvPowerSeries σ k}
    (hg : constantCoeff g = 0) (f : PowerSeries k) :
    subst a (PowerSeries.subst g f) = PowerSeries.subst (subst a g) f := by
  have hs := PowerSeries.HasSubst.of_constantCoeff_zero hg
  rw [PowerSeries.subst, subst_comp_subst_apply hs.const ha]
  rfl

theorem psubst_psubst {g : MvPowerSeries σ k} (hg : constantCoeff g = 0) {a : PowerSeries k}
    (ha : PowerSeries.constantCoeff a = 0) (f : PowerSeries k) :
    PowerSeries.subst g (PowerSeries.subst a f) = PowerSeries.subst (PowerSeries.subst g a) f :=
  PowerSeries.subst_comp_subst_apply (PowerSeries.HasSubst.of_constantCoeff_zero' ha)
    (PowerSeries.HasSubst.of_constantCoeff_zero hg) f

theorem hasSubst_two {g₀ g₁ : MvPowerSeries σ k} (h₀ : constantCoeff g₀ = 0) (h₁ : constantCoeff g₁ = 0) :
    HasSubst ![g₀, g₁] :=
  hasSubst_of_constantCoeff_zero fun i => by fin_cases i <;> simpa

theorem subst_eq_of_log {U ℓ : PowerSeries k} (hℓ : PowerSeries.constantCoeff ℓ = 0)
    (hUℓ : PowerSeries.subst ℓ U = PowerSeries.X (R := k)) {F : MvPowerSeries (Fin 2) k}
    (hF : constantCoeff F = 0)
    (h : PowerSeries.subst F ℓ = PowerSeries.subst (X 0 : MvPowerSeries (Fin 2) k) ℓ +
      PowerSeries.subst (X 1 : MvPowerSeries (Fin 2) k) ℓ)
    {g₀ g₁ : MvPowerSeries σ k} (h₀ : constantCoeff g₀ = 0) (h₁ : constantCoeff g₁ = 0) :
    subst ![g₀, g₁] F = PowerSeries.subst (PowerSeries.subst g₀ ℓ + PowerSeries.subst g₁ ℓ) U := by
  have ha := hasSubst_two h₀ h₁
  have e : F = PowerSeries.subst (PowerSeries.subst F ℓ) U := by
    rw [← psubst_psubst hF hℓ, hUℓ, PowerSeries.subst_X (PowerSeries.HasSubst.of_constantCoeff_zero hF)]
  have c0 : ∀ i, constantCoeff (PowerSeries.subst (X i : MvPowerSeries (Fin 2) k) ℓ) = 0 := fun i =>
    PowerSeries.constantCoeff_subst_eq_zero (constantCoeff_X i) _ hℓ
  rw [e, h, subst_psubst ha (by simp [c0]), subst_add ha, subst_psubst ha (constantCoeff_X 0),
    subst_psubst ha (constantCoeff_X 1), subst_X ha, subst_X ha]
  rfl

theorem assoc_of_log {U ℓ : PowerSeries k} (hU : PowerSeries.constantCoeff U = 0)
    (hℓ : PowerSeries.constantCoeff ℓ = 0)
    (hUℓ : PowerSeries.subst ℓ U = PowerSeries.X (R := k))
    (hℓU : PowerSeries.subst U ℓ = PowerSeries.X (R := k)) {F : MvPowerSeries (Fin 2) k}
    (hF : constantCoeff F = 0)
    (h : PowerSeries.subst F ℓ = PowerSeries.subst (X 0 : MvPowerSeries (Fin 2) k) ℓ +
      PowerSeries.subst (X 1 : MvPowerSeries (Fin 2) k) ℓ) :
    subst ![subst ![(X 0 : MvPowerSeries (Fin 3) k), X 1] F, X 2] F =
      subst ![(X 0 : MvPowerSeries (Fin 3) k), subst ![(X 1 : MvPowerSeries (Fin 3) k), X 2] F] F := by
  have c0 : ∀ i, constantCoeff (PowerSeries.subst (X i : MvPowerSeries (Fin 3) k) ℓ) = 0 := fun i =>
    PowerSeries.constantCoeff_subst_eq_zero (constantCoeff_X i) _ hℓ
  have key : ∀ i j : Fin 3, constantCoeff (subst ![(X i : MvPowerSeries (Fin 3) k), X j] F) = 0 ∧
      PowerSeries.subst (subst ![(X i : MvPowerSeries (Fin 3) k), X j] F) ℓ =
        PowerSeries.subst (X i : MvPowerSeries (Fin 3) k) ℓ +
          PowerSeries.subst (X j : MvPowerSeries (Fin 3) k) ℓ := by
    intro i j
    have hz : constantCoeff (PowerSeries.subst (X i : MvPowerSeries (Fin 3) k) ℓ +
          PowerSeries.subst (X j : MvPowerSeries (Fin 3) k) ℓ) = 0 := by simp [c0]
    rw [subst_eq_of_log hℓ hUℓ hF h (constantCoeff_X i) (constantCoeff_X j)]
    refine ⟨PowerSeries.constantCoeff_subst_eq_zero hz _ hU, ?_⟩
    rw [← psubst_psubst hz hU, hℓU, PowerSeries.subst_X (PowerSeries.HasSubst.of_constantCoeff_zero hz)]
  rw [subst_eq_of_log hℓ hUℓ hF h (key 0 1).1 (constantCoeff_X 2),
    subst_eq_of_log hℓ hUℓ hF h (constantCoeff_X 0) (key 1 2).1, (key 0 1).2, (key 1 2).2, add_assoc]

theorem log_deriv {W : WeierstrassCurve k} {U V ℓ : PowerSeries k} {c : k}
    (hV : PowerSeries.constantCoeff V = 0)
    (hℓ : PowerSeries.constantCoeff ℓ = 0)
    (hUℓ : PowerSeries.subst ℓ U = PowerSeries.X (R := k))
    (he : eqn (W.map PowerSeries.C) U V = 0)
    (hd : PowerSeries.derivative (R := k) U = PowerSeries.C c * fu (W.map PowerSeries.C) U V)
    {s t : MvPowerSeries σ k} (hs : constantCoeff s = 0) (ht : constantCoeff t = 0)
    (hst : eqn (up σ W) s t = 0) :
    PowerSeries.subst s (PowerSeries.derivative (R := k) ℓ) * (C c * fu (up σ W) s t) = 1 := by
  have Hs := PowerSeries.HasSubst.of_constantCoeff_zero hs
  have Hℓ := PowerSeries.HasSubst.of_constantCoeff_zero' hℓ
  have hg : constantCoeff (PowerSeries.subst s ℓ) = 0 :=
    PowerSeries.constantCoeff_subst_eq_zero hs _ hℓ
  have Hg := PowerSeries.HasSubst.of_constantCoeff_zero hg
  have eU : PowerSeries.subst (PowerSeries.subst s ℓ) U = s := by
    rw [← psubst_psubst hs hℓ, hUℓ, PowerSeries.subst_X Hs]
  obtain ⟨e1, e2⟩ := eqn_subst W hg U V
  rw [he, eU, ← PowerSeries.coe_substAlgHom Hg, map_zero, PowerSeries.coe_substAlgHom] at e1
  have eV : PowerSeries.subst (PowerSeries.subst s ℓ) V = t :=
    eqn_unique hs (PowerSeries.constantCoeff_subst_eq_zero hg _ hV) ht e1.symm hst
  rw [eU, eV] at e2
  have d1 := congrArg (PowerSeries.derivative (R := k)) hUℓ
  rw [PowerSeries.derivative_subst Hℓ, PowerSeries.derivative_X] at d1
  have d2 := congrArg (PowerSeries.subst s) d1
  rw [PowerSeries.subst_mul Hs, psubst_psubst hs hℓ, hd, PowerSeries.subst_mul Hg, e2,
    PowerSeries.subst_C, ← PowerSeries.coe_substAlgHom Hs, map_one, PowerSeries.coe_substAlgHom] at d2
  rw [mul_comm]
  exact d2

theorem log_law [IsAddTorsionFree k] {W : WeierstrassCurve k} {U V ℓ : PowerSeries k} {c : k}
    (hV : PowerSeries.constantCoeff V = 0)
    (hℓ : PowerSeries.constantCoeff ℓ = 0)
    (hUℓ : PowerSeries.subst ℓ U = PowerSeries.X (R := k))
    (he : eqn (W.map PowerSeries.C) U V = 0)
    (hd : PowerSeries.derivative (R := k) U = PowerSeries.C c * fu (W.map PowerSeries.C) U V)
    {F G : MvPowerSeries (Fin 2) k} {w : Fin 2 → MvPowerSeries (Fin 2) k}
    (hF : constantCoeff F = 0) (hG : constantCoeff G = 0) (hFG : eqn (up _ W) F G = 0)
    (hw : ∀ i, constantCoeff (w i) = 0 ∧ eqn (up _ W) (X i) (w i) = 0 ∧
        fu (up _ W) (X i) (w i) * pderiv (R := k) i F = fu (up _ W) F G) :
    PowerSeries.subst F ℓ = PowerSeries.subst (X 0 : MvPowerSeries (Fin 2) k) ℓ +
      PowerSeries.subst (X 1 : MvPowerSeries (Fin 2) k) ℓ := by
  have HX : ∀ i, PowerSeries.HasSubst (X i : MvPowerSeries (Fin 2) k) := fun i =>
    PowerSeries.HasSubst.of_constantCoeff_zero (constantCoeff_X i)
  refine GlobalTheory.FormalCalc.ext_of_pderiv_of_coeff (e := id) (fun i => ?_) (fun α hα => ?_)
  · have a1 := log_deriv hV hℓ hUℓ he hd hF hG hFG
    have a2 := log_deriv hV hℓ hUℓ he hd (constantCoeff_X i) (hw i).1 (hw i).2.1
    have a3 := (hw i).2.2
    have a4 : pderiv (R := k) i (PowerSeries.subst (X 0 : MvPowerSeries (Fin 2) k) ℓ +
      PowerSeries.subst (X 1 : MvPowerSeries (Fin 2) k) ℓ) =
        PowerSeries.subst (X i : MvPowerSeries (Fin 2) k) (PowerSeries.derivative (R := k) ℓ) := by
      rw [map_add (f := _), GlobalTheory.FormalCalc.pderiv_powerSeries_subst (HX 0),
        GlobalTheory.FormalCalc.pderiv_powerSeries_subst (HX 1)]
      fin_cases i <;> simp [pderiv_X_of_ne]
    rw [id, a4, GlobalTheory.FormalCalc.pderiv_powerSeries_subst (PowerSeries.HasSubst.of_constantCoeff_zero hF)]
    set p := PowerSeries.subst F (PowerSeries.derivative (R := k) ℓ)
    set r := PowerSeries.subst (X i : MvPowerSeries (Fin 2) k) (PowerSeries.derivative (R := k) ℓ)
    linear_combination r * a1 - p * pderiv (R := k) i F * a2 + p * r * C c * a3
  · have : α = 0 := Finsupp.ext hα
    subst this
    simp only [coeff_zero_eq_constantCoeff_apply, map_add (f := _)]
    rw [PowerSeries.constantCoeff_subst_eq_zero hF _ hℓ,
      PowerSeries.constantCoeff_subst_eq_zero (constantCoeff_X 0) _ hℓ,
      PowerSeries.constantCoeff_subst_eq_zero (constantCoeff_X 1) _ hℓ, add_zero]

end Log

section Main

open MvPowerSeries

theorem exists_formalGroup {R k : Type} [CommRing R] [IsDomain R] [Field k] [CharZero k] (φ : R →+* k)
    (hφ : Function.Injective φ) (W : WeierstrassCurve R) {U V : PowerSeries k} {c : k} (hc : c ≠ 0)
    (hU : PowerSeries.constantCoeff U = 0) (hV : PowerSeries.constantCoeff V = 0)
    (he : eqn ((W.map φ).map PowerSeries.C) U V = 0)
    (hd : PowerSeries.derivative (R := k) U = PowerSeries.C c * fu ((W.map φ).map PowerSeries.C) U V) :
    ∃ F : FormalGroup R,
      subst ![PowerSeries.subst (X 0 : MvPowerSeries (Fin 2) k) U,
        PowerSeries.subst (X 1 : MvPowerSeries (Fin 2) k) U] (map φ F.toPowerSeries) =
      PowerSeries.subst (X 0 + X 1 : MvPowerSeries (Fin 2) k) U := by
  obtain ⟨F, G, w, hF, hG, hFG, hw⟩ := exists_law W
  have h1 : IsUnit (PowerSeries.coeff 1 U) := by
    have := congrArg PowerSeries.constantCoeff hd
    rw [← PowerSeries.coeff_zero_eq_constantCoeff_apply, PowerSeries.coeff_derivative] at this
    simp [fu, hU, hV] at this
    rw [this]
    exact hc.isUnit
  set ℓ := U.substInvOfIsUnit h1
  have hℓ : PowerSeries.constantCoeff ℓ = 0 := PowerSeries.constantCoeff_substInvOfIsUnit U h1
  have hUℓ : PowerSeries.subst ℓ U = PowerSeries.X (R := k) :=
    PowerSeries.subst_substInvOfIsUnit_right U hU h1
  have hℓU : PowerSeries.subst U ℓ = PowerSeries.X (R := k) :=
    PowerSeries.subst_substInvOfIsUnit_left U hU h1
  have hup : (up (Fin 2) W).map (map φ) = up (Fin 2) (W.map φ) := by
    simp only [WeierstrassCurve.map_map]
    congr 1
    ext1 r
    simp
  have hF' : constantCoeff (map φ F) = 0 := by rw [constantCoeff_map, hF, map_zero]
  have hlog := log_law (W := W.map φ) hV hℓ hUℓ he hd (F := map φ F) (G := map φ G)
    (w := fun i => map φ (w i)) hF' (by rw [constantCoeff_map, hG, map_zero])
    (by rw [← hup, ← map_eqn, hFG, map_zero]) (fun i => by
      obtain ⟨a1, a2, a3⟩ := hw i
      refine ⟨by rw [constantCoeff_map, a1, map_zero], ?_, ?_⟩
      · rw [← hup, ← map_X φ, ← map_eqn, a2, map_zero]
      · rw [← hup, ← map_X φ, ← map_fu, ← map_fu, GlobalTheory.FormalCalc.pderiv_map, ← map_mul, a3])
  have hlin : ∀ i, coeff (Finsupp.single i 1) F = 1 := by
    intro i
    obtain ⟨a1, -, a3⟩ := hw i
    have := congrArg constantCoeff a3
    rw [map_mul, cc_fu (constantCoeff_X i) a1, cc_fu hF hG, one_mul,
      ← coeff_zero_eq_constantCoeff_apply, coeff_pderiv (R := R)] at this
    simpa using this
  have hinj : Function.Injective (map φ : MvPowerSeries (Fin 3) R → MvPowerSeries (Fin 3) k) := by
    intro a b h
    ext d
    apply hφ
    simpa using congrArg (coeff d) h
  refine ⟨⟨F, hF, hlin 0, hlin 1, hinj ?_⟩, ?_⟩
  · have e (g₁ g₂ : MvPowerSeries (Fin 3) R) :
        (fun i => (![g₁, g₂] i).map φ) = ![g₁.map φ, g₂.map φ] := by
      ext1 i; fin_cases i <;> simp
    rw [map_subst (HasSubst.cons_subst_zero_left (0 : Fin 3) 1 2 hF),
      map_subst (HasSubst.cons_subst_zero_right (0 : Fin 3) 1 2 hF), e, e,
      map_subst HasSubst.X_X, map_subst HasSubst.X_X, e, e]
    simp only [map_X]
    exact assoc_of_log hU hℓ hUℓ hℓU hF' hlog
  · have c0 : ∀ i, constantCoeff (PowerSeries.subst (X i : MvPowerSeries (Fin 2) k) U) = 0 := fun i =>
      PowerSeries.constantCoeff_subst_eq_zero (constantCoeff_X i) _ hU
    have c1 : ∀ i, PowerSeries.subst (PowerSeries.subst (X i : MvPowerSeries (Fin 2) k) U) ℓ =
        (X i : MvPowerSeries (Fin 2) k) := fun i => by
      rw [← psubst_psubst (constantCoeff_X i) hU, hℓU,
        PowerSeries.subst_X (PowerSeries.HasSubst.of_constantCoeff_zero (constantCoeff_X i))]
    rw [subst_eq_of_log hℓ hUℓ hF' hlog (c0 0) (c0 1), c1, c1]

end Main

section Model

open PowerSeries GlobalTheory.MomOne
open scoped ComplexConjugate BigOperators Topology

local notation:max "derivative" r:arg => PowerSeries.derivative (R := r)

def anRing : Subring (ℂ → ℂ) where
  carrier := {f | AnalyticAt ℂ f 0}
  mul_mem' ha hb := AnalyticAt.mul ha hb
  one_mem' := analyticAt_const
  add_mem' ha hb := AnalyticAt.add ha hb
  zero_mem' := analyticAt_const
  neg_mem' ha := AnalyticAt.neg ha

def anConst : ℂ →+* anRing where
  toFun c := ⟨fun _ => c, analyticAt_const⟩
  map_one' := rfl
  map_mul' _ _ := rfl
  map_zero' := rfl
  map_add' _ _ := rfl

variable {q : ℕ} [Fact q.Prime]

def tayHom (ι : ℂ ≃+* ℂ_[q]) : anRing →+* ℂ_[q]⟦X⟧ where
  toFun f := hat ι X f
  map_one' := by
    change hat ι X (fun _ => (1 : ℂ)) = 1
    simp [hat, X_subst, TaylorRead.tay_const]
  map_mul' a b := by
    change hat ι X (fun z => a.val z * b.val z) = hat ι X a * hat ι X b
    simp only [hat, X_subst, TaylorRead.tay_mul a.2 b.2, map_mul]
  map_zero' := by
    change hat ι X (fun _ => (0 : ℂ)) = 0
    simp [hat, X_subst, TaylorRead.tay_const]
  map_add' a b := by
    change hat ι X (fun z => a.val z + b.val z) = hat ι X a + hat ι X b
    simp only [hat, X_subst, TaylorRead.tay_add a.2 b.2, map_add]

theorem series_flow (M : Mdl q) (h : M.Ok) :
    constantCoeff (hat M.ι X M.u) = 0 ∧ constantCoeff (hat M.ι X M.w) = 0 ∧
    eqn (M.W.map C) (hat M.ι X M.u) (hat M.ι X M.w) = 0 ∧
    derivative ℂ_[q] (hat M.ι X M.u) = C (M.ι M.c) * fu (M.W.map C) (hat M.ι X M.u) (hat M.ι X M.w) := by
  obtain ⟨-, -, -, -, u0, w0, -, -, hs⟩ := uw_elliptic_flow q M h
  obtain ⟨au, aw, -, -, -, hev⟩ := hs 0 (Or.inl M.L.lattice.zero_mem)
  set V : WeierstrassCurve anRing := M.W.map (anConst.comp (M.ι.symm : ℂ_[q] →+* ℂ)) with hV
  have hc (c : ℂ) : tayHom M.ι (anConst c) = C (M.ι c) := by
    change hat M.ι X (fun _ => c) = C (M.ι c)
    simp only [hat, X_subst, TaylorRead.tay_const, map_C]
    rfl
  have hcc (f : ℂ → ℂ) : constantCoeff (hat M.ι X f) = M.ι (f 0) := by
    rw [hat, X_subst, ← coeff_zero_eq_constantCoeff_apply, coeff_map]
    simp [tay]
  have hcongr {f g : ℂ → ℂ} (hfg : f =ᶠ[𝓝 0] g) : hat M.ι X f = hat M.ι X g := by
    simp only [hat, TaylorRead.tay_congr hfg]
  have hmap : V.map (tayHom M.ι) = M.W.map C := by
    rw [hV, WeierstrassCurve.map_map]
    congr 1
    ext1 r
    simp [hc]
  have e1 := map_eqn (tayHom M.ι) V ⟨M.u, au⟩ ⟨M.w, aw⟩
  have e2 := map_fu (tayHom M.ι) V ⟨M.u, au⟩ ⟨M.w, aw⟩
  rw [hmap] at e1 e2
  refine ⟨by rw [hcc, u0, map_zero], by rw [hcc, w0, map_zero], ?_, ?_⟩
  · refine e1.symm.trans (Eq.trans ?_ (map_zero (tayHom M.ι)))
    apply hcongr
    filter_upwards [hev] with z hz
    have := hz.1
    simp [eqn, hV, anConst]
    linear_combination -this
  · have hd : derivative ℂ_[q] (hat M.ι X M.u) = hat M.ι X (deriv M.u) := by
      ext n
      simp only [hat, X_subst, coeff_derivative, coeff_map, tay, coeff_mk,
        iteratedDeriv_succ', Nat.factorial_succ, map_div₀, map_natCast]
      push_cast
      have hn : (n + 1 : ℂ_[q]) ≠ 0 := by exact_mod_cast n.succ_ne_zero
      field_simp
    rw [hd, ← hc]
    refine Eq.trans ?_ ((map_mul _ _ _).trans (congrArg _ e2))
    apply hcongr
    filter_upwards [hev] with z hz
    exact hz.2.1

theorem exists_formalGroup_add : ∀ (q : ℕ) [Fact q.Prime] (M : Mdl q), M.Ok → IsAlgebraic ℚ M.W.a₁ → IsAlgebraic ℚ M.W.a₂ → IsAlgebraic ℚ M.W.a₃ → IsAlgebraic ℚ M.W.a₄ → IsAlgebraic ℚ M.W.a₆ → ∃ F : FormalGroup 𝓞_ℂ_[q], (∃ K : IntermediateField ℚ_[q] ℂ_[q], FiniteDimensional ℚ_[q] K ∧ ∀ m : Fin 2 →₀ ℕ, ((MvPowerSeries.coeff m F.toPowerSeries : 𝓞_ℂ_[q]) : ℂ_[q]) ∈ K) ∧ MvPowerSeries.subst (![PowerSeries.subst (MvPowerSeries.X 0 : MvPowerSeries (Fin 2) ℂ_[q]) (PowerSeries.map (M.ι : ℂ →+* ℂ_[q]) (tay M.u)), PowerSeries.subst (MvPowerSeries.X 1 : MvPowerSeries (Fin 2) ℂ_[q]) (PowerSeries.map (M.ι : ℂ →+* ℂ_[q]) (tay M.u))] : Fin 2 → MvPowerSeries (Fin 2) ℂ_[q]) (MvPowerSeries.map (algebraMap 𝓞_ℂ_[q] ℂ_[q]) F.toPowerSeries) = PowerSeries.subst (MvPowerSeries.X 0 + MvPowerSeries.X 1 : MvPowerSeries (Fin 2) ℂ_[q]) (PowerSeries.map (M.ι : ℂ →+* ℂ_[q]) (tay M.u)) := by
  intro q _ M h b₁ b₂ b₃ b₄ b₆
  obtain ⟨hU, hV, he, hd⟩ := series_flow M h
  obtain ⟨hc, n₁, n₂, n₃, n₄, n₆, -⟩ := h
  let S : Set ℂ_[q] := {M.W.a₁, M.W.a₂, M.W.a₃, M.W.a₄, M.W.a₆}
  let K : IntermediateField ℚ_[q] ℂ_[q] := IntermediateField.adjoin ℚ_[q] S
  have hK : FiniteDimensional ℚ_[q] K := by
    haveI : Finite S := by simp only [S]; infer_instance
    refine IntermediateField.finiteDimensional_adjoin fun x hx => ?_
    have : IsAlgebraic ℚ x := by
      simp only [S, Set.mem_insert_iff, Set.mem_singleton_iff] at hx
      rcases hx with rfl | rfl | rfl | rfl | rfl <;> assumption
    exact (this.extendScalars (algebraMap ℚ ℚ_[q]).injective).isIntegral
  let R : Subring 𝓞_ℂ_[q] := K.toSubring.comap (algebraMap 𝓞_ℂ_[q] ℂ_[q])
  have hO : ∀ x : ℂ_[q], ‖x‖ ≤ 1 → x ∈ 𝓞_ℂ_[q] := fun x hx => by
    rw [PadicComplex.norm_eq_norm] at hx
    rw [PadicComplexInt, Valuation.mem_valuationSubring_iff]
    exact Valued.toNormedField.norm_le_one_iff.1 hx
  have hS : ∀ x ∈ S, x ∈ K := fun x hx => IntermediateField.subset_adjoin _ _ hx
  let W₀ : WeierstrassCurve R :=
    ⟨⟨⟨_, hO _ n₁⟩, hS _ (by simp [S])⟩, ⟨⟨_, hO _ n₂⟩, hS _ (by simp [S])⟩,
      ⟨⟨_, hO _ n₃⟩, hS _ (by simp [S])⟩, ⟨⟨_, hO _ n₄⟩, hS _ (by simp [S])⟩,
      ⟨⟨_, hO _ n₆⟩, hS _ (by simp [S])⟩⟩
  let φ : R →+* ℂ_[q] := (algebraMap 𝓞_ℂ_[q] ℂ_[q]).comp R.subtype
  have hφ : Function.Injective φ := Subtype.val_injective.comp Subtype.val_injective
  have hW : W₀.map φ = M.W := rfl
  obtain ⟨F, hF⟩ := exists_formalGroup φ hφ W₀ (c := M.ι M.c) (by simpa using hc) hU hV
    (hW ▸ he) (hW ▸ hd)
  refine ⟨F.map R.subtype, ⟨K, hK, fun m => (MvPowerSeries.coeff m F.toPowerSeries).2⟩, ?_⟩
  simp only [hat, X_subst] at hF
  exact hF

end Model

end GlobalTheory.MomOne.ChordLaw
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsFormalGroupAdd =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsSmallInPrimePow =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsSmallInPrimePow", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Jets.CmLatticeCommutatorPairingPowEqOneOfGoodLift\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.ImagQuadraticMaximalOrderArithmeticAtSplitPrime\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open PowerSeries GlobalTheory.MomOne
open scoped ComplexConjugate BigOperators Topology

namespace GlobalTheory.MomOne

theorem thue_normSq (d e : ℕ) (he : d + 1 = 4 * e) (u v : ℤ) :
    Complex.normSq ((u : ℂ) + (v : ℂ) * wK d) = ((u ^ 2 + u * v + e * v ^ 2 : ℤ) : ℝ) := by
  have hs : Real.sqrt d * Real.sqrt d = d := Real.mul_self_sqrt (Nat.cast_nonneg d)
  have he' : (d : ℝ) + 1 = 4 * e := by exact_mod_cast he
  have h1 : ((u : ℂ) + (v : ℂ) * wK d).re = u + v / 2 := by
    simp [wK]; ring
  have h2 : ((u : ℂ) + (v : ℂ) * wK d).im = v * Real.sqrt d / 2 := by
    simp [wK]; ring
  rw [Complex.normSq_apply, h1, h2]
  push_cast
  linear_combination ((v : ℝ) ^ 2 / 4) * hs + ((v : ℝ) ^ 2 / 4) * he'

theorem thue_norm_zc {q : ℕ} [Fact q.Prime] (a : ℤ_[q]) : ‖zc a‖ = ‖a‖ := by
  unfold zc
  rw [norm_algebraMap', PadicInt.padic_norm_e_of_padicInt]

theorem thue_pigeon {q : ℕ} [Fact q.Prime] (a : ℤ_[q]) (k : ℕ) :
    ∃ u v : ℤ, (u ≠ 0 ∨ v ≠ 0) ∧ u ^ 2 ≤ (q : ℤ) ^ k ∧ v ^ 2 ≤ (q : ℤ) ^ k ∧
      ‖(u : ℤ_[q]) + (v : ℤ_[q]) * a‖ ≤ (q : ℝ) ^ (-(k : ℤ)) := by
  have hq : q.Prime := Fact.out
  haveI : NeZero (q ^ k) := ⟨pow_ne_zero _ hq.ne_zero⟩
  set m := Nat.sqrt (q ^ k) with hm
  let f : Fin (m + 1) × Fin (m + 1) → ZMod (q ^ k) := fun p =>
    PadicInt.toZModPow k (((p.1 : ℕ) : ℤ_[q]) + ((p.2 : ℕ) : ℤ_[q]) * a)
  have hcard : Fintype.card (ZMod (q ^ k)) < Fintype.card (Fin (m + 1) × Fin (m + 1)) := by
    rw [ZMod.card, Fintype.card_prod, Fintype.card_fin]
    exact Nat.lt_succ_sqrt _
  obtain ⟨x, y, hxy, hf⟩ := Fintype.exists_ne_map_eq_of_card_lt f hcard
  have hm2 : ((m : ℤ)) ^ 2 ≤ (q : ℤ) ^ k := by
    have := Nat.sqrt_le' (q ^ k)
    exact_mod_cast this
  have hb : ∀ i j : Fin (m + 1), (((i : ℕ) : ℤ) - ((j : ℕ) : ℤ)) ^ 2 ≤ (q : ℤ) ^ k := by
    intro i j
    have hi := i.2
    have hj := j.2
    refine le_trans ?_ hm2
    apply sq_le_sq' <;> omega
  refine ⟨((x.1 : ℕ) : ℤ) - ((y.1 : ℕ) : ℤ), ((x.2 : ℕ) : ℤ) - ((y.2 : ℕ) : ℤ), ?_, hb _ _, hb _ _, ?_⟩
  · by_contra h
    push_neg at h
    apply hxy
    ext
    · have := h.1; omega
    · have := h.2; omega
  · rw [PadicInt.norm_le_pow_iff_mem_span_pow, ← PadicInt.ker_toZModPow, RingHom.mem_ker]
    have : PadicInt.toZModPow k ((((x.1 : ℕ) : ℤ_[q]) + ((x.2 : ℕ) : ℤ_[q]) * a) -
        (((y.1 : ℕ) : ℤ_[q]) + ((y.2 : ℕ) : ℤ_[q]) * a)) = 0 := by
      rw [map_sub, sub_eq_zero]; exact hf
    rw [← this]
    congr 1
    push_cast
    ring

theorem exists_small_in_prime_pow : ∀ (d q : ℕ) [Fact q.Prime] (ι : ℂ ≃+* ℂ_[q]), d.Prime → d % 16 = 7 → Split d q → ∀ k : ℕ, ∃ (β : ℂ) (N : ℕ), InOK d β ∧ β ≠ 0 ∧ ‖ι β‖ ≤ (q : ℝ) ^ (-(k : ℤ)) ∧ (N : ℂ) = β * conj β ∧ N ≤ (d + 3) * q ^ k := by
  intro d q _ ι hd h16 hs k
  obtain ⟨⟨-, hw, -⟩, h2, -⟩ := _root_.GlobalTheory.MomOne.okArith d q ι hd h16 hs
  obtain ⟨⟨a, ha⟩, -⟩ := h2 _ hw
  obtain ⟨u, v, huv, hu, hv, hn⟩ := thue_pigeon a k
  obtain ⟨e, he⟩ : ∃ e : ℕ, d + 1 = 4 * e := ⟨(d + 1) / 4, by omega⟩
  have he1 : (1 : ℤ) ≤ e := by omega
  have hed : (e : ℤ) ≤ d := by omega
  have hpos : 0 < u ^ 2 + u * v + e * v ^ 2 := by
    have h3 : v ^ 2 ≤ e * v ^ 2 := by nlinarith [sq_nonneg v]
    have h4 : 0 < u ^ 2 + v ^ 2 := by
      rcases huv with h | h
      · have := sq_pos_of_ne_zero h; nlinarith [sq_nonneg v]
      · have := sq_pos_of_ne_zero h; nlinarith [sq_nonneg u]
    nlinarith [sq_nonneg (u + v)]
  have hN := thue_normSq d e he u v
  obtain ⟨N, hNe⟩ := Int.eq_ofNat_of_zero_le hpos.le
  refine ⟨(u : ℂ) + (v : ℂ) * wK d, N, ⟨u, v, rfl⟩, ?_, ?_, ?_, ?_⟩
  · intro h
    rw [h, map_zero] at hN
    have : u ^ 2 + u * v + e * v ^ 2 = 0 := by exact_mod_cast hN.symm
    omega
  · have : ι ((u : ℂ) + (v : ℂ) * wK d) = zc ((u : ℤ_[q]) + (v : ℤ_[q]) * a) := by
      rw [map_add (f := _), map_mul, ha]
      simp [zc]
    rw [this, thue_norm_zc]
    exact hn
  · rw [Complex.mul_conj, hN, hNe]
    simp
  · have h5 : (e : ℤ) * v ^ 2 ≤ d * (q : ℤ) ^ k :=
      mul_le_mul hed hv (sq_nonneg v) (by positivity)
    have h6 : (N : ℤ) ≤ (d + 3) * (q : ℤ) ^ k := by
      rw [← hNe]
      nlinarith [sq_nonneg (u - v), sq_nonneg u, sq_nonneg v]
    exact_mod_cast h6

end GlobalTheory.MomOne
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsSmallInPrimePow =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsUnitCoeffMulSeriesLeNorm =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsUnitCoeffMulSeriesLeNorm", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Jets.CmLatticeCommutatorPairingPowEqOneOfGoodLift\npublic import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsNumeratorOfInvolution\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.CpSeriesCoeffNormBoundedRingLaws\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.CpTransportedTaylorSeriesInChartRingHomLaws\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.IntegralWeierstrassChartXyUnitSeries\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.MulPowTwoLeTripleProdOfGe\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.NormLeOfDistinct\nimport Development.AbelianVarietyTheory.Proofs.JetHarmonics.UwEllipticFlow\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.Complex\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.PowerSeries.Inverse\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open PowerSeries GlobalTheory.MomOne
open scoped ComplexConjugate BigOperators Topology

namespace GlobalTheory.MomOne.MulDegree

section Lattice
open Module


set_option backward.isDefEq.respectTransparency false in
theorem relIndex_eq_abs_det {ι : Type} [Fintype ι] [DecidableEq ι] (b₁ b₂ : Basis ι ℝ ℂ) {L₁ L₂ : AddSubgroup ℂ}
    (h₁ : (Submodule.span ℤ (Set.range b₁)).toAddSubgroup = L₁)
    (h₂ : (Submodule.span ℤ (Set.range b₂)).toAddSubgroup = L₂) (h : L₁ ≤ L₂) :
    (L₁.relIndex L₂ : ℝ) = |b₂.det b₁| := by
  subst h₁ h₂
  rw [AddSubgroup.relIndex_eq_natAbs_det _ _ h (b₁.restrictScalars ℤ) (b₂.restrictScalars ℤ),
    Nat.cast_natAbs, Int.cast_abs]
  congr 1
  rw [Basis.det_apply, Basis.det_apply, Int.cast_det]
  congr; ext i j
  rw [Matrix.map_apply, Basis.toMatrix_apply, Basis.toMatrix_apply]
  have := b₂.restrictScalars_repr_apply ℤ
    ⟨b₁.restrictScalars ℤ j, h (Submodule.coe_mem _)⟩ i
  refine this.trans ?_
  simp

theorem relIndex_mul (L : PeriodPair) (β : ℂ) (N : ℕ) (hβ : β ≠ 0) (hL : ∀ l ∈ L.lattice, β * l ∈ L.lattice)
    (hN : (N : ℂ) = β * conj β) :
    (L.lattice.toAddSubgroup.map (AddMonoidHom.mulLeft β)).relIndex L.lattice.toAddSubgroup = N := by
  let f : ℂ ≃ₗ[ℝ] ℂ := LinearEquiv.ofBijective (Algebra.lmul ℝ ℂ β)
    ⟨fun x y h => mul_left_cancel₀ hβ h, fun y => ⟨β⁻¹ * y, by simp [hβ]⟩⟩
  have hf : ∀ x, f x = β * x := fun _ => rfl
  have h := relIndex_eq_abs_det (L.basis.map f) L.basis
    (L₁ := L.lattice.toAddSubgroup.map (AddMonoidHom.mulLeft β)) (L₂ := L.lattice.toAddSubgroup) ?_
    (by rw [L.lattice_eq_span_range_basis]) (by rintro _ ⟨l, hl, rfl⟩; exact hL l hl)
  · have h2 : L.basis.det (L.basis.map f) = Complex.normSq β := by
      have := L.basis.det_comp (Algebra.lmul ℝ ℂ β) L.basis
      rw [Basis.det_self, mul_one, ← Algebra.norm_apply, Algebra.norm_complex_apply] at this
      exact this
    rw [h2, abs_of_nonneg (Complex.normSq_nonneg β)] at h
    rw [Complex.mul_conj] at hN
    have h3 : (N : ℝ) = Complex.normSq β := by exact_mod_cast hN
    exact_mod_cast h.trans h3.symm
  · ext x
    have e : Set.range (L.basis.map f) = (LinearMap.mulLeft ℤ β) '' Set.range L.basis := by
      rw [← Set.range_comp]; rfl
    rw [e, ← Submodule.map_span, ← L.lattice_eq_span_range_basis]
    simp

theorem dvd_of_mem (L : PeriodPair) (K : ℕ) (hK : 0 < K) (m a b : ℤ)
    (h : (m : ℂ) / K * (a * L.ω₁ + b * L.ω₂) ∈ L.lattice) : (K : ℤ) ∣ m * a ∧ (K : ℤ) ∣ m * b := by
  obtain ⟨s, t, e⟩ := PeriodPair.mem_lattice.mp h
  have hK' : (K : ℂ) ≠ 0 := by exact_mod_cast hK.ne'
  have e' : (K : ℂ) * (s * L.ω₁ + t * L.ω₂) = m * (a * L.ω₁ + b * L.ω₂) := by
    rw [e]; field_simp
  have := LinearIndependent.pair_iff.mp L.indep ((m * a - K * s : ℤ) : ℝ) ((m * b - K * t : ℤ) : ℝ)
    (by simp; linear_combination -e')
  obtain ⟨h1, h2⟩ := this
  have h1' : m * a - K * s = 0 := by exact_mod_cast h1
  have h2' : m * b - K * t = 0 := by exact_mod_cast h2
  exact ⟨⟨s, by linarith⟩, ⟨t, by linarith⟩⟩

theorem exists_points (L : PeriodPair) (β : ℂ) (hβ : β ≠ 0) (hL : ∀ l ∈ L.lattice, β * l ∈ L.lattice)
    (q n : ℕ) (hq : q.Prime) : ∃ (K : ℕ) (P : ℕ → ℂ), Nat.Coprime K q ∧ (∀ i, (K : ℂ) * P i ∈ L.lattice) ∧
      (∀ i < n, β * P i ∉ L.lattice) ∧
      ∀ i < n, ∀ j < n, i ≠ j → P i + P j ∉ L.lattice ∧ P i - P j ∉ L.lattice := by
  obtain ⟨a, b, hab⟩ := PeriodPair.mem_lattice.mp (hL _ L.ω₁_mem_lattice)
  obtain ⟨K, hK, hKp⟩ := Nat.exists_infinite_primes (q + 2 * n + 2 + a.natAbs + b.natAbs + 1)
  have hK' : (K : ℂ) ≠ 0 := by exact_mod_cast hKp.pos.ne'
  have hω : L.ω₁ ≠ 0 := by simpa using L.indep.ne_zero 0
  have small : ∀ m : ℤ, (K : ℤ) ∣ m → m.natAbs < K → m = 0 := fun m h1 h2 =>
    Int.eq_zero_of_abs_lt_dvd h1 (by rw [Int.abs_eq_natAbs]; exact_mod_cast h2)
  have hp : Prime (K : ℤ) := Nat.prime_iff_prime_int.mp hKp
  have one : ∀ m : ℤ, m ≠ 0 → m.natAbs < K → (m : ℂ) / K * L.ω₁ ∉ L.lattice := fun m h0 h1 h => by
    have := (dvd_of_mem L K hKp.pos m 1 0 (by simpa using h)).1
    exact h0 (small m (by simpa using this) h1)
  refine ⟨K, fun i => ((i + 1 : ℤ) : ℂ) / K * L.ω₁, (Nat.coprime_primes hKp hq).mpr (by omega), fun i => ?_,
    fun i hi h => ?_, fun i hi j hj hij => ⟨fun h => ?_, fun h => ?_⟩⟩
  · exact PeriodPair.mem_lattice.mpr ⟨i + 1, 0, by simp only; field_simp; simp⟩
  · have := dvd_of_mem L K hKp.pos (i + 1) a b (by rw [hab]; convert h using 1; ring)
    have h0 : ¬ (K : ℤ) ∣ (i + 1) := fun h => by have := small _ h (by omega); omega
    have ha := small a ((hp.dvd_or_dvd this.1).resolve_left h0) (by omega)
    have hb := small b ((hp.dvd_or_dvd this.2).resolve_left h0) (by omega)
    rw [ha, hb] at hab
    exact mul_ne_zero hβ hω (by simpa using hab.symm)
  · refine one (i + 1 + (j + 1)) (by omega) (by omega) ?_
    convert h using 1; push_cast; ring
  · refine one (i + 1 - (j + 1)) (by omega) (by omega) ?_
    convert h using 1; push_cast; ring

end Lattice

variable {q : ℕ} [Fact q.Prime]

theorem exists_rational (M : Mdl q) (hc : M.c ≠ 0) (β : ℂ) (N : ℕ) (hβ : β ≠ 0)
    (hL : ∀ l ∈ M.L.lattice, β * l ∈ M.L.lattice) (hN : (N : ℂ) = β * conj β) :
    ∃ A D : Polynomial ℂ, A.natDegree ≤ N ∧ D.natDegree ≤ N ∧ ∀ z, β * z ∉ M.L.lattice →
      D.eval (M.x z) ≠ 0 ∧ M.x (β * z) * D.eval (M.x z) = A.eval (M.x z) := by
  obtain ⟨A, D, -, -, -, -, -, hA, hD, h0, h⟩ := GlobalTheory.exists_weierstrassP_mul_eq_div hβ hL ⊤ trivial trivial trivial
    (fun _ _ _ => trivial)
  rw [relIndex_mul M.L β N hβ hL hN] at hA
  set r := M.ι.symm (M.W.b₂ / 12) with hr
  let T : Polynomial ℂ := Polynomial.C (M.c ^ 2) * Polynomial.X + Polynomial.C (M.c ^ 2 * r)
  have hT : T.natDegree ≤ 1 := Polynomial.natDegree_linear_le
  have hTe : ∀ z, T.eval (M.x z) = M.L.weierstrassP z := fun z => by
    simp only [T, Mdl.x, ← hr, Polynomial.eval_add, Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_X]
    field_simp; ring
  have hdA : (A.comp T).natDegree ≤ N := Polynomial.natDegree_comp_le.trans (by nlinarith)
  have hdD : (D.comp T).natDegree ≤ N := Polynomial.natDegree_comp_le.trans (by nlinarith)
  refine ⟨Polynomial.C (M.c ^ 2)⁻¹ * A.comp T - Polynomial.C r * D.comp T, D.comp T, ?_, hdD, fun z hz => ?_⟩
  · exact (Polynomial.natDegree_sub_le _ _).trans (max_le ((Polynomial.natDegree_C_mul_le _ _).trans hdA)
      ((Polynomial.natDegree_C_mul_le _ _).trans hdD))
  · have hz' : z ∉ M.L.lattice := fun h => hz (hL z h)
    have hD0 : D.eval (M.L.weierstrassP z) ≠ 0 := fun e => hz ((h0 z hz').mp e)
    simp only [Polynomial.eval_sub, Polynomial.eval_mul, Polynomial.eval_C, Polynomial.eval_comp, hTe]
    refine ⟨hD0, ?_⟩
    rw [Mdl.x, ← hr, h z hz]
    field_simp

theorem norm_sub_le_of {x y : ℂ_[q]} {B : ℝ} (hx : ‖x‖ ≤ B) (hy : ‖y‖ ≤ B) : ‖x - y‖ ≤ B := by
  have := IsUltrametricDist.norm_add_le_max x (-y)
  rw [norm_neg, ← sub_eq_add_neg] at this
  exact this.trans (max_le hx hy)

theorem norm_add_le_of {x y : ℂ_[q]} {B : ℝ} (hx : ‖x‖ ≤ B) (hy : ‖y‖ ≤ B) : ‖x + y‖ ≤ B :=
  (IsUltrametricDist.norm_add_le_max x y).trans (max_le hx hy)

theorem coeff_le_of_values (B : ℝ) (hB : 0 ≤ B) (p : ℕ → ℂ_[q]) : ∀ (n : ℕ) (A : Polynomial ℂ_[q]), A.degree < n →
    (∀ i < n, ‖p i‖ ≤ 1) → (∀ i < n, ∀ j < n, i ≠ j → ‖p i - p j‖ = 1) → (∀ i < n, ‖A.eval (p i)‖ ≤ B) →
    ∀ k, ‖A.coeff k‖ ≤ B := by
  intro n
  induction n with
  | zero =>
    intro A hA _ _ _ k
    have : A = 0 := by
      by_contra h
      rw [Polynomial.degree_eq_natDegree h] at hA
      simp at hA
    simpa [this] using hB
  | succ n ih =>
    intro A hA h1 h2 h3 k
    by_cases h0 : A = 0
    · simpa [h0] using hB
    set A₁ := A /ₘ (Polynomial.X - Polynomial.C (p n)) with hA₁
    have e : A = Polynomial.C (A.eval (p n)) + (Polynomial.X - Polynomial.C (p n)) * A₁ := by
      rw [← Polynomial.modByMonic_X_sub_C_eq_C_eval, hA₁, Polynomial.modByMonic_add_div]
    have hd : A₁.degree < n := by
      have h4 := Polynomial.degree_divByMonic_lt A (Polynomial.X - Polynomial.C (p n)) h0 (by simp)
      rw [Polynomial.degree_eq_natDegree h0] at hA h4
      have h5 : A.natDegree < n + 1 := by exact_mod_cast hA
      exact h4.trans_le (by exact_mod_cast Nat.lt_succ_iff.mp h5)
    have hc := ih A₁ hd (fun i hi => h1 i (by omega)) (fun i hi j hj => h2 i (by omega) j (by omega)) (fun i hi => by
      have e2 : (p i - p n) * A₁.eval (p i) = A.eval (p i) - A.eval (p n) := by
        conv_rhs => enter [1]; rw [e]
        simp
      have := norm_sub_le_of (h3 i (by omega)) (h3 n (by omega))
      rwa [← e2, norm_mul, h2 i (by omega) n (by omega) (by omega), one_mul] at this)
    rw [e, Polynomial.coeff_add, sub_mul, Polynomial.coeff_sub, Polynomial.coeff_C_mul]
    refine norm_add_le_of ?_ (norm_sub_le_of ?_ ?_)
    · rw [Polynomial.coeff_C]; split_ifs
      · exact h3 n (by omega)
      · simpa using hB
    · cases k with
      | zero => simpa using hB
      | succ k => rw [Polynomial.coeff_X_mul]; exact hc k
    · rw [norm_mul]
      calc _ ≤ 1 * B := mul_le_mul (h1 n (by omega)) (hc k) (norm_nonneg _) zero_le_one
        _ = B := one_mul B

def BdT (n : ℕ) (B : ℝ) (f : ℂ_[q]⟦X⟧) : Prop := ∀ m < n, ‖coeff m f‖ ≤ B

theorem BdT.mul {n : ℕ} {A B : ℝ} {f g : ℂ_[q]⟦X⟧} (hA : 0 ≤ A) (hB : 0 ≤ B) (hf : BdT n A f) (hg : BdT n B g) :
    BdT n (A * B) (f * g) := by
  intro m hm
  rw [coeff_mul]
  refine IsUltrametricDist.norm_sum_le_of_forall_le_of_nonneg (mul_nonneg hA hB) ?_
  intro p hp
  have : p.1 + p.2 = m := by simpa using hp
  rw [norm_mul]
  exact mul_le_mul (hf _ (by omega)) (hg _ (by omega)) (norm_nonneg _) hA

theorem BdT.mul_one {n : ℕ} {f g : ℂ_[q]⟦X⟧} (hf : BdT n 1 f) (hg : BdT n 1 g) : BdT n 1 (f * g) := by
  simpa using BdT.mul zero_le_one zero_le_one hf hg

theorem BdT.add {n : ℕ} {B : ℝ} {f g : ℂ_[q]⟦X⟧} (hf : BdT n B f) (hg : BdT n B g) : BdT n B (f + g) :=
  fun m hm => by rw [map_add (f := _)]; exact norm_add_le_of (hf m hm) (hg m hm)

theorem BdT.const {n : ℕ} {a : ℂ_[q]} (ha : ‖a‖ ≤ 1) : BdT n 1 (C a) := fun m _ => by
  rw [coeff_C]; split_ifs <;> simp [ha]

theorem BdT.of_bd {n : ℕ} {B : ℝ} {f : ℂ_[q]⟦X⟧} (hf : Bd B f) : BdT n B f := fun m _ => hf m

theorem BdT.sq {n : ℕ} {r : ℝ} {f : ℂ_[q]⟦X⟧} (hr : 0 ≤ r) (h1 : Bd 1 f) (hf : BdT n r f) :
    BdT (2 * n) r (f * f) := by
  intro m hm
  rw [coeff_mul]
  refine IsUltrametricDist.norm_sum_le_of_forall_le_of_nonneg hr ?_
  intro p hp
  have : p.1 + p.2 = m := by simpa using hp
  rw [norm_mul]
  by_cases h : p.1 < n
  · simpa using mul_le_mul (hf _ h) (h1 p.2) (norm_nonneg _) hr
  · simpa using mul_le_mul (h1 p.1) (hf p.2 (by omega)) (norm_nonneg _) zero_le_one

theorem BdT.mul_succ {n : ℕ} {f g : ℂ_[q]⟦X⟧} (hf : BdT n 1 f) (hg : BdT n 1 g) (hf0 : constantCoeff f = 0)
    (hg0 : constantCoeff g = 0) : BdT (n + 1) 1 (f * g) := by
  intro m hm
  rw [coeff_mul]
  refine IsUltrametricDist.norm_sum_le_of_forall_le_of_nonneg zero_le_one ?_
  intro p hp
  have : p.1 + p.2 = m := by simpa using hp
  by_cases h1 : p.1 = 0
  · simp [h1, hf0]
  by_cases h2 : p.2 = 0
  · simp [h2, hg0]
  rw [norm_mul]
  exact mul_le_one₀ (hf _ (by omega)) (norm_nonneg _) (hg _ (by omega))

theorem exists_cube (b w : ℂ_[q]⟦X⟧) (a₁ a₂ a₃ a₄ a₆ : ℂ_[q]) (h₁ : ‖a₁‖ ≤ 1) (h₂ : ‖a₂‖ ≤ 1) (h₃ : ‖a₃‖ ≤ 1)
    (h₄ : ‖a₄‖ ≤ 1) (h₆ : ‖a₆‖ ≤ 1) (hb : Bd 1 b) (hb0 : constantCoeff b = 0) (hw0 : constantCoeff w = 0)
    (e : w = b * b * b + w * (C a₁ * b + C a₂ * (b * b) + C a₃ * w + C a₄ * (b * w) + C a₆ * (w * w))) :
    ∃ v, Bd 1 v ∧ w = b * b * b * v := by
  set Q := C a₁ * b + C a₂ * (b * b) + C a₃ * w + C a₄ * (b * w) + C a₆ * (w * w) with hQ
  have hQ0 : constantCoeff Q = 0 := by simp [hQ, hb0, hw0]
  have hQb : ∀ n, BdT n 1 w → BdT n 1 Q := fun n hw =>
    ((((((BdT.const h₁).mul_one (.of_bd hb)).add ((BdT.const h₂).mul_one ((BdT.of_bd hb).mul_one (.of_bd hb)))).add
      ((BdT.const h₃).mul_one hw)).add ((BdT.const h₄).mul_one ((BdT.of_bd hb).mul_one hw))).add
      ((BdT.const h₆).mul_one (hw.mul_one hw)))
  have hw : ∀ n, BdT n 1 w := by
    intro n
    induction n with
    | zero => intro m hm; omega
    | succ n ih =>
      rw [e]
      exact (((BdT.of_bd hb).mul_one (.of_bd hb)).mul_one (.of_bd hb)).add (ih.mul_succ (hQb n ih) hw0 hQ0)
  have h1 : Bd 1 (1 - Q) := fun m => by
    rw [map_sub]
    refine norm_sub_le_of ?_ (hQb (m + 1) (hw _) m (by omega))
    rw [coeff_one]; split_ifs <;> simp
  have h0 : constantCoeff (1 - Q) = 1 := by simp [hQ0]
  have hi : (1 - Q) * (1 - Q)⁻¹ = 1 := PowerSeries.mul_inv_cancel _ (by rw [h0]; exact one_ne_zero)
  refine ⟨(1 - Q)⁻¹, (GlobalTheory.MomOne.sup_norm_laws q).2.2.1 _ _ h1 (by rw [h0]; simp) hi, ?_⟩
  linear_combination (1 - Q)⁻¹ * e - w * hi

theorem norm_le_of_bdT (xs : ℂ_[q]⟦X⟧) (k : ℕ) (c : ℕ → ℂ_[q]) (B : ℝ) (hx : Bd 1 xs) (h0 : ‖constantCoeff xs‖ = 1)
    (hB : BdT (2 * k + 1) B (∑ i ∈ Finset.range (k + 1), C (c i) * X ^ (2 * (k - i)) * xs ^ i)) :
    ∀ i ≤ k, ‖c i‖ ≤ B := by
  have hB0 : 0 ≤ B := (norm_nonneg _).trans (hB 0 (by omega))
  suffices h : ∀ n, ∀ j ≤ k, k - j = n → ‖c j‖ ≤ B from fun j hj => h _ j hj rfl
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    intro j hj hn
    have h1 := hB (2 * n) (by omega)

    rw [← Finset.add_sum_erase _ _ (Finset.mem_range.mpr (Nat.lt_succ_of_le hj)), map_add (f := _), map_sum, mul_assoc,
    coeff_C_mul, coeff_X_pow_mul', if_pos (by omega), hn, Nat.sub_self, coeff_zero_eq_constantCoeff] at h1
    have h2 : ‖∑ l ∈ (Finset.range (k + 1)).erase j, coeff (2 * n) (C (c l) * X ^ (2 * (k - l)) * xs ^ l)‖ ≤ B := by
      refine IsUltrametricDist.norm_sum_le_of_forall_le_of_nonneg hB0 ?_
      intro l hl
      obtain ⟨hlj, hls⟩ := Finset.mem_erase.mp hl
      have hls' := Finset.mem_range.mp hls
      rw [mul_assoc, coeff_C_mul, coeff_X_pow_mul']
      split_ifs with hle
      · rw [norm_mul]
        simpa using mul_le_mul (ih (k - l) (by omega) l (by omega) rfl) (Triang.bd_one_pow hx l _) (norm_nonneg _) hB0
      · simpa using hB0
    have h3 := norm_sub_le_of h1 h2
    rwa [add_sub_cancel_right, norm_mul, map_pow, norm_pow, h0, one_pow, mul_one] at h3

theorem bd_sum (xs : ℂ_[q]⟦X⟧) (k : ℕ) (c : ℕ → ℂ_[q]) (B : ℝ) (hB : 0 ≤ B) (hx : Bd 1 xs) (hc : ∀ i, ‖c i‖ ≤ B) :
    Bd B (∑ i ∈ Finset.range (k + 1), C (c i) * X ^ (2 * (k - i)) * xs ^ i) := by
  intro m

  rw [map_sum]
  refine IsUltrametricDist.norm_sum_le_of_forall_le_of_nonneg hB ?_
  intro l _
  rw [mul_assoc, coeff_C_mul, coeff_X_pow_mul']
  split_ifs with hle
  · rw [norm_mul]
    simpa using mul_le_mul (hc l) (Triang.bd_one_pow hx l _) (norm_nonneg _) hB
  · simpa using hB

theorem hat_equation (M : Mdl q) (hM : M.Ok) (ℓ : ℂ_[q]⟦X⟧) (hℓ : constantCoeff ℓ = 0) :
    let b := hat M.ι ℓ M.u
    let w := hat M.ι ℓ M.w
    w = b * b * b + w * (C M.W.a₁ * b + C M.W.a₂ * (b * b) + C M.W.a₃ * w + C M.W.a₄ * (b * w) +
      C M.W.a₆ * (w * w)) := by
  intro b w
  obtain ⟨-, -, -, -, -, -, -, -, hs⟩ := GlobalTheory.MomOne.uw_elliptic_flow q M hM
  obtain ⟨hu, hw, -, -, -, he⟩ := hs 0 (Or.inl (zero_mem _))
  obtain ⟨H, hc, -⟩ := GlobalTheory.MomOne.TaylorRead.hat_laws q M.ι ℓ hℓ
  have hadd := fun F G hF hG => (H F G hF hG).1
  have hmul := fun F G hF hG => (H F G hF hG).2.1
  have h1 := (H M.w (fun z => M.u z * M.u z * M.u z + M.w z * (M.ι.symm M.W.a₁ * M.u z +
    M.ι.symm M.W.a₂ * (M.u z * M.u z) + M.ι.symm M.W.a₃ * M.w z + M.ι.symm M.W.a₄ * (M.u z * M.w z) +
    M.ι.symm M.W.a₆ * (M.w z * M.w z))) hw (by fun_prop)).2.2.1 (by
      filter_upwards [nhdsWithin_le_nhds he] with z hz
      linear_combination hz.1)
  simp (disch := fun_prop) only [hadd, hmul, hc, RingEquiv.apply_symm_apply] at h1
  exact h1

theorem exists_unit_coeff : ∀ (q : ℕ) [Fact q.Prime] (M : Mdl q) (ℓ : ℂ_[q]⟦X⟧) (β : ℂ) (N : ℕ), M.Chart ℓ → β ≠ 0 → (∀ l ∈ M.L.lattice, β * l ∈ M.L.lattice) → (N : ℂ) = β * conj β → Bd 1 (hat M.ι ℓ (fun z => M.u (β * z))) → ∃ n ≤ N, ‖coeff n (hat M.ι ℓ (fun z => M.u (β * z)))‖ = 1 := by
  intro q hq M ℓ β N hch hβ hL hN hb
  by_contra hcon
  push Not at hcon
  have hM := hch.1
  have hℓ := hch.2.1
  obtain ⟨hc, h₁, h₂, h₃, h₄, h₆, -⟩ := id hM
  obtain ⟨A, D, hA, hD, hAD⟩ := exists_rational M hc β N hβ hL hN
  obtain ⟨hℓ1, v, xs, ys, -, hxs, -, -, hxs0, -, -, -, -, hxy⟩ := GlobalTheory.MomOne.ChartXY.chart_xy q M ℓ hch
  obtain ⟨-, -, -, -, hu0, hw0, hu', -, hs⟩ := GlobalTheory.MomOne.uw_elliptic_flow q M hM
  obtain ⟨hu, hw, -, -, hev, -⟩ := hs 0 (Or.inl (zero_mem _))
  obtain ⟨-, -, -, -, -, hsc, -⟩ := GlobalTheory.MomOne.TaylorRead.hat_laws q M.ι ℓ hℓ
  have hℓ' : constantCoeff (C (M.ι β) * ℓ) = 0 := by simp [hℓ]
  obtain ⟨H', hc', -, hcc', -⟩ := GlobalTheory.MomOne.TaylorRead.hat_laws q M.ι _ hℓ'

  have hub : AnalyticAt ℂ (fun z => M.u (β * z)) 0 :=
    AnalyticAt.comp (g := M.u) (f := fun z => β * z) (by simpa using hu) (by fun_prop)
  have hwb : AnalyticAt ℂ (fun z => M.w (β * z)) 0 :=
    AnalyticAt.comp (g := M.w) (f := fun z => β * z) (by simpa using hw) (by fun_prop)
  have ht : Filter.Tendsto (fun z : ℂ => β * z) (𝓝[≠] 0) (𝓝[≠] 0) := by
    refine tendsto_nhdsWithin_of_tendsto_nhds_of_eventually_within _ ?_ ?_
    · have : Filter.Tendsto (fun z : ℂ => β * z) (𝓝 0) (𝓝 (β * 0)) := (by fun_prop : Continuous _).tendsto 0
      rw [mul_zero] at this
      exact this.mono_left nhdsWithin_le_nhds
    · filter_upwards [self_mem_nhdsWithin] with z hz
      exact mul_ne_zero hβ hz
  have key := hxy _ A 0 N hub hA (by simp) _ hwb D N hD (by
    filter_upwards [ht.eventually hev] with z hz
    have := (hAD z hz.1).2
    simp only [Polynomial.eval_zero, zero_mul, add_zero]
    rw [← this, ← hz.2.2.1]; ring)
  rw [hsc _ β hu] at hb hcon key
  rw [hsc _ β hw] at key
  set b := hat M.ι (C (M.ι β) * ℓ) M.u with hbdef
  set w := hat M.ι (C (M.ι β) * ℓ) M.w with hwdef
  obtain ⟨e, he, hwe⟩ := exists_cube b w _ _ _ _ _ h₁ h₂ h₃ h₄ h₆ hb (by rw [hbdef, hcc', hu0, map_zero])
    (by rw [hwdef, hcc', hw0, map_zero]) (hat_equation M hM _ hℓ')
  have hb0 : b ≠ 0 := fun h0 => by
    have := (H' M.u (fun _ => 0) hu (by fun_prop)).2.2.2 (by simp [hβ, hℓ1]) (by rw [hc', ← hbdef, h0]; simp)
    have := this.deriv_eq
    rw [hu'] at this
    exact hc (by simpa using this)
  set Dh := ∑ i ∈ Finset.range (N + 1), C (M.ι (D.coeff i)) * X ^ (2 * (N - i)) * xs ^ i with hDh
  set Ah := ∑ i ∈ Finset.range (N + 1), C (M.ι (A.coeff i)) * X ^ (2 * (N - i)) * xs ^ i with hAh
  have hsum : ∑ i ∈ Finset.range (N + 1), (C (M.ι (A.coeff i)) * X ^ (2 * (N - i) + 3) * xs ^ i +
      C (M.ι ((0 : Polynomial ℂ).coeff i)) * X ^ (2 * (N - i)) * xs ^ i * ys) = X ^ 3 * Ah := by
    rw [hAh, Finset.mul_sum]
    refine Finset.sum_congr rfl fun i _ => ?_
    simp only [Polynomial.coeff_zero, map_zero, zero_mul, add_zero]
    ring
  rw [hsum, hwe] at key
  have key2 : Dh = b * b * (e * Ah) := by
    refine mul_left_cancel₀ (mul_ne_zero hb0 (pow_ne_zero (2 * N + 3) X_ne_zero)) ?_
    rw [key]; ring

  obtain ⟨n, hn, hnmax⟩ := Finset.exists_max_image (Finset.range (N + 1)) (fun n => ‖coeff n b‖) (by simp)
  have hr : ‖coeff n b‖ < 1 := lt_of_le_of_ne (hb n) (hcon n (by simpa [Nat.lt_succ_iff] using hn))
  obtain ⟨m, hm, hmmax⟩ := Finset.exists_max_image (Finset.range (N + 1)) (fun n => ‖M.ι (D.coeff n)‖) (by simp)
  have hDc : ∀ i, ‖M.ι (D.coeff i)‖ ≤ ‖M.ι (D.coeff m)‖ := fun i => by
    by_cases hi : i ≤ N
    · exact hmmax i (by simpa [Nat.lt_succ_iff] using hi)
    · rw [Polynomial.coeff_eq_zero_of_natDegree_lt (by omega)]; simp

  obtain ⟨K, P, hK, hKP, hβP, hPP⟩ := exists_points M.L β hβ hL q (N + 1) hq.out
  obtain ⟨hint, hdist⟩ := GlobalTheory.MomOne.TorsionReduction.torsion_integral_and_distinct q M K hM hK
  have hP : ∀ i < N + 1, P i ∉ M.L.lattice := fun i hi h => hβP i hi (hL _ h)
  have hAc : ∀ i, ‖M.ι (A.coeff i)‖ ≤ ‖M.ι (D.coeff m)‖ := by
    have := coeff_le_of_values ‖M.ι (D.coeff m)‖ (norm_nonneg _) (fun i => M.ι (M.x (P i))) (N + 1)
      (A.map (M.ι : ℂ →+* ℂ_[q]))
      (Polynomial.degree_map_le.trans_lt (Polynomial.degree_le_natDegree.trans_lt (by exact_mod_cast by omega)))
      (fun i hi => hint _ (hKP i) (hP i hi))
      (fun i hi j hj hij => hdist _ _ (hKP i) (hKP j) (hP i hi) (hP j hj) (hPP i hi j hj hij).1 (hPP i hi j hj hij).2)
      (fun i hi => ?_)
    · simpa using this
    · have e1 : (A.map (M.ι : ℂ →+* ℂ_[q])).eval (M.ι (M.x (P i))) = M.ι (A.eval (M.x (P i))) :=
        Polynomial.eval_map_apply (p := A) (M.ι : ℂ →+* ℂ_[q]) (M.x (P i))
      rw [e1, ← (hAD _ (hβP i hi)).2, map_mul, norm_mul]
      have e2 : ‖M.ι (M.x (β * P i))‖ ≤ 1 := hint _ (by rw [mul_left_comm]; exact hL _ (hKP i)) (hβP i hi)
      have e3 : ‖M.ι (D.eval (M.x (P i)))‖ ≤ ‖M.ι (D.coeff m)‖ := by

        rw [Polynomial.eval_eq_sum_range, map_sum]
        refine IsUltrametricDist.norm_sum_le_of_forall_le_of_nonneg (norm_nonneg _) fun l _ => ?_
        rw [map_mul, map_pow, norm_mul, norm_pow]
        simpa using mul_le_mul (hDc l) (pow_le_one₀ (norm_nonneg _) (hint _ (hKP i) (hP i hi)) (n := l))
          (by positivity) (norm_nonneg _)
      simpa using mul_le_mul e2 e3 (norm_nonneg _) zero_le_one
  have hAh' : Bd ‖M.ι (D.coeff m)‖ Ah := bd_sum xs N _ _ (norm_nonneg _) hxs hAc
  have hbb : BdT (2 * (N + 1)) ‖coeff n b‖ (b * b) :=
    BdT.sq (norm_nonneg _) hb fun i hi => hnmax i (by simpa using hi)
  have hfin := hbb.mul (norm_nonneg _) (by positivity)
    ((BdT.of_bd he).mul zero_le_one (norm_nonneg _) (BdT.of_bd hAh'))
  rw [← key2, one_mul] at hfin
  have h5 := norm_le_of_bdT xs N (fun i => M.ι (D.coeff i)) _ hxs hxs0 (fun i hi => hfin i (by omega)) m
    (by simpa [Nat.lt_succ_iff] using hm)
  have h6 : ‖M.ι (D.coeff m)‖ ≤ 0 := by nlinarith [norm_nonneg (M.ι (D.coeff m))]
  have hD0 : D = 0 := by
    ext i
    simpa using (hDc i).trans h6
  exact (hAD _ (hβP 0 (by omega))).1 (by simp [hD0])

end GlobalTheory.MomOne.MulDegree
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsUnitCoeffMulSeriesLeNorm =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.JetHarmonics.FormalGroupPadicMulIntegralVanishingOrder =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.JetHarmonics.FormalGroupPadicMulIntegralVanishingOrder", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Jets.CmLatticeCommutatorPairingPowEqOneOfGoodLift\npublic import Mathlib.RingTheory.FormalGroup.Basic\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.CpSeriesCoeffNormBoundedRingLaws\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.FormalGroupNatMulSeriesProperties\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Development.AbelianVarietyTheory.Definitions.Jets.PowerSeriesHasSumAt\n\n"}
section -- clump:auto
@[expose] public section

open PowerSeries GlobalTheory.MomOne
open scoped ComplexConjugate BigOperators Topology

namespace GlobalTheory.MomOne.FormalMul

section General
variable {K : Type*} [CommRing K]

theorem cc_subst {f g : K⟦X⟧} (hf : constantCoeff f = 0) (hg : constantCoeff g = 0) :
    constantCoeff (f.subst g : K⟦X⟧) = 0 :=
  PowerSeries.constantCoeff_subst_eq_zero (τ := Unit) hg f hf

theorem subst_C' (g : K⟦X⟧) (r : K) : ((C r : K⟦X⟧).subst g : K⟦X⟧) = C r := PowerSeries.subst_C r

theorem taylor_dvd (U f h : K⟦X⟧) (N : ℕ) (hf : constantCoeff f = 0) (hh0 : constantCoeff h = 0)
    (hh : X ^ N ∣ h) :
    (X : K⟦X⟧) ^ (2 * N) ∣ (U.subst (f + h) : K⟦X⟧) - U.subst f - (d⁄dX U).subst f * h := by
  have hfh : constantCoeff (f + h) = 0 := by rw [map_add (f := _), hf, hh0, add_zero]
  set M := 2 * N with hM
  obtain ⟨V, P, hU⟩ : ∃ (V : K⟦X⟧) (P : Polynomial K), U = X ^ (M + 1) * V + (P : K⟦X⟧) :=
    ⟨_, _, eq_X_pow_mul_shift_add_trunc (M + 1) U⟩
  have hD : d⁄dX U = X ^ M * (((M + 1 : ℕ) : K⟦X⟧) * V + X * d⁄dX V) +
      ((Polynomial.derivative P : Polynomial K) : K⟦X⟧) := by
    rw [hU, map_add (f := _), derivative_coe, Derivation.leibniz, Derivation.leibniz_pow, derivative_X]
    simp only [smul_eq_mul, nsmul_eq_mul, Nat.add_sub_cancel]
    ring
  obtain ⟨k, hk⟩ := (P.map (algebraMap K K⟦X⟧)).binomExpansion f h
  rw [Polynomial.derivative_map, Polynomial.eval_map_algebraMap, Polynomial.eval_map_algebraMap,
    Polynomial.eval_map_algebraMap] at hk
  rw [hD]
  rw [hU, subst_add (HasSubst.of_constantCoeff_zero' hfh),
      subst_add (HasSubst.of_constantCoeff_zero' hf),
      subst_add (HasSubst.of_constantCoeff_zero' hf),
      subst_mul (HasSubst.of_constantCoeff_zero' hfh),
      subst_mul (HasSubst.of_constantCoeff_zero' hf),
      subst_mul (HasSubst.of_constantCoeff_zero' hf),
      subst_pow (HasSubst.of_constantCoeff_zero' hfh),
      subst_pow (HasSubst.of_constantCoeff_zero' hf),
      subst_pow (HasSubst.of_constantCoeff_zero' hf), subst_X (HasSubst.of_constantCoeff_zero' hfh),
      subst_X (HasSubst.of_constantCoeff_zero' hf), subst_coe (HasSubst.of_constantCoeff_zero' hfh),
      subst_coe (HasSubst.of_constantCoeff_zero' hf),
      subst_coe (HasSubst.of_constantCoeff_zero' hf)]
  have d1 : (X : K⟦X⟧) ^ M ∣ f ^ M := pow_dvd_pow_of_dvd (X_dvd_iff.2 hf) _
  have d2 : (X : K⟦X⟧) ^ M ∣ (f + h) ^ M := pow_dvd_pow_of_dvd (X_dvd_iff.2 hfh) _
  have d3 : (X : K⟦X⟧) ^ M ∣ h ^ 2 := by
    rw [hM, mul_comm, pow_mul]; exact pow_dvd_pow_of_dvd hh _
  have key : ∀ a b c p0 p1 p2 : K⟦X⟧, p0 = p1 + p2 * h + k * h ^ 2 →
      (X : K⟦X⟧) ^ M ∣ (f + h) ^ (M + 1) * a + p0 - (f ^ (M + 1) * b + p1) - (f ^ M * c + p2) * h := by
    intro a b c p0 p1 p2 e
    have : (f + h) ^ (M + 1) * a + p0 - (f ^ (M + 1) * b + p1) - (f ^ M * c + p2) * h
        = (f + h) ^ M * ((f + h) * a) - f ^ M * (f * b + c * h) + h ^ 2 * k := by
      rw [e]; ring
    rw [this]
    exact dvd_add (dvd_sub (d2.mul_right _) (d1.mul_right _)) (d3.mul_right _)
  exact key _ _ _ _ _ _ hk

theorem add_law (G : MvPowerSeries (Fin 2) K) (U : K⟦X⟧) (hU : constantCoeff U = 0)
    (hG : MvPowerSeries.subst (![PowerSeries.subst (MvPowerSeries.X 0 : MvPowerSeries (Fin 2) K) U,
      PowerSeries.subst (MvPowerSeries.X 1 : MvPowerSeries (Fin 2) K) U] : Fin 2 → MvPowerSeries (Fin 2) K) G
      = PowerSeries.subst (MvPowerSeries.X 0 + MvPowerSeries.X 1 : MvPowerSeries (Fin 2) K) U)
    (f g : K⟦X⟧) (hf : constantCoeff f = 0) (hg : constantCoeff g = 0) :
    (MvPowerSeries.subst (![U.subst f, U.subst g] : Fin 2 → MvPowerSeries Unit K) G : K⟦X⟧) = U.subst (f + g) := by
  have hb := GlobalTheory.ConvSer.nMul_hasSubst_pair hf hg
  have hX : ∀ i : Fin 2, MvPowerSeries.constantCoeff (MvPowerSeries.X i : MvPowerSeries (Fin 2) K) = 0 := by simp
  have comp : ∀ a : MvPowerSeries (Fin 2) K, MvPowerSeries.constantCoeff a = 0 →
      MvPowerSeries.subst (![f, g] : Fin 2 → MvPowerSeries Unit K) (PowerSeries.subst a U)
        = PowerSeries.subst (MvPowerSeries.subst (![f, g] : Fin 2 → MvPowerSeries Unit K) a) U := by
    intro a ha
    rw [PowerSeries.subst, MvPowerSeries.subst_comp_subst_apply (HasSubst.of_constantCoeff_zero ha).const hb]
    rfl
  have ha : MvPowerSeries.HasSubst (![PowerSeries.subst (MvPowerSeries.X 0 : MvPowerSeries (Fin 2) K) U,
      PowerSeries.subst (MvPowerSeries.X 1 : MvPowerSeries (Fin 2) K) U] : Fin 2 → MvPowerSeries (Fin 2) K) := by
    refine MvPowerSeries.hasSubst_of_constantCoeff_zero fun s => ?_
    fin_cases s
    · exact PowerSeries.constantCoeff_subst_eq_zero (hX 0) U hU
    · exact PowerSeries.constantCoeff_subst_eq_zero (hX 1) U hU
  have := congrArg (MvPowerSeries.subst (R := K) (![f, g] : Fin 2 → MvPowerSeries Unit K)) hG
  rw [MvPowerSeries.subst_comp_subst_apply ha hb, comp _ (by simp), MvPowerSeries.subst_add hb,
    MvPowerSeries.subst_X hb, MvPowerSeries.subst_X hb] at this
  refine Eq.trans ?_ this
  congr! 2 with s
  fin_cases s
  · simp only [Fin.zero_eta, Matrix.cons_val_zero]
    rw [comp _ (hX 0), MvPowerSeries.subst_X hb]; rfl
  · simp only [Fin.mk_one, Matrix.cons_val_one, Matrix.cons_val_fin_one]
    rw [comp _ (hX 1), MvPowerSeries.subst_X hb]; rfl

theorem deriv_mul_eq_one {U ℓ : K⟦X⟧} (hℓ : constantCoeff ℓ = 0) (h : U.subst ℓ = (X : K⟦X⟧)) :
    ((d⁄dX U).subst ℓ : K⟦X⟧) * d⁄dX ℓ = 1 := by
  rw [← derivative_subst (HasSubst.of_constantCoeff_zero' hℓ), h, derivative_X]

theorem subst_inv {U ℓ : K⟦X⟧} (hℓ : constantCoeff ℓ = 0) (h : U.subst ℓ = (X : K⟦X⟧)) :
    ℓ.subst U = (X : K⟦X⟧) := by
  have h1 := congrArg constantCoeff (deriv_mul_eq_one hℓ h)
  rw [map_mul, map_one, ← coeff_zero_eq_constantCoeff_apply (d⁄dX ℓ), coeff_derivative] at h1
  simp only [zero_add, Nat.cast_zero, mul_one] at h1
  have : Invertible (coeff 1 ℓ) := ⟨_, h1, by rw [mul_comm]; exact h1⟩
  have h2 := subst_substInv_right ℓ hℓ
  have hV : HasSubst ℓ.substInv := HasSubst.of_constantCoeff_zero' (by simp)
  have : U = ℓ.substInv := by
    have := subst_comp_subst_apply (HasSubst.of_constantCoeff_zero' hℓ) hV U
    rw [h, h2, subst_X hV] at this
    rw [this, ← PowerSeries.map_algebraMap_eq_subst_X]; simp
  rw [this, h2]

theorem coeff_subst_C_mul (U ℓ : K⟦X⟧) (hℓ : constantCoeff ℓ = 0) (n : ℕ) (a : K) :
    coeff n (U.subst (C a * ℓ) : K⟦X⟧) = ∑ d ∈ Finset.range (n + 1), coeff d U * (a ^ d * coeff n (ℓ ^ d)) := by
  rw [coeff_subst' (HasSubst.of_constantCoeff_zero' (by simp [hℓ])),
      finsum_eq_sum_of_support_subset (s := Finset.range (n + 1))]
  · refine Finset.sum_congr rfl fun d _ => ?_
    rw [mul_pow, ← map_pow, coeff_C_mul, smul_eq_mul]
  · intro d hd
    by_contra hn
    apply hd
    simp only [Finset.coe_range, Set.mem_Iio, not_lt] at hn
    have : coeff n (ℓ ^ d) = 0 := X_pow_dvd_iff.1 (pow_dvd_pow_of_dvd (X_dvd_iff.2 hℓ) d) n (by omega)
    show _ • _ = _
    rw [mul_pow, ← map_pow, coeff_C_mul, this, mul_zero, smul_zero]

end General

section Padic
variable {q : ℕ} [Fact q.Prime]

theorem mem_int_iff (x : ℂ_[q]) : x ∈ 𝓞_ℂ_[q] ↔ ‖x‖ ≤ 1 := by
  rw [PadicComplexInt, Valuation.mem_valuationSubring_iff, PadicComplex.norm_eq_norm, Valuation.norm_def,
    (show Valuation.RankLeOne.hom' Valued.v = MonoidWithZeroHom.ValueGroup₀.embedding from rfl), Valuation.embedding_restrict]
  exact_mod_cast Iff.rfl

theorem bd_map (f : 𝓞_ℂ_[q]⟦X⟧) : Bd 1 (PowerSeries.map (algebraMap 𝓞_ℂ_[q] ℂ_[q]) f) := by
  intro n
  rw [coeff_map]
  exact (mem_int_iff _).1 (coeff n f).2

theorem norm_zc (a : ℤ_[q]) : ‖zc a‖ = ‖a‖ := by
  rw [zc, norm_algebraMap']; rfl

theorem zc_natCast (n : ℕ) : zc (n : ℤ_[q]) = (n : ℂ_[q]) := by simp [zc]

theorem zc_mul (a b : ℤ_[q]) : zc (a * b) = zc a * zc b := by simp [zc]

theorem continuous_zc : Continuous (zc : ℤ_[q] → ℂ_[q]) :=
  (continuous_algebraMap ℚ_[q] ℂ_[q]).comp continuous_subtype_val

def Van (m : ℕ) (f : ℂ_[q]⟦X⟧) : Prop := ∀ n < m, ‖coeff n f‖ < 1

theorem norm_add_lt {x y : ℂ_[q]} (hx : ‖x‖ < 1) (hy : ‖y‖ < 1) : ‖x + y‖ < 1 :=
  (IsUltrametricDist.norm_add_le_max x y).trans_lt (max_lt hx hy)

theorem norm_mul_lt_left {x y : ℂ_[q]} (hx : ‖x‖ < 1) (hy : ‖y‖ ≤ 1) : ‖x * y‖ < 1 := by
  rw [norm_mul]
  exact mul_lt_one_of_nonneg_of_lt_one_left (norm_nonneg _) hx hy

theorem van_mul {f g : ℂ_[q]⟦X⟧} {a b : ℕ} (hf : Bd 1 f) (hg : Bd 1 g) (ha : Van a f) (hb : Van b g) :
    Van (a + b) (f * g) := by
  intro n hn
  rw [coeff_mul]
  refine Finset.sum_induction _ (fun x => ‖x‖ < 1) (fun _ _ => norm_add_lt) (by simp) ?_
  intro p hp
  have hp' : p.1 + p.2 = n := Finset.HasAntidiagonal.mem_antidiagonal.1 hp
  by_cases h : p.1 < a
  · exact norm_mul_lt_left (ha _ h) (hg _)
  · rw [mul_comm]
    exact norm_mul_lt_left (hb _ (by omega)) (hf _)

theorem bd_pow {g : ℂ_[q]⟦X⟧} (hg : Bd 1 g) (d : ℕ) : Bd 1 (g ^ d) := by
  induction d with
  | zero =>
    intro n
    rw [pow_zero, coeff_one]
    split_ifs <;> simp
  | succ d ih =>
    have := ((sup_norm_laws q).1 _ _ _ _ ih hg).2
    rwa [one_mul, ← pow_succ] at this

theorem van_pow {g : ℂ_[q]⟦X⟧} {r : ℕ} (hg : Bd 1 g) (hr : Van r g) (d : ℕ) : Van (d * r) (g ^ d) := by
  induction d with
  | zero => intro n hn; omega
  | succ d ih =>
    rw [add_mul, one_mul, pow_succ]
    exact van_mul (bd_pow hg d) hg ih hr

theorem van_subst {f g : ℂ_[q]⟦X⟧} {m r : ℕ} (hf : Bd 1 f) (hg : Bd 1 g) (h0 : constantCoeff g = 0)
    (hm : Van m f) (hr : Van r g) : Van (m * r) (f.subst g) := by
  intro n hn
  rw [coeff_subst' (HasSubst.of_constantCoeff_zero' h0)]
  refine finsum_induction (fun x => ‖x‖ < 1) (by simp) (fun _ _ => norm_add_lt) fun d => ?_
  rw [smul_eq_mul]
  by_cases h : d < m
  · exact norm_mul_lt_left (hm _ h) (bd_pow hg d n)
  · rw [mul_comm]
    exact norm_mul_lt_left (van_pow hg hr d n (hn.trans_le (Nat.mul_le_mul_right r (by omega)))) (hf d)

theorem map_law (F : FormalGroup 𝓞_ℂ_[q]) (f g : 𝓞_ℂ_[q]⟦X⟧) (hf : constantCoeff f = 0) (hg : constantCoeff g = 0) :
    (MvPowerSeries.subst (![PowerSeries.map (algebraMap 𝓞_ℂ_[q] ℂ_[q]) f, PowerSeries.map (algebraMap 𝓞_ℂ_[q] ℂ_[q]) g] :
      Fin 2 → MvPowerSeries Unit ℂ_[q]) (MvPowerSeries.map (algebraMap 𝓞_ℂ_[q] ℂ_[q]) F.toPowerSeries) : ℂ_[q]⟦X⟧)
    = PowerSeries.map (algebraMap 𝓞_ℂ_[q] ℂ_[q])
      (MvPowerSeries.subst (![f, g] : Fin 2 → MvPowerSeries Unit 𝓞_ℂ_[q]) F.toPowerSeries) := by
  symm
  refine (MvPowerSeries.map_subst (GlobalTheory.ConvSer.nMul_hasSubst_pair hf hg) _).trans ?_
  congr! 2 with s
  fin_cases s <;> rfl

end Padic

theorem padic_multiplications : ∀ (q : ℕ) [Fact q.Prime] (F : FormalGroup 𝓞_ℂ_[q]) (U ℓ : ℂ_[q]⟦X⟧), constantCoeff U = 0 → constantCoeff ℓ = 0 → U.subst ℓ = X → MvPowerSeries.subst (![PowerSeries.subst (MvPowerSeries.X 0 : MvPowerSeries (Fin 2) ℂ_[q]) U, PowerSeries.subst (MvPowerSeries.X 1 : MvPowerSeries (Fin 2) ℂ_[q]) U] : Fin 2 → MvPowerSeries (Fin 2) ℂ_[q]) (MvPowerSeries.map (algebraMap 𝓞_ℂ_[q] ℂ_[q]) F.toPowerSeries) = PowerSeries.subst (MvPowerSeries.X 0 + MvPowerSeries.X 1 : MvPowerSeries (Fin 2) ℂ_[q]) U → (∀ a : ℤ_[q], Bd 1 (U.subst (C (zc a) * ℓ))) ∧ (∀ k, ¬ q ∣ k → ‖coeff k (U.subst (C (q : ℂ_[q]) * ℓ))‖ < 1) ∧ (‖coeff q (U.subst (C (q : ℂ_[q]) * ℓ))‖ < 1 → ∀ (k : ℕ) (a : ℤ_[q]), ‖a‖ ≤ (q : ℝ) ^ (-(k : ℤ)) → ∀ n < (2 * q) ^ k, ‖coeff n (U.subst (C (zc a) * ℓ))‖ < 1) := by
  intro q hq F U ℓ hU hℓ hUℓ hG
  have law := add_law _ U hU hG
  have hinv := subst_inv hℓ hUℓ
  have hc : ∀ a : ℂ_[q], constantCoeff (C a * ℓ) = 0 := fun a => by simp [hℓ]
  have hB0 : ∀ a : ℂ_[q], constantCoeff (U.subst (C a * ℓ) : ℂ_[q]⟦X⟧) = 0 := fun a => cc_subst hU (hc a)
  have hℓB : ∀ a : ℂ_[q], (ℓ.subst (U.subst (C a * ℓ) : ℂ_[q]⟦X⟧) : ℂ_[q]⟦X⟧) = C a * ℓ := fun a => by
    rw [← subst_comp_subst_apply (HasSubst.of_constantCoeff_zero' hU) (HasSubst.of_constantCoeff_zero' (hc a)),
        hinv, subst_X (HasSubst.of_constantCoeff_zero' (hc a))]
  have hcomp : ∀ a b : ℂ_[q], (PowerSeries.subst (U.subst (C b * ℓ) : ℂ_[q]⟦X⟧) (U.subst (C a * ℓ) : ℂ_[q]⟦X⟧) : ℂ_[q]⟦X⟧)
      = U.subst (C (a * b) * ℓ) := fun a b => by
    rw [subst_comp_subst_apply (HasSubst.of_constantCoeff_zero' (hc a)) (HasSubst.of_constantCoeff_zero' (hB0 b)),
        subst_mul (HasSubst.of_constantCoeff_zero' (hB0 b)), subst_C', hℓB, map_mul, mul_assoc]

  have hnat : ∀ n : ℕ, (U.subst (C (n : ℂ_[q]) * ℓ) : ℂ_[q]⟦X⟧)
      = PowerSeries.map (algebraMap 𝓞_ℂ_[q] ℂ_[q]) (GlobalTheory.ConvSer.nMul F n) := by
    intro n
    induction n with
    | zero =>
      ext m
      rw [coeff_subst_C_mul U ℓ hℓ, GlobalTheory.ConvSer.nMul_zero, map_zero, map_zero]
      refine Finset.sum_eq_zero fun d _ => ?_
      rcases d with _ | d
      · simp [hU]
      · simp
    | succ n ih =>
      rw [GlobalTheory.ConvSer.nMul_succ, ← map_law F _ _ (GlobalTheory.ConvSer.nMul_constantCoeff F n) constantCoeff_X, ← ih, map_X]
      have := law _ _ (hc n) hℓ
      rw [hUℓ] at this
      rw [this]
      congr 1
      push_cast
      rw [map_add (f := _), map_one]
      ring
  have hint : ∀ a : ℤ_[q], Bd 1 (U.subst (C (zc a) * ℓ)) := by
    intro a m
    refine PadicInt.denseRange_natCast.induction_on (p := fun a => ‖coeff m (U.subst (C (zc a) * ℓ) : ℂ_[q]⟦X⟧)‖ ≤ 1)
      a ?_ fun n => ?_
    · simp only [coeff_subst_C_mul U ℓ hℓ]
      have := continuous_zc (q := q)
      exact isClosed_le (by fun_prop) continuous_const
    · rw [zc_natCast, hnat]
      exact bd_map _ m
  have hBq : Bd 1 (U.subst (C (q : ℂ_[q]) * ℓ)) := by
    have := hint q
    rwa [zc_natCast] at this

  have hone := deriv_mul_eq_one hℓ hUℓ
  set W : ℂ_[q]⟦X⟧ := C (coeff 1 ℓ) * (d⁄dX U).subst ℓ with hW
  have hW0 : constantCoeff W = 1 := by
    have h1 := congrArg constantCoeff hone
    rw [map_mul, map_one, ← coeff_zero_eq_constantCoeff_apply (d⁄dX ℓ), coeff_derivative] at h1
    simp only [zero_add, Nat.cast_zero, mul_one] at h1
    rw [hW, map_mul, constantCoeff_C, mul_comm, h1]
  have hWint : Bd 1 W := by
    intro m
    set N := m + 2 with hN
    have hXN : constantCoeff (X ^ N : ℂ_[q]⟦X⟧) = 0 := by simp [hN]
    set h : ℂ_[q]⟦X⟧ := ℓ.subst (X ^ N : ℂ_[q]⟦X⟧) with hh
    have hh0 : constantCoeff h = 0 := cc_subst hℓ hXN
    have hUh : (U.subst h : ℂ_[q]⟦X⟧) = X ^ N := by
      rw [hh,
          ← subst_comp_subst_apply (HasSubst.of_constantCoeff_zero' hℓ) (HasSubst.of_constantCoeff_zero' hXN),
          hUℓ, subst_X (HasSubst.of_constantCoeff_zero' hXN)]
    obtain ⟨V, hV⟩ : ∃ V : ℂ_[q]⟦X⟧, ℓ = C (coeff 1 ℓ) * X + X ^ 2 * V := by
      have : (X : ℂ_[q]⟦X⟧) ^ 2 ∣ ℓ - C (coeff 1 ℓ) * X := by
        rw [X_pow_dvd_iff]
        intro j hj
        interval_cases j
        · simp [hℓ]
        · simp
      obtain ⟨V, hV⟩ := this
      exact ⟨V, by rw [← hV]; ring⟩
    have hh' : h = C (coeff 1 ℓ) * X ^ N + X ^ (2 * N) * V.subst (X ^ N : ℂ_[q]⟦X⟧) := by
      rw [hh]
      conv_lhs => rw [hV]
      rw [subst_add (HasSubst.of_constantCoeff_zero' hXN),
          subst_mul (HasSubst.of_constantCoeff_zero' hXN),
          subst_mul (HasSubst.of_constantCoeff_zero' hXN),
          subst_pow (HasSubst.of_constantCoeff_zero' hXN), subst_C',
          subst_X (HasSubst.of_constantCoeff_zero' hXN), ← pow_mul, mul_comm N 2]
    have hd : (X : ℂ_[q]⟦X⟧) ^ N ∣ h := by
      rw [hh']
      exact dvd_add (dvd_mul_left _ _) ((pow_dvd_pow _ (by omega)).mul_right _)
    obtain ⟨T, hT⟩ := taylor_dvd U ℓ h N hℓ hh0 hd
    have hl := law _ _ hℓ hh0
    have hb := map_law F X (X ^ N) constantCoeff_X (by simp [hN])
    rw [map_pow, map_X] at hb
    rw [hUℓ, hUh, hb] at hl
    have hbd : Bd 1 (U.subst (ℓ + h)) := hl ▸ bd_map _
    have e : (U.subst (ℓ + h) : ℂ_[q]⟦X⟧) = X + X ^ N * W +
        X ^ (2 * N) * (T + (d⁄dX U).subst ℓ * V.subst (X ^ N : ℂ_[q]⟦X⟧)) := by
      rw [hUℓ] at hT
      rw [hW]
      linear_combination hT + ((d⁄dX U).subst ℓ : ℂ_[q]⟦X⟧) * hh'
    have := hbd (m + N)
    rw [e, map_add (f := _), map_add (f := _), coeff_X_pow_mul, coeff_X, if_neg (by omega), coeff_X_pow_mul', if_neg (by omega)] at this
    simpa using this
  have hq1 : ‖(q : ℂ_[q])‖ < 1 := by
    rw [← zc_natCast, norm_zc, PadicInt.norm_p]
    exact inv_lt_one_of_one_lt₀ (by exact_mod_cast hq.out.one_lt)
  have hder : Bd ‖(q : ℂ_[q])‖ (d⁄dX (U.subst (C (q : ℂ_[q]) * ℓ))) := by
    refine (sup_norm_laws q).2.2.2.2.2 _ W 0 _ hWint (by rw [hW0, norm_one]) ?_
    have e : X ^ 0 * W * d⁄dX (U.subst (C (q : ℂ_[q]) * ℓ))
        = C (q : ℂ_[q]) * W.subst (U.subst (C (q : ℂ_[q]) * ℓ) : ℂ_[q]⟦X⟧) := by
      rw [derivative_subst (HasSubst.of_constantCoeff_zero' (hc q)), hW,
          subst_mul (HasSubst.of_constantCoeff_zero' (hB0 q)), subst_C',
          subst_comp_subst_apply (HasSubst.of_constantCoeff_zero' hℓ) (HasSubst.of_constantCoeff_zero' (hB0 q)),
          hℓB, Derivation.leibniz, derivative_C]
      simp only [smul_eq_mul]
      linear_combination (C (coeff 1 ℓ) * C (q : ℂ_[q]) *
        ((d⁄dX U).subst (C (q : ℂ_[q]) * ℓ) : ℂ_[q]⟦X⟧)) * hone
    rw [e]
    intro n
    rw [coeff_C_mul, norm_mul]
    exact mul_le_of_le_one_right (norm_nonneg _) ((sup_norm_laws q).2.1 W _ 1 hWint hBq (hB0 q) n)
  have h2 : ∀ k, ¬ q ∣ k → ‖coeff k (U.subst (C (q : ℂ_[q]) * ℓ) : ℂ_[q]⟦X⟧)‖ < 1 := by
    intro k hk
    rcases k with _ | k
    · exact absurd (dvd_zero q) hk
    have := hder k
    rw [coeff_derivative, norm_mul] at this
    have hk1 : ‖((k : ℂ_[q]) + 1)‖ = 1 := by
      rw [← Nat.cast_succ, ← zc_natCast, norm_zc, PadicInt.norm_natCast_eq_one_iff]
      exact (Nat.Prime.coprime_iff_not_dvd hq.out).2 hk
    rw [hk1, mul_one] at this
    exact this.trans_lt hq1
  refine ⟨hint, h2, fun hqq k a ha => ?_⟩
  have hv : Van (2 * q) (U.subst (C (q : ℂ_[q]) * ℓ)) := by
    intro n hn
    by_cases hd : q ∣ n
    · obtain ⟨c, rfl⟩ := hd
      have hc2 : c < 2 := by
        by_contra h
        have : q * 2 ≤ q * c := Nat.mul_le_mul_left q (by omega)
        omega
      interval_cases c
      · rw [mul_zero, coeff_zero_eq_constantCoeff_apply, hB0]; simp
      · rwa [mul_one]
    · exact h2 n hd
  obtain ⟨v, rfl⟩ := Ideal.mem_span_singleton'.1 ((PadicInt.norm_le_pow_iff_mem_span_pow a k).1 ha)
  clear ha
  show Van _ _
  induction k with
  | zero =>
    intro n hn
    obtain rfl : n = 0 := by simpa using hn
    rw [coeff_zero_eq_constantCoeff_apply, hB0]; simp
  | succ k ih =>
    have := van_subst hBq (hint _) (hB0 _) hv ih
    rw [hcomp, ← zc_natCast, ← zc_mul, ← pow_succ'] at this
    convert this using 5
    ring

end GlobalTheory.MomOne.FormalMul
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.JetHarmonics.FormalGroupPadicMulIntegralVanishingOrder =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.JetHarmonics.HeightOneOfSplit =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.JetHarmonics.HeightOneOfSplit", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Jets.CmLatticeCommutatorPairingPowEqOneOfGoodLift\npublic import Mathlib.RingTheory.FormalGroup.Basic\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.CpTransportedTaylorSeriesInChartRingHomLaws\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsSmallInPrimePow\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsUnitCoeffMulSeriesLeNorm\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.FormalGroupPadicMulIntegralVanishingOrder\nimport Development.AbelianVarietyTheory.Proofs.JetHarmonics.ImagQuadraticMaximalOrderArithmeticAtSplitPrime\nimport Development.AbelianVarietyTheory.Proofs.JetHarmonics.UwEllipticFlow\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open PowerSeries GlobalTheory.MomOne
open scoped ComplexConjugate BigOperators Topology

namespace GlobalTheory.MomOne

theorem height_one_of_split : ∀ (d q : ℕ) [Fact q.Prime] (M : Mdl q) (F : FormalGroup 𝓞_ℂ_[q]), d.Prime → d % 16 = 7 → Split d q → IsOK d M.L → M.Ok → MvPowerSeries.subst (![PowerSeries.subst (MvPowerSeries.X 0 : MvPowerSeries (Fin 2) ℂ_[q]) (PowerSeries.map (M.ι : ℂ →+* ℂ_[q]) (tay M.u)), PowerSeries.subst (MvPowerSeries.X 1 : MvPowerSeries (Fin 2) ℂ_[q]) (PowerSeries.map (M.ι : ℂ →+* ℂ_[q]) (tay M.u))] : Fin 2 → MvPowerSeries (Fin 2) ℂ_[q]) (MvPowerSeries.map (algebraMap 𝓞_ℂ_[q] ℂ_[q]) F.toPowerSeries) = PowerSeries.subst (MvPowerSeries.X 0 + MvPowerSeries.X 1 : MvPowerSeries (Fin 2) ℂ_[q]) (PowerSeries.map (M.ι : ℂ →+* ℂ_[q]) (tay M.u)) → ∃ ℓ : ℂ_[q]⟦X⟧, constantCoeff ℓ = 0 ∧ PowerSeries.subst ℓ (PowerSeries.map (M.ι : ℂ →+* ℂ_[q]) (tay M.u)) = X ∧ ‖coeff q (PowerSeries.subst (C (q : ℂ_[q]) * ℓ) (PowerSeries.map (M.ι : ℂ →+* ℂ_[q]) (tay M.u)))‖ = 1 ∧ ∀ k < q, ‖coeff k (PowerSeries.subst (C (q : ℂ_[q]) * ℓ) (PowerSeries.map (M.ι : ℂ →+* ℂ_[q]) (tay M.u)))‖ < 1 := by
  intro d q _ M F hd hd16 hs hOK hM hF
  set U : ℂ_[q]⟦X⟧ := PowerSeries.map (M.ι : ℂ →+* ℂ_[q]) (tay M.u) with hUdef
  have flow := uw_elliptic_flow q M hM
  have hU0 : constantCoeff U = 0 := by
    rw [hUdef, ← coeff_zero_eq_constantCoeff_apply, coeff_map, tay, coeff_mk]
    simp [flow.2.2.2.2.1]

  obtain ⟨ℓ, hchart, hℓX⟩ := Basic.exists_chart M hM
  have hℓ0 : constantCoeff ℓ = 0 := hchart.2.1
  have hUℓ : U.subst ℓ = X := hℓX
  obtain ⟨P1, P2, P3⟩ := _root_.GlobalTheory.MomOne.FormalMul.padic_multiplications q F U ℓ hU0 hℓ0 hUℓ hF
  refine ⟨ℓ, hℓ0, hUℓ, ?_, ?_⟩
  ·

    have hle : ‖coeff q (U.subst (C (q : ℂ_[q]) * ℓ))‖ ≤ 1 := by
      have := P1 (q : ℤ_[q])
      rw [_root_.GlobalTheory.MomOne.FormalMul.zc_natCast] at this
      exact this q
    refine le_antisymm hle (not_lt.1 fun hlt => ?_)
    have P3' := P3 hlt
    set k : ℕ := d + 3 with hk
    obtain ⟨β, N, hβ, hβ0, hβn, hN, hNle⟩ := exists_small_in_prime_pow d q M.ι hd hd16 hs k
    have ar := okArith d q M.ι hd hd16 hs
    obtain ⟨a, ha⟩ := (ar.2.1 β hβ).1
    have hanorm : ‖a‖ ≤ (q : ℝ) ^ (-(k : ℤ)) := by
      rw [← _root_.GlobalTheory.MomOne.FormalMul.norm_zc, ← ha]
      exact hβn
    have hlat : ∀ l ∈ M.L.lattice, β * l ∈ M.L.lattice := by
      intro l hl
      rw [hOK] at hl ⊢
      exact (ar.1.2.2 β l hβ hl).2.1
    have hu0 : AnalyticAt ℂ M.u 0 := (flow.2.2.2.2.2.2.2.2 0 (Or.inl ((hOK 0).2 ⟨0, 0, by simp⟩))).1
    have hhat : hat M.ι ℓ (fun z => M.u (β * z)) = U.subst (C (zc a) * ℓ) := by
      rw [(TaylorRead.hat_laws q M.ι ℓ hℓ0).2.2.2.2.2.1 M.u β hu0, ← ha]
      rfl
    have hbd : Bd 1 (hat M.ι ℓ (fun z => M.u (β * z))) := by
      rw [hhat]
      exact P1 a
    obtain ⟨n, hnN, hn1⟩ := _root_.GlobalTheory.MomOne.MulDegree.exists_unit_coeff q M ℓ β N hchart hβ0 hlat hN hbd
    have hnlt : n < (2 * q) ^ k := by
      have hq : 0 < q ^ k := pow_pos (Fact.out : q.Prime).pos k
      have h2 : d + 3 < 2 ^ k := Nat.lt_two_pow_self
      calc n ≤ N := hnN
        _ ≤ (d + 3) * q ^ k := hNle
        _ < 2 ^ k * q ^ k := Nat.mul_lt_mul_of_pos_right h2 hq
        _ = (2 * q) ^ k := (mul_pow 2 q k).symm
    have := P3' k a hanorm n hnlt
    rw [← hhat, hn1] at this
    exact lt_irrefl _ this
  · intro k hk
    rcases Nat.eq_zero_or_pos k with rfl | hkpos
    · have hc : constantCoeff (C (q : ℂ_[q]) * ℓ) = 0 := by simp [hℓ0]
      rw [coeff_zero_eq_constantCoeff_apply, TaylorRead.constantCoeff_subst_of hc, hU0, norm_zero]
      exact one_pos
    · exact P2 k (Nat.not_dvd_of_pos_of_lt hkpos hk)

end GlobalTheory.MomOne
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.JetHarmonics.HeightOneOfSplit =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsMultiplicativeChartAtSplitPrime =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsMultiplicativeChartAtSplitPrime", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Jets.CmLatticeCommutatorPairingPowEqOneOfGoodLift\npublic import Formalism.UnipotentAdelicQuotients.JetMomFound\npublic import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.NatCastMulCoeffOfPderivEq\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.CpBinomialPowerSubOneSeriesIntegralityCompositio\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsFormalGroupAdd\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.HeightOneOfSplit\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.IsIsoGmOfMap\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open PowerSeries GlobalTheory.MomOne
open scoped ComplexConjugate BigOperators Topology

namespace GlobalTheory.MomOne.SplitChart

open ChordLaw

section Algebra

variable {k : Type} [CommRing k] {σ : Type}

theorem law_two {U : k⟦X⟧} (hU : constantCoeff U = 0) {F : MvPowerSeries (Fin 2) k}
    (H : MvPowerSeries.subst (![PowerSeries.subst (MvPowerSeries.X 0 : MvPowerSeries (Fin 2) k) U,
      PowerSeries.subst (MvPowerSeries.X 1 : MvPowerSeries (Fin 2) k) U] : Fin 2 → MvPowerSeries (Fin 2) k) F =
      PowerSeries.subst (MvPowerSeries.X 0 + MvPowerSeries.X 1 : MvPowerSeries (Fin 2) k) U)
    {a b : MvPowerSeries σ k} (ha : MvPowerSeries.constantCoeff a = 0) (hb : MvPowerSeries.constantCoeff b = 0) :
    MvPowerSeries.subst (![PowerSeries.subst a U, PowerSeries.subst b U] : Fin 2 → MvPowerSeries σ k) F =
      PowerSeries.subst (a + b) U := by
  have hab := hasSubst_two ha hb
  have c0 : ∀ i, MvPowerSeries.constantCoeff (PowerSeries.subst (MvPowerSeries.X i : MvPowerSeries (Fin 2) k) U) = 0 :=
    fun i => PowerSeries.constantCoeff_subst_eq_zero (MvPowerSeries.constantCoeff_X i) _ hU
  have h := congrArg (MvPowerSeries.subst ![a, b]) H
  rw [MvPowerSeries.subst_comp_subst_apply (hasSubst_two (c0 0) (c0 1)) hab, subst_psubst hab (by simp),
    MvPowerSeries.subst_add hab, MvPowerSeries.subst_X hab, MvPowerSeries.subst_X hab] at h
  refine Eq.trans ?_ h
  congr 1
  funext i
  fin_cases i
  · simp [subst_psubst hab (MvPowerSeries.constantCoeff_X 0), MvPowerSeries.subst_X hab]
  · simp [subst_psubst hab (MvPowerSeries.constantCoeff_X 1), MvPowerSeries.subst_X hab]

theorem constantCoeff_mulN {R : Type} [CommRing R] (F : FormalGroup R) (n : ℕ) :
    constantCoeff (JetMomFound.mulN F n) = 0 := by
  induction n with
  | zero => simp [JetMomFound.mulN]
  | succ n ih =>
    refine MvPowerSeries.constantCoeff_subst_eq_zero (hasSubst_two ih constantCoeff_X) ?_ F.zero_constantCoeff
    intro i
    fin_cases i
    · exact ih
    · exact constantCoeff_X

theorem map_mulN {R : Type} [CommRing R] (φ : R →+* k) (F : FormalGroup R) {U ℓ : k⟦X⟧}
    (hU : constantCoeff U = 0) (hℓ : constantCoeff ℓ = 0) (hUℓ : PowerSeries.subst ℓ U = (X : k⟦X⟧))
    (H : MvPowerSeries.subst (![PowerSeries.subst (MvPowerSeries.X 0 : MvPowerSeries (Fin 2) k) U,
      PowerSeries.subst (MvPowerSeries.X 1 : MvPowerSeries (Fin 2) k) U] : Fin 2 → MvPowerSeries (Fin 2) k)
      (MvPowerSeries.map φ F.toPowerSeries) =
      PowerSeries.subst (MvPowerSeries.X 0 + MvPowerSeries.X 1 : MvPowerSeries (Fin 2) k) U) (n : ℕ) :
    PowerSeries.map φ (JetMomFound.mulN F n) = PowerSeries.subst (C (n : k) * ℓ) U := by
  induction n with
  | zero =>
    simp only [JetMomFound.mulN, map_zero, Nat.cast_zero, zero_mul]
    exact (PowerSeries.subst_zero_of_constantCoeff_zero hU).symm
  | succ n ih =>
    have h := law_two hU H (a := (C (n : k) * ℓ : k⟦X⟧)) (b := ℓ)
      (show constantCoeff (C (n : k) * ℓ) = 0 by rw [map_mul, hℓ, mul_zero]) hℓ
    have e : (C ((n + 1 : ℕ) : k) * ℓ : k⟦X⟧) = C (n : k) * ℓ + ℓ := by
      rw [Nat.cast_succ, map_add (f := _), map_one]; ring
    rw [e]
    refine Eq.trans ?_ h
    rw [← ih, hUℓ]
    refine (MvPowerSeries.map_subst (hasSubst_two (constantCoeff_mulN F n) constantCoeff_X) _).trans ?_
    congr 1
    funext i
    fin_cases i
    · rfl
    · exact PowerSeries.map_X φ

theorem deriv_of_mul {g : k⟦X⟧}
    (H : PowerSeries.subst (MvPowerSeries.X 0 + MvPowerSeries.X 1 : MvPowerSeries (Fin 2) k) g =
      PowerSeries.subst (MvPowerSeries.X 0 : MvPowerSeries (Fin 2) k) g +
      PowerSeries.subst (MvPowerSeries.X 1 : MvPowerSeries (Fin 2) k) g +
      PowerSeries.subst (MvPowerSeries.X 0 : MvPowerSeries (Fin 2) k) g *
      PowerSeries.subst (MvPowerSeries.X 1 : MvPowerSeries (Fin 2) k) g) :
    derivative g = C (coeff 1 g) * (1 + g) := by
  have HX : ∀ i, PowerSeries.HasSubst (MvPowerSeries.X i : MvPowerSeries (Fin 2) k) := fun i =>
    PowerSeries.HasSubst.of_constantCoeff_zero (MvPowerSeries.constantCoeff_X i)
  have HS : PowerSeries.HasSubst (MvPowerSeries.X 0 + MvPowerSeries.X 1 : MvPowerSeries (Fin 2) k) :=
    PowerSeries.HasSubst.of_constantCoeff_zero (by simp)
  have h := congrArg (MvPowerSeries.pderiv (R := k) 1) H
  simp only [map_add (f := _), Derivation.leibniz, smul_eq_mul, GlobalTheory.FormalCalc.pderiv_powerSeries_subst (HX _),
    GlobalTheory.FormalCalc.pderiv_powerSeries_subst HS] at h
  have p0 : MvPowerSeries.pderiv (R := k) 1 (MvPowerSeries.X 0 : MvPowerSeries (Fin 2) k) = 0 := by
    simp [MvPowerSeries.pderiv_X_of_ne]
  have p1 : MvPowerSeries.pderiv (R := k) 1 (MvPowerSeries.X 1 : MvPowerSeries (Fin 2) k) = 1 := by simp
  simp only [p0, p1, zero_add, mul_one, mul_zero, add_zero] at h
  have ha : MvPowerSeries.HasSubst (![(X : k⟦X⟧), 0] : Fin 2 → MvPowerSeries Unit k) :=
    hasSubst_two constantCoeff_X (map_zero _)
  have h2 := congrArg (MvPowerSeries.subst (![(X : k⟦X⟧), 0] : Fin 2 → MvPowerSeries Unit k)) h
  rw [subst_psubst ha (by simp), MvPowerSeries.subst_add ha, MvPowerSeries.subst_add ha,
    MvPowerSeries.subst_mul ha, subst_psubst ha (MvPowerSeries.constantCoeff_X 0),
    subst_psubst ha (MvPowerSeries.constantCoeff_X 1), MvPowerSeries.subst_X ha, MvPowerSeries.subst_X ha] at h2
  simp only [Matrix.cons_val_zero, Matrix.cons_val_one, add_zero] at h2
  have e : PowerSeries.subst (0 : MvPowerSeries Unit k) (derivative g) = (C (coeff 1 g) : k⟦X⟧) := by
    rw [PowerSeries.subst_zero_eq_C_constantCoeff, MvPowerSeries.map_C, ← coeff_zero_eq_constantCoeff_apply,
      coeff_derivative]
    simp [PowerSeries.C]
  rw [X_subst, X_subst, e] at h2
  rw [h2]
  ring

theorem subst_log_eq_X [IsAddTorsionFree k] {g L : k⟦X⟧} {γ ω : k} (hγ : γ * ω = 1) (hg : constantCoeff g = 0)
    (hd : derivative g = C γ * (1 + g)) (hL0 : constantCoeff L = 0) (hL : (1 + X) * derivative L = 1) :
    PowerSeries.subst (C ω * L) g = (X : k⟦X⟧) := by
  have h0 : constantCoeff (C ω * L) = 0 := by rw [map_mul, hL0, mul_zero]
  have Hs := PowerSeries.HasSubst.of_constantCoeff_zero' h0
  have hh0 : constantCoeff (PowerSeries.subst (C ω * L) g : k⟦X⟧) = 0 :=
    PowerSeries.constantCoeff_subst_eq_zero h0 _ hg
  have hD : derivative (PowerSeries.subst (C ω * L) g : k⟦X⟧) =
      C γ * (1 + PowerSeries.subst (C ω * L) g) * (C ω * derivative L) := by
    rw [PowerSeries.derivative_subst Hs, hd, PowerSeries.subst_mul Hs, PowerSeries.subst_add Hs,
      PowerSeries.subst_C, ← PowerSeries.coe_substAlgHom Hs, map_one, Derivation.leibniz, derivative_C]
    simp only [smul_eq_mul, mul_zero, add_zero]
    rfl
  generalize (PowerSeries.subst (C ω * L) g : k⟦X⟧) = h at hh0 hD
  have hC : (C γ : k⟦X⟧) * C ω = 1 := by rw [← map_mul, hγ, map_one]
  set r := derivative L with hr
  have hr' := congrArg (derivative (R := k)) hL
  rw [Derivation.leibniz, map_add (f := _), derivative_X, Derivation.map_one_eq_zero] at hr'
  simp only [smul_eq_mul] at hr'
  have hr0 : constantCoeff r = 1 := by simpa using congrArg constantCoeff hL
  have key : (1 + h) * r = 1 := by
    let _ : HasUniqueDiv k := IsAddTorsionFree.hasUniqueDiv
    apply derivative.ext
    · rw [Derivation.leibniz, map_add (f := _), Derivation.map_one_eq_zero, hD]
      simp only [smul_eq_mul]
      linear_combination (1 + h) * r * hr' - (1 + h) * derivative r * hL + (1 + h) * r ^ 2 * hC
    · simp [hh0, hr0]
  linear_combination (1 + X) * key - (1 + h) * hL

theorem exists_scale {R K : Type} [CommRing R] [Field K] [CharZero K] (φ : R →+* K) (F : FormalGroup R)
    {U ℓ L : K⟦X⟧} (hU : constantCoeff U = 0) (hℓ : constantCoeff ℓ = 0)
    (hUℓ : PowerSeries.subst ℓ U = (X : K⟦X⟧))
    (H : MvPowerSeries.subst (![PowerSeries.subst (MvPowerSeries.X 0 : MvPowerSeries (Fin 2) K) U,
      PowerSeries.subst (MvPowerSeries.X 1 : MvPowerSeries (Fin 2) K) U] : Fin 2 → MvPowerSeries (Fin 2) K)
      (MvPowerSeries.map φ F.toPowerSeries) =
      PowerSeries.subst (MvPowerSeries.X 0 + MvPowerSeries.X 1 : MvPowerSeries (Fin 2) K) U)
    {f : R⟦X⟧} (hf : JetMomFound.IsIsoGm F f) (hL0 : constantCoeff L = 0) (hL : (1 + X) * derivative L = 1) :
    ∃ (ω : K) (e : R⟦X⟧), IsUnit (coeff 1 e) ∧ PowerSeries.subst (C ω * L) U = PowerSeries.map φ e := by
  obtain ⟨f0, f1, hf⟩ := hf
  have HX : ∀ i, PowerSeries.HasSubst (MvPowerSeries.X i : MvPowerSeries (Fin 2) R) := fun i =>
    PowerSeries.HasSubst.of_constantCoeff_zero (MvPowerSeries.constantCoeff_X i)
  have c0 : ∀ i, MvPowerSeries.constantCoeff (PowerSeries.subst (MvPowerSeries.X i : MvPowerSeries (Fin 2) R) f) = 0 :=
    fun i => PowerSeries.constantCoeff_subst_eq_zero (MvPowerSeries.constantCoeff_X i) _ f0
  have cU : ∀ i, MvPowerSeries.constantCoeff (PowerSeries.subst (MvPowerSeries.X i : MvPowerSeries (Fin 2) K) U) = 0 :=
    fun i => PowerSeries.constantCoeff_subst_eq_zero (MvPowerSeries.constantCoeff_X i) _ hU
  have ha := hasSubst_two (c0 0) (c0 1)
  have hb := hasSubst_two (cU 0) (cU 1)
  rw [FormalGroup.𝔾ₘ_toPowerSeries, MvPowerSeries.subst_add ha, MvPowerSeries.subst_add ha,
    MvPowerSeries.subst_mul ha, MvPowerSeries.subst_X ha, MvPowerSeries.subst_X ha] at hf
  simp only [Matrix.cons_val_zero, Matrix.cons_val_one] at hf
  have h1 := congrArg (MvPowerSeries.map φ) hf
  rw [map_add (f := _), map_add (f := _), map_mul,
    PowerSeries.map_subst (PowerSeries.HasSubst.of_constantCoeff_zero F.zero_constantCoeff),
    PowerSeries.map_subst (HX 0), PowerSeries.map_subst (HX 1), MvPowerSeries.map_X, MvPowerSeries.map_X] at h1
  set f' := PowerSeries.map φ f with hf'
  have f0' : constantCoeff f' = 0 := by
    rw [hf', ← coeff_zero_eq_constantCoeff_apply, coeff_map, coeff_zero_eq_constantCoeff_apply, f0, map_zero]
  have h2 := congrArg (MvPowerSeries.subst (![PowerSeries.subst (MvPowerSeries.X 0 : MvPowerSeries (Fin 2) K) U,
      PowerSeries.subst (MvPowerSeries.X 1 : MvPowerSeries (Fin 2) K) U] : Fin 2 → MvPowerSeries (Fin 2) K)) h1
  rw [subst_psubst hb (by rw [MvPowerSeries.constantCoeff_map, F.zero_constantCoeff, map_zero]), H,
    MvPowerSeries.subst_add hb, MvPowerSeries.subst_add hb, MvPowerSeries.subst_mul hb,
    subst_psubst hb (MvPowerSeries.constantCoeff_X 0), subst_psubst hb (MvPowerSeries.constantCoeff_X 1),
    MvPowerSeries.subst_X hb, MvPowerSeries.subst_X hb] at h2
  simp only [Matrix.cons_val_zero, Matrix.cons_val_one] at h2
  rw [← psubst_psubst (by simp) hU, ← psubst_psubst (MvPowerSeries.constantCoeff_X 0) hU,
    ← psubst_psubst (MvPowerSeries.constantCoeff_X 1) hU] at h2
  have hd := deriv_of_mul h2
  have g0 : constantCoeff (PowerSeries.subst U f' : K⟦X⟧) = 0 := PowerSeries.constantCoeff_subst_eq_zero hU _ f0'
  have hγ : coeff 1 (PowerSeries.subst U f' : K⟦X⟧) ≠ 0 := by
    intro hz
    have hg : (PowerSeries.subst U f' : K⟦X⟧) = 0 := by
      apply derivative.ext
      · rw [hd, hz]; simp
      · rw [g0, map_zero]
    have h3 := psubst_psubst (σ := Unit) hℓ hU f'
    rw [hg, hUℓ, X_subst, ← PowerSeries.coe_substAlgHom (PowerSeries.HasSubst.of_constantCoeff_zero' hℓ),
      map_zero] at h3
    have h4 := f1.map φ
    rw [← coeff_map, ← hf', ← h3, map_zero] at h4
    exact not_isUnit_zero h4
  have h5 := subst_log_eq_X (mul_inv_cancel₀ hγ) g0 hd hL0 hL
  set ω := (coeff 1 (PowerSeries.subst U f' : K⟦X⟧))⁻¹
  have h0 : constantCoeff (C ω * L) = 0 := by rw [map_mul, hL0, mul_zero]
  rw [psubst_psubst (σ := Unit) h0 hU] at h5
  have u0 : constantCoeff (PowerSeries.subst (C ω * L) U : K⟦X⟧) = 0 :=
    PowerSeries.constantCoeff_subst_eq_zero h0 _ hU
  refine ⟨ω, f.substInvOfIsUnit f1, by rw [coeff_one_substInvOfIsUnit]; exact Units.isUnit _, ?_⟩
  have h6 := congrArg (MvPowerSeries.map φ) (subst_substInvOfIsUnit_left f f0 f1)
  rw [PowerSeries.map_subst (PowerSeries.HasSubst.of_constantCoeff_zero' f0)] at h6
  have h7 : PowerSeries.subst f' (PowerSeries.map φ (f.substInvOfIsUnit f1)) = (X : K⟦X⟧) :=
    h6.trans (PowerSeries.map_X φ)
  have h8 := psubst_psubst (σ := Unit) u0 f0' (PowerSeries.map φ (f.substInvOfIsUnit f1))
  rw [h7, h5, X_subst, PowerSeries.subst_X (PowerSeries.HasSubst.of_constantCoeff_zero' u0)] at h8
  exact h8

end Algebra

theorem exists_mChart : ∀ (d q : ℕ) [Fact q.Prime] (M : Mdl q), d.Prime → d % 16 = 7 → Split d q → IsOK d M.L → M.Ok → IsAlgebraic ℚ M.W.a₁ → IsAlgebraic ℚ M.W.a₂ → IsAlgebraic ℚ M.W.a₃ → IsAlgebraic ℚ M.W.a₄ → IsAlgebraic ℚ M.W.a₆ → ∃ ω : ℂ_[q], M.MChart ω := by
  intro d q _ M hd hd16 hsp hL hOk b₁ b₂ b₃ b₄ b₆
  obtain ⟨F, hfin, H⟩ := exists_formalGroup_add q M hOk b₁ b₂ b₃ b₄ b₆
  obtain ⟨ℓ, hℓ, hUℓ, h1, h2⟩ := height_one_of_split d q M F hd hd16 hsp hL hOk H
  have hU : constantCoeff (PowerSeries.map (M.ι : ℂ →+* ℂ_[q]) (tay M.u)) = 0 := by
    rw [← coeff_zero_eq_constantCoeff_apply, coeff_map, tay, coeff_mk]
    simp [Mdl.u]
  rw [← map_mulN (algebraMap 𝓞_ℂ_[q] ℂ_[q]) F hU hℓ hUℓ H q] at h1 h2
  obtain ⟨f, hf⟩ := GlobalTheory.ConvSer.HeightOneInt.htOneIsGm q F hfin ⟨h1, h2⟩
  have hL0 : constantCoeff (logS : ℂ_[q]⟦X⟧) = 0 := by simp [logS]
  obtain ⟨ω, e, he1, he⟩ := exists_scale (algebraMap 𝓞_ℂ_[q] ℂ_[q]) F hU hℓ hUℓ H hf hL0
    (MulSeries.mulS_laws q).2.2.2.2.1
  have hO : ∀ x : 𝓞_ℂ_[q], ‖algebraMap 𝓞_ℂ_[q] ℂ_[q] x‖ ≤ 1 := fun x => by
    have hx := (Valuation.mem_valuationSubring_iff _ _).1 x.2
    rw [PadicComplex.norm_eq_norm]
    exact Valued.toNormedField.norm_le_one_iff.2 hx
  refine ⟨ω, hOk, by rw [map_mul, hL0, mul_zero], fun n => ?_, ?_⟩
  · rw [hat, he, coeff_map]; exact hO _
  · rw [hat, he, coeff_map]
    obtain ⟨v, hv⟩ := he1.exists_right_inv
    have h3 := congrArg (fun x => ‖algebraMap 𝓞_ℂ_[q] ℂ_[q] x‖) hv
    simp only [map_mul, norm_mul, map_one, norm_one] at h3
    have h4 := hO (coeff 1 e)
    have h5 := hO v
    nlinarith [norm_nonneg (algebraMap 𝓞_ℂ_[q] ℂ_[q] (coeff 1 e)), norm_nonneg (algebraMap 𝓞_ℂ_[q] ℂ_[q] v)]

end GlobalTheory.MomOne.SplitChart
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsMultiplicativeChartAtSplitPrime =====
