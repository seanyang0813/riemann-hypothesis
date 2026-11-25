module

public import GroundTheory.HeightsAndTheta.Heights.AnalyticLimit.Objects
public import ReciprocityTheory.AnalyticForms.PlurisubharmonicFunctions.MdiscSt
public import ReciprocityTheory.AnalyticForms.PotentialTheory.AnalyticSubsetChartLocal
public import ReciprocityTheory.AnalyticForms.PotentialTheory.MaMeasureA
public import ReciprocityTheory.AnalyticForms.PotentialTheory.PotentialContDiffAt
import Std.Tactic.BVDecide.Normalize.Prop

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.AnalyticLimit

open MeasureTheory Filter Topology
open ReciprocityTheory.AnForm.M (FinHolAtlas LocPot IsPotential mInt MIntegrable)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.Regular (RegChartData ell errE)

noncomputable section

namespace SystemIndependence

section Integrals

variable {D : ℕ} {X : Type} [TopologicalSpace X]

theorem mIntegrable_linComb (A : FinHolAtlas D X) (Φ : Fin D → LocPot X) (c : ℝ) {f f' : X → ℝ}
    (hf : MIntegrable A Φ f) (hf' : MIntegrable A Φ f') :
    MIntegrable A Φ (fun x => c * f x + f' x) := fun j K hK hKc =>
  IntegrableOn.congr_fun (((hf j K hK hKc).const_mul c).add (hf' j K hK hKc))
    (fun y _ => by simp only [Pi.add_apply]; ring) hKc.measurableSet

theorem mIntegrable_zero (A : FinHolAtlas D X) (Φ : Fin D → LocPot X) :
    MIntegrable A Φ (fun _ => 0) := fun j K _ _ => by
  simp

theorem mInt_zero (A : FinHolAtlas D X) (Φ : Fin D → LocPot X) : mInt A Φ (fun _ => 0) = 0 := by
  unfold mInt ReciprocityTheory.AnForm.M.integralWith
  split_ifs <;> simp

theorem mInt_nonneg_on (A : FinHolAtlas D X) (V : Set X) (Φ : Fin D → LocPot X)
    (hpot : ∀ i, IsPotential A (Φ i)) (hnn : ∀ i, FormNonneg A V (Φ i)) (f : X → ℝ)
    (hf : ∀ x, 0 ≤ f x) (hf0 : ∀ x ∉ V, f x = 0) : 0 ≤ mInt A Φ f := by
  unfold mInt
  split_ifs with h
  · unfold ReciprocityTheory.AnForm.M.integralWith
    refine Finset.sum_nonneg fun j _ =>
      setIntegral_nonneg (A.chart j).open_target.measurableSet fun y hy => ?_
    by_cases hyV : (A.chart j).symm y ∈ V
    · have hd : 0 ≤ ReciprocityTheory.AnForm.M.locDens A Φ j y :=
        ReciprocityTheory.AnForm.A.maDens_nonneg_of_posSemidef _ y fun i =>
          ReciprocityTheory.AnForm.M.hessC_posSemidef_of_levi _ y
            (ReciprocityTheory.AnForm.M.pot_contDiffAt_two (hpot i) _ j hy ((Φ i).mem_U _))
            (fun w => hnn i _ j y ⟨hy, hyV, (Φ i).mem_U _⟩ w)
      exact mul_nonneg (mul_nonneg (h.some.nonneg j _) (hf _)) hd
    · rw [hf0 _ hyV]
      simp
  · exact le_rfl

theorem abs_mInt_le [CompactSpace X] [T2Space X] (A : FinHolAtlas D X) (V : Set X)
    (Φ : Fin D → LocPot X) (hpot : ∀ i, IsPotential A (Φ i)) (hnn : ∀ i, FormNonneg A V (Φ i))
    (hAn : A.IsAnalyticSubset Vᶜ) (hint : interior Vᶜ = ∅) {h b : X → ℝ}
    (hh : MIntegrable A Φ h) (hb : MIntegrable A Φ b) (hle : ∀ x ∈ V, |h x| ≤ b x) :
    |mInt A Φ h| ≤ mInt A Φ b := by
  have key : ∀ c : ℝ, |c| = 1 → 0 ≤ mInt A Φ (fun x => c * h x + b x) := by
    intro c hc
    have hcongr := ReciprocityTheory.AnForm.M.mIntCongrNull A Φ Vᶜ hAn hint (fun x => c * h x + b x)
      (V.indicator fun x => c * h x + b x) (fun x hx => by
        rw [Set.indicator_of_mem (Set.not_notMem.mp hx)])
    rw [hcongr]
    refine mInt_nonneg_on A V Φ hpot hnn _ (fun x => ?_) (fun x hx => Set.indicator_of_notMem hx _)
    by_cases hx : x ∈ V
    · rw [Set.indicator_of_mem hx]
      have h1 := hle x hx
      have h2 : |c * h x| = |h x| := by rw [abs_mul, hc, one_mul]
      have h3 := neg_abs_le (c * h x)
      linarith
    · rw [Set.indicator_of_notMem hx]
  have l1 := ReciprocityTheory.AnForm.M.mIntLinear A Φ hpot (-1) h b hh hb
  have l2 := ReciprocityTheory.AnForm.M.mIntLinear A Φ hpot 1 h b hh hb
  have k1 := key (-1) (by norm_num)
  have k2 := key 1 (by norm_num)
  rw [abs_le]
  constructor <;> linarith

end Integrals

end SystemIndependence

section Inhabitant


end Inhabitant

end

end GroundTheory.Heights₂.Heights.AnalyticLimit
