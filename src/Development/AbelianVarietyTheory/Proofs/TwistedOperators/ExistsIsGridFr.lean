module

public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsNotRelZero
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExternalProductOnHermitianSumSmulLeft
public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.HermitianOrthogonalExtensionData
public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.IsVacFOfIsVacVec
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
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

@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.IndefR.Links
open IsDedekindDomain NumberField MeasureTheory Matrix
open scoped TensorProduct
open GlobalTheory.FunObj GlobalTheory.ChiGrid GlobalTheory.SplitFlip GlobalTheory.SplitWeil GlobalTheory.StdFrames Formalism.L2.DIV
open GlobalTheory.RouteSeesaw GlobalTheory.ChainFr

namespace GlobalTheory.SquareDict

variable {D : D7} {T : Type} {L : LevCh D T} {sc : Consts} {G : GridData L sc}

def datumA (W : G.Weil) {t : T} {i j : ℕ} (Θ : TotT G (routeBig t i j)) :
    WO (G.V (.grid (i + 1) (j + 1))) (GlobalTheory.Doubling.hsum (G.V (.grid i (j + 1))) (G.V (.grid (i + 1) j))) → ℂ :=
  Θ.sum fun d c => c • box2 (S := negSp (G.V (.grid (i + 1) (j + 1)))) (A := G.V (.grid i (j + 1))) (B := G.V (.grid (i + 1) j))
    d.1.2 (fun y => d.2 (adjM (G.V (.grid (i + 1) (j + 1))) (G.V (.grid (i + 1) j)) y))

def datumB (W : G.Weil) {t : T} {i j : ℕ} (Θ : TotT G (routeSmall t i j)) :
    WO (G.V (.grid i j)) (GlobalTheory.Doubling.hsum (G.V (.grid i (j + 1))) (G.V (.grid (i + 1) j))) → ℂ :=
  Θ.sum fun d c => c • box2 (S := G.V (.grid i j)) (A := G.V (.grid i (j + 1))) (B := G.V (.grid (i + 1) j))
    d.1.2 (fun y => d.2 (adjM (G.V (.grid i j)) (negSp (G.V (.grid (i + 1) j))) y))

def IsGridFr (W : G.Weil) (X : Node) (A : Fr (G.V X)) : Prop :=
  ∀ τ, A.onb τ = W.onb X τ ∧ A.cart τ = W.cart X τ

theorem exists_isGridFr (W : G.Weil) {X : Node} (hX : X.InRange D.R.m) : ∃ A : Fr (G.V X), IsGridFr W X A := by
  choose ε hε using W.onb_is X hX
  have hu : ∀ τ, IsUnit (W.onb X τ) := fun τ => by
    have h1 : IsUnit ((W.onb X τ)ᴴ * gramAt D (G.V X) τ * W.onb X τ) := by
      rw [(hε τ).1]
      refine ⟨⟨Formalism.REAL.Jm (ε τ), Formalism.REAL.Jm (ε τ), ?_, ?_⟩, rfl⟩ <;>
      · ext a b
        by_cases h : a = b
        · subst h; cases h' : ε τ a <;> simp [Formalism.REAL.Jm, Matrix.mul_apply, Matrix.diagonal_apply, h']
        · simp [Formalism.REAL.Jm, Matrix.mul_apply, Matrix.diagonal_apply, h]
    rw [Matrix.isUnit_iff_isUnit_det] at h1 ⊢
    rw [Matrix.det_mul] at h1
    exact isUnit_of_mul_isUnit_right h1
  refine ⟨⟨ε, fun τ => (W.onb X τ)⁻¹, fun τ => (Matrix.isUnit_nonsing_inv_iff).2 (hu τ), fun τ => ?_⟩, fun τ => ⟨?_, ?_⟩⟩
  · have hd : IsUnit (W.onb X τ).det := (Matrix.isUnit_iff_isUnit_det _).1 (hu τ)
    rw [← (hε τ).1, Matrix.conjTranspose_nonsing_inv]
    simp only [← Matrix.mul_assoc]
    rw [Matrix.nonsing_inv_mul _ (by simpa [Matrix.det_conjTranspose] using hd.star), Matrix.one_mul, Matrix.mul_assoc,
      Matrix.mul_nonsing_inv _ hd, Matrix.mul_one]
  · have hd : IsUnit (W.onb X τ).det := (Matrix.isUnit_iff_isUnit_det _).1 (hu τ)
    show ((W.onb X τ)⁻¹)⁻¹ = W.onb X τ
    exact Matrix.nonsing_inv_nonsing_inv _ hd
  · have hd : IsUnit (W.onb X τ).det := (Matrix.isUnit_iff_isUnit_det _).1 (hu τ)
    show ((W.onb X τ)⁻¹)⁻¹ * Formalism.REAL.Jm (ε τ) * (W.onb X τ)⁻¹ = W.cart X τ
    rw [Matrix.nonsing_inv_nonsing_inv _ hd, ← (hε τ).2, Matrix.mul_assoc, Matrix.mul_nonsing_inv _ hd, Matrix.mul_one]

def zact {S X : HSp D} (ω : GlobalTheory.Grid.WRep S X) (z : GA D S →₀ ℂ) (Φ : WO S X → ℂ) : WO S X → ℂ :=
  z.sum fun k c => c • ω (k, 1) Φ

end GlobalTheory.SquareDict
