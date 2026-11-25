module

public import Mathlib.Analysis.CStarAlgebra.Classes
public import Mathlib.Analysis.Calculus.Deriv.Basic
public import Mathlib.Analysis.InnerProductSpace.Basic
public import Mathlib.Analysis.LocallyConvex.AbsConvexOpen
public import Mathlib.Analysis.Normed.Algebra.Exponential
public import Mathlib.Topology.Instances.Matrix
public import Mathlib.Analysis.Matrix.Normed
import Formalism.HermitianCurvature.StatementB
public import Mathlib.Analysis.Calculus.Deriv.Comp
public import Mathlib.Analysis.Calculus.FDeriv.Linear
public import Mathlib.Analysis.SpecialFunctions.Exponential

@[expose] public section

open Matrix Filter Topology
open scoped ComplexConjugate Nat ContDiff

noncomputable section

namespace CCRuleCW

open Formalism.FourierDecayAlt

set_option backward.isDefEq.respectTransparency false in
theorem entry_hasDerivAt {n : ℕ} (X : Matrix (Fin n) (Fin n) ℂ) (i j : Fin n) :
    HasDerivAt (fun t : ℝ => NormedSpace.exp ((t : ℂ) • X) i j) (X i j) 0 := by
  have e1 : (fun t : ℝ => NormedSpace.exp ((t : ℂ) • X) i j) =
      fun t : ℝ => Matrix.entryLinearMap ℝ ℂ i j (NormedSpace.exp (t • X)) := by
    funext t
    have : (t : ℂ) • X = t • X := by ext a b; simp [Complex.real_smul]
    rw [this]; rfl
  have e2 : X i j = Matrix.entryLinearMap ℝ ℂ i j (NormedSpace.exp ((0 : ℝ) • X) * X) := by
    simp [NormedSpace.exp_zero]
  rw [e1, e2]
  open scoped Matrix.Norms.Operator in
  exact (LinearMap.toContinuousLinearMap (Matrix.entryLinearMap ℝ ℂ i j)).hasFDerivAt.comp_hasDerivAt
    (0 : ℝ) (hasDerivAt_exp_smul_const (𝕂 := ℝ) X 0)

section sup

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

variable {k r : ℕ}

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]

end sup

end CCRuleCW
