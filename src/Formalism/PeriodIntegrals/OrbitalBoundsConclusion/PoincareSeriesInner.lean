module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ComplexDoubleCosets.CplxDC
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.FoldDCUnfold
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.FoldMult
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.PoincareSeriesSquareIntegrable
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ComplexDoubleCosets.ComplexDoubleCoset
import Formalism.PeriodIntegrals.FoldUnfold
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnfoldingIdentity.FoldUnfoldMain
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ComplexDoubleCosets.FoldL2ComplexOf, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.PoincareSeriesInner

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ComplexDoubleCosets.FoldL2ComplexOf =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ComplexDoubleCosets.FoldL2ComplexOf", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ComplexDoubleCosets.CplxDC\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.FoldDCUnfold\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.FoldMult\nimport Formalism.PeriodIntegrals.FoldUnfold\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnfoldingIdentity.FoldUnfoldMain\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory
open scoped ENNReal NNReal ComplexConjugate
open Formalism.L2.SG.FoldBound Formalism.L2.SG.PoincareSeriesSquareIntegrable

namespace PI.PoincareSeriesInner.W

universe u

theorem fold_L2_complex_of (hc : CplxDC.{u}) (G : Type u) [Group G] [TopologicalSpace G]
    [IsTopologicalGroup G] [LocallyCompactSpace G] [SecondCountableTopology G] [T2Space G]
    [MeasurableSpace G] [BorelSpace G] (μ : Measure G) [μ.IsHaarMeasure] : PoincareSeriesInner G μ := by
  intro Γ S S' hΓ hS hS' Ω hΩ h1 a a' Ph Ph' hP hP' F F' hF hF' hm hm' D D' hD hD' R hR Fs hFs FΓ hFΓ
  haveI : Countable Γ := (TopologicalSpace.separableSpace_iff_countable).1 inferInstance
  obtain ⟨hPm, hPinv, hPb⟩ := hP
  obtain ⟨hPm', hPinv', hPb'⟩ := hP'
  have hΩm : MeasurableSet Ω := hΩ.isClosed.measurableSet
  obtain ⟨hM1, hMfin, hMinv, hMm⟩ := overlapMultiplicityProperties G Γ hΓ Ω hΩ h1
  have hbd := foldBound_holds G μ Γ S hΓ hS Ω hΩm a Ph hPm hPinv hPb F hF D hD
  have hbd' := foldBound_holds G μ Γ S' hΓ hS' Ω hΩm a' Ph' hPm' hPinv' hPb' F' hF' D' hD'
  have hQf : quotientLIntegral μ F Ph < ∞ := by
    refine lt_of_le_of_lt ?_ hm
    exact lintegral_mono fun y => le_mul_of_one_le_left zero_le' (hM1 y)
  have hQf' : quotientLIntegral μ F' Ph' < ∞ := by
    refine lt_of_le_of_lt ?_ hm'
    exact lintegral_mono fun y => le_mul_of_one_le_left zero_le' (hM1 y)
  have hK : ∫⁻ x in FΓ, mult Γ Ω x * ∑' δ' : D', ‖Ph' (δ' * x)‖ₑ ∂μ = multiplicityLIntegral μ Γ Ω F' Ph' := by
    have hfun : (fun x => mult Γ Ω x * ∑' δ' : D', ‖Ph' (δ' * x)‖ₑ)
        = fun x => ∑' δ' : D', mult Γ Ω (δ' * x) * ‖Ph' (δ' * x)‖ₑ := by
      funext x
      rw [← ENNReal.tsum_mul_left]
      refine tsum_congr fun δ' => ?_
      rw [hMinv δ' (hD'.1 δ'.2) x]
    rw [hfun]
    exact _root_.PI.FoldUnfold.UnitaryGroupMassFormula.foldUnfold_main G μ Γ S' hS' F' hF' FΓ hFΓ D' hD' (fun y => mult Γ Ω y * ‖Ph' y‖ₑ)
      (hMm.mul hPm'.enorm) (fun s hs y => by simp only [hMinv s (hS' hs) y, hPinv' s hs y])
  have hne : (a : ℝ≥0∞) * quotientLIntegral μ F Ph ≠ ∞ := ENNReal.mul_ne_top ENNReal.coe_ne_top hQf.ne
  have hfin : (a : ℝ≥0∞) * quotientLIntegral μ F Ph * multiplicityLIntegral μ Γ Ω F' Ph' < ∞ :=
    ENNReal.mul_lt_top (ENNReal.mul_lt_top ENNReal.coe_lt_top hQf) hm'
  have hI : ∫⁻ x in FΓ, (∑' δ : D, ‖Ph (δ * x)‖ₑ) * ∑' δ' : D', ‖Ph' (δ' * x)‖ₑ ∂μ
      ≤ a * quotientLIntegral μ F Ph * multiplicityLIntegral μ Γ Ω F' Ph' := by
    calc _ ≤ ∫⁻ x in FΓ, ((a : ℝ≥0∞) * quotientLIntegral μ F Ph) * (mult Γ Ω x * ∑' δ' : D', ‖Ph' (δ' * x)‖ₑ) ∂μ := by
          refine lintegral_mono fun x => ?_
          calc (∑' δ : D, ‖Ph (δ * x)‖ₑ) * ∑' δ' : D', ‖Ph' (δ' * x)‖ₑ
              ≤ (a * mult Γ Ω x * quotientLIntegral μ F Ph) * ∑' δ' : D', ‖Ph' (δ' * x)‖ₑ := mul_le_mul' (hbd x) le_rfl
            _ = _ := by ring
      _ = ((a : ℝ≥0∞) * quotientLIntegral μ F Ph) * ∫⁻ x in FΓ, mult Γ Ω x * ∑' δ' : D', ‖Ph' (δ' * x)‖ₑ ∂μ :=
          lintegral_const_mul' _ _ hne
      _ = _ := by rw [hK]
  have hunf := fold_dc_unfold G μ Γ S S' hS hS' D D' hD hD' R hR Fs hFs FΓ hFΓ
    (fun x => ‖Ph x‖ₑ) (fun x => ‖Ph' x‖ₑ) hPm.enorm hPm'.enorm
    (fun s hs y => by simp only [hPinv s hs y]) (fun s hs y => by simp only [hPinv' s hs y])
  have h2 : ∑' r : R, ∫⁻ x in Fs r, ‖Ph x‖ₑ * ‖Ph' ((r : G)⁻¹ * x)‖ₑ ∂μ < ∞ := by
    rw [← hunf]
    exact hI.trans_lt hfin
  have hconj : Measurable (fun z : ℂ => (starRingEnd ℂ) z) := Complex.continuous_conj.measurable
  have henc : ∀ z : ℂ, ‖(starRingEnd ℂ) z‖ₑ = ‖z‖ₑ := fun z => by simp
  refine ⟨?_, h2, ?_, ?_⟩
  · calc ∫⁻ x in F', ‖Ph' x‖ₑ * ∑' δ : D, ‖Ph (δ * x)‖ₑ ∂μ
        ≤ ∫⁻ x in F', ((a : ℝ≥0∞) * quotientLIntegral μ F Ph) * (mult Γ Ω x * ‖Ph' x‖ₑ) ∂μ := by
          refine lintegral_mono fun x => ?_
          calc ‖Ph' x‖ₑ * ∑' δ : D, ‖Ph (δ * x)‖ₑ ≤ ‖Ph' x‖ₑ * (a * mult Γ Ω x * quotientLIntegral μ F Ph) :=
                mul_le_mul' le_rfl (hbd x)
            _ = _ := by ring
      _ = a * quotientLIntegral μ F Ph * multiplicityLIntegral μ Γ Ω F' Ph' := by
          rw [lintegral_const_mul' _ _ hne]
          rfl
  · intro r hr
    have hle : ∫⁻ x in Fs r, ‖Ph x‖ₑ * ‖Ph' (r⁻¹ * x)‖ₑ ∂μ < ∞ :=
      (ENNReal.le_tsum (f := fun r : R => ∫⁻ x in Fs r, ‖Ph x‖ₑ * ‖Ph' ((r : G)⁻¹ * x)‖ₑ ∂μ)
        ⟨r, hr⟩).trans_lt h2
    refine ⟨(hPm.mul (hconj.comp (hPm'.comp (measurable_const_mul _)))).aestronglyMeasurable, ?_⟩
    simpa [HasFiniteIntegral, enorm_mul, henc] using hle
  · have hψm : Measurable (fun x => (starRingEnd ℂ) (Ph' x)) := hconj.comp hPm'
    have hpc : ∀ x, poinc D' (fun y => (starRingEnd ℂ) (Ph' y)) x = (starRingEnd ℂ) (poinc D' Ph' x) :=
      fun x => by simp only [poinc, Complex.conj_tsum]
    have key := hc G μ Γ S S' hS hS' D D' hD hD' R hR Fs hFs FΓ hFΓ Ph (fun x => (starRingEnd ℂ) (Ph' x))
      hPm hψm hPinv (fun s hs y => by simp only [hPinv' s hs y])
      (fun x => ((hbd x).trans_lt (ENNReal.mul_lt_top
        (ENNReal.mul_lt_top ENNReal.coe_lt_top (hMfin x)) hQf)).ne)
      (fun x => by
        simp only [henc]
        exact ((hbd' x).trans_lt (ENNReal.mul_lt_top
          (ENNReal.mul_lt_top ENNReal.coe_lt_top (hMfin x)) hQf')).ne)
      (by
        simp only [henc]
        exact (hI.trans_lt hfin).ne)
    simp only [hpc] at key
    exact key

end PI.PoincareSeriesInner.W
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ComplexDoubleCosets.FoldL2ComplexOf =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.PoincareSeriesInner =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.PoincareSeriesInner", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.PoincareSeriesSquareIntegrable\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ComplexDoubleCosets.ComplexDoubleCoset\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ComplexDoubleCosets.FoldL2ComplexOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem fold_l2_bound_c (G : Type*) [Group G] [TopologicalSpace G] [IsTopologicalGroup G] [LocallyCompactSpace G] [SecondCountableTopology G] [T2Space G] [MeasurableSpace G] [BorelSpace G] (μ : MeasureTheory.Measure G) [μ.IsHaarMeasure] : Formalism.L2.SG.PoincareSeriesSquareIntegrable.PoincareSeriesInner G μ :=
  PI.PoincareSeriesInner.W.fold_L2_complex_of PI.PoincareSeriesInner.W.complex_double_coset G μ
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.PoincareSeriesInner =====
