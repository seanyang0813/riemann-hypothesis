module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.FundSetMeasStatement
public import Mathlib.Analysis.InnerProductSpace.Calculus
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.ExhaustFStatementPfD
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.ExhaustFStatementPfE
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.InterpStatementPfK
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.InterpStatementPfG
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.WeightFunctionOnFrames
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.InterpStatementPfJ
import ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.DerivDerivNonposOfIsLocalMax
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.InterpStatementPfC
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.InterpStatementPfE
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.InterpStatementPfH
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.ExtFStatementPfB
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.FlowCoefficientBounds
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.FourierCoefficientDomain

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.ExhaustFStatementPf, ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.InterpStatementPfM

-- ===== clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.ExhaustFStatementPf =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.ExhaustFStatementPf", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.FundSetMeasStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.InnerProductSpace.Calculus\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.ExhaustFStatementPfD\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.ExhaustFStatementPfE\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.AR.Up

open NumberField Topology Filter ReciprocityTheory.L2DbarEstimates ReciprocityTheory.ChartRestriction.G.AR.Up.ExhA ReciprocityTheory.ChartRestriction.G.AR.Up.ExhB
  ReciprocityTheory.ChartRestriction.G.AR.Up.ExhC ReciprocityTheory.ChartRestriction.G.AR.Up.ExhD ReciprocityTheory.ChartRestriction.G.AR.Up.ExhE
open scoped ContDiff

variable {E : Type} [Field E] [NumberField E] [IsCMField E]

private theorem val_chart_symm_apply {n : ℕ} {U : Set (V n)} (e : OpenPartialHomeomorph U (V n))
    (he : IsChart n Subtype.val e) {w : V n} (hw : w ∈ e.target) : ((e.symm w : U) : V n) = w := by
  have h1 : e.symm w ∈ e.source := e.map_target hw
  rw [he h1]
  exact e.right_inv hw

private theorem comp_chart_symm_eventuallyEq_of_mem_target {n : ℕ} {U : Set (V n)} (e : OpenPartialHomeomorph U (V n))
    (he : IsChart n Subtype.val e) (g : V n → ℂ) {w : V n} (hw : w ∈ e.target) :
    (fun y : U => g y.1) ∘ e.symm =ᶠ[nhds w] g := by
  filter_upwards [e.open_target.mem_nhds hw] with y hy
  simp only [Function.comp_apply]
  rw [val_chart_symm_apply e he hy]

private theorem exists_isChart_subtype_val {n : ℕ} {U : Set (V n)} (hz : IsLocalHomeomorph (Subtype.val : U → V n))
    (y : U) : ∃ e : OpenPartialHomeomorph U (V n), IsChart n Subtype.val e ∧ y ∈ e.source := by
  obtain ⟨e, hy, he⟩ := hz y
  exact ⟨e, fun a _ => by rw [he], hy⟩

private theorem db_subtype_val_eq_wdb {n : ℕ} {U : Set (V n)} (hz : IsLocalHomeomorph (Subtype.val : U → V n))
    (g : V n → ℂ) (k : Fin n) (y : U) : db n Subtype.val k (fun y : U => g y.1) y = wdb n k g y.1 := by
  have hex := exists_isChart_subtype_val hz y
  unfold db
  rw [dite_eq_left hex]
  have hc := Classical.choose_spec hex
  have hw : y.1 ∈ (Classical.choose hex).target := by
    rw [hc.1 hc.2]
    exact (Classical.choose hex).map_source hc.2
  unfold wdb
  rw [(comp_chart_symm_eventuallyEq_of_mem_target _ hc.1 g hw).fderiv_eq]

private theorem d_subtype_val_eq_wd {n : ℕ} {U : Set (V n)} (hz : IsLocalHomeomorph (Subtype.val : U → V n))
    (g : V n → ℂ) (k : Fin n) (y : U) : d n Subtype.val k (fun y : U => g y.1) y = wd n k g y.1 := by
  have hex := exists_isChart_subtype_val hz y
  unfold d
  rw [dite_eq_left hex]
  have hc := Classical.choose_spec hex
  have hw : y.1 ∈ (Classical.choose hex).target := by
    rw [hc.1 hc.2]
    exact (Classical.choose hex).map_source hc.2
  unfold wd
  rw [(comp_chart_symm_eventuallyEq_of_mem_target _ hc.1 g hw).fderiv_eq]

private theorem levi_lemma_6 {n : ℕ} {U : Set (V n)} (hz : IsLocalHomeomorph (Subtype.val : U → V n))
    (ph : V n → ℝ) (x : U) (ξ : Fin n → ℂ) :
    Levi n Subtype.val (fun y : U => ph y.1) x ξ = leviV n (fun w => ((ph w : ℝ) : ℂ)) x.1 ξ := by
  unfold Levi leviV
  beta_reduce
  refine Finset.sum_congr rfl fun j _ => Finset.sum_congr rfl fun k _ => ?_
  have h1 : db n Subtype.val k (fun y : U => ((ph y.1 : ℝ) : ℂ)) =
      fun y : U => wdb n k (fun w => ((ph w : ℝ) : ℂ)) y.1 :=
    funext fun y => db_subtype_val_eq_wdb hz (fun w => ((ph w : ℝ) : ℂ)) k y
  rw [h1, d_subtype_val_eq_wd hz (wdb n k (fun w => ((ph w : ℝ) : ℂ))) j x]

