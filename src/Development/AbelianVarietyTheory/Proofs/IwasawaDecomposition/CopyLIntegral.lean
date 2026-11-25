module

public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.WeakCharInertPartRealAdelicDataTransport
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinRepApply
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.FieldValuesMemFixedField
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.OmPinsTr
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.GoodPartEq
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.Wp3ApplyEqSqMulSubSqMul
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
public import Lean.Meta.ExprDefEq

@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH NumberField IsDedekindDomain Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.IndefR Formalism.IndefR.Links
open Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Lev Formalism.L2.Pj Formalism.L2.Host
open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Tr

namespace GlobalTheory.Mem.R3.DatCopy

section Gen

variable {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 I0 T : Type} {A : FamIn3 D.what₂.LL G Pl0 I0 (List ℕ) T D.R.m}
  {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL]

def setIo (R : RealDat3 D A Ks) (y : type_of% R.ioY) (x : type_of% R.ioX) : RealDat3 D A Ks :=
  { R with ioY := y, ioX := x }

end Gen

variable {B : Base} {C : Cols B} {a : Late B C} (b : Late B C) {G : Type} [Group G] [Fintype G] {Pl0 I0 T : Type}
variable {Ks : Type} [Field Ks] [NumberField Ks] [iK : Algebra Ks a.D.what₂.LL]

section Three

set_option backward.isDefEq.lazyProjDelta false
set_option backward.isDefEq.lazyWhnfCore false

variable {A : FamIn3 a.D.what₂.LL G Pl0 I0 (List ℕ) T a.D.R.m} (R : RealDat3 a.D A Ks) {F : Face3 a.D A}

def twice : RealDat3 a.D A Ks := real3 (a := b) a (iK := alg b iK) (real3 b R)

def twiceY : type_of% R.ioY := by
  exact ((twice b R).ioY :)

def twiceX : type_of% R.ioX := by
  exact ((twice b R).ioX :)

theorem twiceY_eq : R.ioY = twiceY b R := by
  apply eq_of_heq
  exact (HEq.trans (real_ioY b R.toRealDat)
      (real_ioY (a := b) a (iK := alg b iK) (real b R.toRealDat)) :)

theorem twiceX_eq : R.ioX = twiceX b R := by
  apply eq_of_heq
  exact (HEq.trans (real_ioX b R.toRealDat)
      (real_ioX (a := b) a (iK := alg b iK) (real b R.toRealDat)) :)

theorem twice_eq : R = twice b R := congrArg₂ (setIo R) (twiceY_eq b R) (twiceX_eq b R)

variable {R}

theorem holds_back (h : letI := alg b iK; Holds (real3 b R) (face3 b F)) : Holds R F := by
  have h2 := holds_tr (a := b) a (iK := alg b iK) h
  exact (by exact ((cast (congrArg (fun R' : RealDat3 a.D A Ks => Holds R' F) (twice_eq b R).symm) ((h2))) : _))

theorem rowTest_tr (h : Rat.RowTest (R.toCx3 F)) : letI := alg b iK; Rat.RowTest ((real3 b R).toCx3 (face3 b F)) := by
  exact ((congrArg (fun X : Cx.CxData A.fam3.amb3 => Rat.RowTest X) (toCx3_eq b R F)).mp h :)

end Three

theorem multEq_tr {A : FamIn a.D.what₂.LL G Pl0 T a.D.R.m} {R : RealDat a.D A Ks} (h : GlobalTheory.CuspMult.MultEq R) :
    letI := alg b iK; GlobalTheory.CuspMult.MultEq (real b R) := by
  intro i M₀ j Φ hI W _ _ σ h1 h2 h3
  have key := h ((by exact (i :))) ((by exact ((ds a M₀) :))) ((by exact (j :))) ((by exact (Φ :))) ⟨(by exact (hI.isom :)), (by exact (hI.conj :)), (by exact (hI.frame :))⟩ W ((by exact (σ :))) ((by exact (h1 :))) ((by exact (h2 :))) ((by exact (h3 :)))
  delta GlobalTheory.CuspMult.cuspMult GlobalTheory.CuspMult.allMaps
  rewrite [mult_eq a b]
  exact key

section Dat

variable {px : PreX B.toPre} {I : ColIn B px} {hX : B.fields.Ok} {Tw : Top.TwDat B} {Wt : Set B.places.Pl}



def copy (s : SameGrp a b) (z : Dat a.st I hX Tw Wt) : Dat b.st I hX Tw Wt :=
  @Dat.mk b.st px I hX Tw Wt z.Xg z.tr (coreJ b z.core) (alg b z.alg) z.alg_eq (real3 b (iK := z.alg) z.R)
    (z.cG.trans s.iso) (geoHalf b (iK := z.alg) z.geo) (pins_tr b (iK := z.alg) s z.pins)
    ⟨levIs_tr b z.lev.is, congrArg (chFr b) z.lev.C, z.lev.xiH, z.lev.Pg, z.lev.Q, z.lev.beta⟩
    z.idG
    (by
      have h := (goodSet_iff a.st (px := px) _ _).1 z.good
      have e : ∀ g, a.D.ntypes.e0.coeff ((z.R.eG.trans z.cG) g) = b.D.ntypes.e0.coeff (((z.R.eG.trans z.cG).trans s.iso) g) :=
        fun g => (s.e0 _).symm
      simp only [e] at h
      exact (goodSet_iff b.st (px := px) ((z.R.eG.trans z.cG).trans s.iso) z.Xg).2 h)
    z.mu z.fieldValues_mem_fixedField z.Ks_le

variable (s : SameGrp a b) {z : Dat a.st I hX Tw Wt}

theorem copy_exAt (h : z.R.toRealDat.ExAt) : (copy b s z).R.toRealDat.ExAt := exAt_tr b (iK := z.alg) h

theorem copy_lUnif (h : z.R.toRealDat.LUnif) : (copy b s z).R.toRealDat.LUnif := h

theorem copy_lIntegral (h : z.R.toRealDat.LIntegral) : (copy b s z).R.toRealDat.LIntegral := h

theorem copy_multEq (h : GlobalTheory.CuspMult.MultEq z.R.toRealDat) : GlobalTheory.CuspMult.MultEq (copy b s z).R.toRealDat :=
  (multEq_tr b (iK := z.alg) h)

theorem copy_rowTest (h : Rat.RowTest (z.R.toCx3 z.F)) : Rat.RowTest ((copy b s z).R.toCx3 (copy b s z).F) :=
  (by exact ((rowTest_tr b (iK := z.alg) h) :))

theorem holds_of_copy (h : Holds (copy b s z).R (copy b s z).F) : Holds z.R z.F := holds_back b (iK := z.alg) h

end Dat

end GlobalTheory.Mem.R3.DatCopy

end
