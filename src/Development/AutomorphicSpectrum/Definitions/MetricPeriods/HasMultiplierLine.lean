module

public import Development.AutomorphicSpectrum.Definitions.MetricPeriods.HasMultiplier
public import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.ArithModel
public import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.StatementsArith
import Mathlib.Tactic.Linter.Style

@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Small.LineModel

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.ArakelovGeometry GroundTheory.Heights₂.Heights.HilbertSamuel

section General

variable {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)] {Ω : Type} [Field Ω]

theorem mem_of_aeval (y : (Σ k, ι k) → Ω) {g : MRing ι} {d : K → ℕ}
    (hg : IsMultiHomog g d) (h0 : aeval y g = 0) : g ∈ mCoordIdeal y := by
  show g ∈ RingHom.ker (mConeMap y)
  rw [RingHom.mem_ker, ProjLine.mConeMap_eq_of_isMultiHomog y hg, h0, map_zero, zero_mul]

theorem eval_map_eq (z : (Σ k, ι k) → ℂ) (f : MRing ι) :
    eval z (map (Int.castRingHom ℂ) f) = aeval z f := by
  rw [eval_map, aeval_def]; rfl

theorem ptsOver_complex (P : Ideal (MRing ι)) : ptsOver ℂ P = mcPts P := by
  ext z
  simp only [ptsOver, mcPts, Set.mem_setOf_eq, eval_map_eq]

theorem hasVal_unique (y : (Σ k, ι k) → Ω) (a : K → ℤ) (s : Ω) {𝕜 : Type} [Field 𝕜]
    {z : (Σ k, ι k) → 𝕜} (hz : z ∈ ptsOver 𝕜 (mCoordIdeal y)) {w w' : 𝕜}
    (h : HasVal y a s z w) (h' : HasVal y a s z w') : w = w' := by
  obtain ⟨dg, dh, g, h, hg, hh, hd, e1, n1, v1⟩ := h
  obtain ⟨dg', dh', g', h', hg', hh', hd', e1', n1', v1'⟩ := h'
  have hdeg : dg' + dh = dg + dh' := by
    funext k
    have := hd k; have := hd' k
    simp only [Pi.add_apply]; omega
  have hom : IsMultiHomog (g * h' + -(g' * h)) (dg + dh') :=
    ProjLine.mhAdd (ProjLine.mhMul hg hh') (ProjLine.mhNeg (hdeg ▸ ProjLine.mhMul hg' hh))
  have h0 := hz.2 _ (mem_of_aeval y hom (by simp only [map_add (f := _), map_neg, map_mul, e1, e1']; ring))
  simp only [map_add (f := _), map_neg, map_mul, v1, v1'] at h0
  have : (w - w') * (aeval z h * aeval z h') = 0 := by linear_combination h0
  exact sub_eq_zero.mp ((mul_eq_zero.mp this).resolve_right (mul_ne_zero n1 n1'))

end General

open ProjLine

end GlobalTheory.CompanionTheory.Ar.Small.LineModel
