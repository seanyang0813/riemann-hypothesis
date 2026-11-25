module

public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ThetaChr
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.NormChoiceOfExtension
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.LayerTwoFamilyClass
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.HostPins
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.MovedReadingSameMapsBaseReadingAgrees
public import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ColNorm
public import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.HasPartAnd
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
namespace GlobalTheory.Mem.Top.Bl
open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.Inhab Formalism.L2.Host GlobalTheory.EX GlobalTheory.EX.OB GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top.GroupRetwisting NumberField IsDedekindDomain
structure Parameters (hL : _root_.UpperTheory.Zero.LLC.RecTExists) : Type 2 where
  R : RPosition
  N : _root_.GlobalTheory.Mem.Top.Bl.NormChoiceExtension hL
  S : SExt
variable {hL : _root_.UpperTheory.Zero.LLC.RecTExists}
@[reducible] def Parameters.s (p : _root_.GlobalTheory.Mem.Top.Bl.Parameters hL) : Slots := ⟨p.R, _root_.GlobalTheory.Mem.Top.Bl.normChoiceOfExtension hL p.N, SXE p.S, OX⟩
def WPt.core_data_of_point {p : _root_.GlobalTheory.Mem.Top.Bl.Parameters hL} {K : Ctx} (q : WPt p.s K) : _root_.GlobalTheory.Mem.Top.Bl.NormChoiceCore hL q.x.what₂ q.x.n := q.x.nx.1
structure SpectralDataCompatible {p : _root_.GlobalTheory.Mem.Top.Bl.Parameters hL} {K : Ctx} (q : WPt p.s K) (S : _root_.Formalism.L2.TiedDataSAlt q.O.ex) : Prop where
  cols : S.cols = q.x.col.C
  full : HEq S.full q.x.col.full
  theta : (⟨S.provA, S.theta⟩ : Σ a, Formalism.L2.Theta.AllTied (q.w.D q.Z) q.O.ex.th a) = ⟨q.x.th.provA, q.x.th.all⟩
  chr : (⟨S.n.cf, S.n.tp⟩ : Σ c : CharFrame (q.w.D q.Z), TupTied (q.w.D q.Z) c q.O.ex.nch) = ⟨TC.cf q.w.I q.w.l q.Z, q.x.n.tp⟩
  gal : S.n.gal = q.core_data_of_point.a.all.gal
  dt : ∀ a, S.chrDt.eDt a = (QuotientGroup.mk a : GlobalTheory.Mem.Col2.DtQ q.B.host q.w.I.SQ)
  tw : ∃ he : q.O.ex.tw = q.w.tw q.Z, TC.StdTw q.w.I q.w.l q.Z q.w.l0 (he ▸ S.tw)
abbrev BoundaryReciprocity : GlobalTheory.Fc.BdT := fun _ O _ => _root_.Formalism.L2.RecTAlt O.ex
structure RecordCompatible {p : _root_.GlobalTheory.Mem.Top.Bl.Parameters hL} {K : Ctx} (q : WPt p.s K) (R : _root_.Formalism.L2.RecTAlt q.O.ex) : Prop where
  s : _root_.GlobalTheory.Mem.Top.Bl.SpectralDataCompatible q R.T.toTiedDataS
  k : KPin q R.T.ker
  crd : ∀ u i hi, R.T.crd u i hi = 1
variable {B : Base} {f : Fr B.toPre} {T : TwDat B}
structure RecordCompatibleExtended {p : _root_.GlobalTheory.Mem.Top.Bl.Parameters hL} {K : Ctx} (q : WPt p.s K) (R : _root_.Formalism.L2.RecTAlt q.O.ex) : Prop extends toRecPin : _root_.GlobalTheory.Mem.Top.Bl.RecordCompatible q R where
  entC : EntC q.x.ker
  std : GlobalTheory.Svd.StdAt q.w.I q.w.l q.w.l0 q.Z q.O R.T.ker
  rd : GlobalTheory.Pdv.StdRd q.w.I q.w.l q.Z R.T.ker
def ReciprocityLinkage (p : _root_.GlobalTheory.Mem.Top.Bl.Parameters hL) : GlobalTheory.Fc.LkT _root_.GlobalTheory.Mem.Top.Bl.BoundaryReciprocity := linkOf (𝒮 := p.s) (Bd := _root_.GlobalTheory.Mem.Top.Bl.BoundaryReciprocity) fun _ q _ R => _root_.GlobalTheory.Mem.Top.Bl.RecordCompatibleExtended (p := p) q R
@[reducible] def parametersOfExtension (N : _root_.GlobalTheory.Mem.Top.Bl.NormChoiceExtension hL) (S : SExt) : _root_.GlobalTheory.Mem.Top.Bl.Parameters hL := ⟨RX, N, S⟩
end GlobalTheory.Mem.Top.Bl
end
end
