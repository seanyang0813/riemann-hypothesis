module

public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsIsGridFr
public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.UnitaryConjugation
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.BlkGLMem
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ThetaGridRouteKernelEqDetCharactersMulThetaKerne
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

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.IndefR.Links
open IsDedekindDomain NumberField MeasureTheory Matrix
open scoped TensorProduct
open GlobalTheory.FunObj GlobalTheory.ChiGrid GlobalTheory.SplitFlip GlobalTheory.SplitWeil GlobalTheory.StdFrames Formalism.L2.DIV
open GlobalTheory.RouteSeesaw GlobalTheory.ChainFr


theorem _root_.GlobalTheory.T.thetaGridRouteKernel_eq_detCharacters_mul_thetaKernel : ∀ {D : D7} {T : Type} {L : LevCh D T} {sc : Consts} {G : GridData L sc} {μ₀ : T}, L.Is μ₀ → ∀ (W : G.Weil) (t : T) (i j : Fin D.R.m)
    (ωA : GlobalTheory.Grid.WRep (G.V (.grid (↑i + 1) (↑j + 1))) (GlobalTheory.Doubling.hsum (G.V (.grid ↑i (↑j + 1))) (G.V (.grid (↑i + 1) ↑j)))),
    GlobalTheory.Grid.IsWeil W.ψ true _ _ (GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation.beta G i j) (GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation.beta G i j / GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation.alpha G t i j) ωA →
    ∀ (B : Frames G) (ρ : RealMatch W) (Θ : TotT G (routeBig t i j)) (Θ' : TotT G (routeSmall t i j)), IsMatched B t ρ i j Θ Θ' →
    ∀ g g₁ u, kerBig W Θ g g₁ u = GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation.xiV G i j g * GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation.xiV₁ G t i j g₁ *
      thetaKO ωA u (GlobalTheory.SquareComm.blk _ _ (g, g₁)) (GlobalTheory.SquareDict.datumA W Θ) := by
  first | exact @GlobalTheory.SquareDict.ExactBig.kerBig_eq
