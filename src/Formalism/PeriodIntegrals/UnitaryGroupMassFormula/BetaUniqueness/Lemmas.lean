module

import Formalism.SharpRestriction.CuspSpanNormBounds.CayleyDegreeNondegeneracy.ExtendByIdentitySymmFixOrth
public import Formalism.SharpRestriction.CuspSpanNormBounds.IsPrimitiveSub
public import Lemmata.GeneralBFactThirdRest.Imports

@[expose] public section

noncomputable section

open NumberField Module Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat

namespace PI.UnitaryGroupMassFormula.BetaLUniq

variable {E : Type} [Field E] [NumberField E] [StarRing E] (S : HSpace E)

theorem mem_orth {U : Submodule E S.V} {v : S.V} : v ∈ orth S U ↔ ∀ x ∈ U, S.hT x v = 0 := by
  simp [orth, Submodule.mem_iInf, LinearMap.mem_ker]

theorem finrank_orth_add (U : Submodule E S.V) :
    finrank E (orth S U) + finrank E U = finrank E S.V := by
  apply Formalism.MainNotions.BridgeLemma₂.finrank_orth_add_finrank

alias exists_smul_mem := _root_.Bl.general_b_fact_third''''.goal1

theorem span_inf_toO (Λ : Submodule (𝓞 E) S.V) (hΛ : Submodule.IsFullLattice E Λ) (U : Submodule E S.V) :
    Submodule.span E ((Λ ⊓ toO S U : Submodule (𝓞 E) S.V) : Set S.V) = U := by
  apply le_antisymm
  · rw [Submodule.span_le]
    intro x hx
    exact hx.2
  · intro x hx
    obtain ⟨a, ha, hax⟩ := exists_smul_mem S Λ hΛ x
    have hmem : a • x ∈ (Λ ⊓ toO S U : Submodule (𝓞 E) S.V) :=
      ⟨hax, by simpa [toO] using U.smul_mem (a : E) hx⟩
    have hx' : x = ((a : E)⁻¹) • (a • x) := by
      rw [← algebraMap_smul E a x, smul_smul]
      have : (a : E) ≠ 0 := by simpa using ha
      simp [this]
    rw [hx']
    exact Submodule.smul_mem _ _ (Submodule.subset_span hmem)

theorem Xsp_le_UUE (Λ : Submodule (𝓞 E) S.V) (hΛ : Submodule.IsFullLattice E Λ) {r : ℕ} {T T' : E}
    (F : LFlag S r T) (F' : LFlag S r T') : Xsp F ≤ UUE Λ F F' := by
  rw [← span_inf_toO S Λ hΛ (Xsp F)]
  apply Submodule.span_mono
  intro x hx
  simp only [UU]
  exact Submodule.mem_sup_left (Submodule.mem_sup_left (Submodule.mem_sup_left hx))

theorem Xsp_le_UUE' (Λ : Submodule (𝓞 E) S.V) (hΛ : Submodule.IsFullLattice E Λ) {r : ℕ} {T T' : E}
    (F : LFlag S r T) (F' : LFlag S r T') : Xsp F' ≤ UUE Λ F F' := by
  rw [← span_inf_toO S Λ hΛ (Xsp F')]
  apply Submodule.span_mono
  intro x hx
  simp only [UU]
  exact Submodule.mem_sup_left (Submodule.mem_sup_right hx)

end PI.UnitaryGroupMassFormula.BetaLUniq
