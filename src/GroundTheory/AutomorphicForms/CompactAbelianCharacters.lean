module

public import Mathlib.Analysis.CStarAlgebra.ContinuousMap
public import Mathlib.Analysis.Complex.Circle
public import Mathlib.MeasureTheory.Function.LpSpace.Basic
public import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ExistsCharNeOne
import Mathlib.Tactic.TypeStar
public import Mathlib.Topology.ContinuousMap.StoneWeierstrass

@[expose] public section

set_option maxSynthPendingDepth 1

open MeasureTheory Filter Topology Module End
open scoped InnerProductSpace ComplexConjugate ENNReal

namespace GroundTheory.Automorphic.CompactAbelianFourier

noncomputable section

set_option linter.unusedSectionVars false

variable {C : Type*} [CommGroup C] [TopologicalSpace C] [IsTopologicalGroup C] [CompactSpace C]
  [T2Space C]

section Metrizable

variable [SecondCountableTopology C] [MeasurableSpace C] [BorelSpace C]
  (μ : Measure C) [μ.IsHaarMeasure]

variable (ψ : C(C, ℝ))


end Metrizable

theorem exists_char_ne {x y : C} (hxy : x ≠ y) : ∃ χ : C →ₜ* Circle, χ x ≠ χ y := by
  obtain ⟨χ, hχ⟩ := _root_.UpperTheory.Reformulated.B.CharactersSeparatePoints.exists_char_ne_one (g := x * y⁻¹) (fun h => hxy (mul_inv_eq_one.1 h))
  refine ⟨χ, fun h => hχ ?_⟩
  rw [map_mul, map_inv, h, mul_inv_cancel]

def charCM (χ : C →ₜ* Circle) : C(C, ℂ) := ⟨fun x => (χ x : ℂ), continuous_subtype_val.comp χ.continuous⟩

theorem charCM_apply (χ : C →ₜ* Circle) (x : C) : charCM χ x = (χ x : ℂ) := rfl

theorem charCM_mul (χ χ' : C →ₜ* Circle) : charCM (χ * χ') = charCM χ * charCM χ' := by
  ext x
  simp [charCM_apply]

theorem charCM_one : charCM (1 : C →ₜ* Circle) = 1 := by
  ext x
  simp [charCM_apply]

theorem star_charCM (χ : C →ₜ* Circle) : star (charCM χ) = charCM χ⁻¹ := by
  ext x
  change conj ((χ x : Circle) : ℂ) = (((χ x)⁻¹ : Circle) : ℂ)
  rw [Circle.coe_inv_eq_conj]

def charAlgebra : StarSubalgebra ℂ C(C, ℂ) :=
  { (Submodule.span ℂ (Set.range (charCM (C := C)))).toSubalgebra
      (Submodule.subset_span ⟨1, charCM_one⟩)
      (fun a b ha hb => by
        have h := Submodule.mul_mem_mul ha hb
        rw [Submodule.span_mul_span] at h
        refine Submodule.span_mono ?_ h
        rintro _ ⟨x, ⟨χ, rfl⟩, y, ⟨χ', rfl⟩, rfl⟩
        exact ⟨χ * χ', charCM_mul χ χ'⟩) with
    star_mem' := fun {a} ha => by
      change a ∈ Submodule.span ℂ (Set.range (charCM (C := C))) at ha
      change star a ∈ Submodule.span ℂ (Set.range (charCM (C := C)))
      induction ha using Submodule.span_induction with
      | mem x hx =>
        obtain ⟨χ, rfl⟩ := hx
        exact Submodule.subset_span ⟨χ⁻¹, (star_charCM χ).symm⟩
      | zero => rw [star_zero]; exact Submodule.zero_mem _
      | add x y _ _ hx hy => rw [star_add]; exact Submodule.add_mem _ hx hy
      | smul c x _ hx => rw [star_smul]; exact Submodule.smul_mem _ _ hx }

theorem charAlgebra_separatesPoints : (charAlgebra (C := C)).SeparatesPoints := by
  intro x y hxy
  obtain ⟨χ, hχ⟩ := exists_char_ne hxy
  exact ⟨charCM χ, ⟨charCM χ, Submodule.subset_span ⟨χ, rfl⟩, rfl⟩, fun h => hχ (Circle.coe_injective h)⟩

theorem span_charCM_dense :
    (Submodule.span ℂ (Set.range (charCM (C := C)))).topologicalClosure = ⊤ := by
  have h := ContinuousMap.starSubalgebra_topologicalClosure_eq_top_of_separatesPoints _
    (charAlgebra_separatesPoints (C := C))
  rw [eq_top_iff]
  intro f _
  have hf : f ∈ (charAlgebra (C := C)).topologicalClosure := by rw [h]; trivial
  exact hf

end

end GroundTheory.Automorphic.CompactAbelianFourier
