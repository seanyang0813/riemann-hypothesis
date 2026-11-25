module

public import Formalism.LocalToGlobal.SelSide
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.LayerTwoFamilyClass
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.IndefRRealRec
public import Formalism.LocalToGlobal.UnitaryNorms.CharTransport
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.TwArgs
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.CoreAltAltBis
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.ToSTiesR
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.RealRecOf
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.DIVColPins
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.ServTIff
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
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.SelSidePq, Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.SelSideRT, Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.TwistedBundle

-- ===== clump member: Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.SelSidePq =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.SelSidePq", "h": "module\n\npublic import Formalism.LocalToGlobal.SelSide\npublic import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.LayerTwoFamilyClass\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section



section
noncomputable section
open Formalism.BasicNotions Formalism.MainNotions NumberField IsDedekindDomain
open scoped TensorProduct
namespace Formalism.L2
namespace SelJ
variable {D : D7} {X : Col.Fields}
end SelJ
section
variable {D : D7} {L : SizeData₂ D} {hT : GatTies D} {Gi : MainNotions.G.Inst D L} {Gl : MainNotions.G.LatInst D} {K : MainNotions.G.Consts} {Y : DivX D}
  {cX : ExtraC} {ex : Extra D L hT Gi Gl K Y cX}
def SelInAlt (R : _root_.Formalism.L2.RecTAlt ex) (Side : Set (HeightOneSpectrum (𝓞 D.host.E))) : Prop :=
  ∀ μ, ∀ P ∈ Col.QE R.T.ker.sel (R.T.ker.tup μ : DIV.Chr R.T.ker.X.F R.T.ker.X.E R.T.ker.X.K),
    ∀ P', SelJ.Carried R.T.ker.seam P P' → P' ∈ Side
def SelectedSideOfPrimeAbove (R : _root_.Formalism.L2.RecTAlt ex)
    (Pq : HeightOneSpectrum (𝓞 (maximalRealSubfield D.host.E)) → HeightOneSpectrum (𝓞 D.host.E)) : Prop :=
  (∀ v, NG.OverPl (Pq v) v) ∧ _root_.Formalism.L2.SelInAlt R (Set.range Pq)
end
end Formalism.L2
end
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.SelSidePq =====

-- ===== clump member: Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.SelSideRT =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.SelSideRT", "h": "module\n\npublic import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.IndefRRealRec\npublic import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.SelSidePq\npublic import Formalism.LocalToGlobal.UnitaryNorms.CharTransport\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section



section
noncomputable section
open Formalism.BasicNotions Formalism.MainNotions NumberField IsDedekindDomain
namespace Formalism.L2
section
variable {D : D7} {L : SizeData₂ D} {hT : GatTies D} {Gi : MainNotions.G.Inst D L} {Gl : MainNotions.G.LatInst D} {K : MainNotions.G.Consts} {Y : DivX D}
  {cX : ExtraC} {ex : Extra D L hT Gi Gl K Y cX}
open Classical in
structure SelectedSideOfRealRecord (R : _root_.Formalism.L2.RecTAlt ex) (P : Rows.RowSideFamily ex)
    {Dcf : ∀ Zs : Indef.DefSub P.A3.fam3.amb3, Indef.DefCols (P.A3.side3 P.Ps P.ψs Zs)}
    {Spf : ∀ Zs : Indef.DefSub P.A3.fam3.amb3, Indef.SPer (Dcf Zs)}
    {Zscf : Indef.DefSub P.A3.fam3.amb3 → Indef.IndefScale P.A3.fam3.base3}
    {S : _root_.Formalism.L2.SG.SpectralTiesReal.STiesRAlt R} {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL]
    (RT : _root_.Formalism.IndefR.IndefiniteRealisation R P Dcf Spf Zscf S Ks) (Qr : _root_.Formalism.IndefR.IndefiniteRealisationRecursion RT) (hd : _root_.Formalism.L2.HostDatumWithTies R.T.toTiedDataS)
    (Pq : HeightOneSpectrum (𝓞 (maximalRealSubfield D.host.E)) → HeightOneSpectrum (𝓞 D.host.E)) : Prop where
end
end Formalism.L2
end
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.SelSideRT =====

-- ===== clump member: Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.TwistedBundle =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.TwistedBundle", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.TwArgs\npublic import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.CoreAltAltBis\npublic import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.ToSTiesR\npublic import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.RealRecOf\npublic import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.SelSideRT\npublic import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.DIVColPins\npublic import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.ServTIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section



section
noncomputable section
namespace GlobalTheory.Mem.Top.Bl
open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.Inhab Formalism.L2.Host GlobalTheory.EX GlobalTheory.EX.OB GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top.GroupRetwisting NumberField IsDedekindDomain
attribute [local instance] Formalism.BasicNotions.Host.cmStar
section Pack
open Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links
set_option genInjectivity false in
set_option genSizeOfSpec false in
structure RealPackage {D : D7} {O : Obj D} (R : _root_.Formalism.L2.RecTAlt O.ex) (S : _root_.Formalism.L2.SG.SpectralTiesReal.STiesRAlt R) : Type 1 where
  P : RowSideFamily O.ex
  Dc : ∀ Zs : DefSub P.A3.fam3.amb3, DefCols (P.A3.side3 P.Ps P.ψs Zs)
  Sp : ∀ Zs, SPer (Dc Zs)
  Zsc : DefSub P.A3.fam3.amb3 → IndefScale P.A3.fam3.base3
  B : _root_.Formalism.IndefR.RealTBAlt R P Dc Sp Zsc S
