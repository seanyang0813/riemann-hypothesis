module

public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SideTw
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsMovedRowLiftDataToFittingStages
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ChainComparisonTransferOtherLaterStages
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HdTr
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LiftsCompatibleOtherLaterStagesOfSameChoices
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RowBasisCongruenceLengthsOtherLaterStages
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TypeRepresentativesPartsOtherLaterStages
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

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsMovedDataLaterStagesWithNewTwist, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsMovedDataLaterStagesWithNewTwistStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsMovedDataLaterStagesWithNewTwist =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsMovedDataLaterStagesWithNewTwist", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SideTw\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsMovedRowLiftDataToFittingStages\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ChainComparisonTransferOtherLaterStages\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HdTr\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LiftsCompatibleOtherLaterStagesOfSameChoices\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RowBasisCongruenceLengthsOtherLaterStages\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TypeRepresentativesPartsOtherLaterStages\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx Formalism.IndefR.RecTie
open scoped TensorProduct InnerProductSpace ComplexOrder
attribute [local instance] Formalism.BasicNotions.Host.cmStar Formalism.IndefR.principalLevelFrame.instCMHostI
open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.Mem.R3.Tr GlobalTheory.Mem.R3.Rw.Mv

namespace GlobalTheory.HeightCounting.Up.MvTw

section Gen

variable {B : Base} {C : Cols B} {a : Late B C} (b c : Late B C)
variable {G : Type} [Group G] [Fintype G] {Pl0 I0 T₀ : Type} {Ks : Type} [Field Ks] [NumberField Ks] [iK : Algebra Ks a.D.what₂.LL]
variable {A3 : FamIn3 a.D.what₂.LL G Pl0 I0 (List ℕ) T₀ a.D.R.m}

section Comp
variable (R : RealDat3 a.D A3 Ks)

def once : @RealDat3 c.D G _ _ Pl0 I0 T₀ (famInThreeCoefficientChange c A3) Ks _ _ (alg c iK) := real3 c R

def thru : @RealDat3 c.D G _ _ Pl0 I0 T₀ (famInThreeCoefficientChange c A3) Ks _ _ (alg c iK) :=
  real3 (a := b) c (iK := alg b iK) (real3 b R)

def thruY : letI := alg c iK; type_of% (once c R).ioY := letI := alg c iK; (thru b c R).ioY

def thruX : letI := alg c iK; type_of% (once c R).ioX := letI := alg c iK; (thru b c R).ioX

theorem thruY_eq : letI := alg c iK; (once c R).ioY = thruY b c R :=
  letI := alg c iK
  eq_of_heq (HEq.trans ((real_ioY c R.toRealDat).symm : HEq (once c R).ioY R.ioY)
    (HEq.trans (real_ioY b R.toRealDat) (real_ioY (a := b) c (iK := alg b iK) (real b R.toRealDat)) :
    HEq _ (thruY b c R)))

theorem thruX_eq : letI := alg c iK; (once c R).ioX = thruX b c R :=
  letI := alg c iK
  eq_of_heq (HEq.trans ((real_ioX c R.toRealDat).symm : HEq (once c R).ioX R.ioX)
    (HEq.trans (real_ioX b R.toRealDat) (real_ioX (a := b) c (iK := alg b iK) (real b R.toRealDat)) :
    HEq _ (thruX b c R)))

theorem thru_eq : once c R = thru b c R :=
  letI := alg c iK
  congrArg₂ (DatCopy.setIo (once c R)) (thruY_eq b c R) (thruX_eq b c R)

end Comp

