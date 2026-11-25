module

public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.UnitaryConjugation
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsNotRelZero
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
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLagrModelOfIsLin

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory Matrix
open scoped TensorProduct GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
open GlobalTheory.FunObj GlobalTheory.ChiGrid GlobalTheory.SplitFlip GlobalTheory.SplitWeil GlobalTheory.StdFrames GlobalTheory.BigNZ GlobalTheory.AdelicU
open GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation (spV spW spW₁ spV₁ Num IsTripleOf IsDatumA skewGram blkU conjU UB)
open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels (Base Spc Model Chars Rep IsTriple UAt ratU mat Acts SInf)

noncomputable section

namespace GlobalTheory.SquareFlipReach

variable {D : D7} {T : Type} {L : LevCh D T} {sc : Consts} {G : GridData L sc}

def rowE (t : T) (w : Pl D.host.E) (i j : Fin D.R.m) :
    Fin ((locGrid G t w).rank (i + 1, j + 1)) ≃ Fin (spW G i j).rank :=
  finCongr (rank_vertex G t w (X := ((i : ℕ) + 1, (j : ℕ) + 1)) ⟨i.2, j.2⟩)

def colE (t : T) (w : Pl D.host.E) {i j : Fin D.R.m} (e : Num G i j) :
    (locGrid G t w).Cols i j ≃ Fin ((spW G i j).rank + (spW₁ G i j).rank) :=
  (Equiv.sumCongr (finCongr (rank_vertex G t w (X := ((i : ℕ), (j : ℕ) + 1)) ⟨i.2.le, j.2⟩))
    (finCongr (rank_vertex G t w (X := ((i : ℕ) + 1, (j : ℕ))) ⟨i.2, j.2.le⟩))).trans e

def trA (t : T) {w : Pl D.host.E} {v : Pl D.host.F} (hv : w.under (𝓞 D.host.F) = v) {i j : Fin D.R.m} (e : Num G i j)
    (Z : Matrix (Fin (spW G i j).rank) (Fin ((spW G i j).rank + (spW₁ G i j).rank)) (Fv D.host.F v)) :
    Matrix (Fin ((locGrid G t w).rank (i + 1, j + 1))) ((locGrid G t w).Cols i j) (Kw w) :=
  Matrix.of fun r c => GlobalTheory.LFun.complMap hv (Z (rowE t w i j r) (colE t w e c))

def sqCore (W : G.Weil) (t : T) (i j : ℕ) (w : Pl D.host.E) (n : ℕ)
    (Φ : Matrix (Fin ((locGrid G t w).rank (i, j))) ((locGrid G t w).Cols i j) (Kw w) → ℂ) :
    Matrix (Fin ((locGrid G t w).rank (i + 1, j + 1))) ((locGrid G t w).Cols i j) (Kw w) → ℂ :=
  phiA (haarVol ((givenLevel G t w (i, j)).map invT)) (stdSplit ((locGrid G t w).rank_square i j)) ((locGrid G t w).nu i j)
    (unifAt w) n (blockLat (unifAt w) n (Assignment.one.block _ _))
    (fourierSum (psiAt W w) (unifAt w) n (Assignment.one.block _ _) Φ)

theorem flipAt_eq (W : G.Weil) (t : T) (i j : ℕ) (w : Pl D.host.E) (n : ℕ)
    (Φ : Matrix (Fin ((locGrid G t w).rank (i, j))) ((locGrid G t w).Cols i j) (Kw w) → ℂ) :
    flipAt W t i j w n Φ = invFourierSum (psiAt W w)⁻¹ (unifAt w) n (Assignment.one.block _ _)ᶜ (sqCore W t i j w n Φ) := rfl

end GlobalTheory.SquareFlipReach

end
