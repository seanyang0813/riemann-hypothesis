module

public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.PairPtsEqSum
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

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.ExpansionInvariance GlobalTheory.RowVertexInv

noncomputable section

namespace GlobalTheory.RowVertexInv

variable {D : D7} {T : Type} {L : LevCh D T} {sc : Consts} {G : GridData L sc} {W : G.Weil} {U : Set T}

def fnOf {t : T} (d : PureDat G t) : ∀ a, FactorFn G t a
  | .inl j => (d.1 j).fn
  | .inr i => (d.2 i).fn

def movFn (S : GridChoice W U) {t : T} (j : ℕ) (hj : j + 1 < D.R.m) (k : FinPt G (.grid (j + 1) D.R.m))
    (v : ∀ a, FactorFn G t a) : ∀ a, FactorFn G t a :=
  Function.update
    (Function.update v (.inr ⟨j, by omega⟩)
      (fun x => v (.inr ⟨j, by omega⟩)
        (actO _ _ (G.toPair (.chi j D.R.m) 1 (moved S j k))⁻¹.1 (G.toPair (.chi j D.R.m) 1 (moved S j k))⁻¹.2 x) :
        FactorFn G t (.inr ⟨j, by omega⟩)))
    (.inr ⟨j + 1, hj⟩)
    (fun x => v (.inr ⟨j + 1, hj⟩)
        (actO _ _ (G.toPair (.chi (j + 1) D.R.m) (moved S j k) 1)⁻¹.1 (G.toPair (.chi (j + 1) D.R.m) (moved S j k) 1)⁻¹.2 x) :
        FactorFn G t (.inr ⟨j + 1, hj⟩))

def scaleAt (j : ℕ) (hj : j + 1 < D.R.m) (c₁ c₂ : ℂ) : Fin D.R.m ⊕ Fin D.R.m → ℂ :=
  Function.update (Function.update (fun _ => 1) (.inr ⟨j, by omega⟩) c₁) (.inr ⟨j + 1, hj⟩) c₂

end GlobalTheory.RowVertexInv
