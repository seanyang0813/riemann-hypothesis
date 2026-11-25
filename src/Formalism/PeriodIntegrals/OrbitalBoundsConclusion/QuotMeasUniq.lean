module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuotientMeasureUniqueness.QmuWeight
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuotientMeasureUniqueness.QLiftIsMulLeftInvariant
public import Formalism.PeriodIntegrals.WeilQuotMeas
public import Mathlib.MeasureTheory.Group.LIntegral
public import Mathlib.MeasureTheory.Measure.Haar.Basic
public import Mathlib.MeasureTheory.Measure.Haar.Unique
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuotientMeasureUniqueness.Weight, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuotientMeasureUniqueness.WqUniqueOf, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QuotMeasUniq

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuotientMeasureUniqueness.Weight =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuotientMeasureUniqueness.Weight", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuotientMeasureUniqueness.QmuWeight\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuotientMeasureUniqueness.QLiftIsMulLeftInvariant\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Pointwise
open scoped ENNReal

namespace PI.QuotMeasUniqW

theorem qmuWeight : QmuWeight := by
  intro G _ _ _ _ _ _ _ _ H hH ν hν
  obtain ⟨K, hK, hK1⟩ := exists_compact_mem_nhds (1 : G)
  have hVo : IsOpen (interior K) := isOpen_interior
  have hVK : interior K ⊆ K := interior_subset
  have h1V : (1 : G) ∈ interior K := mem_interior_iff_mem_nhds.2 hK1
  obtain ⟨d, hd⟩ := TopologicalSpace.exists_dense_seq G
  have hCo : ∀ n, IsOpen (d n • interior K) := fun n => hVo.smul (d n)
  have hCm : ∀ n, MeasurableSet (d n • interior K) := fun n => (hCo n).measurableSet
  have hind : ∀ n, Measurable ((d n • interior K).indicator (1 : G → ℝ≥0∞)) :=
    fun n => measurable_one.indicator (hCm n)
  refine ⟨fun x => ∑' n, (2⁻¹ : ℝ≥0∞) ^ n * (d n • interior K).indicator 1 x,
    Measurable.tsum fun n => (hind n).const_mul _, fun g => ?_⟩
  have hmg : ∀ n, Measurable fun h : H => (d n • interior K).indicator (1 : G → ℝ≥0∞) (g * (h : G)) :=
    fun n => (hind n).comp ((measurable_const_mul g).comp measurable_subtype_coe)
  have hterm : ∀ n, Measurable fun h : H =>
      (2⁻¹ : ℝ≥0∞) ^ n * (d n • interior K).indicator 1 (g * (h : G)) :=
    fun n => (hmg n).const_mul _
  have hM : ν {h : H | (h : G) ∈ K⁻¹ * K} ≠ ⊤ := by
    have hc : IsCompact (((↑) : H → G) ⁻¹' (K⁻¹ * K)) :=
      hH.isClosedEmbedding_subtypeVal.isCompact_preimage (hK.inv.mul hK)
    exact hc.measure_lt_top.ne
  have hle : ∀ n, ∫⁻ h, (d n • interior K).indicator 1 (g * (h : G)) ∂ν
      ≤ ν {h : H | (h : G) ∈ K⁻¹ * K} := by
    intro n
    refine hAvg_indicator_le ν (d n • interior K) K (d n) g ?_
    intro x hx
    rw [Set.mem_smul_set_iff_inv_smul_mem, smul_eq_mul] at hx
    exact hVK hx
  show (∫⁻ h, ∑' n, (2⁻¹ : ℝ≥0∞) ^ n * (d n • interior K).indicator 1 (g * (h : G)) ∂ν) ≠ 0 ∧
    (∫⁻ h, ∑' n, (2⁻¹ : ℝ≥0∞) ^ n * (d n • interior K).indicator 1 (g * (h : G)) ∂ν) ≠ ⊤
  constructor
  · obtain ⟨n, hn⟩ : ∃ n, (d n)⁻¹ * g ∈ interior K := by
      have ho : IsOpen {x : G | x⁻¹ * g ∈ interior K} :=
        hVo.preimage (continuous_inv.mul continuous_const)
      exact hd.exists_mem_open ho ⟨g, by simpa using h1V⟩
    have hSo : IsOpen {h : H | g * (h : G) ∈ d n • interior K} :=
      (hCo n).preimage (continuous_const.mul continuous_subtype_val)
    have hS1 : (1 : H) ∈ {h : H | g * (h : G) ∈ d n • interior K} := by
      show g * ((1 : H) : G) ∈ d n • interior K
      rw [Set.mem_smul_set_iff_inv_smul_mem, smul_eq_mul]
      simpa [mul_assoc] using hn
    have hpos : 0 < ν {h : H | g * (h : G) ∈ d n • interior K} := hSo.measure_pos ν ⟨1, hS1⟩
    have heq : ∫⁻ h, (d n • interior K).indicator 1 (g * (h : G)) ∂ν
        = ν {h : H | g * (h : G) ∈ d n • interior K} := by
      have hfun : (fun h : H => (d n • interior K).indicator (1 : G → ℝ≥0∞) (g * (h : G)))
          = ((fun h : H => g * (h : G)) ⁻¹' (d n • interior K)).indicator 1 := by
        funext h
        exact (indicator_preimage_one (fun h : H => g * (h : G)) (d n • interior K) h).symm
      rw [hfun]
      exact lintegral_indicator_one hSo.measurableSet
    apply ne_of_gt
    calc (0 : ℝ≥0∞) < (2⁻¹ : ℝ≥0∞) ^ n * ν {h : H | g * (h : G) ∈ d n • interior K} :=
          ENNReal.mul_pos (pow_ne_zero _ (by simp)) hpos.ne'
      _ = ∫⁻ h, (2⁻¹ : ℝ≥0∞) ^ n * (d n • interior K).indicator 1 (g * (h : G)) ∂ν := by
          rw [lintegral_const_mul _ (hmg n), heq]
      _ ≤ ∫⁻ h, ∑' m, (2⁻¹ : ℝ≥0∞) ^ m * (d m • interior K).indicator 1 (g * (h : G)) ∂ν :=
          lintegral_mono fun h => ENNReal.le_tsum
            (f := fun m => (2⁻¹ : ℝ≥0∞) ^ m * (d m • interior K).indicator 1 (g * (h : G))) n
  · rw [lintegral_tsum fun n => (hterm n).aemeasurable]
    refine ne_top_of_le_ne_top (b := ∑' n, (2⁻¹ : ℝ≥0∞) ^ n * ν {h : H | (h : G) ∈ K⁻¹ * K}) ?_ ?_
    · rw [ENNReal.tsum_mul_right, ENNReal.tsum_geometric, ENNReal.one_sub_inv_two, inv_inv]
      exact ENNReal.mul_ne_top (by simp) hM
    · refine ENNReal.tsum_le_tsum fun n => ?_
      rw [lintegral_const_mul _ (hmg n)]
      gcongr
      exact hle n

end PI.QuotMeasUniqW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuotientMeasureUniqueness.Weight =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuotientMeasureUniqueness.WqUniqueOf =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuotientMeasureUniqueness.WqUniqueOf", "h": "module\n\npublic import Formalism.PeriodIntegrals.WeilQuotMeas\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuotientMeasureUniqueness.QmuWeight\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.MeasureTheory.Group.LIntegral\npublic import Mathlib.MeasureTheory.Measure.Haar.Basic\npublic import Mathlib.MeasureTheory.Measure.Haar.Unique\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory
open scoped ENNReal

namespace PI.QuotMeasUniqW

theorem wqUnique_of (hw : QmuWeight) (hl : QmuLift) : PI.WeilQuotMeas.WqUnique := by
  unfold PI.WeilQuotMeas.WqUnique
  intro G _ _ _ _ _ _ _ _ H hH ρ ρ' hρ hK hinv hK' hinv'
  haveI : LocallyCompactSpace H := hH.locallyCompactSpace
  obtain ⟨ν, hνdef⟩ : ∃ ν : Measure H, ν = Measure.haar := ⟨_, rfl⟩
  have hν : ν.IsHaarMeasure := by rw [hνdef]; infer_instance
  haveI := hν
  haveI : SecondCountableTopology H := TopologicalSpace.Subtype.secondCountableTopology (H : Set G)
  haveI : SigmaFinite ν := inferInstance
  obtain ⟨w, hwm, hwW⟩ := hw G H hH ν hν
  obtain ⟨l, hlI, hlF, hlW⟩ := hl G H hH ν hν ρ hK hinv
  obtain ⟨l', hlI', hlF', hlW'⟩ := hl G H hH ν hν ρ' hK' hinv'

  obtain ⟨W, hW⟩ : ∃ W : G → ℝ≥0∞, ∀ g, W g = ∫⁻ h : H, w (g * h) ∂ν := ⟨_, fun _ => rfl⟩
  have hW0 : ∀ g, W g ≠ 0 := fun g => by rw [hW]; exact (hwW g).1
  have hWt : ∀ g, W g ≠ ∞ := fun g => by rw [hW]; exact (hwW g).2
  have hWmul : ∀ (g : G) (h₀ : H), W (g * h₀) = W g := by
    intro g h₀
    rw [hW, hW]
    have := lintegral_mul_left_eq_self (μ := ν) (fun h : H => w (g * h)) h₀
    simpa only [Subgroup.coe_mul, mul_assoc] using this
  have hwc : ∀ g : G, Measurable fun h : H => w (g * h) :=
    fun g => hwm.comp (measurable_const.mul measurable_subtype_coe)
  have hWm : Measurable W := by
    have e : W = fun g => ∫⁻ h : H, w (g * h) ∂ν := funext hW
    rw [e]
    exact (hwm.comp (measurable_fst.mul (measurable_subtype_coe.comp measurable_snd))).lintegral_prod_right'

  obtain ⟨f, hf⟩ : ∃ f : Set (G ⧸ H) → G → ℝ≥0∞, ∀ s x,
      f s x = s.indicator 1 (QuotientGroup.mk x : G ⧸ H) * (w x * (W x)⁻¹) := ⟨_, fun _ _ => rfl⟩
  have hfm : ∀ s, MeasurableSet s → Measurable (f s) := by
    intro s hs
    have e : f s = fun x => s.indicator 1 (QuotientGroup.mk x : G ⧸ H) * (w x * (W x)⁻¹) :=
      funext (hf s)
    rw [e]
    exact ((measurable_const.indicator hs).comp
      (measurable_quotient_mk'' : Measurable (QuotientGroup.mk : G → G ⧸ H))).mul (hwm.mul hWm.inv)
  have hrec : ∀ (μ : Measure (G ⧸ H)) (m : Measure G),
      (∀ φ : G → ℝ≥0∞, Measurable φ →
        ∫⁻ x, φ x ∂m = ∫⁻ y : G ⧸ H, ∫⁻ h : H, φ (@Quotient.out G (QuotientGroup.leftRel H) y * h) ∂ν ∂μ) →
      ∀ s, MeasurableSet s → μ s = ∫⁻ x, f s x ∂m := by
    intro μ m hm s hs
    rw [hm _ (hfm s hs), ← lintegral_indicator_one hs]
    refine lintegral_congr (fun y => ?_)
    have hy : ∀ h : H, (QuotientGroup.mk (@Quotient.out G (QuotientGroup.leftRel H) y * (h : G)) : G ⧸ H) = y := by
      intro h
      rw [QuotientGroup.mk_mul_of_mem _ h.2]
      exact @Quotient.out_eq G (QuotientGroup.leftRel H) y
    simp only [hf, hy, hWmul]
    rw [lintegral_const_mul _ ((hwc _).mul_const _), lintegral_mul_const _ (hwc _), ← hW,
      ENNReal.mul_inv_cancel (hW0 _) (hWt _), mul_one]

  haveI := hlI; haveI := hlF; haveI := hlI'; haveI := hlF'
  obtain ⟨μG, hμG⟩ : ∃ μG : Measure G, μG = Measure.haar := ⟨_, rfl⟩
  haveI : μG.IsHaarMeasure := by rw [hμG]; infer_instance
  obtain ⟨c, hc1⟩ : ∃ c : NNReal, l = c • μG := ⟨_, Measure.isMulLeftInvariant_eq_smul l μG⟩
  obtain ⟨c', hc2⟩ : ∃ c' : NNReal, l' = c' • μG := ⟨_, Measure.isMulLeftInvariant_eq_smul l' μG⟩
  have e1 : ∀ s, MeasurableSet s → ρ s = (c : ℝ≥0∞) * ∫⁻ x, f s x ∂μG := fun s hs => by
    rw [hrec ρ l hlW s hs, hc1, lintegral_smul_measure]
    rfl
  have e2 : ∀ s, MeasurableSet s → ρ' s = (c' : ℝ≥0∞) * ∫⁻ x, f s x ∂μG := fun s hs => by
    rw [hrec ρ' l' hlW' s hs, hc2, lintegral_smul_measure]
    rfl
  have hc : c ≠ 0 := by
    intro h0
    apply hρ
    refine Measure.ext fun s hs => ?_
    rw [e1 s hs, h0]
    simp
  refine ⟨((c' / c : NNReal) : ℝ≥0∞), Measure.ext fun s hs => ?_⟩
  rw [Measure.smul_apply, e1 s hs, e2 s hs, smul_eq_mul, ← mul_assoc, ← ENNReal.coe_mul,
    div_mul_cancel₀ _ hc]

end PI.QuotMeasUniqW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuotientMeasureUniqueness.WqUniqueOf =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QuotMeasUniq =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QuotMeasUniq", "h": "module\n\npublic import Formalism.PeriodIntegrals.WeilQuotMeas\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuotientMeasureUniqueness.QLiftIsMulLeftInvariant\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuotientMeasureUniqueness.Weight\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.QuotientMeasureUniqueness.WqUniqueOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI

theorem wqUnique : PI.WeilQuotMeas.WqUnique :=
  PI.QuotMeasUniqW.wqUnique_of PI.QuotMeasUniqW.qmuWeight PI.QuotMeasUniqW.qmuLift

end PI
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QuotMeasUniq =====