private theorem leviV_add {n : ℕ} (g1 g2 : V n → ℂ) (y : V n)
    (h1 : ∀ᶠ w in nhds y, ContDiffAt ℝ ∞ g1 w) (h2 : ∀ᶠ w in nhds y, ContDiffAt ℝ ∞ g2 w)
    (ξ : Fin n → ℂ) :
    leviV n (fun w => g1 w + g2 w) y ξ = leviV n g1 y ξ + leviV n g2 y ξ := by
  have hev : ∀ k, wdb n k (fun w => g1 w + g2 w) =ᶠ[nhds y] fun w => wdb n k g1 w + wdb n k g2 w := by
    intro k
    filter_upwards [h1, h2] with w hw1 hw2
    have d1 : DifferentiableAt ℝ g1 w := hw1.differentiableAt (by first | norm_num)
    have d2 : DifferentiableAt ℝ g2 w := hw2.differentiableAt (by first | norm_num)
    unfold wdb
    first
      | rw [fderiv_fun_add d1 d2]
    simp only [ContinuousLinearMap.add_apply]
    ring
  have hdiff : ∀ g : V n → ℂ, ContDiffAt ℝ ∞ g y → ∀ k, DifferentiableAt ℝ (wdb n k g) y := by
    intro g hg k
    have hf : ContDiffAt ℝ 1 (fderiv ℝ g) y := hg.fderiv_right (by
      first
        | exact WithTop.coe_le_coe.mpr le_top)
    have hfd : DifferentiableAt ℝ (fderiv ℝ g) y := hf.differentiableAt (by first | exact one_ne_zero)
    have ha : DifferentiableAt ℝ (fun w => fderiv ℝ g w (bas n k)) y :=
      hfd.clm_apply (differentiableAt_const _)
    have hb : DifferentiableAt ℝ (fun w => fderiv ℝ g w (Complex.I • bas n k)) y :=
      hfd.clm_apply (differentiableAt_const _)
    unfold wdb
    first
      | fun_prop
  unfold leviV
  rw [← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun k _ => ?_
  have e1 : wd n j (wdb n k (fun w => g1 w + g2 w)) y =
      wd n j (wdb n k g1) y + wd n j (wdb n k g2) y := by
    unfold wd
    rw [(hev k).fderiv_eq]
    first
      | rw [fderiv_fun_add (hdiff g1 h1.self_of_nhds k) (hdiff g2 h2.self_of_nhds k)]
    simp only [ContinuousLinearMap.add_apply]
    ring
  rw [e1]
  ring

theorem exhaustF_holds : ExhaustFStatement (E := E) := by
  intro r X x0 ho
  have hU : IsOpen (OmF X x0) := ExF.isOpen_OmF X x0
  have hz : IsLocalHomeomorph (Subtype.val : OmF X x0 → _) := by
    first
      | exact hU.isOpenEmbedding_subtypeVal.isLocalHomeomorph
  have hgE : ∀ w ∈ OmF X x0, ContDiffAt ℝ ∞ (fun w => ((eF X x0 w : ℝ) : ℂ)) w := fun w hw =>
    Complex.ofRealCLM.contDiff.contDiffAt.comp w (ExF.eF_contDiffAt X x0 ho hw)
  have hg1 : ∀ w ∈ OmF X x0, ContDiffAt ℝ ∞ (fun w => ((rhF X x0 w : ℝ) : ℂ)) w := fun w hw =>
    Complex.ofRealCLM.contDiff.contDiffAt.comp w (ExF.rhF_contDiffAt X x0 ho hw)
  have hg2 : ∀ {m : ℕ} (w : V m), ContDiffAt ℝ ∞ (fun w : V m => ((Real.log (1 + ‖w‖ ^ 2) : ℝ) : ℂ)) w :=
    fun w => Complex.ofRealCLM.contDiff.contDiffAt.comp w
      ((contDiff_const.add (contDiff_norm_sq ℂ)).log fun w => by positivity).contDiffAt
  refine ⟨{
      z := Subtype.val
      isLocalHomeomorph := hz
      e := (fun y => eF X x0 y.1)
      smooth_e := ?_
      levi_e := ?_
      isCompact_le := ?_ }, rfl, rfl⟩
  · unfold SmoothR Smooth
    intro e he
    refine ContDiffOn.congr (f := fun w => ((eF X x0 w : ℝ) : ℂ))
      (fun w hw => (hgE w ?_).contDiffWithinAt) (fun w hw => ?_)
    · rw [← val_chart_symm_apply e he hw]
      exact (e.symm w).2
    · simp only [Function.comp_apply]
      rw [val_chart_symm_apply e he hw]
  · unfold LeviNonneg
    intro x ξ
    rw [levi_lemma_6 hz (eF X x0) x ξ]
    have hsplit : (fun w => ((eF X x0 w : ℝ) : ℂ)) =
        fun w => ((rhF X x0 w : ℝ) : ℂ) + ((Real.log (1 + ‖w‖ ^ 2) : ℝ) : ℂ) := by
      funext w
      simp [eF]
    have hev1 : ∀ᶠ w in nhds x.1, ContDiffAt ℝ ∞ (fun w => ((rhF X x0 w : ℝ) : ℂ)) w :=
      Filter.eventually_of_mem (hU.mem_nhds x.2) hg1
    have hev2 : ∀ᶠ w in nhds x.1, ContDiffAt ℝ ∞ (fun w => ((Real.log (1 + ‖w‖ ^ 2) : ℝ) : ℂ)) w :=
      Filter.Eventually.of_forall fun w => hg2 w
    rw [hsplit, leviV_add _ _ _ hev1 hev2, Complex.add_re]
    exact add_nonneg (ExF.levi_rhF_nonneg X x0 ho x.2 ξ) (ExF.leviT_nonneg _ ξ)
  · intro a
    have hc := ExF.isCompact_subF X x0 ho a
    rw [Subtype.isCompact_iff]
    convert hc using 1
    ext w
    constructor
    · rintro ⟨y, hy, rfl⟩
      exact ⟨y.2, hy⟩
    · rintro ⟨hw, ha⟩
      exact ⟨⟨w, hw⟩, ha, rfl⟩

end ReciprocityTheory.ChartRestriction.G.AR.Up
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.ExhaustFStatementPf =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.InterpStatementPfM =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.InterpStatementPfM", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.InterpStatementPfK\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.InterpStatementPfG\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.WeightFunctionOnFrames\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.L2DbarEstimates.PlurisubharmonicCharts.DerivDerivNonposOfIsLocalMax\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.ExhaustFStatementPf\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.ExhaustFStatementPfD\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.ExhaustFStatementPfE\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.InterpStatementPfC\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.InterpStatementPfE\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.InterpStatementPfH\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.InterpStatementPfJ\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.ExtFStatementPfB\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.FlowCoefficientBounds\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.FourierCoefficientDomain\n\n"}
section -- clump:auto
@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.AR.Up.IW

open NumberField ReciprocityTheory.ChartRestriction.G.FD ReciprocityTheory.ChartRestriction.G.AR.Inst ReciprocityTheory.L2DbarEstimates MeasureTheory Topology Filter
  Metric
open scoped ContDiff ENNReal Matrix

noncomputable section

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {r : ℕ} (X : Data E r)

theorem eF_nonneg (x0 : Frame X.Ψ r) (ho : IsOrth X x0) {z : V (nd X)} (hz : z ∈ OmF X x0) :
    0 ≤ eF X x0 z :=
  add_nonneg (ExF.rhF_nonneg X x0 ho hz) (Real.log_nonneg (by nlinarith [norm_nonneg z]))

