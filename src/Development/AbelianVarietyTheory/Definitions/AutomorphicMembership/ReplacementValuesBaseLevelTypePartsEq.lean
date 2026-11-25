module

public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.BaseLevelRowSideTransport
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.Wp3ApplyEqSqMulSubSqMul
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
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ValTransOfEq, Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ReplacementValuesBaseLevelTypePartsEq

-- ===== clump member: Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ValTransOfEq =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ValTransOfEq", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.BaseLevelRowSideTransport\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.GoodPartEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH NumberField IsDedekindDomain Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.IndefR Formalism.IndefR.Links
open Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Lev Formalism.L2.Pj Formalism.L2.Host
open Formalism.IndefR.RecTie Formalism.L2.Rows GlobalTheory.RealGeo
open scoped TensorProduct

namespace GlobalTheory.Mem.R3.Tr

-- Comparing transported fields in the elaborator repeatedly unfolds `Late.D` (`Stages.toD7`/`assemble`).
open Lean Elab Tactic in
local elab "exact_by_kernel " term:term : tactic =>
  closeMainGoalUsing `exact_by_kernel fun target _ => do
    let value ← instantiateMVars (← elabTerm term none)
    let lctx ← instantiateLCtxMVars (← getLCtx)
    let actual ← instantiateMVars (← Meta.inferType value)
    let target ← instantiateMVars target
    match Kernel.isDefEq (← getEnv) lctx actual target with
    | .ok true => pure value
    | .ok false => throwError "expected{indentExpr target}\nbut the term has type{indentExpr actual}"
    | .error error => throwError (error.toMessageData (← getOptions))

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {B : Base} {C : Cols B} {a : Late B C} (c : Refill a) {G : Type} [Group G] [Fintype G] {Pl0 I0 T : Type}
variable {Ks : Type} [Field Ks] [NumberField Ks] [iK : Algebra Ks a.D.what₂.LL]

section Generic

variable {X : Type} [NormedAddCommGroup X] [InnerProductSpace ℂ X] {N : Type} [AddCommGroup N] [Module ℂ N] {P P' : Submodule ℂ N}
  {ip : N → N → ℂ} {j : X ≃ₗ[ℂ] P}


omit [NormedAddCommGroup X] [InnerProductSpace ℂ X] in
theorem le_of_eqs {Q Q' : Submodule ℂ N} (e : P = P') (e' : Q = Q') (h : P ≤ Q) : P' ≤ Q' := e ▸ e' ▸ h

theorem val_trans_ofEq (e : P = P') (x : X) : ((j.trans (LinearEquiv.ofEq _ _ e)) x).1 = (j x).1 := rfl

omit [NormedAddCommGroup X] [InnerProductSpace ℂ X] in
private theorem mem_of_eq (e : P = P') {w : N} (h : w ∈ P') : w ∈ P := e.symm ▸ h

end Generic

section Chain

variable {A : FamIn a.D.what₂.LL G Pl0 T a.D.R.m} {R : RealDat a.D A Ks} {F : Face a.D A} {tupT : a.D.what₂.Tup → T}
  {hm : 0 < a.D.R.m} {hTop : TopMultH R}

def stepB (l : Bool) (μ : a.D.what₂.Tup) (k : ℕ) (v : spCC c F tupT hm hTop l μ (k + 1)) : (toChainReal R F tupT hm hTop).Amb k :=
  ((chainB c.to F tupT hm hTop).ioC l μ k v).1

theorem stepB_eq (l : Bool) (μ : a.D.what₂.Tup) (k : ℕ) (v : (toChainReal R F tupT hm hTop).CC l μ (k + 1)) :
    stepB c l μ k (LinearEquiv.ofEq _ _ (congrFun (congrFun (congrFun (spCC_eq c F tupT hm hTop) l) μ) (k + 1)) v) =
      ((toChainReal R F tupT hm hTop).ioC l μ k v).1 := (ioCB_eq c l μ k v)

def topB (l : Bool) (μ : a.D.what₂.Tup) (v : spCCX c F tupT hm hTop l μ) : (toChainReal R F tupT hm hTop).Amb (a.D.R.m - 1) :=
  ((chainB c.to F tupT hm hTop).ioX l μ v).1

theorem topB_eq (l : Bool) (μ : a.D.what₂.Tup) (v : (toChainReal R F tupT hm hTop).CCX l μ) :
    topB c l μ (LinearEquiv.ofEq _ _ (congrFun (congrFun (spCCX_eq c F tupT hm hTop) l) μ) v) =
      ((toChainReal R F tupT hm hTop).ioX l μ v).1 := (ioXB'_eq c l μ v)

section Rows

variable {EE : Type} [NormedAddCommGroup EE] [InnerProductSpace ℂ EE] [FiniteDimensional ℂ EE] {X : RowSide a.D EE} {l : Bool}

def rowIds (I : RowIds X (toChainReal R F tupT hm hTop) l) : RowIds (rowSide c X) (chainB c.to F tupT hm hTop) l :=
  @RowIds.mk c.to.D EE _ _ _ (rowSide c X) (chainB c.to F tupT hm hTop) l
    (by exact_by_kernel I.jE.trans (LinearEquiv.ofEq _ _ (congrFun (spEEc_eq c F tupT hm hTop) l)))
    (by exact_by_kernel (fun (μ : a.D.what₂.Tup) (h : Used0 a.D μ) (j : ℕ) (h1 : 1 ≤ j) (h2 : j ≤ a.D.R.m - 1) =>
      (I.jM μ h j h1 h2).trans
        (LinearEquiv.ofEq _ _ (congrFun (congrFun (congrFun (spCCP_eq c F tupT hm hTop) l) μ) j))))
    (by exact_by_kernel (fun (μ : a.D.what₂.Tup) (h : Used0 a.D μ) =>
      (I.jX μ h).trans
        (LinearEquiv.ofEq _ _ (congrFun (congrFun (spCCXP_eq c F tupT hm hTop) l) μ))))
    I.prt



theorem rowSideReal_tr {I : RowIds X (toChainReal R F tupT hm hTop) l} {n : ℕ} {bs : OrthonormalBasis (Fin n) ℂ EE}
    {ty : Fin n → a.D.what₂.FT} (H : RowSideReal X (toChainReal R F tupT hm hTop) l I bs ty) :
    RowSideReal (rowSide c X) (chainB c.to F tupT hm hTop) l (rowIds c I) bs ((ty)) := by
  refine @RowSideReal.mk _ _ _ _ _ _ _ _ _ _ _ _ ?parY ?lvl ?lvlP ?lvlX ?ee ?mult ?multX ?io0 ?io0X ?io ?ioTop ?ft ?prt_disj
  case parY =>
    exact_by_kernel H.parY
  case lvl =>
    exact_by_kernel fun (μ : a.D.what₂.Tup) (hμ : Used0 a.D μ) => le_of_eqs (congrFun (spEEc_eq c F tupT hm hTop) l) (congrFun (congrFun (congrFun (spCC_eq c F tupT hm hTop) l) μ) 0) (H.lvl μ hμ)
  case lvlP =>
    exact_by_kernel fun (μ : a.D.what₂.Tup) (hμ : Used0 a.D μ) (j : ℕ) (h1 : 1 ≤ j) (h2 : j ≤ a.D.R.m - 1) =>
      le_of_eqs (congrFun (congrFun (congrFun (spCCP_eq c F tupT hm hTop) l) μ) j) (congrFun (congrFun (congrFun (spCC_eq c F tupT hm hTop) l) μ) j) (H.lvlP μ hμ j h1 h2)
  case lvlX =>
    exact_by_kernel fun (μ : a.D.what₂.Tup) (hμ : Used0 a.D μ) => le_of_eqs (congrFun (congrFun (spCCXP_eq c F tupT hm hTop) l) μ) (congrFun (congrFun (spCCX_eq c F tupT hm hTop) l) μ) (H.lvlX μ hμ)
  case ee =>
    intro x y
    exact_by_kernel H.ee x y
  case mult =>
    intro μ hμ j h1 h2 x y
    exact_by_kernel H.mult μ hμ j h1 h2 x y
  case multX =>
    intro h μ hμ x y
    exact_by_kernel H.multX h μ hμ x y
  case io0 =>
    intro h μ hμ ok x y
    change 2 ≤ a.D.R.m at h
    have hj : 1 ≤ a.D.R.m - 1 := by omega
    have hs := stepB_eq c l μ 0 (Submodule.inclusion (H.lvlP μ hμ 1 le_rfl hj) (I.jM μ hμ 1 le_rfl hj y))
    have ht := (H.io0 h μ hμ (okB_imp c ok) x y).trans
      (congrArg ((toChainReal R F tupT hm hTop).ipE l (I.jE x)) hs.symm)
    exact_by_kernel ht
  case io0X =>
    intro h μ hμ ok x y
    change a.D.R.m = 1 at h
    have hj : a.D.R.m - 1 = 0 := by omega
    have hs := topB_eq c l μ
      (Submodule.inclusion (H.lvlX μ hμ) (I.jX μ hμ (cast (congrArg (X.Mult μ) h.symm) y)))
    have ht := (H.io0X h μ hμ (okB_imp c ok) x y).trans
      (congrArg (fun v => (toChainReal R F tupT hm hTop).ipE l (I.jE x)
        (cast (congrArg (toChainReal R F tupT hm hTop).Amb hj) v)) hs.symm)
    exact_by_kernel ht
  case io =>
    intro μ hμ ok j h1 h2 x y
    change j + 1 ≤ a.D.R.m - 1 at h2
    have hj : 1 ≤ j + 1 := Nat.succ_pos j
    have hs := stepB_eq c l μ j (Submodule.inclusion (H.lvlP μ hμ (j + 1) hj h2) (I.jM μ hμ (j + 1) hj h2 y))
    have ht := (H.io μ hμ (okB_imp c ok) j h1 h2 x y).trans
      (congrArg ((toChainReal R F tupT hm hTop).ipP l μ j (I.jM μ hμ j h1 (by omega) x)) hs.symm)
    exact_by_kernel ht
  case ioTop =>
    intro h μ hμ ok x y
    change 2 ≤ a.D.R.m at h
    have hs := topB_eq c l μ (Submodule.inclusion (H.lvlX μ hμ) (I.jX μ hμ y))
    have ht := (H.ioTop h μ hμ (okB_imp c ok) x y).trans
      (congrArg ((toChainReal R F tupT hm hTop).ipP l μ (a.D.R.m - 1) (I.jM μ hμ _ (by omega) le_rfl x)) hs.symm)
    exact_by_kernel ht
  case ft =>
    intro σ
    exact_by_kernel H.ft σ
  case prt_disj =>
    exact_by_kernel H.prt_disj

end Rows

variable {hinj : ∀ i t, Function.Injective (R.extV i t)}


variable (F tupT hm hTop hinj) in
def spWc : type_of% (toLiftReal R F tupT hm hTop hinj).Wc := ((liftB c.to F tupT hm hTop hinj).Wc)


variable (F tupT hm hTop hinj) in
theorem spWc_eq : (toLiftReal R F tupT hm hTop hinj).Wc = spWc c F tupT hm hTop hinj := (lift_Wc c.to F tupT hm hTop hinj)


variable (F tupT hm hTop hinj) in
def spMultW : type_of% (toLiftReal R F tupT hm hTop hinj).MultW := ((liftB c.to F tupT hm hTop hinj).MultW)


variable (F tupT hm hTop hinj) in
theorem spMultW_eq : (toLiftReal R F tupT hm hTop hinj).MultW = spMultW c F tupT hm hTop hinj := (lift_MultW c.to F tupT hm hTop hinj)

def liftIds (I : LiftIds (toLiftReal R F tupT hm hTop hinj)) : LiftIds (liftB c.to F tupT hm hTop hinj) :=
  @LiftIds.mk c.to.D (chainB c.to F tupT hm hTop) (liftB c.to F tupT hm hTop hinj)
    (by exact_by_kernel fun i : Fin a.D.R.m => (I.jMj i).trans (LinearEquiv.ofEq _ _ (congrFun (spWc_eq c F tupT hm hTop hinj) i)))
    (by exact_by_kernel I.jMt) (by exact_by_kernel I.prtW)

theorem liftTie_tr {I : LiftIds (toLiftReal R F tupT hm hTop hinj)} (H : LiftTie (toLiftReal R F tupT hm hTop hinj) I) :
    LiftTie (liftB c.to F tupT hm hTop hinj) (liftIds c I) := by
  refine @LiftTie.mk _ _ _ _ ?hol ?mj ?mt ?theta ?isot ?prtW_disj ?lamP
  case hol => exact_by_kernel H.hol
  case mj =>
    intro i x y
    exact_by_kernel H.mj i x y
  case mt => exact_by_kernel H.mt
  case theta =>
    intro μ hμ i x w hTheta hMult hEmb hWc
    have hMult' := mem_of_eq (congrFun (spMultW_eq c F tupT hm hTop hinj) i) hMult
    have hWc' := mem_of_eq (congrFun (spWc_eq c F tupT hm hTop hinj) i) hWc
    exact_by_kernel H.theta μ hμ i x w (by exact_by_kernel hTheta) hMult' (by exact_by_kernel hEmb) hWc'
  case isot =>
    intro i π y
    exact_by_kernel H.isot i π y
  case prtW_disj => exact_by_kernel H.prtW_disj
  case lamP => exact_by_kernel H.lamP

theorem recTied_tr {X0 : BaseLevelRowSide a.D} {Ish : RowIds (RowSide.sharp a.D) (toChainReal R F tupT hm hTop) true}
    {Iz : RowIds X0.s (toChainReal R F tupT hm hTop) false} {IL : LiftIds (toLiftReal R F tupT hm hTop hinj)} {K : ColReal a.D}
    (H : RecTied a.D X0 (toChainReal R F tupT hm hTop) Ish Iz (toLiftReal R F tupT hm hTop hinj) IL K) :
    RecTied c.to.D (baseLevelRowSideTransport c X0) (chainB c.to F tupT hm hTop) ((rowIds c Ish)) (by exact_by_kernel rowIds c Iz) (liftB c.to F tupT hm hTop hinj)
      (liftIds c IL) (colReal c K) :=
  @RecTied.mk _ _ _ _ _ _ _ _ ((rowSideReal_tr c H.sharp)) (by exact_by_kernel rowSideReal_tr c H.base) (liftTie_tr c H.lift)
    (@ColTieR.mk _ _ _ ((H.col.tup)) ((H.col.xi0)) ((H.col.bu)))

def mjTie (x : MjTie R F) : @MjTie c.to.D G _ _ Pl0 T (famM c.to A) Ks _ _ (alg c.to iK) (real c.to R) (face c.to F) :=
  @MjTie.mk c.to.D G _ _ Pl0 T (famM c.to A) Ks _ _ (alg c.to iK) (real c.to R) (face c.to F) x.eW
    (cast (congrArg (fun W : type_of% R.Wat => ∀ i, LinearMap.range (x.eW i) =
      (W i (sg0 a.D A) (R.levL F false (sg0 a.D A))).comap (R.HW i (sg0 a.D A)).e) (wat_eq c.to R)) x.eW_range)
    x.eW_norm x.eW_lat

end Chain

end GlobalTheory.Mem.R3.Tr

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ValTransOfEq =====

-- ===== clump member: Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ReplacementValuesBaseLevelTypePartsEq =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ReplacementValuesBaseLevelTypePartsEq", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ValTransOfEq\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.Wp3ApplyEqSqMulSubSqMul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH NumberField IsDedekindDomain Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.IndefR Formalism.IndefR.Links
open Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Lev Formalism.L2.Pj Formalism.L2.Host
open Formalism.IndefR.RecTie Formalism.L2.Rows GlobalTheory.RealGeo
open scoped TensorProduct

namespace GlobalTheory.Mem.R3.Tr

-- Comparing transported fields in the elaborator repeatedly unfolds `Late.D` (`Stages.toD7`/`assemble`).
open Lean Elab Tactic in
local elab "exact_by_kernel " term:term : tactic =>
  closeMainGoalUsing `exact_by_kernel fun target _ => do
    let value ← instantiateMVars (← elabTerm term none)
    let lctx ← instantiateLCtxMVars (← getLCtx)
    let actual ← instantiateMVars (← Meta.inferType value)
    let target ← instantiateMVars target
    match Kernel.isDefEq (← getEnv) lctx actual target with
    | .ok true => pure value
    | .ok false => throwError "expected{indentExpr target}\nbut the term has type{indentExpr actual}"
    | .error error => throwError (error.toMessageData (← getOptions))

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {B : Base} {C : Cols B} {a : Late B C} (c : Refill a) {G : Type} [Group G] [Fintype G] {Pl0 I0 T : Type}
variable {Ks : Type} [Field Ks] [NumberField Ks] [iK : Algebra Ks a.D.what₂.LL]

