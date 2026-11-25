module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstDecomp
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.HJMulVecGen
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.ContinuousUMatApply
public import Formalism.RealPlaceAnalysis.FinalF
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.HaarSub
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstLeftInvMuInf
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.ModOne
public import Formalism.PeriodIntegrals.ScMuExists
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstAll
public import Mathlib.Analysis.CStarAlgebra.Module.Constructions
public import Mathlib.Analysis.InnerProductSpace.PiL2
public import Mathlib.Analysis.InnerProductSpace.Adjoint
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HermitianFrameExistence.Transfer
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorFrameConstruction.LocalFramePreservesOrthogonal
public import Formalism.PeriodIntegrals.ScPiExists
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HermitianFrameExistence.HJSumSmulRight
public import Formalism.SharpRestriction.CuspSpanNormBounds.DiscreteSeriesWeylDimension
public import Formalism.SharpRestriction.CuspSpanNormBounds.BridgeLitG
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.SettingBlocks
public import Formalism.PeriodIntegrals.ScPsiExists
public import Formalism.PeriodIntegrals.ScXuExists
public import Formalism.LocalRingCardinality.IntCastDvdOfDvdIntegers
public import Formalism.LocalRingCardinality.RankBoundMonotoneInDimension
public import Formalism.LocalToGlobal.SiegelLatticeTheory.BesselDiscreteSeries.BesselNVGapPf
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.BunExists
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.ScWlocExists
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.SplitPrimeCounts.LsSetresInt
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.EmbeddingTraceSumAlt.NormUnitsOfCalculation
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ScRefExists
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ScXuExists
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.HCReprodM
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.SplitPrimeCounts.LsSetresSplit
import Formalism.SharpRestriction.GlobalSchurBounds.ThickPlacesCorollaryOfAnyTranslate

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.GenSemiOf, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.GenericWeilRepresentation, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.ContinuousHPart, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.Proper, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.TargetOfInstDecomp, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ScMuExists, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorFrameConstruction.ContinuousOnTensOp, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorFrameConstruction.LocFrame, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorFrameConstruction.InnerOfNorm, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HermitianFrameExistence.PosOfPerp, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HermitianFrameExistence.FrameCore, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HermitianFrameExistence.FrameHolds, Formalism.SharpRestriction.CuspSpanNormBounds.BridgeHW, Formalism.SharpRestriction.CuspSpanNormBounds.HCFiniteKMultiplicityGapped, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.CoefWeightedLocHolds

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.GenSemiOf =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.GenSemiOf", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstDecomp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory
open scoped ENNReal Pointwise

noncomputable section

namespace PI.ScMuExists.UnitaryGroupMassFormula

