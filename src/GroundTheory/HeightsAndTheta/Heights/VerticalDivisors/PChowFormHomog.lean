module

public import GroundTheory.HeightsAndTheta.Heights.VerticalDivisors.Statements
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.ChowFormHomog
import Mathlib.Algebra.MvPolynomial.Nilpotent
public import GroundTheory.HeightsAndTheta.Heights.ArithmeticBezout.ChowDegree

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Vertical

open MvPolynomial

variable {F : Type} [Field F] {n k : ℕ}

theorem chowForm_degree_unique {I : Ideal (MvPolynomial (Fin n) F)}
    {f g : MvPolynomial (Fin k × Fin n) F} (hk : 0 < k) (hf : IsChowForm I k f)
    (hg : IsChowForm I k g) {δ δ' : ℕ} (hδ : Heights.IsMultiHomog δ f) (hδ' : Heights.IsMultiHomog δ' g) :
    δ = δ' := by
  obtain ⟨q, rfl⟩ : f ∣ g := (hf.2 g).mp ((hg.2 g).mpr dvd_rfl)
  obtain ⟨r, hr⟩ : f * q ∣ f := (hg.2 f).mp ((hf.2 f).mpr dvd_rfl)
  have hqr : q * r = 1 := by
    have h' : f * (q * r) = f * 1 := by
      rw [mul_one, ← mul_assoc]
      exact hr.symm
    exact mul_left_cancel₀ hf.1 h'
  obtain ⟨c, -, rfl⟩ := (isUnit_iff_eq_C_of_isReduced (P := q)).mp (IsUnit.of_mul_eq_one r hqr)
  have h1 : IsWeightedHomogeneous (groupWeight k n) (f * C c) ((fun _ => δ) + 0) :=
    IsWeightedHomogeneous.mul hδ (isWeightedHomogeneous_C _ c)
  rw [add_zero] at h1
  exact congrFun (IsWeightedHomogeneous.inj_right hg.1 h1 hδ') ⟨0, hk⟩

theorem ChowFormHomog.proof : ChowFormHomog.Statement := by
  intro F _ n k I f hf
  rcases Nat.eq_zero_or_pos k with hk0 | hk
  · subst hk0
    exact fun d _ => funext fun i => i.elim0
  choose a ha using fun i => hf.exists_isWeightedHomogeneous_inGroup i
  have hδ : Heights.IsMultiHomog (a ⟨0, hk⟩) f := (isMultiHomog_iff _ _).mpr fun i => by
    rw [hf.degrees_eq ha ⟨0, hk⟩ i]
    exact ha i
  have hdeg : chowDegree I k = a ⟨0, hk⟩ := by
    apply le_antisymm
    · exact Nat.sInf_le ⟨f, hf, hδ⟩
    · exact le_csInf ⟨_, f, hf, hδ⟩ fun δ ⟨g, hg, hδg⟩ =>
        (chowForm_degree_unique hk hf hg hδ hδg).le
  rw [hdeg]
  exact hδ

alias chowFormHomog := _root_.GroundTheory.Heights₂.Heights.Vertical.ChowFormHomog.proof

end GroundTheory.Heights₂.Heights.Vertical
