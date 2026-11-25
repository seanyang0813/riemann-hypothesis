module

public import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.StatementsBlockResolutionMixedBridge
public import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.AnResBridge
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterGood
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterRedA
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterRedF
public import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.StatementsResolutionMixedBridge
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovGeometry.AMixSt
public import GroundTheory.HeightsAndTheta.Heights.Intersections.StatementsFibreIsolFinite
public import GroundTheory.HeightsAndTheta.Heights.Intersections.PullBad
public import GroundTheory.HeightsAndTheta.Heights.Intersections.HasStrictFDerivAtEquiv
public import GroundTheory.HeightsAndTheta.Heights.Intersections.ProjectionPullbackZeroSetNull
public import GroundTheory.HeightsAndTheta.Heights.Intersections.StatementsBlockGenFinite
public import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.AssemblyBase
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovGeometry.AParamStA
import GroundTheory.HeightsAndTheta.Heights.Intersections.PullWMemFibre
import Mathlib.Analysis.Calculus.InverseFunctionTheorem.FDeriv
import Mathlib.Topology.Algebra.MvPolynomial
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterBridgeB
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterBridgeE
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterFib
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterBridge

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PBlockResolutionMixedBridge, GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PResolutionMixedBridge, GroundTheory.HeightsAndTheta.Heights.Intersections.ContinuousMinorRatioLift, GroundTheory.HeightsAndTheta.Heights.Intersections.ImportsExtra, GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.AssemblyBridge

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PBlockResolutionMixedBridge =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PBlockResolutionMixedBridge", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.StatementsBlockResolutionMixedBridge\npublic import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.AnResBridge\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterGood\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterRedA\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterRedF\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.HilbertSamuel

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.ArakelovGeometry ReciprocityTheory.AnForm.M

noncomputable section

theorem BlockResolutionMixedBridge.proof : BlockResolutionMixedBridge.Statement := by
  intro D K _ _ ι _ Ω _ _ d L A₁ hL hdeg hA₁
  have hex : ∃ Ψ : (((k : K) → ι k) → ℂ) →ₗ[ℂ] (Fin (D + 1) → ℂ),
      IsGoodProj (mCoordIdeal d.y) Ψ :=
    goodProjExists K ι (mCoordIdeal d.y) D d.arith
  set B : HermLine ι :=A₁.tensor d.A.inv with hBdef
  have hB0 : B.a = 0 := by
    funext k
    simp [B, HermLine.tensor, ReciprocityTheory.ChartRestriction.G.Geo.HermLine.inv, hdeg, d.deg]
  have hgl : (fun z => Real.log (A₁.h z / d.A.h z)) = logNorm B.inv 1 := by
    funext z
    rw [logNorm_inv_one]
    simp only [B, HermLine.tensor, ReciprocityTheory.ChartRestriction.G.Geo.HermLine.inv, div_eq_mul_inv]
  have hBs : IsSmoothHerm B.inv :=
    isSmoothHerm_inv (isSmoothHerm_tensor hA₁ (isSmoothHerm_inv d.semipos.1))
  have hsec : IsSectionOn (mCoordIdeal d.y) B.inv 1 := isSectionOn_inv_one d.arith.2.1.1 hB0
  have key := AnResBridge.bridge d.R hex.choose L B.inv 1 d.arith hex.choose_spec hL hBs hsec
  have hgr : (fun x => Real.log (A₁.h (blockPt d x) / d.A.h (blockPt d x))) =
      fun x => logNorm B.inv 1 (d.R.lift x x) :=
    funext fun x => congrFun hgl (d.R.lift x x)
  unfold ptsIntegral
  rw [dite_eq_left hex, hgl, hgr]
  exact key

end

end GroundTheory.Heights₂.Heights.HilbertSamuel
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PBlockResolutionMixedBridge =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PResolutionMixedBridge =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PResolutionMixedBridge", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.StatementsResolutionMixedBridge\npublic import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.AnResBridge\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovGeometry.AMixSt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterGood\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterRedA\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterRedF\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovGeometry.AParamStA\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.HilbertSamuel

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.ArakelovGeometry ReciprocityTheory.AnForm.M

noncomputable section