theorem eF_levi (x0 : Frame X.Ψ r) (ho : IsOrth X x0) :
    ∀ y ∈ OmF X x0, ∀ ξ : Fin (nd X) → ℂ, 0 ≤ (leviV (nd X) (fun w => (eF X x0 w : ℂ)) y ξ).re := by
  intro y hy ξ
  obtain ⟨S, hSz, hSe⟩ := exhaustF_holds (E := E) r X x0 ho
  have h := S.levi_e ⟨y, hy⟩ ξ
  rw [hSz, hSe] at h
  rwa [HE.levi_val (ExF.isOpen_OmF X x0) (eF X x0)] at h

theorem eF_smooth (x0 : Frame X.Ψ r) (ho : IsOrth X x0) : ContDiffOn ℝ ∞ (eF X x0) (OmF X x0) :=
  fun z hz => (ExF.eF_contDiffAt X x0 ho hz).contDiffWithinAt

alias eF_compact := _root_.ReciprocityTheory.ChartRestriction.G.AR.Up.ExF.isCompact_subF

def psie (x0 : Frame X.Ψ r) (Fp L : Wt X.Ψ r) (ψ : Frame X.Ψ r → ℝ) (bb : ℝ) (w : V (nd X)) : ℝ :=
  phla X Fp (cpt X x0 w) + ψ (cpt X x0 w) - (nd X : ℝ) * phla X L (cpt X x0 w) - bb * rhF X x0 w -
    Real.log (densF X x0 w)

theorem psie_cdAt (x0 : Frame X.Ψ r) (ho : IsOrth X x0) (Fp L : Wt X.Ψ r) (ψ : Frame X.Ψ r → ℝ)
    (hψs : ContDiffOn ℝ ∞ (fun z => ψ (cpt X x0 z)) (OmF X x0)) (bb : ℝ) {z : V (nd X)}
    (hz : z ∈ OmF X x0) : ContDiffAt ℝ ∞ (psie X x0 Fp L ψ bb) z :=
  (((((phla_cpt_cdAt X x0 hz Fp).add (hψs.contDiffAt ((ExF.isOpen_OmF X x0).mem_nhds hz))).sub
    (contDiffAt_const.mul (phla_cpt_cdAt X x0 hz L))).sub
      (contDiffAt_const.mul (ExF.rhF_contDiffAt X x0 ho hz))).sub (logDens_cdAt X x0 hz))

theorem psie_levi (x0 : Frame X.Ψ r) (ho : IsOrth X x0) (Fp L : Wt X.Ψ r) (ψ : Frame X.Ψ r → ℝ)
    (hψs : ContDiffOn ℝ ∞ (fun z => ψ (cpt X x0 z)) (OmF X x0)) (bb : ℝ) {z : V (nd X)}
    (hz : z ∈ OmF X x0) (ξ : Fin (nd X) → ℂ) :
    (leviV (nd X) (fun w => (psie X x0 Fp L ψ bb w : ℂ)) z ξ).re =
      leviO X x0 (phla X Fp) z ξ + leviO X x0 ψ z ξ - (nd X : ℝ) * leviO X x0 (phla X L) z ξ -
        bb * leviRh X x0 z ξ - leviDens X x0 z ξ := by
  have h1 := (phla_cpt_cdAt X x0 hz Fp).of_le HE.two_le_inf
  have h2 := (hψs.contDiffAt ((ExF.isOpen_OmF X x0).mem_nhds hz)).of_le HE.two_le_inf
  have h3 := (phla_cpt_cdAt X x0 hz L).of_le HE.two_le_inf
  have h4 := (ExF.rhF_contDiffAt X x0 ho hz).of_le HE.two_le_inf
  have h5 := (logDens_cdAt X x0 hz).of_le HE.two_le_inf
  have e : (fun w => (psie X x0 Fp L ψ bb w : ℂ)) = fun w =>
      ((phla X Fp (cpt X x0 w) + (ψ (cpt X x0 w) + ((-(nd X : ℝ)) * phla X L (cpt X x0 w) +
        ((-bb) * rhF X x0 w + (-1) * Real.log (densF X x0 w)))) : ℝ) : ℂ) := by
    funext w; simp only [psie]; push_cast; ring
  rw [e, Y.LocalMaximumSecondDerivative.leviV_ofReal_add h1 (h2.add ((contDiffAt_const.mul h3).add
      ((contDiffAt_const.mul h4).add (contDiffAt_const.mul h5)))),
    Y.LocalMaximumSecondDerivative.leviV_ofReal_add h2 ((contDiffAt_const.mul h3).add
      ((contDiffAt_const.mul h4).add (contDiffAt_const.mul h5))),
    Y.LocalMaximumSecondDerivative.leviV_ofReal_add (contDiffAt_const.mul h3)
      ((contDiffAt_const.mul h4).add (contDiffAt_const.mul h5)),
    Y.LocalMaximumSecondDerivative.leviV_ofReal_add (contDiffAt_const.mul h4) (contDiffAt_const.mul h5),
    Y.LocalMaximumSecondDerivative.leviV_ofReal_const_mul _ h3, Y.LocalMaximumSecondDerivative.leviV_ofReal_const_mul _ h4,
    Y.LocalMaximumSecondDerivative.leviV_ofReal_const_mul _ h5]
  simp only [Complex.add_re, Complex.re_ofReal_mul, leviO, leviM, leviRh, leviDens]
  ring

def idF : Frame X.Ψ r := fun _ => (1 : Matrix (Fin r) (Fin r) ℂ)

theorem mat_idF (τ : X.Ψ) : mat (idF X) τ = 1 := rfl

theorem idF_mem : idF X ∈ Bor X.Ψ r := by
  intro τ
  refine ⟨?_, fun a c h => ?_⟩
  · rw [mat_idF, Matrix.det_one]
    exact one_ne_zero
  · exact Matrix.one_apply_ne h.ne'

theorem rmul_idF (x : Frame X.Ψ r) : rmul x (idF X) = x := by
  funext τ
  show mat x τ * mat (idF X) τ = x τ
  rw [mat_idF, Matrix.mul_one]
  rfl