variable {R : RealDat3 a.D A3 Ks} (F : Face3 a.D A3) (y : Hd R.toRealDat) (y' : HdB b R.toRealDat)



end Gen

section Dat

variable {B : Base} {C : Cols B} {a : Late B C} (b c : Late B C) {px : PreX B.toPre} {I : ColIn B px} {hX : B.fields.Ok}
  {T : TwDat B} {Wt : Set B.places.Pl}



theorem transportModuliCoreWithConstants_comp (z₀ : Dat a.st I hX T Wt) (Xg : Finset (Gc b.st.B px → b.st.B.LL)) (tr : TrI b.st.B px)
    (co : Formalism.L2.Pj.CoreJ b.st.toD7) (al : Algebra co.Q.c.F b.st.toD7.what₂.LL)
    (ale : ∀ y : co.Q.c.F, b.st.B.embLL (algebraMap co.Q.c.F b.st.toD7.what₂.LL y) = y)
    (R : RealDat3 b.st.toD7 (famR b.st I hX (usedOf I T Wt) Xg tr) co.Q.c.F)
    (hXg : Xg = z₀.Xg) (htr : tr = z₀.tr)
    (hc : HEq co (coreJ (a := a) b z₀.core)) (hR : HEq R (real3 (a := a) b (iK := z₀.alg) z₀.R)) :
    HEq (coreJ (a := b) c co) (coreJ (a := a) c z₀.core) ∧
      HEq (real3 (a := b) c (iK := al) R) (real3 (a := a) c (iK := z₀.alg) z₀.R) := by
  have hc' := eq_of_heq hc
  subst hXg htr hc'
  have e : al = (alg (a := a) b z₀.alg) := by
    refine Algebra.algebra_ext _ _ fun y => B.embLL.injective ?_
    refine Eq.trans (ale y) ?_
    exact (z₀.alg_eq (y)).symm
  subst e
  have hR' : R = (real3 (a := a) b (iK := z₀.alg) z₀.R) := eq_of_heq (hR)
  subst hR'
  refine ⟨?_, ?_⟩
  · exact HEq.refl (coreJ (a := a) c z₀.core)
  · exact heq_of_eq (thru_eq (a := a) b c (iK := z₀.alg) z₀.R).symm



theorem copy_comp (z₀ : Dat a.st I hX T Wt) (z : Dat b.st I hX T Wt) (hXg : z.Xg = z₀.Xg) (htr : z.tr = z₀.tr)
    (hc : HEq z.core (coreJ (a := a) b z₀.core)) (hR : HEq z.R (real3 (a := a) b (iK := z₀.alg) z₀.R)) :
    HEq (coreJ (a := b) c z.core) (coreJ (a := a) c z₀.core) ∧
      HEq (real3 (a := b) c (iK := z.alg) z.R) (real3 (a := a) c (iK := z₀.alg) z₀.R) :=
  transportModuliCoreWithConstants_comp b c z₀ z.Xg z.tr z.core z.alg z.alg_eq z.R hXg htr hc hR

end Dat

section Main

variable {B : Base} {f : Fr B.toPre} {T : TwDat B} {w : ColW B f T} {Z₀ : w.Lt} {hX : B.fields.Ok} {Wt : Set B.places.Pl}
  {z₀ : Dat (w.st Z₀) w.I hX T Wt} {q : RowPk w z₀}



theorem moved_again (o o' : q.Over) (s : SameGrp (B := B) (C := w.C) o.Z o'.Z) (m : Moved o) (hc : m.Copy) (hh : m.Coh) :
    ∃ m' : Moved o', m'.z = DatCopy.copy (a := o.Z) o'.Z s m.z ∧ m'.Copy ∧ m'.Coh := by
  obtain ⟨y', hy⟩ := @GlobalTheory.Mem.R3.Rw.hd_tr B w.C o.Z o'.Z _ _ _ _ _ _ _ _ m.z.alg _ m.z.R.toRealDat m.y
  obtain ⟨t, a1, a2, a3, a4, a5, a6, a7⟩ := _root_.GlobalTheory.Mem.R3.Rw.Mv.pkT_tr (a := o.Z) o'.Z (iK := m.z.alg) m.z.F m.y y' hy m.t
  have he := (@GlobalTheory.Mem.R3.Rw.rr_eta_tr B w.C o.Z o'.Z _ _ _ _ _ _ _ _ _ m.z.alg _ m.z.R m.z.F).1
  letI : Algebra m.z.core.Q.c.F (Late.D o'.Z).what₂.LL := alg (a := o.Z) o'.Z m.z.alg
  have hA : (t.tA : type_of% m.t.tA) = m.t.tA := eq_of_heq (a1)
  have hk := copy_comp (a := Z₀) o.Z o'.Z z₀ m.z m.Xg m.tr (hc.core) (hc.R)
  have hW := forcedContentPlaces_eq_transport_sameFiniteGroup (a := o.Z) o'.Z s m.z
  refine ⟨{ z := DatCopy.copy (a := o.Z) o'.Z s m.z
            intersectionNumber_baseChange := cp_holds (a := o.Z) o'.Z s m.z m.intersectionNumber_baseChange
            exAt := DatCopy.copy_exAt (a := o.Z) o'.Z s m.exAt
            inGeo := cp_inGeo (a := o.Z) o'.Z s m.z m.inGeo
            Xg := m.Xg
            tr := m.tr
            core := fun h => ⟨lawsCore_tr (a := o.Z) o'.Z (m.core h).1, (m.core h).2.1, (m.core h).2.2.1,
              (m.core h).2.2.2⟩
            eta := fun j v => Eq.trans (he j (v) : _ = etaOf m.z.R m.z.F j v) (m.eta j v)
            W1 := fun F0 => Eq.trans (hW (F0) : _ = m.z.W1 (F0)) (m.W1 (F0))
            y := hd3 (a := o.Z) o'.Z (iK := m.z.alg) m.y y'
            tup := m.tup
            t := t
            tA := fun c u => HEq.trans (heq_of_eq (congrArg (fun r : type_of% m.t.tA => (r c (u)).j) hA))
              (m.tA c (u)) }, rfl, ⟨?_, ?_⟩,
    ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩⟩
  · exact hk.1
  · exact hk.2
  · exact hh.tupT
  · exact HEq.trans (hy.PY : HEq (fixTup (a := o.Z) o'.Z (iK := m.z.alg) m.y y').PY.ψ m.y.PY.ψ) hh.PY
  · exact HEq.trans (hy.PW : HEq (fun i => ((fixTup (a := o.Z) o'.Z (iK := m.z.alg) m.y y').PW i).ψ) (fun i => (m.y.PW i).ψ)) hh.PW
  · exact a2.trans hh.rep
  · exact fun c => (a3 c).trans (hh.jE c)
  · exact fun c => (a4 c).trans (hh.jM c)
  · exact fun c => (a5 c).trans (hh.jX c)
  · exact a6.trans hh.eW
  · exact a7.trans hh.jMt

end Main

theorem moved_tw {K : Ctx} {B : Base} {f : Fr B.toPre} {T : TwDat B} {w : ColW B f T} {P : Pre2 K w} (x : St P)
    (N : TwNew (Dof x)) : ∃ m : Moved (oTw x N), m.z = datTw x N ∧ m.Copy ∧ m.Coh :=
  moved_again x.o (oTw x N) (sgTw x N) x.m x.copy x.coh

end GlobalTheory.HeightCounting.Up.MvTw

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsMovedDataLaterStagesWithNewTwist =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsMovedDataLaterStagesWithNewTwistStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsMovedDataLaterStagesWithNewTwistStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SideTw\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsMovedDataLaterStagesWithNewTwist\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.L2 Formalism.L2.Host Formalism.L2.NT Formalism.IndefR.NX NumberField IsDedekindDomain GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.HeightCounting GlobalTheory.HeightCounting.Up
attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem _root_.GlobalTheory.T.exists_movedData_laterStagesWithNewTwist : ∀ {K : Ctx} {B : Base} {f : Fr B.toPre} {T : TwDat B} {w : ColW B f T} {P : Pre2 K w} (x : St P) (N : TwNew (Dof x)), ∃ m : Moved (oTw x N), m.z = datTw x N ∧ m.Copy ∧ m.Coh := by
  first | exact @GlobalTheory.HeightCounting.Up.MvTw.moved_tw
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsMovedDataLaterStagesWithNewTwistStatement =====
