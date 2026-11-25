module

public import Formalism.SharpRestriction.GlobalSchurBounds.GeneralLinearActions.GapAtLeast
public import Mathlib.NumberTheory.LSeries.RiemannZeta

@[expose] public section

noncomputable section

namespace Formalism.MainNotions.J

open NumberField Formalism.HermitianLatticesTheory Formalism.BasicNotions

theorem stdForm_apply (K : Type) [Field K] [StarRing K] (M : ℕ) (x y : Fin M → K) :
    StandardLattice.stdForm K M x y = ∑ i, star (x i) * y i := rfl

theorem std_ortho (K : Type) [Field K] [NumberField K] [StarRing K] (M : ℕ) :
    IsOrthoLattice (StandardLattice.stdForm K M) (StandardLattice.stdLat K M) M := by
  have e : (fun i : Fin M => (Pi.single i 1 : Fin M → K)) = Pi.basisFun K (Fin M) := by
    funext i; simp
  refine ⟨fun i => Pi.single i 1, ?_, ?_, rfl, fun i j => ?_⟩
  · rw [e]; exact (Pi.basisFun K (Fin M)).linearIndependent
  · rw [e]; exact (Pi.basisFun K (Fin M)).span_eq
  · by_cases hij : i = j
    · subst hij; simp [stdForm_apply, Pi.single_apply]
    · simp [stdForm_apply, Pi.single_apply, hij, Ne.symm hij]

theorem zetaR_eq (M : ℕ) (hM : 2 ≤ M) : (riemannZeta (M : ℂ)).re = StandardLattice.zetaR M := by
  have h1 : (1 : ℝ) < ((M : ℂ)).re := by
    simp only [Complex.natCast_re]; exact_mod_cast hM
  rw [zeta_eq_tsum_one_div_nat_add_one_cpow h1]
  have h2 : (∑' n : ℕ, 1 / ((n : ℂ) + 1) ^ (M : ℂ)) = ((StandardLattice.zetaR M : ℝ) : ℂ) := by
    unfold StandardLattice.zetaR
    rw [Complex.ofReal_tsum]
    refine tsum_congr fun n => ?_
    rw [Complex.cpow_natCast]
    push_cast
    rfl
  rw [h2, Complex.ofReal_re]

end Formalism.MainNotions.J

end
