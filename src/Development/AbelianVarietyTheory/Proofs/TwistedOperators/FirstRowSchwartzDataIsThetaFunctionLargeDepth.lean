module

public import Development.AbelianVarietyTheory.Statements.HeckeThetaIntegrals.FormulaAt
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsThetaFunOOfThetaAt
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PtYAndItYOfPair
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
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.RangeSndRel

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.RowTest GlobalTheory.StdFrames GlobalTheory.RowClaim GlobalTheory.FlipRun

noncomputable section

namespace GlobalTheory.RowTheta

theorem isThetaFunO_cosVec {D : D7} {T : Type} {L : LevCh D T} {sc : Consts} {G : GridData L sc} (W : G.Weil)
    (i : ℕ) (hi : i < D.R.m) (κ : G.CosAt i) :
    IsThetaFunO W.ψ (G.pS (.chi i 0)) (G.pT (.chi i 0)) (W.cosVec i κ) := by
  obtain ⟨e, -, h⟩ := W.cosVec_is
  exact GlobalTheory.VecTheta.isThetaFunO_of_thetaAt W.ψ_std W.θ_is (h i hi κ) (W.vac_is i hi).2.2

theorem isThetaFunO_datum {D : D7} {T : Type} {L : LevCh D T} {sc : Consts} {G : GridData L sc} (W : G.Weil)
    (ρ : G.RealVec) (Φ : G.Datum) (i : Fin D.R.m) :
    IsThetaFunO W.ψ (G.pS (.chi i 0)) (G.pT (.chi i 0)) (W.datum ρ Φ i) :=
  GlobalTheory.Chain.InnerSteps.theta_pureTensorO W.ψ_std W.θ_is _ _ _ _ (isThetaFunO_cosVec W i i.2 (Φ i)) (ρ i)

end GlobalTheory.RowTheta

theorem GlobalTheory.RowTheta.rowDatum_isThetaFunO : GlobalTheory.RowClaim.Big fun {D} _ _ _ _ {_} _ _ _ _ _ {_} ch => ∀ (Φ : ch.G.Datum) (i : Fin D.R.m), IsThetaFunO ch.W.ψ (ch.G.pS (.chi i 0)) (ch.G.pT (.chi i 0)) (ch.W.datum ch.ρ Φ i) :=
  ⟨0, fun _ _ _ => ⟨0, fun _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ch _ _ Φ i =>
    GlobalTheory.RowTheta.isThetaFunO_datum ch.W ch.ρ Φ i⟩⟩

end