theorem genSemi_of (hHaar : GenHaarSub) : GenSemi := by
  unfold GenSemi
  intro G _ _ _ _ _ _ _ _ N H hN hH hconj hinvN hprop
  obtain ⟨hσN, -, hcN, htN, hfinN, hposN⟩ := hHaar G N hN
  obtain ⟨hσH, -, hcH, htH, hfinH, hposH⟩ := hHaar G H hH
  set μN := haarSub N hN with hμN
  set μH := haarSub H hH with hμH
  haveI : SigmaFinite μN := hσN
  haveI : SigmaFinite μH := hσH
  have hmul : Measurable (fun p : G × G => p.1 * p.2) := measurable_fst.mul measurable_snd

  have hNH : (N : Set G) * (H : Set G) =
      (fun p : G × G => p.1 * p.2) '' ((N : Set G) ×ˢ (H : Set G)) := by
    ext x
    constructor
    · rintro ⟨a, ha, b, hb, rfl⟩
      exact ⟨(a, b), ⟨ha, hb⟩, rfl⟩
    · rintro ⟨⟨a, b⟩, ⟨ha, hb⟩, rfl⟩
      exact ⟨a, ha, b, hb, rfl⟩
  have hmeasNH : MeasurableSet ((N : Set G) * (H : Set G)) := by
    rw [hNH]
    obtain ⟨K, hK, hKU⟩ := (isSigmaCompact_univ.of_isClosed_subset (hN.prod hH)
      (Set.subset_univ _)).image continuous_mul
    rw [← hKU]
    exact MeasurableSet.iUnion fun n => (hK n).measurableSet

  have hprodc : (μN.prod μH) ((N : Set G) ×ˢ (H : Set G))ᶜ = 0 := by
    rw [Set.compl_prod_eq_union]
    refine measure_union_null ?_ ?_
    · rw [Measure.prod_prod, hcN, zero_mul]
    · rw [Measure.prod_prod, hcH, mul_zero]
  refine ⟨?_, hmeasNH, ?_, ?_, ?_, ?_⟩
  · show SFinite ((μN.prod μH).map (fun p : G × G => p.1 * p.2))
    infer_instance
  · show ((μN.prod μH).map (fun p : G × G => p.1 * p.2)) ((N : Set G) * (H : Set G))ᶜ = 0
    rw [Measure.map_apply hmul hmeasNH.compl]
    refine measure_mono_null ?_ hprodc
    intro p hp hpNH
    exact hp ⟨p.1, hpNH.1, p.2, hpNH.2, rfl⟩
  · rintro t ⟨n0, hn0, h0, hh0, rfl⟩
    show ((μN.prod μH).map (fun p : G × G => p.1 * p.2)).map (fun x => n0 * h0 * x) =
      (μN.prod μH).map (fun p : G × G => p.1 * p.2)
    have hc : Measurable (fun x : G => h0 * x * h0⁻¹) := (measurable_const_mul h0).mul_const _
    have hf : Measurable (fun x : G => n0 * (h0 * x * h0⁻¹)) := (measurable_const_mul n0).comp hc
    have hg : Measurable (fun y : G => h0 * y) := measurable_const_mul h0
    have hfN : μN.map (fun x : G => n0 * (h0 * x * h0⁻¹)) = μN := by
      show μN.map ((fun x : G => n0 * x) ∘ (fun x : G => h0 * x * h0⁻¹)) = μN
      rw [← Measure.map_map (measurable_const_mul n0) hc, hinvN h0 hh0, htN n0 hn0]
    have hgH : μH.map (fun y : G => h0 * y) = μH := htH h0 hh0
    have hPM : Measurable (Prod.map (fun x : G => n0 * (h0 * x * h0⁻¹)) (fun y : G => h0 * y)) :=
      hf.prodMap hg
    have hcomp : (fun x : G => n0 * h0 * x) ∘ (fun p : G × G => p.1 * p.2) =
        (fun p : G × G => p.1 * p.2) ∘
          Prod.map (fun x : G => n0 * (h0 * x * h0⁻¹)) (fun y : G => h0 * y) := by
      funext p
      simp only [Function.comp_apply, Prod.map_fst, Prod.map_snd]
      group
    rw [Measure.map_map (measurable_const_mul _) hmul, hcomp, ← Measure.map_map hmul hPM,
      ← Measure.map_prod_map μN μH hf hg, hfN, hgH]
  · intro U hU h1U
    show 0 < ((μN.prod μH).map (fun p : G × G => p.1 * p.2)) U
    rw [Measure.map_apply hmul hU.measurableSet]
    have hUo : IsOpen ((fun p : G × G => p.1 * p.2) ⁻¹' U) := hU.preimage continuous_mul
    have h11 : ((1 : G), (1 : G)) ∈ (fun p : G × G => p.1 * p.2) ⁻¹' U := by
      show (1 : G) * 1 ∈ U
      rwa [one_mul]
    obtain ⟨u, v, hu, hv, h1u, h1v, huv⟩ := isOpen_prod_iff.mp hUo 1 1 h11
    calc (0 : ℝ≥0∞) < μN u * μH v := ENNReal.mul_pos (hposN u hu h1u).ne' (hposH v hv h1v).ne'
      _ = (μN.prod μH) (u ×ˢ v) := (Measure.prod_prod u v).symm
      _ ≤ _ := measure_mono huv
  · intro C hC
    show ((μN.prod μH).map (fun p : G × G => p.1 * p.2)) C < ⊤
    rw [Measure.map_apply hmul hC.measurableSet]
    have hK := hprop C hC
    set P := {p : G × G | p.1 ∈ N ∧ p.2 ∈ H ∧ p.1 * p.2 ∈ C} with hP
    have hsub : (fun p : G × G => p.1 * p.2) ⁻¹' C ⊆ P ∪ ((N : Set G) ×ˢ (H : Set G))ᶜ := by
      intro p hp
      by_cases h : p ∈ (N : Set G) ×ˢ (H : Set G)
      · exact Or.inl ⟨h.1, h.2, hp⟩
      · exact Or.inr h
    have hPbox : P ⊆ (Prod.fst '' P) ×ˢ (Prod.snd '' P) := fun p hp => ⟨⟨p, hp, rfl⟩, ⟨p, hp, rfl⟩⟩
    have hPfin : (μN.prod μH) P < ⊤ := by
      refine lt_of_le_of_lt (measure_mono hPbox) ?_
      rw [Measure.prod_prod]
      exact ENNReal.mul_lt_top (hfinN _ (hK.image continuous_fst)) (hfinH _ (hK.image continuous_snd))
    calc (μN.prod μH) ((fun p : G × G => p.1 * p.2) ⁻¹' C)
        ≤ (μN.prod μH) (P ∪ ((N : Set G) ×ˢ (H : Set G))ᶜ) := measure_mono hsub
      _ ≤ (μN.prod μH) P + (μN.prod μH) ((N : Set G) ×ˢ (H : Set G))ᶜ := measure_union_le _ _
      _ < ⊤ := by rw [hprodc, add_zero]; exact hPfin

end PI.ScMuExists.UnitaryGroupMassFormula
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.GenSemiOf =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.GenericWeilRepresentation =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.GenericWeilRepresentation", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstDecomp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory
open scoped ENNReal Pointwise

noncomputable section

namespace PI.ScMuExists.UnitaryGroupMassFormula

section Bruhat

variable {G : Type*} [Group G] [TopologicalSpace G] [IsTopologicalGroup G] [LocallyCompactSpace G]
  [T2Space G] [SecondCountableTopology G] [MeasurableSpace G] [BorelSpace G]

theorem exists_bruhat_left (μS : Measure G) [SFinite μS] (S : Set G) (hSc : μS Sᶜ = 0)
    (hinv : ∀ t ∈ S, μS.map (fun x => t * x) = μS)
    (hpos : ∀ U : Set G, IsOpen U → (1 : G) ∈ U → 0 < μS U)
    (hfin : ∀ K : Set G, IsCompact K → μS K < ⊤) :
    ∃ β : G → ℝ≥0∞, Measurable β ∧ ∀ y : G, ∫⁻ s, β (s⁻¹ * y) ∂μS = 1 := by

  obtain ⟨O, hOo, hOc, hcov⟩ : ∃ O : ℕ → Set G, (∀ n, IsOpen (O n)) ∧
      (∀ n, ∃ L : Set G, IsCompact L ∧ O n ⊆ L) ∧ ∀ y : G, ∃ n, y ∈ O n := by
    let K := CompactExhaustion.choice G
    exact ⟨fun n => interior (K (n + 1)), fun n => isOpen_interior,
      fun n => ⟨K (n + 1), K.isCompact _, interior_subset⟩,
      fun y => ⟨K.find y, K.subset_interior_succ _ (K.mem_find y)⟩⟩

  obtain ⟨f, hf⟩ : ∃ f : ℕ → G → ℝ≥0∞,
      ∀ n y, f n y = ∫⁻ s, (O n).indicator (1 : G → ℝ≥0∞) (s⁻¹ * y) ∂μS := ⟨_, fun _ _ => rfl⟩
  have hm : ∀ n y, Measurable (fun s : G => (O n).indicator (1 : G → ℝ≥0∞) (s⁻¹ * y)) :=
    fun n y => (measurable_one.indicator (hOo n).measurableSet).comp (measurable_inv.mul_const y)
  have hfm : ∀ n, Measurable (f n) := by
    intro n
    have h2 : Measurable (fun q : G × G => (O n).indicator (1 : G → ℝ≥0∞) (q.2⁻¹ * q.1)) :=
      (measurable_one.indicator (hOo n).measurableSet).comp (measurable_snd.inv.mul measurable_fst)
    rw [show f n = fun y => ∫⁻ s, (O n).indicator (1 : G → ℝ≥0∞) (s⁻¹ * y) ∂μS from funext (hf n)]
    exact h2.lintegral_prod_right'
  have hf_eq : ∀ n y, f n y = μS ((fun s : G => s⁻¹ * y) ⁻¹' O n) := by
    intro n y
    rw [hf n y, ← lintegral_indicator_one ((hOo n).measurableSet.preimage (measurable_inv.mul_const y))]
    rfl
  have hf_fin : ∀ n y, f n y < ⊤ := by
    intro n y
    obtain ⟨L, hL, hOL⟩ := hOc n
    have hc : IsCompact ((fun k : G => y * k⁻¹) '' L) := hL.image (by fun_prop)
    rw [hf_eq]
    refine lt_of_le_of_lt (measure_mono ?_) (hfin _ hc)
    intro s hs
    exact ⟨s⁻¹ * y, hOL hs, by group⟩
  have hf_pos : ∀ n y, y ∈ O n → 0 < f n y := by
    intro n y hy
    rw [hf_eq]
    refine hpos _ (IsOpen.preimage (f := fun s : G => s⁻¹ * y) (by fun_prop) (hOo n)) ?_
    show (1 : G)⁻¹ * y ∈ O n
    rwa [inv_one, one_mul]
  have hf_inv : ∀ n, ∀ t ∈ S, ∀ y, f n (t⁻¹ * y) = f n y := by
    intro n t ht y
    calc f n (t⁻¹ * y) = ∫⁻ r, (O n).indicator (1 : G → ℝ≥0∞) ((t * r)⁻¹ * y) ∂μS := by
          rw [hf n]
          refine lintegral_congr fun r => ?_
          rw [mul_inv_rev, mul_assoc]
      _ = ∫⁻ r, (O n).indicator (1 : G → ℝ≥0∞) (r⁻¹ * y) ∂(μS.map (fun x => t * x)) :=
          (lintegral_map (hm n y) (measurable_const_mul t)).symm
      _ = f n y := by rw [hinv t ht, hf n y]

  have hZm : Measurable (fun x : G => ∑' n, (2 : ℝ≥0∞)⁻¹ ^ n * (f n x)⁻¹ * f n x) :=
    Measurable.tsum fun n => (measurable_const.mul (hfm n).inv).mul (hfm n)
  have hTm : Measurable (fun x : G =>
      ∑' n, (2 : ℝ≥0∞)⁻¹ ^ n * (f n x)⁻¹ * (O n).indicator (1 : G → ℝ≥0∞) x) :=
    Measurable.tsum fun n =>
      (measurable_const.mul (hfm n).inv).mul (measurable_one.indicator (hOo n).measurableSet)
  refine ⟨fun x => (∑' n, (2 : ℝ≥0∞)⁻¹ ^ n * (f n x)⁻¹ * (O n).indicator (1 : G → ℝ≥0∞) x) *
      (∑' n, (2 : ℝ≥0∞)⁻¹ ^ n * (f n x)⁻¹ * f n x)⁻¹, hTm.mul hZm.inv, fun y => ?_⟩
  have hterm : ∀ n, (2 : ℝ≥0∞)⁻¹ ^ n * (f n y)⁻¹ * f n y ≤ (2 : ℝ≥0∞)⁻¹ ^ n := by
    intro n
    rcases eq_or_ne (f n y) 0 with h | h
    · rw [h, mul_zero]
      exact zero_le
    · rw [mul_assoc, ENNReal.inv_mul_cancel h (hf_fin n y).ne, mul_one]
  have hZtop : (∑' n, (2 : ℝ≥0∞)⁻¹ ^ n * (f n y)⁻¹ * f n y) ≠ ⊤ := by
    refine ne_top_of_le_ne_top ?_ (ENNReal.tsum_le_tsum hterm)
    rw [ENNReal.tsum_geometric, ENNReal.one_sub_inv_two, inv_inv]
    exact ENNReal.ofNat_ne_top
  have hZ0 : (∑' n, (2 : ℝ≥0∞)⁻¹ ^ n * (f n y)⁻¹ * f n y) ≠ 0 := by
    obtain ⟨n, hn⟩ := hcov y
    have hpos' := hf_pos n y hn
    have h1 : (2 : ℝ≥0∞)⁻¹ ^ n * (f n y)⁻¹ * f n y = (2 : ℝ≥0∞)⁻¹ ^ n := by
      rw [mul_assoc, ENNReal.inv_mul_cancel hpos'.ne' (hf_fin n y).ne, mul_one]
    refine ne_of_gt (lt_of_lt_of_le ?_ (ENNReal.le_tsum n))
    rw [h1]
    exact ENNReal.pow_pos (ENNReal.inv_pos.mpr ENNReal.ofNat_ne_top) n
  have hae : ∀ᵐ s ∂μS, s ∈ S := by
    rw [ae_iff]
    exact hSc
  calc ∫⁻ s, (∑' n, (2 : ℝ≥0∞)⁻¹ ^ n * (f n (s⁻¹ * y))⁻¹ *
          (O n).indicator (1 : G → ℝ≥0∞) (s⁻¹ * y)) *
          (∑' n, (2 : ℝ≥0∞)⁻¹ ^ n * (f n (s⁻¹ * y))⁻¹ * f n (s⁻¹ * y))⁻¹ ∂μS
        = ∫⁻ s, (∑' n, (2 : ℝ≥0∞)⁻¹ ^ n * (f n y)⁻¹ *
          (O n).indicator (1 : G → ℝ≥0∞) (s⁻¹ * y)) *
          (∑' n, (2 : ℝ≥0∞)⁻¹ ^ n * (f n y)⁻¹ * f n y)⁻¹ ∂μS := by
        refine lintegral_congr_ae ?_
        filter_upwards [hae] with s hs
        have hs' : ∀ n, f n (s⁻¹ * y) = f n y := fun n => hf_inv n s hs y
        simp only [hs']
    _ = (∫⁻ s, ∑' n, (2 : ℝ≥0∞)⁻¹ ^ n * (f n y)⁻¹ *
          (O n).indicator (1 : G → ℝ≥0∞) (s⁻¹ * y) ∂μS) *
          (∑' n, (2 : ℝ≥0∞)⁻¹ ^ n * (f n y)⁻¹ * f n y)⁻¹ :=
        lintegral_mul_const' _ _ (ENNReal.inv_ne_top.mpr hZ0)
    _ = (∑' n, (2 : ℝ≥0∞)⁻¹ ^ n * (f n y)⁻¹ * f n y) *
          (∑' n, (2 : ℝ≥0∞)⁻¹ ^ n * (f n y)⁻¹ * f n y)⁻¹ := by
        rw [lintegral_tsum fun n => ((hm n y).const_mul _).aemeasurable]
        congr 1
        refine tsum_congr fun n => ?_
        rw [lintegral_const_mul _ (hm n y), ← hf n y]
    _ = 1 := ENNReal.mul_inv_cancel hZ0 hZtop

theorem weil_of_bruhat (μG μS : Measure G) [SFinite μG] [μG.IsMulLeftInvariant] [SFinite μS]
    (S : Set G) (_hS : MeasurableSet S) (hSc : μS Sᶜ = 0)
    (hinv : ∀ t ∈ S, μS.map (fun x => t * x) = μS)
    (hpos : ∀ U : Set G, IsOpen U → (1 : G) ∈ U → 0 < μS U)
    (hfin : ∀ K : Set G, IsCompact K → μS K < ⊤) :
    ∃ ν : Measure G, ∀ f : G → ℝ≥0∞, Measurable f →
      ∫⁻ x, f x ∂μG = ∫⁻ x, (∫⁻ s, f (s * x) ∂μS) ∂ν := by
  obtain ⟨β, hβm, hβ⟩ := exists_bruhat_left μS S hSc hinv hpos hfin
  refine ⟨μG.withDensity β, fun f hf => ?_⟩
  have hF : Measurable (fun x : G => ∫⁻ s, f (s * x) ∂μS) :=
    (hf.comp (measurable_snd.mul measurable_fst)).lintegral_prod_right'
  rw [lintegral_withDensity_eq_lintegral_mul _ hβm hF]
  calc ∫⁻ x, f x ∂μG = ∫⁻ x, (∫⁻ s, β (s⁻¹ * x) ∂μS) * f x ∂μG := by
        simp only [hβ, one_mul]
    _ = ∫⁻ x, ∫⁻ s, β (s⁻¹ * x) * f x ∂μS ∂μG := by
        refine lintegral_congr fun x => ?_
        exact (lintegral_mul_const _ (hβm.comp (measurable_inv.mul_const x))).symm
    _ = ∫⁻ s, ∫⁻ x, β (s⁻¹ * x) * f x ∂μG ∂μS :=
        lintegral_lintegral_swap ((hβm.comp (measurable_snd.inv.mul measurable_fst)).mul
          (hf.comp measurable_fst)).aemeasurable
    _ = ∫⁻ s, ∫⁻ x, β x * f (s * x) ∂μG ∂μS := by
        refine lintegral_congr fun s => ?_
        simpa only [inv_mul_cancel_left] using
          (lintegral_mul_left_eq_self (fun x => β (s⁻¹ * x) * f x) s).symm
    _ = ∫⁻ x, ∫⁻ s, β x * f (s * x) ∂μS ∂μG :=
        lintegral_lintegral_swap ((hβm.comp measurable_snd).mul
          (hf.comp (measurable_fst.mul measurable_snd))).aemeasurable
    _ = ∫⁻ x, (β * fun x => ∫⁻ s, f (s * x) ∂μS) x ∂μG := by
        refine lintegral_congr fun x => ?_
        exact lintegral_const_mul _ (hf.comp (measurable_id.mul_const x))

end Bruhat

theorem generic_weil_representation : GenWeil := by
  unfold GenWeil
  intro G _ _ _ _ _ _ _ _ μG μS _ _ _ S hS hSc hinv hpos hfin
  exact weil_of_bruhat μG μS S hS hSc hinv hpos hfin

end PI.ScMuExists.UnitaryGroupMassFormula
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.GenericWeilRepresentation =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.ContinuousHPart =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.ContinuousHPart", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstDecomp\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.HJMulVecGen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.ContinuousUMatApply\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix

namespace PI.ScMuExists.UnitaryGroupMassFormula

section Real

variable {n r : ℕ} (ε : Fin n → Bool)

def RFrame (e f : Fin r → Fin n → ℂ) (z : Fin n → ℂ) : Prop :=
  (∀ a b, hJ ε (e a) (e b) = 0) ∧ (∀ a b, hJ ε (f a) (f b) = 0) ∧
  (∀ a b, hJ ε (e a) (f b) = if a = b then 1 else 0) ∧
  (∀ a, hJ ε (e a) z = 0 ∧ hJ ε (f a) z = 0) ∧ hJ ε z z ≠ 0

theorem rFrame_of {I : Formalism.MainNotions.S.AutInst} {r : ℕ} {e f : Fin r → Fin I.n → I.E} {z : Fin I.n → I.E}
    (hF : IsFrame I e f z) (v : NumberField.InfinitePlace I.F) :
    RFrame (I.ε v) (fun a => rv I v (e a)) (fun a => rv I v (f a)) (rv I v z) := by
  obtain ⟨h1, h2, h3, h4, h5⟩ := hF
  refine ⟨fun a b => ?_, fun a b => ?_, fun a b => ?_, fun a => ⟨?_, ?_⟩, ?_⟩
  · rw [rv_hJ, h1, map_zero]
  · rw [rv_hJ, h2, map_zero]
  · rw [rv_hJ, h3]; split_ifs <;> simp
  · rw [rv_hJ, (h4 a).1, map_zero]
  · rw [rv_hJ, (h4 a).2, map_zero]
  · rw [rv_hJ]
    exact fun h => h5 ((map_eq_zero_iff _ (I.φ v).injective).mp h)

def hJL (u : Fin n → ℂ) : (Fin n → ℂ) →ₗ[ℂ] ℂ where
  toFun := hJ ε u
  map_add' x y := by simp [hJ, Matrix.mulVec_add, dotProduct_add]
  map_smul' c x := by simp [hJ, Matrix.mulVec_smul, dotProduct_smul]

theorem hJL_apply (u x : Fin n → ℂ) : hJL ε u x = hJ ε u x := rfl

def piW (e f : Fin r → Fin n → ℂ) (z : Fin n → ℂ) : (Fin n → ℂ) →ₗ[ℂ] (Fin n → ℂ) :=
  LinearMap.id - ∑ a, (hJL ε (f a)).smulRight (e a) - ∑ a, (hJL ε (e a)).smulRight (f a) -
    ((hJ ε z z)⁻¹ • hJL ε z).smulRight z

theorem piW_apply (e f : Fin r → Fin n → ℂ) (z x : Fin n → ℂ) :
    piW ε e f z x = x - ∑ a, hJ ε (f a) x • e a - ∑ a, hJ ε (e a) x • f a -
      ((hJ ε z z)⁻¹ * hJ ε z x) • z := by
  simp [piW, hJL_apply, smul_eq_mul]

variable {ε}

theorem hJ_sub_right (u x y : Fin n → ℂ) : hJ ε u (x - y) = hJ ε u x - hJ ε u y := by
  simp [hJ, Matrix.mulVec_sub, dotProduct_sub]

theorem hJ_sum_right {ι : Type*} (s : Finset ι) (u : Fin n → ℂ) (g : ι → Fin n → ℂ) :
    hJ ε u (∑ i ∈ s, g i) = ∑ i ∈ s, hJ ε u (g i) := by
  exact map_sum (hJL ε u) g s

theorem hJ_smul_right (u x : Fin n → ℂ) (c : ℂ) : hJ ε u (c • x) = c * hJ ε u x := by
  simp [hJ, Matrix.mulVec_smul, dotProduct_smul, smul_eq_mul]

variable {e f : Fin r → Fin n → ℂ} {z : Fin n → ℂ}

theorem hJ_e_piW (hF : RFrame ε e f z) (b : Fin r) (x : Fin n → ℂ) : hJ ε (e b) (piW ε e f z x) = 0 := by
  obtain ⟨hee, hff, hef, hz, hzz⟩ := hF
  rw [piW_apply]
  simp only [hJ_sub_right, hJ_sum_right, hJ_smul_right, hee, hef, (hz b).1]
  simp

private theorem hJ_conj_lemma (x y : Fin n → ℂ) : hJ ε x y = star (hJ ε y x) := by
  unfold hJ
  simp only [Formalism.REAL.Jm, Matrix.mulVec_diagonal, dotProduct, star_sum, star_mul', star_star, Pi.star_apply]
  refine Finset.sum_congr rfl fun i _ => ?_
  split_ifs <;> simp <;> ring

theorem hJ_f_piW (hF : RFrame ε e f z) (b : Fin r) (x : Fin n → ℂ) : hJ ε (f b) (piW ε e f z x) = 0 := by
  obtain ⟨hee, hff, hef, hz, hzz⟩ := hF
  have h1 : ∀ a, hJ ε (f b) (e a) = if a = b then 1 else 0 := fun a => by
    rw [hJ_conj_lemma, hef a b]
    by_cases h : a = b
    · subst h; simp
    · simp [h]
  rw [piW_apply]
  simp only [hJ_sub_right, hJ_sum_right, hJ_smul_right, hff, h1, (hz b).2]
  simp

theorem hJ_z_piW (hF : RFrame ε e f z) (x : Fin n → ℂ) : hJ ε z (piW ε e f z x) = 0 := by
  obtain ⟨hee, hff, hef, hz, hzz⟩ := hF
  have h1 : ∀ a, hJ ε z (e a) = 0 := fun a => by rw [hJ_conj_lemma, (hz a).1, star_zero]
  have h2 : ∀ a, hJ ε z (f a) = 0 := fun a => by rw [hJ_conj_lemma, (hz a).2, star_zero]
  rw [piW_apply]
  simp only [hJ_sub_right, hJ_sum_right, hJ_smul_right, h1, h2, mul_zero, Finset.sum_const_zero, sub_zero]
  field_simp
  ring

theorem piW_of_perp {y : Fin n → ℂ} (he : ∀ a, hJ ε (e a) y = 0) (hf : ∀ a, hJ ε (f a) y = 0)
    (hz : hJ ε z y = 0) : piW ε e f z y = y := by
  rw [piW_apply]
  simp [he, hf, hz]

theorem piW_e (hF : RFrame ε e f z) (b : Fin r) : piW ε e f z (e b) = 0 := by
  obtain ⟨hee, hff, hef, hz, hzz⟩ := hF
  have h1 : ∀ a, hJ ε (f a) (e b) = if a = b then 1 else 0 := fun a => by
    rw [hJ_conj_lemma, hef b a]
    by_cases h : a = b
    · subst h; simp
    · simp [h, Ne.symm h]
  have h2 : hJ ε z (e b) = 0 := by rw [hJ_conj_lemma, (hz b).1, star_zero]
  rw [piW_apply]
  simp [h1, hee, h2]

theorem piW_spanLt (hF : RFrame ε e f z) (a : ℕ) {x : Fin n → ℂ} (hx : x ∈ spanLt e a) :
    piW ε e f z x = 0 := by
  have hle : spanLt e a ≤ LinearMap.ker (piW ε e f z) := by
    rw [spanLt, Submodule.span_le]
    rintro _ ⟨b, -, rfl⟩
    exact LinearMap.mem_ker.mpr (piW_e hF b)
  exact LinearMap.mem_ker.mp (hle hx)

theorem fix_sub_piW {h : Matrix (Fin n) (Fin n) ℂ} (he : ∀ a, h *ᵥ e a = e a)
    (hf : ∀ a, h *ᵥ f a = f a) (hz : h *ᵥ z = z) (x : Fin n → ℂ) :
    h *ᵥ (x - piW ε e f z x) = x - piW ε e f z x := by
  have hx : x - piW ε e f z x = ∑ a, hJ ε (f a) x • e a + ∑ a, hJ ε (e a) x • f a +
      ((hJ ε z z)⁻¹ * hJ ε z x) • z := by
    rw [piW_apply]; abel
  rw [hx]
  simp only [Matrix.mulVec_add, Matrix.mulVec_sum, Matrix.mulVec_smul, he, hf, hz]

def PwM (ε : Fin n → Bool) (e f : Fin r → Fin n → ℂ) (z : Fin n → ℂ) : Matrix (Fin n) (Fin n) ℂ :=
  LinearMap.toMatrix' (piW ε e f z)

def hPart (ε : Fin n → Bool) (e f : Fin r → Fin n → ℂ) (z : Fin n → ℂ) (g : Matrix (Fin n) (Fin n) ℂ) :
    Matrix (Fin n) (Fin n) ℂ :=
  1 - PwM ε e f z + PwM ε e f z * g * PwM ε e f z

theorem continuous_hPart (ε : Fin n → Bool) (e f : Fin r → Fin n → ℂ) (z : Fin n → ℂ) :
    Continuous (hPart ε e f z) := by
  unfold hPart
  fun_prop

theorem hPart_mulVec (g : Matrix (Fin n) (Fin n) ℂ) (x : Fin n → ℂ) :
    hPart ε e f z g *ᵥ x = x - piW ε e f z x + piW ε e f z (g *ᵥ piW ε e f z x) := by
  have hP : ∀ y, PwM ε e f z *ᵥ y = piW ε e f z y := fun y => by
    rw [PwM, ← Matrix.toLin'_apply, Matrix.toLin'_toMatrix']
  simp only [hPart, Matrix.add_mulVec, Matrix.sub_mulVec, Matrix.one_mulVec, ← Matrix.mulVec_mulVec, hP]

theorem hPart_mul (hF : RFrame ε e f z) {nm h : Matrix (Fin n) (Fin n) ℂ} (hn : InN ε e z nm)
    (hU : Formalism.REAL.inUJ ε h) (he : ∀ a, h *ᵥ e a = e a) (hf : ∀ a, h *ᵥ f a = f a) (hz : h *ᵥ z = z) :
    hPart ε e f z (nm * h) = h := by
  refine Matrix.toLin'.injective (LinearMap.ext fun x => ?_)
  rw [Matrix.toLin'_apply, Matrix.toLin'_apply, hPart_mulVec]
  have hey : ∀ a, hJ ε (e a) (h *ᵥ piW ε e f z x) = 0 := fun a => by
    have := _root_.PI.ScMuExists.UnitaryGroupMassFormula.hJ_mulVec hU (e a) (piW ε e f z x)
    rw [he a] at this
    rw [this]; exact hJ_e_piW hF a x
  have hfy : ∀ a, hJ ε (f a) (h *ᵥ piW ε e f z x) = 0 := fun a => by
    have := _root_.PI.ScMuExists.UnitaryGroupMassFormula.hJ_mulVec hU (f a) (piW ε e f z x)
    rw [hf a] at this
    rw [this]; exact hJ_f_piW hF a x
  have hzy : hJ ε z (h *ᵥ piW ε e f z x) = 0 := by
    have := _root_.PI.ScMuExists.UnitaryGroupMassFormula.hJ_mulVec hU z (piW ε e f z x)
    rw [hz] at this
    rw [this]; exact hJ_z_piW hF x
  have h0 : piW ε e f z ((nm - 1) *ᵥ (h *ᵥ piW ε e f z x)) = 0 :=
    piW_spanLt hF r (hn.2 _ hey)
  have hpy : piW ε e f z (h *ᵥ piW ε e f z x) = h *ᵥ piW ε e f z x := piW_of_perp hey hfy hzy
  have hsplit : (nm * h) *ᵥ piW ε e f z x =
      h *ᵥ piW ε e f z x + (nm - 1) *ᵥ (h *ᵥ piW ε e f z x) := by
    rw [← Matrix.mulVec_mulVec, Matrix.sub_mulVec, Matrix.one_mulVec]; abel
  have hx : h *ᵥ x = (x - piW ε e f z x) + h *ᵥ piW ε e f z x := by
    rw [← fix_sub_piW he hf hz x, ← Matrix.mulVec_add, sub_add_cancel]
  rw [hsplit, map_add (f := _), hpy, h0, add_zero, hx]

end Real

end PI.ScMuExists.UnitaryGroupMassFormula
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.ContinuousHPart =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.Proper =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.Proper", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstDecomp\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.ContinuousHPart\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.ContinuousUMatApply\npublic import Formalism.RealPlaceAnalysis.FinalF\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Algebra.Group.Units\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix
open scoped Pointwise

namespace PI.ScMuExists.UnitaryGroupMassFormula

theorem isClosedEmbedding_uMat {n : ℕ} (ε : Fin n → Bool) :
    Topology.IsClosedEmbedding (fun g : Formalism.REAL.UJ ε => Formalism.MainNotions.S.uMat g) :=
  (Formalism.REAL.uJEmb n ε).1

theorem proper_action_instance : InstProper := by
  intro I r e f z hF N H hNs hHs C hC
  let K : ∀ v, Set (Matrix (Fin I.n) (Fin I.n) ℂ) := fun v =>
    hPart (I.ε v) (fun a => rv I v (e a)) (fun a => rv I v (f a)) (rv I v z) ''
      ((fun s : I.Ginf => Formalism.MainNotions.S.uMat (s v)) '' C)
  have hK : ∀ v, IsCompact (K v) := fun v =>
    (hC.image (continuous_uMat_apply I v)).image (continuous_hPart _ _ _ _)
  let K2 : Set I.Ginf := Set.univ.pi fun v => (fun g : Formalism.REAL.UJ (I.ε v) => Formalism.MainNotions.S.uMat g) ⁻¹' K v
  have hK2 : IsCompact K2 :=
    isCompact_univ_pi fun v => (isClosedEmbedding_uMat (I.ε v)).isCompact_preimage (hK v)
  have hsub : {p : I.Ginf × I.Ginf | p.1 ∈ N ∧ p.2 ∈ H ∧ p.1 * p.2 ∈ C} ⊆ (C * K2⁻¹) ×ˢ K2 := by
    rintro ⟨x, h⟩ ⟨hx, hh, hxh⟩
    have hx' : x ∈ Ninf I e z := by rw [← hNs]; exact hx
    have hh' : h ∈ Hset I (frameSet I e f z) := by rw [← hHs]; exact hh
    have hK2h : h ∈ K2 := by
      intro v _
      refine ⟨Formalism.MainNotions.S.uMat ((x * h) v), ⟨x * h, hxh, rfl⟩, ?_⟩
      show hPart _ _ _ _ (Formalism.MainNotions.S.uMat (x v * h v)) = Formalism.MainNotions.S.uMat (h v)
      rw [uMat_mul]
      exact hPart_mul (rFrame_of hF v) (hx' v) (uMat_inUJ (h v))
        (fun a => hh' v _ (Or.inl (Or.inl ⟨a, rfl⟩))) (fun a => hh' v _ (Or.inl (Or.inr ⟨a, rfl⟩)))
        (hh' v _ (Or.inr rfl))
    refine ⟨?_, hK2h⟩
    rw [← mul_inv_cancel_right x h]
    exact Set.mul_mem_mul hxh (Set.inv_mem_inv.mpr hK2h)
  have hcl : IsClosed {p : I.Ginf × I.Ginf | p.1 ∈ N ∧ p.2 ∈ H ∧ p.1 * p.2 ∈ C} := by
    have hNc : IsClosed (N : Set I.Ginf) := by rw [hNs]; exact isClosed_Ninf I e z
    have hHc : IsClosed (H : Set I.Ginf) := by rw [hHs]; exact isClosed_Hset I _
    exact (hNc.preimage continuous_fst).inter ((hHc.preimage continuous_snd).inter
      (hC.isClosed.preimage continuous_mul))
  exact ((hC.mul hK2.inv).prod hK2).of_isClosed_subset hcl hsub

end PI.ScMuExists.UnitaryGroupMassFormula
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.Proper =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.TargetOfInstDecomp =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.TargetOfInstDecomp", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstDecomp\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.ContinuousUMatApply\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.GenSemiOf\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.GenericWeilRepresentation\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.HaarSub\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstLeftInvMuInf\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.ModOne\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.Proper\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.ScMuExists.UnitaryGroupMassFormula

theorem target_of_instDecomp (hd : InstDecomp) : PI.ScMuExists.Target :=
  target_of_steps generic_haar_subgroup (genSemi_of generic_haar_subgroup) generic_weil_representation measure_subFacts
    (genModOne_of generic_haar_subgroup) hd proper_action_instance

end PI.ScMuExists.UnitaryGroupMassFormula
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.TargetOfInstDecomp =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ScMuExists =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ScMuExists", "h": "module\n\npublic import Formalism.PeriodIntegrals.ScMuExists\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstAll\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.TargetOfInstDecomp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI

theorem sc_mu_exists : PI.ScMuExists.Target :=
  PI.ScMuExists.UnitaryGroupMassFormula.target_of_instDecomp PI.ScMuExists.UnitaryGroupMassFormula.place_decomposition_instance

end PI
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ScMuExists =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorFrameConstruction.ContinuousOnTensOp =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorFrameConstruction.ContinuousOnTensOp", "h": "module\n\npublic import Mathlib.Analysis.CStarAlgebra.Module.Constructions\npublic import Mathlib.Analysis.InnerProductSpace.PiL2\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.InnerProductSpace.Adjoint\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped InnerProductSpace ComplexConjugate
open Module

namespace PI.ScPiBuildW.Tens

variable {ι : Type} [Fintype ι] [DecidableEq ι]

abbrev Idx (Vl : ι → Type) [∀ i, NormedAddCommGroup (Vl i)] [∀ i, InnerProductSpace ℂ (Vl i)] : Type :=
  ∀ i, Fin (finrank ℂ (Vl i))

abbrev TV (Vl : ι → Type) [∀ i, NormedAddCommGroup (Vl i)] [∀ i, InnerProductSpace ℂ (Vl i)] : Type :=
  EuclideanSpace ℂ (Idx Vl)

variable {Vl : ι → Type} [∀ i, NormedAddCommGroup (Vl i)] [∀ i, InnerProductSpace ℂ (Vl i)]
  [∀ i, FiniteDimensional ℂ (Vl i)]

def bas (Vl : ι → Type) [∀ i, NormedAddCommGroup (Vl i)] [∀ i, InnerProductSpace ℂ (Vl i)]
    [∀ i, FiniteDimensional ℂ (Vl i)] (i : ι) : OrthonormalBasis (Fin (finrank ℂ (Vl i))) ℂ (Vl i) :=
  stdOrthonormalBasis ℂ (Vl i)

def tensU (x : ∀ i, Vl i) : TV Vl :=
  WithLp.toLp 2 (fun p : Idx Vl => ∏ i, ⟪bas Vl i (p i), x i⟫_ℂ)

theorem tensU_apply (x : ∀ i, Vl i) (p : Idx Vl) : tensU x p = ∏ i, ⟪bas Vl i (p i), x i⟫_ℂ := rfl

theorem prod_sum_pi {κ : ι → Type} [∀ i, Fintype (κ i)] (f : ∀ i, κ i → ℂ) :
    ∏ i, ∑ j, f i j = ∑ p : (∀ i, κ i), ∏ i, f i (p i) := by
  rw [Finset.prod_univ_sum, Fintype.piFinset_univ]

theorem inner_tensU (x y : ∀ i, Vl i) : ⟪tensU x, tensU y⟫_ℂ = ∏ i, ⟪x i, y i⟫_ℂ := by
  rw [PiLp.inner_apply]
  simp only [tensU_apply, RCLike.inner_apply, map_prod]
  have h : ∀ i, ⟪x i, y i⟫_ℂ = ∑ j, (starRingEnd ℂ) ⟪bas Vl i j, x i⟫_ℂ * ⟪bas Vl i j, y i⟫_ℂ := by
    intro i
    rw [← (bas Vl i).sum_inner_mul_inner (x i) (y i)]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [inner_conj_symm]
  simp_rw [h, prod_sum_pi, ← Finset.prod_mul_distrib]
  refine Finset.sum_congr rfl fun p _ => ?_
  refine Finset.prod_congr rfl fun i _ => ?_
  ring

theorem tensU_basis (p : Idx Vl) : tensU (fun i => bas Vl i (p i)) = EuclideanSpace.single p 1 := by
  ext q
  rw [tensU_apply, PiLp.single_apply]
  by_cases hqp : q = p
  · subst hqp
    simp only [if_true]
    refine Finset.prod_eq_one fun i _ => ?_
    rw [inner_self_eq_norm_sq_to_K, (bas Vl i).orthonormal.1 (q i)]
    simp
  · rw [if_neg hqp]
    obtain ⟨i, hi⟩ : ∃ i, q i ≠ p i := by
      by_contra hne
      push Not at hne
      exact hqp (funext hne)
    refine Finset.prod_eq_zero (Finset.mem_univ i) ?_
    exact (bas Vl i).orthonormal.2 hi

theorem span_tensU : Submodule.span ℂ (Set.range (tensU (Vl := Vl))) = ⊤ := by
  refine eq_top_iff.2 ?_
  rw [← (EuclideanSpace.basisFun (Idx Vl) ℂ).toBasis.span_eq]
  refine Submodule.span_mono ?_
  rintro _ ⟨p, rfl⟩
  refine ⟨fun i => bas Vl i (p i), ?_⟩
  rw [OrthonormalBasis.coe_toBasis, EuclideanSpace.basisFun_apply, tensU_basis]

theorem eq_of_inner_tensU {v v' : TV Vl} (h : ∀ x, ⟪tensU x, v⟫_ℂ = ⟪tensU x, v'⟫_ℂ) : v = v' := by
  have hd : ∀ x, ⟪v - v', tensU x⟫_ℂ = 0 := fun x => by
    rw [← inner_conj_symm, inner_sub_right, h x, sub_self, map_zero]
  have h0 : (innerSL ℂ (v - v')).toLinearMap = 0 :=
    LinearMap.ext_on_range span_tensU (fun x => by simpa using hd x)
  have h2 : ⟪v - v', v - v'⟫_ℂ = 0 := by
    have := LinearMap.congr_fun h0 (v - v')
    simp only [ContinuousLinearMap.coe_coe, innerSL_apply_apply, LinearMap.zero_apply] at this
    exact this
  exact sub_eq_zero.1 (inner_self_eq_zero.1 h2)

theorem clm_ext {T T' : TV Vl →L[ℂ] TV Vl} (h : ∀ x, T (tensU x) = T' (tensU x)) : T = T' :=
  ContinuousLinearMap.coe_inj.1 (LinearMap.ext_on_range span_tensU h)

def opMat (A : ∀ i, Vl i →L[ℂ] Vl i) : Matrix (Idx Vl) (Idx Vl) ℂ :=
  fun p q => ∏ i, ⟪bas Vl i (p i), A i (bas Vl i (q i))⟫_ℂ

def tensOp (A : ∀ i, Vl i →L[ℂ] Vl i) : TV Vl →L[ℂ] TV Vl :=
  LinearMap.toContinuousLinearMap (Matrix.toEuclideanLin (opMat A))

theorem tensOp_apply (A : ∀ i, Vl i →L[ℂ] Vl i) (v : TV Vl) (p : Idx Vl) :
    tensOp A v p = ∑ q, opMat A p q * v q := by
  simp only [tensOp, LinearMap.coe_toContinuousLinearMap']
  rw [Matrix.ofLp_toLpLin, Matrix.toLin'_apply, Matrix.mulVec, dotProduct]

theorem sum_inner_op {V' : Type} [NormedAddCommGroup V'] [InnerProductSpace ℂ V'] (A : V' →L[ℂ] V')
    {m : Type} [Fintype m] (b : OrthonormalBasis m ℂ V') (u x : V') :
    ∑ j, ⟪u, A (b j)⟫_ℂ * ⟪b j, x⟫_ℂ = ⟪u, A x⟫_ℂ := by
  conv_rhs => rw [← b.sum_repr' x]

  rw [map_sum, inner_sum]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [map_smul, inner_smul_right, mul_comm]

theorem tensOp_tensU (A : ∀ i, Vl i →L[ℂ] Vl i) (x : ∀ i, Vl i) :
    tensOp A (tensU x) = tensU (fun i => A i (x i)) := by
  ext p
  rw [tensOp_apply, tensU_apply]
  simp only [opMat, tensU_apply, ← Finset.prod_mul_distrib]
  rw [← prod_sum_pi (fun i j => ⟪bas Vl i (p i), A i (bas Vl i j)⟫_ℂ * ⟪bas Vl i j, x i⟫_ℂ)]
  refine Finset.prod_congr rfl fun i _ => ?_
  exact sum_inner_op (A i) (bas Vl i) _ _

theorem tensOp_one : tensOp (fun i => (1 : Vl i →L[ℂ] Vl i)) = 1 :=
  clm_ext fun x => by rw [tensOp_tensU]; rfl

theorem tensOp_mul (A B : ∀ i, Vl i →L[ℂ] Vl i) :
    tensOp (fun i => A i * B i) = tensOp A * tensOp B :=
  clm_ext fun x => by
    rw [ContinuousLinearMap.mul_apply, tensOp_tensU, tensOp_tensU, tensOp_tensU]
    rfl

theorem inner_tensOp (A : ∀ i, Vl i →L[ℂ] Vl i) (hA : ∀ i (u w : Vl i), ⟪A i u, A i w⟫_ℂ = ⟪u, w⟫_ℂ)
    (u w : TV Vl) : ⟪tensOp A u, tensOp A w⟫_ℂ = ⟪u, w⟫_ℂ := by
  have hQ : (ContinuousLinearMap.adjoint (tensOp A)) * tensOp A = 1 := clm_ext fun y => by
    refine eq_of_inner_tensU fun x => ?_
    rw [ContinuousLinearMap.mul_apply, ContinuousLinearMap.adjoint_inner_right, tensOp_tensU,
      tensOp_tensU, ContinuousLinearMap.one_apply, inner_tensU, inner_tensU]
    exact Finset.prod_congr rfl fun i _ => hA i (x i) (y i)
  rw [← ContinuousLinearMap.adjoint_inner_right, ← ContinuousLinearMap.mul_apply, hQ,
    ContinuousLinearMap.one_apply]

theorem continuousOn_tensOp {X : Type*} [TopologicalSpace X] (A : X → ∀ i, Vl i →L[ℂ] Vl i) (S : Set X)
    (hA : ∀ i (y : Vl i), ContinuousOn (fun s => A s i y) S) (v : TV Vl) :
    ContinuousOn (fun s => tensOp (A s) v) S := by
  have hrep : (fun s => tensOp (A s) v) =
      fun s => ∑ p, (tensOp (A s) v p) • EuclideanSpace.basisFun (Idx Vl) ℂ p := by
    funext s
    conv_lhs => rw [← (EuclideanSpace.basisFun (Idx Vl) ℂ).sum_repr' (tensOp (A s) v)]
    simp only [EuclideanSpace.basisFun_inner]
  rw [hrep]
  refine continuousOn_finsetSum _ fun p _ =>
    (show ContinuousOn (fun s => tensOp (A s) v p) S from ?_).smul continuousOn_const
  simp only [tensOp_apply]
  refine continuousOn_finsetSum _ fun q _ =>
    (show ContinuousOn (fun s => opMat (A s) p q) S from ?_).mul continuousOn_const
  simp only [opMat]
  refine continuousOn_finsetProd _ fun i _ => ?_
  exact ContinuousOn.inner continuousOn_const (hA i _)

end PI.ScPiBuildW.Tens
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorFrameConstruction.ContinuousOnTensOp =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorFrameConstruction.LocFrame =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorFrameConstruction.LocFrame", "h": "module\n\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HermitianFrameExistence.Transfer\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorFrameConstruction.LocalFramePreservesOrthogonal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix NumberField

namespace PI.ScPiBuildW.Rv

open PI.ScPiExists

lemma hJ_rv (I : Formalism.MainNotions.S.AutInst) (v : InfinitePlace I.F) (x y : Fin I.n → I.E) :
    hJ (I.ε v) (rv I v x) (rv I v y) = I.φ v (Formalism.UG.hform (starRingEnd I.E) I.J x y) := by
  apply PI.ScPiFrameW.hJ_rv

lemma phi_ite (I : Formalism.MainNotions.S.AutInst) (v : InfinitePlace I.F) {r : ℕ} (a b : Fin r) :
    I.φ v (if a = b then (1 : I.E) else 0) = if a = b then 1 else 0 := by
  split_ifs <;> simp

def locFrame (I : Formalism.MainNotions.S.AutInst) {r k : ℕ} (e f : Fin r → Fin I.n → I.E) (z : Fin I.n → I.E)
    (hn : I.n = 2 * r + k + 1) (hF : IsFrame I e f z)
    (hz : Formalism.UG.hform (starRingEnd I.E) I.J z z ≠ 0) (v : InfinitePlace I.F) (w : Fin k → Fin I.n → ℂ)
    (hw : (∀ a b, hJ (I.ε v) (w a) (w b) = if a = b then 1 else 0) ∧
      ∀ a, (∀ c, hJ (I.ε v) (rv I v (e c)) (w a) = 0 ∧ hJ (I.ε v) (rv I v (f c)) (w a) = 0) ∧
        hJ (I.ε v) (rv I v z) (w a) = 0) :
    Loc.LocFrame I.n r k (I.ε v) where
  e := fun a => rv I v (e a)
  f := fun a => rv I v (f a)
  z := rv I v z
  w := w
  hn := hn
  ee := fun a b => by rw [hJ_rv, hF.1 a b, map_zero]
  ef := fun a b => by rw [hJ_rv, hF.2.2.1 a b, phi_ite]
  ez := fun a => by rw [hJ_rv, (hF.2.2.2 a).1, map_zero]
  fz := fun a => by rw [hJ_rv, (hF.2.2.2 a).2, map_zero]
  zz := by rw [hJ_rv]; exact (map_ne_zero (I.φ v)).2 hz
  ww := hw.1
  ew := fun c a => ((hw.2 a).1 c).1
  fw := fun c a => ((hw.2 a).1 c).2
  zw := fun a => (hw.2 a).2

section Simp

variable (I : Formalism.MainNotions.S.AutInst) {r k : ℕ} (e f : Fin r → Fin I.n → I.E) (z : Fin I.n → I.E)
  (hn : I.n = 2 * r + k + 1) (hF : IsFrame I e f z)
  (hz : Formalism.UG.hform (starRingEnd I.E) I.J z z ≠ 0) (v : InfinitePlace I.F) (w : Fin k → Fin I.n → ℂ)
  (hw : (∀ a b, hJ (I.ε v) (w a) (w b) = if a = b then 1 else 0) ∧
      ∀ a, (∀ c, hJ (I.ε v) (rv I v (e c)) (w a) = 0 ∧ hJ (I.ε v) (rv I v (f c)) (w a) = 0) ∧
        hJ (I.ε v) (rv I v z) (w a) = 0)

end Simp

end PI.ScPiBuildW.Rv
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorFrameConstruction.LocFrame =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorFrameConstruction.InnerOfNorm =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorFrameConstruction.InnerOfNorm", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorFrameConstruction.LocalFramePreservesOrthogonal\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorFrameConstruction.ContinuousOnTensOp\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorFrameConstruction.LocFrame\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Matrix
open scoped InnerProductSpace

namespace PI.ScPiBuildW.Asm

open PI.ScPiExists Formalism.MainNotions.S

lemma inner_of_norm {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H] (T : H →L[ℂ] H)
    (hT : ∀ v, ‖T v‖ = ‖v‖) (u w : H) : ⟪T u, T w⟫_ℂ = ⟪u, w⟫_ℂ :=
  (⟨T.toLinearMap, hT⟩ : H →ₗᵢ[ℂ] H).inner_map_map u w

lemma uMat_one (I : AutInst) (v : InfinitePlace I.F) : uMat ((1 : I.Ginf) v) = 1 := rfl

lemma uMat_mul (I : AutInst) (s t : I.Ginf) (v : InfinitePlace I.F) :
    uMat ((s * t) v) = uMat (s v) * uMat (t v) := rfl

lemma inUJ_uMat (I : AutInst) (s : I.Ginf) (v : InfinitePlace I.F) : Formalism.REAL.inUJ (I.ε v) (uMat (s v)) :=
  (s v).2

lemma cont_uMat (I : AutInst) (v : InfinitePlace I.F) : Continuous fun s : I.Ginf => uMat (s v) :=
  Units.continuous_val.comp (continuous_subtype_val.comp (continuous_apply v))

theorem build : Build := by
  intro hW I r k e f z lam hn hF hz hlam hw
  classical
  choose w hw using hw
  choose H hHN hHI pl hπ using fun v => hW k (lam v) (hlam v)
  let _ := hHN
  let _ := hHI
  have hHF : ∀ v, FiniteDimensional ℂ (H v) := fun v => (hπ v).2.1
  let L : ∀ v, Loc.LocFrame I.n r k (I.ε v) := fun v => Rv.locFrame I e f z hn hF hz v (w v) (hw v)
  let A : I.Ginf → ∀ v, H v →L[ℂ] H v := fun s v => pl v ((L v).M (uMat (s v)))
  have hA1 : A 1 = fun _ => 1 := by
    funext v
    simp only [A]
    rw [uMat_one, Loc.LocFrame.M_one]
    exact (hπ v).2.2.1.1.1
  refine ⟨{
      Vpi := Tens.TV H
      piU := fun s => Tens.tensOp (A s)
      piU_rep := ?_
      Vloc := H
      piLoc := pl
      piLoc_type := hπ
      wfr := w
      wfr_on := fun v => (hw v).1
      wfr_perp := fun v => (hw v).2
      tensU := Tens.tensU
      tensU_inner := Tens.inner_tensU
      tensU_span := Tens.span_tensU
      tensU_equiv := fun s _ x => Tens.tensOp_tensU (A s) x }⟩
  refine ⟨?_, ?_, ?_, ?_, ?_⟩
  · show Tens.tensOp (A 1) = 1
    rw [hA1]
    exact Tens.tensOp_one
  · intro s hs t ht
    show Tens.tensOp (A (s * t)) = Tens.tensOp (A s) * Tens.tensOp (A t)
    rw [← Tens.tensOp_mul]
    congr 1
    funext v
    simp only [A]
    rw [uMat_mul, (L v).M_mul (inUJ_uMat I s v) (hs v) (inUJ_uMat I t v) (ht v)]
    exact (hπ v).2.2.1.1.2 _ ((L v).M_inUJ (inUJ_uMat I s v) (hs v)) _
      ((L v).M_inUJ (inUJ_uMat I t v) (ht v))
  · intro s hs x y
    exact Tens.inner_tensOp (A s) (fun v u u' => inner_of_norm _
      (fun y => (hπ v).2.2.1.2.1 _ ((L v).M_inUJ (inUJ_uMat I s v) (hs v)) y) u u') x y
  · intro s hs
    show Tens.tensOp (A s) = 1
    have : A s = fun _ => 1 := by
      funext v
      simp only [A]
      rw [(L v).M_N (hs v)]
      exact (hπ v).2.2.1.1.1
    rw [this]
    exact Tens.tensOp_one
  · intro x
    refine Tens.continuousOn_tensOp A (Sinf I e z) (fun v y => ?_) x
    have hc : Continuous fun s : I.Ginf => (L v).M (uMat (s v)) := by
      apply continuous_pi
      intro a
      apply continuous_pi
      intro b
      simp only [Loc.LocFrame.M, hJ]
      exact continuous_const.dotProduct
        (continuous_const.matrix_mulVec ((cont_uMat I v).matrix_mulVec continuous_const))
    exact ((hπ v).2.2.1.2.2 y).comp hc.continuousOn
      (fun s hs => (L v).M_inUJ (inUJ_uMat I s v) (hs v))

end PI.ScPiBuildW.Asm
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorFrameConstruction.InnerOfNorm =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HermitianFrameExistence.PosOfPerp =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HermitianFrameExistence.PosOfPerp", "h": "module\n\npublic import Formalism.PeriodIntegrals.ScPiExists\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HermitianFrameExistence.HJSumSmulRight\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix

namespace PI.ScPiFrameW

open PI.ScPiExists

variable {n : ℕ}

private theorem nonneg_term_lemma (ε : Fin n → Bool) {r : ℕ} (σ : Fin (r + 1) → Fin n)
    (hσ : ∀ i, ε i = false → ∃ j, σ j = i) (w : Fin n → ℂ) (hw0 : ∀ j, w (σ j) = 0) (i : Fin n) :
    0 ≤ (if ε i then (1 : ℝ) else -1) * Complex.normSq (w i) := by
  cases hi : ε i
  · obtain ⟨k, hk⟩ := hσ i hi
    subst hk
    simp [hw0]
  · simp [Complex.normSq_nonneg]

private theorem pos_of_vanish_lemma_2 (ε : Fin n → Bool) {r : ℕ} (σ : Fin (r + 1) → Fin n)
    (hσ : ∀ i, ε i = false → ∃ j, σ j = i) (w : Fin n → ℂ) (hw0 : ∀ j, w (σ j) = 0)
    (hw : w ≠ 0) : 0 < (hJ ε w w).re := by
  rw [hJ_self_re]
  obtain ⟨i, hi⟩ : ∃ i, w i ≠ 0 := by
    by_contra h
    push_neg at h
    exact hw (funext h)
  have hεi : ε i = true := by
    cases hj : ε i
    · obtain ⟨k, hk⟩ := hσ i hj
      exact (hi (by rw [← hk]; exact hw0 k)).elim
    · rfl
  calc (0 : ℝ) < (if ε i then (1 : ℝ) else -1) * Complex.normSq (w i) := by
        rw [if_pos hεi, one_mul]
        exact Complex.normSq_pos.mpr hi
    _ ≤ ∑ j, (if ε j then (1 : ℝ) else -1) * Complex.normSq (w j) :=
        Finset.single_le_sum (fun j _ => nonneg_term_lemma ε σ hσ w hw0 j) (Finset.mem_univ i)

theorem pos_of_perp (ε : Fin n → Bool) {r : ℕ} (σ : Fin (r + 1) → Fin n)
    (hσ : ∀ i, ε i = false → ∃ j, σ j = i)
    (e f : Fin r → Fin n → ℂ) (z : Fin n → ℂ) (t : ℝ) (ht : 0 < t)
    (hee : ∀ a b, hJ ε (e a) (e b) = 0) (hff : ∀ a b, hJ ε (f a) (f b) = 0)
    (hef : ∀ a b, hJ ε (e a) (f b) = if a = b then 1 else 0)
    (hez : ∀ a, hJ ε (e a) z = 0) (hfz : ∀ a, hJ ε (f a) z = 0) (hzz : hJ ε z z = -(t : ℂ))
    (y : Fin n → ℂ) (hey : ∀ c, hJ ε (e c) y = 0) (hfy : ∀ c, hJ ε (f c) y = 0)
    (hzy : hJ ε z y = 0) (hy : y ≠ 0) : 0 < (hJ ε y y).re := by
  by_contra hcon
  have hle : (hJ ε y y).re ≤ 0 := not_lt.mp hcon
  obtain ⟨m, hm⟩ : ∃ m : Fin r ⊕ Bool → Fin n → ℂ,
      m = Sum.elim (fun a => e a - f a) (fun b => if b then y else z) := ⟨_, rfl⟩
  have hmi : ∀ a, m (Sum.inl a) = e a - f a := fun a => by rw [hm]; rfl
  have hmf : m (Sum.inr false) = z := by rw [hm]; rfl
  have hmt : m (Sum.inr true) = y := by rw [hm]; rfl
  obtain ⟨D, hD⟩ : ∃ D : Fin r ⊕ Bool → ℂ,
      D = Sum.elim (fun _ => (-2 : ℂ)) (fun b => if b then hJ ε y y else -(t : ℂ)) := ⟨_, rfl⟩
  have hDi : ∀ a, D (Sum.inl a) = -2 := fun a => by rw [hD]; rfl
  have hDf : D (Sum.inr false) = -(t : ℂ) := by rw [hD]; rfl
  have hDt : D (Sum.inr true) = hJ ε y y := by rw [hD]; rfl
  have hG : ∀ k l, hJ ε (m k) (m l) = if k = l then D k else 0 := by
    intro k l
    rcases k with a | i <;> rcases l with b | j
    · simp only [hmi, hJ_sub_left, hJ_sub_right, hee, hff, hef, hJ_conj ε (e b) (f a), hDi]
      by_cases hab : a = b
      · subst hab
        norm_num
      · simp [hab, Ne.symm hab]
    · cases j <;> simp [hmi, hmf, hmt, hJ_sub_left, hez, hfz, hey, hfy]
    · cases i <;> simp [hmi, hmf, hmt, hJ_sub_right, hJ_conj ε (e b) z, hJ_conj ε (f b) z,
        hJ_conj ε (e b) y, hJ_conj ε (f b) y, hez, hfz, hey, hfy]
    · cases i <;> cases j <;> simp [hmf, hmt, hDf, hDt, hzz, hzy, hJ_conj ε z y]
  obtain ⟨g, hg, k0, hk0⟩ := exists_rel (fun k : Fin r ⊕ Bool => fun j : Fin (r + 1) => m k (σ j))
    (by simp only [Fintype.card_sum, Fintype.card_fin, Fintype.card_bool]; omega)
  obtain ⟨v, hv⟩ : ∃ v : Fin n → ℂ, v = ∑ k, g k • m k := ⟨_, rfl⟩
  have hv0 : ∀ j, v (σ j) = 0 := by
    intro j
    have h := congrFun hg j
    rw [hv]
    simpa [Finset.sum_apply] using h
  have hvv : (hJ ε v v).re = ∑ k, Complex.normSq (g k) * (D k).re := by
    rw [hv, hJ_sum_smul_left, Complex.re_sum]
    refine Finset.sum_congr rfl fun k _ => ?_
    rw [hJ_sum_smul_right]
    simp only [hG, mul_ite, mul_zero, Finset.sum_ite_eq, Finset.mem_univ, if_true]
    exact re_star_mul_mul _ _
  have hterm : ∀ k, Complex.normSq (g k) * (D k).re ≤ 0 := by
    intro k
    refine mul_nonpos_iff.mpr (Or.inl ⟨Complex.normSq_nonneg _, ?_⟩)
    rcases k with a | b
    · rw [hDi]
      norm_num
    · cases b
      · rw [hDf]
        simp [ht.le]
      · rw [hDt]
        exact hle
  have hsum : 0 ≤ ∑ k, Complex.normSq (g k) * (D k).re := by
    rw [← hvv, hJ_self_re]
    exact Finset.sum_nonneg fun i _ => nonneg_term_lemma ε σ hσ v hv0 i
  have hzero : ∀ k, Complex.normSq (g k) * (D k).re = 0 := by
    have h0 : ∑ k, Complex.normSq (g k) * (D k).re = 0 :=
      le_antisymm (Finset.sum_nonpos fun k _ => hterm k) hsum
    intro k
    exact (Finset.sum_eq_zero_iff_of_nonpos fun k _ => hterm k).mp h0 k (Finset.mem_univ k)
  have hga : ∀ a, g (Sum.inl a) = 0 := by
    intro a
    simpa [hDi] using hzero (Sum.inl a)
  have hgf : g (Sum.inr false) = 0 := by
    simpa [hDf, ht.ne'] using hzero (Sum.inr false)
  have hvy : v = g (Sum.inr true) • y := by
    rw [hv, Fintype.sum_sum_type, Fintype.sum_bool]
    simp [hga, hgf, hmt]
  have hgt : g (Sum.inr true) ≠ 0 := by
    rcases k0 with a | b
    · exact absurd (hga a) hk0
    · cases b
      · exact absurd hgf hk0
      · exact hk0
  have hy0 : ∀ j, y (σ j) = 0 := by
    intro j
    have h := hv0 j
    rw [hvy, Pi.smul_apply, smul_eq_mul] at h
    exact (mul_eq_zero.mp h).resolve_left hgt
  exact hcon (pos_of_vanish_lemma_2 ε σ hσ y hy0 hy)

end PI.ScPiFrameW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HermitianFrameExistence.PosOfPerp =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HermitianFrameExistence.FrameCore =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HermitianFrameExistence.FrameCore", "h": "module\n\npublic import Formalism.PeriodIntegrals.ScPiExists\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HermitianFrameExistence.HJSumSmulRight\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HermitianFrameExistence.PosOfPerp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix

namespace PI.ScPiFrameW

open PI.ScPiExists

variable {n : ℕ}

theorem gs_step (ε : Fin n → Bool) {r k : ℕ} (hn : n = 2 * r + k + 1) (σ : Fin (r + 1) → Fin n)
    (hσ : ∀ i, ε i = false → ∃ j, σ j = i)
    (e f : Fin r → Fin n → ℂ) (z : Fin n → ℂ) (t : ℝ) (ht : 0 < t)
    (hee : ∀ a b, hJ ε (e a) (e b) = 0) (hff : ∀ a b, hJ ε (f a) (f b) = 0)
    (hef : ∀ a b, hJ ε (e a) (f b) = if a = b then 1 else 0)
    (hez : ∀ a, hJ ε (e a) z = 0) (hfz : ∀ a, hJ ε (f a) z = 0) (hzz : hJ ε z z = -(t : ℂ))
    (m : ℕ) (hm : m < k) (w : Fin m → Fin n → ℂ)
    (hwo : ∀ a b, hJ ε (w a) (w b) = if a = b then 1 else 0)
    (hwp : ∀ a, (∀ c, hJ ε (e c) (w a) = 0 ∧ hJ ε (f c) (w a) = 0) ∧ hJ ε z (w a) = 0) :
    ∃ w' : Fin (m + 1) → Fin n → ℂ, (∀ a b, hJ ε (w' a) (w' b) = if a = b then 1 else 0) ∧
      ∀ a, (∀ c, hJ ε (e c) (w' a) = 0 ∧ hJ ε (f c) (w' a) = 0) ∧ hJ ε z (w' a) = 0 := by
  obtain ⟨y, hy, hperp⟩ := exists_perp ε
    (Sum.elim e (Sum.elim f (Sum.elim (fun _ : Unit => z) w)))
    (by simp only [Fintype.card_sum, Fintype.card_fin, Fintype.card_unit]; omega)
  have hey : ∀ c, hJ ε (e c) y = 0 := fun c => hperp (Sum.inl c)
  have hfy : ∀ c, hJ ε (f c) y = 0 := fun c => hperp (Sum.inr (Sum.inl c))
  have hzy : hJ ε z y = 0 := hperp (Sum.inr (Sum.inr (Sum.inl ())))
  have hwy : ∀ a, hJ ε (w a) y = 0 := fun a => hperp (Sum.inr (Sum.inr (Sum.inr a)))
  have hs0 : 0 < (hJ ε y y).re :=
    pos_of_perp ε σ hσ e f z t ht hee hff hef hez hfz hzz y hey hfy hzy hy
  obtain ⟨s, hs_eq⟩ : ∃ s : ℝ, s = (hJ ε y y).re := ⟨_, rfl⟩
  have hs : 0 < s := hs_eq ▸ hs0
  have hyy : hJ ε y y = (s : ℂ) := by
    rw [hs_eq, hJ_self, Complex.ofReal_re]
  have hμ : star (((Real.sqrt s)⁻¹ : ℝ) : ℂ) * ((((Real.sqrt s)⁻¹ : ℝ) : ℂ) * hJ ε y y) = 1 := by
    rw [hyy, show star (((Real.sqrt s)⁻¹ : ℝ) : ℂ) = (starRingEnd ℂ) (((Real.sqrt s)⁻¹ : ℝ) : ℂ)
      from rfl, Complex.conj_ofReal]
    have hsq : Real.sqrt s * Real.sqrt s = s := Real.mul_self_sqrt hs.le
    have h1 : (Real.sqrt s)⁻¹ * ((Real.sqrt s)⁻¹ * s) = 1 := by
      rw [← mul_assoc, ← mul_inv, hsq, inv_mul_cancel₀ hs.ne']
    exact_mod_cast h1
  refine ⟨Fin.cons ((((Real.sqrt s)⁻¹ : ℝ) : ℂ) • y) w, ?_, ?_⟩
  · intro a b
    refine Fin.cases ?_ (fun a' => ?_) a <;> refine Fin.cases ?_ (fun b' => ?_) b
    · rw [if_pos rfl]
      simp only [Fin.cons_zero, hJ_smul_left, hJ_smul_right]
      rw [mul_left_comm]
      exact hμ
    · rw [if_neg (Fin.succ_ne_zero b').symm]
      simp only [Fin.cons_zero, Fin.cons_succ, hJ_smul_left, hJ_conj ε (w b') y, hwy, star_zero,
        mul_zero]
    · rw [if_neg (Fin.succ_ne_zero a')]
      simp only [Fin.cons_zero, Fin.cons_succ, hJ_smul_right, hwy, mul_zero]
    · simp only [Fin.cons_succ, Fin.succ_inj]
      exact hwo a' b'
  · intro a
    refine Fin.cases ?_ (fun a' => ?_) a
    · simp [hJ_smul_right, hey, hfy, hzy]
    · simp only [Fin.cons_succ]
      exact hwp a'

theorem frame_core (ε : Fin n → Bool) {r k : ℕ} (hn : n = 2 * r + k + 1) (σ : Fin (r + 1) → Fin n)
    (hσ : ∀ i, ε i = false → ∃ j, σ j = i)
    (e f : Fin r → Fin n → ℂ) (z : Fin n → ℂ) (t : ℝ) (ht : 0 < t)
    (hee : ∀ a b, hJ ε (e a) (e b) = 0) (hff : ∀ a b, hJ ε (f a) (f b) = 0)
    (hef : ∀ a b, hJ ε (e a) (f b) = if a = b then 1 else 0)
    (hez : ∀ a, hJ ε (e a) z = 0) (hfz : ∀ a, hJ ε (f a) z = 0) (hzz : hJ ε z z = -(t : ℂ)) :
    ∃ w : Fin k → Fin n → ℂ, (∀ a b, hJ ε (w a) (w b) = if a = b then 1 else 0) ∧
      ∀ a, (∀ c, hJ ε (e c) (w a) = 0 ∧ hJ ε (f c) (w a) = 0) ∧ hJ ε z (w a) = 0 := by
  have key : ∀ m, m ≤ k → ∃ w : Fin m → Fin n → ℂ,
      (∀ a b, hJ ε (w a) (w b) = if a = b then 1 else 0) ∧
      ∀ a, (∀ c, hJ ε (e c) (w a) = 0 ∧ hJ ε (f c) (w a) = 0) ∧ hJ ε z (w a) = 0 := by
    intro m
    induction m with
    | zero => intro _; exact ⟨fun a => a.elim0, fun a => a.elim0, fun a => a.elim0⟩
    | succ m ih =>
      intro hm
      obtain ⟨w, h1, h2⟩ := ih (by omega)
      exact gs_step ε hn σ hσ e f z t ht hee hff hef hez hfz hzz m (by omega) w h1 h2
  exact key k le_rfl

end PI.ScPiFrameW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HermitianFrameExistence.FrameCore =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HermitianFrameExistence.FrameHolds =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HermitianFrameExistence.FrameHolds", "h": "module\n\npublic import Formalism.PeriodIntegrals.ScPiExists\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HermitianFrameExistence.FrameCore\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HermitianFrameExistence.Transfer\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.ScPiFrameW

open PI.ScPiExists

theorem frame_holds : PI.ScPiExists.Frame := by
  intro I r k e f z hn hfr ⟨t, ht, hzz⟩ hε v
  obtain ⟨hee, hff, hef, hz⟩ := hfr
  have hσ : ∃ σ : Fin (r + 1) → Fin I.n, ∀ i, I.ε v i = false → ∃ j, σ j = i := by
    refine ⟨fun j => ⟨min ((k - 1) + 2 * j.val + 1) (I.n - 1), by omega⟩, ?_⟩
    intro i hi
    rw [hε v i] at hi
    have h2 : ¬ i.val < k - 1 ∧ (i.val - (k - 1)) % 2 ≠ 0 := by
      by_cases h1 : i.val < k - 1
      · simp [h1] at hi
      · simp [h1] at hi
        exact ⟨h1, by omega⟩
    have hi' := i.isLt
    refine ⟨⟨(i.val - (k - 1)) / 2, by omega⟩, ?_⟩
    apply Fin.ext
    show min ((k - 1) + 2 * ((i.val - (k - 1)) / 2) + 1) (I.n - 1) = i.val
    omega
  obtain ⟨σ, hσ⟩ := hσ
  obtain ⟨w, hw1, hw2⟩ := frame_core (I.ε v) hn σ hσ (fun a => rv I v (e a))
    (fun a => rv I v (f a)) (rv I v z) (t : ℝ) (by exact_mod_cast ht)
    (fun a b => by rw [hJ_rv, hee a b, map_zero]) (fun a b => by rw [hJ_rv, hff a b, map_zero])
    (fun a b => by rw [hJ_rv, hef a b]; split_ifs <;> simp)
    (fun a => by rw [hJ_rv, (hz a).1, map_zero]) (fun a => by rw [hJ_rv, (hz a).2, map_zero])
    (by rw [hJ_rv, hzz]; simp)
  exact ⟨w, hw1, hw2⟩

end PI.ScPiFrameW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HermitianFrameExistence.FrameHolds =====

-- ===== clump member: Formalism.SharpRestriction.CuspSpanNormBounds.BridgeHW =====
-- clump-header: {"m": "Formalism.SharpRestriction.CuspSpanNormBounds.BridgeHW", "h": "module\n\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.DiscreteSeriesWeylDimension\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.BridgeHW

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.S

theorem highest_weight_exists_bis [Fact Formalism.MainNotions.DiscreteSeriesWeylDimension.HighestWeightExists] : DiscreteSeriesWeylDimension.HighestWeightExists := Fact.out

variable {eps : ℝ} (Fm : FamP eps)



end Formalism.MainNotions.BridgeHW

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.CuspSpanNormBounds.BridgeHW =====

-- ===== clump member: Formalism.SharpRestriction.CuspSpanNormBounds.HCFiniteKMultiplicityGapped =====
-- clump-header: {"m": "Formalism.SharpRestriction.CuspSpanNormBounds.HCFiniteKMultiplicityGapped", "h": "module\n\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.BridgeLitG\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.BridgeDS3

open Formalism.MainNotions Formalism.MainNotions.S

theorem discrete_series_exists_gapped [Fact Formalism.MainNotions.DiscreteSeriesWeylDimension.DiscreteSeriesExistsG] : DiscreteSeriesWeylDimension.DiscreteSeriesExistsG := Fact.out


end Formalism.MainNotions.BridgeDS3

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.CuspSpanNormBounds.HCFiniteKMultiplicityGapped =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.CoefWeightedLocHolds =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.CoefWeightedLocHolds", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.SettingBlocks\npublic import Formalism.PeriodIntegrals.ScPsiExists\npublic import Formalism.PeriodIntegrals.ScMuExists\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.DiscreteSeriesWeylDimension\npublic import Formalism.PeriodIntegrals.ScPiExists\npublic import Formalism.PeriodIntegrals.ScXuExists\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.BridgeLitG\npublic import Formalism.LocalRingCardinality.IntCastDvdOfDvdIntegers\npublic import Formalism.LocalRingCardinality.RankBoundMonotoneInDimension\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.BesselDiscreteSeries.BesselNVGapPf\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.BunExists\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.ScWlocExists\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.SplitPrimeCounts.LsSetresInt\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ScMuExists\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TensorFrameConstruction.InnerOfNorm\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.HermitianFrameExistence.FrameHolds\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.EmbeddingTraceSumAlt.NormUnitsOfCalculation\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ScRefExists\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ScXuExists\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.BridgeHW\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.HCFiniteKMultiplicityGapped\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.HCReprodM\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.SplitPrimeCounts.LsSetresSplit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.SharpRestriction.GlobalSchurBounds.ThickPlacesCorollaryOfAnyTranslate\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.SG.Closed.ScPsi

theorem chkScPsiExists (h : PI.ScPsiExists.Target) (D : Formalism.BasicNotions.D7) :
    Formalism.L2.SG.SplitPrimeNormLemmas.PsiExists D := by
  intro A
  obtain ⟨p, h1, h2, h3⟩ := h A.I
  exact ⟨⟨p, h1, h2, h3⟩⟩

end Formalism.L2.SG.Closed.ScPsi

namespace Formalism.L2.SG.Closed.ScGap

end Formalism.L2.SG.Closed.ScGap

namespace Formalism.L2.SG.Closed.ScMu

noncomputable section

open MeasureTheory NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.L2.SG.HidaSetting Formalism.L2.SG.SplitPrimeNormLemmas
open scoped InnerProductSpace TensorProduct Classical ENNReal
open Matrix

attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace ChkScMu

theorem hform_crdA {D : D7} (A : UnitaryGroupInstance D) (v w : (VS D).V) :
    A.ιE (Formalism.UG.hform (starRingEnd A.I.E) A.I.J (crdOf A.I A.ιE A.bas v) (crdOf A.I A.ιE A.bas w)) =
      (VS D).hT v w := by
  conv_rhs => rw [← A.bas.sum_repr v, ← A.bas.sum_repr w]

  simp only [map_sum, LinearMap.map_smulₛₗ, LinearMap.sum_apply, LinearMap.smul_apply, smul_eq_mul,
  Formalism.UG.hform, map_mul, crdOf, starRingEnd_apply, A.ιE_conj, RingEquiv.apply_symm_apply,
  A.J_eq, Finset.mul_sum]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  simp only [← Formalism.BasicNotions.bridge_star_holds D.R D.host, RingHom.id_apply]
  ring

theorem hform_eq {D : D7} (A : UnitaryGroupInstance D) (v w : (VS D).V) :
    Formalism.UG.hform (starRingEnd A.I.E) A.I.J (crdOf A.I A.ιE A.bas v) (crdOf A.I A.ιE A.bas w) =
      A.ιE.symm ((VS D).hT v w) := by
  rw [← hform_crdA, RingEquiv.symm_apply_apply]

theorem chkScMuExists (h : PI.ScMuExists.Target) (D : D7) : MuExists D := by
  intro A L
  have key : ∀ u, ∃ muN muH nuQ : Measure A.I.Ginf,
      IsHaarOnSet A.I (Ninf A.I (eC A L) (zC A L u)) muN ∧
      IsHaarOnSet A.I (Hset A.I (Set.range (eC A L) ∪ Set.range (fC A L) ∪ {zC A L u})) muH ∧
      IsQuotMeasS A.I (((muN.prod muH).map (fun p => p.1 * p.2))) nuQ := by
    intro u
    refine h A.I D.R.rS (eC A L) (fC A L) (zC A L u) ?_ ?_ ?_ ?_ ?_
    · intro a b; simp only [eC, hform_eq, L.ee, map_zero]
    · intro a b; simp only [fC, hform_eq, L.ff, map_zero]
    · intro a b; simp only [eC, fC, hform_eq, L.ef]; split_ifs <;> simp
    · intro a; simp only [eC, fC, zC, hform_eq, (L.zu_orth u a).1, (L.zu_orth u a).2, map_zero, and_self]
    · simp only [zC, hform_eq, L.zu_norm]
      intro h0
      have h1 := congrArg A.ιE h0
      simp only [RingEquiv.apply_symm_apply, map_zero, neg_eq_zero, Nat.cast_eq_zero] at h1
      have h2 := D.T_mod_g u 0
      rw [h1] at h2
      simp at h2
  choose muN muH nuQ hN hH hQ using key
  exact ⟨⟨muN, muH, hN, hH, nuQ, hQ⟩⟩

end ChkScMu
end

end Formalism.L2.SG.Closed.ScMu

namespace Formalism.L2.SG.Closed.ScRef

noncomputable section

open MeasureTheory NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.L2.SG.HidaSetting Formalism.L2.SG.SplitPrimeNormLemmas
open scoped InnerProductSpace TensorProduct Classical ENNReal
open Matrix

attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace ChkScRef

theorem hform_crdA {D : D7} (A : UnitaryGroupInstance D) (v w : (VS D).V) :
    A.ιE (Formalism.UG.hform (starRingEnd A.I.E) A.I.J (crdOf A.I A.ιE A.bas v) (crdOf A.I A.ιE A.bas w)) =
      (VS D).hT v w := by
  conv_rhs => rw [← A.bas.sum_repr v, ← A.bas.sum_repr w]

  simp only [map_sum, LinearMap.map_smulₛₗ, LinearMap.sum_apply, LinearMap.smul_apply, smul_eq_mul,
  Formalism.UG.hform, map_mul, crdOf, starRingEnd_apply, A.ιE_conj, RingEquiv.apply_symm_apply,
  A.J_eq, Finset.mul_sum]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  simp only [← Formalism.BasicNotions.bridge_star_holds D.R D.host, RingHom.id_apply]
  ring

alias hform_eq := _root_.Formalism.L2.SG.Closed.ScMu.ChkScMu.hform_eq

def SplitAtG (D : D7) : Prop :=
  ∀ (A : UnitaryGroupInstance D) (v : IsDedekindDomain.HeightOneSpectrum (𝓞 A.I.F)), ((gD D : ℕ) : 𝓞 A.I.F) ∈ v.asIdeal →
    Nat.card {w : IsDedekindDomain.HeightOneSpectrum (𝓞 A.I.E) //
      w.asIdeal.comap (algebraMap (𝓞 A.I.F) (𝓞 A.I.E)) = v.asIdeal} = 2

def IntAtG (D : D7) : Prop :=
  ∀ (A : UnitaryGroupInstance D) (L : UnitaryLatticeData D) (a : Fin D.R.rS),
    InAt A.I (gD D) 1 (incl A.I (eC A L a)) ∧ InAt A.I (gD D) 1 (incl A.I (fC A L a))

theorem chkScRefExists (h : PI.ScRefExists.Target) (D : D7) (hs : SplitAtG D) (hi : IntAtG D) :
    RefExists D := by
  intro A L
  have hn : A.I.n = 2 * D.R.rS + D.R.k + 1 := A.n_eq.trans (Formalism.MainNotions.S.dimS_eq D.R).symm
  have hg : 1 ≤ gD D := Nat.mul_pos (D.host.g_prime 0).pos (D.host.g_prime 1).pos
  obtain ⟨P⟩ := h A.I (gD D) D.R.rS D.R.k (eC A L) (fC A L) hg (hs A) hn
    (fun a b => by simp only [eC, hform_eq, L.ee, map_zero])
    (fun a b => by simp only [fC, hform_eq, L.ff, map_zero])
    (fun a b => by simp only [eC, fC, hform_eq, L.ef]; split_ifs <;> simp)
    (hi A L)
  exact ⟨{ e0 := P.e0
           f0 := P.f0
           z0 := P.z0
           bw := P.bw
           bwd := P.bwd
           ew := P.ew
           vectorsInLattice := P.vectorsInLattice
           basisApprox := P.basisApprox
           gramIntegral := P.gramIntegral
           formsAtZero := P.formsAtZero
           weightVectorsIntegral := P.weightVectorsIntegral
           ew_idem := P.ew_idem
           ew_orth := P.ew_orth
           ew_int := P.ew_int
           ew_full := P.ew_full
           bw_w := P.bw_w
           bwd_w := P.bwd_w
           bw_dual := P.bw_dual
           latticeSpan := P.latticeSpan }⟩

end ChkScRef
end

end Formalism.L2.SG.Closed.ScRef

namespace Formalism.L2.SG.Closed.ScXu

noncomputable section

open MeasureTheory NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.L2.SG.HidaSetting Formalism.L2.SG.SplitPrimeNormLemmas
open scoped InnerProductSpace TensorProduct Classical ENNReal
open Matrix

attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace ChkScXu

theorem hform_crdA {D : D7} (A : UnitaryGroupInstance D) (v w : (VS D).V) :
    A.ιE (Formalism.UG.hform (starRingEnd A.I.E) A.I.J (crdOf A.I A.ιE A.bas v) (crdOf A.I A.ιE A.bas w)) =
      (VS D).hT v w := by
  conv_rhs => rw [← A.bas.sum_repr v, ← A.bas.sum_repr w]

  simp only [map_sum, LinearMap.map_smulₛₗ, LinearMap.sum_apply, LinearMap.smul_apply, smul_eq_mul,
  Formalism.UG.hform, map_mul, crdOf, starRingEnd_apply, A.ιE_conj, RingEquiv.apply_symm_apply,
  A.J_eq, Finset.mul_sum]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  simp only [← Formalism.BasicNotions.bridge_star_holds D.R D.host, RingHom.id_apply]
  ring

alias hform_eq := _root_.Formalism.L2.SG.Closed.ScMu.ChkScMu.hform_eq

def SplitAtG (D : D7) : Prop :=
  ∀ (A : UnitaryGroupInstance D) (v : IsDedekindDomain.HeightOneSpectrum (𝓞 A.I.F)), ((gD D : ℕ) : 𝓞 A.I.F) ∈ v.asIdeal →
    Nat.card {w : IsDedekindDomain.HeightOneSpectrum (𝓞 A.I.E) //
      w.asIdeal.comap (algebraMap (𝓞 A.I.F) (𝓞 A.I.E)) = v.asIdeal} = 2

def IntAtGZ (D : D7) : Prop :=
  ∀ (A : UnitaryGroupInstance D) (L : UnitaryLatticeData D),
    (∀ a : Fin D.R.rS, InAt A.I (gD D) 1 (incl A.I (eC A L a)) ∧ InAt A.I (gD D) 1 (incl A.I (fC A L a))) ∧
    ∀ u, InAt A.I (gD D) 1 (incl A.I (zC A L u))

theorem chkScXuExists (h : PI.ScXuExists.Target) (D : D7) (hs : SplitAtG D) (hi : IntAtGZ D) :
    XuExists D := by
  intro A L Rf
  have hn : A.I.n = 2 * D.R.rS + D.R.k + 1 := A.n_eq.trans (Formalism.MainNotions.S.dimS_eq D.R).symm
  have hg : 1 ≤ gD D := Nat.mul_pos (D.host.g_prime 0).pos (D.host.g_prime 1).pos
  let P : PI.ScRefExists.RefData A.I (gD D) D.R.rS D.R.k (eC A L) (fC A L) :=
    { e0 := Rf.e0
      f0 := Rf.f0
      z0 := Rf.z0
      bw := Rf.bw
      bwd := Rf.bwd
      ew := Rf.ew
      vectorsInLattice := Rf.vectorsInLattice
      basisApprox := Rf.basisApprox
      gramIntegral := Rf.gramIntegral
      formsAtZero := Rf.formsAtZero
      weightVectorsIntegral := Rf.weightVectorsIntegral
      ew_idem := Rf.ew_idem
      ew_orth := Rf.ew_orth
      ew_int := Rf.ew_int
      ew_full := Rf.ew_full
      bw_w := Rf.bw_w
      bwd_w := Rf.bwd_w
      bw_dual := Rf.bw_dual
      latticeSpan := Rf.latticeSpan }
  have key : ∀ u, ∃ x : A.I.Gf, (∀ a, A.I.fmat x *ᵥ incl A.I (eC A L a) = incl A.I (eC A L a) ∧
      A.I.fmat x *ᵥ incl A.I (fC A L a) = incl A.I (fC A L a)) ∧
      InAt A.I (gD D) (gD D) (A.I.fmat x⁻¹ *ᵥ incl A.I (zC A L u) - Rf.z0) ∧ OneOff A.I (gD D) x ∧
      x ∈ A.I.Kset := by
    intro u
    have hT : (D.mem u).A.T ≡ 1 [MOD gD D] :=
      D.T_modEq_of_dvd u (dvd_trans (dvd_pow_self _ two_ne_zero) D.gg_dvd_modT)
    exact h A.I (gD D) D.R.rS D.R.k (eC A L) (fC A L) (zC A L u) P hg (hs A) hn
      (fun a b => by simp only [eC, hform_eq, L.ee, map_zero])
      (fun a b => by simp only [fC, hform_eq, L.ff, map_zero])
      (fun a b => by simp only [eC, fC, hform_eq, L.ef]; split_ifs <;> simp)
      (fun a => by simp only [eC, fC, zC, hform_eq, (L.zu_orth u a).1, (L.zu_orth u a).2, map_zero, and_self])
      ⟨(D.mem u).A.T, hT, by simp only [zC, hform_eq, L.zu_norm, map_neg, map_natCast]⟩
      (hi A L).1 ((hi A L).2 u)
  choose xu hfix hz hone hK using key
  exact ⟨{ xu := xu
           xu_fix := fun u a => hfix u a
           xu_z := hz
           xu_one := hone
           xu_K := hK }⟩

end ChkScXu
end

end Formalism.L2.SG.Closed.ScXu

namespace Formalism.L2.SG.Closed.ScPi

noncomputable section

open MeasureTheory NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.L2.SG.HidaSetting Formalism.L2.SG.SplitPrimeNormLemmas
open scoped InnerProductSpace TensorProduct Classical ENNReal
open Matrix

attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace ChkScPi

theorem hform_crdA {D : D7} (A : UnitaryGroupInstance D) (v w : (VS D).V) :
    A.ιE (Formalism.UG.hform (starRingEnd A.I.E) A.I.J (crdOf A.I A.ιE A.bas v) (crdOf A.I A.ιE A.bas w)) =
      (VS D).hT v w := by
  conv_rhs => rw [← A.bas.sum_repr v, ← A.bas.sum_repr w]

  simp only [map_sum, LinearMap.map_smulₛₗ, LinearMap.sum_apply, LinearMap.smul_apply, smul_eq_mul,
  Formalism.UG.hform, map_mul, crdOf, starRingEnd_apply, A.ιE_conj, RingEquiv.apply_symm_apply,
  A.J_eq, Finset.mul_sum]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  simp only [← Formalism.BasicNotions.bridge_star_holds D.R D.host, RingHom.id_apply]
  ring

alias hform_eq := _root_.Formalism.L2.SG.Closed.ScMu.ChkScMu.hform_eq

theorem isFrame {D : D7} (A : UnitaryGroupInstance D) (L : UnitaryLatticeData D) (u : D.what₂.Word) :
    PI.ScPiExists.IsFrame A.I (eC A L) (fC A L) (zC A L u) := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · intro a b; simp only [eC, hform_eq, L.ee, map_zero]
  · intro a b; simp only [fC, hform_eq, L.ff, map_zero]
  · intro a b; simp only [eC, fC, hform_eq, L.ef]; split_ifs <;> simp
  · intro a; simp only [eC, fC, zC, hform_eq, (L.zu_orth u a).1, (L.zu_orth u a).2, map_zero, and_self]

theorem zz_eq {D : D7} (A : UnitaryGroupInstance D) (L : UnitaryLatticeData D) (u : D.what₂.Word) :
    Formalism.UG.hform (starRingEnd A.I.E) A.I.J (zC A L u) (zC A L u) = -(((D.mem u).A.T : ℕ) : A.I.E) := by
  simp only [zC, hform_eq, L.zu_norm, map_neg, map_natCast]

theorem T_pos {D : D7} (u : D.what₂.Word) : 0 < (D.mem u).A.T := by
  have h2 := D.T_mod_g u 0
  rcases Nat.eq_zero_or_pos (D.mem u).A.T with h | h
  · rw [h] at h2; simp at h2
  · exact h

theorem hcParam (D : D7) (P : HCParam D.R) : PI.UpqRep.IsHCParam (fun i => ((P.u i : ℚ) : ℝ)) := by
  refine ⟨?_, ?_⟩
  · apply _root_.Formalism.MainNotions.StandardLattice.strictAnti_of_succ_lt_alt
    intro i j hj
    have hi : i.1 < D.R.k - 1 := by omega
    have h1 := P.u_gt_v ⟨i.1, hi⟩
    have h2 := P.v_gt_u ⟨i.1, hi⟩
    have hj' : j = ⟨i.1 + 1, by omega⟩ := Fin.ext hj
    have e1 : P.u ⟨i.1 + 1, by omega⟩ < P.u i := lt_trans h2 h1
    rw [hj']
    exact_mod_cast e1
  · intro a
    obtain ⟨z, hz⟩ := P.u_half a
    obtain ⟨j, hj⟩ := D.R.k_even
    refine ⟨z - j + 1, ?_⟩
    show ((P.u a : ℚ) : ℝ) - _ = _
    rw [hz]
    have hk : (D.R.k : ℝ) = j + j := by exact_mod_cast hj
    rw [hk]
    push_cast
    ring

theorem chkScPiExists (hW : Formalism.MainNotions.DiscreteSeriesWeylDimension.HighestWeightExists) (hF : PI.ScPiExists.Frame)
    (hB : PI.ScPiExists.Build) (D : D7) : PiExists D := by
  intro A L
  have hW' : PI.ScPiExists.WeylHyp := fun k u hu => hW k u hu
  have hn : A.I.n = 2 * D.R.rS + D.R.k + 1 := A.n_eq.trans (Formalism.MainNotions.S.dimS_eq D.R).symm
  have heps : ∀ v (i : Fin A.I.n), A.I.ε v i =
      if i.val < D.R.k - 1 then true else decide ((i.val - (D.R.k - 1)) % 2 = 0) := by
    intro v i
    rw [A.eps_eq v i]
    simp only [epsS, Fin.val_cast]
  have key : ∀ u, Nonempty (PI.ScPiExists.PiData A.I D.R.k (eC A L) (fC A L) (zC A L u)
      (fun v i => (((D.hcW u (A.pl v)).u i : ℚ) : ℝ))) := by
    intro u
    refine hB hW' A.I D.R.rS D.R.k (eC A L) (fC A L) (zC A L u) _ hn (isFrame A L u) ?_ ?_ ?_
    · rw [zz_eq]
      intro h0
      have h1 : (((D.mem u).A.T : ℕ) : A.I.E) = 0 := neg_eq_zero.mp h0
      rw [Nat.cast_eq_zero] at h1
      exact (Nat.pos_iff_ne_zero.mp (T_pos u)) h1
    · intro v; exact hcParam D (D.hcW u (A.pl v))
    · exact hF A.I D.R.rS D.R.k (eC A L) (fC A L) (zC A L u) hn (isFrame A L u)
        ⟨(D.mem u).A.T, T_pos u, zz_eq A L u⟩ heps
  let P := fun u => Classical.choice (key u)
  exact ⟨{ Vpi := fun u => (P u).Vpi
           vN := fun u => (P u).vN
           vI := fun u => (P u).vI
           vF := fun u => (P u).vF
           piU := fun u => (P u).piU
           piU_rep := fun u => (P u).piU_rep
           Vloc := fun u => (P u).Vloc
           lN := fun u => (P u).lN
           lI := fun u => (P u).lI
           lF := fun u => (P u).lF
           piLoc := fun u => (P u).piLoc
           piLoc_type := fun u => (P u).piLoc_type
           wfr := fun u => (P u).wfr
           wfr_on := fun u => (P u).wfr_on
           wfr_perp := fun u => (P u).wfr_perp
           tensU := fun u => (P u).tensU
           tensU_inner := fun u => (P u).tensU_inner
           tensU_span := fun u => (P u).tensU_span
           tensU_equiv := fun u => (P u).tensU_equiv }⟩

end ChkScPi
end

end Formalism.L2.SG.Closed.ScPi

namespace Formalism.L2.SG.Closed

open Formalism.BasicNotions Formalism.MainNotions.S Formalism.L2.SG.SplitPrimeNormLemmas

theorem PsiExists_holds (D : D7) : PsiExists D := ScPsi.chkScPsiExists _root_.PI.ScPsiExists.UnitaryGroupMassFormula.norm_units_of_calculation D

theorem MuExists_holds (D : D7) : MuExists D := ScMu.ChkScMu.chkScMuExists PI.sc_mu_exists D

theorem RefExists_holds (D : D7) : RefExists D :=
  ScRef.ChkScRef.chkScRefExists sc_reference_exists D (Formalism.L2.SG.SplitPrimeNormLemmas.SplitG.splitAtG_holds D)
    (fun A L a => (Formalism.L2.SG.SplitPrimeNormLemmas.IntG.intAtGZ_holds D A L).1 a)

theorem XuExists_holds (D : D7) : XuExists D :=
  ScXu.ChkScXu.chkScXuExists sc_xu_exists D (Formalism.L2.SG.SplitPrimeNormLemmas.SplitG.splitAtG_holds D)
    (Formalism.L2.SG.SplitPrimeNormLemmas.IntG.intAtGZ_holds D)

variable [Fact Formalism.MainNotions.DiscreteSeriesWeylDimension.HighestWeightExists] in
theorem PiExists_holds (D : D7) : PiExists D :=
  ScPi.ChkScPi.chkScPiExists Formalism.MainNotions.BridgeHW.highest_weight_exists_bis _root_.PI.ScPiFrameW.frame_holds _root_.PI.ScPiBuildW.Asm.build D

variable [Fact Formalism.MainNotions.DiscreteSeriesWeylDimension.DiscreteSeriesExistsG] in
theorem BunExists_holds (D : D7) : BunExists D :=
  Formalism.L2.SG.Pf.automorphic_bundle_exists Formalism.MainNotions.BridgeDS3.discrete_series_exists_gapped D

theorem CoefWeightedLoc_holds [Fact Formalism.L2.SG.SplitPrimeNormLemmas.CoefWeightedLoc] : CoefWeightedLoc := Fact.out


end Formalism.L2.SG.Closed
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.CoefWeightedLocHolds =====
