module

public import Mathlib.Algebra.BigOperators.Group.Finset.Defs
public import Mathlib.Basic.Real.Basic
public import Mathlib.Data.Fintype.Basic
public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE
public import Mathlib.Algebra.BigOperators.Group.Finset.Basic
public import Mathlib.Algebra.BigOperators.Ring.Finset
public import Mathlib.Algebra.Order.BigOperators.Group.Finset
public import Mathlib.Data.Fintype.Fin
public import Development.WeilBound.CoreStatements.FlagImmersions.AltCMul
public import Mathlib.Algebra.MvPolynomial.Coeff
public import Mathlib.Data.Nat.Choose.Cast
public import Development.WeilBound.CoreStatements.FlagImmersions.RrCoeffSucc
public import Mathlib.Algebra.Polynomial.Degree.Lemmas
public import Mathlib.LinearAlgebra.Vandermonde
public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.HeckeSectionsIsotropicCommutatorPairingPower
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagDegreeWeightFormula
public import GroundTheory.HeightsAndTheta.Heights.RemainderTerms.PrimeWeightEqZeroOfLt
public import GroundTheory.HeightsAndTheta.Heights.RemainderTerms.PRestInnerTsumBound
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagShiftTotalPowerSum
public import Mathlib.RingTheory.MvPolynomial.Homogeneous
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ExistsFlagDegreeOnePolys
public import Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagDegreeLinearFunctionals
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RemainderTermSummable
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.CutoffCoefficientsBound
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagShiftTotalLinRootPower
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.HomogeneousPowerSumDecomposition
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerHeightIdentityExpansion
public import Mathlib.RingTheory.MvPolynomial
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Linter.HaveILetI
import GroundTheory.HeightsAndTheta.Heights.RemainderTerms.Elementary
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.FlagImmersions.PartialSumOrderedBounds, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.DominantPartialSumBounds, Development.WeilBound.CoreStatements.FlagImmersions.CoeffShift, Development.WeilBound.CoreStatements.FlagImmersions.AltEqZero, Development.WeilBound.CoreStatements.FlagImmersions.SumChooseLe, Development.WeilBound.CoreStatements.FlagImmersions.RestDegreePowerBound, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.LieTermFlagBound, Development.WeilBound.CoreStatements.FlagImmersions.TwoMulThreePowLeFactorial, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.LinRootRemainderBound, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PowerSumDeltaDecomposition, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerIdentityAtCutoff, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerT2

-- ===== clump member: Development.WeilBound.CoreStatements.FlagImmersions.PartialSumOrderedBounds =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.FlagImmersions.PartialSumOrderedBounds", "h": "module\n\npublic import Mathlib.Algebra.BigOperators.Group.Finset.Defs\npublic import Mathlib.Basic.Real.Basic\npublic import Mathlib.Data.Fintype.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\npublic import Mathlib.Algebra.BigOperators.Group.Finset.Basic\npublic import Mathlib.Algebra.BigOperators.Ring.Finset\npublic import Mathlib.Algebra.Order.BigOperators.Group.Finset\npublic import Mathlib.Data.Fintype.Fin\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial Filter Topology GlobalTheory.CompanionTheory.Ar.Top

theorem RootFieldNumerics.partial_sum_ordered_bounds : ∀ (N j : ℕ) (u : Fin N → ℝ), j ≤ N → 0 < N → (∀ a b : Fin N, a ≤ b → u b ≤ u a) → 0 ≤ (∑ i ∈ Finset.univ.filter (fun i : Fin N => (i : ℕ) < j), u i) - j * ((∑ i, u i) / N) ∧ (∑ i ∈ Finset.univ.filter (fun i : Fin N => (i : ℕ) < j), u i) - j * ((∑ i, u i) / N) ≤ ∑ i, |u i| ∧ |∑ i, u i| ≤ ∑ i, |u i| := by
  intro N j u hj hN hu
  refine ⟨?_, ?_, Finset.abs_sum_le_sum_abs _ _⟩
  all_goals
    set A := Finset.univ.filter (fun i : Fin N => (i : ℕ) < j) with hA
    set B := Finset.univ.filter (fun i : Fin N => ¬ (i : ℕ) < j) with hB
    have hsplit : ∀ g : Fin N → ℝ, ∑ i, g i = ∑ i ∈ A, g i + ∑ i ∈ B, g i := fun g =>
      (Finset.sum_filter_add_sum_filter_not _ _ _).symm
    have hNpos : (0 : ℝ) < N := by exact_mod_cast hN
    have hjN : (j : ℝ) ≤ N := by exact_mod_cast hj
    have hj0 : (0 : ℝ) ≤ j := Nat.cast_nonneg j
  · have hcA : A.card = j := by
      rw [hA, Fin.card_filter_val_lt]; omega
    have hcB : (B.card : ℝ) = N - j := by
      have := hsplit (fun _ => 1)
      simp only [Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul, mul_one, hcA] at this
      linarith
    have key : ∑ i ∈ A, ∑ k ∈ B, u k ≤ ∑ i ∈ A, ∑ k ∈ B, u i := by
      refine Finset.sum_le_sum fun i hi => Finset.sum_le_sum fun k hk => hu i k ?_
      rw [hA, Finset.mem_filter] at hi
      rw [hB, Finset.mem_filter] at hk
      rw [Fin.le_def]; omega
    simp only [Finset.sum_const, nsmul_eq_mul, hcA, hcB, ← Finset.mul_sum] at key
    rw [hsplit u, sub_nonneg, ← mul_div_assoc, div_le_iff₀ hNpos]
    nlinarith
  · rw [hsplit u, hsplit (fun i => |u i|)]
    have h1 := (abs_le.mp (Finset.abs_sum_le_sum_abs u A))
    have h2 := (abs_le.mp (Finset.abs_sum_le_sum_abs u B))
    have h3 : 0 ≤ ∑ i ∈ A, |u i| := Finset.sum_nonneg fun _ _ => abs_nonneg _
    have h4 : 0 ≤ ∑ i ∈ B, |u i| := Finset.sum_nonneg fun _ _ => abs_nonneg _
    have ht0 : 0 ≤ (j : ℝ) / N := div_nonneg hj0 hNpos.le
    have ht1 : (j : ℝ) / N ≤ 1 := (div_le_one hNpos).mpr hjN
    have e : ∀ x : ℝ, (j : ℝ) * (x / N) = (j : ℝ) / N * x := fun x => by ring
    rw [e]
    generalize (j : ℝ) / N = t at *
    nlinarith [mul_nonneg (sub_nonneg.mpr ht1) (sub_nonneg.mpr h1.2),
      mul_nonneg ht0 (sub_nonneg.mpr h2.1), mul_nonneg ht0 h3, mul_nonneg (sub_nonneg.mpr ht1) h4]
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.FlagImmersions.PartialSumOrderedBounds =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.DominantPartialSumBounds =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.DominantPartialSumBounds", "h": "module\n\npublic import Mathlib.Algebra.BigOperators.Group.Finset.Defs\npublic import Mathlib.Basic.Real.Basic\npublic import Mathlib.Data.Fintype.Basic\npublic import Development.WeilBound.CoreStatements.FlagImmersions.PartialSumOrderedBounds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace GlobalTheory.CompanionTheory.Ar.Top

theorem partialSum_sub_mean_bounds : ∀ (N j : ℕ) (u : Fin N → ℝ), j ≤ N → 0 < N → (∀ a b : Fin N, a ≤ b → u b ≤ u a) → 0 ≤ (∑ i ∈ Finset.univ.filter (fun i : Fin N => (i : ℕ) < j), u i) - j * ((∑ i, u i) / N) ∧ (∑ i ∈ Finset.univ.filter (fun i : Fin N => (i : ℕ) < j), u i) - j * ((∑ i, u i) / N) ≤ ∑ i, |u i| ∧ |∑ i, u i| ≤ ∑ i, |u i| :=
  RootFieldNumerics.partial_sum_ordered_bounds

end GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.DominantPartialSumBounds =====

-- ===== clump member: Development.WeilBound.CoreStatements.FlagImmersions.CoeffShift =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.FlagImmersions.CoeffShift", "h": "module\n\npublic import Development.WeilBound.CoreStatements.FlagImmersions.AltCMul\npublic import Mathlib.Algebra.MvPolynomial.Coeff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.Data.Nat.Choose.Cast\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Top

namespace RootFieldNumerics.M5

theorem coeff_lin {ι : Type} [Fintype ι] [DecidableEq ι] (w : ι → ℝ) (a : ι →₀ ℕ) (n : ℕ) (h : ∑ x, a x = n) :
    AddMonoidAlgebra.coeff ((∑ x, w x • (X x : MvPolynomial ι ℝ)) ^ n) a =
      (n.factorial : ℝ) * ∏ x, (((a x).factorial : ℝ)⁻¹ * w x ^ a x) := by
  rw [MvPolynomial.coeff_linearCombination_X_pow_of_fintype,
    Finsupp.sum_fintype a (fun _ m => m) (fun _ => rfl)]
  rw [if_pos h, Finsupp.prod_fintype a (fun r m => w r ^ m) (fun _ => pow_zero _),
    ← Finsupp.multinomial_of_support_subset (Finset.subset_univ _),
    Finset.prod_mul_distrib, Finset.prod_inv_distrib]
  have hpos : (∏ x, ((a x).factorial : ℝ)) ≠ 0 :=
    Finset.prod_ne_zero_iff.mpr fun x _ => Nat.cast_ne_zero.mpr (Nat.factorial_ne_zero _)
  have hspec : (∏ x, ((a x).factorial : ℝ)) * (Nat.multinomial Finset.univ a : ℝ) =
      (n.factorial : ℝ) := by
    rw [← h]
    exact_mod_cast Nat.multinomial_spec Finset.univ a
  rw [← hspec]
  generalize (∏ x, ((a x).factorial : ℝ)) = F at hpos ⊢
  generalize (Nat.multinomial Finset.univ a : ℝ) = M
  generalize (∏ x, w x ^ a x) = P
  calc M * P = (F * F⁻¹) * (M * P) := by rw [mul_inv_cancel₀ hpos, one_mul]
    _ = F * M * (F⁻¹ * P) := by ring

