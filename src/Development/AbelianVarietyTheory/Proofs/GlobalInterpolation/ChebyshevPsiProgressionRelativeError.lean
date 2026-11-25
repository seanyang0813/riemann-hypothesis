module

public import Development.AbelianVarietyTheory.Definitions.Foundations.RayPrimes
public import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.FiltrationCocycleLiftCriterion
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.FiniteBox
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.TruncatedExplicitFormula
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DirichletLZerosInWindowFiniteAndPosOrder
public import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ZeroCount
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.FinsumMemLeOfSubset
public import Mathlib.NumberTheory.LSeries.Nonvanishing
public import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt
public import Mathlib.NumberTheory.DirichletCharacter.Basic
public import Mathlib.NumberTheory.DirichletCharacter.Bounds
public import Mathlib.NumberTheory.Harmonic.Bounds
public import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.ZerosDisc
public import Mathlib.Data.FunLike.Fintype
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.DirichletLZerosEqPrimitiveCharacterZeros
public import Mathlib.NumberTheory.LSeries.DirichletContinuation
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExistsDirichletLFunctionZeroGapNearOne
public import Mathlib.Analysis.Complex.Trigonometric
public import Mathlib.Algebra.BigOperators.Field
public import Mathlib.Analysis.Normed.Field.Basic
public import Mathlib.Analysis.SpecialFunctions.Log.Basic
public import Mathlib.Analysis.SpecialFunctions.Complex.Arg
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.IteratedDerivLogDerivDirichletLViaNearbyZeros
public import Mathlib.NumberTheory.DirichletCharacter.Orthogonality
public import Mathlib.RingTheory.SimpleRing.Principal
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExceptionalDirichletZeroUniqueZeroFreeRegion
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.SumRpowZerosLe
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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
import Mathlib.RingTheory.Radical.NatInt
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
import Mathlib.Topology.Sheaves.Init
import Formalism.SharpRestriction.InertJacobiLevels.AsmIface
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.Complex.ExponentialBounds
import Formalism.SharpRestriction.CuspSpanNormBounds.Point
import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Lemma

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExplicitFormulaClosed, Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ZeroCountHolds, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DirichletLZeroSymmetry, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LogDerivSeriesOfExplicit, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SumIndicatorLeZsumR, Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExplicitFormulaDirichletZerosRightHalf, Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.WeightedFejerPositivity, Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.SumIccThreeQuartersPowLe, Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.Repulsion, Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ChebyshevPsiProgressionRelativeError

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExplicitFormulaClosed =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExplicitFormulaClosed", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.RayPrimes\npublic import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.FiltrationCocycleLiftCriterion\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.FiniteBox\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.TruncatedExplicitFormula\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DirichletLZerosInWindowFiniteAndPosOrder\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.SharpRestriction.InertJacobiLevels.AsmIface\n\n"}
section -- clump:auto
@[expose] public section

open Finset ArithmeticFunction NumberField IsDedekindDomain Filter Topology GlobalTheory.Mem.An Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.Inhab
open scoped nonZeroDivisors

namespace GlobalTheory.ExplicitFormulaClosed

