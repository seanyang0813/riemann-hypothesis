module

public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsDetInt
public import Development.AbelianVarietyTheory.Definitions.Divisors.BasePlaceNotMemChiGridBadPlaces
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsGivenStageEqOne
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
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.PairPtsClasses
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.PairPtsEqSum

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.ExpansionInvariance GlobalTheory.RowVertexInv GlobalTheory.SplitFlip
noncomputable section

namespace GlobalTheory.RowVacScalar

variable {D : D7} {T : Type} {L : LevCh D T} {sc : Consts}

def idemAt (w : Pl D.host.E) : AE D := Classical.epsilon fun e : AE D => Formalism.L2.NTheta.IsIdemAt e w


open Classical in
def detIdl (e : AE D) (V : HSp D) (g : GA D V) : (AE D)ˣ :=
  if he : e * e = e then GlobalTheory.VecInv.detAt e he V g else 1


open Classical in
theorem detIdl_val {e : AE D} (he : e * e = e) (V : HSp D) (g : GA D V) :
    ((detIdl e V g : (AE D)ˣ) : AE D) = e * (Formalism.L2.Theta.mt V g).det + (1 - e) := by
  rw [detIdl, dite_eq_left he]; rfl

def splitScal (G : GridData L sc) (p : Pair T) (w : Pl D.host.E) (g : GA D (G.pS p)) (h : GA D (G.pT p)) : ℂ :=
  ((splitFacO (G.chrS p) (G.chrT p) (detIdl (idemAt w) (G.pS p) g) (detIdl (idemAt w) (G.pT p) h) : Circle) : ℂ)

end GlobalTheory.RowVacScalar
