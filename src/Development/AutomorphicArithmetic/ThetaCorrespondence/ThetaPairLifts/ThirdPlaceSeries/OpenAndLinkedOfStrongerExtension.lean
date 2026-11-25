module

public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.TwistedBundle
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.AllRows
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CoreSlotConstructionMonoFewerCoresBothPasses
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.GeometricWeakTies
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
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StrictHenselianAcyclic
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.Brauer

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.RowsOfStrongerNExt, Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.OpenAndLinkedOfStrongerExtension

-- ===== clump member: Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.RowsOfStrongerNExt =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.RowsOfStrongerNExt", "h": "module\n\npublic import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.TwistedBundle\npublic import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.AllRows\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CoreSlotConstructionMonoFewerCoresBothPasses\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StrictHenselianAcyclic\n\n"}
section -- clump:auto
@[expose] public section



section
open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.Inhab Formalism.L2.Host GlobalTheory.EX GlobalTheory.EX.OB GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl NumberField IsDedekindDomain
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.HeightCounting.Up GlobalTheory.Mem.SRe GlobalTheory.Mem.R3.Rw
namespace GlobalTheory.HeightCounting.Up
variable {hL : _root_.UpperTheory.Zero.LLC.RecTExists}
theorem builtE_of_nExt_alt {N N' : _root_.GlobalTheory.Mem.Top.Bl.NormChoiceExtension hL} {S : SExt}
    (hN : ∀ K B f T w Z Wt p0 t nch n xd c, N' K B f T w Z Wt p0 t nch n xd c → Nonempty (N K B f T w Z Wt p0 t nch n xd c))
    (K : Ctx) (B : Base) (f : Fr B.toPre) (T : TwDat B) (w : ColW B f T) (Z : w.Lt) (c : V4.Core K (w.st Z) f T)
    (h : BuiltE (_root_.GlobalTheory.Mem.Top.Bl.parametersOfExtension N' S).s K B f T w Z c) : BuiltE (_root_.GlobalTheory.Mem.Top.Bl.parametersOfExtension N S).s K B f T w Z c := by
  obtain ⟨b, hb⟩ := h
  exact ⟨{ b with nx := ⟨b.nx.1, Classical.choice (hN _ _ _ _ _ _ _ _ _ _ _ _ _ b.nx.2)⟩ }, hb⟩
noncomputable def witnessOfExtensionImplication {N N' : _root_.GlobalTheory.Mem.Top.Bl.NormChoiceExtension hL} {S : SExt}
    (hN : ∀ K B f T w Z Wt p0 t nch n xd c, N' K B f T w Z Wt p0 t nch n xd c → Nonempty (N K B f T w Z Wt p0 t nch n xd c))
    {K : Ctx} {B : Base} {f : Fr B.toPre} {T : TwDat B} {w : ColW B f T} {Z : w.Lt} {O : Obj2 (w.D Z)}
    (x : Wit (_root_.GlobalTheory.Mem.Top.Bl.parametersOfExtension N' S).s K w Z O) : Wit (_root_.GlobalTheory.Mem.Top.Bl.parametersOfExtension N S).s K w Z O :=
  { x with nx := ⟨x.nx.1, Classical.choice (hN _ _ _ _ _ _ _ _ _ _ _ _ _ x.nx.2)⟩ }
noncomputable def weightedPointOfExtensionImplication {N N' : _root_.GlobalTheory.Mem.Top.Bl.NormChoiceExtension hL} {S : SExt}
    (hN : ∀ K B f T w Z Wt p0 t nch n xd c, N' K B f T w Z Wt p0 t nch n xd c → Nonempty (N K B f T w Z Wt p0 t nch n xd c))
    {K : Ctx} (q : WPt (_root_.GlobalTheory.Mem.Top.Bl.parametersOfExtension N' S).s K) : WPt (_root_.GlobalTheory.Mem.Top.Bl.parametersOfExtension N S).s K :=
  ⟨q.B, q.f, q.T, q.w, q.Z, q.O, _root_.GlobalTheory.HeightCounting.Up.witnessOfExtensionImplication hN q.x⟩
theorem nonempty_bWit_wptOfNExt {N N' : _root_.GlobalTheory.Mem.Top.Bl.NormChoiceExtension hL} {S : SExt}
    (hN : ∀ K B f T w Z Wt p0 t nch n xd c, N' K B f T w Z Wt p0 t nch n xd c → Nonempty (N K B f T w Z Wt p0 t nch n xd c))
    {K : Ctx} (q : WPt (_root_.GlobalTheory.Mem.Top.Bl.parametersOfExtension N' S).s K) {c : ℝ} (b : _root_.GlobalTheory.Fc.BundleCondition (q.w.D q.Z) q.O c) (h : _root_.GlobalTheory.Mem.Top.Bl.BundleWitness q b) :
    Nonempty (_root_.GlobalTheory.Mem.Top.Bl.BundleWitness (_root_.GlobalTheory.HeightCounting.Up.weightedPointOfExtensionImplication hN q) b) := by
  have r := h.recPin
  exact ⟨⟨h.x, h.a, h.ax, h.y,
    { s := ⟨r.s.cols, r.s.full, r.s.theta, r.s.chr, r.s.gal, r.s.dt, r.s.tw⟩
      k := ⟨r.k.std, r.k.O, r.k.ent, r.k.adapted, r.k.top⟩
      crd := r.crd, entC := r.entC, std := r.std, rd := r.rd },
    h.s, h.pt, h.sx, h.eF, h.fi, h.uS, h.parts, h.cW, h.d3b, h.side, h.colPins⟩⟩
end GlobalTheory.HeightCounting.Up
namespace GlobalTheory.HeightCounting.Up
theorem rows_of_stronger_nExt_alt : ∀ (hL : _root_.UpperTheory.Zero.LLC.RecTExists) (N N' : _root_.GlobalTheory.Mem.Top.Bl.NormChoiceExtension hL) (S : SExt), (∀ K B f T w Z Wt p0 t nch n xd c, N' K B f T w Z Wt p0 t nch n xd c → Nonempty (N K B f T w Z Wt p0 t nch n xd c)) → (∀ K X f T c, IsBuiltE (_root_.GlobalTheory.Mem.Top.Bl.parametersOfExtension N' S).s K X f T c → IsBuiltE (_root_.GlobalTheory.Mem.Top.Bl.parametersOfExtension N S).s K X f T c) ∧ (∀ K X f T c, IsGoodE (_root_.GlobalTheory.Mem.Top.Bl.parametersOfExtension N' S).s K X f T c → IsGoodE (_root_.GlobalTheory.Mem.Top.Bl.parametersOfExtension N S).s K X f T c) ∧ (∀ K β c b, _root_.GlobalTheory.Mem.Top.Bl.BundleLinkage (_root_.GlobalTheory.Mem.Top.Bl.parametersOfExtension N' S) K β c b → _root_.GlobalTheory.Mem.Top.Bl.BundleLinkage (_root_.GlobalTheory.Mem.Top.Bl.parametersOfExtension N S) K β c b) ∧ ∀ (M : FamClass → Prop) (DR : _root_.GlobalTheory.Fc.R1.DefiniteSideType), _root_.GlobalTheory.Fc.AllRowsAlt KPx (IsBuiltE (_root_.GlobalTheory.Mem.Top.Bl.parametersOfExtension N S).s) (IsGoodE (_root_.GlobalTheory.Mem.Top.Bl.parametersOfExtension N S).s) (_root_.GlobalTheory.Mem.Top.Bl.BundleLinkage (_root_.GlobalTheory.Mem.Top.Bl.parametersOfExtension N S)) M DR → _root_.GlobalTheory.Fc.AllRowsAlt KPx (IsBuiltE (_root_.GlobalTheory.Mem.Top.Bl.parametersOfExtension N' S).s) (IsGoodE (_root_.GlobalTheory.Mem.Top.Bl.parametersOfExtension N' S).s) (_root_.GlobalTheory.Mem.Top.Bl.BundleLinkage (_root_.GlobalTheory.Mem.Top.Bl.parametersOfExtension N' S)) M DR := by
  intro hL N N' S hN
  have hB : ∀ K X f T c, IsBuiltE (_root_.GlobalTheory.Mem.Top.Bl.parametersOfExtension N' S).s K X f T c → IsBuiltE (_root_.GlobalTheory.Mem.Top.Bl.parametersOfExtension N S).s K X f T c :=
    positionOf_mono (builtE_of_nExt_alt (S := S) hN)
  have hG : ∀ K X f T c, IsGoodE (_root_.GlobalTheory.Mem.Top.Bl.parametersOfExtension N' S).s K X f T c → IsGoodE (_root_.GlobalTheory.Mem.Top.Bl.parametersOfExtension N S).s K X f T c :=
    positionOf_mono fun K B f T w Z c h =>
      ⟨builtE_of_nExt_alt (S := S) hN K B f T w Z c h.1, h.2⟩
  have hLk : ∀ K β c b, _root_.GlobalTheory.Mem.Top.Bl.BundleLinkage (_root_.GlobalTheory.Mem.Top.Bl.parametersOfExtension N' S) K β c b → _root_.GlobalTheory.Mem.Top.Bl.BundleLinkage (_root_.GlobalTheory.Mem.Top.Bl.parametersOfExtension N S) K β c b := by
    rintro K β c b ⟨q, b', ⟨h⟩, e⟩
    exact ⟨_root_.GlobalTheory.HeightCounting.Up.weightedPointOfExtensionImplication hN q, b', _root_.GlobalTheory.HeightCounting.Up.nonempty_bWit_wptOfNExt hN q b' h, e⟩
  refine ⟨hB, hG, hLk, fun M DR A => ?_⟩
  exact {
    hn4 := eventually_coreProperty_mono_fewerCores hB hG (fun _ _ hS h => row_mono_id hS hLk h) A.hn4
    jOn := eventually_coreProperty_mono_fewerCores hB hG (fun _ _ hS h => row_mono_id hS hLk h) A.jOn
    hInstR := eventually_coreProperty_mono_fewerCores hB hG (fun _ _ hS h => row_mono_id hS hLk h) A.hInstR
    aC2 := eventually_coreProperty_mono_fewerCores hB hG (fun _ _ hS h => row_mono_id hS hLk h) A.aC2
    aP10 := eventually_coreProperty_mono_fewerCores hB hG (fun _ _ hS h => row_mono_id hS hLk h) A.aP10
    aAtG := eventually_coreProperty_mono_fewerCores hB hG (fun _ _ hS h => row_mono_id hS hLk h) A.aAtG
    aPt0 := eventually_coreProperty_mono_fewerCores hB hG (fun _ _ hS h => row_mono_id hS hLk h) A.aPt0
    aPtTw := eventually_coreProperty_mono_fewerCores hB hG (fun _ _ hS h => row_mono_id hS hLk h) A.aPtTw
    aPer0 := eventually_coreProperty_mono_fewerCores hB hG (fun _ _ hS h => row_mono_id hS hLk h) A.aPer0
    aPerTw := eventually_coreProperty_mono_fewerCores hB hG (fun _ _ hS h => row_mono_id hS hLk h) A.aPerTw
    tie := eventually_coreProperty_mono_fewerCores hB hG (fun _ _ hS h => row_mono_id hS hLk h) A.tie
    hRB := eventually_coreProperty_mono_fewerCores hB hG (fun _ _ hS h => row_mono_id hS hLk h) A.hRB
    hTw := eventually_coreProperty_mono_fewerCores hB hG (fun _ _ hS h => row_mono_id hS hLk h) A.hTw
    hPA := eventually_coreProperty_mono_fewerCores hB hG (fun _ _ hS h => row_mono_id hS hLk h) A.hPA
    hLamP := eventually_coreProperty_mono_fewerCores hB hG (fun _ _ hS h => row_mono_id hS hLk h) A.hLamP
    hDivG := eventually_coreProperty_mono_fewerCores hB hG (fun _ _ hS h => row_mono_id hS hLk h) A.hDivG
    hDcPtG := eventually_coreProperty_mono_fewerCores hB hG (fun _ _ hS h => row_mono_id hS hLk h) A.hDcPtG
    selJ := eventually_coreProperty_mono_fewerCores hB hG (fun _ _ hS h => row_mono_id hS hLk h) A.selJ
    sLp := eventually_coreProperty_mono_fewerCores hB hG (fun _ _ hS h => row_mono_id hS hLk h) A.sLp
    sO := eventually_coreProperty_mono_fewerCores hB hG (fun _ _ hS h => row_mono_id hS hLk h) A.sO
    hServ := eventually_coreProperty_mono_fewerCores hB hG (fun _ _ hS h => row_mono_id hS hLk h) A.hServ
    zL := eventually_coreProperty_mono_fewerCores hB hG (fun _ _ hS h => row_mono_id hS hLk h) A.zL
    hTF := eventually_coreProperty_mono_fewerCores hB hG (fun _ _ hS h => row_mono_id hS hLk h) A.hTF
    rRows := eventually_coreProperty_mono_fewerCores hB hG (fun _ _ hS h => row_mono_id hS hLk h) A.rRows
    nRest := eventually_coreProperty_mono_fewerCores hB hG (fun _ _ hS h => row_mono_id hS hLk h) A.nRest
    c30 := eventually_coreProperty_mono_fewerCores hB hG (fun _ _ hS h => let ⟨c, cI, h1, h2, h3⟩ := h; ⟨c, cI, h1, h2, row_mono_id hS hLk h3⟩) A.c30 }
end GlobalTheory.HeightCounting.Up
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.RowsOfStrongerNExt =====

-- ===== clump member: Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.OpenAndLinkedOfStrongerExtension =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.OpenAndLinkedOfStrongerExtension", "h": "module\n\npublic import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.GeometricWeakTies\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CoreSlotConstructionMonoFewerCoresBothPasses\npublic import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.RowsOfStrongerNExt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.Brauer\n\n"}
section -- clump:auto
@[expose] public section



section
open Formalism.BasicNotions Formalism.MainNotions GlobalTheory.EX GlobalTheory.EX.OB GlobalTheory.Mem GlobalTheory.Mem.Top GlobalTheory.Mem.Top.Bl GlobalTheory.Fc GlobalTheory.Mem.LiteralAutomorphy
namespace GlobalTheory.Glob
theorem open_and_linked_of_stronger_extension_alt : ∀ (hL : _root_.UpperTheory.Zero.LLC.RecTExists) (N N' : _root_.GlobalTheory.Mem.Top.Bl.NormChoiceExtension hL) (S : SExt), (∀ K B f T w Z Wt p0 t nch n xd c, N' K B f T w Z Wt p0 t nch n xd c → Nonempty (N K B f T w Z Wt p0 t nch n xd c)) → (∀ H : ∀ 𝒜 : FamClass, RawSel _root_.GlobalTheory.Fc.BundleCondition 𝒜 → Prop, _root_.GlobalTheory.Fc.RL.LinkedAt (_root_.GlobalTheory.Mem.Top.Bl.parametersOfExtension N S) (fun Q L => Row Q L H) → _root_.GlobalTheory.Fc.RL.LinkedAt (_root_.GlobalTheory.Mem.Top.Bl.parametersOfExtension N' S) (fun Q L => Row Q L H)) ∧ (_root_.GlobalTheory.Fc.S0.OpenParameterStatements (_root_.GlobalTheory.Mem.Top.Bl.parametersOfExtension N S) → _root_.GlobalTheory.Fc.S0.OpenParameterStatements (_root_.GlobalTheory.Mem.Top.Bl.parametersOfExtension N' S)) := by
  intro hL N N' S hN
  obtain ⟨hB, hG, hLk, -⟩ := _root_.GlobalTheory.HeightCounting.Up.rows_of_stronger_nExt_alt hL N N' S hN
  have m : ∀ H : ∀ 𝒜 : FamClass, RawSel _root_.GlobalTheory.Fc.BundleCondition 𝒜 → Prop, _root_.GlobalTheory.Fc.RL.LinkedAt (_root_.GlobalTheory.Mem.Top.Bl.parametersOfExtension N S) (fun Q L => Row Q L H) → _root_.GlobalTheory.Fc.RL.LinkedAt (_root_.GlobalTheory.Mem.Top.Bl.parametersOfExtension N' S) (fun Q L => Row Q L H) :=
    fun H h => GlobalTheory.HeightCounting.Up.eventually_coreProperty_mono_fewerCores hB hG (fun _ _ hS h => GlobalTheory.HeightCounting.Up.row_mono_id hS hLk h) h
  exact ⟨m, fun o => ⟨m _ o.hPA, m _ o.hLamP, m _ o.hDivG, m _ o.hDcPtG, m _ o.selJ, m _ o.tie, m _ o.lab, m _ o.good, m _ o.geo, m _ o.mi, m _ o.kap, m _ o.df⟩⟩
end GlobalTheory.Glob
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.OpenAndLinkedOfStrongerExtension =====
