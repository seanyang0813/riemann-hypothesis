module

public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.HodgeBundleWeights.Hypotheses2
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.CanonicalOfAbelianDeRham
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ExistsAlgClosedBaseChange
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.FormalAlgebraisation
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.GeometricallyConnectedOfIsIsoRestrict
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.InjectiveOfSmulMemRange
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsLogCanonicalMultipleCanonical
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsMultiHomogeneousFixFirstBlock
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.KawamataViehweg
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.ResidueDegreeOfIsClosedImmersion
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.SerreHolomorphicSections
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.SmallSecTensTriv
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.TopSelfEqLengthOfSmooth
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

@[expose] public section

section
namespace GlobalTheory.CovTop
structure PublishedHodgeBundleTheorems : Prop where
  p1 : GlobalTheory.Published.ToroidalCompactification
  p4 : GlobalTheory.Published.ArCalc
  p5 : GlobalTheory.Published.AbelianDeRham
  p8 : GlobalTheory.Published.RayClassFieldSt
  p16 : GlobalTheory.Published.GoodChernWeil
  p22 : GlobalTheory.Published.SemiAbelianHomExtension
  q1 : GlobalTheory.Published.GrothendieckMessing
  q4 : GlobalTheory.Published.PrismaticDieudonneHodge
  q6 : GlobalTheory.Published.KawamataViehweg
  q7 : GlobalTheory.Published.NefNumerics
  q9 : GlobalTheory.Published.ArithHilbertSamuel
  q11 : GlobalTheory.Published.CycleHeights
  q15 : GlobalTheory.Published.NadelVanishingAndNonKltDivisor
  q16 : GlobalTheory.Published.Principalisation
  q18 : GlobalTheory.Published.FormalAlgebraisation
theorem PublishedHodgeBundleTheorems.p18 (_h : _root_.GlobalTheory.CovTop.PublishedHodgeBundleTheorems) : GlobalTheory.Published.FinitenessOfHermitianClasses := GlobalTheory.Published.finitenessOfHermitianClasses_holds
theorem PublishedHodgeBundleTheorems.toClassicalTheoremsOf (h : _root_.GlobalTheory.CovTop.PublishedHodgeBundleTheorems) (hM : GlobalTheory.Published.GoodChernWeil → GlobalTheory.Published.MumfordProportionality) : _root_.GlobalTheory.CovTop.Hypotheses'' := by
  have hM' := hM h.p16
  refine ⟨h.p1, h.p4, h.p5, h.p8, ?_, h.p18, h.p22⟩
  first
    | exact hM'
end GlobalTheory.CovTop
end
