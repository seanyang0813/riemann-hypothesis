module

public import ReciprocityTheory.AnalyticForms.PotentialTheory.Partition
public import GroundTheory.HeightsAndTheta.Heights.Regularisation.IsOpenKappaOpenNeighbourhood
public import ReciprocityTheory.AnalyticForms.PotentialTheory.IntegrableOnTargetOfTsupport
public import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.GreenMassError
public import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.SystemIndependence
public import ReciprocityTheory.AnalyticForms.PotentialTheory.ContDiffAtOfIsPotential
public import ReciprocityTheory.AnalyticForms.PotentialTheory.HessCEqZeroOfEventuallyEqZero
public import ReciprocityTheory.AnalyticForms.PotentialTheory.MaMeasureA
public import ReciprocityTheory.AnalyticForms.PotentialTheory.PLCurveA
public import ReciprocityTheory.AnalyticForms.PotentialTheory.PshShiftA
public import ReciprocityTheory.AnalyticForms.PotentialTheory.SNCAtlas
public import ReciprocityTheory.AnalyticForms.PotentialTheory.Stokes
public import Mathlib.Analysis.Calculus.ContDiff.Defs
public import Mathlib.Analysis.LocallyConvex.AbsConvexOpen
public import ReciprocityTheory.AnalyticForms.MaIntEmpty
public import Mathlib.Analysis.InnerProductSpace.Calculus
public import Mathlib.Analysis.Calculus.ContDiff.Basic
public import Mathlib.Analysis.Calculus.ContDiff.Comp
public import Mathlib.Analysis.Calculus.ContDiff.Operations
public import Mathlib.Analysis.Calculus.Deriv.Inv
public import Mathlib.Analysis.Calculus.Deriv.Mul
public import Mathlib.Analysis.Calculus.Deriv.Pow
public import Mathlib.Analysis.SpecialFunctions.ExpDeriv
public import Mathlib.Analysis.SpecialFunctions.Log.Deriv
public import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.UIObjects
public import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PKaehlerBound
public import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.GreenMassReplace
public import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.EnergyStep
public import ReciprocityTheory.AnalyticForms.PotentialTheory.AnalyticSubsetChartLocal
public import ReciprocityTheory.AnalyticForms.PotentialTheory.LogInt
public import ReciprocityTheory.AnalyticForms.PotentialTheory.PLLocalStatement
public import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.GreenMassStep
public import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassZero
public import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.StListTailLog
public import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.StListMono
public import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.StRegSection
public import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.StTailShift
public import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.Assembly
import ReciprocityTheory.AnalyticForms.PotentialTheory.LocDens
import Mathlib.Tactic.Linter.Style
import ReciprocityTheory.AnalyticForms.PotentialTheory.PotentialContDiffAt
import Std.Tactic.BVDecide.Normalize.Prop
import ReciprocityTheory.AnalyticForms.PotentialTheory.PshShiftB

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.ConvergenceRate, GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassError, GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassReplaceLevi, GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassReplaceKappa, GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassReplace, GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassStepA, GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassStepB, GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassStep, GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PListTailLog, GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.OfListTailLog

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.ConvergenceRate =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.ConvergenceRate", "h": "module\n\npublic import ReciprocityTheory.AnalyticForms.PotentialTheory.Partition\npublic import GroundTheory.HeightsAndTheta.Heights.Regularisation.IsOpenKappaOpenNeighbourhood\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.AnalyticForms.PotentialTheory.LocDens\npublic import ReciprocityTheory.AnalyticForms.PotentialTheory.IntegrableOnTargetOfTsupport\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.AnalyticLimit

open MeasureTheory Filter Topology Set
open ReciprocityTheory.AnForm.M (FinHolAtlas LocPot IsPotential mInt MIntegrable ChartPartition integralWith
  locDens existsPartition
  locDensCont mIntegrableCont)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.Regular (ell errE)

noncomputable section

theorem tendsto_ell : Tendsto ell (𝓝[>] 0) atTop :=
  Real.tendsto_log_atTop.comp tendsto_inv_nhdsGT_zero

section Signed

variable {D : ℕ} {X : Type} [TopologicalSpace X] [CompactSpace X] [T2Space X] [MeasurableSpace X]
  [BorelSpace X]


end Signed

section Inhabitants


@[instance_reducible] def projectiveLineBorel : MeasurableSpace (OnePoint ℂ) := borel _

attribute [local instance] projectiveLineBorel

theorem projectiveLine_borelSpace : BorelSpace (OnePoint ℂ) := ⟨rfl⟩

attribute [local instance] projectiveLine_borelSpace

end Inhabitants

end

end GroundTheory.Heights₂.Heights.AnalyticLimit
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.ConvergenceRate =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassError =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassError", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.GreenMassError\npublic import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.ConvergenceRate\npublic import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.SystemIndependence\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.AnalyticForms.PotentialTheory.ContDiffAtOfIsPotential\npublic import ReciprocityTheory.AnalyticForms.PotentialTheory.HessCEqZeroOfEventuallyEqZero\nimport ReciprocityTheory.AnalyticForms.PotentialTheory.IntegrableOnTargetOfTsupport\nimport ReciprocityTheory.AnalyticForms.PotentialTheory.MaMeasureA\npublic import ReciprocityTheory.AnalyticForms.PotentialTheory.PLCurveA\nimport ReciprocityTheory.AnalyticForms.PotentialTheory.PotentialContDiffAt\npublic import ReciprocityTheory.AnalyticForms.PotentialTheory.PshShiftA\npublic import ReciprocityTheory.AnalyticForms.PotentialTheory.SNCAtlas\npublic import ReciprocityTheory.AnalyticForms.PotentialTheory.Stokes\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.AnalyticLimit

open MeasureTheory Filter Topology
open ReciprocityTheory.AnForm (levi)
open ReciprocityTheory.AnForm.M (FinHolAtlas LocPot IsPotential IsPosPot HoloMap mInt MIntegrable)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.Regular (ell errE)

noncomputable section

namespace GreenMassError

section Forms

