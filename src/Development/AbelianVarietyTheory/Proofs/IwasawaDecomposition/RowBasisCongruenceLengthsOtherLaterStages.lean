module

public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RealIoX
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RowsRestWordColumnUnitBaseTupleAlt
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.Wp3ApplyEqSqMulSubSqMul
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
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.EtaJUntw
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NotBaseCondFalse
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PositionOfIntro

@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx Formalism.IndefR.RecTie
open scoped TensorProduct InnerProductSpace ComplexOrder
open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.Mem.R3.Tr



theorem GlobalTheory.Mem.R3.Rw.rr_eta_tr : ∀ (B : Base) (C : Cols B) (a b : Late B C) (G : Type) [Group G] [Fintype G] (Pl0 I0 T : Type) (Ks : Type) [Field Ks] [NumberField Ks] [iK : Algebra Ks a.D.what₂.LL] (A3 : FamIn3 a.D.what₂.LL G Pl0 I0 (List ℕ) T a.D.R.m) (R : RealDat3 a.D A3 Ks) (F : Face3 a.D A3), letI := alg b iK; (∀ j v, etaOf (real3 b R) (face3 b F) j v = etaOf R F j ((v))) ∧ ∀ (y : Hd R.toRealDat) (y' : Hd (real3 b R).toRealDat) (bb : Bool) (E : Hs) jE jE' n c Xo, HEq jE' jE → RrT F y bb (E := E) jE n c Xo → RrT (face3 b F) y' bb (E := E) jE' n c ((Xo)) := by
  intro B C a b G _ _ Pl0 I0 T Ks _ _ iK A3 R F
  letI := alg b iK
  refine ⟨fun j v => ?_, fun y y' bb E jE jE' n c Xo hj h => ?_⟩
  · classical
    exact (by with_unfolding_all exact ((Eq.mp (congrArg (fun X : Cx.CxData A3.fam3.amb3 => (
        if hj : 1 ≤ j ∧ j ≤ a.D.R.m then
          if a.D.plEq (((v :))) ∈ R.twPl then
            A3.A.fam.etaJ F.P0 F.ψ0 (A3.fam3.toSub2 X.zs) ⟨j - 1, by omega⟩ (R.mu (a.D.plEq (((v :))))) (a.D.plEq (((v :))))
          else 0
        else 0) = etaOf R F j ((by with_unfolding_all exact (v :)))) (toCx3_eq b R F)) (by with_unfolding_all rfl)) :))
  · have e : jE' = jE := eq_of_heq hj
    subst jE'
    exact (by with_unfolding_all exact ((Eq.mp (congrArg (fun u : Parts R => ∃ h : n = ((cxW R F u).data F.cr bb).D,
      (∀ x : Fin n → a.D.what₂.LL, jE (∑ i, a.D.what₂.embLL (x i) • c i) =
        PiTensorProduct.lift (R.HE.e (Tw.out (s := twAt a.D.what₂.embLL A3.A.v0) (E := R.HE.H)
          ((cxW R F u).iC F.cr bb A3.A.μ0 (cpt A3.A.v0.embedding (x ∘ Fin.cast h.symm)))))) ∧
      ∀ v, Xo v = (((cxW R F u).data F.cr bb).XE v).submatrix (Fin.cast h) (Fin.cast h) ∧ IsUnit (Xo v).det) (parts_eq b R F)) h) :))

end
