module

public import Formalism.SharpRestriction.GrowthBounds.StatementOfDegreeAndBound
public import Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.LiePolarizationDerEqZeroOfDisjoint
public import Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.SaturatedLowerSetSpanOfLowerSetTypesSpan
public import Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.ContragredientIrreducibleGeneratedByHighestWeigh
public import Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.DualWeightVectorApplyEqZeroOfNeNeg
public import Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.NablaDualLatticeOfIrreducibleLowestGenerated
public import Formalism.SharpRestriction.GrowthBounds.RootWeights.DeltaIntegralEnvelopingStable
public import Formalism.SharpRestriction.GrowthBounds.RootWeights.RaiseLowerPowCommutatorOnWeight
public import Formalism.SharpRestriction.GrowthBounds.RootWeights.WeightConditionFromIntegralForm
public import Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths.LatticeCountingFormula
public import Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths.LiftedColumnCongruence
public import Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths.LiftedColumnMultidegree
public import Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths.WedgeSplitTan
public import Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths.ColOKOfPath
public import Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths.DividedPowerZeroOfGlActionZero
public import Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths.ComponentsInFiltrationContractionSingle
public import Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths.AntitoneOfAppend
public import Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths.EqEmptyIffSplit
public import Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths.JointTypeLatticeSaturated
public import Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths.IntegralJointTypeSum
public import Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths.LiftSubstitutionCoeffDivisible
public import Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.AdmFourteen
public import Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.AdmissibleExternalProduct
public import Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.AdmissiblePolynomialBasisProv
public import Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.AdmissibleWordBasis
public import Formalism.SharpRestriction.GrowthBounds.GLWeightTheory
public import Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.BrCore
import Formalism.SharpRestriction.GrowthBounds.RootWeights.IrreducibleStableContainsEqTop
import Formalism.SharpRestriction.GrowthBounds.RootWeights.IntegralEnvelopingPreservesSubmodule
import Formalism.SharpRestriction.GrowthBounds.RootWeights.WeightEntriesBetweenExtremeHighest
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Formalism.SharpRestriction.GrowthBounds.ProjectionOfIsotypicDecomposition

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.ToralGalois, Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.AdmissibleLowerSetSpan, Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.ContragredientLatticeFGOfIrreducible, Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.DividedPowerReverseDividedPowerEqSelf, Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.HighestWeightSpaceEqSpanHighestWeightVector, Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.LatticeGeneratedLowestWeight, Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths.CanonicalTranslateJetIdentity, Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths, Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.SplittingThirdPartHolds, Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.ToralGalois =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.ToralGalois", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.StatementOfDegreeAndBound\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset

namespace Formalism.MainNotions.G.ColumnFamilies

open Formalism.MainNotions.G Formalism.MainNotions.CovariantDegrees

theorem weight_projector_mem_weight_space {n : ℕ} {K V : Type*} [Field K] [AddCommGroup V] [Module K V] (E : GLOps n K V)
    (htop : (⨆ mu : Fin n → ℤ, weightSp E mu) = ⊤) (mu : Fin n → ℤ) (e : Module.End K V) (he : IsWtProj E mu e)
    (x : V) : e x ∈ weightSp E mu := by
  have hx : x ∈ ⨆ mu : Fin n → ℤ, weightSp E mu := by rw [htop]; trivial
  refine Submodule.iSup_induction (fun nu => weightSp E nu) (motive := fun y => e y ∈ weightSp E mu) hx ?_ ?_ ?_
  · intro nu y hy
    by_cases h : nu = mu
    · subst h
      rw [he.1 y hy]
      exact hy
    · rw [he.2 nu h y hy]
      exact zero_mem _
  · rw [map_zero]
    exact zero_mem _
  · intro a b ha hb
    rw [map_add (f := _)]
    exact add_mem ha hb

theorem adm_eleven (D : Formalism.BasicNotions.D7) : GradedLatticeStable D := by
  intro p _ O _ _ _ _ _S n V _ _ _ _ E mu La hrep _hdom _hiso hlat hproj

  have hstab : ∀ u ∈ UZmon E, ∀ x ∈ La, u x ∈ La := by
    intro u hu
    induction hu using Submonoid.closure_induction with
    | mem u hu => exact hlat.1 u hu
    | one => exact fun x hx => hx
    | mul u v _ _ hu hv => exact fun x hx => hu _ (hv x hx)
  refine ⟨?_, ?_⟩
  · rw [Submodule.span_le]
    rintro x ⟨u, hu, y, hy, -, rfl⟩
    exact hstab u hu y hy
  · intro y hy u hu e he
    exact ⟨hproj _ (hstab u hu y hy) mu e he, weight_projector_mem_weight_space E hrep.2.2 mu e he _⟩

end Formalism.MainNotions.G.ColumnFamilies
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.ToralGalois =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.AdmissibleLowerSetSpan =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.AdmissibleLowerSetSpan", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.StatementOfDegreeAndBound\npublic import Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.LiePolarizationDerEqZeroOfDisjoint\npublic import Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.SaturatedLowerSetSpanOfLowerSetTypesSpan\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.MainNotions.G.ColumnFamilies

theorem admissible_lowerSet_span (D : Formalism.BasicNotions.D7) : Formalism.MainNotions.CovariantDegrees.SaturatedLowerSetSpan D := saturatedLowerSetSpan_of_lowerSetTypesSpan D (lower_set_types_span D)

end Formalism.MainNotions.G.ColumnFamilies
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.AdmissibleLowerSetSpan =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.ContragredientLatticeFGOfIrreducible =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.ContragredientLatticeFGOfIrreducible", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.ContragredientIrreducibleGeneratedByHighestWeigh\npublic import Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.DualWeightVectorApplyEqZeroOfNeNeg\npublic import Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.NablaDualLatticeOfIrreducibleLowestGenerated\nimport Formalism.SharpRestriction.GrowthBounds.RootWeights.DeltaIntegralEnvelopingStable\nimport Formalism.SharpRestriction.GrowthBounds.RootWeights.IrreducibleStableContainsEqTop\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.LinearAlgebra.Matrix.FiniteDimensional\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset

namespace Formalism.MainNotions.G.ColumnFamilies

open Formalism.MainNotions.G Formalism.MainNotions.CovariantDegrees Formalism.MainNotions.G.GLWeightTheory

