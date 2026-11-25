module

public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.PairPtsEqSum
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LevRowSuccInfUA
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.LevelHyperspecialTrivialCharacterSplitsOffPlaces
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

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.ExpansionInvariance GlobalTheory.RowVertexInv

noncomputable section

namespace GlobalTheory.RowVertexInv

open Matrix

theorem mulVec_conj_mulVec_eq {n : ℕ} {R : Type} [CommRing R] (a g : GL (Fin n) R) (v : Fin n → R) :
    (a : Matrix (Fin n) (Fin n) R) *ᵥ (((a⁻¹ * g * a : GL (Fin n) R) : Matrix (Fin n) (Fin n) R) *ᵥ v) =
      (g : Matrix (Fin n) (Fin n) R) *ᵥ ((a : Matrix (Fin n) (Fin n) R) *ᵥ v) := by
  simp only [Matrix.mulVec_mulVec, Units.val_mul, ← mul_assoc, Units.mul_inv, one_mul]



theorem moved_keeps_std : ∀ {D : D7} {T : Type} {L : LevCh D T} {sc : Consts} {G : GridData L sc} {W : G.Weil} {U : Set T} (S : GridChoice W U) {t : T} (j : ℕ) (hj : j + 1 < D.R.m) (k : FinPt G (.grid (j + 1) D.R.m)), finG (G.V (.grid (j + 1) D.R.m)) k ∈ S.levRow t (j + 1) hj.le → ∀ v : Fin (G.V (.grid (j + 1) D.R.m)).rank → Formalism.IndefR.Lev.EAf D, (v ∈ Formalism.L2.Herm.hatL (F := D.host.F) (colLat (S.N.fr (.grid (j + 1) D.R.m))) ↔ Matrix.mulVec (Formalism.IndefR.Lev.finE (G.V (.grid (j + 1) D.R.m)) (moved S j k)).1 v ∈ Formalism.L2.Herm.hatL (F := D.host.F) (colLat (S.N.fr (.grid (j + 1) D.R.m)))) := by
  intro D T L sc G W U S t j hj k hk v
  have hD : DefNode D.R.m (.grid (j + 1) D.R.m) := ⟨hj.le, rfl⟩
  have hmax : finG (G.V (.grid (j + 1) D.R.m)) k ∈ G.levMax (.grid (j + 1) D.R.m) := by
    rw [← GlobalTheory.FunObj.GridChoice.levRow_succ_inf_UA W S t j hj.le]
    exact Subgroup.mem_inf.2 ⟨hk, GlobalTheory.LevSplit.finE_mem_UA _ _⟩
  rw [GridData.levMax, congLev_top] at hmax
  have hst := (Subgroup.mem_inf.1 hmax).2
  have e : Formalism.IndefR.Lev.finE (G.V (.grid (j + 1) D.R.m)) (moved S j k) =
      (Formalism.IndefR.Lev.finE (G.V (.grid (j + 1) D.R.m)) (S.N.u (.grid (j + 1) D.R.m)).1)⁻¹ * finG (G.V (.grid (j + 1) D.R.m)) k * Formalism.IndefR.Lev.finE (G.V (.grid (j + 1) D.R.m)) (S.N.u (.grid (j + 1) D.R.m)).1 := by
    rw [moved]
    simp only [Subgroup.coe_mul, Subgroup.coe_inv, map_mul, map_inv]
    rfl
  rw [S.N.u_lat _ hD v, S.N.u_lat _ hD, e, mulVec_conj_mulVec_eq]
  exact hst _

end GlobalTheory.RowVertexInv