def realPackageOfBundle {D : D7} {O : Obj D} {c : ℝ} (b : _root_.GlobalTheory.Fc.BundleCondition D O c) : _root_.GlobalTheory.Mem.Top.Bl.RealPackage b.R b.S :=
  ⟨b.P, b.C.c.face, b.C.Sp, GlobalTheory.Fc.zsc b.P b.DH.1.1 b.DH.1.2 c, b.B⟩
def realPackageOfRealInput {D : D7} {O : Obj D} {R : _root_.Formalism.L2.RecTAlt O.ex} {S : _root_.Formalism.L2.SG.SpectralTiesReal.STiesRAlt R} {x : R3.TwIn O.ex} (y : _root_.GlobalTheory.Mem.R3.RealInAlt x R S) :
    _root_.GlobalTheory.Mem.Top.Bl.RealPackage R S := ⟨R3.divisionPairOfAdelicFormsFaceColumnsData x, x.F.Dc, x.F.Sp, x.F.Zsc, _root_.GlobalTheory.Mem.R3.boundedRealisationOfInput y⟩
set_option genInjectivity false in
set_option genSizeOfSpec false in
structure TwistedBundle {D : D7} {O : Obj D} {c : ℝ} (b : _root_.GlobalTheory.Fc.BundleCondition D O c) (x : R3.TwIn O.ex) : Type 1 where
  intersectionNumber_baseChange : R3.Holds x.R x.F
  y : _root_.GlobalTheory.Mem.R3.RealInAlt x b.R b.S
  r : _root_.GlobalTheory.Mem.R3.RecursiveInput y
  eq : _root_.GlobalTheory.Mem.Top.Bl.realPackageOfBundle b = _root_.GlobalTheory.Mem.Top.Bl.realPackageOfRealInput y
  HD : _root_.Formalism.L2.HostDatumWithTies b.R.T.toTiedDataS
end Pack
variable {hL : _root_.UpperTheory.Zero.LLC.RecTExists} {p : _root_.GlobalTheory.Mem.Top.Bl.Parameters hL} {K : Ctx}
def WPt.saturationAtWeightedPoint (q : WPt p.s K) :
    SAt (D := (q.w.st q.Z).toD7) q.x.what₂.r.z.R.toRealDat q.x.what₂.r.z.F.lv2 q.x.what₂.r.Y.eE fun u => (q.x.col.C.forms u).to0 := q.x.sx.1
set_option genInjectivity false in
set_option genSizeOfSpec false in

structure BundleWitness (q : WPt p.s K) {c : ℝ} (b : _root_.GlobalTheory.Fc.BundleCondition (q.w.D q.Z) q.O c) : Type 1 where
  x : R3.TwIn q.O.ex
  a : R3.TwArgs q.O.ex q.x.what₂
  ax : HEq a.x x
  y : _root_.GlobalTheory.Mem.Top.Bl.TwistedBundle b x
  recPin : _root_.GlobalTheory.Mem.Top.Bl.RecordCompatibleExtended q b.R
  s : ∃ (sP : GlobalTheory.Mem.SRe.SPack (q.w.D q.Z) fun u => (b.R.T.cols.forms u).to0) (sS : GlobalTheory.Mem.SRe.SRest sP),
    HEq sP q.saturationAtWeightedPoint.P ∧ HEq sS q.saturationAtWeightedPoint.S ∧ b.S = sS.toRealSpectralMatching b.R
  pt : HEq y.y.tS q.saturationAtWeightedPoint.t ∧ y.y.cS = q.saturationAtWeightedPoint.c
  sx : HEq y.y.Sx (Formalism.IndefR.NX.ratDatR (D := (q.w.st q.Z).toD7) q.x.what₂.r.z.R q.x.what₂.r.z.cG q.core_data_of_point.row.kKs q.core_data_of_point.row.hk)
  eF : HEq y.y.nexp.eF q.core_data_of_point.row.nexp.eF
  fi : HEq y.y.nexp.fi q.core_data_of_point.row.nexp.fi
  uS : y.y.uS = 1
  parts : (_root_.GlobalTheory.Mem.R3.realisationRecursionOfInput y.r).PartsRow
  cW : HEq b.C.c.W q.B.wts ∧ HEq b.C.c.Xg q.x.what₂.r.z.Xg
  d3b : HEq y.HD.d3b q.x.pin.d3b
  side : _root_.Formalism.L2.SelectedSideOfRealRecord b.R (R3.divisionPairOfAdelicFormsFaceColumnsData x) (_root_.GlobalTheory.Mem.R3.realisationOfInput y.y) (_root_.GlobalTheory.Mem.R3.realisationRecursionOfInput y.r) y.HD q.core_data_of_point.a.Pq
  colPins : _root_.Formalism.L2.DIV.ColumnCharactersCompatible b.C.toS
def BundleLinkage (p : _root_.GlobalTheory.Mem.Top.Bl.Parameters hL) : GlobalTheory.Fc.LkT _root_.GlobalTheory.Fc.BundleCondition :=
  linkOf (𝒮 := p.s) (Bd := _root_.GlobalTheory.Fc.BundleCondition) fun _ q _ b => Nonempty (_root_.GlobalTheory.Mem.Top.Bl.BundleWitness (p := p) q b)
end GlobalTheory.Mem.Top.Bl
end
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.TwistedBundle =====
