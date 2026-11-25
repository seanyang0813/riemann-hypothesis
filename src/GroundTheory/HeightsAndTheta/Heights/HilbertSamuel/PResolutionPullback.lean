module

public import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PBlockResolutionMetricPair
public import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.StatementsResolutionPullback
import Mathlib.Algebra.Ring.IsFormallyReal
public import Mathlib.Analysis.Analytic.Polynomial
import Mathlib.Order.CompletePartialOrder
public import ReciprocityTheory.AnalyticForms.PotentialTheory.PshShiftA
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovGeometry.ADensStC

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.HilbertSamuel

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.ArakelovGeometry ReciprocityTheory.AnForm ReciprocityTheory.AnForm.M MeasureTheory Filter
  Topology Set
open scoped ContDiff ENNReal

noncomputable section

set_option linter.unusedSectionVars false

namespace ResolutionPullback

open BlockResolutionMetricPair

section Datum

variable {D : ℕ} {K : Type} [Fintype K] [DecidableEq K] {ι : K → Type} [∀ k, Fintype (ι k)]
  {Ω : Type} [Field Ω] [CharZero Ω] (d : HSMBlockDatum D K ι Ω)
  {m : ℕ} (pt : Fin m → d.R.X) (hcov : ∀ x, ∃ i, x ∈ nbhd d (pt i))