theorem exists_open_eq_closed (f : ℂ → ℂ) (T : ℝ)
    (hfin : {ρ : ℂ | 0 < ρ.re ∧ ρ.re < 1 ∧ |ρ.im - 0| ≤ T + 1 ∧ f ρ = 0}.Finite) :
    ∃ T' : ℝ, T ≤ T' ∧ T' ≤ T + 1 ∧
      {ρ : ℂ | 0 < ρ.re ∧ ρ.re < 1 ∧ |ρ.im - 0| ≤ T ∧ f ρ = 0} =
        {ρ : ℂ | 0 < ρ.re ∧ ρ.re < 1 ∧ |ρ.im| < T' ∧ f ρ = 0} := by
  have h1 : ∀ᶠ T' in 𝓝[>] T, ∀ ρ ∈ {ρ : ℂ | 0 < ρ.re ∧ ρ.re < 1 ∧ |ρ.im - 0| ≤ T + 1 ∧ f ρ = 0},
      T < |ρ.im| → T' < |ρ.im| := by
    rw [Filter.eventually_all_finite hfin]
    intro ρ _
    by_cases h : T < |ρ.im|
    · exact ((eventually_lt_nhds h).filter_mono nhdsWithin_le_nhds).mono fun _ h' _ => h'
    · exact Filter.Eventually.of_forall fun _ h' => absurd h' h
  have h2 : ∀ᶠ T' in 𝓝[>] T, T' < T + 1 :=
    (eventually_lt_nhds (by linarith)).filter_mono nhdsWithin_le_nhds
  have h3 : ∀ᶠ T' in 𝓝[>] T, T < T' := self_mem_nhdsWithin
  obtain ⟨T', a1, a2, a3⟩ := (h1.and (h2.and h3)).exists
  refine ⟨T', a3.le, a2.le, ?_⟩
  ext ρ
  simp only [Set.mem_setOf_eq, sub_zero] at a1 ⊢
  constructor
  · rintro ⟨b0, b1, b2, b3⟩
    exact ⟨b0, b1, by linarith, b3⟩
  · rintro ⟨b0, b1, b2, b3⟩
    refine ⟨b0, b1, ?_, b3⟩
    by_contra h
    have := a1 ρ ⟨b0, b1, by linarith, b3⟩ (not_le.1 h)
    linarith

theorem explicit_formula_closed : ∃ C : ℝ, ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q), χ.IsPrimitive → ∀ u T : ℝ, 2 ≤ T → T ≤ u → ‖GlobalTheoryTheory.psi0 χ u + zsum χ 0 T (fun ρ => (u : ℂ) ^ ρ / ρ)‖ ≤ C * (u * Real.log (q * u * T) ^ 2 / T + Real.log (q * u) + zsumR χ 0 1 (fun ρ => 1 / ‖ρ‖)) := by
  obtain ⟨C₁, hC₁, h₁⟩ := GlobalTheory.ExplicitFormula.truncated_explicit_formula
  obtain ⟨C₂, hC₂, h₂⟩ := GlobalTheory.ZeroBand.zeros_band
  refine ⟨C₁ + C₂, fun q _ χ hχ u T hT hu => ?_⟩
  obtain ⟨T', hT1, hT2, hset⟩ := exists_open_eq_closed (DirichletCharacter.LFunction χ) T
    (GlobalTheory.Mem.An.ZeroWindow.finite_and_one_le_zmult q χ 0 (T + 1)).1
  have e1 := (h₁ q χ hχ u T hT hu).2
  have e2 := (h₂ q χ hχ u T T' hT hu hT1 hT2).2
  have hz : zsum χ 0 T (fun ρ => (u : ℂ) ^ ρ / ρ) =
      ∑ᶠ ρ ∈ {ρ : ℂ | 0 < ρ.re ∧ ρ.re < 1 ∧ |ρ.im| < T' ∧ DirichletCharacter.LFunction χ ρ = 0},
        ((analyticOrderNatAt (DirichletCharacter.LFunction χ) ρ : ℕ) : ℂ) * ((u : ℂ) ^ ρ / ρ) := by
    rw [← hset]; rfl
  have hF := (GlobalTheory.Mem.An.ZeroWindow.finite_and_one_le_zmult q χ 0 1).1
  have hsub : {ρ : ℂ | 0 < ρ.re ∧ ρ.re < 1 ∧ |ρ.im| < 1 ∧ DirichletCharacter.LFunction χ ρ = 0} ⊆
      zerosIn χ 0 1 := by
    rintro ρ ⟨b0, b1, b2, b3⟩
    exact ⟨b0, b1, by rw [sub_zero]; exact b2.le, b3⟩
  have hZ : ∑ᶠ ρ ∈ {ρ : ℂ | 0 < ρ.re ∧ ρ.re < 1 ∧ |ρ.im| < 1 ∧
        DirichletCharacter.LFunction χ ρ = 0},
      ((analyticOrderNatAt (DirichletCharacter.LFunction χ) ρ : ℕ) : ℝ) / ‖ρ‖ ≤
      zsumR χ 0 1 (fun ρ => 1 / ‖ρ‖) := by
    unfold zsumR
    rw [finsum_mem_eq_finite_toFinset_sum _ hF, finsum_mem_eq_finite_toFinset_sum _ (hF.subset hsub)]
    refine le_trans (le_of_eq (Finset.sum_congr rfl fun ρ _ => ?_))
      (Finset.sum_le_sum_of_subset_of_nonneg (Set.Finite.toFinset_subset_toFinset.2 hsub)
        fun ρ _ _ => by positivity)
    rw [mul_one_div]; rfl
  have hZ0 : 0 ≤ zsumR χ 0 1 (fun ρ => 1 / ‖ρ‖) :=
    finsum_nonneg fun ρ => finsum_nonneg fun _ => by positivity
  have hq : (1 : ℝ) ≤ q := by exact_mod_cast Nat.one_le_iff_ne_zero.mpr (NeZero.ne q)
  have hB : 0 ≤ Real.log (q * u) := Real.log_nonneg (by nlinarith)
  have key : ∀ P Z Z' : ℂ, ‖P + Z'‖ ≤ ‖P + Z‖ + ‖Z' - Z‖ := by
    intro P Z Z'
    have : P + Z' = (P + Z) + (Z' - Z) := by ring
    rw [this]
    exact norm_add_le _ _
  rw [hz]
  refine (key _ _ _).trans ((add_le_add e1 e2).trans ?_)
  generalize (∑ᶠ ρ ∈ {ρ : ℂ | 0 < ρ.re ∧ ρ.re < 1 ∧ |ρ.im| < 1 ∧
        DirichletCharacter.LFunction χ ρ = 0},
      ((analyticOrderNatAt (DirichletCharacter.LFunction χ) ρ : ℕ) : ℝ) / ‖ρ‖) = Z at hZ ⊢
  generalize zsumR χ 0 1 (fun ρ => 1 / ‖ρ‖) = Z' at hZ hZ0 ⊢
  generalize u * Real.log (q * u * T) ^ 2 / T = A
  generalize Real.log (q * u) = B at hB ⊢
  have a1 : C₁ * (A + B + Z) ≤ C₁ * (A + B + Z') := mul_le_mul_of_nonneg_left (by linarith) hC₁.le
  have a2 : C₂ * A ≤ C₂ * (A + B + Z') := mul_le_mul_of_nonneg_left (by linarith) hC₂.le
  nlinarith

end GlobalTheory.ExplicitFormulaClosed
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExplicitFormulaClosed =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ZeroCountHolds =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ZeroCountHolds", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ZeroCount\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.FinsumMemLeOfSubset\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory.Mem.An

theorem zeroCount_holds : GlobalTheory.Mem.An.ZeroCount := by
  obtain ⟨C, -, H⟩ := GlobalTheory.ZeroWindow.count_zeros_window
  refine ⟨C, fun q _ χ hχ t => ?_⟩
  have h := (H q χ hχ t).2
  simpa only [zsumR, zerosIn, zmult, mul_one] using h

end GlobalTheory.Mem.An
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ZeroCountHolds =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DirichletLZeroSymmetry =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DirichletLZeroSymmetry", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.RayPrimes\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\npublic import Mathlib.NumberTheory.LSeries.Nonvanishing\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Filter Topology Complex GlobalTheory.Mem.An

namespace GlobalTheory.Mem.An

section
variable {q : ℕ}

theorem zsym_gammaFactor_ne_zero (χ : DirichletCharacter ℂ q) {s : ℂ} (hs : 0 < s.re) :
    χ.gammaFactor s ≠ 0 := by
  rcases χ.even_or_odd with h | h <;> rw [h.gammaFactor_def]
  · exact Gammaℝ_ne_zero_of_re_pos hs
  · exact Gammaℝ_ne_zero_of_re_pos (by simp; linarith)

theorem zsym_differentiable_gammaFactor_inv (χ : DirichletCharacter ℂ q) :
    Differentiable ℂ (fun s => (χ.gammaFactor s)⁻¹) := by
  rcases χ.even_or_odd with h | h <;> simp only [h.gammaFactor_def]
  · exact differentiable_Gammaℝ_inv
  · exact differentiable_Gammaℝ_inv.comp (differentiable_id.add_const 1)

variable [NeZero q]

noncomputable def zsymFactor (χ : DirichletCharacter ℂ q) (s : ℂ) : ℂ :=
  (q : ℂ) ^ ((1 - s) - 1 / 2) * χ.rootNumber * (χ.gammaFactor s)⁻¹ / (χ⁻¹.gammaFactor (1 - s))⁻¹

theorem zsym_eq {χ : DirichletCharacter ℂ q} (hχ : χ.IsPrimitive) {s : ℂ} (h0 : 0 < s.re)
    (h1 : s.re < 1) : χ.LFunction s = zsymFactor χ s * χ⁻¹.LFunction (1 - s) := by
  have hs0 : s ≠ 0 := by rintro rfl; simp at h0
  have hs1 : 1 - s ≠ 0 := by
    intro h; rw [sub_eq_zero] at h; subst h; simp at h1
  have h2 := hχ.completedLFunction_one_sub (1 - s)
  rw [sub_sub_cancel] at h2
  have g1 := zsym_gammaFactor_ne_zero χ h0
  have g2 := zsym_gammaFactor_ne_zero χ⁻¹ (s := 1 - s) (by simp; linarith)
  rw [χ.LFunction_eq_completed_div_gammaFactor s (Or.inl hs0),
    χ⁻¹.LFunction_eq_completed_div_gammaFactor (1 - s) (Or.inl hs1), h2, zsymFactor]
  field_simp

theorem zsymFactor_ne_zero {χ : DirichletCharacter ℂ q} (hχ : χ.IsPrimitive) {s : ℂ}
    (h0 : 0 < s.re) (h1 : s.re < 1) : zsymFactor χ s ≠ 0 := by
  have g1 := zsym_gammaFactor_ne_zero χ h0
  have g2 := zsym_gammaFactor_ne_zero χ⁻¹ (s := 1 - s) (by simp; linarith)
  have g3 := DirichletCharacter.rootNumber_ne_zero hχ
  have g4 : (q : ℂ) ^ ((1 - s) - 1 / 2) ≠ 0 := by
    simp [cpow_eq_zero_iff, NeZero.ne q]
  unfold zsymFactor
  exact div_ne_zero (mul_ne_zero (mul_ne_zero g4 g3) (inv_ne_zero g1)) (inv_ne_zero g2)

theorem zsymFactor_analyticAt (χ : DirichletCharacter ℂ q) {s : ℂ}
    (h1 : s.re < 1) : AnalyticAt ℂ (zsymFactor χ) s := by
  have g2 := zsym_gammaFactor_ne_zero χ⁻¹ (s := 1 - s) (by simp; linarith)
  have d1 : Differentiable ℂ (fun s : ℂ => (q : ℂ) ^ ((1 - s) - 1 / 2)) := by
    have : NeZero (q : ℂ) := ⟨by exact_mod_cast NeZero.ne q⟩
    fun_prop
  have d2 : Differentiable ℂ (fun s : ℂ => (χ⁻¹.gammaFactor (1 - s))⁻¹) :=
    (zsym_differentiable_gammaFactor_inv χ⁻¹).comp (differentiable_id.const_sub 1)
  have d3 := (d1.mul_const χ.rootNumber).mul (zsym_differentiable_gammaFactor_inv χ)
  exact (d3.analyticAt s).div (d2.analyticAt s) (inv_ne_zero g2)

theorem zsym_analyticAt_LFunction (χ : DirichletCharacter ℂ q) {s : ℂ} (hs : s ≠ 1) :
    AnalyticAt ℂ χ.LFunction s := by
  exact ZeroWindow.analyticOff χ s hs

end

theorem zeros_symm_one_sub : ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q), χ.IsPrimitive →
    ∀ ρ : ℂ, 0 < ρ.re → ρ.re < 1 →
      ((DirichletCharacter.LFunction χ ρ = 0 ↔ DirichletCharacter.LFunction χ⁻¹ (1 - ρ) = 0) ∧
        zmult χ ρ = zmult χ⁻¹ (1 - ρ)) := by
  intro q _ χ hχ ρ h0 h1
  have hne := zsymFactor_ne_zero hχ h0 h1
  refine ⟨by rw [zsym_eq hχ h0 h1]; simp [hne], ?_⟩
  have hev : χ.LFunction =ᶠ[𝓝 ρ] zsymFactor χ * (χ⁻¹.LFunction ∘ fun s => 1 - s) := by
    have a : ∀ᶠ s : ℂ in 𝓝 ρ, 0 < s.re := (isOpen_lt continuous_const continuous_re).mem_nhds h0
    have b : ∀ᶠ s : ℂ in 𝓝 ρ, s.re < 1 := (isOpen_lt continuous_re continuous_const).mem_nhds h1
    filter_upwards [a, b] with s a b
    exact zsym_eq hχ a b
  have hρ : 1 - ρ ≠ 1 := by
    intro h; rw [sub_eq_self] at h; subst h; simp at h0
  have hL := zsym_analyticAt_LFunction χ⁻¹ hρ
  have hg : AnalyticAt ℂ (fun s : ℂ => 1 - s) ρ := by fun_prop
  have hf := zsymFactor_analyticAt χ h1
  unfold zmult analyticOrderNatAt
  congr 1
  rw [analyticOrderAt_congr hev, analyticOrderAt_mul hf (AnalyticAt.comp hL hg),
    hf.analyticOrderAt_eq_zero.2 hne, zero_add,
    analyticOrderAt_comp_of_deriv_ne_zero hg (by simp)]

end GlobalTheory.Mem.An
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DirichletLZeroSymmetry =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LogDerivSeriesOfExplicit =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LogDerivSeriesOfExplicit", "h": "module\n\npublic import Mathlib.NumberTheory.ArithmeticFunction.VonMangoldt\npublic import Mathlib.NumberTheory.DirichletCharacter.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\npublic import Mathlib.NumberTheory.DirichletCharacter.Bounds\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Finset ArithmeticFunction Filter Topology

noncomputable section

namespace GlobalTheory.MangoldtSeries

/-- Prime powers are the entire non-coprime contribution to the Mangoldt sum. -/
theorem sum_not_coprime_eq (q N : ℕ) (hq : q ≠ 0) :
    ∑ n ∈ (Icc 1 N).filter (fun n => ¬ n.Coprime q), Λ n =
      ∑ p ∈ q.primeFactors, (Nat.log p N : ℝ) * Real.log p := by
  classical
  rcases eq_or_ne N 0 with rfl | hN
  · simp
  calc _ = ∑ n ∈ q.primeFactors.biUnion (fun p => (Icc 1 (p.log N)).image (p ^ ·)), Λ n := by
        symm
        apply Finset.sum_subset
        · intro n hn
          obtain ⟨p, hp, k, hk, rfl⟩ := by
            simpa only [mem_biUnion, mem_image, exists_prop, exists_and_left] using hn
          obtain ⟨hprime, hpq, _⟩ := Nat.mem_primeFactors.mp hp
          have hk0 : k ≠ 0 := by have := (mem_Icc.mp hk).1; omega
          refine mem_filter.mpr ⟨mem_Icc.mpr ⟨Nat.one_le_iff_ne_zero.mpr (pow_ne_zero k hprime.ne_zero), Nat.pow_le_of_le_log hN (mem_Icc.mp hk).2⟩, ?_⟩
          intro hc
          have hd := Nat.dvd_gcd (dvd_pow_self p hk0) hpq
          rw [hc.gcd_eq_one] at hd
          exact hprime.not_dvd_one hd
        · intro n hn hnot
          rw [vonMangoldt_eq_zero_iff, isPrimePow_nat_iff]
          rintro ⟨p, k, hp, hk, rfl⟩
          have hn' := mem_filter.mp hn
          have hpq : p ∣ q := by
            by_contra h
            exact hn'.2 (Nat.Coprime.pow_left k ((Nat.Prime.coprime_iff_not_dvd hp).2 h))
          apply hnot
          exact mem_biUnion.mpr ⟨p, Nat.mem_primeFactors.mpr ⟨hp, hpq, hq⟩,
            mem_image.mpr ⟨k, mem_Icc.mpr ⟨hk, Nat.le_log_of_pow_le hp.one_lt (mem_Icc.mp hn'.1).2⟩, rfl⟩⟩
    _ = ∑ p ∈ q.primeFactors, ∑ n ∈ (Icc 1 (p.log N)).image (p ^ ·), Λ n := by
        rw [sum_biUnion]
        rw [pairwiseDisjoint_iff]
        intro p hp r hr hn
        obtain ⟨n, hn⟩ := hn
        obtain ⟨a, ha, rfl⟩ := mem_image.mp (mem_inter.mp hn).1
        obtain ⟨c, hc, heq⟩ := mem_image.mp (mem_inter.mp hn).2
        exact ((Nat.prime_of_mem_primeFactors hp).pow_inj'
          (Nat.prime_of_mem_primeFactors hr) (by have := (mem_Icc.mp ha).1; omega)
          (by have := (mem_Icc.mp hc).1; omega) heq.symm).1
    _ = _ := by
        apply sum_congr rfl
        intro p hp
        rw [sum_image (fun a _ c _ h => Nat.pow_right_injective (Nat.prime_of_mem_primeFactors hp).two_le h)]
        calc ∑ k ∈ Icc 1 (p.log N), Λ (p ^ k) = ∑ k ∈ Icc 1 (p.log N), Real.log p := by
                apply sum_congr rfl
                intro k hk
                rw [vonMangoldt_apply_pow (by have := (mem_Icc.mp hk).1; omega), vonMangoldt_apply_prime (Nat.prime_of_mem_primeFactors hp)]
          _ = _ := by simp

theorem sum_not_coprime_le (q N : ℕ) (hq : q ≠ 0) :
    ∑ n ∈ (Icc 1 N).filter (fun n => ¬ n.Coprime q), Λ n ≤ Nat.log 2 N * Real.log q := by
  have : NeZero q := ⟨hq⟩
  refine (sum_not_coprime_eq q N hq).le.trans ?_
  calc ∑ p ∈ q.primeFactors, (Nat.log p N : ℝ) * Real.log p
      ≤ ∑ p ∈ q.primeFactors, (Nat.log 2 N : ℝ) * Real.log p := by
        apply Finset.sum_le_sum
        intro p hp
        apply mul_le_mul_of_nonneg_right _ (Real.log_natCast_nonneg p)
        exact_mod_cast Nat.log_antitone_left (by norm_num : 1 < 2)
          (Nat.prime_of_mem_primeFactors hp).one_lt (Nat.prime_of_mem_primeFactors hp).two_le
    _ = (Nat.log 2 N : ℝ) * ∑ p ∈ q.primeFactors, Real.log p := by rw [Finset.mul_sum]
    _ ≤ (Nat.log 2 N : ℝ) * Real.log q := mul_le_mul_of_nonneg_left
      (GlobalTheory.PrincipalLogDeriv.sum_log_primeFactors_le q) (Nat.cast_nonneg _)

private theorem norm_sub_primitive_le_sum {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) (N : ℕ) :
    ‖∑ n ∈ Icc 1 N, ((Λ n : ℝ) : ℂ) * χ (n : ZMod q) -
      ∑ n ∈ Icc 1 N, ((Λ n : ℝ) : ℂ) * χ.primitiveCharacter (n : ZMod χ.conductor)‖ ≤
      ∑ n ∈ (Icc 1 N).filter (fun n => ¬ n.Coprime q), Λ n := by
  rw [← Finset.sum_sub_distrib,
    ← Finset.sum_filter_add_sum_filter_not (Icc 1 N) (fun n => ¬ n.Coprime q)]
  rw [Finset.sum_eq_zero (s := (Icc 1 N).filter (fun n => ¬¬ n.Coprime q)) ?_, add_zero]
  · calc _ ≤ ∑ n ∈ (Icc 1 N).filter (fun n => ¬ n.Coprime q),
          ‖((Λ n : ℝ) : ℂ) * χ (n : ZMod q) -
            ((Λ n : ℝ) : ℂ) * χ.primitiveCharacter (n : ZMod χ.conductor)‖ := norm_sum_le _ _
      _ ≤ ∑ n ∈ (Icc 1 N).filter (fun n => ¬ n.Coprime q), Λ n := by
          apply Finset.sum_le_sum
          intro n hn
          rw [Finset.mem_filter] at hn
          have hχ0 : χ (n : ZMod q) = 0 := by
            apply MulChar.map_nonunit
            rw [ZMod.isUnit_iff_coprime]
            exact hn.2
          rw [hχ0, mul_zero, zero_sub, norm_neg, norm_mul, Complex.norm_real, Real.norm_eq_abs,
            abs_of_nonneg ArithmeticFunction.vonMangoldt_nonneg]
          calc Λ n * ‖χ.primitiveCharacter (n : ZMod χ.conductor)‖ ≤ Λ n * 1 :=
                mul_le_mul_of_nonneg_left (DirichletCharacter.norm_le_one _ _)
                  ArithmeticFunction.vonMangoldt_nonneg
            _ = Λ n := mul_one _
  · intro n hn
    rw [Finset.mem_filter, not_not] at hn
    have h := χ.primitiveCharacter_apply_of_isCoprime (a := (n : ℤ)) (Nat.isCoprime_iff_coprime.2 hn.2)
    push_cast at h
    rw [h, sub_self]

theorem norm_sub_primitive_le {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) (N : ℕ) :
    ‖∑ n ∈ Icc 1 N, ((Λ n : ℝ) : ℂ) * χ (n : ZMod q) -
      ∑ n ∈ Icc 1 N, ((Λ n : ℝ) : ℂ) * χ.primitiveCharacter (n : ZMod χ.conductor)‖ ≤
      Nat.log 2 N * Real.log q := by
  exact (norm_sub_primitive_le_sum χ N).trans (sum_not_coprime_le q N (NeZero.ne q))


end GlobalTheory.MangoldtSeries
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LogDerivSeriesOfExplicit =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SumIndicatorLeZsumR =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SumIndicatorLeZsumR", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ZeroCount\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.RayPrimes\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DirichletLZerosInWindowFiniteAndPosOrder\npublic import Mathlib.NumberTheory.Harmonic.Bounds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.ExponentialBounds\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.SharpRestriction.CuspSpanNormBounds.Point\nimport Formalism.SharpRestriction.InertJacobiLevels.AsmIface\nimport Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\n\n"}
section -- clump:auto
@[expose] public section

open Finset ArithmeticFunction NumberField IsDedekindDomain Filter Topology GlobalTheory.Mem.An Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.Inhab
open scoped nonZeroDivisors

namespace GlobalTheory.Mem.An

theorem zsumR_eq_sum_toFinset {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) (t T : ℝ) (f : ℂ → ℝ)
    (h : (zerosIn χ t T).Finite) :
    zsumR χ t T f = ∑ ρ ∈ h.toFinset, (zmult χ ρ : ℝ) * f ρ := by
  unfold zsumR
  exact finsum_mem_eq_finite_toFinset_sum _ h


open Classical in
theorem sum_indicator_le_zsumR {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) (t T : ℝ) (S : Finset ℂ)
    (h : (zerosIn χ t T).Finite) :
    ∑ ρ ∈ S, (zmult χ ρ : ℝ) * (if ρ ∈ zerosIn χ t T then 1 else 0) ≤ zsumR χ t T (fun _ => 1) := by
  rw [zsumR_eq_sum_toFinset χ t T _ h]
  simp only [mul_ite, mul_one, mul_zero]
  rw [← Finset.sum_filter]
  apply Finset.sum_le_sum_of_subset_of_nonneg
  · intro x hx
    rw [Finset.mem_filter] at hx
    exact h.mem_toFinset.mpr hx.2
  · intro x _ _
    exact Nat.cast_nonneg _


open Classical in
theorem recip_le_sum_windows {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) (T : ℝ) (ρ : ℂ)
    (hρ : ρ ∈ zerosIn χ 0 T) :
    (if 1 < |ρ.im| then 1 / ‖ρ‖ else 0 : ℝ) ≤
      ∑ k ∈ Icc 1 ⌊T⌋₊, (k : ℝ)⁻¹ * ((if ρ ∈ zerosIn χ (k : ℝ) 1 then 1 else 0) +
        (if ρ ∈ zerosIn χ (-(k : ℝ)) 1 then 1 else 0)) := by
  have hnn : ∀ j : ℕ, (0 : ℝ) ≤ (j : ℝ)⁻¹ * ((if ρ ∈ zerosIn χ (j : ℝ) 1 then 1 else 0) +
      (if ρ ∈ zerosIn χ (-(j : ℝ)) 1 then 1 else 0)) := by
    intro j
    apply mul_nonneg (inv_nonneg.mpr (Nat.cast_nonneg j))
    apply add_nonneg <;> split_ifs <;> norm_num
  by_cases h1 : 1 < |ρ.im|
  · rw [if_pos h1]
    obtain ⟨hre0, hre1, hT, hL⟩ := hρ
    rw [sub_zero] at hT
    have hk1 : 1 ≤ ⌊|ρ.im|⌋₊ := Nat.le_floor (by rw [Nat.cast_one]; exact h1.le)
    have hkT : ⌊|ρ.im|⌋₊ ≤ ⌊T⌋₊ := Nat.floor_mono hT
    have hkle : (⌊|ρ.im|⌋₊ : ℝ) ≤ |ρ.im| := Nat.floor_le (abs_nonneg _)
    have hklt : |ρ.im| < ⌊|ρ.im|⌋₊ + 1 := Nat.lt_floor_add_one _
    have hkpos : (0 : ℝ) < ⌊|ρ.im|⌋₊ := by exact_mod_cast hk1
    have hind : (1 : ℝ) ≤ (if ρ ∈ zerosIn χ (⌊|ρ.im|⌋₊ : ℝ) 1 then 1 else 0) +
        (if ρ ∈ zerosIn χ (-(⌊|ρ.im|⌋₊ : ℝ)) 1 then 1 else 0) := by
      rcases le_or_gt 0 ρ.im with him | him
      · have hmem : ρ ∈ zerosIn χ (⌊|ρ.im|⌋₊ : ℝ) 1 := by
          refine ⟨hre0, hre1, ?_, hL⟩
          have hab : |ρ.im| = ρ.im := abs_of_nonneg him
          rw [abs_le]
          constructor <;> linarith
        rw [if_pos hmem]
        split_ifs <;> norm_num
      · have hmem : ρ ∈ zerosIn χ (-(⌊|ρ.im|⌋₊ : ℝ)) 1 := by
          refine ⟨hre0, hre1, ?_, hL⟩
          have hab : |ρ.im| = -ρ.im := abs_of_neg him
          rw [abs_le]
          constructor <;> linarith
        rw [if_pos hmem]
        split_ifs <;> norm_num
    calc 1 / ‖ρ‖ ≤ ((⌊|ρ.im|⌋₊ : ℕ) : ℝ)⁻¹ := by
          rw [one_div]
          exact inv_anti₀ hkpos (hkle.trans (Complex.abs_im_le_norm ρ))
      _ ≤ ((⌊|ρ.im|⌋₊ : ℕ) : ℝ)⁻¹ * ((if ρ ∈ zerosIn χ (⌊|ρ.im|⌋₊ : ℝ) 1 then 1 else 0) +
          (if ρ ∈ zerosIn χ (-(⌊|ρ.im|⌋₊ : ℝ)) 1 then 1 else 0)) :=
          le_mul_of_one_le_right (inv_nonneg.mpr hkpos.le) hind
      _ ≤ _ := Finset.single_le_sum (fun j _ => hnn j) (Finset.mem_Icc.mpr ⟨hk1, hkT⟩)
  · rw [if_neg h1]
    exact Finset.sum_nonneg (fun j _ => hnn j)

theorem zsumR_recip_le : GlobalTheory.Mem.An.ZeroCount → ∃ C : ℝ, ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q), χ.IsPrimitive → ∀ T : ℝ, 2 ≤ T → zsumR χ 0 T (fun ρ => if 1 < |ρ.im| then 1 / ‖ρ‖ else 0) ≤ C * Real.log (q * T) ^ 2 ∧ zsumR χ 0 1 (fun _ => 1) ≤ C * Real.log (3 * q) := by
  classical
  rintro ⟨C0, hC0⟩
  set D := max C0 0 with hD
  have hD0 : 0 ≤ D := le_max_right _ _
  have hZ : ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q), χ.IsPrimitive → ∀ t : ℝ,
      zsumR χ t 1 (fun _ => 1) ≤ D * Real.log (q * (|t| + 2)) := by
    intro q _ χ hχ t
    refine (hC0 q χ hχ t).trans (mul_le_mul_of_nonneg_right (le_max_left _ _) (Real.log_nonneg ?_))
    have : (1 : ℝ) ≤ q := by exact_mod_cast Nat.one_le_iff_ne_zero.mpr (NeZero.ne q)
    nlinarith [abs_nonneg t]
  refine ⟨12 * D, ?_⟩
  intro q _ χ hχ T hT
  have hq : (1 : ℝ) ≤ q := by exact_mod_cast Nat.one_le_iff_ne_zero.mpr (NeZero.ne q)
  refine ⟨?_, ?_⟩
  · obtain ⟨hfin, _⟩ := _root_.GlobalTheory.Mem.An.ZeroWindow.finite_and_one_le_zmult q χ 0 T
    have hfin' : ∀ t : ℝ, (zerosIn χ t 1).Finite := fun t => (_root_.GlobalTheory.Mem.An.ZeroWindow.finite_and_one_le_zmult q χ t 1).1
    have hN1 : 1 ≤ ⌊T⌋₊ := Nat.le_floor (by rw [Nat.cast_one]; linarith)
    have hNT : (⌊T⌋₊ : ℝ) ≤ T := Nat.floor_le (by linarith)
    have hNpos : (0 : ℝ) < ⌊T⌋₊ := by exact_mod_cast hN1
    rw [zsumR_eq_sum_toFinset χ 0 T _ hfin]
    have hsplit : ∀ k : ℕ, ∑ ρ ∈ hfin.toFinset, (zmult χ ρ : ℝ) * ((k : ℝ)⁻¹ *
        ((if ρ ∈ zerosIn χ (k : ℝ) 1 then 1 else 0) + (if ρ ∈ zerosIn χ (-(k : ℝ)) 1 then 1 else 0))) =
        (k : ℝ)⁻¹ * (∑ ρ ∈ hfin.toFinset, (zmult χ ρ : ℝ) * (if ρ ∈ zerosIn χ (k : ℝ) 1 then 1 else 0) +
          ∑ ρ ∈ hfin.toFinset, (zmult χ ρ : ℝ) * (if ρ ∈ zerosIn χ (-(k : ℝ)) 1 then 1 else 0)) := by
      intro k
      rw [← Finset.sum_add_distrib, Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro ρ _
      ring
    have hLA : 0 ≤ Real.log (q * (T + 2)) := Real.log_nonneg (by nlinarith)
    calc ∑ ρ ∈ hfin.toFinset, (zmult χ ρ : ℝ) * (if 1 < |ρ.im| then 1 / ‖ρ‖ else 0)
        ≤ ∑ ρ ∈ hfin.toFinset, (zmult χ ρ : ℝ) * ∑ k ∈ Icc 1 ⌊T⌋₊, (k : ℝ)⁻¹ *
            ((if ρ ∈ zerosIn χ (k : ℝ) 1 then 1 else 0) + (if ρ ∈ zerosIn χ (-(k : ℝ)) 1 then 1 else 0)) := by
          apply Finset.sum_le_sum
          intro ρ hρ
          exact mul_le_mul_of_nonneg_left (recip_le_sum_windows χ T ρ (hfin.mem_toFinset.mp hρ))
            (Nat.cast_nonneg _)
      _ = ∑ k ∈ Icc 1 ⌊T⌋₊, ∑ ρ ∈ hfin.toFinset, (zmult χ ρ : ℝ) * ((k : ℝ)⁻¹ *
            ((if ρ ∈ zerosIn χ (k : ℝ) 1 then 1 else 0) + (if ρ ∈ zerosIn χ (-(k : ℝ)) 1 then 1 else 0))) := by
          simp_rw [Finset.mul_sum]
          exact Finset.sum_comm
      _ ≤ ∑ k ∈ Icc 1 ⌊T⌋₊, (k : ℝ)⁻¹ * (2 * D * Real.log (q * (T + 2))) := by
          apply Finset.sum_le_sum
          intro k hk
          have hk' := Finset.mem_Icc.mp hk
          have hkT : (k : ℝ) ≤ T := (Nat.cast_le.mpr hk'.2).trans hNT
          rw [hsplit k]
          apply mul_le_mul_of_nonneg_left _ (inv_nonneg.mpr (Nat.cast_nonneg k))
          have e1 := (sum_indicator_le_zsumR χ (k : ℝ) 1 hfin.toFinset (hfin' _)).trans (hZ q χ hχ k)
          have e2 := (sum_indicator_le_zsumR χ (-(k : ℝ)) 1 hfin.toFinset (hfin' _)).trans
            (hZ q χ hχ (-(k : ℝ)))
          rw [abs_neg] at e2
          have hlog : Real.log (q * (|(k : ℝ)| + 2)) ≤ Real.log (q * (T + 2)) := by
            apply Real.log_le_log (by nlinarith [abs_nonneg (k : ℝ)])
            rw [abs_of_nonneg (Nat.cast_nonneg k)]
            nlinarith
          have := mul_le_mul_of_nonneg_left hlog hD0
          linarith
      _ = 2 * D * Real.log (q * (T + 2)) * ∑ k ∈ Icc 1 ⌊T⌋₊, (k : ℝ)⁻¹ := by
          rw [Finset.mul_sum]
          apply Finset.sum_congr rfl
          intro k _
          ring
      _ ≤ 2 * D * Real.log (q * (T + 2)) * (1 + Real.log T) := by
          apply mul_le_mul_of_nonneg_left _ (mul_nonneg (by linarith) hLA)
          have h := harmonic_le_one_add_log ⌊T⌋₊
          simp only [harmonic_eq_sum_Icc, Rat.cast_sum, Rat.cast_inv, Rat.cast_natCast] at h
          have := Real.log_le_log hNpos hNT
          linarith
      _ ≤ 12 * D * Real.log (q * T) ^ 2 := by
          have hqT : 2 ≤ (q : ℝ) * T := by nlinarith
          have hu : Real.log 2 ≤ Real.log (q * T) := Real.log_le_log (by norm_num) hqT
          have hl2 := Real.log_two_gt_d9
          have hA : Real.log (q * (T + 2)) ≤ 2 * Real.log (q * T) := by
            have h := Real.log_le_log (by nlinarith : (0 : ℝ) < q * (T + 2))
              (by nlinarith : (q : ℝ) * (T + 2) ≤ 2 * (q * T))
            rw [Real.log_mul (by norm_num : (2 : ℝ) ≠ 0) (ne_of_gt (by nlinarith : (0 : ℝ) < q * T))] at h
            linarith
          have hB : 1 + Real.log T ≤ 3 * Real.log (q * T) := by
            have := Real.log_le_log (by linarith : (0 : ℝ) < T) (by nlinarith : T ≤ (q : ℝ) * T)
            linarith
          have hB0 : 0 ≤ 1 + Real.log T := by
            have := Real.log_nonneg (by linarith : (1 : ℝ) ≤ T)
            linarith
          have h := mul_le_mul hA hB hB0 (by linarith)
          have h' := mul_le_mul_of_nonneg_left h (by linarith : (0 : ℝ) ≤ 2 * D)
          calc 2 * D * Real.log (q * (T + 2)) * (1 + Real.log T)
              = 2 * D * (Real.log (q * (T + 2)) * (1 + Real.log T)) := by ring
            _ ≤ 2 * D * (2 * Real.log (q * T) * (3 * Real.log (q * T))) := h'
            _ = 12 * D * Real.log (q * T) ^ 2 := by ring
  · have h := hZ q χ hχ 0
    rw [abs_zero, zero_add] at h
    refine h.trans ?_
    have h1 : Real.log (q * 2) ≤ Real.log (3 * q) := Real.log_le_log (by linarith) (by linarith)
    have h2 : 0 ≤ Real.log (3 * q) := Real.log_nonneg (by linarith)
    nlinarith [mul_le_mul_of_nonneg_left h1 hD0, mul_nonneg hD0 h2]

end GlobalTheory.Mem.An
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SumIndicatorLeZsumR =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExplicitFormulaDirichletZerosRightHalf =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExplicitFormulaDirichletZerosRightHalf", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.ZerosDisc\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.RayPrimes\npublic import Mathlib.Data.FunLike.Fintype\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.DirichletLZerosEqPrimitiveCharacterZeros\npublic import Mathlib.NumberTheory.LSeries.DirichletContinuation\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExistsDirichletLFunctionZeroGapNearOne\npublic import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.FiltrationCocycleLiftCriterion\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExplicitFormulaClosed\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ZeroCountHolds\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DirichletLZeroSymmetry\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LogDerivSeriesOfExplicit\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SumIndicatorLeZsumR\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DirichletLZerosInWindowFiniteAndPosOrder\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Complex DirichletCharacter ArithmeticFunction MeasureTheory Filter Topology GlobalTheory.Lin
open scoped Classical

namespace GlobalTheory.ExplicitFormulaRight

open GlobalTheory.Mem.An

theorem zsumR_eq {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) (t T : ℝ) (f : ℂ → ℝ) :
    zsumR χ t T f = ∑ ρ ∈ (_root_.GlobalTheory.Mem.An.ZeroWindow.finite_zeros χ t T).toFinset, (zmult χ ρ : ℝ) * f ρ :=
  finsum_mem_eq_finite_toFinset_sum _ _

theorem recip_bound : ∃ C : ℝ, 0 < C ∧ ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q),
    χ.IsPrimitive → ∀ T : ℝ, 2 ≤ T →
      zsumR χ 0 1 (fun ρ => 1 / ‖ρ‖) ≤ C * ((q : ℝ) ^ 2 * Real.log (3 * q) ^ 2) ∧
      zsumR χ 0 T (fun ρ => 1 / ‖ρ‖) ≤
        C * ((q : ℝ) ^ 2 * Real.log (3 * q) ^ 2) + C * Real.log (q * T) ^ 2 := by
  obtain ⟨C₁, H₁⟩ := zsumR_recip_le zeroCount_holds
  obtain ⟨c, hc, H₂⟩ := _root_.GlobalTheory.ZeroGapNearOne.exists_gap
  refine ⟨|C₁| / c + |C₁| + 1, by positivity, fun q _ χ hχ T hT => ?_⟩
  obtain ⟨h1, h2⟩ := H₁ q χ hχ T hT
  have hq : (1 : ℝ) ≤ q := by exact_mod_cast Nat.one_le_iff_ne_zero.mpr (NeZero.ne q)
  have hl : 0 < Real.log (3 * q) := Real.log_pos (by linarith)
  have hK : 0 < (q : ℝ) ^ 2 * Real.log (3 * q) := by positivity
  have hA : zsumR χ 0 1 (fun ρ => 1 / ‖ρ‖) ≤
      (|C₁| / c + |C₁| + 1) * ((q : ℝ) ^ 2 * Real.log (3 * q) ^ 2) := by
    have a1 : zsumR χ 0 1 (fun ρ => 1 / ‖ρ‖) ≤
        ((q : ℝ) ^ 2 * Real.log (3 * q) / c) * zsumR χ 0 1 (fun _ => 1) := by
      rw [zsumR_eq, zsumR_eq, Finset.mul_sum]
      refine Finset.sum_le_sum fun ρ hρ => ?_
      obtain ⟨r0, r1, ri, rz⟩ := (_root_.GlobalTheory.Mem.An.ZeroWindow.finite_zeros χ 0 1).mem_toFinset.mp hρ
      have hz := ((zeros_symm_one_sub q χ hχ ρ r0 r1).1).mp rz
      have hne : (1 - ρ) ≠ 1 := by
        intro h
        have := congrArg Complex.re h
        simp at this
        linarith
      have hb := H₂ q χ⁻¹ (1 - ρ) (Or.inr hne) hz (by simpa using ri)
      have hre : c / ((q : ℝ) ^ 2 * Real.log (3 * q)) ≤ ‖ρ‖ := by
        have := Complex.re_le_norm ρ
        simp only [Complex.sub_re, Complex.one_re] at hb
        linarith
      have : 1 / ‖ρ‖ ≤ (q : ℝ) ^ 2 * Real.log (3 * q) / c := by
        have := one_div_le_one_div_of_le (div_pos hc hK) hre
        rwa [one_div_div] at this
      calc (zmult χ ρ : ℝ) * (1 / ‖ρ‖) ≤ (zmult χ ρ : ℝ) * ((q : ℝ) ^ 2 * Real.log (3 * q) / c) :=
            mul_le_mul_of_nonneg_left this (by positivity)
        _ = _ := by ring
    have a2 : zsumR χ 0 1 (fun _ => 1) ≤ |C₁| * Real.log (3 * q) :=
      h2.trans (mul_le_mul_of_nonneg_right (le_abs_self _) hl.le)
    calc _ ≤ ((q : ℝ) ^ 2 * Real.log (3 * q) / c) * (|C₁| * Real.log (3 * q)) :=
          a1.trans (mul_le_mul_of_nonneg_left a2 (by positivity))
      _ = (|C₁| / c) * ((q : ℝ) ^ 2 * Real.log (3 * q) ^ 2) := by ring
      _ ≤ _ := mul_le_mul_of_nonneg_right (by linarith [abs_nonneg C₁]) (by positivity)
  refine ⟨hA, ?_⟩
  have hB : zsumR χ 0 T (fun ρ => 1 / ‖ρ‖) ≤ zsumR χ 0 1 (fun ρ => 1 / ‖ρ‖) +
      zsumR χ 0 T (fun ρ => if 1 < |ρ.im| then 1 / ‖ρ‖ else 0) := by
    rw [zsumR_eq, zsumR_eq, zsumR_eq]
    have e : (_root_.GlobalTheory.Mem.An.ZeroWindow.finite_zeros χ 0 1).toFinset = (_root_.GlobalTheory.Mem.An.ZeroWindow.finite_zeros χ 0 T).toFinset.filter (fun ρ => ¬ 1 < |ρ.im|) := by
      ext ρ
      simp only [Set.Finite.mem_toFinset, Finset.mem_filter, zerosIn, Set.mem_setOf_eq, sub_zero,
        not_lt]
      constructor
      · rintro ⟨a, b, c, d⟩
        exact ⟨⟨a, b, by linarith, d⟩, c⟩
      · rintro ⟨⟨a, b, _, d⟩, c⟩
        exact ⟨a, b, c, d⟩
    rw [e, Finset.sum_filter, ← Finset.sum_add_distrib]
    refine Finset.sum_le_sum fun ρ _ => ?_
    by_cases h : 1 < |ρ.im| <;> simp [h]
  have hC : C₁ * Real.log (q * T) ^ 2 ≤ (|C₁| / c + |C₁| + 1) * Real.log (q * T) ^ 2 := by
    refine mul_le_mul_of_nonneg_right ?_ (by positivity)
    have : 0 ≤ |C₁| / c := by positivity
    linarith [le_abs_self C₁]
  linarith

theorem box_subset {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) (T : ℝ) :
    zerosBox χ (1 / 2) T ⊆ zerosIn χ 0 T := by
  rintro ρ ⟨a, b, c, d⟩
  exact ⟨by linarith, b, by simpa using c, d⟩

/-- Passing to the primitive character preserves zero boxes strictly to the right of
`re s = 0`; the extra Euler factors can have zeros on the boundary. -/
theorem zerosBox_eq_primitiveCharacter {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q)
    {σ : ℝ} (hσ : 0 < σ) (T : ℝ) :
    have : NeZero χ.conductor := ⟨χ.conductor_ne_zero⟩
    zerosBox χ σ T = zerosBox χ.primitiveCharacter σ T := by
  have : NeZero χ.conductor := ⟨χ.conductor_ne_zero⟩
  ext ρ
  have hzero (h0 : σ ≤ ρ.re) (h1 : ρ.re < 1) :=
    (zeros_eq_zeros_primitiveCharacter q χ ρ (hσ.trans_le h0)
      (Or.inr (by rintro rfl; simp at h1))).1
  constructor <;> rintro ⟨h0, h1, ht, hz⟩
  · exact ⟨h0, h1, ht, (hzero h0 h1).mp hz⟩
  · exact ⟨h0, h1, ht, (hzero h0 h1).mpr hz⟩

/-- Weighted zero sums, including multiplicities, are unchanged by passage to the
primitive character in a positive-real-part zero box. -/
theorem finsum_zerosBox_eq_primitiveCharacter {q : ℕ} [NeZero q]
    (χ : DirichletCharacter ℂ q) {σ : ℝ} (hσ : 0 < σ) (T : ℝ) (f : ℂ → ℂ) :
    have : NeZero χ.conductor := ⟨χ.conductor_ne_zero⟩
    (∑ᶠ ρ ∈ zerosBox χ σ T, (ord χ ρ : ℂ) * f ρ) =
      ∑ᶠ ρ ∈ zerosBox χ.primitiveCharacter σ T, (ord χ.primitiveCharacter ρ : ℂ) * f ρ := by
  have : NeZero χ.conductor := ⟨χ.conductor_ne_zero⟩
  refine finsum_mem_congr (zerosBox_eq_primitiveCharacter χ hσ T) fun ρ hρ => ?_
  rw [(zeros_eq_zeros_primitiveCharacter q χ ρ (hσ.trans_le hρ.1)
    (Or.inr (by intro h; have hr := hρ.2.1; simpa [h] using hr))).2]

theorem left_zeros {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) (u T : ℝ) (hu : 1 ≤ u) :
    ‖zsum χ 0 T (fun ρ => (u : ℂ) ^ ρ / ρ) -
      ∑ᶠ ρ ∈ zerosBox χ (1 / 2) T, (ord χ ρ : ℂ) * ((u : ℂ) ^ ρ / ρ)‖ ≤
      Real.sqrt u * zsumR χ 0 T (fun ρ => 1 / ‖ρ‖) := by
  have hf := (_root_.GlobalTheory.Mem.An.ZeroWindow.finite_zeros χ 0 T).subset (box_subset χ T)
  have e : hf.toFinset = (_root_.GlobalTheory.Mem.An.ZeroWindow.finite_zeros χ 0 T).toFinset.filter (fun ρ => 1 / 2 ≤ ρ.re) := by
    ext ρ
    simp only [Set.Finite.mem_toFinset, Finset.mem_filter]
    constructor
    · intro h
      exact ⟨box_subset χ T h, h.1⟩
    · rintro ⟨⟨_, b, c, d⟩, a⟩
      exact ⟨a, b, by simpa using c, d⟩
  rw [zsumR_eq, zsum, finsum_mem_eq_finite_toFinset_sum _ (_root_.GlobalTheory.Mem.An.ZeroWindow.finite_zeros χ 0 T),
    finsum_mem_eq_finite_toFinset_sum _ hf, e, Finset.sum_filter, ← Finset.sum_sub_distrib,
    Finset.mul_sum]
  refine norm_sum_le_of_le _ fun ρ _ => ?_
  have hu0 : 0 < u := by linarith
  by_cases h : 1 / 2 ≤ ρ.re
  · rw [if_pos h]
    have : (ord χ ρ : ℂ) = zmult χ ρ := rfl
    rw [this, sub_self, norm_zero]
    positivity
  · rw [if_neg h, sub_zero, norm_mul, norm_div, Complex.norm_cpow_eq_rpow_re_of_pos hu0,
      Complex.norm_natCast, Real.sqrt_eq_rpow]
    have h1 : u ^ ρ.re ≤ u ^ (1 / 2 : ℝ) := Real.rpow_le_rpow_of_exponent_le hu (not_le.mp h).le
    calc (zmult χ ρ : ℝ) * (u ^ ρ.re / ‖ρ‖) = u ^ ρ.re * ((zmult χ ρ : ℝ) * (1 / ‖ρ‖)) := by ring
      _ ≤ _ := mul_le_mul_of_nonneg_right h1 (by positivity)

theorem logs {N q u T : ℝ} (hN : 1 ≤ N) (hq : N ≤ q) (hT : 2 ≤ T) (hu : T ≤ u) {L : ℝ}
    (hL : L = Real.log (q * u * T)) :
    1 ≤ L ∧ Real.log (N * u * T) ^ 2 ≤ L ^ 2 ∧ Real.log (N * u) ≤ L ^ 2 ∧
      Real.log (3 * N) ^ 2 ≤ L ^ 2 ∧ Real.log (N * T) ^ 2 ≤ L ^ 2 ∧
      (Nat.log 2 ⌊u⌋₊ : ℝ) * Real.log q ≤ 2 * L ^ 2 := by
  have hq1 : 1 ≤ q := hN.trans hq
  have hu2 : 2 ≤ u := hT.trans hu
  have huT : 4 ≤ u * T := by nlinarith
  have hlog : ∀ x : ℝ, 0 < x → x ≤ q * u * T → Real.log x ≤ L := fun x hx h =>
    hL ▸ Real.log_le_log hx h
  have key : ∀ a b : ℝ, 0 ≤ a → a ≤ q → 0 ≤ b → b ≤ u * T → a * b ≤ q * u * T := by
    intro a b ha haq hb hbu
    rw [mul_assoc]
    exact mul_le_mul haq hbu hb (by linarith)
  have h2 := Real.log_two_gt_d9
  have hL1 : 1 ≤ L := by
    have := hlog 4 (by norm_num) (by simpa using key 1 4 (by norm_num) hq1 (by norm_num) huT)
    have h2' : Real.log 4 = 2 * Real.log 2 := by
      rw [show (4 : ℝ) = 2 ^ 2 by norm_num, Real.log_pow]; norm_num
    linarith
  have sq_le : ∀ x : ℝ, 1 ≤ x → x ≤ q * u * T → Real.log x ^ 2 ≤ L ^ 2 := fun x hx hc =>
    pow_le_pow_left₀ (Real.log_nonneg hx) (hlog x (by linarith) hc) 2
  have huu : u ≤ u * T := by nlinarith
  have hTT : T ≤ u * T := by nlinarith
  refine ⟨hL1, sq_le _ ?_ ?_, ?_, sq_le _ (by linarith) ?_, sq_le _ (by nlinarith) ?_, ?_⟩
  · rw [mul_assoc]; nlinarith
  · rw [mul_assoc]; exact key _ _ (by linarith) hq (by linarith) le_rfl
  · have := hlog (N * u) (by positivity) (key _ _ (by linarith) hq (by linarith) huu)
    nlinarith
  · rw [mul_comm]; exact key _ _ (by linarith) hq (by linarith) (by linarith)
  · exact key _ _ (by linarith) hq (by linarith) hTT
  · have a1 : Real.log q ≤ L :=
      hlog q (by linarith) (by simpa using key q 1 (by linarith) le_rfl (by norm_num) (by linarith))
    have a2 : Real.log u ≤ L :=
      hlog u (by linarith) (by simpa using key 1 u (by linarith) hq1 (by linarith) huu)
    have hfl : ⌊u⌋₊ ≠ 0 := by
      have : 1 ≤ ⌊u⌋₊ := Nat.le_floor (by push_cast; linarith)
      omega
    have a3 : (Nat.log 2 ⌊u⌋₊ : ℝ) * Real.log 2 ≤ Real.log u := by
      rw [← Real.log_pow]
      refine Real.log_le_log (by positivity) (le_trans ?_ (Nat.floor_le (by linarith)))
      exact_mod_cast Nat.pow_log_le_self 2 hfl
    have a4 : (Nat.log 2 ⌊u⌋₊ : ℝ) ≤ 2 * L := by
      have : (0 : ℝ) ≤ Nat.log 2 ⌊u⌋₊ := by positivity
      nlinarith
    calc _ ≤ (2 * L) * L := mul_le_mul a4 a1 (Real.log_nonneg hq1) (by linarith)
      _ = _ := by ring

theorem combine {A B S s x K E P D Z₁ Z t₁ t₂ l₃ l₄ N q : ℝ} (hA : 0 ≤ A) (hB : 0 ≤ B)
    (hs : 1 ≤ s) (hx : 0 ≤ x) (hK : 0 ≤ K) (hN : 1 ≤ N) (hq : N ≤ q)
    (hS : S ≤ P + E + D) (hP : P ≤ 2 * K) (hE : E ≤ A * (t₁ + t₂ + Z₁)) (hD : D ≤ s * Z)
    (h1 : t₁ ≤ x * K) (h2 : t₂ ≤ K) (hl₃ : l₃ ≤ K) (hl₄ : l₄ ≤ K)
    (hZ₁ : Z₁ ≤ B * (N ^ 2 * l₃)) (hZ : Z ≤ B * (N ^ 2 * l₃) + B * l₄) :
    S ≤ (2 + A * (2 + B) + 2 * B) * (x + s * q ^ 3) * K := by
  have hq1 : 1 ≤ q := hN.trans hq
  have hq3 : 1 ≤ q ^ 3 := one_le_pow₀ hq1
  have hN2 : N ^ 2 ≤ q ^ 3 :=
    (pow_le_pow_left₀ (by linarith) hq 2).trans (pow_le_pow_right₀ hq1 (by norm_num))
  obtain ⟨M, hM⟩ : ∃ M, M = (x + s * q ^ 3) * K := ⟨_, rfl⟩
  have m0 : 0 ≤ x * K := by positivity
  have k1 : K ≤ q ^ 3 * K := le_mul_of_one_le_left hK hq3
  have k2 : q ^ 3 * K ≤ s * (q ^ 3 * K) := le_mul_of_one_le_left (by positivity) hs
  have m1 : s * (q ^ 3 * K) ≤ M := by rw [hM]; linarith
  have m2 : x * K ≤ M := by rw [hM]; linarith
  have n1 : N ^ 2 * l₃ ≤ q ^ 3 * K :=
    (mul_le_mul_of_nonneg_left hl₃ (by positivity)).trans (mul_le_mul_of_nonneg_right hN2 hK)
  have z1 : Z₁ ≤ B * M := hZ₁.trans (mul_le_mul_of_nonneg_left (by linarith) hB)
  have z2 : Z ≤ 2 * B * (q ^ 3 * K) := by
    have b1 := mul_le_mul_of_nonneg_left n1 hB
    have b2 := mul_le_mul_of_nonneg_left (hl₄.trans k1) hB
    linarith
  have z3 : D ≤ 2 * B * M := by
    calc D ≤ s * (2 * B * (q ^ 3 * K)) := hD.trans (mul_le_mul_of_nonneg_left z2 (by linarith))
      _ = 2 * B * (s * (q ^ 3 * K)) := by ring
      _ ≤ _ := mul_le_mul_of_nonneg_left m1 (by positivity)
  have z4 : E ≤ A * (M + M + B * M) := hE.trans (mul_le_mul_of_nonneg_left (by linarith) hA)
  rw [mul_assoc, ← hM]
  linarith

theorem explicit_formula_right : ∃ C : ℝ, 0 < C ∧ ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q) (u T : ℝ), 2 ≤ T → T ≤ u → (zerosBox χ (1 / 2) T).Finite ∧ ‖(∑ n ∈ Finset.Icc 1 ⌊u⌋₊, ((Λ n : ℝ) : ℂ) * χ (n : ZMod q)) - (if χ = 1 then (u : ℂ) else 0) + ∑ᶠ ρ ∈ zerosBox χ (1 / 2) T, (ord χ ρ : ℂ) * ((u : ℂ) ^ ρ / ρ)‖ ≤ C * (u / T + Real.sqrt u * (q : ℝ) ^ 3) * Real.log (q * u * T) ^ 2 := by
  obtain ⟨A, HA⟩ := _root_.GlobalTheory.ExplicitFormulaClosed.explicit_formula_closed
  obtain ⟨B, hB, HB⟩ := recip_bound
  refine ⟨2 + |A| * (2 + B) + 2 * B, by positivity, fun q _ χ u T hT hu => ?_⟩
  refine ⟨(_root_.GlobalTheory.Mem.An.ZeroWindow.finite_zeros χ 0 T).subset (box_subset χ T), ?_⟩
  haveI : NeZero χ.conductor := ⟨χ.conductor_ne_zero⟩
  have hprim := χ.primitiveCharacter_isPrimitive
  have hN : (1 : ℝ) ≤ χ.conductor := by
    exact_mod_cast Nat.one_le_iff_ne_zero.mpr χ.conductor_ne_zero
  have hq : (χ.conductor : ℝ) ≤ q := by
    exact_mod_cast Nat.le_of_dvd (Nat.pos_of_ne_zero (NeZero.ne q)) χ.conductor_dvd_level
  have hone : χ.primitiveCharacter = 1 ↔ χ = 1 := by
    constructor
    · intro h
      rw [← χ.changeLevel_primitiveCharacter, h, map_one]
    · rintro rfl
      exact primitiveCharacter_one
  have hsum := finsum_zerosBox_eq_primitiveCharacter χ (by norm_num : (0 : ℝ) < 1 / 2)
    T (fun ρ => (u : ℂ) ^ ρ / ρ)
  have hE := HA χ.conductor χ.primitiveCharacter hprim u T hT hu
  obtain ⟨hZ₁, hZ⟩ := HB χ.conductor χ.primitiveCharacter hprim T hT
  have hD := left_zeros χ.primitiveCharacter u T (by linarith)
  have hP := GlobalTheory.MangoldtSeries.norm_sub_primitive_le χ ⌊u⌋₊
  obtain ⟨l0, l1, l2, l3, l4, l5⟩ := logs hN hq hT hu rfl
  have hpsi : Formalism.MainNotions.GlobalTheoryTheory.psi0 χ.primitiveCharacter u =
      (∑ n ∈ Finset.Icc 1 ⌊u⌋₊, ((Λ n : ℝ) : ℂ) * χ.primitiveCharacter (n : ZMod χ.conductor)) -
        (if χ = 1 then (u : ℂ) else 0) := by
    unfold Formalism.MainNotions.GlobalTheoryTheory.psi0
    congr 1
    by_cases h : χ = 1
    · rw [if_pos h, if_pos (hone.mpr h)]
    · rw [if_neg h, if_neg (mt hone.mp h)]
  have hu0 : 0 < u := by linarith
  have hZ0 : 0 ≤ zsumR χ.primitiveCharacter 0 1 (fun ρ => 1 / ‖ρ‖) := by
    rw [zsumR_eq]
    exact Finset.sum_nonneg fun ρ _ => by positivity
  have hl0 : 0 ≤ Real.log (χ.conductor * u) := Real.log_nonneg (by nlinarith)
  have hE' := hE.trans (mul_le_mul_of_nonneg_right (le_abs_self A) (by positivity))
  refine combine (abs_nonneg A) hB.le (Real.one_le_sqrt.mpr (by linarith)) (by positivity)
    (by positivity) hN hq ?_ (hP.trans l5) hE' hD ?_ l2 l3 l4 hZ₁ hZ
  · rw [hsum, hpsi]
    refine le_trans (le_of_eq ?_) ((norm_sub_le _ _).trans (add_le_add_left (norm_add_le _ _) _))
    congr 1
    ring
  · rw [mul_div_right_comm]
    exact mul_le_mul_of_nonneg_left l1 (by positivity)

end GlobalTheory.ExplicitFormulaRight
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExplicitFormulaDirichletZerosRightHalf =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.WeightedFejerPositivity =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.WeightedFejerPositivity", "h": "module\n\npublic import Mathlib.Analysis.Complex.Trigonometric\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.BigOperators.Field\npublic import Mathlib.Analysis.Normed.Field.Basic\nimport Mathlib.NumberTheory.DirichletCharacter.Basic\n\n"}
section -- clump:auto
@[expose] public section

open Complex DirichletCharacter ArithmeticFunction MeasureTheory Filter Topology

namespace GlobalTheory

theorem normSq_geomSum_le_fejer (w : ℂ) (hw : ‖w‖ ≤ 1) (J : ℕ) :
    Complex.normSq (∑ j ∈ Finset.range (J + 1), w ^ j) ≤
      (J + 1 : ℝ) + 2 * ∑ j ∈ Finset.Icc 1 J, ((J : ℝ) + 1 - j) * (w ^ j).re := by
  have hre : ∀ n : ℕ, (∑ j ∈ Finset.range (n + 1), w ^ j).re
      = 1 + ∑ j ∈ Finset.Icc 1 n, (w ^ j).re := by
    intro n
    induction n with
    | zero => simp
    | succ n ih =>
      rw [Finset.sum_range_succ, Complex.add_re, ih, Finset.sum_Icc_succ_top (by omega)]
      ring
  induction J with
  | zero => simp
  | succ J ih =>
    have h1 : ∑ j ∈ Finset.range (J + 1 + 1), w ^ j
        = w * (∑ j ∈ Finset.range (J + 1), w ^ j) + 1 := by
      rw [Finset.sum_range_succ', Finset.mul_sum]
      simp [pow_succ']
    have h2 : ∑ j ∈ Finset.Icc 1 (J + 1), (((J + 1 : ℕ) : ℝ) + 1 - j) * (w ^ j).re
        = ∑ j ∈ Finset.Icc 1 J, ((J : ℝ) + 1 - j) * (w ^ j).re
          + ∑ j ∈ Finset.Icc 1 (J + 1), (w ^ j).re := by
      rw [Finset.sum_Icc_succ_top (by omega), Finset.sum_Icc_succ_top (by omega), ← add_assoc,
        ← Finset.sum_add_distrib]
      congr 1
      · refine Finset.sum_congr rfl fun j _ => ?_
        push_cast; ring
      · push_cast; ring
    have h3 := hre (J + 1)
    have hw2 : Complex.normSq w ≤ 1 := by
      rw [Complex.normSq_eq_norm_sq]
      have := norm_nonneg w
      nlinarith
    rw [h2]
    set S := ∑ j ∈ Finset.range (J + 1), w ^ j
    rw [h1] at h3 ⊢
    have h4 : Complex.normSq (w * S + 1) = Complex.normSq w * Complex.normSq S
        + 2 * (w * S + 1).re - 1 := by
      rw [Complex.normSq_add, map_mul]
      simp
      ring
    have h5 := Complex.normSq_nonneg S
    rw [h4, h3]
    push_cast
    nlinarith

theorem fejer_re_ge (w : ℂ) (hw : ‖w‖ ≤ 1) (J : ℕ) :
    -(1 / 2) ≤ ∑ j ∈ Finset.Icc 1 J, (1 - (j : ℝ) / (J + 1)) * (w ^ j).re := by
  have h := normSq_geomSum_le_fejer w hw J
  have h0 := Complex.normSq_nonneg (∑ j ∈ Finset.range (J + 1), w ^ j)
  have hJ : (0 : ℝ) < J + 1 := by positivity
  have h1 : ∑ j ∈ Finset.Icc 1 J, (1 - (j : ℝ) / (J + 1)) * (w ^ j).re
      = (∑ j ∈ Finset.Icc 1 J, ((J : ℝ) + 1 - j) * (w ^ j).re) / (J + 1) := by
    rw [Finset.sum_div]
    refine Finset.sum_congr rfl fun j _ => ?_
    field_simp
  rw [h1, le_div_iff₀ hJ]
  linarith

theorem sum_fejer_weights (J : ℕ) :
    ∑ j ∈ Finset.Icc 1 J, (1 - (j : ℝ) / (J + 1)) = (J : ℝ) / 2 := by
  have h : ∀ n : ℕ, ∑ j ∈ Finset.Icc 1 n, (j : ℝ) = n * (n + 1) / 2 := by
    intro n
    induction n with
    | zero => simp
    | succ n ih =>
      rw [Finset.sum_Icc_succ_top (by omega), ih]
      push_cast; ring
  have hJ : (0 : ℝ) < J + 1 := by positivity
  rw [Finset.sum_sub_distrib, ← Finset.sum_div, h]
  simp
  field_simp
  ring

theorem weighted_fejer_split (J : ℕ) (θ : ℝ) (w : ℂ) :
    ∑ j ∈ Finset.Icc 1 J, (1 - (j : ℝ) / (J + 1)) * (1 + Real.cos (j * θ)) * (w ^ j).re
      = ∑ j ∈ Finset.Icc 1 J, (1 - (j : ℝ) / (J + 1)) * (w ^ j).re
        + (∑ j ∈ Finset.Icc 1 J, (1 - (j : ℝ) / (J + 1))
            * ((w * Complex.exp (θ * I)) ^ j).re) / 2
        + (∑ j ∈ Finset.Icc 1 J, (1 - (j : ℝ) / (J + 1))
            * ((w * Complex.exp (-(θ * I))) ^ j).re) / 2 := by
  rw [Finset.sum_div, Finset.sum_div, ← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun j _ => ?_
  have e1 : Complex.exp (θ * I) ^ j = Complex.exp (((j * θ : ℝ) : ℂ) * I) := by
    rw [← Complex.exp_nat_mul]; congr 1; push_cast; ring
  have e2 : Complex.exp (-(θ * I)) ^ j = Complex.exp (((-(j * θ) : ℝ) : ℂ) * I) := by
    rw [← Complex.exp_nat_mul]; congr 1; push_cast; ring
  rw [mul_pow, mul_pow, e1, e2, Complex.mul_re, Complex.mul_re, Complex.exp_ofReal_mul_I_re,
    Complex.exp_ofReal_mul_I_re, Complex.exp_ofReal_mul_I_im, Complex.exp_ofReal_mul_I_im,
    Real.cos_neg, Real.sin_neg]
  ring

theorem weighted_fejer_positivity : ∀ (J : ℕ) (θ : ℝ), (∀ w : ℂ, ‖w‖ ≤ 1 → -1 ≤ ∑ j ∈ Finset.Icc 1 J, (1 - (j : ℝ) / (J + 1)) * (1 + Real.cos (j * θ)) * (w ^ j).re) ∧ (J : ℝ) / 4 - 3 / 4 ≤ ∑ j ∈ Finset.Icc 1 J, (1 - (j : ℝ) / (J + 1)) * (1 + Real.cos (j * θ)) * (Complex.exp (θ * I) ^ j).re := by
  intro J θ
  have n1 : ‖Complex.exp (θ * I)‖ = 1 := Complex.norm_exp_ofReal_mul_I θ
  have n2 : ‖Complex.exp (-(θ * I))‖ = 1 := by
    rw [Complex.exp_neg, norm_inv, n1, inv_one]
  refine ⟨fun w hw => ?_, ?_⟩
  · rw [weighted_fejer_split]
    have a := fejer_re_ge w hw J
    have b := fejer_re_ge (w * Complex.exp (θ * I)) (by rw [norm_mul, n1, mul_one]; exact hw) J
    have c := fejer_re_ge (w * Complex.exp (-(θ * I)))
      (by rw [norm_mul, n2, mul_one]; exact hw) J
    linarith
  · rw [weighted_fejer_split]
    have a := fejer_re_ge (Complex.exp (θ * I)) n1.le J
    have b := fejer_re_ge (Complex.exp (θ * I) * Complex.exp (θ * I))
      (by rw [norm_mul, n1, mul_one]) J
    have c : Complex.exp (θ * I) * Complex.exp (-(θ * I)) = 1 := by
      rw [← Complex.exp_add]; simp
    rw [c]
    simp only [one_pow, Complex.one_re, mul_one]
    rw [sum_fejer_weights]
    linarith

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.WeightedFejerPositivity =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.SumIccThreeQuartersPowLe =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.SumIccThreeQuartersPowLe", "h": "module\n\npublic import Mathlib.Analysis.SpecialFunctions.Log.Basic\npublic import Mathlib.Analysis.Complex.Trigonometric\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.WeightedFejerPositivity\npublic import Mathlib.Analysis.SpecialFunctions.Complex.Arg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Mathlib.NumberTheory.DirichletCharacter.Basic\n\n"}
section -- clump:auto
@[expose] public section

open Complex DirichletCharacter ArithmeticFunction MeasureTheory Filter Topology

namespace GlobalTheory

theorem sum_Icc_three_quarters_pow_le (J : ℕ) :
    ∑ j ∈ Finset.Icc 1 J, (3 / 4 : ℝ) ^ j ≤ 3 - 3 * (3 / 4 : ℝ) ^ J := by
  induction J with
  | zero => simp
  | succ n ih =>
    rw [Finset.sum_Icc_succ_top (by omega)]
    rw [pow_succ]
    linarith

theorem powerSum_weighted_ineq {ι : Type} (S : Finset ι) (z : ι → ℂ) (b : ι → ℕ) (i₀ : ι)
    (L δ x : ℝ) (hi : i₀ ∈ S) (hb : 1 ≤ b i₀) (hL : 1 ≤ L) (hδ : 0 < δ) (hx0 : 0 ≤ x)
    (hx : x ≤ 1 / 2) (hz : 1 / (1 + x) ≤ ‖z i₀‖) (hS : (∑ i ∈ S, (b i : ℝ)) ≤ L)
    (hp : ∀ j : ℕ, 1 ≤ j → (∑ i ∈ S, (b i : ℂ) * z i ^ j).re ≤ 2 * j * δ + L / 2 ^ j) (J : ℕ) :
    (J : ℝ) / 4 - 7 * L ≤ 4 * (J : ℝ) ^ 2 * δ * (1 + x) ^ J := by
  classical
  obtain ⟨i₁, hi₁, hmax⟩ := Finset.exists_max_image (S.filter fun i => 1 ≤ b i)
    (fun i => ‖z i‖) ⟨i₀, Finset.mem_filter.2 ⟨hi, hb⟩⟩
  obtain ⟨hi₁S, hb₁⟩ := Finset.mem_filter.1 hi₁
  set R : ℝ := ‖z i₁‖ with hR
  have h1x : 0 < 1 + x := by linarith
  have hRge : 1 / (1 + x) ≤ R := hz.trans (hmax i₀ (Finset.mem_filter.2 ⟨hi, hb⟩))
  have hRpos : 0 < R := lt_of_lt_of_le (by positivity) hRge
  have hRinv : R⁻¹ ≤ 1 + x := by
    rw [inv_le_comm₀ hRpos h1x, ← one_div]; exact hRge
  have hRinv0 : 0 ≤ R⁻¹ := by positivity
  set θ : ℝ := Complex.arg (z i₁) with hθ
  obtain ⟨hF1, hF2⟩ := _root_.GlobalTheory.weighted_fejer_positivity J θ
  set c : ℕ → ℝ := fun j => (1 - (j : ℝ) / (J + 1)) * (1 + Real.cos (j * θ)) with hc
  set F : ℂ → ℝ := fun w => ∑ j ∈ Finset.Icc 1 J, c j * (w ^ j).re with hF
  have hF1' : ∀ w : ℂ, ‖w‖ ≤ 1 → -1 ≤ F w := hF1
  have hF2' : (J : ℝ) / 4 - 3 / 4 ≤ F (Complex.exp (θ * I)) := hF2
  set w : ι → ℂ := fun i => ((R⁻¹ : ℝ) : ℂ) * z i with hw
  have hw₁ : w i₁ = Complex.exp (θ * I) := by
    have h := Complex.norm_mul_exp_arg_mul_I (z i₁)
    have hR' : (R : ℂ) ≠ 0 := by exact_mod_cast hRpos.ne'
    show ((R⁻¹ : ℝ) : ℂ) * z i₁ = _
    rw [← h]
    push_cast
    rw [← hR, ← hθ, ← mul_assoc, inv_mul_cancel₀ hR', one_mul]
  have hwn : ∀ i ∈ S, 1 ≤ b i → ‖w i‖ ≤ 1 := by
    intro i hiS hbi
    have := hmax i (Finset.mem_filter.2 ⟨hiS, hbi⟩)
    show ‖((R⁻¹ : ℝ) : ℂ) * z i‖ ≤ 1
    rw [norm_mul, Complex.norm_real, Real.norm_of_nonneg hRinv0, inv_mul_le_iff₀ hRpos, mul_one]
    exact this

  have hlow : (J : ℝ) / 4 - L ≤ ∑ i ∈ S, (b i : ℝ) * F (w i) := by
    have hnn : ∀ i ∈ S, 0 ≤ (b i : ℝ) * (F (w i) + 1) := by
      intro i hiS
      rcases Nat.eq_zero_or_pos (b i) with h0 | h0
      · simp [h0]
      · have := hF1' _ (hwn i hiS h0)
        exact mul_nonneg (Nat.cast_nonneg _) (by linarith)
    have h1 := Finset.single_le_sum hnn hi₁S
    have hb1 : (1 : ℝ) ≤ b i₁ := by exact_mod_cast hb₁
    have h2 := hF1' _ (hwn i₁ hi₁S hb₁)
    have h3 : F (w i₁) + 1 ≤ (b i₁ : ℝ) * (F (w i₁) + 1) := by nlinarith
    have h4 : ∑ i ∈ S, (b i : ℝ) * (F (w i) + 1)
        = ∑ i ∈ S, (b i : ℝ) * F (w i) + ∑ i ∈ S, (b i : ℝ) := by
      rw [← Finset.sum_add_distrib]
      exact Finset.sum_congr rfl fun i _ => by ring
    rw [← hw₁] at hF2'
    linarith

  have hex : ∑ i ∈ S, (b i : ℝ) * F (w i)
      = ∑ j ∈ Finset.Icc 1 J, c j * (R⁻¹ ^ j * (∑ i ∈ S, (b i : ℂ) * z i ^ j).re) := by
    simp only [hF, Finset.mul_sum, Complex.re_sum]
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun j _ => Finset.sum_congr rfl fun i _ => ?_
    have e1 : (w i ^ j).re = R⁻¹ ^ j * (z i ^ j).re := by
      show ((((R⁻¹ : ℝ) : ℂ) * z i) ^ j).re = _
      rw [mul_pow, ← Complex.ofReal_pow, Complex.re_ofReal_mul]
    have e2 : ((b i : ℂ) * z i ^ j).re = (b i : ℝ) * (z i ^ j).re := by
      rw [← Complex.ofReal_natCast, Complex.re_ofReal_mul]
    rw [e1, e2]; ring

  have hup : ∀ j ∈ Finset.Icc 1 J,
      c j * (R⁻¹ ^ j * (∑ i ∈ S, (b i : ℂ) * z i ^ j).re)
        ≤ 4 * J * δ * (1 + x) ^ J + 2 * L * (3 / 4 : ℝ) ^ j := by
    intro j hj
    obtain ⟨hj1, hjJ⟩ := Finset.mem_Icc.1 hj
    have hjJ' : (j : ℝ) ≤ J := by exact_mod_cast hjJ
    have hJ1 : (0 : ℝ) < J + 1 := by positivity
    have ha0 : 0 ≤ 1 - (j : ℝ) / (J + 1) := by
      rw [sub_nonneg, div_le_one hJ1]; linarith
    have ha1 : 1 - (j : ℝ) / (J + 1) ≤ 1 := by
      have : 0 ≤ (j : ℝ) / (J + 1) := by positivity
      linarith
    have hcos1 := Real.cos_le_one (j * θ)
    have hcos2 := Real.neg_one_le_cos (j * θ)
    have hc0 : 0 ≤ c j := mul_nonneg ha0 (by linarith)
    have hc2 : c j ≤ 2 := by
      show (1 - (j : ℝ) / (J + 1)) * (1 + Real.cos (j * θ)) ≤ 2
      nlinarith
    have hq : R⁻¹ ^ j ≤ (1 + x) ^ j := pow_le_pow_left₀ hRinv0 hRinv j
    have hq2 : (1 + x) ^ j ≤ (1 + x) ^ J := pow_le_pow_right₀ (by linarith) hjJ
    have hq3 : (1 + x) ^ j ≤ (3 / 2 : ℝ) ^ j := pow_le_pow_left₀ h1x.le (by linarith) j
    have hB0 : 0 ≤ 2 * j * δ + L / 2 ^ j := by positivity
    have s1 : R⁻¹ ^ j * (∑ i ∈ S, (b i : ℂ) * z i ^ j).re
        ≤ (1 + x) ^ j * (2 * j * δ + L / 2 ^ j) :=
      (mul_le_mul_of_nonneg_left (hp j hj1) (by positivity)).trans
        (mul_le_mul_of_nonneg_right hq hB0)
    have s2 : (1 + x) ^ j * (2 * j * δ) ≤ (1 + x) ^ J * (2 * J * δ) := by gcongr
    have s3 : (1 + x) ^ j * (L / 2 ^ j) ≤ (3 / 2 : ℝ) ^ j * (L / 2 ^ j) := by gcongr
    have s4 : (3 / 2 : ℝ) ^ j * (L / 2 ^ j) = L * (3 / 4 : ℝ) ^ j := by
      have : (3 / 4 : ℝ) ^ j = (3 / 2 : ℝ) ^ j / 2 ^ j := by rw [← div_pow]; norm_num
      rw [this]; ring
    have s5 : 0 ≤ (1 + x) ^ j * (2 * j * δ + L / 2 ^ j) := by positivity
    calc c j * (R⁻¹ ^ j * (∑ i ∈ S, (b i : ℂ) * z i ^ j).re)
        ≤ c j * ((1 + x) ^ j * (2 * j * δ + L / 2 ^ j)) := mul_le_mul_of_nonneg_left s1 hc0
      _ ≤ 2 * ((1 + x) ^ j * (2 * j * δ + L / 2 ^ j)) := mul_le_mul_of_nonneg_right hc2 s5
      _ ≤ _ := by rw [mul_add ((1 + x) ^ j)]; linarith
  have hsum := Finset.sum_le_sum hup
  rw [Finset.sum_add_distrib, Finset.sum_const, ← Finset.mul_sum, Nat.card_Icc,
    Nat.add_sub_cancel, nsmul_eq_mul] at hsum
  have hg := sum_Icc_three_quarters_pow_le J
  have hg0 : (0 : ℝ) ≤ (3 / 4 : ℝ) ^ J := by positivity
  have hg' : 2 * L * ∑ j ∈ Finset.Icc 1 J, (3 / 4 : ℝ) ^ j ≤ 2 * L * 3 :=
    mul_le_mul_of_nonneg_left (by linarith) (by linarith)
  have : (J : ℝ) * (4 * J * δ * (1 + x) ^ J) = 4 * (J : ℝ) ^ 2 * δ * (1 + x) ^ J := by ring
  linarith

theorem powerSum_repulsion :
    ∃ C : ℝ, 0 < C ∧ ∀ (ι : Type) (S : Finset ι) (z : ι → ℂ) (b : ι → ℕ) (i₀ : ι) (L δ x : ℝ), i₀ ∈ S → 1 ≤ b i₀ → 1 ≤ L → 0 < δ → 0 ≤ x → x ≤ 1 / 2 → 1 / (1 + x) ≤ ‖z i₀‖ → (∑ i ∈ S, (b i : ℝ)) ≤ L → (∀ j : ℕ, 1 ≤ j → (∑ i ∈ S, (b i : ℂ) * z i ^ j).re ≤ 2 * j * δ + L / 2 ^ j) → Real.log (1 / (C * L * δ)) / (C * L) ≤ x := by
  refine ⟨2080, by norm_num, ?_⟩
  intro ι S z b i₀ L δ x hi hb hL hδ hx0 hx hz hS hp
  have h := powerSum_weighted_ineq S z b i₀ L δ x hi hb hL hδ hx0 hx hz hS hp ⌈64 * L⌉₊
  set J : ℕ := ⌈64 * L⌉₊ with hJ
  have hJ1 : 64 * L ≤ J := Nat.le_ceil _
  have hJ2 : (J : ℝ) ≤ 65 * L := by
    have := Nat.ceil_lt_add_one (show 0 ≤ 64 * L by linarith)
    linarith
  have hJ0 : (0 : ℝ) < J := by linarith
  have hP : (1 + x) ^ J ≤ Real.exp (x * J) := by
    rw [mul_comm, Real.exp_nat_mul]
    exact pow_le_pow_left₀ (by linarith) (by linarith [Real.add_one_le_exp x]) J
  have hP0 : 0 < (1 + x) ^ J := by positivity
  have h1 : (J : ℝ) * 1 ≤ J * (32 * J * δ * (1 + x) ^ J) := by nlinarith
  have h2 : 1 ≤ 32 * J * δ * (1 + x) ^ J := le_of_mul_le_mul_left h1 hJ0
  have h3 : 32 * J * δ * (1 + x) ^ J ≤ 2080 * L * δ * Real.exp (x * J) := by
    have : 32 * (J : ℝ) ≤ 2080 * L := by linarith
    gcongr
  have hD : 0 < 2080 * L * δ := by positivity
  have h4 : 1 / (2080 * L * δ) ≤ Real.exp (x * J) := by
    rw [div_le_iff₀ hD]; linarith
  have h5 : Real.log (1 / (2080 * L * δ)) ≤ x * J :=
    (Real.log_le_iff_le_exp (by positivity)).2 h4
  rw [div_le_iff₀ (by positivity)]
  have : x * J ≤ x * (2080 * L) := mul_le_mul_of_nonneg_left (by linarith) hx0
  linarith

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.SumIccThreeQuartersPowLe =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.Repulsion =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.Repulsion", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.ZerosDisc\npublic import Mathlib.Data.FunLike.Fintype\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.IteratedDerivLogDerivDirichletLViaNearbyZeros\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.SumIccThreeQuartersPowLe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LSeries.Nonvanishing\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Complex DirichletCharacter ArithmeticFunction MeasureTheory Filter Topology GlobalTheory.Lin
open scoped Classical

namespace GlobalTheory.Lin.Repulsion

theorem one_le_ord {q : ℕ} [NeZero q] (χ : DirichletCharacter ℂ q) {w : ℂ} (hw : w ≠ 1)
    (h0 : LFunction χ w = 0) : 1 ≤ ord χ w := by
  exact GlobalTheory.GoodHeight.one_le_order χ hw h0

theorem norm_pow_sub_le {a b : ℂ} (ha : ‖a‖ ≤ 1) (hb : ‖b‖ ≤ 1) (j : ℕ) :
    ‖a ^ j - b ^ j‖ ≤ j * ‖a - b‖ := by
  induction j with
  | zero => simp
  | succ n ih =>
    have e : a ^ (n + 1) - b ^ (n + 1) = a * (a ^ n - b ^ n) + b ^ n * (a - b) := by ring
    have hbn : ‖b ^ n‖ ≤ 1 := by rw [norm_pow]; exact pow_le_one₀ (norm_nonneg _) hb
    rw [e]
    refine (norm_add_le _ _).trans ?_
    rw [norm_mul, norm_mul]
    have h1 : ‖a‖ * ‖a ^ n - b ^ n‖ ≤ ‖a ^ n - b ^ n‖ := mul_le_of_le_one_left (norm_nonneg _) ha
    have h2 : ‖b ^ n‖ * ‖a - b‖ ≤ ‖a - b‖ := mul_le_of_le_one_left (norm_nonneg _) hbn
    push_cast
    linarith

theorem pole_pair {β t : ℝ} (hβ : β < 1) (j : ℕ) :
    ‖1 / ((2 : ℂ) + t * I - 1) ^ j - (1 / ((2 : ℂ) + t * I - β)) ^ j‖ ≤ j * (1 - β) := by
  have h1 : 1 ≤ ‖(2 : ℂ) + t * I - 1‖ := by
    refine le_trans ?_ (Complex.re_le_norm _); simp; norm_num
  have h2 : 1 ≤ ‖(2 : ℂ) + t * I - β‖ := by
    refine le_trans ?_ (Complex.re_le_norm _); simp; linarith
  have n1 : (2 : ℂ) + t * I - 1 ≠ 0 := by intro h; rw [h] at h1; norm_num at h1
  have n2 : (2 : ℂ) + t * I - β ≠ 0 := by intro h; rw [h] at h2; norm_num at h2
  have ha : ‖1 / ((2 : ℂ) + t * I - 1)‖ ≤ 1 := by
    rw [norm_div, norm_one]; exact div_le_one_of_le₀ h1 (norm_nonneg _)
  have hb : ‖1 / ((2 : ℂ) + t * I - β)‖ ≤ 1 := by
    rw [norm_div, norm_one]; exact div_le_one_of_le₀ h2 (norm_nonneg _)
  rw [← one_div_pow]
  refine (norm_pow_sub_le ha hb j).trans (mul_le_mul_of_nonneg_left ?_ (Nat.cast_nonneg _))
  have e : 1 / ((2 : ℂ) + t * I - 1) - 1 / ((2 : ℂ) + t * I - β) =
      ((1 - β : ℝ) : ℂ) * (1 / ((2 : ℂ) + t * I - 1)) * (1 / ((2 : ℂ) + t * I - β)) := by
    push_cast; field_simp; ring
  rw [e, norm_mul, norm_mul, Complex.norm_real, Real.norm_of_nonneg (by linarith)]
  calc _ ≤ (1 - β) * 1 * 1 := by gcongr
    _ = _ := by ring

theorem pole_far {β t : ℝ} (hβ : β < 1) (hβ' : 1 / 2 ≤ β) (h : ¬ ‖(β : ℂ) - (2 + t * I)‖ ≤ 3) (j : ℕ) :
    ‖1 / ((2 : ℂ) + t * I - 1) ^ j‖ ≤ 1 / 2 ^ j := by
  have h1 : 2 ≤ ‖(2 : ℂ) + t * I - 1‖ := by
    have e : (β : ℂ) - (2 + t * I) = -((2 : ℂ) + t * I - 1) + ((β - 1 : ℝ) : ℂ) := by push_cast; ring
    have := norm_add_le (-((2 : ℂ) + t * I - 1)) ((β - 1 : ℝ) : ℂ)
    rw [← e, norm_neg, Complex.norm_real, Real.norm_of_nonpos (by linarith)] at this
    linarith
  rw [norm_div, norm_one, norm_pow]
  gcongr

theorem summable_der (c : ℕ → ℂ) (hc : ∀ n, ‖c n‖ ≤ 1) (k : ℕ) (t : ℝ) :
    Summable fun n : ℕ => ((Λ n : ℝ) : ℂ) * c n * ((Real.log n : ℂ) ^ k / (k.factorial : ℂ)) *
      (n : ℂ) ^ (-((2 : ℂ) + t * I)) := by
  have hO : (fun n : ℕ => Real.log n ^ (k + 1)) =O[atTop] fun n : ℕ => (n : ℝ) ^ (1 / 2 : ℝ) := by
    have := (isLittleO_log_rpow_rpow_atTop ((k + 1 : ℕ) : ℝ) (show (0 : ℝ) < 1 / 2 by norm_num)).isBigO
    have := this.comp_tendsto tendsto_natCast_atTop_atTop
    simpa only [Function.comp_def, Real.rpow_natCast] using this
  have hS : Summable fun n : ℕ => Real.log n ^ (k + 1) * (n : ℝ) ^ (-2 : ℝ) := by
    refine summable_of_isBigO_nat (Real.summable_nat_rpow.2 (show (-3 / 2 : ℝ) < -1 by norm_num)) ?_
    refine (hO.mul (Asymptotics.isBigO_refl (fun n : ℕ => (n : ℝ) ^ (-2 : ℝ)) atTop)).congr' EventuallyEq.rfl ?_
    filter_upwards [eventually_gt_atTop 0] with n hn
    rw [← Real.rpow_add (by exact_mod_cast hn)]; norm_num
  refine Summable.of_norm_bounded hS fun n => ?_
  rcases Nat.eq_zero_or_pos n with rfl | hn
  · simp
  have hl : 0 ≤ Real.log n := Real.log_natCast_nonneg n
  rw [norm_mul, norm_mul, norm_mul, Complex.norm_natCast_cpow_of_pos hn, norm_div, norm_pow,
    Complex.norm_real, Complex.norm_real, Real.norm_of_nonneg vonMangoldt_nonneg,
    Real.norm_of_nonneg hl, Complex.norm_natCast]
  have e : (-((2 : ℂ) + t * I)).re = -2 := by simp
  rw [e, pow_succ']
  have hf : (1 : ℝ) ≤ k.factorial := by exact_mod_cast k.factorial_pos
  gcongr
  · calc Λ n * ‖c n‖ ≤ Real.log n * 1 := by gcongr; exacts [vonMangoldt_le_log, hc n]
      _ = _ := mul_one _
  · exact div_le_self (by positivity) hf

theorem der_pos {q : ℕ} [NeZero q] (χ₁ χ : DirichletCharacter ℂ q) (h : χ₁ ^ 2 = 1) (k : ℕ) (t : ℝ) :
    0 ≤ (derSeries (fun n : ℕ => (1 : DirichletCharacter ℂ q) (n : ZMod q)) k (2 + (0 : ℝ) * I) +
      derSeries (fun n : ℕ => χ₁ (n : ZMod q)) k (2 + (0 : ℝ) * I) +
      derSeries (fun n : ℕ => χ (n : ZMod q)) k (2 + t * I) +
      derSeries (fun n : ℕ => (χ * χ₁) (n : ZMod q)) k (2 + t * I)).re := by
  have s1 := summable_der _ (fun n : ℕ => (1 : DirichletCharacter ℂ q).norm_le_one (n : ZMod q)) k 0
  have s2 := summable_der _ (fun n : ℕ => χ₁.norm_le_one (n : ZMod q)) k 0
  have s3 := summable_der _ (fun n : ℕ => χ.norm_le_one (n : ZMod q)) k t
  have s4 := summable_der _ (fun n : ℕ => (χ * χ₁).norm_le_one (n : ZMod q)) k t
  unfold derSeries
  rw [← s1.tsum_add s2, ← (s1.add s2).tsum_add s3, ← ((s1.add s2).add s3).tsum_add s4,
    Complex.re_tsum (((s1.add s2).add s3).add s4)]
  refine tsum_nonneg fun n => ?_
  rcases Nat.eq_zero_or_pos n with rfl | hn
  · simp
  by_cases hu : IsUnit (n : ZMod q)
  swap
  · simp [MulChar.map_nonunit _ hu]
  have hn' : (n : ℂ) ≠ 0 := by exact_mod_cast hn.ne'
  have e1 : (n : ℂ) ^ (-((2 : ℂ) + t * I)) = (((n : ℝ) ^ (-2 : ℝ) : ℝ) : ℂ) * (n : ℂ) ^ (-(t * I) : ℂ) := by
    rw [Complex.ofReal_cpow (Nat.cast_nonneg n), Complex.ofReal_natCast, ← Complex.cpow_add _ _ hn']
    congr 1; push_cast; ring
  have e0 : (n : ℂ) ^ (-((2 : ℂ) + (0 : ℝ) * I)) = (((n : ℝ) ^ (-2 : ℝ) : ℝ) : ℂ) := by
    rw [Complex.ofReal_cpow (Nat.cast_nonneg n), Complex.ofReal_natCast]
    congr 1; push_cast; ring
  set u : ℂ := χ n * (n : ℂ) ^ (-(t * I) : ℂ) with hudef
  have hu1 : ‖u‖ ≤ 1 := by
    rw [hudef, norm_mul, Complex.norm_natCast_cpow_of_pos hn]
    simpa using χ.norm_le_one (n : ZMod q)
  have hre : 0 ≤ 1 + u.re := by have := (Complex.abs_re_le_norm u).trans hu1; linarith [(abs_le.1 this).1]
  have hsq : χ₁ n ^ 2 = 1 := by
    rw [← MulChar.pow_apply' _ two_ne_zero, h, MulChar.one_apply hu]
  set A : ℝ := Λ n * (Real.log n ^ k / k.factorial) * (n : ℝ) ^ (-2 : ℝ) with hA
  rw [e1, e0, MulChar.one_apply hu, MulChar.mul_apply]
  have key : ∀ ε : ℝ, χ₁ n = ε → 0 ≤ 1 + ε → 0 ≤ (((Λ n : ℝ) : ℂ) * 1 * ((Real.log n : ℂ) ^ k / (k.factorial : ℂ)) * (((n : ℝ) ^ (-2 : ℝ) : ℝ) : ℂ) +
      ((Λ n : ℝ) : ℂ) * χ₁ n * ((Real.log n : ℂ) ^ k / (k.factorial : ℂ)) * (((n : ℝ) ^ (-2 : ℝ) : ℝ) : ℂ) +
      ((Λ n : ℝ) : ℂ) * χ n * ((Real.log n : ℂ) ^ k / (k.factorial : ℂ)) * ((((n : ℝ) ^ (-2 : ℝ) : ℝ) : ℂ) * (n : ℂ) ^ (-(t * I) : ℂ)) +
      ((Λ n : ℝ) : ℂ) * (χ n * χ₁ n) * ((Real.log n : ℂ) ^ k / (k.factorial : ℂ)) * ((((n : ℝ) ^ (-2 : ℝ) : ℝ) : ℂ) * (n : ℂ) ^ (-(t * I) : ℂ))).re := by
    intro ε hε h0
    have : ((Λ n : ℝ) : ℂ) * 1 * ((Real.log n : ℂ) ^ k / (k.factorial : ℂ)) * (((n : ℝ) ^ (-2 : ℝ) : ℝ) : ℂ) +
      ((Λ n : ℝ) : ℂ) * χ₁ n * ((Real.log n : ℂ) ^ k / (k.factorial : ℂ)) * (((n : ℝ) ^ (-2 : ℝ) : ℝ) : ℂ) +
      ((Λ n : ℝ) : ℂ) * χ n * ((Real.log n : ℂ) ^ k / (k.factorial : ℂ)) * ((((n : ℝ) ^ (-2 : ℝ) : ℝ) : ℂ) * (n : ℂ) ^ (-(t * I) : ℂ)) +
      ((Λ n : ℝ) : ℂ) * (χ n * χ₁ n) * ((Real.log n : ℂ) ^ k / (k.factorial : ℂ)) * ((((n : ℝ) ^ (-2 : ℝ) : ℝ) : ℂ) * (n : ℂ) ^ (-(t * I) : ℂ)) = ((A * (1 + ε) : ℝ) : ℂ) * (1 + u) := by
      rw [hε, hA, hudef]; simp only [Complex.ofReal_mul, Complex.ofReal_add, Complex.ofReal_div, Complex.ofReal_pow, Complex.ofReal_natCast, Complex.ofReal_one]; ring
    rw [this, Complex.re_ofReal_mul, Complex.add_re, Complex.one_re]
    positivity
  rcases sq_eq_sq_iff_eq_or_eq_neg.1 (hsq.trans (one_pow 2).symm) with h1 | h1
  · exact key 1 (by simpa using h1) (by norm_num)
  · exact key (-1) (by simpa using h1) (by norm_num)

noncomputable def powSum (W : Multiset ℂ) (t : ℝ) (j : ℕ) : ℂ :=
  (W.map fun w => (1 / ((2 : ℂ) + t * I - w)) ^ j).sum

theorem exists_list : ∃ C : ℝ, 0 < C ∧ ∀ (q : ℕ) [NeZero q] (χ : DirichletCharacter ℂ q) (t L : ℝ),
    Real.log (q * (|t| + 2)) ≤ L → ∃ W : Multiset ℂ,
      (∀ w : ℂ, ‖w - (2 + t * I)‖ ≤ 3 → w ≠ 1 → LFunction χ w = 0 → W.count w = ord χ w) ∧
      (W.card : ℝ) ≤ C * L ∧ ∀ k : ℕ,
        (derSeries (fun n : ℕ => χ (n : ZMod q)) k (2 + t * I)).re + (powSum W t (k + 1)).re ≤
          (if χ = 1 then 1 / ((2 : ℂ) + t * I - 1) ^ (k + 1) else 0).re + 2 * C * L / 2 ^ (k + 1) := by
  obtain ⟨C, hC, H⟩ := GlobalTheory.LogDerivHigher.main
  refine ⟨C, hC, fun q _ χ t L hL => ?_⟩
  obtain ⟨hfin, hsum, -⟩ := H q χ 2 t 0 (by norm_num) le_rfl
  have hCL : C * Real.log (q * (|t| + 2)) ≤ C * L := by gcongr
  refine ⟨∑ w ∈ hfin.toFinset, Multiset.replicate (ord χ w) w, fun w h1 h2 h3 => ?_, ?_, fun k => ?_⟩
  · have hw : w ∈ hfin.toFinset := by
      rw [Set.Finite.mem_toFinset]; exact ⟨h1, Or.inr h2, h3⟩
    rw [Multiset.count_sum', Finset.sum_eq_single_of_mem w hw]
    · simp
    · intro b _ hb
      rw [Multiset.count_replicate, if_neg hb]
  · rw [finsum_mem_eq_finite_toFinset_sum _ hfin] at hsum
    rw [Multiset.card_sum]
    simp only [Multiset.card_replicate]
    push_cast
    linarith
  · obtain ⟨-, -, h⟩ := H q χ 2 t k (by norm_num) le_rfl
    rw [finsum_mem_eq_finite_toFinset_sum _ hfin] at h
    have e : powSum (∑ w ∈ hfin.toFinset, Multiset.replicate (ord χ w) w) t (k + 1) =
        ∑ w ∈ hfin.toFinset, (ord χ w : ℂ) / (((2 : ℝ) : ℂ) + t * I - w) ^ (k + 1) := by
      unfold powSum
      induction hfin.toFinset using Finset.induction_on with
      | empty => simp
      | insert a s ha ih =>
        rw [Finset.sum_insert ha, Finset.sum_insert ha, Multiset.map_add (f := _), Multiset.sum_add, ih]
        simp [div_eq_mul_inv]
    rw [e]
    have h' := (Complex.re_le_norm _).trans h
    rw [Complex.add_re, Complex.sub_re] at h'
    have e2 : 2 * C * L / 2 ^ (k + 1) = C * L / 2 ^ k := by rw [pow_succ]; field_simp
    have h3 : C * Real.log (q * (|t| + 2)) / 2 ^ k ≤ C * L / 2 ^ k := by gcongr
    simp only [Complex.ofReal_ofNat] at h' ⊢
    linarith

theorem exists_erase {β : ℝ} (hβ : β < 1) (hβ' : 1 / 2 ≤ β) (W : Multiset ℂ) (t : ℝ)
    (h : ‖(β : ℂ) - (2 + t * I)‖ ≤ 3 → (β : ℂ) ∈ W) : ∃ W' : Multiset ℂ, W'.card ≤ W.card ∧
      (∀ w ∈ W, w ≠ β ∨ 2 ≤ W.count w → w ∈ W') ∧ ∀ j : ℕ,
        (powSum W' t j).re + (1 / ((2 : ℂ) + t * I - 1) ^ j).re ≤
          (powSum W t j).re + j * (1 - β) + 1 / 2 ^ j := by
  by_cases hd : ‖(β : ℂ) - (2 + t * I)‖ ≤ 3
  · have hm := h hd
    refine ⟨W.erase β, Multiset.card_erase_le, fun w hw hc => ?_, fun j => ?_⟩
    · by_cases hwβ : w = β
      · subst hwβ
        have h2 := hc.resolve_left (by simp)
        rw [← Multiset.one_le_count_iff_mem, Multiset.count_erase_self]; omega
      · exact (Multiset.mem_erase_of_ne hwβ).2 hw
    · have e : powSum W t j = (1 / ((2 : ℂ) + t * I - β)) ^ j + powSum (W.erase β) t j := by
        conv_lhs => rw [← Multiset.cons_erase hm]
        unfold powSum
        rw [Multiset.map_cons, Multiset.sum_cons]
      have h1 := (Complex.re_le_norm _).trans (pole_pair (t := t) hβ j)
      rw [Complex.sub_re] at h1
      rw [e, Complex.add_re]
      have : (0 : ℝ) ≤ 1 / 2 ^ j := by positivity
      linarith
  · refine ⟨W, le_rfl, fun w hw _ => hw, fun j => ?_⟩
    have h1 := (Complex.re_le_norm _).trans (pole_far hβ hβ' hd j)
    have : (0 : ℝ) ≤ j * (1 - β) := by have : 0 ≤ 1 - β := by linarith
                                       positivity
    linarith

theorem power_step : ∃ C : ℝ, 0 < C ∧ ∀ (M : Multiset ℂ) (z : ℂ) (L δ x : ℝ), z ∈ M → 1 ≤ L → 0 < δ →
    0 ≤ x → x ≤ 1 / 2 → 1 / (1 + x) ≤ ‖z‖ → (M.card : ℝ) ≤ L →
    (∀ j : ℕ, 1 ≤ j → (M.map fun y => y ^ j).sum.re ≤ 2 * j * δ + L / 2 ^ j) →
    Real.log (1 / (C * L * δ)) / (C * L) ≤ x := by
  obtain ⟨C, hC, H⟩ := GlobalTheory.powerSum_repulsion
  refine ⟨C, hC, fun M z L δ x hz hL hδ hx hx' hn hc hs => ?_⟩
  refine H ℂ M.toFinset id (fun y => M.count y) z L δ x (Multiset.mem_toFinset.2 hz)
    (Multiset.one_le_count_iff_mem.2 hz) hL hδ hx hx' hn ?_ fun j hj => ?_
  · rw [← Multiset.toFinset_sum_count_eq] at hc
    exact_mod_cast hc
  · have := hs j hj
    rw [Finset.sum_multiset_map_count] at this
    simpa [nsmul_eq_mul] using this

theorem repulsion : ∃ c : ℝ, 0 < c ∧ ∀ (q : ℕ) [NeZero q] (χ₁ χ : DirichletCharacter ℂ q) (β L : ℝ) (ρ : ℂ), χ₁ ≠ 1 → χ₁ ^ 2 = 1 → β < 1 → 1 / 2 ≤ β → LFunction χ₁ β = 0 → LFunction χ ρ = 0 → 1 / 2 ≤ ρ.re → ρ.re < 1 → (χ ≠ χ₁ ∨ ρ ≠ β ∨ 2 ≤ ord χ₁ β) → Real.log (q * (|ρ.im| + 2)) ≤ L → c * Real.log (c / ((1 - β) * L)) / L ≤ 1 - ρ.re := by
  obtain ⟨C, hC, H⟩ := exists_list
  obtain ⟨D, hD, P⟩ := power_step
  refine ⟨1 / (D * (8 * C + 4)), by positivity, ?_⟩
  intro q _ χ₁ χ β L ρ h1 hsq hβ hβ' hz₁ hz hρ hρ' hcase hL
  set t := ρ.im with ht
  have hq : (1 : ℝ) ≤ q := by exact_mod_cast NeZero.pos q
  have hL0 : Real.log (q * (|(0 : ℝ)| + 2)) ≤ L := by
    refine le_trans (Real.log_le_log (by positivity) ?_) hL
    rw [abs_zero]
    exact mul_le_mul_of_nonneg_left (by linarith [abs_nonneg t]) (by linarith)
  have hLh : 1 / 2 ≤ L := by
    refine le_trans ?_ hL0
    have := Real.log_two_gt_d9
    refine le_trans (by linarith : (1 : ℝ) / 2 ≤ Real.log 2) (Real.log_le_log (by norm_num) ?_)
    rw [abs_zero]; linarith
  have hβ1 : (β : ℂ) ≠ 1 := by exact_mod_cast hβ.ne
  have hρ1 : ρ ≠ 1 := by rintro rfl; simp at hρ'
  have eρ : (2 : ℂ) + t * I - ρ = ((2 - ρ.re : ℝ) : ℂ) := by
    apply Complex.ext <;> simp [ht]
  have hρd : ‖ρ - (2 + t * I)‖ ≤ 3 := by
    rw [norm_sub_rev, eρ, Complex.norm_real, Real.norm_of_nonneg (by linarith)]; linarith
  obtain ⟨W0, -, c0, s0⟩ := H q 1 0 L hL0
  obtain ⟨W1, m1, c1, s1⟩ := H q χ₁ 0 L hL0
  obtain ⟨W2, m2, c2, s2⟩ := H q χ t L hL
  obtain ⟨W3, m3, c3, s3⟩ := H q (χ * χ₁) t L hL
  have hρ2 : ρ ∈ W2 := by
    rw [← Multiset.one_le_count_iff_mem, m2 ρ hρd hρ1 hz]; exact one_le_ord χ hρ1 hz
  obtain ⟨V1, d1, -, r1⟩ := exists_erase hβ hβ' W1 0 fun hd => by
    rw [← Multiset.one_le_count_iff_mem, m1 β hd hβ1 hz₁]; exact one_le_ord χ₁ hβ1 hz₁
  have hmul : χ * χ₁ = 1 ↔ χ = χ₁ := by
    constructor
    · intro h
      calc χ = χ * χ₁ ^ 2 := by rw [hsq, mul_one]
        _ = χ₁ := by rw [sq, ← mul_assoc, h, one_mul]
    · rintro rfl; rw [← sq, hsq]
  obtain ⟨V2, V3, d2, d3, hρV, r23⟩ : ∃ V2 V3 : Multiset ℂ, V2.card ≤ W2.card ∧ V3.card ≤ W3.card ∧
      ρ ∈ V2 ∧ ∀ j : ℕ, (powSum V2 t j).re + (powSum V3 t j).re +
        (if χ = 1 then 1 / ((2 : ℂ) + t * I - 1) ^ j else 0).re +
        (if χ * χ₁ = 1 then 1 / ((2 : ℂ) + t * I - 1) ^ j else 0).re ≤
        (powSum W2 t j).re + (powSum W3 t j).re + j * (1 - β) + 1 / 2 ^ j := by
    by_cases a : χ = 1
    · subst a
      rw [one_mul] at m3 ⊢
      obtain ⟨V, d, -, r⟩ := exists_erase hβ hβ' W3 t fun hd => by
        rw [← Multiset.one_le_count_iff_mem, m3 β hd hβ1 hz₁]; exact one_le_ord χ₁ hβ1 hz₁
      refine ⟨W2, V, le_rfl, d, hρ2, fun j => ?_⟩
      rw [if_pos rfl, if_neg h1, Complex.zero_re]
      linarith [r j]
    by_cases b : χ = χ₁
    · subst b
      obtain ⟨V, d, m, r⟩ := exists_erase hβ hβ' W2 t fun hd => by
        rw [← Multiset.one_le_count_iff_mem, m2 β hd hβ1 hz₁]; exact one_le_ord χ hβ1 hz₁
      refine ⟨V, W3, d, le_rfl, m ρ hρ2 ?_, fun j => ?_⟩
      · by_cases hb : ρ = β
        · right
          rw [m2 ρ hρd hρ1 hz, hb]
          simpa [hb] using hcase
        · exact Or.inl hb
      · rw [if_neg a, if_pos (hmul.2 rfl), Complex.zero_re]
        linarith [r j]
    · refine ⟨W2, W3, le_rfl, le_rfl, hρ2, fun j => ?_⟩
      rw [if_neg a, if_neg (mt hmul.1 b), Complex.zero_re]
      have : (0 : ℝ) ≤ j * (1 - β) := by have : 0 ≤ 1 - β := by linarith
                                         positivity
      have : (0 : ℝ) ≤ 1 / 2 ^ j := by positivity
      linarith
  have key := P ((W0 + V1).map (fun w => 1 / ((2 : ℂ) + (0 : ℝ) * I - w)) +
      (V2 + V3).map (fun w => 1 / ((2 : ℂ) + t * I - w))) (1 / ((2 : ℂ) + t * I - ρ))
      ((8 * C + 4) * L) (1 - β) (1 - ρ.re)
      (Multiset.mem_add.2 (Or.inr (Multiset.mem_map_of_mem _ (Multiset.mem_add.2 (Or.inl hρV)))))
      (by nlinarith) (by linarith) (by linarith) (by linarith) ?_ ?_ ?_
  · have hL' : 0 < L := by linarith
    convert key using 1
    have e : 1 / (D * (8 * C + 4)) / ((1 - β) * L) = 1 / (D * ((8 * C + 4) * L) * (1 - β)) := by
      field_simp
    rw [e]; field_simp
  · rw [eρ, norm_div, norm_one, Complex.norm_real, Real.norm_of_nonneg (by linarith)]
    apply le_of_eq; congr 1; ring
  · simp only [Multiset.card_add, Multiset.card_map]
    have d1' : (V1.card : ℝ) ≤ W1.card := by exact_mod_cast d1
    have d2' : (V2.card : ℝ) ≤ W2.card := by exact_mod_cast d2
    have d3' : (V3.card : ℝ) ≤ W3.card := by exact_mod_cast d3
    push_cast
    nlinarith
  · intro j hj
    obtain ⟨k, rfl⟩ : ∃ k, j = k + 1 := ⟨j - 1, by omega⟩
    have e : (Multiset.map (fun y => y ^ (k + 1)) ((W0 + V1).map (fun w => 1 / ((2 : ℂ) + (0 : ℝ) * I - w)) +
        (V2 + V3).map (fun w => 1 / ((2 : ℂ) + t * I - w)))).sum =
        powSum W0 0 (k + 1) + powSum V1 0 (k + 1) + powSum V2 t (k + 1) + powSum V3 t (k + 1) := by
      unfold powSum
      simp only [Multiset.map_add (f := _), Multiset.sum_add, Multiset.map_map, Function.comp_def]
      ring
    rw [e]
    have hp := der_pos χ₁ χ hsq k t
    have a0 := s0 k
    have a1 := s1 k
    have a2 := s2 k
    have a3 := s3 k
    have b1 := r1 (k + 1)
    have b2 := r23 (k + 1)
    rw [if_pos rfl] at a0
    rw [if_neg h1, Complex.zero_re] at a1
    simp only [Complex.add_re] at hp ⊢
    have f : (8 * C + 4) * L / 2 ^ (k + 1) = 4 * (2 * C * L / 2 ^ (k + 1)) + 4 * L * (1 / 2 ^ (k + 1)) := by
      ring
    have g : (1 : ℝ) / 2 ^ (k + 1) * 2 ≤ 4 * L * (1 / 2 ^ (k + 1)) := by
      rw [mul_comm]; gcongr; linarith
    linarith

end GlobalTheory.Lin.Repulsion
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.Repulsion =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ChebyshevPsiProgressionRelativeError =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ChebyshevPsiProgressionRelativeError", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.ZerosDisc\npublic import Mathlib.Data.FunLike.Fintype\npublic import Mathlib.NumberTheory.DirichletCharacter.Orthogonality\npublic import Mathlib.RingTheory.SimpleRing.Principal\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExceptionalDirichletZeroUniqueZeroFreeRegion\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExplicitFormulaDirichletZerosRightHalf\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.Repulsion\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.SumRpowZerosLe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Complex DirichletCharacter ArithmeticFunction MeasureTheory Filter Topology GlobalTheory.Lin
open scoped Classical

namespace GlobalTheory.Lin.PsiRel

lemma orth (M : ℕ) [NeZero M] (b : ℕ) (hb : Nat.Coprime b M) (u : ℝ) :
    (((M.totient : ℝ) * psiAP M b u : ℝ) : ℂ) = ∑ χ : DirichletCharacter ℂ M, χ (b : ZMod M)⁻¹ *
      ∑ n ∈ Finset.Icc 1 ⌊u⌋₊, ((Λ n : ℝ) : ℂ) * χ (n : ZMod M) := by
  have hu : IsUnit (b : ZMod M) := (ZMod.isUnit_iff_coprime b M).2 hb
  simp_rw [Finset.mul_sum]
  rw [Finset.sum_comm]
  unfold psiAP
  rw [Finset.sum_filter, Finset.mul_sum, Complex.ofReal_sum]
  refine Finset.sum_congr rfl fun n _ => ?_
  have h := DirichletCharacter.sum_char_inv_mul_char_eq ℂ hu (n : ZMod M)
  have h2 : ∑ χ : DirichletCharacter ℂ M, χ (b : ZMod M)⁻¹ * (((Λ n : ℝ) : ℂ) * χ (n : ZMod M)) =
      ((Λ n : ℝ) : ℂ) * ∑ χ : DirichletCharacter ℂ M, χ (b : ZMod M)⁻¹ * χ (n : ZMod M) := by
    rw [Finset.mul_sum]; exact Finset.sum_congr rfl fun χ _ => by ring
  rw [h2, h]
  by_cases hn : n ≡ b [MOD M]
  · have : (b : ZMod M) = n := (ZMod.natCast_eq_natCast_iff _ _ _).2 hn.symm
    rw [if_pos hn, if_pos this]; push_cast; ring
  · have : ¬ (b : ZMod M) = n := fun h => hn ((ZMod.natCast_eq_natCast_iff _ _ _).1 h).symm
    rw [if_neg hn, if_neg this]; simp

lemma zsum (s t : Set ℂ) (ht : t.Finite) (hst : s ⊆ t) (o : ℂ → ℕ) (u : ℝ) (hu : 0 < u)
    (h : ∀ ρ ∈ s, 1 / 2 ≤ ρ.re) :
    ‖∑ᶠ ρ ∈ s, (o ρ : ℂ) * ((u : ℂ) ^ ρ / ρ)‖ ≤ 2 * u * ∑ᶠ ρ ∈ t, (o ρ : ℝ) * u ^ (ρ.re - 1) := by
  have hs := ht.subset hst
  rw [finsum_mem_eq_finite_toFinset_sum _ hs, finsum_mem_eq_finite_toFinset_sum _ ht, Finset.mul_sum]
  refine (norm_sum_le _ _).trans ?_
  refine le_trans (Finset.sum_le_sum (g := fun ρ : ℂ => 2 * u * ((o ρ : ℝ) * u ^ (ρ.re - 1))) ?_)
    (Finset.sum_le_sum_of_subset_of_nonneg (by simpa using hst) fun ρ _ _ => by positivity)
  intro ρ hρ
  have h1 := h ρ (by simpa using hρ)
  have h2 : 1 / 2 ≤ ‖ρ‖ := h1.trans (Complex.re_le_norm ρ)
  rw [norm_mul, norm_div, Complex.norm_natCast, Complex.norm_cpow_eq_rpow_re_of_pos hu,
    Real.rpow_sub_one hu.ne']
  have h4 : u ^ ρ.re / ‖ρ‖ ≤ 2 * u ^ ρ.re := by
    rw [div_le_iff₀ (by linarith)]
    have := mul_le_mul_of_nonneg_left h2 (show (0 : ℝ) ≤ 2 * u ^ ρ.re by positivity)
    linarith
  calc (o ρ : ℝ) * (u ^ ρ.re / ‖ρ‖) ≤ (o ρ : ℝ) * (2 * u ^ ρ.re) := by gcongr
    _ = _ := by field_simp

lemma combine (M : ℕ) [NeZero M] (b : ℕ) (hb : Nat.Coprime b M) (u E x : ℝ) (hE : 0 ≤ E)
    (Z e : DirichletCharacter ℂ M → ℂ) (B : DirichletCharacter ℂ M → ℝ)
    (h1 : ∀ χ : DirichletCharacter ℂ M, ‖(∑ n ∈ Finset.Icc 1 ⌊u⌋₊, ((Λ n : ℝ) : ℂ) * χ (n : ZMod M)) -
      (if χ = 1 then (u : ℂ) else 0) + Z χ‖ ≤ E)
    (h2 : ∀ χ, ‖Z χ - e χ‖ ≤ B χ)
    (h3 : ∑ χ : DirichletCharacter ℂ M, χ (b : ZMod M)⁻¹ * e χ = (x : ℂ)) :
    |(M.totient : ℝ) * psiAP M b u - (u - x)| ≤ M * E + ∑ χ, B χ := by
  have hu : IsUnit (b : ZMod M) := (ZMod.isUnit_iff_coprime b M).2 hb
  have hui : IsUnit (b : ZMod M)⁻¹ :=
    IsUnit.of_mul_eq_one (b : ZMod M) (ZMod.inv_mul_of_unit _ hu)
  have h4 : ∑ χ : DirichletCharacter ℂ M, χ (b : ZMod M)⁻¹ * (if χ = 1 then (u : ℂ) else 0) = u := by
    simp_rw [mul_ite, mul_zero]
    rw [Finset.sum_ite_eq', if_pos (Finset.mem_univ _), MulChar.one_apply hui, one_mul]
  have key : (((M.totient : ℝ) * psiAP M b u - (u - x) : ℝ) : ℂ) =
      ∑ χ : DirichletCharacter ℂ M, χ (b : ZMod M)⁻¹ *
        (((∑ n ∈ Finset.Icc 1 ⌊u⌋₊, ((Λ n : ℝ) : ℂ) * χ (n : ZMod M)) -
          (if χ = 1 then (u : ℂ) else 0) + Z χ) - (Z χ - e χ)) := by
    rw [Complex.ofReal_sub, orth M b hb u, Complex.ofReal_sub, ← h3]
    conv_lhs => rw [← h4]
    rw [← Finset.sum_sub_distrib, ← Finset.sum_sub_distrib]
    exact Finset.sum_congr rfl fun χ _ => by ring
  rw [← Real.norm_eq_abs, ← Complex.norm_real, key]
  refine (norm_sum_le _ _).trans ?_
  refine (Finset.sum_le_sum (g := fun χ => E + B χ) fun χ _ => ?_).trans ?_
  · rw [norm_mul]
    refine (mul_le_of_le_one_left (norm_nonneg _) (χ.norm_le_one _)).trans ?_
    exact (norm_sub_le _ _).trans (add_le_add (h1 χ) (h2 χ))
  · rw [Finset.sum_add_distrib, Finset.sum_const, nsmul_eq_mul, Finset.card_univ,
      ← Nat.card_eq_fintype_card, DirichletCharacter.card_eq_totient_of_hasEnoughRootsOfUnity]
    have : (M.totient : ℝ) ≤ M := by exact_mod_cast Nat.totient_le M
    gcongr

lemma struct (M : ℕ) [NeZero M] (b : ℕ) (hb : Nat.Coprime b M) (θ : ℤ) (β u T η E : ℝ) (hu : 0 < u) (hE : 0 ≤ E)
    (h1 : ∀ χ : DirichletCharacter ℂ M, (zerosBox χ (1 / 2) T).Finite ∧
      ‖(∑ n ∈ Finset.Icc 1 ⌊u⌋₊, ((Λ n : ℝ) : ℂ) * χ (n : ZMod M)) - (if χ = 1 then (u : ℂ) else 0) +
        ∑ᶠ ρ ∈ zerosBox χ (1 / 2) T, (ord χ ρ : ℂ) * ((u : ℂ) ^ ρ / ρ)‖ ≤ E)
    (h2 : (θ = 0 ∧ ∀ (χ : DirichletCharacter ℂ M), ∀ ρ ∈ zerosBox χ (1 / 2) T, ρ.re ≤ 1 - η) ∨
      ∃ χ₁ : DirichletCharacter ℂ M, χ₁ ^ 2 = 1 ∧ χ₁ (b : ZMod M) = θ ∧ (β : ℂ) ∈ zerosBox χ₁ (1 / 2) T ∧
        ord χ₁ β = 1 ∧ ∀ (χ : DirichletCharacter ℂ M), ∀ ρ ∈ zerosBox χ (1 / 2) T,
          (χ = χ₁ ∧ ρ = β) ∨ ρ.re ≤ 1 - η) :
    |(M.totient : ℝ) * psiAP M b u - (u - θ * (u ^ β / β))| ≤ M * E + 2 * u *
      ∑ χ : DirichletCharacter ℂ M, (∑ᶠ ρ ∈ zerosBox χ (1 / 2) T ∩ {ρ | ρ.re ≤ 1 - η},
        (ord χ ρ : ℝ) * u ^ (ρ.re - 1)) := by
  have hbu : IsUnit (b : ZMod M) := (ZMod.isUnit_iff_coprime b M).2 hb
  rw [Finset.mul_sum]
  rcases h2 with ⟨h0, h2⟩ | ⟨χ₁, hsq, hθ, hβ, ho, h2⟩
  · refine combine M b hb u E _ hE _ (fun _ => 0) _ (fun χ => (h1 χ).2) (fun χ => ?_) (by simp [h0])
    rw [sub_zero]
    exact zsum _ _ ((h1 χ).1.inter_of_left _) (fun ρ hρ => ⟨hρ, h2 χ ρ hρ⟩) _ u hu fun ρ hρ => hρ.1
  · refine combine M b hb u E _ hE _ (fun χ => if χ = χ₁ then (u : ℂ) ^ (β : ℂ) / β else 0) _
      (fun χ => (h1 χ).2) (fun χ => ?_) ?_
    · by_cases hχ : χ = χ₁
      · subst hχ
        have hi : zerosBox χ (1 / 2) T = insert (β : ℂ) (zerosBox χ (1 / 2) T \ {(β : ℂ)}) := by
          rw [Set.insert_diff_singleton, Set.insert_eq_of_mem hβ]
        have : ∑ᶠ ρ ∈ zerosBox χ (1 / 2) T, (ord χ ρ : ℂ) * ((u : ℂ) ^ ρ / ρ) =
            (u : ℂ) ^ (β : ℂ) / β +
            ∑ᶠ ρ ∈ zerosBox χ (1 / 2) T \ {(β : ℂ)}, (ord χ ρ : ℂ) * ((u : ℂ) ^ ρ / ρ) := by
          conv_lhs => rw [hi]
          rw [finsum_mem_insert _ (by simp) ((h1 χ).1.diff), ho]; simp
        simp only [if_true]
        rw [this, add_sub_cancel_left]
        refine zsum (zerosBox χ (1 / 2) T \ {(β : ℂ)}) _ ((h1 χ).1.inter_of_left _) (fun ρ hρ => ⟨hρ.1, ?_⟩) _ u hu fun ρ hρ => hρ.1.1
        rcases h2 χ ρ hρ.1 with h | h
        · exact absurd h.2 hρ.2
        · exact h
      · simp only [if_neg hχ]
        rw [sub_zero]
        refine zsum _ _ ((h1 χ).1.inter_of_left _) (fun ρ hρ => ⟨hρ, ?_⟩) _ u hu fun ρ hρ => hρ.1
        rcases h2 χ ρ hρ with h | h
        · exact absurd h.1 hχ
        · exact h
    · simp_rw [mul_ite, mul_zero]
      rw [Finset.sum_ite_eq', if_pos (Finset.mem_univ _)]
      have ha : χ₁ (b : ZMod M) * χ₁ (b : ZMod M) = 1 := by
        have := congrArg (fun ψ : DirichletCharacter ℂ M => ψ (b : ZMod M)) hsq
        simp only [pow_two, MulChar.mul_apply, MulChar.one_apply hbu] at this
        exact this
      have hb' : χ₁ (b : ZMod M)⁻¹ * χ₁ (b : ZMod M) = 1 := by
        rw [← map_mul, ZMod.inv_mul_of_unit _ hbu, map_one]
      have hc : χ₁ (b : ZMod M)⁻¹ = θ := by
        rw [← hθ]; linear_combination (-(χ₁ (b : ZMod M)⁻¹)) * ha + χ₁ (b : ZMod M) * hb'
      rw [hc]; push_cast; rw [Complex.ofReal_cpow hu.le]

lemma mainLower (θ β V : ℝ) (hθ : θ ≤ 1) (h1 : 7 / 8 ≤ β) (h2 : β < 1) (hV : 8 ≤ V) :
    Real.exp V * min 1 ((1 - β) * V) / 4 ≤ Real.exp V - θ * ((Real.exp V) ^ β / β) := by
  set x := (1 - β) * V with hx
  have hx0 : 0 < x := by positivity
  have hb : 0 < β := by linarith
  have e1 : (Real.exp V) ^ β = Real.exp V * Real.exp (-x) := by
    rw [← Real.exp_mul, ← Real.exp_add]; congr 1; rw [hx]; ring
  have e2 : Real.exp (-x) ≤ 1 / (1 + x) := by
    rw [Real.exp_neg, one_div]; exact inv_anti₀ (by linarith) (by linarith [Real.add_one_le_exp x])
  have e3 : 8 * (1 - β) ≤ x := by
    rw [hx]; have := mul_le_mul_of_nonneg_left hV (by linarith : (0 : ℝ) ≤ 1 - β); linarith
  have e4 : Real.exp (-x) / β ≤ 1 - min 1 x / 4 := by
    rw [div_le_iff₀ hb]; refine e2.trans ?_
    rw [div_le_iff₀ (by linarith)]
    rcases le_total 1 x with h | h
    · rw [min_eq_left h]
      have h5 : (3 / 2 : ℝ) ≤ (1 - 1 / 4) * (1 + x) := by linarith
      have h6 := mul_le_mul h5 h1 (by norm_num) (by linarith)
      linarith
    · rw [min_eq_right h]
      have : 0 ≤ (1 - x / 4) * (1 + x) := by apply mul_nonneg <;> linarith
      have h5 : (1 - x / 4) * (1 + x) * (1 - x / 8) ≤ (1 - x / 4) * (1 + x) * β := by
        gcongr; linarith
      have h6 : (1 - x / 4) * (1 + x) * (1 - x / 8) =
          1 + 11 / 32 * (x * (1 - x)) + 9 / 32 * x + 1 / 32 * (x * (x * x)) := by ring
      linarith [mul_nonneg hx0.le (sub_nonneg.2 h), mul_nonneg hx0.le (mul_nonneg hx0.le hx0.le)]
  rw [e1, mul_div_assoc (Real.exp V) (Real.exp (-x))]
  have : θ * (Real.exp V * (Real.exp (-x) / β)) ≤ 1 * (Real.exp V * (1 - min 1 x / 4)) := by
    refine (mul_le_mul_of_nonneg_right hθ (by positivity)).trans ?_
    gcongr
  linarith

lemma realEnd (Ce Ca η₀ c' K cw R₀ : ℝ) (hCe : 0 < Ce) (hCa : 0 < Ca) (hη : 0 < η₀) (hc : 0 < c') (hK : 0 < K)
    (hcw : 0 < cw) :
    ∃ c₂ c₃ C : ℝ, 0 < c₂ ∧ 0 < c₃ ∧ 0 < C ∧ ∀ m V w : ℝ, 1 ≤ m → c₂ * m ≤ V →
      0 < V ∧ R₀ * (10 * m + √V) ≤ V ∧ (cw * Real.exp (-(3 * m)) ≤ w →
      Real.exp m * (Ce * (Real.exp (-(8 * m + √V)) + Real.exp (-(V / 2)) * Real.exp (3 * m)) *
        (m + V + (8 * m + √V)) ^ 2) + 2 * (Ca * (K * w * Real.exp (-(c' * (V / (10 * m + √V)))) +
          Real.exp (-(η₀ * V)))) ≤
        C * (Real.exp (-c₃ * V / m) + Real.exp (-√(c₃ * V))) * (w / 4)) := by
  set R := max (max R₀ 2) (1 / η₀) with hR
  have hR2 : 2 ≤ R := (le_max_right _ _).trans (le_max_left _ _)
  have hR0 : R₀ ≤ R := (le_max_left _ _).trans (le_max_left _ _)
  have hRη : 1 ≤ η₀ * R := by
    have : 1 / η₀ ≤ R := le_max_right _ _
    rw [div_le_iff₀ hη] at this; linarith
  set c₃ := min (min (1 / 4) (c' / 20)) (c' ^ 2 / 4) with hc₃
  have hc3 : 0 < c₃ := by positivity
  have hc3a : c₃ ≤ 1 / 4 := (min_le_left _ _).trans (min_le_left _ _)
  have hc3b : c₃ ≤ c' / 20 := (min_le_left _ _).trans (min_le_right _ _)
  have hc3c : c₃ ≤ c' ^ 2 / 4 := min_le_right _ _
  refine ⟨20 * R + 4 * R ^ 2, c₃, 4 * ((3072 * Ce + 2 * Ca) / cw + 2 * Ca * K), by positivity, hc3,
    by positivity, fun m V w hm hV => ?_⟩
  have hV1 : 20 * R * m ≤ V := by
    linarith [mul_nonneg (sq_nonneg R) (by linarith : (0 : ℝ) ≤ m)]
  have hV2 : 4 * R ^ 2 ≤ V := by
    have h1 : 4 * R ^ 2 ≤ 4 * R ^ 2 * m := le_mul_of_one_le_right (by positivity) hm
    have h2 : 0 ≤ 20 * R * m := by positivity
    linarith
  have hV0 : 0 < V := by
    have h4 : (4 : ℝ) ≤ R ^ 2 := by
      have := mul_le_mul hR2 hR2 (by norm_num) (by linarith)
      linarith [show R * R = R ^ 2 by ring]
    linarith
  set s := √V with hs
  have hs2 : s * s = V := Real.mul_self_sqrt hV0.le
  have hsR : 2 * R ≤ s := Real.le_sqrt_of_sq_le (by linarith)
  have hL : R * (10 * m + s) ≤ V := by
    have hRs : 2 * R * s ≤ V := by
      rw [← hs2]; exact mul_le_mul_of_nonneg_right hsR (Real.sqrt_nonneg V)
    linarith
  have hL0 : 0 < 10 * m + s := by linarith
  refine ⟨hV0, le_trans (by gcongr) hL, fun hw => ?_⟩
  have hL2 : 2 * (10 * m + s) ≤ V := le_trans (by gcongr) hL
  have hLη : 10 * m + s ≤ η₀ * V := by
    have := mul_le_mul_of_nonneg_left hL hη.le
    have h1 : 10 * m + s ≤ (η₀ * R) * (10 * m + s) := le_mul_of_one_le_left hL0.le hRη
    linarith
  set P := Real.exp (-c₃ * V / m) + Real.exp (-√(c₃ * V)) with hP
  have hw0 : 0 < w := lt_of_lt_of_le (by positivity) hw
  have hsq : ∀ a : ℝ, 0 ≤ a → c₃ ≤ a ^ 2 → √(c₃ * V) ≤ a * s := fun a ha h => by
    apply Real.sqrt_le_iff.2 ⟨by positivity, ?_⟩
    rw [mul_pow, pow_two s, hs2]; gcongr
  have p1 : Real.exp (-(s / 2)) ≤ P := by
    have := hsq (1 / 2) (by norm_num) (by linarith)
    have h : Real.exp (-(s / 2)) ≤ Real.exp (-√(c₃ * V)) := by gcongr; linarith
    linarith [Real.exp_pos (-c₃ * V / m)]
  have p2 : Real.exp (-(c' * (V / (10 * m + s)))) ≤ P := by
    rcases le_total s (10 * m) with h | h
    · have h1 : V / (20 * m) ≤ V / (10 * m + s) := by gcongr; linarith
      have h2 : c₃ * V / m ≤ c' * (V / (20 * m)) := by
        have : c' * (V / (20 * m)) = c' / 20 * V / m := by field_simp
        rw [this]; gcongr
      have h3 : Real.exp (-(c' * (V / (10 * m + s)))) ≤ Real.exp (-c₃ * V / m) := by
        apply Real.exp_le_exp.2
        have := mul_le_mul_of_nonneg_left h1 hc.le
        rw [neg_mul, neg_div]; linarith
      linarith [Real.exp_pos (-√(c₃ * V))]
    · have h1 : s / 2 ≤ V / (10 * m + s) := by
        rw [le_div_iff₀ hL0]
        have := mul_le_mul_of_nonneg_left h (Real.sqrt_nonneg V)
        linarith
      have h2 := hsq (c' / 2) (by positivity) (by linarith)
      have h3 : Real.exp (-(c' * (V / (10 * m + s)))) ≤ Real.exp (-√(c₃ * V)) := by
        apply Real.exp_le_exp.2
        have := mul_le_mul_of_nonneg_left h1 hc.le
        linarith
      linarith [Real.exp_pos (-c₃ * V / m)]
  have q1 : (m + V + (8 * m + s)) ^ 2 ≤ 1536 * Real.exp (s / 2) := by
    have h1 : (m + V + (8 * m + s)) ^ 2 ≤ (2 * V) ^ 2 := by gcongr; linarith
    have h2 := Real.pow_div_factorial_le_exp (s / 2) (by linarith) 4
    have h3 : (s / 2) ^ 4 / ((Nat.factorial 4 : ℕ) : ℝ) = V ^ 2 / 384 := by
      rw [← hs2]; norm_num [Nat.factorial]; ring
    rw [h3] at h2; linarith
  set X := Real.exp (-(3 * m)) with hX
  have q2 : Real.exp m * (Real.exp (-(8 * m + s)) + Real.exp (-(V / 2)) * Real.exp (3 * m)) *
      Real.exp (s / 2) ≤ 2 * (X * Real.exp (-(s / 2))) := by
    rw [mul_add, add_mul, hX]
    simp only [← Real.exp_add]
    rw [two_mul]; exact add_le_add (Real.exp_le_exp.2 (by linarith)) (Real.exp_le_exp.2 (by linarith))
  have q3 : Real.exp (-(η₀ * V)) ≤ X * Real.exp (-(s / 2)) := by
    rw [hX, ← Real.exp_add]; gcongr; linarith
  have q4 : X * Real.exp (-(s / 2)) ≤ w / cw * P := by
    have : X ≤ w / cw := by rw [le_div_iff₀ hcw]; linarith
    gcongr
  have q5 : Real.exp m * (Ce * (Real.exp (-(8 * m + s)) + Real.exp (-(V / 2)) * Real.exp (3 * m)) *
        (m + V + (8 * m + s)) ^ 2) ≤ 3072 * Ce * (w / cw * P) := by
    calc _ ≤ Real.exp m * (Ce * (Real.exp (-(8 * m + s)) + Real.exp (-(V / 2)) * Real.exp (3 * m)) *
        (1536 * Real.exp (s / 2))) := by gcongr
      _ = 1536 * Ce * (Real.exp m * (Real.exp (-(8 * m + s)) + Real.exp (-(V / 2)) * Real.exp (3 * m)) *
        Real.exp (s / 2)) := by ring
      _ ≤ 1536 * Ce * (2 * (w / cw * P)) :=
          mul_le_mul_of_nonneg_left (by linarith) (by positivity)
      _ = _ := by ring
  calc _ ≤ 3072 * Ce * (w / cw * P) + 2 * (Ca * (K * w * P + w / cw * P)) := by
        gcongr; exact q3.trans q4
    _ = _ := by field_simp; ring

lemma etaChoice (c d : ℝ) (hc : 0 < c) (hd : 0 < d) :
    ∃ c' K R₁ : ℝ, 0 < c' ∧ c' ≤ c / 2 ∧ 1 ≤ K ∧ ∀ δ R : ℝ, 0 < δ → 0 ≤ R → R₁ ≤ R → ∃ a : ℝ, 0 ≤ a ∧
      (a = c ∨ a = d * Real.log (d / δ)) ∧
      Real.exp (-(a * R / 2)) ≤ K * min 1 δ * Real.exp (-(c' * R)) := by
  set d₀ := min 1 (d / Real.exp 1) with hd₀
  have h0 : 0 < d₀ := by positivity
  have h1 : d₀ ≤ 1 := min_le_left _ _
  have h2 : d₀ * Real.exp 1 ≤ d := by
    have : d₀ ≤ d / Real.exp 1 := min_le_right _ _
    rwa [le_div_iff₀ (Real.exp_pos 1)] at this
  have he : 1 ≤ Real.exp 1 := Real.one_le_exp zero_le_one
  have ha : min (c / 2) (d / 4) ≤ c / 2 := min_le_left _ _
  have hb : min (c / 2) (d / 4) ≤ d / 4 := min_le_right _ _
  refine ⟨min (c / 2) (d / 4), 1 / d₀, 4 / d, by positivity, ha, by rwa [le_div_iff₀ h0, one_mul],
    fun δ R hδ hR0 hR => ?_⟩
  rcases le_total d₀ δ with h | h
  · refine ⟨c, hc.le, Or.inl rfl, ?_⟩
    have h3 : 1 ≤ 1 / d₀ * min 1 δ := by
      rw [one_div_mul_eq_div, le_div_iff₀ h0, one_mul]; exact le_min h1 h
    refine le_trans ?_ (le_mul_of_one_le_left (Real.exp_pos _).le h3)
    apply Real.exp_le_exp.2
    have := mul_le_mul_of_nonneg_right ha hR0
    linarith
  · have hl : 1 ≤ Real.log (d / δ) := by
      rw [Real.le_log_iff_exp_le (by positivity), le_div_iff₀ hδ]
      have := mul_le_mul_of_nonneg_right h (by linarith : (0 : ℝ) ≤ Real.exp 1)
      linarith
    refine ⟨d * Real.log (d / δ), by positivity, Or.inr rfl, ?_⟩
    have h4 : 4 ≤ d * R := by rw [div_le_iff₀ hd] at hR; linarith
    rw [min_eq_right (h.trans h1)]
    have h5 : Real.exp (-Real.log (d / δ)) ≤ 1 / d₀ * δ := by
      rw [Real.exp_neg, Real.exp_log (by positivity), inv_div, one_div_mul_eq_div]
      gcongr
      have := le_mul_of_one_le_right h0.le he
      linarith
    refine le_trans ?_ (mul_le_mul_of_nonneg_right h5 (Real.exp_pos _).le)
    rw [← Real.exp_add]
    apply Real.exp_le_exp.2
    have := mul_le_mul_of_nonneg_right hb hR0
    linarith [mul_nonneg (sub_nonneg.2 h4) (sub_nonneg.2 hl)]



theorem psiAP_relative : ∃ c₀ : ℝ, 0 < c₀ ∧ ∀ c₁ : ℝ, 0 < c₁ → c₁ ≤ c₀ → ∃ c₂ c₃ C : ℝ, 0 < c₂ ∧ 0 < c₃ ∧ 0 < C ∧ ∀ (M : ℕ) [NeZero M] (b : ℕ) (θ : ℤ) (β u : ℝ), 3 ≤ M → Nat.Coprime b M → ExcData c₁ M b θ β → (M : ℝ) ^ c₂ ≤ u → |(M.totient : ℝ) * psiAP M b u - (u - θ * (u ^ β / β))| ≤ C * (Real.exp (-c₃ * Real.log u / Real.log M) + Real.exp (-Real.sqrt (c₃ * Real.log u))) * (u - θ * (u ^ β / β)) := by
  obtain ⟨c₀, hc₀, hX⟩ := _root_.GlobalTheory.ExceptionalPair.main
  refine ⟨c₀, hc₀, fun c₁ hc₁ hc₁' => ?_⟩
  obtain ⟨c, hc, hX⟩ := hX c₁ hc₁ hc₁'
  obtain ⟨d, hd, hD⟩ := _root_.GlobalTheory.Lin.Repulsion.repulsion
  obtain ⟨Ce, hCe, hE⟩ := _root_.GlobalTheory.ExplicitFormulaRight.explicit_formula_right
  obtain ⟨A, Ca, η₀, hA, hCa, hη₀, hZ⟩ := _root_.GlobalTheory.Lin.ZeroSum.sum_rpow_zeros_le
  obtain ⟨c', K, R₁, hc', hc'', hK, hη⟩ := etaChoice c d hc hd
  obtain ⟨c₂, c₃, C, hc₂, hc₃, hC, hR⟩ := realEnd Ce Ca η₀ c' K (min 1 c) (max (max R₁ A) 8) hCe hCa hη₀ hc'
    (by linarith) (by positivity)
  refine ⟨c₂, c₃, C, hc₂, hc₃, hC, fun M _ b θ β u hM hb hexc hu => ?_⟩
  obtain ⟨hX1, hX2, hX3⟩ := hX M hM
  have hM3 : (3 : ℝ) ≤ M := by exact_mod_cast hM
  have hM0 : (0 : ℝ) < M := by linarith
  have hu0 : 0 < u := lt_of_lt_of_le (Real.rpow_pos_of_pos hM0 _) hu
  obtain ⟨V, rfl⟩ : ∃ V, u = Real.exp V := ⟨Real.log u, (Real.exp_log hu0).symm⟩
  rw [Real.log_exp]
  set m := Real.log M with hm
  have hMm : (M : ℝ) = Real.exp m := (Real.exp_log hM0).symm
  have hm1 : 1 ≤ m := by
    rw [hm, Real.le_log_iff_exp_le hM0]; linarith [Real.exp_one_lt_d9]
  have hV : c₂ * m ≤ V := by
    rw [hMm, ← Real.exp_mul, Real.exp_le_exp] at hu; linarith
  have hs0 : 0 ≤ √V := Real.sqrt_nonneg V
  have hL : max (max R₁ A) 8 * (10 * m + √V) ≤ V := (hR m V 1 hm1 hV).2.1
  have hV0 : 0 < V := (hR m V 1 hm1 hV).1
  have hfin := fun w => (hR m V w hm1 hV).2.2
  clear hR
  set L := 10 * m + √V with hLd
  have hL0 : 0 < L := by linarith
  have hL8 : 8 * L ≤ V := le_trans (by gcongr; exact le_max_right _ _) hL
  have hLA : A * L ≤ V := le_trans (by gcongr; exact (le_max_right _ _).trans (le_max_left _ _)) hL
  have hLR : R₁ ≤ V / L := by
    rw [le_div_iff₀ hL0]
    exact le_trans (by gcongr; exact (le_max_left _ _).trans (le_max_left _ _)) hL
  set T := Real.exp (8 * m + √V) with hT
  have hT2 : 2 ≤ T := by linarith [Real.add_one_le_exp (8 * m + √V)]
  have hTu : T ≤ Real.exp V := Real.exp_le_exp.2 (by linarith)
  have hTA : ((M : ℝ) * T) ^ A ≤ Real.exp V := by
    rw [hMm, hT, ← Real.exp_add, ← Real.exp_mul, Real.exp_le_exp]
    have := mul_le_mul_of_nonneg_right (by linarith : m + (8 * m + √V) ≤ L) hA.le
    linarith
  have hlog : ∀ ρ : ℂ, |ρ.im| ≤ T → 0 < Real.log (M * (|ρ.im| + 2)) ∧ Real.log (M * (|ρ.im| + 2)) ≤ L := by
    intro ρ hρ
    have h0 := abs_nonneg ρ.im
    refine ⟨Real.log_pos (by
      have := mul_le_mul hM3 (by linarith : (2 : ℝ) ≤ |ρ.im| + 2) (by norm_num) (by linarith)
      linarith), ?_⟩
    rw [Real.log_le_iff_le_exp (by positivity)]
    have : Real.exp L = M * (M * T) := by
      rw [hMm, hT, ← Real.exp_add, ← Real.exp_add]; congr 1; rw [hLd]; ring
    rw [this]; gcongr
    have := mul_le_mul_of_nonneg_right hM3 (by linarith : (0 : ℝ) ≤ T)
    linarith
  have hzf : ∀ (χ : DirichletCharacter ℂ M), ∀ ρ ∈ zerosBox χ (1 / 2) T,
      (ρ.im = 0 ∧ IsExc c₁ χ ρ.re) ∨ ρ.re ≤ 1 - c / L := by
    intro χ ρ hρ
    refine (hX3 χ ρ hρ.2.1 hρ.2.2.2).imp_right fun h => h.trans ?_
    obtain ⟨h1, h2⟩ := hlog ρ hρ.2.2.1
    gcongr
  have core : ∀ a w : ℝ, 0 ≤ a → min 1 c * Real.exp (-(3 * m)) ≤ w →
      Real.exp (-(a * (V / L) / 2)) ≤ K * w * Real.exp (-(c' * (V / L))) →
      Real.exp V * w / 4 ≤ Real.exp V - θ * (Real.exp V ^ β / β) →
      ((θ = 0 ∧ ∀ (χ : DirichletCharacter ℂ M), ∀ ρ ∈ zerosBox χ (1 / 2) T, ρ.re ≤ 1 - a / L) ∨
      ∃ χ₁ : DirichletCharacter ℂ M, χ₁ ^ 2 = 1 ∧ χ₁ (b : ZMod M) = θ ∧ (β : ℂ) ∈ zerosBox χ₁ (1 / 2) T ∧
        ord χ₁ β = 1 ∧ ∀ (χ : DirichletCharacter ℂ M), ∀ ρ ∈ zerosBox χ (1 / 2) T,
          (χ = χ₁ ∧ ρ = β) ∨ ρ.re ≤ 1 - a / L) →
      |(M.totient : ℝ) * psiAP M b (Real.exp V) - (Real.exp V - θ * (Real.exp V ^ β / β))| ≤
        C * (Real.exp (-c₃ * V / m) + Real.exp (-√(c₃ * V))) * (Real.exp V - θ * (Real.exp V ^ β / β)) := by
    intro a w ha hw h1 h2 h3
    have s1 := struct M b hb θ β (Real.exp V) T (a / L) _ hu0 (by positivity)
      (fun χ => hE M χ (Real.exp V) T hT2 hTu) h3
    have s2 := hZ M T (Real.exp V) (a / L) hT2 hTA (by positivity)
    have s3 := hfin w hw
    have e1 : Real.log (M * Real.exp V * T) = m + V + (8 * m + √V) := by
      rw [hMm, hT, ← Real.exp_add, ← Real.exp_add, Real.log_exp]
    have e2 : Real.exp V / T = Real.exp V * Real.exp (-(8 * m + √V)) := by
      rw [Real.exp_neg, div_eq_mul_inv]
    have e3 : √(Real.exp V) * (M : ℝ) ^ 3 = Real.exp V * (Real.exp (-(V / 2)) * Real.exp (3 * m)) := by
      rw [← Real.exp_half, hMm, ← Real.exp_nat_mul]
      simp only [← Real.exp_add]; congr 1; push_cast; ring
    have e4 : Real.exp V ^ (-(a / L) / 2) = Real.exp (-(a * (V / L) / 2)) := by
      rw [← Real.exp_mul]; congr 1; ring
    have e5 : Real.exp V ^ (-η₀) = Real.exp (-(η₀ * V)) := by
      rw [← Real.exp_mul]; congr 1; ring
    rw [e1, e2, e3] at s1
    rw [e4, e5] at s2
    have s4 := s2.trans (mul_le_mul_of_nonneg_left (add_le_add h1 le_rfl) hCa.le)
    have s5 := mul_le_mul_of_nonneg_left s4 (show 0 ≤ 2 * Real.exp V by positivity)
    have s6 := mul_le_mul_of_nonneg_left s3 hu0.le
    have s7 := mul_le_mul_of_nonneg_left h2
      (show 0 ≤ C * (Real.exp (-c₃ * V / m) + Real.exp (-√(c₃ * V))) by positivity)
    rw [← hMm] at s6
    linarith
  have hx3 : Real.exp (-(3 * m)) ≤ 1 := Real.exp_le_one_iff.2 (by linarith)
  have hmin1 : min 1 c * Real.exp (-(3 * m)) ≤ 1 :=
    mul_le_one₀ (min_le_left _ _) (Real.exp_pos _).le hx3
  have hVL : 0 ≤ V / L := by positivity
  rcases hexc with ⟨h0, hno⟩ | ⟨χ₁, hχ₁, hθ⟩
  · refine core c 1 hc.le hmin1 ?_ ?_ (Or.inl ⟨h0, fun χ ρ hρ => (hzf χ ρ hρ).resolve_left fun h => hno _ _ h.2⟩)
    · rw [mul_one]
      refine le_trans ?_ (le_mul_of_one_le_left (Real.exp_pos _).le hK)
      apply Real.exp_le_exp.2
      have := mul_le_mul_of_nonneg_right hc'' hVL
      linarith
    · rw [h0]; simp only [Int.cast_zero, zero_mul]; linarith
  · obtain ⟨hne, hβ1, hz, ho, hlow⟩ := hX2 χ₁ β hχ₁
    have hβ2 : β < 1 := hχ₁.2.2.1
    obtain ⟨a, ha, hor, hexp⟩ := hη ((1 - β) * L) (V / L) (mul_pos (by linarith) hL0) hVL hLR
    have hθ1 : (θ : ℝ) ≤ 1 := by
      have := χ₁.norm_le_one (b : ZMod M)
      rw [hθ, Complex.norm_intCast] at this
      exact (le_abs_self _).trans this
    refine core a _ ha (le_min hmin1 ?_) hexp ?_ (Or.inr ⟨χ₁, hχ₁.1, hθ, ⟨?_, ?_, ?_, hz⟩, ho, ?_⟩)
    · have h1 : Real.exp (-(3 * m)) = 1 / (M : ℝ) ^ 3 := by
        rw [hMm, ← Real.exp_nat_mul, Real.exp_neg, one_div]; norm_num
      have h2 : m ≤ M := by rw [hMm]; linarith [Real.add_one_le_exp m]
      have h3 : c / (M : ℝ) ^ 3 ≤ c / ((M : ℝ) ^ 2 * m) := by
        rw [pow_succ (M : ℝ) 2]; gcongr
      have h4 : min 1 c * (1 / (M : ℝ) ^ 3) ≤ c / (M : ℝ) ^ 3 := by
        rw [mul_one_div]; gcongr; exact min_le_right _ _
      rw [h1]
      have h5 : 1 - β ≤ (1 - β) * L := le_mul_of_one_le_right (by linarith) (by linarith)
      linarith
    · refine le_trans ?_ (mainLower θ β V hθ1 hβ1 hβ2 (by linarith))
      gcongr; linarith
    · simp only [Complex.ofReal_re]; linarith
    · simpa using hβ2
    · simp only [Complex.ofReal_im, abs_zero]; linarith
    · intro χ ρ hρ
      rcases hor with rfl | rfl
      · refine (hzf χ ρ hρ).imp_left fun h => ?_
        obtain ⟨h1, h2⟩ := hX1 χ χ₁ _ _ h.2 hχ₁
        exact ⟨h1, Complex.ext (by simpa using h2) (by simpa using h.1)⟩
      · by_cases h : χ = χ₁ ∧ ρ = β
        · exact Or.inl h
        · right
          have := hD M χ₁ χ β L ρ hne hχ₁.1 hβ2 (by linarith) hz hρ.2.2.2 hρ.1 hρ.2.1
            (by tauto) (hlog ρ hρ.2.2.1).2
          linarith

end GlobalTheory.Lin.PsiRel
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ChebyshevPsiProgressionRelativeError =====
