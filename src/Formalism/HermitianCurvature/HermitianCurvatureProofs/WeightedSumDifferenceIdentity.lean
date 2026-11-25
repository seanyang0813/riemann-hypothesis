module

public import Formalism.HermitianCurvature.StatementM
import Mathlib.Tactic.Linter.Style

@[expose] public section

namespace Formalism.FourierDecayAlt.P.Mx7

section PartT

open Formalism.FourierDecayAlt.M Formalism.FourierDecayAlt Finset

theorem kap_eq (P : Par) (f : Ty P → ℂ) :
    kap P f = Matrix.diagonal fun π => algebraMap ℂ (Pr P.r) (f π) := rfl

theorem kap_comm_diagonal (P : Par) (f : Ty P → ℂ) (d : Ty P → Pr P.r) :
    Commute (kap P f) (Matrix.diagonal d) := by
  show kap P f * Matrix.diagonal d = Matrix.diagonal d * kap P f
  rw [kap_eq, Matrix.diagonal_mul_diagonal, Matrix.diagonal_mul_diagonal]
  congr 1
  funext π
  exact Algebra.commutes _ _

theorem kap_comm_sc (P : Par) (f : Ty P → ℂ) (w : Pr P.r) : Commute (kap P f) (sc P w) := by
  have : sc P w = Matrix.diagonal fun _ => w := by simp [sc, Matrix.scalar_apply]
  rw [this]; exact kap_comm_diagonal P f _

theorem kap_comm_nab (P : Par) (f : Ty P → ℂ) : Commute (kap P f) (nabA P) := kap_comm_diagonal P f _

theorem kap_comm_nabs (P : Par) (f : Ty P → ℂ) : Commute (kap P f) (nabsA P) := kap_comm_diagonal P f _

section abs

variable {R : Type*} [Ring R] [Algebra ℂ R]

end abs

end PartT

section PartF

open Formalism.FourierDecayAlt.M Formalism.FourierDecayAlt Finset Polynomial

noncomputable section

end

end PartF

section PartA

open Formalism.FourierDecayAlt.M Formalism.FourierDecayAlt Finset Polynomial

section Poly

variable {B : Type} [Ring B] [Algebra ℂ B]

end Poly

section AbsDet

variable {B : Type} [Ring B] [Algebra ℂ B]


end AbsDet

end PartA

section PartB

open Formalism.FourierDecayAlt.M Formalism.FourierDecayAlt Finset

section abs2

variable {R : Type*} [Ring R] [Algebra ℂ R]

end abs2

theorem star_kap (P : Par) (f : Ty P → ℂ) : star (kap P f) = kap P (fun π => star (f π)) := by
  rw [kap_eq, kap_eq, Matrix.star_eq_conjTranspose, Matrix.diagonal_conjTranspose]
  refine congrArg Matrix.diagonal (funext fun π => ?_)
  exact (algebraMap_star_comm (f π)).symm

end PartB

section PartC

open Formalism.FourierDecayAlt.M Formalism.FourierDecayAlt Finset

end PartC

section PartD

open Formalism.FourierDecayAlt.M Formalism.FourierDecayAlt Finset Polynomial

end PartD

end Formalism.FourierDecayAlt.P.Mx7

namespace Formalism.FourierDecayAlt.P

end Formalism.FourierDecayAlt.P
