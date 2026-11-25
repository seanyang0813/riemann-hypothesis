module

public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ReadPk
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ChainComparisonTransferOtherLaterStages
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LiftsCompatibleOtherLaterStagesOfSameChoices
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.OmPinsTr
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NonzeroPlacesOverPrimesLifts
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.WeakCharInertPartRealAdelicDataTransport
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HdTr
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RowBasisCongruenceLengthsOtherLaterStagesStatement
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
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.GoodPartEq
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.Wp3ApplyEqSqMulSubSqMul
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TypeRepresentativesPartsOtherLaterStagesStatement

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ChainComparisonTransferOtherLaterStagesStatement, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LiftsCompatibleOtherLaterStagesOfSameChoicesStatement, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsMovedRowLiftDataToFittingStages

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ChainComparisonTransferOtherLaterStagesStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ChainComparisonTransferOtherLaterStagesStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ReadPk\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ChainComparisonTransferOtherLaterStages\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx Formalism.IndefR.RecTie
open scoped TensorProduct InnerProductSpace ComplexOrder
attribute [local instance] Formalism.BasicNotions.Host.cmStar Formalism.IndefR.principalLevelFrame.instCMHostI
open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.Mem.R3.Tr

theorem _root_.GlobalTheory.T.chainComparison_transfer_otherLaterStages : ∀ (B : Base) (C : Cols B) (a b : Late B C) (G : Type) [Group G] [Fintype G] (Pl0 T : Type) (Ks : Type) [Field Ks] [NumberField Ks] [iK : Algebra Ks a.D.what₂.LL] (A : FamIn a.D.what₂.LL G Pl0 T a.D.R.m) (R : RealDat a.D A Ks) (F : Face a.D A) (y : Hd R) (y' : HdB b R), Same b y y' → ∀ (bb : Bool) (Φ : Type) (rep : Φ → _) (Top : C.Tup → Hs) (c : ChD C.Tup Φ B.R.m Top) jA (t : ChT y F bb rep (Top := Top) jA c) jA', HEq jA' jA → ∃ t' : @ChT b.D G _ _ Pl0 T (famM b A) Ks _ _ (alg b iK) (real b R) y' (face b F) bb Φ ((rep)) Top jA' c, letI := alg b iK; HEq t'.jE t.jE ∧ HEq t'.jM t.jM ∧ HEq t'.jX t.jX := by
  first | exact @GlobalTheory.Mem.R3.Rw.chT_tr
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ChainComparisonTransferOtherLaterStagesStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LiftsCompatibleOtherLaterStagesOfSameChoicesStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LiftsCompatibleOtherLaterStagesOfSameChoicesStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ReadPk\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LiftsCompatibleOtherLaterStagesOfSameChoices\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx Formalism.IndefR.RecTie
open scoped TensorProduct InnerProductSpace ComplexOrder
attribute [local instance] Formalism.BasicNotions.Host.cmStar Formalism.IndefR.principalLevelFrame.instCMHostI
open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.Mem.R3.Tr

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LiftsCompatibleOtherLaterStagesOfSameChoicesStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsMovedRowLiftDataToFittingStages =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsMovedRowLiftDataToFittingStages", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.OmPinsTr\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NonzeroPlacesOverPrimesLifts\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.WeakCharInertPartRealAdelicDataTransport\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.GoodPartEq\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.Wp3ApplyEqSqMulSubSqMul\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ChainComparisonTransferOtherLaterStagesStatement\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HdTr\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LiftsCompatibleOtherLaterStagesOfSameChoicesStatement\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RowBasisCongruenceLengthsOtherLaterStagesStatement\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TypeRepresentativesPartsOtherLaterStagesStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx Formalism.IndefR.RecTie
open scoped TensorProduct InnerProductSpace ComplexOrder
attribute [local instance] Formalism.BasicNotions.Host.cmStar Formalism.IndefR.principalLevelFrame.instCMHostI
open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.Mem.R3.Tr

namespace GlobalTheory.Mem.R3.Rw.Mv

variable {B : Base} {C : Cols B} {a : Late B C} (b : Late B C) {px : PreX B.toPre} {I : ColIn B px} {hX : B.fields.Ok}
  {T : TwDat B} {Wt : Set B.places.Pl}

def sameGrp {f : Fr B.toPre} (h : GrpTrue a.N f) (h' : GrpTrue b.N f) : SameGrp a b where
  e k := plEquiv a.N.naut b.N.naut k
  pl k v := TypesTrue.plGw_plEquiv h h' k v
  e0 g := h.typeIdempotent_coeff_across_layers h' g

def cpR (z : Dat a.st I hX T Wt) :
    @RealDat3 b.st.toD7 _ _ _ _ _ _ (famR b.st I hX (usedOf I T Wt) z.Xg z.tr) (coreJ b z.core).Q.c.F _ _ (alg b z.alg) :=
  real3 b (iK := z.alg) z.R

theorem levOf_tr {U : Set I.ι} {L : Links.LevCh a.D (TupU I U)} (h : LevOf a.st I U L) : LevOf b.st I U (levCh b L) := by
  constructor
  case is => exact levIs_tr b h.is
  case C => exact congrArg (chFr b) h.C
  case xiH => exact h.xiH
  case Pg => exact h.Pg
  case Q => exact h.Q
  case beta => exact h.beta

theorem goodSet_tr (s : SameGrp a b) {eR : Gc B px ≃* G0g a.D.nd} {Xg : Finset (Gc B px → B.LL)}
    (h : GoodSet a.st (px := px) eR Xg) : GoodSet b.st (px := px) (eR.trans s.iso) Xg := by
  have e : (fun g => a.D.ntypes.e0.coeff (eR g)) = fun g => b.D.ntypes.e0.coeff ((eR.trans s.iso) g) :=
    funext fun g => (s.e0 (eR g)).symm
  refine (goodSet_iff b.st (px := px) _ Xg).2 ?_
  exact (congrArg (fun c : Gc B px → ℂ => (∀ χ : Gc B px → B.LL, χ ∈ Xg ↔ IsAbsIrrChar χ ∧
    ∑ g : Gc B px, c g * B.embLL (χ g) = B.embLL (χ 1)) ∧ ∀ g, B.embLL ((idemOf Xg).coeff g) = c g) e).mp
    ((goodSet_iff a.st (px := px) eR Xg).1 h)

def cpDat (s : SameGrp a b) (z : Dat a.st I hX T Wt) : Dat b.st I hX T Wt :=
  @Dat.mk b.st px I hX T Wt
    (Xg := z.Xg)
    (tr := z.tr)
    (core := coreJ b z.core)
    (alg := alg b z.alg)
    (alg_eq := z.alg_eq)
    (R := cpR b z)
    (cG := z.cG.trans s.iso)
    (geo := geoHalf b (iK := z.alg) z.geo)
    (pins := pins_tr b (iK := z.alg) s z.pins)
    (lev := levOf_tr b z.lev)
    (idG := z.idG)
    (good := by
      let : Algebra (coreJ b z.core).Q.c.F b.st.toD7.what₂.LL := alg b z.alg
      have heq : (cpR b z).eG.trans (z.cG.trans s.iso) = (z.R.eG.trans z.cG).trans s.iso :=
        MulEquiv.ext fun _ => rfl
      rw [heq]
      exact goodSet_tr b s z.good)
    (mu := z.mu)
    (fieldValues_mem_fixedField := z.fieldValues_mem_fixedField)
    (Ks_le := z.Ks_le)

theorem lawsCore_tr {K : Formalism.L2.Pj.Core a.D} (h : Formalism.L2.Pj.LawsCore K) : Formalism.L2.Pj.LawsCore (core b K) := by
  constructor
  case toLawsM => exact lawsM_tr b h.toLawsM
  case cuspMul => exact h.cuspMul
  case latZ => exact h.latZ
  case cuNe => exact h.cuNe
  case expo => exact h.expo

variable (s : SameGrp a b) (z : Dat a.st I hX T Wt)

theorem cp_holds (h : Holds z.R z.F) : Holds (cpDat b s z).R (cpDat b s z).F := holds_tr b (iK := z.alg) h

theorem cp_exAt (h : z.R.toRealDat.ExAt) : (cpDat b s z).R.toRealDat.ExAt := exAt_tr b (iK := z.alg) h

theorem cp_inGeo (h : GlobalTheory.RealGeo.InGeo z.geo) : GlobalTheory.RealGeo.InGeo (cpDat b s z).geo := inGeo_tr b (iK := z.alg) h

theorem cp_canon (h : z.core.Q.Canon) : (cpDat b s z).core.Q.Canon := h

theorem forcedContentPlaces_eq_transport_sameFiniteGroup (F0) : (cpDat b s z).W1 F0 = z.W1 ((F0)) :=
  congrArg (fun X : Cx.CxData (famR a.st I hX (usedOf I T Wt) z.Xg z.tr).fam3.amb3 =>
    {w : B.places.Pl | ∃ j, ∃ w' ∈ ({a.D.plEq w, Formalism.DivisionValues.conjPl (a.D.plEq w)} : Set (HeightOneSpectrum (𝓞 a.D.what₂.LL))),
    (X.data z.F.cr false).Iw j (famR a.st I hX (usedOf I T Wt) z.Xg z.tr).A.μ0 w' ≠ 0 ∨
    Formalism.DivisionValues.jw (((famR a.st I hX (usedOf I T Wt) z.Xg z.tr).side3 z.F.P0 z.F.ψ0 X.zs).HT j
              (famR a.st I hX (usedOf I T Wt) z.Xg z.tr).A.μ0) w'
      (((famR a.st I hX (usedOf I T Wt) z.Xg z.tr).side3 z.F.P0 z.F.ψ0 X.zs).Tl j
        (famR a.st I hX (usedOf I T Wt) z.Xg z.tr).A.μ0) ≠ 0 ∨ ((F0) : HeightOneSpectrum (𝓞 a.D.what₂.LL) → Fin a.D.R.m → ℝ) w' j ≠ 0})
    (toCx3_eq b (iK := z.alg) z.R z.F).symm

section Read

variable {G : Type} [Group G] [Fintype G] {Pl0 I0 T₀ : Type} {Ks : Type} [Field Ks] [NumberField Ks] [iK : Algebra Ks a.D.what₂.LL]

def fixTup {A : FamIn a.D.what₂.LL G Pl0 T₀ a.D.R.m} {R : RealDat a.D A Ks} (y : Hd R) (y' : HdB b R) : HdB b R :=
  letI := alg b iK
  { y' with tup := y.tup, tupT := y.tupT, tupT_tup := y.tupT_tup, tup0 := y.tup0 }

theorem fixTup_same {A : FamIn a.D.what₂.LL G Pl0 T₀ a.D.R.m} {R : RealDat a.D A Ks} {y : Hd R} {y' : HdB b R} (h : Same b y y') :
    Same b y (fixTup b y y') :=
  ⟨HEq.refl y.tup, HEq.refl y.tupT, h.PY, h.PW⟩

variable {A3 : FamIn3 a.D.what₂.LL G Pl0 I0 (List ℕ) T₀ a.D.R.m} {R : RealDat3 a.D A3 Ks} (F : Face3 a.D A3) (y : Hd R.toRealDat)
  (y' : HdB b R.toRealDat)

def hd3 : letI := alg b iK; Hd (real3 b R).toRealDat := fixTup b y y'

def mCp (mA : Bool → a.D.what₂.Tup → Mat1 a.D.what₂.LL G) : Bool → b.D.what₂.Tup → Mat1 b.D.what₂.LL G := mA

def pCp (p : PkD a.D G) : PkD b.D G := p

theorem dall_tr {n : ℕ} (h : n = Module.finrank ℂ (Mult.Mult R.θ (R.MY 0) (levS _ (R.βY 0) (R.dat0 (R.toRealDat.levR F.lv2 true)))
    (levChi _ (R.βY 0) (R.dat0 (R.toRealDat.levR F.lv2 true))))) : letI := alg b iK
    n = Module.finrank ℂ (Mult.Mult (real3 b R).θ ((real3 b R).MY 0)
      (levS _ ((real3 b R).βY 0) ((real3 b R).dat0 ((real3 b R).toRealDat.levR (face3 b F).lv2 true)))
      (levChi _ ((real3 b R).βY 0) ((real3 b R).dat0 ((real3 b R).toRealDat.levR (face3 b F).lv2 true)))) := by
  exact (congrArg (fun m : type_of% (@Mult.Mult a.D) => n = Module.finrank ℂ (m R.θ (R.MY 0)
    (levS _ (R.βY 0) (R.dat0 (R.toRealDat.levR F.lv2 true))) (levChi _ (R.βY 0) (R.dat0 (R.toRealDat.levR F.lv2 true)))))
    (mult_eq b a)).mp h



theorem pkT_tr (hs : Same b y y') {mA : Bool → a.D.what₂.Tup → Mat1 a.D.what₂.LL G} {p : PkD a.D G} (t : PkT F y mA p) :
    letI := alg b iK
    ∃ t' : PkT (R := real3 b R) (face3 b F) (hd3 b y y') (mCp b mA) (pCp b p),
      HEq t'.tA t.tA ∧ HEq t'.rep t.rep ∧ (∀ c, HEq (t'.ch c).jE (t.ch c).jE) ∧ (∀ c, HEq (t'.ch c).jM (t.ch c).jM) ∧
        (∀ c, HEq (t'.ch c).jX (t.ch c).jX) ∧ HEq t'.lf.eW t.lf.eW ∧ HEq t'.lf.jMt t.lf.jMt := by
  letI := alg b iK
  have hs' := fixTup_same b hs
  have h1 := (GlobalTheory.T.typeRepresentativesParts_otherLaterStages B C a b G Pl0 T₀ Ks A3.A R.toRealDat F.lv2 y _ hs').1 p.Φ t.rep t.reps
  have h2 := fun c => GlobalTheory.T.chainComparison_transfer_otherLaterStages B C a b G Pl0 T₀ Ks A3.A R.toRealDat F.lv2 y _ hs' c p.Φ t.rep
    (fun μ => (p.sA c μ).A) (p.ch c) (fun u x => ((t.tA c (y.tup u)).cast (t.hA c u)).j x) (t.ch c)
    (fun u x => ((t.tA c (y.tup u)).cast (t.hA c u)).j x)
    (HEq.refl (fun u x => ((t.tA c (y.tup u)).cast (t.hA c u)).j x))
  obtain ⟨l, hl1, hl2⟩ := _root_.GlobalTheory.Mem.R3.Rw.lfT_of_same B C a b G Pl0 T₀ Ks A3.A R.toRealDat F.lv2 y _ hs' p.Φ t.rep
    (fun μ j => (p.sL μ j).A) (p.lf)
    (fun (i : Fin a.D.R.m) u x => ((p.tL (y.tup u) ((i : ℕ) + 1)).cast (t.hL i u)).j x) (t.lf)
    (fun (i : Fin a.D.R.m) u x => ((p.tL (y.tup u) ((i : ℕ) + 1)).cast (t.hL i u)).j x)
    (HEq.refl (fun (i : Fin a.D.R.m) u x => ((p.tL (y.tup u) ((i : ℕ) + 1)).cast (t.hL i u)).j x))
  have h4 := (_root_.GlobalTheory.Mem.R3.Rw.rr_eta_tr B C a b G Pl0 I0 T₀ Ks A3 R F).2 y (hd3 b y y') true (p.ch true).EE (t.ch true).jE
    ((h2 true).choose.jE) p.nR p.cR p.Xo ((h2 true).choose_spec.1) t.rr
  refine ⟨{ rep := t.rep
            reps := h1
            tA := t.tA
            lawsA := t.lawsA
            lawsL := t.lawsL
            hA := t.hA
            hL := t.hL
            ch := fun c => (h2 c).choose
            lf := l
            dall := dall_tr b F t.dall
            rr := h4 }, ?_, ?_, fun c => ?_, fun c => ?_, fun c => ?_, ?_, ?_⟩
  · exact HEq.refl t.tA
  · exact HEq.refl t.rep
  · exact (h2 c).choose_spec.1
  · exact (h2 c).choose_spec.2.1
  · exact (h2 c).choose_spec.2.2
  · exact hl1
  · exact hl2

end Read



theorem exists_moved : ∀ (B : Base) (f : Fr B.toPre) (T : TwDat B) (w : ColW B f T) (Z₀ : w.Lt) (hX : B.fields.Ok)
    (Wt : Set B.places.Pl) (z₀ : Dat (w.st Z₀) w.I hX T Wt), ∀ (q : RowPk w z₀) (o : q.Over), Holds z₀.R z₀.F →
    z₀.R.toRealDat.ExAt → GlobalTheory.RealGeo.InGeo z₀.geo → GrpTrue Z₀.N f → o.Fits → ∃ m : Moved o, m.Copy ∧ m.Coh := by
  intro B f T w Z₀ hX Wt z₀ q o h1 h2 h3 h4 h5
  have s : SameGrp (B := B) (C := w.C) Z₀ o.Z := sameGrp o.Z h4 h5.grp
  obtain ⟨y', hy⟩ := @GlobalTheory.Mem.R3.Rw.hd_tr B w.C Z₀ o.Z _ _ _ _ _ _ _ _ z₀.alg _ z₀.R.toRealDat q.y
  obtain ⟨t, a1, a2, a3, a4, a5, a6, a7⟩ := pkT_tr (a := Z₀) o.Z (iK := z₀.alg) z₀.F q.y y' hy q.t
  have he := (@_root_.GlobalTheory.Mem.R3.Rw.rr_eta_tr B w.C Z₀ o.Z _ _ _ _ _ _ _ _ _ z₀.alg _ z₀.R z₀.F).1
  letI : Algebra z₀.core.Q.c.F (Late.D o.Z).what₂.LL := alg (a := Z₀) o.Z z₀.alg
  have hA : (t.tA : type_of% q.t.tA) = q.t.tA := eq_of_heq (a1)
  have hs := fixTup_same (a := Z₀) o.Z (iK := z₀.alg) hy
  refine ⟨{ z := cpDat (a := Z₀) o.Z s z₀
            intersectionNumber_baseChange := cp_holds (a := Z₀) o.Z s z₀ h1
            exAt := cp_exAt (a := Z₀) o.Z s z₀ h2
            inGeo := cp_inGeo (a := Z₀) o.Z s z₀ h3
            Xg := rfl
            tr := rfl
            core := fun h => ⟨lawsCore_tr (a := Z₀) o.Z h.1, cp_canon (a := Z₀) o.Z s z₀ h.2.1, h.2.2.1, h.2.2.2⟩
            eta := he
            W1 := forcedContentPlaces_eq_transport_sameFiniteGroup (a := Z₀) o.Z s z₀
            y := hd3 (a := Z₀) o.Z (iK := z₀.alg) q.y y'
            tup := q.tup
            t := t
            tA := fun c u => heq_of_eq (congrArg (fun r : type_of% q.t.tA => (r c ((u))).j) hA) }, ⟨?_, ?_⟩,
    ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩⟩
  · exact HEq.refl (coreJ (a := Z₀) o.Z z₀.core)
  · exact HEq.refl (real3 (a := Z₀) o.Z (iK := z₀.alg) z₀.R)
  · exact HEq.refl q.y.tupT
  · exact hy.PY
  · exact hy.PW
  · exact a2
  · exact a3
  · exact a4
  · exact a5
  · exact a6
  · exact a7

end GlobalTheory.Mem.R3.Rw.Mv

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsMovedRowLiftDataToFittingStages =====
