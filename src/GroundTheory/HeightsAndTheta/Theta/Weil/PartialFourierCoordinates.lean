module

public import GroundTheory.AutomorphicForms.GL2.GJMatrixAdelic

@[expose] public section

namespace GroundTheory.Heights₂.Theta

open GroundTheory.Global GroundTheory.Automorphic.GJMatrix NumberField NumberField.mixedEmbedding MeasureTheory
  TensorProduct Module
open scoped NumberField.AdeleRing SchwartzMap

noncomputable section

set_option linter.unusedSectionVars false

section Slice

open scoped Classical

variable {K : Type*} [Field K] [NumberField K]
variable {ι κ : Type*} [Fintype ι] [DecidableEq ι] [Fintype κ] [DecidableEq κ]

private def sliceInl : (κ → mixedSpace K) →L[ℝ] ((ι ⊕ κ) → mixedSpace K) :=
  ContinuousLinearMap.pi fun s ↦
    Sum.elim (fun _ ↦ (0 : (κ → mixedSpace K) →L[ℝ] mixedSpace K))
      (fun j ↦ ContinuousLinearMap.proj j) s

private theorem sliceInl_apply (u : κ → mixedSpace K) :
    (sliceInl (ι := ι) u : (ι ⊕ κ) → mixedSpace K) = Sum.elim (0 : ι → mixedSpace K) u := by
  funext s
  cases s <;> rfl

theorem sumElim_hasTemperateGrowth (c : ι → mixedSpace K) :
    (fun u : κ → mixedSpace K ↦ (Sum.elim c u : (ι ⊕ κ) → mixedSpace K)).HasTemperateGrowth := by
  have h : (fun u : κ → mixedSpace K ↦ (Sum.elim c u : (ι ⊕ κ) → mixedSpace K)) =
      fun u ↦ sliceInl (ι := ι) u + Sum.elim c 0 := by
    funext u s
    rw [sliceInl_apply]
    cases s <;> simp
  rw [h]
  exact (sliceInl (K := K) (ι := ι) (κ := κ)).hasTemperateGrowth.add
    (Function.HasTemperateGrowth.const _)

theorem sumElim_upper (c : ι → mixedSpace K) :
    ∃ (k : ℕ) (C : ℝ), ∀ u : κ → mixedSpace K,
      ‖u‖ ≤ C * (1 + ‖(Sum.elim c u : (ι ⊕ κ) → mixedSpace K)‖) ^ k := by
  refine ⟨1, 1, fun u ↦ ?_⟩
  have hle : ‖u‖ ≤ ‖(Sum.elim c u : (ι ⊕ κ) → mixedSpace K)‖ :=
    (pi_norm_le_iff_of_nonneg (norm_nonneg _)).mpr fun j ↦ by
      simpa using norm_le_pi_norm (Sum.elim c u : (ι ⊕ κ) → mixedSpace K) (Sum.inr j)
  rw [pow_one, one_mul]
  linarith

def schwartzMapSliceSumElim (c : ι → mixedSpace K) (φ : 𝓢((ι ⊕ κ) → mixedSpace K, ℂ)) :
    𝓢(κ → mixedSpace K, ℂ) :=
  SchwartzMap.compCLM ℝ (sumElim_hasTemperateGrowth c) (sumElim_upper c) φ

theorem schwartzMapSliceSumElim_apply (c : ι → mixedSpace K) (φ : 𝓢((ι ⊕ κ) → mixedSpace K, ℂ))
    (u : κ → mixedSpace K) : schwartzMapSliceSumElim c φ u = φ (Sum.elim c u) := rfl

theorem finiteSchwartzBruhatPi_sumElim_mem {g : ((ι ⊕ κ) → 𝔸ᶠ[K]) → ℂ} (hg : g ∈ finiteSchwartzBruhatPi K)
    (c : ι → 𝔸ᶠ[K]) : (fun v : κ → 𝔸ᶠ[K] ↦ g (Sum.elim c v)) ∈ finiteSchwartzBruhatPi K := by
  rw [mem_finiteSchwartzBruhatPi] at hg ⊢
  obtain ⟨hl, hc⟩ := hg
  have hcont : Continuous fun v : κ → 𝔸ᶠ[K] ↦ (Sum.elim c v : (ι ⊕ κ) → 𝔸ᶠ[K]) :=
    continuous_pi fun s ↦ by
      cases s with
      | inl i => exact continuous_const
      | inr j => exact continuous_apply j
  refine ⟨hl.comp_continuous hcont, ?_⟩
  have hπ : Continuous fun w : (ι ⊕ κ) → 𝔸ᶠ[K] ↦ w ∘ Sum.inr :=
    continuous_pi fun j ↦ continuous_apply (Sum.inr j)
  refine HasCompactSupport.intro (hc.image hπ) fun v hv ↦ ?_
  by_contra h
  exact hv ⟨Sum.elim c v, subset_tsupport _ h, Sum.elim_comp_inr c v⟩

theorem infPartPi_sumElim (a : ι → 𝔸[K]) (x : κ → 𝔸[K]) :
    infPartPi (Sum.elim a x : (ι ⊕ κ) → 𝔸[K]) = Sum.elim (infPartPi a) (infPartPi x) := by
  funext s
  cases s <;> rfl

theorem finPartPi_sumElim (a : ι → 𝔸[K]) (x : κ → 𝔸[K]) :
    finPartPi (Sum.elim a x : (ι ⊕ κ) → 𝔸[K]) = Sum.elim (finPartPi a) (finPartPi x) := by
  funext s
  cases s <;> rfl

theorem schwartzBruhatPi_sumElim_mem {F : ((ι ⊕ κ) → 𝔸[K]) → ℂ}
    (hF : F ∈ schwartzBruhatPi (K := K) (ι := ι ⊕ κ)) (a : ι → 𝔸[K]) :
    (fun x : κ → 𝔸[K] ↦ F (Sum.elim a x)) ∈ schwartzBruhatPi (K := K) (ι := κ) := by
  induction hF using Submodule.span_induction with
  | mem G hG =>
    obtain ⟨φ, g, hg, rfl⟩ := hG
    have h : (fun x : κ → 𝔸[K] ↦ schwartzBruhatTensorPi φ g (Sum.elim a x)) =
        schwartzBruhatTensorPi (schwartzMapSliceSumElim (infPartPi a) φ)
          (fun v ↦ g (Sum.elim (finPartPi a) v)) := by
      funext x
      simp only [schwartzBruhatTensorPi, schwartzMapSliceSumElim_apply, infPartPi_sumElim,
        finPartPi_sumElim]
    rw [h]
    exact schwartzBruhatTensorPi_mem _ (finiteSchwartzBruhatPi_sumElim_mem hg _)
  | zero => exact zero_mem _
  | add F G _ _ hF hG => exact add_mem hF hG
  | smul c F _ hF => exact Submodule.smul_mem _ c hF

end Slice

section Pairing

variable {K W P₁ P₂ Q₁ Q₂ : Type*} [Field K] [AddCommGroup W] [Module K W]
  [AddCommGroup P₁] [Module K P₁] [AddCommGroup P₂] [Module K P₂]
  [AddCommGroup Q₁] [Module K Q₁] [AddCommGroup Q₂] [Module K Q₂]
  {ω : LinearMap.BilinForm K W}

variable [FiniteDimensional K P₂] [FiniteDimensional K Q₂]

end Pairing

section Adelic

variable {K W P₁ P₂ Q₁ Q₂ : Type*} [Field K] [NumberField K] [AddCommGroup W] [Module K W]
  [AddCommGroup P₁] [Module K P₁] [AddCommGroup P₂] [Module K P₂]
  [AddCommGroup Q₁] [Module K Q₁] [AddCommGroup Q₂] [Module K Q₂]
  {ω : LinearMap.BilinForm K W}

end Adelic

end

end GroundTheory.Heights₂.Theta
