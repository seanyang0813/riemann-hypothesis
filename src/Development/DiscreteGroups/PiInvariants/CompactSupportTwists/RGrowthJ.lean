module

public import Development.DiscreteGroups.PiInvariants.CompactSupportTwists.UncutHalf
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsFundamentalDomainRangeProdMap
public import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaCellCovers.AdmissibleLeHolds
public import Development.DiscreteGroups.PiInvariants.CompactSupportTwists.CutTailC
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.T2SpaceAdelicGeneralLinearGroupNumberField
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.AdeleLC

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.DiscreteGroups.PiInvariants.CompactSupportTwists.DomOneMeasure, Development.DiscreteGroups.PiInvariants.CompactSupportTwists.KerSplitLIntSub, Development.DiscreteGroups.PiInvariants.CompactSupportTwists.RGrowthJ

-- ===== clump member: Development.DiscreteGroups.PiInvariants.CompactSupportTwists.DomOneMeasure =====
-- clump-header: {"m": "Development.DiscreteGroups.PiInvariants.CompactSupportTwists.DomOneMeasure", "h": "module\n\npublic import Development.DiscreteGroups.PiInvariants.CompactSupportTwists.UncutHalf\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.T2SpaceAdelicGeneralLinearGroupNumberField\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsFundamentalDomainRangeProdMap\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.ThetaCellCovers.AdmissibleLeHolds\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.AdeleLC\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Matrix MeasureTheory
open GlobalTheory.CuspRep GlobalTheory.UnitaryBC PositivityTheory.Rg.BcB.E PositivityTheory.Rg.BcB.F PositivityTheory.Rg.BcB.Desc PositivityTheory.Rg.BcB.E1
open scoped Classical

namespace DiscreteGroups.T1.G

theorem domOne_measure {X Y : Type} [Group X] [Group Y] [TopologicalSpace X] [TopologicalSpace Y]
    [IsTopologicalGroup X] [IsTopologicalGroup Y] [LocallyCompactSpace X] [LocallyCompactSpace Y]
    [SecondCountableTopology X] [SecondCountableTopology Y]
    [MeasurableSpace X] [MeasurableSpace Y] [BorelSpace X] [BorelSpace Y] (μ₁ : Measure X) (μ₂ : Measure Y)
    [μ₁.IsHaarMeasure] [μ₂.IsHaarMeasure] [μ₁.IsMulRightInvariant] [μ₂.IsMulRightInvariant]
    (Γ : Subgroup (X × Y)) (F : Set (X × Y)) (hF : IsFundamentalDomain Γ F (μ₁.prod μ₂))
    (m : MeasurableSpace (X × Y)) (e : Prod.instMeasurableSpace = m) :
    ∃ μ : @Measure (X × Y) m,
      (@Measure.IsMulLeftInvariant _ m _ μ ∧ @Measure.IsMulRightInvariant _ m _ μ ∧
        @Measure.IsOpenPosMeasure _ _ m μ ∧ @IsLocallyFiniteMeasure _ m _ μ) ∧
      @IsFundamentalDomain Γ (X × Y) _ _ m F μ ∧
      (∀ f : X × Y → ℂ, @integral _ _ _ _ m (@Measure.restrict _ m μ F) f =
        @integral _ _ _ _ Prod.instMeasurableSpace ((μ₁.prod μ₂).restrict F) f) ∧
      ∀ f : X × Y → ℂ, Continuous f → HasCompactSupport f →
        @integral _ _ _ _ m μ f = ∫ x₁, ∫ x₂, f (x₁, x₂) ∂μ₂ ∂μ₁ := by
  subst e
  have : SigmaFinite μ₁ := sigmaFinite_of_locallyFinite
  have : SigmaFinite μ₂ := sigmaFinite_of_locallyFinite
  refine ⟨μ₁.prod μ₂, ⟨inferInstance, inferInstance, inferInstance, inferInstance⟩, hF, fun _ => rfl,
    fun f hc hs => ?_⟩
  exact integral_prod f (hc.integrable_of_hasCompactSupport hs)

theorem domOne : DomOne := by
  intro E _ _ _ n _ _ _ _ μ₁ _ μ₂ _
  obtain ⟨F₁, h₁⟩ := domEx_holds E n μ₁
  obtain ⟨F₂, h₂⟩ := domEx_holds E 0 μ₂
  have := CuspidalL2GL.locallyCompactSpace_GA E n
  have := CuspidalL2GL.locallyCompactSpace_GA E 0
  have := CuspidalL2GL.secondCountableTopology_GA E n
  have := CuspidalL2GL.secondCountableTopology_GA E 0
  have := GlobalTheory.CompanionTheory.PairDom.isMulRightInvariant_GA E n μ₁
  have := GlobalTheory.CompanionTheory.PairDom.isMulRightInvariant_GA E 0 μ₂
  have : SigmaFinite μ₁ := sigmaFinite_of_locallyFinite
  have : SigmaFinite μ₂ := sigmaFinite_of_locallyFinite
  obtain ⟨μ, hh, hf, hi, hc⟩ := domOne_measure μ₁ μ₂ (ratH E n 0) (F₁ ×ˢ F₂)
    (GlobalTheory.CompanionTheory.PairDom.isFundamentalDomain_range_prodMap μ₁ μ₂ (ratGL E n) (ratGL E 0) F₁ F₂ h₁ h₂) (borelH E n 0)
    Prod.borelSpace.measurable_eq
  exact ⟨F₁, F₂, ⟨μ, hh, F₁ ×ˢ F₂, hf⟩, h₁, h₂, fun τ φ => hi _, fun F hF hs => hc F hF hs⟩

end DiscreteGroups.T1.G

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.DiscreteGroups.PiInvariants.CompactSupportTwists.DomOneMeasure =====

-- ===== clump member: Development.DiscreteGroups.PiInvariants.CompactSupportTwists.KerSplitLIntSub =====
-- clump-header: {"m": "Development.DiscreteGroups.PiInvariants.CompactSupportTwists.KerSplitLIntSub", "h": "module\n\npublic import Development.DiscreteGroups.PiInvariants.CompactSupportTwists.UncutHalf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Matrix MeasureTheory
open GlobalTheory.CuspRep GlobalTheory.UnitaryBC PositivityTheory.Rg.BcB.E PositivityTheory.Rg.BcB.F PositivityTheory.Rg.BcB.Desc PositivityTheory.Rg.BcB.E1
open scoped Classical

namespace DiscreteGroups.T1.G

attribute [local instance] borelH

theorem kerSplit_lInt_sub {E : Type} [Field E] [NumberField E] [IsCMField E] {a b : ℕ} {ι : Type} [Fintype ι]
    (D : Dom E a b) (k₁ k₂ : H E a b → ι → Hs (ι := ι) D) (τ : ℝ)
    (U V : Hs (ι := ι) D →L[ℂ] Hs (ι := ι) D) (x : H E a b) :
    lInt D k₁ k₂ τ (U - V) x = lInt D k₁ k₂ τ U x - lInt D k₁ k₂ τ V x := by
  simp only [lInt, _root_.sub_apply, inner_sub_right, Finset.sum_sub_distrib, mul_sub]

theorem kerSplit : KerSplit := by
  intro E _ _ _ n D π ι _ k₁ k₂ τ C N hb U _ _
  set S := piSp D π ι with hS
  set W := U ∘L Sᗮ.subtypeL with hW
  refine ⟨U ∘L S.starProjection, ⟨fun f hf => ?_, fun f hf => ?_⟩, ?_, ?_⟩
  · rw [ContinuousLinearMap.comp_apply, Submodule.starProjection_eq_self_iff.2 hf]
  · rw [ContinuousLinearMap.comp_apply, (Submodule.starProjection_apply_eq_zero_iff S).2 hf, map_zero]
  · refine ContinuousLinearMap.opNorm_le_bound _ (norm_nonneg U) fun f => ?_
    calc ‖(U ∘L S.starProjection) f‖ = ‖U (S.starProjection f)‖ := rfl
      _ ≤ ‖U‖ * ‖S.starProjection f‖ := U.le_opNorm _
      _ ≤ ‖U‖ * ‖f‖ := mul_le_mul_of_nonneg_left (S.norm_starProjection_apply_le f) (norm_nonneg U)
  · set V := U - U ∘L S.starProjection with hV
    have hWU : ‖W‖ ≤ ‖U‖ := by
      refine ContinuousLinearMap.opNorm_le_bound _ (norm_nonneg U) fun f => ?_
      exact U.le_opNorm (f : Hs (ι := ι) D)
    have hVW : ‖V‖ ≤ ‖W‖ := by
      refine ContinuousLinearMap.opNorm_le_bound _ (norm_nonneg W) fun f => ?_
      have h1 : V f = W ⟨Sᗮ.starProjection f, Sᗮ.starProjection_apply_mem f⟩ := by
        change U f - U (S.starProjection f) = U (Sᗮ.starProjection f)
        rw [Submodule.starProjection_orthogonal_val, map_sub]
      rw [h1]
      refine (W.le_opNorm _).trans (mul_le_mul_of_nonneg_left ?_ (norm_nonneg W))
      exact Sᗮ.norm_starProjection_apply_le f
    have hint : ∫ x, lInt D k₁ k₂ τ U x ∂D.ν - ∫ x, lInt D k₁ k₂ τ (U ∘L S.starProjection) x ∂D.ν =
        ∫ x, lInt D k₁ k₂ τ V x ∂D.ν := by
      rw [← integral_sub (hb U).1 (hb _).1]
      congr 1
      funext x
      rw [hV, kerSplit_lInt_sub]
    rw [hint]
    have hc := (hb V).2
    have hU0 : 0 ≤ C * (1 + τ) ^ N * ‖U‖ := (norm_nonneg _).trans (hb U).2
    rcases le_or_gt 0 (C * (1 + τ) ^ N) with hc0 | hc0
    · exact hc.trans (mul_le_mul_of_nonneg_left hVW hc0)
    · have hUz : ‖U‖ = 0 := le_antisymm
        (not_lt.1 fun h => absurd hU0 (not_le.2 (mul_neg_of_neg_of_pos hc0 h))) (norm_nonneg U)
      have hWz : ‖W‖ = 0 := le_antisymm (hWU.trans hUz.le) (norm_nonneg W)
      have hVz : ‖V‖ = 0 := le_antisymm (hVW.trans hWz.le) (norm_nonneg V)
      rw [hWz, mul_zero]
      rw [hVz, mul_zero] at hc
      exact hc

end DiscreteGroups.T1.G

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.DiscreteGroups.PiInvariants.CompactSupportTwists.KerSplitLIntSub =====

-- ===== clump member: Development.DiscreteGroups.PiInvariants.CompactSupportTwists.RGrowthJ =====
-- clump-header: {"m": "Development.DiscreteGroups.PiInvariants.CompactSupportTwists.RGrowthJ", "h": "module\n\npublic import Development.DiscreteGroups.PiInvariants.CompactSupportTwists.CutTailC\npublic import Development.DiscreteGroups.PiInvariants.CompactSupportTwists.DomOneMeasure\npublic import Development.DiscreteGroups.PiInvariants.CompactSupportTwists.KerSplitLIntSub\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open PositivityTheory.Rg.BcB.Desc

namespace DiscreteGroups.T1.G

theorem rGrowthPiJ_of (hU : PiVecEx → PiInv → UncutHalf) (hT : PiVecEx → PiInv → CutTail2) : RGrowthPiJ :=
  fun hE hS hV hI => growth_of_ellipticFormula hE hS domOne kerSplit (hU hV hI) (hT hV hI)

end DiscreteGroups.T1.G

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.DiscreteGroups.PiInvariants.CompactSupportTwists.RGrowthJ =====
