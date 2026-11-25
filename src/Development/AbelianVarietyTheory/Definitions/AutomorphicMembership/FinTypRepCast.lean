module

public import Formalism.LocalToGlobal.IndefiniteReal.IsMultMapUnivZero
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RealIoX
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.GoodPartEq
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
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.JEvExists

@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH NumberField IsDedekindDomain Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.IndefR Formalism.IndefR.Links
open Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Lev Formalism.L2.Pj Formalism.L2.Host
open Formalism.IndefR.RecTie GlobalTheory.RealGeo
open scoped TensorProduct

namespace GlobalTheory.Mem.R3.Tr

variable {B : Base} {C : Cols B} {a : Late B C} (b : Late B C) {G : Type} [Group G] [Fintype G] {Pl0 I0 T : Type}

def rowPsi {V : HSp a.D} {n : ℕ} (P : principalLevelFrame.RowPsi V n) : @principalLevelFrame.RowPsi b.D ((V)) n where
  ψ := P.ψ
  inj := P.inj
  into := P.into
  onto := P.onto


variable (a) in
def isotLB : type_of% (@principalLevelFrame.isotL b.D) := @fun V n S θ P M J χ e π =>
  (((@principalLevelFrame.isotL a.D ((V)) n ((S)) ((θ)) (((rowPsi a P))) (((ds a M))) ((J)) ((χ)) ((e)) ((π))) : _))


variable (a) in
theorem isotL_eq : @principalLevelFrame.isotL b.D = @isotLB B C a b := by
  funext V n S θ P M J χ e π
  delta isotLB principalLevelFrame.isotL
  exact (congrArg₂
    (fun (g : type_of% (@goodPart b.D)) (m : type_of% (@Mult.Mult b.D)) =>
      g θ M J χ e ⊓ principalLevelFrame.isotIn (principalLevelFrame.actM P M)
        (⨆ N : ℕ, m θ M (principalLevelFrame.levN P (N + 1)) fun _ => 1) π)
    (goodPart_eq a b) (mult_eq a b) :)

section General

variable {D : D7} {A : FamIn D.what₂.LL G Pl0 T D.R.m} {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL]

def topW (m : type_of% (@MultT D)) (R : RealDat D A Ks) : Prop :=
  ∀ t, LinearMap.range (R.cX.toMap R.prX ∘ₗ (R.HX t).e) = m R.θ R.MX (levS _ R.βX (R.datXt t)) (levChi _ R.βX (R.datXt t))

abbrev ccJ (m : type_of% (@MultT D)) (R : RealDat D A Ks) (t : T) (j : ℕ) : Submodule ℂ (AmbT (R.MY j)) :=
  m R.θ (R.MY j) (if j < D.R.m then levS _ (R.βY j) (R.datYt t j R.triv) else Set.univ)
    (if j < D.R.m then levChi _ (R.βY j) (R.datYt t j R.triv) else 0)

def ioCW (m : type_of% (@MultT D)) (R : RealDat D A Ks) (y : IoYT (@m) R) (t : T) (k : ℕ) :
    ccJ (@m) R t (k + 1) →ₗ[ℂ] ccJ (@m) R t k :=
  if h : k + 1 < D.R.m then
    (LinearEquiv.ofEq _ _ (by simp only [ccJ, if_pos (show k < D.R.m by omega)])).toLinearMap ∘ₗ
      y t k ∘ₗ (LinearEquiv.ofEq _ _ (by simp only [ccJ, if_pos h])).toLinearMap
  else 0

def ioXW (m : type_of% (@MultT D)) (R : RealDat D A Ks) (x : IoXT (@m) R) (hm : 0 < D.R.m) (hT : topW (@m) R) (t : T) :
    m R.θ R.MX (levS _ R.βX (R.datXt t)) (levChi _ R.βX (R.datXt t)) →ₗ[ℂ] ccJ (@m) R t (D.R.m - 1) :=
  (LinearEquiv.ofEq _ _ (by simp only [ccJ, if_pos (show D.R.m - 1 < D.R.m by omega)])).toLinearMap ∘ₗ
    x t ∘ₗ (LinearEquiv.ofEq _ _ (hT t).symm).toLinearMap

