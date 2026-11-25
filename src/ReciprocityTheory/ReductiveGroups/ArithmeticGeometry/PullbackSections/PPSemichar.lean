module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ThetaUnifAV
public import Formalism.LocalToGlobal.ProjectiveLattices.PetersonNormSubspace
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.NonemptyUnitAt

@[expose] public section

noncomputable section

namespace ReciprocityTheory.ChartRestriction.G.PullbackSections

open AlgebraicGeometry CategoryTheory Limits NumberField ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
  ReciprocityTheory.ChartRestriction.G.FD Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta Formalism.L2.Pj MonObj
open scoped CategoryTheory.Obj

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {Dw : Datum H} {l : Level H}
  {Xo : Moduli Dw l} {c : Coeff l} {σ : c.F →+* ℂ} {r : ℕ}

theorem hermForm_add_left {g : ℕ} (Hm : Matrix (Fin g) (Fin g) ℂ) (z z' w : Fin g → ℂ) :
    hermForm Hm (z + z') w = hermForm Hm z w + hermForm Hm z' w := by
  unfold hermForm
  rw [add_dotProduct]

theorem hermForm_add_right {g : ℕ} (Hm : Matrix (Fin g) (Fin g) ℂ) (z w w' : Fin g → ℂ) :
    hermForm Hm z (w + w') = hermForm Hm z w + hermForm Hm z w' := by
  unfold hermForm
  rw [star_add, Matrix.mulVec_add, dotProduct_add]

theorem hermForm_swap {g : ℕ} {Hm : Matrix (Fin g) (Fin g) ℂ} (hH : Hm.IsHermitian) (z w : Fin g → ℂ) :
    hermForm Hm w z = star (hermForm Hm z w) := by
  unfold hermForm
  simp only [dotProduct, Matrix.mulVec, star_sum, star_mul', Finset.mul_sum]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  have hji : star (Hm i j) = Hm j i := by
    have := congrFun (congrFun hH j) i
    rwa [Matrix.conjTranspose_apply] at this
  simp only [Pi.star_apply, star_star, hji]
  ring

theorem hermForm_smul_left {g : ℕ} (Hm : Matrix (Fin g) (Fin g) ℂ) (t : ℂ) (z w : Fin g → ℂ) :
    hermForm Hm (t • z) w = t * hermForm Hm z w := by
  unfold hermForm
  rw [smul_dotProduct, smul_eq_mul]

theorem hermForm_real_smul_right {g : ℕ} (Hm : Matrix (Fin g) (Fin g) ℂ) (t : ℝ) (z w : Fin g → ℂ) :
    hermForm Hm z ((t : ℂ) • w) = t * hermForm Hm z w := by
  unfold hermForm
  have h1 : star ((t : ℂ) • w) = (t : ℂ) • star w := by
    ext i
    simp [Complex.conj_ofReal]
  rw [h1, Matrix.mulVec_smul, dotProduct_smul, smul_eq_mul]

section Prim

variable {U : Unf Xo c σ r} {k : U.Comp} {x : (U.X k).dom} (W : UnfAt U k x)

end Prim

end ReciprocityTheory.ChartRestriction.G.PullbackSections