theorem coord_data (hLU : LUStatement (E := E)) (Xa : ArchInM X) (Fl : FlatM X Xa) (j : Fin Fl.δ)
    (x0 : Frame X.Ψ r) (ho : IsOrth X x0) (b0 : Frame X.Ψ r) (hb0 : b0 ∈ Bor X.Ψ r)
    (hx : Fl.xs j = rmul x0 b0) :
    Fl.w0 x0 ≠ 0 ∧ (∀ k, Fl.s k x0 = 0) ∧
      (fderiv ℂ (fun z => sig X Fl.w0 Fl.s (cpt X x0 z)) 0).det ≠ 0 := by
  have hw0 : X.IsSec Xa.L Fl.w0 := Fl.weightForm_vanishes.1.1.1
  have hs : ∀ k, X.IsSec Xa.L (Fl.s k) := fun k => (Fl.s_van k).1.1.1
  have hx0 := orth_mem_dom X x0 ho
  have hw : Fl.w0 x0 ≠ 0 := by
    intro h
    apply Fl.w0_ne j
    rw [hx, hw0.2.1 x0 hx0 b0 hb0, h, mul_zero]
  have hS : ∀ k, Fl.s k (Fl.xs j) = 0 :=
    (Fl.S_eq (Fl.xs j) (Fl.xs_mem j)).2 ⟨j, 1, X.Γ.one_mem, idF X, idF_mem X, by
      rw [rmul_idF, lact_one]⟩
  refine ⟨hw, fun k => ?_, ?_⟩
  · have h := hS k
    rw [hx, (hs k).2.1 x0 hx0 b0 hb0] at h
    exact (mul_eq_zero.1 h).resolve_left (bchar_ne_zero X hb0 _)
  · exact etale_transfer X hLU hw0 hs (Fl.xs_mem j) (Fl.coord j) X.Γ.one_mem (idF_mem X) ho hb0
      (by rw [rmul_idF, lact_one, hx]) hw

