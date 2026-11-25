module

public import Development.AbelianVarietyTheory.Statements.PlaceShiftStatements.SingleIndexPlacesAreTwisted
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.Realised
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.KernelSpanOverClasses
public import Formalism.LocalToGlobal.IndefiniteForms.IndefiniteTree.ONPage
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
noncomputable section
open NumberField IsDedekindDomain
open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.DIV.Cons Formalism.L2.Pj Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Indef.Tree Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Cx
open Formalism.IndefR.FWT GlobalTheory.BigTop GlobalTheory.OntoChain GlobalTheory.RealIndexBound GlobalTheory.OnTies
namespace GlobalTheory.BigOn
section Record
variable {D : D7} {N : NData D.R D.host D.what₂} {X : NTw D.R D.host D.what₂ D.LL0 N} (Y : NExp D.R D.host D.what₂ D.LL0 N X)
end Record
section Point
variable {D : D7} {L : SizeData₂ D} {hT : GatTies D} {Gi : Formalism.MainNotions.G.Inst D L} {Gl : Formalism.MainNotions.G.LatInst D} {Kc : Formalism.MainNotions.G.Consts}
  {Y : DivX D} {cX : ExtraC} {ex : Extra D L hT Gi Gl Kc Y cX} {Csz : ℝ} (p : PtAt ex Csz)
end Point
def AtPtsAlt (Q : ∀ {eps : ℝ} (Fm : FamP eps) (x : ℝ) (hx : Fm.x1 < x) (i : Fm.Ix x), Pt Fm x hx i → Prop) : Prop :=
  Closed FamHyp fun Fm _ => _root_.GlobalTheory.BigTop.EventuallyAtPoints Fm fun x hx i p => More p → Q Fm x hx i p
def ForallTwoRuns (Q : ∀ {eps : ℝ} (Fm : FamP eps) (x : ℝ) (hx : Fm.x1 < x) (i : Fm.Ix x) (p : Pt Fm x hx i) (r : TwoRuns p.T p.P.Gp),
    RunsOk (fw2 p) r → Prop) : Prop :=
  _root_.GlobalTheory.BigOn.AtPtsAlt fun Fm x hx i p => ∀ (r : TwoRuns p.T p.P.Gp) (h : RunsOk (fw2 p) r), OwnPin r → Q Fm x hx i p r h
def ForallRecordObjects (Q : ∀ {eps : ℝ} (Fm : FamP eps) (x : ℝ) (hx : Fm.x1 < x) (i : Fm.Ix x) (p : Pt Fm x hx i) (c : OnConst),
    Obj p c → Prop) : Prop :=
  Closed FamHyp fun Fm _ => ∃ c0 : ℝ, ∀ c : OnConst, c0 ≤ c.C → OnPage.ConstBad c →
    _root_.GlobalTheory.BigTop.EventuallyAtPoints Fm fun x hx i p => More p → ∀ (r : TwoRuns p.T p.P.Gp) (O : Obj p c), RecAt p (Fm.parT x hx i) r O → Q Fm x hx i p c O
def TwoRunsStatement : Prop := _root_.GlobalTheory.BigOn.AtPtsAlt fun _ _ _ _ p => ∃ r : TwoRuns p.T p.P.Gp, RunsOk (fw2 p) r ∧ OwnPin r
def RationalityStatement' : Prop := _root_.GlobalTheory.BigOn.AtPtsAlt fun _ _ _ _ p => TwistedRational (R2 p) (F2 p) fun _ => 1
def ExportedStatement : Prop := _root_.GlobalTheory.BigOn.AtPtsAlt fun Fm x hx i p => ∀ v ∈ p.R.twPl, ∀ j,
  GlobalTheory.TwistIndex.ExportTie p.P.A3.A (Fm.ex x hx i).nch (twE Fm x hx i) (R2 p) j (F2 p).P0 (F2 p).ψ0⁻¹ 1 v (ownAt (Fm.D x i) v)
def MaximalityStatement : Prop := _root_.GlobalTheory.BigOn.AtPtsAlt fun Fm x _ i p => ∀ v ∈ p.R.twPl, ∀ j,
  GlobalTheory.TraceClassRank.SpanOverClasses (R2 p) j (F2 p).P0 (F2 p).ψ0⁻¹ 1 v (ownAt (Fm.D x i) v)
def GeometricStatement' : Prop := _root_.GlobalTheory.BigOn.ForallRecordObjects fun _ _ _ _ p _ O => LeafSup O ∧ LeafSpan O ∧ LeafLemmaS O ∧ LeafData O ∧ HasIndexBound O ∧
  ∀ C CH, LeafDepthGood ((R2 p).num (F2 p) C CH) O ∧ LeafDepthRam ((R2 p).num (F2 p) C CH) O ∧
    LeafDepth2 ((R2 p).num (F2 p) C CH) O ∧ LeafDepthLevel ((R2 p).num (F2 p) C CH) O
def TwistStatement' : Prop := _root_.GlobalTheory.BigOn.ForallRecordObjects fun _ _ _ _ _ _ O => HasTwistBound O
def ShareStatement : Prop := _root_.GlobalTheory.BigOn.ForallRecordObjects fun _ _ _ _ _ _ O => LeafShareI O
def BadPlacesStatement : Prop := _root_.GlobalTheory.BigOn.ForallRecordObjects fun _ _ _ _ _ _ O => LeafBadShare O
def ExponentStatement : Prop := _root_.GlobalTheory.BigOn.ForallRecordObjects fun _ _ _ _ p _ O => ∀ C CH, HasExpBound ((R2 p).num (F2 p) C CH) O
def PageStatement : Prop := _root_.GlobalTheory.BigOn.ForallRecordObjects fun Fm x _ i p _ O => LeafPage O ∧ LeafSizes O ∧ LeafX O ∧ LeafBad O ∧
  LeafLevelSq O (Res (R2 p)) (Fm.D x i).R.f ∧ LeafYBound O ∧ O.b = (Fm.L x i).sc.b ∧ 0 ≤ p.Z.E1u ∧
    ∀ C CH, ErrorConstantMatchesDefinition ((R2 p).num (F2 p) C CH) O C
def SurjectiveOntoX : Prop := Closed FamHyp fun Fm CH => DIVinN Fm →
  ∃ C0 : ℝ, 0 ≤ C0 ∧ _root_.GlobalTheory.BigTop.EventuallyAtPoints Fm fun _ _ _ p => More p → ∀ C, C0 ≤ C → (p.S false).ON (p.N C CH)
section Checks
section Cell
end Cell
end Checks
end GlobalTheory.BigOn
end
end
