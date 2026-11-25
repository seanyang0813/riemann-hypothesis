module

import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.HolomorphicFamilies.TorusFrame
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.ModelLat
public import Mathlib.NumberTheory.NumberField.Discriminant.Different

@[expose] public section

noncomputable section

namespace ReciprocityTheory.ChartRestriction.G.PullbackSections.MLI

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.WeightAlgebra Formalism.L2.Pj
open scoped Pointwise

theorem absNorm_smul_eq {E : Type} [Field E] [NumberField E] (σ : E ≃ₐ[ℚ] E) (I : Ideal (𝓞 E)) :
    Ideal.absNorm (σ • I) = Ideal.absNorm I := by
  rw [Ideal.absNorm_apply, Ideal.absNorm_apply, Submodule.cardQuot_apply, Submodule.cardQuot_apply]
  exact (Nat.card_congr (Ideal.quotientEquiv I (σ • I) (MulSemiringAction.toRingEquiv _ _ σ)
    (by rw [Ideal.pointwise_smul_def]; rfl)).toEquiv).symm

theorem halfDiffNorm : HalfDiffNormSt := by
  intro D
  obtain ⟨hspec, -⟩ := D.host.𝔟_spec

  have hN : Ideal.absNorm (differentIdeal (𝓞 ↥D.host.K) (𝓞 D.host.E)) =
      Ideal.absNorm D.host.𝔟 ^ 2 := by
    rw [hspec, map_mul, absNorm_smul_eq, sq]

  have htow := differentIdeal_eq_differentIdeal_mul_differentIdeal ℤ (𝓞 ↥D.host.K) (𝓞 D.host.E)
  have hne : differentIdeal ℤ (𝓞 D.host.E) ≠ ⊥ := differentIdeal_ne_bot
  have hdisc : Ideal.absNorm (differentIdeal ℤ (𝓞 D.host.E)) = (discr D.host.E).natAbs :=
    NumberField.absNorm_differentIdeal D.host.E (𝓞 D.host.E)
  have hrel0 : differentIdeal (𝓞 ↥D.host.K) (𝓞 D.host.E) ≠ ⊥ := by
    intro h
    apply hne
    rw [htow, h]
    simp
  have hle : Ideal.absNorm (differentIdeal (𝓞 ↥D.host.K) (𝓞 D.host.E)) ≤ (discr D.host.E).natAbs := by
    rw [← hdisc, htow, map_mul]
    apply Nat.le_mul_of_pos_right
    rw [Nat.pos_iff_ne_zero, Ne, Ideal.absNorm_eq_zero_iff]
    intro h
    apply hne
    rw [htow, h]
    simp
  have hpos2 : 0 < Ideal.absNorm D.host.𝔟 ^ 2 := by
    rw [← hN, Nat.pos_iff_ne_zero, Ne, Ideal.absNorm_eq_zero_iff]
    exact hrel0
  have hpos : 0 < Ideal.absNorm D.host.𝔟 := pos_of_ne_zero fun h => by simp [h] at hpos2
  refine ⟨hpos, ?_⟩
  have hsq : ((Ideal.absNorm D.host.𝔟 : ℕ) : ℝ) ^ 2 ≤ |((discr D.host.E : ℤ) : ℝ)| := by
    rw [← Int.cast_abs, ← Int.natCast_natAbs]
    exact_mod_cast hN ▸ hle
  have hlog := Real.log_pow ((Ideal.absNorm D.host.𝔟 : ℕ) : ℝ) 2
  push_cast at hlog
  rw [← hlog]
  exact Real.log_le_log (by positivity) hsq

theorem finrank_E (D : D7) : Module.finrank ℚ D.host.E = 2 * D.R.f := by
  apply ReciprocityTheory.ChartRestriction.G.PullbackSections.PfTorusFrame.finrank_eq

end ReciprocityTheory.ChartRestriction.G.PullbackSections.MLI