theorem coord_step (hLU : LUStatement (E := E)) (hC : OmFConnStatement (E := E)) (Xa : ArchInM X)
    (Fl : FlatM X Xa) (ψ : Frame X.Ψ r → ℝ) (x0 : Frame X.Ψ r) (ho : IsOrth X x0)
    (hψs : ContDiffOn ℝ ∞ (fun z => ψ (cpt X x0 z)) (OmF X x0)) (bb m : ℝ) (hbb : 0 < bb) (hbm : bb < m)
    (hmar : ∀ z ∈ OmF X x0, ∀ ξ : Fin (nd X) → ℂ,
      m * leviRh X x0 z ξ ≤ leviO X x0 (phla X Xa.Fp) z ξ - leviDens X x0 z ξ -
        (nd X : ℝ) * leviO X x0 (phla X Xa.L) z ξ + leviO X x0 ψ z ξ)
    (η : ℝ) (hη : 0 < η)
    (hstr : ∀ z ∈ OmF X x0, ∀ ξ : Fin (nd X) → ℂ,
      2 * η * leviO X x0 (phla X Xa.L) z ξ ≤ leviO X x0 (phla X Xa.Fp) z ξ - leviDens X x0 z ξ -
        (nd X : ℝ) * leviO X x0 (phla X Xa.L) z ξ + leviO X x0 ψ z ξ)
    (hLnn : ∀ z ∈ OmF X x0, ∀ ξ : Fin (nd X) → ℂ, 0 ≤ leviO X x0 (phla X Xa.L) z ξ)
    (j : Fin Fl.δ) (b0 : Frame X.Ψ r) (hb0 : b0 ∈ Bor X.Ψ r) (hx : Fl.xs j = rmul x0 b0) :
    ∃ (ε : ℝ) (hε : 0 < ε), closedBall (0 : V (nd X)) (2 * ε) ⊆ OmF X x0 ∧
      (∀ y ∈ closedBall (0 : V (nd X)) (2 * ε), (∀ k, Fl.s k (cpt X x0 y) = 0) → y = 0) ∧
      volume {y | y ∈ OmF X x0 ∧ HE.nsq (fun k z => Fl.s k (cpt X x0 z)) y = 0} = 0 ∧
      ∃ F : V (nd X) → ℂ, DifferentiableOn ℂ F (OmF X x0) ∧
        ∫⁻ y in OmF X x0, ENNReal.ofReal (‖HE.cut ε hε y - F y‖ ^ 2 *
          Real.exp (-psie X x0 Xa.Fp Xa.L ψ bb y) *
          HE.nsq (fun k z => Fl.s k (cpt X x0 z)) y ^ (-(nd X : ℝ))) < ⊤ := by
  obtain ⟨hw, hs0, hdet⟩ := coord_data X hLU Xa Fl j x0 ho b0 hb0 hx
  have hw0 : X.IsSec Xa.L Fl.w0 := Fl.weightForm_vanishes.1.1.1
  have hs : ∀ k, X.IsSec Xa.L (Fl.s k) := fun k => (Fl.s_van k).1.1.1
  have hx0 := orth_mem_dom X x0 ho
  have hO := ExF.isOpen_OmF X x0
  have h00 := zero_mem_OmF X x0 ho
  have hσd : DifferentiableAt ℂ (fun z => sig X Fl.w0 Fl.s (cpt X x0 z)) 0 :=
    sig_cpt_diffAt X hw0 hs (by rw [cpt_zero]; exact hx0) (by rw [cpt_zero]; exact hw)
  have hσ0 : (fun z => sig X Fl.w0 Fl.s (cpt X x0 z)) 0 = 0 := by
    show WithLp.toLp 2 (fun k => Fl.s k (cpt X x0 0) / Fl.w0 (cpt X x0 0)) = 0
    simp only [cpt_zero, hs0, zero_div]
    rfl
  obtain ⟨δ, hδ, hiso0⟩ := HE.iso_zero hσd.hasFDerivAt hdet hσ0
  obtain ⟨ρ, hρ, hρU⟩ := Metric.isOpen_iff.1 hO 0 h00
  have hε : 0 < min (δ / 2) (ρ / 4) := lt_min (by positivity) (by positivity)
  have hε1 := min_le_left (δ / 2) (ρ / 4)
  have hε2 := min_le_right (δ / 2) (ρ / 4)
  have hball : closedBall (0 : V (nd X)) (2 * min (δ / 2) (ρ / 4)) ⊆ OmF X x0 := fun y hy =>
    hρU (mem_ball.2 (lt_of_le_of_lt (mem_closedBall.1 hy) (by linarith)))
  have hiso : ∀ y ∈ closedBall (0 : V (nd X)) (2 * min (δ / 2) (ρ / 4)),
      (∀ k, Fl.s k (cpt X x0 y) = 0) → y = 0 := by
    intro y hy hsy
    refine hiso0 y (mem_closedBall.2 ((mem_closedBall.1 hy).trans (by linarith))) ?_
    show WithLp.toLp 2 (fun k => Fl.s k (cpt X x0 y) / Fl.w0 (cpt X x0 y)) = 0
    simp only [hsy, zero_div]
    rfl
  obtain ⟨k0, hk0⟩ := HE.coord_ne_of_det (f := fun z => sig X Fl.w0 Fl.s (cpt X x0 z))
    (by have := Xa.n_ge; omega) hdet
  have hsd : ∀ k, DifferentiableOn ℂ (fun z => Fl.s k (cpt X x0 z)) (OmF X x0) :=
    fun k => comp_cpt_diffOn X (hs k).1 x0
  have hk0' : ¬ (fun z => Fl.s k0 (cpt X x0 z)) =ᶠ[𝓝 0] 0 := by
    intro h
    apply hk0
    filter_upwards [h] with z hz
    show Fl.s k0 (cpt X x0 z) / Fl.w0 (cpt X x0 z) = 0
    rw [show Fl.s k0 (cpt X x0 z) = 0 from hz, zero_div]
  have hgn := HE.hgn_of hO (hC r X x0 ho) (hsd k0) h00 hk0'
  have hm : 0 < m := hbb.trans hbm
  have hq : 0 < 1 - bb / m := by rw [sub_pos, div_lt_one hm]; exact hbm
  have hlevi : ∀ z ∈ OmF X x0, ∀ ξ : Fin (nd X) → ℂ,
      (1 - bb / m) * (leviO X x0 (phla X Xa.Fp) z ξ - leviDens X x0 z ξ -
        (nd X : ℝ) * leviO X x0 (phla X Xa.L) z ξ + leviO X x0 ψ z ξ) ≤
      (leviV (nd X) (fun w => (psie X x0 Xa.Fp Xa.L ψ bb w : ℂ)) z ξ).re := by
    intro z hz ξ
    rw [psie_levi X x0 ho Xa.Fp Xa.L ψ hψs bb hz ξ]
    have h1 := hmar z hz ξ
    have h2 : bb * leviRh X x0 z ξ ≤ bb / m * (leviO X x0 (phla X Xa.Fp) z ξ - leviDens X x0 z ξ -
        (nd X : ℝ) * leviO X x0 (phla X Xa.L) z ξ + leviO X x0 ψ z ξ) := by
      have := mul_le_mul_of_nonneg_left h1 (div_nonneg hbb.le hm.le)
      rwa [← mul_assoc, div_mul_cancel₀ _ hm.ne'] at this
    nlinarith
  have hψl : ∀ y ∈ OmF X x0, ∀ ξ : Fin (nd X) → ℂ,
      0 ≤ (leviV (nd X) (fun w => (psie X x0 Xa.Fp Xa.L ψ bb w : ℂ)) y ξ).re := by
    intro y hy ξ
    refine le_trans ?_ (hlevi y hy ξ)
    have := hstr y hy ξ
    have := hLnn y hy ξ
    exact mul_nonneg hq.le (by nlinarith)
  have hgL : ContDiffOn ℝ ∞ (fun w => phla X Xa.L (cpt X x0 w)) (OmF X x0) :=
    fun z hz => (phla_cpt_cdAt X x0 hz Xa.L).contDiffWithinAt
  obtain ⟨cL, hcL, hcLb⟩ := HE.levi_unif hO hgL (isCompact_closedBall _ _) hball
    (fun z hz ξ hξ => Xa.posL x0 hx0 z (hball hz) ξ hξ)
  have hc : 0 < (1 - bb / m) * (2 * η) * cL := by positivity
  have hpos : ∀ y ∈ closedBall (0 : V (nd X)) (2 * min (δ / 2) (ρ / 4)), ∀ ξ : Fin (nd X) → ℂ,
      (1 - bb / m) * (2 * η) * cL * ∑ j, ‖ξ j‖ ^ 2 ≤
        (leviV (nd X) (fun w => (psie X x0 Xa.Fp Xa.L ψ bb w : ℂ)) y ξ).re := by
    intro y hy ξ
    refine le_trans ?_ (hlevi y (hball hy) ξ)
    have h1 := hcLb y hy ξ
    have h2 := hstr y (hball hy) ξ
    have h3 : (1 - bb / m) * (2 * η) * (cL * ∑ j, ‖ξ j‖ ^ 2) ≤
        (1 - bb / m) * (2 * η * leviO X x0 (phla X Xa.L) y ξ) := by
      rw [mul_assoc]
      exact mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_left h1 (by positivity)) hq.le
    nlinarith
  obtain ⟨F, hFd, hI⟩ := HE.interp_euclid hO (eF X x0) (eF_smooth X x0 ho) (eF_levi X x0 ho)
    (eF_compact X x0 ho) (fun y hy => eF_nonneg X x0 ho hy) (fun k z => Fl.s k (cpt X x0 z)) hsd k0
    hgn (psie X x0 Xa.Fp Xa.L ψ bb)
    (fun z hz => (psie_cdAt X x0 ho Xa.Fp Xa.L ψ hψs bb hz).contDiffWithinAt) hψl
    (min (δ / 2) (ρ / 4)) hε hball hiso _ hc hpos
  have hnull : volume {y | y ∈ OmF X x0 ∧ HE.nsq (fun k z => Fl.s k (cpt X x0 z)) y = 0} = 0 := by
    have hsub : {y | y ∈ OmF X x0 ∧ HE.nsq (fun k z => Fl.s k (cpt X x0 z)) y = 0} ⊆
        {y | y ∈ OmF X x0 ∧ Fl.s k0 (cpt X x0 y) = 0} := by
      intro y hy
      refine ⟨hy.1, ?_⟩
      have h0 := hy.2
      unfold HE.nsq at h0
      have := (Finset.sum_eq_zero_iff_of_nonneg (fun k _ => Complex.normSq_nonneg _)).1 h0 k0
        (Finset.mem_univ _)
      exact Complex.normSq_eq_zero.1 this
    exact measure_mono_null hsub (HE.zeros_null hO (hsd k0) hgn)
  exact ⟨min (δ / 2) (ρ / 4), hε, hball, hiso, hnull, F, hFd, hI⟩

theorem densF_pos (x0 : Frame X.Ψ r) {z : V (nd X)} (hz : z ∈ OmF X x0) : 0 < densF X x0 z := by
  unfold densF
  have hd : cpt X x0 z ∈ X.dom := hz
  refine Finset.prod_pos fun τ _ => Finset.prod_pos fun i _ => ?_
  have h := (hd τ).2 i.castSucc
  have hne : dmin X.Gm (cpt X x0 z) τ i.castSucc ≠ 0 := by
    intro h0
    rw [h0] at h
    simp at h
  first
  | exact zpow_pos (norm_pos_iff.mpr hne) _