theorem ResolutionMixedBridge.proof : ResolutionMixedBridge.Statement := by
  intro D Ω _ _ κ _ d M m₁ hM hm₁
  have hex : ∃ Ψ : (((k : Unit) → GlobalTheory κ k) → ℂ) →ₗ[ℂ] (Fin (D + 1) → ℂ),
      IsGoodProj (coordIdeal ℤ d.x) Ψ :=
    goodProjExists Unit (GlobalTheory κ) (coordIdeal ℤ d.x) D d.arith
  set B : ReciprocityTheory.ChartRestriction.G.Geo.HermLine (GlobalTheory κ) :=
    (HermLine.ofCone m₁).tensor (HermLine.ofCone d.m).inv with hBdef
  have hB0 : B.a = 0 := by
    funext k
    simp [B, HermLine.tensor, ReciprocityTheory.ChartRestriction.G.Geo.HermLine.inv, HermLine.ofCone]
  have hgl : logRatio d.m m₁ = logNorm B.inv 1 := by
    funext z
    rw [logNorm_inv_one]
    simp only [B, HermLine.tensor, ReciprocityTheory.ChartRestriction.G.Geo.HermLine.inv, HermLine.ofCone, logRatio,
      div_eq_mul_inv]
  have hBs : IsSmoothHerm B.inv :=
    isSmoothHerm_inv (isSmoothHerm_tensor (gbamix_smoothHerm_ofCone hm₁)
      (isSmoothHerm_inv (gbamix_smoothHerm_ofCone d.smooth)))
  have hsec : IsSectionOn (coordIdeal ℤ d.x) B.inv 1 := isSectionOn_inv_one d.arith.2.1.1 hB0
  have key := AnResBridge.bridge d.R hex.choose (fun j => HermLine.ofCone (M j)) B.inv 1 d.arith
    hex.choose_spec (fun j => gbamix_smoothHerm_ofCone (hM j)) hBs hsec
  unfold ptsIntegral
  rw [dite_eq_left hex, hgl]
  exact key

end

end GroundTheory.Heights₂.Heights.HilbertSamuel
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PResolutionMixedBridge =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.Intersections.ContinuousMinorRatioLift =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.Intersections.ContinuousMinorRatioLift", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.Intersections.StatementsFibreIsolFinite\npublic import GroundTheory.HeightsAndTheta.Heights.Intersections.PullBad\npublic import GroundTheory.HeightsAndTheta.Heights.Intersections.HasStrictFDerivAtEquiv\npublic import GroundTheory.HeightsAndTheta.Heights.Intersections.ProjectionPullbackZeroSetNull\nimport GroundTheory.HeightsAndTheta.Heights.Intersections.PullWMemFibre\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Calculus.InverseFunctionTheorem.FDeriv\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Algebra.MvPolynomial\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterBridgeB\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterBridgeE\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterFib\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

noncomputable section

namespace GroundTheory.Heights₂.Heights.Inter

open MvPolynomial MeasureTheory ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.AI.I1 ReciprocityTheory.ChartRestriction.G.AI.I4 ReciprocityTheory.AnForm.M
  Topology Filter Set

namespace pullbackPushforward_holds

section Minor

variable {Ω : Type} [Fintype Ω]

def minorRatio (b a : Ω → ℂ) : ℝ :=
  ‖fun il : Ω × Ω => a il.1 * b il.2 - a il.2 * b il.1‖ / ‖a‖

theorem minorRatio_nonneg (b a : Ω → ℂ) : 0 ≤ minorRatio b a :=
  div_nonneg (norm_nonneg _) (norm_nonneg _)

theorem minorRatio_smul (b a : Ω → ℂ) {μ : ℂ} (hμ : μ ≠ 0) : minorRatio b (μ • a) = minorRatio b a := by
  unfold minorRatio
  have h : (fun il : Ω × Ω => (μ • a) il.1 * b il.2 - (μ • a) il.2 * b il.1) =
      μ • fun il : Ω × Ω => a il.1 * b il.2 - a il.2 * b il.1 := by
    funext il
    simp only [Pi.smul_apply, smul_eq_mul]
    ring
  rw [h, norm_smul, norm_smul]
  exact mul_div_mul_left _ _ (norm_ne_zero_iff.mpr hμ)

theorem minorRatio_self (b : Ω → ℂ) : minorRatio b b = 0 := by
  unfold minorRatio
  have h : (fun il : Ω × Ω => b il.1 * b il.2 - b il.2 * b il.1) = 0 := by
    funext il
    simp only [Pi.zero_apply]
    ring
  rw [h, norm_zero, zero_div]

