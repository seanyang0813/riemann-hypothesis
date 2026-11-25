module

public import Development.WeilBound.ThetaLifts.SmallCones.UnfAbs
public import Mathlib.Analysis.CStarAlgebra.Classes
public import Mathlib.Analysis.InnerProductSpace.Basic
public import Development.WeilBound.ThetaLifts.SmallCones.ThetaUniq
public import Development.WeilBound.ThetaLifts.LocalTheory.ConeShifts.EvFinIdemSelf
public import Development.WeilBound.CoreStatements.CompactAveragingSplitting.EigenvectorLifting.Kcompact
public import Development.WeilBound.ThetaLifts.CartanFactorisation.Unimod
public import Development.WeilBound.ThetaLifts.SmallCones.FcCols
public import Development.WeilBound.ThetaLifts.SmallCones.MatCancel
public import Development.WeilBound.ThetaLifts.SmallCones.ColsOfMul
public import Development.WeilBound.ThetaLifts.SmallCones.SoDefs
public import Development.WeilBound.ThetaLifts.LocalTheory.ConeShifts.CoefficientSpans
public import Development.WeilBound.ThetaLifts.LocalTheory.ConeShifts.IdealStmt
public import Development.WeilBound.CoreStatements.LocallyConstantCoinvariants.FullOfSoLoc
public import Development.WeilBound.ThetaLifts.LocalTheory.ConeShifts.KAtCompact
public import Development.WeilBound.CoreStatements.CompactAveragingSplitting.EigenvectorLifting.InertDef
public import Development.WeilBound.ThetaLifts.LocalTheory.UnramifiedDeterminedBySpherical
public import Development.WeilBound.CoreStatements.LocalThetaKernels.Locrep
public import Development.WeilBound.ThetaLifts.LeviDeterminants.ActsEx
public import Development.WeilBound.ThetaLifts.LocalTheory.AdmissiblePureTensorSchwartz
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
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.HaveILetI
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
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AbelianVarietyTheory.Definitions.Foundations.MeasurePreservingRmulQuotMeas
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.LcscAdelicUnitaryGroup
import Development.WeilBound.ThetaLifts.TowerModels.LeviAd
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Development.AbelianVarietyTheory.Definitions.Divisors.MatchingOfParts
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfComponentTensorAdelicFunctionEq
import Development.WeilBound.ThetaLifts.CartanFactorisation.TensOfEval
import Development.WeilBound.ThetaLifts.LocalTheory.ConeShifts.PureCancel
import GroundTheory.GlobalFields.CompletionAtPlace.Integers
import GroundTheory.LocalFields.PadicLogSeries

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.ThetaLifts.LocalTheory.UnramifiedCohomology.Lint, Development.WeilBound.ThetaLifts.LocalTheory.UnramifiedCohomology.KAtCompact, Development.WeilBound.ThetaLifts.LocalTheory.UnramifiedCohomology.SpanSoLoc, Development.WeilBound.ThetaLifts.LocalTheory.UnramifiedCohomology.FLocBOf