theorem finTypRep_trans_cast {E : Type} [Field E] [NumberField E] [IsCMField E] {n : ℕ} {S S' : Set (Formalism.L2.NG.FinTyp E n)}
    (e : S = S') {α : Type} (f : α ≃ Formalism.L2.Col.FinTypCls S) (x : α) :
    Formalism.L2.Col.finTypRep S (f x) = Formalism.L2.Col.finTypRep S' (f.trans (Equiv.cast (congrArg Formalism.L2.Col.FinTypCls e)) x) := by
  subst e
  rfl

local instance instCMHostTr (D : D7) : IsCMField D.host.E := D.host.isCMField_hostE

variable {A : FamIn3 a.D.what₂.LL G Pl0 I0 (List ℕ) T a.D.R.m}

section Two

variable {R : RealDat a.D A.A Ks} {F : Face a.D A.A} {X0 : BaseLevelRowSide a.D} (Y : Read (A3 := A) R F X0)

abbrev occA : Set (Formalism.L2.NG.FinTyp a.D.host.E a.D.R.r) :=
  principalLevelFrame.OccRows R.θ Y.PY (R.MY 0) (fun l => levS _ (R.βY 0) (R.dat0 (R.levR F l)))
    (fun l => levChi _ (R.βY 0) (R.dat0 (R.levR F l))) fun _ => R.e0

def occB : Set (Formalism.L2.NG.FinTyp a.D.host.E a.D.R.r) :=
  {π | ∃ l, isotLB c.to a R.θ Y.PY (R.MY 0) (levS _ (R.βY 0) (R.dat0 (R.levR F l))) (levChi _ (R.βY 0) (R.dat0 (R.levR F l))) R.e0
    (principalLevelFrame.FinTyp.conjT π) ≠ ⊥}

theorem occ_eq : occA Y = occB c Y :=
  congrArg (fun m : type_of% (@principalLevelFrame.isotL a.D) => {π : Formalism.L2.NG.FinTyp a.D.host.E a.D.R.r | ∃ l,
    m R.θ Y.PY (R.MY 0) (levS _ (R.βY 0) (R.dat0 (R.levR F l))) (levChi _ (R.βY 0) (R.dat0 (R.levR F l))) R.e0
      (principalLevelFrame.FinTyp.conjT π) ≠ ⊥}) (isotL_eq c.to a)

def eFTB : a.D.what₂.FT ≃ Formalism.L2.Col.FinTypCls (occB c Y) :=
  Equiv.trans (β := Formalism.L2.Col.FinTypCls (occA Y)) Y.eFT (Equiv.cast (congrArg Formalism.L2.Col.FinTypCls (occ_eq c Y)))

theorem rep_eq (π : a.D.what₂.FT) : principalLevelFrame.rowRepR R.θ (Y.eFT π) = Formalism.L2.Col.finTypRep (occB c Y) (eFTB c Y π) :=
  finTypRep_trans_cast (occ_eq c Y) Y.eFT π

theorem prtE_tr (π : a.D.what₂.FT) : Y.Ish.prt π = (isotLB c.to a R.θ Y.PY (R.MY 0)
    (levS _ (R.βY 0) (R.dat0 (R.levR F true))) (levChi _ (R.βY 0) (R.dat0 (R.levR F true))) R.e0
    (principalLevelFrame.FinTyp.conjT (Formalism.L2.Col.finTypRep (occB c Y) (eFTB c Y π)))).map
      (PiTensorProduct.lift : MMap (R.MY 0) ≃ₗ[ℂ] _).toLinearMap :=
  (Y.prtE π).trans (congrArg₂ (fun (m : type_of% (@principalLevelFrame.isotL a.D)) (ρ : Formalism.L2.NG.FinTyp a.D.host.E a.D.R.r) =>
    (m R.θ Y.PY (R.MY 0) (levS _ (R.βY 0) (R.dat0 (R.levR F true))) (levChi _ (R.βY 0) (R.dat0 (R.levR F true))) R.e0
      (principalLevelFrame.FinTyp.conjT ρ)).map (PiTensorProduct.lift : MMap (R.MY 0) ≃ₗ[ℂ] _).toLinearMap) (isotL_eq c.to a) (rep_eq c Y π))

theorem replacementValues_baseLevelTypeParts_eq (π : a.D.what₂.FT) : Y.Iz.prt π = (isotLB c.to a R.θ Y.PY (R.MY 0)
    (levS _ (R.βY 0) (R.dat0 (R.levR F false))) (levChi _ (R.βY 0) (R.dat0 (R.levR F false))) R.e0
    (principalLevelFrame.FinTyp.conjT (Formalism.L2.Col.finTypRep (occB c Y) (eFTB c Y π)))).map
      (PiTensorProduct.lift : MMap (R.MY 0) ≃ₗ[ℂ] _).toLinearMap :=
  (Y.prtE0 π).trans (congrArg₂ (fun (m : type_of% (@principalLevelFrame.isotL a.D)) (ρ : Formalism.L2.NG.FinTyp a.D.host.E a.D.R.r) =>
    (m R.θ Y.PY (R.MY 0) (levS _ (R.βY 0) (R.dat0 (R.levR F false))) (levChi _ (R.βY 0) (R.dat0 (R.levR F false))) R.e0
      (principalLevelFrame.FinTyp.conjT ρ)).map (PiTensorProduct.lift : MMap (R.MY 0) ≃ₗ[ℂ] _).toLinearMap) (isotL_eq c.to a) (rep_eq c Y π))

theorem prtWE_tr (i : Fin a.D.R.m) (π : a.D.what₂.FT) : Y.IL.prtW i π = (isotLB c.to a R.θ (Y.PW i) (R.MW i (sg0 a.D A.A))
    (levS _ (R.βW i) (R.datWp i (R.levL F false (sg0 a.D A.A)))) (levChi _ (R.βW i) (R.datWp i (R.levL F false (sg0 a.D A.A))))
    (R.eWf i (sg0 a.D A.A)) (Formalism.L2.Col.finTypRep (occB c Y) (eFTB c Y π))).map
      (PiTensorProduct.lift : MMap (R.MW i (sg0 a.D A.A)) ≃ₗ[ℂ] _).toLinearMap :=
  (Y.prtWE i π).trans (congrArg₂ (fun (m : type_of% (@principalLevelFrame.isotL a.D)) (ρ : Formalism.L2.NG.FinTyp a.D.host.E a.D.R.r) =>
    (m R.θ (Y.PW i) (R.MW i (sg0 a.D A.A))
      (levS _ (R.βW i) (R.datWp i (R.levL F false (sg0 a.D A.A)))) (levChi _ (R.βW i) (R.datWp i (R.levL F false (sg0 a.D A.A))))
      (R.eWf i (sg0 a.D A.A)) ρ).map (PiTensorProduct.lift : MMap (R.MW i (sg0 a.D A.A)) ≃ₗ[ℂ] _).toLinearMap)
    (isotL_eq c.to a) (rep_eq c Y π))

theorem isomFin_tr (i : Fin a.D.R.m) : @principalLevelFrame.IsIsomFin c.to.D (Yc c.to.D 0) (Wc c.to.D ((i))) ((Y.ιW i)) := by
  constructor
  case bij => exact (Y.isomFin i).bij
  case conj => exact (Y.isomFin i).conj
  case lat => exact (Y.isomFin i).lat



def read : @Read c.to.D G _ _ Pl0 I0 T (famInThreeCoefficientChange c.to A) Ks _ _ (alg c.to iK) (by exact_by_kernel real c.to R) (by exact_by_kernel face c.to F) (baseLevelRowSideTransport c X0) :=
  @Read.mk c.to.D G _ _ Pl0 I0 T (famInThreeCoefficientChange c.to A) Ks _ _ (alg c.to iK) (by exact_by_kernel real c.to R) (by exact_by_kernel face c.to F) (baseLevelRowSideTransport c X0)
    (tup := by exact_by_kernel Y.tup)
    (tupT := by exact_by_kernel Y.tupT)
    (tupT_tup := by exact_by_kernel Y.tupT_tup)
    (tupTie := by exact_by_kernel Y.tupTie)
    (tup0 := by exact_by_kernel Y.tup0)
    (muAt := by exact_by_kernel Y.muAt)
    (hm := by exact_by_kernel Y.hm)
    (hTop := by exact_by_kernel topMult_tr c.to Y.hTop)
    (hinj := by exact_by_kernel inj_tr c.to Y.hinj)
    (Ish := by exact_by_kernel rowIds c Y.Ish)
    (Iz := by exact_by_kernel rowIds c Y.Iz)
    (IL := by exact_by_kernel liftIds c Y.IL)
    (Kc := colReal c Y.Kc)
    (PY := by exact_by_kernel rowPsi c.to Y.PY)
    (PW := by exact_by_kernel fun i => rowPsi c.to (Y.PW i))
    (eFT := by exact_by_kernel eFTB c Y)
    (ιW := by exact_by_kernel Y.ιW)
    (tied := by exact_by_kernel recTied_tr c Y.tied)
    (prtE := by exact_by_kernel prtE_tr c Y)
    (prtE0 := by exact_by_kernel replacementValues_baseLevelTypeParts_eq c Y)
    (prtWE := by exact_by_kernel prtWE_tr c Y)
    (xi := by exact_by_kernel Y.xi)
    (isomFin := by exact_by_kernel isomFin_tr c Y)
    (frameMatch := by exact_by_kernel Y.frameMatch)
    (hF := by exact_by_kernel Y.hF)
    (stdPsi := by exact_by_kernel Y.stdPsi)
    (jA := by exact_by_kernel Y.jA)
    (jA0 := by exact_by_kernel Y.jA0)
    (eMt := by exact_by_kernel Y.eMt)
    (formsA := by exact_by_kernel Y.formsA)
    (latA := by exact_by_kernel Y.latA)
    (formsAtBottomLevel := by exact_by_kernel Y.formsAtBottomLevel)
    (latA0 := by exact_by_kernel Y.latA0)
    (formsL := by exact_by_kernel Y.formsL)
    (latL := by exact_by_kernel Y.latL)
    (topRead := by exact_by_kernel (fun t h x => (val_trans_ofEq (j := Y.Ish.jX (Y.tup t) h)
      (congrFun (congrFun (spCCXP_eq c F Y.tupT Y.hm Y.hTop) true) (Y.tup t)) _).trans (Y.topRead t h x)))
    (topRead0 := by exact_by_kernel (fun t h x => (val_trans_ofEq (j := Y.Iz.jX (Y.tup t) h)
      (congrFun (congrFun (spCCXP_eq c F Y.tupT Y.hm Y.hTop) false) (Y.tup t)) _).trans (Y.topRead0 t h x)))
    (mtRead := by exact_by_kernel Y.mtRead)
    (mj := by exact_by_kernel mjTie c Y.mj)
    (mjRead := by exact_by_kernel (fun i y => (val_trans_ofEq (j := Y.IL.jMj i) (congrFun (spWc_eq c F Y.tupT Y.hm Y.hTop Y.hinj) i) y).trans
      (Y.mjRead i y)))
    (stable := by exact_by_kernel Y.stable)
    (stable0 := by exact_by_kernel Y.stable0)
    (eE := by exact_by_kernel Y.eE)
    (eE_read := by exact_by_kernel (fun x => (val_trans_ofEq (j := Y.Ish.jE) (congrFun (spEEc_eq c F Y.tupT Y.hm Y.hTop) true) x).trans (Y.eE_read x)))
    (dall := by exact_by_kernel (Y.dall.trans (congrArg (fun m : type_of% (@Mult.Mult a.D) => Module.finrank ℂ
      (m R.θ (R.MY 0) (levS _ (R.βY 0) (R.dat0 (R.levR F true))) (levChi _ (R.βY 0) (R.dat0 (R.levR F true))))) (mult_eq c.to a))))
    (junk := by exact_by_kernel Y.junk)
    (cen0 := fun cG h => by exact_by_kernel Y.cen0 _ (keep_back c.to c.same' (cG := by exact_by_kernel cG) (by exact_by_kernel h)))
    (cen1 := fun cG h => by exact_by_kernel Y.cen1 _ (keep_back c.to c.same' (cG := by exact_by_kernel cG) (by exact_by_kernel h)))
    (lam := by exact_by_kernel Y.lam)
    (occ := by exact_by_kernel Y.occ)
    (kap := by exact_by_kernel Y.kap)
    (bu := by exact_by_kernel Y.bu)
    (ze := by exact_by_kernel Y.ze)

end Two

section Three

variable {R : RealDat3 a.D A Ks} {F : Face3 a.D A} {X0 : BaseLevelRowSide a.D} {Y : Read (A3 := A) R.toRealDat F.lv2 X0}


variable (R) in
def partsB : Parts R :=
  ((letI := alg c.to iK; (real3 c.to R).EEp3), (letI := alg c.to iK; (real c.to R.toRealDat).EEat),
    (letI := alg c.to iK; (real3 c.to R).Wp3))

variable (Z : ReadL R F X0 Y) (u : Parts R)

def eRRu : (Fin ((cxW R F u).data F.cr true).D → a.D.what₂.LL) ≃ₗ[a.D.what₂.LL] a.D.div.RR.V := Z.eRR

def riemannRochSpaceCoordinateEquiv : (Fin ((cxW R F u).data F.cr false).D → a.D.what₂.LL) ≃ₗ[a.D.what₂.LL] X0.s.RR.V := Z.eRR0

def jWu (i : Fin a.D.R.m) :
    (Fin (((cxW R F u).data F.cr false).dW i) → a.D.what₂.LL) →ₛₗ[a.D.what₂.embLL] a.D.what₂.Mj ((i : ℕ) + 1) := Z.jW i

theorem jEEu : ∀ y, (Y.Ish.jE (a.D.jEE (eRRu Z u y))).1 =
    PiTensorProduct.lift (R.HE.e (Tw.out (s := twAt a.D.what₂.embLL A.A.v0) (E := R.HE.H)
      ((cxW R F u).iC F.cr true A.A.μ0 (Cx.cpt A.A.v0.embedding y)))) := Z.jEE

theorem jEE0u : ∀ y, (Y.Iz.jE (X0.s.jEE (riemannRochSpaceCoordinateEquiv Z u y))).1 =
    PiTensorProduct.lift (R.HE.e (Tw.out (s := twAt a.D.what₂.embLL A.A.v0) (E := R.HE.H)
      ((cxW R F u).iC F.cr false A.A.μ0 (Cx.cpt A.A.v0.embedding y)))) := Z.jEE0

theorem metu : ∀ v, v ≠ A.A.v0 → ∀ x y, Formalism.HermitianLatticesTheory.majAt a.D.div.RR.b a.D.div.RR.X v (eRRu Z u x) (eRRu Z u y) =
    Formalism.HermitianLatticesTheory.majAt (Pi.basisFun a.D.what₂.LL _) ((cxW R F u).data F.cr true).XE v x y := Z.met

theorem met0u : ∀ v, v ≠ A.A.v0 → ∀ x y, Formalism.HermitianLatticesTheory.majAt X0.s.RR.b X0.s.RR.X v (riemannRochSpaceCoordinateEquiv Z u x) (riemannRochSpaceCoordinateEquiv Z u y) =
    Formalism.HermitianLatticesTheory.majAt (Pi.basisFun a.D.what₂.LL _) ((cxW R F u).data F.cr false).XE v x y := Z.met0


open Classical in
include Z in
theorem etaJu : ∀ (i : Fin a.D.R.m) w, a.D.what₂.etaJ ((i : ℕ) + 1) w =
    if a.D.plEq w ∈ R.twPl then A.A.fam.etaJ F.P0 F.ψ0 (A.fam3.toSub2 (cxW R F u).zs) i (R.mu (a.D.plEq w)) (a.D.plEq w) else 0 :=
  Z.etaJ

def readL : @ReadL c.to.D G _ _ Pl0 I0 T (famInThreeCoefficientChange c.to A) Ks _ _ (alg c.to iK) (real3 c.to R) (face3 c.to F) (baseLevelRowSideTransport c X0)
    ((read c Y)) :=
  @ReadL.mk c.to.D G _ _ Pl0 I0 T (famInThreeCoefficientChange c.to A) Ks _ _ (alg c.to iK) (real3 c.to R) (face3 c.to F) (baseLevelRowSideTransport c X0) (by exact_by_kernel read c Y)
    (eRR := by exact_by_kernel eRRu Z (partsB c R))
    (eRR0 := by exact_by_kernel riemannRochSpaceCoordinateEquiv Z (partsB c R))
    (jEE := by exact_by_kernel (fun y => (val_trans_ofEq (j := Y.Ish.jE) (congrFun (spEEc_eq c F.lv2 Y.tupT Y.hm Y.hTop) true) _).trans
      (jEEu Z (partsB c R) y)))
    (jEE0 := by exact_by_kernel (fun y => (val_trans_ofEq (j := Y.Iz.jE) (congrFun (spEEc_eq c F.lv2 Y.tupT Y.hm Y.hTop) false) _).trans
      (jEE0u Z (partsB c R) y)))
    (met := by exact_by_kernel metu Z (partsB c R))
    (met0 := by exact_by_kernel met0u Z (partsB c R))
    (rr := by exact_by_kernel Z.rr)
    (rr0 := by exact_by_kernel Z.rr0)
    (jW := by exact_by_kernel jWu Z (partsB c R))
    (jW_read := by exact_by_kernel Z.jW_read)
    (etaJ := by exact_by_kernel etaJu Z (partsB c R))

end Three

end GlobalTheory.Mem.R3.Tr

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ReplacementValuesBaseLevelTypePartsEq =====