theorem continuousAt_minorRatio (b : Ω → ℂ) {a : Ω → ℂ} (ha : a ≠ 0) :
    ContinuousAt (minorRatio b) a := by
  unfold minorRatio
  refine ContinuousAt.div ?_ continuous_norm.continuousAt (norm_ne_zero_iff.mpr ha)
  refine (continuous_norm.comp (continuous_pi fun il => ?_)).continuousAt
  exact ((continuous_apply il.1).mul continuous_const).sub ((continuous_apply il.2).mul continuous_const)

theorem eq_smul_of_minorRatio {b a : Ω → ℂ} (hb : b ≠ 0) (ha : a ≠ 0) (h : minorRatio b a = 0) :
    ∃ μ : ℂ, μ ≠ 0 ∧ a = μ • b := by
  unfold minorRatio at h
  rw [div_eq_zero_iff, or_iff_left (norm_ne_zero_iff.mpr ha), norm_eq_zero] at h
  have hm : ∀ i l, a i * b l = a l * b i := fun i l => by
    have := congrFun h (i, l)
    simp only [Pi.zero_apply] at this
    exact sub_eq_zero.mp this
  obtain ⟨l0, hl0⟩ : ∃ l0, b l0 ≠ 0 := by
    by_contra hc
    push Not at hc
    exact hb (funext hc)
  have heq : a = (a l0 / b l0) • b := by
    funext i
    simp only [Pi.smul_apply, smul_eq_mul]
    rw [div_mul_eq_mul_div, eq_div_iff hl0]
    exact hm i l0
  refine ⟨a l0 / b l0, fun h0 => ha ?_, heq⟩
  rw [heq, h0, zero_smul]

end Minor

variable {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)]

theorem continuous_segre : Continuous (segre : ((Σ k, ι k) → ℂ) → ((k : K) → ι k) → ℂ) :=
  continuous_pi fun _ => continuous_finsetProd _ fun _ _ => continuous_apply _

theorem segre_ne_zero {z : (Σ k, ι k) → ℂ} (hz : ∀ k, ∃ i, z ⟨k, i⟩ ≠ 0) : segre z ≠ 0 := by
  choose p hp using hz
  intro h
  have := congrFun h p
  simp only [segre, Pi.zero_apply] at this
  exact (Finset.prod_ne_zero_iff.mpr fun k _ => hp k) this