variable {e e' : ℕ} {X Y : Type} [TopologicalSpace X] [TopologicalSpace Y]

theorem formNonneg_of_posPot (A : FinHolAtlas e X) (V : Set X) (P : LocPot X) (hP : IsPosPot A P) :
    FormNonneg A V P := by
  intro x k y hy w
  by_cases hw : w = 0
  · subst hw
    rw [ReciprocityTheory.AnForm.levi_zero]
  · exact (hP x k y ⟨hy.1, hy.2.2⟩ w hw).le

theorem formNonneg_pullback (A : FinHolAtlas e X) (B : FinHolAtlas e' Y) (h : Y → X)
    (hh : HoloMap B A h) (V : Set X) (P : LocPot X) (hP : IsPotential A P)
    (hnn : FormNonneg A V P) : FormNonneg B (h ⁻¹' V) (P.pullback h hh.1) := by
  intro x k y hy w
  obtain ⟨hyt, hyV, hyU⟩ := hy
  obtain ⟨j, hj⟩ := A.cover (h ((B.chart k).symm y))
  have hτa : AnalyticAt ℂ (A.chart j ∘ h ∘ (B.chart k).symm) y := hh.2 k j y ⟨hyt, hj⟩
  have hτy : (A.chart j ∘ h ∘ (B.chart k).symm) y ∈ (A.chart j).target :=
    (A.chart j).map_source hj
  have hsymm : (A.chart j).symm ((A.chart j ∘ h ∘ (B.chart k).symm) y) = h ((B.chart k).symm y) :=
    (A.chart j).left_inv hj
  have hev : (P.pullback h hh.1).φ x ∘ (B.chart k).symm =ᶠ[𝓝 y]
      (P.φ (h x) ∘ (A.chart j).symm) ∘ (A.chart j ∘ h ∘ (B.chart k).symm) := by
    have hc : ContinuousAt (h ∘ (B.chart k).symm) y :=
      hh.1.continuousAt.comp ((B.chart k).continuousAt_symm hyt)
    filter_upwards [hc.preimage_mem_nhds ((A.chart j).open_source.mem_nhds hj)] with y' hy'
    simp only [Function.comp_apply, LocPot.pullback]
    rw [(A.chart j).left_inv (show h ((B.chart k).symm y') ∈ (A.chart j).source from hy')]
  have hU : (A.chart j).symm ((A.chart j ∘ h ∘ (B.chart k).symm) y) ∈ P.U (h x) := by
    rw [hsymm]
    exact hyU
  rw [ReciprocityTheory.AnForm.levi_congr hev w, ReciprocityTheory.AnForm.levi_comp w hτa
    (ReciprocityTheory.AnForm.M.pot_contDiffAt_two hP (h x) j hτy hU)]
  refine hnn (h x) j _ ⟨hτy, ?_, hU⟩ _
  show (A.chart j).symm ((A.chart j ∘ h ∘ (B.chart k).symm) y) ∈ V
  rw [hsymm]
  exact hyV

theorem smooth_comp_holoMap (A : FinHolAtlas e X) (B : FinHolAtlas e' Y) (h : Y → X)
    (hh : HoloMap B A h) {u : X → ℝ} (hu : A.Smooth u) : B.Smooth (u ∘ h) := by
  have hpot := ReciprocityTheory.AnForm.M.isPotentialPullback A B h hh _
    (ReciprocityTheory.AnForm.M.isPotential_ofFun A u hu)
  intro j y hy
  have := (hpot.1 ((B.chart j).symm y) j) y (by simpa [LocPot.pullback, LocPot.ofFun] using hy)
  simpa [LocPot.pullback, LocPot.ofFun, Function.comp_def] using this

theorem mInt_le_of_abs_le [CompactSpace X] [T2Space X] (A : FinHolAtlas e X) (V : Set X)
    (Φ : Fin e → LocPot X) (hpot : ∀ i, IsPotential A (Φ i)) (hnn : ∀ i, FormNonneg A V (Φ i))
    (hAn : A.IsAnalyticSubset Vᶜ) (hint : interior Vᶜ = ∅) {g f : X → ℝ}
    (hg : MIntegrable A Φ g) (hf : MIntegrable A Φ f) (K c : ℝ)
    (hle : ∀ x ∈ V, |g x| ≤ c * f x + K) :
    mInt A Φ g ≤ K * mInt A Φ (fun _ => 1) + c * mInt A Φ f := by
  have hK : MIntegrable A Φ (fun _ => K) :=
    ReciprocityTheory.AnForm.M.mIntegrableCont A Φ hpot _ continuous_const
  have h1 : MIntegrable A Φ (fun _ => (1 : ℝ)) :=
    ReciprocityTheory.AnForm.M.mIntegrableCont A Φ hpot _ continuous_const
  have hb := SystemIndependence.mIntegrable_linComb A Φ c hf hK
  have habs := SystemIndependence.abs_mInt_le A V Φ hpot hnn hAn hint hg hb hle
  have l1 := ReciprocityTheory.AnForm.M.mIntLinear A Φ hpot c f (fun _ => K) hf hK
  have l2 := ReciprocityTheory.AnForm.M.mIntLinear A Φ hpot K (fun _ => 1) (fun _ => 0) h1
    (SystemIndependence.mIntegrable_zero A Φ)
  beta_reduce at l1 l2
  rw [SystemIndependence.mInt_zero] at l2
  simp only [mul_one, add_zero] at l2
  rw [l1, l2] at habs
  linarith [le_abs_self (mInt A Φ g)]

end Forms

def nearBound (C t₀ : ℝ) : ℝ := t₀ ^ (1 / 3 : ℝ) + |errE C t₀| + |C| * |errE C t₀|

theorem tendsto_logPow_div (n : ℕ) :
    Tendsto (fun t => Real.log (ell t) ^ n / ell t) (𝓝[>] 0) (𝓝 0) := by
  have := (Real.tendsto_pow_log_div_mul_add_atTop 1 0 n one_ne_zero).comp tendsto_ell
  simpa [Function.comp_def] using this

theorem tendsto_nearBound (C : ℝ) : Tendsto (nearBound C) (𝓝[>] 0) (𝓝 0) := by
  have h13 : Tendsto (fun t : ℝ => t ^ (1 / 3 : ℝ)) (𝓝[>] 0) (𝓝 0) := by
    have := (Real.continuousAt_rpow_const 0 (1 / 3 : ℝ) (Or.inr (by norm_num))).tendsto
    rw [Real.zero_rpow (by norm_num)] at this
    exact this.mono_left nhdsWithin_le_nhds
  have hE : Tendsto (fun t => errE C t) (𝓝[>] 0) (𝓝 0) := by
    have := (tendsto_logPow_div 1).const_mul C
    rw [mul_zero] at this
    refine this.congr fun t => ?_
    simp [errE, mul_div_assoc]
  have := (h13.add hE.abs).add (hE.abs.const_mul |C|)
  show Tendsto (fun t => t ^ (1 / 3 : ℝ) + |errE C t| + |C| * |errE C t|) _ _
  simpa using this

variable {D : ℕ} {W : Type} [TopologicalSpace W]

theorem one_le_exp_one : (1 : ℝ) ≤ Real.exp 1 := by
  have := Real.add_one_le_exp (1 : ℝ)
  linarith

theorem abs_gap_le (S : UIData D W) (a : ℕ) (ha : a < D + 1) {t₀ t : ℝ} (ht : 0 < t)
    (htt : t ≤ t₀) (h0 : S.ell₀ ≤ ell t₀) (he : Real.exp 1 ≤ ell t₀) {x : W} (hx : x ∈ S.Yo) :
    |S.gap a ha t₀ t x| ≤
      |S.C₁| * (tail S.Yo S.r (ell t₀)).indicator (fun y => Real.log (S.r y)) x +
        nearBound S.C t₀ := by
  have ht0 : 0 < t₀ := ht.trans_le htt
  have hell : ell t₀ ≤ ell t := Real.log_le_log (inv_pos.2 ht0) (inv_anti₀ ht htt)
  have h0t : S.ell₀ ≤ ell t := h0.trans hell
  have hmono := S.mono ⟨a, ha⟩ t t₀ ht htt h0 x
  have hgap : 0 ≤ S.gap a ha t₀ t x := by
    unfold UIData.gap
    linarith
  rw [abs_of_nonneg hgap]
  have hE := le_abs_self (errE S.C t₀)
  have hCE : S.C * errE S.C t₀ ≤ |S.C| * |errE S.C t₀| := by
    rw [← abs_mul]
    exact le_abs_self _
  have hr13 : 0 ≤ t₀ ^ (1 / 3 : ℝ) := Real.rpow_nonneg ht0.le _
  have hEa := abs_nonneg (errE S.C t₀)
  have hCa : 0 ≤ |S.C| * |errE S.C t₀| := by positivity
  have h1e := one_le_exp_one
  unfold nearBound
  by_cases hr : S.r x ≤ ell t₀
  · have hn := S.near ⟨a, ha⟩ t₀ ht0 h0 x hx hr
    have hl := S.lim_le ⟨a, ha⟩ t ht h0t x hx
    have hind : 0 ≤ |S.C₁| * (tail S.Yo S.r (ell t₀)).indicator (fun y => Real.log (S.r y)) x :=
      mul_nonneg (abs_nonneg _) (Set.indicator_nonneg (fun y hy => Real.log_nonneg (by
        have := hy.2
        linarith)) x)
    unfold UIData.gap
    linarith
  · replace hr := not_le.mp hr
    have hmem : x ∈ tail S.Yo S.r (ell t₀) := ⟨hx, hr.le⟩
    rw [Set.indicator_of_mem hmem]
    have hlog : 0 ≤ Real.log (S.r x) := Real.log_nonneg (by linarith)
    have h1 := (S.form ⟨a, ha⟩ t₀ ht0 h0).1.u_nonpos x hx
    have h2 := (S.form ⟨a, ha⟩ t ht h0t).1.le_u x hx
    have h3 : S.C₁ * Real.log (S.r x) ≤ |S.C₁| * Real.log (S.r x) :=
      mul_le_mul_of_nonneg_right (le_abs_self _) hlog
    unfold UIData.gap
    linarith

theorem isPotential_alt (S : UIData D W) {t : ℝ} (ht : 0 < t) (h0t : S.ell₀ ≤ ell t)
    (i : Fin (D + 1)) : IsPotential S.A (S.T t i) :=
  ReciprocityTheory.AnForm.M.isPotentialAdd S.A _ _ (S.form i t ht h0t).1.th_pot
    (ReciprocityTheory.AnForm.M.isPotential_ofFun S.A _ (S.form i t ht h0t).2)

theorem isPotential_mixed (S : UIData D W) {t : ℝ} (ht : 0 < t) (h0t : S.ell₀ ≤ ell t) (a : ℕ)
    (i : Fin (D + 1)) : IsPotential S.A (mixedForms S.Om.pot (S.T t) a i) := by
  unfold mixedForms
  split_ifs
  · exact isPotential_alt S ht h0t i
  · exact S.Om.isPot

theorem formNonneg_mixed (S : UIData D W) {t : ℝ} (ht : 0 < t) (h0t : S.ell₀ ≤ ell t) (a : ℕ)
    (i : Fin (D + 1)) : FormNonneg S.A S.Yo (mixedForms S.Om.pot (S.T t) a i) := by
  unfold mixedForms
  split_ifs
  · exact (S.form i t ht h0t).1.nonneg
  · exact formNonneg_of_posPot S.A S.Yo _ S.Om.pos

theorem mass_mixed [CompactSpace W] [T2Space W] (S : UIData D W) {t : ℝ} (ht : 0 < t)
    (h0t : S.ell₀ ≤ ell t) (a : ℕ) :
    mInt S.A (mixedForms S.Om.pot (S.T t) a) (fun _ => 1) =
      mInt S.A (mixedForms S.Om.pot S.th a) (fun _ => 1) := by
  have hpot : ∀ i, IsPotential S.A (mixedForms S.Om.pot S.th a i) := by
    intro i
    unfold mixedForms
    split_ifs
    · exact (S.form i t ht h0t).1.th_pot
    · exact S.Om.isPot
  have hsm : ∀ i, S.A.Smooth ((fun i : Fin (D + 1) => if (i : ℕ) < a then S.u i t else
      fun _ => (0 : ℝ)) i) := by
    intro i
    dsimp only
    split_ifs
    · exact (S.form i t ht h0t).2
    · exact fun _ => contDiffOn_const
  rw [← ReciprocityTheory.AnForm.M.massIndep S.A _ _ hpot hsm]
  apply ReciprocityTheory.AnForm.M.PLC.mInt_congr_phi
  intro i x y
  simp only [mixedForms, UIData.T, curForms, potForm]
  split_ifs <;> simp [locPot_add_φ, LocPot.ofFun]

theorem continuous_gap (S : UIData D W) (a : ℕ) (ha : a < D + 1) {t₀ t : ℝ} (ht : 0 < t)
    (htt : t ≤ t₀) (h0 : S.ell₀ ≤ ell t₀) : Continuous (S.gap a ha t₀ t) := by
  have ht0 : 0 < t₀ := ht.trans_le htt
  have h0t : S.ell₀ ≤ ell t :=
    h0.trans (Real.log_le_log (inv_pos.2 ht0) (inv_anti₀ ht htt))
  have c0 := ReciprocityTheory.AnForm.M.PLAux.smooth_continuous (S.form ⟨a, ha⟩ t₀ ht0 h0).2
  have c1 := ReciprocityTheory.AnForm.M.PLAux.smooth_continuous (S.form ⟨a, ha⟩ t ht h0t).2
  exact (c0.add continuous_const).sub c1

theorem errW_le [CompactSpace W] [T2Space W] (S : UIData D W) (a : ℕ) (ha : a < D + 1)
    {t₀ t : ℝ} (ht : 0 < t) (htt : t ≤ t₀) (h0 : S.ell₀ ≤ ell t₀) (he : Real.exp 1 ≤ ell t₀) :
    S.errW a ha t₀ t ≤ nearBound S.C t₀ * mInt S.A (mixedForms S.Om.pot S.th a) (fun _ => 1) +
      |S.C₁| * (|S.CE| * (Real.log (ell t₀) ^ (D + 1 + 1) / ell t₀)) := by
  have ht0 : 0 < t₀ := ht.trans_le htt
  have h0t : S.ell₀ ≤ ell t :=
    h0.trans (Real.log_le_log (inv_pos.2 ht0) (inv_anti₀ ht htt))
  have hpot := isPotential_mixed S ht h0t a
  have hg := ReciprocityTheory.AnForm.M.mIntegrableCont S.A _ hpot _ (continuous_gap S a ha ht htt h0)
  have htail := S.tail a (Nat.lt_succ_iff.mp ha) t ht h0t (ell t₀) he
  have key := mInt_le_of_abs_le S.A S.Yo _ hpot (formNonneg_mixed S ht h0t a) S.bd_analytic
    S.bd_interior hg htail.1 (nearBound S.C t₀) |S.C₁|
    (fun x hx => abs_gap_le S a ha ht htt h0 he hx)
  rw [mass_mixed S ht h0t a] at key
  have hℓ : 0 < ell t₀ := lt_of_lt_of_le (Real.exp_pos 1) he
  have hlog : 0 ≤ Real.log (ell t₀) := Real.log_nonneg (one_le_exp_one.trans he)
  have htb : mInt S.A (mixedForms S.Om.pot (S.T t) a)
      ((tail S.Yo S.r (ell t₀)).indicator fun x => Real.log (S.r x)) ≤
      |S.CE| * (Real.log (ell t₀) ^ (D + 1 + 1) / ell t₀) := by
    refine htail.2.trans ?_
    rw [mul_div_assoc]
    exact mul_le_mul_of_nonneg_right (le_abs_self _) (div_nonneg (pow_nonneg hlog _) hℓ.le)
  have := mul_le_mul_of_nonneg_left htb (abs_nonneg S.C₁)
  unfold UIData.errW
  linarith

theorem errDiv_le [CompactSpace W] [T2Space W] (S : UIData D W) (a : ℕ) (ha : a < D + 1)
    {t₀ t : ℝ} (ht : 0 < t) (htt : t ≤ t₀) (h0 : S.ell₀ ≤ ell t₀) (he : Real.exp 1 ≤ ell t₀) :
    S.errDiv a ha t₀ t ≤ ∑ k, (S.mult k : ℝ) * (nearBound S.C t₀ *
      mInt (S.B k) (restrictForms (S.comp k) (restForms S.Om.pot S.th a)) (fun _ => 1) +
        |S.C₁| * (|S.CE| * (Real.log (ell t₀) ^ (D + 1) / ell t₀))) := by
  have ht0 : 0 < t₀ := ht.trans_le htt
  have h0t : S.ell₀ ≤ ell t :=
    h0.trans (Real.log_le_log (inv_pos.2 ht0) (inv_anti₀ ht htt))
  unfold UIData.errDiv UIData.divInt
  refine Finset.sum_le_sum fun k _ => mul_le_mul_of_nonneg_left ?_ (Nat.cast_nonneg _)
  have : CompactSpace (S.comp k) := isCompact_iff_compactSpace.mp
    (ReciprocityTheory.AnForm.M.sncClosed S.A S.L S.s S.mult S.comp S.s_snc k).isCompact
  have hholo := S.B_holo k
  have hpotW : ∀ i : Fin D, IsPotential S.A (restForms S.Om.pot (S.T t) a i) := by
    intro i
    unfold restForms
    split_ifs
    · exact isPotential_alt S ht h0t _
    · exact S.Om.isPot
  have hpot : ∀ i, IsPotential (S.B k) (restrictForms (S.comp k) (S.rest a t) i) := fun i =>
    ReciprocityTheory.AnForm.M.isPotentialPullback S.A (S.B k) Subtype.val hholo _ (hpotW i)
  have hnnW : ∀ i : Fin D, FormNonneg S.A S.Yo (restForms S.Om.pot (S.T t) a i) := by
    intro i
    unfold restForms
    split_ifs
    · exact (S.form _ t ht h0t).1.nonneg
    · exact formNonneg_of_posPot S.A S.Yo _ S.Om.pos
  have hnn : ∀ i, FormNonneg (S.B k) (Subtype.val ⁻¹' S.Yo)
      (restrictForms (S.comp k) (S.rest a t) i) := fun i =>
    formNonneg_pullback S.A (S.B k) Subtype.val hholo S.Yo _ (hpotW i) (hnnW i)
  have hg := ReciprocityTheory.AnForm.M.mIntegrableCont (S.B k) _ hpot _
    ((continuous_gap S a ha ht htt h0).comp continuous_subtype_val)
  have htail := S.tailComp k a (Nat.lt_succ_iff.mp ha) t ht h0t (ell t₀) he
  have key := mInt_le_of_abs_le (S.B k) (Subtype.val ⁻¹' S.Yo) _ hpot hnn (S.bdComp_analytic k)
    (S.bdComp_interior k) hg htail.1 (nearBound S.C t₀) |S.C₁| (fun z hz => by
      have hb := abs_gap_le S a ha ht htt h0 he hz
      have hind : (tail (Subtype.val ⁻¹' S.Yo) (S.r ∘ Subtype.val) (ell t₀)).indicator
          (fun x => Real.log ((S.r ∘ Subtype.val) x)) z =
          (tail S.Yo S.r (ell t₀)).indicator (fun y => Real.log (S.r y)) z.val := by
        rfl
      rw [hind]
      exact hb)
  have hmass : mInt (S.B k) (restrictForms (S.comp k) (S.rest a t)) (fun _ => 1) =
      mInt (S.B k) (restrictForms (S.comp k) (restForms S.Om.pot S.th a)) (fun _ => 1) := by
    have hpotθ : ∀ i, IsPotential (S.B k)
        (restrictForms (S.comp k) (restForms S.Om.pot S.th a) i) := by
      intro i
      refine ReciprocityTheory.AnForm.M.isPotentialPullback S.A (S.B k) Subtype.val hholo _ ?_
      unfold restForms
      split_ifs
      · exact (S.form _ t ht h0t).1.th_pot
      · exact S.Om.isPot
    have hsm : ∀ i, (S.B k).Smooth ((fun i : Fin D => if (i : ℕ) < a then
        S.u i.castSucc t ∘ Subtype.val else fun _ => (0 : ℝ)) i) := by
      intro i
      dsimp only
      split_ifs
      · exact smooth_comp_holoMap S.A (S.B k) Subtype.val hholo (S.form _ t ht h0t).2
      · exact fun _ => contDiffOn_const
    rw [← ReciprocityTheory.AnForm.M.massIndep (S.B k) _ _ hpotθ hsm]
    apply ReciprocityTheory.AnForm.M.PLC.mInt_congr_phi
    intro i x y
    simp only [restrictForms, restForms, UIData.rest, UIData.T, curForms, potForm]
    split_ifs <;> simp [locPot_add_φ, LocPot.ofFun, LocPot.pullback]
  rw [hmass] at key
  have hℓ : 0 < ell t₀ := lt_of_lt_of_le (Real.exp_pos 1) he
  have hlog : 0 ≤ Real.log (ell t₀) := Real.log_nonneg (one_le_exp_one.trans he)
  have htb := htail.2.trans (show S.CE * Real.log (ell t₀) ^ (D + 1) / ell t₀ ≤
      |S.CE| * (Real.log (ell t₀) ^ (D + 1) / ell t₀) by
    rw [mul_div_assoc]
    exact mul_le_mul_of_nonneg_right (le_abs_self _) (div_nonneg (pow_nonneg hlog _) hℓ.le))
  have := mul_le_mul_of_nonneg_left htb (abs_nonneg S.C₁)
  unfold UIData.rest UIData.T at key ⊢
  linarith

end GreenMassError

theorem GreenMassError.proof : GreenMassError.Statement := by
  intro D W _ _ _ S a ha δ hδ
  have hK := GreenMassError.tendsto_nearBound S.C
  have hL := GreenMassError.tendsto_logPow_div
  have hW : Tendsto (fun t₀ => GreenMassError.nearBound S.C t₀ *
      mInt S.A (mixedForms S.Om.pot S.th a) (fun _ => 1) +
      |S.C₁| * (|S.CE| * (Real.log (ell t₀) ^ (D + 1 + 1) / ell t₀))) (𝓝[>] 0) (𝓝 0) := by
    have := (hK.mul_const (mInt S.A (mixedForms S.Om.pot S.th a) (fun _ => 1))).add
      (((hL (D + 1 + 1)).const_mul |S.CE|).const_mul |S.C₁|)
    simpa using this
  have hDv : Tendsto (fun t₀ => ∑ k, (S.mult k : ℝ) * (GreenMassError.nearBound S.C t₀ *
      mInt (S.B k) (restrictForms (S.comp k) (restForms S.Om.pot S.th a)) (fun _ => 1) +
        |S.C₁| * (|S.CE| * (Real.log (ell t₀) ^ (D + 1) / ell t₀)))) (𝓝[>] 0) (𝓝 0) := by
    have := tendsto_finsetSum Finset.univ fun k _ =>
      ((hK.mul_const (mInt (S.B k) (restrictForms (S.comp k) (restForms S.Om.pot S.th a))
        (fun _ => 1))).add (((hL (D + 1)).const_mul |S.CE|).const_mul |S.C₁|)).const_mul
        (S.mult k : ℝ)
    simpa using this
  have hev := (hW.eventually (gt_mem_nhds hδ)).and ((hDv.eventually (gt_mem_nhds hδ)).and
    (tendsto_ell.eventually_ge_atTop (Real.exp 1)))
  obtain ⟨u, hu, hsub⟩ := mem_nhdsGT_iff_exists_Ioo_subset.mp hev
  have hu0 : (0 : ℝ) < u := hu
  refine ⟨u / 2, by linarith, fun t₀ t ht htt hτ h0 => ?_⟩
  have hmem : t₀ ∈ Set.Ioo 0 u := ⟨ht.trans_le htt, by linarith⟩
  obtain ⟨h1, h2, he⟩ := hsub hmem
  exact ⟨(GreenMassError.errW_le S a ha ht htt h0 he).trans h1.le,
    (GreenMassError.errDiv_le S a ha ht htt h0 he).trans h2.le⟩

end

end GroundTheory.Heights₂.Heights.AnalyticLimit
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassError =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassReplaceLevi =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassReplaceLevi", "h": "module\n\npublic import Mathlib.Analysis.Calculus.ContDiff.Defs\npublic import Mathlib.Analysis.LocallyConvex.AbsConvexOpen\npublic import ReciprocityTheory.AnalyticForms.MaIntEmpty\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.InnerProductSpace.Calculus\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.AnalyticForms.PotentialTheory.PshShiftA\npublic import Mathlib.Analysis.Calculus.ContDiff.Basic\npublic import Mathlib.Analysis.Calculus.ContDiff.Comp\npublic import Mathlib.Analysis.Calculus.ContDiff.Operations\npublic import Mathlib.Analysis.Calculus.Deriv.Inv\npublic import Mathlib.Analysis.Calculus.Deriv.Mul\npublic import Mathlib.Analysis.Calculus.Deriv.Pow\npublic import Mathlib.Analysis.SpecialFunctions.ExpDeriv\npublic import Mathlib.Analysis.SpecialFunctions.Log.Deriv\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.AnalyticLimit

open Filter Topology
open ReciprocityTheory.AnForm (levi levi_add_smul levi_re_analytic)

noncomputable section

variable {ι : Type} [Fintype ι]

theorem fderiv2_comp_real {ψ : (ι → ℂ) → ℝ} {G G₁ : ℝ → ℝ} {g₂ : ℝ} {y : ι → ℂ}
    (hψ : ContDiffAt ℝ 2 ψ y) (hG : ∀ᶠ z in 𝓝 y, HasDerivAt G (G₁ (ψ z)) (ψ z))
    (hG₁ : HasDerivAt G₁ g₂ (ψ y)) (v w : ι → ℂ) :
    fderiv ℝ (fderiv ℝ (fun z => G (ψ z))) y v w =
      G₁ (ψ y) * fderiv ℝ (fderiv ℝ ψ) y v w + g₂ * fderiv ℝ ψ y v * fderiv ℝ ψ y w := by
  have hev : fderiv ℝ (fun z => G (ψ z)) =ᶠ[𝓝 y] fun z => G₁ (ψ z) • fderiv ℝ ψ z := by
    filter_upwards [hG, hψ.eventually (by simp)] with z h1 h2
    exact (h1.comp_hasFDerivAt z (h2.differentiableAt (by norm_num)).hasFDerivAt).fderiv
  have hD2 : HasFDerivAt (fderiv ℝ ψ) (fderiv ℝ (fderiv ℝ ψ) y) y :=
    ((hψ.fderiv_right (m := 1) (by norm_num)).differentiableAt (by norm_num)).hasFDerivAt
  have hc : HasFDerivAt (fun z => G₁ (ψ z)) (g₂ • fderiv ℝ ψ y) y :=
    hG₁.comp_hasFDerivAt y (hψ.differentiableAt (by norm_num)).hasFDerivAt
  have h := ((hc.smul hD2).congr_of_eventuallyEq hev).fderiv
  rw [h]
  simp only [ContinuousLinearMap.add_apply, ContinuousLinearMap.smul_apply,
    ContinuousLinearMap.smulRight_apply, smul_eq_mul]

theorem fderiv_comp_real {ψ : (ι → ℂ) → ℝ} {G : ℝ → ℝ} {g₁ : ℝ} {y : ι → ℂ}
    (hψ : DifferentiableAt ℝ ψ y) (hG : HasDerivAt G g₁ (ψ y)) (v : ι → ℂ) :
    fderiv ℝ (fun z => G (ψ z)) y v = g₁ * fderiv ℝ ψ y v := by
  have h := (hG.comp_hasFDerivAt y hψ.hasFDerivAt).fderiv
  rw [show (fun z => G (ψ z)) = G ∘ ψ from rfl, h]
  simp

theorem levi_comp_real {ψ : (ι → ℂ) → ℝ} {G G₁ : ℝ → ℝ} {g₂ : ℝ} {y : ι → ℂ}
    (hψ : ContDiffAt ℝ 2 ψ y) (hG : ∀ᶠ z in 𝓝 y, HasDerivAt G (G₁ (ψ z)) (ψ z))
    (hG₁ : HasDerivAt G₁ g₂ (ψ y)) (w : ι → ℂ) :
    levi (fun z => G (ψ z)) y w = G₁ (ψ y) * levi ψ y w +
      g₂ * ((fderiv ℝ ψ y w) ^ 2 + (fderiv ℝ ψ y (Complex.I • w)) ^ 2) / 4 := by
  unfold levi
  rw [fderiv2_comp_real hψ hG hG₁, fderiv2_comp_real hψ hG hG₁]
  ring

theorem fderiv_re_analytic {S : (ι → ℂ) → ℂ} {y : ι → ℂ} (hS : AnalyticAt ℂ S y) (v : ι → ℂ) :
    fderiv ℝ (fun z => (S z).re) y v = (fderiv ℂ S y v).re := by
  have hS' : HasFDerivAt S ((fderiv ℂ S y).restrictScalars ℝ) y :=
    hS.differentiableAt.hasFDerivAt.restrictScalars ℝ
  have h := (Complex.reCLM.hasFDerivAt.comp y hS').fderiv
  rw [show (fun z => (S z).re) = Complex.reCLM ∘ S from rfl, h]
  simp

theorem im_eq_re_mul (c : ℂ) : c.im = (-Complex.I * c).re := by
  simp [Complex.mul_re]

theorem fderiv_im_analytic {S : (ι → ℂ) → ℂ} {y : ι → ℂ} (hS : AnalyticAt ℂ S y) (v : ι → ℂ) :
    fderiv ℝ (fun z => (S z).im) y v = (fderiv ℂ S y v).im := by
  have hS2 : AnalyticAt ℂ (fun z => -Complex.I * S z) y := analyticAt_const.mul hS
  have h1 : (fun z => (S z).im) = fun z => (-Complex.I * S z).re := funext fun z => im_eq_re_mul _
  rw [h1, fderiv_re_analytic hS2, fderiv_const_mul hS.differentiableAt]
  simp [Complex.mul_re]

theorem levi_im_analytic {S : (ι → ℂ) → ℂ} {y : ι → ℂ} (hS : AnalyticAt ℂ S y) (w : ι → ℂ) :
    levi (fun z => (S z).im) y w = 0 := by
  have hS2 : AnalyticAt ℂ (fun z => -Complex.I * S z) y := analyticAt_const.mul hS
  have h1 : (fun z => (S z).im) = fun z => (-Complex.I * S z).re := funext fun z => im_eq_re_mul _
  rw [h1]
  exact levi_re_analytic hS2 w

theorem contDiffAt_re_analytic {S : (ι → ℂ) → ℂ} {y : ι → ℂ} (hS : AnalyticAt ℂ S y) :
    ContDiffAt ℝ 2 (fun z => (S z).re) y :=
  (Complex.reCLM.contDiff (n := 2)).contDiffAt.comp y (hS.restrictScalars (𝕜 := ℝ)).contDiffAt

theorem contDiffAt_im_analytic {S : (ι → ℂ) → ℂ} {y : ι → ℂ} (hS : AnalyticAt ℂ S y) :
    ContDiffAt ℝ 2 (fun z => (S z).im) y :=
  (Complex.imCLM.contDiff (n := 2)).contDiffAt.comp y (hS.restrictScalars (𝕜 := ℝ)).contDiffAt

theorem sq_norm_eq_re_im (c : ℂ) : ‖c‖ ^ 2 = c.re ^ 2 + 1 * c.im ^ 2 := by
  rw [Complex.sq_norm, Complex.normSq_apply]
  ring

theorem hasDerivAt_sq' (x : ℝ) : HasDerivAt (fun x : ℝ => x ^ 2) (2 * x) x := by
  simpa using hasDerivAt_pow 2 x

theorem levi_normSq_analytic {S : (ι → ℂ) → ℂ} {y : ι → ℂ} (hS : AnalyticAt ℂ S y) (w : ι → ℂ) :
    levi (fun z => ‖S z‖ ^ 2) y w = ‖fderiv ℂ S y w‖ ^ 2 := by
  have hre := contDiffAt_re_analytic hS
  have him := contDiffAt_im_analytic hS
  have e : (fun z => ‖S z‖ ^ 2) = fun z => (S z).re ^ 2 + 1 * (S z).im ^ 2 :=
    funext fun z => sq_norm_eq_re_im _
  have hG : ∀ (ψ : (ι → ℂ) → ℝ), ∀ᶠ z in 𝓝 y, HasDerivAt (fun x : ℝ => x ^ 2) (2 * ψ z) (ψ z) :=
    fun ψ => Eventually.of_forall fun z => hasDerivAt_sq' _
  have hG₁ : ∀ x : ℝ, HasDerivAt (fun x : ℝ => 2 * x) 2 x := fun x => by
    simpa using (hasDerivAt_id x).const_mul (2 : ℝ)
  have l1 := levi_comp_real (G₁ := fun x => 2 * x) hre (hG _) (hG₁ _) w
  have l2 := levi_comp_real (G₁ := fun x => 2 * x) him (hG _) (hG₁ _) w
  have hsq : ∀ (ψ : (ι → ℂ) → ℝ), ContDiffAt ℝ 2 ψ y → ContDiffAt ℝ 2 (fun z => ψ z ^ 2) y :=
    fun ψ h => h.pow 2
  rw [e, levi_add_smul 1 (hsq _ hre) (hsq _ him), l1, l2, levi_re_analytic hS,
    levi_im_analytic hS, fderiv_re_analytic hS, fderiv_re_analytic hS, fderiv_im_analytic hS,
    fderiv_im_analytic hS, map_smul, sq_norm_eq_re_im]
  simp only [smul_eq_mul, Complex.mul_re, Complex.mul_im, Complex.I_re, Complex.I_im]
  ring

theorem fderiv_normSq_analytic {S : (ι → ℂ) → ℂ} {y : ι → ℂ} (hS : AnalyticAt ℂ S y) (v : ι → ℂ) :
    fderiv ℝ (fun z => ‖S z‖ ^ 2) y v =
      2 * ((S y).re * (fderiv ℂ S y v).re + (S y).im * (fderiv ℂ S y v).im) := by
  have hre := contDiffAt_re_analytic hS
  have him := contDiffAt_im_analytic hS
  have e : (fun z => ‖S z‖ ^ 2) = fun z => (S z).re ^ 2 + (S z).im ^ 2 :=
    funext fun z => by rw [sq_norm_eq_re_im, one_mul]
  have d1 : DifferentiableAt ℝ (fun z => (S z).re ^ 2) y :=
    (hre.differentiableAt (by norm_num)).pow 2
  have d2 : DifferentiableAt ℝ (fun z => (S z).im ^ 2) y :=
    (him.differentiableAt (by norm_num)).pow 2
  rw [e, fderiv_fun_add d1 d2, ContinuousLinearMap.add_apply,
    fderiv_comp_real (G := fun x : ℝ => x ^ 2) (hre.differentiableAt (by norm_num))
      (hasDerivAt_sq' _),
    fderiv_comp_real (G := fun x : ℝ => x ^ 2) (him.differentiableAt (by norm_num))
      (hasDerivAt_sq' _), fderiv_re_analytic hS, fderiv_im_analytic hS]
  ring

theorem levi_log_normSq_add_exp {S : (ι → ℂ) → ℂ} {Φ : (ι → ℂ) → ℝ} {y : ι → ℂ} {ε : ℝ}
    (hS : AnalyticAt ℂ S y) (hΦ : ContDiffAt ℝ 2 Φ y) (hε : 0 < ε) (w : ι → ℂ) :
    2 * (ε * Real.exp (2 * Φ y)) / (‖S y‖ ^ 2 + ε * Real.exp (2 * Φ y)) * levi Φ y w ≤
      levi (fun z => Real.log (‖S z‖ ^ 2 + ε * Real.exp (2 * Φ z))) y w := by
  set h : (ι → ℂ) → ℝ := fun z => ‖S z‖ ^ 2 + ε * Real.exp (2 * Φ z) with hh
  have hpos : ∀ z, 0 < h z := fun z => by
    have := Real.exp_pos (2 * Φ z)
    positivity
  have hSc : ContDiffAt ℝ 2 S y := (hS.restrictScalars (𝕜 := ℝ)).contDiffAt
  have hQ : ContDiffAt ℝ 2 (fun z => ‖S z‖ ^ 2) y := (contDiff_norm_sq ℝ).contDiffAt.comp y hSc
  have h2Φ : ContDiffAt ℝ 2 (fun z => 2 * Φ z) y := contDiffAt_const.mul hΦ
  have hE : ContDiffAt ℝ 2 (fun z => Real.exp (2 * Φ z)) y := h2Φ.exp
  have hhc : ContDiffAt ℝ 2 h y := hQ.add (contDiffAt_const.mul hE)
  have l2Φ := levi_comp_real (G := fun x : ℝ => 2 * x) (G₁ := fun _ => 2) (g₂ := 0) hΦ
    (Eventually.of_forall fun z => by simpa using (hasDerivAt_id (Φ z)).const_mul (2 : ℝ))
    (hasDerivAt_const _ _) w
  have lE := levi_comp_real (G := Real.exp) (G₁ := Real.exp) (g₂ := Real.exp (2 * Φ y)) h2Φ
    (Eventually.of_forall fun z => Real.hasDerivAt_exp _) (Real.hasDerivAt_exp _) w
  have d2Φ : ∀ v, fderiv ℝ (fun z => 2 * Φ z) y v = 2 * fderiv ℝ Φ y v := fun v =>
    fderiv_comp_real (G := fun x : ℝ => 2 * x) (hΦ.differentiableAt (by norm_num))
      (by simpa using (hasDerivAt_id (Φ y)).const_mul (2 : ℝ)) v
  have dE : ∀ v, fderiv ℝ (fun z => Real.exp (2 * Φ z)) y v =
      Real.exp (2 * Φ y) * (2 * fderiv ℝ Φ y v) := fun v => by
    rw [fderiv_comp_real (G := Real.exp) (h2Φ.differentiableAt (by norm_num))
      (Real.hasDerivAt_exp _), d2Φ]
  have dh : ∀ v, fderiv ℝ h y v = 2 * ((S y).re * (fderiv ℂ S y v).re +
      (S y).im * (fderiv ℂ S y v).im) + ε * (Real.exp (2 * Φ y) * (2 * fderiv ℝ Φ y v)) := by
    intro v
    have d1 : DifferentiableAt ℝ (fun z => ‖S z‖ ^ 2) y := hQ.differentiableAt (by norm_num)
    have d2 : DifferentiableAt ℝ (fun z => ε * Real.exp (2 * Φ z)) y :=
      (contDiffAt_const.mul hE).differentiableAt (by norm_num)
    rw [hh, fderiv_fun_add d1 d2, ContinuousLinearMap.add_apply, fderiv_normSq_analytic hS,
      fderiv_const_mul (hE.differentiableAt (by norm_num)), ContinuousLinearMap.smul_apply,
      dE, smul_eq_mul]
  have lh : levi h y w = ‖fderiv ℂ S y w‖ ^ 2 + ε * (Real.exp (2 * Φ y) * (2 * levi Φ y w) +
      Real.exp (2 * Φ y) * ((2 * fderiv ℝ Φ y w) ^ 2 +
        (2 * fderiv ℝ Φ y (Complex.I • w)) ^ 2) / 4) := by
    rw [hh, levi_add_smul ε hQ hE, levi_normSq_analytic hS, lE, l2Φ, d2Φ, d2Φ]
    ring
  have lK := levi_comp_real (G := Real.log) (G₁ := fun x => x⁻¹) (g₂ := -(h y ^ 2)⁻¹) hhc
    (Eventually.of_forall fun z => Real.hasDerivAt_log (hpos z).ne')
    (hasDerivAt_inv (hpos y).ne') w
  change _ ≤ levi (fun z => Real.log (h z)) y w
  rw [lK, lh, dh, dh, (fderiv ℂ S y).map_smul Complex.I w, sq_norm_eq_re_im (fderiv ℂ S y w)]
  simp only [smul_eq_mul, Complex.mul_re, Complex.mul_im, Complex.I_re, Complex.I_im]
  set E := ε * Real.exp (2 * Φ y) with hEdef
  have hEpos : 0 < E := mul_pos hε (Real.exp_pos _)
  have hy : h y = ‖S y‖ ^ 2 + E := rfl
  rw [sq_norm_eq_re_im (S y)] at hy
  set σr := (S y).re
  set σi := (S y).im
  set ar := (fderiv ℂ S y w).re
  set ai := (fderiv ℂ S y w).im
  set b₁ := fderiv ℝ Φ y w
  set b₂ := fderiv ℝ Φ y (Complex.I • w)
  set L := levi Φ y w
  have hhy : 0 < h y := hpos y
  rw [show ‖S y‖ ^ 2 + E = h y from rfl]
  have key : (h y)⁻¹ * (ar ^ 2 + 1 * ai ^ 2 + ε * (Real.exp (2 * Φ y) * (2 * L) +
      Real.exp (2 * Φ y) * ((2 * b₁) ^ 2 + (2 * b₂) ^ 2) / 4)) +
      -(h y ^ 2)⁻¹ * ((2 * (σr * ar + σi * ai) + ε * (Real.exp (2 * Φ y) * (2 * b₁))) ^ 2 +
        (2 * (σr * (0 * ar - 1 * ai) + σi * (0 * ai + 1 * ar)) +
          ε * (Real.exp (2 * Φ y) * (2 * b₂))) ^ 2) / 4 - 2 * E / h y * L =
      E * ((ar - (σr * b₁ + σi * b₂)) ^ 2 + (ai - (σi * b₁ - σr * b₂)) ^ 2) / h y ^ 2 := by
    rw [hy]
    field_simp
    rw [hEdef]
    ring
  have hnn : 0 ≤ E * ((ar - (σr * b₁ + σi * b₂)) ^ 2 + (ai - (σi * b₁ - σr * b₂)) ^ 2) / h y ^ 2 :=
    by positivity
  linarith

end

end GroundTheory.Heights₂.Heights.AnalyticLimit
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassReplaceLevi =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassReplaceKappa =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassReplaceKappa", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.UIObjects\npublic import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassReplaceLevi\npublic import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PKaehlerBound\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.InnerProductSpace.Calculus\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.AnalyticForms.PotentialTheory.ContDiffAtOfIsPotential\npublic import ReciprocityTheory.AnalyticForms.PotentialTheory.HessCEqZeroOfEventuallyEqZero\npublic import ReciprocityTheory.AnalyticForms.PotentialTheory.MaMeasureA\nimport ReciprocityTheory.AnalyticForms.PotentialTheory.PshShiftA\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.AnalyticLimit

open Filter Topology MeasureTheory
open scoped ContDiff
open ReciprocityTheory.AnForm (levi levi_congr levi_add_smul)
open ReciprocityTheory.AnForm.M (FinHolAtlas LocPot IsPotential IsSection IsSNC logNormSec)

noncomputable section

namespace GreenMassReplace

variable {e : ℕ} {X : Type} [TopologicalSpace X]

theorem secNorm_eq_local {A : FinHolAtlas e X} {L : LocPot X} {s : X → X → ℂ}
    (hS : IsSection A L s) {x y : X} (hy : y ∈ L.U x) :
    secNorm L s y = ‖s x y‖ * Real.exp (-L.φ x y) :=
  hS.2 y x y ⟨L.mem_U y, hy⟩

def logNormSqAdd (L : LocPot X) (s : X → X → ℂ) (ε : ℝ) (y : X) : ℝ :=
  Real.log (secNorm L s y ^ 2 + ε)

theorem logNormSqAdd_eq_local {A : FinHolAtlas e X} {L : LocPot X} {s : X → X → ℂ}
    (hS : IsSection A L s) {x y : X} (hy : y ∈ L.U x) {ε : ℝ} (hε : 0 < ε) :
    logNormSqAdd L s ε y =
      Real.log (‖s x y‖ ^ 2 + ε * Real.exp (2 * L.φ x y)) - 2 * L.φ x y := by
  unfold logNormSqAdd
  rw [secNorm_eq_local hS hy]
  have hP : 0 < ‖s x y‖ ^ 2 + ε * Real.exp (2 * L.φ x y) := by positivity
  have h1 : Real.exp (-L.φ x y) ^ 2 = Real.exp (-(2 * L.φ x y)) := by
    rw [sq, ← Real.exp_add]
    ring_nf
  have h2 : Real.exp (2 * L.φ x y) * Real.exp (-(2 * L.φ x y)) = 1 := by
    rw [← Real.exp_add]
    simp
  have h3 : (‖s x y‖ * Real.exp (-L.φ x y)) ^ 2 + ε =
      (‖s x y‖ ^ 2 + ε * Real.exp (2 * L.φ x y)) * Real.exp (-(2 * L.φ x y)) := by
    rw [mul_pow, h1, add_mul, mul_assoc ε, h2, mul_one]
  rw [h3, Real.log_mul hP.ne' (Real.exp_pos _).ne', Real.log_exp]
  ring

theorem kappaEp_φ_eq_local {A : FinHolAtlas e X} {L : LocPot X} {s : X → X → ℂ}
    (hS : IsSection A L s) {x y : X} (hy : y ∈ L.U x) {ε : ℝ} (hε : 0 < ε) :
    (kappaEp L s ε).φ x y = Real.log (‖s x y‖ ^ 2 + ε * Real.exp (2 * L.φ x y)) := by
  have h := logNormSqAdd_eq_local hS hy hε
  unfold logNormSqAdd at h
  show 2 * L.φ x y + Real.log (secNorm L s y ^ 2 + ε) = _
  rw [h]
  ring

theorem smooth_logNormSqAdd {A : FinHolAtlas e X} {L : LocPot X} {s : X → X → ℂ}
    (hL : IsPotential A L) (hS : IsSection A L s) {ε : ℝ} (hε : 0 < ε) :
    A.Smooth (logNormSqAdd L s ε) := by
  intro j y hy
  refine ContDiffAt.contDiffWithinAt ?_
  have hyt : y ∈ (A.chart j).target := hy.1
  set q := (A.chart j).symm y with hq
  have hO : IsOpen ((A.chart j).target ∩ (A.chart j).symm ⁻¹' L.U q) :=
    (A.chart j).isOpen_inter_preimage_symm (L.isOpen_U q)
  have hyO : y ∈ (A.chart j).target ∩ (A.chart j).symm ⁻¹' L.U q := ⟨hyt, L.mem_U q⟩
  have heq : (logNormSqAdd L s ε ∘ (A.chart j).symm) =ᶠ[𝓝 y] fun z =>
      Real.log (‖(s q ∘ (A.chart j).symm) z‖ ^ 2 +
        ε * Real.exp (2 * (L.φ q ∘ (A.chart j).symm) z)) - 2 * (L.φ q ∘ (A.chart j).symm) z := by
    filter_upwards [hO.mem_nhds hyO] with z hz
    exact logNormSqAdd_eq_local hS hz.2 hε
  refine ContDiffAt.congr_of_eventuallyEq ?_ heq
  have hSc : ContDiffAt ℝ ∞ (s q ∘ (A.chart j).symm) y :=
    ((hS.1 q j y hyO).restrictScalars (𝕜 := ℝ)).contDiffAt
  have hΦ : ContDiffAt ℝ ∞ (L.φ q ∘ (A.chart j).symm) y :=
    ReciprocityTheory.AnForm.M.contDiffAt_of_isPotential A L hL q j hyO
  refine ((((contDiff_norm_sq ℝ).contDiffAt.comp y hSc).add
    (contDiffAt_const.mul (contDiffAt_const.mul hΦ).exp)).log ?_).sub (contDiffAt_const.mul hΦ)
  exact (by positivity : (0 : ℝ) < ‖(s q ∘ (A.chart j).symm) y‖ ^ 2 +
    ε * Real.exp (2 * (L.φ q ∘ (A.chart j).symm) y)).ne'

theorem isPotential_kappaEp {A : FinHolAtlas e X} {L : LocPot X} {s : X → X → ℂ}
    (hL : IsPotential A L) (hS : IsSection A L s) {ε : ℝ} (hε : 0 < ε) :
    IsPotential A (kappaEp L s ε) :=
  ReciprocityTheory.AnForm.M.isPotentialAdd A _ _ (ReciprocityTheory.AnForm.M.isPotentialRsmul A 2 L hL)
    (ReciprocityTheory.AnForm.M.isPotential_ofFun A _ (smooth_logNormSqAdd hL hS hε))

theorem kappaEp_formNonneg [CompactSpace X] {A : FinHolAtlas e X} (Om : KaehlerForm A)
    {L : LocPot X} {s : X → X → ℂ} (hL : IsPotential A L) (hS : IsSection A L s) :
    ∃ Cκ : ℝ, 0 ≤ Cκ ∧ ∀ ε, 0 < ε → FormNonneg A Set.univ (kappaEp L s ε + Om.pot.rsmul Cκ) := by
  obtain ⟨M, hM0, hM⟩ := levi_abs_le_global A isCompact_univ L Om.pot hL Om.isPot Om.pos
  refine ⟨2 * M, by positivity, fun ε hε x k y hy w => ?_⟩
  have hyt : y ∈ (A.chart k).target := hy.1
  have hyL : (A.chart k).symm y ∈ L.U x := hy.2.2.1.1
  have hyΩ : (A.chart k).symm y ∈ Om.pot.U x := hy.2.2.2
  set S := s x ∘ (A.chart k).symm with hSdef
  set Φ := L.φ x ∘ (A.chart k).symm with hΦdef
  set Ψ := Om.pot.φ x ∘ (A.chart k).symm with hΨdef
  have hO : IsOpen ((A.chart k).target ∩ (A.chart k).symm ⁻¹' L.U x) :=
    (A.chart k).isOpen_inter_preimage_symm (L.isOpen_U x)
  have hSa : AnalyticAt ℂ S y := hS.1 x k y ⟨hyt, hyL⟩
  have hΦ2 : ContDiffAt ℝ 2 Φ y := ReciprocityTheory.AnForm.M.pot_contDiffAt_two hL x k hyt hyL
  have hΨ2 : ContDiffAt ℝ 2 Ψ y := ReciprocityTheory.AnForm.M.pot_contDiffAt_two Om.isPot x k hyt hyΩ
  have heq : (kappaEp L s ε).φ x ∘ (A.chart k).symm =ᶠ[𝓝 y]
      fun z => Real.log (‖S z‖ ^ 2 + ε * Real.exp (2 * Φ z)) := by
    filter_upwards [hO.mem_nhds ⟨hyt, hyL⟩] with z hz
    exact kappaEp_φ_eq_local hS hz.2 hε
  have hK2 : ContDiffAt ℝ 2 (fun z => Real.log (‖S z‖ ^ 2 + ε * Real.exp (2 * Φ z))) y := by
    have hSc : ContDiffAt ℝ 2 S y := (hSa.restrictScalars (𝕜 := ℝ)).contDiffAt
    refine (((contDiff_norm_sq ℝ).contDiffAt.comp y hSc).add
      (contDiffAt_const.mul (contDiffAt_const.mul hΦ2).exp)).log ?_
    exact (by positivity : (0 : ℝ) < ‖S y‖ ^ 2 + ε * Real.exp (2 * Φ y)).ne'
  have hκ2 := hK2.congr_of_eventuallyEq heq
  have hsum : (kappaEp L s ε + Om.pot.rsmul (2 * M)).φ x ∘ (A.chart k).symm =
      fun z => ((kappaEp L s ε).φ x ∘ (A.chart k).symm) z + (2 * M) * Ψ z := rfl
  rw [hsum, levi_add_smul (2 * M) hκ2 hΨ2 w, levi_congr heq w]
  have hA := levi_log_normSq_add_exp hSa hΦ2 hε w
  have hB := hM x k y ⟨hyt, hyL, hyΩ⟩ w
  have hΨnn : 0 ≤ levi Ψ y w := by
    rcases eq_or_ne w 0 with h0 | h0
    · rw [h0, ReciprocityTheory.AnForm.levi_zero]
    · exact (Om.pos x k y ⟨hyt, hyΩ⟩ w h0).le
  set E := ε * Real.exp (2 * Φ y) with hE
  have hE0 : 0 < E := mul_pos hε (Real.exp_pos _)
  have hh : 0 < ‖S y‖ ^ 2 + E := by positivity
  set c := 2 * E / (‖S y‖ ^ 2 + E) with hc
  have hc0 : 0 ≤ c := by positivity
  have hc2 : c ≤ 2 := by
    rw [hc, div_le_iff₀ hh]
    nlinarith [sq_nonneg ‖S y‖]
  have hl := (abs_le.mp hB).1
  have hMΨ : 0 ≤ M * levi Ψ y w := mul_nonneg hM0 hΨnn
  nlinarith

def zeroSet (s : X → X → ℂ) : Set X := {y | s y y = 0}

theorem zero_iff_local {A : FinHolAtlas e X} {L : LocPot X} {s : X → X → ℂ}
    (hS : IsSection A L s) {x y : X} (hy : y ∈ L.U x) : s y y = 0 ↔ s x y = 0 := by
  have h := hS.2 y x y ⟨L.mem_U y, hy⟩
  constructor
  · intro h0
    rw [h0, norm_zero, zero_mul] at h
    exact norm_eq_zero.mp ((mul_eq_zero.mp h.symm).resolve_right (Real.exp_pos _).ne')
  · intro h0
    rw [h0, norm_zero, zero_mul] at h
    exact norm_eq_zero.mp ((mul_eq_zero.mp h).resolve_right (Real.exp_pos _).ne')

theorem zeroSet_analytic {A : FinHolAtlas e X} {L : LocPot X} {s : X → X → ℂ}
    (hS : IsSection A L s) : A.IsAnalyticSubset (zeroSet s) := by
  intro x
  refine ⟨L.U x, L.isOpen_U x, L.mem_U x, 1, fun _ => s x, fun _ => hS.1 x, ?_⟩
  ext y
  simp only [zeroSet, Set.mem_inter_iff, Set.mem_ofPred_eq, forall_const]
  constructor
  · rintro ⟨h0, hy⟩
    exact ⟨hy, (zero_iff_local hS hy).1 h0⟩
  · rintro ⟨hy, h0⟩
    exact ⟨(zero_iff_local hS hy).2 h0, hy⟩

theorem interior_zeroSet {A : FinHolAtlas e X} {L : LocPot X} {s : X → X → ℂ}
    (hS : IsSection A L s) {r : ℕ} {m : Fin r → ℕ} {W : Fin r → Set X}
    (hsnc : IsSNC A L s m W) : interior (zeroSet s) = ∅ := by
  rw [Set.eq_empty_iff_forall_notMem]
  intro x hx
  obtain ⟨ψ, -, hxψ, hψL, σ, -, -, u, -, hu0, hprod⟩ := hsnc x
  have hOimg : IsOpen (ψ '' (ψ.source ∩ interior (zeroSet s))) :=
    ψ.isOpen_image_source_inter isOpen_interior
  have hne : (ψ '' (ψ.source ∩ interior (zeroSet s))).Nonempty := ⟨ψ x, x, ⟨hxψ, hx⟩, rfl⟩
  have hsub : ψ '' (ψ.source ∩ interior (zeroSet s)) ⊆ ⋃ i, {z : Fin e → ℂ | z i = 0} := by
    rintro _ ⟨y, ⟨hyψ, hyZ⟩, rfl⟩
    have hz : y ∈ zeroSet s := interior_subset hyZ
    have h0 : s x y = 0 := (zero_iff_local hS (hψL hyψ)).1 hz
    rw [hprod y hyψ] at h0
    rcases mul_eq_zero.1 h0 with h | h
    · exact absurd h (hu0 y hyψ)
    · obtain ⟨k, -, hk⟩ := Finset.prod_eq_zero_iff.1 h
      revert hk
      cases hσ : σ k with
      | none => intro hk; exact absurd hk one_ne_zero
      | some i => intro hk; exact Set.mem_iUnion.2 ⟨i, eq_zero_of_pow_eq_zero hk⟩
  have hpos := hOimg.measure_pos volume hne
  have hnull : volume (⋃ i, {z : Fin e → ℂ | z i = 0}) = 0 :=
    measure_iUnion_null fun i => ReciprocityTheory.AnForm.M.PLAux.volume_coord_eq_zero i
  exact hpos.ne' (measure_mono_null hsub hnull)

theorem greenEp_eq_off (L : LocPot X) (s : X → X → ℂ) {ε : ℝ} (hε : 0 < ε) {y : X}
    (hy : y ∉ zeroSet s) :
    greenEp L s ε y = -2 * logNormSec L s y + logNormSqAdd L s ε y := by
  have hn : 0 < secNorm L s y := mul_pos (norm_pos_iff.2 hy) (Real.exp_pos _)
  have h1 : 1 + ε / secNorm L s y ^ 2 = (secNorm L s y ^ 2 + ε) / secNorm L s y ^ 2 := by
    field_simp
  unfold greenEp logNormSqAdd
  rw [h1, Real.log_div (by positivity) (by positivity), Real.log_pow]
  show _ = -2 * Real.log (secNorm L s y) + _
  push_cast
  ring

theorem greenEp_nonneg (L : LocPot X) (s : X → X → ℂ) {ε : ℝ} (hε : 0 < ε) (y : X) :
    0 ≤ greenEp L s ε y :=
  Real.log_nonneg (le_add_of_nonneg_right (div_nonneg hε.le (sq_nonneg _)))

end GreenMassReplace

end

end GroundTheory.Heights₂.Heights.AnalyticLimit
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassReplaceKappa =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassReplace =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassReplace", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.GreenMassReplace\npublic import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.EnergyStep\npublic import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassReplaceKappa\nimport GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PKaehlerBound\npublic import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.SystemIndependence\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.AnalyticForms.PotentialTheory.AnalyticSubsetChartLocal\nimport ReciprocityTheory.AnalyticForms.PotentialTheory.ContDiffAtOfIsPotential\nimport ReciprocityTheory.AnalyticForms.PotentialTheory.HessCEqZeroOfEventuallyEqZero\nimport ReciprocityTheory.AnalyticForms.PotentialTheory.IntegrableOnTargetOfTsupport\npublic import ReciprocityTheory.AnalyticForms.PotentialTheory.LogInt\nimport ReciprocityTheory.AnalyticForms.PotentialTheory.MaMeasureA\npublic import ReciprocityTheory.AnalyticForms.PotentialTheory.PLLocalStatement\nimport ReciprocityTheory.AnalyticForms.PotentialTheory.PotentialContDiffAt\nimport ReciprocityTheory.AnalyticForms.PotentialTheory.PshShiftA\nimport ReciprocityTheory.AnalyticForms.PotentialTheory.SNCAtlas\nimport ReciprocityTheory.AnalyticForms.PotentialTheory.Stokes\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.AnalyticLimit

open Filter Topology MeasureTheory
open ReciprocityTheory.AnForm (levi levi_add_smul)
open ReciprocityTheory.AnForm.M (FinHolAtlas LocPot IsPotential mInt MIntegrable logNormSec)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.Regular (ell errE)

noncomputable section

namespace GreenMassReplace

theorem ell_anti {t t₀ : ℝ} (ht : 0 < t) (htt : t ≤ t₀) : ell t₀ ≤ ell t :=
  Real.log_le_log (inv_pos.2 (ht.trans_le htt)) (inv_anti₀ ht htt)

theorem formNonneg_mono {e : ℕ} {X : Type} [TopologicalSpace X] {A : FinHolAtlas e X}
    {V : Set X} {P : LocPot X} (h : FormNonneg A Set.univ P) : FormNonneg A V P :=
  fun x k y hy w => h x k y ⟨hy.1, trivial, hy.2.2⟩ w

theorem formNonneg_kaehler {e : ℕ} {X : Type} [TopologicalSpace X] {A : FinHolAtlas e X}
    (Om : KaehlerForm A) (V : Set X) : FormNonneg A V Om.pot :=
  fun x k y hy w => KaehlerForm.isPsh Om x k y ⟨hy.1, hy.2.2⟩ w

theorem mInt_nonneg_of_compl {e : ℕ} {X : Type} [TopologicalSpace X] (A : FinHolAtlas e X)
    (V : Set X) (hAn : A.IsAnalyticSubset Vᶜ) (hint : interior Vᶜ = ∅) (Φ : Fin e → LocPot X)
    (hpot : ∀ i, IsPotential A (Φ i)) (hnn : ∀ i, FormNonneg A V (Φ i)) (f : X → ℝ)
    (hf : ∀ x, 0 ≤ f x) : 0 ≤ mInt A Φ f := by
  have mIntCongrNull : ∀ (Φ : Fin e → LocPot X) (S : Set X), A.IsAnalyticSubset S →
      interior S = ∅ → ∀ g g' : X → ℝ, (∀ x ∉ S, g x = g' x) →
      mInt A Φ g = mInt A Φ g' := by
    intro Φ S hS hS' g g' hg
    unfold mInt
    split_ifs with h
    · exact ReciprocityTheory.AnForm.M.integralWith_congr_null A h.some Φ hS hS' hg
    · rfl
  rw [mIntCongrNull Φ Vᶜ hAn hint f (V.indicator f) (fun x hx => by
    rw [Set.indicator_of_mem (Set.not_notMem.mp hx)])]
  refine SystemIndependence.mInt_nonneg_on A V Φ hpot hnn _ (fun x => ?_)
    (fun x hx => Set.indicator_of_notMem hx _)
  by_cases hx : x ∈ V
  · rw [Set.indicator_of_mem hx]
    exact hf x
  · rw [Set.indicator_of_notMem hx]

theorem levi_smul' {ι : Type} [Fintype ι] {f : (ι → ℂ) → ℝ} {y : ι → ℂ} (c : ℝ)
    (hf : ContDiffAt ℝ 2 f y) (w : ι → ℂ) : levi (fun z => c * f z) y w = c * levi f y w := by
  have h := levi_add_smul c (contDiffAt_const (c := (0 : ℝ))) hf w
  simp only [zero_add] at h
  rw [h, levi_const, zero_add]

theorem mixedForms_eq_cons {W : Type} [TopologicalSpace W] {D : ℕ} (Om : LocPot W)
    (T : Fin (D + 1) → LocPot W) (a : ℕ) (ha : a < D + 1) :
    mixedForms Om T a = Fin.cons Om (restForms Om T a) ∘ Fin.cycleRange (⟨a, ha⟩ : Fin (D + 1)) := by
  funext i
  simp only [Function.comp_apply, mixedForms]
  rcases lt_trichotomy i ⟨a, ha⟩ with h | h | h
  · have hi : (i : ℕ) < a := h
    have hD : (i : ℕ) < D := by omega
    have hc : Fin.cycleRange (⟨a, ha⟩ : Fin (D + 1)) i = Fin.succ ⟨i, hD⟩ :=
      Fin.ext (by simp [Fin.coe_cycleRange_of_lt h])
    rw [hc, Fin.cons_succ, if_pos hi]
    simp only [restForms, if_pos hi]
    rfl
  · rw [h, Fin.cycleRange_self, Fin.cons_zero, if_neg (lt_irrefl a)]
  · have hi : a < (i : ℕ) := h
    have hne : i ≠ 0 := fun h0 => by rw [h0] at hi; exact Nat.not_lt_zero _ hi
    rw [Fin.cycleRange_of_gt h, if_neg (by omega)]
    obtain ⟨j, rfl⟩ := Fin.exists_succ_eq.2 hne
    rw [Fin.cons_succ]
    simp only [restForms]
    rw [if_neg]
    simp only [Fin.val_succ] at hi
    omega

variable {D : ℕ} {W : Type} [TopologicalSpace W]

theorem divInt_linear [CompactSpace W] [T2Space W] (S : UIData D W) (Φ : Fin D → LocPot W)
    (hΦ : ∀ i, IsPotential S.A (Φ i)) (c : ℝ) {f g : W → ℝ} (hf : Continuous f)
    (hg : Continuous g) :
    S.divInt Φ (fun x => c * f x + g x) = c * S.divInt Φ f + S.divInt Φ g := by
  unfold UIData.divInt
  rw [Finset.mul_sum, ← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun k _ => ?_
  have : CompactSpace (S.comp k) := isCompact_iff_compactSpace.mp
    (ReciprocityTheory.AnForm.M.SimpleNormalCrossingSliceCharts.isClosed_divisorComponent S.A S.L S.s S.mult S.comp S.s_snc k).isCompact
  have hpot : ∀ i, IsPotential (S.B k) (restrictForms (S.comp k) Φ i) := fun i =>
    ReciprocityTheory.AnForm.M.isPotentialPullback S.A (S.B k) Subtype.val (S.B_holo k) (Φ i) (hΦ i)
  have h := ReciprocityTheory.AnForm.M.mIntLinear (S.B k) (restrictForms (S.comp k) Φ) hpot c
    (f ∘ Subtype.val) (g ∘ Subtype.val)
    (ReciprocityTheory.AnForm.M.mIntegrableCont _ _ hpot _ (hf.comp continuous_subtype_val))
    (ReciprocityTheory.AnForm.M.mIntegrableCont _ _ hpot _ (hg.comp continuous_subtype_val))
  have e : ((fun x => c * f x + g x) ∘ Subtype.val : S.comp k → ℝ) =
      fun x => c * (f ∘ Subtype.val) x + (g ∘ Subtype.val) x := rfl
  rw [e, h]
  ring

end GreenMassReplace

open GreenMassReplace in
theorem GreenMassReplace.proof : GreenMassReplace.Statement := by
  intro D W _ _ _ S
  obtain ⟨Cκ, hCκ0, hκ⟩ := kappaEp_formNonneg S.Om S.L_pot S.s_sec
  refine ⟨Cκ, hCκ0, fun a ha t₀ ht₀ hℓ₀ => ?_⟩
  have hform₀ := S.form ⟨a, ha⟩ t₀ ht₀ hℓ₀
  set ut : W → ℝ := fun x => S.u ⟨a, ha⟩ t₀ x + S.C * errE S.C t₀ with hutdef
  have hut : S.A.Smooth ut := fun j => (hform₀.2 j).add contDiffOn_const
  have hutpot : IsPotential S.A (LocPot.ofFun ut) := ReciprocityTheory.AnForm.M.isPotential_ofFun _ _ hut
  obtain ⟨K, hK0, hK⟩ := levi_abs_le_global S.A isCompact_univ (LocPot.ofFun ut) S.Om.pot hutpot
    S.Om.isPot S.Om.pos
  refine ⟨K, hK0, fun ε t hε _ ht htt => ?_⟩
  have hℓ : S.ell₀ ≤ ell t := hℓ₀.trans (ell_anti ht htt)

  have hTpot : ∀ j, IsPotential S.A (S.T t j) := fun j =>
    ReciprocityTheory.AnForm.M.isPotentialAdd S.A _ _ (S.form j t ht hℓ).1.th_pot
      (ReciprocityTheory.AnForm.M.isPotential_ofFun _ _ (S.form j t ht hℓ).2)
  have hTnn : ∀ j, FormNonneg S.A S.Yo (S.T t j) := fun j => (S.form j t ht hℓ).1.nonneg
  set Φ' := S.rest a t with hΦ'
  have hΦpot : ∀ i, IsPotential S.A (Φ' i) := by
    intro i
    simp only [hΦ', UIData.rest, restForms]
    split_ifs
    · exact hTpot _
    · exact S.Om.isPot
  have hΦnn : ∀ i, FormNonneg S.A S.Yo (Φ' i) := by
    intro i
    simp only [hΦ', UIData.rest, restForms]
    split_ifs
    · exact hTnn _
    · exact formNonneg_kaehler S.Om S.Yo
  have hcons : ∀ P, IsPotential S.A P →
      ∀ i, IsPotential S.A ((Fin.cons P Φ' : Fin (D + 1) → LocPot W) i) := by
    intro P hP i
    refine Fin.cases ?_ (fun j => ?_) i
    · simpa using hP
    · simpa using hΦpot j
  have hconsnn : ∀ P, FormNonneg S.A S.Yo P →
      ∀ i, FormNonneg S.A S.Yo ((Fin.cons P Φ' : Fin (D + 1) → LocPot W) i) := by
    intro P hP i
    refine Fin.cases ?_ (fun j => ?_) i
    · simpa using hP
    · simpa using hΦnn j
  have hκpot := isPotential_kappaEp S.L_pot S.s_sec hε
  have hOmK : ∀ c : ℝ, IsPotential S.A (S.Om.pot.rsmul c) := fun c =>
    ReciprocityTheory.AnForm.M.isPotentialRsmul S.A c _ S.Om.isPot

  set u := S.u ⟨a, ha⟩ t with hudef
  have hu : S.A.Smooth u := (S.form ⟨a, ha⟩ t ht hℓ).2
  have hut_c : Continuous ut := ReciprocityTheory.AnForm.M.PLAux.smooth_continuous hut
  have hu_c : Continuous u := ReciprocityTheory.AnForm.M.PLAux.smooth_continuous hu
  set g := S.gap a ha t₀ t with hgdef
  have hg_eq : g = fun x => ut x - u x := rfl
  have hg_c : Continuous g := by rw [hg_eq]; exact hut_c.sub hu_c
  have hgnn : ∀ x, 0 ≤ g x := fun x => by
    have := S.mono ⟨a, ha⟩ t t₀ ht htt hℓ₀ x
    rw [hg_eq]
    simp only [hutdef, hudef]
    linarith
  have hu_eq : (fun x => -1 * g x + ut x) = u := by
    funext x
    rw [hg_eq]
    ring
  set F := logNormSqAdd S.L S.s ε with hFdef
  have hF : S.A.Smooth F := smooth_logNormSqAdd S.L_pot S.s_sec hε
  have hF_c : Continuous F := ReciprocityTheory.AnForm.M.PLAux.smooth_continuous hF
  have hint : ∀ P, IsPotential S.A P → ∀ f : W → ℝ, Continuous f →
      MIntegrable S.A (Fin.cons P Φ') f := fun P hP f hf =>
    ReciprocityTheory.AnForm.M.mIntegrableCont S.A _ (hcons P hP) f hf

  have sA : mInt S.A (Fin.cons (kappaEp S.L S.s ε) Φ') u =
      mInt S.A (Fin.cons (kappaEp S.L S.s ε) Φ') ut -
        mInt S.A (Fin.cons (kappaEp S.L S.s ε) Φ') g := by
    have h := ReciprocityTheory.AnForm.M.mIntLinear S.A _ (hcons _ hκpot) (-1) g ut
      (hint _ hκpot g hg_c) (hint _ hκpot ut hut_c)
    rw [hu_eq] at h
    linarith

  have sB : 0 ≤ mInt S.A (Fin.cons (kappaEp S.L S.s ε) Φ') g +
      Cκ * mInt S.A (Fin.cons S.Om.pot Φ') g := by
    have hPpot : IsPotential S.A (kappaEp S.L S.s ε + S.Om.pot.rsmul Cκ) :=
      ReciprocityTheory.AnForm.M.isPotentialAdd S.A _ _ hκpot (hOmK Cκ)
    have h0 := mInt_nonneg_of_compl S.A S.Yo S.bd_analytic S.bd_interior _ (hcons _ hPpot)
      (hconsnn _ (formNonneg_mono (hκ ε hε))) g hgnn
    rw [ReciprocityTheory.AnForm.M.mIntAdd S.A _ _ Φ' hκpot (hOmK Cκ) hΦpot g (hint _ hκpot g hg_c)
      (hint _ (hOmK Cκ) g hg_c),
      ReciprocityTheory.AnForm.M.mIntRsmul S.A Cκ S.Om.pot Φ' S.Om.isPot hΦpot g] at h0
    exact h0

  have sC : S.divInt Φ' u = S.divInt Φ' ut - S.divInt Φ' g := by
    have h := divInt_linear S Φ' hΦpot (-1) hg_c hut_c
    rw [hu_eq] at h
    linarith

  set H : W → ℝ := fun x => -2 * logNormSec S.L S.s x + F x with hHdef
  have hlns : ∀ P, IsPotential S.A P → MIntegrable S.A (Fin.cons P Φ') (logNormSec S.L S.s) :=
    fun P hP => ReciprocityTheory.AnForm.M.logNormIntegrable S.A S.L S.s S.mult S.comp S.L_pot S.s_sec
      S.s_snc _ (hcons P hP)
  have sD : mInt S.A (Fin.cons (kappaEp S.L S.s ε) Φ') ut - 2 * S.divInt Φ' ut =
      mInt S.A (Fin.cons (LocPot.ofFun ut) Φ') H := by
    have hL2 := ReciprocityTheory.AnForm.M.isPotentialRsmul S.A 2 S.L S.L_pot
    have hFpot : IsPotential S.A (LocPot.ofFun F) := ReciprocityTheory.AnForm.M.isPotential_ofFun _ _ hF
    have hadd := ReciprocityTheory.AnForm.M.mIntAdd S.A (S.L.rsmul 2) (LocPot.ofFun F) Φ' hL2 hFpot hΦpot ut
      (hint _ hL2 ut hut_c) (hint _ hFpot ut hut_c)
    have hrs := ReciprocityTheory.AnForm.M.mIntRsmul S.A 2 S.L Φ' S.L_pot hΦpot ut
    have hbp := ReciprocityTheory.AnForm.M.byPartsSymm S.A ut F hut hF Φ' hΦpot
    have hpl := ReciprocityTheory.AnForm.M.poincareLelong S.A S.L S.s S.mult S.comp S.B S.L_pot S.s_sec
      S.s_snc S.B_holo ut hut Φ' hΦpot
    have hlin := ReciprocityTheory.AnForm.M.mIntLinear S.A _ (hcons _ hutpot) (-2) (logNormSec S.L S.s) F
      (hlns _ hutpot) (hint _ hutpot F hF_c)
    have hk : kappaEp S.L S.s ε = S.L.rsmul 2 + LocPot.ofFun F := rfl
    have hdiv : S.divInt Φ' ut = ∑ k, (S.mult k : ℝ) * mInt (S.B k)
        (fun i => (Φ' i).pullback Subtype.val continuous_subtype_val) (ut ∘ Subtype.val) := rfl
    rw [hk, hadd, hrs, hbp, hdiv]
    rw [show (fun x => -2 * logNormSec S.L S.s x + F x) = H from rfl] at hlin
    rw [hlin]
    linarith

  have hZ := zeroSet_analytic (A := S.A) S.s_sec
  have hZi := interior_zeroSet S.s_sec S.s_snc
  have hGH : ∀ x ∉ zeroSet S.s, S.green ε x = H x := fun x hx =>
    greenEp_eq_off S.L S.s hε hx
  have hHint : ∀ P, IsPotential S.A P → MIntegrable S.A (Fin.cons P Φ') H := by
    intro P hP j K' hK' hKc
    have h1 := hlns P hP j K' hK' hKc
    have h2 := hint P hP F hF_c j K' hK' hKc
    exact IntegrableOn.congr_fun ((h1.const_mul (-2)).add h2)
      (fun y _ => by simp only [hHdef, Pi.add_apply]; ring) hKc.measurableSet
  have hPnn : FormNonneg S.A Set.univ ((LocPot.ofFun ut).rsmul (-1) + S.Om.pot.rsmul K) := by
    intro x k y hy w
    have hyt : y ∈ (S.A.chart k).target := hy.1
    have hyΩ : (S.A.chart k).symm y ∈ S.Om.pot.U x := hy.2.2.2
    have hu2 : ContDiffAt ℝ 2 ((LocPot.ofFun ut).φ x ∘ (S.A.chart k).symm) y :=
      ReciprocityTheory.AnForm.M.pot_contDiffAt_two hutpot x k hyt trivial
    have hΨ2 : ContDiffAt ℝ 2 (S.Om.pot.φ x ∘ (S.A.chart k).symm) y :=
      ReciprocityTheory.AnForm.M.pot_contDiffAt_two S.Om.isPot x k hyt hyΩ
    have hsum : ((LocPot.ofFun ut).rsmul (-1) + S.Om.pot.rsmul K).φ x ∘ (S.A.chart k).symm =
        fun z => (fun z' => -1 * ((LocPot.ofFun ut).φ x ∘ (S.A.chart k).symm) z') z +
          K * (S.Om.pot.φ x ∘ (S.A.chart k).symm) z := rfl
    rw [hsum, levi_add_smul K (contDiffAt_const.mul hu2) hΨ2 w, levi_smul' (-1) hu2 w]
    have hb := abs_le.mp (hK x k y ⟨hyt, trivial, hyΩ⟩ w)
    linarith [hb.2]
  have mIntCongrNull : ∀ (Φ : Fin (D + 1) → LocPot W) (Z : Set W),
      S.A.IsAnalyticSubset Z → interior Z = ∅ → ∀ g g' : W → ℝ,
      (∀ x ∉ Z, g x = g' x) → mInt S.A Φ g = mInt S.A Φ g' := by
    intro Φ Z hZ hZi g g' hg
    unfold mInt
    split_ifs with h
    · exact ReciprocityTheory.AnForm.M.integralWith_congr_null S.A h.some Φ hZ hZi hg
    · rfl
  have sE : 0 ≤ -mInt S.A (Fin.cons (LocPot.ofFun ut) Φ') H +
      K * mInt S.A (Fin.cons S.Om.pot Φ') H := by
    have hm1 := ReciprocityTheory.AnForm.M.isPotentialRsmul S.A (-1) _ hutpot
    have hPpot : IsPotential S.A ((LocPot.ofFun ut).rsmul (-1) + S.Om.pot.rsmul K) :=
      ReciprocityTheory.AnForm.M.isPotentialAdd S.A _ _ hm1 (hOmK K)
    have h0 := mInt_nonneg_of_compl S.A S.Yo S.bd_analytic S.bd_interior _ (hcons _ hPpot)
      (hconsnn _ (formNonneg_mono hPnn)) (S.green ε)
      (fun x => GreenMassReplace.greenEp_nonneg S.L S.s hε x)
    rw [mIntCongrNull _ (zeroSet S.s) hZ hZi (S.green ε) H hGH,
      ReciprocityTheory.AnForm.M.mIntAdd S.A _ _ Φ' hm1 (hOmK K) hΦpot H (hHint _ hm1) (hHint _ (hOmK K)),
      ReciprocityTheory.AnForm.M.mIntRsmul S.A (-1) _ Φ' hutpot hΦpot H,
      ReciprocityTheory.AnForm.M.mIntRsmul S.A K S.Om.pot Φ' S.Om.isPot hΦpot H] at h0
    linarith

  have hperm : ∀ f : W → ℝ, mInt S.A (mixedForms S.Om.pot (S.T t) a) f =
      mInt S.A (Fin.cons S.Om.pot Φ') f := fun f => by
    rw [mixedForms_eq_cons S.Om.pot (S.T t) a ha, ReciprocityTheory.AnForm.M.mIntSymm]
    rfl
  have hJ : S.J a ε t = mInt S.A (Fin.cons S.Om.pot Φ') H := by
    rw [← mIntCongrNull _ (zeroSet S.s) hZ hZi (S.green ε) H hGH]
    exact hperm _
  have hW : S.errW a ha t₀ t = mInt S.A (Fin.cons S.Om.pot Φ') g := hperm _
  have hP : S.plTerm a ha ε t = mInt S.A (Fin.cons (kappaEp S.L S.s ε) Φ') u -
      2 * S.divInt Φ' u := rfl
  have hD : S.errDiv a ha t₀ t = S.divInt Φ' g := rfl
  rw [hP, hJ, hW, hD, sA, sC]
  nlinarith [sA, sB, sC, sD, sE]

end

end GroundTheory.Heights₂.Heights.AnalyticLimit
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassReplace =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassStepA =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassStepA", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.UIObjects\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.InnerProductSpace.Calculus\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.AnalyticForms.PotentialTheory.AnalyticSubsetChartLocal\npublic import ReciprocityTheory.AnalyticForms.PotentialTheory.IntegrableOnTargetOfTsupport\npublic import ReciprocityTheory.AnalyticForms.PotentialTheory.LogInt\npublic import ReciprocityTheory.AnalyticForms.PotentialTheory.PLCurveA\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.AnalyticLimit

open MeasureTheory Filter Topology
open scoped ContDiff
open ReciprocityTheory.AnForm.M (FinHolAtlas LocPot IsPotential IsSection IsSNC mInt MIntegrable logNormSec)

noncomputable section

variable {e : ℕ} {W : Type} [TopologicalSpace W] {A : FinHolAtlas e W} {L : LocPot W}
  {s : W → W → ℂ}

theorem secNorm_eq_local (hs : IsSection A L s) {x y : W} (hy : y ∈ L.U x) :
    secNorm L s y = ‖s x y‖ * Real.exp (-L.φ x y) :=
  hs.2 y x y ⟨L.mem_U y, hy⟩

theorem smooth_secNorm_sq (hL : IsPotential A L) (hs : IsSection A L s) :
    A.Smooth fun x => secNorm L s x ^ 2 := by
  intro j
  refine contDiffOn_of_locally_contDiffOn fun y hy => ?_
  refine ⟨(A.chart j).target ∩ (A.chart j).symm ⁻¹' L.U ((A.chart j).symm y),
    (A.chart j).isOpen_inter_preimage_symm (L.isOpen_U _), ⟨hy.1, L.mem_U _⟩, ?_⟩
  set p := (A.chart j).symm y
  have h1 : ContDiffOn ℝ ∞ (fun z => ‖s p ((A.chart j).symm z)‖ ^ 2)
      ((A.chart j).target ∩ (A.chart j).symm ⁻¹' L.U p) :=
    contDiff_norm_sq ℝ |>.comp_contDiffOn
      (((hs.1 p j).contDiffOn_of_completeSpace (n := ∞)).restrict_scalars ℝ)
  have h2 : ContDiffOn ℝ ∞ (fun z => Real.exp (-L.φ p ((A.chart j).symm z)) ^ 2)
      ((A.chart j).target ∩ (A.chart j).symm ⁻¹' L.U p) :=
    (Real.contDiff_exp.comp_contDiffOn (hL.1 p j).neg).pow 2
  refine ((h1.mul h2).mono (fun z (hz : z ∈ ((A.chart j).target ∩ (A.chart j).symm ⁻¹' Set.univ) ∩ ((A.chart j).target ∩ (A.chart j).symm ⁻¹' L.U p)) => hz.2)).congr fun z hz => ?_
  simp only [Function.comp_apply]
  rw [secNorm_eq_local hs hz.2.2, mul_pow]

theorem smooth_log_secNorm_sq_add (hL : IsPotential A L) (hs : IsSection A L s) {ε : ℝ}
    (hε : 0 < ε) : A.Smooth fun x => Real.log (secNorm L s x ^ 2 + ε) := by
  intro j
  have h1 : ContDiffOn ℝ ∞ (fun z => secNorm L s ((A.chart j).symm z) ^ 2 + ε)
      ((A.chart j).target ∩ (A.chart j).symm ⁻¹' Set.univ) :=
    (smooth_secNorm_sq hL hs j).add contDiffOn_const
  exact h1.log fun z _ => (add_pos_of_nonneg_of_pos (sq_nonneg _) hε).ne'

def secZero (L : LocPot W) (s : W → W → ℂ) : Set W := {x | secNorm L s x = 0}

theorem mem_secZero_iff_local (hs : IsSection A L s) {x y : W} (hy : y ∈ L.U x) :
    y ∈ secZero L s ↔ s x y = 0 := by
  show secNorm L s y = 0 ↔ _
  rw [secNorm_eq_local hs hy, mul_eq_zero, norm_eq_zero]
  simp [(Real.exp_pos _).ne']

theorem isAnalyticSubset_secZero (hs : IsSection A L s) : A.IsAnalyticSubset (secZero L s) := by
  intro x
  refine ⟨L.U x, L.isOpen_U x, L.mem_U x, 1, fun _ => s x, fun _ => hs.1 x, ?_⟩
  ext y
  simp only [Set.mem_inter_iff, Set.mem_sep_iff]
  constructor
  · rintro ⟨h, hy⟩
    exact ⟨hy, fun _ => (mem_secZero_iff_local hs hy).1 h⟩
  · rintro ⟨hy, h⟩
    exact ⟨(mem_secZero_iff_local hs hy).2 (h 0), hy⟩

theorem interior_secZero {r : ℕ} {m : Fin r → ℕ} {Δ : Fin r → Set W} (hs : IsSection A L s)
    (hsnc : IsSNC A L s m Δ) : interior (secZero L s) = ∅ := by
  refine Set.eq_empty_iff_forall_notMem.2 fun x hx => ?_
  obtain ⟨U, hUZ, hU, hxU⟩ := mem_interior.1 hx
  obtain ⟨ψ, -, hxψ, hψL, σ, -, -, v, -, hv0, hsx⟩ := hsnc x
  have hcoord : ∀ y ∈ ψ.source, y ∈ U → ∃ i, ψ y i = 0 := by
    intro y hy hyU
    have h0 : s x y = 0 := (mem_secZero_iff_local hs (hψL hy)).1 (hUZ hyU)
    rw [hsx y hy, mul_eq_zero] at h0
    rcases h0 with h0 | h0
    · exact absurd h0 (hv0 y hy)
    · obtain ⟨k, -, hk⟩ := Finset.prod_eq_zero_iff.1 h0
      cases hσ : σ k with
      | none => simp [hσ] at hk
      | some i =>
        simp only [hσ] at hk
        exact ⟨i, eq_zero_of_pow_eq_zero hk⟩
  have hO : IsOpen (ψ.target ∩ ψ.symm ⁻¹' U) := ψ.isOpen_inter_preimage_symm hU
  have hxO : ψ x ∈ ψ.target ∩ ψ.symm ⁻¹' U :=
    ⟨ψ.map_source hxψ, by simp [ψ.left_inv hxψ, hxU]⟩
  obtain ⟨δ, hδ, hball⟩ := Metric.isOpen_iff.1 hO _ hxO
  let w : Fin e → ℂ := fun i => if ψ x i = 0 then ((δ / 2 : ℝ) : ℂ) else ψ x i
  have hw0 : ∀ i, w i ≠ 0 := by
    intro i
    by_cases h : ψ x i = 0
    · simp only [w, if_pos h, ne_eq, Complex.ofReal_eq_zero]
      linarith
    · simp only [w, if_neg h]
      exact h
  have hwb : w ∈ Metric.ball (ψ x) δ := by
    rw [Metric.mem_ball, dist_eq_norm, pi_norm_lt_iff hδ]
    intro i
    by_cases h : ψ x i = 0
    · rw [Pi.sub_apply]
      simp only [w]
      rw [if_pos h, h, sub_zero, Complex.norm_real, Real.norm_eq_abs, abs_of_pos (by linarith)]
      linarith
    · simp only [w, Pi.sub_apply, if_neg h, sub_self, norm_zero]
      exact hδ
  obtain ⟨hwt, hwU⟩ := hball hwb
  obtain ⟨i, hi⟩ := hcoord _ (ψ.map_target hwt) hwU
  rw [ψ.right_inv hwt] at hi
  exact hw0 i hi

def greenSplit (L : LocPot W) (s : W → W → ℂ) (ε : ℝ) (x : W) : ℝ :=
  (-2) * logNormSec L s x + Real.log (secNorm L s x ^ 2 + ε)

theorem greenEp_eq_split {ε : ℝ} (hε : 0 < ε) {x : W} (hx : x ∉ secZero L s) :
    greenEp L s ε x = greenSplit L s ε x := by
  have hn : secNorm L s x ≠ 0 := hx
  have hn2 : secNorm L s x ^ 2 ≠ 0 := pow_ne_zero 2 hn
  have hlog : logNormSec L s x = Real.log (secNorm L s x) := rfl
  unfold greenEp greenSplit
  rw [hlog, one_add_div hn2, Real.log_div (add_pos_of_nonneg_of_pos (sq_nonneg _) hε).ne' hn2,
    Real.log_pow]
  push_cast
  ring

theorem mIntegrable_greenSplit [CompactSpace W] [T2Space W] {r : ℕ} {m : Fin r → ℕ}
    {Δ : Fin r → Set W} (hL : IsPotential A L) (hs : IsSection A L s) (hsnc : IsSNC A L s m Δ)
    {ε : ℝ} (hε : 0 < ε) (Φ : Fin e → LocPot W) (hΦ : ∀ i, IsPotential A (Φ i)) :
    MIntegrable A Φ (greenSplit L s ε) := by
  have h1 := ReciprocityTheory.AnForm.M.logNormIntegrable A L s m Δ hL hs hsnc Φ hΦ
  have h2 := ReciprocityTheory.AnForm.M.mIntegrableCont A Φ hΦ _
    (ReciprocityTheory.AnForm.M.PLC.continuous_of_smooth A (smooth_log_secNorm_sq_add hL hs hε))
  intro j K hK hc
  have : IntegrableOn (fun y => -2 * (logNormSec L s ((A.chart j).symm y) *
      ReciprocityTheory.AnForm.M.locDens A Φ j y) + Real.log (secNorm L s ((A.chart j).symm y) ^ 2 + ε) *
      ReciprocityTheory.AnForm.M.locDens A Φ j y) K :=
    ((h1 j K hK hc).const_mul (-2)).add (h2 j K hK hc)
  refine this.congr_fun (fun y _ => ?_) hc.measurableSet
  simp only [greenSplit]
  ring

theorem mInt_greenEp_eq_split {r : ℕ} {m : Fin r → ℕ} {Δ : Fin r → Set W} (hs : IsSection A L s)
    (hsnc : IsSNC A L s m Δ) {ε : ℝ} (hε : 0 < ε) (Φ : Fin e → LocPot W) :
    mInt A Φ (greenEp L s ε) = mInt A Φ (greenSplit L s ε) :=
  by
    unfold ReciprocityTheory.AnForm.M.mInt
    split_ifs with h
    · exact ReciprocityTheory.AnForm.M.integralWith_congr_null A h.some Φ
        (isAnalyticSubset_secZero hs) (interior_secZero hs hsnc) (fun _ hx => greenEp_eq_split hε hx)
    · rfl

end

end GroundTheory.Heights₂.Heights.AnalyticLimit
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassStepA =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassStepB =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassStepB", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.UIObjects\npublic import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.EnergyStep\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.AnalyticForms.PotentialTheory.ContDiffAtOfIsPotential\npublic import ReciprocityTheory.AnalyticForms.PotentialTheory.PshShiftA\nimport ReciprocityTheory.AnalyticForms.PotentialTheory.PshShiftB\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.AnalyticLimit

open MeasureTheory Filter Topology
open scoped ContDiff
open ReciprocityTheory.AnForm (levi levi_add_smul levi_zero continuousOn_levi)
open ReciprocityTheory.AnForm.M (FinHolAtlas LocPot IsPotential IsPsh isPotential_ofFun)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.Regular (ell)

noncomputable section

variable {e : ℕ} {W : Type} [TopologicalSpace W] {A : FinHolAtlas e W}

def formDiff (Om th : LocPot W) : LocPot W := Om + th.rsmul (-1)

theorem isPotential_formDiff {Om th : LocPot W} (hO : IsPotential A Om) (hth : IsPotential A th) :
    IsPotential A (formDiff Om th) :=
  ReciprocityTheory.AnForm.M.isPotentialAdd A _ _ hO (ReciprocityTheory.AnForm.M.isPotentialRsmul A _ _ hth)

theorem isPsh_formDiff {Om th : LocPot W} (hO : IsPotential A Om) (hth : IsPotential A th)
    (hle : LeviLe A Set.univ 1 th 1 Om) : IsPsh A (formDiff Om th) := by
  intro x j y hy w
  have h1 := (ReciprocityTheory.AnForm.M.contDiffAt_of_isPotential A Om hO x j
    ⟨hy.1, hy.2.1⟩).of_le _root_.ReciprocityTheory.AnForm.M.two_le_infty
  have h2 := (ReciprocityTheory.AnForm.M.contDiffAt_of_isPotential A th hth x j
    ⟨hy.1, hy.2.2⟩).of_le _root_.ReciprocityTheory.AnForm.M.two_le_infty
  have hl := levi_add_smul (-1) h1 h2 w
  have hle' := hle x j y ⟨hy.1, ⟨Set.mem_univ _, hy.2.2⟩, hy.2.1⟩ w
  have heq : (formDiff Om th).φ x ∘ (A.chart j).symm =
      fun z => (Om.φ x ∘ (A.chart j).symm) z + (-1) * (th.φ x ∘ (A.chart j).symm) z := rfl
  rw [heq, hl]
  linarith

theorem add_formDiff_φ (Om th : LocPot W) (x y : W) : (th + formDiff Om th).φ x y = Om.φ x y := by
  show th.φ x y + (Om.φ x y + -1 * th.φ x y) = Om.φ x y
  ring

theorem isPsh_of_formNonneg_dense {P : LocPot W} {Yo : Set W} (hP : IsPotential A P)
    (hd : Dense Yo) (hn : FormNonneg A Yo P) : IsPsh A P := by
  intro x j y hy w
  have hOo : IsOpen ((A.chart j).target ∩ (A.chart j).symm ⁻¹' P.U x) :=
    (A.chart j).isOpen_inter_preimage_symm (P.isOpen_U x)
  obtain ⟨F, hF⟩ : ∃ F, F = P.φ x ∘ (A.chart j).symm := ⟨_, rfl⟩
  have hFs : ContDiffOn ℝ 2 F ((A.chart j).target ∩ (A.chart j).symm ⁻¹' P.U x) := by
    rw [hF]
    exact (hP.1 x j).of_le _root_.ReciprocityTheory.AnForm.M.two_le_infty
  rw [← hF]
  have hpair : ContinuousAt (fun p : (Fin e → ℂ) × (Fin e → ℂ) => levi F p.1 p.2) (y, w) :=
    (continuousOn_levi hOo hFs).continuousAt (prod_mem_nhds (hOo.mem_nhds hy) Filter.univ_mem)
  have hc : ContinuousAt (fun z => levi F z w) y :=
    hpair.comp (f := fun z => (z, w)) (continuousAt_id.prodMk continuousAt_const)
  by_contra hneg
  rw [not_le] at hneg
  have hN : {z | levi F z w < 0} ∩
      ((A.chart j).target ∩ (A.chart j).symm ⁻¹' P.U x) ∈ 𝓝 y :=
    Filter.inter_mem (hc.preimage_mem_nhds (Iio_mem_nhds hneg)) (hOo.mem_nhds hy)
  obtain ⟨V, hVN, hVo, hyV⟩ := mem_nhds_iff.1 hN
  have hVt : V ⊆ (A.chart j).target := fun z hz => (hVN hz).2.1
  have himg : IsOpen ((A.chart j).symm '' V) := by
    have := (A.chart j).symm.isOpen_image_source_inter hVo
    rwa [OpenPartialHomeomorph.symm_source, Set.inter_eq_right.2 hVt] at this
  obtain ⟨p, ⟨z, hzV, rfl⟩, hpY⟩ := hd.inter_open_nonempty _ himg ⟨_, y, hyV, rfl⟩
  have h0 := hn x j z ⟨(hVN hzV).2.1, hpY, (hVN hzV).2.2⟩ w
  rw [← hF] at h0
  exact absurd (hVN hzV).1 (not_lt.2 h0)

theorem forall_cons_of {n : ℕ} {p : LocPot W → Prop} {P : LocPot W} {Φ : Fin n → LocPot W}
    (h0 : p P) (h : ∀ i, p (Φ i)) : ∀ i, p ((Fin.cons P Φ : Fin (n + 1) → LocPot W) i) := by
  intro i
  refine Fin.cases ?_ (fun j => ?_) i
  · simpa using h0
  · simpa using h j

namespace UIData

variable {D : ℕ} (S : UIData D W)

theorem T_isPotential {t : ℝ} (ht : 0 < t) (hℓ : S.ell₀ ≤ ell t) (b : Fin (D + 1)) :
    IsPotential S.A (S.T t b) :=
  ReciprocityTheory.AnForm.M.isPotentialAdd S.A _ _ (S.form b t ht hℓ).1.th_pot
    (isPotential_ofFun S.A _ (S.form b t ht hℓ).2)

theorem dense_Yo : Dense S.Yo := by
  have h := interior_eq_empty_iff_dense_compl.1 S.bd_interior
  rwa [compl_compl] at h

theorem T_isPsh {t : ℝ} (ht : 0 < t) (hℓ : S.ell₀ ≤ ell t) (b : Fin (D + 1)) :
    IsPsh S.A (S.T t b) :=
  isPsh_of_formNonneg_dense (S.T_isPotential ht hℓ b) S.dense_Yo (S.form b t ht hℓ).1.nonneg

theorem rest_isPotential {t : ℝ} (ht : 0 < t) (hℓ : S.ell₀ ≤ ell t) (a : ℕ) (i : Fin D) :
    IsPotential S.A (S.rest a t i) := by
  unfold rest restForms
  split_ifs
  · exact S.T_isPotential ht hℓ _
  · exact S.Om.isPot

theorem rest_isPsh {t : ℝ} (ht : 0 < t) (hℓ : S.ell₀ ≤ ell t) (a : ℕ) (i : Fin D) :
    IsPsh S.A (S.rest a t i) := by
  unfold rest restForms
  split_ifs
  · exact S.T_isPsh ht hℓ _
  · exact S.Om.isPsh

end UIData

theorem mixedForms_cycle {D : ℕ} (Om : LocPot W) (T : Fin (D + 1) → LocPot W) (a : ℕ)
    (ha : a < D + 1) (b : ℕ) (hb : b = a ∨ b = a + 1) :
    mixedForms Om T b ∘ (Fin.cycleRange (⟨a, ha⟩ : Fin (D + 1))).symm =
      Fin.cons (mixedForms Om T b ⟨a, ha⟩) (restForms Om T a) := by
  funext i
  refine Fin.cases ?_ (fun j => ?_) i
  · simp [Fin.cycleRange_symm_zero]
  · simp only [Function.comp_apply, Fin.cons_succ, Fin.cycleRange_symm_succ]
    by_cases hj : (j : ℕ) < a
    · rw [Fin.succAbove_of_castSucc_lt _ _ (by rw [Fin.lt_def]; simpa using hj)]
      simp only [mixedForms, restForms, Fin.val_castSucc, hj, if_true]
      rw [if_pos (by omega)]
    · rw [Fin.succAbove_of_le_castSucc _ _ (by rw [Fin.le_def]; simp; omega)]
      simp only [mixedForms, restForms, Fin.val_succ, hj, if_false]
      rw [if_neg (by omega)]

end

end GroundTheory.Heights₂.Heights.AnalyticLimit
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassStepB =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassStep =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassStep", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.GreenMassStep\npublic import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassStepA\npublic import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassStepB\npublic import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.AnalyticForms.PotentialTheory.ContDiffAtOfIsPotential\nimport ReciprocityTheory.AnalyticForms.PotentialTheory.IntegrableOnTargetOfTsupport\nimport ReciprocityTheory.AnalyticForms.PotentialTheory.LogInt\nimport ReciprocityTheory.AnalyticForms.PotentialTheory.PLCurveA\npublic import ReciprocityTheory.AnalyticForms.PotentialTheory.PLLocalStatement\nimport ReciprocityTheory.AnalyticForms.PotentialTheory.PotentialContDiffAt\nimport ReciprocityTheory.AnalyticForms.PotentialTheory.Stokes\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.AnalyticLimit

open MeasureTheory
open ReciprocityTheory.AnForm.M (FinHolAtlas LocPot IsPotential IsPsh MIntegrable mInt logNormSec
  isPotential_ofFun mIntSymm mIntAdd mIntRsmul mIntLinear mIntNonneg mIntegrableCont
  logNormIntegrable poincareLelong byPartsSymm isPotentialRsmul)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.Regular (ell)

noncomputable section

theorem GreenMassStep.proof : GreenMassStep.Statement := by
  intro D W _ _ _ S a ha ε t hε ht hℓ
  set a' : Fin (D + 1) := ⟨a, ha⟩ with ha'
  have hform := S.form a' t ht hℓ
  have hu : S.A.Smooth (S.u a' t) := hform.2
  have hΦ : ∀ i, IsPotential S.A (S.rest a t i) := S.rest_isPotential ht hℓ a
  have hth : IsPotential S.A (S.th a') := hform.1.th_pot
  have huP : IsPotential S.A (LocPot.ofFun (S.u a' t)) := isPotential_ofFun S.A _ hu
  have hf : S.A.Smooth fun x => Real.log (secNorm S.L S.s x ^ 2 + ε) :=
    smooth_log_secNorm_sq_add S.L_pot S.s_sec hε
  have hDd : IsPotential S.A (formDiff S.Om.pot (S.th a')) := isPotential_formDiff S.Om.isPot hth
  have hcons := fun (P : LocPot W) (hP : IsPotential S.A P) =>
    forall_cons_of (p := IsPotential S.A) (Φ := S.rest a t) hP hΦ
  have hGi := fun (P : LocPot W) (hP : IsPotential S.A P) =>
    mIntegrable_greenSplit S.L_pot S.s_sec S.s_snc hε _ (hcons P hP)
  have hG := fun Ψ => mInt_greenEp_eq_split (A := S.A) (Φ := Ψ) S.s_sec S.s_snc hε

  have hJ1 : S.J (a + 1) ε t =
      mInt S.A (Fin.cons (S.th a' + LocPot.ofFun (S.u a' t)) (S.rest a t)) (greenSplit S.L S.s ε) := by
    have h := mixedForms_cycle S.Om.pot (S.T t) a ha (a + 1) (Or.inr rfl)
    have h0 : mixedForms S.Om.pot (S.T t) (a + 1) a' = S.th a' + LocPot.ofFun (S.u a' t) := by
      simp [mixedForms, a', UIData.T, curForms, potForm]
    rw [h0] at h
    show mInt S.A (mixedForms S.Om.pot (S.T t) (a + 1)) (greenEp S.L S.s ε) = _
    rw [← mIntSymm S.A (mixedForms S.Om.pot (S.T t) (a + 1)) (Fin.cycleRange a').symm, h, hG]
    rfl
  have hJ0 : S.J a ε t = mInt S.A (Fin.cons S.Om.pot (S.rest a t)) (greenEp S.L S.s ε) := by
    have h := mixedForms_cycle S.Om.pot (S.T t) a ha a (Or.inl rfl)
    have h0 : mixedForms S.Om.pot (S.T t) a a' = S.Om.pot := by simp [mixedForms, a']
    rw [h0] at h
    show mInt S.A (mixedForms S.Om.pot (S.T t) a) (greenEp S.L S.s ε) = _
    rw [← mIntSymm S.A (mixedForms S.Om.pot (S.T t) a) (Fin.cycleRange a').symm, h]
    rfl

  have hOm : mInt S.A (Fin.cons S.Om.pot (S.rest a t)) (greenEp S.L S.s ε) =
      mInt S.A (Fin.cons (S.th a') (S.rest a t)) (greenSplit S.L S.s ε) +
        mInt S.A (Fin.cons (formDiff S.Om.pot (S.th a')) (S.rest a t)) (greenSplit S.L S.s ε) := by
    rw [hG, ReciprocityTheory.AnForm.M.PLC.mInt_congr_phi S.A _
      (Fin.cons (S.th a' + formDiff S.Om.pot (S.th a')) (S.rest a t)) ?_]
    · exact mIntAdd S.A _ _ _ hth hDd hΦ _ (hGi _ hth) (hGi _ hDd)
    · intro i x y
      refine Fin.cases ?_ (fun j => ?_) i
      · simp only [Fin.cons_zero]
        exact (add_formDiff_φ _ _ x y).symm
      · simp only [Fin.cons_succ]
  have hpos : 0 ≤ mInt S.A (Fin.cons (formDiff S.Om.pot (S.th a')) (S.rest a t))
      (greenSplit S.L S.s ε) := by
    rw [← hG]
    exact mIntNonneg S.A _ (hcons _ hDd)
      (forall_cons_of (p := IsPsh S.A) (isPsh_formDiff S.Om.isPot hth hform.1.th_le)
        (S.rest_isPsh ht hℓ a)) _ (greenEp_nonneg S.L S.s hε.le)

  have hU : mInt S.A (Fin.cons (LocPot.ofFun (S.u a' t)) (S.rest a t)) (greenSplit S.L S.s ε) =
      mInt S.A (Fin.cons (LocPot.ofFun fun x => Real.log (secNorm S.L S.s x ^ 2 + ε)) (S.rest a t))
          (S.u a' t) + 2 * mInt S.A (Fin.cons S.L (S.rest a t)) (S.u a' t) -
        2 * S.divInt (S.rest a t) (S.u a' t) := by
    have hlin := mIntLinear S.A _ (hcons _ huP) (-2) (logNormSec S.L S.s)
      (fun x => Real.log (secNorm S.L S.s x ^ 2 + ε))
      (logNormIntegrable S.A S.L S.s S.mult S.comp S.L_pot S.s_sec S.s_snc _ (hcons _ huP))
      (mIntegrableCont S.A _ (hcons _ huP) _ (ReciprocityTheory.AnForm.M.PLC.continuous_of_smooth S.A hf))
    have hpl := poincareLelong S.A S.L S.s S.mult S.comp S.B S.L_pot S.s_sec S.s_snc S.B_holo
      (S.u a' t) hu (S.rest a t) hΦ
    have hbp := byPartsSymm S.A _ (S.u a' t) hf hu (S.rest a t) hΦ
    have hdiv : S.divInt (S.rest a t) (S.u a' t) = ∑ k, (S.mult k : ℝ) * mInt (S.B k)
        (fun i => (S.rest a t i).pullback Subtype.val continuous_subtype_val)
        (S.u a' t ∘ Subtype.val) := rfl
    show mInt S.A _ (fun x => (-2) * logNormSec S.L S.s x + Real.log (secNorm S.L S.s x ^ 2 + ε)) = _
    rw [hlin, hpl, hbp, hdiv]
    ring

  have hpl : S.plTerm a ha ε t =
      2 * mInt S.A (Fin.cons S.L (S.rest a t)) (S.u a' t) +
        mInt S.A (Fin.cons (LocPot.ofFun fun x => Real.log (secNorm S.L S.s x ^ 2 + ε)) (S.rest a t))
          (S.u a' t) - 2 * S.divInt (S.rest a t) (S.u a' t) := by
    have hcu := ReciprocityTheory.AnForm.M.PLC.continuous_of_smooth S.A hu
    have hL2 : IsPotential S.A (S.L.rsmul 2) := isPotentialRsmul S.A 2 S.L S.L_pot
    have hfP := isPotential_ofFun S.A _ hf
    show mInt S.A (Fin.cons (S.L.rsmul 2 + LocPot.ofFun fun x => Real.log (secNorm S.L S.s x ^ 2 + ε))
      (S.rest a t)) (S.u a' t) - 2 * S.divInt (S.rest a t) (S.u a' t) = _
    rw [mIntAdd S.A _ _ _ hL2 hfP hΦ _ (mIntegrableCont S.A _ (hcons _ hL2) _ hcu)
      (mIntegrableCont S.A _ (hcons _ hfP) _ hcu), mIntRsmul S.A 2 S.L _ S.L_pot hΦ]
  rw [hJ1, hJ0, hOm, mIntAdd S.A _ _ _ hth huP hΦ _ (hGi _ hth) (hGi _ huP), hU, hpl]
  linarith

end

end GroundTheory.Heights₂.Heights.AnalyticLimit
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassStep =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PListTailLog =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PListTailLog", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.StListTailLog\npublic import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.StListMono\npublic import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.StRegSection\npublic import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.StTailShift\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.AnalyticLimit

open ReciprocityTheory.AnForm.M (FinHolAtlas LocPot logNormSec)

theorem log_le_one_add_mul_log {a b B : ℝ} (ha : Real.exp 1 ≤ a) (hb : 0 < b) (hB : 0 ≤ B)
    (hab : b ≤ a + B) : Real.log b ≤ (1 + B) * Real.log a := by
  have he : 2 ≤ Real.exp 1 := by linarith [Real.add_one_le_exp (1 : ℝ)]
  have ha0 : 0 < a := by linarith
  have hla : 1 ≤ Real.log a := by
    have := Real.log_le_log (Real.exp_pos 1) ha
    rwa [Real.log_exp] at this
  have h1 : b ≤ a * (1 + B) := by nlinarith [mul_le_mul_of_nonneg_right (show 1 ≤ a by linarith) hB]
  have h2 : Real.log b ≤ Real.log a + Real.log (1 + B) := by
    rw [← Real.log_mul ha0.ne' (by linarith)]
    exact Real.log_le_log hb h1
  have h3 : Real.log (1 + B) ≤ B := by
    have := Real.log_le_sub_one_of_pos (show 0 < 1 + B by linarith)
    linarith
  nlinarith [mul_le_mul_of_nonneg_left hla hB]

theorem ListTailLog.proof (hE : LemmaETailLog.Statement) (hM : ListMono.Statement)
    (hC : RegSection.Statement) (hS : TailShift.Statement) : ListTailLog.Statement := by
  intro X _ _ _ D A R hr Om C₁
  obtain ⟨L, s, hL, hs, hs1, hYo, hden, hrc, hrEc, B, hB⟩ := hC D A R
  have hrE : ∀ x ∈ R.Yo, Real.exp 1 ≤ rSec L s x := fun x hx => by
    rw [← hYo] at hx
    have hpos : 0 < ‖s x x‖ * Real.exp (-L.φ x x) :=
      mul_pos (norm_pos_iff.2 hx) (Real.exp_pos _)
    have : logNormSec L s x ≤ 0 := Real.log_nonpos hpos.le (hs1 x)
    simp only [rSec]
    linarith
  have hC₁ : 0 ≤ max C₁ 0 * (1 + max B 0) :=
    mul_nonneg (le_max_right _ _) (by linarith [le_max_right B 0])
  obtain ⟨CE, hCE⟩ := hE D A Om L s hL hs (hYo ▸ hden) hs1 _ hC₁
  obtain ⟨CE', hCE'⟩ := hS D (max B 0) CE
  refine ⟨CE', fun th u hT => ?_⟩
  obtain ⟨hA, hpos, hmono⟩ := hM D A R.Yo R.r Om C₁ th u R.isOpen_Yo hT
  have hu : ∀ i, IsLemmaEPot A Om L s (max C₁ 0 * (1 + max B 0)) (u i) := fun i => by
    have hTi := hT i
    refine ⟨by rw [hYo]; exact hTi.u_smooth, by rw [hYo]; exact hA i,
      by rw [hYo]; exact hTi.u_nonpos, fun x hx => ?_, ?_⟩
    · rw [hYo] at hx
      have hl := log_le_one_add_mul_log (b := R.r x) (hrE x hx) (by linarith [hr x hx, Real.exp_pos 1])
        (le_max_right B 0) (by linarith [(abs_le.1 (hB x hx)).2, le_max_left B 0])
      have h0 : 0 ≤ Real.log (R.r x) :=
        Real.log_nonneg (by linarith [hr x hx, Real.add_one_le_exp (1 : ℝ)])
      have := mul_le_mul_of_nonneg_left hl (le_max_right C₁ 0)
      have := mul_le_mul_of_nonneg_right (le_max_left C₁ 0) h0
      have := hTi.le_u x hx
      nlinarith
    · rcases hTi.smooth_or_pole with h | h
      · exact Or.inl h
      · right
        rw [hYo]
        exact h
  have h2 : TailLogBound A R.Yo (rSec L s) (fun j => potForm (th j) (u j)) CE := by
    have h1 := hCE u hu
    rw [hYo] at h1
    intro R₀ hR₀
    obtain ⟨hi, hle⟩ := h1 R₀ hR₀
    obtain ⟨hi', hle'⟩ := hmono _
      (fun x => Set.indicator_nonneg (fun y hy => Real.log_nonneg
        (by linarith [hrE y hy.1, Real.add_one_le_exp (1 : ℝ)])) x)
      (fun x hx => Set.indicator_of_notMem (by exact fun h => hx h.1) _) hi
    exact ⟨hi', hle'.trans hle⟩
  exact hCE' A R.Yo R.r (rSec L s) _ R.isOpen_Yo hrc hrEc hr hrE
    (fun x hx => (hB x hx).trans (le_max_left B 0)) hpos h2

end GroundTheory.Heights₂.Heights.AnalyticLimit
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PListTailLog =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.OfListTailLog =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.OfListTailLog", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.GreenMassError\npublic import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.GreenMassReplace\npublic import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.GreenMassStep\npublic import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.StListMono\npublic import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.StListTailLog\npublic import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.StRegSection\npublic import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.StTailShift\npublic import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.Assembly\npublic import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassError\npublic import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassReplace\npublic import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PGreenMassStep\npublic import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.PListTailLog\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.AnalyticLimit

alias GreenMassStep.full := _root_.GroundTheory.Heights₂.Heights.AnalyticLimit.GreenMassStep.proof

alias GreenMassReplace.full := _root_.GroundTheory.Heights₂.Heights.AnalyticLimit.GreenMassReplace.proof

alias GreenMassError.full := _root_.GroundTheory.Heights₂.Heights.AnalyticLimit.GreenMassError.proof

theorem UniformIntegrability.full : UniformIntegrability.Statement :=
  UniformIntegrability.of_greenMass GreenMassStep.full GreenMassReplace.full GreenMassError.full

alias ListTailLog.of_lemmaE := _root_.GroundTheory.Heights₂.Heights.AnalyticLimit.ListTailLog.proof

end GroundTheory.Heights₂.Heights.AnalyticLimit
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.OfListTailLog =====
