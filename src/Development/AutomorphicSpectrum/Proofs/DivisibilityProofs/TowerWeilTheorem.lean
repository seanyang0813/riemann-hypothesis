module

public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE
public import Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic
public import Development.WeilBound.CoreStatements.FlagImmersions.MapProdLinear
public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.HeckeSectionsIsotropicCommutatorPairingPower
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagDegreeWeightFormula
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterNamed
public import Development.WeilBound.CoreStatements.HodgeTatePoints.GfForms
public import Development.WeilBound.CoreStatements.FlagImmersions.IntersectionConstantMetricLine
public import Development.WeilBound.CoreStatements.FlagImmersions.PointsIntegralSectionSnoc
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PDivCycleMul
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterRedF
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ArithmeticHilbertSamuelLowerBound
public import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PLiftBirationalAmple
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovGeometry.ExistsPrimeFiltrationOfIsMultiHomogIdeal
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovGeometry.IsMultiHomogXpow
public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Birational
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.LogIntegralMultilinear
public import Mathlib.Analysis.InnerProductSpace.Calculus
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MultihomogeneousIdeals.ExistsUniqueStatement
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovGeometry.KleimanNefness.KleimanSt
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ArithIntersectionDivisorSupport
public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Proportional
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.CurveDegreeLinearNefCone
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RationalWeightIntegralCoeffs
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RootModelLogIntegralFormula
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RootModelArithIntersectionFormula
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RootModelCurveDegreeNef
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RootModelPointHeightDegree
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RootModelSemipositiveConj
public import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.Tactic.Linter.Style
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.IsSemipositiveOn
import Std.Tactic.BVDecide.Normalize.Prop
import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PSectionBounded
import Mathlib.Tactic.Linter.HaveILetI
import Development.WeilBound.CoreStatements.HomogeneousNonvanishing.RCombine
import Development.WeilBound.CoreStatements.FlagImmersions.CombLineSmoothConjInvariant

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.FlagImmersions.LinearRootPowerLipschitz, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ArithFunctionalLipschitzWeights, Development.WeilBound.CoreStatements.FlagImmersions.ContinuousBoundWallExtension, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ContinuousWallBoundExtend, Development.WeilBound.CoreStatements.FlagImmersions.FlagDegLeGap, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagDegreeLeGap, Development.WeilBound.CoreStatements.FlagImmersions.PerturbedWeightWallBounds, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PerturbedWeightGapBounds, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ArithIntersectionSectionRecursion, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ChartLatticePowerSection, Development.WeilBound.CoreStatements.FlagImmersions.ExistsSmooth, Development.WeilBound.CoreStatements.FlagImmersions.IntersectionSectionLogIntegral, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ArithIntersectionSectionBound, Development.WeilBound.CoreStatements.FlagImmersions.TowerRationalWeightBound, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerComponentHeightBound, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ZhangLowerBoundRational, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ZhangUpperBoundDensePoints, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerGapHeightUniformBound, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerWeilTheorem

-- ===== clump member: Development.WeilBound.CoreStatements.FlagImmersions.LinearRootPowerLipschitz =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.FlagImmersions.LinearRootPowerLipschitz", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\npublic import Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic\npublic import Development.WeilBound.CoreStatements.FlagImmersions.MapProdLinear\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace RootFieldNumerics.Pc

theorem abs_prod_sub_prod_le {ι : Type} (s : Finset ι) (a b : ι → ℝ) (δ : ℝ)
    (ha : ∀ i, |a i| ≤ 1) (hb : ∀ i, |b i| ≤ 1) (h : ∀ i, |a i - b i| ≤ δ) :
    |∏ i ∈ s, a i - ∏ i ∈ s, b i| ≤ s.card * δ := by
  classical
  induction s using Finset.induction_on with
  | empty => simp
  | insert i s hi ih =>
    rw [Finset.prod_insert hi, Finset.prod_insert hi, Finset.card_insert_of_notMem hi]
    have hB : |∏ i ∈ s, b i| ≤ 1 := by
      rw [Finset.abs_prod]
      exact Finset.prod_le_one₀ (fun _ _ => abs_nonneg _) (fun i _ => hb i)
    have e : a i * ∏ i ∈ s, a i - b i * ∏ i ∈ s, b i =
        a i * (∏ i ∈ s, a i - ∏ i ∈ s, b i) + (a i - b i) * ∏ i ∈ s, b i := by ring
    rw [e]
    refine (abs_add_le _ _).trans ?_
    rw [abs_mul, abs_mul]
    have h1 : |a i| * |∏ i ∈ s, a i - ∏ i ∈ s, b i| ≤ 1 * (s.card * δ) :=
      mul_le_mul (ha i) ih (abs_nonneg _) zero_le_one
    have h2 : |a i - b i| * |∏ i ∈ s, b i| ≤ δ * 1 :=
      mul_le_mul (h i) hB (abs_nonneg _) ((abs_nonneg _).trans (h i))
    push_cast
    linarith

def linCoef {Ψ : Type} {N : ℕ} (lam : Wt Ψ N) (s : ℝ) : Option (Ψ × Fin N) → ℝ
  | none => s
  | some x => -lam x.1 x.2

theorem linA_eq {Ψ : Type} [Fintype Ψ] {N : ℕ} (lam : Wt Ψ N) (s : ℝ) :
    linA lam s = ∑ j, C (linCoef lam s j) * X j := by
  rw [Fintype.sum_option]
  simp [linA, toA, linRoot, linCoef, add_comm]

theorem map_linA_pow {Ψ : Type} [Fintype Ψ] {N : ℕ} (d : ℕ) (Φ : RPA Ψ N →ₗ[ℝ] ℝ)
    (lam : Wt Ψ N) (s : ℝ) [Fintype (Fin d → Option (Ψ × Fin N))] :
    Φ (linA lam s ^ d) = ∑ w : Fin d → Option (Ψ × Fin N), (∏ k, linCoef lam s (w k)) *
      Φ (monomial (∑ k, Finsupp.single (w k) 1) 1) := by
  have := RootFieldNumerics.map_prod_linear (Option (Ψ × Fin N)) d Φ (fun _ => linCoef lam s)
  rw [Finset.prod_const, Finset.card_univ, Fintype.card_fin, ← linA_eq] at this
  convert this

end RootFieldNumerics.Pc

