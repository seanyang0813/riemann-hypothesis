module

public import Development.AbelianVarietyTheory.Definitions.HeightFunctions.OntoAlong
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.NormChoiceOfExtension
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
open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Pj Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links
open Formalism.L2.Host (CharFrame HChar TupTied)
open GlobalTheory.AtMember GlobalTheory.EX GlobalTheory.EX.OB GlobalTheory.Mem GlobalTheory.Mem.Top GlobalTheory.Mem.Top.Bl GlobalTheory.Fc GlobalTheory.BigTop GlobalTheory.BigOn GlobalTheory.Plug
namespace GlobalTheory.PlugPt
namespace Side
variable {D : D7} {nch : NChoice D} (s : Side D nch)
end Side
section Wit
variable {K : Ctx} {B : Base} {f : Fr B.toPre} {T : TwDat B} {w : ColW B f T} {Z : w.Lt} {Wt : Set B.places.Pl} {p0 : BaseLevelRowSide (w.D Z)}
def sideOf_alt {hL : _root_.UpperTheory.Zero.LLC.RecTExists} (t : RowsT K w Z Wt p0) {nch : NChoice (w.D Z)} (n : NchT w Z Wt nch)
    (c : _root_.GlobalTheory.Mem.Top.Bl.NormChoiceCore hL t n) : Side (w.st Z).toD7 nch :=
  { G := _, Pl0 := _, I0 := _, T := _, A3 := _, J := t.r.z.core, R := t.r.z.R, P0 := t.r.z.F.P0, ψ0 := t.r.z.F.ψ0, cG := t.r.z.cG,
    v₀ := t.r.z.geo.v₀, S := _, YS := c.row.nexp, cf := GlobalTheory.Mem.Col2.TC.cf w.I w.l Z, tp := n.tp }
end Wit
def ExponentialNormChoice (hL : _root_.UpperTheory.Zero.LLC.RecTExists) : _root_.GlobalTheory.Mem.Top.Bl.NormChoiceExtension hL := fun _ _ _ _ _ _ _ _ t _ n xd c =>
  PLift ((_root_.GlobalTheory.PlugPt.sideOf_alt t n c).Export xd) × PUnit.{2}
structure ExtensionReading (hL : _root_.UpperTheory.Zero.LLC.RecTExists) (𝒮 : Slots) : Type 2 where
  rd : ∀ (K : Ctx) (B : Base) (f : Fr B.toPre) (T : TwDat B) (w : ColW B f T) (Z : w.Lt) (Wt : Set B.places.Pl) (p0 : BaseLevelRowSide (w.D Z))
    (t : RowsT K w Z Wt p0) (nch : NChoice (w.D Z)) (n : NchT w Z Wt nch) (xd : ThData (w.D Z)),
    𝒮.Nx K B f T w Z Wt p0 t nch n xd → _root_.GlobalTheory.Mem.Top.Bl.normChoiceOfExtension hL (_root_.GlobalTheory.PlugPt.ExponentialNormChoice hL) K B f T w Z Wt p0 t nch n xd
def HasExponent' {hL : _root_.UpperTheory.Zero.LLC.RecTExists} (E : _root_.GlobalTheory.Mem.Top.Bl.NormChoiceExtension hL) : Prop :=
  ∀ K B f T w Z Wt p0 t nch n xd c, E K B f T w Z Wt p0 t nch n xd c → Nonempty (_root_.GlobalTheory.PlugPt.ExponentialNormChoice hL K B f T w Z Wt p0 t nch n xd c)
def ExtensionReading.of {hL : _root_.UpperTheory.Zero.LLC.RecTExists} (Rx : RPosition) {E : _root_.GlobalTheory.Mem.Top.Bl.NormChoiceExtension hL} (h : _root_.GlobalTheory.PlugPt.HasExponent' E) (Sx : SPosition) (Ox : OComponent₂) :
    _root_.GlobalTheory.PlugPt.ExtensionReading hL ⟨Rx, _root_.GlobalTheory.Mem.Top.Bl.normChoiceOfExtension hL E, Sx, Ox⟩ :=
  ⟨fun _ _ _ _ _ _ _ _ _ _ _ _ y => ⟨y.1, Classical.choice (h _ _ _ _ _ _ _ _ _ _ _ _ _ y.2)⟩⟩
variable {hL : _root_.UpperTheory.Zero.LLC.RecTExists} {𝒮 : Slots}
def sideOfWeightedPoint (ν : _root_.GlobalTheory.PlugPt.ExtensionReading hL 𝒮) {K : Ctx} (p : WPt 𝒮 K) : Side (p.w.D p.Z) p.O.ex.nch :=
  _root_.GlobalTheory.PlugPt.sideOf_alt p.x.what₂ p.x.n (ν.rd _ _ _ _ _ _ _ _ _ _ _ _ p.x.nx).1
def pinnedPointOfReading (ν : _root_.GlobalTheory.PlugPt.ExtensionReading hL 𝒮) : PinT 𝒮 BdPt := fun _ p _ b => ∃ kap lam err, sidePt b = (_root_.GlobalTheory.PlugPt.sideOfWeightedPoint ν p).upd kap lam err
end GlobalTheory.PlugPt
end
end
