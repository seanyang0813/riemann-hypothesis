module

public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ReadPk
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FinTypRepCast
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TypeRepresentativesPartsOtherLaterStagesStatement
import Lean.Exception
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



theorem chT_tr : ∀ (B : Base) (C : Cols B) (a b : Late B C) (G : Type) [Group G] [Fintype G] (Pl0 T : Type) (Ks : Type) [Field Ks] [NumberField Ks] [iK : Algebra Ks a.D.what₂.LL] (A : FamIn a.D.what₂.LL G Pl0 T a.D.R.m) (R : RealDat a.D A Ks) (F : Face a.D A) (y : Hd R) (y' : HdB b R), Same b y y' → ∀ (bb : Bool) (Φ : Type) (rep : Φ → _) (Top : C.Tup → Hs) (c : ChD C.Tup Φ B.R.m Top) jA (t : ChT y F bb rep (Top := Top) jA c) jA', HEq jA' jA → ∃ t' : @ChT b.D G _ _ Pl0 T (famM b A) Ks _ _ (alg b iK) (real b R) y' (face b F) bb Φ ((rep)) Top jA' c, letI := alg b iK; HEq t'.jE t.jE ∧ HEq t'.jM t.jM ∧ HEq t'.jX t.jX := by
  intro B C a b G iG iFin Pl0 T Ks iField iNumber iK A R F y y' hS bb Φ rep Top c jA t jA' hjA
  have hP := (@GlobalTheory.T.typeRepresentativesParts_otherLaterStages B C a b G iG iFin
    Pl0 T Ks iField iNumber iK A R F y y' hS).2.1
  have htup := hS.tup
  have htupT := hS.tupT
  clear hS
  rcases y' with ⟨tup', tupT', tupT_tup', tup0', hm', hTop', hinj', PY', PW', ιW', isomFin', frameMatch', hF', stdPsi'⟩
  have e1 : tup' = y.tup := eq_of_heq htup
  have e2 : tupT' = y.tupT := eq_of_heq htupT
  subst e1 e2
  have e3 : jA' = jA := eq_of_heq hjA
  subst e3
  let Cb := @chainB B C a b G iG iFin Pl0 T Ks iField iNumber iK A R F y.tupT y.hm y.hTop
  have hCC := @chain_CC B C a b G iG iFin Pl0 T Ks iField iNumber iK A R F y.tupT y.hm y.hTop
  have hCCX := @chain_CCX B C a b G iG iFin Pl0 T Ks iField iNumber iK A R F y.tupT y.hm y.hTop
  have hCCP := @chain_CCP B C a b G iG iFin Pl0 T Ks iField iNumber iK A R F y.tupT y.hm y.hTop
  have hCCXP := @chain_CCXP B C a b G iG iFin Pl0 T Ks iField iNumber iK A R F y.tupT y.hm y.hTop
  have hEEc := @chain_EEc B C a b G iG iFin Pl0 T Ks iField iNumber iK A R F y.tupT y.hm y.hTop
  have hPart (π : Φ) :=
    @eq_of_heq (Submodule ℂ ((y.C F).Amb 0)) _ _ (hP bb (rep π)).symm
  have jE_range := t.jE_range.trans (congrFun hEEc bb)
  have jM_range (μ) (hU) (j) (h1) (h2) :=
    (t.jM_range μ hU j h1 h2).trans (congrFun (congrFun (congrFun hCCP bb) μ) j)
  have jX_range (μ) (hU) :=
    (t.jX_range μ hU).trans (congrFun (congrFun hCCXP bb) μ)
  have memCC (μ : a.D.what₂.Tup) (j : ℕ) (w : (y.C F).Amb j) (h : w ∈ Cb.CC bb μ j) :=
    cast (congrArg (w ∈ ·) (congrFun (congrFun (congrFun hCC bb) μ) j).symm) h
  have io0 (μ : a.D.what₂.Tup) (hU : y.Us μ) (x : c.EE.T) (v : (c.Mult μ 1).T)
      (h : t.jM μ 1 v ∈ Cb.CC bb μ 1) :=
    let w := t.jM μ 1 v
    have h0 := memCC μ 1 w h
    have hv := @chain_ioC B C a b G iG iFin Pl0 T Ks iField iNumber iK A R (y.tupT μ) 0 w h h0
    (t.io0 μ hU x v h0).trans (congrArg ((y.C F).ipE bb (t.jE x)) hv.symm)
  have io (μ : a.D.what₂.Tup) (hU : y.Us μ) (j : ℕ) (h1 : 1 ≤ j) (h2 : j + 1 ≤ a.D.R.m - 1)
      (x : (c.Mult μ j).T) (v : (c.Mult μ (j + 1)).T) (h : t.jM μ (j + 1) v ∈ Cb.CC bb μ (j + 1)) :=
    let w := t.jM μ (j + 1) v
    have h0 := memCC μ (j + 1) w h
    have hv := @chain_ioC B C a b G iG iFin Pl0 T Ks iField iNumber iK A R (y.tupT μ) j w h h0
    (t.io μ hU j h1 h2 x v h0).trans (congrArg ((y.C F).ipP bb μ j (t.jM μ j x)) hv.symm)
  have ioTop (μ : a.D.what₂.Tup) (hU : y.Us μ) (x : (c.Mult μ (a.D.R.m - 1)).T)
      (v : (c.Mult μ a.D.R.m).T) (v' : (c.Mult μ (a.D.R.m - 1 + 1)).T) (hvv : HEq v' v)
      (h : t.jX μ (c.multTop μ v) ∈ Cb.CCX bb μ) :=
    let w := t.jX μ (c.multTop μ v)
    have h0 := cast (congrArg (w ∈ ·) (congrFun (congrFun hCCX bb) μ).symm) h
    have hv := @chain_ioX B C a b G iG iFin Pl0 T Ks iField iNumber iK A R
      y.hm y.hTop (y.tupT μ) w (topMult_tr b y.hTop) h h0
    (t.ioTop μ hU x v v' hvv h0).trans
      (congrArg ((y.C F).ipP bb μ (a.D.R.m - 1) (t.jM μ (a.D.R.m - 1) x)) hv.symm)
  have ft (π : Φ) := (t.ft π).trans (congrArg (fun p => p.comap t.jE) (hPart π))
  have disj (π π' : Φ) (hne : π ≠ π') :=
    (congrArg₂ (fun p q : Submodule ℂ ((y.C F).Amb 0) => p ⊓ q) (hPart π) (hPart π')).symm.trans
      (t.disj π π' hne)
  have jE_inj := t.jE_inj
  have jE_ip := t.jE_ip
  have jM_inj := t.jM_inj
  have jM_ip := t.jM_ip
  have jX_inj := t.jX_inj
  have jX_ip := t.jX_ip
  have junk := t.junk
  have top := t.top
  have maps := And.intro (HEq.refl t.jE) (And.intro (HEq.refl t.jM) (HEq.refl t.jX))
  letI : Algebra Ks b.D.what₂.LL := alg b iK
  refine ⟨{
    jE := t.jE
    jM := t.jM
    jX := t.jX
    jE_inj := ?jE_inj
    jE_range := ?jE_range
    jE_ip := ?jE_ip
    jM_inj := ?jM_inj
    jM_range := ?jM_range
    jM_ip := ?jM_ip
    jX_inj := ?jX_inj
    jX_range := ?jX_range
    jX_ip := ?jX_ip
    io0 := ?io0
    io := ?io
    ioTop := ?ioTop
    junk := ?junk
    ft := ?ft
    disj := ?disj
    top := ?top }, ?maps⟩
  -- The field proofs are already elaborated. The kernel checks their stage
  -- conversions when it checks the assembled record.
  run_tac
    for goal in ← Lean.Elab.Tactic.getGoals do
      goal.withContext do
        let field ← goal.getTag
        let some proof := (← Lean.getLCtx).findFromUserName? field
          | throwError "missing proof for {field}"
        goal.assign (Lean.mkFVar proof.fvarId)
    Lean.Elab.Tactic.setGoals []

end GlobalTheory.Mem.R3.Rw
