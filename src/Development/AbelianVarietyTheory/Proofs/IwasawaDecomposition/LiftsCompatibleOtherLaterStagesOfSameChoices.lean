module

public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ReadPk
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FinTypRepCast
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.GoodPartEq
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

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx Formalism.IndefR.RecTie
open scoped TensorProduct InnerProductSpace ComplexOrder
open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.Mem.R3.Tr

noncomputable section

namespace GlobalTheory.Mem.R3.Rw

theorem frame_eq_of_map_eq {D : D7} {V : HSp D} {n : ℕ} (P Q : principalLevelFrame.RowPsi V n) (h : P.ψ = Q.ψ) : P = Q := by
  cases P; cases Q; cases h; rfl



theorem lfT_of_same : ∀ (B : Base) (C : Cols B) (a b : Late B C) (G : Type) [Group G] [Fintype G] (Pl0 T : Type) (Ks : Type) [Field Ks] [NumberField Ks] [iK : Algebra Ks a.D.what₂.LL] (A : FamIn a.D.what₂.LL G Pl0 T a.D.R.m) (R : RealDat a.D A Ks) (F : Face a.D A) (y : Hd R) (y' : HdB b R), Same b y y' → ∀ (Φ : Type) (rep : Φ → _) (Mt : C.Tup → ℕ → Hs) (l : LfD B.O (B.embLL.comp B.OtoLL) C.Tup Φ Mt) jL (t : LfT y F rep (Mt := Mt) jL l) jL', HEq jL' jL → ∃ t' : @LfT b.D G _ _ Pl0 T (famM b A) Ks _ _ (alg b iK) (real b R) y' (face b F) Φ ((by with_unfolding_all exact (rep :))) Mt jL' l, letI := alg b iK; HEq t'.eW t.eW ∧ HEq t'.jMt t.jMt := by
  intro B C a b G _ _ Pl0 T Ks _ _ iK A R F y y' hs Φ rep Mt l jL t jL' hj
  let yb := y'
  obtain ⟨tup', tupT', _, _, _, _, _, _, PW', _, _, _, _, _⟩ := y'
  obtain ⟨h1, h2, _, h4⟩ := hs
  obtain rfl : tup' = (by with_unfolding_all exact (y.tup :)) := eq_of_heq h1
  obtain rfl : tupT' = (by with_unfolding_all exact (y.tupT :)) := eq_of_heq h2
  have e4 : (fun i => (PW' i).ψ) = (by with_unfolding_all exact ((fun i => (y.PW i).ψ) :)) := eq_of_heq h4
  obtain rfl : PW' = fun i => rowPsi b (y.PW i) :=
    funext fun i => frame_eq_of_map_eq _ _ ((by with_unfolding_all exact ((congrFun e4 i) :)))
  obtain rfl : jL' = (by with_unfolding_all exact (jL :)) := eq_of_heq hj
  letI := alg b iK
  have prt_eq (i : Fin a.D.R.m) (π : Formalism.L2.NG.FinTyp a.D.host.E a.D.R.r) :
      y.prtW F i π = yb.prtW (face b F) i π := by
    unfold Hd.prtW
    rewrite [isotL_eq a b]
    dsimp only [isotLB, rowPsi, ds]
    with_unfolding_all rfl
  have wc_eq := lift_Wc b F y.tupT y.hm y.hTop y.hinj
  have mult_eq := lift_MultW b F y.tupT y.hm y.hTop y.hinj
  refine ⟨{
    eW := (by with_unfolding_all exact (t.eW :))
    eW_range := fun i => by
      with_unfolding_all exact ((t.eW_range i).trans
        (congrArg (fun W => (W i (sg0 a.D A) (R.levL F false (sg0 a.D A))).comap
          (R.HW i (sg0 a.D A)).e) (wat_eq b R)) :)
    eW_norm := (by with_unfolding_all exact (t.eW_norm :))
    eW_lat := (by with_unfolding_all exact (t.eW_lat :))
    jMj := (by with_unfolding_all exact (t.jMj :))
    jMj_read := (by with_unfolding_all exact (t.jMj_read :))
    jMj_inj := (by with_unfolding_all exact (t.jMj_inj :))
    jMj_range := fun i => (by with_unfolding_all exact ((t.jMj_range i).trans (congrFun wc_eq i) :))
    jMj_ip := (by with_unfolding_all exact (t.jMj_ip :))
    jMt := (by with_unfolding_all exact (t.jMt :))
    jMt_inj := (by with_unfolding_all exact (t.jMt_inj :))
    jMt_range := (by with_unfolding_all exact (t.jMt_range :))
    jMt_ip := (by with_unfolding_all exact (t.jMt_ip :))
    theta := fun μ hμ i x h w hw1 he hw2 => by
      let w₀ : (y.L F).AmbW i := by with_unfolding_all exact (w :)
      have hw1' : w₀ ∈ (y.L F).MultW i := by
        rewrite [congrFun mult_eq i]
        with_unfolding_all exact (hw1 :)
      have hw2' : (y.L F).eW i ∘ₗ w₀ ∈ (y.L F).Wc i := by
        rewrite [congrFun wc_eq i]
        with_unfolding_all exact (hw2 :)
      with_unfolding_all exact (t.theta μ hμ i x h w₀ hw1' he hw2' :)
    junk := (by with_unfolding_all exact (t.junk :))
    out := (by with_unfolding_all exact (t.out :))
    isot := fun i π v => by
      with_unfolding_all exact ((t.isot i π v).trans
        (Iff.of_eq (congrArg (fun p => t.jMj i v ∈ p) (prt_eq i (rep π)))) :)
    disj := fun i π π' hne => by
      rewrite [← prt_eq i (rep π), ← prt_eq i (rep π')]
      with_unfolding_all exact (t.disj i π π' hne :)
    read := (by with_unfolding_all exact (t.read :)) }, (by with_unfolding_all exact ((HEq.refl t.eW) :)), (by with_unfolding_all exact ((HEq.refl t.jMt) :))⟩

end GlobalTheory.Mem.R3.Rw
