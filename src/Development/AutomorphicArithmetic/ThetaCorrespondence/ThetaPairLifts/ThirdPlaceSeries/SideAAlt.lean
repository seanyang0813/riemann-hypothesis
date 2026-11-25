module

public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.HeckeOpen
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.WithLocPre
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

@[expose] public section



section
open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.Inhab Formalism.L2.Host GlobalTheory.EX GlobalTheory.EX.OB GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl NumberField IsDedekindDomain
open GlobalTheory.HeightCounting.Up GlobalTheory.Mem.SRe GlobalTheory.Mem.R3.Rw
open GlobalTheory.HeightCounting GlobalTheory.Mem.R3.Tr
noncomputable section
namespace GlobalTheory.LayerMove

variable {D : D7} (m : Mv D) {hL : _root_.UpperTheory.Zero.LLC.RecTExists}
def Mv.sideA_alt {cf : CharFrame D} {jE : D.host.E →+* Qb} (A : _root_.GlobalTheory.HeightCounting.CharFrameHostEmbedding D cf jE) : _root_.GlobalTheory.HeightCounting.CharFrameHostEmbedding m.D (m.cf cf) jE := @_root_.GlobalTheory.HeightCounting.CharFrameHostEmbedding.mk (_) (_) (_)
    (bare := (by with_unfolding_all exact (A.bare :)))
    (wdT := (by with_unfolding_all exact (A.wdT :)))
    (lab := (by with_unfolding_all exact (A.lab :)))
    (chr := @_root_.GlobalTheory.HeightCounting.CharSide.mk (_) (_)
      (e1 := (by with_unfolding_all exact (A.chr.e1 :)))
      (unr_iff := (by with_unfolding_all exact (A.chr.unr_iff :)))
      (frob := (by with_unfolding_all exact (A.chr.frob :)))
      (tw := (by with_unfolding_all exact (A.chr.tw :)))
      (infG := (by with_unfolding_all exact (A.chr.infG :)))
      (csd := (by with_unfolding_all exact (A.chr.csd :)))
      (etaT := (by with_unfolding_all exact (A.chr.etaT :)))
      (etaTinv := (by with_unfolding_all exact (A.chr.etaTinv :)))
      (plGw := (by with_unfolding_all exact (A.chr.plGw :))))
    (row := @_root_.GlobalTheory.HeightCounting.RowSide.mk (_)
      (locR := (by with_unfolding_all exact (A.row.locR :)))
      (satR := (by with_unfolding_all exact (A.row.satR :)))
      (lab_eq := (by with_unfolding_all exact (A.row.lab_eq :))))
    (pl := @_root_.GlobalTheory.HeightCounting.PlSide.mk (_)
      (ι := (by with_unfolding_all exact (A.pl.ι :)))
      (ι_w := (by with_unfolding_all exact (A.pl.ι_w :)))
      (plB := (by with_unfolding_all exact (A.pl.plB :)))
      (plB_eq := (by with_unfolding_all exact (A.pl.plB_eq :)))
      (plκ := (by with_unfolding_all exact (A.pl.plκ :))))
    (iota := (by with_unfolding_all exact (A.iota :)))
    (wd := @_root_.GlobalTheory.HeightCounting.WDSide.mk (_) (_)
      (wdOf := (by with_unfolding_all exact (A.wd.wdOf :)))
      (wdOf_dim := (by with_unfolding_all exact (A.wd.wdOf_dim :)))
      (wdOf_unr := (by with_unfolding_all exact (A.wd.wdOf_unr :)))
      (wdOf_frob := (by with_unfolding_all exact (A.wd.wdOf_frob :)))
      (wdOf_ine := (by with_unfolding_all exact (A.wd.wdOf_ine :)))
      (wdOf_mono0 := (by with_unfolding_all exact (A.wd.wdOf_mono0 :)))
      (IsCrysW := (by with_unfolding_all exact (A.wd.IsCrysW :)))
      (IsPotCrysW := (by with_unfolding_all exact (A.wd.IsPotCrysW :)))
      (IsdRW := (by with_unfolding_all exact (A.wd.IsdRW :)))
      (jumpsW := (by with_unfolding_all exact (A.wd.jumpsW :)))
      (wdOf_unrL := (by with_unfolding_all exact (A.wd.wdOf_unrL :)))
      (wdOf_mono0L := (by with_unfolding_all exact (A.wd.wdOf_mono0L :)))
      (away := (by with_unfolding_all exact (A.wd.away :)))
      (above := (by with_unfolding_all exact (A.wd.above :)))
      (loc := (by with_unfolding_all exact (A.wd.loc :))))
    (grp := @_root_.GlobalTheory.HeightCounting.GrpSide.mk (_)
      (tA := (by with_unfolding_all exact (A.grp.tA :)))
      (tκ := (by with_unfolding_all exact (A.grp.tκ :)))
      (teichC_def := (by with_unfolding_all exact (A.grp.teichC_def :)))
      (ζ := (by with_unfolding_all exact (A.grp.ζ :)))
      (ζ_gen := (by with_unfolding_all exact (A.grp.ζ_gen :)))
      (O := (by with_unfolding_all exact (A.grp.O :)))
      (eSer_def := (by with_unfolding_all exact (A.grp.eSer_def :)))
      (kv := (by with_unfolding_all exact (A.grp.kv :)))
      (tg_tame := (by with_unfolding_all exact (A.grp.tg_tame :)))
      (O_equiv := (by with_unfolding_all exact (A.grp.O_equiv :)))
      (O_tw := (by with_unfolding_all exact (A.grp.O_tw :))))
    (par := @_root_.GlobalTheory.HeightCounting.ParSide.mk (_) (_)
      (eM := (by with_unfolding_all exact (A.par.eM :)))
      (eM_K := (by with_unfolding_all exact (A.par.eM_K :)))
      (eP := (by with_unfolding_all exact (A.par.eP :)))
      (locPar_def := (by with_unfolding_all exact (A.par.locPar_def :))))
    (au := @_root_.GlobalTheory.HeightCounting.AUSideAlt.mk (_)
      (cls := (by with_unfolding_all exact (A.au.cls :)))
      (surj := (by with_unfolding_all exact (A.au.surj :)))
      (iso := (by with_unfolding_all exact (A.au.iso :)))
      (sph := (by with_unfolding_all exact (A.au.sph :)))
      (sat := (by with_unfolding_all exact (A.au.sat :)))
      (clsWt := (by with_unfolding_all exact (A.au.clsWt :)))
      (wt := (by with_unfolding_all exact (A.au.wt :)))
      (infW := (by with_unfolding_all exact (A.au.infW :)))
      (locUnr := (by with_unfolding_all exact (A.au.locUnr :)))
      (locPol := (by with_unfolding_all exact (A.au.locPol :))))
    (chiT := (by with_unfolding_all exact (A.chiT :)))
section
end
section
end
end GlobalTheory.LayerMove
end
end
