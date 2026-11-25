module

public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.DetIdlVal
public import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.UnramifiedCharacter
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsGivenStageEqOne
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.WeilLatticeVacuumEqProdSplitPlaceFactors
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
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.PairPtsClasses
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.PairPtsEqSum

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.ExpansionInvariance GlobalTheory.RowVertexInv GlobalTheory.SplitFlip
open GlobalTheory.RowVacScalar

theorem _root_.GlobalTheory.T.weilLatticeVacuum_eq_prod_splitPlace_factors : ∀ {D : D7} {ψ : AddChar (AF D.host.F) ℂ} {S T : HSp D} {χS χT : (AE D)ˣ →* Circle}
    {om : GA D S × GA D T →* Module.End ℂ (WO S T → ℂ)}, IsWeilDatumO ψ S T χS χT om →
    ∀ {ΛS : Submodule (𝓞 D.host.E) (Fin S.rank → D.host.E)} {ΛT : Submodule (𝓞 D.host.E) (Fin T.rank → D.host.E)},
    IsSelfDualC S ΛS → IsSelfDualC T ΛT →
    ∀ (P : Finset (Pl D.host.E)), (∀ w ∈ P, Formalism.L2.NTheta.IsIdemAt (GlobalTheory.RowVacScalar.idemAt w) w) →
    Set.InjOn (fun w : Pl D.host.E => w.under (𝓞 D.host.F)) (P : Set (Pl D.host.E)) →
    (∀ v : HeightOneSpectrum (𝓞 D.host.F), (∀ w ∈ P, w.under (𝓞 D.host.F) ≠ v) →
      GlobalTheory.IndefiniteRowSideFullHecke.UnramifiedCharacter.CharUnramAt D χS v ∧ GlobalTheory.IndefiniteRowSideFullHecke.UnramifiedCharacter.CharUnramAt D χT v) →
    ∀ g ∈ GfC S, ∀ h ∈ GfC T,
    (∀ y, y ∈ latHat D.host.F D.host.E (ΛS : Set (Fin S.rank → D.host.E)) ↔
      ((Formalism.L2.Theta.mt S g).map (finPart D)).mulVec y ∈ latHat D.host.F D.host.E (ΛS : Set (Fin S.rank → D.host.E))) →
    (∀ y, y ∈ latHat D.host.F D.host.E (ΛT : Set (Fin T.rank → D.host.E)) ↔
      ((Formalism.L2.Theta.mt T h).map (finPart D)).mulVec y ∈ latHat D.host.F D.host.E (ΛT : Set (Fin T.rank → D.host.E))) →
    ∀ f : WO S T → ℂ, IsThetaFunO ψ S T f →
    IsLatVac (heisO ψ S T) (latO S T (ΛS : Set (Fin S.rank → D.host.E)) (ΛT : Set (Fin T.rank → D.host.E)) fun _ => True) f →
    om (g, h) f = (∏ w ∈ P, ((splitFacO χS χT (GlobalTheory.RowVacScalar.detIdl (GlobalTheory.RowVacScalar.idemAt w) S g)
      (GlobalTheory.RowVacScalar.detIdl (GlobalTheory.RowVacScalar.idemAt w) T h) : Circle) : ℂ)) • f := by
  first | exact @GlobalTheory.LatStabScalar.om_eq_prod_splitFac