theorem fg_of_integral_on_spanning_duals {O : Type*} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
    {V : Type*} [AddCommGroup V] [Module (KK O) V] [Module O V] [IsScalarTower O (KK O) V]
    [FiniteDimensional (KK O) V] (M : Submodule O V) (S : Set (Module.Dual (KK O) V))
    (hS : Submodule.span (KK O) S = ⊤) (hint : ∀ φ ∈ S, ∀ x ∈ M, Oval O (φ x)) : M.FG := by
  classical
  obtain ⟨b, hbS, hbspan, hbli⟩ := exists_linearIndependent (KK O) S
  have hfin : Finite b := hbli.finite

  let Φ : V →ₗ[KK O] (b → KK O) := LinearMap.pi fun φ => (φ : Module.Dual (KK O) V)
  have hΦ : Function.Injective Φ := by
    rw [← LinearMap.ker_eq_bot, LinearMap.ker_eq_bot']
    intro x hx
    rw [← Module.forall_dual_apply_eq_zero_iff (KK O) x]
    intro φ
    have hφ : φ ∈ Submodule.span (KK O) b := by rw [hbspan, hS]; exact Submodule.mem_top
    induction hφ using Submodule.span_induction with
    | mem ψ hψ => exact congrFun hx ⟨ψ, hψ⟩
    | zero => rfl
    | add a c _ _ ha hc => rw [LinearMap.add_apply, ha, hc, add_zero]
    | smul r a _ ha => rw [LinearMap.smul_apply, ha, smul_zero]
  let ΦO : V →ₗ[O] (b → KK O) := Φ.restrictScalars O
  have hΦO : Function.Injective ΦO := hΦ
  let L : Submodule O (b → KK O) := LinearMap.range ((Algebra.linearMap O (KK O)).compLeft b)
  have hL : L.FG := Submodule.fg_range _
  have hLN : IsNoetherian O L := isNoetherian_of_fg_of_noetherian L hL
  have hle : M.map ΦO ≤ L := by
    rintro _ ⟨x, hx, rfl⟩
    have h1 : ∀ φ : b, ∃ c : O, algebraMap O (KK O) c = (φ : Module.Dual (KK O) V) x :=
      fun φ => hint φ (hbS φ.2) x hx
    choose g hg using h1
    exact ⟨g, funext fun φ => hg φ⟩
  exact Submodule.fg_of_fg_map_injective ΦO hΦO (isNoetherian_submodule.1 hLN _ hle)

theorem contragredientLatticeFG_of_irreducible (hIrr : ContragredientIrreducibleGeneratedByHighestWeight) : DeltaFinitelyGenerated := by
  intro p _ O _ _ _ _ S n V _ _ _ _ E mu v v' hI hv' hnorm
  have hcz : CharZero (KK O) := charZero_of_injective_algebraMap (IsFractionRing.injective O (KK O))
  have hfd : FiniteDimensional (KK O) V := irreducible_highest_weight_findim hI
  have hI' := hIrr p O S n V E mu v v' hI hv'
  refine fg_of_integral_on_spanning_duals (Delta (O := O) E v) {φ | ∃ u ∈ Umon (dualOps E), φ = u v'} hI'.2.2.2 ?_
  rintro _ ⟨u, hu, rfl⟩ x hx
  refine integral_dual_preserved_by_integralMonoid E hI.1.2.2 (Delta (O := O) E v) (delta_integral_enveloping_stable E v) (rationalMonoid_le_integralMonoid _ hu) v' ?_ x hx
  intro y hy
  have : v' y ∈ v' '' (Delta (O := O) E v : Set V) := ⟨y, hy, rfl⟩
  rw [hnorm] at this
  exact this

end Formalism.MainNotions.G.ColumnFamilies
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.ContragredientLatticeFGOfIrreducible =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.DividedPowerReverseDividedPowerEqSelf =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.DividedPowerReverseDividedPowerEqSelf", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.ContragredientIrreducibleGeneratedByHighestWeigh\npublic import Formalism.SharpRestriction.GrowthBounds.RootWeights.DeltaIntegralEnvelopingStable\nimport Formalism.SharpRestriction.GrowthBounds.RootWeights.IntegralEnvelopingPreservesSubmodule\nimport Formalism.SharpRestriction.GrowthBounds.RootWeights.IrreducibleStableContainsEqTop\npublic import Formalism.SharpRestriction.GrowthBounds.RootWeights.RaiseLowerPowCommutatorOnWeight\nimport Formalism.SharpRestriction.GrowthBounds.RootWeights.WeightEntriesBetweenExtremeHighest\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset

namespace Formalism.MainNotions.G.ColumnFamilies

open Formalism.MainNotions.G Formalism.MainNotions.CovariantDegrees Formalism.MainNotions.G.GLWeightTheory

section ext

variable {n : ℕ} {O : Type*} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
  {V : Type*} [AddCommGroup V] [Module (KK O) V] [Module O V] [IsScalarTower O (KK O) V]

def reflectedWeight (mu : Fin n → ℤ) (t : ℕ) : Fin n → ℤ :=
  fun c => if c.val < t ∨ (Fin.rev c).val < t then mu (Fin.rev c) else mu c

theorem reflectedWeight_zero (mu : Fin n → ℤ) : reflectedWeight mu 0 = mu := by
  funext c
  simp [reflectedWeight]

theorem reflectedWeight_half_eq_lowestWeight (mu : Fin n → ℤ) : reflectedWeight mu (n / 2) = lowWt mu := by
  funext c
  unfold reflectedWeight lowWt
  split_ifs with h
  · rfl
  · have h1 := Fin.val_rev c
    have h2 := c.2
    have : Fin.rev c = c := by
      apply Fin.ext
      omega
    rw [this]

theorem commute_pow_apply_of_commute {A : Type*} [AddCommGroup A] [Module (KK O) A] (X Y : Module.End (KK O) A)
    (h : ∀ x, X (Y x) = Y (X x)) (k : ℕ) (x : A) : X ((Y ^ k) x) = (Y ^ k) (X x) := by
  induction k generalizing x with
  | zero => simp
  | succ k ih => rw [pow_succ, Module.End.mul_apply, Module.End.mul_apply, ih, h]

theorem dividedPower_zero_apply (E : GLOps n (KK O) V) (a b : Fin n) (x : V) : divPowE E a b 0 x = x := by
  simp [divPowE]

theorem dividedPower_eq_zero_of_annihilated (E : GLOps n (KK O) V) (a b : Fin n) {x : V} (h : E a b x = 0) {k : ℕ} (hk : 1 ≤ k) :
    divPowE E a b k x = 0 := by
  obtain ⟨j, rfl⟩ : ∃ j, k = j + 1 := ⟨k - 1, by omega⟩
  simp only [divPowE, LinearMap.smul_apply]
  rw [pow_succ, Module.End.mul_apply, h, map_zero, smul_zero]

theorem dividedPower_reverse_dividedPower_eq_self [CharZero (KK O)] {E : GLOps n (KK O) V} (hE : IsGLRep E) {a b : Fin n} (hab : a ≠ b)
    {nu : Fin n → ℤ} {y : V} (hy : y ∈ weightSp E nu) (h0 : E a b y = 0) (k : ℕ) (hk : nu a - nu b = (k : ℤ)) :
    divPowE E a b k (divPowE E b a k y) = y := by
  rw [raise_lower_dividedPower_binomial hE hab hy k k, Finset.sum_range_succ, Finset.sum_eq_zero, zero_add, if_pos le_rfl]
  · rw [Nat.sub_self, dividedPower_zero_apply, dividedPower_zero_apply]
    have : nu a - nu b + (k : ℤ) - (k : ℤ) = (k : ℤ) := by rw [hk]; ring
    rw [this]
    have h1 : Ring.choose (k : ℤ) k = 1 := by
      rw [Ring.choose_natCast, Nat.choose_self, Nat.cast_one]
    rw [h1, Int.cast_one, one_smul]
  · intro j hj
    have hj' : j < k := Finset.mem_range.1 hj
    rw [if_pos hj'.le, dividedPower_eq_zero_of_annihilated E a b h0 (by omega), map_zero, smul_zero]

theorem reflectedWeight_succ_eq_add_root {mu : Fin n → ℤ} {t : ℕ} (a : Fin n) (ha : a.val = t) (ht : 2 * (t + 1) ≤ n) (k : ℕ)
    (hk : mu a - mu (Fin.rev a) = (k : ℤ)) :
    reflectedWeight mu t + (k : ℤ) • rootW (Fin.rev a) a = reflectedWeight mu (t + 1) := by
  funext c
  have hr := Fin.val_rev c
  have hc := c.2
  have hra := Fin.val_rev a
  simp only [Pi.add_apply, Pi.smul_apply, rootW, Pi.sub_apply, Pi.single_apply, smul_eq_mul, reflectedWeight]
  by_cases h1 : c = a
  · subst h1
    have e1 : ¬ (c = Fin.rev c) := by
      intro h
      have := congrArg Fin.val h
      omega
    rw [if_neg e1, if_pos rfl, if_neg (by omega), if_pos (by omega)]
    linarith
  · by_cases h2 : c = Fin.rev a
    · subst h2
      rw [if_pos rfl, if_neg h1, Fin.rev_rev, if_neg (by rw [Fin.rev_rev] at hr; omega),
        if_pos (by rw [Fin.rev_rev] at hr; omega)]
      linarith
    · have h1' : c.val ≠ t := fun h => h1 (Fin.ext (h.trans ha.symm))
      have h2' : (Fin.rev c).val ≠ t := by
        intro h
        apply h2
        apply Fin.ext
        omega
      rw [if_neg h2, if_neg h1]
      have e : (c.val < t ∨ (Fin.rev c).val < t) ↔ (c.val < t + 1 ∨ (Fin.rev c).val < t + 1) := by omega
      simp only [e]
      ring

theorem exists_integral_reflected_weight_vector [CharZero (KK O)] {E : GLOps n (KK O) V} {mu : Fin n → ℤ} {v : V} (hI : IsIrrHW E mu v) (t : ℕ)
    (ht : 2 * t ≤ n) :
    ∃ y ∈ Delta (O := O) E v, y ∈ weightSp E (reflectedWeight mu t) ∧
      (∀ a : Fin n, t ≤ a.val → a < Fin.rev a → E a (Fin.rev a) y = 0) ∧ ∃ u ∈ UZmon E, u y = v := by
  induction t with
  | zero =>
    refine ⟨v, Submodule.subset_span ⟨1, Submonoid.one_mem _, rfl⟩, ?_, ?_, 1, Submonoid.one_mem _, rfl⟩
    · rw [reflectedWeight_zero]; exact hI.2.2.1.2.1
    · intro a _ h
      exact hI.2.2.1.2.2 a _ h
  | succ t ih =>
    obtain ⟨y, hyD, hyw, hyk, u, hu, huy⟩ := ih (by omega)
    have hE := hI.1
    let a : Fin n := ⟨t, by omega⟩
    have hra := Fin.val_rev a
    have hat : a.val = t := rfl
    have hlt : a < Fin.rev a := by
      rw [Fin.lt_def]; omega
    have hab : a ≠ Fin.rev a := ne_of_lt hlt
    have hdom : mu (Fin.rev a) ≤ mu a := hI.2.1 hlt.le
    obtain ⟨k, hk⟩ : ∃ k : ℕ, mu a - mu (Fin.rev a) = (k : ℤ) := ⟨(mu a - mu (Fin.rev a)).toNat, by omega⟩
    have hna : reflectedWeight mu t a = mu a := by
      unfold reflectedWeight
      rw [if_neg (by omega)]
    have hnb : reflectedWeight mu t (Fin.rev a) = mu (Fin.rev a) := by
      unfold reflectedWeight
      rw [if_neg (by rw [Fin.rev_rev]; omega)]
    refine ⟨divPowE E (Fin.rev a) a k y, ?_, ?_, ?_, u * divPowE E a (Fin.rev a) k, ?_, ?_⟩
    · exact delta_integral_enveloping_stable E v _ (Or.inl ⟨_, _, k, hab.symm, rfl⟩) y hyD
    · rw [← reflectedWeight_succ_eq_add_root a hat ht k hk]
      simp only [divPowE, LinearMap.smul_apply]
      exact Submodule.smul_mem _ _ (integral_operator_pow_shifts_weight hE hyw _ _ k)
    · intro c hc hcr
      simp only [divPowE, LinearMap.smul_apply, map_smul]
      have hrc := Fin.val_rev c
      have hcomm : ∀ x, E c (Fin.rev c) (E (Fin.rev a) a x) = E (Fin.rev a) a (E c (Fin.rev c) x) := by
        intro x
        rw [gl_rep_commutation_apply hE c (Fin.rev c) (Fin.rev a) a x, if_neg, if_neg, add_zero, sub_zero]
        · intro h
          have := congrArg Fin.val h
          omega
        · intro h
          have := congrArg Fin.val h
          omega
      rw [commute_pow_apply_of_commute _ _ hcomm, hyk c (by omega) hcr, map_zero, smul_zero]
    · exact Submonoid.mul_mem _ hu (Submonoid.subset_closure (Or.inl ⟨_, _, k, hab, rfl⟩))
    · rw [Module.End.mul_apply, dividedPower_reverse_dividedPower_eq_self hE hab hyw (hyk a le_rfl hlt) k (by rw [hna, hnb]; exact hk), huy]

end ext

theorem lowest_weight_extremal_vector : LowestWeightExtremalVector := by
  intro p _ O _ _ _ _ _S n V _ _ _ _ E mu v hI
  have : CharZero (KK O) := charZero_of_injective_algebraMap (IsFractionRing.injective O (KK O))
  obtain ⟨y, hyD, hyw, _, u, hu, huy⟩ := exists_integral_reflected_weight_vector (O := O) hI (n / 2) (by omega)
  rw [reflectedWeight_half_eq_lowestWeight] at hyw
  exact ⟨y, hyD, hyw, u, hu, huy⟩

theorem deltaGenerated_of_extremalVector_of_dualInjective (hExt : LowestWeightExtremalVector) (hLow : DualFunctionalInjectiveOnLowestWeightSpace) : DeltaGeneratedByLowestWeightVector := by
  intro p _ O _ _ _ _ S n V _ _ _ _ E mu v v' hI hv' hnorm
  have : CharZero (KK O) := charZero_of_injective_algebraMap (IsFractionRing.injective O (KK O))
  obtain ⟨hL1, hL2⟩ := hLow p O S n V E mu v v' hI hv'
  obtain ⟨w, hwD, hww, u, hu, huw⟩ := hExt p O S n V E mu v hI
  have hst := delta_integral_enveloping_stable (O := O) E v
  have h1 : (1 : KK O) ∈ v' '' (Delta (O := O) E v : Set V) := by
    rw [hnorm]; exact ⟨1, map_one _⟩
  obtain ⟨y, hyD, hy1⟩ := h1
  obtain ⟨y0, F, f, hlF, hy0, hf, he⟩ := weight_component_decomposition E hI.1.2.2 (lowWt mu) y
  have hy0D : y0 ∈ Delta (O := O) E v := lattice_weight_components_mem E _ hst (lowWt mu) F hlF y0 f hy0 hf (he ▸ hyD)
  have hv0 : v' y0 = 1 := by

    rw [he, map_add (f := _), map_sum, Finset.sum_eq_zero, add_zero] at hy1
    · exact hy1
    · intro nu hnu
      exact hL2 nu (fun e => hlF (e ▸ hnu)) (f nu) (hf nu hnu)
  have hwc : v' w ∈ Set.range (algebraMap O (KK O)) := by
    rw [← hnorm]; exact ⟨w, hwD, rfl⟩
  obtain ⟨c, hc⟩ := hwc
  have hw : w = c • y0 := by
    have h0 : w - (v' w) • y0 = 0 := by
      apply hL1 _ (Submodule.sub_mem _ hww (Submodule.smul_mem _ _ hy0))
      rw [map_sub, map_smul, hv0, smul_eq_mul, mul_one, sub_self]
    rw [← algebraMap_smul (KK O) c y0, hc]
    exact sub_eq_zero.1 h0
  refine ⟨y0, hy0D, hy0, hv0, le_antisymm ?_ ?_⟩
  · refine Submodule.span_le.2 ?_
    rintro x ⟨u', hu', rfl⟩
    have : u' v = c • (u' * u) y0 := by
      rw [← huw, hw, ← algebraMap_smul (KK O) c y0, map_smul, map_smul, algebraMap_smul, Module.End.mul_apply]
    rw [SetLike.mem_coe, this]
    exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨u' * u, Submonoid.mul_mem _ hu' hu, rfl⟩)
  · refine Submodule.span_le.2 ?_
    rintro x ⟨u', hu', rfl⟩
    exact integral_enveloping_preserves_submodule hst hu' y0 hy0D

theorem integral_lattice_bidual : LatticeBiduality := by
  classical
  intro O _ _ _ V _ _ _ _ M hfg hspan
  have hinj : Function.Injective (algebraMap O (KK O)) := IsFractionRing.injective O (KK O)
  ext x
  constructor
  · intro hx φ hφ
    exact hφ x hx
  · intro hx
    have : Module.Finite O M := Module.Finite.iff_fg.2 hfg
    have htf : Module.IsTorsionFree O V := by
      refine Module.IsTorsionFree.of_smul_eq_zero fun c y h => ?_
      rw [← algebraMap_smul (KK O) c y, smul_eq_zero] at h
      rcases h with h | h
      · exact Or.inl (hinj (by rw [h, map_zero]))
      · exact Or.inr h
    have htfM : Module.IsTorsionFree O M :=
      Function.Injective.moduleIsTorsionFree (M.subtype) (Submodule.injective_subtype M) (fun _ _ => rfl)
    obtain ⟨d, b⟩ := Module.basisOfFiniteTypeTorsionFree' (R := O) (M := M)
    set bV : Fin d → V := fun i => (b i : V) with hbV
    have hMspan : Submodule.span O (Set.range bV) = M := by
      have h1 : Set.range bV = M.subtype '' Set.range b := by
        rw [← Set.range_comp]; rfl
      rw [h1, ← Submodule.map_span, b.span_eq, Submodule.map_top, Submodule.range_subtype]
    have hLIO : LinearIndependent O bV :=
      b.linearIndependent.map' M.subtype (Submodule.ker_subtype M)
    have hLIK : LinearIndependent (KK O) bV := (LinearIndependent.iff_fractionRing O (KK O)).1 hLIO
    have hsp : ⊤ ≤ Submodule.span (KK O) (Set.range bV) := by
      rw [← hspan]
      refine Submodule.span_le.2 ?_
      intro y hy
      rw [SetLike.mem_coe, ← hMspan] at hy
      exact Submodule.span_le_restrictScalars O (KK O) _ hy
    let Bs : Module.Basis (Fin d) (KK O) V := Module.Basis.mk hLIK hsp
    have hBs : ∀ i, Bs i = bV i := fun i => Module.Basis.mk_apply hLIK hsp i
    have hcoord : ∀ i, ∀ y ∈ M, Bs.coord i y ∈ Set.range (algebraMap O (KK O)) := by
      intro i y hy
      rw [← hMspan] at hy
      induction hy using Submodule.span_induction with
      | mem z hz =>
        obtain ⟨j, rfl⟩ := hz
        rw [← hBs j, Module.Basis.coord_apply, Module.Basis.repr_self, Finsupp.single_apply]
        split_ifs
        · exact ⟨1, map_one _⟩
        · exact ⟨0, map_zero _⟩
      | zero => exact ⟨0, by rw [map_zero, map_zero]⟩
      | add y z _ _ hy hz =>
        obtain ⟨a, ha⟩ := hy
        obtain ⟨c, hc⟩ := hz
        exact ⟨a + c, by rw [map_add (f := _), map_add (f := _), ha, hc]⟩
      | smul a y _ hy =>
        obtain ⟨c, hc⟩ := hy
        exact ⟨a * c, by rw [← algebraMap_smul (KK O) a y, map_smul, map_mul, hc, smul_eq_mul]⟩
    have hxs : x = ∑ i, Bs.coord i x • Bs i := (Bs.sum_repr x).symm
    rw [SetLike.mem_coe, hxs]
    refine Submodule.sum_mem _ fun i _ => ?_
    obtain ⟨c, hc⟩ := hx (Bs.coord i) (hcoord i)
    rw [← hc, algebraMap_smul, hBs]
    exact Submodule.smul_mem _ _ (b i).2

end Formalism.MainNotions.G.ColumnFamilies
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.DividedPowerReverseDividedPowerEqSelf =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.HighestWeightSpaceEqSpanHighestWeightVector =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.HighestWeightSpaceEqSpanHighestWeightVector", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.ContragredientIrreducibleGeneratedByHighestWeigh\npublic import Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.DualWeightVectorApplyEqZeroOfNeNeg\nimport Formalism.SharpRestriction.GrowthBounds.RootWeights.IntegralEnvelopingPreservesSubmodule\nimport Formalism.SharpRestriction.GrowthBounds.RootWeights.IrreducibleStableContainsEqTop\npublic import Formalism.SharpRestriction.GrowthBounds.RootWeights.WeightConditionFromIntegralForm\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.LinearAlgebra.Matrix.FiniteDimensional\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.SharpRestriction.GrowthBounds.ProjectionOfIsotypicDecomposition\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset

namespace Formalism.MainNotions.G.ColumnFamilies

open Formalism.MainNotions.G Formalism.MainNotions.CovariantDegrees Formalism.MainNotions.G.GLWeightTheory Formalism.MainNotions.G.Joints

section field

variable {n : ℕ} {K V : Type*} [Field K] [AddCommGroup V] [Module K V]

theorem dualOperators_commutator_relation (E : GLOps n K V)
    (hR : ∀ a b c d, E a b * E c d - E c d * E a b = (if b = c then E a d else 0) - (if d = a then E c b else 0))
    (a b c d : Fin n) :
    dualOps E a b * dualOps E c d - dualOps E c d * dualOps E a b =
      (if b = c then dualOps E a d else 0) - (if d = a then dualOps E c b else 0) := by
  have hm : ∀ f g : Module.End K V, f.dualMap * g.dualMap = (g * f).dualMap :=
    fun f g => LinearMap.ext fun φ => LinearMap.ext fun x => rfl
  have hs : ∀ f g : Module.End K V, (f - g).dualMap = f.dualMap - g.dualMap :=
    fun f g => LinearMap.ext fun φ => LinearMap.ext fun x => by simp [LinearMap.dualMap_apply]
  have hn : ∀ f : Module.End K V, (-f).dualMap = -f.dualMap :=
    fun f => LinearMap.ext fun φ => LinearMap.ext fun x => by simp [LinearMap.dualMap_apply]
  have h0 : (0 : Module.End K V).dualMap = 0 :=
    LinearMap.ext fun φ => LinearMap.ext fun x => by simp [LinearMap.dualMap_apply]
  simp only [Formalism.MainNotions.CovariantDegrees.dualOps, neg_mul_neg, hm]
  rw [← hs, show E c d * E a b - E a b * E c d = -(E a b * E c d - E c d * E a b) from (neg_sub _ _).symm,
    hR a b c d]
  split_ifs <;> simp only [hn, hs, h0] <;> abel

theorem dualOperators_iSup_weightSpace_eq_top [CharZero K] [FiniteDimensional K V] (E : GLOps n K V)
    (hE : (⨆ nu : Fin n → ℤ, weightSp E nu) = ⊤) : (⨆ nu : Fin n → ℤ, weightSp (dualOps E) nu) = ⊤ := by
  classical
  have hspan : Submodule.span K (⋃ ν : Fin n → ℤ, (weightSp E ν : Set V)) = ⊤ := by
    rw [Submodule.span_iUnion]
    simpa only [Submodule.span_eq] using hE
  obtain ⟨b, hbs, hbspan, hbli⟩ := exists_linearIndependent K (⋃ ν : Fin n → ℤ, (weightSp E ν : Set V))
  have hbtop : ⊤ ≤ Submodule.span K (Set.range ((↑) : b → V)) := by
    rw [Subtype.range_coe, hbspan, hspan]
  let B : Module.Basis b K V := Module.Basis.mk hbli hbtop
  haveI : Finite b := Module.Finite.finite_basis B
  have hwt : ∀ (x : V) (ν : Fin n → ℤ), x ∈ weightSp E ν → ∀ a, E a a x = ((ν a : ℤ) : K) • x := by
    intro x ν hx a
    unfold Formalism.MainNotions.G.weightSp at hx
    have hx' := (Submodule.mem_iInf _).1 hx a
    rw [LinearMap.mem_ker, LinearMap.sub_apply, sub_eq_zero] at hx'
    simpa using hx'
  rw [eq_top_iff, ← B.dualBasis.span_eq, Submodule.span_le]
  rintro _ ⟨i, rfl⟩
  obtain ⟨ν, hν⟩ := Set.mem_iUnion.1 (hbs i.2)
  refine Submodule.mem_iSup_of_mem (-ν) ?_
  unfold Formalism.MainNotions.G.weightSp
  refine (Submodule.mem_iInf _).2 fun a => ?_
  rw [LinearMap.mem_ker]
  refine B.ext fun j => ?_
  obtain ⟨ν', hν'⟩ := Set.mem_iUnion.1 (hbs j.2)
  have hBj : (B j : V) = j := Module.Basis.mk_apply hbli hbtop j
  have hj : (B j : V) ∈ weightSp E ν' := by rw [hBj]; exact hν'
  simp only [LinearMap.sub_apply, LinearMap.smul_apply, Module.End.one_apply, Formalism.MainNotions.CovariantDegrees.dualOps,
    LinearMap.neg_apply, LinearMap.dualMap_apply, LinearMap.zero_apply]
  rw [hwt _ _ hj a, map_smul, B.dualBasis_apply_self]
  by_cases hij : j = i
  · have h1 : E a a (B j) = ((ν' a : ℤ) : K) • B j := hwt _ _ hj a
    have h2 : E a a (B j) = ((ν a : ℤ) : K) • B j := hwt _ _ (by rw [hBj, hij]; exact hν) a
    have hK : ((ν' a : ℤ) : K) = ν a := smul_left_injective K (B.ne_zero j) (h1.symm.trans h2)
    rw [if_pos hij, hK]
    simp
  · rw [if_neg hij]
    simp

theorem dualOperators_isGLRep [CharZero K] [FiniteDimensional K V] (E : GLOps n K V) (hE : IsGLRep E) : IsGLRep (dualOps E) := ⟨dualOperators_commutator_relation E hE.1, fun _ => ⟨⊤, inferInstance, Submodule.mem_top, fun _ _ _ _ => Submodule.mem_top⟩,
    dualOperators_iSup_weightSpace_eq_top E hE.2.2⟩

theorem dominant_dualWeight {mu : Fin n → ℤ} (h : Dominant mu) : Dominant (dualWt mu) := by
  have h' : Antitone mu := h
  intro a b hab
  show -mu (Fin.rev b) ≤ -mu (Fin.rev a)
  exact neg_le_neg (h' (Fin.rev_le_rev.2 hab))

end field

section lattice

variable {n : ℕ} {O : Type*} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
  {V : Type*} [AddCommGroup V] [Module (KK O) V] [Module O V] [IsScalarTower O (KK O) V]

theorem highestWeightSpace_eq_span_highestWeightVector [CharZero (KK O)] {E : GLOps n (KK O) V} {lam : Fin n → ℤ} {v : V} (hI : IsIrrHW E lam v) {x : V}
    (hx : x ∈ weightSp E lam) : ∃ c : KK O, x = c • v := by
  obtain ⟨hR, -, ⟨hv0, hvl, hraise⟩, hspan⟩ := hI
  have rel := hR.1
  have hwt : ∀ (ν : Fin n → ℤ) (y : V), y ∈ weightSp E ν ↔ ∀ a, E a a y = ((ν a : ℤ) : KK O) • y := by
    intro ν y
    unfold Formalism.MainNotions.G.weightSp
    simp only [Submodule.mem_iInf, LinearMap.mem_ker, LinearMap.sub_apply, LinearMap.smul_apply,
      Module.End.one_apply, sub_eq_zero]
  have hshift : ∀ (a b : Fin n) (ν : Fin n → ℤ) (y : V), y ∈ weightSp E ν →
      E a b y ∈ weightSp E (ν + Pi.single a 1 - Pi.single b 1) := by
    intro a b ν y hy
    rw [hwt] at hy ⊢
    intro c
    have h := congrArg (fun T : Module.End (KK O) V => T y) (rel c c a b)
    simp only [LinearMap.sub_apply, Module.End.mul_apply, hy c, map_smul] at h
    rw [sub_eq_iff_eq_add] at h
    rw [h]
    rcases eq_or_ne c a with rfl | hca <;> rcases eq_or_ne b c with rfl | hbc
    · simp
    · simp only [if_true, if_neg hbc, LinearMap.zero_apply, sub_zero, Pi.add_apply,
        Pi.sub_apply, Pi.single_eq_same, Pi.single_eq_of_ne hbc.symm, Int.cast_add, Int.cast_one, add_smul,
        one_smul]
      abel
    · simp only [if_true, if_neg hca, LinearMap.zero_apply, zero_sub, Pi.add_apply,
        Pi.sub_apply, Pi.single_eq_same, Pi.single_eq_of_ne hca, add_zero, Int.cast_sub, Int.cast_one, sub_smul,
        one_smul]
      abel
    · simp [hca, hbc, hbc.symm]
  let L : Submonoid (Module.End (KK O) V) := Submonoid.closure {T | ∃ a b, b < a ∧ T = E a b}
  let U : Submodule (KK O) V := Submodule.span (KK O) {y | ∃ u ∈ L, y = u v}
  have hLU : ∀ u ∈ L, ∀ y ∈ U, u y ∈ U := by
    intro u hu y hy
    induction hy using Submodule.span_induction with
    | mem z hz =>
      obtain ⟨w, hw, rfl⟩ := hz
      exact Submodule.subset_span ⟨u * w, L.mul_mem hu hw, rfl⟩
    | zero => simp
    | add y z _ _ hy hz =>
      rw [map_add (f := _)]
      exact U.add_mem hy hz
    | smul c y _ hy =>
      rw [map_smul]
      exact U.smul_mem c hy
  have hv : v ∈ U := Submodule.subset_span ⟨1, L.one_mem, rfl⟩
  have base : ∀ c d, E c d v ∈ U := by
    intro c d
    rcases lt_trichotomy c d with h | rfl | h
    · rw [hraise c d h]
      exact U.zero_mem
    · rw [(hwt lam v).1 hvl c]
      exact U.smul_mem _ hv
    · exact Submodule.subset_span ⟨E c d, Submonoid.subset_closure ⟨c, d, h, rfl⟩, rfl⟩
  have key : ∀ u ∈ L, ∀ c d, E c d (u v) ∈ U := by
    intro u hu
    induction hu using Submonoid.closure_induction_left with
    | one =>
      intro c d
      exact base c d
    | mul_left x hx y hy ih =>
      intro c d
      obtain ⟨a, b, hab, rfl⟩ := hx
      rw [Module.End.mul_apply]
      have h := congrArg (fun T : Module.End (KK O) V => T (y v)) (rel c d a b)
      simp only [LinearMap.sub_apply, Module.End.mul_apply] at h
      rw [sub_eq_iff_eq_add] at h
      rw [h]
      refine U.add_mem (U.sub_mem ?_ ?_) (hLU _ (Submonoid.subset_closure ⟨a, b, hab, rfl⟩) _ (ih c d))
      · split_ifs
        · exact ih c b
        · simp
      · split_ifs
        · exact ih a d
        · simp
  have hEU : ∀ c d, ∀ y ∈ U, E c d y ∈ U := by
    intro c d y hy
    induction hy using Submodule.span_induction with
    | mem z hz =>
      obtain ⟨u, hu, rfl⟩ := hz
      exact key u hu c d
    | zero => simp
    | add y z _ _ hy hz =>
      rw [map_add (f := _)]
      exact U.add_mem hy hz
    | smul t y _ hy =>
      rw [map_smul]
      exact U.smul_mem t hy
  have hUtop : U = ⊤ := by
    rw [eq_top_iff, ← hspan]
    refine Submodule.span_le.2 ?_
    rintro _ ⟨u, hu, rfl⟩
    induction hu using Submonoid.closure_induction_left with
    | one => exact hv
    | mul_left x hx y _ ih =>
      obtain ⟨⟨a, b⟩, rfl⟩ := hx
      rw [Module.End.mul_apply]
      exact hEU a b _ ih
  have hLw : ∀ u ∈ L, (∃ t : KK O, u v = t • v) ∨ ∃ ν : Fin n → ℤ,
      ∑ c : Fin n, ((c : ℕ) : ℤ) * lam c < ∑ c : Fin n, ((c : ℕ) : ℤ) * ν c ∧ u v ∈ weightSp E ν := by
    intro u hu
    induction hu using Submonoid.closure_induction_left with
    | one => exact Or.inl ⟨1, by simp⟩
    | mul_left x hx y _ ih =>
      obtain ⟨a, b, hab, rfl⟩ := hx
      rw [Module.End.mul_apply]
      right
      have hsum : ∀ ν : Fin n → ℤ, ∑ c : Fin n, ((c : ℕ) : ℤ) * (ν + Pi.single a 1 - Pi.single b 1 : Fin n → ℤ) c =
          ∑ c : Fin n, ((c : ℕ) : ℤ) * ν c + ((a : ℕ) : ℤ) - ((b : ℕ) : ℤ) := by
        intro ν
        simp only [Pi.add_apply, Pi.sub_apply, mul_sub, mul_add, Finset.sum_add_distrib,
          Finset.sum_sub_distrib, Pi.single_apply, mul_ite, mul_one, mul_zero, Finset.sum_ite_eq',
          Finset.mem_univ, if_true]
      have hpos : ((b : ℕ) : ℤ) < ((a : ℕ) : ℤ) := by
        have := Fin.lt_def.1 hab
        omega
      rcases ih with ⟨t, ht⟩ | ⟨ν, hν, hyν⟩
      · refine ⟨lam + Pi.single a 1 - Pi.single b 1, ?_, ?_⟩
        · rw [hsum]
          linarith
        · rw [ht, map_smul]
          exact Submodule.smul_mem _ _ (hshift a b lam v hvl)
      · refine ⟨ν + Pi.single a 1 - Pi.single b 1, ?_, hshift a b ν _ hyν⟩
        rw [hsum]
        linarith
  obtain ⟨H, hHdef⟩ : ∃ H : Module.End (KK O) V, H = ∑ c : Fin n, ((c : ℕ) : KK O) • E c c := ⟨_, rfl⟩
  have hH : ∀ (ν : Fin n → ℤ) (y : V), y ∈ weightSp E ν →
      H y = ((∑ c : Fin n, ((c : ℕ) : ℤ) * ν c : ℤ) : KK O) • y := by
    intro ν y hy
    rw [hwt] at hy
    rw [hHdef, LinearMap.sum_apply]
    simp only [LinearMap.smul_apply, hy, smul_smul]
    rw [← Finset.sum_smul]
    congr 1
    norm_cast
  obtain ⟨μ0, hμ0⟩ : ∃ μ0 : KK O, μ0 = ((∑ c : Fin n, ((c : ℕ) : ℤ) * lam c : ℤ) : KK O) := ⟨_, rfl⟩
  have hUle : U ≤ Submodule.span (KK O) {v} ⊔ ⨆ (j : KK O) (_ : j ≠ μ0), H.eigenspace j := by
    refine Submodule.span_le.2 ?_
    rintro _ ⟨u, hu, rfl⟩
    rcases hLw u hu with ⟨t, ht⟩ | ⟨ν, hν, hyν⟩
    · rw [ht]
      exact Submodule.mem_sup_left (Submodule.smul_mem _ _ (Submodule.mem_span_singleton_self v))
    · apply Submodule.mem_sup_right
      have hne : ((∑ c : Fin n, ((c : ℕ) : ℤ) * ν c : ℤ) : KK O) ≠ μ0 := by
        intro heq
        rw [hμ0] at heq
        have := Int.cast_injective heq
        linarith
      exact Submodule.mem_iSup_of_mem _ (Submodule.mem_iSup_of_mem hne
        ((Module.End.mem_eigenspace_iff).2 (hH ν _ hyν)))
  have hx' : x ∈ Submodule.span (KK O) {v} ⊔ ⨆ (j : KK O) (_ : j ≠ μ0), H.eigenspace j :=
    hUle (hUtop ▸ Submodule.mem_top)
  obtain ⟨y, hy, w, hw, hyw⟩ := Submodule.mem_sup.1 hx'
  obtain ⟨c, rfl⟩ := Submodule.mem_span_singleton.1 hy
  refine ⟨c, ?_⟩
  have hw' : w = x - c • v := by
    rw [← hyw]
    abel
  have hin1 : w ∈ H.eigenspace μ0 := by
    rw [hw', Module.End.mem_eigenspace_iff, map_sub, map_smul, hH lam x hx, hH lam v hvl, ← hμ0, smul_sub, smul_comm c μ0 v]
  have h0 : w = 0 := (Submodule.disjoint_def.1 ((Module.End.eigenspaces_iSupIndep H) μ0)) w hin1 hw
  rw [h0] at hw'
  exact (sub_eq_zero.1 hw'.symm)

end lattice

section gen

variable {n : ℕ} {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
  {V : Type} [AddCommGroup V] [Module (KK O) V] [Module O V] [IsScalarTower O (KK O) V]

theorem contragredient_span_highestWeight_eq_top (D : Formalism.BasicNotions.D7) [CharZero (KK O)] {E : GLOps n (KK O) V} {mu : Fin n → ℤ} {v : V}
    {v' : Module.Dual (KK O) V} (hI : IsIrrHW E mu v) (hv0 : v' ≠ 0) :
    Submodule.span (KK O) {x | ∃ u ∈ Umon (dualOps E), x = u v'} = ⊤ := by
  have hfd : FiniteDimensional (KK O) V := irreducible_highest_weight_findim hI
  set G' : Submodule (KK O) (Module.Dual (KK O) V) :=
    Submodule.span (KK O) {x | ∃ u ∈ Umon (dualOps E), x = u v'} with hG'
  have hG'st : ∀ a b, ∀ φ ∈ G', dualOps E a b φ ∈ G' := by
    intro a b φ hφ
    induction hφ using Submodule.span_induction with
    | mem y hy =>
      obtain ⟨u, hu, rfl⟩ := hy
      exact Submodule.subset_span ⟨dualOps E a b * u,
        Submonoid.mul_mem _ (Submonoid.subset_closure ⟨(a, b), rfl⟩) hu, rfl⟩
    | zero => rw [map_zero]; exact Submodule.zero_mem _
    | add x y _ _ hx hy => rw [map_add (f := _)]; exact Submodule.add_mem _ hx hy
    | smul c x _ hx => rw [map_smul]; exact Submodule.smul_mem _ _ hx
  have hv'G : v' ∈ G' := Submodule.subset_span ⟨1, Submonoid.one_mem _, rfl⟩
  set Z : Submodule (KK O) V := G'.dualCoannihilator with hZ
  have hZst : ∀ a b, ∀ x ∈ Z, E a b x ∈ Z := by
    intro a b x hx
    rw [hZ, Submodule.mem_dualCoannihilator] at hx ⊢
    intro φ hφ
    have := hx _ (hG'st a b φ hφ)
    rw [dualOperators_apply, neg_eq_zero] at this
    exact this
  obtain ⟨Z', hc, hZ'st⟩ := cr_compl E hI.1.1 hI.1.2.2 Z hZst
  have hvtop : v ∈ Z ⊔ Z' := hc.sup_eq_top ▸ Submodule.mem_top
  obtain ⟨z, hz, z', hz', hsum⟩ := Submodule.mem_sup.1 hvtop
  have hzw : z ∈ weightSp E mu := by
    rw [mem_weightSpace_iff_diag_scalar]
    intro a
    have h1 : E a a z - (mu a : KK O) • z ∈ Z := Submodule.sub_mem _ (hZst a a z hz) (Submodule.smul_mem _ _ hz)
    have h2 : E a a z' - (mu a : KK O) • z' ∈ Z' :=
      Submodule.sub_mem _ (hZ'st a a z' hz') (Submodule.smul_mem _ _ hz')
    have h3 : (E a a z - (mu a : KK O) • z) + (E a a z' - (mu a : KK O) • z') = 0 := by
      have := mem_weightSpace_iff_diag_scalar.1 hI.2.2.1.2.1 a
      rw [← hsum, map_add (f := _), smul_add] at this
      rw [← sub_eq_zero] at this
      rw [← this]
      abel
    have h4 : E a a z - (mu a : KK O) • z = -(E a a z' - (mu a : KK O) • z') := eq_neg_of_add_eq_zero_left h3
    have h5 : E a a z - (mu a : KK O) • z ∈ Z ⊓ Z' := ⟨h1, h4 ▸ Submodule.neg_mem _ h2⟩
    rw [hc.inf_eq_bot, Submodule.mem_bot] at h5
    exact sub_eq_zero.1 h5
  obtain ⟨c, hcz⟩ := highestWeightSpace_eq_span_highestWeightVector hI hzw
  have hZbot : Z = ⊥ := by
    by_cases hc0 : c = 0
    · have hvZ' : v ∈ Z' := by
        rw [← hsum, hcz, hc0, zero_smul, zero_add]
        exact hz'
      have htop := irreducible_stable_contains_eq_top hI hZ'st hvZ'
      have := hc.inf_eq_bot
      rwa [htop, inf_top_eq] at this
    · exfalso
      have hvZ : v ∈ Z := by
        have : v = c⁻¹ • z := by rw [hcz, smul_smul, inv_mul_cancel₀ hc0, one_smul]
        rw [this]
        exact Submodule.smul_mem _ _ hz
      have htop := irreducible_stable_contains_eq_top hI hZst hvZ
      apply hv0
      ext x
      have hx : x ∈ Z := htop ▸ Submodule.mem_top
      rw [hZ, Submodule.mem_dualCoannihilator] at hx
      exact hx v' hv'G
  have h6 := Subspace.dualCoannihilator_dualAnnihilator_eq (W := G')
  rw [← hZ, hZbot, Submodule.dualAnnihilator_bot] at h6
  exact h6.symm

end gen

theorem contragredientIrreducible_generated (D : Formalism.BasicNotions.D7) : ContragredientIrreducibleGeneratedByHighestWeight := by
  unfold Formalism.MainNotions.G.ColumnFamilies.ContragredientIrreducibleGeneratedByHighestWeight
  intro p _ O _ _ _ _ S n V _ _ _ _ E mu v v' hI hH
  haveI : CharZero (KK O) := charZero_of_injective_algebraMap (IsFractionRing.injective O (KK O))
  obtain ⟨W, hWf, hvW, hWs⟩ := hI.1.2.1 v
  haveI : FiniteDimensional (KK O) V := by
    have hle : (⊤ : Submodule (KK O) V) ≤ W := by
      rw [← hI.2.2.2, Submodule.span_le]
      rintro _ ⟨u, hu, rfl⟩
      induction hu using Submonoid.closure_induction_left with
      | one => exact hvW
      | mul_left x hx y _ ih =>
        obtain ⟨⟨a, b⟩, rfl⟩ := hx
        exact hWs a b _ ih
    have hWt : W = ⊤ := top_le_iff.1 hle
    subst hWt
    exact Module.Finite.equiv (LinearEquiv.ofTop (⊤ : Submodule (KK O) V) rfl)
  exact ⟨dualOperators_isGLRep E hI.1, dominant_dualWeight hI.2.1, hH, contragredient_span_highestWeight_eq_top D hI hH.1⟩

theorem dualFunctional_lowestWeight_injective (D : Formalism.BasicNotions.D7) : DualFunctionalInjectiveOnLowestWeightSpace := by
  intro p _ O _ _ _ _ S n V _ _ _ _ E mu v v' hI hv'
  have hcz : CharZero (KK O) := charZero_of_injective_algebraMap (IsFractionRing.injective O (KK O))
  have hI' := contragredientIrreducible_generated D p O S n V E mu v v' hI hv'
  have hdw : dualWt mu = -lowWt mu := rfl
  constructor
  · intro x hx hvx
    rw [← Module.forall_dual_apply_eq_zero_iff (KK O) x]
    intro φ
    have hφ : φ ∈ ⨆ nu : Fin n → ℤ, weightSp (dualOps E) nu := hI'.1.2.2 ▸ Submodule.mem_top
    induction hφ using Submodule.iSup_induction' with
    | mem nu ψ hψ =>
      by_cases hnu : nu = dualWt mu
      · subst hnu
        obtain ⟨c, rfl⟩ := highestWeightSpace_eq_span_highestWeightVector hI' hψ
        rw [LinearMap.smul_apply, hvx, smul_zero]
      · exact dual_weightVector_apply_eq_zero_of_ne_neg E hψ hx (fun h => hnu (h.trans hdw.symm))
    | zero => rfl
    | add a b _ _ ha hb => rw [LinearMap.add_apply, ha, hb, add_zero]
  · intro nu hnu x hx
    refine dual_weightVector_apply_eq_zero_of_ne_neg E hv'.2.1 hx (fun h => hnu ?_)
    have : -lowWt mu = -nu := hdw.symm.trans h
    exact (neg_injective this).symm

end Formalism.MainNotions.G.ColumnFamilies
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.HighestWeightSpaceEqSpanHighestWeightVector =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.LatticeGeneratedLowestWeight =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.LatticeGeneratedLowestWeight", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.ContragredientIrreducibleGeneratedByHighestWeigh\npublic import Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.ContragredientLatticeFGOfIrreducible\npublic import Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.DividedPowerReverseDividedPowerEqSelf\npublic import Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.HighestWeightSpaceEqSpanHighestWeightVector\nimport Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.NablaDualLatticeOfIrreducibleLowestGenerated\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.MainNotions.G.ColumnFamilies

theorem lattice_generated_lowest_weight (D : Formalism.BasicNotions.D7) : DeltaGeneratedByLowestWeightVector := deltaGenerated_of_extremalVector_of_dualInjective lowest_weight_extremal_vector (dualFunctional_lowestWeight_injective D)

theorem lattice_nabla_eq (D : Formalism.BasicNotions.D7) : NablaContragredientEqDualLatticeDelta := nablaDualLattice_of_irreducible_lowest_generated (contragredientIrreducible_generated D) (dualFunctional_lowestWeight_injective D) (lattice_generated_lowest_weight D)

theorem admissible_lattice_biduality (D : Formalism.BasicNotions.D7) : Formalism.MainNotions.CovariantDegrees.WeylDualityLattice D :=
  weylDualityLattice_of_nabla_fg_bidual D (lattice_nabla_eq D) (contragredientLatticeFG_of_irreducible (contragredientIrreducible_generated D)) integral_lattice_bidual

end Formalism.MainNotions.G.ColumnFamilies
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.LatticeGeneratedLowestWeight =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths.CanonicalTranslateJetIdentity =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths.CanonicalTranslateJetIdentity", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.StatementOfDegreeAndBound\npublic import Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths.LatticeCountingFormula\npublic import Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths.LiftedColumnCongruence\npublic import Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths.LiftedColumnMultidegree\npublic import Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths.WedgeSplitTan\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths.ColOKOfPath\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset Formalism.MainNotions.G Formalism.MainNotions.CovariantDegrees

namespace Formalism.MainNotions.LemmaBAlt

theorem canonical_translate_jet_identity (D : Formalism.BasicNotions.D7) : CanonicalTranslateJetIdentity D := by
  intro p f _ O _ _ _ _ S hp5 hf hsq N r K _ _ _ LL B z hK hmono hz P g hg c hpos J
  have H : ColOK LL P.mu c := colOK_of_path LL B hK P c
  refine ⟨column_kernel_components_integral p f LL g hg z P.mu c J, fun m hm i hi => lifted_column_multidegree p f LL g z P.mu c hmono hz J m hm i hi,
    fun g' hg' => lifted_column_order p f (frobCong p f hf) S hsq LL g g' hg hg' z P.mu c H hmono hz hpos J, ?_,
    column_order_le_two_power p (by omega) LL.pos z hmono hz P.mu c hpos⟩
  exact lifted_column_congruence p f S LL g hg z P.mu c hmono hz hpos (SgVanish_of LL P.mu c H)
    (fun J => plTanCol_eq_SgW O LL P.mu c H P.dom J) J

end Formalism.MainNotions.LemmaBAlt
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths.CanonicalTranslateJetIdentity =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.StatementOfDegreeAndBound\npublic import Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths.DividedPowerZeroOfGlActionZero\npublic import Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths.ComponentsInFiltrationContractionSingle\npublic import Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths.AntitoneOfAppend\npublic import Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths.EqEmptyIffSplit\npublic import Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths.JointTypeLatticeSaturated\npublic import Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths.IntegralJointTypeSum\npublic import Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths.LiftSubstitutionCoeffDivisible\npublic import Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths.CanonicalTranslateJetIdentity\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset Formalism.MainNotions.G Formalism.MainNotions.CovariantDegrees

namespace Formalism.MainNotions.LemmaBAlt

theorem nested_sets_lemma_of_admitted (D : Formalism.BasicNotions.D7) (h14 : JointComponentsPaths D) (h16 : PairedPathIndependence D) : ConclusionB3 D :=
  lemma_B3 D h16 (lemma_B2 D) (integral_joint_type_sum D h14 h16)

end Formalism.MainNotions.LemmaBAlt
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.SplittingThirdPartHolds =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.SplittingThirdPartHolds", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.StatementOfDegreeAndBound\npublic import Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.AdmFourteen\npublic import Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.AdmissibleExternalProduct\npublic import Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.AdmissiblePolynomialBasisProv\nimport Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.AdmissibleWordBasis\npublic import Formalism.SharpRestriction.GrowthBounds.FrobeniusPaths\npublic import Formalism.SharpRestriction.GrowthBounds.GLWeightTheory\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.MainNotions.G.ColumnFamilies

open Formalism.MainNotions.CovariantDegrees Formalism.MainNotions.LemmaBAlt Formalism.MainNotions.G.GLWeightTheory

theorem splitting_third_part_holds (D : Formalism.BasicNotions.D7) : DefiniteRankOne D := by
  intro p _ O _ _ _ _ N n _ LL B th M
  exact ⟨lemma_A3_over_domain LL B D word_valuation_bounds (valuation_field D).1 (admissible_standardPath_basis D) (admissible_word_basis D) O th M,
    lemma_A3_over_field LL B D word_valuation_bounds (valuation_field D).1 (admissible_standardPath_basis D) (admissible_word_basis D) (Formalism.MainNotions.G.FF O) th M⟩

theorem splitting_package_holds (D : Formalism.BasicNotions.D7) : Conclusion2 D :=
  ⟨automorphicSideConclusion_of_pathBasis D (admissible_standardPath_basis D), splitting_third_part_holds D, prvB1_of_D7 D, lemma_B2 D,
    nested_sets_lemma_of_admitted D (adm_fourteen D) (admissible_externalProduct D), coefficientDependence D, canonical_translate_jet_identity D⟩

end Formalism.MainNotions.G.ColumnFamilies
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.SplittingThirdPartHolds =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.AdmissiblePolynomialBasisProv\npublic import Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.AdmissibleWordBasis\npublic import Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.ToralGalois\npublic import Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.LiePolarizationDerEqZeroOfDisjoint\npublic import Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.AdmFourteen\npublic import Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.AdmissibleLowerSetSpan\npublic import Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.AdmissibleExternalProduct\npublic import Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.LatticeGeneratedLowestWeight\npublic import Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.SplittingThirdPartHolds\npublic import Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities.BrCore\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.MainNotions.G.ColumnFamilies.Top

open Formalism.MainNotions.CovariantDegrees

alias b9 := _root_.Formalism.MainNotions.G.ColumnFamilies.global_sections_schur
alias b10 := _root_.Formalism.MainNotions.G.ColumnFamilies.bracket_polynomial_span
alias b11 := _root_.Formalism.MainNotions.G.ColumnFamilies.adm_eleven
alias b15 := _root_.Formalism.MainNotions.G.ColumnFamilies.admissible_lowerSet_span
alias a2 := _root_.Formalism.MainNotions.G.ColumnFamilies.admissible_polynomial_basis

end Formalism.MainNotions.G.ColumnFamilies.Top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.BinomialPolynomialIdentities =====
