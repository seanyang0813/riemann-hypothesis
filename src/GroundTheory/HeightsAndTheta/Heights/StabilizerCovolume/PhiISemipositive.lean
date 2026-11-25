module

public import ReciprocityTheory.AnalyticForms.PlurisubharmonicFunctions.IsPshLocallyIntegrableStatement
public import Mathlib.Analysis.Complex.MeanValue
import Mathlib.Tactic.Linter.Style
import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.CoordinateIdeals.FubiniLevi
public import Mathlib.Analysis.Calculus.DiffContOnCl
public import Mathlib.NumberTheory.NumberField.Basic
public import Mathlib.NumberTheory.NumberField.CMField
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.IsSemipositiveOn

@[expose] public section

set_option maxSynthPendingDepth 1

noncomputable section

namespace GroundTheory.Heights₂.Heights.NineStatements

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo NumberField GroundTheory.Heights₂.Heights.LowerBoundFree Metric
open ReciprocityTheory.AnForm.A (IsPsh)
open scoped Matrix ComplexOrder

section Psh

variable {d : ℕ}

theorem isPsh_add_re_add_const {U : Set (Fin d → ℂ)} (hU : IsOpen U) {φ : (Fin d → ℂ) → ℝ} (hφ : IsPsh U φ)
    {G : (Fin d → ℂ) → ℂ} (hG : DifferentiableOn ℂ G U) (c : ℝ) :
    IsPsh U (fun w => φ w + (G w).re + c) := by
  have hcont : ContinuousOn (fun w => (G w).re) U := Complex.continuous_re.comp_continuousOn hG.continuousOn
  refine ⟨(hφ.1.add hcont.upperSemicontinuousOn).add upperSemicontinuousOn_const, fun z w hd => ?_⟩
  obtain ⟨hint, hle⟩ := hφ.2 z w hd
  have hmap : Continuous fun ζ : ℂ => z + ζ • w := continuous_const.add (continuous_id.smul continuous_const)
  have hdiff : DifferentiableOn ℂ (fun ζ : ℂ => G (z + ζ • w)) (closedBall 0 1) := by
    intro ζ hζ
    have hζU : z + ζ • w ∈ U := hd ζ (by simpa using hζ)
    have hGa : DifferentiableAt ℂ G (z + ζ • w) := hG.differentiableAt (hU.mem_nhds hζU)
    have hl : DifferentiableAt ℂ (fun ζ : ℂ => z + ζ • w) ζ :=
      (differentiableAt_const _).add (differentiableAt_id.smul_const w)
    exact (hGa.comp ζ hl).differentiableWithinAt
  have hdc : DiffContOnCl ℂ (fun ζ : ℂ => G (z + ζ • w)) (ball 0 |(1 : ℝ)|) := by
    rw [abs_one]
    exact hdiff.diffContOnCl_ball subset_rfl
  have hmean : Real.circleAverage (fun ζ : ℂ => G (z + ζ • w)) 0 1 = G z := by
    have := hdc.circleAverage
    simpa using this
  have hcs : ContinuousOn (fun ζ : ℂ => G (z + ζ • w)) (sphere 0 1) :=
    hdiff.continuousOn.mono sphere_subset_closedBall
  have hciG : CircleIntegrable (fun ζ : ℂ => G (z + ζ • w)) 0 1 := hcs.circleIntegrable zero_le_one
  have hciR : CircleIntegrable (fun ζ : ℂ => (G (z + ζ • w)).re) 0 1 :=
    (Complex.continuous_re.comp_continuousOn hcs).circleIntegrable zero_le_one
  have hre : Real.circleAverage (fun ζ : ℂ => (G (z + ζ • w)).re) 0 1 = (G z).re := by
    have := ContinuousLinearMap.circleAverage_comp_comm Complex.reCLM hciG
    rw [hmean] at this
    simpa [Function.comp_def] using this
  have hci2 : CircleIntegrable (fun ζ : ℂ => φ (z + ζ • w) + (G (z + ζ • w)).re) 0 1 := hint.add hciR
  refine ⟨hci2.add (circleIntegrable_const c 0 1), ?_⟩
  have e1 := Real.circleAverage_fun_add hci2 (circleIntegrable_const c 0 1)
  have e2 := Real.circleAverage_fun_add hint hciR
  show φ z + (G z).re + c ≤ Real.circleAverage (fun ζ : ℂ => φ (z + ζ • w) + (G (z + ζ • w)).re + c) 0 1
  rw [e1, e2, hre, Real.circleAverage_const]
  linarith

end Psh

end GroundTheory.Heights₂.Heights.NineStatements
