module

public import ReciprocityTheory.ReductiveGroups.UnramifiedIntegrals.ModDefs
import Mathlib.Algebra.Order.Star.Real
import Formalism.LocalToGlobal.TorsionIntegrality.CMGoodModels.Statement

@[expose] public section

noncomputable section
open scoped BigOperators Classical UpperHalfPlane MatrixGroups CongruenceSubgroup Manifold
open ModularForm EisensteinSeries ModularFormClass UpperHalfPlane Formalism.L2.Th1.CM

namespace ReciprocityTheory.ChartRestriction.L1

theorem map_eisensteinFourInt : e4Z.map (Int.castRingHom ℂ) = qExpansion 1 E₄ := by
  have hE : E₄ = ModularForm.E (k := 4) (by norm_num) := rfl
  ext m
  rw [hE]
  rw [EisensteinSeries.E_qExpansion_coeff (by norm_num) ⟨2, rfl⟩ m, bernoulli_four]
  simp only [e4Z, PowerSeries.coeff_map, PowerSeries.coeff_mk]
  split_ifs <;> simp
  norm_num

theorem map_eisensteinSixInt : e6Z.map (Int.castRingHom ℂ) = qExpansion 1 E₆ := by
  have hE : E₆ = ModularForm.E (k := 6) (by norm_num) := rfl
  ext m
  rw [hE]
  rw [EisensteinSeries.E_qExpansion_coeff (by norm_num) ⟨3, rfl⟩ m, bernoulli_six]
  simp only [e6Z, PowerSeries.coeff_map, PowerSeries.coeff_mk]
  split_ifs <;> simp
  norm_num

theorem aC_eq : aC = qExpansion 1 AA := by
  have h1 : AnalyticAt ℂ (cuspFunction 1 ⇑E₄) 0 :=
    ModularFormClass.analyticAt_cuspFunction_zero E₄ one_pos (by simp)
  have h2 : AnalyticAt ℂ (cuspFunction 1 (⇑E₄ * ⇑E₄)) 0 := by
    have h3 := ModularFormClass.analyticAt_cuspFunction_zero (E₄.mul E₄) one_pos (by simp)
    rwa [ModularForm.coe_mul] at h3
  have hA : AA = ⇑E₄ * (⇑E₄ * ⇑E₄) := by
    funext τ
    simp only [AA, Pi.mul_apply]
    ring
  rw [hA, qExpansion_mul h1 h2, qExpansion_mul h1 h1, ← map_eisensteinFourInt]
  simp only [aC, aZ, map_pow]
  ring

end ReciprocityTheory.ChartRestriction.L1
