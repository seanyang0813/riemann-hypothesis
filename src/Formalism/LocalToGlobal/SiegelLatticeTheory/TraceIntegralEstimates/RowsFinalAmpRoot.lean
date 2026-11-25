module

public import Formalism.PeriodIntegrals.AmpRootH
public import Formalism.FormalDegreeBessel.FormalDegreeRatio.ReverseCauchySchwarzHolds
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RootSubgroupHaar.ContinuousGS
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RootSubgroupJacobian.ContinuousRootCoords
public import Formalism.PeriodIntegrals.AmpRoot
public import Formalism.SharpRestriction.CuspSpanNormBounds.FrobeniusCoefficientMemLp.AmpRootCut
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AmpOrbQuot
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AmpRelAtPt
public import Formalism.SharpRestriction.CuspSpanNormBounds.BridgeCSB
public import Formalism.PeriodIntegrals.AmpOrbQ
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RootSubgroupHaar.MatEqZeroOfSpan
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RootSubgroupHaar.RootHaarMain, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AmpRootHaar, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AmpRootJac, Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.RowsFinalAmpRoot

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RootSubgroupHaar.RootHaarMain =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RootSubgroupHaar.RootHaarMain", "h": "module\n\npublic import Formalism.PeriodIntegrals.AmpRootH\npublic import Formalism.FormalDegreeBessel.FormalDegreeRatio.ReverseCauchySchwarzHolds\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RootSubgroupHaar.ContinuousGS\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RootSubgroupHaar.MatEqZeroOfSpan\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RootSubgroupJacobian.ContinuousRootCoords\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Countable\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Separation.CompletelyRegular\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Matrix
open scoped ENNReal

noncomputable section

namespace PI.AmpRootHaarW

open Formalism.QuantumDeterminants Formalism.MainNotions.S PI.AmpRootCommon PI.AmpRootJacW

