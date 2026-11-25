module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.TaylorDiscriminants.ChartChg
public import Mathlib.RingTheory.MvPolynomial.Basic
public import Mathlib.Basic.Real.Basic
public import Mathlib.LinearAlgebra.Basis.Defs
public import Mathlib.Algebra.Order.BigOperators.Group.Finset
public import Mathlib.LinearAlgebra.Determinant
public import Development.AbelianVarietyTheory.Definitions.Jets.ColValMonomial
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.VRatioGtStatement
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ExistsRosatiGen
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsGenMul
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsPowMulEqOne
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsValEqOfNonneg
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.StalkMapInjectiveOfFlat
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.CanonicalLiftUnpacking
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.ClosedPointWeilPower
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.TwistBC
public import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.ExpansionBijectiveOverFields
public import Development.AbelianVarietyTheory.Proofs.FormalGroupCharts.IsNilpotentOfMemKerJetTruncR
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.UnifBaseChangeSt
public import Development.AbelianVarietyTheory.Proofs.FormalGroupCharts.TopLePreimageWchart
public import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.ExpansionOfIntegralSectionIsIntegral
public import Mathlib.CategoryTheory.Monoidal.Cartesian.Over
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.DivCalc
public import Development.AbelianVarietyTheory.Proofs.FormalGroupCharts.ValSerGermFnVal
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsIntegralExpansionsOfValuationGe
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.ValueAtZeroOfSectionValue
public import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.ExpansionValueZero
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.TwistBCPf
public import Development.AbelianVarietyTheory.Proofs.FormalGroupCharts.RosIdSt
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.DerivativeCongruenceGermIntegralTranslateStatement
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsGenOfTop
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.ValLeOfMemSpan
public import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.ExistsBasisOfCoord
public import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.ValuationThetaRatioEqBilinear
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
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Mathlib.Algebra.Order.Star.Int
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Tactic.Lemma
import Mathlib.RingTheory.MvPowerSeries.Basic
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.TaylorDiscriminants.ConnectionKillsSeries
import Mathlib.Algebra.Order.Star.Rat
import Mathlib.RingTheory.Henselian
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ExistsZeroGt
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.BOfNsmulLeft
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ConstBFMul
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.QuadraticAlgebraValuation
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.PhiPow
import Mathlib.Algebra.Module.StablyFree.Basic
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.TaylorDiscriminants.WickVanishing.GaugeTrans
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.PhiPowSt
import Development.AbelianVarietyTheory.Proofs.JetHarmonics.DerivationMemPowOfMemPowSucc
import Mathlib.Topology.Sheaves.Presheaf
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.QuadTie
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.NonzeroLocus
import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.SecLinIffComb
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.GenCalc
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.PullGenPf
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.LevelFrameOfLaws
import Development.AbelianVarietyTheory.Proofs.JetHarmonics.PowerSeriesExpIntegralCanonGaugeAdditiveSecond
import Development.AbelianVarietyTheory.Proofs.JetHarmonics.SurjectiveAppTop
import Mathlib.RingTheory.PiTensorProduct
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.JetHarmonics.ColValueMulOfDisjointColumns, Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsPosZsmulMemRange, Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsEigenColumn, Development.AbelianVarietyTheory.Proofs.JetHarmonics.GermExistsUniqueLinear, Development.AbelianVarietyTheory.Proofs.JetHarmonics.SumProdConstMul, Development.AbelianVarietyTheory.Proofs.JetHarmonics.ValueAtZeroLinearCombinationIntegralSections, Development.AbelianVarietyTheory.Proofs.JetHarmonics.DepthBoundFromCharactersPointDatum, Development.AbelianVarietyTheory.Proofs.JetHarmonics.DepthBoundFromCharactersPointDatumStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.JetHarmonics.ColValueMulOfDisjointColumns =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.JetHarmonics.ColValueMulOfDisjointColumns", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.TaylorDiscriminants.ChartChg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.RingTheory.MvPolynomial.Basic\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPowerSeries ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ ReciprocityTheory.ChartRestriction.G.TB

namespace GlobalTheory

theorem sum_coeff_mul_weight {k σ : Type} [CommRing k] (w : (σ →₀ ℕ) → k) (P₁ P₂ : MvPolynomial σ k) :
    ∑ mo ∈ (P₁ * P₂).support, (P₁ * P₂).coeff mo * w mo =
      ∑ m₁ ∈ P₁.support, ∑ m₂ ∈ P₂.support, P₁.coeff m₁ * P₂.coeff m₂ * w (m₁ + m₂) := by
  let L : MvPolynomial σ k →ₗ[k] k := (MvPolynomial.basisMonomials σ k).constr k w
  have hL : ∀ (m : σ →₀ ℕ) (a : k), L (MvPolynomial.monomial m a) = a * w m := by
    intro m a
    have h1 : (MvPolynomial.monomial m a : MvPolynomial σ k) =
        a • MvPolynomial.basisMonomials σ k m := by
      rw [MvPolynomial.coe_basisMonomials]
      simp [MvPolynomial.smul_monomial]
    rw [h1, map_smul, Module.Basis.constr_basis, smul_eq_mul]
  have hP : ∀ P : MvPolynomial σ k, L P = ∑ mo ∈ P.support, P.coeff mo * w mo := by
    intro P
    conv_lhs => rw [P.as_sum]

    rw [map_sum]
    exact Finset.sum_congr rfl fun m _ => hL m _
  rw [← hP]
  conv_lhs => rw [P₁.as_sum, P₂.as_sum]

  rw [Finset.sum_mul_sum, map_sum]
  refine Finset.sum_congr rfl fun m₁ _ => ?_

  rw [map_sum]
  refine Finset.sum_congr rfl fun m₂ _ => ?_
  rw [MvPolynomial.monomial_mul, hL]

theorem colValue_mul_of_disjoint_columns :
    ∀ (k : Type) [CommRing k] (ι : Type) [Fintype ι] (n : ℕ) (mu : Fin n → (ι →₀ ℕ) → k) (T : Finset (Fin n)) (P₁ P₂ : MvPolynomial (ι × Fin n) k), (∀ mo ∈ P₁.support, ∀ l b, mo (l, b) ≠ 0 → b ∈ T) → (∀ mo ∈ P₂.support, ∀ l b, mo (l, b) ≠ 0 → b ∉ T) → ∑ mo ∈ (P₁ * P₂).support, (P₁ * P₂).coeff mo * ∏ b, mu b (colM mo b) = (∑ mo ∈ P₁.support, P₁.coeff mo * ∏ b ∈ T, mu b (colM mo b)) * ∑ mo ∈ P₂.support, P₂.coeff mo * ∏ b ∈ Tᶜ, mu b (colM mo b) := by
  intro k _ ι _ n mu T P₁ P₂ h₁ h₂
  rw [sum_coeff_mul_weight (fun mo => ∏ b, mu b (colM mo b)) P₁ P₂, Finset.sum_mul_sum]
  refine Finset.sum_congr rfl fun m₁ hm₁ => Finset.sum_congr rfl fun m₂ hm₂ => ?_
  have e₁ : ∏ b ∈ T, mu b (colM (m₁ + m₂) b) = ∏ b ∈ T, mu b (colM m₁ b) := by
    refine Finset.prod_congr rfl fun b hb => ?_
    congr 1
    ext l
    have : m₂ (l, b) = 0 := by
      by_contra h
      exact h₂ m₂ hm₂ l b h hb
    simp [colM, this]
  have e₂ : ∏ b ∈ Tᶜ, mu b (colM (m₁ + m₂) b) = ∏ b ∈ Tᶜ, mu b (colM m₂ b) := by
    refine Finset.prod_congr rfl fun b hb => ?_
    congr 1
    ext l
    have : m₁ (l, b) = 0 := by
      by_contra h
      exact (Finset.mem_compl.1 hb) (h₁ m₁ hm₁ l b h)
    simp [colM, this]
  rw [← Finset.prod_mul_prod_compl T, e₁, e₂]
  ring

end GlobalTheory
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.JetHarmonics.ColValueMulOfDisjointColumns =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsPosZsmulMemRange =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsPosZsmulMemRange", "h": "module\n\npublic import Mathlib.Basic.Real.Basic\npublic import Mathlib.LinearAlgebra.Basis.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.Order.BigOperators.Group.Finset\npublic import Mathlib.LinearAlgebra.Determinant\nimport Mathlib.RingTheory.MvPowerSeries.Basic\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.TaylorDiscriminants.ConnectionKillsSeries\n\n"}
section -- clump:auto
@[expose] public section

open MvPowerSeries ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ ReciprocityTheory.ChartRestriction.G.TB

namespace GlobalTheory

section CosetMin
variable {X : Type} [AddCommGroup X] {Bf : X →+ X →+ ℤ} {Q : X → ℤ}

theorem quad_add_zsmul (hs : ∀ x y, Bf x y = Bf y x) (hQ : ∀ x, 2 * Q x = Bf x x)
    (y w : X) (t : ℤ) : Q (y + t • w) = Q y + t * Bf y w + t ^ 2 * Q w := by
  have h1 := hQ (y + t • w)
  have h2 := hQ y
  have h3 := hQ w
  have h4 := hs w y
  simp only [map_add (f := _), map_zsmul, AddMonoidHom.add_apply, AddMonoidHom.smul_apply, smul_eq_mul] at h1
  have h5 : 2 * Q (y + t • w) = 2 * (Q y + t * Bf y w + t ^ 2 * Q w) := by
    linear_combination h1 - h2 + t * h4 - t ^ 2 * h3
  exact mul_left_cancel₀ two_ne_zero h5

theorem quad_zero (hQ : ∀ x, 2 * Q x = Bf x x) : Q 0 = 0 := by
  have h := hQ 0
  simp only [map_zero] at h
  omega

theorem quad_nonneg (hQ : ∀ x, 2 * Q x = Bf x x) (hp : ∀ x, x ≠ 0 → 1 ≤ Q x) (x : X) :
    0 ≤ Q x := by
  rcases eq_or_ne x 0 with rfl | hx
  · exact (quad_zero hQ).ge
  · exact le_trans zero_le_one (hp x hx)

private lemma exists_int_shift_within_bounds (q B N a : ℤ) (hq : 0 < q) (hN : 0 < N) :
    ∃ m : ℤ, -(N * q) ≤ 2 * q * (a + N * m) + B ∧ 2 * q * (a + N * m) + B ≤ N * q := by
  have hD : 0 < 2 * q * N := by positivity
  have h1 := Int.mul_ediv_add_emod (2 * q * a + B + N * q) (2 * q * N)
  have h2 := Int.emod_nonneg (2 * q * a + B + N * q) hD.ne'
  have h3 := Int.emod_lt_of_pos (2 * q * a + B + N * q) hD
  refine ⟨-((2 * q * a + B + N * q) / (2 * q * N)), ?_, ?_⟩
  · linarith
  · linarith

theorem quad_round_step (hs : ∀ x y, Bf x y = Bf y x) (hQ : ∀ x, 2 * Q x = Bf x x)
    (y w : X) (hw : 0 ≤ Q w) (N : ℤ) (hN : 0 < N) (a : ℤ) :
    ∃ m : ℤ, 4 * Q (y + (a + N * m) • w) ≤ 4 * Q y + N ^ 2 * Q w := by
  have key : ∀ t : ℤ, Q (y + t • w) = Q y + t * Bf y w + t ^ 2 * Q w :=
    fun t => quad_add_zsmul hs hQ y w t
  rcases hw.lt_or_eq with hq | hq
  · obtain ⟨m, hm1, hm2⟩ := exists_int_shift_within_bounds (Q w) (Bf y w) N a hq hN
    refine ⟨m, ?_⟩
    rw [key]
    set t := a + N * m
    have hsq : (2 * Q w * t + Bf y w) ^ 2 ≤ (N * Q w) ^ 2 := by
      nlinarith
    have hmul : Q w * (4 * (t * Bf y w + t ^ 2 * Q w)) ≤ Q w * (N ^ 2 * Q w) := by
      nlinarith [sq_nonneg (Bf y w)]
    have := le_of_mul_le_mul_left hmul hq
    linarith
  · by_cases hB : 0 ≤ Bf y w
    · refine ⟨-|a|, ?_⟩
      rw [key, ← hq]
      have h1 : a + N * -|a| ≤ 0 := by
        nlinarith [le_abs_self a, abs_nonneg a]
      nlinarith
    · refine ⟨|a|, ?_⟩
      rw [key, ← hq]
      have h1 : 0 ≤ a + N * |a| := by
        nlinarith [neg_abs_le a, abs_nonneg a]
      nlinarith