private lemma continuous_cpt' (x0 : Frame X.Ψ r) : Continuous (cpt X x0) := by
  have hr : Continuous fun y : Frame X.Ψ r => rmul x0 y := continuous_pi fun τ =>
    (show Continuous fun y : Frame X.Ψ r => (mat x0 τ * mat y τ : Matrix (Fin r) (Fin r) ℂ) from
      continuous_const.matrix_mul (continuous_apply τ))
  unfold cpt nmat
  refine hr.comp ?_
  refine continuous_pi fun τ => continuous_pi fun a => continuous_pi fun b => ?_
  by_cases h : b < a
  · simp only [dif_pos h]
    first
    | fun_prop
  · simp only [dif_neg h]
    exact continuous_const

theorem densF_meas (x0 : Frame X.Ψ r) : Measurable (densF X x0) := by
  unfold densF
  refine Finset.measurable_prod _ fun τ _ => Finset.measurable_prod _ fun i _ => ?_
  have hm := ((_root_.ReciprocityTheory.ChartRestriction.G.AR.Up.ExtFPf.cont_dmin X τ i.castSucc).comp (continuous_cpt' X x0)).norm.measurable
  first
  | exact hm.pow_const _

def rhoF (x0 : Frame X.Ψ r) (Fp : Wt X.Ψ r) (ψ : Frame X.Ψ r → ℝ) (bb : ℝ) (z : V (nd X)) : ℝ :=
  Real.exp (-(phla X Fp (cpt X x0 z) + ψ (cpt X x0 z)) + bb * rhF X x0 z + Real.log (densF X x0 z))

theorem rhoF_cont (x0 : Frame X.Ψ r) (ho : IsOrth X x0) (Fp : Wt X.Ψ r) (ψ : Frame X.Ψ r → ℝ)
    (hψs : ContDiffOn ℝ ∞ (fun z => ψ (cpt X x0 z)) (OmF X x0)) (bb : ℝ) :
    ContinuousOn (rhoF X x0 Fp ψ bb) (OmF X x0) := by
  have hO : IsOpen (OmF X x0) := (_root_.ReciprocityTheory.ChartRestriction.G.FD.FourierCoefficientDomain.isOpen_dom X).preimage (continuous_cpt' X x0)
  refine fun z hz => ContinuousAt.continuousWithinAt ?_
  have hc : cpt X x0 z ∈ X.dom := hz
  have hdm : ∀ τ i, ContinuousAt (fun w => dmin X.Gm (cpt X x0 w) τ i) z := fun τ i =>
    ((_root_.ReciprocityTheory.ChartRestriction.G.AR.Up.ExtFPf.cont_dmin X τ i).comp (continuous_cpt' X x0)).continuousAt
  have hne : ∀ τ i, dmin X.Gm (cpt X x0 z) τ i ≠ 0 := fun τ i => _root_.ReciprocityTheory.ChartRestriction.G.FD.FlowCoefficientBounds.dmin_ne X hc τ i
  have hnf : ContinuousAt (fun w => X.nfac Fp (cpt X x0 w)) z := by
    show ContinuousAt (fun w => ∏ τ, ∏ i : Fin r, ‖dmin X.Gm (cpt X x0 w) τ i.succ /
      dmin X.Gm (cpt X x0 w) τ i.castSucc‖ ^ (-(Fp τ i : ℝ) / 2)) z
    exact tendsto_finsetProd _ fun τ _ => tendsto_finsetProd _ fun i _ =>
      ((hdm τ i.succ).div (hdm τ i.castSucc) (hne τ _)).norm.rpow_const
        (Or.inl (norm_ne_zero_iff.mpr (div_ne_zero (hne τ _) (hne τ _))))
  have hnp : 0 < X.nfac Fp (cpt X x0 z) := by
    unfold Data.nfac
    exact Finset.prod_pos fun τ _ => Finset.prod_pos fun i _ => Real.rpow_pos_of_pos
      (norm_pos_iff.mpr (div_ne_zero (hne τ _) (hne τ _))) _
  have hph : ContinuousAt (fun w => phla X Fp (cpt X x0 w)) z := by
    show ContinuousAt (fun w => -2 * Real.log (X.nfac Fp (cpt X x0 w))) z
    exact continuousAt_const.mul (hnf.log hnp.ne')
  have hψ : ContinuousAt (fun w => ψ (cpt X x0 w)) z :=
    hψs.continuousOn.continuousAt (hO.mem_nhds hz)
  have hrh : ContinuousAt (rhF X x0) z := by
    unfold rhF
    exact (tendsto_finsetSum _ fun τ _ => (hdm τ _).norm.log (norm_ne_zero_iff.mpr (hne τ _))).neg
  have hdF : ContinuousAt (densF X x0) z := by
    unfold densF
    refine tendsto_finsetProd _ fun τ _ => tendsto_finsetProd _ fun i _ => ?_
    first
    | exact (hdm τ _).norm.zpow₀ _ (Or.inl (norm_ne_zero_iff.mpr (hne τ _)))
  unfold rhoF
  exact (((hph.add hψ).neg.add (continuousAt_const.mul hrh)).add
    (hdF.log (densF_pos X x0 hz).ne')).rexp

theorem nfac_pos' (la : Wt X.Ψ r) {x : Frame X.Ψ r} (hx : x ∈ X.dom) : 0 < X.nfac la x := by
  unfold Data.nfac
  refine Finset.prod_pos fun τ _ => Finset.prod_pos fun i _ => Real.rpow_pos_of_pos
    (norm_pos_iff.mpr (div_ne_zero (_root_.ReciprocityTheory.ChartRestriction.G.FD.FlowCoefficientBounds.dmin_ne X hx τ _) (_root_.ReciprocityTheory.ChartRestriction.G.FD.FlowCoefficientBounds.dmin_ne X hx τ _))) _

theorem exp_neg_phla (la : Wt X.Ψ r) {x : Frame X.Ψ r} (hx : x ∈ X.dom) :
    Real.exp (-phla X la x) = X.nfac la x ^ 2 := by
  unfold phla
  have hn := nfac_pos' X la hx
  rw [show -(-2 * Real.log (X.nfac la x)) = Real.log (X.nfac la x) * 2 by ring, Real.exp_mul,
    Real.exp_log hn, Real.rpow_two]

theorem pnorm_sum_eq (L : Wt X.Ψ r) (s : Fin (nd X) → Frame X.Ψ r → ℂ) {x : Frame X.Ψ r}
    (hx : x ∈ X.dom) :
    ∑ k, X.pnorm L (s k) x ^ 2 = (∑ k, Complex.normSq (s k x)) * Real.exp (-phla X L x) := by
  rw [exp_neg_phla X L hx, Finset.sum_mul]
  refine Finset.sum_congr rfl fun k _ => ?_
  unfold Data.pnorm
  rw [mul_pow, Complex.sq_norm]
  rfl

theorem rhoF_eq (x0 : Frame X.Ψ r) (Fp L : Wt X.Ψ r) (ψ : Frame X.Ψ r → ℝ) (bb : ℝ)
    (s : Fin (nd X) → Frame X.Ψ r → ℂ) {z : V (nd X)} (hz : z ∈ OmF X x0)
    (hN : 0 < HE.nsq (fun k w => s k (cpt X x0 w)) z) :
    rhoF X x0 Fp ψ bb z = Real.exp (-psie X x0 Fp L ψ bb z) *
      HE.nsq (fun k w => s k (cpt X x0 w)) z ^ (-(nd X : ℝ)) *
      (∑ k, X.pnorm L (s k) (cpt X x0 z) ^ 2) ^ (nd X : ℝ) := by
  have hc : cpt X x0 z ∈ X.dom := hz
  have hNdef : HE.nsq (fun k w => s k (cpt X x0 w)) z = ∑ k, Complex.normSq (s k (cpt X x0 z)) := rfl
  have hNn : HE.nsq (fun k w => s k (cpt X x0 w)) z ^ (nd X : ℝ) ≠ 0 := (Real.rpow_pos_of_pos hN _).ne'
  rw [pnorm_sum_eq X L s hc, ← hNdef, Real.mul_rpow hN.le (Real.exp_pos _).le, ← Real.exp_mul,
    Real.rpow_neg hN.le, mul_assoc, ← mul_assoc _ (HE.nsq (fun k w => s k (cpt X x0 w)) z ^ (nd X : ℝ)),
    inv_mul_cancel₀ hNn, one_mul, ← Real.exp_add]
  unfold rhoF psie
  congr 1
  ring

theorem integ_step (x0 : Frame X.Ψ r) (ho : IsOrth X x0) (Xa : ArchInM X) (Fl : FlatM X Xa)
    (ψ : Frame X.Ψ r → ℝ) (hψs : ContDiffOn ℝ ∞ (fun z => ψ (cpt X x0 z)) (OmF X x0)) (bb : ℝ)
    (ε : ℝ) (hε : 0 < ε) (hball : closedBall (0 : V (nd X)) (2 * ε) ⊆ OmF X x0)
    (hnull : volume {y | y ∈ OmF X x0 ∧ HE.nsq (fun k z => Fl.s k (cpt X x0 z)) y = 0} = 0)
    (F : V (nd X) → ℂ)
    (hI : ∫⁻ y in OmF X x0, ENNReal.ofReal (‖HE.cut ε hε y - F y‖ ^ 2 *
          Real.exp (-psie X x0 Xa.Fp Xa.L ψ bb y) *
          HE.nsq (fun k z => Fl.s k (cpt X x0 z)) y ^ (-(nd X : ℝ))) < ⊤) :
    ∫⁻ z in OmF X x0, ENNReal.ofReal (‖F z‖ ^ 2 * rhoF X x0 Xa.Fp ψ bb z) < ⊤ := by
  have hO := ExF.isOpen_OmF X x0

  have hCk : ∀ k, ∃ C : ℝ, ∀ x ∈ X.dom, X.pnorm Xa.L (Fl.s k) x ≤ C := fun k => (Fl.s_van k).1.1.2
  choose C hC using hCk
  set Ks : ℝ := 1 + ∑ k, C k ^ 2 with hKs
  have hKs1 : 1 ≤ Ks := by rw [hKs]; linarith [Finset.sum_nonneg fun k (_ : k ∈ Finset.univ) => sq_nonneg (C k)]
  have hpn : ∀ x ∈ X.dom, ∑ k, X.pnorm Xa.L (Fl.s k) x ^ 2 ≤ Ks := by
    intro x hx
    have : ∑ k, X.pnorm Xa.L (Fl.s k) x ^ 2 ≤ ∑ k, C k ^ 2 := Finset.sum_le_sum fun k _ => by
      have h0 : 0 ≤ X.pnorm Xa.L (Fl.s k) x := mul_nonneg (norm_nonneg _) (nfac_pos' X _ hx).le
      exact pow_le_pow_left₀ h0 (hC k x hx) 2
    linarith

  obtain ⟨B, hB⟩ := (isCompact_closedBall (0 : V (nd X)) (2 * ε)).exists_bound_of_continuousOn
    ((rhoF_cont X x0 ho Xa.Fp ψ hψs bb).mono hball)

  have hpt : ∀ᵐ z ∂(volume.restrict (OmF X x0)), ENNReal.ofReal (‖F z‖ ^ 2 * rhoF X x0 Xa.Fp ψ bb z) ≤
      (closedBall (0 : V (nd X)) (2 * ε)).indicator (fun _ => ENNReal.ofReal (2 * |B|)) z +
        ENNReal.ofReal (2 * Ks ^ (nd X : ℝ)) * ENNReal.ofReal (‖HE.cut ε hε z - F z‖ ^ 2 *
          Real.exp (-psie X x0 Xa.Fp Xa.L ψ bb z) *
          HE.nsq (fun k z => Fl.s k (cpt X x0 z)) z ^ (-(nd X : ℝ))) := by
    rw [ae_restrict_iff' hO.measurableSet]
    have hnull' : ∀ᵐ z ∂(volume : Measure (V (nd X))),
        z ∉ {y | y ∈ OmF X x0 ∧ HE.nsq (fun k z => Fl.s k (cpt X x0 z)) y = 0} :=
      measure_eq_zero_iff_ae_notMem.1 hnull
    filter_upwards [hnull'] with z hz0 hz
    have hN : 0 < HE.nsq (fun k z => Fl.s k (cpt X x0 z)) z := by
      rcases (HE.nsq_nonneg _ z).lt_or_eq with h | h
      · exact h
      · exact absurd ⟨hz, h.symm⟩ hz0
    have hx : cpt X x0 z ∈ X.dom := hz
    have hrho := rhoF_eq X x0 Xa.Fp Xa.L ψ bb Fl.s hz hN
    set A := Real.exp (-psie X x0 Xa.Fp Xa.L ψ bb z) * HE.nsq (fun k z => Fl.s k (cpt X x0 z)) z ^ (-(nd X : ℝ)) with hAdef
    have hA : 0 ≤ A := by positivity
    have hP := hpn _ hx
    have hP0 : 0 ≤ ∑ k, X.pnorm Xa.L (Fl.s k) (cpt X x0 z) ^ 2 := Finset.sum_nonneg fun k _ => sq_nonneg _
    have hrho_le : rhoF X x0 Xa.Fp ψ bb z ≤ A * Ks ^ (nd X : ℝ) := by
      rw [hrho]
      exact mul_le_mul_of_nonneg_left (Real.rpow_le_rpow hP0 hP (Nat.cast_nonneg _)) hA
    have hrho0 : 0 ≤ rhoF X x0 Xa.Fp ψ bb z := (Real.exp_pos _).le
    have hsq := HE.sq_le_two (HE.cut ε hε z) (F z)
    have hc1 := HE.cut_norm_le ε hε z

    have hsplit : ‖F z‖ ^ 2 * rhoF X x0 Xa.Fp ψ bb z ≤ 2 * ‖HE.cut ε hε z‖ ^ 2 * rhoF X x0 Xa.Fp ψ bb z +
        2 * Ks ^ (nd X : ℝ) * (‖HE.cut ε hε z - F z‖ ^ 2 * A) := by
      have h1 := mul_le_mul_of_nonneg_right hsq hrho0
      have h2 : 2 * ‖HE.cut ε hε z - F z‖ ^ 2 * rhoF X x0 Xa.Fp ψ bb z ≤
          2 * ‖HE.cut ε hε z - F z‖ ^ 2 * (A * Ks ^ (nd X : ℝ)) :=
        mul_le_mul_of_nonneg_left hrho_le (by positivity)
      nlinarith
    have hfirst : ENNReal.ofReal (2 * ‖HE.cut ε hε z‖ ^ 2 * rhoF X x0 Xa.Fp ψ bb z) ≤
        (closedBall (0 : V (nd X)) (2 * ε)).indicator (fun _ => ENNReal.ofReal (2 * |B|)) z := by
      by_cases hzb : z ∈ closedBall (0 : V (nd X)) (2 * ε)
      · rw [Set.indicator_of_mem hzb]
        apply ENNReal.ofReal_le_ofReal
        have hBz := hB z hzb
        rw [Real.norm_of_nonneg hrho0] at hBz
        have : ‖HE.cut ε hε z‖ ^ 2 ≤ 1 := by nlinarith [norm_nonneg (HE.cut ε hε z)]
        have hB0 : rhoF X x0 Xa.Fp ψ bb z ≤ |B| := hBz.trans (le_abs_self B)
        nlinarith
      · have hcz : HE.cut ε hε z = 0 := HE.cut_zero ε hε (by
          rw [mem_closedBall, dist_zero_right, not_le] at hzb; exact hzb.le)
        rw [hcz]
        simp
    calc ENNReal.ofReal (‖F z‖ ^ 2 * rhoF X x0 Xa.Fp ψ bb z)
        ≤ ENNReal.ofReal (2 * ‖HE.cut ε hε z‖ ^ 2 * rhoF X x0 Xa.Fp ψ bb z +
          2 * Ks ^ (nd X : ℝ) * (‖HE.cut ε hε z - F z‖ ^ 2 * A)) := ENNReal.ofReal_le_ofReal hsplit
      _ = ENNReal.ofReal (2 * ‖HE.cut ε hε z‖ ^ 2 * rhoF X x0 Xa.Fp ψ bb z) +
          ENNReal.ofReal (2 * Ks ^ (nd X : ℝ)) * ENNReal.ofReal (‖HE.cut ε hε z - F z‖ ^ 2 * A) := by
        rw [ENNReal.ofReal_add (by positivity) (by positivity),
          ENNReal.ofReal_mul (p := 2 * Ks ^ (nd X : ℝ)) (by positivity)]
      _ ≤ _ := by
        have hAeq : ‖HE.cut ε hε z - F z‖ ^ 2 * A = ‖HE.cut ε hε z - F z‖ ^ 2 *
            Real.exp (-psie X x0 Xa.Fp Xa.L ψ bb z) *
            HE.nsq (fun k z => Fl.s k (cpt X x0 z)) z ^ (-(nd X : ℝ)) := by
          rw [hAdef]; ring
        rw [hAeq]
        exact add_le_add hfirst le_rfl
  calc ∫⁻ z in OmF X x0, ENNReal.ofReal (‖F z‖ ^ 2 * rhoF X x0 Xa.Fp ψ bb z)
      ≤ ∫⁻ z in OmF X x0, ((closedBall (0 : V (nd X)) (2 * ε)).indicator
          (fun _ => ENNReal.ofReal (2 * |B|)) z + ENNReal.ofReal (2 * Ks ^ (nd X : ℝ)) *
          ENNReal.ofReal (‖HE.cut ε hε z - F z‖ ^ 2 * Real.exp (-psie X x0 Xa.Fp Xa.L ψ bb z) *
            HE.nsq (fun k z => Fl.s k (cpt X x0 z)) z ^ (-(nd X : ℝ)))) := lintegral_mono_ae hpt
    _ = (∫⁻ z in OmF X x0, (closedBall (0 : V (nd X)) (2 * ε)).indicator
          (fun _ => ENNReal.ofReal (2 * |B|)) z) + ENNReal.ofReal (2 * Ks ^ (nd X : ℝ)) *
          ∫⁻ z in OmF X x0, ENNReal.ofReal (‖HE.cut ε hε z - F z‖ ^ 2 *
            Real.exp (-psie X x0 Xa.Fp Xa.L ψ bb z) *
            HE.nsq (fun k z => Fl.s k (cpt X x0 z)) z ^ (-(nd X : ℝ))) := by
        rw [lintegral_add_left (measurable_const.indicator measurableSet_closedBall),
          lintegral_const_mul' _ _ ENNReal.ofReal_ne_top]
    _ < ⊤ := by
        refine ENNReal.add_lt_top.2 ⟨?_, ENNReal.mul_lt_top ENNReal.ofReal_lt_top hI⟩
        refine (setLIntegral_le_lintegral _ _).trans_lt ?_
        rw [lintegral_indicator_const measurableSet_closedBall]
        exact ENNReal.mul_lt_top ENNReal.ofReal_lt_top measure_closedBall_lt_top

end

end ReciprocityTheory.ChartRestriction.G.AR.Up.IW
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.InterpStatementPfM =====