theorem ext_of_injOn {α β : Type*} [TopologicalSpace α] [PolishSpace α] [MeasurableSpace α] [BorelSpace α]
    [TopologicalSpace β] [T2Space β] [MeasurableSpace β] [BorelSpace β] {f : α → β} {S : Set α}
    (hS : MeasurableSet S) (hf : Continuous f) (hinj : Set.InjOn f S) {μ ν : Measure α}
    (hμ : μ Sᶜ = 0) (hν : ν Sᶜ = 0) (h : μ.map f = ν.map f) : μ = ν := by
  ext A hA
  have hAS : MeasurableSet (A ∩ S) := hA.inter hS
  have himg : MeasurableSet (f '' (A ∩ S)) :=
    hAS.image_of_continuousOn_injOn hf.continuousOn (hinj.mono Set.inter_subset_right)
  have hpre : f ⁻¹' (f '' (A ∩ S)) ∩ S = A ∩ S := by
    ext x
    constructor
    · rintro ⟨⟨y, hy, hxy⟩, hx⟩
      rw [← hinj hy.2 hx hxy]
      exact hy
    · intro hx
      exact ⟨⟨x, hx, rfl⟩, hx.2⟩
  have key : ∀ ρ : Measure α, ρ Sᶜ = 0 → ρ A = ρ.map f (f '' (A ∩ S)) := by
    intro ρ hρ
    rw [Measure.map_apply hf.measurable himg, ← measure_inter_conull (s := A) hρ,
      ← measure_inter_conull (s := f ⁻¹' (f '' (A ∩ S))) hρ, hpre]
  rw [key μ hμ, key ν hν, h]

theorem rootHaar_main : PI.AmpRootH.RootHaar := by
  intro k r L p g₀ μ₀ hc hrep hG hnull hmap
  obtain ⟨hg, hP⟩ := hrep
  have hz := L.hz.1
  have hz' := L.hz'.1
  set c : ℝ≥0∞ := ENNReal.ofReal ((‖L.c‖ / (2 * Real.pi)) ^ (rootPat p).card) with hc_def
  set φ : Mt k r → Mt k r := fun x => fun i j => (g₀ * Matrix.of x * g₀⁻¹) i j with hφ
  set S : Set (Mt k r) := {x | Matrix.of x ∈ RStab k r g₀} with hS_def
  set f := rootCoords k r L.z p with hf_def
  have hφm : Measurable φ := measurable_conjM g₀ g₀⁻¹
  have hSm : MeasurableSet S := measurableSet_RStab g₀
  have hfc : Continuous f := continuous_rootCoords L.z p
  have hdet : (gramM k r L.z L.z' g₀).det ≠ 0 := by
    intro h0
    have e := group_gram_holds k r L.z L.z' hz hz' g₀ hg
    rw [h0, mul_zero] at e
    have e' : Gf k r L.z L.z' g₀ = 0 := by exact_mod_cast e
    linarith
  have hinj : Set.InjOn f S := rootCoords_injOn hz hz' hg hP hdet
  have hφS : ∀ x, Matrix.of x ∈ Rset k r g₀ → φ x ∈ S := by
    intro x hx
    refine ⟨hx.2, ?_⟩
    show g₀⁻¹ * (g₀ * Matrix.of x * g₀⁻¹) * g₀ ∈ Nset k r
    rw [conj_back hg]
    exact hx.1
  have hnullS : μ₀.map φ Sᶜ = 0 := by
    rw [Measure.map_apply hφm hSm.compl]
    refine measure_mono_null ?_ hnull
    intro x hx hxR
    exact hx (hφS x hxR)
  have hνf : (μ₀.map φ).map f = c • volume := by
    rw [Measure.map_map hfc.measurable hφm]
    have hR : ∀ᵐ x ∂μ₀, Matrix.of x ∈ Rset k r g₀ := ae_iff.2 hnull
    have hae : f ∘ φ =ᵐ[μ₀] phiR p ∘ rootCoords k r L.z' p := by
      filter_upwards [hR] with x hx
      exact rootCoords_conj hz hz' hg hP hx
    rw [Measure.map_congr hae, ← Measure.map_map (phiR_mp p).measurable
      (continuous_rootCoords L.z' p).measurable, hmap, Measure.map_smul, (phiR_mp p).map_eq]
    exact (phiR_mp p).measurable.aemeasurable
  have hc0 : c ≠ 0 := by
    rw [hc_def, ne_eq, ENNReal.ofReal_eq_zero, not_le]
    exact pow_pos (div_pos (norm_pos_iff.2 hc) (by positivity)) _
  have hsf : SigmaFinite (μ₀.map φ) := by
    refine SigmaFinite.of_map _ hfc.measurable.aemeasurable ?_
    rw [hνf, ← ENNReal.coe_toNNReal (show c ≠ ⊤ from by rw [hc_def]; exact ENNReal.ofReal_ne_top),
      ← ENNReal.smul_def]
    infer_instance
  have hne : μ₀.map φ ≠ 0 := by
    intro h0
    have e := hνf
    rw [h0, Measure.map_zero] at e
    have e2 := congrArg (fun m : Measure (rootPat p → ℂ) => m Set.univ) e
    simp only [Measure.coe_zero, Pi.zero_apply, Measure.smul_apply, smul_eq_mul] at e2
    rcases mul_eq_zero.1 e2.symm with h | h
    · exact hc0 h
    · exact NeZero.ne (volume : Measure (rootPat p → ℂ)) (Measure.measure_univ_eq_zero.1 h)
  refine ⟨hsf, hne, hnullS, ?_⟩
  intro s hs
  have hlm : Measurable (lmulM s : Mt k r → Mt k r) := by
    convert measurable_conjM (k := k) (r := r) s 1 using 1
    funext x i j
    simp [lmulM]
  have hνS : S ∈ ae (μ₀.map φ) := mem_ae_iff.2 hnullS
  have hone : ∀ (v : rootPat p → ℂ) (q : rootPat p), (1 + vM (rootPat p) v) q.1.1 q.1.2 = v q := by
    intro v q
    rw [Matrix.add_apply, vM_at, Matrix.one_apply_ne (ne_of_lt (rootPat_lt p q.1 q.2)), zero_add]
  set s' := f (fun i j => s i j) with hs'
  refine ext_of_injOn hSm hfc hinj ?_ hnullS ?_
  · rw [Measure.map_apply hlm hSm.compl]
    refine measure_mono_null ?_ hnullS
    intro y hy hyS
    apply hy
    show s * Matrix.of y ∈ RStab k r g₀
    exact rstab_mul' hg hs hyS
  · rw [Measure.map_map hfc.measurable hlm]
    have hae : f ∘ lmulM s =ᵐ[μ₀.map φ] (fun v q => v q + gS p s' q v) ∘ f := by
      filter_upwards [hνS] with y hy
      funext q
      have hsy : s * Matrix.of y ∈ RStab k r g₀ := rstab_mul' hg hs hy
      have e1 := flagZ_eq hz hz' hg hP hsy
      have e2 := flagMat_mul hz hs.1 hy.1
      have e3 := flagZ_eq hz hz' hg hP hs
      have e4 := flagZ_eq hz hz' hg hP (a := Matrix.of y) hy
      have e5 : 1 + vM (rootPat p) (f (fun i j => (s * Matrix.of y) i j)) =
          (1 + vM (rootPat p) s') * (1 + vM (rootPat p) (f y)) := by
        rw [← e1, e2, e3, e4]
        all_goals rfl
      have e6 := congrFun (congrFun e5 q.1.1) q.1.2
      rw [hone, lm_eq] at e6
      exact e6
    rw [Measure.map_congr hae, ← Measure.map_map (lm_mp p s').measurable hfc.measurable, hνf,
      Measure.map_smul, (lm_mp p s').map_eq]
    exact (lm_mp p s').measurable.aemeasurable

end PI.AmpRootHaarW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RootSubgroupHaar.RootHaarMain =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AmpRootHaar =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AmpRootHaar", "h": "module\n\npublic import Formalism.PeriodIntegrals.AmpRootH\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RootSubgroupHaar.RootHaarMain\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AmpRootHaar =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AmpRootJac =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AmpRootJac", "h": "module\n\npublic import Formalism.PeriodIntegrals.AmpRoot\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RootSubgroupJacobian.ContinuousRootCoords\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AmpRootJac =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.RowsFinalAmpRoot =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.RowsFinalAmpRoot", "h": "module\n\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.FrobeniusCoefficientMemLp.AmpRootCut\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AmpOrbQuot\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AmpRelAtPt\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AmpRootHaar\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AmpRootJac\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.BridgeCSB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.PeriodIntegrals.AmpOrbQ\npublic import Formalism.PeriodIntegrals.AmpRoot\npublic import Formalism.PeriodIntegrals.AmpRootH\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.MainNotions.S.Pv.LemmaJ

theorem relAtPt_holds : RelAtPt := (show PI.AmpRoot.RelAtPt ↔ RelAtPt from Iff.rfl).mp _root_.amplifier_relation_at_point

theorem rootJac_holds : RootJac := (show PI.AmpRoot.RootJac ↔ RootJac from Iff.rfl).mp _root_.PI.AmpRootJacW.rootJac

theorem rootHaar_holds : RootHaar := (show PI.AmpRootH.RootHaar ↔ RootHaar from Iff.rfl).mp _root_.PI.AmpRootHaarW.rootHaar_main

theorem exists_orbQuot₂ : OrbQuotEx := (show PI.AmpOrbQ.OrbQuotEx ↔ OrbQuotEx from Iff.rfl).mp (_root_.orbQuotEx_of_haarLieN (show PI.AmpOrbQ.HaarLieN from Formalism.MainNotions.BridgeCSB.haarLieN))

end Formalism.MainNotions.S.Pv.LemmaJ
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.TraceIntegralEstimates.RowsFinalAmpRoot =====
