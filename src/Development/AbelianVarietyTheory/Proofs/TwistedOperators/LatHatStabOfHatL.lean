module

public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.PairPtsEqSum
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ConjugatedLevelElementKeepsStandardLattice
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.SplitPlaceColumnMemCompletedLatticeIffFrameInteg
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
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.DetIdlVal

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.ExpansionInvariance GlobalTheory.RowVertexInv GlobalTheory.SplitFlip
open GlobalTheory.RowVacScalar

noncomputable section

open scoped TensorProduct

namespace GlobalTheory.RowMovedLat

open Matrix

variable {D : D7}

theorem negGA_mem_GfC (V : HSp D) {g : GA D V} (hg : g ∈ GfC V) : negGA V g ∈ GfC (negSp V) := by
  have e : matHom (negSp V) (negGA V g) = matHom V g := Units.ext (mt_negGA V g)
  simp only [GfC, MonoidHom.mem_ker, infHom, MonoidHom.comp_apply] at hg ⊢
  rw [e]
  exact hg

theorem latHat_stab_of_hatL (V : HSp D) (g : GA D V) (Λ : Submodule (𝓞 D.host.E) (Fin V.rank → D.host.E))
    (h : ∀ z, z ∈ Formalism.L2.Herm.hatL (F := D.host.F) Λ ↔
      (Formalism.IndefR.Lev.finE V g).val *ᵥ z ∈ Formalism.L2.Herm.hatL (F := D.host.F) Λ)
    (y : Fin V.rank → Af D.host.F ⊗[D.host.F] D.host.E) :
    y ∈ latHat D.host.F D.host.E (Λ : Set (Fin V.rank → D.host.E)) ↔
      ((Formalism.L2.Theta.mt V g).map (finPart D)).mulVec y ∈ latHat D.host.F D.host.E (Λ : Set (Fin V.rank → D.host.E)) := by
  have key : (fun i => Algebra.TensorProduct.comm D.host.F (Af D.host.F) D.host.E
      ((((Formalism.L2.Theta.mt V g).map (finPart D)).mulVec y) i)) =
      (Formalism.IndefR.Lev.finE V g).val *ᵥ (fun i => Algebra.TensorProduct.comm D.host.F (Af D.host.F) D.host.E (y i)) := by
    have hf : (Formalism.IndefR.Lev.finE V g).val = ((Formalism.L2.Theta.mt V g).map (finPart D)).map (Formalism.IndefR.Lev.swapAE D) := by
      ext i j
      rfl
    rw [hf]
    ext i
    exact RingHom.map_mulVec (Formalism.IndefR.Lev.swapAE D) _ y i
  refine (GlobalTheory.SplitFrameColumn.latHat_iff_hatL Λ y).trans ((h _).trans ?_)
  refine Iff.symm ((GlobalTheory.SplitFrameColumn.latHat_iff_hatL Λ _).trans ?_)
  exact Iff.of_eq (congrArg (· ∈ Formalism.L2.Herm.hatL (F := D.host.F) Λ) key)

end GlobalTheory.RowMovedLat

namespace GlobalTheory.RowMovedLat

theorem moved_pair_stab : ∀ {D : D7} {T : Type} {L : LevCh D T} {sc : Consts} {G : GridData L sc} {W : G.Weil} {U : Set T}
    (S : GridChoice W U) {t : T}, t ∈ U → ∀ (j : ℕ) (hj : j + 1 < D.R.m) (k : FinPt G (.grid (j + 1) D.R.m)),
    finG (G.V (.grid (j + 1) D.R.m)) k ∈ S.levRow t (j + 1) hj.le →
    (G.toPair (.chi j D.R.m) 1 (moved S j k)).1 ∈ GfC (G.pS (.chi j D.R.m)) ∧
    (∀ y, y ∈ latHat D.host.F D.host.E (S.N.latS (.chi j D.R.m) : Set (Fin (G.pS (.chi j D.R.m)).rank → D.host.E)) ↔
      ((Formalism.L2.Theta.mt _ (G.toPair (.chi j D.R.m) 1 (moved S j k)).1).map (finPart D)).mulVec y ∈
        latHat D.host.F D.host.E (S.N.latS (.chi j D.R.m) : Set (Fin (G.pS (.chi j D.R.m)).rank → D.host.E))) ∧
    (G.toPair (.chi (j + 1) D.R.m) (moved S j k) 1).2 ∈ GfC (G.pT (.chi (j + 1) D.R.m)) ∧
    (∀ y, y ∈ latHat D.host.F D.host.E (S.N.latT (.chi (j + 1) D.R.m) : Set (Fin (G.pT (.chi (j + 1) D.R.m)).rank → D.host.E)) ↔
      ((Formalism.L2.Theta.mt _ (G.toPair (.chi (j + 1) D.R.m) (moved S j k) 1).2).map (finPart D)).mulVec y ∈
        latHat D.host.F D.host.E (S.N.latT (.chi (j + 1) D.R.m) : Set (Fin (G.pT (.chi (j + 1) D.R.m)).rank → D.host.E))) := by
  intro D T L sc G W U S t _ j hj k hk
  have hG : moved S j k ∈ GfC (G.V (.grid (j + 1) D.R.m)) :=
    (((S.N.u (.grid (j + 1) D.R.m))⁻¹ * k * S.N.u (.grid (j + 1) D.R.m) : FinPt G (.grid (j + 1) D.R.m))).2
  have hst := latHat_stab_of_hatL _ (moved S j k) _ (moved_keeps_std S j hj k hk)
  exact ⟨negGA_mem_GfC _ hG, hst, hG, hst⟩

end GlobalTheory.RowMovedLat

end