-- ===== clump member: Development.WeilBound.ThetaLifts.LocalTheory.UnramifiedCohomology.Lint =====
-- clump-header: {"m": "Development.WeilBound.ThetaLifts.LocalTheory.UnramifiedCohomology.Lint", "h": "module\n\npublic import Development.WeilBound.ThetaLifts.SmallCones.UnfAbs\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.InnerProductSpace.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Set Topology
open scoped ENNReal NNReal Pointwise

namespace PositivityTheory.ThKG.Loc.KInv

open PositivityTheory.ThKCT.Unf

variable {G : Type} [Group G] [TopologicalSpace G] [IsTopologicalGroup G] [T2Space G] [LocallyCompactSpace G]
  [SecondCountableTopology G] [MeasurableSpace G] [BorelSpace G]
  {N : Type} [TopologicalSpace N] [SecondCountableTopology N] [MeasurableSpace N] [BorelSpace N]
  {H : Type} [Group H] [TopologicalSpace H] [IsTopologicalGroup H] [LocallyCompactSpace H]
  [SecondCountableTopology H] [MeasurableSpace H] [BorelSpace H]
  {T : Type} [CommGroup T] [TopologicalSpace T] [IsTopologicalGroup T] [LocallyCompactSpace T]
  [SecondCountableTopology T] [MeasurableSpace T] [BorelSpace T]
  {μN : Measure N} [SigmaFinite μN] [IsFiniteMeasureOnCompacts μN] {nn : N → G} {ι : H →* G} {mm : T →* G} {χ : T →* ℝ≥0}
  (ν : Measure G) [ν.IsHaarMeasure] [ν.IsMulRightInvariant] (μH : Measure H) [μH.IsHaarMeasure] [μH.IsMulRightInvariant]
  (μT : Measure T) [μT.IsHaarMeasure]

include ν μH μT in
theorem lint (h : Par μN nn ι mm χ) (hR : ∀ p, ∃ R : N → N, MeasurePreserving R μN μN ∧ ∀ x, nn x * nn p = nn (R x))
    {K : Subgroup G} (hK : IsCompact (K : Set G)) (μK : Measure K) [μK.IsHaarMeasure]
    (hG : ∀ g, ∃ p u t, ∃ k ∈ K, g = nn p * ι u * mm t * k) {f : G → ℝ≥0∞} (hf : Measurable f)
    (hP : ∀ p u t x, f (nn p * ι u * mm t * x) * χ t = f x) (g : G) : ∫⁻ k, f (k.1 * g) ∂μK = ∫⁻ k, f k.1 ∂μK := by
  obtain ⟨c, c0, ct, hc⟩ := haar_eq ν μH μT h hK μK hG
  obtain ⟨C, hC, hC1⟩ := exists_compact_mem_nhds (1 : G)
  have hCK := hC.mul hK
  have cn := h.cn.measurable
  have ci := h.ci.measurable
  have cm := h.cm.measurable
  set b : G → ℝ≥0∞ := (C * (K : Set G)).indicator 1 with hb
  have mb : Measurable b := measurable_one.indicator hCK.measurableSet
  have bK : ∀ x, ∀ k ∈ K, b (x * k) = b x := fun x k hk => by
    have : x * k ∈ C * (K : Set G) ↔ x ∈ C * (K : Set G) :=
      ⟨fun ⟨y, hy, z, hz, e⟩ => ⟨y, hy, z * k⁻¹, mul_mem hz (inv_mem hk), by
          change y * z = _ at e
          change y * (z * k⁻¹) = _
          rw [← mul_assoc, e, mul_inv_cancel_right]⟩,
        fun ⟨y, hy, z, hz, e⟩ => ⟨y, hy, z * k, mul_mem hz hk, by rw [← e]; exact (mul_assoc _ _ _).symm⟩⟩
    by_cases hx : x ∈ C * (K : Set G)
    · rw [hb, indicator_of_mem hx, indicator_of_mem (this.2 hx)]; rfl
    · rw [hb, indicator_of_notMem hx, indicator_of_notMem (mt this.1 hx)]
  set B : G → ℝ≥0∞ := fun y => ∫⁻ t, ∫⁻ u, ∫⁻ p, b (nn p * ι u * mm t * y) ∂μN ∂μH ∂μT with hB
  have B1 : ∀ y, B y = B 1 := fun y => by
    obtain ⟨p', u', t', k, hk, rfl⟩ := hG y
    have e1 : ∀ t u, ∫⁻ p, b (nn p * ι u * mm t * (nn p' * ι u' * mm t' * k)) ∂μN =
        ∫⁻ p, b (nn p * ι (u * u') * mm (t * t') * 1) ∂μN := fun t u => by
      obtain ⟨L₃, -, -, h3⟩ := h.h3 t
      obtain ⟨L₂, -, h2⟩ := h.h2 u
      obtain ⟨R, hRm, hR'⟩ := hR (L₂ (L₃ p'))
      rw [← hRm.lintegral_comp (f := fun p => b (nn p * ι (u * u') * mm (t * t') * 1)) (by fun_prop)]
      refine lintegral_congr fun p => ?_
      rw [← hR', ← bK (nn p * nn (L₂ (L₃ p')) * ι (u * u') * mm (t * t') * 1) k hk]
      congr 1
      calc nn p * ι u * mm t * (nn p' * ι u' * mm t' * k) = nn p * (ι u * (mm t * nn p')) * (ι u' * mm t' * k) := by group
        _ = nn p * nn (L₂ (L₃ p')) * ι u * (mm t * ι u') * mm t' * k := by
          rw [h3, ← mul_assoc (ι u), h2]; group
        _ = _ := by rw [h.h4, map_mul, map_mul]; group
    simp only [hB, e1]
    rw [← lintegral_mul_right_eq_self (fun t => ∫⁻ u, ∫⁻ p, b (nn p * ι u * mm t * 1) ∂μN ∂μH) t']
    exact lintegral_congr fun t => lintegral_mul_right_eq_self (fun u => ∫⁻ p, b (nn p * ι u * mm (t * t') * 1) ∂μN) u'
  have key : ∀ (f' : G → ℝ≥0∞), Measurable f' → (∀ p u t x, f' (nn p * ι u * mm t * x) * χ t = f' x) → ∀ y,
      c * ∫⁻ x, f' x * b (x * y) ∂ν = (∫⁻ k, f' k.1 ∂μK) * B 1 := fun f' hf' hP' y => by
    rw [hc _ (by fun_prop), ← lintegral_mul_const _ (by fun_prop)]
    refine lintegral_congr fun k => ?_
    rw [← B1 (k.1 * y), hB, ← lintegral_const_mul _ (by
      refine Measurable.lintegral_prod_right' (f := fun z : T × H => ∫⁻ p, b (nn p * ι z.2 * mm z.1 * (k.1 * y)) ∂μN) ?_
      exact Measurable.lintegral_prod_right' (f := fun z : (T × H) × N => b (nn z.2 * ι z.1.2 * mm z.1.1 * (k.1 * y)))
        (by fun_prop))]
    refine lintegral_congr fun t => ?_
    rw [← lintegral_mul_const' _ _ ENNReal.coe_ne_top, ← lintegral_const_mul _ (
      Measurable.lintegral_prod_right' (f := fun z : H × N => b (nn z.2 * ι z.1 * mm t * (k.1 * y))) (by fun_prop))]
    refine lintegral_congr fun u => ?_
    rw [← lintegral_mul_const' _ _ ENNReal.coe_ne_top, ← lintegral_const_mul _ (by fun_prop)]
    refine lintegral_congr fun p => ?_
    rw [← hP' p u t k.1, mul_assoc _ k.1 y]
    ring
  have Bt : B 1 ≠ ⊤ := by
    have hc' := h.emb.isCompact_preimage hCK
    have hc2 : IsCompact ((fun z : N × H × T => z.1) '' _) := hc'.image continuous_fst
    have hc3 : IsCompact ((fun z : N × H × T => z.2.1) '' _) := hc'.image (by fun_prop)
    have hc4 : IsCompact ((fun z : N × H × T => z.2.2) '' _) := hc'.image (by fun_prop)
    generalize hA : (fun z : N × H × T => z.1) '' _ = A at hc2
    generalize hD : (fun z : N × H × T => z.2.1) '' _ = D at hc3
    generalize hE : (fun z : N × H × T => z.2.2) '' _ = E at hc4
    have le : ∀ t u p, b (nn p * ι u * mm t * 1) ≤ E.indicator 1 t * (D.indicator 1 u * A.indicator 1 p) := fun t u p => by
      rw [mul_one]
      by_cases hm : nn p * ι u * mm t ∈ C * (K : Set G)
      · rw [hb, indicator_of_mem hm, indicator_of_mem (hE ▸ ⟨(p, u, t), hm, rfl⟩), indicator_of_mem (hD ▸ ⟨(p, u, t), hm, rfl⟩),
          indicator_of_mem (hA ▸ ⟨(p, u, t), hm, rfl⟩)]
        simp
      · rw [hb, indicator_of_notMem hm]; exact zero_le
    have i1 : ∀ {X : Type} [MeasurableSpace X] (μ : Measure X) (S : Set X), ∫⁻ x, S.indicator 1 x ∂μ ≤ μ S := fun μ S =>
      (lintegral_indicator_le _ _).trans (by simp)
    have fin : ∀ {X : Type} (S : Set X) (x : X), S.indicator (1 : X → ℝ≥0∞) x ≠ ⊤ := fun S x =>
      ne_top_of_le_ne_top ENNReal.one_ne_top (indicator_le_self' (fun _ _ => zero_le) x)
    refine ne_top_of_le_ne_top (ENNReal.mul_ne_top hc4.measure_lt_top.ne (ENNReal.mul_ne_top hc3.measure_lt_top.ne
      hc2.measure_lt_top.ne) : μT E * (μH D * μN A) ≠ ⊤) ?_
    refine (lintegral_mono fun t => (?_ : _ ≤ E.indicator 1 t * (μH D * μN A))).trans ?_
    · refine (lintegral_mono fun u => (?_ : _ ≤ E.indicator 1 t * (D.indicator 1 u * μN A))).trans ?_
      · refine (lintegral_mono (le t u)).trans ?_
        rw [lintegral_const_mul' _ _ (fin _ _), lintegral_const_mul' _ _ (fin _ _)]
        gcongr
        exact i1 _ _
      · rw [lintegral_const_mul' _ _ (fin _ _), lintegral_mul_const' _ _ hc2.measure_lt_top.ne]
        gcongr
        exact i1 _ _
    · rw [lintegral_mul_const' _ _ (ENNReal.mul_ne_top hc3.measure_lt_top.ne hc2.measure_lt_top.ne)]
      gcongr
      exact i1 _ _
  have B0 : B 1 ≠ 0 := fun h0 => by
    have e := hc b mb
    have z : ∀ k : K, ∫⁻ t, (∫⁻ u, ∫⁻ p, b (nn p * ι u * mm t * k.1) ∂μN ∂μH) * χ t ∂μT = 0 := fun k => by
      have m : Measurable fun t => ∫⁻ u, ∫⁻ p, b (nn p * ι u * mm t * k.1) ∂μN ∂μH := by
        refine Measurable.lintegral_prod_right' (f := fun z : T × H => ∫⁻ p, b (nn p * ι z.2 * mm z.1 * k.1) ∂μN) ?_
        exact Measurable.lintegral_prod_right' (f := fun z : (T × H) × N => b (nn z.2 * ι z.1.2 * mm z.1.1 * k.1)) (by fun_prop)
      have := (lintegral_eq_zero_iff m).1 ((B1 k.1).trans h0)
      refine (lintegral_congr_ae ?_).trans lintegral_zero
      filter_upwards [this] with t ht
      rw [ht]; simp
    simp only [z, lintegral_zero, mul_eq_zero, c0, false_or] at e
    rw [hb, lintegral_indicator_one hCK.measurableSet] at e
    exact (Measure.measure_pos_of_mem_nhds ν (Filter.mem_of_superset hC1 fun x hx => (⟨x, hx, 1, one_mem K, mul_one x⟩ : x ∈ C * (K : Set G)))).ne' e
  have e1 := key (fun x => f (x * g)) (by fun_prop) (fun p u t x => by rw [mul_assoc _ x g, hP]) 1
  have e2 := key f hf hP g⁻¹
  rw [← lintegral_mul_right_eq_self _ g] at e2
  simp only [mul_inv_cancel_right, mul_one] at e1 e2
  exact (ENNReal.mul_left_inj B0 Bt).1 (e1.symm.trans e2)

include ν μH μT in
theorem int (h : Par μN nn ι mm χ) (hR : ∀ p, ∃ R : N → N, MeasurePreserving R μN μN ∧ ∀ x, nn x * nn p = nn (R x))
    {K : Subgroup G} (hK : IsCompact (K : Set G)) (μK : Measure K) [μK.IsHaarMeasure]
    (hG : ∀ g, ∃ p u t, ∃ k ∈ K, g = nn p * ι u * mm t * k) {f : G → ℂ} (hf : Continuous f)
    (hP : ∀ p u t x, f (nn p * ι u * mm t * x) * ((χ t : ℝ) : ℂ) = f x) (g : G) : ∫ k, f (k.1 * g) ∂μK = ∫ k, f k.1 ∂μK := by
  haveI : CompactSpace K := isCompact_iff_compactSpace.1 hK
  have re : ∀ f : G → ℝ, Continuous f → (∀ p u t x, f (nn p * ι u * mm t * x) * (χ t : ℝ) = f x) →
      ∫ k, f (k.1 * g) ∂μK = ∫ k, f k.1 ∂μK := fun f hf hP => by
    have a : ∀ f : G → ℝ, Continuous f → (∀ p u t x, f (nn p * ι u * mm t * x) * (χ t : ℝ) = f x) →
        ∫⁻ k, ENNReal.ofReal (f (k.1 * g)) ∂μK = ∫⁻ k, ENNReal.ofReal (f k.1) ∂μK := fun f hf hP =>
      lint ν μH μT h hR hK μK hG (f := fun x => ENNReal.ofReal (f x)) hf.measurable.ennreal_ofReal (fun p u t x => by
        rw [← hP p u t x, ENNReal.ofReal_mul' (χ t).coe_nonneg]; simp) g
    rw [integral_eq_lintegral_pos_part_sub_lintegral_neg_part
        ((by fun_prop : Continuous fun k : K => f (k.1 * g)).integrable_of_hasCompactSupport (HasCompactSupport.of_compactSpace _)),
      integral_eq_lintegral_pos_part_sub_lintegral_neg_part
        ((by fun_prop : Continuous fun k : K => f k.1).integrable_of_hasCompactSupport (HasCompactSupport.of_compactSpace _)),
      a f hf hP, a (fun x => -f x) hf.neg fun p u t x => by rw [neg_mul, hP]]
  have i1 := (by fun_prop : Continuous fun k : K => f (k.1 * g)).integrable_of_hasCompactSupport (μ := μK)
    (HasCompactSupport.of_compactSpace _)
  have i2 := (by fun_prop : Continuous fun k : K => f k.1).integrable_of_hasCompactSupport (μ := μK)
    (HasCompactSupport.of_compactSpace _)
  refine Complex.ext ?_ ?_
  · have := re (fun x => (f x).re) (by fun_prop) fun p u t x => by rw [← hP p u t x]; simp
    exact (Complex.reCLM.integral_comp_comm i1).symm.trans (this.trans (Complex.reCLM.integral_comp_comm i2))
  · have := re (fun x => (f x).im) (by fun_prop) fun p u t x => by rw [← hP p u t x]; simp
    exact (Complex.imCLM.integral_comp_comm i1).symm.trans (this.trans (Complex.imCLM.integral_comp_comm i2))

end PositivityTheory.ThKG.Loc.KInv

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.ThetaLifts.LocalTheory.UnramifiedCohomology.Lint =====

-- ===== clump member: Development.WeilBound.ThetaLifts.LocalTheory.UnramifiedCohomology.KAtCompact =====
-- clump-header: {"m": "Development.WeilBound.ThetaLifts.LocalTheory.UnramifiedCohomology.KAtCompact", "h": "module\n\npublic import Development.WeilBound.ThetaLifts.SmallCones.ThetaUniq\npublic import Development.WeilBound.ThetaLifts.LocalTheory.ConeShifts.EvFinIdemSelf\nimport Development.AbelianVarietyTheory.Definitions.Foundations.MeasurePreservingRmulQuotMeas\nimport Development.AbelianVarietyTheory.Proofs.UnitaryExistence.LcscAdelicUnitaryGroup\npublic import Development.WeilBound.CoreStatements.CompactAveragingSplitting.EigenvectorLifting.Kcompact\npublic import Development.WeilBound.ThetaLifts.CartanFactorisation.Unimod\npublic import Development.WeilBound.ThetaLifts.LocalTheory.UnramifiedCohomology.Lint\npublic import Development.WeilBound.ThetaLifts.SmallCones.FcCols\nimport Development.WeilBound.ThetaLifts.SmallCones.MatCancel\nimport Development.WeilBound.ThetaLifts.TowerModels.LeviAd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Divisors.MatchingOfParts\npublic import Development.WeilBound.ThetaLifts.SmallCones.ColsOfMul\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PositivityTheory.ThKG.Loc.KInv

open scoped TensorProduct NNReal ENNReal Matrix Pointwise
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK PositivityTheory.ThKCT PositivityTheory.ThKCT.Unf PositivityTheory.ThKG.Loc.Cone
open GlobalTheory.Doubling (absE)

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}

attribute [local instance] PositivityTheory.ThK.kc_ring PositivityTheory.ThK.adele_t2Space PositivityTheory.ThK.kc_smul

theorem push {G : Type} [Group G] [TopologicalSpace G] [IsTopologicalGroup G] [T2Space G] [SecondCountableTopology G]
    [MeasurableSpace G] [BorelSpace G] {K K' : Subgroup G} (hK : IsCompact (K : Set G)) [CompactSpace K'] (π : K →* K')
    (hc : Continuous π) (hs : Function.Surjective π) (μ : Measure K') [μ.IsHaarMeasure] :
    ∃ (μK : Measure K) (_ : μK.IsHaarMeasure) (c : ℝ≥0), ∀ f : K' → ℂ, Continuous f → ∫ k, f k ∂μ = c • ∫ k, f (π k) ∂μK := by
  haveI : CompactSpace K := isCompact_iff_compactSpace.1 hK
  haveI : ((Measure.haar : Measure K).map π).IsHaarMeasure := Measure.isHaarMeasure_map_of_isFiniteMeasure _ π hc hs
  refine ⟨Measure.haar, inferInstance, Measure.haarScalarFactor μ ((Measure.haar : Measure K).map π), fun f hf => ?_⟩
  rw [← integral_map hc.measurable.aemeasurable hf.aestronglyMeasurable, ← integral_smul_nnreal_measure,
    ← Measure.isMulLeftInvariant_eq_smul]

namespace Tp

alias ae_ring := _root_.PositivityTheory.ThK.kc_ring
alias ae_smul := _root_.PositivityTheory.ThK.kc_smul
theorem ae_top : T2Space (AE F E) ∧ LocallyCompactSpace (AE F E) ∧ SecondCountableTopology (AE F E) := by
  haveI := GlobalTheory.AdelicUnitaryTop.t2Space_adeleRing_numberField F
  haveI := GlobalTheory.AdelicUnitaryTop.secondCountable_adele F
  obtain ⟨e⟩ := GlobalTheory.AdelicUnitaryTop.nonempty_homeomorph (F := F) (E := E) (AF F)
  exact ⟨e.isEmbedding.t2Space, e.isClosedEmbedding.locallyCompactSpace, e.secondCountableTopology⟩
alias ae_t2 := _root_.PositivityTheory.ThK.adele_t2Space
theorem ae_lc : LocallyCompactSpace (AE F E) := ae_top.2.1
theorem ae_sc : SecondCountableTopology (AE F E) := ae_top.2.2

attribute [local instance] ae_ring ae_smul ae_t2 ae_lc ae_sc

theorem units_top {A : Type} [Ring A] [TopologicalSpace A] [IsTopologicalRing A] [T2Space A] [LocallyCompactSpace A]
    [SecondCountableTopology A] : LocallyCompactSpace Aˣ ∧ SecondCountableTopology Aˣ := by
  haveI : SecondCountableTopology Aᵐᵒᵖ := MulOpposite.opHomeomorph.symm.secondCountableTopology
  haveI : LocallyCompactSpace Aᵐᵒᵖ := MulOpposite.opHomeomorph.symm.isClosedEmbedding.locallyCompactSpace
  exact ⟨Units.isClosedEmbedding_embedProduct.locallyCompactSpace, Units.isEmbedding_embedProduct.secondCountableTopology⟩

theorem ua_top {n : ℕ} (J : Matrix (Fin n) (Fin n) E) : LocallyCompactSpace (UA σ J) ∧ SecondCountableTopology (UA σ J) := by
  haveI : LocallyCompactSpace (Matrix (Fin n) (Fin n) (AE F E)) := inferInstanceAs (LocallyCompactSpace (Fin n → Fin n → AE F E))
  haveI : SecondCountableTopology (Matrix (Fin n) (Fin n) (AE F E)) :=
    inferInstanceAs (SecondCountableTopology (Fin n → Fin n → AE F E))
  obtain ⟨h1, h2⟩ := units_top (A := Matrix (Fin n) (Fin n) (AE F E))
  have hc : Continuous (cA σ) := IsModuleTopology.continuous_of_linearMap (cA σ).toLinearMap
  have : IsClosed ((UG (cA σ) (incM F J) : Subgroup (GL (Fin n) (AE F E))) : Set (GL (Fin n) (AE F E))) :=
    isClosed_eq (((Units.continuous_val.matrix_transpose).matrix_mul continuous_const).matrix_mul
      (Units.continuous_val.matrix_map hc)) continuous_const
  exact ⟨this.locallyCompactSpace, TopologicalSpace.Subtype.secondCountableTopology _⟩

end Tp

namespace US

variable {n : ℕ} {X : Spc F E n}


variable (σ X) in
def uSub (v : Pl F) : Subgroup (UA σ X.J) where
  carrier := UAt σ X (evFin F v)
  one_mem' := fun u _ => by rw [show mat (1 : UA σ X.J) = 1 from rfl, sub_self, smul_zero]
  mul_mem' := fun {a b} ha hb u hu => by
    have e : mat (a * b) - 1 = (mat a - 1) * mat b + (mat b - 1) := by
      rw [show mat (a * b) = mat a * mat b from rfl, Matrix.sub_mul, Matrix.one_mul]; abel
    rw [e, smul_add, ← Matrix.smul_mul, ha u hu, hb u hu, Matrix.zero_mul, add_zero]
  inv_mem' := fun {a} ha u hu => by
    have h1 : mat a⁻¹ * mat a = 1 := a.1.inv_mul
    have e : mat a⁻¹ - 1 = -(mat a⁻¹ * (mat a - 1)) := by rw [Matrix.mul_sub, h1, Matrix.mul_one]; abel
    rw [e, smul_neg, ← Matrix.mul_smul, ha u hu, Matrix.mul_zero, neg_zero]

theorem kAt_eq (K : Subgroup (UA σ X.J)) (v : Pl F) : kAt K (evFin F v) = K ⊓ uSub σ X v :=
  congrArg (K ⊓ ·) (Subgroup.closure_eq (uSub σ X v))

theorem kAt_mem {K : Subgroup (UA σ X.J)} {v : Pl F} (k : kAt K (evFin F v)) : k.1 ∈ UAt σ X (evFin F v) :=
  ((kAt_eq K v).le k.2).2

end US

section Part

variable {n : ℕ} {J : Matrix (Fin n) (Fin n) E} {a : AF F} (ha : a * a = a)

theorem part_mul (g h : UA σ J) : partU ha (g * h) = partU ha g * partU ha h :=
  Cone.mat_inj (mix_mul ha (mat g) (mat h)).symm

theorem cont_part : Continuous (partU (σ := σ) (J := J) ha) := by
  have c := PositivityTheory.ThK.kc_cont_mat (F := F) (σ := σ) J
  refine Continuous.subtype_mk (Units.continuous_iff.2 ⟨?_, ?_⟩) _
  · exact (c.const_smul a).add continuous_const
  · exact ((c.comp continuous_inv).const_smul a).add continuous_const

theorem part_vec (g : UA σ J) (z : Fin n → AE F E) : mat (partU ha g) *ᵥ z = a • (mat g *ᵥ z) + (1 - a) • z := by
  rw [mat_partU, Matrix.add_mulVec, Matrix.smul_mulVec, Matrix.smul_mulVec, Matrix.one_mulVec]

def partI (t : (AE F E)ˣ) : (AE F E)ˣ :=
  ⟨a • t.1 + (1 - a) • 1, a • (t⁻¹).1 + (1 - a) • 1,
    by rw [mix_mul ha, Units.mul_inv, ← add_smul, add_sub_cancel, one_smul],
    by rw [mix_mul ha, Units.inv_mul, ← add_smul, add_sub_cancel, one_smul]⟩

end Part

variable {B : Base F E} {n n₁ : ℕ} {Y : Spc F E n} {Y₁ : Spc F E n₁} {H : Plane E n n₁} {i₀ i₁ r s : ℕ}

theorem part_levi {a : AF F} (ha : a * a = a) {t : (AE F E)ˣ} {g : UA σ Y₁.J} {m : UA σ Y.J} (h : IsLevi H t g m) :
    IsLevi H (partI ha t) (partU ha g) (partU ha m) := by
  refine ⟨?_, ?_, ?_⟩
  · rw [part_vec, h.1]
    simp only [partI, add_smul, smul_assoc, one_smul]
  · rw [part_vec, h.2.1]
    change _ = cA σ (a • (t⁻¹).1 + (1 - a) • 1) • _
    simp only [map_add (f := _), map_smul, map_one, add_smul, smul_assoc, one_smul]
  · simp only [mat_partU, Matrix.add_mul, Matrix.mul_add, Matrix.smul_mul, Matrix.mul_smul, h.2.2, Matrix.one_mul, Matrix.mul_one]

theorem part_unip {a : AF F} (ha : a * a = a) {u : UA σ Y.J} (h : u ∈ unip σ Y H) : partU ha u ∈ unip σ Y H := by
  obtain ⟨h1, h2⟩ := Fr.mem_unip.1 h
  refine Fr.mem_unip.2 ⟨by rw [part_vec, h1, ← add_smul, add_sub_cancel, one_smul], fun z => ?_⟩
  obtain ⟨c, hc⟩ := h2 z
  refine ⟨a • c, ?_⟩
  rw [part_vec, hc, smul_add, smul_assoc, sub_smul, one_smul]
  abel

theorem part_at {v : Pl F} {g : UA σ Y.J} (hg : g ∈ UAt σ Y (evFin F v)) : partU (idem_mul_self v) g = g := by
  have h := hg (1 - idem F v) (by rw [map_sub, map_one, Cone.evFin_idem_self, sub_self])
  refine Cone.mat_inj (sub_left_inj (a := 1) |>.1 ?_)
  rw [partU_sub_one]
  rw [sub_smul, one_smul, sub_eq_zero] at h
  exact h.symm

theorem htEx (hB : B.IsGood σ) (hY : Y.IsHerm σ B r s) (hH : H.IsAdapted σ B Y Y₁ i₀ i₁) {K : Subgroup (UA σ Y.J)}
    (hI : Iwa H K) {N : Type} [TopologicalSpace N] {nn : N → UA σ Y.J} {ι : UA σ Y₁.J →* UA σ Y.J} {mm : (AE F E)ˣ →* UA σ Y.J}
    (hemb : IsClosedEmbedding fun z : N × UA σ Y₁.J × (AE F E)ˣ => nn z.1 * ι z.2.1 * mm z.2.2)
    (hu : ∀ u, u ∈ unip σ Y H ↔ ∃ p, u = nn p) (hL : ∀ t g, IsLevi H t g (ι g * mm t)) :
    (∀ x, ∃ p u t, ∃ k ∈ K, x = nn p * ι u * mm t * k) ∧
    (∀ q g₁ t, mat (nn q * ι g₁ * mm t) *ᵥ incV F H.x = t.1 • incV F H.x) ∧
    ∃ ht : UA σ Y.J → ℝ≥0, Continuous ht ∧ (∀ x, ht x ≠ 0) ∧ (∀ x, ∀ k ∈ K, ht (x * k) = ht x) ∧
      ∀ (p : UA σ Y.J) (t : (AE F E)ˣ), mat p *ᵥ incV F H.x = t.1 • incV F H.x → ∀ x, ht (p * x) = absE F E t ^ (n₁ + 1) * ht x := by
  obtain ⟨ε', A', hfr⟩ := Fr.isFr hB (.inl hY) hH
  have hd := Fr.det_ne (.inl hY : Y.IsHerm σ B r s ∨ Y.IsSkew σ B r s)
  have dec : ∀ (p : UA σ Y.J) (t : (AE F E)ˣ), mat p *ᵥ incV F H.x = t.1 • incV F H.x → ∃ q g₁, p = nn q * ι g₁ * mm t :=
    fun p t hp => by
      obtain ⟨u, hu', g₁, m, hm, e, -⟩ := Fr.stab_dec hB.cm hfr hd p t hp
      obtain ⟨q, rfl⟩ := (hu u).1 hu'
      exact ⟨q, g₁, by rw [e, Fr.levi_uniq hfr hm (hL t g₁), mul_assoc]⟩
  have act : ∀ q g₁ t, mat (nn q * ι g₁ * mm t) *ᵥ incV F H.x = t.1 • incV F H.x := fun q g₁ t => by
    rw [mul_assoc, Fr.mat_mul, ← Matrix.mulVec_mulVec, (hL t g₁).1, Matrix.mulVec_smul, (Fr.mem_unip.1 ((hu _).2 ⟨q, rfl⟩)).1]
  have hG : ∀ x, ∃ p u t, ∃ k ∈ K, x = nn p * ι u * mm t * k := fun x => by
    obtain ⟨p, k, l, hk, hp, rfl⟩ := hI.2 x
    obtain ⟨q, g₁, rfl⟩ := dec p l hp
    exact ⟨q, g₁, l, k, hk, rfl⟩
  have inv : ∀ (p : UA σ Y.J) (t : (AE F E)ˣ), mat p *ᵥ incV F H.x = t.1 • incV F H.x →
      mat p⁻¹ *ᵥ incV F H.x = (t⁻¹).1 • incV F H.x := fun p t hp => by
    have := Fr.mat_cancel p (incV F H.x)
    rw [hp, Matrix.mulVec_smul] at this
    conv_rhs => rw [← this, smul_smul, Units.inv_mul, one_smul]
  have le1 : ∀ k ∈ K, ∀ t : (AE F E)ˣ, mat k *ᵥ incV F H.x = t.1 • incV F H.x → absE F E t ≤ 1 := fun k hk t ht => by
    obtain ⟨C, hC⟩ := ((hemb.isCompact_preimage hI.1).image
      (GlobalTheory.Doubling.continuous_absE.comp (continuous_snd.comp continuous_snd))).bddAbove
    have pw : ∀ j : ℕ, mat (k ^ j) *ᵥ incV F H.x = (t ^ j).1 • incV F H.x := fun j => by
      induction j with
      | zero => simp [Fr.mat_one]
      | succ j ih => rw [pow_succ, Fr.mat_mul, ← Matrix.mulVec_mulVec, ht, Matrix.mulVec_smul, ih, smul_smul, pow_succ',
          Units.val_mul]
    by_contra hlt
    obtain ⟨j, hj⟩ := pow_unbounded_of_one_lt C (not_le.1 hlt)
    obtain ⟨q, g₁, e⟩ := dec _ _ (pw j)
    have : absE F E (t ^ j) ≤ C := hC ⟨(q, g₁, t ^ j), by
      change nn q * ι g₁ * mm (t ^ j) ∈ K
      rw [← e]; exact pow_mem hk j, rfl⟩
    rw [map_pow] at this
    exact absurd hj (not_lt.2 this)
  have one : ∀ k ∈ K, ∀ t : (AE F E)ˣ, mat k *ᵥ incV F H.x = t.1 • incV F H.x → absE F E t = 1 := fun k hk t ht => by
    have a1 := le1 k hk t ht
    have a2 := le1 _ (inv_mem hk) _ (inv k t ht)
    have a3 : absE F E t * absE F E t⁻¹ = 1 := by rw [← map_mul, mul_inv_cancel, map_one]
    exact le_antisymm a1 (a3 ▸ mul_le_of_le_one_right zero_le a2)
  refine ⟨hG, act, ?_⟩
  choose P U T k₀ hk₀ hx using hG
  let ht : UA σ Y.J → ℝ≥0 := fun x => absE F E (T x) ^ (n₁ + 1)
  have spec : ∀ q g₁ t, ∀ k ∈ K, ht (nn q * ι g₁ * mm t * k) = absE F E t ^ (n₁ + 1) := fun q g₁ t k hk => by
    have e := hx (nn q * ι g₁ * mm t * k)
    set x := nn q * ι g₁ * mm t * k with hxd
    have h1 : (nn q * ι g₁ * mm t)⁻¹ * (nn (P x) * ι (U x) * mm (T x)) = k * (k₀ x)⁻¹ := by
      rw [← mul_left_inj (k₀ x), mul_assoc, ← e, hxd]; group
    have := one _ (mul_mem hk (inv_mem (hk₀ x))) (T x * t⁻¹) (by
      rw [← h1, Fr.mat_mul, ← Matrix.mulVec_mulVec, act, Matrix.mulVec_smul, inv _ _ (act q g₁ t), smul_smul, Units.val_mul])
    have h2 : absE F E (T x) = absE F E t := by rw [← inv_mul_cancel_right (T x) t, map_mul, this, one_mul]
    simp only [ht, h2]
  have htK : ∀ x, ∀ k ∈ K, ht (x * k) = ht x := fun x k hk => by
    conv_lhs => rw [hx x, mul_assoc, spec _ _ _ _ (mul_mem (hk₀ x) hk)]
  have htP : ∀ (p : UA σ Y.J) (t : (AE F E)ˣ), mat p *ᵥ incV F H.x = t.1 • incV F H.x → ∀ x,
      ht (p * x) = absE F E t ^ (n₁ + 1) * ht x := fun p t hp x => by
    obtain ⟨q, g₁, e⟩ := dec (p * (nn (P x) * ι (U x) * mm (T x))) (t * T x) (by
      rw [Fr.mat_mul, ← Matrix.mulVec_mulVec, act, Matrix.mulVec_smul, hp, smul_smul, Units.val_mul, mul_comm])
    conv_lhs => rw [hx x, ← mul_assoc, e, spec _ _ _ _ (hk₀ x), map_mul, mul_pow]
  have ht0 : ∀ t : (AE F E)ˣ, absE F E t ≠ 0 := fun t => ((Group.isUnit t).map (absE F E)).ne_zero
  have htc : Continuous ht := continuous_iff_isClosed.2 fun C hC => by
    have : ht ⁻¹' C = ((fun z : N × UA σ Y₁.J × (AE F E)ˣ => nn z.1 * ι z.2.1 * mm z.2.2) ''
        {z | absE F E z.2.2 ^ (n₁ + 1) ∈ C}) * (K : Set (UA σ Y.J)) := by
      ext x
      constructor
      · exact fun h => ⟨_, ⟨(P x, U x, T x), h, rfl⟩, k₀ x, hk₀ x, (hx x).symm⟩
      · rintro ⟨_, ⟨z, hz, rfl⟩, k, hk, rfl⟩
        change ht _ ∈ C
        rw [spec _ _ _ _ hk]; exact hz
    rw [this]
    exact (hemb.isClosedMap _ (hC.preimage ((GlobalTheory.Doubling.continuous_absE.comp
      (continuous_snd.comp continuous_snd)).pow _))).mul_right_of_isCompact hI.1
  exact ⟨ht, htc, fun x => pow_ne_zero _ (ht0 _), htK, htP⟩

theorem part_comm {v : Pl F} {g : UA σ Y.J} (hg : g ∈ UAt σ Y (evFin F v)) (k : UA σ Y.J) :
    k * g = partU (idem_mul_self v) k * g * ((partU (idem_mul_self v) k)⁻¹ * k) := by
  have ha := idem_mul_self v
  obtain ⟨c, hc⟩ : ∃ c, c = (partU ha k)⁻¹ * k := ⟨_, rfl⟩
  have c1 : partU ha c = 1 := by
    rw [hc, part_mul, ← part_at (inv_mem (show partU ha k ∈ US.uSub σ Y v from partU_idem_mem v _) :
      _ ∈ US.uSub σ Y v)]
    nth_rewrite 1 [part_at (inv_mem (show partU ha k ∈ US.uSub σ Y v from partU_idem_mem v _) : _ ∈ US.uSub σ Y v)]
    rw [part_at (inv_mem (show partU ha k ∈ US.uSub σ Y v from partU_idem_mem v _) : _ ∈ US.uSub σ Y v),
      inv_mul_cancel]
  have c2 : idem F v • (mat c - 1) = 0 := by rw [← partU_sub_one ha, c1, Fr.mat_one, sub_self]
  have c3 : idem F v • (mat g - 1) = mat g - 1 := by rw [← partU_sub_one ha, part_at hg]
  have c4 : g * c = c * g := Cone.mat_inj (by
    have l : (mat g - 1) * (mat c - 1) = 0 := by rw [← c3, smul_mul_assoc, ← mul_smul_comm, c2, mul_zero]
    have r : (mat c - 1) * (mat g - 1) = 0 := by rw [← c3, mul_smul_comm, ← smul_mul_assoc, c2, zero_mul]
    rw [Fr.mat_mul, Fr.mat_mul, ← sub_eq_zero, ← sub_self (0 : Matrix _ _ _)]
    nth_rewrite 1 [← l]
    rw [← r]
    noncomm_ring)
  rw [← hc, mul_assoc, c4, hc]; group


theorem kInv (hB : B.IsGood σ) (hY : Y.IsHerm σ B r s) (hH : H.IsAdapted σ B Y Y₁ i₀ i₁) {K : Subgroup (UA σ Y.J)}
    (hK : IsStab B K) (hI : Iwa H K) (v : Pl F) (μ : Measure (kAt K (evFin F v))) [μ.IsHaarMeasure] {f : UA σ Y.J → ℂ}
    (hf : ContinuousOn f (UAt σ Y (evFin F v)))
    (hP : ∀ u ∈ unip σ Y H, u ∈ UAt σ Y (evFin F v) → ∀ t g₁ m, IsLevi (W₁ := Y₁) H t g₁ m → m ∈ UAt σ Y (evFin F v) →
      g₁ ∈ UAt σ Y₁ (evFin F v) → At (evFin F v) (t.1 - 1) →
      ∀ x ∈ UAt σ Y (evFin F v), f (u * m * x) = ((absE F E t ^ (n₁ + 1) : ℝ≥0) : ℝ) * f x)
    {g : UA σ Y.J} (hg : g ∈ UAt σ Y (evFin F v)) : ∫ k, f (k.1 * g) ∂μ = ∫ k, f k.1 ∂μ := by
  obtain ⟨N, _, _, _, _, μN, _, _, nn, ι, mm, χ, hpar, hχ, hu, hL, hR, -⟩ := parEx hB (.inl hY) hH
  obtain ⟨ε', A', hfr⟩ := Fr.isFr hB (.inl hY) hH
  have hd := Fr.det_ne (.inl hY : Y.IsHerm σ B r s ∨ Y.IsSkew σ B r s)
  have hd₁ : IsUnit Y₁.J.det := hfr.isUnit_det hd.isUnit
  have h₁ : ∀ i j, σ (Y₁.J j i) = (((1 : ℤˣ) : ℤ) : E) * Y₁.J i j := fun i j => by
    rw [← hH.gram]

    simp only [Matrix.mul_apply, Matrix.transpose_apply, Matrix.map_apply, map_sum, map_mul, hY.herm,
    PositivityTheory.ThKG.Tow.Levi.sig_sig hB.cm, Finset.sum_mul, Units.val_one, Int.cast_one, one_mul]
    rw [Finset.sum_comm]
    exact Finset.sum_congr rfl fun _ _ => Finset.sum_congr rfl fun _ _ => by ring
  obtain ⟨-, ⟨ν, -, hν, -⟩, hνr⟩ := PositivityTheory.ThKF.unimodularity_holds F E σ hB.cm n Y.J 1 (fun i j => by simp [hY.herm]) hd
  obtain ⟨-, ⟨μH, -, hμH, -⟩, hμr⟩ := PositivityTheory.ThKF.unimodularity_holds F E σ hB.cm n₁ Y₁.J 1 h₁ hd₁.ne_zero
  haveI := hνr ν hν
  haveI := hμr μH hμH
  haveI := (Tp.ua_top (F := F) (σ := σ) Y.J).1
  haveI := (Tp.ua_top (F := F) (σ := σ) Y.J).2
  haveI := (Tp.ua_top (F := F) (σ := σ) Y₁.J).1
  haveI := (Tp.ua_top (F := F) (σ := σ) Y₁.J).2
  haveI := Tp.ae_lc (F := F) (E := E)
  haveI := Tp.ae_sc (F := F) (E := E)
  haveI := (Tp.units_top (A := AE F E)).1
  haveI := (Tp.units_top (A := AE F E)).2
  haveI : BorelSpace (UA σ Y.J) := ⟨rfl⟩
  haveI : BorelSpace (UA σ Y₁.J) := ⟨rfl⟩
  haveI : BorelSpace (AE F E)ˣ := ⟨rfl⟩
  haveI := PositivityTheory.ThKG.Loc.Cone.Fin.kAt_compact hI.1 v
  obtain ⟨hG, act, ht, htc, ht1, htK, htP⟩ := htEx hB hY hH hI hpar.emb hu hL
  have ht0 : ∀ t : (AE F E)ˣ, absE F E t ≠ 0 := fun t => ((Group.isUnit t).map (absE F E)).ne_zero
  have ha := idem_mul_self v
  have htne : ∀ x, ((ht x : ℝ) : ℂ) ≠ 0 := fun x => by exact_mod_cast ht1 x
  let f' : UA σ Y.J → ℂ := fun x => f (partU ha x) * ((ht x : ℝ) : ℂ) / ((ht (partU ha x) : ℝ) : ℂ)
  have hc1 : Continuous fun x => ((ht x : ℝ) : ℂ) := by fun_prop
  have hf' : Continuous f' := ((hf.comp_continuous (cont_part ha) (partU_idem_mem v)).mul hc1).div (hc1.comp (cont_part ha))
    fun x => htne _
  let π : K →* kAt K (evFin F v) := MonoidHom.mk' (fun k => ⟨partU ha k.1, partU_mem_kAt hK k.2 v⟩)
    fun a b => Subtype.ext (part_mul ha _ _)
  have πc : Continuous π := ((cont_part ha).comp continuous_subtype_val).subtype_mk _
  have πs : Function.Surjective π := fun k => ⟨⟨k.1, k.2.1⟩, Subtype.ext (part_at (US.kAt_mem k))⟩
  obtain ⟨μK, _, c, hc⟩ := push hI.1 π πc πs μ
  have main := KInv.int ν μH Measure.haar hpar hR hI.1 μK hG hf' (fun p u t x => by
    have hl := part_levi ha (hL t u)
    have hn := part_unip ha ((hu _).2 ⟨p, rfl⟩)
    have e1 : partU ha (nn p * ι u * mm t * x) = partU ha (nn p) * partU ha (ι u * mm t) * partU ha x := by
      rw [mul_assoc (nn p), part_mul, part_mul]
    have e2 := hP _ hn (partU_idem_mem v _) _ _ _ hl (partU_idem_mem v _) (partU_idem_mem v _) (by
      change At _ (idem F v • t.1 + (1 - idem F v) • 1 - 1)
      rw [show idem F v • t.1 + (1 - idem F v) • (1 : AE F E) - 1 = idem F v • (t.1 - 1) by
        rw [smul_sub, sub_smul, one_smul]; abel]
      exact Cone.at_idem v _) _ (partU_idem_mem v x)
    have e3 := htP (partU ha (nn p) * partU ha (ι u * mm t)) (partI ha t) (by
      rw [Fr.mat_mul, ← Matrix.mulVec_mulVec, hl.1, Matrix.mulVec_smul, (Fr.mem_unip.1 hn).1]) (partU ha x)
    have e4 : (((χ t : ℝ≥0) : ℝ) : ℂ) * (((absE F E t ^ (n₁ + 1) : ℝ≥0) : ℝ) : ℂ) = 1 := by exact_mod_cast hχ t
    have e5 : (((absE F E (partI ha t) ^ (n₁ + 1) : ℝ≥0) : ℝ) : ℂ) ≠ 0 := by exact_mod_cast pow_ne_zero _ (ht0 _)
    have e6 := htne (partU ha x)
    simp only [f', e1, e2, e3, htP _ _ (act p u t), NNReal.coe_mul, Complex.ofReal_mul]
    field_simp
    linear_combination (f (partU ha x) * ((ht x : ℝ) : ℂ)) * e4)
  have val : ∀ g ∈ UAt σ Y (evFin F v), ∀ k : K, f' (k.1 * g) = f ((π k).1 * g) := fun g hg k => by
    have e1 : partU ha (k.1 * g) = partU ha k.1 * g := by rw [part_mul, part_at hg]
    have e2 := part_comm hg k.1
    have e3 : ht (k.1 * g) = ht (partU ha k.1 * g) := by
      conv_lhs => rw [e2, htK _ _ (mul_mem (inv_mem (partU_mem_kAt hK k.2 v).1) k.2)]
    simp only [f', e1, e3]
    exact mul_div_cancel_right₀ _ (htne _)
  have tr : ∀ g ∈ UAt σ Y (evFin F v), ∫ k, f (k.1 * g) ∂μ = c • ∫ k : K, f' (k.1 * g) ∂μK := fun g hg => by
    rw [hc (fun k => f (k.1 * g)) (hf.comp_continuous (continuous_subtype_val.mul continuous_const)
      fun k => (US.uSub σ Y v).mul_mem (US.kAt_mem k) hg)]
    simp only [val g hg]
  have t1 := tr 1 (US.uSub σ Y v).one_mem
  simp only [mul_one] at t1
  rw [tr g hg, main g, t1]

end PositivityTheory.ThKG.Loc.KInv

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.ThetaLifts.LocalTheory.UnramifiedCohomology.KAtCompact =====

-- ===== clump member: Development.WeilBound.ThetaLifts.LocalTheory.UnramifiedCohomology.SpanSoLoc =====
-- clump-header: {"m": "Development.WeilBound.ThetaLifts.LocalTheory.UnramifiedCohomology.SpanSoLoc", "h": "module\n\npublic import Development.WeilBound.ThetaLifts.SmallCones.SoDefs\npublic import Development.WeilBound.ThetaLifts.LocalTheory.ConeShifts.CoefficientSpans\npublic import Development.WeilBound.ThetaLifts.LocalTheory.ConeShifts.IdealStmt\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfComponentTensorAdelicFunctionEq\nimport Development.WeilBound.CoreStatements.CompactAveragingSplitting.EigenvectorLifting.Kcompact\npublic import Development.WeilBound.CoreStatements.LocallyConstantCoinvariants.FullOfSoLoc\nimport Development.WeilBound.ThetaLifts.CartanFactorisation.TensOfEval\npublic import Development.WeilBound.ThetaLifts.LocalTheory.ConeShifts.KAtCompact\nimport Development.WeilBound.ThetaLifts.LocalTheory.ConeShifts.PureCancel\npublic import Development.WeilBound.ThetaLifts.SmallCones.MatCancel\nimport GroundTheory.GlobalFields.CompletionAtPlace.Integers\nimport GroundTheory.LocalFields.PadicLogSeries\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PositivityTheory.ThKG.Loc.FL

open scoped TensorProduct NNReal Matrix nonZeroDivisors GlobalTheory.VacAny Classical
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.LatVac PositivityTheory.ThKG.Loc.Cone PositivityTheory.ThKG.Loc.Cone.Fin PositivityTheory.ThKCT
open GlobalTheory.Doubling (absE)

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E} {n d n₁ d₁ : ℕ}
  {X : Spc F E n} {W : Spc F E d} {X₁ : Spc F E n₁} {W₁ : Spc F E d₁}

attribute [local instance] PositivityTheory.ThK.kc_ring PositivityTheory.ThK.adele_t2Space PositivityTheory.ThK.kc_smul

theorem tate' (hI : IdeleFub) (hJ : IdealId0) (hS : StabEx) {B : Base F E} {M : Model σ X W} {M₁ : Model σ X₁ W₁}
    {H : Plane E n n₁} {H' : Plane E d d₁} {e u ei ev} (hc : Cfg B M M₁ H H' e u) (h : IsEvLoc M M₁ e ei ev) (v : Pl F)
    {K : Subgroup (UA σ X.J)} (m : LocMeas K) (hm : m.Is) {ν : Chr F E} (hν : Continuous ν) {z : ℕ} (hz : 2 ≤ z)
    {φ : Fl F v n d} (hφ : φ ∈ SB _) :
    (Set.range fun l : idAt E (evFin F v) => ev v (rv B M v (idem F v • u l.1) φ)).Finite ∧
      IsLocallyConstant (fun l : idAt E (evFin F v) => ev v (rv B M v (idem F v • u l.1) φ)) ∧
      @IntegrableOn _ _ (borel _) _ _ (fun l : idAt E (evFin F v) => wt ν z l.1)
        {l | ev v (rv B M v (idem F v • u l.1) φ) ≠ 0} (m.xf v) := by
  letI : MeasurableSpace (idAt E (evFin F v)) := borel _
  haveI : BorelSpace (idAt E (evFin F v)) := ⟨rfl⟩
  haveI := (hm.xf v).1
  obtain ⟨V₀, V₁, c, hu, -, -, hinv, hcomp⟩ := dirs hc
  obtain ⟨r, s, hX⟩ := hc.herm
  obtain ⟨r', s', hW⟩ := hc.skew
  obtain ⟨i, j, hH⟩ := hc.hH
  obtain ⟨i', j', hH'⟩ := hc.hH'
  obtain ⟨𝔞, h𝔞, hin⟩ := hJ F E σ B n d n₁ d₁ X W X₁ W₁ H H' r s r' s' i j i' j' hc.base hX hW hH hH' u
    (hc.ev.imp And.right And.right)
  obtain ⟨-, -, μ, -, -, -, hμ⟩ := hS F E σ B n X r s hc.base hX
  obtain ⟨πi, π, κ, -, hπ, hF⟩ := hI F E σ B n X K m μ hc.base hm hμ 𝔞 z h𝔞 hz
  have hint := ((hF 1 ∅ ∅ continuous_const (Finset.Subset.refl _) (fun w _ x _ => map_one Circle.toUnits)
    (fun w hw => absurd hw (Finset.notMem_empty _))).1 v (Finset.notMem_empty v)).2
  obtain ⟨N, hN, hfix⟩ := exists_level hc.base hX hW M v hφ
  obtain ⟨C, hC, hCΓ⟩ := lat_compact hX hW M v
  let g : (Fin n × Fin d → Fv F v) × (Fin n × Fin d → Fv F v) → Fl F v n₁ d₁ := fun w => ev v (schr (psiAt B.ψ v) w φ)
  have hg : IsLocallyConstant g := (schr_lc (psi_lc hc.base v) fun w => rv_sb hc.base M v w hφ).comp (ev v)
  have e1 : ∀ l : (AE F E)ˣ, locCo M.co v (idem F v • u l) = locCo M.co v (c l.1 • V₀) := fun l => by
    rw [locCo_smul, evFin_idem, one_smul, hu]
  have hG : IsLocallyConstant fun l : idAt E (evFin F v) => ev v (rv B M v (idem F v • u l.1) φ) := by
    simp only [rv, e1]
    exact hg.comp_continuous ((cont_loc M v c V₀).comp (Units.continuous_val.comp continuous_subtype_val))
  have hk : ∀ l : (AE F E)ˣ, ev v (rv B M v (idem F v • u l) φ) ≠ 0 → (N : AF F) • idem F v • u l ∈ latAtV X W v := fun l hl => by
    have e2 : idem F v • u l = (idem F v • c l.1) • V₀ := by rw [hu, smul_assoc]
    rw [e2] at hl ⊢
    exact key hc h hinv (hcomp v) hφ N (fun t ht => hfix _ ht) _ (e2 ▸ Cone.at_idem v _) hl
  have hN' : (N : Fv F v) ≠ 0 := by
    haveI : CharZero (Fv F v) := algebraRat.charZero _
    exact Nat.cast_ne_zero.2 hN
  refine ⟨?_, hG, ?_⟩
  · haveI := isCompact_iff_compactSpace.1 hC
    have hf := (hg.comp_continuous ((continuous_subtype_val (p := (· ∈ C))).const_smul (N : Fv F v)⁻¹)).range_finite
    refine (hf.insert 0).subset ?_
    rintro _ ⟨l, rfl⟩
    by_cases h0 : ev v (rv B M v (idem F v • u l.1) φ) = 0
    · exact Or.inl h0
    · refine Or.inr ⟨⟨_, hCΓ _ (hk _ h0)⟩, ?_⟩
      change g ((N : Fv F v)⁻¹ • locCo M.co v ((N : AF F) • idem F v • u l.1)) = _
      rw [locCo_smul M v (N : AF F), map_natCast, inv_smul_smul₀ hN']
  · have hNE : (N : E) ≠ 0 := Nat.cast_ne_zero.2 hN
    let lN : (AE F E)ˣ := Units.map (inclR (F := F) (AF F)).toMonoidHom (Units.mk0 (N : E) hNE)
    let l₀ := π v lN
    have hl₀ : (l₀.1 : AE F E) = idem F v • (N : AE F E) + (1 - idem F v) • (1 : AE F E) := by
      have := (hπ lN).2 v
      rw [IsPart, show (lN : AE F E) = (N : AE F E) from map_natCast (inclR (F := F) (AF F)) N] at this
      exact this
    have e3 : ∀ l : idAt E (evFin F v), idem F v • u (l₀ * l).1 = (N : AF F) • idem F v • u l.1 := fun l => by
      rw [hu, hu, ← smul_assoc, ← smul_assoc, ← smul_assoc]
      congr 1
      have q : algebraMap (AF F) (AE F E) (idem F v) * algebraMap (AF F) (AE F E) (idem F v) =
          algebraMap (AF F) (AE F E) (idem F v) := by rw [← map_mul, idem_sq]
      rw [Subgroup.coe_mul, Units.val_mul, map_mul, hl₀, map_add (f := _), map_smul, map_smul, map_natCast, map_one]
      simp only [Algebra.smul_def, map_mul, map_sub, map_one, map_natCast, Algebra.algebraMap_self]
      linear_combination ((N : AE F E) * c l.1.1 - c l.1.1) * q
    have h0 : (0 : ℝ) < absE F E l₀.1 := by
      refine lt_of_le_of_ne NNReal.zero_le_coe fun e => ?_
      have : absE F E l₀.1 * absE F E l₀.1⁻¹ = 1 := by rw [← map_mul, mul_inv_cancel, map_one]
      rw [show absE F E l₀.1 = 0 from NNReal.coe_eq_zero.1 e.symm, zero_mul] at this
      exact zero_ne_one this
    refine Integrable.mono' (((hint.comp_mul_left l₀).norm.const_mul (((absE F E l₀.1 : ℝ) ^ z)⁻¹)).integrableOn)
      ((cont_wt hν z).comp continuous_subtype_val).aestronglyMeasurable
      (ae_restrict_of_forall_mem (hG.isClosed_fiber 0).measurableSet.compl fun l hl => ?_)
    have := (hin v (l₀ * l).1).1 (e3 l ▸ hk _ hl)
    rw [if_pos this, one_mul, norm_wt, norm_wt, Subgroup.coe_mul, map_mul, NNReal.coe_mul, mul_pow,
      inv_mul_cancel_left₀ (pow_pos h0 z).ne']

theorem int_lin {α Y : Type} [MeasurableSpace α] (μ : Measure α) (G : α → Y → ℂ) (w : α → ℂ) (hf : (Set.range G).Finite)
    (hm : ∀ g, MeasurableSet {a | G a = g}) (D : Set α) (hD : ∀ a ∉ D, G a = 0) (hw : IntegrableOn w D μ)
    (l : (Y → ℂ) →ₗ[ℂ] ℂ) : l (fun y => ∫ a, G a y * w a ∂μ) = ∫ a, l (G a) * w a ∂μ := by
  let Φ : (Y → ℂ) → Option Y → ℂ := fun g o => o.elim (l g) g
  have inj : Function.Injective Φ := fun g g' e => funext fun y => congrFun e (some y)
  have := (int_fin μ (fun a => Φ (G a)) w ((hf.image Φ).subset (by rintro _ ⟨a, rfl⟩; exact ⟨_, ⟨a, rfl⟩, rfl⟩))
    (fun g => by
      by_cases h : ∃ g', Φ g' = g
      · obtain ⟨g', rfl⟩ := h
        simpa only [inj.eq_iff] using hm g'
      · have he : {a | Φ (G a) = g} = ∅ :=
          Set.eq_empty_of_forall_notMem fun a ha => h ⟨G a, ha⟩
        rw [he]
        exact MeasurableSet.empty) D
    (fun a ha => by rw [hD a ha]; funext o; cases o <;> simp [Φ]) hw
    (LinearMap.ker (LinearMap.proj none - l ∘ₗ LinearMap.funLeft ℂ ℂ some)) fun a => by
      rw [LinearMap.mem_ker, LinearMap.sub_apply, sub_eq_zero]; rfl).2
  exact (sub_eq_zero.1 this).symm

theorem ev_loc {B : Base F E} {M : Model σ X W} {M₁ : Model σ X₁ W₁} (hM : M.IsGood B.ψ) (hM₁ : M₁.IsGood B.ψ)
    {e ei ev} (h : IsEvLoc M M₁ e ei ev) {v : Pl F} {S S₁} {c : ℂ} (he : ∀ Φ ∈ schA F _, e (S Φ) = c • S₁ (e Φ))
    {φ φ' : Fl F v n d} (hφ : φ ∈ SB _) (hφ' : φ' ∈ SB _) (hS : Acts (evFin F v) S φ φ') {ψ}
    (hS₁ : Acts (evFin F v) S₁ (ev v φ) ψ) : ev v φ' = c • ψ := by
  obtain ⟨f, hf⟩ : ∃ f, ei f ≠ 0 := by
    by_contra hn
    push Not at hn
    exact h.ne (ContinuousLinearMap.ext hn)
  have gen : ∀ {n d : ℕ} {X : Spc F E n} {W : Spc F E d} {M : Model σ X W}, M.IsGood B.ψ → ∀ a : Fl F v n d, a ∈ SB _ →
      (∀ u, Function.update M.vac v a u ∈ SB _) ∧ (∀ᶠ u in cofinite, Function.update M.vac v a u = M.vac u) ∧
      ∀ᶠ u in cofinite, Function.update M.vac v a u = Set.indicator {x | ∀ i, x i ∈ u.adicCompletionIntegers F} 1 := by
    intro n d X W M hM a ha
    have cf : ∀ᶠ u in cofinite, Function.update M.vac v a u = M.vac u := by
      filter_upwards [(Set.finite_singleton v).compl_mem_cofinite] with u hu using Function.update_of_ne hu _ _
    refine ⟨fun u => ?_, cf, by filter_upwards [cf, hM.std] with u a b using a.trans b⟩
    by_cases e : u = v
    · subst e; rwa [Function.update_self]
    · rw [Function.update_of_ne e]; exact (hM.vac u).1
  have up : ∀ a : Fl F v n d, (fun u => ev u (Function.update M.vac v a u)) = Function.update M₁.vac v (ev v a) := fun a =>
    funext fun u => by
      by_cases e : u = v
      · subst e; rw [Function.update_self, Function.update_self]
      · rw [Function.update_of_ne e, Function.update_of_ne e, (h.vac u).1]
  have hev : ev v φ ∈ SB _ := (h.vac v).2 ▸ Submodule.mem_map_of_mem hφ
  obtain ⟨s1, c1, t1⟩ := gen hM φ hφ
  obtain ⟨s2, c2, -⟩ := gen hM φ' hφ'
  obtain ⟨s3, -, t3⟩ := gen hM₁ _ hev
  have h1 := (PositivityTheory.ThKF.pureAct F _ v S f _ s1 t1).2.2 φ' (by rwa [Function.update_self])
  obtain ⟨-, lin, h3⟩ := PositivityTheory.ThKF.pureAct F _ v S₁ (ei f) _ s3 t3
  have h3' := h3 ψ (by rwa [Function.update_self])
  have l0 := lin 0 0 1
  have l1 := lin 0 ψ c
  simp only [Function.update_idem, smul_zero, add_zero, one_smul, zero_add, left_eq_add] at l0 l1 h3'
  have h2 := he _ (GlobalTheory.TensUniq.pure_mem_schA f _ s1 t1)
  rw [h1, Function.update_idem, h.pure f _ s2 c2, h.pure f _ s1 c1, up, up, h3'] at h2
  rw [l0, zero_add] at l1
  exact pure_cancel (fun u => (hM₁.vac u).2.1) hM₁.std v hf (h2.trans l1.symm)

theorem loc_form {V : Type} [AddCommGroup V] [Module (AF F) V] {Bf : V → V → AF F} {κ : Type} [Fintype κ] (co : Darboux Bf κ)
    (v : Pl F) (x u : V) :
    (locCo co v x).1 ⬝ᵥ (locCo co v u).2 - (locCo co v u).1 ⬝ᵥ (locCo co v x).2 = evFin F v (Bf x u) := by
  rw [co.form]

  simp [GlobalTheory.LatVac.locCo, dotProduct, map_sum, map_mul, map_sub]

theorem rv_add (B : Base F E) (M : Model σ X W) (v : Pl F) {x : Fin d → E} (hx : form σ W.J x x = 0) (p q : Fin n → AE F E)
    (φ : Fl F v n d) : rv B M v (Matrix.vecMulVec (p + q) (incV F x)) φ =
      rv B M v (Matrix.vecMulVec p (incV F x)) (rv B M v (Matrix.vecMulVec q (incV F x)) φ) := by
  have h0 : hTens (cA σ) (incM F X.J) (incM F W.J) (Matrix.vecMulVec p (incV F x)) (Matrix.vecMulVec q (incV F x)) = 0 := by
    have e : ∑ j, ∑ l, incV F x j * incM F W.J j l * cA σ (incV F x l) = 0 := by
      have := congrArg (inclR (F := F) (AF F)) hx
      rw [map_zero] at this
      rw [← this]

      simp only [form, dotProduct, Matrix.mulVec, map_sum, map_mul, Finset.mul_sum, mul_assoc]
      rfl
    calc _ = ∑ i, ∑ k, p i * incM F X.J i k * cA σ (q k) * ∑ j, ∑ l, incV F x j * incM F W.J j l * cA σ (incV F x l) := by
          simp only [hTens, Matrix.vecMulVec_apply, map_mul, Finset.mul_sum]
          refine Finset.sum_congr rfl fun i _ => ?_
          rw [Finset.sum_comm]
          refine Finset.sum_congr rfl fun k _ => Finset.sum_congr rfl fun j _ => Finset.sum_congr rfl fun l _ => by ring
      _ = 0 := by simp [e]
  rw [rv, rv, rv, schr_mul, loc_form, symp, h0, Matrix.add_vecMulVec, map_add (f := _)]
  simp

theorem span_soLoc (hL : LinEx) {B : Base F E} (hB : B.IsGood σ) {r s r' s'} (hX : X.IsHerm σ B r s) (hW : W.IsSkew σ B r' s')
    (M : Model σ X W) {v : Pl F} (t : E →ₐ[F] Fv F v) {φ} (h : φ ∈ Submodule.span ℂ (M.SoLoc B.ψ t)) : φ ∈ M.SoLoc B.ψ t := by
  obtain ⟨⟨ι, hι⟩, -⟩ := hL F E σ B n d X W M r s r' s' hB hX hW v t
  refine ⟨(Submodule.span_le.2 fun χ (hχ : χ ∈ M.SoLoc B.ψ t) => hχ.1 : _ ≤ SB _) h, ι, hι, fun Y hY => ?_⟩
  have : Submodule.span ℂ (M.SoLoc B.ψ t) ≤ LinearMap.ker (LinearMap.proj Y ∘ₗ ι) := Submodule.span_le.2 fun χ hχ =>
    PositivityTheory.KCo.full_of_soLoc M hB.cm hB.std (Fr.det_ne (.inl hX)) (Fr.det_ne (.inr hW)) hι hχ Y hY
  exact this h

end PositivityTheory.ThKG.Loc.FL

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.ThetaLifts.LocalTheory.UnramifiedCohomology.SpanSoLoc =====

-- ===== clump member: Development.WeilBound.ThetaLifts.LocalTheory.UnramifiedCohomology.FLocBOf =====
-- clump-header: {"m": "Development.WeilBound.ThetaLifts.LocalTheory.UnramifiedCohomology.FLocBOf", "h": "module\n\npublic import Development.WeilBound.CoreStatements.CompactAveragingSplitting.EigenvectorLifting.InertDef\npublic import Development.WeilBound.ThetaLifts.LocalTheory.ConeShifts.CoefficientSpans\npublic import Development.WeilBound.ThetaLifts.LocalTheory.ConeShifts.IdealStmt\npublic import Development.WeilBound.ThetaLifts.LocalTheory.UnramifiedDeterminedBySpherical\npublic import Development.WeilBound.ThetaLifts.SmallCones.SoDefs\nimport Development.WeilBound.CoreStatements.CompactAveragingSplitting.EigenvectorLifting.Kcompact\npublic import Development.WeilBound.CoreStatements.LocalThetaKernels.Locrep\nimport Development.WeilBound.ThetaLifts.CartanFactorisation.TensOfEval\npublic import Development.WeilBound.ThetaLifts.LeviDeterminants.ActsEx\npublic import Development.WeilBound.ThetaLifts.LocalTheory.AdmissiblePureTensorSchwartz\npublic import Development.WeilBound.ThetaLifts.LocalTheory.ConeShifts.KAtCompact\nimport Development.WeilBound.ThetaLifts.LocalTheory.ConeShifts.PureCancel\npublic import Development.WeilBound.ThetaLifts.LocalTheory.UnramifiedCohomology.KAtCompact\npublic import Development.WeilBound.ThetaLifts.LocalTheory.UnramifiedCohomology.SpanSoLoc\nimport Development.WeilBound.ThetaLifts.SmallCones.MatCancel\nimport Development.WeilBound.ThetaLifts.TowerModels.LeviAd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.WeilBound.ThetaLifts.LocalTheory.ConeShifts.EvFinIdemSelf\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PositivityTheory.ThKG.Loc.FL

open scoped TensorProduct NNReal Matrix nonZeroDivisors GlobalTheory.VacAny Classical
open NumberField IsDedekindDomain MeasureTheory Filter Topology Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.ThK GlobalTheory.LatVac PositivityTheory.ThKG.Loc.Cone PositivityTheory.ThKG.Loc.Cone.Fin PositivityTheory.ThKCT
open GlobalTheory.Doubling (absE)

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E} {n d n₁ d₁ : ℕ}
  {X : Spc F E n} {W : Spc F E d} {X₁ : Spc F E n₁} {W₁ : Spc F E d₁}

attribute [local instance] PositivityTheory.ThK.kc_ring PositivityTheory.ThK.adele_t2Space PositivityTheory.ThK.kc_smul

variable {B : Base F E} {M : Model σ X W} {M₁ : Model σ X₁ W₁} {H : Plane E n n₁} {H' : Plane E d d₁} {v : Pl F}

theorem point {e ei ev} (hc : Cfg B M M₁ H H' e (shiftB σ H H')) (he : IsEv B M M₁ H.ι H'.ι (isoB H H') e)
    (h : IsEvLoc M M₁ e ei ev) {om : Rep σ X W} {om₁ : Rep σ X₁ W₁} {χX χW : Chr F E} {rX rW : ℝ}
    (hx : Mix2 H H' χX χW rX rW om om₁ e) {ω ρ ω₁ ρ₁} (L : PositivityTheory.ThK.IsLocRep M B.ψ om v ω ρ)
    (L₁ : PositivityTheory.ThK.IsLocRep M₁ B.ψ om₁ v ω₁ ρ₁) (l : Fl F v n₁ d₁ →ₗ[ℂ] ℂ) (hl : augAt om₁ v ≤ LinearMap.ker l)
    {u m : UA σ X.J} (hu : u ∈ unip σ X H) (hu' : u ∈ UAt σ X (evFin F v)) {t g₁} (hm : IsLevi (W₁ := X₁) H t g₁ m)
    (hm' : m ∈ UAt σ X (evFin F v)) (hg : g₁ ∈ UAt σ X₁ (evFin F v)) {ψ} (hψ : ψ ∈ SB _) (a : (AE F E)ˣ) :
    l (ev v (rv B M v (idem F v • shiftB σ H H' a) (ω (u * m, 1) ψ))) =
      (χW t : ℂ) * (((absE F E t : ℝ) ^ rX : ℝ) : ℂ) * l (ev v (rv B M v (idem F v • shiftB σ H H' (t * a)) ψ)) := by
  obtain ⟨r, s, hX⟩ := hc.herm
  obtain ⟨i, j, hH⟩ := hc.hH
  obtain ⟨i', j', hH'⟩ := hc.hH'
  obtain ⟨ε, A', hfr⟩ := Fr.isFr hc.base (.inl hX) hH
  have hp : u * m ∈ uSub σ X v := mul_mem (show u ∈ uSub σ X v from hu') hm'
  have o : (1 : UA σ W.J) ∈ UAt σ W (evFin F v) := (uSub σ W v).one_mem
  have o₁ : (1 : UA σ W₁.J) ∈ UAt σ W₁ (evFin F v) := (uSub σ W₁ v).one_mem
  obtain ⟨z, c, hz⟩ := (Fr.IsFr.ad hfr).fix_y (PositivityTheory.ThKG.Tow.Levi.cA_cA hc.base.cm) (u⁻¹).2 (Fr.mem_unip.1 (inv_mem hu)).1
  have hmi := Fr.levi_inv hm
  let x' := incV F H'.x
  let P₁ : Fin n → AE F E := idem F v • ((cA σ a.1 * c * (t⁻¹).1) • incV F H.x)
  let P₂ : Fin n → AE F E := idem F v • (incM F H.ι *ᵥ (cA σ a.1 • (mat g₁⁻¹ *ᵥ z)))
  let P₃ : Fin n → AE F E := idem F v • (cA σ (t * a).1 • incV F H.y)
  have sh : ∀ b : (AE F E)ˣ, idem F v • shiftB σ H H' b = Matrix.vecMulVec (idem F v • (cA σ b.1 • incV F H.y)) x' := fun b => by
    rw [shiftB, Matrix.smul_vecMulVec, Matrix.smul_vecMulVec]
  have atv : ∀ P : Fin n → AE F E, At (evFin F v) (Matrix.vecMulVec (idem F v • P) x') := fun P => by
    rw [Matrix.smul_vecMulVec]; exact Cone.at_idem v _
  have e1 : mat (u * m)⁻¹ *ᵥ (idem F v • (cA σ a.1 • incV F H.y)) = P₁ + (P₂ + P₃) := by
    have hz' : mat u⁻¹ *ᵥ incV F H.y = incV F H.y + incM F H.ι *ᵥ z + c • incV F H.x := hz
    rw [Matrix.mulVec_smul, Matrix.mulVec_smul, mul_inv_rev, Fr.mat_mul, ← Matrix.mulVec_mulVec, hz', Matrix.mulVec_add,
      Matrix.mulVec_add, Matrix.mulVec_smul, hmi.1, hmi.2.1, Fr.levi_vec hmi, inv_inv]
    simp only [P₁, P₂, P₃, ← smul_add, Matrix.mulVec_smul, Units.val_mul, map_mul]
    congr 1
    simp only [smul_add, smul_smul, mul_assoc, mul_comm (cA σ t.1)]
    abel
  have at0 : At (evFin F v) (Matrix.vecMulVec (P₁ + (P₂ + P₃)) x') := by
    simp only [P₁, P₂, P₃, ← smul_add]; exact atv _
  have rr : ∀ w, At (evFin F v) w → ∀ φ ∈ SB _, rv B M v w φ = ρ w φ := fun w hw φ hφ =>
    (L.actsH w hw φ hφ _).1 (rv_acts B M hw φ)
  have e2 := L.impl _ hp 1 o _ at0 ψ hψ
  rw [← e1, Matrix.mul_vecMulVec, Fr.mat_cancel', Fr.mat_one, Matrix.transpose_one, Matrix.mul_one, e1, ← rr _ at0 ψ hψ,
    ← rr _ (atv _) _ (L.pres _ hp 1 o ψ hψ)] at e2
  rw [sh, ← e2, sh]
  set ψ' := rv B M v (Matrix.vecMulVec (P₁ + (P₂ + P₃)) x') ψ with hψ'
  have s' : ψ' ∈ SB _ := rv_sb hc.base M v _ hψ
  have hev : ev v ψ' ∈ SB _ := (h.vac v).2 ▸ Submodule.mem_map_of_mem s'
  have e3 := ev_loc hc.good hc.good₁ h (S := om (u * m, 1)) (S₁ := om₁ (g₁, 1)) (fun Φ hΦ => by
      have := hx t g₁ m hm u hu 1 1 1 Fr.levi_one 1 (one_mem _) Φ hΦ
      rwa [mul_one (1 : UA σ W.J)] at this) s' (L.pres _ hp 1 o _ s') ((L.acts _ hp 1 o _ s' _).2 rfl)
    ((L₁.acts _ hg 1 o₁ _ hev _).2 rfl)
  have e4 : l (ω₁ (g₁, 1) (ev v ψ')) = l (ev v ψ') := by
    have := hl (Submodule.subset_span ⟨g₁, hg, _, hev, _, L₁.pres _ hg 1 o₁ _ hev, (L₁.acts _ hg 1 o₁ _ hev _).2 rfl, rfl⟩)
    rwa [LinearMap.mem_ker, map_sub, sub_eq_zero] at this
  have e5 : ev v ψ' = ev v (rv B M v (Matrix.vecMulVec P₃ x') ψ) := by
    rw [hψ', rv_add B M v hH'.xx, rv_add B M v hH'.xx,
      ev_inv hc.base hc.good hc.good₁ h (atv _) (he.inv _ (.inl ⟨idem F v • ((cA σ a.1 * c * (t⁻¹).1) • x'), by
        rw [Matrix.smul_vecMulVec, Matrix.smul_vecMulVec, Matrix.vecMulVec_smul, Matrix.vecMulVec_smul]⟩))
        (rv_sb hc.base M v _ (rv_sb hc.base M v _ hψ)),
      ev_inv hc.base hc.good hc.good₁ h (atv _) (he.inv _ (.inr ⟨idem F v • (cA σ a.1 • (mat g₁⁻¹ *ᵥ z)), by
        rw [Matrix.mulVec_smul _ (idem F v)]⟩)) (rv_sb hc.base M v _ hψ)]
  rw [e3, map_smul, e4, e5]
  change _ = _ * l (ev v (rv B M v (Matrix.vecMulVec P₃ x') ψ))
  generalize l (ev v (rv B M v (Matrix.vecMulVec P₃ x') ψ)) = q
  simp

theorem fLocB_of (hI : IdeleFub) (hJ : IdealId0) (hS : StabEx) (hIw : IwaEx) (hMx : MixAB) (hT : PositivityTheory.ThKEst.TriplePair)
    (hSt : SoStab) (hSe : SoEv) (hLi : LinEx) : FLocB := by
  intro F E _ _ _ _ _ σ B a b G G₁ H H' c e ei ev he h K m hK hm X om om' om₁ om₁' T T₁
  have hc : Cfg B G.M' G₁.M' H H' e (shiftB σ H H') :=
    ⟨T.base, ⟨_, _, T.geo.hV'⟩, ⟨_, _, T.geo.hW⟩, ⟨_, _, T₁.geo.hV'⟩, ⟨_, _, T₁.geo.hW⟩, T.geo.hM', T₁.geo.hM',
      ⟨_, _, c.hH⟩, ⟨_, _, c.hH'⟩, .inr ⟨he, rfl⟩⟩
  obtain ⟨-, hP, -⟩ := hT F E σ B _ _ G X om om' T
  obtain ⟨-, hP₁, -⟩ := hT F E σ B _ _ G₁ X om₁ om₁' T₁
  have b1 := T.geo.eBig
  have b2 := T.geo.aBig
  have b3 := T.geo.lt
  obtain ⟨ee, hee⟩ := T.geo.even
  have b4 := c.ep
  have b5 := c.eq
  have hν : Continuous X.ν := hP.hW.1
  set z := (a - (b + 2)) / 2 + 1 with hzd
  have hz : 2 ≤ z := by omega
  have hzr : ((a + (b + 2) : ℕ) : ℝ) / 2 = (b + 1 : ℕ) + (z : ℝ) := by
    have : a + (b + 2) = 2 * (b + 1 + z) := by omega
    rw [this]; push_cast; ring
  have hx := (hMx F E σ B _ _ _ _ _ _ _ _ H H' _ _ _ _ G₁.q (b - G₁.q) (a + b - (G₁.p + G₁.q)) (G₁.p + G₁.q) G.M' G₁.M' c.hH c.hH'
    X.α (X.α / X.β) om' om₁' (by convert hP using 1 <;> omega) hP₁).2 e he
  set v := B.v₁
  obtain ⟨ω, ρ, L⟩ := PositivityTheory.ThKH.Locrep.locRepEx F E σ _ _ B _ _ _ om' ⟨hP.base, ⟨_, _, hP.herm⟩, ⟨_, _, hP.skew⟩, hP.good, _, _, hP.weil⟩ v
  obtain ⟨ω₁, ρ₁, L₁⟩ := PositivityTheory.ThKH.Locrep.locRepEx F E σ _ _ B _ _ _ om₁'
    ⟨hP₁.base, ⟨_, _, hP₁.herm⟩, ⟨_, _, hP₁.skew⟩, hP₁.good, _, _, hP₁.weil⟩ v
  have hIK := hIw F E σ B _ _ _ _ _ H T.base T.geo.hV' (fun e => by simpa [e, form] using c.hH.xy) c.hH.xx K hK
  haveI := kAt_compact hIK.1 v
  haveI : BorelSpace (UA σ G.V'.J) := ⟨rfl⟩
  haveI : IsProbabilityMeasure (m.kf v) := ⟨(hm.kf v).2⟩
  haveI := (hm.kf v).1
  letI : MeasurableSpace (idAt E (evFin F v)) := borel _
  haveI : BorelSpace (idAt E (evFin F v)) := ⟨rfl⟩
  haveI := (hm.xf v).1
  have o1 : (1 : UA σ G.W.J) ∈ UAt σ G.W (evFin F v) := (uSub σ G.W v).one_mem
  have sb : ∀ k ∈ UAt σ G.V' (evFin F v), ∀ φ ∈ SB _, ω (k, 1) φ ∈ SB _ := fun k hk φ hφ => L.pres _ hk _ o1 φ hφ
  have op : ∀ (k : kAt K (evFin F v)) (l : (AE F E)ˣ), ∀ φ ∈ SB _,
      opF v (fun Φ => G.M'.co.rho B.ψ (idem F v • shiftB σ H H' l) (om' (k.1, 1) Φ)) φ =
        rv B G.M' v (idem F v • shiftB σ H H' l) (ω (k.1, 1) φ) :=
    fun k l φ hφ => opF_eq hφ (rv_sb hc.base G.M' v _ (sb _ (kAt_mem k) φ hφ)) (acts_comp ((IsUWeilPair.isUSplitting hP.weil).pres _)
      ((L.acts _ (kAt_mem k) _ o1 φ hφ _).2 rfl) (rv_acts B _ (Fin.at_idem v _) _))
  let A : Fl F v _ _ → Fl F v _ _ := fun φ y => ∫ l : idAt E (evFin F v),
    ev v (rv B G.M' v (idem F v • shiftB σ H H' l.1) φ) y * wt X.ν z l.1 ∂(m.xf v)
  have hA := fun φ (hφ : φ ∈ SB _) => tate' hI hJ hS hc h v m hm hν hz (φ := φ) hφ
  have lc : ∀ φ ∈ SB _, IsLocallyConstant fun k : uSub σ G.V' v => ω (k.1, 1) φ := fun φ hφ => by
    refine (IsLocallyConstant.iff_eventually_eq _).2 fun k₀ => ?_
    obtain ⟨U, hU, hU'⟩ := (PositivityTheory.ThKF0.actsEx F E σ B _ _ _ _ _ _ _ om' _ _ _ _ hP v).2.2 _ (sb _ k₀.2 φ hφ)
    have t : Tendsto (fun k : uSub σ G.V' v => (((k * k₀⁻¹).1, 1) : UA σ G.V'.J × UA σ G.W.J)) (𝓝 k₀) (𝓝 1) := by
      have : Continuous fun k : uSub σ G.V' v => (((k * k₀⁻¹).1, 1) : UA σ G.V'.J × UA σ G.W.J) :=
        (continuous_subtype_val.comp (continuous_mul_const k₀⁻¹)).prodMk continuous_const
      have := this.tendsto k₀
      rwa [mul_inv_cancel] at this
    filter_upwards [t.eventually hU] with k hk
    have h1 := (L.acts _ (k * k₀⁻¹).2 _ o1 _ (sb _ k₀.2 φ hφ) _).1 (hU' _ hk (k * k₀⁻¹).2 o1)
    rw [← L.mul _ (k * k₀⁻¹).2 _ o1 _ k₀.2 _ o1 φ hφ, mul_one, ← Subgroup.coe_mul, inv_mul_cancel_right] at h1
    exact h1.symm
  have lcK : ∀ φ ∈ SB _, IsLocallyConstant fun k : kAt K (evFin F v) => A (ω (k.1, 1) φ) := fun φ hφ =>
    ((lc φ hφ).comp A).comp_continuous (f := fun k : kAt K (evFin F v) => (⟨k.1, kAt_mem k⟩ : uSub σ G.V' v))
      (continuous_subtype_val.subtype_mk _)
  have ce : ∀ φ ∈ SB _, coneF B G.M' om' m v (ev v) (shiftB σ H H') X.ν z φ =
      fun y => ∫ k : kAt K (evFin F v), A (ω (k.1, 1) φ) y * 1 ∂(m.kf v) :=
    fun φ hφ => funext fun y => by
      simp only [coneF, op _ _ φ hφ, A, wt, mul_assoc, mul_one]
  refine ⟨fun g hg φ hφ φ₁ hφ₁ hact l hl => ?_, fun φ hφ => ?_⟩
  · have cl : ∀ φ ∈ SB _, l (coneF B G.M' om' m v (ev v) (shiftB σ H H') X.ν z φ) =
        ∫ k : kAt K (evFin F v), l (A (ω (k.1, 1) φ)) ∂(m.kf v) := fun φ hφ => by
      rw [ce φ hφ, int_lin (m.kf v) (fun k => A (ω (k.1, 1) φ)) (fun _ => 1) (lcK φ hφ).range_finite
        (fun a => ((lcK φ hφ).isOpen_fiber a).measurableSet) Set.univ (fun a ha => absurd trivial ha)
        (integrable_const _).integrableOn l]
      simp only [mul_one]
    have al : ∀ ψ ∈ SB _, l (A ψ) = ∫ s : idAt E (evFin F v),
        l (ev v (rv B G.M' v (idem F v • shiftB σ H H' s.1) ψ)) * wt X.ν z s.1 ∂(m.xf v) := fun ψ hψ =>
      int_lin (m.xf v) _ _ (hA ψ hψ).1 (fun a => ((hA ψ hψ).2.1.isOpen_fiber a).measurableSet) _ (fun a ha => not_not.1 ha)
        (hA ψ hψ).2.2 l
    rw [cl _ hφ₁, cl _ hφ, (L.acts g hg 1 o1 φ hφ _).1 hact]
    have := KInv.kInv T.base T.geo.hV' c.hH hK hIK v (m.kf v) (f := fun x => l (A (ω (x, 1) φ)))
      (continuousOn_iff_continuous_restrict.2 ((lc φ hφ).comp fun ψ => l (A ψ)).continuous)
      (fun u hu hu' t g₁ mm hL hm' hg₁ ht x hxx => by
        have hp : u * mm ∈ uSub σ G.V' v := mul_mem (show u ∈ uSub σ G.V' v from hu') hm'
        have e := L.mul _ hp 1 o1 x hxx 1 o1 φ hφ
        rw [mul_one] at e
        have s1 := sb x hxx φ hφ
        let t₀ : idAt E (evFin F v) := ⟨t, Subgroup.subset_closure ht⟩
        have h0 : (0 : ℝ) < absE F E t := lt_of_le_of_ne NNReal.zero_le_coe
          (Ne.symm (NNReal.coe_ne_zero.2 ((Group.isUnit t).map (absE F E)).ne_zero))
        simp only [e]
        rw [al _ (sb _ hp _ s1), al _ s1, ← integral_mul_left_eq_self (μ := m.xf v) (fun s : idAt E (evFin F v) =>
          l (ev v (rv B G.M' v (idem F v • shiftB σ H H' s.1) (ω (x, 1) φ))) * wt X.ν z s.1) t₀, ← integral_const_mul]
        refine integral_congr_ae (Eventually.of_forall fun s => ?_)
        have n0 : ((absE F E t : ℝ) : ℂ) ≠ 0 := by exact_mod_cast h0.ne'
        simp only [point hc he h hx L L₁ l hl hu hu' hL hm' hg₁ s1, t₀, Subgroup.coe_mul, wt, map_mul, hzr, Real.rpow_add h0,
          Real.rpow_natCast, Chars.ν]
        push_cast
        ring) hg
    rw [← this]
    refine integral_congr_ae (Eventually.of_forall fun k => ?_)
    have e := L.mul _ (kAt_mem k) 1 o1 g hg 1 o1 φ hφ
    rw [mul_one] at e
    simp only [e]
  · obtain ⟨f, hf⟩ : ∃ f, ei f ≠ 0 := by
      by_contra hn
      push Not at hn
      exact h.ne (ContinuousLinearMap.ext hn)
    have s0 := hφ.1
    have gen : ∀ a : Fl F v _ _, a ∈ SB _ → (∀ u, Function.update G.M'.vac v a u ∈ SB _) ∧
        (∀ᶠ u in cofinite, Function.update G.M'.vac v a u = G.M'.vac u) ∧
        ∀ᶠ u in cofinite, Function.update G.M'.vac v a u = Set.indicator {x | ∀ i, x i ∈ u.adicCompletionIntegers F} 1 := by
      intro a ha
      have cf : ∀ᶠ u in cofinite, Function.update G.M'.vac v a u = G.M'.vac u := by
        filter_upwards [(Set.finite_singleton v).compl_mem_cofinite] with u hu using Function.update_of_ne hu _ _
      refine ⟨fun u => ?_, cf, by filter_upwards [cf, hc.good.std] with u a b using a.trans b⟩
      by_cases e : u = v
      · subst e; rwa [Function.update_self]
      · rw [Function.update_of_ne e]; exact (hc.good.vac u).1
    have up : ∀ a : Fl F v _ _, (fun u => ev u (Function.update G.M'.vac v a u)) = Function.update G₁.M'.vac v (ev v a) :=
      fun a => funext fun u => by
        by_cases e : u = v
        · subst e; rw [Function.update_self, Function.update_self]
        · rw [Function.update_of_ne e, Function.update_of_ne e, (h.vac u).1]
    have pt : ∀ (k : kAt K (evFin F v)) (s : (AE F E)ˣ), ev v (rv B G.M' v (idem F v • shiftB σ H H' s) (ω (k.1, 1) φ)) ∈
        Submodule.span ℂ (G₁.M'.SoLoc B.ψ B.τ₁) := fun k s => by
      obtain ⟨g1, g2, g3⟩ := gen φ s0
      have s1 := sb _ (kAt_mem k) φ s0
      obtain ⟨g4, -, g6⟩ := gen _ s1
      have s2 := rv_sb hc.base G.M' v (locCo G.M'.co v (idem F v • shiftB σ H H' s)) s1
      obtain ⟨g7, g8, -⟩ := gen _ s2
      have m0 : pure f (Function.update G.M'.vac v φ) ∈ G.M'.So B.ψ B.τ₁ :=
        Submodule.subset_span ⟨f, _, g1, g2, by rwa [Function.update_self], rfl⟩
      have m1 := hSt F E σ B _ _ _ _ _ _ _ om' _ _ _ _ hP (k.1, 1) _ m0
      rw [(PositivityTheory.ThKF.pureAct F _ v (om' (k.1, 1)) f _ g1 g3).2.2 _ (by
        rw [Function.update_self]; exact (L.acts _ (kAt_mem k) _ o1 φ s0 _).2 rfl), Function.update_idem] at m1
      have m2 := (hSe F E σ B _ _ _ _ _ _ _ _ H H' _ _ _ _ _ _ _ _ G.M' G₁.M' c.hH c.hH' T.base T.geo.hV' T.geo.hW hc.good hc.good₁
        e he _ m1).2 (idem F v • cA σ s.1)
      rw [incM_rk, smul_assoc, show cA σ s.1 • rk F H.y H'.x = shiftB σ H H' s from rfl,
        (PositivityTheory.ThKF.pureAct F _ v (G.M'.co.rho B.ψ (idem F v • shiftB σ H H' s)) f _ g4 g6).2.2 _ (by
          rw [Function.update_self]; exact rv_acts B _ (Fin.at_idem v _) _), Function.update_idem, h.pure f _ g7 g8, up] at m2
      exact so_slice hc.good₁ hf m2
    refine span_soLoc hLi T.base T₁.geo.hV' T₁.geo.hW _ _ ?_
    rw [ce φ s0]
    refine (int_fin (m.kf v) (fun k => A (ω (k.1, 1) φ)) (fun _ => 1) (lcK φ s0).range_finite
      (fun a => ((lcK φ s0).isOpen_fiber a).measurableSet) Set.univ (fun a ha => absurd trivial ha)
      (integrable_const _).integrableOn _ fun k => ?_).2
    have q := hA _ (sb _ (kAt_mem k) φ s0)
    exact (int_fin (m.xf v) _ _ q.1 (fun a => (q.2.1.isOpen_fiber a).measurableSet) _ (fun a ha => not_not.1 ha) q.2.2 _
      fun s => pt k s.1).2

end PositivityTheory.ThKG.Loc.FL

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.ThetaLifts.LocalTheory.UnramifiedCohomology.FLocBOf =====
