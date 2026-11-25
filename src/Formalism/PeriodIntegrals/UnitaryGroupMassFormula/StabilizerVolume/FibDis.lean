module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.FibFour
public import Mathlib.MeasureTheory.Integral.RieszMarkovKakutani.Real
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.DensGen
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.FibGlue
import Mathlib.Tactic.Linter.HaveILetI
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.FibDis
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.FibGlue, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.FibDis

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.FibGlue =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.FibGlue", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.FibGlue\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.FibFour\npublic import Mathlib.MeasureTheory.Integral.RieszMarkovKakutani.Real\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.DensGen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.VolStabS.Glue

open MeasureTheory Topology Set Filter PI.VolStabS
open scoped CompactlySupported

section Ext

variable {V : Type} [TopologicalSpace V] [T2Space V]

export PI.VolStabSW.Glue (extZ extZ_val extZ_props extZ_add extZ_smul extZ_nonneg)

end Ext

section Dens

variable {V X Y : Type} [TopologicalSpace V] [MeasurableSpace V] [TopologicalSpace X]
  [MeasurableSpace X] {μ : Measure V} {ν : Measure X} {f : V → Y} {ι : X → Y} {U : Set V}

export PI.VolStabSW.Glue (G G_spec)

variable [OpensMeasurableSpace X] [T2Space X] [LocallyCompactSpace X]
  [IsFiniteMeasureOnCompacts ν] [ν.IsOpenPosMeasure]

theorem dens_unique {g1 g2 : X → ℝ} (h1 : Continuous g1) (h2 : Continuous g2)
    (h : ∀ S, IsCompact S → ∫ b in S, g1 b ∂ν = ∫ b in S, g2 b ∂ν) : g1 = g2 :=
  _root_.PI.VolStabSW.Glue.dens_unique h1 h2 h

export PI.VolStabSW.Glue (dens_nonneg)

variable [IsFiniteMeasureOnCompacts μ] [OpensMeasurableSpace V]

export PI.VolStabSW.Glue (isCc_add isCc_smul G_add G_smul G_nonneg)

end Dens

section Riesz

variable {V X Y : Type} [TopologicalSpace V] [MeasurableSpace V] [BorelSpace V]
  [LocallyCompactSpace V] [T2Space V] [TopologicalSpace X] [MeasurableSpace X] [BorelSpace X]
  [T2Space X] [LocallyCompactSpace X] [TopologicalSpace Y] [T2Space Y]
  {μ : Measure V} {ν : Measure X} {f : V → Y} {ι : X → Y} {U : Set V}
  [IsFiniteMeasureOnCompacts ν] [ν.IsOpenPosMeasure] [IsFiniteMeasureOnCompacts μ]

export PI.VolStabSW.Glue (tsupport_extZ lam)

export PI.VolStabSW.Glue (lam_apply)

variable [OpensMeasurableSpace V]

def fibG (hD : DensAll μ f ι ν U) (hU : IsOpen U) (b : X) : Measure V :=
  haveI : LocallyCompactSpace U := hU.isOpenEmbedding_subtypeVal.locallyCompactSpace
  (RealRMK.rieszMeasure (lam hD hU b)).map Subtype.val

export PI.VolStabSW.Glue (restr)

export PI.VolStabSW.Glue (extZ_restr fibG_integral fibG_supp)

end Riesz

def DisintStep : Prop :=
  ∀ (V X Y : Type) [TopologicalSpace V] [MeasurableSpace V] [BorelSpace V] [LocallyCompactSpace V]
    [T2Space V] [SecondCountableTopology V] [TopologicalSpace X] [MeasurableSpace X]
    [BorelSpace X] [LocallyCompactSpace X] [T2Space X] [SecondCountableTopology X]
    [TopologicalSpace Y] [T2Space Y] (μ : Measure V) (ν : Measure X),
    IsFiniteMeasureOnCompacts μ → IsFiniteMeasureOnCompacts ν → ν.IsOpenPosMeasure →
    ∀ (f : V → Y) (ι : X → Y) (U : Set V), Continuous f → IsClosedEmbedding ι →
      (∀ v, f v ∈ Set.range ι) → IsOpen U → ∀ fib : X → Measure V,
      (∀ b, fib b (f ⁻¹' {ι b} ∩ U)ᶜ = 0) →
      (∀ b K, IsCompact K → K ⊆ U → fib b K < ⊤) →
      (∀ φ : V → ℝ, IsCcOn U φ → (∀ b, Integrable φ (fib b)) ∧
        Continuous (fun b => ∫ v, φ v ∂(fib b)) ∧
        ∀ S : Set X, IsCompact S → ∫ v in f ⁻¹' (ι '' S), φ v ∂μ = ∫ b in S, ∫ v, φ v ∂(fib b) ∂ν) →
      ∀ φ : V → ENNReal, Measurable φ → ∫⁻ v in U, φ v ∂μ = ∫⁻ b, ∫⁻ v, φ v ∂(fib b) ∂ν

theorem fibOfDens_of (hDis : DisintStep) : FibOfDens :=
  _root_.PI.VolStabSW.Glue.fibOfDens_of hDis

end PI.VolStabS.Glue
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.FibGlue =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.FibDis =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.FibDis", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.FibDis\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.FibGlue\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Separation.CompletelyRegular\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.VolStabS.DiscreteGroups

open MeasureTheory Topology Set Filter PI.VolStabS PI.VolStabS.Glue
open scoped ENNReal

section

variable {V : Type} [TopologicalSpace V] [T2Space V] [LocallyCompactSpace V]
  [SecondCountableTopology V]

export PI.VolStabSW.DiscreteGroups (cover approx)

variable {X Y : Type} [MeasurableSpace V] [BorelSpace V] [TopologicalSpace X] [MeasurableSpace X]
  [BorelSpace X] [T2Space X] [TopologicalSpace Y] [T2Space Y]
  {μ : Measure V} {ν : Measure X} [IsFiniteMeasureOnCompacts μ] [IsFiniteMeasureOnCompacts ν]
  {f : V → Y} {ι : X → Y} {U : Set V} {fib : X → Measure V}
  (hf : Continuous f) (hι : IsClosedEmbedding ι) (hr : ∀ v, f v ∈ Set.range ι) (hU : IsOpen U)
  (h0 : ∀ b, fib b (f ⁻¹' {ι b} ∩ U)ᶜ = 0) (h2 : ∀ b K, IsCompact K → K ⊆ U → fib b K < ⊤)
  (h3 : ∀ φ : V → ℝ, IsCcOn U φ → (∀ b, Integrable φ (fib b)) ∧
        Continuous (fun b => ∫ v, φ v ∂(fib b)) ∧
        ∀ S : Set X, IsCompact S → ∫ v in f ⁻¹' (ι '' S), φ v ∂μ = ∫ b in S, ∫ v, φ v ∂(fib b) ∂ν)

include hf hι hr hU h0 h2 h3

end

export PI.VolStabSW.DiscreteGroups (disintStep_holds fibOfDens_holds)

end PI.VolStabS.DiscreteGroups
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerVolume.FibDis =====