theorem coeff_shift {ι : Type} [Fintype ι] [DecidableEq ι] (w : ι → ℝ) (x0 : ι) (s n : ℕ) (a : ι →₀ ℕ)
    (h : ∑ x, a x = n + s) :
    AddMonoidAlgebra.coeff (X x0 ^ s * (∑ x, (-w x) • (X x : MvPolynomial ι ℝ)) ^ n) a =
      (-1) ^ n * (n.factorial : ℝ) * (s.factorial : ℝ) *
        (∏ x, (Polynomial.C (((a x).factorial : ℝ)⁻¹) *
          (Polynomial.C (w x) + if x = x0 then Polynomial.X else 0) ^ a x)).coeff s := by
  have hrhs : (∏ x, (Polynomial.C (((a x).factorial : ℝ)⁻¹) *
      (Polynomial.C (w x) + if x = x0 then Polynomial.X else 0) ^ a x)).coeff s =
      (∏ x ∈ Finset.univ.erase x0, (((a x).factorial : ℝ)⁻¹ * w x ^ a x)) *
        (((a x0).factorial : ℝ)⁻¹ * (w x0 ^ (a x0 - s) * ((a x0).choose s : ℝ))) := by
    rw [← Finset.mul_prod_erase _ _ (Finset.mem_univ x0)]
    have hrest : ∏ x ∈ Finset.univ.erase x0, (Polynomial.C (((a x).factorial : ℝ)⁻¹) *
        (Polynomial.C (w x) + if x = x0 then Polynomial.X else 0) ^ a x) =
        Polynomial.C (∏ x ∈ Finset.univ.erase x0, (((a x).factorial : ℝ)⁻¹ * w x ^ a x)) := by
      rw [map_prod]
      refine Finset.prod_congr rfl fun x hx => ?_
      rw [if_neg (Finset.ne_of_mem_erase hx), add_zero, map_mul, map_pow]
    rw [hrest, Polynomial.coeff_mul_C, if_pos (rfl : x0 = x0), add_comm, Polynomial.coeff_C_mul,
      Polynomial.coeff_X_add_C_pow]
    ring
  rw [hrhs, MvPolynomial.X_pow_eq_monomial, MvPolynomial.coeff_monomial_mul']
  by_cases hs : s ≤ a x0
  · rw [if_pos (Finsupp.single_le_iff.mpr hs), one_mul]
    have e4 : (a - Finsupp.single x0 s) x0 = a x0 - s := by
      rw [Finsupp.coe_tsub, Pi.sub_apply, Finsupp.single_eq_same]
    have e3 : ∀ x ∈ Finset.univ.erase x0, (a - Finsupp.single x0 s) x = a x := by
      intro x hx
      rw [Finsupp.coe_tsub, Pi.sub_apply, Finsupp.single_apply,
        if_neg (Finset.ne_of_mem_erase hx).symm, tsub_zero]
    have e1 := Finset.add_sum_erase Finset.univ (fun x => a x) (Finset.mem_univ x0)
    have e2 := Finset.add_sum_erase Finset.univ (fun x => (a - Finsupp.single x0 s) x)
      (Finset.mem_univ x0)
    have e3' : ∑ x ∈ Finset.univ.erase x0, (a - Finsupp.single x0 s) x =
        ∑ x ∈ Finset.univ.erase x0, a x := Finset.sum_congr rfl e3
    rw [e4, e3'] at e2
    have hsum : ∑ x, (a - Finsupp.single x0 s) x = n := by omega
    rw [RootFieldNumerics.M5.coeff_lin (fun x => -w x) _ n hsum,
      ← Finset.mul_prod_erase _ _ (Finset.mem_univ x0), e4]
    have hrest : ∏ x ∈ Finset.univ.erase x0,
        ((((a - Finsupp.single x0 s) x).factorial : ℝ)⁻¹ * (-w x) ^ (a - Finsupp.single x0 s) x) =
        (-1) ^ (∑ x ∈ Finset.univ.erase x0, a x) *
          ∏ x ∈ Finset.univ.erase x0, (((a x).factorial : ℝ)⁻¹ * w x ^ a x) := by
      rw [← Finset.prod_pow_eq_pow_sum, ← Finset.prod_mul_distrib]
      refine Finset.prod_congr rfl fun x hx => ?_
      rw [e3 x hx, neg_pow (w x)]
      ring
    rw [hrest]
    have hsign : ((-1 : ℝ)) ^ n = (-1) ^ (a x0 - s) * (-1) ^ (∑ x ∈ Finset.univ.erase x0, a x) := by
      rw [← pow_add]
      congr 1
      omega
    have hfac : (s.factorial : ℝ) * (((a x0).factorial : ℝ)⁻¹ * ((a x0).choose s : ℝ)) =
        ((a x0 - s).factorial : ℝ)⁻¹ := by
      have hA : ((a x0).factorial : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.factorial_ne_zero _)
      have hB : (s.factorial : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.factorial_ne_zero _)
      have hD : ((a x0 - s).factorial : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.factorial_ne_zero _)
      rw [Nat.cast_choose ℝ hs]
      field_simp
    rw [hsign, neg_pow (w x0)]
    linear_combination (-((-1 : ℝ) ^ (a x0 - s) * (-1) ^ (∑ x ∈ Finset.univ.erase x0, a x) *
      (n.factorial : ℝ) * (∏ x ∈ Finset.univ.erase x0, (((a x).factorial : ℝ)⁻¹ * w x ^ a x)) *
      w x0 ^ (a x0 - s))) * hfac
  · rw [if_neg fun h' => hs (Finsupp.single_le_iff.mp h'), Nat.choose_eq_zero_of_lt (not_le.mp hs)]
    simp

variable {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {N : ℕ}

def vv (u : Wt Ψ N) (x0 : Ψ × Fin N) (τ : Ψ) (b : Fin N) : Polynomial ℝ :=
  Polynomial.C (u τ b) + if (τ, b) = x0 then Polynomial.X else 0

theorem linRoot_eq (u : Wt Ψ N) : linRoot u = ∑ x : Ψ × Fin N, (-u x.1 x.2) • (X x : RP Ψ N) := by
  unfold GlobalTheory.CompanionTheory.Ar.Top.linRoot
  rw [← Finset.sum_neg_distrib]
  refine Finset.sum_congr rfl fun x _ => ?_
  rw [MvPolynomial.smul_eq_C_mul, map_neg, neg_mul]

theorem alt_pow (a : Ψ → Fin N → ℕ) (u : Wt Ψ N) (x0 : Ψ × Fin N) (s n : ℕ) (h : ∑ τ, ∑ c, a τ c = n + s) :
    alt a (X x0 ^ s * linRoot u ^ n) =
      (-1) ^ n * (n.factorial : ℝ) * (s.factorial : ℝ) * (∏ τ, gdet (a τ) (vv u x0 τ)).coeff s := by
  have hdet : ∀ τ, RootFieldNumerics.M5.gdet (a τ) (RootFieldNumerics.M5.vv u x0 τ) =
      ∑ π : Equiv.Perm (Fin N), Polynomial.C ((Equiv.Perm.sign π : ℤ) : ℝ) *
        ∏ c, (Polynomial.C (((a τ (π c)).factorial : ℝ)⁻¹) *
          RootFieldNumerics.M5.vv u x0 τ c ^ a τ (π c)) := by
    intro τ
    unfold RootFieldNumerics.M5.gdet
    rw [Matrix.det_apply']
    refine Finset.sum_congr rfl fun π _ => ?_
    simp only [Matrix.of_apply, map_intCast]
  have hsum : ∀ σ : Ψ → Equiv.Perm (Fin N), ∑ x : Ψ × Fin N, RootFieldNumerics.M5.expo a σ x = n + s := by
    intro σ
    rw [← h, Fintype.sum_prod_type]
    refine Finset.sum_congr rfl fun τ _ => ?_
    simp only [RootFieldNumerics.M5.expo, Finsupp.equivFunOnFinite_symm_apply_apply]
    exact Equiv.sum_comp (σ τ) (a τ)
  have hq : ∀ σ : Ψ → Equiv.Perm (Fin N),
      (∏ x : Ψ × Fin N, Polynomial.C (((RootFieldNumerics.M5.expo a σ x).factorial : ℝ)⁻¹) *
        (Polynomial.C (u x.1 x.2) + if x = x0 then Polynomial.X else 0) ^ RootFieldNumerics.M5.expo a σ x) =
      ∏ τ, ∏ c, (Polynomial.C (((a τ (σ τ c)).factorial : ℝ)⁻¹) *
        RootFieldNumerics.M5.vv u x0 τ c ^ a τ (σ τ c)) := by
    intro σ
    rw [Fintype.prod_prod_type]
    simp only [RootFieldNumerics.M5.expo, Finsupp.equivFunOnFinite_symm_apply_apply,
      RootFieldNumerics.M5.vv]
  rw [RootFieldNumerics.M5.linRoot_eq]
  unfold RootFieldNumerics.M5.alt
  simp only [hdet]
  rw [Fintype.prod_sum, Polynomial.finsetSum_coeff, Finset.mul_sum]
  refine Finset.sum_congr rfl fun σ _ => ?_
  rw [RootFieldNumerics.M5.coeff_shift (fun x : Ψ × Fin N => u x.1 x.2) x0 s n
      (RootFieldNumerics.M5.expo a σ) (hsum σ), hq σ, Finset.prod_mul_distrib,
    show (∏ τ, Polynomial.C ((Equiv.Perm.sign (σ τ) : ℤ) : ℝ)) =
      Polynomial.C (∏ τ, ((Equiv.Perm.sign (σ τ) : ℤ) : ℝ)) from (map_prod Polynomial.C _ _).symm,
    Polynomial.coeff_C_mul]
  ring

theorem sum_rho : ∑ τ : Ψ, ∑ c : Fin N, rho τ c = dimFl Ψ N := by
  have hinner : ∀ τ : Ψ, ∑ c : Fin N, RootFieldNumerics.M5.rho τ c = N * (N - 1) / 2 := by
    intro τ
    simp only [RootFieldNumerics.M5.rho]
    rw [Fin.sum_univ_eq_sum_range (fun i => N - 1 - i) N,
      Finset.sum_range_reflect (fun i => i) N, Finset.sum_range_id]
  unfold GlobalTheory.CompanionTheory.Ar.Top.dimFl
  rw [Finset.sum_congr rfl fun τ _ => hinner τ, Finset.sum_const, Finset.card_univ, smul_eq_mul]

theorem sum_bump (τ : Ψ) (c : Fin N) (k : ℕ) : ∑ τ' : Ψ, ∑ c' : Fin N, bump τ c k τ' c' = dimFl Ψ N + k := by
  have hsplit : ∀ τ' c', RootFieldNumerics.M5.bump τ c k τ' c' =
      RootFieldNumerics.M5.rho τ' c' + if τ' = τ ∧ c' = c then k else 0 := fun _ _ => rfl
  simp only [hsplit, Finset.sum_add_distrib, RootFieldNumerics.M5.sum_rho, add_right_inj]
  rw [Finset.sum_eq_single τ (fun b _ hb => by simp [hb]) (by simp),
    Finset.sum_eq_single c (fun b _ hb => by simp [hb]) (by simp)]
  simp

end RootFieldNumerics.M5
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.FlagImmersions.CoeffShift =====

-- ===== clump member: Development.WeilBound.CoreStatements.FlagImmersions.AltEqZero =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.FlagImmersions.AltEqZero", "h": "module\n\npublic import Development.WeilBound.CoreStatements.FlagImmersions.AltCMul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Top

namespace RootFieldNumerics.M5

variable {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {N : ℕ}

def lower (a : Ψ → Fin N → ℕ) (τ : Ψ) (l : Fin N) (m : ℕ) : Ψ → Fin N → ℕ :=
  fun τ' c => if τ' = τ ∧ c = l then a τ' c - m else a τ' c

theorem alt_pk (a : Ψ → Fin N → ℕ) (τ : Ψ) (m : ℕ) (G : RP Ψ N) :
    alt a (pk τ m * G) = ∑ l, if m ≤ a τ l then alt (lower a τ l m) G else 0 := by
  have h1 : ∀ σ : Ψ → Equiv.Perm (Fin N), (pk τ m * G).coeff (expo a σ) =
      ∑ l, if m ≤ a τ l then G.coeff (expo (lower a τ l m) σ) else 0 := by
    intro σ
    rw [← Equiv.sum_comp (σ τ), pk, Finset.sum_mul, coeff_sum]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [X_pow_eq_monomial, coeff_monomial_mul', one_mul]
    have e1 : (Finsupp.single (τ, i) m ≤ expo a σ) ↔ m ≤ a τ (σ τ i) := by
      rw [Finsupp.single_le_iff]; simp [expo]
    have e2 : expo a σ - Finsupp.single (τ, i) m = expo (lower a τ (σ τ i) m) σ := by
      ext ⟨t, b⟩
      simp only [expo, lower, Finsupp.coe_tsub, Pi.sub_apply, Finsupp.equivFunOnFinite_symm_apply_apply,
        Finsupp.single_apply, Prod.mk.injEq]
      by_cases ht : t = τ
      · subst ht
        by_cases hb : b = i
        · subst hb; simp
        · have : ¬ i = b := fun h => hb h.symm
          simp [hb, this]
      · have : ¬ τ = t := fun h => ht h.symm
        simp [ht, this]
    rw [e2]
    by_cases h : m ≤ a τ (σ τ i)
    · rw [if_pos (e1.mpr h), if_pos h]
    · rw [if_neg (fun h' => h (e1.mp h')), if_neg h]
  simp only [alt, h1, Finset.mul_sum]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun l _ => ?_
  split_ifs <;> simp

theorem alt_perm (a : Ψ → Fin N → ℕ) (π : Ψ → Equiv.Perm (Fin N)) (G : RP Ψ N) :
    alt a G = (∏ τ, ((Equiv.Perm.sign (π τ) : ℤ) : ℝ)) * alt (fun τ c => a τ (π τ c)) G := by
  unfold alt
  rw [← Equiv.sum_comp (Equiv.mulLeft π), Finset.mul_sum]
  refine Finset.sum_congr rfl fun σ _ => ?_
  rw [← mul_assoc, ← Finset.prod_mul_distrib]
  congr 1
  · refine Finset.prod_congr rfl fun τ _ => ?_
    simp

theorem alt_swap (a b : Ψ → Fin N → ℕ) (τ : Ψ) (p q : Fin N) (hpq : p ≠ q) (G : RP Ψ N)
    (h1 : ∀ c, b τ c = a τ (Equiv.swap p q c)) (h2 : ∀ t, t ≠ τ → b t = a t) :
    alt a G = - alt b G := by
  rw [alt_perm a (Function.update 1 τ (Equiv.swap p q)) G]
  have e : (fun t c => a t (Function.update (1 : Ψ → Equiv.Perm (Fin N)) τ (Equiv.swap p q) t c)) = b := by
    funext t c
    by_cases ht : t = τ
    · subst ht; simp [h1]
    · simp [ht, h2 t ht]
  rw [e, Finset.prod_eq_single τ]
  · simp [Equiv.Perm.sign_swap hpq]
  · intro t _ ht; simp [ht]
  · simp

theorem alt_eq_zero (a : Ψ → Fin N → ℕ) (τ : Ψ) (p q : Fin N) (hpq : p ≠ q) (h : a τ p = a τ q)
    (G : RP Ψ N) : alt a G = 0 := by
  have := alt_swap a a τ p q hpq G (fun c => by
    rw [Equiv.swap_apply_def]
    split_ifs with h1 h2
    · rw [h1, h]
    · rw [h2, h]
    · rfl) (fun _ _ => rfl)
  linarith

theorem alt_pk_zero (a : Ψ → Fin N → ℕ) (τ : Ψ) (ha : ∀ c : Fin N, a τ c = N - 1 - (c : ℕ)) (m : ℕ) (hm : 1 ≤ m)
    (G : RP Ψ N) : alt a (pk τ m * G) = 0 := by
  rw [alt_pk]
  refine Finset.sum_eq_zero fun l _ => ?_
  split_ifs with h
  · rw [ha] at h
    have hl := l.isLt
    have hne : l ≠ ⟨l + m, by omega⟩ := fun e => by
      have := congrArg Fin.val e; simp at this; omega
    refine alt_eq_zero _ τ l ⟨l + m, by omega⟩ hne ?_ G
    simp only [lower, true_and, if_true, if_neg hne.symm, ha]
    omega
  · rfl

theorem alt_rho_pk (τ : Ψ) (m : ℕ) (hm : 1 ≤ m) (G : RP Ψ N) : alt rho (pk τ m * G) = 0 :=
  alt_pk_zero rho τ (fun _ => rfl) m hm G

theorem col_sum (τ : Ψ) (k m : ℕ) (hk : 1 ≤ k) (hkN : k ≤ N) (hm : 1 ≤ m) (G : RP Ψ N) (l : Fin N) :
    (∑ c, if m ≤ bump τ c k τ l then alt (lower (bump τ c k) τ l m) G else 0) =
      if (l : ℕ) + m < N then 0 else if m = k then alt rho G else 0 := by
  have hl := l.isLt
  split_ifs with h1 h2
  · set l' : Fin N := ⟨l + m, h1⟩ with hl'
    have hv : (l' : ℕ) = l + m := rfl
    have hne : l ≠ l' := fun e => by
      have := congrArg Fin.val e; omega
    rw [Finset.sum_eq_add l l' hne]
    · rw [if_pos (by simp [bump]; omega), if_pos (by simp [bump]; omega)]
      rw [alt_swap (lower (bump τ l k) τ l m) (lower (bump τ l' k) τ l m) τ l l' hne G]
      · ring
      · intro c
        rw [Equiv.swap_apply_def]
        split_ifs with c1 c2
        · subst c1
          simp [lower, bump, hne, hne.symm]; omega
        · subst c2
          simp [lower, bump, hne.symm]; omega
        · simp [lower, bump, c1, c2]
      · intro t ht
        funext c
        simp [lower, bump, ht]
    · intro c _ hc
      split_ifs with h
      · refine alt_eq_zero _ τ l l' hne ?_ G
        simp [lower, bump, hne.symm, hc.1.symm, hc.2.symm]; omega
      · rfl
    · simp
    · simp
  · subst h2
    rw [Finset.sum_eq_single l]
    · rw [if_pos (by simp [bump])]
      congr 1
      funext t c
      simp only [lower, bump, rho]
      split_ifs <;> omega
    · intro c _ hc
      rw [if_neg]
      simp [bump, hc.symm]; omega
    · simp
  · refine Finset.sum_eq_zero fun c _ => ?_
    split_ifs with h
    · by_cases hc : l = c
      · subst hc
        simp only [bump, true_and, if_true] at h
        set q : Fin N := ⟨N - 1 - (N - 1 - l + k - m), by omega⟩ with hq
        have hv : (q : ℕ) = N - 1 - (N - 1 - l + k - m) := rfl
        have hne : l ≠ q := fun e => by
          have := congrArg Fin.val e; omega
        refine alt_eq_zero _ τ l q hne ?_ G
        simp only [lower, bump, true_and, if_true, if_neg hne.symm]
        omega
      · exfalso
        simp [bump, hc] at h; omega
    · rfl

theorem lam_pk (τ τ' : Ψ) (k m : ℕ) (hk : 1 ≤ k) (hkN : k ≤ N) (hm : 1 ≤ m) (hmN : m ≤ N) (G : RP Ψ N) :
    lam τ k (pk τ' m * G) = if τ' = τ ∧ m = k then (k : ℝ) * alt rho G else 0 := by
  by_cases ht : τ' = τ
  · subst ht
    simp only [lam, alt_pk, true_and]
    rw [Finset.sum_comm]
    simp only [col_sum τ' k m hk hkN hm G]
    by_cases h : m = k
    · subst h
      simp only [if_true]
      rw [Fin.sum_univ_eq_sum_range (fun l => if l + m < N then 0 else alt rho G) N, Finset.sum_ite,
        Finset.sum_const_zero, zero_add, Finset.sum_const, nsmul_eq_mul]
      have : (Finset.range N).filter (fun l => ¬ l + m < N) = Finset.Ico (N - m) N := by
        ext x; simp only [Finset.mem_filter, Finset.mem_range, Finset.mem_Ico]; omega
      rw [this, Nat.card_Ico]
      congr 2; omega
    · simp [h]
  · rw [if_neg (fun h => ht h.1)]
    refine Finset.sum_eq_zero fun c _ => alt_pk_zero _ τ' (fun c' => ?_) m hm G
    simp [bump, ht]

end RootFieldNumerics.M5
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.FlagImmersions.AltEqZero =====

-- ===== clump member: Development.WeilBound.CoreStatements.FlagImmersions.SumChooseLe =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.FlagImmersions.SumChooseLe", "h": "module\n\npublic import Development.WeilBound.CoreStatements.FlagImmersions.RrCoeffSucc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.Polynomial.Degree.Lemmas\npublic import Mathlib.LinearAlgebra.Vandermonde\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Polynomial

namespace RootFieldNumerics.M5

variable {N : ℕ}

theorem gdet_rho (N : ℕ) : ∃ c : ℝ, ∀ v : Fin N → Polynomial ℝ,
    gdet (fun c' : Fin N => N - 1 - (c' : ℕ)) v = Polynomial.C c * ∏ a, ∏ b ∈ Finset.Ioi a, (v b - v a) := by
  refine ⟨(∏ c : Fin N, (((N - 1 - (c : ℕ)).factorial : ℕ) : ℝ)⁻¹) *
    (((Equiv.Perm.sign (Fin.revPerm : Equiv.Perm (Fin N)) : ℤ) : ℝ)), fun v => ?_⟩
  have hM : (Matrix.of fun (c b : Fin N) => C ((((N - 1 - (c : ℕ)).factorial : ℕ) : ℝ))⁻¹ * v b ^ (N - 1 - (c : ℕ)))
      = Matrix.of fun (c b : Fin N) => C ((((N - 1 - (c : ℕ)).factorial : ℕ) : ℝ))⁻¹ *
        ((Matrix.vandermonde v).transpose.submatrix Fin.revPerm id) c b := by
    ext c b
    simp only [Matrix.of_apply, Matrix.submatrix_apply, Matrix.transpose_apply, Matrix.vandermonde_apply,
      Fin.revPerm_apply, Fin.val_rev, id]
    rw [show N - ((c : ℕ) + 1) = N - 1 - (c : ℕ) by omega]
  unfold gdet
  rw [hM, Matrix.det_mul_column, Matrix.det_permute, Matrix.det_transpose, Matrix.det_vandermonde]
  simp only [map_mul, map_prod, map_intCast]
  ring

theorem sum_choose_le (M n : ℕ) : ∑ i ∈ Finset.range M, n.choose i ≤ 2 ^ n := by
  rw [← Nat.sum_range_choose]
  apply Finset.sum_le_sum_of_ne_zero
  intro i _ hi
  rw [Finset.mem_range]
  by_contra h
  exact hi (Nat.choose_eq_zero_of_lt (by omega))

theorem pow_eq_sum_rr (w : ℕ → Polynomial ℝ) (m a : ℕ) (ha : a < N) :
    w a ^ m = ∑ c : Fin N, (rr w m N).coeff (N - 1 - (c : ℕ)) * w a ^ (N - 1 - (c : ℕ)) := by
  have hd : (rr w m N).natDegree < N := by
    have : (rr w m N).natDegree ≤ N - 1 :=
      natDegree_le_iff_coeff_eq_zero.mpr fun n hn => rr_coeff_big w m N n (by omega)
    omega
  rw [← rr_eval w m N a ha, eval_eq_sum_range' hd, ← Finset.sum_range_reflect,
    ← Fin.sum_univ_eq_sum_range (fun i => (rr w m N).coeff (N - 1 - i) * w a ^ (N - 1 - i))]

theorem gdet_bump (k : ℕ) (hk : 1 ≤ k) (U : ℝ) (hU : 0 < U) (v : Fin N → Polynomial ℝ)
    (hv : ∀ b, Maj (v b) U (1 / U)) :
    ∃ r : Polynomial ℝ, Maj r (2 ^ (k - 1) / (k.factorial : ℝ) * U ^ k) (k / U) ∧
      ∑ c : Fin N, gdet (fun c' : Fin N => N - 1 - (c' : ℕ) + if c' = c then k else 0) v =
        r * gdet (fun c' : Fin N => N - 1 - (c' : ℕ)) v := by
  classical
  set w : ℕ → Polynomial ℝ := fun a => if h : a < N then v ⟨a, h⟩ else 0 with hw
  have hwv : ∀ b : Fin N, w b = v b := fun b => by simp [hw, b.isLt]
  have hwM : ∀ a, Maj (w a) U (1 / U) := by
    intro a
    by_cases h : a < N
    · simp only [hw, dif_pos h]
      exact hv _
    · simp only [hw, dif_neg h]
      exact Maj.zero hU.le (by positivity)
  refine ⟨∑ c : Fin N, C ((((N - 1 - (c : ℕ) + k).factorial : ℕ) : ℝ)⁻¹ * (((N - 1 - (c : ℕ)).factorial : ℕ) : ℝ)) *
      (rr w (N - 1 - (c : ℕ) + k) N).coeff (N - 1 - (c : ℕ)), ?_, ?_⟩
  · have hk0 : (0 : ℝ) ≤ k / U := by positivity
    have h1 := Maj.sum Finset.univ
      (fun c : Fin N => C ((((N - 1 - (c : ℕ) + k).factorial : ℕ) : ℝ)⁻¹ * (((N - 1 - (c : ℕ)).factorial : ℕ) : ℝ)) *
        (rr w (N - 1 - (c : ℕ) + k) N).coeff (N - 1 - (c : ℕ)))
      (fun c : Fin N => ((((N - 1 - (c : ℕ) + k).factorial : ℕ) : ℝ)⁻¹ * (((N - 1 - (c : ℕ)).factorial : ℕ) : ℝ)) *
        ((cnt (N - 1 - (c : ℕ)) k N : ℝ) * U ^ k)) hk0
      (fun c _ => (rr_maj U hU w hwM _ _ k N rfl).C_mul _ (by positivity))
    apply h1.mono hk0 _ le_rfl
    have hterm : ∀ c : Fin N, ((((N - 1 - (c : ℕ) + k).factorial : ℕ) : ℝ)⁻¹ * (((N - 1 - (c : ℕ)).factorial : ℕ) : ℝ)) *
        ((cnt (N - 1 - (c : ℕ)) k N : ℝ) * U ^ k) = ((k - 1).choose (c : ℕ) : ℝ) / (k.factorial : ℝ) * U ^ k := by
      intro c
      have hc : N - 1 - (c : ℕ) < N := by omega
      have hk1 : k ≠ 0 := by omega
      simp only [cnt, if_pos hc, if_neg hk1]
      rw [show N - 1 - (N - 1 - (c : ℕ)) = (c : ℕ) by omega]
      have hf := Nat.add_choose_mul_factorial_mul_factorial k (N - 1 - (c : ℕ))
      rw [add_comm k] at hf
      have hf' : (((N - 1 - (c : ℕ) + k).choose (N - 1 - (c : ℕ)) : ℕ) : ℝ) * (k.factorial : ℝ) *
          ((N - 1 - (c : ℕ)).factorial : ℝ) = ((N - 1 - (c : ℕ) + k).factorial : ℝ) := by
        exact_mod_cast hf
      push_cast
      rw [← hf']
      have h2 : (k.factorial : ℝ) ≠ 0 := by positivity
      have h3 : ((N - 1 - (c : ℕ)).factorial : ℝ) ≠ 0 := by positivity
      have h4 : (((N - 1 - (c : ℕ) + k).choose (N - 1 - (c : ℕ)) : ℕ) : ℝ) ≠ 0 := by
        have := Nat.choose_pos (show N - 1 - (c : ℕ) ≤ N - 1 - (c : ℕ) + k by omega)
        positivity
      field_simp
    rw [Finset.sum_congr rfl (fun c _ => hterm c), ← Finset.sum_mul, ← Finset.sum_div]
    have hs : (∑ c : Fin N, ((k - 1).choose (c : ℕ) : ℝ)) ≤ 2 ^ (k - 1) := by
      have := sum_choose_le N (k - 1)
      rw [← Fin.sum_univ_eq_sum_range (fun i => (k - 1).choose i) N] at this
      exact_mod_cast this
    gcongr
  · rw [Finset.sum_mul]
    refine Finset.sum_congr rfl (fun c _ => ?_)
    simp only [gdet]
    set A : Matrix (Fin N) (Fin N) (Polynomial ℝ) := Matrix.of fun (c' b : Fin N) =>
      C ((((N - 1 - (c' : ℕ)).factorial : ℕ) : ℝ))⁻¹ * v b ^ (N - 1 - (c' : ℕ)) with hA
    have hrow : (Matrix.of fun (c' b : Fin N) =>
        C ((((N - 1 - (c' : ℕ) + if c' = c then k else 0).factorial : ℕ) : ℝ))⁻¹ *
          v b ^ (N - 1 - (c' : ℕ) + if c' = c then k else 0))
        = A.updateRow c (∑ c' : Fin N,
          (C ((((N - 1 - (c : ℕ) + k).factorial : ℕ) : ℝ)⁻¹ * (((N - 1 - (c' : ℕ)).factorial : ℕ) : ℝ)) *
            (rr w (N - 1 - (c : ℕ) + k) N).coeff (N - 1 - (c' : ℕ))) • A c') := by
      refine Matrix.ext fun i b => ?_
      rw [Matrix.updateRow_apply]
      by_cases hi : i = c
      · subst hi
        simp only [if_true, Matrix.of_apply, Finset.sum_apply, Pi.smul_apply, smul_eq_mul, hA]
        rw [← hwv b, pow_eq_sum_rr w _ b b.isLt, Finset.mul_sum]
        refine Finset.sum_congr rfl (fun c' _ => ?_)
        have hP : C ((((N - 1 - (c' : ℕ)).factorial : ℕ) : ℝ)) * C ((((N - 1 - (c' : ℕ)).factorial : ℕ) : ℝ))⁻¹
            = (1 : Polynomial ℝ) := by
          rw [← map_mul, mul_inv_cancel₀ (by positivity), map_one]
        rw [map_mul]
        linear_combination (-(C ((((N - 1 - (i : ℕ) + k).factorial : ℕ) : ℝ))⁻¹ *
          (rr w (N - 1 - (i : ℕ) + k) N).coeff (N - 1 - (c' : ℕ)) * w b ^ (N - 1 - (c' : ℕ)))) * hP
      · simp only [if_neg hi, Matrix.of_apply, hA, add_zero]
    rw [hrow, Matrix.det_updateRow_sum, smul_eq_mul]

end RootFieldNumerics.M5
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.FlagImmersions.SumChooseLe =====

-- ===== clump member: Development.WeilBound.CoreStatements.FlagImmersions.RestDegreePowerBound =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.FlagImmersions.RestDegreePowerBound", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.HeckeSectionsIsotropicCommutatorPairingPower\npublic import Development.WeilBound.CoreStatements.FlagImmersions.CoeffShift\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagDegreeWeightFormula\npublic import Development.WeilBound.CoreStatements.FlagImmersions.AltEqZero\npublic import Development.WeilBound.CoreStatements.FlagImmersions.SumChooseLe\npublic import Development.WeilBound.CoreStatements.FlagImmersions.RrCoeffSucc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace RootFieldNumerics.M5

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Top

variable {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {N : ℕ}

theorem maj_lin (r e c A : ℝ) (hA : 0 ≤ A) (hr : |r| ≤ c) (he : |e| ≤ c * A) :
    Maj (Polynomial.C r + Polynomial.C e * Polynomial.X) c A := by
  have hc : 0 ≤ c := (abs_nonneg r).trans hr
  intro s
  rcases s with _ | _ | s
  · simpa using hr
  · simpa using he
  · have : (Polynomial.C r + Polynomial.C e * Polynomial.X).coeff (s + 1 + 1) = 0 := by
      simp
    rw [this, abs_zero]
    positivity

theorem maj_C (r : ℝ) : Maj (Polynomial.C r) |r| 0 := by
  simpa using maj_lin r 0 |r| 0 le_rfl le_rfl (by simp)

theorem maj_rho (u : Wt Ψ N) (τ' : Ψ) (i : Fin N) (g : ℝ) (hg : 0 < g)
    (hsep : ∀ b, i ≠ b → g ≤ |u τ' i - u τ' b|) :
    Maj (∏ τ, gdet (rho τ) (vv u (τ', i) τ)) |(∏ τ, gdet (rho τ) (vv u (τ', i) τ)).coeff 0| (N / g) := by
  obtain ⟨c, hc⟩ := gdet_rho N
  have hP : (∏ τ, gdet (rho τ) (vv u (τ', i) τ)) =
      ∏ τ, (Polynomial.C c * ∏ a, ∏ b ∈ Finset.Ioi a, (vv u (τ', i) τ b - vv u (τ', i) τ a)) :=
    Finset.prod_congr rfl fun τ _ => hc _
  have h0 : |(∏ τ, gdet (rho τ) (vv u (τ', i) τ)).coeff 0| =
      ∏ τ, (|c| * ∏ a, ∏ b ∈ Finset.Ioi a, |u τ b - u τ a|) := by
    rw [hP, Polynomial.coeff_zero_eq_eval_zero, Polynomial.eval_prod, Finset.abs_prod]
    refine Finset.prod_congr rfl fun τ _ => ?_
    rw [Polynomial.eval_mul, Polynomial.eval_C, abs_mul, Polynomial.eval_prod, Finset.abs_prod]
    congr 1
    refine Finset.prod_congr rfl fun a _ => ?_
    rw [Polynomial.eval_prod, Finset.abs_prod]
    refine Finset.prod_congr rfl fun b _ => ?_
    congr 1
    simp only [vv, Polynomial.eval_sub, Polynomial.eval_add, Polynomial.eval_C]
    split_ifs <;> simp
  let w : Ψ → Fin N → ℝ := fun τ a => if (τ, a) = (τ', i) then 1 / g else 0
  have hw : ∀ τ a, 0 ≤ w τ a := fun τ a => by
    simp only [w]; split_ifs <;> positivity
  have hfac : ∀ τ a, ∀ b ∈ Finset.Ioi a,
      Maj (vv u (τ', i) τ b - vv u (τ', i) τ a) |u τ b - u τ a| (w τ a + w τ b) := by
    intro τ a b hb
    have hab : a < b := Finset.mem_Ioi.mp hb
    have hA := add_nonneg (hw τ a) (hw τ b)
    by_cases ha : (τ, a) = (τ', i)
    · have hb' : (τ, b) ≠ (τ', i) := fun h => hab.ne (by rw [← h] at ha; exact (Prod.mk.inj ha).2)
      obtain ⟨rfl, rfl⟩ := Prod.mk.inj ha
      have : vv u (τ, a) τ b - vv u (τ, a) τ a =
          Polynomial.C (u τ b - u τ a) + Polynomial.C (-1) * Polynomial.X := by
        simp only [vv, if_neg hb', if_true, map_sub, map_neg, map_one]; ring
      rw [this]
      refine maj_lin _ _ _ _ hA le_rfl ?_
      have h1 := hsep b hab.ne
      simp only [w, if_neg hb', if_true, add_zero, abs_neg, abs_one]
      rw [abs_sub_comm, mul_one_div, one_le_div hg]
      exact h1
    · by_cases hb' : (τ, b) = (τ', i)
      · obtain ⟨rfl, rfl⟩ := Prod.mk.inj hb'
        have : vv u (τ, b) τ b - vv u (τ, b) τ a =
            Polynomial.C (u τ b - u τ a) + Polynomial.C 1 * Polynomial.X := by
          simp only [vv, if_neg ha, if_true, map_sub, map_one]; ring
        rw [this]
        refine maj_lin _ _ _ _ hA le_rfl ?_
        have h1 := hsep a hab.ne'
        simp only [w, if_neg ha, if_true, zero_add, abs_one]
        rw [mul_one_div, one_le_div hg]
        exact h1
      · have : vv u (τ', i) τ b - vv u (τ', i) τ a =
            Polynomial.C (u τ b - u τ a) + Polynomial.C 0 * Polynomial.X := by
          simp only [vv, if_neg ha, if_neg hb', map_sub, map_zero]; ring
        rw [this]
        refine maj_lin _ _ _ _ hA le_rfl ?_
        rw [abs_zero]
        exact mul_nonneg (abs_nonneg _) hA
  have hin : ∀ τ a, 0 ≤ ∑ b ∈ Finset.Ioi a, (w τ a + w τ b) := fun τ a =>
    Finset.sum_nonneg fun b _ => add_nonneg (hw τ a) (hw τ b)
  have hM := Maj.prod Finset.univ
    (fun τ => Polynomial.C c * ∏ a, ∏ b ∈ Finset.Ioi a, (vv u (τ', i) τ b - vv u (τ', i) τ a))
    (fun τ => |c| * ∏ a, ∏ b ∈ Finset.Ioi a, |u τ b - u τ a|)
    (fun τ => 0 + ∑ a, ∑ b ∈ Finset.Ioi a, (w τ a + w τ b))
    (fun τ _ => Maj.mul (maj_C c)
      (Maj.prod Finset.univ _ _ _
        (fun a _ => Maj.prod (Finset.Ioi a) _ _ _ (hfac τ a) (fun b _ => add_nonneg (hw τ a) (hw τ b)))
        (fun a _ => hin τ a)) le_rfl (Finset.sum_nonneg fun a _ => hin τ a))
    (fun τ _ => by rw [zero_add]; exact Finset.sum_nonneg fun a _ => hin τ a)
  rw [h0, hP]
  refine hM.mono (Finset.sum_nonneg fun τ _ => by
    rw [zero_add]; exact Finset.sum_nonneg fun a _ => hin τ a) le_rfl ?_
  rw [Finset.sum_eq_single τ' (fun τ _ hτ => by simp [w, hτ]) (by simp), zero_add]
  have hw' : ∀ a, w τ' a = if a = i then 1 / g else 0 := fun a => by simp [w]
  simp only [hw', Finset.sum_add_distrib]
  have e1 : ∑ a : Fin N, ∑ _b ∈ Finset.Ioi a, (if a = i then 1 / g else 0) = ((Finset.Ioi i).card : ℝ) * (1 / g) := by
    rw [Finset.sum_eq_single i (fun a _ ha => by simp [ha]) (by simp)]
    simp
  have e2 : ∑ a : Fin N, ∑ b ∈ Finset.Ioi a, (if b = i then 1 / g else 0) = ((Finset.Iio i).card : ℝ) * (1 / g) := by
    simp only [Finset.sum_ite_eq', Finset.mem_Ioi]
    rw [← Finset.sum_filter, Finset.sum_const, nsmul_eq_mul]
    congr 2
    congr 1
    ext a
    simp
  rw [e1, e2, ← add_mul, mul_one_div]
  refine div_le_div_of_nonneg_right ?_ hg.le
  rw [Fin.card_Ioi, Fin.card_Iio]
  have := i.2
  exact_mod_cast (by omega : N - 1 - (i : ℕ) + (i : ℕ) ≤ N)

theorem flagDeg_coeff (u : Wt Ψ N) (x0 : Ψ × Fin N) :
    flagDeg u = ((dimFl Ψ N).factorial : ℝ) * (∏ τ, gdet (rho τ) (vv u x0 τ)).coeff 0 := by
  have h := alt_pow (rho : Ψ → Fin N → ℕ) u x0 0 (dimFl Ψ N) (by rw [sum_rho]; rfl)
  rw [pow_zero, one_mul] at h
  rw [flagDeg, degFl_eq, h]
  have h1 : ((-1 : ℝ) ^ dimFl Ψ N) * (-1) ^ dimFl Ψ N = 1 := by
    rw [← mul_pow]; norm_num
  simp only [Nat.factorial_zero, Nat.cast_one, mul_one]
  linear_combination (((dimFl Ψ N).factorial : ℝ) * (∏ τ, gdet (rho τ) (vv u x0 τ)).coeff 0) * h1

theorem lam_bound (u : Wt Ψ N) (τ τ' : Ψ) (i : Fin N) (g U : ℝ) (hg : 0 < g) (hU : 0 < U)
    (hsep : ∀ b, i ≠ b → g ≤ |u τ' i - u τ' b|) (hu : ∀ b, |u τ b| ≤ U) (k : ℕ) (hk : 1 ≤ k) :
    |lam τ k (X (τ', i) ^ (k - 1) * linRoot u ^ (dimFl Ψ N + 1))| ≤
      ((dimFl Ψ N : ℝ) + 1) * |flagDeg u| * (2 ^ (k - 1) / (k.factorial : ℝ) * U * (k + N * U / g) ^ (k - 1)) := by
  have hv : ∀ b, Maj (vv u (τ', i) τ b) U (1 / U) := by
    intro b
    by_cases h : (τ, b) = (τ', i)
    · have : vv u (τ', i) τ b = Polynomial.C (u τ b) + Polynomial.C 1 * Polynomial.X := by simp [vv, h]
      rw [this]
      exact maj_lin _ _ _ _ (by positivity) (hu b) (by rw [mul_one_div_cancel hU.ne', abs_one])
    · have : vv u (τ', i) τ b = Polynomial.C (u τ b) + Polynomial.C 0 * Polynomial.X := by
        simp only [vv, if_neg h, map_zero, zero_mul]
      rw [this]
      exact maj_lin _ _ _ _ (by positivity) (hu b) (by rw [abs_zero]; positivity)
  obtain ⟨r, hr, hre⟩ := gdet_bump k hk U hU (vv u (τ', i) τ) hv
  have hsum : ∑ c, ∏ τ'', gdet (bump τ c k τ'') (vv u (τ', i) τ'') =
      r * ∏ τ'', gdet (rho τ'') (vv u (τ', i) τ'') := by
    rw [← Finset.mul_prod_erase _ _ (Finset.mem_univ τ), ← mul_assoc]
    have hre' : ∑ c, gdet (bump τ c k τ) (vv u (τ', i) τ) = r * gdet (rho τ) (vv u (τ', i) τ) := by
      refine Eq.trans (Finset.sum_congr rfl fun c _ => ?_) hre
      congr 1
      funext c'
      simp [bump]
    rw [← hre', Finset.sum_mul]
    refine Finset.sum_congr rfl fun c _ => ?_
    rw [← Finset.mul_prod_erase _ _ (Finset.mem_univ τ)]
    congr 1
    refine Finset.prod_congr rfl fun τ'' h => ?_
    congr 1
    funext c'
    simp [bump, rho, Finset.ne_of_mem_erase h]
  have hl : lam τ k (X (τ', i) ^ (k - 1) * linRoot u ^ (dimFl Ψ N + 1)) =
      (-1) ^ (dimFl Ψ N + 1) * ((dimFl Ψ N + 1).factorial : ℝ) * ((k - 1).factorial : ℝ) *
        (r * ∏ τ'', gdet (rho τ'') (vv u (τ', i) τ'')).coeff (k - 1) := by
    rw [← hsum, Polynomial.finsetSum_coeff, Finset.mul_sum, lam]
    refine Finset.sum_congr rfl fun c _ => ?_
    exact alt_pow _ _ _ _ _ (by rw [sum_bump]; omega)
  have hM := (hr.mul (maj_rho u τ' i g hg hsep) (by positivity) (by positivity)) (k - 1)
  have hF : |flagDeg u| = ((dimFl Ψ N).factorial : ℝ) * |(∏ τ, gdet (rho τ) (vv u (τ', i) τ)).coeff 0| := by
    rw [flagDeg_coeff u (τ', i), abs_mul, Nat.abs_cast]
  rw [hl, abs_mul, abs_mul, abs_mul, abs_pow, abs_neg, abs_one, one_pow, one_mul, Nat.abs_cast, Nat.abs_cast, hF]
  refine (mul_le_mul_of_nonneg_left hM (by positivity)).trans (le_of_eq ?_)
  obtain ⟨s, rfl⟩ : ∃ s, k = s + 1 := ⟨k - 1, by omega⟩
  have h2 : (s.factorial : ℝ) ≠ 0 := by exact_mod_cast (Nat.factorial_pos _).ne'
  have h3 : ((s + 1 : ℕ) : ℝ) + N * U / g = U * (((s + 1 : ℕ) : ℝ) / U + N / g) := by field_simp
  rw [h3, mul_pow, Nat.factorial_succ (dimFl Ψ N), Nat.add_sub_cancel]
  push_cast
  field_simp
  ring

theorem lam_decomp {F : RP Ψ N} {Q : Ψ → ℕ → RP Ψ N} (hQ : IsDecomp F Q) (τ : Ψ) (k : ℕ) (hk : 1 ≤ k) (hkN : k ≤ N)
    (γ : RP Ψ N) : lam τ k (γ * F) = k * alt rho (γ * Q τ k) := by
  rw [hQ.2, Finset.mul_sum, lam_sum]
  simp only [Finset.mul_sum, lam_sum]
  have : ∀ τ', ∀ m ∈ Finset.Icc 1 N, lam τ k (γ * (pk τ' m * Q τ' m)) =
      if τ' = τ ∧ m = k then (k : ℝ) * alt rho (γ * Q τ' m) else 0 := by
    intro τ' m hm
    rw [mul_left_comm]
    exact lam_pk τ τ' k m hk hkN (Finset.mem_Icc.mp hm).1 (Finset.mem_Icc.mp hm).2 _
  rw [Finset.sum_congr rfl fun τ' _ => Finset.sum_congr rfl (this τ'),
    Finset.sum_eq_single τ (fun τ' _ h => by simp [h]) (by simp),
    Finset.sum_eq_single k (fun m _ h => by simp [h]) (fun h => absurd (Finset.mem_Icc.mpr ⟨hk, hkN⟩) h)]
  simp

theorem lam_shift (u : Wt Ψ N) (τ : Ψ) (a : ℝ) (k : ℕ) (hk : 2 ≤ k) (hkN : k ≤ N) (γ : RP Ψ N) (n : ℕ) :
    lam τ k (γ * linRoot (fun σ b => u σ b - if σ = τ then a else 0) ^ n) = lam τ k (γ * linRoot u ^ n) := by
  have h : linRoot (fun σ b => u σ b - if σ = τ then a else 0) - linRoot u = pk τ 1 * C a := by
    simp only [linRoot, pk, pow_one, map_sub, sub_mul, Finset.sum_sub_distrib]
    have : ∑ x : Ψ × Fin N, (C (if x.1 = τ then a else 0) * X x : RP Ψ N) = (∑ i : Fin N, X (τ, i)) * C a := by
      rw [Fintype.sum_prod_type, Finset.sum_eq_single τ (fun σ _ h => by simp [h]) (by simp), Finset.sum_mul]
      exact Finset.sum_congr rfl fun b _ => by simp [mul_comm]
    rw [this]; ring
  obtain ⟨G, hG⟩ := sub_dvd_pow_sub_pow (linRoot (fun σ b => u σ b - if σ = τ then a else 0)) (linRoot u) n
  rw [h, sub_eq_iff_eq_add] at hG
  rw [hG, mul_add, lam_add, show γ * (pk τ 1 * C a * G) = pk τ 1 * (γ * C a * G) by ring,
    lam_pk τ τ k 1 (by omega) hkN le_rfl (by omega), if_neg (by omega), zero_add]

theorem one_bound (j : ℕ) (u : Wt Ψ N) (g : ℝ) (Q : Ψ → ℕ → RP Ψ N) (hW : WeightHyp j u g)
    (hQ : IsDecomp (linRoot u ^ (dimFl Ψ N + 1)) Q) (τ τ' : Ψ) (k : ℕ) (hk : 2 ≤ k) (hkN : k ≤ N) (i : Fin N)
    (hi : InSmall j i) :
    |k * alt rho (X (τ', i) ^ (k - 1) * Q τ k)| ≤ ((dimFl Ψ N : ℝ) + 1) * flagDeg u *
      ((2 ^ (k - 1) / (k.factorial : ℝ)) * ((⨆ i, u τ i) - ⨅ i, u τ i) * (N * (1 + 2 * (‖u‖ / g))) ^ (k - 1)) := by
  obtain ⟨hg, hreg, -, hsep⟩ := hW
  haveI : Nonempty (Fin N) := ⟨i⟩
  have hle : ∀ b, u τ b ≤ ⨆ i, u τ i := fun b => le_ciSup (Set.finite_range _).bddAbove b
  have hge : ∀ b, (⨅ i, u τ i) ≤ u τ b := fun b => ciInf_le (Set.finite_range _).bddBelow b
  have hn : ∀ b, |u τ b| ≤ ‖u‖ := fun b =>
    (norm_le_pi_norm (u τ) b).trans (norm_le_pi_norm u τ)
  have hs : (⨆ i, u τ i) ≤ ‖u‖ := ciSup_le fun b => (abs_le.mp (hn b)).2
  have hI : -‖u‖ ≤ ⨅ i, u τ i := le_ciInf fun b => (abs_le.mp (hn b)).1
  set U := (⨆ i, u τ i) - ⨅ i, u τ i with hUd
  have hU : 0 < U := by
    have := hreg τ ⟨0, by omega⟩ ⟨1, by omega⟩ (by simp [Fin.lt_def])
    have h1 := hle ⟨0, by omega⟩
    have h2 := hge ⟨1, by omega⟩
    linarith
  have hpos : 0 < flagDeg u := (_root_.GlobalTheory.CompanionTheory.Ar.Top.flagDeg_eq_weyl Ψ N u).2.1 hreg
  have hfl : flagDeg (fun σ b => u σ b - if σ = τ then ⨅ i, u τ i else 0) = flagDeg u := by
    rw [(_root_.GlobalTheory.CompanionTheory.Ar.Top.flagDeg_eq_weyl Ψ N u).1, (_root_.GlobalTheory.CompanionTheory.Ar.Top.flagDeg_eq_weyl Ψ N _).1]
    simp only [sub_sub_sub_cancel_right]
  have hb := lam_bound (fun σ b => u σ b - if σ = τ then ⨅ i, u τ i else 0) τ τ' i g U hg hU
    (fun b hb => by rw [sub_sub_sub_cancel_right]; exact hsep τ' i b hi hb)
    (fun b => by
      rw [if_pos rfl, abs_of_nonneg (sub_nonneg.mpr (hge b))]
      linarith [hle b]) k (by omega)
  rw [lam_shift u τ _ k hk hkN, lam_decomp hQ τ k (by omega) hkN, hfl, abs_of_pos hpos] at hb
  refine hb.trans (mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_left
    (pow_le_pow_left₀ (by positivity) ?_ _) (by positivity)) (by positivity))
  have h1 : (k : ℝ) ≤ N := by exact_mod_cast hkN
  have h2 : U / g ≤ 2 * (‖u‖ / g) := by
    rw [← mul_div_assoc]; exact div_le_div_of_nonneg_right (by linarith) hg.le
  have h3 : (N : ℝ) * (U / g) ≤ N * (2 * (‖u‖ / g)) := mul_le_mul_of_nonneg_left h2 (Nat.cast_nonneg _)
  rw [mul_div_assoc]
  linarith

theorem small_block (j : ℕ) (hj : j < N) (σ : Ψ ⊕ Ψ) (m : ℕ) (hm : 1 ≤ m) (G : RP Ψ N) :
    ∃ (τ' : Ψ) (I : Finset (Fin N)), I.card = min j (N - j) ∧ (∀ i ∈ I, InSmall j i) ∧
      |alt rho (pLie j m σ * G)| = |∑ i ∈ I, alt rho (X (τ', i) ^ m * G)| := by
  have cL : (Finset.univ.filter fun i : Fin N => (i : ℕ) < j).card = j := by
    rw [Fin.card_filter_val_lt]; omega
  have cH : (Finset.univ.filter fun i : Fin N => j ≤ (i : ℕ)).card = N - j := by
    have := Finset.card_filter_add_card_filter_not (s := (Finset.univ : Finset (Fin N))) (fun i : Fin N => (i : ℕ) < j)
    simp only [not_lt, cL, Finset.card_univ, Fintype.card_fin] at this
    omega
  have key : ∀ τ' : Ψ, |∑ i ∈ Finset.univ.filter (fun i : Fin N => (i : ℕ) < j), alt rho (X (τ', i) ^ m * G)| =
      |∑ i ∈ Finset.univ.filter (fun i : Fin N => j ≤ (i : ℕ)), alt rho (X (τ', i) ^ m * G)| := by
    intro τ'
    have h := alt_rho_pk τ' m hm G
    rw [pk, Finset.sum_mul, alt_sum,
      ← Finset.sum_filter_add_sum_filter_not Finset.univ (fun i : Fin N => (i : ℕ) < j)] at h
    simp only [not_lt] at h
    rw [eq_neg_of_add_eq_zero_left h, abs_neg]
  have base : ∃ τ' : Ψ, |alt rho (pLie j m σ * G)| =
      |∑ i ∈ Finset.univ.filter (fun i : Fin N => (i : ℕ) < j), alt rho (X (τ', i) ^ m * G)| := by
    rcases σ with τ' | τ'
    · exact ⟨τ', by rw [pLie, pkLow, Finset.sum_mul, alt_sum]⟩
    · refine ⟨τ', ?_⟩
      rw [key, pLie, Finset.sum_mul, alt_sum,
        Finset.sum_congr rfl (g := fun i => (-1 : ℝ) ^ m * alt rho (X (τ', i) ^ m * G)) (fun i _ => by
          rw [← alt_C_mul, neg_pow, mul_assoc]; simp),
        ← Finset.mul_sum, abs_mul, abs_pow, abs_neg, abs_one, one_pow, one_mul]
  obtain ⟨τ', h⟩ := base
  by_cases hc : j ≤ N - j
  · exact ⟨τ', _, by rw [cL, min_eq_left hc], fun i hi => by
      rw [InSmall, if_pos hc]; exact (Finset.mem_filter.mp hi).2, h⟩
  · exact ⟨τ', _, by rw [cH, min_eq_right (not_le.mp hc).le], fun i hi => by
      rw [InSmall, if_neg hc]; exact (Finset.mem_filter.mp hi).2, h.trans (key τ')⟩

end RootFieldNumerics.M5

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.FlagImmersions.RestDegreePowerBound =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.LieTermFlagBound =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.LieTermFlagBound", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.HeckeSectionsIsotropicCommutatorPairingPower\npublic import Development.WeilBound.CoreStatements.FlagImmersions.RestDegreePowerBound\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.WeilBound.CoreStatements.FlagImmersions.AltCMul\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace GlobalTheory.CompanionTheory.Ar.Top

theorem kappa_bound_of_decomp : ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (j : ℕ) (u : Wt Ψ N) (g : ℝ) (Q : Ψ → ℕ → RP Ψ N), 1 ≤ j → j < N → WeightHyp j u g → IsDecomp (linRoot u ^ (dimFl Ψ N + 1)) Q → ∀ (τ : Ψ) (σ : Ψ ⊕ Ψ) (k : ℕ), 2 ≤ k → k ≤ N → |k * degFl (pLie j (k - 1) σ * Q τ k)| ≤ ((dimFl Ψ N : ℝ) + 1) * flagDeg u * ((min j (N - j) : ℕ) * (2 ^ (k - 1) / (k.factorial : ℝ)) * ((⨆ i, u τ i) - ⨅ i, u τ i) * (N * (1 + 2 * (‖u‖ / g))) ^ (k - 1)) := by
  intro Ψ _ _ N j u g Q _ hjN hW hD τ σ k hk2 hkN
  obtain ⟨τ', I, hcard, hsmall, heq⟩ :=
    RootFieldNumerics.M5.small_block j hjN σ (k - 1) (by omega) (Q τ k)
  have hbound : ∀ i ∈ I,
      |(k : ℝ) * RootFieldNumerics.M5.alt RootFieldNumerics.M5.rho (MvPolynomial.X (τ', i) ^ (k - 1) * Q τ k)| ≤
        ((dimFl Ψ N : ℝ) + 1) * flagDeg u *
          (2 ^ (k - 1) / (k.factorial : ℝ) * ((⨆ i, u τ i) - ⨅ i, u τ i) *
            (N * (1 + 2 * (‖u‖ / g))) ^ (k - 1)) :=
    fun i hi => RootFieldNumerics.M5.one_bound j u g Q hW hD τ τ' k hk2 hkN i (hsmall i hi)
  have hk0 : (0 : ℝ) ≤ k := Nat.cast_nonneg k
  calc |(k : ℝ) * degFl (pLie j (k - 1) σ * Q τ k)|
      = (k : ℝ) * |RootFieldNumerics.M5.alt RootFieldNumerics.M5.rho (pLie j (k - 1) σ * Q τ k)| := by
        rw [RootFieldNumerics.M5.degFl_eq, abs_mul, abs_mul, abs_pow, abs_neg, abs_one, one_pow, one_mul,
          abs_of_nonneg hk0]
    _ = (k : ℝ) * |∑ i ∈ I, RootFieldNumerics.M5.alt RootFieldNumerics.M5.rho (MvPolynomial.X (τ', i) ^ (k - 1) * Q τ k)| := by
        rw [heq]
    _ = |∑ i ∈ I, (k : ℝ) * RootFieldNumerics.M5.alt RootFieldNumerics.M5.rho (MvPolynomial.X (τ', i) ^ (k - 1) * Q τ k)| := by
        rw [← Finset.mul_sum, abs_mul, abs_of_nonneg hk0]
    _ ≤ ∑ i ∈ I, |(k : ℝ) * RootFieldNumerics.M5.alt RootFieldNumerics.M5.rho (MvPolynomial.X (τ', i) ^ (k - 1) * Q τ k)| :=
        Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ _i ∈ I, ((dimFl Ψ N : ℝ) + 1) * flagDeg u *
          (2 ^ (k - 1) / (k.factorial : ℝ) * ((⨆ i, u τ i) - ⨅ i, u τ i) *
            (N * (1 + 2 * (‖u‖ / g))) ^ (k - 1)) :=
        Finset.sum_le_sum hbound
    _ = ((dimFl Ψ N : ℝ) + 1) * flagDeg u * ((min j (N - j) : ℕ) * (2 ^ (k - 1) / (k.factorial : ℝ)) *
          ((⨆ i, u τ i) - ⨅ i, u τ i) * (N * (1 + 2 * (‖u‖ / g))) ^ (k - 1)) := by
        rw [Finset.sum_const, nsmul_eq_mul, hcard]
        ring

end GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.LieTermFlagBound =====

-- ===== clump member: Development.WeilBound.CoreStatements.FlagImmersions.TwoMulThreePowLeFactorial =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.FlagImmersions.TwoMulThreePowLeFactorial", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.RemainderTerms.PrimeWeightEqZeroOfLt\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.HeckeSectionsIsotropicCommutatorPairingPower\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagDegreeWeightFormula\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.LieTermFlagBound\npublic import GroundTheory.HeightsAndTheta.Heights.RemainderTerms.PRestInnerTsumBound\nimport GroundTheory.HeightsAndTheta.Heights.RemainderTerms.Elementary\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace RootFieldNumerics

open GroundTheory.Heights₂.Heights.RestTerms (RestInnerTsumBound.proof)
open GroundTheory.Heights₂.Heights.RestTerms.Elem (primeWeight primeWeight_nonneg prime_partial_le)

theorem two_mul_three_pow_le_factorial (n : ℕ) : (2 : ℝ) * 3 ^ n ≤ ((n + 2).factorial : ℝ) := by
  induction n with
  | zero => norm_num [Nat.factorial]
  | succ n ih =>
    rw [show n + 1 + 2 = (n + 2) + 1 by ring, Nat.factorial_succ]
    push_cast
    have h3 : (0 : ℝ) ≤ 2 * 3 ^ n := by positivity
    have hn : (0 : ℝ) ≤ n := Nat.cast_nonneg n
    rw [pow_succ]
    nlinarith

theorem factorial_half_power_sum_le (n : ℕ) :
    ∑ k ∈ Finset.Icc 1 (n + 1), (if 2 ≤ k then (1 / 2 : ℝ) ^ (k - 1) / (k.factorial : ℝ) else 0) ≤
      0.3 - 0.3 * (1 / 6 : ℝ) ^ n := by
  induction n with
  | zero => norm_num
  | succ n ih =>
    rw [Finset.sum_Icc_succ_top (by omega), if_pos (by omega)]
    have h1 : (1 / 2 : ℝ) ^ (n + 1 + 1 - 1) / ((n + 1 + 1).factorial : ℝ) ≤ 1 / 4 * (1 / 6) ^ n := by
      have h := two_mul_three_pow_le_factorial n
      have h3 : (0 : ℝ) < 2 * 3 ^ n := by positivity
      calc (1 / 2 : ℝ) ^ (n + 1 + 1 - 1) / ((n + 1 + 1).factorial : ℝ)
          ≤ (1 / 2 : ℝ) ^ (n + 1) / (2 * 3 ^ n) :=
            div_le_div_of_nonneg_left (by positivity) h3 h
        _ = 1 / 4 * (1 / 6) ^ n := by
            rw [show (1 / 6 : ℝ) = 1 / 2 * (1 / 3) by norm_num, mul_pow, pow_succ, one_div_pow (3 : ℝ)]
            field_simp
            norm_num
    rw [pow_succ (1 / 6 : ℝ)]
    linarith

variable {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {N : ℕ}

theorem rest_term_prime_bound (j p : ℕ) (fr : ℕ → Ψ ⊕ Ψ) (k : ℕ) (Q : RP Ψ N) (M : ℝ) (hp : 2 ≤ p) (hk : 2 ≤ k)
    (hM : ∀ σ, |k * degFl (pLie j (k - 1) σ * Q)| ≤ M) :
    |restTerm j p fr k Q| ≤ Real.log p * (M * (2 * ((p : ℝ) ^ k)⁻¹)) := by
  have hp' : (2 : ℝ) ≤ p := by exact_mod_cast hp
  have h := (RestInnerTsumBound.proof p k (fun n => k * degFl (pLie j (k - 1) (fr n) * Q)) M hp' (by omega)
    (fun n => hM _)).2
  unfold restTerm
  rw [if_pos hk, mul_assoc, ← tsum_mul_left, abs_mul, abs_of_nonneg (Real.log_natCast_nonneg p)]
  refine mul_le_mul_of_nonneg_left ?_ (Real.log_natCast_nonneg p)
  refine le_of_eq_of_le ?_ h
  congr 2
  funext n
  rw [mul_comm (n + 1) k, pow_mul, inv_pow]
  ring

theorem rest_sum_primes_bound (j : ℕ) (bad : Finset ℕ) (frob : ℕ → Ψ → ℕ → Ψ ⊕ Ψ) (B : ℕ) (τ : Ψ) (k : ℕ) (Q : RP Ψ N)
    (M b : ℝ) (hb : 0 < b) (hB : b < B + 1) (hk : 2 ≤ k)
    (hM : ∀ σ, |k * degFl (pLie j (k - 1) σ * Q)| ≤ M) :
    |restSum j bad frob B τ k Q| ≤ M * (5.56 / b ^ (k - 1)) := by
  have hM0 : 0 ≤ M := (abs_nonneg _).trans (hM (Sum.inl τ))
  obtain ⟨m, rfl⟩ : ∃ m, k = m + 2 := ⟨k - 2, by omega⟩
  set K : ℝ := M * 2 / b ^ m with hK
  have hK0 : 0 ≤ K := by positivity
  set w : ℕ → ℝ := fun i => K * (primeWeight b i / (i : ℝ) ^ 2) with hw
  have hw0 : ∀ i, 0 ≤ w i := fun i => mul_nonneg hK0 (div_nonneg (primeWeight_nonneg b i) (by positivity))
  have hpart : ∀ n, ∑ i ∈ Finset.range n, w i ≤ K * (2 * Real.log 4 / b) := fun n => by
    simp only [hw]
    rw [← Finset.mul_sum]
    exact mul_le_mul_of_nonneg_left (prime_partial_le b hb n) hK0
  have hws : Summable w := summable_of_sum_range_le hw0 hpart
  have hle : ∀ p : ℕ, ‖(if p.Prime ∧ B < p ∧ p ∉ bad then restTerm j p (frob p τ) (m + 2) Q else 0)‖ ≤ w p := by
    intro p
    split_ifs with h
    · have hbp : b < p := by
        have : (B : ℝ) + 1 ≤ p := by exact_mod_cast h.2.1
        linarith
      have hpw : primeWeight b p = Real.log p := by simp [primeWeight, h.1, hbp]
      have hp0 : (0 : ℝ) < p := hb.trans hbp
      have hl := Real.log_natCast_nonneg p
      rw [Real.norm_eq_abs]
      refine (rest_term_prime_bound j p _ _ Q M h.1.two_le hk hM).trans ?_
      simp only [hw, hK, hpw]
      have h1 : b ^ m ≤ (p : ℝ) ^ m := pow_le_pow_left₀ hb.le hbp.le m
      calc Real.log p * (M * (2 * ((p : ℝ) ^ (m + 2))⁻¹)) = M * 2 / (p : ℝ) ^ m * (Real.log p / (p : ℝ) ^ 2) := by
            field_simp
            ring
        _ ≤ M * 2 / b ^ m * (Real.log p / (p : ℝ) ^ 2) := by
            apply mul_le_mul_of_nonneg_right _ (by positivity)
            exact div_le_div_of_nonneg_left (by positivity) (by positivity) h1
    · simpa using hw0 p
  have h2 := tsum_of_norm_bounded hws.hasSum hle
  rw [Real.norm_eq_abs] at h2
  refine h2.trans ((Real.tsum_le_of_sum_range_le hw0 hpart).trans ?_)
  have h4 : 2 * Real.log 4 ≤ 2.78 := (GroundTheory.Heights₂.Heights.RestTerms.RestConstants.intersectionNumber_baseChange).1
  calc K * (2 * Real.log 4 / b) ≤ K * (2.78 / b) :=
        mul_le_mul_of_nonneg_left (div_le_div_of_nonneg_right h4 hb.le) hK0
    _ = M * (5.56 / b ^ (m + 2 - 1)) := by
        rw [hK, show m + 2 - 1 = m + 1 by omega, pow_succ]
        field_simp
        ring

theorem rest_sum_total_bound : ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (j : ℕ) (bad : Finset ℕ) (frob : ℕ → Ψ → ℕ → Ψ ⊕ Ψ) (u : Wt Ψ N) (g : ℝ) (B : ℕ) (Q : Ψ → ℕ → RP Ψ N), 1 ≤ j → j < N → WeightHyp j u g → bigB0 u g < B + 1 → IsDecomp (linRoot u ^ (dimFl Ψ N + 1)) Q → |∑ τ, ∑ k ∈ Finset.Icc 1 N, restSum j bad frob B τ k (Q τ k)| ≤ 2 * (((dimFl Ψ N : ℝ) + 1) * flagDeg u) * ((min j (N - j) : ℕ) * spread u) := by
  intro Ψ _ _ N j bad frob u g B Q hj hjN hW hB hQ
  have hg : 0 < g := hW.1
  have hD : 0 < flagDeg u := (_root_.GlobalTheory.CompanionTheory.Ar.Top.flagDeg_eq_weyl Ψ N u).2.1 hW.2.1
  have hN2 : (2 : ℝ) ≤ N := by exact_mod_cast (show 2 ≤ N by omega)
  have hH : 0 ≤ ‖u‖ / g := by positivity
  set E : ℝ := ((dimFl Ψ N : ℝ) + 1) * flagDeg u with hE
  have hE0 : 0 ≤ E := by positivity
  set j' : ℝ := ((min j (N - j) : ℕ) : ℝ) with hj'
  have hj0 : 0 ≤ j' := Nat.cast_nonneg _
  have key : ∀ τ, |∑ k ∈ Finset.Icc 1 N, restSum j bad frob B τ k (Q τ k)| ≤
      2 * E * (j' * ((⨆ i, u τ i) - ⨅ i, u τ i)) := by
    intro τ
    have hf : (1 : ℝ) ≤ Fintype.card Ψ := by
      exact_mod_cast (Fintype.card_pos_iff.mpr ⟨τ⟩ : 0 < Fintype.card Ψ)
    set U : ℝ := (⨆ i, u τ i) - ⨅ i, u τ i with hU
    have hU0 : 0 ≤ U := by
      have a : Fin N := ⟨0, by omega⟩
      have h1 := le_ciSup (Set.finite_range (u τ)).bddAbove a
      have h2 := ciInf_le (Set.finite_range (u τ)).bddBelow a
      linarith
    set A : ℝ := N * (1 + 2 * (‖u‖ / g)) with hA
    have hA0 : 0 ≤ A := by positivity
    have hb : 0 < bigB0 u g := by unfold bigB0; positivity
    have hAb : 2 * A / bigB0 u g ≤ 1 / 2 := by
      rw [div_le_iff₀ hb, hA]
      unfold bigB0
      set H := ‖u‖ / g
      have h1 : 2 * (N : ℝ) ≤ Fintype.card Ψ * (N : ℝ) ^ 2 := by nlinarith
      nlinarith
    have hterm : ∀ k ∈ Finset.Icc 1 N, |restSum j bad frob B τ k (Q τ k)| ≤
        5.56 * (E * (j' * U)) * (if 2 ≤ k then (1 / 2 : ℝ) ^ (k - 1) / (k.factorial : ℝ) else 0) := by
      intro k hk
      split_ifs with h2
      · refine (rest_sum_primes_bound j bad frob B τ k (Q τ k) _ _ hb hB h2
          (fun σ => _root_.GlobalTheory.CompanionTheory.Ar.Top.kappa_bound_of_decomp Ψ N j u g Q hj hjN hW hQ τ σ k h2 (Finset.mem_Icc.mp hk).2)).trans ?_
        have h3 : (2 * A / bigB0 u g) ^ (k - 1) ≤ (1 / 2 : ℝ) ^ (k - 1) :=
          pow_le_pow_left₀ (by positivity) hAb _
        calc E * (j' * (2 ^ (k - 1) / (k.factorial : ℝ)) * U * A ^ (k - 1)) * (5.56 / bigB0 u g ^ (k - 1))
            = 5.56 * (E * (j' * U)) * ((2 * A / bigB0 u g) ^ (k - 1) / (k.factorial : ℝ)) := by
              rw [div_pow, mul_pow 2 A]; ring
          _ ≤ _ := by gcongr
      · simp [restSum, restTerm, h2]
    obtain ⟨n, rfl⟩ : ∃ n, N = n + 1 := ⟨N - 1, by omega⟩
    have hs := factorial_half_power_sum_le n
    have h6 : (0 : ℝ) ≤ (1 / 6 : ℝ) ^ n := by positivity
    have hX : 0 ≤ E * (j' * U) := by positivity
    refine (Finset.abs_sum_le_sum_abs _ _).trans ((Finset.sum_le_sum hterm).trans ?_)
    rw [← Finset.mul_sum]
    nlinarith
  refine (Finset.abs_sum_le_sum_abs _ _).trans ((Finset.sum_le_sum fun τ _ => key τ).trans (le_of_eq ?_))
  rw [spread, Finset.mul_sum, Finset.mul_sum]

end RootFieldNumerics
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.FlagImmersions.TwoMulThreePowLeFactorial =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.LinRootRemainderBound =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.LinRootRemainderBound", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.HeckeSectionsIsotropicCommutatorPairingPower\npublic import Development.WeilBound.CoreStatements.FlagImmersions.TwoMulThreePowLeFactorial\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace GlobalTheory.CompanionTheory.Ar.Top

theorem restSum_total_bound : ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (j : ℕ) (bad : Finset ℕ) (frob : ℕ → Ψ → ℕ → Ψ ⊕ Ψ) (u : Wt Ψ N) (g : ℝ) (B : ℕ) (Q : Ψ → ℕ → RP Ψ N), 1 ≤ j → j < N → WeightHyp j u g → bigB0 u g < B + 1 → IsDecomp (linRoot u ^ (dimFl Ψ N + 1)) Q → |∑ τ, ∑ k ∈ Finset.Icc 1 N, restSum j bad frob B τ k (Q τ k)| ≤ 2 * (((dimFl Ψ N : ℝ) + 1) * flagDeg u) * ((min j (N - j) : ℕ) * spread u) :=
  RootFieldNumerics.rest_sum_total_bound

end GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.LinRootRemainderBound =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PowerSumDeltaDecomposition =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PowerSumDeltaDecomposition", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.HeckeSectionsIsotropicCommutatorPairingPower\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagShiftTotalPowerSum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace GlobalTheory.CompanionTheory.Ar.Top

def lieRank {Ψ : Type} (N j : ℕ) (s : Ψ ⊕ Ψ) : ℝ := if s.isLeft then (j : ℝ) else ((N - j : ℕ) : ℝ)

theorem delta_card_filter_lt {N j : ℕ} (hj : j ≤ N) :
    (Finset.univ.filter (fun i : Fin N => (i : ℕ) < j)).card = j := by
  have h : (Finset.univ.filter (fun i : Fin N => (i : ℕ) < j)).map Fin.valEmbedding = Finset.range j := by
    ext a
    simp only [Finset.mem_map, Finset.mem_filter, Finset.mem_univ, true_and, Fin.valEmbedding_apply, Finset.mem_range]
    constructor
    · rintro ⟨i, hi, rfl⟩
      exact hi
    · intro ha
      exact ⟨⟨a, lt_of_lt_of_le ha hj⟩, ha, rfl⟩
  rw [← Finset.card_map Fin.valEmbedding, h, Finset.card_range]

theorem delta_card_filter_ge {N j : ℕ} (hj : j ≤ N) :
    (Finset.univ.filter (fun i : Fin N => j ≤ (i : ℕ))).card = N - j := by
  have h := Finset.card_filter_add_card_filter_not (s := (Finset.univ : Finset (Fin N))) (fun i : Fin N => (i : ℕ) < j)
  simp only [not_lt, Finset.card_univ, Fintype.card_fin] at h
  rw [delta_card_filter_lt hj] at h
  omega

theorem pLie_zero {Ψ : Type} {N j : ℕ} (hj : j ≤ N) (s : Ψ ⊕ Ψ) :
    (pLie j 0 s : RP Ψ N) = C (lieRank N j s) := by
  cases s with
  | inl τ =>
    simp only [pLie, pkLow, pow_zero, Finset.sum_const, delta_card_filter_lt hj, lieRank, Sum.isLeft_inl, if_true,
      nsmul_eq_mul, mul_one, map_natCast]
  | inr τ =>
    simp only [pLie, pow_zero, Finset.sum_const, delta_card_filter_ge hj, lieRank, Sum.isLeft_inr,
      Bool.false_eq_true, if_false, nsmul_eq_mul, mul_one, map_natCast]

theorem degFl_C_mul {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {N : ℕ} (c : ℝ) (Q : RP Ψ N) :
    degFl (C c * Q) = c * degFl Q := by
  simp only [degFl, coeff_C_mul]
  have h : ∀ f g : (Ψ → Equiv.Perm (Fin N)) → ℝ, ∑ σ, f σ * (c * g σ) = c * ∑ σ, f σ * g σ := by
    intro f g
    rw [Finset.mul_sum]
    exact Finset.sum_congr rfl (fun _ _ => by ring)
  rw [h]
  ring

theorem deltaTerm_eq : ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (j : ℕ) (frob : ℕ → Ψ → ℕ → Ψ ⊕ Ψ), j ≤ N → 0 < N → FrobShape frob → ∃ κ : ℕ → ℝ, ∀ (p : ℕ) (τ : Ψ) (k : ℕ) (Q : RP Ψ N), 2 ≤ p → 1 ≤ k → deltaTerm j p τ (frob p τ) k Q = -(Real.log p / ((p : ℝ) - 1)) * ∑ σ, Sh j σ (pk τ k * Q) + κ p * ∑ σ, Tot σ (pk τ k * Q) + restTerm j p (frob p τ) k Q := by
  intro Ψ _ _ N j frob hj hN hF
  rcases isEmpty_or_nonempty Ψ with hE | ⟨⟨τ₀⟩⟩
  · exact ⟨0, fun _ τ => isEmptyElim τ⟩
  refine ⟨fun p => Real.log p / N * ∑' n : ℕ, ((p : ℝ) ^ 1)⁻¹ ^ (n + 1) * lieRank N j (frob p τ₀ n), ?_⟩
  intro p τ k Q hp hk
  have hN' : (N : ℝ) ≠ 0 := by exact_mod_cast hN.ne'
  have hSh : ∑ σ, Sh j σ (pk τ k * Q) = k * degFl (pkLow j τ (k - 1) * Q) := by
    rw [Finset.sum_congr rfl (fun σ _ => (_root_.GlobalTheory.CompanionTheory.Ar.Top.sh_tot_pk_mul Ψ N j τ σ k Q hk).1)]
    simp
  have hTot : ∑ σ, Tot σ (pk τ k * Q) = if k = 1 then N * degFl Q else 0 := by
    rw [Finset.sum_congr rfl (fun σ _ => (_root_.GlobalTheory.CompanionTheory.Ar.Top.sh_tot_pk_mul Ψ N j τ σ k Q hk).2)]
    by_cases h1 : k = 1 <;> simp [h1]
  rw [hSh, hTot]
  by_cases h1 : k = 1
  · subst h1
    have hrank : ∀ n, degFl (pLie j (1 - 1) (frob p τ n) * Q) =
        lieRank N j (frob p τ₀ n) * degFl Q := by
      intro n
      have : lieRank N j (frob p τ n) = lieRank N j (frob p τ₀ n) := by
        simp only [lieRank, hF p n τ τ₀]
      rw [Nat.sub_self, pLie_zero hj, degFl_C_mul, this]
    have hsum : (∑' n : ℕ, ((p : ℝ) ^ 1)⁻¹ ^ (n + 1) * degFl (pLie j (1 - 1) (frob p τ n) * Q)) =
        (∑' n : ℕ, ((p : ℝ) ^ 1)⁻¹ ^ (n + 1) * lieRank N j (frob p τ₀ n)) * degFl Q := by
      rw [← tsum_mul_right]
      exact tsum_congr (fun n => by rw [hrank]; ring)
    simp only [deltaTerm, restTerm, hsum]
    simp only [if_true, Nat.not_ofNat_le_one, if_false]
    field_simp
    ring
  · have h2 : 2 ≤ k := by omega
    simp only [deltaTerm, restTerm, h1, if_false, h2, if_true]
    ring

end GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PowerSumDeltaDecomposition =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerIdentityAtCutoff =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerIdentityAtCutoff", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.HeckeSectionsIsotropicCommutatorPairingPower\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\npublic import Mathlib.RingTheory.MvPolynomial.Homogeneous\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ExistsFlagDegreeOnePolys\npublic import Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagDegreeLinearFunctionals\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagShiftTotalPowerSum\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PowerSumDeltaDecomposition\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RemainderTermSummable\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Top

theorem abs_apply_le_of_monomial_bound {σ : Type} (G : MvPolynomial σ ℝ →ₗ[ℝ] ℝ) (F : MvPolynomial σ ℝ) {d : ℕ}
    (hF : F.IsHomogeneous d) {e : ℝ} (he : ∀ m : σ →₀ ℕ, m.degree = d → |G (monomial m 1)| ≤ e) :
    |G F| ≤ (∑ m ∈ F.support, |F.coeff m|) * e := by
  have h1 : G F = ∑ m ∈ F.support, F.coeff m * G (monomial m 1) := by
    conv_lhs => rw [F.as_sum]

    rw [map_sum]
    refine Finset.sum_congr rfl fun m _ => ?_
    have : monomial m (F.coeff m) = F.coeff m • monomial m (1 : ℝ) := by
      rw [smul_monomial]; simp
    rw [this, map_smul, smul_eq_mul]
  rw [h1, Finset.sum_mul]
  refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun m hm => ?_)
  rw [abs_mul]
  refine mul_le_mul_of_nonneg_left (he m ?_) (abs_nonneg _)
  by_contra hne
  exact (mem_support_iff.mp hm) (hF.coeff_eq_zero hne)

theorem tendsto_coeffs_of_tests {a b R₁ R₂ E₁ E₂ : ℕ → ℝ} {v H₁ H₂ L₁ L₂ r₁ r₂ s₁ n s₂ t₂ : ℝ}
    (hv : v ≠ 0) (hn : n ≠ 0) (hs₂ : s₂ ≠ 0) (ht₂ : t₂ = 0)
    (hR₁ : Tendsto R₁ atTop (𝓝 r₁)) (hR₂ : Tendsto R₂ atTop (𝓝 r₂))
    (hE₁ : Tendsto E₁ atTop (𝓝 0)) (hE₂ : Tendsto E₂ atTop (𝓝 0))
    (h₁ : ∀ᶠ B in atTop, L₁ = v * (H₁ - a B * s₁ - b B * n + R₁ B) + E₁ B)
    (h₂ : ∀ᶠ B in atTop, L₂ = v * (H₂ - a B * s₂ - b B * t₂ + R₂ B) + E₂ B) :
    ∃ A b₀ : ℝ, Tendsto a atTop (𝓝 A) ∧ Tendsto b atTop (𝓝 b₀) := by
  subst ht₂
  have ha : Tendsto a atTop (𝓝 ((H₂ + r₂ + 0 / v - L₂ / v) / s₂)) := by
    have h := (((hR₂.const_add H₂).add (hE₂.div_const v)).sub_const (L₂ / v)).div_const s₂
    refine h.congr' ?_
    filter_upwards [h₂] with B hB
    rw [hB]
    field_simp
    ring
  have hb : Tendsto b atTop (𝓝 ((H₁ - (H₂ + r₂ + 0 / v - L₂ / v) / s₂ * s₁ + r₁ + 0 / v - L₁ / v) / n)) := by
    have h := (((((ha.mul_const s₁).const_sub H₁).add hR₁).add (hE₁.div_const v)).sub_const (L₁ / v)).div_const n
    refine h.congr' ?_
    filter_upwards [h₁] with B hB
    rw [hB]
    field_simp
    ring
  exact ⟨_, _, ha, hb⟩

theorem eq_of_tendsto_coeffs {a b R E : ℕ → ℝ} {v H L s t A b₀ r : ℝ}
    (ha : Tendsto a atTop (𝓝 A)) (hb : Tendsto b atTop (𝓝 b₀)) (hR : Tendsto R atTop (𝓝 r))
    (hE : Tendsto E atTop (𝓝 0))
    (h : ∀ᶠ B in atTop, L = v * (H - a B * s - b B * t + R B) + E B) :
    L = v * (H - A * s - b₀ * t + r) := by
  have h1 : Tendsto (fun B => v * (H - a B * s - b B * t + R B) + E B) atTop
      (𝓝 (v * (H - A * s - b₀ * t + r) + 0)) :=
    ((((((ha.mul_const s).const_sub H).sub (hb.mul_const t)).add hR).const_mul v)).add hE
  have h2 : Tendsto (fun B => v * (H - a B * s - b B * t + R B) + E B) atTop (𝓝 L) :=
    tendsto_const_nhds.congr' (h.mono fun B hB => hB)
  simpa using tendsto_nhds_unique h2 h1

theorem tendsto_const_mul_log_div (c C : ℝ) :
    Tendsto (fun B : ℕ => c * (C * Real.log B / B)) atTop (𝓝 0) := by
  have h := (Real.tendsto_pow_log_div_mul_add_atTop 1 0 1 one_ne_zero).comp tendsto_natCast_atTop_atTop
  have h2 := (h.const_mul C).const_mul c
  simp only [mul_zero] at h2
  refine h2.congr fun B => ?_
  simp [mul_div_assoc]

section

variable {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {N : ℕ}

theorem pk_mul_isHomogeneous (hN : 2 ≤ N) (τ : Ψ) {k : ℕ} (hk : k ≤ N) {Q : RP Ψ N}
    (hQ : Q.IsHomogeneous (dimFl Ψ N + 1 - k)) : (pk τ k * Q : RP Ψ N).IsHomogeneous (dimFl Ψ N + 1) := by
  have hpk : (pk τ k : RP Ψ N).IsHomogeneous k :=
    IsHomogeneous.sum _ _ _ fun i _ => isHomogeneous_X_pow _ _
  have h1 : N - 1 ≤ N * (N - 1) / 2 := by
    rw [Nat.le_div_iff_mul_le (by norm_num), mul_comm N]
    exact Nat.mul_le_mul_left _ hN
  have h2 : N * (N - 1) / 2 ≤ dimFl Ψ N :=
    Nat.le_mul_of_pos_left _ (Fintype.card_pos_iff.mpr ⟨τ⟩)
  have h3 : k + (dimFl Ψ N + 1 - k) = dimFl Ψ N + 1 := by omega
  simpa [h3] using hpk.mul hQ

theorem exists_finite_identity (II : IntersectionSystem) (T : RootTower Ψ N) (hh : RP Ψ N →ₗ[ℝ] ℝ)
    (frob : ℕ → Ψ → ℕ → Ψ ⊕ Ψ) (hshape : FrobShape frob) (h6 : T.Prop6 II frob) (hBA : T.ThmBA II hh)
    (B₀ : ℕ) (hB₀ : 2 ≤ B₀) :
    ∃ a b : ℕ → ℝ, ∀ (τ : Ψ) (k : ℕ), 1 ≤ k → k ≤ N → ∀ Q : RP Ψ N, Q.IsHomogeneous (dimFl Ψ N + 1 - k) →
      ∃ E : ℕ → ℝ, Tendsto E atTop (𝓝 0) ∧ ∀ᶠ B : ℕ in atTop,
        T.PPt II B₀ (pk τ k * Q) = T.volT * (hh (pk τ k * Q) - a B * ∑ σ, Sh T.j σ (pk τ k * Q) -
          b B * ∑ σ, Tot σ (pk τ k * Q) +
          ∑ p ∈ (Finset.Ioc B₀ B).filter (fun p => p.Prime ∧ p ∉ T.bad), restTerm T.j p (frob p τ) k Q) + E B := by
  have hN : 2 ≤ N := by have := T.j_pos; have := T.j_lt; omega
  obtain ⟨κ, hκ⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Top.deltaTerm_eq Ψ N T.j frob T.j_lt.le (by omega) hshape
  obtain ⟨-, hSh, hTot, -⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Top.degFl_Sh_Tot_linear Ψ N
  choose ΦS hΦS using hSh
  choose ΦT hΦT using hTot
  obtain ⟨C, B₁, hC⟩ := hBA
  choose! α β hαβ using hC
  let PL : ℕ → (RP Ψ N →ₗ[ℝ] ℝ) := fun B => ∑ c, ((T.M B c).PP II).comp (rename some).toLinearMap
  have hPL : ∀ B F, PL B F = T.PPt II B F := by
    intro B F
    simp [PL, RootTower.PPt, RootTower.PPc, toA, LinearMap.sum_apply]
  let G : ℕ → (RP Ψ N →ₗ[ℝ] ℝ) := fun B =>
    PL B - T.volT • (hh - (α B - β B) • (∑ σ, ΦS T.j σ) - β B • (∑ σ, ΦT σ))
  have hG : ∀ B F, G B F = T.PPt II B F - T.volT * (hh F - (α B - β B) * ∑ σ, Sh T.j σ F -
      β B * ∑ σ, Tot σ F) := by
    intro B F
    simp [G, hPL, LinearMap.sum_apply, hΦS, hΦT]
  let S : ℕ → Finset ℕ := fun B => (Finset.Ioc B₀ B).filter (fun p => p.Prime ∧ p ∉ T.bad)
  refine ⟨fun B => α B - β B + ∑ p ∈ S B, Real.log p / ((p : ℝ) - 1), fun B => β B - ∑ p ∈ S B, κ p,
    fun τ k hk1 hkN Q hQ => ?_⟩
  have hF := pk_mul_isHomogeneous hN τ hkN hQ
  refine ⟨fun B => G B (pk τ k * Q), ?_, ?_⟩
  · refine squeeze_zero_norm' ?_ (tendsto_const_mul_log_div (∑ m ∈ (pk τ k * Q : RP Ψ N).support,
      |(pk τ k * Q : RP Ψ N).coeff m|) C)
    filter_upwards [eventually_ge_atTop B₁] with B hB
    rw [Real.norm_eq_abs]
    refine abs_apply_le_of_monomial_bound (G B) _ hF fun m hm => ?_
    rw [hG]
    exact hαβ B hB m hm
  · filter_upwards [eventually_ge_atTop B₀] with B hB
    have hsum : T.PPt II B₀ (pk τ k * Q) = T.PPt II B (pk τ k * Q) +
        T.volT * ∑ p ∈ S B, deltaTerm T.j p τ (frob p τ) k Q := by
      simp only [RootTower.PPt, RootTower.volT, Finset.sum_mul]
      rw [← Finset.sum_add_distrib]
      exact Finset.sum_congr rfl fun c _ => h6 B₀ B hB₀ hB c τ k hk1 hkN Q hQ
    have hdelta : ∑ p ∈ S B, deltaTerm T.j p τ (frob p τ) k Q =
        -(∑ p ∈ S B, Real.log p / ((p : ℝ) - 1)) * ∑ σ, Sh T.j σ (pk τ k * Q) +
          (∑ p ∈ S B, κ p) * ∑ σ, Tot σ (pk τ k * Q) + ∑ p ∈ S B, restTerm T.j p (frob p τ) k Q := by
      rw [Finset.sum_congr rfl fun p hp => hκ p τ k Q
        (Finset.mem_filter.mp hp).2.1.two_le hk1]
      rw [Finset.sum_add_distrib, Finset.sum_add_distrib, ← Finset.sum_mul, ← Finset.sum_mul,
        Finset.sum_neg_distrib]
    show T.PPt II B₀ (pk τ k * Q) = _
    rw [hG, hsum, hdelta]
    ring

end

end GlobalTheory.CompanionTheory.Ar.Top

theorem GlobalTheory.CompanionTheory.Ar.Top.exists_identAt : ∀ II : IntersectionSystem, ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ)
    (T : RootTower Ψ N) (hh : RP Ψ N →ₗ[ℝ] ℝ) (frob : ℕ → Ψ → ℕ → Ψ ⊕ Ψ), T.Proportional → FrobShape frob →
    T.Prop6 II frob → T.ThmBA II hh → ∀ B₀ : ℕ, 2 ≤ B₀ → ∃ A₀ b₀ : ℝ, T.IdentAt II hh frob B₀ A₀ b₀ := by
  intro II Ψ _ _ N T hh frob hprop hshape h6 hBA B₀ hB₀
  have hvol : 0 < T.volT := Finset.sum_pos (fun c _ => hprop.1 c) Finset.univ_nonempty
  have hN : 2 ≤ N := by have := T.j_pos; have := T.j_lt; omega
  obtain ⟨a, b, hid⟩ := exists_finite_identity II T hh frob hshape h6 hBA B₀ hB₀
  have hrest : ∀ (τ : Ψ) (k : ℕ) (Q : RP Ψ N), _ := fun τ k Q =>
    (_root_.GlobalTheory.CompanionTheory.Ar.Top.restTerm_bound_and_tendsto Ψ N T.j T.bad frob τ k Q).2 B₀
  by_cases hΨ : Nonempty Ψ
  · obtain ⟨τ₀⟩ := hΨ
    obtain ⟨⟨Q₁, hQ₁, hd₁⟩, Q₂, hQ₂, hd₂⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Top.testForms_sh_tot Ψ N T.j τ₀ T.j_pos T.j_lt
    have hQ₁' : Q₁.IsHomogeneous (dimFl Ψ N + 1 - 1) := by simpa using hQ₁
    have hQ₂' : Q₂.IsHomogeneous (dimFl Ψ N + 1 - 2) := by
      have : dimFl Ψ N + 1 - 2 = dimFl Ψ N - 1 := by omega
      rwa [this]
    obtain ⟨E₁, hE₁, h₁⟩ := hid τ₀ 1 le_rfl (by omega) Q₁ hQ₁'
    obtain ⟨E₂, hE₂, h₂⟩ := hid τ₀ 2 (by omega) hN Q₂ hQ₂'
    have hn : ∑ σ, Tot σ (pk τ₀ 1 * Q₁) ≠ 0 := by
      have h5 := fun σ => (_root_.GlobalTheory.CompanionTheory.Ar.Top.sh_tot_pk_mul Ψ N T.j τ₀ σ 1 Q₁ le_rfl).2
      simp only [h5, hd₁]
      simp
      omega
    have hs₂ : ∑ σ, Sh T.j σ (pk τ₀ 2 * Q₂) ≠ 0 := by
      have h5 := fun σ => (_root_.GlobalTheory.CompanionTheory.Ar.Top.sh_tot_pk_mul Ψ N T.j τ₀ σ 2 Q₂ (by omega)).1
      simp only [h5]
      simp [hd₂]
    have ht₂ : ∑ σ, Tot σ (pk τ₀ 2 * Q₂) = 0 := by
      have h5 := fun σ => (_root_.GlobalTheory.CompanionTheory.Ar.Top.sh_tot_pk_mul Ψ N T.j τ₀ σ 2 Q₂ (by omega)).2
      simp [h5]
    obtain ⟨A₀, b₀, ha, hb⟩ := tendsto_coeffs_of_tests hvol.ne' hn hs₂ ht₂
      (hrest τ₀ 1 Q₁) (hrest τ₀ 2 Q₂) hE₁ hE₂ h₁ h₂
    refine ⟨A₀, b₀, fun τ k hk1 hkN Q hQ => ?_⟩
    obtain ⟨E, hE, h⟩ := hid τ k hk1 hkN Q hQ
    exact eq_of_tendsto_coeffs ha hb (hrest τ k Q) hE h
  · exact ⟨0, 0, fun τ => (hΨ ⟨τ⟩).elim⟩
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerIdentityAtCutoff =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerT2 =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerT2", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.HeckeSectionsIsotropicCommutatorPairingPower\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.CutoffCoefficientsBound\npublic import Mathlib.Algebra.BigOperators.Group.Finset.Defs\npublic import Mathlib.Basic.Real.Basic\npublic import Mathlib.Data.Fintype.Basic\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.DominantPartialSumBounds\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagDegreeWeightFormula\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagShiftTotalLinRootPower\npublic import Mathlib.RingTheory.MvPolynomial.Homogeneous\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.HomogeneousPowerSumDecomposition\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.LinRootRemainderBound\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerHeightIdentityExpansion\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerIdentityAtCutoff\npublic import Mathlib.RingTheory.MvPolynomial\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace GlobalTheory.CompanionTheory.Ar.Top

theorem label_term_lower {A b K C' abelian₂ n j s t a : ℝ} (hn : 0 < n) (hK : 0 ≤ K) (hC : 0 ≤ C') (hL : 0 ≤ abelian₂)
    (hA : -(K * abelian₂) ≤ A) (hflat : |j * A + n * b| ≤ C' * n * abelian₂)
    (hc0 : 0 ≤ s - j * (t / n)) (hc1 : s - j * (t / n) ≤ a) (ht : |t| ≤ a) :
    -((K + C') * abelian₂ * a) ≤ A * s + b * t := by
  have hid : A * s + b * t = A * (s - j * (t / n)) + (j * A + n * b) * (t / n) := by
    field_simp
    ring
  have hKL : 0 ≤ K * abelian₂ := mul_nonneg hK hL
  have h1 : -(K * abelian₂ * a) ≤ A * (s - j * (t / n)) := by
    have e1 : -(K * abelian₂) * (s - j * (t / n)) ≤ A * (s - j * (t / n)) :=
      mul_le_mul_of_nonneg_right hA hc0
    have e2 : K * abelian₂ * (s - j * (t / n)) ≤ K * abelian₂ * a := mul_le_mul_of_nonneg_left hc1 hKL
    linarith
  have h2 : -(C' * abelian₂ * a) ≤ (j * A + n * b) * (t / n) := by
    have e0 : |(j * A + n * b) * (t / n)| ≤ C' * abelian₂ * a := by
      rw [abs_mul, abs_div, abs_of_pos hn]
      have e3 : |j * A + n * b| * (|t| / n) ≤ C' * n * abelian₂ * (|t| / n) :=
        mul_le_mul_of_nonneg_right hflat (div_nonneg (abs_nonneg _) hn.le)
      have e4 : C' * n * abelian₂ * (|t| / n) = C' * abelian₂ * |t| := by
        field_simp
      have e5 : C' * abelian₂ * |t| ≤ C' * abelian₂ * a := mul_le_mul_of_nonneg_left ht (mul_nonneg hC hL)
      linarith
    exact (abs_le.mp e0).1
  rw [hid]
  nlinarith [h1, h2]

theorem linRoot_isHomogeneous {Ψ : Type} [Fintype Ψ] {N : ℕ} (u : Wt Ψ N) :
    (linRoot u : RP Ψ N).IsHomogeneous 1 := by
  unfold linRoot
  refine IsHomogeneous.neg ?_
  exact IsHomogeneous.sum _ _ _ fun x _ => isHomogeneous_C_mul_X _ _

theorem spread_nonneg {Ψ : Type} [Fintype Ψ] {N : ℕ} (hN : 0 < N) (u : Wt Ψ N) : 0 ≤ spread u := by
  haveI : Nonempty (Fin N) := ⟨⟨0, hN⟩⟩
  refine Finset.sum_nonneg fun τ _ => ?_
  have i₀ : Fin N := ⟨0, hN⟩
  have h1 : u τ i₀ ≤ ⨆ i, u τ i := le_ciSup (Set.finite_range _).bddAbove i₀
  have h2 : (⨅ i, u τ i) ≤ u τ i₀ := ciInf_le (Set.finite_range _).bddBelow i₀
  linarith

theorem RegDominant.dominant' {Ψ : Type} {N : ℕ} {u : Wt Ψ N} (h : RegDominant u) : Dominant u := by
  intro τ a b hab
  rcases hab.lt_or_eq with h1 | h1
  · exact (h τ a b h1).le
  · rw [h1]

theorem tower_T2_of_inputs : ∀ II : IntersectionSystem, ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (T : RootTower Ψ N)
    (hh : RP Ψ N →ₗ[ℝ] ℝ) (frob : ℕ → Ψ → ℕ → Ψ ⊕ Ψ) (K C' rd Lval : ℝ), 0 ≤ K → 0 ≤ C' → 1 ≤ rd →
    T.Proportional → FrobShape frob → I9 (Ψ := Ψ) (N := N) hh → T.Prop6 II frob → T.ThmBA II hh →
    T.PropF II C' rd Lval → T.LowerBoundAtBase II hh frob K rd Lval → T.T2 II (K + C' + 2) rd Lval := by
  intro II Ψ _ _ N T hh frob K C' rd Lval hK hC hrd hprop hshape hI9 hP6 hBA hF hA0 u g hW B hB128 hB0 hbad
  have hN2 : 2 ≤ N := by
    have := T.j_pos; have := T.j_lt; omega
  have hNpos : (0 : ℝ) < N := by exact_mod_cast (by omega : 0 < N)
  rcases isEmpty_or_nonempty Ψ with hΨ | hΨ
  · have h0 : (linRoot u : RP Ψ N) = 0 := by simp [linRoot]
    have hPB : T.PB II B u = 0 := by
      simp [RootTower.PB, RootTower.PPt, RootTower.PPc, h0, toA]
    have hbr : T.bracket rd Lval B u = 0 := by
      simp [RootTower.bracket, l1, spread]
    rw [hPB, hbr]
    simp
  obtain ⟨hg, hreg, -, -⟩ := id hW
  have hdom : Dominant u := RegDominant.dominant' hreg

  have hfpos : 1 ≤ Fintype.card Ψ := Fintype.card_pos
  have hBig : 4 * Fintype.card Ψ * N ^ 2 ≤ B := by
    have h1 : (4 * (Fintype.card Ψ : ℝ) * (N : ℝ) ^ 2) ≤ bigB0 u g := by
      unfold bigB0
      have h2 : 0 ≤ ‖u‖ / g := div_nonneg (norm_nonneg _) hg.le
      have h3 : 0 ≤ 4 * (Fintype.card Ψ : ℝ) * (N : ℝ) ^ 2 := by positivity
      nlinarith
    have h4 : (4 * (Fintype.card Ψ : ℝ) * (N : ℝ) ^ 2) < (B : ℝ) + 1 := lt_of_le_of_lt h1 hB0
    have h5 : 4 * Fintype.card Ψ * N ^ 2 < B + 1 := by exact_mod_cast h4
    omega
  obtain ⟨A₀, b₀, hId⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Top.exists_identAt II Ψ N T hh frob hprop hshape hP6 hBA B (by omega)
  have hAl := hA0 B A₀ b₀ hB128 hBig hbad hId
  have hfl := _root_.GlobalTheory.CompanionTheory.Ar.Top.flat_85_bound II Ψ N T hh frob C' rd Lval B A₀ b₀ hprop hI9 hF hB128 hbad hId
  have hHom : (linRoot u ^ (dimFl Ψ N + 1) : RP Ψ N).IsHomogeneous (dimFl Ψ N + 1) := by
    simpa using (linRoot_isHomogeneous u).pow (dimFl Ψ N + 1)
  obtain ⟨Q, hQ1, hQ2⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Top.form_top_succ_eq_sum_pk Ψ N _ hN2 hHom
  have hDec : IsDecomp (linRoot u ^ (dimFl Ψ N + 1)) Q := ⟨hQ1, hQ2⟩
  have hEq := _root_.GlobalTheory.CompanionTheory.Ar.Top.identOnDecomposedForm II Ψ N T hh frob B A₀ b₀ _ Q hId hDec
  have hRest := _root_.GlobalTheory.CompanionTheory.Ar.Top.restSum_total_bound Ψ N T.j T.bad frob u g B Q T.j_pos T.j_lt hW hB0 hDec
  have hhF : 0 ≤ hh (linRoot u ^ (dimFl Ψ N + 1)) := hI9.2.1 u hdom
  have hdeg : 0 < flagDeg u := (GlobalTheory.CompanionTheory.Ar.Top.flagDeg_eq_weyl Ψ N u).2.1 hreg
  have hV : 0 < T.volT := Finset.sum_pos (fun c _ => hprop.1 c) Finset.univ_nonempty
  have hLam : 0 ≤ bigLam B rd Lval := by
    unfold bigLam
    have h1 : (1 : ℝ) ≤ (B : ℝ) * rd := by
      have : (1 : ℝ) ≤ B := by exact_mod_cast (by omega : 1 ≤ B)
      nlinarith
    have := Real.log_nonneg h1
    have := abs_nonneg Lval
    linarith
  set E : ℝ := ((dimFl Ψ N : ℝ) + 1) * flagDeg u with hE
  have hEpos : 0 < E := by positivity
  set abelian₂ := bigLam B rd Lval with hLamDef
  have hsum : -((K + C') * abelian₂ * l1 u) ≤
      ∑ σ, (A₀ * (∑ i ∈ Finset.univ.filter (fun i : Fin N => (i : ℕ) < T.j), u σ i) + b₀ * ∑ i, u σ i) := by
    have : ∀ σ ∈ (Finset.univ : Finset Ψ), -((K + C') * abelian₂ * ∑ i, |u σ i|) ≤
        A₀ * (∑ i ∈ Finset.univ.filter (fun i : Fin N => (i : ℕ) < T.j), u σ i) + b₀ * ∑ i, u σ i := by
      intro σ _
      obtain ⟨l1', l2', l3'⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Top.partialSum_sub_mean_bounds N T.j (u σ) T.j_lt.le (by omega) (fun a b h => hdom σ a b h)
      exact label_term_lower hNpos hK hC hLam hAl hfl l1' l2' l3'
    have h2 := Finset.sum_le_sum this
    have h3 : ∑ σ, -((K + C') * abelian₂ * ∑ i, |u σ i|) = -((K + C') * abelian₂ * l1 u) := by
      rw [Finset.sum_neg_distrib, ← Finset.mul_sum]
      rfl
    rwa [h3] at h2
  have hShTot : -(A₀ * ∑ σ, Sh T.j σ (linRoot u ^ (dimFl Ψ N + 1))) -
      b₀ * ∑ σ, Tot σ (linRoot u ^ (dimFl Ψ N + 1)) =
      E * ∑ σ, (A₀ * (∑ i ∈ Finset.univ.filter (fun i : Fin N => (i : ℕ) < T.j), u σ i) + b₀ * ∑ i, u σ i) := by
    simp only [fun σ => (_root_.GlobalTheory.CompanionTheory.Ar.Top.Sh_Tot_linRoot_pow Ψ N T.j σ u).1, fun σ => (_root_.GlobalTheory.CompanionTheory.Ar.Top.Sh_Tot_linRoot_pow Ψ N T.j σ u).2]
    simp only [Finset.sum_neg_distrib, ← Finset.mul_sum, Finset.sum_add_distrib]
    ring
  have hSpread : 0 ≤ ((min T.j (N - T.j) : ℕ) : ℝ) * spread u :=
    mul_nonneg (Nat.cast_nonneg _) (spread_nonneg (by omega) u)
  have hl1 : 0 ≤ l1 u := Finset.sum_nonneg fun τ _ => Finset.sum_nonneg fun i _ => abs_nonneg _
  have hLl : 0 ≤ abelian₂ * l1 u := mul_nonneg hLam hl1
  set R := ∑ τ, ∑ k ∈ Finset.Icc 1 N, restSum T.j T.bad frob B τ k (Q τ k) with hR
  set Sp := ((min T.j (N - T.j) : ℕ) : ℝ) * spread u with hSp
  have hRl : -(2 * E * Sp) ≤ R := (abs_le.mp hRest).1
  have hinner : -((K + C' + 2) * E * (abelian₂ * l1 u + Sp)) ≤
      hh (linRoot u ^ (dimFl Ψ N + 1)) - A₀ * ∑ σ, Sh T.j σ (linRoot u ^ (dimFl Ψ N + 1)) -
        b₀ * ∑ σ, Tot σ (linRoot u ^ (dimFl Ψ N + 1)) + R := by
    have e1 : E * -((K + C') * abelian₂ * l1 u) ≤ E * ∑ σ, (A₀ * (∑ i ∈ Finset.univ.filter (fun i : Fin N => (i : ℕ) < T.j), u σ i) + b₀ * ∑ i, u σ i) :=
      mul_le_mul_of_nonneg_left hsum hEpos.le
    rw [← hShTot] at e1
    have e2 : 0 ≤ E * (2 * (abelian₂ * l1 u)) := by positivity
    have e3 : 0 ≤ E * ((K + C') * Sp) := mul_nonneg hEpos.le (mul_nonneg (add_nonneg hK hC) hSpread)
    nlinarith [e1, e2, e3, hRl, hhF]
  have hfin : T.volT * -((K + C' + 2) * E * (abelian₂ * l1 u + Sp)) ≤ T.PB II B u := by
    have : T.PB II B u = T.PPt II B (linRoot u ^ (dimFl Ψ N + 1)) := rfl
    rw [this, hEq]
    exact mul_le_mul_of_nonneg_left hinner hV.le
  have hgoal : -((K + C' + 2) * ((dimFl Ψ N : ℝ) + 1) * (T.volT * flagDeg u) * T.bracket rd Lval B u) =
      T.volT * -((K + C' + 2) * E * (abelian₂ * l1 u + Sp)) := by
    simp only [RootTower.bracket, hE, hSp, hLamDef]
    ring
  rw [hgoal]
  exact hfin

end GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerT2 =====