variable {K' : Type} [Fintype K'] {ι' : K' → Type} [∀ k, Fintype (ι' k)]
  {P' J' : Ideal (MRing ι')} {n : ℕ} (R : AnLogRes P' J' n) {κ : K → K'} {v : (Σ k, ι k) → (Σ k', ι' k')}

theorem continuousAt_lift (x : R.X) : ContinuousAt (fun x' => R.lift x x') x := by
  obtain ⟨j, hj⟩ := R.A.cover x
  have hu : R.A.chart j x ∈ (R.A.chart j).target ∩ (R.A.chart j).symm ⁻¹' R.U x :=
    ⟨(R.A.chart j).map_source hj, by rw [Set.mem_preimage, (R.A.chart j).left_inv hj]; exact R.mem_U x⟩
  have h1 : ContinuousAt (fun x' => R.lift x ((R.A.chart j).symm (R.A.chart j x'))) x :=
    ContinuousAt.comp (f := R.A.chart j) (g := fun w => R.lift x ((R.A.chart j).symm w))
      (analyticAt_lift_chart R x j hu).continuousAt ((R.A.chart j).continuousAt hj)
  refine h1.congr ?_
  filter_upwards [(R.A.chart j).open_source.mem_nhds hj] with x' hx'
  rw [(R.A.chart j).left_inv hx']

theorem continuous_minorRatio_lift [DecidableEq K'] (b : ((k : K') → ι' k) → ℂ) :
    Continuous (fun x' : R.X => minorRatio b (segre (R.lift x' x'))) := by
  refine continuous_iff_continuousAt.mpr fun x' => ?_
  have hne : segre (R.lift x' x') ≠ 0 := segre_ne_zero (R.mem x' x' (R.mem_U x')).1
  have h1 : ContinuousAt (fun x'' => minorRatio b (segre (R.lift x' x''))) x' :=
    ContinuousAt.comp (g := minorRatio b) (continuousAt_minorRatio b hne)
      (continuous_segre.continuousAt.comp (continuousAt_lift R x'))
  refine h1.congr ?_
  filter_upwards [(R.isOpen_U x').mem_nhds (R.mem_U x')] with x'' hx''
  obtain ⟨μ, hμ, hμeq⟩ := segre_of_sameOrbit (R.compat x'' x' x'' ⟨R.mem_U x'', hx''⟩)
  rw [hμeq, minorRatio_smul b _ hμ]

theorem isolated_of_not_pullBad (hv : IsBlockMap κ v)
    (Ψ : (((k : K) → ι k) → ℂ) →ₗ[ℂ] (Fin (n + 1) → ℂ)) {x : R.X} (hx : x ∉ pullBad R v Ψ) :
    ∃ ε > 0, ∀ z'' ∈ mcPts P', SameOrbit (fun p => z'' (v p)) (pullPt R v x) →
      dist z'' (R.lift x x) < ε → SameOrbit z'' (R.lift x x) := by
  classical
  have hxB : R.lift x x ∉ mcPts J' := fun h => hx (Or.inl (Or.inl h))
  have hz' := R.mem x x (R.mem_U x)
  obtain ⟨j, hj⟩ := R.A.cover x
  have hgood : AnalyticAt ℂ (pullQ R v Ψ ∘ (R.A.chart j).symm) (R.A.chart j x) ∧
      LinearMap.det (fderiv ℂ (pullQ R v Ψ ∘ (R.A.chart j).symm) (R.A.chart j x) :
        (Fin n → ℂ) →ₗ[ℂ] (Fin n → ℂ)) ≠ 0 := by
    by_contra h
    exact hx (Or.inr ⟨j, hj, h⟩)
  obtain ⟨e, he⟩ := hasStrictFDerivAt_equiv hgood.1 hgood.2
  have hinj := (he.toOpenPartialHomeomorph (pullQ R v Ψ ∘ (R.A.chart j).symm)).injOn
  set V := (R.A.chart j).source ∩
    (R.A.chart j) ⁻¹' (he.toOpenPartialHomeomorph (pullQ R v Ψ ∘ (R.A.chart j).symm)).source with hVdef
  have hVo : IsOpen V := (R.A.chart j).isOpen_inter_preimage
    (he.toOpenPartialHomeomorph (pullQ R v Ψ ∘ (R.A.chart j).symm)).open_source
  have hxV : x ∈ V := ⟨hj, he.mem_toOpenPartialHomeomorph_source⟩
  have hb : segre (R.lift x x) ≠ 0 := segre_ne_zero hz'.1
  have hθc := continuous_minorRatio_lift R (segre (R.lift x x))
  have hθpos : ∀ x' ∈ Vᶜ, 0 < minorRatio (segre (R.lift x x)) (segre (R.lift x' x')) := by
    intro x' hx'
    refine lt_of_le_of_ne (minorRatio_nonneg _ _) (Ne.symm fun h0 => hx' ?_)
    obtain ⟨μ, hμ, hμeq⟩ := eq_smul_of_minorRatio hb (segre_ne_zero (R.mem x' x' (R.mem_U x')).1) h0
    have hso : SameOrbit (R.lift x' x') (R.lift x x) := sameOrbit_of_segre hz'.1 μ hμ hμeq
    rw [← R.inj x x' hxB (sameOrbit_comm hso)]
    exact hxV
  obtain ⟨m0, hm0, hm0le⟩ : ∃ m0 : ℝ, 0 < m0 ∧
      ∀ x' ∈ Vᶜ, m0 ≤ minorRatio (segre (R.lift x x)) (segre (R.lift x' x')) := by
    rcases (Vᶜ).eq_empty_or_nonempty with hC | hC
    · exact ⟨1, one_pos, fun x' hx' => by rw [hC] at hx'; exact absurd hx' (Set.notMem_empty x')⟩
    · obtain ⟨x1, hx1, hmin⟩ := (hVo.isClosed_compl.isCompact).exists_isMinOn hC hθc.continuousOn
      exact ⟨_, hθpos x1 hx1, fun x' hx' => isMinOn_iff.mp hmin x' hx'⟩
  have hDc : ContinuousAt (fun z : (Σ k', ι' k') → ℂ => minorRatio (segre (R.lift x x)) (segre z))
      (R.lift x x) :=
    ContinuousAt.comp (g := minorRatio (segre (R.lift x x))) (continuousAt_minorRatio _ hb)
      continuous_segre.continuousAt
  obtain ⟨ε1, hε1, hball1⟩ := Metric.continuousAt_iff.mp hDc m0 hm0
  obtain ⟨g, hgJ, hg0⟩ : ∃ g ∈ J', eval (R.lift x x) (map (Int.castRingHom ℂ) g) ≠ 0 := by
    by_contra h
    push Not at h
    exact hxB ⟨hz'.1, h⟩
  have hgc : ContinuousAt (fun z : (Σ k', ι' k') → ℂ => eval z (map (Int.castRingHom ℂ) g))
      (R.lift x x) :=
    (MvPolynomial.continuous_eval _).continuousAt
  obtain ⟨ε2, hε2, hball2⟩ := Metric.continuousAt_iff.mp hgc _ (norm_pos_iff.mpr hg0)
  refine ⟨min ε1 ε2, lt_min hε1 hε2, fun z'' hz'' hzv hd => ?_⟩
  have hd1 : dist z'' (R.lift x x) < ε1 := lt_of_lt_of_le hd (min_le_left _ _)
  have hd2 : dist z'' (R.lift x x) < ε2 := lt_of_lt_of_le hd (min_le_right _ _)
  have hzB : z'' ∉ mcPts J' := by
    intro h
    have h2 : dist (eval z'' (map (Int.castRingHom ℂ) g)) (eval (R.lift x x) (map (Int.castRingHom ℂ) g)) <
        ‖eval (R.lift x x) (map (Int.castRingHom ℂ) g)‖ := hball2 hd2
    rw [h.2 g hgJ, dist_zero_left] at h2
    exact lt_irrefl _ h2
  obtain ⟨x'', hx''⟩ := R.surj z'' hz'' hzB
  have hθx'' : minorRatio (segre (R.lift x x)) (segre (R.lift x'' x'')) < m0 := by
    obtain ⟨μ, hμ, hμeq⟩ := segre_of_sameOrbit hx''
    have h1 : dist (minorRatio (segre (R.lift x x)) (segre z''))
        (minorRatio (segre (R.lift x x)) (segre (R.lift x x))) < m0 := hball1 hd1
    rw [minorRatio_self, Real.dist_eq, sub_zero] at h1
    rw [hμeq, minorRatio_smul _ _ hμ]
    exact lt_of_le_of_lt (le_abs_self _) h1
  have hx''V : x'' ∈ V := by
    by_contra hc
    exact absurd (hm0le x'' hc) (not_le.mpr hθx'')
  have hso : SameOrbit (pullPt R v x'') (pullPt R v x) :=
    sameOrbit_tr (sameOrbit_comp hv hx'') hzv
  have hq : pullQ R v Ψ x'' = pullQ R v Ψ x := by
    obtain ⟨μ, hμ, hμeq⟩ := segre_of_sameOrbit hso
    funext i
    simp only [pullQ, hμeq, map_smul, Pi.smul_apply, smul_eq_mul]
    exact mul_div_mul_left _ _ hμ
  have hxx : x'' = x := by
    have h1 : (pullQ R v Ψ ∘ (R.A.chart j).symm) (R.A.chart j x'') =
        (pullQ R v Ψ ∘ (R.A.chart j).symm) (R.A.chart j x) := by
      simp only [Function.comp_apply, (R.A.chart j).left_inv hx''V.1, (R.A.chart j).left_inv hj, hq]
    have h2 : R.A.chart j x'' = R.A.chart j x :=
      hinj hx''V.2 hxV.2 (by rw [HasStrictFDerivAt.toOpenPartialHomeomorph_coe]; exact h1)
    exact (R.A.chart j).injOn hx''V.1 hj h2
  rw [hxx] at hx''
  exact sameOrbit_comm hx''

theorem pullFib_finite (hIsol : FibreIsolFinite.Statement) (hv : IsBlockMap κ v)
    (hP' : IsArithVar P' (n + 1)) (hP : IsArithVar (imageZ v P') (n + 1))
    (Ψ : (((k : K) → ι k) → ℂ) →ₗ[ℂ] (Fin (n + 1) → ℂ)) (hΨ : IsGoodProj (imageZ v P') Ψ)
    (y : Fin n → ℂ) : (pullQ R v Ψ ⁻¹' {y} \ pullBad R v Ψ).Finite := by
  classical
  have hF := fibreFinite K ι (imageZ v P') n Ψ hP hΨ y
  choose! uw huw using fun w (hw : w ∈ fibre (imageZ v P') Ψ y) => hw
  choose T hT using fun w => hIsol K ι K' ι' κ v P' n hv hP' (uw w)
  refine (hF.biUnion fun w _ => (T w).finite_toSet.biUnion fun t _ =>
    (orbit_subsingleton R t).finite).subset ?_
  rintro x ⟨hqx, hx⟩
  have hxB : R.lift x x ∉ mcPts J' := fun h => hx (Or.inl (Or.inl h))
  have h0x : Ψ (segre (pullPt R v x)) 0 ≠ 0 := fun h => hx (Or.inl (Or.inr h))
  have hw := IntersectionWithSection.pullW_mem_fibre hv hP R Ψ h0x
  rw [show pullQ R v Ψ x = y from hqx] at hw
  obtain ⟨hu1, hu2, -⟩ := huw _ hw
  have hso : SameOrbit (pullPt R v x) (uw (pullW R v Ψ x)) :=
    sameOrbit_of_segre hu1.1 (Ψ (segre (pullPt R v x)) 0) h0x
      (by rw [hu2]; simp [pullW, smul_smul, mul_inv_cancel₀ h0x])
  obtain ⟨ε, hε, hiso⟩ := isolated_of_not_pullBad R hv Ψ hx
  obtain ⟨t, ht, hxt⟩ := hT (pullW R v Ψ x) (R.lift x x) (R.mem x x (R.mem_U x)) hso
    ⟨ε, hε, fun z'' hz'' hzu hd => hiso z'' hz'' (sameOrbit_tr hzu (sameOrbit_comm hso)) hd⟩
  exact Set.mem_biUnion hw (Set.mem_biUnion (Finset.mem_coe.mpr ht) ⟨hxB, hxt⟩)

end pullbackPushforward_holds

end GroundTheory.Heights₂.Heights.Inter
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.Intersections.ContinuousMinorRatioLift =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.Intersections.ImportsExtra =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.Intersections.ImportsExtra", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.Intersections.PullBad\npublic import GroundTheory.HeightsAndTheta.Heights.Intersections.StatementsBlockGenFinite\npublic import GroundTheory.HeightsAndTheta.Heights.Intersections.StatementsFibreIsolFinite\npublic import GroundTheory.HeightsAndTheta.Heights.Intersections.ContinuousMinorRatioLift\nimport GroundTheory.HeightsAndTheta.Heights.Intersections.ProjectionPullbackZeroSetNull\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

noncomputable section

namespace GroundTheory.Heights₂.Heights.Inter

open MvPolynomial MeasureTheory ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.AI.I1 ReciprocityTheory.ChartRestriction.G.AI.I4 ReciprocityTheory.AnForm.M

theorem pullbackPushforward_holds.proof (hGen : BlockGenFinite.Statement) (hIsol : FibreIsolFinite.Statement) :
    pullbackPushforward_holds.Statement := by
  intro K _ ι _ K' _ ι' _ κ v P' J' n R Ψ hv hP' hP hΨ
  exact ⟨fun j => pullbackPushforward_holds.pullBad_null R hGen hv hP' hP Ψ hΨ j,
    fun y => pullbackPushforward_holds.pullFib_finite R hIsol hv hP' hP Ψ hΨ y⟩

end GroundTheory.Heights₂.Heights.Inter
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.Intersections.ImportsExtra =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.AssemblyBridge =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.AssemblyBridge", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.StatementsBlockResolutionMixedBridge\npublic import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.StatementsResolutionMixedBridge\npublic import GroundTheory.HeightsAndTheta.Heights.Intersections.PullBad\npublic import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.AssemblyBase\npublic import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PBlockResolutionMixedBridge\npublic import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PResolutionMixedBridge\npublic import GroundTheory.HeightsAndTheta.Heights.Intersections.ImportsExtra\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterBridge\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.HilbertSamuel

alias BlockResolutionMixedBridge.full := _root_.GroundTheory.Heights₂.Heights.HilbertSamuel.BlockResolutionMixedBridge.proof

alias ResolutionMixedBridge.full := _root_.GroundTheory.Heights₂.Heights.HilbertSamuel.ResolutionMixedBridge.proof

theorem Closed.Inter.pullbackPushforward_holds : GroundTheory.Heights₂.Heights.Inter.pullbackPushforward_holds.Statement :=
  GroundTheory.Heights₂.Heights.Inter.pullbackPushforward_holds.proof Closed.Inter.BlockGenFinite _root_.GroundTheory.Heights₂.Heights.Inter.FibreIsolFinite.proof

alias Closed.ReciprocityTheory.ChartRestriction.G.Geo.ResBridge := _root_.ReciprocityTheory.ChartRestriction.G.Geo.resBridge

end GroundTheory.Heights₂.Heights.HilbertSamuel
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.AssemblyBridge =====
