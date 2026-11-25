module

public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsLevMeas
public import Development.AbelianVarietyTheory.Definitions.Foundations.MatrixMeasurableSpace
public import Formalism.LocalToGlobal.IndefiniteReal.DatumVec
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MatrixMeasureTopBlockIntegralGLMaxIdeal
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.MeasurableSetTwistPlaceChainStepDatumMatrixSuppoStatement
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.SplitProjectionUnderEqResidueCardEqAbsNorm
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.TwistPlaceChainStepDatumMemSchwartzBruhatStatement
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.TwistPlaceChainStepDatumMulConjEqIndicatorStatement
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.TwistPlaceChainStepDatumSupportEqValuativeStatement
public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.RealLowestKTypeCoeffSquareIntegrable
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
import Mathlib.Tactic.Linter.HaveILetI
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
import Mathlib.Topology.Sheaves.Init

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum
open scoped TensorProduct InnerProductSpace ComplexConjugate
open GlobalTheory.ChainOnto GlobalTheory.ChainTw
open GlobalTheory.IndefiniteRowSideFullHecke.RestrictedTensorSplitting (SplitProj IsProjAt IsIdemOf LiftsChar rdA grpCo frCo gAt)
open GlobalTheory.IndefiniteRowSideFullHecke.VolumeFlatSection (Blocks parahoric datum)
open GlobalTheory.LiftRows (Given)
open GlobalTheory.IndefiniteRowSideFullHecke.RestrictedTensorSplitting (FinPl IsBase onHalf phiQ rdQ)

noncomputable section

namespace GlobalTheory.NrmVol

theorem phiQ_ip : ∀ (D : D7) (PP : Pl D.host.E) (v : FinPl D) (φ : SplitProj D v), IsProjAt φ PP → ∀ (a b r : ℕ), r ≤ a → r ≤ b → ∀ (ξ : (kP PP)ˣ →* ℂˣ) (mu : (Fv D.host.F v)ˣ →* ℂˣ), LiftsChar φ PP mu ξ → ∀ ν : Measure (Fv D.host.F v), ν.IsAddHaarMeasure → GlobalTheory.SplitWeil.ip ν (phiQ (a := a) (b := b) v r mu) (phiQ (a := a) (b := b) v r mu) = (((GlobalTheory.SplitWeil.volM ν (Fin b) (Fin a) {y | ∀ i j, Valued.v (y i j) ≤ 1}).toReal * (zinv PP 0 r * ((Ideal.absNorm PP.asIdeal : ℝ) ^ (r * (b - r)))⁻¹) : ℝ) : ℂ) ∧ phiQ (a := a) (b := b) v r mu ∈ GlobalTheory.SplitWeil.SB (Matrix (Fin b) (Fin a) (Fv D.host.F v)) := by
  intro D PP v φ hP a b r hra hrb ξ mu hL ν hν
  haveI : BorelSpace (Fv D.host.F v) := ⟨rfl⟩
  refine ⟨?_, GlobalTheory.T.twistPlaceChainStepDatum_mem_schwartzBruhat D PP v φ hP a b r ξ mu hL⟩
  have h1 := GlobalTheory.T.twistPlaceChainStepDatum_mul_conj_eq_indicator D PP v φ hP a b r ξ mu hL
  have h3 := GlobalTheory.T.measurableSet_twistPlaceChainStepDatumMatrixSupport D v a b r
  obtain ⟨e1, e2⟩ := GlobalTheory.T.twistPlaceChainStepDatumSupport_eq_valuative D v a b r
  have h4 := _root_.GlobalTheory.RectBlockVolume.vol_topBlock_KO (Fv D.host.F v) ν hν a b r hra hrb
  rw [← e1, ← e2, (GlobalTheory.PlaceProjAt.under_resCard D v φ PP hP).2] at h4
  unfold GlobalTheory.SplitWeil.ip
  simp_rw [h1]
  rw [integral_indicator_const _ h3, Measure.real, h4, zinv]
  simp

end GlobalTheory.NrmVol