theorem quad_round_sum (hs : ∀ x y, Bf x y = Bf y x) (hQ : ∀ x, 2 * Q x = Bf x x)
    {ι : Type} [DecidableEq ι] (v : ι → X) (hv : ∀ j, 0 ≤ Q (v j)) (N : ℤ) (hN : 0 < N)
    (a : ι → ℤ) (s : Finset ι) :
    ∃ m : ι → ℤ, 4 * Q (∑ j ∈ s, (a j + N * m j) • v j) ≤ N ^ 2 * ∑ j ∈ s, Q (v j) := by
  induction s using Finset.induction_on with
  | empty => exact ⟨0, by simp [quad_zero hQ]⟩
  | insert i s hi ih =>
    obtain ⟨m, hm⟩ := ih
    obtain ⟨m0, h0⟩ :=
      quad_round_step hs hQ (∑ j ∈ s, (a j + N * m j) • v j) (v i) (hv i) N hN (a i)
    refine ⟨Function.update m i m0, ?_⟩
    have hs' : ∑ j ∈ s, (a j + N * Function.update m i m0 j) • v j
        = ∑ j ∈ s, (a j + N * m j) • v j := by
      refine Finset.sum_congr rfl fun j hj => ?_
      rw [Function.update_of_ne (fun h : j = i => hi (h ▸ hj))]
    rw [Finset.sum_insert hi, Finset.sum_insert hi, hs', Function.update_self, add_comm]
    nlinarith

theorem exists_pos_zsmul_mem_range {n : ℕ} (b : Module.Basis (Fin n) ℤ X) (φ : X →+ X)
    (hφ : Function.Injective φ) (x : X) : ∃ N : ℤ, 0 < N ∧ ∃ y, φ y = N • x := by
  have : Module.Free ℤ X := Module.Free.of_basis b
  have : Module.Finite ℤ X := Module.Finite.of_basis b
  set f : X →ₗ[ℤ] X := φ.toIntLinearMap with hf
  set M := LinearMap.toMatrix b b f
  have hinj : Function.Injective f := by
    simpa [hf, AddMonoidHom.coe_toIntLinearMap] using hφ
  have hdet : M.det ≠ 0 := by
    intro h
    rw [LinearMap.det_toMatrix, LinearMap.det_eq_zero_iff_ker_ne_bot] at h
    exact h (LinearMap.ker_eq_bot.mpr hinj)
  have e : Matrix.toLin b b M = f := Matrix.toLin_toMatrix b b f
  have key : f.comp (Matrix.toLin b b M.adjugate) = M.det • LinearMap.id := by
    calc f.comp (Matrix.toLin b b M.adjugate)
        = (Matrix.toLin b b M).comp (Matrix.toLin b b M.adjugate) := by rw [e]
      _ = Matrix.toLin b b (M * M.adjugate) := (Matrix.toLin_mul b b b M M.adjugate).symm
      _ = M.det • LinearMap.id := by rw [Matrix.mul_adjugate, map_smul, Matrix.toLin_one]
  refine ⟨M.det * M.det, mul_self_pos.mpr hdet, M.det • Matrix.toLin b b M.adjugate x, ?_⟩
  have hx : f (Matrix.toLin b b M.adjugate x) = M.det • x := by
    have := congrArg (fun g => g x) key
    simpa using this
  have : φ (M.det • Matrix.toLin b b M.adjugate x) = M.det • f (Matrix.toLin b b M.adjugate x) := by
    rw [map_zsmul]; rfl
  rw [this, hx, smul_smul]

end CosetMin

theorem exists_coset_minimiser :
    ∀ (X : Type) [AddCommGroup X] (Bf : X →+ X →+ ℤ) (Q : X → ℤ), (∀ x y, Bf x y = Bf y x) → (∀ x, 2 * Q x = Bf x x) → (∀ x, x ≠ 0 → 1 ≤ Q x) → ∀ (n : ℕ) (b : Module.Basis (Fin n) ℤ X) (Cc : ℝ), (∀ j, (Q (b j) : ℝ) ≤ Cc) → ∀ (φ : X →+ X) (g : ℕ), 1 ≤ g → (∀ x y, Bf (φ x) (φ y) = g * Bf x y) → ∀ x : X, ∃ χ : X, ((Q (x + φ χ) : ℝ) ≤ g * n * Cc / 4) ∧ ∀ (q : ℕ) (z : X), (q : ℤ) * (q - 1) * Q (φ z) ≤ Q (x + φ χ + q • φ z) - Q (x + φ χ) := by
  classical
  intro X _ Bf Q hs hQ hp n b Cc hC φ g hg hφ x
  have hQφ : ∀ z, Q (φ z) = g * Q z := by
    intro z
    have h : 2 * Q (φ z) = 2 * (g * Q z) := by
      rw [hQ, hφ, ← hQ z]; ring
    exact mul_left_cancel₀ two_ne_zero h
  have hinj : Function.Injective φ := by
    intro u v huv
    by_contra hne
    have h0 : φ (u - v) = 0 := by rw [map_sub, huv, sub_self]
    have h1 := hp (u - v) (sub_ne_zero.mpr hne)
    have h2 := hQφ (u - v)
    rw [h0, quad_zero hQ] at h2
    have : (1 : ℤ) ≤ g := by exact_mod_cast hg
    nlinarith
  obtain ⟨N, hN, y, hy⟩ := exists_pos_zsmul_mem_range b φ hinj x
  obtain ⟨m, hm⟩ := quad_round_sum hs hQ (fun j => φ (b j))
    (fun j => quad_nonneg hQ hp _) N hN (fun j => b.repr y j) Finset.univ
  set χ0 : X := ∑ j, m j • b j with hχ0
  have hNx : N • (x + φ χ0) = ∑ j, (b.repr y j + N * m j) • φ (b j) := by
    have hyφ : φ y = ∑ j, b.repr y j • φ (b j) := by
      calc φ y = φ (∑ j, b.repr y j • b j) := by rw [b.sum_repr]
        _ = ∑ j, b.repr y j • φ (b j) := by rw [map_sum]; simp only [map_zsmul]

    rw [smul_add, ← hy, hyφ, hχ0, map_sum, Finset.smul_sum, ← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [map_zsmul, smul_smul, add_smul]
  have hsc : ∀ z : X, Q (N • z) = N ^ 2 * Q z := by
    intro z
    have := quad_add_zsmul hs hQ 0 z N
    simp only [zero_add, quad_zero hQ, map_zero, AddMonoidHom.zero_apply, mul_zero] at this
    linarith
  have hbound : 4 * Q (x + φ χ0) ≤ g * ∑ j, Q (b j) := by
    have h1 : 4 * Q (N • (x + φ χ0)) ≤ N ^ 2 * ∑ j, Q (φ (b j)) := by
      rw [hNx]; exact hm
    rw [hsc] at h1
    simp only [hQφ, ← Finset.mul_sum] at h1
    have hN2 : 0 < N ^ 2 := by positivity
    have h2 : N ^ 2 * (4 * Q (x + φ χ0)) ≤ N ^ 2 * (g * ∑ j, Q (b j)) := by linarith
    exact le_of_mul_le_mul_left h2 hN2
  have hex : ∃ k : ℕ, ∃ χ : X, Q (x + φ χ) = k :=
    ⟨(Q (x + φ χ0)).toNat, χ0, (Int.toNat_of_nonneg (quad_nonneg hQ hp _)).symm⟩
  obtain ⟨χ, hχ⟩ := Nat.find_spec hex
  have hmin : ∀ χ' : X, Q (x + φ χ) ≤ Q (x + φ χ') := by
    intro χ'
    rw [hχ]
    have := Nat.find_min' hex ⟨χ', (Int.toNat_of_nonneg (quad_nonneg hQ hp (x + φ χ'))).symm⟩
    calc (Nat.find hex : ℤ) ≤ ((Q (x + φ χ')).toNat : ℤ) := by exact_mod_cast this
      _ = Q (x + φ χ') := Int.toNat_of_nonneg (quad_nonneg hQ hp _)
  refine ⟨χ, ?_, ?_⟩
  · have h1 : 4 * Q (x + φ χ) ≤ g * ∑ j, Q (b j) := by linarith [hmin χ0]
    have h2 : (∑ j, (Q (b j) : ℝ)) ≤ n * Cc := by
      calc (∑ j, (Q (b j) : ℝ)) ≤ ∑ _j : Fin n, Cc := Finset.sum_le_sum fun j _ => hC j
        _ = n * Cc := by simp
    have h3 : 4 * (Q (x + φ χ) : ℝ) ≤ g * ∑ j, (Q (b j) : ℝ) := by exact_mod_cast h1
    have hg' : (0 : ℝ) ≤ g := by positivity
    nlinarith
  · intro q z
    have hz := hmin (χ + z)
    rw [map_add (f := _), ← add_assoc] at hz
    have e1 := quad_add_zsmul hs hQ (x + φ χ) (φ z) 1
    have e2 := quad_add_zsmul hs hQ (x + φ χ) (φ z) q
    rw [one_smul] at e1
    rw [natCast_zsmul] at e2
    rw [e2]
    have hq0 : (0 : ℤ) ≤ q := by positivity
    nlinarith

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsPosZsmulMemRange =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsEigenColumn =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsEigenColumn", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Jets.ColValMonomial\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.VRatioGtStatement\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ExistsRosatiGen\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsGenMul\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsPosZsmulMemRange\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsPowMulEqOne\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsValEqOfNonneg\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.StalkMapInjectiveOfFlat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Algebra.Order.Star.Rat\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ExistsZeroGt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.BOfNsmulLeft\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.ConstBFMul\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.QuadraticAlgebraValuation\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.CanonicalLiftUnpacking\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.ClosedPointWeilPower\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.PhiPow\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.DVR ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.H1
open GlobalTheory GlobalTheory.FamGerm
open ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ (PS FB ev Dof)
open ReciprocityTheory.ChartRestriction.G.TB (colM dAct)
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.DepthBound

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {V : Type} [CommRing V] [IsDomain V]
  [IsDiscreteValuationRing V] {F : Type} [Field F] [IsAlgClosed F] [Algebra (FractionRing V) F] (y : Pt1 E H V F)

theorem exists_transl_smul (hL : Laws) (q : ℕ) (hq : 1 ≤ q) (c : 𝓞 E) (s : Fam y.P.D.toPre F q) :
    ∃ u : F, y.v u = 0 ∧ y.Transl q c s (u • s) := by
  let _ := H.starRing
  have hG := hL.globalFns
  obtain ⟨f, hf1, -, -, hf4, -⟩ := y.tors F q hq
  obtain ⟨p0, hp0y, -, hp0a⟩ := CanonicalLiftUnpacking.exists_zero_qk (D := y.P.D.toPre) (F := F) y.P.D.tau_bimult q
  have hf0 : f p0 = 1 := by
    have := hf4 p0 p0 p0 ⟨p0, by rw [hp0y, add_zero], hp0a, qk_equiv_refl y.P.D.tau_bimult p0⟩
    exact mul_eq_left.1 this.symm
  obtain ⟨w, hw⟩ : ∃ w : LB.Gen (LB.LinComb y.P.D.toPre.P.L (DegPre.lineφ y.P.D.toPre F p0.g.b)
      (DegPre.lineε q)), w.IsGen := ClosedPointWeilPower.gen_local_linComb y.P.D.toPre.P.L y.P.D.toPre.P.isLB _ _
  obtain ⟨ζ, hζ, hfin⟩ := finOrdExists_of_laws hL V y.P.D F q hq p0 w hw
  obtain ⟨Φ, hΦ⟩ := phiFun_of_globalFns hG V _ y.P.D F q hq p0 w hw
  obtain ⟨w₂, hw₂, hc⟩ := ThetaMul.phi_mul_core hG p0 p0 p0 (by rw [hp0y, add_zero]) hp0a w w hw hw
  obtain ⟨e, he⟩ := ThetaFinOrd.exists_scalar hG p0 w₂ w hw₂ hw (Φ * Φ : Module.End F (Fam y.P.D.toPre F q)) Φ
    (fun s => hc s _ _ ((hΦ _ _).2 rfl) ((hΦ _ _).2 rfl)) (fun s => (hΦ _ _).2 rfl)
  obtain ⟨M, hM, hU⟩ := (ThetaFinOrd.finOrd_iff p0 w ζ Φ hΦ).1 hfin
  have hsc : ∀ t, Φ t = e • t := fun t => by
    obtain ⟨M, rfl⟩ : ∃ M', M = M' + 1 := ⟨M - 1, by omega⟩
    have h1 := LinearMap.congr_fun hU t
    rw [pow_succ', Module.End.mul_apply, LinearMap.smul_apply, Module.End.one_apply] at h1
    have h2 := LinearMap.congr_fun he (((ζ • Φ : Module.End F (Fam y.P.D.toPre F q)) ^ M) t)
    rw [Module.End.mul_apply, LinearMap.smul_apply] at h2
    rw [← h1, map_smul, h2, smul_comm]
  have hT : y.Transl q c s ((ζ * e) • s) := by
    refine ⟨p0, 1, w, ζ, Φ s, (hf1 _ _).2 hf0.symm, ?_, hw, hζ, hfin, (hΦ _ _).2 rfl, ?_⟩
    · have := y.P.oA.hom c
      exact MonObj.one_comp _
    · rw [DVR.isSmul_iff, hsc, smul_smul]
  by_cases hs : s = 0
  · refine ⟨1, y.v.map_one, ?_⟩
    rw [hs, smul_zero] at hT ⊢
    exact hT
  · refine ⟨ζ * e, ?_, hT⟩
    have h1 : (ζ • Φ : Module.End F (Fam y.P.D.toPre F q)) = (ζ * e) • 1 := LinearMap.ext fun t => by
      rw [LinearMap.smul_apply, hsc, smul_smul]; rfl
    have h2 := LinearMap.congr_fun hU s
    rw [h1, smul_pow, one_pow, LinearMap.smul_apply, Module.End.one_apply] at h2
    have h3 : (ζ * e) ^ M = 1 := by
      have : ((ζ * e) ^ M - 1) • s = 0 := by rw [sub_smul, h2, one_smul, sub_self]
      exact sub_eq_zero.1 ((smul_eq_zero.1 this).resolve_right hs)
    have h4 := congrArg y.v h3
    rw [y.v.map_pow, y.v.map_one] at h4
    induction hx : y.v (ζ * e) using WithTop.recTopCoe with
    | top =>
      obtain ⟨M, rfl⟩ : ∃ M', M = M' + 1 := ⟨M - 1, by omega⟩
      rw [hx, succ_nsmul, add_top] at h4
      exact h4
    | coe x =>
      rw [hx, ← WithTop.coe_nsmul, WithTop.coe_eq_zero, smul_eq_zero] at h4
      rw [h4.resolve_left (by omega)]; rfl

variable [CharZero F] [Algebra V F] [IsScalarTower V (FractionRing V) F]

omit [IsAlgClosed F] [CharZero F] in
theorem fO_comp_eq : (algebraMap (TWO.Ov y.v) F).comp (TWO.fO y.v y.hϖ y.hv) = algebraMap V F :=
  (IsScalarTower.algebraMap_eq V (FractionRing V) F).symm

theorem exists_jet_column (hL : Laws) (hG : FamGerm.GermExSt) (hJ : JetsSt) (hP : PullGermSt) (r : ℕ)
    (bs : Module.Basis (Fin r) ℤ y.P.D.toPre.X) (Cc M₀ : ℝ) (hred : y.Red r bs Cc M₀) (a : 𝓞 E) (N k n : ℕ)
    (hN : 1 ≤ N) (haa : letI := H.starRing; a * star a = (N : 𝓞 E)) (hn : 4 * n + 4 ≤ k) (hM : (n : ℝ) * M₀ < k)
    (h : PS F 2 y.d) (hh : letI := H.starRing; y.B.IsCanonGauge F h) (ω : PS V 1 y.d)
    (hω : letI := H.starRing; FB.toK F ω =
      FB.expS F (ev (n := 1) ![y.B.actK F a] (y.B.hL F h H.w0) - (N : F) • y.B.hL F h H.w0))
    (g : PS F 1 y.d) (hg : ∀ mo, 0 ≤ y.v (MvPowerSeries.coeff mo g)) :
    letI := H.starRing
    ∃ (s : Fam y.P.D.toPre F k) (s' t : Fam y.P.D.toPre F (k * N)) (c : F) (f : PS F 1 y.d) (r₀ : ℚ),
      (NuGe y.P.D y.Q F y.v k s 0 ∧ PullAl y.P.D F y.P.oD a k N s s' ∧ y.Transl (k * N) (star a) s' t ∧
        y.Germ (k * N) t (MvPowerSeries.C c * (ev (n := 1) ![y.B.actK F a] f * FB.toK F ω ^ k))) ∧
      y.v c = (r₀ : ℚ) ∧ (r₀ : ℝ) ≤ (n : ℝ) ^ 2 * Cc / k ∧
      ∀ mo : Fin 1 × Fin y.d →₀ ℕ, mo.degree ≤ n → MvPowerSeries.coeff mo f = MvPowerSeries.coeff mo g := by
  let _ := H.starRing
  have hk1 : 1 ≤ k := by omega
  have hkN : 1 ≤ k * N := Nat.mul_pos hk1 hN
  obtain ⟨G, hGm⟩ := hG E H V F y (k * N) hkN
  obtain ⟨π, -, hπ⟩ := PullLin.exists_pull_linearMap hL V y.P.D F (𝓞 E) y.P.oD H.w0 y.P.w0 a N k hN hk1 haa
  obtain ⟨gm, h0, h1, h2⟩ := hJ E H V F y r bs Cc M₀ hred k n hn hM
  obtain ⟨s, f, h3, h4, -, h6⟩ := h2 g hg
  obtain ⟨w, κ, hw, hpull⟩ := hP E H V F y a N k hN (by omega) haa h hh
  obtain ⟨τ, hτ⟩ := ExactTerm.exists_val_eq_of_nonneg y.hv h0
  obtain ⟨u, hu, hT⟩ := exists_transl_smul y hL (k * N) hkN (star a) (π (τ • s))
  have hnu : NuGe y.P.D y.Q F y.v k (τ • s) 0 := by
    have := NuGe.smul y.Q (s' := τ • s) hτ.ge (fun _ _ => rfl) h3
    rwa [neg_add_cancel] at this
  have hκ : y.v (algebraMap V F κ) = 0 := by
    rw [← fO_comp_eq y]
    exact TWO.v_unit y.v (Units.map (TWO.fO y.v y.hϖ y.hv : V →* TWO.Ov y.v) κ)
  refine ⟨τ • s, π (τ • s), _, u * τ * algebraMap V F κ, f, gm, ⟨hnu, (hπ _ _).2 rfl, hT, (hGm _ _).2 ?_⟩, ?_, h1, h6⟩
  · rw [map_smul, map_smul, map_smul, ← (hGm _ _).1 (hpull s _ f ((hπ _ _).2 rfl) h4), hw.trans hω.symm,
      MvPowerSeries.smul_eq_C_mul, MvPowerSeries.smul_eq_C_mul]
    simp only [map_mul, _root_.mul_assoc]
  · rw [y.v.map_mul, y.v.map_mul, hu, hτ, hκ, zero_add, add_zero]

theorem exists_eigen_column (hL : Laws) (hTW : TwistBCSpanStatement) (hVR : TWM.VRatioGtStatement) (hUU : UUStatement)
    (hG : FamGerm.GermExSt) (hV : GermValSt) (hE : EigGermSt) (Dw : Datum H)
    (I : letI := H.starRing; TateIso Dw F (TFK (R := V) F ⟶ y.P.A.A) (fun a g => g ≫ y.P.oA.act a)
      (fun n g g' c => WeilIs y.P.A.A y.P.A.L n g g' (unitOn c))) (r : ℕ)
    (bs : Module.Basis (Fin r) ℤ y.P.D.toPre.X) (Cc M₀ : ℝ) (hred : y.Red r bs Cc M₀) (a : 𝓞 E) (p k : ℕ)
    (hp : p.Prime) (hk : 4 ≤ k) (haa : letI := H.starRing; a * star a = (p : 𝓞 E))
    (hcop : letI := H.starRing; ∃ u u' : 𝓞 E, u * a + u' * star a = 1) (hpk : Nat.Coprime p k)
    (Λ : Type) (e : Λ → Fin y.d → TWO.Ov y.v) (yy α : Λ → TWO.Ov y.v)
    (hα : ∀ l, α l ∈ Ideal.span {(p : TWO.Ov y.v)})
    (he : letI := H.starRing; ∀ l, (dAct F y.B a).mulVec (fun i => (e l i : F)) = (α l : F) • fun i => (e l i : F))
    (hc : y.CharAt a p e yy)
    (h : PS F 2 y.d) (hh : letI := H.starRing; y.B.IsCanonGauge F h) (ω : PS V 1 y.d)
    (hω1 : MvPowerSeries.constantCoeff ω = 1)
    (hω : letI := H.starRing; FB.toK F ω =
      FB.expS F (ev (n := 1) ![y.B.actK F a] (y.B.hL F h H.w0) - (p : F) • y.B.hL F h H.w0)) :
    letI := H.starRing
    ∃ (s : Fam y.P.D.toPre F k) (s' t : Fam y.P.D.toPre F (k * p)) (c : F) (f : PS (TWO.Ov y.v) 1 y.d) (r₀ : ℚ),
      (NuGe y.P.D y.Q F y.v k s 0 ∧ PullAl y.P.D F y.P.oD a k p s s' ∧ y.Transl (k * p) (star a) s' t ∧
        y.Germ (k * p) t (MvPowerSeries.C c * (FB.toK F f * FB.toK F ω ^ k))) ∧
      y.v c = (r₀ : ℚ) ∧ (r₀ : ℝ) ≤ r * Cc / (4 * k) ∧ y.v (MvPowerSeries.constantCoeff (FB.toK F f)) = 0 ∧
      ∀ l mo, y.v (p : F) ≤ y.v (MvPowerSeries.coeff mo (Dof (y.B.FK F) (fun i => (e l i : F)) (FB.toK F f) -
        MvPowerSeries.C (yy l : F) * FB.toK F f)) := by
  let _ := H.starRing
  have hk1 : 1 ≤ k := by omega
  have hN : 1 ≤ p := hp.pos
  have hkN : 1 ≤ k * p := Nat.mul_pos hk1 hN
  have haa' : star a * a = (p : 𝓞 E) := by rw [mul_comm, haa]
  have hQa := QuadraticAlgebraValuation.qAl_of hL V y.ϖ y.hϖ y.P.D y.Q y.hQ (𝓞 E) y.P.oD a p haa haa'
  obtain ⟨G, hGm⟩ := hG E H V F y (k * p) hkN
  obtain ⟨π, -, hπ⟩ := PullLin.exists_pull_linearMap hL V y.P.D F (𝓞 E) y.P.oD H.w0 y.P.w0 a p k hN hk1 haa
  obtain ⟨pt, x, hpt, hx, hE'⟩ := hE E H V F y a p k hp hk haa Λ e yy α hα he hc Dw I hpk hcop
  obtain ⟨w, hw⟩ : ∃ w : LB.Gen (LB.LinComb y.P.D.toPre.P.L (DegPre.lineφ y.P.D.toPre F pt.g.b)
      (DegPre.lineε (k * p))), w.IsGen := ClosedPointWeilPower.gen_local_linComb y.P.D.toPre.P.L y.P.D.toPre.P.isLB _ _
  obtain ⟨ζ, hζ, hfin⟩ := finOrdExists_of_laws hL V y.P.D F _ hkN pt w hw
  obtain ⟨Φ, hΦ⟩ := phiFun_of_globalFns hL.globalFns V _ y.P.D F _ hkN pt w hw
  obtain ⟨χ₀, hχ1, hχ2⟩ := exists_coset_minimiser y.P.D.toPre.X (QForm.bHom y.hϖ y.P.D y.hQ) y.Q
    (fun _ _ => QForm.bOf_comm y.P.D _ _) (QForm.two_Q_eq y.hϖ y.P.D y.hQ)
    (fun _ hx => QForm.Q_pos y.hϖ y.P.D y.hQ hx) r bs Cc hred.2.2.1 (DistribSMul.toAddMonoidHom _ (star a)) p hN
    (fun x x' => by
      simp only [QForm.bHom_apply, QForm.bOf, DistribSMul.toAddMonoidHom_apply, ← smul_add, hQa]
      ring) pt.y
  simp only [DistribSMul.toAddMonoidHom_apply] at hχ1 hχ2
  obtain ⟨s, hs, hex⟩ := ExactTerm.main hL hTW hVR hUU V y.ϖ y.hϖ y.P.D y.Q y.hQ F y.v y.hv (𝓞 E) y.P.oD H.w0 y.P.w0
    a p k hN hk haa pt w hw ζ hζ hfin χ₀
  have hsm : Fam.IsSmul y.P.D.toPre F ζ (Φ (π s)) (ζ • Φ (π s)) := (DVR.isSmul_iff _ _ _).2 rfl
  obtain ⟨hnu, hsupp, c, hc0, hcv⟩ := hex (π s) (Φ (π s)) _ ((hπ _ _).2 rfl) ((hΦ _ _).2 rfl) hsm
  set t := ζ • Φ (π s) with ht
  set r₀ : ℚ := (y.Q (star a • χ₀ + pt.y) : ℚ) / (k * p) with hr₀
  have hkp : (0 : ℚ) < k * p := by exact_mod_cast hkN
  have hother : ∀ β, β ≠ star a • χ₀ + pt.y → VGe y.P.D F y.v (k * p) β (t.s β) (r₀ + 1 / (k * p)) := by
    intro β hβ
    by_cases hz : ∃ z, β = pt.y + star a • χ₀ + k • star a • z
    · obtain ⟨z, rfl⟩ := hz
      refine (hnu _).mono ?_
      have hz0 : star a • z ≠ 0 := fun h0 => hβ (by rw [h0, smul_zero, add_zero, add_comm])
      have h1 := QForm.Q_pos y.hϖ y.P.D y.hQ hz0
      have h2 := hχ2 k z
      have h3 : (1 : ℤ) ≤ (k : ℤ) * (k - 1) * y.Q (star a • z) := by
        have : (4 : ℤ) ≤ k := by exact_mod_cast hk
        have h5 : (1 : ℤ) ≤ (k : ℤ) * (k - 1) := by nlinarith
        nlinarith
      have h4 : (y.Q (star a • χ₀ + pt.y) : ℚ) + 1 ≤ y.Q (pt.y + star a • χ₀ + k • star a • z) := by
        rw [add_comm (star a • χ₀)]
        exact_mod_cast (by linarith : y.Q (pt.y + star a • χ₀) + 1 ≤ y.Q (pt.y + star a • χ₀ + k • star a • z))
      rw [hr₀, zero_add, ← add_div, Nat.cast_mul]
      exact div_le_div_of_nonneg_right h4 hkp.le
    · exact vge_of_zero (hsupp β fun z e => hz ⟨z, e⟩) _
  have hall : ∀ β, VGe y.P.D F y.v (k * p) β (t.s β) r₀ := fun β => by
    by_cases hβ : β = star a • χ₀ + pt.y
    · subst hβ
      refine (hnu _).mono (le_of_eq ?_)
      rw [hr₀, zero_add, Nat.cast_mul]
    · exact (hother β hβ).mono (le_add_of_nonneg_right (by positivity))
  obtain ⟨hV1, hV2⟩ := hV E H V F y (k * p) hkN t (G t) ((hGm _ _).2 rfl)
  have hV1' := hV1 r₀ hall
  have hV2' := hV2 _ c r₀ _ hc0 hcv (lt_add_of_pos_right _ (by positivity)) hother
  have hcne : c ≠ 0 := fun h0 => by
    rw [h0, y.v.map_zero] at hcv
    exact WithTop.top_ne_coe hcv
  have hci : y.v c⁻¹ = ((-r₀ : ℚ) : WithTop ℚ) := by
    rw [y.v.map_inv, hcv]; rfl
  let f₀ : PS (TWO.Ov y.v) 1 y.d := fun mo => ⟨c⁻¹ * MvPowerSeries.coeff mo (G t), by
    rw [TWO.mem_Ov, y.v.map_mul, hci]
    refine le_trans (le_of_eq ?_) (add_le_add le_rfl (hV1' mo))
    rw [← WithTop.coe_add, neg_add_cancel]; rfl⟩
  have hf₀ : FB.toK F f₀ = MvPowerSeries.C c⁻¹ * G t := by
    ext mo
    rw [MvPowerSeries.coeff_C_mul]; rfl
  obtain ⟨ω', hω'⟩ := (MvPowerSeries.isUnit_iff_constantCoeff.2 (hω1 ▸ isUnit_one) : IsUnit ω).exists_left_inv
  have hω'1 : MvPowerSeries.constantCoeff ω' = 1 := by
    have := congrArg MvPowerSeries.constantCoeff hω'
    rwa [map_mul, hω1, _root_.mul_one, map_one] at this
  have hmap : FB.toK F (MvPowerSeries.map (TWO.fO y.v y.hϖ y.hv) ω') = FB.toK F ω' := by
    ext mo
    simp only [MvPowerSeries.coeff_map, ← fO_comp_eq y, RingHom.comp_apply]
  have hsp : FB.toK F (f₀ * MvPowerSeries.map (TWO.fO y.v y.hϖ y.hv) ω' ^ k) =
      MvPowerSeries.C c⁻¹ * G t * FB.toK F ω' ^ k := by
    rw [← hf₀, ← hmap]
    exact (map_mul _ _ _).trans (congrArg _ (map_pow _ _ _))
  have hωω : FB.toK F ω' * FB.toK F ω = 1 := by
    rw [FB.toK, FB.toK, ← map_mul, hω', map_one]
  have hf : FB.toK F (f₀ * MvPowerSeries.map (TWO.fO y.v y.hϖ y.hv) ω' ^ k) * FB.toK F ω ^ k =
      MvPowerSeries.C c⁻¹ * G t := by
    rw [hsp, _root_.mul_assoc, ← mul_pow, hωω, one_pow, _root_.mul_one]
  refine ⟨s, π s, t, c, f₀ * MvPowerSeries.map (TWO.fO y.v y.hϖ y.hv) ω' ^ k, r₀, ⟨hs, (hπ _ _).2 rfl,
    ⟨pt, x, w, ζ, _, hpt, hx, hw, hζ, hfin, (hΦ _ _).2 rfl, hsm⟩, (hGm _ _).2 ?_⟩, hcv, ?_, ?_, ?_⟩
  · rw [hf, ← _root_.mul_assoc, ← map_mul, mul_inv_cancel₀ hcne, map_one, _root_.one_mul]
  · have hkR : (0 : ℝ) < k := by exact_mod_cast hk1
    have hpR : (0 : ℝ) < p := by exact_mod_cast hN
    rw [hr₀, add_comm (star a • χ₀)]
    push_cast
    rw [div_le_iff₀ (by positivity)]
    refine hχ1.trans (le_of_eq ?_)
    field_simp
  · rw [hsp]
    simp only [FB.toK, map_mul, map_pow, MvPowerSeries.constantCoeff_C, MvPowerSeries.constantCoeff_map, hω'1, map_one,
      one_pow, _root_.mul_one]
    rw [y.v.map_mul, hci, hV2', ← WithTop.coe_add, neg_add_cancel]; rfl
  · have hct : (c⁻¹ * ζ) • Φ (π s) = c⁻¹ • t := by rw [ht, smul_smul]
    refine hE' w hw s (π s) (Φ (π s)) (c⁻¹ * ζ) ((hπ _ _).2 rfl) ((hΦ _ _).2 rfl) (fun χ => ?_) h ω hh hω _ ?_
    · rw [hct]
      have := (hall χ).smul (s' := (c⁻¹ • t).s χ) hci.ge (fun _ => rfl)
      rwa [add_neg_cancel] at this
    · rw [hct, hf, hGm, G.map_smul c⁻¹ t, MvPowerSeries.smul_eq_C_mul]

end GlobalTheory.DepthBound
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsEigenColumn =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.JetHarmonics.GermExistsUniqueLinear =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.JetHarmonics.GermExistsUniqueLinear", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Jets.ColValMonomial\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.TwistBC\npublic import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.ExpansionBijectiveOverFields\npublic import Development.AbelianVarietyTheory.Proofs.FormalGroupCharts.IsNilpotentOfMemKerJetTruncR\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.UnifBaseChangeSt\npublic import Development.AbelianVarietyTheory.Proofs.FormalGroupCharts.TopLePreimageWchart\npublic import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.ExpansionOfIntegralSectionIsIntegral\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.TaylorDiscriminants.WickVanishing.GaugeTrans\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.PhiPowSt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.DVR ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.H1
open ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ (PS FB ev Dof pt)
open GlobalTheory GlobalTheory.FamGerm GlobalTheory.FieldBaseChange
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.FamGermExist

theorem exists_linear_extension {R K F : Type} [CommRing R] [IsDomain R] [Field K] [Field F] [Algebra R K]
    [IsFractionRing R K] [Algebra K F] {M N P : Type} [AddCommGroup M] [Module R M] [AddCommGroup N] [Module K N]
    [AddCommGroup P] [Module F P] (ρ : M →ₛₗ[algebraMap R K] N) (hρ : Function.Injective ρ)
    (a : N →ₛₗ[algebraMap K F] P) (ha : IsExtension a) {κ : Type} (g : M →ₗ[R] MvPowerSeries κ R) :
    ∃ Λ : P →ₗ[F] MvPowerSeries κ F, ∀ x, Λ (a (ρ x)) =
      MvPowerSeries.map ((algebraMap K F).comp (algebraMap R K)) (g x) := by
  classical
  let T₁ := Finsupp.linearCombination F fun x : M => a (ρ x)
  let T₂ := Finsupp.linearCombination F fun x : M =>
    MvPowerSeries.map ((algebraMap K F).comp (algebraMap R K)) (g x)
  have hk : LinearMap.ker T₁ ≤ LinearMap.ker T₂ := fun c hc => by
    rw [LinearMap.mem_ker, Finsupp.linearCombination_apply, Finsupp.sum] at hc ⊢
    ext mo
    refine (Module.forall_dual_apply_eq_zero_iff K _).1 fun ℓ => ?_
    obtain ⟨Λ, hΛ⟩ := ha.coord ℓ
    obtain ⟨r, hr⟩ := IsLocalization.exist_integer_multiples (nonZeroDivisors R) c.support (fun x => ℓ (c x))
    choose! m hm using hr
    have h₁ : ∑ x ∈ c.support, m x • x = 0 := hρ (by
      have := congrArg (fun z => (algebraMap R K r) • Λ z) hc

      simp only [map_sum, map_zero, smul_zero, Finset.smul_sum] at this

      rw [map_zero, ← this, map_sum]
      refine Finset.sum_congr rfl fun x hx => ?_
      rw [hΛ, map_smulₛₗ, hm x hx, smul_smul, Algebra.smul_def])
    have h₂ := congrArg (fun z => algebraMap R K (MvPowerSeries.coeff mo (g z))) h₁

    simp only [map_sum, map_smul, map_zero, smul_eq_mul, map_mul] at h₂
    have hr0 : algebraMap R K r ≠ 0 :=
      (map_ne_zero_iff _ (IsFractionRing.injective R K)).2 (nonZeroDivisors.coe_ne_zero r)
    refine mul_left_cancel₀ hr0 ?_

    rw [mul_zero, ← h₂, map_sum, map_sum, Finset.mul_sum]
    refine Finset.sum_congr rfl fun x hx => ?_
    rw [hm x hx, map_smul, MvPowerSeries.coeff_map, smul_eq_mul, RingHom.comp_apply, mul_comm (c x),
      ← Algebra.smul_def (A := F), map_smul, Algebra.smul_def (r : R) (ℓ (c x)), smul_eq_mul]
    ring
  obtain ⟨Λ, hΛ⟩ := LinearMap.exists_extend
    ((LinearMap.ker T₁).liftQ T₂ hk ∘ₗ T₁.quotKerEquivRange.symm.toLinearMap)
  refine ⟨Λ, fun x => ?_⟩
  have e := LinearMap.congr_fun hΛ ⟨T₁ (Finsupp.single x 1), LinearMap.mem_range_self _ _⟩
  simp only [LinearMap.comp_apply, Submodule.subtype_apply, LinearEquiv.coe_coe,
    LinearMap.quotKerEquivRange_symm_apply_image, Submodule.mkQ_apply, Submodule.liftQ_apply] at e
  simpa only [T₁, T₂, Finsupp.linearCombination_single, one_smul] using e

theorem exists_serHom (halg : JetSer.JetAlgSt) (hrep : JetSer.RepSt) (hser : JetSer.SerSt) (hex : JetSer.SerExSt)
    {R : Type} [CommRing R] {G : Over (Spec (CommRingCat.of R))} [GrpObj G] {d : ℕ} {x : JetSer.Fam G (Fin d)}
    (hx : Chart.IsUnivChart G d x) {U : G.left.Opens} (hU : ⊤ ≤ η[G].left ⁻¹ᵁ U) :
    ∃ τ : FnOver G.hom U →ₐ[R] PS R 1 d, ∀ f g, JetSer.IsSer1 x U f g ↔ g = τ f := by
  obtain ⟨h1, -, h3, -⟩ := hrep R G d x hx (Fin 1 × Fin d)
  obtain ⟨y, hy, -⟩ := h1 (pt R (n := 1) d 0) (TB.WickVanishing.gp_pt 0)
  have hc := (h3 _ y hy).1
  have e : ∀ r : PS R 1 d, ev (n := 1) ![pt R (n := 1) d 0] r = r := fun r => by
    have : (![pt R d 0] : Fin 1 → Germ.Pt R 1 d) = fun j => pt R d j := by
      funext j; fin_cases j; rfl
    rw [this]
    unfold ev
    exact congrFun MvPowerSeries.subst_self r
  have hs : ∀ f g, JetSer.IsSer1 x U f g → JetSer.HasSer (fun m => (y m).left) U f g := fun f g h => by
    have := h 1 _ y hy
    rwa [e] at this
  have ex := (hex R G d x hx).1 U hU
  have hm : ∀ m, ⊤ ≤ (y m).left ⁻¹ᵁ U := fun m => (hs _ _ (ex 0).exists.choose_spec m).1
  obtain ⟨⟨τ, hτ⟩, -⟩ := hser R (Fin 1 × Fin d) G.left (fun m => (y m).left)
    (fun m => by rw [← Over.comp_left, hc m]) U (hm 0)
  refine ⟨⟨τ, fun c => Eq.symm ((hτ _ _).1 fun m => ⟨hm m, ?_⟩)⟩, fun f g => ⟨fun h => (hτ f g).1 (hs f g h), ?_⟩⟩
  · obtain ⟨t, ht, -⟩ := (halg R (Fin 1 × Fin d)).1 m
    rw [← ht, AlgHom.commutes]
    have h₁ := (JetSer.fnVal_comp (y m).left G.hom U ⊤ le_top (hm m)
      ((Scheme.ΓSpecIso (CommRingCat.of R)).inv.hom c)).2
    refine Eq.trans (Eq.symm h₁) ?_
    rw [Over.w (y m)]
    have h₂ := JetSer.fnVal_specMap (algebraMap R (Chart.JetR R (Fin 1 × Fin d) m)) (𝟙 _) ⊤ le_top
      ((Scheme.ΓSpecIso (CommRingCat.of R)).inv.hom c)
    rw [Category.comp_id] at h₂
    refine h₂.trans (congrArg _ ?_)
    rw [JetSer.fnVal_eq_fnValHom _ _ le_top]
    simp [JetSer.fnValHom, Scheme.Hom.appLE]
  · rintro rfl
    obtain ⟨g, hg⟩ := (ex f).exists
    exact (hτ f g).1 (hs f g hg) ▸ hg

section Group

variable {R : Type} [CommRing R] [IsDomain R] {I : Ideal R} {D : DegData R I}
  {A : PolAV (Spec (CommRingCat.of (FractionRing R)))}
  {G : Over (Spec (CommRingCat.of R))} [GrpObj G] [IsCommMonObj G] (U : UnifPre I D A G)

theorem genericSec_injective (k : ℕ) : Function.Injective (genericSec U k) := by
  have := U.smooth
  intro a b h
  refine SecOver.ext _ _ fun j => ExpInt.generic_app_injective G _ (fn_ext fun y hy => ?_)
  have hy' := (wchart_eq (L := U.LG.L) (φ := fun _ : Fin 1 => 𝟙 G.left) (p := pullback.fst G.hom (jK R))
    (φ' := fun _ => pullback.fst G.hom (jK R)) (fun _ => (Category.comp_id _).symm) j).ge hy
  have e := congrArg (fun s : LB.Sec (LB.LinComb U.LG.L (K := Fin 1) (fun _ => pullback.fst G.hom (jK R))
    (fun _ => (k : ℤ))) => gs (𝟙 _) y _ (s.f j)) h
  exact (gs_res (𝟙 _) y _ hy' _).symm.trans (e.trans (gs_res (𝟙 _) y _ hy' _))

variable (F : Type) [Field F] [Algebra (FractionRing R) F]

theorem expandsG_sum {k n : ℕ} (c : Fin n → F) (σ : Fin n → IntSec U k) (f : Fin n → ∀ α, D.toPre.SecB k α)
    {s : Fam D.toPre F k} (h₁ : ∀ i e, U.ExpandsAt e k (σ i) (f i))
    (h₂ : ∀ α : D.toPre.X, GeneratorPullback.SecLin D.toPre.P.L (DegPre.famφ D.toPre F α) (DegPre.famε k) (s.s α)
      (D.toPre.famφB α) (DegPre.famε k) (fun i => f i α) (DegPre.prB D.toPre F).left
      (fun i => scal (fst (TF (R := R) F) D.toPre.P.A).left (c i))) :
    U.ExpandsG F k (∑ i, c i • extendSec U F k (genericSec U k (σ i)) : GroupSec U F k) s :=
  ⟨n, c, σ, f, h₁, (secLin_iff U.LG.isLB _ σ
    (UnifPre.gFK (G := G) F) c (fun i => extendSec U F k (genericSec U k (σ i))) (fun i y J hJ =>
      (sval_pullOver _ _ _ _ hJ).trans ((sval_pullOver _ _ _ _ hJ).trans
        (congrArg (fun q => sval (σ i) q y J) (Category.assoc _ _ _))))).2 rfl, h₂⟩

theorem exists_linear_section (hG : GlobalFnsSt) {k : ℕ} (hk : 1 ≤ k) (h : U.ExpBij k) :
    ∃ e : Fam D.toPre F k →ₗ[F] GroupSec U F k, ∀ v s, U.ExpandsG F k v s ↔ v = e s := by
  obtain ⟨-, h₂⟩ := expandsG_bijective U F hG hk h
  choose f hf using fun s => (h₂ s).exists
  have iff : ∀ v s, U.ExpandsG F k v s ↔ v = f s := fun v s =>
    ⟨fun h => (h₂ s).unique h (hf s), fun h => h ▸ hf s⟩
  have lin : ∀ (c : F) s s', f (c • s + s') = c • f s + f s' := fun c s s' =>
    ((iff _ _).1 (expandsG_lin U F k c (hf s) (hf s'))).symm
  have f0 : f 0 = 0 := by
    have := lin 1 0 0
    rw [one_smul, one_smul, add_zero] at this
    exact left_eq_add.1 this
  exact ⟨{ toFun := f
           map_add' := fun t t' => by simpa only [one_smul] using lin 1 t t'
           map_smul' := fun c t => by simpa only [add_zero, f0, RingHom.id_apply] using lin c t 0 }, iff⟩

theorem exists_linear_series {k : ℕ} {κ : Type} (g : IntSec U k →ₗ[R] MvPowerSeries κ R) :
    ∃ Λ : GroupSec U F k →ₗ[F] MvPowerSeries κ F, ∀ (n : ℕ) (c : Fin n → F) (σ : Fin n → IntSec U k),
      Λ (∑ i, c i • extendSec U F k (genericSec U k (σ i))) = ∑ i, MvPowerSeries.C (c i) *
        MvPowerSeries.map ((algebraMap (FractionRing R) F).comp (algebraMap R (FractionRing R))) (g (σ i)) := by
  have : TopologicalSpace.NoetherianSpace ((Over.pullback (jK R)).obj G).left := noetherianSpace_generic U
  obtain ⟨Λ, hΛ⟩ := exists_linear_extension (genericSec U k) (genericSec_injective U k)
    (extendSec U F k) (isExtension_pullOver (isPullback_groupBase F) U.LG.isLB _ _) g
  refine ⟨Λ, fun n c σ => ?_⟩

  rw [map_sum]
  exact Finset.sum_congr rfl fun i _ => by rw [map_smul, hΛ, MvPowerSeries.smul_eq_C_mul]

theorem exists_linear_germ (hG : GlobalFnsSt) {k : ℕ} (hk : 1 ≤ k) (h : U.ExpBij k) {κ : Type}
    (g : IntSec U k →ₗ[R] MvPowerSeries κ R) : ∃ gm : Fam D.toPre F k →ₗ[F] MvPowerSeries κ F,
    ∀ s f, (∃ (n : ℕ) (c : Fin n → F) (σ : Fin n → IntSec U k) (fi : Fin n → ∀ α, D.toPre.SecB k α),
      (∀ i e, U.ExpandsAt e k (σ i) (fi i)) ∧
      (∀ α : D.toPre.X, GeneratorPullback.SecLin D.toPre.P.L (DegPre.famφ D.toPre F α) (DegPre.famε k) (s.s α)
        (D.toPre.famφB α) (DegPre.famε k) (fun i => fi i α) (DegPre.prB D.toPre F).left
        (fun i => scal (fst (TF (R := R) F) D.toPre.P.A).left (c i))) ∧
      f = ∑ i, MvPowerSeries.C (c i) *
        MvPowerSeries.map ((algebraMap (FractionRing R) F).comp (algebraMap R (FractionRing R))) (g (σ i))) ↔
      f = gm s := by
  obtain ⟨e, he⟩ := exists_linear_section U F hG hk h
  obtain ⟨Λ, hΛ⟩ := exists_linear_series U F g
  refine ⟨Λ ∘ₗ e, fun s f => ⟨?_, ?_⟩⟩
  · rintro ⟨n, c, σ, fi, h₁, h₂, rfl⟩
    rw [LinearMap.comp_apply, ← (he _ s).1 (expandsG_sum U F c σ fi h₁ h₂), hΛ]
  · rintro rfl
    obtain ⟨n, c, σ, fi, h₁, -, h₂⟩ := (he _ s).2 rfl
    exact ⟨n, c, σ, fi, h₁, h₂,
      (congrArg Λ ((he _ s).1 (expandsG_sum U F c σ fi h₁ h₂)).symm).trans (hΛ n c σ)⟩

theorem exists_linear_quotient (halg : JetSer.JetAlgSt) (hrep : JetSer.RepSt) (hser : JetSer.SerSt)
    (hex : JetSer.SerExSt) {d : ℕ} {x : JetSer.Fam G (Fin d)} (hx : Chart.IsUnivChart G d x) {j : U.LG.L.ι}
    (hj : ⊤ ≤ η[G].left ⁻¹ᵁ U.LG.L.U j) (k : ℕ) {r : PS R 1 d} (hr : IsUnit r) :
    ∃ g : IntSec U k →ₗ[R] PS R 1 d, ∀ (σ : IntSec U k) f,
      (∃ S, JetSer.IsSer1 x _ (LB.Sec.f σ (fun _ => j)) S ∧ f * r = S) ↔ f = g σ := by
  obtain ⟨τ, hτ⟩ := exists_serHom halg hrep hser hex hx
    (U := LB.wchart U.LG.L (fun _ : Fin 1 => 𝟙 G.left) (fun _ => j))
    (GermExist.top_le_preimage_wchart _ _ j _ (fun _ => by rw [Category.comp_id]; exact hj))
  obtain ⟨u, rfl⟩ := hr
  refine ⟨LinearMap.mulRight R (u⁻¹).val ∘ₗ τ.toLinearMap ∘ₗ chartLin G.hom
    (LB.LinComb U.LG.L (K := Fin 1) (fun _ => 𝟙 G.left) (fun _ => (k : ℤ))) (fun _ => j), fun σ f => ⟨?_, ?_⟩⟩
  · rintro ⟨S, hS, e⟩
    exact (Units.eq_mul_inv_iff_mul_eq u).2 (e.trans ((hτ _ _).1 hS))
  · intro e
    exact ⟨_, (hτ _ _).2 rfl, (Units.eq_mul_inv_iff_mul_eq u).1 e⟩

end Group

theorem germ_exists_unique_linear : Laws → Laws4 → TwistBCSpanStatement → JetSer.JetAlgSt → JetSer.RepSt →
    JetSer.SerSt → JetSer.SerExSt → FamGerm.GermExSt := by
  intro hL _ _ halg hrep hser hex E _ _ _ H V _ _ _ F _ _ _ _ _ _ y q hq
  let _ := H.starRing
  have := y.t.act.hom H.w0
  obtain ⟨r, hr, ur⟩ := (hex V y.t.G y.d y.x y.hx).1
    (LB.wchart y.P.U.LG.L (JetSer.primφ (y.t.act.act H.w0)) (fun _ => y.j))
    (GermExist.top_le_preimage_wchart _ _ y.j _ (fun k => by
      rw [GermExist.unit_comp_primφ _ (IsMonHom.one_hom _) k]; exact y.hj)) (y.ρ.s (fun _ => y.j)).val
  obtain ⟨g, hg⟩ := exists_linear_quotient y.P.U.toUnifPre halg hrep hser hex y.hx y.hj q
    ((GermExist.isUnit_of_isSer1 hrep hser y.hx (Units.isUnit _) hr).pow q)
  obtain ⟨gm, h⟩ := exists_linear_germ y.P.U.toUnifPre F hL.globalFns hq (y.P.U.expand q hq) g
  refine ⟨gm, fun s f => Iff.trans ⟨?_, ?_⟩ (h s f)⟩
  · rintro ⟨n, c, σ, fi, g', r', h₁, h₂, hr', h₃, e⟩
    obtain rfl := ur r' hr'
    obtain rfl : g' = fun i => g (σ i) := funext fun i => (hg _ _).1 (h₃ i)
    exact ⟨n, c, σ, fi, h₁, h₂, e⟩
  · rintro ⟨n, c, σ, fi, h₁, h₂, e⟩
    exact ⟨n, c, σ, fi, fun i => g (σ i), r, h₁, h₂, hr, fun i => (hg _ _).2 rfl, e⟩

end GlobalTheory.FamGermExist
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.JetHarmonics.GermExistsUniqueLinear =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.JetHarmonics.SumProdConstMul =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.JetHarmonics.SumProdConstMul", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.TaylorDiscriminants.ChartChg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\npublic import Mathlib.CategoryTheory.Monoidal.Cartesian.Over\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Jets.ColValMonomial\nimport Development.AbelianVarietyTheory.Proofs.JetHarmonics.DerivationMemPowOfMemPowSucc\nimport Mathlib.Topology.Sheaves.Presheaf\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.QuadTie\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.NonzeroLocus\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.PhiPowSt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.DVR ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.H1
open GlobalTheory GlobalTheory.FamGerm
open ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ (PS FB ev Dof)
open ReciprocityTheory.ChartRestriction.G.TB (colM dAct)
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.DepthBound

theorem sum_prod_const_mul {k Λ : Type} [CommRing k] [Fintype Λ] {n : ℕ} (S : Finset (Fin n))
    (P : MvPolynomial (Λ × Fin n) k) (mu mu' : Fin n → (Λ →₀ ℕ) → k) (c : Fin n → k)
    (h : ∀ b ∈ S, ∀ mo, mu b mo = c b * mu' b mo) :
    ∑ mo ∈ P.support, P.coeff mo * ∏ b ∈ S, mu b (colM mo b) =
      (∏ b ∈ S, c b) * ∑ mo ∈ P.support, P.coeff mo * ∏ b ∈ S, mu' b (colM mo b) := by
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun mo _ => ?_
  rw [Finset.prod_congr rfl fun b hb => h b hb _, Finset.prod_mul_distrib]
  ring

end GlobalTheory.DepthBound
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.JetHarmonics.SumProdConstMul =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.JetHarmonics.ValueAtZeroLinearCombinationIntegralSections =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.JetHarmonics.ValueAtZeroLinearCombinationIntegralSections", "h": "module\n\nimport Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.SecLinIffComb\npublic import Development.AbelianVarietyTheory.Definitions.Jets.ColValMonomial\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.TwistBC\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.DivCalc\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.UnifBaseChangeSt\npublic import Development.AbelianVarietyTheory.Proofs.FormalGroupCharts.IsNilpotentOfMemKerJetTruncR\npublic import Development.AbelianVarietyTheory.Proofs.FormalGroupCharts.TopLePreimageWchart\npublic import Development.AbelianVarietyTheory.Proofs.FormalGroupCharts.ValSerGermFnVal\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsIntegralExpansionsOfValuationGe\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.ValueAtZeroOfSectionValue\npublic import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.ExpansionValueZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Rat\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.GenCalc\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.PullGenPf\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.LevelFrameOfLaws\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.DVR ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.H1
open GlobalTheory GlobalTheory.FamGerm
open ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ (PS ev)
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.GermValuation

theorem constantCoeff_of_isSer1 (halg : JetSer.JetAlgSt) (hrep : JetSer.RepSt) {R : Type} [CommRing R]
    {G : Over (Spec (CommRingCat.of R))} [GrpObj G] {d : ℕ} {x : JetSer.Fam G (Fin d)} (hx : Chart.IsUnivChart G d x)
    {U : G.left.Opens} (e : Spec (CommRingCat.of R) ⟶ G.left) (he : e = η[G].left) (hU : ⊤ ≤ e ⁻¹ᵁ U) {f : Γ(G.left, U)} {g : PS R 1 d}
    (h : JetSer.IsSer1 x U f g) : MvPowerSeries.constantCoeff g = JetSer.fnVal e U f := by
  have hr := (hrep R G d x hx (Fin 1 × Fin d)).2.2.2.1
  have hs := (h 1 _ _ hr 0).2
  have e₁ : (1 : Chart.sp (R₀ := R) (Chart.JetR R (Fin 1 × Fin d) 0) ⟶ G).left =
      Spec.map (CommRingCat.ofHom (algebraMap R (Chart.JetR R (Fin 1 × Fin d) 0))) ≫ e := by
    rw [he, Hom.one_def, Over.comp_left]
    congr 1
  beta_reduce at hs
  rw [e₁, JetSer.fnVal_specMap _ _ _ hU] at hs
  have e₂ := congrArg (Chart.jetAug R (Fin 1 × Fin d) 0) hs
  rw [AlgHom.commutes, ((halg R (Fin 1 × Fin d)).2.1 0 _).2] at e₂
  have e₃ : ev (n := 1) ![(0 : Fin d → PS R 1 d)] g = MvPowerSeries.C (MvPowerSeries.constantCoeff g) := by
    have := MvPowerSeries.subst_zero_eq_C_constantCoeff (τ := Fin 1 × Fin d) (S := R) (f := g)
    refine Eq.trans ?_ this
    unfold ev
    congr 1
    funext p
    obtain ⟨a, b⟩ := p
    fin_cases a
    rfl
  rw [e₃, MvPowerSeries.constantCoeff_C] at e₂
  exact e₂.symm

section Generic

variable {X Y Y₁ Z : Scheme.{0}} {L : LB X} {K K' : Type} [Fintype K] [Fintype K']

theorem sval_of_secLin {φ₁ : K' → (Y₁ ⟶ X)} {ε₁ : K' → ℤ} {s₁ : LB.Sec (LB.LinComb L φ₁ ε₁)} {φ : K → (Y ⟶ X)}
    {ε : K → ℤ} {n : ℕ} {s : Fin n → LB.Sec (LB.LinComb L φ ε)} {h : Y₁ ⟶ Y} {c : Fin n → Γ(Y₁, ⊤)}
    (H : GeneratorPullback.SecLin L φ₁ ε₁ s₁ φ ε s h c) (r : Z ⟶ Y₁) (z : Z) {J} (hJ : Good L z J) :
    sval s₁ r z J = ∑ i, gs r z ⊤ (c i) * sval (s i) (r ≫ h) z J := by
  apply _root_.GlobalTheory.PullExpField.secLin_val <;> assumption

end Generic

section Value

variable {V : Type} [CommRing V] [IsDomain V] [IsDiscreteValuationRing V]
  {D : DegData V (maximalIdeal V)} {F : Type} [Field F] [Algebra (FractionRing V) F]

theorem sectionValue_of_valueAtZero_stalk {k : ℕ} {α : D.toPre.X}
    {s : LB.Sec (LB.LinComb D.toPre.P.L (DegPre.famφ D.toPre F α) (DegPre.famε k))} {x : F} (h : Val0 D F k α s x)
    (z : (TF (R := V) F).left) {J} (hJ : Good D.toPre.P.L z J) :
    sval s (DegPre.zF D.toPre F).left z J = cst (V := F) (Z := (TF (R := V) F).left) (𝟙 _) z x *
      (val (Z := (TF (R := V) F).left) D.toPre.rigK (jFK (R := V) F) z J ^ k).val := by
  obtain ⟨τ, -, hc, he⟩ := h
  have T := val_corr hJ hc (𝟙 _)
  rw [val_pull hJ, val_pow, Category.id_comp,
    val_of τ (𝟙 _) z J (fun i => J ((DegPre.zF D.toPre F).left ≫ DegPre.famφ D.toPre F α i))
      (fun i => by rw [Category.id_comp])] at T
  rw [← T]
  have hy' := hJ.mem (DegPre.famφ D.toPre F α) (DegPre.zF D.toPre F).left
  have hy : z ∈ LB.wchart D.toPre.P.L (fun i => (DegPre.zF D.toPre F).left ≫ DegPre.famφ D.toPre F α i)
      (fun i => J ((DegPre.zF D.toPre F).left ≫ DegPre.famφ D.toPre F α i)) :=
    Set.mem_iInter.2 fun i => Set.mem_iInter.1 hy' i
  have e := congrArg (gs (𝟙 _) z _) (he (fun i => J ((DegPre.zF D.toPre F).left ≫ DegPre.famφ D.toPre F α i)))
  have l := (gs_res (𝟙 _) z _ hy _).symm.trans e
  refine Eq.trans ?_ (l.trans ((gs_mul (𝟙 _) z _ hy _ _).trans (congrArg₂ (· * ·) (gs_res (𝟙 _) z le_top hy _)
    (gs_unit (𝟙 _) z _ hy _))))
  refine Eq.trans ?_ (gs_pull (𝟙 _) (DegPre.zF D.toPre F).left z _ hy' _).symm
  rw [Category.id_comp]
  rfl

theorem valueAtZero_linearCombination_integral_sections {k : ℕ} {α : D.toPre.X}
    {s : LB.Sec (LB.LinComb D.toPre.P.L (DegPre.famφ D.toPre F α) (DegPre.famε k))} {l : ℕ} {c : Fin l → F}
    {g : Fin l → D.toPre.SecB k α}
    (hs : GeneratorPullback.SecLin D.toPre.P.L (DegPre.famφ D.toPre F α) (DegPre.famε k) s (D.toPre.famφB α) (DegPre.famε k) g
      (DegPre.prB D.toPre F).left (fun i => scal (fst (TF (R := V) F) D.toPre.P.A).left (c i)))
    (a : Fin l → V)
    (ha : ∀ i (Z : Scheme.{0}) (r : Z ⟶ Sp V) (z : Z) (J), Good D.toPre.P.L z J →
      sval (g i) (r ≫ eSec D.toPre.P.A) z J = cst r z (a i) * (val (L := D.toPre.P.L) D.toPre.rig r z J ^ k).val)
    (z : (TF (R := V) F).left) {J} (hJ : Good D.toPre.P.L z J) :
    sval s (DegPre.zF D.toPre F).left z J =
      cst (V := F) (Z := (TF (R := V) F).left) (𝟙 _) z (∑ i, c i * TWO.algVF (V := V) (F := F) (a i)) *
      (val (Z := (TF (R := V) F).left) D.toPre.rigK (jFK (R := V) F) z J ^ k).val := by
  have hz : (DegPre.zF D.toPre F).left ≫ (DegPre.prB D.toPre F).left =
      (jFK (R := V) F ≫ jK V) ≫ eSec D.toPre.P.A := GC.zF_prB D.toPre F
  have hK : (toUnit (TK V)).left = jK V := GC.toUnit_TK_left
  rw [sval_of_secLin hs _ z hJ, ExpansionValueZero.cst_sum, Finset.sum_mul]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [hz, ha i _ _ z J hJ, H1.cst_mul, _root_.mul_assoc]
  refine congrArg₂ (· * ·) ?_ (congrArg₂ (· * ·)
    ((ExpansionValueZero.cst_comp _ _ z (a i)).trans (H1.gs_spec _ z _)) (congrArg Units.val (congrArg (· ^ k) ?_)))
  · refine (gs_pull (DegPre.zF D.toPre F).left (fst (TF (R := V) F) D.toPre.P.A).left z ⊤ trivial _).trans ?_
    rw [GC.zF_fst]
    rfl
  · exact ((val_pull hJ D.toPre.rig (toUnit (TK V)).left (jFK (R := V) F)).trans (by rw [hK])).symm

theorem valueAtZero_unique_of_stalk_reading {k : ℕ} {α : D.toPre.X}
    {s : LB.Sec (LB.LinComb D.toPre.P.L (DegPre.famφ D.toPre F α) (DegPre.famε k))} {x x' : F} (h : Val0 D F k α s x)
    (h' : ∀ (z : (TF (R := V) F).left) (J), Good D.toPre.P.L z J →
      sval s (DegPre.zF D.toPre F).left z J = cst (V := F) (Z := (TF (R := V) F).left) (𝟙 _) z x' *
        (val (Z := (TF (R := V) F).left) D.toPre.rigK (jFK (R := V) F) z J ^ k).val) : x = x' :=
  H1.cst_ext fun z => by
    choose J hJ using fun ψ : (TF (R := V) F).left ⟶ D.toPre.P.A.left => Geo.Tor.exists_chart D.toPre.P.isLB (ψ z)
    exact (Units.mul_left_inj _).1 ((sectionValue_of_valueAtZero_stalk h z hJ).symm.trans (h' z J hJ))

end Value

theorem exists_unit_frame {R : Type} [CommRing R] {G : Over (Spec (CommRingCat.of R))} [GrpObj G] [IsCommMonObj G]
    (Lr : RigLB G) (j : Lr.L.ι) (e : Spec (CommRingCat.of R) ⟶ G.left) (he : e = eSec G) (hj : ⊤ ≤ e ⁻¹ᵁ Lr.L.U j) :
    ∃ u : Rˣ, ∀ (q : ℕ) (σ : H0 Lr.L q) (x : R), (∀ (Z : Scheme.{0}) (r : Z ⟶ Sp R) (z : Z) (J), Good Lr.L z J →
      sval σ (r ≫ eSec G) z J = cst r z x * (val (L := Lr.L) Lr.rig r z J ^ q).val) →
      JetSer.fnVal e (LB.wchart Lr.L (fun _ : Fin 1 => 𝟙 G.left) (fun _ => j)) (σ.f (fun _ => j)) = x * u.val ^ q := by
  subst he
  have h₁ : ⊤ ≤ (𝟙 (Spec (CommRingCat.of R))) ⁻¹ᵁ
      LB.wchart Lr.L (fun _ : PUnit.{1} => (eSec G : Spec (CommRingCat.of R) ⟶ G.left)) (fun _ => j) :=
    fun z hz => Set.mem_iInter.2 fun _ => hj hz
  have h₂ : ⊤ ≤ (eSec G : Spec (CommRingCat.of R) ⟶ G.left) ⁻¹ᵁ
      LB.wchart Lr.L (fun _ : Fin 1 => 𝟙 G.left) (fun _ => j) := fun z hz => Set.mem_iInter.2 fun _ => hj hz
  have hu : IsUnit (JetSer.fnVal (𝟙 (Spec (CommRingCat.of R))) _ (Lr.rig.s (fun _ => j)).val) :=
    (congrArg IsUnit (JetSer.fnVal_eq_fnValHom _ _ h₁ _)).mpr ((Units.isUnit _).map _)
  obtain ⟨u, hu⟩ := hu
  refine ⟨u, fun q σ x hx => H1.cst_ext fun z => ?_⟩
  obtain ⟨J, hJ, eJ⟩ := exists_good Lr.L Lr.isLB z
    (fun _ : PUnit.{1} => (eSec G : Spec (CommRingCat.of R) ⟶ G.left)) (fun _ => j) (fun _ _ _ => rfl)
    (fun _ => hj (show z ∈ (⊤ : (Spec (CommRingCat.of R)).Opens) from trivial))
  have eJ' : J (eSec G) = j := eJ PUnit.unit
  have H := hx _ (𝟙 _) z J hJ
  have hc : ∀ a : R, cst (𝟙 (Sp R)) z a = ((Spec (CommRingCat.of R)).presheaf.germ ⊤ z trivial).hom
      ((Scheme.ΓSpecIso (CommRingCat.of R)).inv.hom a) := fun a => gs_eq _ z ⊤ trivial _
  have a₁ : sval σ (𝟙 (Sp R) ≫ eSec G) z J = cst (𝟙 (Sp R)) z
      (JetSer.fnVal (A := R) (eSec G) (LB.wchart Lr.L (fun _ : Fin 1 => 𝟙 G.left) (fun _ => j)) (σ.f (fun _ => j))) := by
    rw [Category.id_comp, hc]
    exact (sval_of σ _ z J (fun _ => j) (fun _ => (congrArg J (Category.comp_id _)).trans eJ')).trans
      (JetSer.valSer_germ_fnVal _ _ h₂ z _).symm
  have a₂ : (val (L := Lr.L) Lr.rig (𝟙 (Sp R)) z J).val = cst (𝟙 (Sp R)) z u.val := by
    rw [hc, hu]
    refine Eq.trans ?_ (JetSer.valSer_germ_fnVal _ _ h₁ z _).symm
    exact (congrArg Units.val (val_of (L := Lr.L) Lr.rig _ z J (fun _ => j)
      (fun _ => (congrArg J (Category.id_comp _)).trans eJ'))).trans
      (gs_unit _ z _ (h₁ (show z ∈ (⊤ : (Spec (CommRingCat.of R)).Opens) from trivial)) _).symm
  refine a₁.symm.trans (H.trans ?_)
  rw [Units.val_pow_eq_pow_val, a₂, H1.cst_mul, hc u.val, hc (u.val ^ q), map_pow, map_pow]

theorem val_eq_of_approx {V : Type} [CommRing V] [IsDomain V] [IsDiscreteValuationRing V] {ϖ : V} (hϖ : Irreducible ϖ)
    {F : Type} [Field F] [Algebra (FractionRing V) F] {v : AddValuation F (WithTop ℚ)} (hv : ValOver ϖ F v)
    {X : Type} {l : ℕ} (c : Fin l → F) (x : Fin l → V) (a : Fin l → X → V)
    (h : ∀ i (e : ℕ), ∃ S : Finset X, ∀ T : Finset X, S ⊆ T → x i - ∑ α ∈ T, a i α ∈ maximalIdeal V ^ (e + 1))
    (χ : X) (r r' : ℚ) (hr : r < r') (hχ : v (∑ i, c i * TWO.algVF (V := V) (F := F) (a i χ)) = (r : ℚ))
    (ho : ∀ β, β ≠ χ → ((r' : ℚ) : WithTop ℚ) ≤ v (∑ i, c i * TWO.algVF (V := V) (F := F) (a i β))) :
    v (∑ i, c i * TWO.algVF (V := V) (F := F) (x i)) = (r : ℚ) := by
  classical
  have hb : ∀ i, ∃ n : ℕ, ((r : ℚ) : WithTop ℚ) < v (c i) + (((n : ℕ) : ℚ) : WithTop ℚ) := fun i => by
    induction v (c i) using WithTop.recTopCoe with
    | top => exact ⟨0, by simp⟩
    | coe t =>
      obtain ⟨n, hn⟩ := exists_nat_gt (r - t)
      exact ⟨n, by rw [← WithTop.coe_add, WithTop.coe_lt_coe]; linarith⟩
  choose n hn using hb
  choose S hS using fun i => h i (n i)
  let T : Finset X := insert χ (Finset.univ.biUnion S)
  have hT : ∀ i, S i ⊆ T := fun i =>
    (Finset.subset_biUnion_of_mem S (Finset.mem_univ i)).trans (Finset.subset_insert _ _)
  have e : ∑ i, c i * TWO.algVF (V := V) (F := F) (x i) = ∑ i, c i * TWO.algVF (V := V) (F := F) (a i χ) +
      (∑ β ∈ T.erase χ, ∑ i, c i * TWO.algVF (V := V) (F := F) (a i β) +
        ∑ i, c i * TWO.algVF (V := V) (F := F) (x i - ∑ α ∈ T, a i α)) := by
    rw [← _root_.add_assoc, Finset.add_sum_erase T (fun β => ∑ i, c i * TWO.algVF (V := V) (F := F) (a i β))
      (Finset.mem_insert_self _ _), Finset.sum_comm, ← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl fun i _ => ?_

    rw [← Finset.mul_sum, ← map_sum, map_sub]
    ring
  rw [e, AddValuation.map_add_eq_of_lt_left, hχ]
  rw [hχ]
  refine v.map_lt_add (v.map_lt_sum WithTop.coe_ne_top fun β hβ => ?_) (v.map_lt_sum WithTop.coe_ne_top fun i _ => ?_)
  · exact (WithTop.coe_lt_coe.2 hr).trans_le (ho β (Finset.ne_of_mem_erase hβ))
  · rw [AddValuation.map_mul]
    refine (hn i).trans_le (add_le_add le_rfl ?_)
    exact ExpansionValueZero.le_val_of_mem_pow hϖ hv (n i) (Ideal.pow_le_pow_right (Nat.le_succ _) (hS i T (hT i)))

theorem main : Laws → Laws4 → TwistBCSpanStatement → JetSer.JetAlgSt → JetSer.RepSt → JetSer.SerSt → JetSer.SerExSt →
    FamGerm.GermExSt → GermValSt := by
  intro hL _ _ halg hrep hser hex hG E _ _ _ H V _ _ _ F _ _ _ _ _ _ y q hq s f hf
  have hU : ⊤ ≤ η[y.t.G].left ⁻¹ᵁ LB.wchart y.P.U.LG.L (fun _ : Fin 1 => 𝟙 y.t.G.left) (fun _ => y.j) :=
    fun z hz => Set.mem_iInter.2 fun _ => y.hj hz
  obtain ⟨l, c, σ, fi, g, ρ, hE, hlin, hρ, hg, hfe⟩ := id hf
  have hρu : IsUnit ρ := GermExist.isUnit_of_isSer1 hrep hser y.hx (Units.isUnit _) hρ
  refine ⟨fun r hr mo => ?_, fun χ x r r' hx hvx hr ho => ?_⟩
  · obtain ⟨gm, hgm⟩ := hG E H V F y q hq
    obtain ⟨l', c', σ', fi', hc', hE', hlin'⟩ := exists_integral_expansions_of_vge hL V y.ϖ y.hϖ y.P.D _ y.t.G y.P.U
      y.Q y.hQ F y.v y.hv q hq s r hr
    choose S hS using fun i => ((hex V y.t.G y.d y.x y.hx).1 _ hU ((σ' i).f (fun _ => y.j))).exists
    obtain ⟨w, hw⟩ := hρu.pow q
    have hf' : y.Germ q s (∑ i, MvPowerSeries.C (c' i) *
        MvPowerSeries.map (TWO.algVF (V := V) (F := F)) (S i * (w⁻¹).val)) :=
      ⟨l', c', σ', fi', fun i => S i * (w⁻¹).val, ρ, hE', hlin', hρ,
        fun i => ⟨S i, hS i, by rw [← hw, Units.inv_mul_cancel_right]⟩, rfl⟩

    rw [(hgm s f).1 hf, ← (hgm s _).1 hf', map_sum]
    refine y.v.map_le_sum fun i _ => ?_
    rw [MvPowerSeries.coeff_C_mul, MvPowerSeries.coeff_map, AddValuation.map_mul]
    exact (hc' i).trans (le_add_of_nonneg_right (GC.v_alg_nonneg y.hϖ y.hv _))
  · choose a ha using fun i α => ExpansionValueZero.exists_value y.P.D.toPre q α (fi i α)
    choose x₀ hx₀ using fun i => ExpansionValueZero.exists_coeff (A := V) y.P.U.LG.isLB (σ i) (eSec y.t.G)
      (GeneratorPullback.powGen y.P.U.LG.L _ _ y.P.U.LG.rig q) (powGen_isGen _ _ _ _ y.P.U.LG.rigGen q) (fun W _ f => by simp)
    have hx₁ : ∀ i (Z : Scheme.{0}) (r : Z ⟶ Sp V) (z : Z) (J), Good y.P.U.LG.L z J →
        sval (σ i) (r ≫ eSec y.t.G) z J = cst r z (x₀ i) * (val (L := y.P.U.LG.L) y.P.U.LG.rig r z J ^ q).val :=
      fun i Z r z J hJ => (hx₀ i Z r z J hJ).trans (by rw [val_pow])
    obtain ⟨u, hu⟩ := exists_unit_frame y.P.U.LG y.j _ rfl y.hj
    obtain ⟨w, hw⟩ := hρu.map (MvPowerSeries.constantCoeff (R := V))
    have hgi : ∀ i, MvPowerSeries.constantCoeff (g i) = x₀ i * ((u * w⁻¹) ^ q).val := fun i => by
      obtain ⟨S, hS, hgS⟩ := hg i
      have e₁ := (constantCoeff_of_isSer1 halg hrep y.hx _ rfl hU hS).trans (hu q (σ i) (x₀ i) (hx₁ i))
      rw [← hgS, map_mul, map_pow, ← hw, ← Units.val_pow_eq_pow_val, ← Units.val_pow_eq_pow_val] at e₁
      rw [mul_pow, Units.val_mul, ← _root_.mul_assoc, ← e₁, inv_pow, Units.mul_inv_cancel_right]
    have hv0 := fun α => valueAtZero_linearCombination_integral_sections (hlin α) (fun i => a i α) (fun i => ha i α)
    have key := val_eq_of_approx y.hϖ y.hv c x₀ a
      (fun i e => ExpansionValueZero.value_sub_sum_mem y.P.U.toUnifPre e q (σ i) (fi i) (hE i e) (x₀ i) (hx₁ i)
        (a i) (ha i)) χ r r' hr ((congrArg y.v (valueAtZero_unique_of_stalk_reading hx (hv0 χ))).symm.trans hvx)
      (fun β hβ => GC.valuation_ge_at_zero y.hϖ y.hv (ho β hβ) (PhiValue.valueAtZero_of_sectionValue _ F q β _ _ (hv0 β)))
    have e : MvPowerSeries.constantCoeff f = (∑ i, c i * TWO.algVF (V := V) (F := F) (x₀ i)) *
        TWO.algVF (V := V) (F := F) ((u * w⁻¹) ^ q).val := by

      rw [hfe, map_sum, Finset.sum_mul]
      refine Finset.sum_congr rfl fun i _ => ?_
      rw [map_mul, MvPowerSeries.constantCoeff_C, MvPowerSeries.constantCoeff_map, hgi, map_mul, _root_.mul_assoc]
    rw [e, AddValuation.map_mul, key]
    exact (congrArg _ (GC.v_alg_unit y.hv _)).trans (add_zero _)

end GlobalTheory.GermValuation
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.JetHarmonics.ValueAtZeroLinearCombinationIntegralSections =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.JetHarmonics.DepthBoundFromCharactersPointDatum =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.JetHarmonics.DepthBoundFromCharactersPointDatum", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Jets.ColValMonomial\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.TwistBCPf\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.UnifBaseChangeSt\npublic import Development.AbelianVarietyTheory.Proofs.FormalGroupCharts.RosIdSt\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.ColValueMulOfDisjointColumns\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.DerivativeCongruenceGermIntegralTranslateStatement\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsEigenColumn\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsGenOfTop\nimport Development.AbelianVarietyTheory.Proofs.JetHarmonics.ExistsValEqOfNonneg\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.GermExistsUniqueLinear\nimport Development.AbelianVarietyTheory.Proofs.JetHarmonics.PowerSeriesExpIntegralCanonGaugeAdditiveSecond\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.SumProdConstMul\nimport Development.AbelianVarietyTheory.Proofs.JetHarmonics.SurjectiveAppTop\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.ValLeOfMemSpan\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.ValueAtZeroLinearCombinationIntegralSections\npublic import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.ExistsBasisOfCoord\npublic import Development.AbelianVarietyTheory.Proofs.RingsOfIntegers.ValuationThetaRatioEqBilinear\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Rat\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.DVR ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.H1
open ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ (PS FB ev Dof)
open ReciprocityTheory.ChartRestriction.G.TB (colM dAct)
open GlobalTheory GlobalTheory.FamGerm GlobalTheory.DepthBound
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.DepthFromChars

theorem depth_bound_of_chars : Laws → Laws2 → Laws4 → TwistBaseChangeStatement → (∀ (p : ℕ) [Fact p.Prime], ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (V : Type) [CommRing V] [IsDomain V] [IsDiscreteValuationRing V] (F : Type) [Field F] [IsAlgClosed F] [CharZero F] [Algebra (FractionRing V) F] [Algebra V F] [IsScalarTower V (FractionRing V) F] (y : FamGerm.Pt1 E H V F), letI := H.starRing; IsAdicComplete (Ideal.span {(p : TWO.Ov y.v)}) (TWO.Ov y.v) → ¬ IsUnit (p : TWO.Ov y.v) → ∀ a : 𝓞 E, a * star a = (p : 𝓞 E) → (∃ u u' : 𝓞 E, u * a + u' * star a = 1) → ∀ (T : Type) [Fintype T] [DecidableEq T] (rk : T → ℕ) (τ : T → 𝓞 E →+* TWO.Ov y.v) (e : (Σ t, Fin (rk t)) → Fin y.d → TWO.Ov y.v), (∀ (c : 𝓞 E) l, (dAct F y.B c).mulVec (fun i => (e l i : F)) = (τ l.1 c : F) • fun i => (e l i : F)) → (∀ t, τ t a ∈ Ideal.span {(p : TWO.Ov y.v)}) → (∀ t, ∃ lam : Fin (rk t) → Fin y.d → TWO.Ov y.v, ∀ i i', ∑ s, lam i s * e ⟨t, i'⟩ s = if i = i' then 1 else 0) → (∃ ε : T → 𝓞 E, ∀ t t', τ t' (ε t) - (if t = t' then 1 else 0) ∈ Ideal.span {(p : TWO.Ov y.v)}) → ∀ c : TWO.Ov y.v, (p - 1) • y.v (c : F) = y.v (p : F) → ∀ (n : ℕ) (col : ∀ t, Fin (rk t) → Fin n), (∀ t, Function.Injective (col t)) → ∃ yy : (Σ t, Fin (rk t)) × Fin n → TWO.Ov y.v, (∀ b, y.CharAt a p e (fun l => yy (l, b))) ∧ ∀ t (s : Fin (rk t)), y.v (((Matrix.of fun a i : Fin (s.val + 1) => yy (⟨t, Fin.castLE s.isLt a⟩, col t (Fin.castLE s.isLt i))).det : TWO.Ov y.v) : F) ≤ (s.val + 1) • y.v (c : F)) → ∀ (p : ℕ) [Fact p.Prime], ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (V : Type) [CommRing V] [IsDomain V] [IsDiscreteValuationRing V] (F : Type) [Field F] [IsAlgClosed F] [CharZero F] [Algebra (FractionRing V) F] [Algebra V F] [IsScalarTower V (FractionRing V) F] (y : FamGerm.Pt1 E H V F), letI := H.starRing; IsAdicComplete (Ideal.span {(p : TWO.Ov y.v)}) (TWO.Ov y.v) → ¬ IsUnit (p : TWO.Ov y.v) → ∀ (Dw : Datum H) (_I : TateIso Dw F (TFK (R := V) F ⟶ y.P.A.A) (fun a g => g ≫ y.P.oA.act a) (fun n g g' c => WeilIs y.P.A.A y.P.A.L n g g' (unitOn c))), ∀ (r : ℕ) (b : Module.Basis (Fin r) ℤ y.P.D.toPre.X) (Cc M₀ : ℝ), y.Red r b Cc M₀ → ∀ (a : 𝓞 E) (k : ℕ), a * star a = (p : 𝓞 E) → (∃ u u' : 𝓞 E, u * a + u' * star a = 1) → Nat.Coprime p k → ∀ (T : Type) [Fintype T] [DecidableEq T] (rk : T → ℕ) (τ : T → 𝓞 E →+* TWO.Ov y.v) (e : (Σ t, Fin (rk t)) → Fin y.d → TWO.Ov y.v), (∀ (c : 𝓞 E) l, (dAct F y.B c).mulVec (fun i => (e l i : F)) = (τ l.1 c : F) • fun i => (e l i : F)) → ∀ (isV : T → Prop) [DecidablePred isV], (∀ t, isV t → τ t a ∈ Ideal.span {(p : TWO.Ov y.v)}) → (∀ t, ¬ isV t → IsUnit (τ t a)) → (∃ lam : (Σ t, Fin (rk t)) → Fin y.d → TWO.Ov y.v, ∀ l l', ∑ s, lam l s * e l' s = if l = l' then 1 else 0) → (∃ ε : T → 𝓞 E, ∀ t t', τ t' (ε t) - (if t = t' then 1 else 0) ∈ Ideal.span {(p : TWO.Ov y.v)}) → ∀ (n : ℕ) (S : Finset (Fin n)) (col : ∀ t, Fin (rk t) → Fin n) (m : ∀ t, Fin (rk t) → ℕ), (∀ t, Function.Injective (col t)) → (∀ t i, col t i ∈ S ↔ isV t) → ∀ D : ℕ, D = ∑ t, ∑ s : Fin (rk t), m t s * (s.val + 1) → D < p - 1 → 4 * D + 4 ≤ k → (D : ℝ) * M₀ < k → ∀ h : PS F 2 y.d, y.B.IsCanonGauge F h → ∀ ep : ℚ, y.v (p : F) = (ep : ℚ) → ∃ (s : Fin n → Fam y.P.D.toPre F k) (s' t : Fin n → Fam y.P.D.toPre F (k * p)) (f : Fin n → PS F 1 y.d) (gm : ℚ), (∀ b, NuGe y.P.D y.Q F y.v (k) (s b) 0 ∧ PullAl y.P.D F y.P.oD a k p (s b) (s' b) ∧ y.Transl (k * p) (star a) (s' b) (t b) ∧ y.Germ (k * p) (t b) (f b)) ∧ y.v (y.colVal h (k * p) (fun l i => (e l i : F)) (FamGerm.minorsP F col m) f) = (gm : ℚ) ∧ (gm : ℝ) ≤ (D : ℝ) * ep / (p - 1) + S.card * r * Cc / (4 * k) + (D : ℝ) ^ 2 * Cc / k := by
  intro hL _ hL4 hTB hC p hp E _ _ _ H V _ _ _ F _ _ _ _ _ _ y hcomp hpu Dw I r bs Cc M₀ hred a k
    haa hcop hpk T _ _ rk τ e he isV _ hV hU ⟨lam, hlam⟩ ⟨ε, hε⟩ n S col m hcol hS D hD hDp hk hM h hh ep hep
  have hTW : TwistBCSpanStatement := twistBCSpan_of hTB
  have hVR : TWM.VRatioGtStatement := GlobalTheory.RatioVal.main
  have hUU : UUStatement := GlobalTheory.UnitBallFree.main hL.globalFns hTB
  obtain ⟨jA, jR, -, -, -, jS, jX, -, -, jB⟩ := GlobalTheory.JetRoad.jetRoad
  have hG : FamGerm.GermExSt := GlobalTheory.FamGermExist.germ_exists_unique_linear hL hL4 hTW jA jR jS jX
  have hGV : GermValSt := GlobalTheory.GermValuation.main hL hL4 hTW jA jR jS jX hG
  have hJ : JetsSt := GlobalTheory.GermJets.jets hL hL4 hTW jA jR jS jX hG
  have hP : PullGermSt := GlobalTheory.PullGerm.germ_pullback hL hL4 hTW jA jR jS jX GlobalTheory.JetRoad.rosIdSt hG
  have hE : EigGermSt := GlobalTheory.T.derivative_congruence_germ_integral_translate hL hL4 hTW jA jR jS jX GlobalTheory.JetRoad.rosIdSt jB hG
  classical
  let _ := H.starRing
  have hp' : p.Prime := hp.out
  have hp2 : 2 ≤ p := hp'.two_le
  have hpF : ((p : TWO.Ov y.v) : F) = p := map_natCast (TWO.Ov y.v).subtype p
  have hep0 : 0 < ep := by
    by_contra hle
    refine hpu (Ideal.span_singleton_eq_top.1 ((Ideal.eq_top_iff_one _).2 (mem_span_of_val_le y.v _ 1 ?_ ?_)))
    · rw [hpF]; exact_mod_cast hp'.ne_zero
    · rw [hpF, hep, OneMemClass.coe_one, y.v.map_one]
      exact_mod_cast not_lt.1 hle
  have hp1 : (0 : ℚ) < (p : ℚ) - 1 := by
    have : (2 : ℚ) ≤ p := by exact_mod_cast hp2
    linarith
  set θ : ℚ := ep / ((p : ℚ) - 1) with hθ
  have hθ0 : 0 < θ := div_pos hep0 hp1
  obtain ⟨c, hc⟩ := ExactTerm.exists_val_eq_of_nonneg y.hv hθ0.le
  obtain ⟨ω, hω1, hω⟩ := FramePull.exists_integral_frame_pullback V y.d (𝓞 E) F y.B h hh H.w0 a p haa

  let m₁ : ∀ t, Fin (rk t) → ℕ := fun t s => if isV t then m t s else 0
  let m₂ : ∀ t, Fin (rk t) → ℕ := fun t s => if isV t then 0 else m t s
  have hm : m = fun t s => m₁ t s + m₂ t s := by
    funext t s
    by_cases ht : isV t <;> simp [m₁, m₂, ht]
  have hm₁ : ∀ t, ¬ isV t → ∀ s, m₁ t s = 0 := fun t ht s => if_neg ht
  have hm₂ : ∀ t, ¬ ¬ isV t → ∀ s, m₂ t s = 0 := fun t ht s => if_pos (not_not.1 ht)
  have hDD : ∑ t, ∑ s : Fin (rk t), m₁ t s * (s.val + 1) + ∑ t, ∑ s : Fin (rk t), m₂ t s * (s.val + 1) = D := by
    rw [hD, hm]
    simp only [add_mul, Finset.sum_add_distrib]

  obtain ⟨y₁, hy₁, hy₂⟩ := hC p E H V F y hcomp hpu a haa hcop {t // isV t} (fun t => rk t.1) (fun t => τ t.1)
    (fun l => e ⟨l.1.1, l.2⟩) (fun c l => he c ⟨l.1.1, l.2⟩) (fun t => hV t.1 t.2)
    (fun t => ⟨fun i => lam ⟨t.1, i⟩, fun i i' => by simpa using hlam ⟨t.1, i⟩ ⟨t.1, i'⟩⟩)
    ⟨fun t => ε t.1, fun t t' => by simpa only [Subtype.ext_iff] using hε t.1 t'.1⟩
    ⟨c, by rw [TWO.mem_Ov, hc]; exact_mod_cast hθ0.le⟩
    (by
      change (p - 1) • y.v c = _
      rw [hc, hep, ← WithTop.coe_nsmul, nsmul_eq_mul, Nat.cast_sub (by omega), Nat.cast_one, hθ,
        mul_div_cancel₀ _ hp1.ne'])
    n (fun t => col t.1) (fun t => hcol t.1)
  let yy : (Σ t, Fin (rk t)) × Fin n → TWO.Ov y.v := fun x =>
    if hx : isV x.1.1 then y₁ (⟨⟨x.1.1, hx⟩, x.1.2⟩, x.2) else 0
  choose s₁ s₁' t₁ c₁ f₁ r₁ h₁ hc₁ hr₁ hf₁ hf₁' using fun b => exists_eigen_column y hL hTW hVR hUU hG hGV hE Dw I r bs
    Cc M₀ hred a p k hp' (by omega) haa hcop hpk (Σ t : {t // isV t}, Fin (rk t.1)) (fun l => e ⟨l.1.1, l.2⟩)
    (fun l => y₁ (l, b)) (fun l => τ l.1.1 a) (fun l => hV _ l.1.2) (fun l => he a ⟨l.1.1, l.2⟩) (hy₁ b) h hh ω hω1 hω
  have hD₁ : ((∑ t, ∑ s : Fin (rk t), m₁ t s * (s.val + 1) : ℕ) : ℚ) * θ ≤ D * θ :=
    mul_le_mul_of_nonneg_right (by exact_mod_cast (by omega)) hθ0.le
  have hF₁ := val_eigen_columns y.v _ (fO_comp_eq y) y.B h hh H.w0 a p k hp'.ne_zero hpu hcop ω hω1 hω τ e he isV hV
    S col m₁ (fun t i ht => (hS t i).2 ht) hm₁ yy f₁ (fun b _ => hf₁ b)
    (fun b _ l hl mo => by
      simp only [yy, dif_pos hl]
      exact hf₁' b ⟨⟨l.1, hl⟩, l.2⟩ mo)
    θ ep hep
    (fun t ht s => by
      simp only [yy, dif_pos ht]
      refine (hy₂ ⟨t, ht⟩ s).trans (le_of_eq ?_)
      change (s.val + 1) • y.v c = _
      rw [hc, ← WithTop.coe_nsmul, nsmul_eq_mul, Nat.cast_succ])
    (hD₁.trans_lt (by
      have : (D : ℚ) < (p : ℚ) - 1 := by
        have h1 : D + 1 < p := by omega
        have h2 : (D : ℚ) + 1 < p := by exact_mod_cast h1
        linarith
      calc (D : ℚ) * θ < ((p : ℚ) - 1) * θ := mul_lt_mul_of_pos_right this hθ0
        _ = ep := by rw [hθ, mul_div_cancel₀ _ hp1.ne']))

  obtain ⟨g, nb, hg, hnb, hF₂⟩ := val_unit_columns y.v y.B h hh H.w0 a p k hp' hpu ω hω τ e (he a) (fun t => ¬ isV t)
    hU lam hlam Sᶜ col m₂ hcol (fun t i ht => Finset.mem_compl.2 fun h' => ht ((hS t i).1 h')) hm₂ (by omega)
  have hnbD : ∑ b, nb b ≤ D := by omega
  have hnbD' : ∀ b, nb b ≤ D := fun b =>
    (Finset.single_le_sum (f := nb) (fun _ _ => Nat.zero_le _) (Finset.mem_univ b)).trans hnbD
  choose s₂ s₂' t₂ c₂ f₂ r₂ h₂ hc₂ hr₂ hf₂ using fun b => exists_jet_column y hL hG hJ hP r bs Cc M₀ hred a p k (nb b)
    (by omega) haa (by have := hnbD' b; omega)
    (lt_of_le_of_lt (mul_le_mul_of_nonneg_right (by exact_mod_cast hnbD' b) hred.2.1) hM) h hh ω hω (g b) (hg b)
  have hF₂' := hF₂ f₂ fun b _ => hf₂ b
  let f : Fin n → PS F 1 y.d := fun b =>
    if b ∈ S then MvPowerSeries.C (c₁ b) * (FB.toK F (f₁ b) * FB.toK F ω ^ k)
    else MvPowerSeries.C (c₂ b) * (ev (n := 1) ![y.B.actK F a] (f₂ b) * FB.toK F ω ^ k)
  have hval : y.v (y.colVal h (k * p) (fun l i => (e l i : F)) (minorsP F col m) f) ≤
      ((∑ b ∈ S, r₁ b + D * θ + ∑ b ∈ Sᶜ, r₂ b : ℚ) : WithTop ℚ) := by
    have e₁ := colValue_mul_of_disjoint_columns F _ n (fun b mo => y.B.nabVal F h H.w0 (k * p) (f b)
      (fun l i => (e l i : F)) (MvPolynomial.monomial mo 1)) S (minorsP F col m₁) (minorsP F col m₂)
      (fun mo hmo l b hb => by
        obtain ⟨hz, i, rfl⟩ := minorMonomial_support col m₁ isV hm₁ hmo l b hb
        exact (hS _ i).2 hz)
      (fun mo hmo l b hb => by
        obtain ⟨hz, i, rfl⟩ := minorMonomial_support col m₂ (fun t => ¬ isV t) hm₂ hmo l b hb
        exact fun h' => hz ((hS _ i).1 h'))
    rw [← minorMonomial_add, ← hm, sum_prod_const_mul S _ (fun b mo => y.B.nabVal F h H.w0 (k * p) (f b)
        (fun l i => (e l i : F)) (MvPolynomial.monomial mo 1)) (fun b mo => y.B.nabVal F h H.w0 (k * p)
        (FB.toK F (f₁ b) * FB.toK F ω ^ k) (fun l i => (e l i : F)) (MvPolynomial.monomial mo 1)) c₁
        (fun b hb mo => by simp only [f, if_pos hb]; exact nabVal_C_mul _ _ _ _ _ _ _ _),
      sum_prod_const_mul Sᶜ _ (fun b mo => y.B.nabVal F h H.w0 (k * p) (f b)
        (fun l i => (e l i : F)) (MvPolynomial.monomial mo 1)) (fun b mo => y.B.nabVal F h H.w0 (k * p)
        (ev (n := 1) ![y.B.actK F a] (f₂ b) * FB.toK F ω ^ k) (fun l i => (e l i : F)) (MvPolynomial.monomial mo 1)) c₂
        (fun b hb mo => by simp only [f, if_neg (Finset.mem_compl.1 hb)]; exact nabVal_C_mul _ _ _ _ _ _ _ _)] at e₁
    refine (congrArg y.v e₁).trans_le ?_
    rw [y.v.map_mul, y.v.map_mul, y.v.map_mul, hF₂', add_zero, WithTop.coe_add, WithTop.coe_add]
    exact add_le_add (add_le_add (val_prod_le y.v _ _ _ fun b _ => (hc₁ b).le)
      (hF₁.trans (WithTop.coe_le_coe.2 hD₁))) (val_prod_le y.v _ _ _ fun b _ => (hc₂ b).le)
  obtain ⟨gm, hgm⟩ := WithTop.ne_top_iff_exists.1 (ne_top_of_le_ne_top WithTop.coe_ne_top hval)
  refine ⟨fun b => if b ∈ S then s₁ b else s₂ b, fun b => if b ∈ S then s₁' b else s₂' b,
    fun b => if b ∈ S then t₁ b else t₂ b, f, gm, fun b => ?_, hgm.symm, ?_⟩
  · by_cases hb : b ∈ S
    · simp only [f, if_pos hb]; exact h₁ b
    · simp only [f, if_neg hb]; exact h₂ b
  · rw [← hgm, WithTop.coe_le_coe] at hval
    have h1 : (gm : ℝ) ≤ ∑ b ∈ S, (r₁ b : ℝ) + D * (ep / (p - 1)) + ∑ b ∈ Sᶜ, (r₂ b : ℝ) := by
      rw [hθ] at hval
      exact_mod_cast hval
    have h2 : ∑ b ∈ S, (r₁ b : ℝ) ≤ S.card * r * Cc / (4 * k) := by
      refine (Finset.sum_le_card_nsmul _ _ _ fun b _ => hr₁ b).trans (le_of_eq ?_)
      rw [nsmul_eq_mul]; ring
    have hCk : 0 ≤ Cc / k := div_nonneg hred.1 (Nat.cast_nonneg _)
    have h3 : ∑ b ∈ Sᶜ, (r₂ b : ℝ) ≤ (D : ℝ) ^ 2 * Cc / k := by
      have h4 : ∑ b ∈ Sᶜ, nb b ^ 2 ≤ D ^ 2 :=
        calc ∑ b ∈ Sᶜ, nb b ^ 2 ≤ ∑ b, nb b ^ 2 := Finset.sum_le_sum_of_subset (Finset.subset_univ _)
          _ ≤ ∑ b, nb b * D := Finset.sum_le_sum fun b _ => by
            rw [sq]; exact Nat.mul_le_mul_left _ (hnbD' b)
          _ ≤ D ^ 2 := by rw [← Finset.sum_mul, sq]; exact Nat.mul_le_mul_right _ hnbD
      refine (Finset.sum_le_sum fun b _ => hr₂ b).trans ?_
      simp only [mul_div_assoc]
      rw [← Finset.sum_mul]
      exact mul_le_mul_of_nonneg_right (by exact_mod_cast h4) hCk
    rw [mul_div_assoc (D : ℝ) (ep : ℝ)]
    linarith

end GlobalTheory.DepthFromChars
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.JetHarmonics.DepthBoundFromCharactersPointDatum =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.JetHarmonics.DepthBoundFromCharactersPointDatumStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.JetHarmonics.DepthBoundFromCharactersPointDatumStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Jets.ColValMonomial\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.DiscreteValuationRings.TwistBCPf\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.UnifBaseChangeSt\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.DepthBoundFromCharactersPointDatum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.DVR ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.H1
open ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ (PS FB ev Dof)
open ReciprocityTheory.ChartRestriction.G.TB (colM dAct)
open GlobalTheory
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.JetHarmonics.DepthBoundFromCharactersPointDatumStatement =====
