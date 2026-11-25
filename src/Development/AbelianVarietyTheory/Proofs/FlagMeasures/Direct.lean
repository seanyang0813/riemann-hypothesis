module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.LocWSOf
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsUniquePlace
import Formalism.LocalRingCardinality.RankBoundMonotoneInDimension
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
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
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init

@[expose] public section

noncomputable section
open scoped Classical ENNReal
open Matrix MeasureTheory NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.L2.SG.HidaSetting Formalism.L2.SG.LocWSOf

namespace GlobalTheory.CovDom

theorem rank_eq (D : D7) : D.R.r = 2 * D.R.rS + D.R.k + 1 := by
  have := rank_base_space D.R
  simp only [Ranks.N, zero_mul, add_zero] at this
  omega

variable {D : D7} (X : HidaSetting D)

def ci : Fin (2 * D.R.rS + D.R.k + 1) ≃ Fin X.B.I.n := finCongr (X.n_eq.trans (rank_eq D)).symm

def crdH (y : (VS D).V) : Fin (2 * D.R.rS + D.R.k + 1) → D.host.E := fun i => X.bas.repr y (ci X i)

def vecOf : (Fin (2 * D.R.rS + D.R.k + 1) → D.host.E) →ₗ[D.host.E] (VS D).V :=
  X.bas.equivFun.symm.toLinearMap ∘ₗ (LinearEquiv.funCongrLeft D.host.E D.host.E (ci X).symm).toLinearMap

def Jc : Matrix (Fin (2 * D.R.rS + D.R.k + 1)) (Fin (2 * D.R.rS + D.R.k + 1)) D.host.E :=
  fun i j => (VS D).hT (X.bas (ci X i)) (X.bas (ci X j))

def Lc : Submodule (𝓞 D.host.E) (Fin (2 * D.R.rS + D.R.k + 1) → D.host.E) :=
  (VS D).L0.comap ((vecOf X).restrictScalars (𝓞 D.host.E))

def Pc (u : D.what₂.Word) : Matrix (Fin (2 * D.R.rS + D.R.k + 1)) (Fin (D.R.rS + 1)) D.host.E :=
  Matrix.of fun i b => Fin.lastCases (crdH X (X.zu u) i) (fun a => crdH X (X.eX a) i) b

def fc : Matrix (Fin (2 * D.R.rS + D.R.k + 1)) (Fin D.R.rS) D.host.E :=
  Matrix.of fun i a => crdH X (X.fY a) i

def tauOf (D : D7) (w : InfinitePlace D.host.E) : D.what₂.Tau :=
  (GlobalTheory.RealPlaces.existsUnique_place D w).exists.choose

def Direct (D : D7) (w : InfinitePlace D.host.E) : Prop := w.embedding = embS D (tauOf D w)

def A0 {θ : ℝ} (C : Choice X θ) (w : InfinitePlace D.host.E) :
    Matrix (Fin (2 * D.R.rS + D.R.k + 1)) (Fin (2 * D.R.rS + D.R.k + 1)) ℂ :=
  (C.Qi (tauOf D w) * (X.B.I.P (vOf X (tauOf D w)))⁻¹).submatrix id (ci X)

def sc (D : D7) (a : Fin D.R.rS) : ℝ := (2 * D.host.v) ^ (D.R.rS - (a : ℕ))

end GlobalTheory.CovDom