theorem RootFieldNumerics.linear_root_power_lipschitz : ∀ (Ψ : Type) [Fintype Ψ] (N d : ℕ), (∀ Φ : RPA Ψ N →ₗ[ℝ] ℝ, Continuous fun z : Wt Ψ N × ℝ => Φ (linA z.1 z.2 ^ d)) ∧ (∀ lam : Wt Ψ N, linA lam 0 = toA (linRoot lam)) ∧ ∃ C : ℝ, 0 ≤ C ∧ ∀ (Φ : RPA Ψ N →ₗ[ℝ] ℝ) (b : ℝ), (∀ m, |Φ (monomial m 1)| ≤ b) → ∀ (lam mu : Wt Ψ N) (s s' : ℝ), ‖lam‖ ≤ 1 → ‖mu‖ ≤ 1 → |s| ≤ 1 → |s'| ≤ 1 → |Φ (linA lam s ^ d) - Φ (linA mu s' ^ d)| ≤ C * b * (‖lam - mu‖ + |s - s'|) := by
  intro Ψ _ N d
  classical
  refine ⟨fun Φ => ?_, fun lam => by simp [linA], ?_⟩
  · simp only [RootFieldNumerics.Pc.map_linA_pow]
    refine continuous_finsetSum _ fun w _ => Continuous.mul
      (continuous_finsetProd _ fun k _ => ?_) continuous_const
    cases w k with
    | none => exact continuous_snd
    | some x =>
      simp only [RootFieldNumerics.Pc.linCoef]
      fun_prop
  · refine ⟨(Fintype.card (Fin d → Option (Ψ × Fin N)) : ℝ) * d, by positivity, ?_⟩
    intro Φ b hb lam mu s s' hl hm hs hs'
    have hb0 : 0 ≤ b := (abs_nonneg _).trans (hb 0)
    have hent : ∀ (l : Wt Ψ N) τ i, |l τ i| ≤ ‖l‖ := fun l τ i =>
      (norm_le_pi_norm (l τ) i).trans (norm_le_pi_norm l τ)
    have hc : ∀ (l : Wt Ψ N) (t : ℝ), ‖l‖ ≤ 1 → |t| ≤ 1 → ∀ j, |RootFieldNumerics.Pc.linCoef l t j| ≤ 1 := by
      intro l t h1 h2 j
      cases j with
      | none => exact h2
      | some x => simpa [RootFieldNumerics.Pc.linCoef] using (hent l x.1 x.2).trans h1
    have hd : ∀ j, |RootFieldNumerics.Pc.linCoef lam s j - RootFieldNumerics.Pc.linCoef mu s' j| ≤ ‖lam - mu‖ + |s - s'| := by
      intro j
      cases j with
      | none => exact le_add_of_nonneg_left (norm_nonneg _)
      | some x =>
        have h1 := hent (lam - mu) x.1 x.2
        have e : RootFieldNumerics.Pc.linCoef lam s (some x) - RootFieldNumerics.Pc.linCoef mu s' (some x) =
            -((lam - mu) x.1 x.2) := by
          simp only [RootFieldNumerics.Pc.linCoef, Pi.sub_apply]; ring
        rw [e, abs_neg]
        exact h1.trans (le_add_of_nonneg_right (abs_nonneg _))
    rw [RootFieldNumerics.Pc.map_linA_pow, RootFieldNumerics.Pc.map_linA_pow, ← Finset.sum_sub_distrib]
    refine (Finset.abs_sum_le_sum_abs _ _).trans ?_
    refine (Finset.sum_le_card_nsmul _ _ (d * (‖lam - mu‖ + |s - s'|) * b) fun w _ => ?_).trans ?_
    · rw [← sub_mul, abs_mul]
      refine mul_le_mul ?_ (hb _) (abs_nonneg _) (by positivity)
      simpa using RootFieldNumerics.Pc.abs_prod_sub_prod_le Finset.univ _ _ _
        (fun k => hc lam s hl hs (w k)) (fun k => hc mu s' hm hs' (w k)) (fun k => hd (w k))
    · rw [Finset.card_univ, nsmul_eq_mul]
      exact le_of_eq (by ring)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.FlagImmersions.LinearRootPowerLipschitz =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ArithFunctionalLipschitzWeights =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ArithFunctionalLipschitzWeights", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\npublic import Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic\npublic import Development.WeilBound.CoreStatements.FlagImmersions.LinearRootPowerLipschitz\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace GlobalTheory.CompanionTheory.Ar.Top

theorem linA_pow_continuous_lipschitz : ∀ (Ψ : Type) [Fintype Ψ] (N d : ℕ), (∀ Φ : RPA Ψ N →ₗ[ℝ] ℝ, Continuous fun z : Wt Ψ N × ℝ => Φ (linA z.1 z.2 ^ d)) ∧ (∀ lam : Wt Ψ N, linA lam 0 = toA (linRoot lam)) ∧ ∃ C : ℝ, 0 ≤ C ∧ ∀ (Φ : RPA Ψ N →ₗ[ℝ] ℝ) (b : ℝ), (∀ m, |Φ (monomial m 1)| ≤ b) → ∀ (lam mu : Wt Ψ N) (s s' : ℝ), ‖lam‖ ≤ 1 → ‖mu‖ ≤ 1 → |s| ≤ 1 → |s'| ≤ 1 → |Φ (linA lam s ^ d) - Φ (linA mu s' ^ d)| ≤ C * b * (‖lam - mu‖ + |s - s'|) :=
  @RootFieldNumerics.linear_root_power_lipschitz

end GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ArithFunctionalLipschitzWeights =====

-- ===== clump member: Development.WeilBound.CoreStatements.FlagImmersions.ContinuousBoundWallExtension =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.FlagImmersions.ContinuousBoundWallExtension", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.HeckeSectionsIsotropicCommutatorPairingPower\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace RootFieldNumerics

theorem exists_rat_near_le (δ : ℝ) (hδ : 0 < δ) (x : ℝ) : ∃ q : ℚ, |(q : ℝ)| ≤ |x| ∧ |(q : ℝ) - x| ≤ δ := by
  rcases lt_trichotomy x 0 with hx | hx | hx
  · obtain ⟨q, h1, h2⟩ := exists_rat_btwn (show x < min (x + δ) 0 from lt_min (by linarith) hx)
    have m1 := min_le_left (x + δ) 0
    have m2 := min_le_right (x + δ) 0
    refine ⟨q, ?_, ?_⟩
    · rw [abs_of_neg hx, abs_of_nonpos (by linarith)]
      linarith
    · rw [abs_le]
      constructor <;> linarith
  · exact ⟨0, by simp [hx], by simp [hx, hδ.le]⟩
  · obtain ⟨q, h1, h2⟩ := exists_rat_btwn (show max (x - δ) 0 < x from max_lt (by linarith) hx)
    have m1 := le_max_left (x - δ) 0
    have m2 := le_max_right (x - δ) 0
    refine ⟨q, ?_, ?_⟩
    · rw [abs_of_pos hx, abs_of_nonneg (by linarith)]
      linarith
    · rw [abs_le]
      constructor <;> linarith

theorem continuous_bound_wall_extension : ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (j : ℕ) (c₀ b : ℝ) (τ₀ : Ψ) (Φ : Wt Ψ N → ℝ), 1 ≤ j → j < N → 0 < c₀ → Continuous Φ → (∀ lam, IsRatWt lam → InWall j τ₀ (c₀ / 2) lam → |Φ lam| ≤ b) → ∀ lam, InWall j τ₀ c₀ lam → |Φ lam| ≤ b := by
  intro Ψ _ _ N j c₀ b τ₀ Φ hj hjN hc hΦ hrat lam hlam
  have hex : ∀ n : ℕ, ∀ x : ℝ, ∃ q : ℚ, |(q:ℝ)| ≤ |x| ∧ |(q:ℝ) - x| ≤ c₀ / 4 * (1 / ((n:ℝ) + 1)) :=
    fun n x => exists_rat_near_le _ (by positivity) x
  choose F hF1 hF2 using hex
  let A : ℕ → Wt Ψ N := fun n τ i => (F n (lam τ i) : ℝ)
  have hδ : ∀ n : ℕ, c₀ / 4 * (1 / ((n:ℝ) + 1)) ≤ c₀ / 4 := by
    intro n
    have h1 : 1 / ((n:ℝ) + 1) ≤ 1 := by
      rw [div_le_one (by positivity)]
      linarith [(n.cast_nonneg : (0:ℝ) ≤ n)]
    exact mul_le_of_le_one_right (by positivity) h1
  have hent : ∀ n τ k, k < N → ent (A n) τ k = (F n (ent lam τ k) : ℝ) := by
    intro n τ k hk
    simp [ent, hk, A]
  have hclose : ∀ n τ k, k < N → |ent (A n) τ k - ent lam τ k| ≤ c₀ / 4 := by
    intro n τ k hk
    rw [hent n τ k hk]
    exact (hF2 n _).trans (hδ n)
  have hin : ∀ n, InWall j τ₀ (c₀ / 2) (A n) := by
    intro n
    obtain ⟨hn, hg0, hgτ, hcg⟩ := hlam
    have hj1 : j - 1 < N := by omega
    refine ⟨?_, ?_, ?_, ?_⟩
    · refine (pi_norm_le_iff_of_nonneg (by norm_num)).2 fun τ =>
        (pi_norm_le_iff_of_nonneg (by norm_num)).2 fun i => ?_
      have h1 : ‖lam τ i‖ ≤ 1 / 2 := (norm_le_pi_norm (lam τ) i).trans ((norm_le_pi_norm lam τ).trans hn)
      simp only [Real.norm_eq_abs, A] at h1 ⊢
      exact (hF1 n _).trans h1
    · simp only [gap] at hg0 ⊢
      rw [hent n τ₀ _ hj1, hent n τ₀ _ hjN, show ent lam τ₀ (j - 1) = ent lam τ₀ j by linarith]
      ring
    · intro τ hτ
      have h := hgτ τ hτ
      simp only [gap] at h ⊢
      have a1 := abs_le.1 (hclose n τ _ hj1)
      have a2 := abs_le.1 (hclose n τ _ hjN)
      linarith [a1.1, a1.2, a2.1, a2.2]
    · intro τ i hi hij
      have h := hcg τ i hi hij
      have a1 := abs_le.1 (hclose n τ i (by omega))
      have a2 := abs_le.1 (hclose n τ (i + 1) hi)
      linarith [a1.1, a1.2, a2.1, a2.2]
  have hAr : ∀ n, IsRatWt (A n) := fun n τ i => ⟨F n (lam τ i), rfl⟩
  have htend : Tendsto A atTop (𝓝 lam) := by
    rw [tendsto_pi_nhds]
    intro τ
    rw [tendsto_pi_nhds]
    intro i
    rw [tendsto_iff_norm_sub_tendsto_zero]
    have hlim : Tendsto (fun n : ℕ => c₀ / 4 * (1 / ((n:ℝ) + 1))) atTop (𝓝 0) := by
      simpa using (tendsto_one_div_add_atTop_nhds_zero_nat).const_mul (c₀ / 4)
    refine squeeze_zero (fun n => norm_nonneg _) (fun n => ?_) hlim
    simp only [A, Real.norm_eq_abs]
    exact hF2 n _
  have hΦt : Tendsto (fun n => |Φ (A n)|) atTop (𝓝 |Φ lam|) :=
    (continuous_abs.tendsto _).comp ((hΦ.tendsto lam).comp htend)
  exact le_of_tendsto' hΦt fun n => hrat _ (hAr n) (hin n)

end RootFieldNumerics
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.FlagImmersions.ContinuousBoundWallExtension =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ContinuousWallBoundExtend =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ContinuousWallBoundExtend", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.HeckeSectionsIsotropicCommutatorPairingPower\npublic import Development.WeilBound.CoreStatements.FlagImmersions.ContinuousBoundWallExtension\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace GlobalTheory.CompanionTheory.Ar.Top

theorem rat_points_suffice_on_walls : ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (j : ℕ) (c₀ b : ℝ) (τ₀ : Ψ) (Φ : Wt Ψ N → ℝ), 1 ≤ j → j < N → 0 < c₀ → Continuous Φ → (∀ lam, IsRatWt lam → InWall j τ₀ (c₀ / 2) lam → |Φ lam| ≤ b) → ∀ lam, InWall j τ₀ c₀ lam → |Φ lam| ≤ b :=
  @RootFieldNumerics.continuous_bound_wall_extension

end GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ContinuousWallBoundExtend =====

-- ===== clump member: Development.WeilBound.CoreStatements.FlagImmersions.FlagDegLeGap =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.FlagImmersions.FlagDegLeGap", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagDegreeWeightFormula\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.IsSemipositiveOn\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace RootFieldNumerics

private theorem prod_le_mul_two_pow_card {ι : Type} [Fintype ι] [DecidableEq ι] (f : ι → ℝ)
    (h0 : ∀ x, 0 ≤ f x) (h2 : ∀ x, f x ≤ 2) (x₀ : ι) (c : ℝ) (hc : f x₀ = c) :
    ∏ x, f x ≤ c * 2 ^ Fintype.card ι := by
  rw [← Finset.mul_prod_erase Finset.univ f (Finset.mem_univ x₀), hc]
  refine mul_le_mul_of_nonneg_left ?_ (hc ▸ h0 x₀)
  calc ∏ x ∈ Finset.univ.erase x₀, f x ≤ ∏ x ∈ Finset.univ.erase x₀, (2 : ℝ) :=
        Finset.prod_le_prod₀ (fun x _ => h0 x) (fun x _ => h2 x)
    _ = 2 ^ (Finset.univ.erase x₀).card := Finset.prod_const 2
    _ ≤ 2 ^ Fintype.card ι := pow_le_pow_right₀ (by norm_num) (Finset.card_le_univ _)

theorem flagDeg_le_gap : ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (j : ℕ), 1 ≤ j → j < N → ∃ C : ℝ, 0 ≤ C ∧ ∀ (lam : Wt Ψ N) (τ₀ : Ψ), ‖lam‖ ≤ 1 → Dominant lam → flagDeg lam ≤ C * gap j lam τ₀ := by
  intro Ψ _ _ N j hj hjN
  refine ⟨((GlobalTheory.CompanionTheory.Ar.Top.dimFl Ψ N).factorial : ℝ) * 2 ^ Fintype.card (Ψ × Fin N × Fin N),
    by positivity, ?_⟩
  intro lam τ₀ hlam hdom
  have hj1 : j - 1 < N := by omega
  have hbound : ∀ τ i, |lam τ i| ≤ 1 := by
    intro τ i
    have h1 := norm_le_pi_norm (show Ψ → Fin N → ℝ from lam) τ
    have h2 := norm_le_pi_norm (lam τ) i
    rw [Real.norm_eq_abs] at h2
    have h3 : ‖(show Ψ → Fin N → ℝ from lam)‖ ≤ 1 := hlam
    linarith
  have hfac : ∀ τ (i k : Fin N),
      0 ≤ (if i < k then (lam τ i - lam τ k) / (((k : ℕ) : ℝ) - ((i : ℕ) : ℝ)) else 1) ∧
        (if i < k then (lam τ i - lam τ k) / (((k : ℕ) : ℝ) - ((i : ℕ) : ℝ)) else 1) ≤ 2 := by
    intro τ i k
    split_ifs with hik
    · have hik' : (i : ℕ) < (k : ℕ) := hik
      have hd : ((i : ℕ) : ℝ) + 1 ≤ ((k : ℕ) : ℝ) := by exact_mod_cast Nat.succ_le_of_lt hik'
      have hmono := hdom τ i k hik.le
      have hi := abs_le.mp (hbound τ i)
      have hk := abs_le.mp (hbound τ k)
      constructor
      · apply div_nonneg <;> linarith
      · rw [div_le_iff₀ (by linarith)]
        linarith
    · norm_num
  have hgap : GlobalTheory.CompanionTheory.Ar.Top.gap j lam τ₀ = lam τ₀ ⟨j - 1, hj1⟩ - lam τ₀ ⟨j, hjN⟩ := by
    unfold GlobalTheory.CompanionTheory.Ar.Top.gap GlobalTheory.CompanionTheory.Ar.Top.ent
    rw [dite_eq_left hj1, dite_eq_left hjN]
  have hx0 : (if (⟨j - 1, hj1⟩ : Fin N) < ⟨j, hjN⟩ then
      (lam τ₀ ⟨j - 1, hj1⟩ - lam τ₀ ⟨j, hjN⟩) /
        ((((⟨j, hjN⟩ : Fin N) : ℕ) : ℝ) - (((⟨j - 1, hj1⟩ : Fin N) : ℕ) : ℝ)) else 1) =
      lam τ₀ ⟨j - 1, hj1⟩ - lam τ₀ ⟨j, hjN⟩ := by
    have hlt : (⟨j - 1, hj1⟩ : Fin N) < ⟨j, hjN⟩ := by
      rw [Fin.lt_def]
      show j - 1 < j
      omega
    rw [if_pos hlt]
    have hden : (((⟨j, hjN⟩ : Fin N) : ℕ) : ℝ) - (((⟨j - 1, hj1⟩ : Fin N) : ℕ) : ℝ) = 1 := by
      show ((j : ℕ) : ℝ) - ((j - 1 : ℕ) : ℝ) = 1
      rw [Nat.cast_sub hj, Nat.cast_one]
      ring
    rw [hden, div_one]
  have key := prod_le_mul_two_pow_card
    (fun x : Ψ × Fin N × Fin N => if x.2.1 < x.2.2 then
      (lam x.1 x.2.1 - lam x.1 x.2.2) / (((x.2.2 : ℕ) : ℝ) - ((x.2.1 : ℕ) : ℝ)) else 1)
    (fun x => (hfac x.1 x.2.1 x.2.2).1) (fun x => (hfac x.1 x.2.1 x.2.2).2)
    (τ₀, ⟨j - 1, hj1⟩, ⟨j, hjN⟩) _ hx0
  simp only [Fintype.prod_prod_type] at key
  obtain ⟨hdeg, -, -⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Top.flagDeg_eq_weyl Ψ N lam
  rw [hdeg, hgap]
  calc _ ≤ ((GlobalTheory.CompanionTheory.Ar.Top.dimFl Ψ N).factorial : ℝ) *
        ((lam τ₀ ⟨j - 1, hj1⟩ - lam τ₀ ⟨j, hjN⟩) * 2 ^ Fintype.card (Ψ × Fin N × Fin N)) :=
        mul_le_mul_of_nonneg_left key (by positivity)
    _ = _ := by ring

end RootFieldNumerics
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.FlagImmersions.FlagDegLeGap =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagDegreeLeGap =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagDegreeLeGap", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\npublic import Development.WeilBound.CoreStatements.FlagImmersions.FlagDegLeGap\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.IsSemipositiveOn\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace GlobalTheory.CompanionTheory.Ar.Top

theorem flagDeg_le_mul_gap : ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (j : ℕ), 1 ≤ j → j < N → ∃ C : ℝ, 0 ≤ C ∧ ∀ (lam : Wt Ψ N) (τ₀ : Ψ), ‖lam‖ ≤ 1 → Dominant lam → flagDeg lam ≤ C * gap j lam τ₀ := by
  exact @RootFieldNumerics.flagDeg_le_gap

end GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagDegreeLeGap =====

-- ===== clump member: Development.WeilBound.CoreStatements.FlagImmersions.PerturbedWeightWallBounds =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.FlagImmersions.PerturbedWeightWallBounds", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.HeckeSectionsIsotropicCommutatorPairingPower\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace RootFieldNumerics

theorem dominant_of_gaps {Ψ : Type} {N : ℕ} (mu : Wt Ψ N)
    (h : ∀ τ (i : ℕ), i + 1 < N → 0 ≤ ent mu τ i - ent mu τ (i + 1)) : Dominant mu := by
  intro τ a b hab
  have hab' : (a : ℕ) ≤ b := hab
  have key : ∀ k : ℕ, (a : ℕ) + k < N → ent mu τ ((a : ℕ) + k) ≤ ent mu τ a := by
    intro k
    induction k with
    | zero => intro _; simp
    | succ k ih =>
      intro hk
      have h1 := h τ ((a : ℕ) + k) (by omega)
      have h2 := ih (by omega)
      show ent mu τ ((a : ℕ) + k + 1) ≤ ent mu τ a
      linarith
  have h3 := key ((b : ℕ) - a) (by omega)
  rw [Nat.add_sub_cancel' hab'] at h3
  simpa [ent, a.isLt, b.isLt] using h3

theorem abs_ent_le {Ψ : Type} [Fintype Ψ] {N : ℕ} (mu : Wt Ψ N) (τ : Ψ) (i : ℕ) : |ent mu τ i| ≤ ‖mu‖ := by
  unfold ent
  split_ifs with h
  · exact (norm_le_pi_norm (mu τ) _).trans (norm_le_pi_norm mu τ)
  · simp

theorem perturbed_weight_wall_bounds : ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (T : RootTower Ψ N) (c₀ θ₀ : ℝ), 0 < c₀ → 0 < θ₀ → ∃ B₁ : ℕ, ∀ B : ℕ, B₁ ≤ B → ∀ (τ₀ : Ψ) (lam₀ : Wt Ψ N), InWall T.j τ₀ c₀ lam₀ → let θ : ℝ := 5 * Fintype.card Ψ / B; let lam : Wt Ψ N := fun τ i => lam₀ τ i + (if τ = τ₀ ∧ (i : ℕ) < T.j then 2 * θ else 0); 3 ≤ B ∧ 0 < θ ∧ θ ≤ θ₀ ∧ θ ≤ 1 ∧ ‖lam‖ ≤ 1 ∧ ‖T.lamS lam (θ ^ 2)‖ ≤ 1 ∧ (∀ τ, θ ≤ gap T.j lam τ) ∧ gap T.j lam τ₀ = 2 * θ ∧ CompactGapsGE T.j c₀ lam ∧ Dominant lam ∧ Dominant (T.lamS lam (θ ^ 2)) ∧ NefThreshold T.j B (T.lamS lam (θ ^ 2)) ∧ ‖T.lamS lam (θ ^ 2) - lam₀‖ ≤ 2 * θ + ‖T.nu‖ * θ ^ 2 := by
  intro Ψ _ _ N T c₀ θ₀ hc₀ hθ₀
  set R := ‖T.nu‖ with hR
  have hR0 : 0 ≤ R := norm_nonneg _
  set δ : ℝ := min (min θ₀ (1 / 8)) (min (c₀ / 2) (1 / (4 * (R + 1)))) with hδ
  have hδpos : 0 < δ :=
    lt_min (lt_min hθ₀ (by norm_num)) (lt_min (by linarith) (by positivity))
  refine ⟨max 10 ⌈5 * (Fintype.card Ψ : ℝ) / δ⌉₊, ?_⟩
  intro B hB τ₀ lam₀ hW
  intro θ lam
  obtain ⟨hn0, hg0, hgo, hcg⟩ := hW
  have hcard : (1 : ℝ) ≤ Fintype.card Ψ := by
    exact_mod_cast Fintype.card_pos_iff.mpr ⟨τ₀⟩
  have hB10 : (10 : ℝ) ≤ B := by exact_mod_cast (le_max_left _ _).trans hB
  have hBpos : (0 : ℝ) < B := by linarith
  have hBc : 5 * (Fintype.card Ψ : ℝ) / δ ≤ B :=
    (Nat.le_ceil _).trans (by exact_mod_cast (le_max_right _ _).trans hB)
  have hθdef : θ = 5 * (Fintype.card Ψ : ℝ) / B := rfl
  have hθpos : 0 < θ := by rw [hθdef]; exact div_pos (by linarith) hBpos
  have hθδ : θ ≤ δ := by
    rw [hθdef, div_le_iff₀ hBpos]
    have := (div_le_iff₀ hδpos).mp hBc
    linarith [mul_comm (B : ℝ) δ]
  have hθθ₀ : θ ≤ θ₀ := hθδ.trans ((min_le_left _ _).trans (min_le_left _ _))
  have hθ8 : θ ≤ 1 / 8 := hθδ.trans ((min_le_left _ _).trans (min_le_right _ _))
  have hθc : θ ≤ c₀ / 2 := hθδ.trans ((min_le_right _ _).trans (min_le_left _ _))
  have hθR' : θ ≤ 1 / (4 * (R + 1)) := hθδ.trans ((min_le_right _ _).trans (min_le_right _ _))
  have hθR : θ * R ≤ 1 / 4 := by
    rw [le_div_iff₀ (by positivity)] at hθR'
    nlinarith
  have hθB : θ * B = 5 * (Fintype.card Ψ : ℝ) := by
    rw [hθdef]; field_simp
  let D : Wt Ψ N := fun τ i => if τ = τ₀ ∧ (i : ℕ) < T.j then 2 * θ else 0
  have hD : ‖D‖ ≤ 2 * θ := by
    refine (pi_norm_le_iff_of_nonneg (by positivity)).mpr (fun τ => ?_)
    refine (pi_norm_le_iff_of_nonneg (by positivity)).mpr (fun i => ?_)
    simp only [D]
    split_ifs
    · rw [Real.norm_eq_abs, abs_of_pos (by positivity)]
    · simp; positivity
  have hlamD : lam = lam₀ + D := by funext τ i; rfl
  have hnlam : ‖lam‖ ≤ 1 / 2 + 2 * θ := by
    rw [hlamD]; exact (norm_add_le _ _).trans (by linarith)
  have hnmu : ‖T.lamS lam (θ ^ 2)‖ ≤ 1 / 2 + 2 * θ + θ ^ 2 * R := by
    show ‖lam - θ ^ 2 • T.nu‖ ≤ _
    refine (norm_sub_le _ _).trans ?_
    rw [norm_smul, Real.norm_eq_abs, abs_of_nonneg (by positivity)]
    linarith
  have hθ2R : θ ^ 2 * R ≤ θ / 4 := by
    have : θ ^ 2 * R = θ * (θ * R) := by ring
    rw [this]
    have := mul_le_mul_of_nonneg_left hθR hθpos.le
    linarith
  have hnmu1 : ‖T.lamS lam (θ ^ 2)‖ ≤ 1 := by linarith
  have hent : ∀ τ i, ent lam τ i = ent lam₀ τ i + (if τ = τ₀ ∧ i < T.j then 2 * θ else 0) := by
    intro τ i
    by_cases hi : i < N
    · simp [ent, hi, lam]
    · have : ¬ (i < T.j) := by have := T.j_lt; omega
      simp [ent, hi, this]
  have hentS : ∀ (mu : Wt Ψ N) (s : ℝ) τ i,
      ent (T.lamS mu s) τ i = ent mu τ i - s * ent T.nu τ i := by
    intro mu s τ i
    by_cases hi : i < N <;> simp [ent, hi, RootTower.lamS]
  have hnuD : ∀ τ i, ent T.nu τ i - ent T.nu τ (i + 1) ≤ 2 * R := by
    intro τ i
    have h1 := abs_ent_le T.nu τ i
    have h2 := abs_ent_le T.nu τ (i + 1)
    have h3 := le_abs_self (ent T.nu τ i)
    have h4 := neg_abs_le (ent T.nu τ (i + 1))
    linarith
  have hgapLam : ∀ τ i, i + 1 < N → 2 * θ ≤ ent lam τ i - ent lam τ (i + 1) := by
    intro τ i hi
    rw [hent, hent]
    rcases lt_trichotomy (i + 1) T.j with hlt | heq | hgt
    · have hc := hcg τ i hi hlt.ne
      have h1 : i < T.j := by omega
      by_cases hτ : τ = τ₀
      · subst hτ
        simp [h1, hlt]
        linarith
      · simp [hτ]
        linarith
    · have h1 : i < T.j := by omega
      have h2 : ¬ i + 1 < T.j := by omega
      have hg : gap T.j lam₀ τ = ent lam₀ τ i - ent lam₀ τ (i + 1) := by
        simp only [gap]; rw [← heq]; simp
      by_cases hτ : τ = τ₀
      · subst hτ
        simp [h1, h2]
        linarith [hg0, hg]
      · have := hgo τ hτ
        simp [hτ]
        linarith
    · have hc := hcg τ i hi hgt.ne'
      have h1 : ¬ i < T.j := by omega
      have h2 : ¬ i + 1 < T.j := by omega
      simp [h1, h2]
      linarith
  have hj1 : T.j - 1 + 1 = T.j := by have := T.j_pos; omega
  have hj2 : T.j - 1 + 1 < N := by have := T.j_pos; have := T.j_lt; omega
  have hgapj : ∀ τ, 2 * θ ≤ gap T.j lam τ := by
    intro τ
    have h := hgapLam τ (T.j - 1) hj2
    rw [hj1] at h
    exact h
  have hgapmu : ∀ τ, θ ≤ gap T.j (T.lamS lam (θ ^ 2)) τ := by
    intro τ
    have h := hgapj τ
    have hn := hnuD τ (T.j - 1)
    rw [hj1] at hn
    simp only [gap] at h ⊢
    rw [hentS, hentS]
    have : θ ^ 2 * (ent T.nu τ (T.j - 1) - ent T.nu τ T.j) ≤ θ ^ 2 * (2 * R) :=
      mul_le_mul_of_nonneg_left hn (by positivity)
    linarith
  refine ⟨?_, hθpos, hθθ₀, by linarith, by linarith, hnmu1, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · have := (le_max_left 10 _).trans hB
    omega
  · intro τ; have := hgapj τ; linarith
  · have h1 : T.j - 1 < T.j := by have := T.j_pos; omega
    simp only [gap]
    rw [hent, hent]
    have := hg0
    simp only [gap] at this
    simp [h1]
    linarith
  · intro τ i hi hij
    rw [hent, hent]
    have hc := hcg τ i hi hij
    rcases lt_or_gt_of_ne hij with hlt | hgt
    · have h1 : i < T.j := by omega
      by_cases hτ : τ = τ₀
      · subst hτ
        simp [h1, hlt]
        linarith
      · simp [hτ]
        linarith
    · have h1 : ¬ i < T.j := by omega
      have h2 : ¬ i + 1 < T.j := by omega
      simp [h1, h2]
      linarith
  · exact dominant_of_gaps lam (fun τ i hi => by have := hgapLam τ i hi; linarith)
  · refine dominant_of_gaps _ (fun τ i hi => ?_)
    rw [hentS, hentS]
    have h := hgapLam τ i hi
    have hn := hnuD τ i
    have : θ ^ 2 * (ent T.nu τ i - ent T.nu τ (i + 1)) ≤ θ ^ 2 * (2 * R) :=
      mul_le_mul_of_nonneg_left hn (by positivity)
    linarith
  · intro τ
    have hg := hgapmu τ
    have hB2 : (0 : ℝ) ≤ (B : ℝ) - 2 := by linarith
    have h1 : ((B : ℝ) - 2) * θ ≤ ((B : ℝ) - 2) * gap T.j (T.lamS lam (θ ^ 2)) τ :=
      mul_le_mul_of_nonneg_left hg hB2
    have he : ((B : ℝ) - 2) * θ = θ * B - 2 * θ := by ring
    have h3 : 4 * (Fintype.card Ψ : ℝ) * ‖T.lamS lam (θ ^ 2)‖ ≤ 4 * (Fintype.card Ψ : ℝ) :=
      mul_le_of_le_one_right (by positivity) hnmu1
    linarith
  · have hsub : T.lamS lam (θ ^ 2) - lam₀ = D - θ ^ 2 • T.nu := by
      funext τ i
      simp [RootTower.lamS, lam, D]
      ring
    rw [hsub]
    refine (norm_sub_le _ _).trans ?_
    rw [norm_smul, Real.norm_eq_abs, abs_of_nonneg (by positivity)]
    linarith

end RootFieldNumerics
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.FlagImmersions.PerturbedWeightWallBounds =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PerturbedWeightGapBounds =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PerturbedWeightGapBounds", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.HeckeSectionsIsotropicCommutatorPairingPower\npublic import Development.WeilBound.CoreStatements.FlagImmersions.PerturbedWeightWallBounds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace GlobalTheory.CompanionTheory.Ar.Top

theorem hypotheses_hold_for_large_bound : ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (T : RootTower Ψ N) (c₀ θ₀ : ℝ), 0 < c₀ → 0 < θ₀ → ∃ B₁ : ℕ, ∀ B : ℕ, B₁ ≤ B → ∀ (τ₀ : Ψ) (lam₀ : Wt Ψ N), InWall T.j τ₀ c₀ lam₀ → let θ : ℝ := 5 * Fintype.card Ψ / B; let lam : Wt Ψ N := fun τ i => lam₀ τ i + (if τ = τ₀ ∧ (i : ℕ) < T.j then 2 * θ else 0); 3 ≤ B ∧ 0 < θ ∧ θ ≤ θ₀ ∧ θ ≤ 1 ∧ ‖lam‖ ≤ 1 ∧ ‖T.lamS lam (θ ^ 2)‖ ≤ 1 ∧ (∀ τ, θ ≤ gap T.j lam τ) ∧ gap T.j lam τ₀ = 2 * θ ∧ CompactGapsGE T.j c₀ lam ∧ Dominant lam ∧ Dominant (T.lamS lam (θ ^ 2)) ∧ NefThreshold T.j B (T.lamS lam (θ ^ 2)) ∧ ‖T.lamS lam (θ ^ 2) - lam₀‖ ≤ 2 * θ + ‖T.nu‖ * θ ^ 2 :=
  @RootFieldNumerics.perturbed_weight_wall_bounds

end GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PerturbedWeightGapBounds =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ArithIntersectionSectionRecursion =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ArithIntersectionSectionRecursion", "h": "module\n\nimport GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PSectionBounded\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterNamed\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.GfForms\npublic import Development.WeilBound.CoreStatements.FlagImmersions.IntersectionConstantMetricLine\npublic import Development.WeilBound.CoreStatements.FlagImmersions.PointsIntegralSectionSnoc\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PDivCycleMul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterRedF\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Top.EffLat

open PositivityTheory.HtPt.Gf (hom_mul hom_add hom_mon hom_of_eq hom_sub aeval_mon mon_not_mem mem_mCoordIdeal mon)
open GroundTheory.Heights₂.Heights.NumbersDVR (length_localizedQuot_ne_top mem_minimalPrimes_sup_span_mul
  length_localizedQuot_sup_span_mul localizedQuot_subsingleton_of_not_le)

theorem len_le_of_rel {A : Type*} [CommRing A] [IsNoetherianRing A] {P W : Ideal A} [hP : P.IsPrime]
    [hWp : W.IsPrime] {g h t r : A} (hg : g ∉ P) (ht : t ∉ W) (hrel : t * g - r * h ∈ P)
    (hW : W ∈ (P ⊔ Ideal.span {h}).minimalPrimes) :
    W ∈ (P ⊔ Ideal.span {g}).minimalPrimes ∧
      (Module.length (Localization.AtPrime W)
        (LocalizedModule W.primeCompl (A ⧸ (P ⊔ Ideal.span {h})))).toNat ≤
      (Module.length (Localization.AtPrime W)
        (LocalizedModule W.primeCompl (A ⧸ (P ⊔ Ideal.span {g})))).toNat := by
  have hPW : P ≤ W := le_sup_left.trans hW.1.2
  have htP : t ∉ P := fun h' => ht (hPW h')
  have hrP : r ∉ P := by
    intro hr
    have h1 : t * g ∈ P := by
      have := P.add_mem hrel (P.mul_mem_right h hr)
      rwa [sub_add_cancel] at this
    exact (hP.mem_or_mem h1).elim htP hg
  have hm := mem_minimalPrimes_sup_span_mul (P := P) (x := h) (y := r) hrP hW
  have heq : P ⊔ Ideal.span {h * r} = P ⊔ Ideal.span {t * g} := by
    apply le_antisymm
    · refine sup_le le_sup_left ((Ideal.span_singleton_le_iff_mem _).mpr ?_)
      have e : h * r = t * g - (t * g - r * h) := by ring
      rw [e]
      exact Ideal.sub_mem _ (Ideal.mem_sup_right (Ideal.mem_span_singleton_self _))
        (Ideal.mem_sup_left hrel)
    · refine sup_le le_sup_left ((Ideal.span_singleton_le_iff_mem _).mpr ?_)
      have e : t * g = (t * g - r * h) + h * r := by ring
      rw [e]
      exact Ideal.add_mem _ (Ideal.mem_sup_left hrel)
        (Ideal.mem_sup_right (Ideal.mem_span_singleton_self _))
  rw [heq] at hm
  have htg : t * g ∈ W := hm.1.2 (Ideal.mem_sup_right (Ideal.mem_span_singleton_self _))
  have hgW : g ∈ W := (hWp.mem_or_mem htg).resolve_left ht
  have hWg : W ∈ (P ⊔ Ideal.span {g}).minimalPrimes := by
    refine ⟨⟨hWp, sup_le hPW ((Ideal.span_singleton_le_iff_mem _).mpr hgW)⟩, fun Q hQ hQW => ?_⟩
    refine hm.2 ⟨hQ.1, sup_le (le_sup_left.trans hQ.2)
      ((Ideal.span_singleton_le_iff_mem _).mpr ?_)⟩ hQW
    exact Q.mul_mem_left t (hQ.2 (Ideal.mem_sup_right (Ideal.mem_span_singleton_self _)))
  refine ⟨hWg, ?_⟩
  have e1 := length_localizedQuot_sup_span_mul P W (x := t) g htP
  have e2 := length_localizedQuot_sup_span_mul P W (x := r) h hrP
  have heq' : P ⊔ Ideal.span {r * h} = P ⊔ Ideal.span {t * g} := by rw [mul_comm r h, heq]
  rw [heq'] at e2
  have ht0 : Module.length (Localization.AtPrime W)
      (LocalizedModule W.primeCompl (A ⧸ (P ⊔ Ideal.span {t}))) = 0 := by
    have hnle : ¬ (P ⊔ Ideal.span {t}) ≤ W := fun h' =>
      ht (h' (Ideal.mem_sup_right (Ideal.mem_span_singleton_self _)))
    have := localizedQuot_subsingleton_of_not_le (P ⊔ Ideal.span {t}) W hnle
    exact Module.length_eq_zero_iff.mpr this
  rw [ht0, add_zero] at e1
  have hfin := length_localizedQuot_ne_top _ W hm
  rw [e1] at hfin e2
  refine ENat.toNat_le_toNat ?_ hfin
  rw [e2]
  exact le_self_add

variable {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)] {Ω : Type} [Field Ω]

theorem y_ne_of_not_mem {y : (Σ k, ι k) → Ω} {p : Σ k, ι k}
    (h : (X p : MRing ι) ∉ mCoordIdeal y) : y p ≠ 0 := by
  intro h0
  apply h
  rw [mCoordIdeal, RingHom.mem_ker, mConeMap, aeval_X, h0, map_zero, zero_mul]

theorem eval_one_coneMap (y : (Σ k, ι k) → Ω) (f : MRing ι) :
    eval (fun _ => (1 : Ω)) (mConeMap y f) = aeval y f := by
  induction f using MvPolynomial.induction_on with
  | C a => simp [mConeMap]
  | add p q hp hq => simp only [map_add (f := _), hp, hq]
  | mul_X p i hp =>
    simp only [map_mul, hp]
    congr 1
    simp [mConeMap]

theorem not_mem_of_aeval_ne {y : (Σ k, ι k) → Ω} {f : MRing ι} (hf : aeval y f ≠ 0) :
    f ∉ mCoordIdeal y := by
  intro h
  apply hf
  rw [← eval_one_coneMap]
  have h0 : mConeMap y f = 0 := h
  rw [h0, map_zero]

theorem exists_form_of_mem_chart {y : (Σ k, ι k) → Ω} {c : ∀ k, ι k} (hc : ∀ k, y ⟨k, c k⟩ ≠ 0)
    {t : Ω} (ht : t ∈ chartRingZ y c) :
    ∃ (N : K → ℕ) (r : MRing ι), IsMultiHomog r N ∧ aeval y r = t * ∏ k, y ⟨k, c k⟩ ^ N k := by
  apply GroundTheory.Heights₂.Heights.HilbertSamuel.SectionBounded.exists_form_of_mem_chartRingZ <;> assumption

theorem chart_rel {y : (Σ k, ι k) → Ω} {c : ∀ k, ι k} (hc : ∀ k, y ⟨k, c k⟩ ≠ 0) {a : K → ℤ} {s : Ω}
    (hs : s * ∏ k, y ⟨k, c k⟩ ^ (-(((1 : ℕ) : ℤ) * a k)) ∈ chartRingZ y c) {g h : MRing ι}
    {dg dh : K → ℕ} (hg : IsMultiHomog g dg) (hh : IsMultiHomog h dh)
    (hd : ∀ k, (dg k : ℤ) = dh k + a k) (e : aeval y g = s * aeval y h) :
    ∃ (u : K → ℕ) (r : MRing ι), mon c u * g - r * h ∈ mCoordIdeal y := by
  obtain ⟨N, r, hr, er⟩ := exists_form_of_mem_chart hc hs
  let v : K → ℕ := fun k => (a k).toNat
  let u : K → ℕ := fun k => N k + (-a k).toNat
  refine ⟨u, r * mon c v, mem_mCoordIdeal (d := u + dg) (hom_sub (hom_mul (hom_mon c u) hg)
    (hom_of_eq (hom_mul (hom_mul hr (hom_mon c v)) hh) ?_)) ?_⟩
  · intro k
    have := hd k
    simp only [Pi.add_apply, u, v]
    omega
  · rw [map_sub, map_mul, map_mul, map_mul, aeval_mon, aeval_mon, e, er, sub_eq_zero]
    have key : ∏ k, y ⟨k, c k⟩ ^ u k = (∏ k, y ⟨k, c k⟩ ^ (-(((1 : ℕ) : ℤ) * a k))) *
        (∏ k, y ⟨k, c k⟩ ^ N k) * ∏ k, y ⟨k, c k⟩ ^ v k := by
      rw [← Finset.prod_mul_distrib, ← Finset.prod_mul_distrib]
      refine Finset.prod_congr rfl fun k _ => ?_
      have hy := hc k
      rw [← zpow_natCast, ← zpow_natCast, ← zpow_natCast, ← zpow_add₀ hy, ← zpow_add₀ hy]
      congr 1
      simp only [u, v]
      push_cast
      omega
    rw [key]
    ring

theorem exists_rep {y : (Σ k, ι k) → Ω} (hb : Birational y) {c : ∀ k, ι k}
    (hc : ∀ k, y ⟨k, c k⟩ ≠ 0) (a : K → ℤ) (s : Ω) :
    ∃ (g h : MRing ι) (dg dh : K → ℕ), IsMultiHomog g dg ∧ IsMultiHomog h dh ∧
      (∀ k, (dg k : ℤ) = dh k + a k) ∧ aeval y h ≠ 0 ∧ aeval y g = s * aeval y h := by
  obtain ⟨d, g0, h0, hg, hh, hne, e⟩ := hb (s * ∏ k, y ⟨k, c k⟩ ^ (-a k))
  refine ⟨mon c (fun k => (a k).toNat) * g0, mon c (fun k => (-a k).toNat) * h0, _, _,
    hom_mul (hom_mon c _) hg, hom_mul (hom_mon c _) hh, ?_, ?_, ?_⟩
  · intro k
    simp only [Pi.add_apply]
    push_cast
    omega
  · rw [map_mul, aeval_mon]
    exact mul_ne_zero (Finset.prod_ne_zero_iff.2 fun k _ => pow_ne_zero _ (hc k)) hne
  · rw [map_mul, map_mul, aeval_mon, aeval_mon, e]
    have key : (∏ k, y ⟨k, c k⟩ ^ (a k).toNat) * ∏ k, y ⟨k, c k⟩ ^ (-a k) =
        ∏ k, y ⟨k, c k⟩ ^ (-a k).toNat := by
      rw [← Finset.prod_mul_distrib]
      refine Finset.prod_congr rfl fun k _ => ?_
      have hy := hc k
      rw [← zpow_natCast, ← zpow_natCast, ← zpow_add₀ hy]
      congr 1
      omega
    rw [← key]
    ring

theorem deg_tensor (II : IntersectionSystem) (hII : IsFullIntersectionSystem II)
    (P : Ideal (MRing ι)) (e : ℕ) (L : Fin e → HermLine ι) (A B : HermLine ι)
    (hP : IsArithVar P (e + 2)) (hL : ∀ j, IsSmoothHerm (L j)) (hA : IsSmoothHerm A)
    (hB : IsSmoothHerm B) :
    ptsIntegral P (fun j z => Real.log (((Fin.snoc L (A.tensor B) : Fin (e + 1) → HermLine ι) j).h z))
        (fun _ => 1) =
      ptsIntegral P (fun j z => Real.log (((Fin.snoc L A : Fin (e + 1) → HermLine ι) j).h z))
        (fun _ => 1) +
      ptsIntegral P (fun j z => Real.log (((Fin.snoc L B : Fin (e + 1) → HermLine ι) j).h z))
        (fun _ => 1) := by
  set O : HermLine ι := HermLine.ofWeight (fun _ => (-1 : ℝ)) (fun _ _ _ => rfl) with hO
  have hOs : IsSmoothHerm O := RootFieldNumerics.smooth_constLine _
  have key : ∀ Y : HermLine ι, IsSmoothHerm Y →
      II K ι P (e + 2) (Fin.snoc (Fin.snoc L O : Fin (e + 1) → HermLine ι) Y) =
        ptsIntegral P (fun j z => Real.log (((Fin.snoc L Y : Fin (e + 1) → HermLine ι) j).h z))
          (fun _ => 1) := by
    intro Y hY
    have h1 := RootFieldNumerics.intersection_constant_metric_line II hII.1 K ι P (e + 1) (Fin.snoc L Y) (-1) hP
      (RootFieldNumerics.smooth_snoc hL hY)
    rw [neg_neg, one_mul, ← hO, RootFieldNumerics.snoc_snoc_swap,
      (hII.1 K ι).1 P (e + 2) _ _ hP (RootFieldNumerics.smooth_snoc (RootFieldNumerics.smooth_snoc hL hOs) hY)] at h1
    exact h1
  rw [← key _ (isSmoothHerm_tensor hA hB), ← key _ hA, ← key _ hB]
  exact (hII.1 K ι).2.1 P (e + 1) _ A B hP (RootFieldNumerics.smooth_snoc hL hOs) hA hB

end GlobalTheory.CompanionTheory.Ar.Top.EffLat


open GlobalTheory.CompanionTheory.Ar.Top.EffLat PositivityTheory.HtPt.Gf in
theorem GlobalTheory.CompanionTheory.Ar.Top.eff_lat : ∀ II : IntersectionSystem, IsFullIntersectionSystem II → ReciprocityTheory.ChartRestriction.G.Geo.DivSuppArithStatement → ∀ (K : Type) [Fintype K] (ι : K → Type) [∀ k, Fintype (ι k)] (Ω : Type) [Field Ω] (y : (Σ k, ι k) → Ω) (e : ℕ) (L : Fin e → HermLine ι) (A : HermLine ι) (s : Ω), IsArithVar (mCoordIdeal y) (e + 2) → Birational y → (∀ j, IsSmoothHerm (L j)) → IsSmoothHerm A → s ≠ 0 → s ∈ chartLat y A.a 1 → (∀ W, IsArithVar W (e + 1) → mCoordIdeal y ≤ W → 0 ≤ ptsIntegral W (fun j z => Real.log ((L j).h z)) (fun _ => 1)) → 0 ≤ ptsIntegral (mCoordIdeal y) (fun j z => Real.log (((Fin.snoc L A : Fin (e + 1) → HermLine ι) j).h z)) (fun _ => 1) := by
  classical
  intro II hII hD K _ ι _ Ω _ y e L A s hP hbir hL hA hs0 hs hnef
  haveI hPp : (mCoordIdeal y).IsPrime := hP.2.1.1
  choose c0 hc0 using hP.2.1.2.2
  have hy0 : ∀ k, y ⟨k, c0 k⟩ ≠ 0 := fun k => EffLat.y_ne_of_not_mem (hc0 k)
  obtain ⟨g, h, dg, dh, hg, hh, hd, hhne, e1⟩ := EffLat.exists_rep hbir hy0 A.a s
  have hgne : aeval y g ≠ 0 := by
    rw [e1]
    exact mul_ne_zero hs0 hhne
  have hgP := EffLat.not_mem_of_aeval_ne hgne
  have hhP := EffLat.not_mem_of_aeval_ne hhne
  have hHs : IsSmoothHerm (HermLine.sqMetric (ι := ι) dh) := isSmoothHerm_sqMetric dh
  have hGs := isSmoothHerm_tensor hA hHs
  have secH : IsSectionOn (mCoordIdeal y) (HermLine.sqMetric (ι := ι) dh) h :=
    ⟨dh, fun _ => rfl, hh, hhP⟩
  have secG : IsSectionOn (mCoordIdeal y) (A.tensor (HermLine.sqMetric (ι := ι) dh)) g := by
    refine ⟨dg, fun k => ?_, hg, hgP⟩
    have : (A.tensor (HermLine.sqMetric (ι := ι) dh)).a k = A.a k + dh k := rfl
    rw [this, hd k]
    ring
  have cutG := RootFieldNumerics.points_integral_section_snoc II hII hD K ι (mCoordIdeal y) e L _ g hP hL hGs secG
  have cutH := RootFieldNumerics.points_integral_section_snoc II hII hD K ι (mCoordIdeal y) e L _ h hP hL hHs secH
  have hadd := EffLat.deg_tensor II hII (mCoordIdeal y) e L A _ hP hL hA hHs
  have hfin : ∀ f : MRing ι, ({W | W ∈ divSupp (mCoordIdeal y) f ∧ IsHorizontal W}).Finite :=
    fun f => (divSupp_finite _ f).subset fun W hW => hW.1
  have hInn : ∀ W, W ∈ divSupp (mCoordIdeal y) g → IsHorizontal W →
      0 ≤ ptsIntegral W (fun j z => Real.log ((L j).h z)) (fun _ => 1) := fun W hW hh' =>
    hnef W ((hD K ι _ (e + 1) _ g W hP secG hW).1 hh') (le_sup_left.trans hW.1.1.2)
  have hkey : ∀ W, W ∈ divSupp (mCoordIdeal y) h → IsHorizontal W →
      W ∈ divSupp (mCoordIdeal y) g ∧
        multAt (mCoordIdeal y ⊔ Ideal.span {h}) W ≤ multAt (mCoordIdeal y ⊔ Ideal.span {g}) W := by
    intro W hW _
    obtain ⟨hWmin, hWrel⟩ := hW
    have hrel' := hWrel
    choose c hcW using hWrel
    have hPW : mCoordIdeal y ≤ W := le_sup_left.trans hWmin.1.2
    have hyc : ∀ k, y ⟨k, c k⟩ ≠ 0 := fun k => EffLat.y_ne_of_not_mem fun h' => hcW k (hPW h')
    have hsc : s * ∏ k, y ⟨k, c k⟩ ^ (-(((1 : ℕ) : ℤ) * A.a k)) ∈ chartRingZ y c := hs c hyc
    obtain ⟨u, r, hrel⟩ := EffLat.chart_rel hyc hsc hg hh hd e1
    haveI hWp : W.IsPrime := hWmin.1.1
    obtain ⟨hm, hle⟩ := EffLat.len_le_of_rel hgP (PositivityTheory.HtPt.Gf.mon_not_mem hWp hcW u) hrel hWmin
    refine ⟨⟨hm, hrel'⟩, ?_⟩
    unfold multAt
    rw [dite_eq_left hWp, dite_eq_left hWp]
    exact hle
  have cmp : (∑ᶠ (W) (_ : W ∈ divSupp (mCoordIdeal y) h ∧ IsHorizontal W),
        (multAt (mCoordIdeal y ⊔ Ideal.span {h}) W : ℝ) *
          ptsIntegral W (fun j z => Real.log ((L j).h z)) (fun _ => 1)) ≤
      ∑ᶠ (W) (_ : W ∈ divSupp (mCoordIdeal y) g ∧ IsHorizontal W),
        (multAt (mCoordIdeal y ⊔ Ideal.span {g}) W : ℝ) *
          ptsIntegral W (fun j z => Real.log ((L j).h z)) (fun _ => 1) := by
    change (∑ᶠ W ∈ {W | W ∈ divSupp (mCoordIdeal y) h ∧ IsHorizontal W}, _) ≤
      ∑ᶠ W ∈ {W | W ∈ divSupp (mCoordIdeal y) g ∧ IsHorizontal W}, _
    rw [finsum_mem_eq_finite_toFinset_sum _ (hfin h), finsum_mem_eq_finite_toFinset_sum _ (hfin g)]
    refine (Finset.sum_le_sum fun W hW => ?_).trans
      (Finset.sum_le_sum_of_subset_of_nonneg (fun W hW => ?_) fun W hW _ => ?_)
    · rw [Set.Finite.mem_toFinset] at hW
      have h2 := hkey W hW.1 hW.2
      exact mul_le_mul_of_nonneg_right (Nat.cast_le.2 h2.2) (hInn W h2.1 hW.2)
    · rw [Set.Finite.mem_toFinset] at hW ⊢
      exact ⟨(hkey W hW.1 hW.2).1, hW.2⟩
    · rw [Set.Finite.mem_toFinset] at hW
      exact mul_nonneg (Nat.cast_nonneg _) (hInn W hW.1 hW.2)
  rw [cutG, cutH] at hadd
  linarith
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ArithIntersectionSectionRecursion =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ChartLatticePowerSection =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ChartLatticePowerSection", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ArithmeticHilbertSamuelLowerBound\npublic import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PLiftBirationalAmple\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovGeometry.ExistsPrimeFiltrationOfIsMultiHomogIdeal\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovGeometry.IsMultiHomogXpow\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace GlobalTheory.CompanionTheory.Ar.Top.EffNm

theorem exists_pow_mul_pow_mem {Ω : Type} [Field Ω] (R : Subalgebra ℤ Ω) {u g h : Ω}
    (hu : u ∈ integralClosure R Ω) (hg : g ∈ R) (hh : h ∈ R) (e : u * h = g) :
    ∃ M : ℕ, ∀ n : ℕ, h ^ M * u ^ n ∈ R := by
  classical
  have hI : IsIntegral R u := hu
  obtain ⟨S, hS⟩ := hI.fg_adjoin_singleton
  have key : ∀ x ∈ Algebra.adjoin R {u}, ∃ m : ℕ, h ^ m * x ∈ R := by
    intro x hx
    induction hx using Algebra.adjoin_induction with
    | mem x hx =>
      rw [Set.mem_singleton_iff] at hx
      subst hx
      exact ⟨1, by rw [pow_one, mul_comm, e]; exact hg⟩
    | algebraMap r => exact ⟨0, by simpa using r.2⟩
    | add x z _ _ ihx ihz =>
      obtain ⟨m₁, h₁⟩ := ihx
      obtain ⟨m₂, h₂⟩ := ihz
      refine ⟨m₁ + m₂, ?_⟩
      have e' : h ^ (m₁ + m₂) * (x + z) = h ^ m₂ * (h ^ m₁ * x) + h ^ m₁ * (h ^ m₂ * z) := by
        rw [pow_add]; ring
      rw [e']
      exact add_mem (mul_mem (pow_mem hh _) h₁) (mul_mem (pow_mem hh _) h₂)
    | mul x z _ _ ihx ihz =>
      obtain ⟨m₁, h₁⟩ := ihx
      obtain ⟨m₂, h₂⟩ := ihz
      refine ⟨m₁ + m₂, ?_⟩
      have e' : h ^ (m₁ + m₂) * (x * z) = (h ^ m₁ * x) * (h ^ m₂ * z) := by
        rw [pow_add]; ring
      rw [e']
      exact mul_mem h₁ h₂
  have hfin : ∀ T : Finset Ω, (∀ x ∈ T, x ∈ Algebra.adjoin R {u}) →
      ∃ M : ℕ, ∀ x ∈ T, h ^ M * x ∈ R := by
    intro T
    induction T using Finset.induction_on with
    | empty => exact fun _ => ⟨0, by simp⟩
    | insert x T _ ih =>
      intro hT
      obtain ⟨M, hM⟩ := ih fun z hz => hT z (Finset.mem_insert_of_mem hz)
      obtain ⟨m, hm⟩ := key x (hT x (Finset.mem_insert_self x T))
      refine ⟨M + m, fun z hz => ?_⟩
      rcases Finset.mem_insert.1 hz with rfl | hz
      · have e' : h ^ (M + m) * z = h ^ M * (h ^ m * z) := by rw [pow_add]; ring
        rw [e']
        exact mul_mem (pow_mem hh _) hm
      · have e' : h ^ (M + m) * z = h ^ m * (h ^ M * z) := by rw [pow_add]; ring
        rw [e']
        exact mul_mem (pow_mem hh _) (hM z hz)
  have hSsub : ∀ x ∈ S, x ∈ Algebra.adjoin R {u} := by
    intro x hx
    have : x ∈ Subalgebra.toSubmodule (Algebra.adjoin R {u}) := hS ▸ Submodule.subset_span hx
    exact this
  obtain ⟨M, hM⟩ := hfin S hSsub
  refine ⟨M, fun n => ?_⟩
  have hn : u ^ n ∈ Subalgebra.toSubmodule (Algebra.adjoin R {u}) :=
    pow_mem (Algebra.subset_adjoin (Set.mem_singleton u)) n
  rw [← hS] at hn
  have hall : ∀ x ∈ Submodule.span R (S : Set Ω), h ^ M * x ∈ R := by
    intro x hx
    induction hx using Submodule.span_induction with
    | mem x hx => exact hM x hx
    | zero => simp
    | add x z _ _ ihx ihz => rw [mul_add]; exact add_mem ihx ihz
    | smul r x _ ih =>
      have e' : h ^ M * r • x = (r : Ω) * (h ^ M * x) := by
        rw [Algebra.smul_def]
        show h ^ M * ((r : Ω) * x) = _
        ring
      rw [e']
      exact mul_mem r.2 ih
  exact hall _ hn

variable {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)] {Ω : Type} [Field Ω]

theorem exists_form_at (y : (Σ k, ι k) → Ω) (a : K → ℤ) (s : Ω) (hb : Birational y)
    (hs : s ∈ chartLatNm y a 1) (c : ∀ k, ι k) (hc : ∀ k, y ⟨k, c k⟩ ≠ 0) :
    ∃ (e : K → ℕ) (F : MRing ι), IsMultiHomog F e ∧ aeval y F ≠ 0 ∧
      ∀ n : ℕ, aeval y F * s ^ n * ∏ k, y ⟨k, c k⟩ ^ (-((e k : ℤ) + n * a k)) ∈ chartRingZ y c := by
  classical
  have hu := hs c hc
  set u : Ω := s * ∏ k, y ⟨k, c k⟩ ^ (-(((1 : ℕ) : ℤ) * a k)) with hudef
  obtain ⟨d, g, h, hg, hh, hh0, heq⟩ := hb u
  have hG := (GroundTheory.Heights₂.Heights.HilbertSamuel.LiftBirationalAmple.mem_chartLat_one y).1
    (GroundTheory.Heights₂.Heights.HilbertSamuel.LiftBirationalAmple.chartLat_form (y := y) hg) c hc
  have hH := (GroundTheory.Heights₂.Heights.HilbertSamuel.LiftBirationalAmple.mem_chartLat_one y).1
    (GroundTheory.Heights₂.Heights.HilbertSamuel.LiftBirationalAmple.chartLat_form (y := y) hh) c hc
  obtain ⟨M, hM⟩ := exists_pow_mul_pow_mem (chartRingZ y c) hu hG hH (by rw [heq]; ring)
  refine ⟨M • d, h ^ M, ReciprocityTheory.ChartRestriction.G.ArakelovGeometry.isMultiHomog_pow hh M, ?_, fun n => ?_⟩
  · rw [map_pow]; exact pow_ne_zero _ hh0
  · have e' : aeval y (h ^ M) * s ^ n * ∏ k, y ⟨k, c k⟩ ^ (-((((M • d) k : ℕ) : ℤ) + n * a k)) =
        (aeval y h * ∏ k, y ⟨k, c k⟩ ^ (-(d k : ℤ))) ^ M * u ^ n := by
      have e2 : ∏ k, y ⟨k, c k⟩ ^ (-((((M • d) k : ℕ) : ℤ) + n * a k)) =
          (∏ k, y ⟨k, c k⟩ ^ (-(d k : ℤ))) ^ M * (∏ k, y ⟨k, c k⟩ ^ (-(((1 : ℕ) : ℤ) * a k))) ^ n := by
        rw [← Finset.prod_pow, ← Finset.prod_pow, ← Finset.prod_mul_distrib]
        refine Finset.prod_congr rfl fun k _ => ?_
        rw [← zpow_natCast, ← zpow_natCast, ← zpow_mul, ← zpow_mul, ← zpow_add₀ (hc k)]
        congr 1
        simp only [Pi.smul_apply, smul_eq_mul]
        push_cast
        ring
      rw [e2, map_pow, hudef, mul_pow, mul_pow]
      ring
    rw [e']
    exact hM n

end GlobalTheory.CompanionTheory.Ar.Top.EffNm

namespace GlobalTheory.CompanionTheory.Ar.Top

theorem exists_mul_pow_mem_chartLat_of_mem_chartLatNm :
    ∀ (K : Type) [Fintype K] (ι : K → Type) [∀ k, Fintype (ι k)] (Ω : Type) [Field Ω] (y : (Σ k, ι k) → Ω) (d : ℕ) (a : K → ℤ) (s : Ω), IsArithVar (mCoordIdeal y) d → Birational y → s ∈ chartLatNm y a 1 → ∃ (b : K → ℤ) (c : Ω), c ≠ 0 ∧ ∀ n : ℕ, c * s ^ n ∈ chartLat y (b + (n : ℤ) • a) 1 := by
  intro K _ ι _ Ω _ y _ a s _ hb hs
  classical
  have hex : ∀ c : ∀ k, ι k, ∃ (e : K → ℕ) (F : MRing ι), IsMultiHomog F e ∧ aeval y F ≠ 0 ∧
      ((∀ k, y ⟨k, c k⟩ ≠ 0) → ∀ n : ℕ,
        aeval y F * s ^ n * ∏ k, y ⟨k, c k⟩ ^ (-((e k : ℤ) + n * a k)) ∈ chartRingZ y c) := by
    intro c
    by_cases hc : ∀ k, y ⟨k, c k⟩ ≠ 0
    · obtain ⟨e, F, h1, h2, h3⟩ := EffNm.exists_form_at y a s hb hs c hc
      exact ⟨e, F, h1, h2, fun _ => h3⟩
    · exact ⟨0, 1, ReciprocityTheory.ChartRestriction.G.ArakelovGeometry.isMultiHomog_one, by simp, fun h => absurd h hc⟩
  choose e F hF hF0 hFc using hex
  refine ⟨∑ c, fun k => (e c k : ℤ), ∏ c, aeval y (F c),
    Finset.prod_ne_zero_iff.2 fun c _ => hF0 c, fun n => ?_⟩
  rw [GroundTheory.Heights₂.Heights.HilbertSamuel.LiftBirationalAmple.mem_chartLat_one]
  intro c₀ hc₀
  have hP := (GroundTheory.Heights₂.Heights.HilbertSamuel.LiftBirationalAmple.mem_chartLat_one y).1
    (GroundTheory.Heights₂.Heights.HilbertSamuel.LiftBirationalAmple.chartLat_prod (y := y)
      (Finset.univ.erase c₀) (fun c => aeval y (F c)) (fun c k => (e c k : ℤ))
      (fun c _ => GroundTheory.Heights₂.Heights.HilbertSamuel.LiftBirationalAmple.chartLat_form (y := y) (hF c)))
    c₀ hc₀
  have hQ := hFc c₀ hc₀ n
  have e' : (∏ c, aeval y (F c)) * s ^ n *
        ∏ k, y ⟨k, c₀ k⟩ ^ (-(((∑ c, fun k => (e c k : ℤ)) + (n : ℤ) • a) k)) =
      (aeval y (F c₀) * s ^ n * ∏ k, y ⟨k, c₀ k⟩ ^ (-((e c₀ k : ℤ) + n * a k))) *
        ((∏ c ∈ Finset.univ.erase c₀, aeval y (F c)) *
          ∏ k, y ⟨k, c₀ k⟩ ^ (-((∑ c ∈ Finset.univ.erase c₀, fun k => (e c k : ℤ)) k))) := by
    have e1 : ∏ c, aeval y (F c) = aeval y (F c₀) * ∏ c ∈ Finset.univ.erase c₀, aeval y (F c) :=
      (Finset.mul_prod_erase _ _ (Finset.mem_univ c₀)).symm
    have e2 : ∏ k, y ⟨k, c₀ k⟩ ^ (-(((∑ c, fun k => (e c k : ℤ)) + (n : ℤ) • a) k)) =
        (∏ k, y ⟨k, c₀ k⟩ ^ (-((e c₀ k : ℤ) + n * a k))) *
          ∏ k, y ⟨k, c₀ k⟩ ^ (-((∑ c ∈ Finset.univ.erase c₀, fun k => (e c k : ℤ)) k)) := by
      rw [← Finset.prod_mul_distrib]
      refine Finset.prod_congr rfl fun k _ => ?_
      rw [← zpow_add₀ (hc₀ k)]
      congr 1
      have e3 : (∑ c, fun k => (e c k : ℤ)) =
          (fun k => (e c₀ k : ℤ)) + ∑ c ∈ Finset.univ.erase c₀, fun k => (e c k : ℤ) :=
        (Finset.add_sum_erase _ _ (Finset.mem_univ c₀)).symm
      rw [e3]
      simp only [Pi.add_apply, Pi.smul_apply, smul_eq_mul]
      ring
    rw [e1, e2]
    ring
  rw [e']
  exact mul_mem hQ hP

end GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ChartLatticePowerSection =====

-- ===== clump member: Development.WeilBound.CoreStatements.FlagImmersions.ExistsSmooth =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.FlagImmersions.ExistsSmooth", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterNamed\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Birational\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.LogIntegralMultilinear\npublic import Mathlib.Analysis.InnerProductSpace.Calculus\nimport Development.WeilBound.CoreStatements.HomogeneousNonvanishing.RCombine\nimport Development.WeilBound.CoreStatements.FlagImmersions.CombLineSmoothConjInvariant\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

noncomputable section

namespace RootFieldNumerics.EffN

variable {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)]

alias smooth_comb := _root_.GlobalTheory.CompanionTheory.Ar.Top.GeoMix.smooth_comb

theorem comb_a {J : Type} [Fintype J] (ℓ : J → HermLine ι) (n : J → ℤ) :
    (combLine ℓ n).a = ∑ j, n j • (ℓ j).a := rfl

theorem exists_smooth (b : K → ℤ) : ∃ B : HermLine ι, IsSmoothHerm B ∧ B.a = b := by
  apply PositivityTheory.UnitarySelfGeneration.RC.exists_line

theorem smooth_snoc {e : ℕ} {L : Fin e → HermLine ι} {X : HermLine ι} (hL : ∀ j, IsSmoothHerm (L j))
    (hX : IsSmoothHerm X) (j : Fin (e + 1)) :
    IsSmoothHerm ((Fin.snoc L X : Fin (e + 1) → HermLine ι) j) := by
  refine Fin.lastCases ?_ (fun i => ?_) j
  · simpa using hX
  · simpa using hL i

theorem last_lin (II : IntersectionSystem) (hII : IsFullIntersectionSystem II) (P : Ideal (MRing ι)) (e : ℕ)
    (hP : IsArithVar P (e + 2)) (L : Fin e → HermLine ι) (A B C : HermLine ι) (m : ℤ)
    (hL : ∀ j, IsSmoothHerm (L j)) (hA : IsSmoothHerm A) (hB : IsSmoothHerm B) (hC : IsSmoothHerm C)
    (hdeg : C.a = B.a + m • A.a) :
    ptsIntegral P (fun j z => Real.log (((Fin.snoc L C : Fin (e + 1) → HermLine ι) j).h z)) (fun _ => 1) =
      ptsIntegral P (fun j z => Real.log (((Fin.snoc L B : Fin (e + 1) → HermLine ι) j).h z)) (fun _ => 1) +
        m * ptsIntegral P (fun j z => Real.log (((Fin.snoc L A : Fin (e + 1) → HermLine ι) j).h z))
          (fun _ => 1) := by
  classical
  let ℓ : Fin e ⊕ Bool → HermLine ι := Sum.elim L (fun t => if t then A else B)
  have hℓ : ∀ j, IsSmoothHerm (ℓ j) := by
    rintro (i | _ | _) <;> simp [ℓ, hL, hA, hB]
  let n : Fin (e + 1) → Fin e ⊕ Bool → ℤ :=
    Fin.snoc (fun i => Pi.single (Sum.inl i) 1)
      (Pi.single (Sum.inr false) 1 + m • Pi.single (Sum.inr true) 1)
  obtain ⟨hexp, hperm⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Top.geo_multilin II hII K ι P (e + 1) (Fin e ⊕ Bool) ℓ n hP hℓ
  have h1 := hperm (fun k => combLine ℓ (n k)) (Fin.snoc L C) 1 (fun k => smooth_comb hℓ _)
    (smooth_snoc hL hC) (by
      intro k
      simp only [Equiv.Perm.coe_one, id]
      rw [comb_a]
      refine Fin.lastCases ?_ (fun i => ?_) k
      · simp [n, ℓ, Fintype.sum_sum_type, Pi.single_apply, hdeg]
        abel
      · simp [n, ℓ, Pi.single_apply])
  let w0 : Fin (e + 1) → Fin e ⊕ Bool := Fin.snoc (fun i => Sum.inl i) (Sum.inr false)
  let w1 : Fin (e + 1) → Fin e ⊕ Bool := Fin.snoc (fun i => Sum.inl i) (Sum.inr true)
  have hne : w0 ≠ w1 := by
    intro h
    have := congrFun h (Fin.last e)
    simp [w0, w1] at this
  have hzero : ∀ w : Fin (e + 1) → Fin e ⊕ Bool, w ≠ w0 ∧ w ≠ w1 →
      (∏ k, (n k (w k) : ℝ)) * ptsIntegral P (fun k z => Real.log ((ℓ (w k)).h z)) (fun _ => 1) = 0 := by
    rintro w ⟨hw0, hw1⟩
    apply mul_eq_zero_of_left
    by_contra hprod
    have hf : ∀ k, (n k (w k) : ℝ) ≠ 0 := fun k =>
      Finset.prod_ne_zero_iff.mp hprod k (Finset.mem_univ _)
    have hcs : ∀ i : Fin e, w (Fin.castSucc i) = Sum.inl i := by
      intro i
      have := hf (Fin.castSucc i)
      simp [n, Pi.single_apply] at this
      exact this
    have hl := hf (Fin.last e)
    rcases hw : w (Fin.last e) with i | (_ | _)
    · rw [hw] at hl
      simp [n] at hl
    · exact hw0 (funext fun k => by
        refine Fin.lastCases ?_ (fun i => ?_) k
        · simp [w0, hw]
        · simp [w0, hcs i])
    · exact hw1 (funext fun k => by
        refine Fin.lastCases ?_ (fun i => ?_) k
        · simp [w1, hw]
        · simp [w1, hcs i])
  have e0 : ∀ k, ℓ (w0 k) = (Fin.snoc L B : Fin (e + 1) → HermLine ι) k := by
    intro k
    refine Fin.lastCases ?_ (fun i => ?_) k <;> simp [ℓ, w0]
  have e1 : ∀ k, ℓ (w1 k) = (Fin.snoc L A : Fin (e + 1) → HermLine ι) k := by
    intro k
    refine Fin.lastCases ?_ (fun i => ?_) k <;> simp [ℓ, w1]
  have p0 : ∏ k, (n k (w0 k) : ℝ) = 1 := by
    rw [Fin.prod_univ_castSucc]
    simp [n, w0]
  have p1 : ∏ k, (n k (w1 k) : ℝ) = m := by
    rw [Fin.prod_univ_castSucc]
    simp [n, w1]
  rw [h1, hexp, Fintype.sum_eq_add w0 w1 hne hzero, p0, p1]
  simp only [e0, e1, one_mul]

end RootFieldNumerics.EffN
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.FlagImmersions.ExistsSmooth =====

-- ===== clump member: Development.WeilBound.CoreStatements.FlagImmersions.IntersectionSectionLogIntegral =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.FlagImmersions.IntersectionSectionLogIntegral", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MultihomogeneousIdeals.ExistsUniqueStatement\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterNamed\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovGeometry.KleimanNefness.KleimanSt\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ArithIntersectionDivisorSupport\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ArithIntersectionSectionRecursion\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ArithmeticHilbertSamuelLowerBound\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ChartLatticePowerSection\npublic import Development.WeilBound.CoreStatements.FlagImmersions.ExistsSmooth\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

theorem RootFieldNumerics.intersection_section_log_integral : ReciprocityTheory.ChartRestriction.G.ArakelovGeometry.KH.KleimanNefFStatement → (∀ (K : Type) [Fintype K] (ι : K → Type) [∀ k, Fintype (ι k)], ReciprocityTheory.ChartRestriction.G.AI.I1.ExistsUniqueStatement ℚ ι) → ReciprocityTheory.ChartRestriction.G.Geo.DivSuppArithStatement → ∀ II : IntersectionSystem, IsFullIntersectionSystem II → ∀ (K : Type) [Fintype K] (ι : K → Type) [∀ k, Fintype (ι k)] (Ω : Type) [Field Ω] (y : (Σ k, ι k) → Ω) (e : ℕ) (L : Fin e → HermLine ι) (A : HermLine ι) (s : Ω), IsArithVar (mCoordIdeal y) (e + 2) → Birational y → (∀ j, IsSmoothHerm (L j)) → IsSmoothHerm A → s ≠ 0 → s ∈ chartLatNm y A.a 1 → (∀ j W', IsArithVar W' 2 → mCoordIdeal y ≤ W' → 0 ≤ geomDeg W' (L j) 1) → 0 ≤ ptsIntegral (mCoordIdeal y) (fun j z => Real.log (((Fin.snoc L A : Fin (e + 1) → HermLine ι) j).h z)) (fun _ => 1) := by
  intro hK hEU hDiv II hII K _ ι _ Ω _ y e L A s hV hB hL hA hs hsA hgeo
  have hW : ∀ W : Ideal (MRing ι), IsArithVar W (e + 1) → mCoordIdeal y ≤ W →
      0 ≤ ptsIntegral W (fun j z => Real.log ((L j).h z)) (fun _ => 1) := by
    intro W hW hle
    exact _root_.GlobalTheory.CompanionTheory.Ar.Top.kleiman_generic_fibre_integral hK hEU hDiv II hII K ι W e L hW hL
      (fun j W' hW' hle' => hgeo j W' hW' (le_trans hle hle'))
  obtain ⟨b, c, hc0, hc⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Top.exists_mul_pow_mem_chartLat_of_mem_chartLatNm K ι Ω y (e + 2) A.a s hV hB hsA
  obtain ⟨B, hBs, hBa⟩ := RootFieldNumerics.EffN.exists_smooth (ι := ι) b
  have key : ∀ n : ℕ, 0 ≤ ptsIntegral (mCoordIdeal y)
      (fun j z => Real.log (((Fin.snoc L B : Fin (e + 1) → HermLine ι) j).h z)) (fun _ => 1)
      + (n : ℝ) * ptsIntegral (mCoordIdeal y)
      (fun j z => Real.log (((Fin.snoc L A : Fin (e + 1) → HermLine ι) j).h z)) (fun _ => 1) := by
    intro n
    obtain ⟨C, hCs, hCa⟩ := RootFieldNumerics.EffN.exists_smooth (ι := ι) (b + n • A.a)
    have hCa' : C.a = B.a + (n : ℤ) • A.a := by rw [hCa, hBa, natCast_zsmul]
    have hmem : c * s ^ n ∈ chartLat y C.a 1 := by rw [hCa]; exact hc n
    have h0 := _root_.GlobalTheory.CompanionTheory.Ar.Top.eff_lat II hII hDiv K ι Ω y e L C (c * s ^ n) hV hB hL hCs
      (mul_ne_zero hc0 (pow_ne_zero _ hs)) hmem hW
    rw [RootFieldNumerics.EffN.last_lin II hII (mCoordIdeal y) e hV L A B C (n : ℤ) hL hA hBs hCs hCa'] at h0
    simpa using h0
  set PB := ptsIntegral (mCoordIdeal y)
    (fun j z => Real.log (((Fin.snoc L B : Fin (e + 1) → HermLine ι) j).h z)) (fun _ => 1)
  set PA := ptsIntegral (mCoordIdeal y)
    (fun j z => Real.log (((Fin.snoc L A : Fin (e + 1) → HermLine ι) j).h z)) (fun _ => 1)
  by_contra hneg
  push_neg at hneg
  have hpos : 0 < -PA := by linarith
  obtain ⟨n, hn⟩ := exists_nat_gt (PB / -PA)
  have h1 := (div_lt_iff₀ hpos).mp hn
  have h2 := key n
  have h3 : (n : ℝ) * -PA = -((n : ℝ) * PA) := by ring
  linarith
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.FlagImmersions.IntersectionSectionLogIntegral =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ArithIntersectionSectionBound =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ArithIntersectionSectionBound", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MultihomogeneousIdeals.ExistsUniqueStatement\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterNamed\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovGeometry.KleimanNefness.KleimanSt\npublic import Development.WeilBound.CoreStatements.FlagImmersions.IntersectionSectionLogIntegral\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace GlobalTheory.CompanionTheory.Ar.Top

theorem effective_mul_nef_nonneg : ReciprocityTheory.ChartRestriction.G.ArakelovGeometry.KH.KleimanNefFStatement → (∀ (K : Type) [Fintype K] (ι : K → Type) [∀ k, Fintype (ι k)], ReciprocityTheory.ChartRestriction.G.AI.I1.ExistsUniqueStatement ℚ ι) → ReciprocityTheory.ChartRestriction.G.Geo.DivSuppArithStatement → ∀ II : IntersectionSystem, IsFullIntersectionSystem II → ∀ (K : Type) [Fintype K] (ι : K → Type) [∀ k, Fintype (ι k)] (Ω : Type) [Field Ω] (y : (Σ k, ι k) → Ω) (e : ℕ) (L : Fin e → HermLine ι) (A : HermLine ι) (s : Ω), IsArithVar (mCoordIdeal y) (e + 2) → Birational y → (∀ j, IsSmoothHerm (L j)) → IsSmoothHerm A → s ≠ 0 → s ∈ chartLatNm y A.a 1 → (∀ j W', IsArithVar W' 2 → mCoordIdeal y ≤ W' → 0 ≤ geomDeg W' (L j) 1) → 0 ≤ ptsIntegral (mCoordIdeal y) (fun j z => Real.log (((Fin.snoc L A : Fin (e + 1) → HermLine ι) j).h z)) (fun _ => 1) :=
  @RootFieldNumerics.intersection_section_log_integral

end GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ArithIntersectionSectionBound =====

-- ===== clump member: Development.WeilBound.CoreStatements.FlagImmersions.TowerRationalWeightBound =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.FlagImmersions.TowerRationalWeightBound", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MultihomogeneousIdeals.ExistsUniqueStatement\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterNamed\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovGeometry.KleimanNefness.KleimanSt\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Proportional\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ArithIntersectionDivisorSupport\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ArithIntersectionSectionBound\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Birational\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.CurveDegreeLinearNefCone\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RationalWeightIntegralCoeffs\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RootModelLogIntegralFormula\nimport Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.LogIntegralMultilinear\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

noncomputable section

namespace RootFieldNumerics.DegB

section Lines

variable {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)]

theorem smooth_comb {J : Type} [Fintype J] {ℓ : J → HermLine ι} (hℓ : ∀ j, IsSmoothHerm (ℓ j))
    (n : J → ℤ) : IsSmoothHerm (combLine ℓ n) := by
  refine contDiffOn_prod fun a _ => ?_
  intro z hz
  have h0 : (ℓ a).h z ≠ 0 := ((ℓ a).pos z hz).ne'
  have hf := hℓ a z hz
  cases n a with
  | ofNat k => simpa only [Int.ofNat_eq_natCast, zpow_natCast] using hf.pow k
  | negSucc k =>
    simp only [zpow_negSucc]
    exact (hf.pow (k + 1)).inv (pow_ne_zero _ h0)

theorem geomDeg_comb (II : IntersectionSystem) (hII : IsFullIntersectionSystem II) {J : Type} [Fintype J]
    {ℓ : J → HermLine ι} (hℓ : ∀ j, IsSmoothHerm (ℓ j)) (n : J → ℤ) (W : Ideal (MRing ι))
    (hW : IsArithVar W 2) :
    geomDeg W (combLine ℓ n) 1 = ∑ j, (n j : ℝ) * geomDeg W (ℓ j) 1 := by
  classical
  have h := (_root_.GlobalTheory.CompanionTheory.Ar.Top.geo_multilin II hII K ι W 1 J ℓ (fun _ => n) hW hℓ).1
  unfold geomDeg
  rw [h]
  refine Fintype.sum_equiv (Equiv.funUnique (Fin 1) J) _ _ fun w => ?_
  have hw : ∀ k : Fin 1, w k = w default := fun k => by rw [Subsingleton.elim k default]
  simp only [hw, Equiv.funUnique_apply, Finset.prod_const, Finset.card_univ, Fintype.card_fin, pow_one]

end Lines

variable {Ψ : Type} [Fintype Ψ] {N : ℕ}

theorem smooth_line (M : RootModel Ψ N) (t : ℝ) (r : Option (Ψ × Fin N)) : IsSmoothHerm (M.line t r) := by
  cases r with
  | none => exact M.A_smooth
  | some r => exact M.x_smooth t r

theorem coef_smul (M : RootModel Ψ N) (lam : Wt Ψ N) (s q : ℝ) (j : Option (Ψ × Fin N)) :
    M.coef (q • lam) (q * s) j = q * M.coef lam s j := by
  cases j with
  | none => simp only [RootModel.coef]; ring
  | some r => simp only [RootModel.coef, Pi.smul_apply, smul_eq_mul]; ring

theorem linRoot_smul (lam : Wt Ψ N) (q : ℝ) : linRoot (q • lam) = C q * linRoot lam := by
  simp only [linRoot, Pi.smul_apply, smul_eq_mul, map_mul, mul_neg, Finset.mul_sum, mul_assoc]

theorem linRoot_sub (lam mu : Wt Ψ N) : linRoot (lam - mu) = linRoot lam - linRoot mu := by
  simp only [linRoot, Pi.sub_apply, map_sub, sub_mul, Finset.sum_sub_distrib]
  ring

theorem linA_smul (lam : Wt Ψ N) (s q : ℝ) : linA (q • lam) (q * s) = C q * linA lam s := by
  simp only [linA, toA, linRoot_smul, map_mul, rename_C]
  ring

theorem linA_diff (lam nu : Wt Ψ N) (s : ℝ) :
    linA lam 0 - linA (lam - s • nu) s = C s * linA nu (-1) := by
  simp only [linA, toA, linRoot_sub, linRoot_smul, map_mul, map_sub, rename_C, map_neg, map_one, map_zero]
  ring

theorem geo_mixed (II : IntersectionSystem) (hII : IsFullIntersectionSystem II) (M : RootModel Ψ N) (D : ℕ)
    (hD : dimFl Ψ N = D) (lam : Fin D → Wt Ψ N) (s : Fin D → ℝ) (q : Fin D → ℕ)
    (n : Fin D → Option (Ψ × Fin N) → ℤ) (hn : ∀ k j, (n k j : ℝ) = q k * M.coef (lam k) (s k) j) :
    ptsIntegral M.P (fun k z => Real.log ((combLine (M.line 1) (n k)).h z)) (fun _ => 1) =
      (M.δ * ∏ k, (q k : ℝ)) * M.geoFun (∏ k, linA (lam k) (s k)) := by
  subst hD
  have h := _root_.GlobalTheory.CompanionTheory.Ar.Top.geoFun_comb_mixed II hII Ψ N M 1 (fun k => (q k : ℝ) • lam k) (fun k => q k * s k) 1 n
    (fun k j => by rw [coef_smul, hn]; simp)
  rw [h]
  simp only [linA_smul, Finset.prod_mul_distrib]
  rw [← map_prod C, C_mul', map_smul]
  simp only [Nat.cast_one, one_pow, smul_eq_mul]
  ring

theorem nef_comb (II : IntersectionSystem) (hII : IsFullIntersectionSystem II) (M : RootModel Ψ N)
    {lam : Wt Ψ N} {s : ℝ} {q : ℕ} {n : Option (Ψ × Fin N) → ℤ} (hn : ∀ j, (n j : ℝ) = q * M.coef lam s j)
    (h : M.NefGen lam s) (W : Ideal (MRing M.ι)) (hW : IsArithVar W 2) (hP : M.P ≤ W) :
    0 ≤ geomDeg W (combLine (M.line 1) n) 1 := by
  rw [geomDeg_comb II hII (_root_.RootFieldNumerics.GeoComb.line_smooth M 1) n W hW]
  simp only [hn, mul_assoc, ← Finset.mul_sum]
  exact mul_nonneg (Nat.cast_nonneg q) (h W hW hP)

theorem prod_ite_lt {R : Type*} [CommMonoid R] (x y : R) (e i : ℕ) (hi : i ≤ e) :
    ∏ k : Fin e, (if (k : ℕ) < i then x else y) = x ^ i * y ^ (e - i) := by
  obtain ⟨j, rfl⟩ := Nat.exists_eq_add_of_le hi
  rw [Fin.prod_univ_add]
  simp

section Main

variable (hK : ReciprocityTheory.ChartRestriction.G.ArakelovGeometry.KH.KleimanNefFStatement)
  (hE : ∀ (K : Type) [Fintype K] (ι : K → Type) [∀ k, Fintype (ι k)],
    ReciprocityTheory.ChartRestriction.G.AI.I1.ExistsUniqueStatement ℚ ι)
  (hS : ReciprocityTheory.ChartRestriction.G.Geo.DivSuppArithStatement) (II : IntersectionSystem) (hII : IsFullIntersectionSystem II)
include hK hE hS hII

theorem nef_prod (M : RootModel Ψ N) (lam : Fin (dimFl Ψ N) → Wt Ψ N) (s : Fin (dimFl Ψ N) → ℚ)
    (hr : ∀ k, IsRatWt (lam k)) (hnef : ∀ k, M.NefGen (lam k) (s k)) :
    0 ≤ M.geoFun (∏ k, linA (lam k) (s k)) := by
  choose q n hq hn using fun k => _root_.GlobalTheory.CompanionTheory.Ar.Top.clear_rat_weight_coef Ψ N M (lam k) (s k) (hr k)
  have h1 := geo_mixed II hII M _ rfl lam (fun k => s k) q n hn
  have h2 := _root_.GlobalTheory.CompanionTheory.Ar.Top.kleiman_generic_fibre_integral hK hE hS II hII M.K M.ι M.P (dimFl Ψ N) (fun k => combLine (M.line 1) (n k))
    M.arith (fun k => smooth_comb (smooth_line M 1) _)
    (fun k W hW hP => nef_comb II hII M (hn k) (hnef k) W hW hP)
  rw [h1] at h2
  have hpos : (0 : ℝ) < M.δ * ∏ k, (q k : ℝ) :=
    mul_pos (Nat.cast_pos.mpr M.δ_pos) (Finset.prod_pos fun k _ => Nat.cast_pos.mpr (hq k))
  exact le_of_mul_le_mul_left (by simpa using h2) hpos

theorem eff_prod (M : RootModel Ψ N) (e : ℕ) (he : dimFl Ψ N = e + 1) (lam : Fin e → Wt Ψ N) (s : Fin e → ℚ)
    (hr : ∀ k, IsRatWt (lam k)) (hnef : ∀ k, M.NefGen (lam k) (s k)) (nu : Wt Ψ N) (hnu : M.EffDiff nu) :
    0 ≤ M.geoFun ((∏ k, linA (lam k) (s k)) * linA nu (-1)) := by
  choose q n hq hn using fun k => _root_.GlobalTheory.CompanionTheory.Ar.Top.clear_rat_weight_coef Ψ N M (lam k) (s k) (hr k)
  obtain ⟨q0, n0, hq0, hn0, σ, hσ0, hσ⟩ := hnu
  have h1 := geo_mixed II hII M (e + 1) he (Fin.snoc lam nu) (Fin.snoc (fun k => (s k : ℝ)) (-1))
    (Fin.snoc q q0) (Fin.snoc n n0) (by
      intro k j
      refine Fin.lastCases ?_ (fun i => ?_) k
      · simpa only [Fin.snoc_last] using hn0 j
      · simpa only [Fin.snoc_castSucc] using hn i j)
  have har : IsArithVar (mCoordIdeal M.y) (e + 2) := by
    have := M.arith
    rwa [he] at this
  have h2 := _root_.GlobalTheory.CompanionTheory.Ar.Top.effective_mul_nef_nonneg hK hE hS II hII M.K M.ι M.Ω M.y e (fun k => combLine (M.line 1) (n k))
    (combLine (M.line 1) n0) σ har M.birational (fun k => smooth_comb (smooth_line M 1) _)
    (_root_.GlobalTheory.CompanionTheory.Ar.Top.GeoMix.smooth_comb (_root_.RootFieldNumerics.GeoComb.line_smooth M 1) _) hσ0 hσ
    (fun k W hW hP => nef_comb II hII M (hn k) (hnef k) W hW hP)
  have h3 : (Fin.snoc (fun k => combLine (M.line 1) (n k)) (combLine (M.line 1) n0) :
      Fin (e + 1) → HermLine M.ι) = fun k =>
        combLine (M.line 1) ((Fin.snoc n n0 : Fin (e + 1) → Option (Ψ × Fin N) → ℤ) k) := by
    funext k
    refine Fin.lastCases ?_ (fun i => ?_) k
    · simp only [Fin.snoc_last]
    · simp only [Fin.snoc_castSucc]
  rw [h3] at h2
  have h4 := h2.trans_eq h1
  simp only [Fin.prod_univ_castSucc, Fin.snoc_last, Fin.snoc_castSucc] at h4
  have hpos : (0 : ℝ) < M.δ * ((∏ k, (q k : ℝ)) * q0) :=
    mul_pos (Nat.cast_pos.mpr M.δ_pos)
      (mul_pos (Finset.prod_pos fun k _ => Nat.cast_pos.mpr (hq k)) (Nat.cast_pos.mpr hq0))
  exact le_of_mul_le_mul_left (by simpa using h4) hpos

end Main

end RootFieldNumerics.DegB

open RootFieldNumerics.DegB in
theorem RootFieldNumerics.tower_rational_weight_bound : ReciprocityTheory.ChartRestriction.G.ArakelovGeometry.KH.KleimanNefFStatement → (∀ (K : Type) [Fintype K] (ι : K → Type) [∀ k, Fintype (ι k)], ReciprocityTheory.ChartRestriction.G.AI.I1.ExistsUniqueStatement ℚ ι) → ReciprocityTheory.ChartRestriction.G.Geo.DivSuppArithStatement → ∀ II : IntersectionSystem, IsFullIntersectionSystem II → ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (T : RootTower Ψ N), T.Proportional → T.I7 → ∀ (B : ℕ) (c : T.Comp) (lam : Wt Ψ N) (s : ℚ), IsRatWt lam → 0 ≤ s → Dominant lam → Dominant (T.lamS lam s) → 0 ≤ T.mDeg B c lam s ∧ T.mDeg B c lam s ≤ T.vol c * flagDeg lam := by
  intro hK hE hS II hII Ψ _ _ N T hP h7 B c lam s hr hs hd hd'
  obtain ⟨h71, h72, h73⟩ := h7 B c
  have hs' : (0 : ℝ) ≤ s := by exact_mod_cast hs
  have hr' : IsRatWt (T.lamS lam s) := by
    intro τ i
    obtain ⟨a, ha⟩ := hr τ i
    obtain ⟨b, hb⟩ := T.nu_rat τ i
    refine ⟨a - s * b, ?_⟩
    simp only [RootTower.lamS, Pi.sub_apply, Pi.smul_apply, smul_eq_mul, ha, hb]
    push_cast
    rfl
  have hnM : (T.M B c).NefGen (T.lamS lam s) s :=
    (_root_.GlobalTheory.CompanionTheory.Ar.Top.curveDeg_linear_nef Ψ N (T.M B c) (T.lamS lam s) 0 s 0 0).2.2.2 hs' (h71 _ hd') h72
  have hnL : (T.M B c).NefGen lam ((0 : ℚ) : ℝ) := by simpa using h71 _ hd
  have hL : T.vol c * flagDeg lam = (T.M B c).geoFun (linA lam 0 ^ dimFl Ψ N) := by
    rw [flagDeg, ← hP.2.1 B c]
    simp [linA, toA]
  refine ⟨?_, ?_⟩
  · have := nef_prod hK hE hS II hII (T.M B c) (fun _ => T.lamS lam s) (fun _ => s) (fun _ => hr')
      (fun _ => hnM)
    simpa [RootTower.mDeg] using this
  · rw [hL, RootTower.mDeg, ← sub_nonneg, ← map_sub]
    rcases he : dimFl Ψ N with _ | e
    · simp
    · rw [← geom_sum₂_mul]
      have hdiff : linA lam 0 - linA (T.lamS lam s) s = C (s : ℝ) * linA T.nu (-1) := linA_diff _ _ _

      rw [hdiff, Finset.sum_mul, map_sum]
      refine Finset.sum_nonneg fun i hi => ?_
      have hie : i ≤ e := Nat.lt_succ_iff.mp (Finset.mem_range.mp hi)
      have h := eff_prod hK hE hS II hII (T.M B c) e he
        (fun k => if (k : ℕ) < i then lam else T.lamS lam s) (fun k => if (k : ℕ) < i then 0 else s)
        (fun k => by split_ifs <;> assumption) (fun k => by split_ifs <;> assumption) T.nu h73
      have hp : ∏ k : Fin e, linA (if (k : ℕ) < i then lam else T.lamS lam s)
          ((if (k : ℕ) < i then 0 else s : ℚ) : ℝ) =
          linA lam 0 ^ i * linA (T.lamS lam s) s ^ (e - i) := by
        rw [← prod_ite_lt _ _ e i hie]
        refine Finset.prod_congr rfl fun k _ => ?_
        split_ifs <;> simp
      rw [hp] at h
      rw [mul_left_comm, C_mul', map_smul, smul_eq_mul]
      exact mul_nonneg hs' (by simpa using h)
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.FlagImmersions.TowerRationalWeightBound =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerComponentHeightBound =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerComponentHeightBound", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MultihomogeneousIdeals.ExistsUniqueStatement\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterNamed\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovGeometry.KleimanNefness.KleimanSt\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Proportional\npublic import Development.WeilBound.CoreStatements.FlagImmersions.TowerRationalWeightBound\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace GlobalTheory.CompanionTheory.Ar.Top

theorem deg_bounds : ReciprocityTheory.ChartRestriction.G.ArakelovGeometry.KH.KleimanNefFStatement → (∀ (K : Type) [Fintype K] (ι : K → Type) [∀ k, Fintype (ι k)], ReciprocityTheory.ChartRestriction.G.AI.I1.ExistsUniqueStatement ℚ ι) → ReciprocityTheory.ChartRestriction.G.Geo.DivSuppArithStatement → ∀ II : IntersectionSystem, IsFullIntersectionSystem II → ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (T : RootTower Ψ N), T.Proportional → T.I7 → ∀ (B : ℕ) (c : T.Comp) (lam : Wt Ψ N) (s : ℚ), IsRatWt lam → 0 ≤ s → Dominant lam → Dominant (T.lamS lam s) → 0 ≤ T.mDeg B c lam s ∧ T.mDeg B c lam s ≤ T.vol c * flagDeg lam :=
  RootFieldNumerics.tower_rational_weight_bound

end GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerComponentHeightBound =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ZhangLowerBoundRational =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ZhangLowerBoundRational", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterNamed\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Birational\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RationalWeightIntegralCoeffs\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RootModelArithIntersectionFormula\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RootModelCurveDegreeNef\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RootModelLogIntegralFormula\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RootModelPointHeightDegree\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RootModelSemipositiveConj\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace GlobalTheory.CompanionTheory.Ar.Top

theorem zhang_lower_bound_root_model : SuccessiveMinimaLowerBound → ∀ II : IntersectionSystem, IsFullIntersectionSystem II →
    ∀ (Ψ : Type) [Fintype Ψ] (N : ℕ) (M : RootModel Ψ N) (t : ℝ) (lam : Wt Ψ N) (s : ℚ) (e : ℝ), IsRatWt lam →
      M.Semipos t lam s → M.NefFib lam s → (∀ W, M.IsPt W → e ≤ M.ht II t lam s W) →
      ((dimFl Ψ N : ℝ) + 1) * e * M.geoFun (linA lam s ^ dimFl Ψ N) ≤
        M.arFun II t (linA lam s ^ (dimFl Ψ N + 1)) := by
  intro hZ1 II hII Ψ _ N M t lam s e hrat hsemi hnef hpts
  obtain ⟨q, n, hq, hn⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Top.clear_rat_weight_coef Ψ N M lam s hrat
  have hp := _root_.GlobalTheory.CompanionTheory.Ar.Top.semipositive_integral_multiple Ψ N M t lam s q n hn hsemi
  have hnf := (_root_.GlobalTheory.CompanionTheory.Ar.Top.nefFib_integral_multiple Ψ N M t lam s q n hn).2 hnef
  have hW : ∀ W, IsArithVar W 1 → M.P ≤ W →
      ((q : ℝ) * e) * degC W ≤ II M.K M.ι W 1 ![combLine (M.line t) n] := by
    intro W h1 h2
    have hpt : M.IsPt W := ⟨h1, h2⟩
    obtain ⟨hd, hI⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Top.ht_combLine_integral_multiple II hII Ψ N M t lam s q n W hn hpt
    rw [hI]
    have hq' : (0 : ℝ) ≤ q := Nat.cast_nonneg q
    have hd' : (0 : ℝ) ≤ degC W := Nat.cast_nonneg _
    exact mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left (hpts W hpt) hq') hd'
  have key := hZ1 M.K M.ι M.P M.P (dimFl Ψ N) (combLine (M.line t) n) ((q : ℝ) * e) II hII.1 M.arith le_rfl
    hp.1 hnf hp.2 hW
  have hgeo : geomDeg M.P (combLine (M.line t) n) (dimFl Ψ N) =
      (M.δ : ℝ) * (q : ℝ) ^ dimFl Ψ N * M.geoFun (linA lam s ^ dimFl Ψ N) := by
    have := _root_.GlobalTheory.CompanionTheory.Ar.Top.geoFun_comb_mixed II hII Ψ N M t (fun _ => lam) (fun _ => (s : ℝ)) q (fun _ => n) (fun _ j => hn j)
    simpa [geomDeg, Finset.prod_const] using this
  rw [hgeo, _root_.GlobalTheory.CompanionTheory.Ar.Top.top_comb_eq_arFun II hII Ψ N M t lam s q n hn] at key
  have hδ : (0 : ℝ) < M.δ := by exact_mod_cast M.δ_pos
  have hq0 : (0 : ℝ) < q := by exact_mod_cast hq
  have hc : (0 : ℝ) < (M.δ : ℝ) * (q : ℝ) ^ (dimFl Ψ N + 1) := by positivity
  refine le_of_mul_le_mul_left ?_ hc
  calc (M.δ : ℝ) * (q : ℝ) ^ (dimFl Ψ N + 1) * (((dimFl Ψ N : ℝ) + 1) * e * M.geoFun (linA lam s ^ dimFl Ψ N))
      = ((dimFl Ψ N + 1 : ℕ) : ℝ) * ((q : ℝ) * e) *
          ((M.δ : ℝ) * (q : ℝ) ^ dimFl Ψ N * M.geoFun (linA lam s ^ dimFl Ψ N)) := by
        push_cast; ring
    _ ≤ _ := key

end GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ZhangLowerBoundRational =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ZhangUpperBoundDensePoints =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ZhangUpperBoundDensePoints", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterNamed\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Birational\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RationalWeightIntegralCoeffs\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RootModelArithIntersectionFormula\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RootModelCurveDegreeNef\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RootModelLogIntegralFormula\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RootModelPointHeightDegree\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RootModelSemipositiveConj\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace GlobalTheory.CompanionTheory.Ar.Top

theorem zhang_upper_bound_root_model : SuccessiveMinimaUpperBound → ∀ II : IntersectionSystem, IsFullIntersectionSystem II → ∀ (Ψ : Type) [Fintype Ψ] (N : ℕ) (M : RootModel Ψ N) (t : ℝ) (lam : Wt Ψ N) (s : ℚ) (e : ℝ) (F : Set (Ideal (MRing M.ι))), IsRatWt lam → M.Semipos t lam s → M.NefFib lam s → IsZariskiDense M.P F → (∀ W ∈ F, M.IsPt W ∧ M.ht II t lam s W ≤ e) → M.arFun II t (linA lam s ^ (dimFl Ψ N + 1)) ≤ ((dimFl Ψ N : ℝ) + 1) * e * M.geoFun (linA lam s ^ dimFl Ψ N) := by
  intro hZ II hII Ψ _ N M t lam s e F hrat hsp hnef hF hpt
  obtain ⟨q, n, hq, hn⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Top.clear_rat_weight_coef Ψ N M lam s hrat
  have hsemi := _root_.GlobalTheory.CompanionTheory.Ar.Top.semipositive_integral_multiple Ψ N M t lam s q n hn hsp
  have hnf := (_root_.GlobalTheory.CompanionTheory.Ar.Top.nefFib_integral_multiple Ψ N M t lam s q n hn).2 hnef
  have hA := _root_.GlobalTheory.CompanionTheory.Ar.Top.top_comb_eq_arFun II hII Ψ N M t lam s q n hn
  have hG := _root_.GlobalTheory.CompanionTheory.Ar.Top.geoFun_comb_mixed II hII Ψ N M t (fun _ => lam) (fun _ => (s : ℝ)) q (fun _ => n)
    (fun _ j => hn j)
  have hGeo : geomDeg M.P (combLine (M.line t) n) (dimFl Ψ N) =
      M.δ * (q : ℝ) ^ dimFl Ψ N * M.geoFun (linA lam s ^ dimFl Ψ N) := by
    have hprod : (∏ _k : Fin (dimFl Ψ N), linA lam (s : ℝ)) = linA lam s ^ dimFl Ψ N := by
      simp
    rw [hprod] at hG
    exact hG
  have key := hZ M.K M.ι M.P M.P (dimFl Ψ N) (combLine (M.line t) n) ((q : ℝ) * e) F II hII.1
    M.arith le_rfl hsemi.1 hnf hsemi.2
    (by
      intro W hW
      obtain ⟨hp, hle⟩ := hpt W hW
      obtain ⟨-, hI⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Top.ht_combLine_integral_multiple II hII Ψ N M t lam s q n W hn hp
      refine ⟨hp.1, hp.2, ?_⟩
      rw [hI]
      exact mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hle (Nat.cast_nonneg q))
        (Nat.cast_nonneg _))
    hF
  rw [hA, hGeo] at key
  have hqR : (0 : ℝ) < q := Nat.cast_pos.mpr hq
  have hδ : (0 : ℝ) < M.δ := Nat.cast_pos.mpr M.δ_pos
  have hpos : (0 : ℝ) < M.δ * (q : ℝ) ^ (dimFl Ψ N + 1) := mul_pos hδ (pow_pos hqR _)
  refine le_of_mul_le_mul_left ?_ hpos
  calc _ ≤ _ := key
    _ = _ := by push_cast; ring

end GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ZhangUpperBoundDensePoints =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerGapHeightUniformBound =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerGapHeightUniformBound", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterNamed\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Proportional\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Birational\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ZhangLowerBoundRational\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ZhangUpperBoundDensePoints\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace GlobalTheory.CompanionTheory.Ar.Top

theorem l1_le_card_mul_of_norm_le_one {Ψ : Type} [Fintype Ψ] {N : ℕ} (lam : Wt Ψ N) (h : ‖lam‖ ≤ 1) :
    l1 lam ≤ (Fintype.card Ψ : ℝ) * N := by
  have hb : ∀ τ i, |lam τ i| ≤ 1 := fun τ i => by
    have h1 : ‖lam τ‖ ≤ ‖lam‖ := norm_le_pi_norm lam τ
    have h2 : ‖lam τ i‖ ≤ ‖lam τ‖ := norm_le_pi_norm (lam τ) i
    rw [← Real.norm_eq_abs]; linarith
  unfold l1
  calc ∑ τ, ∑ i, |lam τ i| ≤ ∑ _τ : Ψ, ∑ _i : Fin N, (1 : ℝ) :=
        Finset.sum_le_sum fun τ _ => Finset.sum_le_sum fun i _ => hb τ i
    _ = (Fintype.card Ψ : ℝ) * N := by simp

theorem RootTower.isRatWt_lamS {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {N : ℕ} (T : RootTower Ψ N) {lam : Wt Ψ N}
    (s : ℚ) (h : IsRatWt lam) : IsRatWt (T.lamS lam s) := by
  intro τ i
  obtain ⟨q1, h1⟩ := h τ i
  obtain ⟨q2, h2⟩ := T.nu_rat τ i
  refine ⟨q1 - s * q2, ?_⟩
  simp only [RootTower.lamS, Pi.sub_apply, Pi.smul_apply, smul_eq_mul, h1, h2]
  push_cast; ring

theorem mbarTop_squeeze : SuccessiveMinimaLowerBound → SuccessiveMinimaUpperBound → ∀ II : IntersectionSystem, IsFullIntersectionSystem II →
    ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (T : RootTower Ψ N), T.I3 → T.I5 II → T.I6 II →
    ∀ c₀ > (0 : ℝ), ∃ θ₀ > (0 : ℝ), ∃ C : ℝ, 0 ≤ C ∧ ∀ B : ℕ, 2 ≤ B → ∀ (c : T.Comp) (lam : Wt Ψ N) (θ : ℝ) (s : ℚ),
      IsRatWt lam → ‖lam‖ ≤ 1 → 0 < θ → θ ≤ θ₀ → (s : ℝ) = θ ^ 2 → (∀ τ, θ ≤ gap T.j lam τ) →
      CompactGapsGE T.j c₀ lam → Dominant (T.lamS lam s) → NefThreshold T.j B (T.lamS lam s) →
      0 ≤ T.mDeg B c lam s →
      |T.mbarTop II B c lam s| ≤ C * Real.log (B / (s : ℝ)) * T.mDeg B c lam s := by
  intro hZ1 hZ2 II hII Ψ _ _ N T hI3 hI5 hI6 c₀ hc₀
  obtain ⟨s₀, hs₀, h3⟩ := hI3 ((Fintype.card Ψ : ℝ) * N)
  obtain ⟨θ₅, hθ₅, C₅, h5⟩ := hI5 c₀ hc₀
  obtain ⟨θ₆, hθ₆, C₆, h6⟩ := hI6 c₀ hc₀
  have hD : (0 : ℝ) ≤ (dimFl Ψ N : ℝ) + 1 := by positivity
  refine ⟨min (min θ₅ θ₆) (min 1 s₀), lt_min (lt_min hθ₅ hθ₆) (lt_min one_pos hs₀),
    ((dimFl Ψ N : ℝ) + 1) * (max C₅ 0 + max C₆ 0),
    mul_nonneg hD (add_nonneg (le_max_right _ _) (le_max_right _ _)), ?_⟩
  intro B hB c lam θ s hrat hnorm hθ hθ₀ hs hgap hcg hdom hnef hdeg
  have hθ1 : θ ≤ 1 := le_trans hθ₀ (le_trans (min_le_right _ _) (min_le_left _ _))
  have hθs : θ ≤ s₀ := le_trans hθ₀ (le_trans (min_le_right _ _) (min_le_right _ _))
  have hθ5 : θ ≤ θ₅ := le_trans hθ₀ (le_trans (min_le_left _ _) (min_le_left _ _))
  have hθ6 : θ ≤ θ₆ := le_trans hθ₀ (le_trans (min_le_left _ _) (min_le_right _ _))
  have hspos : (0 : ℝ) < s := by rw [hs]; positivity
  have hs1 : (s : ℝ) ≤ 1 := by rw [hs]; nlinarith
  have hss₀ : (s : ℝ) ≤ s₀ := by rw [hs]; nlinarith
  have hl1 : l1 lam ≤ (Fintype.card Ψ : ℝ) * N := l1_le_card_mul_of_norm_le_one lam hnorm
  obtain ⟨hNef, hSemi⟩ := h3 B hB c lam (s : ℝ) hl1 hspos hss₀ hdom hnef
  have hrat' : IsRatWt (T.lamS lam s) := RootTower.isRatWt_lamS T s hrat
  have hlow := h5 B hB c lam θ s hrat hnorm hθ hθ5 hs hgap hcg
  obtain ⟨F, hF, hFpt⟩ := h6 B hB c lam θ s hrat hnorm hθ hθ6 hs hgap hcg
  have hL : ((dimFl Ψ N : ℝ) + 1) * (-(C₅ * Real.log (B / (s : ℝ)))) * T.mDeg B c lam s ≤
      T.mbarTop II B c lam s :=
    _root_.GlobalTheory.CompanionTheory.Ar.Top.zhang_lower_bound_root_model hZ1 II hII Ψ N (T.M B c) (scale s) (T.lamS lam s) s (-(C₅ * Real.log (B / (s : ℝ))))
      hrat' hSemi hNef (fun W hW => hlow W hW)
  have hU : T.mbarTop II B c lam s ≤
      ((dimFl Ψ N : ℝ) + 1) * (C₆ * Real.log B) * T.mDeg B c lam s :=
    _root_.GlobalTheory.CompanionTheory.Ar.Top.zhang_upper_bound_root_model hZ2 II hII Ψ N (T.M B c) (scale s) (T.lamS lam s) s (C₆ * Real.log B) F
      hrat' hSemi hNef hF (fun W hW => hFpt W hW)
  have hBpos : (0 : ℝ) < B := by exact_mod_cast (by omega : 0 < B)
  have hlogB : 0 ≤ Real.log B := Real.log_nonneg (by exact_mod_cast (by omega : 1 ≤ B))
  have hlogBs : Real.log B ≤ Real.log (B / (s : ℝ)) :=
    Real.log_le_log hBpos (by rw [le_div_iff₀ hspos]; nlinarith)
  have hLg : 0 ≤ Real.log (B / (s : ℝ)) := le_trans hlogB hlogBs
  have hP : 0 ≤ ((dimFl Ψ N : ℝ) + 1) * Real.log (B / (s : ℝ)) * T.mDeg B c lam s :=
    mul_nonneg (mul_nonneg hD hLg) hdeg
  have hQ : 0 ≤ ((dimFl Ψ N : ℝ) + 1) * Real.log B * T.mDeg B c lam s :=
    mul_nonneg (mul_nonneg hD hlogB) hdeg
  have hQP : ((dimFl Ψ N : ℝ) + 1) * Real.log B * T.mDeg B c lam s ≤
      ((dimFl Ψ N : ℝ) + 1) * Real.log (B / (s : ℝ)) * T.mDeg B c lam s :=
    mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hlogBs hD) hdeg
  have k1 := mul_le_mul_of_nonneg_right
    (show C₅ ≤ max C₅ 0 + max C₆ 0 by linarith [le_max_left C₅ 0, le_max_right C₆ 0]) hP
  have k2 := mul_le_mul_of_nonneg_right (le_max_left C₆ 0) hQ
  have k3 := mul_le_mul_of_nonneg_left hQP (le_max_right C₆ 0)
  have k4 := mul_le_mul_of_nonneg_right
    (show max C₆ 0 ≤ max C₅ 0 + max C₆ 0 by linarith [le_max_right C₅ 0]) hP
  rw [abs_le]
  constructor
  · nlinarith
  · nlinarith

end GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerGapHeightUniformBound =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerWeilTheorem =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerWeilTheorem", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MultihomogeneousIdeals.ExistsUniqueStatement\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.HeckeSectionsIsotropicCommutatorPairingPower\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterNamed\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovGeometry.KleimanNefness.KleimanSt\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\npublic import Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ArithFunctionalLipschitzWeights\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ContinuousWallBoundExtend\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagDegreeLeGap\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PerturbedWeightGapBounds\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Proportional\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerComponentHeightBound\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerGapHeightUniformBound\npublic import Mathlib.Analysis.Complex.ExponentialBounds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace GlobalTheory.CompanionTheory.Ar.Top

namespace WallBound

variable {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {N : ℕ}

theorem l1_le_card_mul_of_norm_le_one' (lam : Wt Ψ N) (h : ‖lam‖ ≤ 1) : l1 lam ≤ (Fintype.card Ψ : ℝ) * N := by
  have hb : ∀ τ i, |lam τ i| ≤ 1 := fun τ i => by
    have h1 : ‖lam τ‖ ≤ ‖lam‖ := norm_le_pi_norm lam τ
    have h2 : ‖lam τ i‖ ≤ ‖lam τ‖ := norm_le_pi_norm (lam τ) i
    rw [Real.norm_eq_abs] at h2
    linarith
  unfold l1
  calc ∑ τ, ∑ i, |lam τ i| ≤ ∑ _τ : Ψ, ∑ _i : Fin N, (1 : ℝ) :=
        Finset.sum_le_sum fun τ _ => Finset.sum_le_sum fun i _ => hb τ i
    _ = (Fintype.card Ψ : ℝ) * N := by simp

theorem toA_linRoot_pow (lam : Wt Ψ N) (d : ℕ) : toA (linRoot lam ^ d) = linA lam 0 ^ d := by
  simp [toA, linA, map_pow]

theorem continuous_lin_zero (Φ : RPA Ψ N →ₗ[ℝ] ℝ) (d : ℕ)
    (h : Continuous fun z : Wt Ψ N × ℝ => Φ (linA z.1 z.2 ^ d)) :
    Continuous fun lam : Wt Ψ N => Φ (linA lam 0 ^ d) := by
  have hz : Continuous fun lam : Wt Ψ N => ((lam, (0 : ℝ)) : Wt Ψ N × ℝ) :=
    Continuous.prodMk continuous_id continuous_const
  have h2 := h.comp hz
  simp only [Function.comp_def] at h2
  exact h2

theorem continuous_PB (T : RootTower Ψ N) (II : IntersectionSystem) (B : ℕ) :
    Continuous fun lam : Wt Ψ N => T.PB II B lam := by
  obtain ⟨hcont, -, -⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Top.linA_pow_continuous_lipschitz Ψ N (dimFl Ψ N + 1)
  have h : (fun lam : Wt Ψ N => T.PB II B lam) =
      fun lam => ∑ c, (T.M B c).PP II (linA lam 0 ^ (dimFl Ψ N + 1)) := by
    funext lam
    simp only [RootTower.PB, RootTower.PPt, RootTower.PPc, toA_linRoot_pow]
  rw [h]
  exact continuous_finsetSum _ fun c _ => continuous_lin_zero _ _ (hcont _)

theorem one_le_log {B : ℕ} (h : 3 ≤ B) : 1 ≤ Real.log B := by
  have hB : (3 : ℝ) ≤ B := by exact_mod_cast h
  rw [Real.le_log_iff_exp_le (by linarith)]
  have := Real.exp_one_lt_d9
  linarith

theorem log_div_le {B : ℕ} (h : 3 ≤ B) (a : ℝ) (ha : 1 ≤ a) :
    Real.log (B / (a / B) ^ 2) ≤ 3 * Real.log B := by
  have hB : (0 : ℝ) < B := by exact_mod_cast (by omega : 0 < B)
  have ha0 : 0 < a := by linarith
  have h1 : (B : ℝ) / (a / B) ^ 2 ≤ (B : ℝ) ^ 3 := by
    rw [div_pow, div_div_eq_mul_div, div_le_iff₀ (by positivity)]
    have : (1 : ℝ) ≤ a ^ 2 := by nlinarith
    nlinarith [pow_pos hB 3]
  have h2 : 0 < (B : ℝ) / (a / B) ^ 2 := by positivity
  calc Real.log (B / (a / B) ^ 2) ≤ Real.log ((B : ℝ) ^ 3) := Real.log_le_log h2 h1
    _ = 3 * Real.log B := by rw [Real.log_pow]; norm_num

theorem three_terms {q a p cs c3 c2 cp c8 v n θ L Ls md dist s : ℝ} (hcs : 0 ≤ cs) (hc8 : 0 ≤ c8) (hcp : 0 ≤ cp)
    (hv : 0 ≤ v) (hn : 0 ≤ n) (hθ : 0 < θ) (hθ1 : θ ≤ 1) (hL : 1 ≤ L) (hs : s = θ ^ 2)
    (hLs : Ls ≤ 3 * L) (hLs0 : 0 ≤ Ls) (hmd0 : 0 ≤ md) (hmd : md ≤ v * (c8 * (2 * θ)))
    (hsq : |a| ≤ cs * Ls * md) (hap : |a - p| ≤ c3 * s)
    (hpq : |p - q| ≤ cp * (|c2| * L) * (dist + |s - 0|)) (hdist : dist ≤ 2 * θ + n * θ ^ 2) :
    |q| ≤ (|c3| + 6 * cs * c8 * v + cp * |c2| * (3 + n)) * (θ * L) := by
  have hθ2 : θ ^ 2 ≤ θ := by nlinarith
  have hL0 : 0 ≤ L := by linarith
  have hθL : 0 ≤ θ * L := by positivity
  have t1 : |a| ≤ 6 * cs * c8 * v * (θ * L) := by
    have e1 : Ls * md ≤ (3 * L) * (v * (c8 * (2 * θ))) :=
      mul_le_mul hLs hmd hmd0 (by linarith)
    calc |a| ≤ cs * Ls * md := hsq
      _ = cs * (Ls * md) := by ring
      _ ≤ cs * ((3 * L) * (v * (c8 * (2 * θ)))) := mul_le_mul_of_nonneg_left e1 hcs
      _ = 6 * cs * c8 * v * (θ * L) := by ring
  have t2 : |a - p| ≤ |c3| * (θ * L) := by
    have e : s ≤ θ * L := by
      rw [hs]
      nlinarith
    have hs0 : 0 ≤ s := by rw [hs]; positivity
    calc |a - p| ≤ c3 * s := hap
      _ ≤ |c3| * s := mul_le_mul_of_nonneg_right (le_abs_self _) hs0
      _ ≤ |c3| * (θ * L) := mul_le_mul_of_nonneg_left e (abs_nonneg _)
  have t3 : |p - q| ≤ cp * |c2| * (3 + n) * (θ * L) := by
    have hs0 : 0 ≤ s := by rw [hs]; positivity
    have e : dist + |s - 0| ≤ (3 + n) * θ := by
      rw [sub_zero, abs_of_nonneg hs0, hs]
      nlinarith [mul_le_mul_of_nonneg_left hθ2 hn]
    have hk : 0 ≤ cp * (|c2| * L) := by positivity
    calc |p - q| ≤ cp * (|c2| * L) * (dist + |s - 0|) := hpq
      _ ≤ cp * (|c2| * L) * ((3 + n) * θ) := mul_le_mul_of_nonneg_left e hk
      _ = cp * |c2| * (3 + n) * (θ * L) := by ring
  have tri : |q| ≤ |a| + |a - p| + |p - q| := by
    have h1 : q = a - (a - p) - (p - q) := by ring
    calc |q| = |a - (a - p) - (p - q)| := by rw [← h1]
      _ ≤ |a - (a - p)| + |p - q| := abs_sub _ _
      _ ≤ |a| + |a - p| + |p - q| := by gcongr; exact abs_sub _ _
  linarith

end WallBound


open WallBound in
theorem thmW_tower : ReciprocityTheory.ChartRestriction.G.ArakelovGeometry.KH.KleimanNefFStatement →
    (∀ (K : Type) [Fintype K] (ι : K → Type) [∀ k, Fintype (ι k)], ReciprocityTheory.ChartRestriction.G.AI.I1.ExistsUniqueStatement ℚ ι) →
    ReciprocityTheory.ChartRestriction.G.Geo.DivSuppArithStatement → SuccessiveMinimaLowerBound → SuccessiveMinimaUpperBound → ∀ II : IntersectionSystem,
    IsFullIntersectionSystem II → ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (T : RootTower Ψ N),
    T.Proportional → T.I1 II → T.I2 II → T.I3 → T.I5 II → T.I6 II → T.I7 → T.ThmW II := by
  intro hKl hEx hDs hZ1 hZ2 II hII Ψ _ _ N T hP h1 h2 h3 h5 h6 h7 c₀ hc₀
  have hc₁ : 0 < c₀ / 2 := by positivity
  obtain ⟨θ₀, hθ₀, Cs, hCs, hsq⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Top.mbarTop_squeeze hZ1 hZ2 II hII Ψ N T h3 h5 h6 (c₀ / 2) hc₁
  obtain ⟨s₀, hs₀, C3, hI2⟩ := h2 ((Fintype.card Ψ : ℝ) * N)
  obtain ⟨C2, hI1⟩ := h1
  obtain ⟨C8, hC8, hdeg⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Top.flagDeg_le_mul_gap Ψ N T.j T.j_pos T.j_lt
  obtain ⟨-, hlin, Cp, hCp, hLip⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Top.linA_pow_continuous_lipschitz Ψ N (dimFl Ψ N + 1)
  obtain ⟨B₁, hB₁⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Top.hypotheses_hold_for_large_bound Ψ N T (c₀ / 2) (min θ₀ s₀) hc₁ (lt_min hθ₀ hs₀)
  refine ⟨(∑ c, (|C3| + 6 * Cs * C8 * T.vol c + Cp * |C2| * (3 + ‖T.nu‖))) * (5 * Fintype.card Ψ), B₁,
    fun B hB τ₀ lam₀ hlam₀ => ?_⟩
  refine _root_.GlobalTheory.CompanionTheory.Ar.Top.rat_points_suffice_on_walls Ψ N T.j c₀ _ τ₀ (fun l => T.PB II B l) T.j_pos T.j_lt hc₀ (continuous_PB T II B) ?_ lam₀ hlam₀
  intro l hlr hlw
  obtain ⟨hB3, hθ, hθle, hθ1, hnl, hnl2, hgaps, hgap0, hcg, hdom, hdom2, hnef, hdist⟩ := hB₁ B hB τ₀ l hlw
  have hf : (1 : ℝ) ≤ Fintype.card Ψ := by
    have : 0 < Fintype.card Ψ := Fintype.card_pos_iff.mpr ⟨τ₀⟩
    exact_mod_cast this
  have hBpos : (0 : ℝ) < B := by exact_mod_cast (by omega : 0 < B)
  set θ : ℝ := 5 * (Fintype.card Ψ : ℝ) / B with hθdef
  set lam : Wt Ψ N := fun τ i => l τ i + (if τ = τ₀ ∧ (i : ℕ) < T.j then 2 * θ else 0) with hlamdef
  let s : ℚ := (5 * (Fintype.card Ψ : ℚ) / B) ^ 2
  have hs : (s : ℝ) = θ ^ 2 := by simp [s, hθdef]
  have hdist' : ‖T.lamS lam s - l‖ ≤ 2 * θ + ‖T.nu‖ * θ ^ 2 := by rw [hs]; exact hdist
  rw [← hs] at hnl2 hdom2 hnef
  have hrat : IsRatWt lam := by
    intro τ i
    obtain ⟨q, hq⟩ := hlr τ i
    by_cases h : τ = τ₀ ∧ (i : ℕ) < T.j
    · exact ⟨q + 2 * (5 * (Fintype.card Ψ : ℚ) / B), by
        show l τ i + (if τ = τ₀ ∧ (i : ℕ) < T.j then 2 * θ else 0) = _
        rw [if_pos h, hq, hθdef]
        push_cast
        ring⟩
    · exact ⟨q, by
        show l τ i + (if τ = τ₀ ∧ (i : ℕ) < T.j then 2 * θ else 0) = _
        rw [if_neg h, hq, add_zero]⟩
  have hs0 : (0 : ℝ) < s := by rw [hs]; positivity
  have hsQ : (0 : ℚ) ≤ s := by exact_mod_cast hs0.le
  have hθ2 : θ ^ 2 ≤ θ := by nlinarith
  have hsle : (s : ℝ) ≤ s₀ := by
    rw [hs]
    exact hθ2.trans (hθle.trans (min_le_right _ _))
  have hs1 : |(s : ℝ)| ≤ 1 := by
    rw [abs_of_pos hs0, hs]
    linarith
  have hnl0 : ‖l‖ ≤ 1 := hlw.1.trans (by norm_num)
  have hL := one_le_log hB3
  have hper : ∀ c, |T.PPc II B c (linRoot l ^ (dimFl Ψ N + 1))| ≤
      (|C3| + 6 * Cs * C8 * T.vol c + Cp * |C2| * (3 + ‖T.nu‖)) * (θ * Real.log B) := by
    intro c
    obtain ⟨hm0, hm1⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Top.deg_bounds hKl hEx hDs II hII Ψ N T hP h7 B c lam s hrat hsQ hdom hdom2
    have hsqc := hsq B (by omega) c lam θ s hrat hnl hθ (hθle.trans (min_le_left _ _)) hs hgaps hcg hdom2 hnef hm0
    have hI2c := hI2 B (by omega) c lam s (l1_le_card_mul_of_norm_le_one' lam hnl) hs0 hsle hdom2
    have hmono : ∀ m, |(T.M B c).PP II (monomial m 1)| ≤ |C2| * Real.log B := fun m =>
      (hI1 B (by omega) c m).trans (mul_le_mul_of_nonneg_right (le_abs_self _) (by linarith))
    have hLipc := hLip ((T.M B c).PP II) (|C2| * Real.log B) hmono (T.lamS lam s) l s 0 hnl2 hnl0 hs1 (by simp)
    have hv : 0 < T.vol c := hP.1 c
    have hmd : T.mDeg B c lam s ≤ T.vol c * (C8 * (2 * θ)) := by
      refine hm1.trans (mul_le_mul_of_nonneg_left ?_ hv.le)
      rw [← hgap0]
      exact hdeg lam τ₀ hnl hdom
    have hLs : Real.log (B / (s : ℝ)) ≤ 3 * Real.log B := by
      rw [hs]
      exact log_div_le hB3 (5 * (Fintype.card Ψ : ℝ)) (by linarith)
    have hLs0 : 0 ≤ Real.log (B / (s : ℝ)) := by
      refine Real.log_nonneg ?_
      rw [le_div_iff₀ hs0, hs]
      have hB1 : (1 : ℝ) ≤ B := by exact_mod_cast (by omega : 1 ≤ B)
      nlinarith
    have hq : T.PPc II B c (linRoot l ^ (dimFl Ψ N + 1)) = (T.M B c).PP II (linA l 0 ^ (dimFl Ψ N + 1)) := by
      simp only [RootTower.PPc, toA_linRoot_pow]
    rw [hq]
    exact three_terms hCs hC8 hCp hv.le (norm_nonneg _) hθ hθ1 hL hs hLs hLs0 hm0 hmd hsqc hI2c hLipc hdist'
  have hsum : |T.PB II B l| ≤
      (∑ c, (|C3| + 6 * Cs * C8 * T.vol c + Cp * |C2| * (3 + ‖T.nu‖))) * (θ * Real.log B) := by
    rw [Finset.sum_mul]
    exact (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun c _ => hper c)
  refine hsum.trans (le_of_eq ?_)
  rw [hθdef]
  ring

end GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerWeilTheorem =====
