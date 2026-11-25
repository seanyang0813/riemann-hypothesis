module

public import Formalism.LocalToGlobal.GlobalTheory.LinkTiesTh
public import Formalism.SharpRestriction.GlobalSchurBounds.GL3Theta

@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory

open Formalism.BasicNotions Formalism.MainNotions NumberField

theorem lattice_character_eq (d : ℕ) (Λ : AddSubgroup ℂ) (x : ℂ) : GL3Theta.al1 d Λ x = al1 d Λ x := rfl

theorem taylorLogMetric_U1_eq_U1 (Λ : AddSubgroup ℂ) (x : ℂ) (G : ℂ → ℂ) : TaylorLogMetric.U1 Λ x G = U1 Λ x G := by
  funext z
  simp only [TaylorLogMetric.U1, U1, H1]
  congr 2
  ring

theorem is_theta_zero_iff (d : ℕ) (Λ : AddSubgroup ℂ) (G : ℂ → ℂ) : GL3Theta.IsTheta0 d Λ G ↔ IsTheta0 d Λ G := by
  unfold GL3Theta.IsTheta0 IsTheta0
  constructor
  · rintro ⟨h1, h2, h3⟩
    refine ⟨h1, fun x hx z => ?_, h3⟩
    have hx' := h2 x hx z
    rwa [lattice_character_eq, congrFun (taylorLogMetric_U1_eq_U1 Λ x G) z] at hx'
  · rintro ⟨h1, h2, h3⟩
    refine ⟨h1, fun x hx z => ?_, h3⟩
    rw [lattice_character_eq, congrFun (taylorLogMetric_U1_eq_U1 Λ x G) z]
    exact h2 x hx z

end Formalism.L2.GlobalTheoryTheory

end
