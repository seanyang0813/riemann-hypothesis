module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FullHeckeRealDatMovedReadings
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.Realised
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ToRatHyp0
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSmulNonnegOfSpan
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FinrankLeOfAntilinear
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.JEvExistsAndJEvBar
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
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
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Development.AbelianVarietyTheory.Definitions.Divisors.LevelOfOfSameBut

@[expose] public section



section
open NumberField IsDedekindDomain
open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.DIV.Cons Formalism.L2.Pj Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Indef.Tree Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Cx
open Formalism.IndefR.FWT GlobalTheory.BigTop GlobalTheory.OntoChain GlobalTheory.RealIndexBound GlobalTheory.OnTies GlobalTheory.SeriesTie GlobalTheory.BigOn GlobalTheory.BigOn.Exp
open GlobalTheory.RealGeo GlobalTheory.Unframe GlobalTheory.UnframePt
noncomputable section
theorem GlobalTheory.UnframePt.inGeo_geoHalf_of_ratHyp0 : GlobalTheory.Published.CuspRapidDecay → ∀ {eps : ℝ} (Fm : FamP eps) (x : ℝ) (hx : Fm.x1 < x)
    (i : Fm.Ix x) (p : Pt Fm x hx i), p.PointConditions' → More p → ∀ (t : (Fm.D x i).ntw.Tw) (j : Fin (Fm.D x i).R.m),
    RatHyp0 p.T p.R (F2 p) p.κ p.v₀ p.O t j → InGeo (geoHalf p) := by
  intro hDec eps Fm x hx i p hR _hM t j h0
  have hJ : JEvExists p.T p.R.toRealDat p.κ p.v₀ :=
    GlobalTheory.ConjReading.jEvExists p.T p.R.toRealDat p.κ p.v₀ p.O h0.core.lev h0.core.models p.fw p.pins
  exact
    { jEvExists := hJ
      jEvBar := hR.jEvBar
      evInj := hR.evInj
      jUnif := GlobalTheory.ReadingSpan.jUnif hDec _ _ _ _ _ p.T p.R.toRealDat p.κ p.v₀ h0.core.lev h0.core.models h0.tieIn
        hR.ties.pb hJ hR.jEvBar hR.evInj h0.size
      geoAct := hR.geoAct
      latFull := GlobalTheory.IntCuspLat.latFull_of_tie p.fw
      dimMatch := p.fw.dimMatch }
end
end