def ioOKW (m : type_of% (@MultT D)) (Ch : ChainReal D) (c : Bool) (μ : D.what₂.Tup)
    (y : ∀ k, m Ch.θ (Ch.MY (k + 1)) (Ch.J c μ (k + 1)) (Ch.χ c μ (k + 1)) →ₗ[ℂ] m Ch.θ (Ch.MY k) (Ch.J c μ k) (Ch.χ c μ k))
    (x : m Ch.θ Ch.MX (Ch.JX c μ) (Ch.χX c μ) →ₗ[ℂ] m Ch.θ (Ch.MY (D.R.m - 1)) (Ch.J c μ (D.R.m - 1)) (Ch.χ c μ (D.R.m - 1))) :
    Prop :=
  Lift.IsChainIo (G := fun j => GA D (Ch.Y j)) (D := fun j => ⨂[ℂ] τ, (Ch.MY j).sm τ)
    (fun j => m Ch.θ (Ch.MY j) (Ch.J c μ j) (Ch.χ c μ j)) (D.R.m - 1) (Ch.meas c μ) (Ch.fd μ) (Ch.th μ) (Ch.pt c μ) Ch.It y ∧
  (1 ≤ D.R.m → Lift.IsIo (Ch.measX c μ) (Ch.fdX μ) (Ch.thX μ) (Ch.ptX c μ) Ch.ItX (m Ch.θ Ch.MX (Ch.JX c μ) (Ch.χX c μ))
    (m Ch.θ (Ch.MY (D.R.m - 1)) (Ch.J c μ (D.R.m - 1)) (Ch.χ c μ (D.R.m - 1))) x)

end General

variable {Ks : Type} [Field Ks] [NumberField Ks] [iK : Algebra Ks a.D.what₂.LL]

section Chain

variable {A : FamIn a.D.what₂.LL G Pl0 T a.D.R.m} {R : RealDat a.D A Ks}

theorem topMult_tr (h : TopMultH R) : letI := alg b iK; TopMultH (real b R) := (cast (congrArg (fun m : type_of% (@MultT a.D) => topW (@m) R) (multT_eq b a)) h : _)

variable (F : Face a.D A) (tupT : a.D.what₂.Tup → T) (hm : 0 < a.D.R.m) (hTop : TopMultH R)

abbrev chainB : ChainReal b.D :=
  @toChainReal b.D G _ _ Pl0 T (famM b A) Ks _ _ (alg b iK) (real b R) (face b F) (tupT) (hm) (topMult_tr b hTop)

theorem chain_EEc : (toChainReal R F tupT hm hTop).EEc = ((chainB b F tupT hm hTop).EEc) := by
  delta ChainReal.EEc chainB toChainReal real
  exact ((congrArg (fun (g : type_of% (@goodPart a.D)) (c : Bool) =>
    (g R.θ (R.MY 0) (levS _ (R.βY 0) (R.dat0 (R.levR F c))) (levChi _ (R.βY 0) (R.dat0 (R.levR F c))) R.e0).map
      (PiTensorProduct.lift : MMap (R.MY 0) ≃ₗ[ℂ] AmbT (R.MY 0)).toLinearMap) (goodPart_eq b a)) :)

theorem chain_CC : (toChainReal R F tupT hm hTop).CC = ((chainB b F tupT hm hTop).CC) :=
  (((congrFun (congrArg (fun (m : type_of% (@MultT a.D)) (Ch : ChainReal a.D) => fun c μ j => m Ch.θ (Ch.MY j) (Ch.J c μ j) (Ch.χ c μ j)) (multT_eq b a) :)
    (toChainReal R F tupT hm hTop)) :))

theorem chain_CCP : (toChainReal R F tupT hm hTop).CCP = ((chainB b F tupT hm hTop).CCP) :=
  (((congrFun (congrArg (fun (m : type_of% (@MultT a.D)) (Ch : ChainReal a.D) => fun c μ j => m Ch.θ (Ch.MY j) (Ch.JP c μ j) (Ch.χP c μ j)) (multT_eq b a) :)
    (toChainReal R F tupT hm hTop)) :))

theorem chain_CCX : (toChainReal R F tupT hm hTop).CCX = ((chainB b F tupT hm hTop).CCX) :=
  (((congrFun (congrArg (fun (m : type_of% (@MultT a.D)) (Ch : ChainReal a.D) => fun c μ => m Ch.θ Ch.MX (Ch.JX c μ) (Ch.χX c μ)) (multT_eq b a) :)
    (toChainReal R F tupT hm hTop)) :))

theorem chain_CCXP : (toChainReal R F tupT hm hTop).CCXP = ((chainB b F tupT hm hTop).CCXP) :=
  (((congrFun (congrArg (fun (m : type_of% (@MultT a.D)) (Ch : ChainReal a.D) => fun c μ => m Ch.θ Ch.MX (Ch.JXP c μ) (Ch.χXP c μ)) (multT_eq b a) :)
    (toChainReal R F tupT hm hTop)) :))

theorem chain_ioC (t : T) (k : ℕ) (v : AmbT (R.MY (k + 1))) (hv : v ∈ ccJ (@multTB B C b a) R t (k + 1))
    (hv0 : v ∈ ccJ (@MultT a.D) R t (k + 1)) :
    (ioCW (@multTB B C b a) R (ioYB b R) t k ⟨v, hv⟩).1 = (ioCW (@MultT a.D) R ((R.ioY)) t k ⟨v, hv0⟩).1 :=
  (((cast (io_congr R (multT_eq b a) (fun m y _ => ∀ hv : v ∈ ccJ (@m) R t (k + 1),
    (ioCW (@m) R y t k ⟨v, hv⟩).1 = (ioCW (@MultT a.D) R ((R.ioY)) t k ⟨v, hv0⟩).1) ((R.ioY)) ((R.ioX))) (fun _ => rfl) hv) : _))

