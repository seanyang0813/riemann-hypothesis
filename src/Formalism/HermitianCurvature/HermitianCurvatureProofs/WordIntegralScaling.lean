module

public import Formalism.HermitianCurvature.HermitianCurvatureProofs.DilationUnipotentWeylMeasure
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.HermitianCurvature.StatementJF
public import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap

@[expose] public section

open Matrix MeasureTheory Filter

noncomputable section

namespace Formalism.FourierDecayAlt.P.WordIntegralScaling

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.B Formalism.FourierDecayAlt.JF

open scoped Matrix.Norms.Elementwise

theorem int_list {α ι E : Type*} [MeasurableSpace α] [NormedAddCommGroup E] [NormedSpace ℂ E] [CompleteSpace E]
    (μ : Measure α) (l : List ι) (L : ι → E →L[ℂ] E) (φ : ι → α → E) (h : ∀ i ∈ l, Integrable (φ i) μ) :
    Integrable (fun p => (l.map fun i => L i (φ i p)).sum) μ ∧
      ∫ p, (l.map fun i => L i (φ i p)).sum ∂μ = (l.map fun i => L i (∫ p, φ i p ∂μ)).sum := by
  induction l with
  | nil => simp
  | cons i l ih =>
    have hi : Integrable (φ i) μ := h i (by simp)
    obtain ⟨hl1, hl2⟩ := ih (fun j hj => h j (by simp [hj]))
    have hLi : Integrable (fun p => L i (φ i p)) μ := (L i).integrable_comp hi
    simp only [List.map_cons, List.sum_cons]
    refine ⟨hLi.add hl1, ?_⟩
    rw [integral_add hLi hl1, hl2, ContinuousLinearMap.integral_comp_comm _ hi]

theorem smul_list {ι E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] (c : ℂ) (l : List ι) (L : ι → E →L[ℂ] E)
    (x : ι → E) : c • (l.map fun i => L i (x i)).sum = (l.map fun i => L i (c • x i)).sum := by
  induction l with
  | nil => simp
  | cons i l ih =>
    rw [List.map_cons, List.sum_cons, smul_add, ih, List.map_cons, List.sum_cons, map_smul]

variable {k r : ℕ}

theorem lr_nrm (v : List (Mat k r)) :
    (B4.lr [] v).map B4.nrm = B4.lr [] (v.map fun X => ((‖X‖⁻¹ : ℝ) : ℂ) • X) := by
  simp [B4.lr, B4.nrm, List.map_map, Function.comp_def]

theorem rw_scale {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] (v : List (Mat k r)) (f : Mat k r → E) :
    Rw v f = B4.pn (B4.lr [] v) • Rw (v.map fun X => ((‖X‖⁻¹ : ℝ) : ℂ) • X) f := by
  have h := B4.W_nrm (B4.lr [] v) f
  rw [lr_nrm, ← B4.dLR_eq, ← B4.dLR_eq] at h
  exact h

end Formalism.FourierDecayAlt.P.WordIntegralScaling

namespace Formalism.FourierDecayAlt.P

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.B Formalism.FourierDecayAlt.JF

open scoped Matrix.Norms.Elementwise

end Formalism.FourierDecayAlt.P
