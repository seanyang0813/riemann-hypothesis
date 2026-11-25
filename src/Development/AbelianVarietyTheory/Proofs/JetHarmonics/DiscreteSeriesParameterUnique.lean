module

import CompanionTheory.AutomorphicTheory.ZuckermanCommutation.CapelliEigenvalues.BetaAtInfinityZero
public import Development.AbelianVarietyTheory.Definitions.Jets.SideFam
import Mathlib.Algebra.Order.Archimedean.Real.Hom
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.LocallyConvex.AbsConvexOpen
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Lemma
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init

@[expose] public section

open BranchingSupport Formalism.FourierDecayAlt Formalism.FourierDecayAlt.ThreeDimData Matrix MeasureTheory Finset
open scoped InnerProductSpace ENNReal ContDiff

noncomputable section

namespace GlobalTheory
namespace DSInequiv

open PI.DSInfCharCap

section
variable {n : ℕ} {ε : Fin n → Bool} {H H' : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
  [NormedAddCommGroup H'] [InnerProductSpace ℂ H']
  {τ : Matrix (Fin n) (Fin n) ℂ → (H →L[ℂ] H)} {τ' : Matrix (Fin n) (Fin n) ℂ → (H' →L[ℂ] H')}

def toReal (V : H ≃L[ℂ] H') : H ≃L[ℝ] H' :=
  { V.toLinearEquiv.restrictScalars ℝ with
    continuous_toFun := V.continuous
    continuous_invFun := V.symm.continuous }

lemma dsig_equiv (V : H ≃L[ℂ] H') (hV : ∀ g, Formalism.REAL.inUJ ε g → ∀ x, V (τ g x) = τ' g (V x))
    (X : Matrix (Fin n) (Fin n) ℂ) (hX : Formalism.REAL.inG ε X) (v : H) :
    V (PI.PhMeasCore.dsig τ X v) = PI.PhMeasCore.dsig τ' X (V v) := by
  unfold PI.PhMeasCore.dsig
  have e : (fun t : ℝ => τ' (NormedSpace.exp ((t : ℂ) • X)) (V v)) =
      (toReal V) ∘ (fun t : ℝ => τ (NormedSpace.exp ((t : ℂ) • X)) v) := by
    funext t
    exact (hV _ (Formalism.REAL.exp_indefinite_unitary_holds n ε X hX t) v).symm
  rw [e]
  unfold deriv
  rw [ContinuousLinearEquiv.comp_fderiv]
  rfl

open scoped Matrix.Norms.Elementwise

end

end DSInequiv
end GlobalTheory
