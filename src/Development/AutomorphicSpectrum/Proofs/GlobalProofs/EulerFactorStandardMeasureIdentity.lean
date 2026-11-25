module

public import Mathlib.Analysis.Complex.Exponential
public import Mathlib.Analysis.SpecialFunctions.Log.Summable
import Development.AbelianVarietyTheory.PublishedTheorems.GlobalTheta.IsSchwartzBruhatOfProd
import Development.AutomorphicSpectrum.Proofs.GlobalProofs.IsCovolOne
import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GenusMassVolumes
public import Mathlib.Analysis.Normed.Group.Continuity
public import Mathlib.Analysis.SpecialFunctions.Exp

@[expose] public section

open NumberField IsDedekindDomain MeasureTheory Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.Published.SiegelOneVector GlobalTheory.CompanionTheory.Hypotheses₂.OneV
open scoped TensorProduct ENNReal

namespace GlobalTheory.CompanionTheory.Hypotheses₂.OneV.TailProduct

theorem abs_tprod_sub_one_le {κ : Type} (f : κ → ℝ)
    (hs : Summable (fun v => |f v - 1|)) :
    |(∏' v, f v) - 1| ≤ Real.exp (∑' v, |f v - 1|) - 1 := by
  have hm : Multipliable f := by
    have h := multipliable_one_add_of_summable (f := fun v => f v - 1)
      (by simpa only [Real.norm_eq_abs] using hs)
    simpa only [add_sub_cancel] using h
  have ht : Filter.Tendsto (fun s : Finset κ => ∏ v ∈ s, f v) Filter.atTop
      (nhds (∏' v, f v)) := hm.hasProd
  have hb : ∀ s : Finset κ, |(∏ v ∈ s, f v) - 1| ≤ Real.exp (∑' v, |f v - 1|) - 1 := by
    intro s
    have h1 := s.norm_prod_one_add_sub_one_le (fun v => f v - 1)
    simp only [add_sub_cancel, Real.norm_eq_abs] at h1
    exact h1.trans (sub_le_sub_right
      (Real.exp_le_exp.mpr (hs.sum_le_tsum s fun i _ => abs_nonneg _)) 1)
  exact le_of_tendsto' ((continuous_abs.tendsto _).comp (ht.sub_const 1)) hb

theorem tendsto_tprod_compl_one {ι : Type} (f : ι → ℝ)
    (hs : Summable (fun v => |f v - 1|)) :
    Filter.Tendsto (fun S : Finset ι => ∏' v : {v // v ∉ S}, f v) Filter.atTop (nhds 1) := by
  have hb : ∀ S : Finset ι, ‖(∏' v : {v // v ∉ S}, f v) - 1‖ ≤
      Real.exp (∑' v : {v // v ∉ S}, |f v - 1|) - 1 := by
    intro S
    rw [Real.norm_eq_abs]
    exact GlobalTheory.CompanionTheory.Hypotheses₂.OneV.TailProduct.abs_tprod_sub_one_le (fun v : {v // v ∉ S} => f v) (hs.subtype _)
  have hlim : Filter.Tendsto (fun S : Finset ι => Real.exp (∑' v : {v // v ∉ S}, |f v - 1|) - 1)
      Filter.atTop (nhds 0) := by
    have h := ((Real.continuous_exp.tendsto 0).comp
      (tendsto_tsum_compl_atTop_zero (fun v => |f v - 1|))).sub_const 1
    simpa [Function.comp_def, Real.exp_zero] using h
  have h0 := squeeze_zero_norm hb hlim
  simpa using h0.add_const 1

end GlobalTheory.CompanionTheory.Hypotheses₂.OneV.TailProduct