theorem chain_ioX (t : T) (v : AmbT R.MX) (hT : topW (@multTB B C b a) R)
    (hv : v ∈ multTB b a R.θ R.MX (levS _ R.βX (R.datXt t)) (levChi _ R.βX (R.datXt t)))
    (hv0 : v ∈ MultT R.θ R.MX (levS _ R.βX (R.datXt t)) (levChi _ R.βX (R.datXt t))) :
    (ioXW (@multTB B C b a) R (ioXB b R) hm hT t ⟨v, hv⟩).1 = (ioXW (@MultT a.D) R ((R.ioX)) hm hTop t ⟨v, hv0⟩).1 :=
  (((cast (io_congr R (multT_eq b a) (fun m _ x => ∀ (hT : topW (@m) R)
      (hv : v ∈ m R.θ R.MX (levS _ R.βX (R.datXt t)) (levChi _ R.βX (R.datXt t))),
    (ioXW (@m) R x hm hT t ⟨v, hv⟩).1 = (ioXW (@MultT a.D) R ((R.ioX)) hm hTop t ⟨v, hv0⟩).1) ((R.ioY)) ((R.ioX)))
    (fun _ _ => rfl) hT hv) : _))

theorem chain_ioOK {c : Bool} {μ : a.D.what₂.Tup} (h : (chainB b F tupT hm hTop).IoOK c ((μ))) :
    (toChainReal R F tupT hm hTop).IoOK c μ := by
  let Ch := toChainReal R F tupT hm hTop
  let P (m : type_of% (@MultT a.D)) (y : IoYT (@m) R) (x : IoXT (@m) R) : Prop :=
    ∃ hT : topW (@m) R,
      ioOKW (@m) Ch c μ (ioCW (@m) R y (tupT μ)) (ioXW (@m) R x hm hT (tupT μ))
  have e : P (@MultT a.D) R.ioY R.ioX = P (@multTB B C b a) (ioYB b R) (ioXB b R) :=
    io_congr R (multT_eq b a) P R.ioY R.ioX
  have hT : topW (@multTB B C b a) R :=
    (congrArg (fun m : type_of% (@MultT a.D) => topW (@m) R) (multT_eq b a)).mp hTop
  have hB : P (@multTB B C b a) (ioYB b R) (ioXB b R) := by
    refine ⟨hT, ?_⟩
    -- Both types are determined, so let the kernel check their conversion.
    run_tac
      Lean.Elab.Tactic.closeMainGoalUsing `chain_ioOK fun _ _ =>
        Lean.Elab.Term.elabTerm (Lean.mkIdent `h) none
  obtain ⟨_, hA⟩ := e.mpr hB
  exact hA

variable (hinj : ∀ i t, Function.Injective (R.extV i t))


include hinj in
theorem inj_tr : letI := alg b iK; ∀ i t, Function.Injective ((real b R).extV i t) := hinj

abbrev liftB : LiftReal b.D (chainB b F tupT hm hTop) :=
  (((@toLiftReal b.D G _ _ Pl0 T (famM b A) Ks _ _ (alg b iK) (real b R) (face b F) ((tupT)) ((hm)) (topMult_tr b hTop)
    (inj_tr b hinj)) : _))

theorem lift_Wc : (toLiftReal R F tupT hm hTop hinj).Wc = ((liftB b F tupT hm hTop hinj).Wc) := by
  delta LiftReal.Wc liftB toLiftReal chainB toChainReal real
  exact ((congrFun (congrArg (fun (g : type_of% (@goodPart a.D)) (L : LiftReal a.D (toChainReal R F tupT hm hTop)) => fun i =>
    (g R.θ (L.MW i) (L.JW i) (L.χW i) (L.eW i)).map (PiTensorProduct.lift : MMap (L.MW i) ≃ₗ[ℂ] L.AmbW i).toLinearMap)
    (goodPart_eq b a) :) (toLiftReal R F tupT hm hTop hinj)) :)

theorem lift_MultW : (toLiftReal R F tupT hm hTop hinj).MultW = ((liftB b F tupT hm hTop hinj).MultW) :=
  (((congrFun (congrArg (fun (m : type_of% (@MultT a.D)) (L : LiftReal a.D (toChainReal R F tupT hm hTop)) => fun i =>
    m R.θ (L.MW i) (L.JA i) (L.χA i)) (multT_eq b a) :) (toLiftReal R F tupT hm hTop hinj)) :))

end Chain

end GlobalTheory.Mem.R3.Tr

end