theorem normRatio_torus {f : MRing ι} {k₀ : K} {n : ℕ} (hf : IsMultiHomog f (blockDeg k₀ n))
    (A : HermLine ι) (hA : A.a = unitDeg k₀) {z z' : (Σ k, ι k) → ℂ} (h : SameOrbit z z') :
    ‖eval z (map (Int.castRingHom ℂ) f)‖ / A.h z ^ n = ‖eval z' (map (Int.castRingHom ℂ) f)‖ / A.h z' ^ n := by
  obtain ⟨c, hc, rfl⟩ := h
  rw [eval_torus (Int.castRingHom ℂ) hf, A.smul c z' hc, hA, prod_norm_unitDeg, norm_mul, norm_pow, mul_pow]
  have : ‖c k₀‖ ^ n ≠ 0 := pow_ne_zero _ (norm_ne_zero_iff.2 (hc k₀))
  rw [mul_div_mul_left _ _ this]

def intSec (f : MRing ι) : Fin (atlas d pt hcov).n → d.R.X → ℂ :=
  fun i => ((atlas d pt hcov).chart i).source.indicator
    fun x => eval (d.R.lift (pt i) x) (map (Int.castRingHom ℂ) f)

theorem intSec_apply_of_mem (f : MRing ι) {i : Fin m} {x : d.R.X}
    (hx : x ∈ ((atlas d pt hcov).chart i).source) :
    intSec d pt hcov f i x = eval (d.R.lift (pt i) x) (map (Int.castRingHom ℂ) f) :=
  indicator_of_mem hx _

theorem intSec_mem {n : ℕ} {f : MRing ι} (hf : IsMultiHomog f (blockDeg d.k₀ n)) :
    intSec d pt hcov f ∈ (bundle d pt hcov).sections n := by
  refine ⟨fun i l y hy => ?_, fun i k x hx => ?_, fun i x hx => indicator_of_notMem hx _⟩
  · have hS : IsOpen (((atlas d pt hcov).chart l).target ∩ ((atlas d pt hcov).chart l).symm ⁻¹'
        ((atlas d pt hcov).chart i).source) :=
      ((atlas d pt hcov).chart l).isOpen_inter_preimage_symm ((atlas d pt hcov).chart i).open_source
    have hG := analyticAt_lift d pt hcov i l hy.1 (mem_atlas_source d pt hcov hy.2)
    refine (AnalyticAt.aeval_mvPolynomial
      (f := fun y p => d.R.lift (pt i) (((atlas d pt hcov).chart l).symm y) p)
      (analyticAt_pi_iff.1 hG) (map (Int.castRingHom ℂ) f)).congr ?_
    filter_upwards [hS.mem_nhds hy] with y' hy'
    have hm : ((atlas d pt hcov).chart l).symm y' ∈ ((atlas d pt hcov).chart i).source := hy'.2
    rw [Function.comp_apply, intSec_apply_of_mem d pt hcov f hm]
    simp [aeval_def, eval]
  · obtain ⟨c, hc, hz⟩ := sameOrbit_lift d pt hcov hx.1 hx.2
    rw [intSec_apply_of_mem d pt hcov f hx.1, intSec_apply_of_mem d pt hcov f hx.2]
    show _ = blockRatio d.k₀ (d.R.lift (pt i) x) (d.R.lift (pt k) x) ^ n * _
    rw [hz, blockRatio_eq c ((lift_mem d pt hcov hx.2).1 d.k₀), eval_torus (Int.castRingHom ℂ) hf]

theorem exp_weight {t : ℝ} (ht : 0 < t) (n : ℕ) :
    Real.exp (-(n : ℝ) * (2 * Real.log t)) = ((t ^ n) ^ 2)⁻¹ := by
  have h : -(n : ℝ) * (2 * Real.log t) = -Real.log ((t ^ n) ^ 2) := by
    rw [Real.log_pow, Real.log_pow]
    push_cast
    ring
  rw [h, Real.exp_neg, Real.exp_log (by positivity)]

theorem ptNormSq_intSec {n : ℕ} {f : MRing ι} (hf : IsMultiHomog f (blockDeg d.k₀ n)) (x : d.R.X) :
    ptNormSq (weight d pt hcov d.A d.deg d.semipos.1) n (intSec d pt hcov f) x =
      (‖eval (blockPt d x) (map (Int.castRingHom ℂ) f)‖ / d.A.h (blockPt d x) ^ n) ^ 2 := by
  unfold ptNormSq
  set i := chartIdx (atlas d pt hcov) x
  have hx : x ∈ ((atlas d pt hcov).chart i).source := Classical.choose_spec ((atlas d pt hcov).cover x)
  have horb : SameOrbit (d.R.lift (pt i) x) (blockPt d x) :=
    d.R.compat _ _ x ⟨mem_atlas_source d pt hcov hx, d.R.mem_U x⟩
  rw [← normRatio_torus hf d.A d.deg horb]
  have hpos : 0 < d.A.h (d.R.lift (pt i) x) := d.A.pos _ (lift_mem d pt hcov hx).1
  rw [intSec_apply_of_mem d pt hcov f hx]
  show ‖_‖ ^ 2 * Real.exp (-(n : ℝ) * (2 * Real.log (d.A.h (d.R.lift (pt i) x)))) = _
  rw [exp_weight hpos, div_pow]
  field_simp

end Datum

theorem proof : ResolutionPullback.Statement := by
  intro D K _ _ ι _ Ω _ _ d
  obtain ⟨t, ht⟩ := isCompact_univ.elim_finite_subcover (nbhd d) (isOpen_nbhd d)
    fun x _ => mem_iUnion.2 ⟨x, mem_nbhd d x⟩
  let pt : Fin t.card → d.R.X := fun i => (t.equivFin.symm i : d.R.X)
  have hcov : ∀ x, ∃ i, x ∈ nbhd d (pt i) := by
    intro x
    obtain ⟨x', hx', hx⟩ := mem_iUnion₂.1 (ht (mem_univ x))
    exact ⟨t.equivFin ⟨x', hx'⟩, by simpa [pt] using hx⟩
  exact ⟨atlas d pt hcov, bundle d pt hcov, weight d pt hcov d.A d.deg d.semipos.1, smoothVol d pt hcov,
    refine_compatible _ _ _ _ _,
    weight_isSemipositive d pt hcov d.A d.deg _ d.normalForm_baseLattice_le_dualSpan_sup_line d.semipos,
    rfl, fun n f hf => ⟨intSec d pt hcov f, intSec_mem d pt hcov hf, ptNormSq_intSec d pt hcov hf⟩⟩

end ResolutionPullback

end

end GroundTheory.Heights₂.Heights.HilbertSamuel
