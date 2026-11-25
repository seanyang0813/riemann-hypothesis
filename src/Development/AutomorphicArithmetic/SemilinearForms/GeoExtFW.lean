module

public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CrdOver
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PlaceModelImp
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ModelSame
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ReadingEqZero
public import Mathlib.Algebra.Algebra.Defs
public import Mathlib.LinearAlgebra.LinearIndependent.Defs
public import Mathlib.Data.Matrix.Basic
public import Mathlib.LinearAlgebra.Basis.Basic
public import Mathlib.LinearAlgebra.Dimension.StrongRankCondition
public import Mathlib.LinearAlgebra.FiniteDimensional.Lemmas
public import Mathlib.LinearAlgebra.Matrix.NonsingularInverse
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.BaseChangeEquivCrdOver
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LiftCharactersAgreeOverEnlargedBase
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RowsRestWordColumnUnitBaseTupleAlt

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.AlgebraMapEqOtoLLEOOfPin, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ChiROfEnlarged, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CoreBaseFramesEqModelFramesEnlargedCoefficientBa, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.EnlargedBaseReadingZeroWithoutEvaluationProperty, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.KapMoved, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.KsFormBaseChange, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.KsFormBaseChangeCrd, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LawsJEnl, Development.AutomorphicArithmetic.UnitTensorPairings.CuspCoreDatumTransportOfSamePre, Development.AutomorphicArithmetic.UnitTensorPairings.CuspEvalPropertyIndepOfBaseSamePre, Development.AutomorphicArithmetic.UnitTensorPairings.CuspFormCoordsIdentificationOfSamePre, Development.AutomorphicArithmetic.UnitTensorPairings.ExtVecPairingIndepOfBaseSamePre, Development.AutomorphicArithmetic.UnitTensorPairings.LocalCuspNormsIndepOfBaseSamePre, Development.AutomorphicArithmetic.UnitTensorPairings.PointEquivFamilyTransportOfSamePre, Development.AutomorphicArithmetic.SemilinearForms.GeoExtFW

section
open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx Formalism.IndefR.RecTie
open scoped TensorProduct InnerProductSpace ComplexOrder
attribute [local instance] Formalism.BasicNotions.Host.cmStar Formalism.IndefR.principalLevelFrame.instCMHostI
open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.Mem.R3.Tr
open Formalism.IndefR.FWT Formalism.L2.Pj Formalism.IndefR.Mult GlobalTheory.RealGeo

private theorem geoExt_pre_eq (B B' : Base) (f : Fr B.toPre) (f' : Fr B'.toPre) (T : TwDat B) (T' : TwDat B')
    (w : ColW B f T) (w' : ColW B' f' T') (hPre : B'.toPre = B.toPre) (Z : w.Lt) (Z' : w'.Lt) :
    (w'.st Z').toD7.R = (w.st Z).toD7.R ∧
    HEq (w'.st Z').toD7.host (w.st Z).toD7.host := by
  obtain ⟨P'⟩ := B'
  dsimp only at hPre
  subst hPre
  exact ⟨rfl, HEq.rfl⟩

private theorem geoExt_fin_val_eq {m m' : ℕ} (h : m' = m) (a : Fin m → ℕ) (a' : Fin m' → ℕ) (ha : HEq a' a)
    (k : Fin m) (k' : Fin m') (hk : (k : ℕ) = k') : a k = a' k' := by
  subst h
  cases ha
  rw [Fin.ext hk]

private theorem geoExt_heq_eqRec {α : Type*} (P : α → Type*) {a b : α} (h : a = b) (x : P a) :
    HEq (h ▸ x) x := by
  subst h
  rfl

private structure GeoExtRSideW
    {B B' : Base} {f : Fr B.toPre} {f' : Fr B'.toPre} {T : TwDat B} {T' : TwDat B'} {w : ColW B f T} {w' : ColW B' f' T'}
    {Z : w.Lt} {Z' : w'.Lt} {hX : B.fields.Ok} {hX' : B'.fields.Ok} {Wt : Set B.places.Pl} {Wt' : Set B'.places.Pl}
    {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks (w'.st Z').toD7.what₂.LL]
    {Xg : Finset (Gc B' w'.px → B'.LL)} {tr : TrI B' w'.px}
    (z : Dat (w.st Z) w.I hX T Wt)
    (R' : RealDat3 (w'.st Z').toD7 (famR (w'.st Z') w'.I hX' (usedOf w'.I T' Wt') Xg tr) Ks) : Prop where
  nW : HEq R'.nW z.R.nW
  cV : ∀ (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m), (i : ℕ) = i' →
    HEq (R'.cV i').W (z.R.cV i).W ∧ HEq (R'.cV i').nW (z.R.cV i).nW ∧
    HEq (R'.cV i').iW (z.R.cV i).iW ∧ HEq (R'.ioP i') (z.R.ioP i)
  model : ∀ (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m), (i : ℕ) = i' →
    ∀ {ι : (w.st Z).toD7.what₂.LL →+* (w'.st Z').toD7.what₂.LL},
    (∀ x, (w'.st Z').toD7.what₂.embLL (ι x) = (w.st Z).toD7.what₂.embLL x) →
    ∀ (σ' : (w'.st Z').toD7.what₂.LL →+* ℂ),
    GlobalTheory.Mem.R3.Rw.GeoTies.ModelSame (z.R.MW i (σ'.comp ι)) (R'.MW i' σ') ∧
    HEq (R'.HW i' σ') (z.R.HW i (σ'.comp ι)) ∧
    (∀ x x', CrdOver ι x x' → HEq ((R'.FW i').j σ' x') ((z.R.FW i).j (σ'.comp ι) x))
  wk : ∀ (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m), (i : ℕ) = i' →
    ∀ {ι : (w.st Z).toD7.what₂.LL →+* (w'.st Z').toD7.what₂.LL},
    (∀ x, (w'.st Z').toD7.what₂.embLL (ι x) = (w.st Z).toD7.what₂.embLL x) →
    (∀ x x', CrdOver ι x x' → (x' ∈ (R'.FW i').WK ↔ x ∈ (z.R.FW i).WK)) ∧
    ∀ x' ∈ (R'.FW i').WK, ∃ x : Fin (z.R.nW i) → (w.st Z).toD7.what₂.LL, CrdOver ι x x'
  pt_nrm : ∀ (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m), (i : ℕ) = i' →
    ∀ {ι : (w.st Z).toD7.what₂.LL →+* (w'.st Z').toD7.what₂.LL},
    (∀ x, (w'.st Z').toD7.what₂.embLL (ι x) = (w.st Z).toD7.what₂.embLL x) →
    HEq (R'.FW i').Pt (z.R.FW i).Pt ∧
    (∀ lp' lp, HEq lp' lp → ∀ y' y, HEq y' y → ∀ (φ' : (R'.FW i').WK) (φ : (z.R.FW i).WK), CrdOver ι φ.1 φ'.1 →
      (R'.FW i').nrm lp' y' φ' = (z.R.FW i).nrm lp y φ)

private theorem geoExt_rsideW_unpack
    {B B' : Base} {f : Fr B.toPre} {f' : Fr B'.toPre} {T : TwDat B} {T' : TwDat B'} {w : ColW B f T} {w' : ColW B' f' T'}
    {Z : w.Lt} {Z' : w'.Lt} {hX : B.fields.Ok} {hX' : B'.fields.Ok} {Wt : Set B.places.Pl} {Wt' : Set B'.places.Pl}
    {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks (w'.st Z').toD7.what₂.LL]
    {Xg : Finset (Gc B' w'.px → B'.LL)} {tr : TrI B' w'.px}
    {z : Dat (w.st Z) w.I hX T Wt}
    {R' : RealDat3 (w'.st Z').toD7 (famR (w'.st Z') w'.I hX' (usedOf w'.I T' Wt') Xg tr) Ks}
    (hRS : RSideW z Wt' R') : GeoExtRSideW (Wt' := Wt') z R' := by
  obtain ⟨-, -, -, -, -, hnW, -, -, -, -, -, -, h13, -⟩ := hRS
  have h19 : ∀ (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m), (i : ℕ) = i' →
      (HEq (R'.cV i').W (z.R.cV i).W ∧ HEq (R'.cV i').nW (z.R.cV i).nW ∧
        HEq (R'.cV i').iW (z.R.cV i).iW ∧ HEq (R'.ioP i') (z.R.ioP i)) ∧
      (∀ {ι : (w.st Z).toD7.what₂.LL →+* (w'.st Z').toD7.what₂.LL},
        (∀ x, (w'.st Z').toD7.what₂.embLL (ι x) = (w.st Z).toD7.what₂.embLL x) →
        (∀ σ' : (w'.st Z').toD7.what₂.LL →+* ℂ,
          GlobalTheory.Mem.R3.Rw.GeoTies.ModelSame (z.R.MW i (σ'.comp ι)) (R'.MW i' σ') ∧
          HEq (R'.HW i' σ') (z.R.HW i (σ'.comp ι)) ∧
          (∀ x x', CrdOver ι x x' → HEq ((R'.FW i').j σ' x') ((z.R.FW i).j (σ'.comp ι) x))) ∧
        ((∀ x x', CrdOver ι x x' → (x' ∈ (R'.FW i').WK ↔ x ∈ (z.R.FW i).WK)) ∧
          ∀ x' ∈ (R'.FW i').WK, ∃ x : Fin (z.R.nW i) → (w.st Z).toD7.what₂.LL, CrdOver ι x x') ∧
        HEq (R'.FW i').Pt (z.R.FW i).Pt ∧
        (∀ lp' lp, HEq lp' lp → ∀ y' y, HEq y' y → ∀ (φ' : (R'.FW i').WK) (φ : (z.R.FW i).WK), CrdOver ι φ.1 φ'.1 →
          (R'.FW i').nrm lp' y' φ' = (z.R.FW i).nrm lp y φ)) := by
    intro i i' hii
    obtain ⟨c1, -, c3, c4, -, c6, -, -, -, -, -, -, -, -, -, -, -, -, h⟩ := h13 i i' hii
    refine ⟨⟨c1, c3, c4, c6⟩, fun hι => ?_⟩
    obtain ⟨h1, h2, -, -, h5, h6⟩ := h _ hι
    exact ⟨fun σ' => by obtain ⟨⟨m1, m2, m3, m4, m5, m6, m7, -⟩, hHW, -, hj⟩ := h1 σ'; exact ⟨⟨m1, m2, m3, m4, m5, m6, m7⟩, hHW, hj⟩,
      h2, h5, h6⟩
  exact ⟨hnW, fun i i' hii => (h19 i i' hii).1, fun i i' hii {_} hι σ' => ((h19 i i' hii).2 hι).1 σ',
    fun i i' hii {_} hι => ((h19 i i' hii).2 hι).2.1, fun i i' hii {_} hι => ((h19 i i' hii).2 hι).2.2⟩

end

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.AlgebraMapEqOtoLLEOOfPin =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.AlgebraMapEqOtoLLEOOfPin", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CrdOver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PlaceModelImp\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RowsRestWordColumnUnitBaseTupleAlt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx Formalism.IndefR.RecTie
open scoped TensorProduct InnerProductSpace ComplexOrder
attribute [local instance] Formalism.BasicNotions.Host.cmStar Formalism.IndefR.principalLevelFrame.instCMHostI
open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.Mem.R3.Tr
open Formalism.IndefR.FWT Formalism.L2.Pj Formalism.IndefR.Mult GlobalTheory.RealGeo

namespace GlobalTheory.Mem.R3.Rw

theorem algebraMap_eq_OtoLL_eO_of_pin : ∀ (B B' : Base) (f : Fr B.toPre) (f' : Fr B'.toPre) (T : TwDat B) (T' : TwDat B') (w : ColW B f T) (w' : ColW B' f' T'),
    B'.toPre = B.toPre → ∀ (Z : w.Lt) (hX : B.fields.Ok) (Wt : Set B.places.Pl) (z : Dat (w.st Z) w.I hX T Wt) (Z' : w'.Lt) (hX' : B'.fields.Ok)
    (Wt' : Set B'.places.Pl) (core' : Formalism.L2.Pj.CoreJ (w'.st Z').toD7) (alg' : Algebra core'.Q.c.F (w'.st Z').toD7.what₂.LL),
    (∀ y : core'.Q.c.F, B'.embLL (@algebraMap core'.Q.c.F (w'.st Z').toD7.what₂.LL _ _ alg' y) = (y : ℂ)) →
    (HEq core'.Q.H z.core.Q.H ∧ HEq core'.Q.l z.core.Q.l ∧ HEq core'.Q.c z.core.Q.c ∧ HEq core'.Q.Dw z.core.Q.Dw ∧
      HEq core'.Q.Xo z.core.Q.Xo ∧ HEq core'.U z.core.U ∧ HEq core'.V z.core.V ∧ HEq core'.dict z.core.dict ∧
      HEq core'.mu z.core.mu ∧ HEq core'.Kf z.core.Kf ∧ HEq core'.cE z.core.cE ∧ HEq core'.chiW z.core.chiW ∧
      HEq core'.x₀ z.core.x₀ ∧ HEq core'.iota z.core.iota) →
    Formalism.L2.Pj.LawsCore core'.toCore →
    letI := alg'; ∀ (Xg : Finset (Gc B' w'.px → B'.LL)) (tr : TrI B' w'.px)
      (R' : RealDat3 (w'.st Z').toD7 (famR (w'.st Z') w'.I hX' (usedOf w'.I T' Wt') Xg tr) core'.Q.c.F),
      RSideW z Wt' R' → HEq R'.toLevCh.mu0 z.R.toLevCh.mu0 →
      ∀ ι : (w.st Z).toD7.what₂.LL →+* (w'.st Z').toD7.what₂.LL, (∀ y, (w'.st Z').toD7.what₂.embLL (ι y) = (w.st Z).toD7.what₂.embLL y) →
      ∀ x : 𝓞 core'.Q.c.F, algebraMap core'.Q.c.F (w'.st Z').toD7.what₂.LL (x : core'.Q.c.F) = (w'.st Z').toD7.what₂.OtoLL (core'.Q.eO x) := by
  intro B B' f f' T T' w w' hPre Z hX Wt z Z' hX' Wt' core' alg' halg _hH hL Xg tr R' _hR _hmu ι _hι x
  apply (w'.st Z').toD7.what₂.embLL.injective
  have h1 : (w'.st Z').toD7.what₂.embLL (@algebraMap core'.Q.c.F (w'.st Z').toD7.what₂.LL _ _ alg' (x : core'.Q.c.F)) = ((x : core'.Q.c.F) : ℂ) := halg _
  have h2 : (w'.st Z').toD7.what₂.embLL ((w'.st Z').toD7.what₂.OtoLL (core'.Q.eO x)) = ((x : core'.Q.c.F) : ℂ) := hL.pins.2.2.1 x
  exact h1.trans h2.symm

end GlobalTheory.Mem.R3.Rw
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.AlgebraMapEqOtoLLEOOfPin =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ChiROfEnlarged =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ChiROfEnlarged", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CrdOver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PlaceModelImp\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RowsRestWordColumnUnitBaseTupleAlt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx Formalism.IndefR.RecTie
open scoped TensorProduct InnerProductSpace ComplexOrder
attribute [local instance] Formalism.BasicNotions.Host.cmStar Formalism.IndefR.principalLevelFrame.instCMHostI
open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.Mem.R3.Tr
open Formalism.IndefR.FWT Formalism.L2.Pj Formalism.IndefR.Mult GlobalTheory.RealGeo



theorem GlobalTheory.Mem.R3.Rw.chiR_of_enlarged : ∀ (B B' : Base) (f : Fr B.toPre) (f' : Fr B'.toPre) (T : TwDat B) (T' : TwDat B') (w : ColW B f T) (w' : ColW B' f' T'),
    B'.toPre = B.toPre → ∀ (Z : w.Lt) (hX : B.fields.Ok) (Wt : Set B.places.Pl) (z : Dat (w.st Z) w.I hX T Wt) (Z' : w'.Lt) (hX' : B'.fields.Ok)
    (Wt' : Set B'.places.Pl) (core' : Formalism.L2.Pj.CoreJ (w'.st Z').toD7) (alg' : Algebra core'.Q.c.F (w'.st Z').toD7.what₂.LL),
    (∀ y : core'.Q.c.F, B'.embLL (@algebraMap core'.Q.c.F (w'.st Z').toD7.what₂.LL _ _ alg' y) = (y : ℂ)) →
    (HEq core'.Q.H z.core.Q.H ∧ HEq core'.Q.l z.core.Q.l ∧ HEq core'.Q.c z.core.Q.c ∧ HEq core'.Q.Dw z.core.Q.Dw ∧
      HEq core'.Q.Xo z.core.Q.Xo ∧ HEq core'.U z.core.U ∧ HEq core'.V z.core.V ∧ HEq core'.dict z.core.dict ∧
      HEq core'.mu z.core.mu ∧ HEq core'.Kf z.core.Kf ∧ HEq core'.cE z.core.cE ∧ HEq core'.chiW z.core.chiW ∧
      HEq core'.x₀ z.core.x₀ ∧ HEq core'.iota z.core.iota) →
    Formalism.L2.Pj.LawsCore core'.toCore →
    letI := alg'; ∀ (Xg : Finset (Gc B' w'.px → B'.LL)) (tr : TrI B' w'.px)
      (R' : RealDat3 (w'.st Z').toD7 (famR (w'.st Z') w'.I hX' (usedOf w'.I T' Wt') Xg tr) core'.Q.c.F),
      RSideW z Wt' R' → HEq R'.toLevCh.mu0 z.R.toLevCh.mu0 →
      ∀ ι : (w.st Z).toD7.what₂.LL →+* (w'.st Z').toD7.what₂.LL, (∀ y, (w'.st Z').toD7.what₂.embLL (ι y) = (w.st Z).toD7.what₂.embLL y) →
      Formalism.IndefR.FWT.ChiR core' R'.toRealDat := by
  intro B B' f f' T T' w w' hP Z hX Wt z Z' hX' Wt' core' alg' halg hH hL Xg tr R' hR hmu ι hι
  clear hR hL
  obtain ⟨P'⟩ := B'
  dsimp only at hP
  subst hP
  obtain ⟨⟨⟨H', l', c', Dw', Xo'⟩, U', V', dict', mu', Kf', pb'⟩, cE', chiW', x₀', iota'⟩ := core'
  obtain ⟨h1, h2, h3, -, -, -, -, -, -, -, -, h12, -, -⟩ := hH
  dsimp only at h1 h2 h3 h12
  subst h1
  have e_h2 := eq_of_heq h2; clear h2; subst e_h2
  have e_h3 := eq_of_heq h3; clear h3; subst e_h3
  have e_h12 := eq_of_heq h12; clear h12; subst e_h12
  have hmu' := eq_of_heq hmu
  let _ := z.alg
  have halg' : ∀ y : z.core.Q.c.F, ι (algebraMap z.core.Q.c.F (w.st Z).toD7.what₂.LL y) =
      @algebraMap z.core.Q.c.F (w'.st Z').toD7.what₂.LL _ _ alg' y := by
    intro y
    apply (w'.st Z').toD7.what₂.embLL.injective
    rw [hι]
    exact (z.alg_eq y).trans (halg y).symm
  have hE2 : (w'.st Z').toD7.what₂.embLL.comp (@algebraMap z.core.Q.c.F (w'.st Z').toD7.what₂.LL _ _ alg') =
      (w.st Z).toD7.what₂.embLL.comp (algebraMap z.core.Q.c.F (w.st Z).toD7.what₂.LL) := by
    ext y
    exact (halg y).trans (z.alg_eq y).symm
  have hE : (w'.st Z').toD7.embE = ι.comp (w.st Z).toD7.embE := by
    ext x
    apply (w'.st Z').toD7.what₂.embLL.injective
    have e1 := congrArg (fun g => g x) (w'.st Z').toD7.embE_φ₀
    have e2 := congrArg (fun g => g x) (w.st Z).toD7.embE_φ₀
    show _ = (w'.st Z').toD7.what₂.embLL (ι ((w.st Z).toD7.embE x))
    rw [hι]
    exact e1.trans e2.symm
  intro i σ' hg
  have hcomp : σ'.comp (@algebraMap z.core.Q.c.F (w'.st Z').toD7.what₂.LL _ _ alg') =
      (σ'.comp ι).comp (algebraMap z.core.Q.c.F (w.st Z).toD7.what₂.LL) := by
    ext y
    exact congrArg σ' (halg' y).symm
  have hlabE : labE σ' = labE (σ'.comp ι) := by
    funext τ
    unfold labE labLL
    rw [hE]
    rfl
  have hz := z.geo.fw.chiR i (σ'.comp ι) (hcomp ▸ hg)
  obtain ⟨a1, a2, a3, a4, a5⟩ := hz
  rw [hcomp]
  refine ⟨a1, a2, fun ρ => ?_, fun x hx => ?_, fun hσ => ?_⟩
  · have : lab σ' ρ = lab (σ'.comp ι) ρ := by
      unfold lab
      rw [hlabE]
      rfl
    rw [this]
    exact a3 ρ
  · obtain ⟨y, hy1, hy2⟩ := a4 x hx
    refine ⟨y, ?_, hy2.trans (congrArg σ' (halg' y))⟩
    have hm : ((R'.toRealDat.mu0 ((i : ℕ) + 1) x : Circle) : ℂ) = ((z.R.toRealDat.mu0 ((i : ℕ) + 1) x : Circle) : ℂ) := by
      rw [hmu']
      rfl
    refine hm.trans (hy1.trans ?_)
    rw [← halg', hι]
  · have hσ' : (σ'.comp ι).comp (algebraMap z.core.Q.c.F (w.st Z).toD7.what₂.LL) =
        (w.st Z).toD7.what₂.embLL.comp (algebraMap z.core.Q.c.F (w.st Z).toD7.what₂.LL) :=
      (hcomp.symm.trans hσ).trans hE2
    refine (a5 hσ').trans ?_
    rw [hmu']
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ChiROfEnlarged =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CoreBaseFramesEqModelFramesEnlargedCoefficientBa =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CoreBaseFramesEqModelFramesEnlargedCoefficientBa", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CrdOver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PlaceModelImp\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RowsRestWordColumnUnitBaseTupleAlt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx Formalism.IndefR.RecTie
open scoped TensorProduct InnerProductSpace ComplexOrder
attribute [local instance] Formalism.BasicNotions.Host.cmStar Formalism.IndefR.principalLevelFrame.instCMHostI
open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.Mem.R3.Tr
open Formalism.IndefR.FWT Formalism.L2.Pj Formalism.IndefR.Mult GlobalTheory.RealGeo


namespace GlobalTheory.Mem.R3.Rw.FwBase



private theorem isModelBaseFrameFamily_of_pre
    (B B' : Base) (f : Fr B.toPre) (f' : Fr B'.toPre) (T : TwDat B) (T' : TwDat B') (w : ColW B f T) (w' : ColW B' f' T')
    (hPre : B'.toPre = B.toPre) (Z : w.Lt) (Z' : w'.Lt)
    (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m) (hii : (i : ℕ) = i')
    (core : CoreJ (w.st Z).toD7) (core' : CoreJ (w'.st Z').toD7)
    (hH : HEq core'.Q.H core.Q.H) (hl : HEq core'.Q.l core.Q.l) (hc : HEq core'.Q.c core.Q.c) (hx : HEq core'.x₀ core.x₀)
    (s : core.Q.c.F →+* ℂ) (s' : core'.Q.c.F →+* ℂ)
    (hs : ∀ (y : core.Q.c.F) (y' : core'.Q.c.F), (y' : ℂ) = (y : ℂ) → s' y' = s y)
    {S : (w.st Z).toD7.what₂.Tau → SPar} {S' : (w'.st Z').toD7.what₂.Tau → SPar}
    (M : DSModel (Wc (w.st Z).toD7 i) S) (M' : DSModel (Wc (w'.st Z').toD7 i') S')
    (hMM : GeoTies.ModelSame M M')
    (h0 : GoodEmb core.Q.c s → IsModelBaseFrameFamily M (rank_Wc i) (core.x₀ ((i : ℕ) + 1) s)) :
    GoodEmb core'.Q.c s' → IsModelBaseFrameFamily M' (rank_Wc i') (core'.x₀ ((i' : ℕ) + 1) s') := by
  obtain ⟨P'⟩ := B'
  dsimp only at hPre
  subst hPre
  have ei : i = i' := Fin.ext hii
  clear hii
  subst ei
  obtain ⟨⟨⟨H', l', c', Dw', Xo', eO'⟩, U', V', dict', mu', Kf', pb'⟩, cE', chiW', x0', iota'⟩ := core'
  have e_hH : H' = core.Q.H := eq_of_heq hH; subst e_hH
  have e_hl : l' = core.Q.l := eq_of_heq hl; subst e_hl
  have e_hc : c' = core.Q.c := eq_of_heq hc; subst e_hc
  have e_hx : x0' = core.x₀ := eq_of_heq hx; subst e_hx
  have hs' : s' = s := RingHom.ext fun y => hs y y rfl
  subst hs'
  obtain @⟨H, nacg, ips, sg, lam, ep, fr, enum, ds, fu, fg⟩ := M'
  obtain ⟨m1, m2, m3, m4, m5, m6, m7⟩ := hMM
  have e_m1 : H = M.H := eq_of_heq m1; subst e_m1
  have e_m2 : nacg = M.nacg := eq_of_heq m2; subst e_m2
  have e_m3 : ips = M.ips := eq_of_heq m3; subst e_m3
  have e_m4 : sg = M.σ := eq_of_heq m4; subst e_m4
  have e_m5 : lam = M.lam := eq_of_heq m5; subst e_m5
  have e_m6 : ep = M.ε := eq_of_heq m6; subst e_m6
  have e_m7 : fr = M.fr := eq_of_heq m7; subst e_m7
  exact h0

theorem coreBaseFrames_eq_modelFrames_enlargedCoefficientBase : ∀ (B B' : Base) (f : Fr B.toPre) (f' : Fr B'.toPre) (T : TwDat B) (T' : TwDat B') (w : ColW B f T) (w' : ColW B' f' T'),
    B'.toPre = B.toPre → ∀ (Z : w.Lt) (hX : B.fields.Ok) (Wt : Set B.places.Pl) (z : Dat (w.st Z) w.I hX T Wt) (Z' : w'.Lt) (hX' : B'.fields.Ok)
    (Wt' : Set B'.places.Pl) (core' : Formalism.L2.Pj.CoreJ (w'.st Z').toD7) (alg' : Algebra core'.Q.c.F (w'.st Z').toD7.what₂.LL),
    (∀ y : core'.Q.c.F, B'.embLL (@algebraMap core'.Q.c.F (w'.st Z').toD7.what₂.LL _ _ alg' y) = (y : ℂ)) →
    (HEq core'.Q.H z.core.Q.H ∧ HEq core'.Q.l z.core.Q.l ∧ HEq core'.Q.c z.core.Q.c ∧ HEq core'.Q.Dw z.core.Q.Dw ∧
      HEq core'.Q.Xo z.core.Q.Xo ∧ HEq core'.U z.core.U ∧ HEq core'.V z.core.V ∧ HEq core'.dict z.core.dict ∧
      HEq core'.mu z.core.mu ∧ HEq core'.Kf z.core.Kf ∧ HEq core'.cE z.core.cE ∧ HEq core'.chiW z.core.chiW ∧
      HEq core'.x₀ z.core.x₀ ∧ HEq core'.iota z.core.iota) →
    Formalism.L2.Pj.LawsCore core'.toCore →
    letI := alg'; ∀ (Xg : Finset (Gc B' w'.px → B'.LL)) (tr : TrI B' w'.px)
      (R' : RealDat3 (w'.st Z').toD7 (famR (w'.st Z') w'.I hX' (usedOf w'.I T' Wt') Xg tr) core'.Q.c.F),
      RSideW z Wt' R' → HEq R'.toLevCh.mu0 z.R.toLevCh.mu0 →
      ∀ ι : (w.st Z).toD7.what₂.LL →+* (w'.st Z').toD7.what₂.LL, (∀ y, (w'.st Z').toD7.what₂.embLL (ι y) = (w.st Z).toD7.what₂.embLL y) →
      ∀ (i : Fin (w'.st Z').toD7.R.m) (σ : (w'.st Z').toD7.what₂.LL →+* ℂ),
        Formalism.L2.Pj.GoodEmb core'.Q.c (σ.comp (algebraMap core'.Q.c.F (w'.st Z').toD7.what₂.LL)) →
        Formalism.IndefR.FWT.IsModelBaseFrameFamily (R'.MW i σ) (Formalism.IndefR.FWT.rank_Wc i) (core'.x₀ ((i : ℕ) + 1) (σ.comp (algebraMap core'.Q.c.F (w'.st Z').toD7.what₂.LL))) := by
  intro B B' f f' T T' w w' hPre Z hX Wt z Z' hX' Wt' core' alg' halg hcore hlaws Xg tr R' hR hmu ι hι i' σ
  let _ := alg'
  let _ := z.alg
  have hm : (w'.st Z').toD7.R.m = (w.st Z).toD7.R.m := congrArg Ranks.m (geoExt_pre_eq B B' f f' T T' w w' hPre Z Z').1
  let i : Fin (w.st Z).toD7.R.m := ⟨i'.1, hm ▸ i'.2⟩
  obtain ⟨hH, hl, hc, -, -, -, -, -, -, -, -, -, hx, -⟩ := hcore
  have hMM : GeoTies.ModelSame (z.R.MW i (σ.comp ι)) (R'.MW i' σ) :=
    ((geoExt_rsideW_unpack hR).model i i' rfl hι σ).1
  have hres : ∀ (y : z.core.Q.c.F) (y' : core'.Q.c.F), (y' : ℂ) = (y : ℂ) →
      σ.comp (@algebraMap core'.Q.c.F (w'.st Z').toD7.what₂.LL _ _ alg') y' =
      (σ.comp ι).comp (@algebraMap z.core.Q.c.F (w.st Z).toD7.what₂.LL _ _ z.alg) y := fun y y' hy =>
    congrArg σ ((w'.st Z').toD7.what₂.embLL.injective
      ((halg y').trans (hy.trans ((hι _).trans (z.alg_eq y)).symm)))
  exact isModelBaseFrameFamily_of_pre B B' f f' T T' w w' hPre Z Z' i i' rfl z.core core' hH hl hc hx
    _ _ hres (z.R.MW i (σ.comp ι)) (R'.MW i' σ) hMM (z.geo.fw.x0 i (σ.comp ι))

end GlobalTheory.Mem.R3.Rw.FwBase

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CoreBaseFramesEqModelFramesEnlargedCoefficientBa =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.EnlargedBaseReadingZeroWithoutEvaluationProperty =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.EnlargedBaseReadingZeroWithoutEvaluationProperty", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CrdOver\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ModelSame\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ReadingEqZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx Formalism.IndefR.RecTie
open scoped TensorProduct InnerProductSpace ComplexOrder
attribute [local instance] Formalism.BasicNotions.Host.cmStar Formalism.IndefR.principalLevelFrame.instCMHostI
open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.Mem.R3.Tr
open Formalism.IndefR.FWT Formalism.L2.Pj Formalism.IndefR.Mult GlobalTheory.RealGeo

attribute [local instance high] Submodule.addCommGroup Submodule.module

noncomputable section

namespace GlobalTheory.Mem.R3.Rw.EvZero

open GlobalTheory.Mem.R3.Rw.GeoTies

def NoEvAtOne {D : D7} (T : CoreJ D) (j : ℕ) (w : WeightFamilies.Wt D j) (s : T.Q.c.F →+* ℂ) {W : HSp D} {S : D.what₂.Tau → SPar}
    (M : DSModel W S) (Hm : Links.HMod (MMap M)) (v : M.Vec) {L : Type} [Field L] (σ : L →+* ℂ) {n : ℕ}
    (c : T.cuspA j (wtA w) w.n → Fin n → L) (Z : Prop) : Prop :=
  GoodEmb T.Q.c s → ∀ hV : T.V j s = W,
    (¬ ∃ j' : (Fin n → L) →ₛₗ[σ] Hm.H, ∀ f : T.cuspA j (wtA w) w.n,
      Hm.e (j' (c f)) v = phiC T hV (wtA w) (f : T.R j)) → Z

theorem exists_extend {L L' : Type} [Field L] [Field L'] (ι : L →+* L') (σ' : L' →+* ℂ) {n : ℕ}
    {A : Type} [AddCommGroup A] [Module ℂ A] (j : (Fin n → L) →ₛₗ[σ'.comp ι] A) :
    ∃ j' : (Fin n → L') →ₛₗ[σ'] A, ∀ x x', CrdOver ι x x' → j' x' = j x := by
  refine ⟨{ toFun := fun x' => ∑ k, σ' (x' k) • j (Pi.single k 1), map_add' := ?_, map_smul' := ?_ }, ?_⟩
  · intro x y
    simp only [Pi.add_apply, map_add (f := _), add_smul, Finset.sum_add_distrib]
  · intro a x
    simp only [Pi.smul_apply, smul_eq_mul, map_mul, mul_smul, Finset.smul_sum]
  · intro x x' h
    change ∑ k, σ' (x' k) • j (Pi.single k 1) = j x

    conv_rhs => rw [pi_eq_sum_univ' x, map_sum]
    refine Finset.sum_congr rfl fun k _ => ?_
    rw [map_smulₛₗ, h.2 k k rfl]
    rfl

theorem NoEvAtOne.congr {D : D7} (T T' : CoreJ D) (h1 : HEq T'.Q.H T.Q.H) (h2 : HEq T'.Q.l T.Q.l) (h3 : HEq T'.Q.c T.Q.c)
    (h4 : HEq T'.Q.Dw T.Q.Dw) (h5 : HEq T'.Q.Xo T.Q.Xo) (h6 : HEq T'.U T.U) (h7 : HEq T'.V T.V) (h8 : HEq T'.dict T.dict)
    (h9 : HEq T'.mu T.mu) (h10 : HEq T'.cE T.cE) (j : ℕ) (w w' : WeightFamilies.Wt D j) (hP : HEq w'.aP w.aP) (hM : HEq w'.aM w.aM)
    (hn : w'.n = w.n) (s : T.Q.c.F →+* ℂ) (s' : T'.Q.c.F →+* ℂ)
    (hs : ∀ (y : T.Q.c.F) (y' : T'.Q.c.F), (y' : ℂ) = (y : ℂ) → s' y' = s y)
    {W : HSp D} {S S' : D.what₂.Tau → SPar} (M : DSModel W S) (M' : DSModel W S') (hMM : ModelSame M M')
    (Hm : Links.HMod (MMap M)) (Hm' : Links.HMod (MMap M')) (hH : HEq Hm' Hm) (v : M.Vec) (v' : M'.Vec) (hv : HEq v' v)
    {L L' : Type} [Field L] [Field L'] (ι : L →+* L') (σ' : L' →+* ℂ) {n n' : ℕ} (hnn : n = n')
    (c : T.cuspA j (wtA w) w.n → Fin n → L) (c' : T'.cuspA j (wtA w') w'.n → Fin n' → L')
    (hc : ∀ f f', HEq f' f → CrdOver ι (c f) (c' f')) {Z Z' : Prop} (hZ : Z → Z') :
    NoEvAtOne T j w s M Hm v (σ'.comp ι) c Z → NoEvAtOne T' j w' s' M' Hm' v' σ' c' Z' := by
  obtain ⟨⟨⟨H, l, cc, Dw, Xo, eO⟩, U, V, dict, mu, Kf, pb⟩, cE, chiW, x₀, iota⟩ := T
  obtain ⟨⟨⟨H', l', cc', Dw', Xo', eO'⟩, U', V', dict', mu', Kf', pb'⟩, cE', chiW', x₀', iota'⟩ := T'
  dsimp only at h1 h2 h3 h4 h5 h6 h7 h8 h9 h10
  cases h1
  cases h2
  cases h3
  cases h4
  cases h5
  cases h6
  cases h7
  cases h8
  cases h9
  cases h10
  obtain ⟨aP, aM, _, _, m, _⟩ := w
  obtain ⟨aP', aM', _, _, m', _⟩ := w'
  dsimp only at hP hM hn
  cases hP
  cases hM
  cases hn
  have hs' : s' = s := RingHom.ext fun y => hs y y rfl
  subst hs'
  obtain ⟨X, σ, lam, ε, fr, _, _, _, _⟩ := M
  obtain ⟨X', σ'', lam', ε', fr', _, _, _, _⟩ := M'
  obtain ⟨m1, m2, m3, m4, m5, m6, m7⟩ := hMM
  dsimp only at m1 m2 m3 m4 m5 m6 m7
  cases m1
  cases m2
  cases m3
  cases m4
  cases m5
  cases m6
  cases m7
  have hH' : Hm' = Hm := eq_of_heq hH
  subst hH'
  have hv' : v' = v := eq_of_heq hv
  subst hv'
  subst hnn
  intro h hg hV hno
  refine hZ (h hg hV ?_)
  rintro ⟨j₀, hj₀⟩
  obtain ⟨j', hj'⟩ := exists_extend ι σ' j₀
  exact hno ⟨j', fun f => by rw [hj' _ _ (hc f f HEq.rfl)]; exact hj₀ f⟩

private theorem noEvAtOne_core {α β L L' : Type} [Field L] [Field L'] (ι : L →+* L') (σ' : L' →+* ℂ)
    {n : ℕ} {A : Type} [AddCommGroup A] [Module ℂ A] (ev : A → β) (phi : α → β)
    (c : α → Fin n → L) (c' : α → Fin n → L') (hc : ∀ f, CrdOver ι (c f) (c' f))
    (hno : ¬ ∃ j' : (Fin n → L') →ₛₗ[σ'] A, ∀ f, ev (j' (c' f)) = phi f) :
    ¬ ∃ j₀ : (Fin n → L) →ₛₗ[σ'.comp ι] A, ∀ f, ev (j₀ (c f)) = phi f := by
  rintro ⟨j₀, hj₀⟩
  obtain ⟨j', hj'⟩ := exists_extend ι σ' j₀
  exact hno ⟨j', fun f => (congrArg ev (hj' _ _ (hc f))).trans (hj₀ f)⟩

private theorem noEvAtOne_of_pre
    (B B' : Base) (f : Fr B.toPre) (f' : Fr B'.toPre) (T : TwDat B) (T' : TwDat B') (w : ColW B f T) (w' : ColW B' f' T')
    (hPre : B'.toPre = B.toPre) (Z : w.Lt) (Z' : w'.Lt)
    (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m) (hii : (i : ℕ) = i')
    (core : CoreJ (w.st Z).toD7) (core' : CoreJ (w'.st Z').toD7)
    (h1 : HEq core'.Q.H core.Q.H) (h2 : HEq core'.Q.l core.Q.l) (h3 : HEq core'.Q.c core.Q.c)
    (h4 : HEq core'.Q.Dw core.Q.Dw) (h5 : HEq core'.Q.Xo core.Q.Xo) (h6 : HEq core'.U core.U)
    (h7 : HEq core'.V core.V) (h8 : HEq core'.dict core.dict) (h9 : HEq core'.mu core.mu) (h10 : HEq core'.cE core.cE)
    (κ : WeightFamilies.Wt (w.st Z).toD7 ((i : ℕ) + 1)) (κ' : WeightFamilies.Wt (w'.st Z').toD7 ((i' : ℕ) + 1))
    (hP : HEq κ'.aP κ.aP) (hM : HEq κ'.aM κ.aM) (hn : κ'.n = κ.n)
    (s : core.Q.c.F →+* ℂ) (s' : core'.Q.c.F →+* ℂ)
    (hs : ∀ (y : core.Q.c.F) (y' : core'.Q.c.F), (y' : ℂ) = (y : ℂ) → s' y' = s y)
    {S : (w.st Z).toD7.what₂.Tau → SPar} {S' : (w'.st Z').toD7.what₂.Tau → SPar}
    (M : DSModel (Wc (w.st Z).toD7 i) S) (M' : DSModel (Wc (w'.st Z').toD7 i') S') (hMM : ModelSame M M')
    (Hm : Links.HMod (MMap M)) (Hm' : Links.HMod (MMap M')) (hH : HEq Hm' Hm)
    (v : M.Vec) (v' : M'.Vec) (hv : HEq v' v)
    {L L' : Type} [Field L] [Field L'] (ι : L →+* L') (σ' : L' →+* ℂ) {n n' : ℕ} (hnn : n = n')
    (c : core.cuspA ((i : ℕ) + 1) (wtA κ) κ.n → Fin n → L)
    (c' : core'.cuspA ((i' : ℕ) + 1) (wtA κ') κ'.n → Fin n' → L')
    (hc : ∀ f f', HEq f' f → CrdOver ι (c f) (c' f')) {Z₀ Z₁ : Prop} (hZ : Z₀ → Z₁) :
    NoEvAtOne core ((i : ℕ) + 1) κ s M Hm v (σ'.comp ι) c Z₀ →
    NoEvAtOne core' ((i' : ℕ) + 1) κ' s' M' Hm' v' σ' c' Z₁ := by
  obtain ⟨P'⟩ := B'
  dsimp only at hPre
  subst hPre
  have ei : i = i' := Fin.ext hii
  clear hii
  subst ei
  obtain ⟨⟨⟨H, l, cc, Dw, Xo, eO⟩, U, V, dict, mu, Kf, pb⟩, cE, chiW, x₀, iota⟩ := core
  obtain ⟨⟨⟨H', l', cc', Dw', Xo', eO'⟩, U', V', dict', mu', Kf', pb'⟩, cE', chiW', x₀', iota'⟩ := core'
  have e_h1 : H' = H := eq_of_heq h1; subst e_h1
  have e_h2 : l' = l := eq_of_heq h2; subst e_h2
  have e_h3 : cc' = cc := eq_of_heq h3; subst e_h3
  have e_h4 : Dw' = Dw := eq_of_heq h4; subst e_h4
  have e_h5 : Xo' = Xo := eq_of_heq h5; subst e_h5
  have e_h6 : U' = U := eq_of_heq h6; subst e_h6
  have e_h7 : V' = V := eq_of_heq h7; subst e_h7
  have e_h8 : dict' = dict := eq_of_heq h8; subst e_h8
  have e_h9 : mu' = mu := eq_of_heq h9; subst e_h9
  have e_h10 : cE' = cE := eq_of_heq h10; subst e_h10
  obtain ⟨aP, aM, _, _, m, _⟩ := κ
  obtain ⟨aP', aM', _, _, m', _⟩ := κ'
  have e_hP : aP' = aP := eq_of_heq hP; subst e_hP
  have e_hM : aM' = aM := eq_of_heq hM; subst e_hM
  dsimp only at hn
  subst hn
  have hs' : s' = s := RingHom.ext fun y => hs y y rfl
  subst hs'
  obtain @⟨X, nacg, ips, σ₀, lam, ε, fr, _, _, _, _⟩ := M
  obtain @⟨X', nacg', ips', σ'', lam', ε', fr', _, _, _, _⟩ := M'
  obtain ⟨m1, m2, m3, m4, m5, m6, m7⟩ := hMM
  have e_m1 : X' = X := eq_of_heq m1; subst e_m1
  have e_m2 : nacg' = nacg := eq_of_heq m2; subst e_m2
  have e_m3 : ips' = ips := eq_of_heq m3; subst e_m3
  have e_m4 : σ'' = σ₀ := eq_of_heq m4; subst e_m4
  have e_m5 : lam' = lam := eq_of_heq m5; subst e_m5
  have e_m6 : ε' = ε := eq_of_heq m6; subst e_m6
  have e_m7 : fr' = fr := eq_of_heq m7; subst e_m7
  have hH' : Hm' = Hm := eq_of_heq hH
  subst hH'
  have hv' : v' = v := eq_of_heq hv
  subst hv'
  subst hnn
  intro h hg hV hno
  exact hZ (h hg hV (noEvAtOne_core ι σ' (fun x => Hm'.e x v') _ c c' (fun f => hc f f HEq.rfl) hno))

theorem enlargedBase_reading_zero_without_evaluationProperty : ∀ (B B' : Base) (f : Fr B.toPre) (f' : Fr B'.toPre) (T : TwDat B) (T' : TwDat B') (w : ColW B f T) (w' : ColW B' f' T'),
    B'.toPre = B.toPre → ∀ (Z : w.Lt) (hX : B.fields.Ok) (Wt : Set B.places.Pl) (z : Dat (w.st Z) w.I hX T Wt) (Z' : w'.Lt) (hX' : B'.fields.Ok)
    (Wt' : Set B'.places.Pl) (core' : Formalism.L2.Pj.CoreJ (w'.st Z').toD7) (alg' : Algebra core'.Q.c.F (w'.st Z').toD7.what₂.LL),
    (∀ y : core'.Q.c.F, B'.embLL (@algebraMap core'.Q.c.F (w'.st Z').toD7.what₂.LL _ _ alg' y) = (y : ℂ)) →
    (HEq core'.Q.H z.core.Q.H ∧ HEq core'.Q.l z.core.Q.l ∧ HEq core'.Q.c z.core.Q.c ∧ HEq core'.Q.Dw z.core.Q.Dw ∧
      HEq core'.Q.Xo z.core.Q.Xo ∧ HEq core'.U z.core.U ∧ HEq core'.V z.core.V ∧ HEq core'.dict z.core.dict ∧
      HEq core'.mu z.core.mu ∧ HEq core'.Kf z.core.Kf ∧ HEq core'.cE z.core.cE ∧ HEq core'.chiW z.core.chiW ∧
      HEq core'.x₀ z.core.x₀ ∧ HEq core'.iota z.core.iota) →
    Formalism.L2.Pj.LawsCore core'.toCore →
    letI := alg'; ∀ (Xg : Finset (Gc B' w'.px → B'.LL)) (tr : TrI B' w'.px)
      (R' : RealDat3 (w'.st Z').toD7 (famR (w'.st Z') w'.I hX' (usedOf w'.I T' Wt') Xg tr) core'.Q.c.F),
      RSideW z Wt' R' → HEq R'.toLevCh.mu0 z.R.toLevCh.mu0 →
      ∀ ι : (w.st Z).toD7.what₂.LL →+* (w'.st Z').toD7.what₂.LL, (∀ y, (w'.st Z').toD7.what₂.embLL (ι y) = (w.st Z).toD7.what₂.embLL y) →
      ∀ (κ' : ∀ i : Fin (w'.st Z').toD7.R.m, WeightFamilies.Wt (w'.st Z').toD7 ((i : ℕ) + 1)),
        (∀ (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m), (i : ℕ) = i' →
          HEq (κ' i').aP (z.geo.κ i).aP ∧ HEq (κ' i').aM (z.geo.κ i).aM ∧ (κ' i').n = (z.geo.κ i).n) →
      ∀ (v₀' : ∀ (i : Fin (w'.st Z').toD7.R.m) (σ : (w'.st Z').toD7.what₂.LL →+* ℂ), (R'.MW i σ).Vec),
        (∀ (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m), (i : ℕ) = i' → ∀ σ' : (w'.st Z').toD7.what₂.LL →+* ℂ,
          HEq (v₀' i' σ') (z.geo.v₀ i (σ'.comp ι))) →
      ∀ (e' : ∀ i : Fin (w'.st Z').toD7.R.m, core'.cuspA ((i : ℕ) + 1) (wtA (κ' i)) (κ' i).n ≃ₗ[core'.Q.c.F] (R'.FW i).WK),
        (∀ (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m), (i : ℕ) = i' → ∀ φ φ', HEq φ' φ →
          CrdOver ι (z.geo.fw.e i φ : (z.R.FW i).WK).1 (e' i' φ' : (R'.FW i').WK).1) →
      ∀ (i : Fin (w'.st Z').toD7.R.m) (σ : (w'.st Z').toD7.what₂.LL →+* ℂ), Formalism.L2.Pj.GoodEmb core'.Q.c (σ.comp (algebraMap core'.Q.c.F (w'.st Z').toD7.what₂.LL)) →
        ∀ hV : core'.V ((i : ℕ) + 1) (σ.comp (algebraMap core'.Q.c.F (w'.st Z').toD7.what₂.LL)) = Wc (w'.st Z').toD7 i,
        (¬ ∃ j' : (Fin (R'.nW i) → (w'.st Z').toD7.what₂.LL) →ₛₗ[σ] (R'.HW i σ).H, ∀ f : core'.cuspA ((i : ℕ) + 1) (wtA (κ' i)) (κ' i).n,
          ((R'.HW i σ).e (j' ((e' i f : (R'.FW i).WK) : Fin (R'.nW i) → (w'.st Z').toD7.what₂.LL))) (v₀' i σ) =
            hV ▸ core'.phiJ ((i : ℕ) + 1) (σ.comp (algebraMap core'.Q.c.F (w'.st Z').toD7.what₂.LL)) (wtA (κ' i)) (f : core'.R ((i : ℕ) + 1))) →
        (R'.FW i).j σ = 0 := by
  intro B B' f f' T T' w w' hPre Z hX Wt z Z' hX' Wt' core' alg' halg hc _ Xg tr R' hRS _ ι hι κ' hκ v₀' hv e' he i' σ'
  let _ := alg'
  let _ := z.alg
  have hm : (w'.st Z').toD7.R.m = (w.st Z).toD7.R.m := congrArg Ranks.m (geoExt_pre_eq B B' f f' T T' w w' hPre Z Z').1
  let i : Fin (w.st Z).toD7.R.m := ⟨i'.1, hm ▸ i'.2⟩
  have hU := geoExt_rsideW_unpack hRS
  obtain ⟨hMM, hHW, hj⟩ := hU.model i i' rfl hι σ'
  have hs : ∀ (y : z.core.Q.c.F) (y' : core'.Q.c.F), (y' : ℂ) = (y : ℂ) →
      res core' σ' y' = res z.core (σ'.comp ι) y := fun y y' hy =>
    congrArg σ' ((w'.st Z').toD7.what₂.embLL.injective
      ((halg y').trans (hy.trans ((hι _).trans (z.alg_eq y)).symm)))
  have hn : z.R.nW i = R'.nW i' := geoExt_fin_val_eq hm _ _ hU.nW i i' rfl
  obtain ⟨hP, hM, hnn⟩ := hκ i i' rfl
  obtain ⟨c1, c2, c3, c4, c5, c6, c7, c8, c9, -, c10, -⟩ := hc
  exact noEvAtOne_of_pre B B' f f' T T' w w' hPre Z Z' i i' rfl z.core core' c1 c2 c3 c4 c5 c6 c7 c8 c9 c10
    (z.geo.κ i) (κ' i') hP hM hnn (res z.core (σ'.comp ι)) (res core' σ') hs
    (z.R.MW i (σ'.comp ι)) (R'.MW i' σ') hMM (z.R.HW i (σ'.comp ι)) (R'.HW i' σ') hHW
    (z.geo.v₀ i (σ'.comp ι)) (v₀' i' σ') (hv i i' rfl σ') ι σ' hn
    (fun φ => (z.geo.fw.e i φ : (z.R.FW i).WK).1) (fun φ => (e' i' φ : (R'.FW i').WK).1) (he i i' rfl)
    (reading_eq_zero ι σ' hn _ _ hj) (z.geo.fw.ev0 i (σ'.comp ι))

end GlobalTheory.Mem.R3.Rw.EvZero

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.EnlargedBaseReadingZeroWithoutEvaluationProperty =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.KapMoved =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.KapMoved", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CrdOver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PlaceModelImp\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RowsRestWordColumnUnitBaseTupleAlt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx Formalism.IndefR.RecTie
open scoped TensorProduct InnerProductSpace ComplexOrder
attribute [local instance] Formalism.BasicNotions.Host.cmStar Formalism.IndefR.principalLevelFrame.instCMHostI
open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.Mem.R3.Tr
open Formalism.IndefR.FWT Formalism.L2.Pj Formalism.IndefR.Mult GlobalTheory.RealGeo

namespace GlobalTheory.FWKapMove

theorem kap_moved : ∀ (B B' : Base) (f : Fr B.toPre) (f' : Fr B'.toPre) (T : TwDat B) (T' : TwDat B') (w : ColW B f T) (w' : ColW B' f' T'),
    B'.toPre = B.toPre → ∀ (Z : w.Lt) (hX : B.fields.Ok) (Wt : Set B.places.Pl) (z : Dat (w.st Z) w.I hX T Wt) (Z' : w'.Lt) (hX' : B'.fields.Ok)
    (Wt' : Set B'.places.Pl) (core' : Formalism.L2.Pj.CoreJ (w'.st Z').toD7) (alg' : Algebra core'.Q.c.F (w'.st Z').toD7.what₂.LL),
    (∀ y : core'.Q.c.F, B'.embLL (@algebraMap core'.Q.c.F (w'.st Z').toD7.what₂.LL _ _ alg' y) = (y : ℂ)) →
    (HEq core'.Q.H z.core.Q.H ∧ HEq core'.Q.l z.core.Q.l ∧ HEq core'.Q.c z.core.Q.c ∧ HEq core'.Q.Dw z.core.Q.Dw ∧
      HEq core'.Q.Xo z.core.Q.Xo ∧ HEq core'.U z.core.U ∧ HEq core'.V z.core.V ∧ HEq core'.dict z.core.dict ∧
      HEq core'.mu z.core.mu ∧ HEq core'.Kf z.core.Kf ∧ HEq core'.cE z.core.cE ∧ HEq core'.chiW z.core.chiW ∧
      HEq core'.x₀ z.core.x₀ ∧ HEq core'.iota z.core.iota) →
    Formalism.L2.Pj.LawsCore core'.toCore →
    letI := alg'; ∀ (Xg : Finset (Gc B' w'.px → B'.LL)) (tr : TrI B' w'.px)
      (R' : RealDat3 (w'.st Z').toD7 (famR (w'.st Z') w'.I hX' (usedOf w'.I T' Wt') Xg tr) core'.Q.c.F),
      RSideW z Wt' R' → HEq R'.toLevCh.mu0 z.R.toLevCh.mu0 →
      ∀ ι : (w.st Z).toD7.what₂.LL →+* (w'.st Z').toD7.what₂.LL, (∀ y, (w'.st Z').toD7.what₂.embLL (ι y) = (w.st Z).toD7.what₂.embLL y) →
      ∀ (κ' : ∀ i : Fin (w'.st Z').toD7.R.m, WeightFamilies.Wt (w'.st Z').toD7 ((i : ℕ) + 1)),
        (∀ (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m), (i : ℕ) = i' →
          HEq (κ' i').aP (z.geo.κ i).aP ∧ HEq (κ' i').aM (z.geo.κ i).aM ∧ (κ' i').n = (z.geo.κ i).n) →
      ∀ (i : Fin (w'.st Z').toD7.R.m) (τ : (w'.st Z').toD7.what₂.Tau),
        (∀ k : Fin ((w'.st Z').toD7.R.sigW ((i : ℕ) + 1)).1, (κ' i).aP τ k = aPl (w'.st Z').toD7 i ((Wc (w'.st Z').toD7 i).sig (tauE (w'.st Z').toD7 τ)).1 τ k) ∧
        (∀ k : Fin ((w'.st Z').toD7.R.sigW ((i : ℕ) + 1)).2,
          (κ' i).aM τ k = aMi (w'.st Z').toD7 i ((Wc (w'.st Z').toD7 i).sig (tauE (w'.st Z').toD7 τ)).1 ((Wc (w'.st Z').toD7 i).sig (tauE (w'.st Z').toD7 τ)).2 τ k) ∧
        (κ' i).n = (w'.st Z').toD7.R.nV := by
  intro B B' f f' T T' w w' hPre Z hX Wt z Z' hX' Wt' core' alg' halg hcore hlaws Xg tr R' hRS hmu ι hι κ' hκ' i τ
  clear hRS hmu hlaws hcore halg alg' core' R' Xg tr ι hι
  obtain ⟨P'⟩ := B'
  dsimp only at hPre
  subst hPre
  obtain ⟨h1, h2, h3⟩ := hκ' i i rfl
  have h1' := eq_of_heq h1
  have h2' := eq_of_heq h2
  obtain ⟨k1, k2, k3⟩ := z.geo.fw.kap i τ
  refine ⟨fun k => ?_, fun k => ?_, ?_⟩
  · rw [h1']; exact k1 k
  · rw [h2']; exact k2 k
  · rw [h3]; exact k3

end GlobalTheory.FWKapMove
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.KapMoved =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.KsFormBaseChange =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.KsFormBaseChange", "h": "module\n\npublic import Mathlib.Algebra.Algebra.Defs\npublic import Mathlib.LinearAlgebra.LinearIndependent.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Data.Matrix.Basic\npublic import Mathlib.LinearAlgebra.Basis.Basic\npublic import Mathlib.LinearAlgebra.Dimension.StrongRankCondition\npublic import Mathlib.LinearAlgebra.FiniteDimensional.Lemmas\npublic import Mathlib.LinearAlgebra.Matrix.NonsingularInverse\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory

theorem _root_.GlobalTheory.ksForm_baseChange :
    ∀ {LL LL' Ks : Type} [Field LL] [Field LL'] [Field Ks] [Algebra Ks LL] [Algebra Ks LL']
      (ι : LL →+* LL'), (∀ y, ι (algebraMap Ks LL y) = algebraMap Ks LL' y) →
      ∀ {n : ℕ} (WK : Submodule Ks (Fin n → LL)) (WK' : Submodule Ks (Fin n → LL')),
      (∀ x, x ∈ WK ↔ (fun k => ι (x k)) ∈ WK') →
      (∀ x' ∈ WK', ∃ x ∈ WK, x' = fun k => ι (x k)) →
      (∃ (m : ℕ) (b : Fin m → (Fin n → LL)), (∀ i, b i ∈ WK) ∧ LinearIndependent Ks b ∧
        Submodule.span Ks (Set.range b) = WK ∧ LinearIndependent LL b ∧
        Submodule.span LL (Set.range b) = ⊤) →
      ∃ (m : ℕ) (b : Fin m → (Fin n → LL')), (∀ i, b i ∈ WK') ∧ LinearIndependent Ks b ∧
        Submodule.span Ks (Set.range b) = WK' ∧ LinearIndependent LL' b ∧
        Submodule.span LL' (Set.range b) = ⊤ := by
  intro LL LL' Ks _ _ _ _ _ ι hι n WK WK' hmem hsurj ⟨m, b, hbW, hKs, hspanK, hLL, hspanLL⟩
  let Φ : (Fin n → LL) →ₗ[Ks] (Fin n → LL') :=
    { toFun := fun x k => ι (x k)
      map_add' := fun x y => by ext k; simp
      map_smul' := fun c x => by ext k; simp [Algebra.smul_def, hι] }
  have hker : LinearMap.ker Φ = ⊥ := by
    refine LinearMap.ker_eq_bot'.2 fun x hx => funext fun k => ?_
    have hk : ι (x k) = 0 := congrFun hx k
    simpa using hk
  have hmn : m = n := by
    have h := Module.finrank_eq_card_basis (Module.Basis.mk hLL (by rw [hspanLL]))
    simp at h
    omega
  subst hmn
  have hLL' : LinearIndependent LL' (Φ ∘ b) := by
    have hu : IsUnit (Matrix.of b) := Matrix.linearIndependent_row_iff_isUnit.1 hLL
    exact Matrix.linearIndependent_row_iff_isUnit.2 (hu.map ι.mapMatrix)
  refine ⟨m, Φ ∘ b, fun i => (hmem _).1 (hbW i), hKs.map' Φ hker, ?_, hLL', ?_⟩
  · rw [Set.range_comp, Submodule.span_image, hspanK]
    ext x'
    constructor
    · rintro ⟨x, hx, rfl⟩
      exact (hmem x).1 hx
    · intro hx'
      obtain ⟨x, hx, rfl⟩ := hsurj x' hx'
      exact ⟨x, hx, rfl⟩
  · exact hLL'.span_eq_top_of_card_eq_finrank' (by simp)

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.KsFormBaseChange =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.KsFormBaseChangeCrd =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.KsFormBaseChangeCrd", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CrdOver\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.KsFormBaseChange\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PlaceModelImp\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RowsRestWordColumnUnitBaseTupleAlt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx Formalism.IndefR.RecTie
open scoped TensorProduct InnerProductSpace ComplexOrder
attribute [local instance] Formalism.BasicNotions.Host.cmStar Formalism.IndefR.principalLevelFrame.instCMHostI
open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.Mem.R3.Tr
open Formalism.IndefR.FWT Formalism.L2.Pj Formalism.IndefR.Mult GlobalTheory.RealGeo

attribute [local instance high] Submodule.addCommGroup Submodule.module
namespace GlobalTheory

theorem ksForm_baseChange_crd {LL LL' Ks : Type} [Field LL] [Field LL'] [Field Ks] [Algebra Ks LL] [Algebra Ks LL']
    (ι : LL →+* LL') (hι : ∀ y, ι (algebraMap Ks LL y) = algebraMap Ks LL' y) {n n' : ℕ} (hn : n = n')
    (WK : Submodule Ks (Fin n → LL)) (WK' : Submodule Ks (Fin n' → LL'))
    (hmem : ∀ x x', GlobalTheory.Mem.R3.Rw.CrdOver ι x x' → (x' ∈ WK' ↔ x ∈ WK))
    (honto : ∀ x' ∈ WK', ∃ x : Fin n → LL, GlobalTheory.Mem.R3.Rw.CrdOver ι x x')
    (h : ∃ (m : ℕ) (b : Fin m → (Fin n → LL)), (∀ i, b i ∈ WK) ∧ LinearIndependent Ks b ∧
        Submodule.span Ks (Set.range b) = WK ∧ LinearIndependent LL b ∧
        Submodule.span LL (Set.range b) = ⊤) :
    ∃ (m : ℕ) (b : Fin m → (Fin n' → LL')), (∀ i, b i ∈ WK') ∧ LinearIndependent Ks b ∧
        Submodule.span Ks (Set.range b) = WK' ∧ LinearIndependent LL' b ∧
        Submodule.span LL' (Set.range b) = ⊤ := by
  subst hn
  have hc : ∀ x : Fin n → LL, GlobalTheory.Mem.R3.Rw.CrdOver ι x (fun k => ι (x k)) :=
    fun x => ⟨rfl, fun k k' hk => by rw [Fin.ext hk]⟩
  refine GlobalTheory.ksForm_baseChange ι hι WK WK' (fun x => (hmem x _ (hc x)).symm) ?_ h
  intro x' hx'
  obtain ⟨x, -, hx⟩ := honto x' hx'
  have he : x' = fun k => ι (x k) := funext fun k => hx k k rfl
  subst he
  exact ⟨x, (hmem x _ (hc x)).1 hx', rfl⟩

end GlobalTheory


private theorem ksForm_of_pre
    (B B' : Base) (f : Fr B.toPre) (f' : Fr B'.toPre) (T : TwDat B) (T' : TwDat B') (w : ColW B f T) (w' : ColW B' f' T')
    (hPre : B'.toPre = B.toPre) (Z : w.Lt) (Z' : w'.Lt)
    (core : CoreJ (w.st Z).toD7) (core' : CoreJ (w'.st Z').toD7)
    (hH : HEq core'.Q.H core.Q.H) (hl : HEq core'.Q.l core.Q.l) (hc : HEq core'.Q.c core.Q.c)
    [Algebra core.Q.c.F (w.st Z).toD7.what₂.LL] [Algebra core'.Q.c.F (w'.st Z').toD7.what₂.LL]
    (ι : (w.st Z).toD7.what₂.LL →+* (w'.st Z').toD7.what₂.LL)
    (halg2 : ∀ (y : core.Q.c.F) (y' : core'.Q.c.F), (y' : ℂ) = (y : ℂ) → ι (algebraMap _ _ y) = algebraMap _ _ y')
    {n n' : ℕ} (hn : n = n')
    (WK : Submodule core.Q.c.F (Fin n → (w.st Z).toD7.what₂.LL))
    (WK' : Submodule core'.Q.c.F (Fin n' → (w'.st Z').toD7.what₂.LL))
    (hmem : ∀ x x', CrdOver ι x x' → (x' ∈ WK' ↔ x ∈ WK))
    (honto : ∀ x' ∈ WK', ∃ x : Fin n → (w.st Z).toD7.what₂.LL, CrdOver ι x x')
    (hks : ∃ (m : ℕ) (b : Fin m → (Fin n → (w.st Z).toD7.what₂.LL)), (∀ i, b i ∈ WK) ∧ LinearIndependent core.Q.c.F b ∧
      Submodule.span core.Q.c.F (Set.range b) = WK ∧ LinearIndependent (w.st Z).toD7.what₂.LL b ∧
      Submodule.span (w.st Z).toD7.what₂.LL (Set.range b) = ⊤) :
    ∃ (m : ℕ) (b : Fin m → (Fin n' → (w'.st Z').toD7.what₂.LL)), (∀ i, b i ∈ WK') ∧ LinearIndependent core'.Q.c.F b ∧
      Submodule.span core'.Q.c.F (Set.range b) = WK' ∧ LinearIndependent (w'.st Z').toD7.what₂.LL b ∧
      Submodule.span (w'.st Z').toD7.what₂.LL (Set.range b) = ⊤ := by
  obtain ⟨P'⟩ := B'
  dsimp only at hPre
  subst hPre
  rcases core' with ⟨⟨⟨H', l', c'⟩⟩⟩
  dsimp only at hH hl hc halg2
  have e_hH := eq_of_heq hH; clear hH; subst e_hH
  have e_hl := eq_of_heq hl; clear hl; subst e_hl
  have e_hc := eq_of_heq hc; clear hc; subst e_hc
  exact GlobalTheory.ksForm_baseChange_crd ι (fun y => halg2 y y rfl) hn WK WK' hmem honto hks

theorem GlobalTheory.ksForm_moved : ∀ (B B' : Base) (f : Fr B.toPre) (f' : Fr B'.toPre) (T : TwDat B) (T' : TwDat B') (w : ColW B f T) (w' : ColW B' f' T'),
    B'.toPre = B.toPre → ∀ (Z : w.Lt) (hX : B.fields.Ok) (Wt : Set B.places.Pl) (z : Dat (w.st Z) w.I hX T Wt) (Z' : w'.Lt) (hX' : B'.fields.Ok)
    (Wt' : Set B'.places.Pl) (core' : Formalism.L2.Pj.CoreJ (w'.st Z').toD7) (alg' : Algebra core'.Q.c.F (w'.st Z').toD7.what₂.LL),
    (∀ y : core'.Q.c.F, B'.embLL (@algebraMap core'.Q.c.F (w'.st Z').toD7.what₂.LL _ _ alg' y) = (y : ℂ)) →
    (HEq core'.Q.H z.core.Q.H ∧ HEq core'.Q.l z.core.Q.l ∧ HEq core'.Q.c z.core.Q.c ∧ HEq core'.Q.Dw z.core.Q.Dw ∧
      HEq core'.Q.Xo z.core.Q.Xo ∧ HEq core'.U z.core.U ∧ HEq core'.V z.core.V ∧ HEq core'.dict z.core.dict ∧
      HEq core'.mu z.core.mu ∧ HEq core'.Kf z.core.Kf ∧ HEq core'.cE z.core.cE ∧ HEq core'.chiW z.core.chiW ∧
      HEq core'.x₀ z.core.x₀ ∧ HEq core'.iota z.core.iota) →
    Formalism.L2.Pj.LawsCore core'.toCore →
    letI := alg'; ∀ (Xg : Finset (Gc B' w'.px → B'.LL)) (tr : TrI B' w'.px)
      (R' : RealDat3 (w'.st Z').toD7 (famR (w'.st Z') w'.I hX' (usedOf w'.I T' Wt') Xg tr) core'.Q.c.F),
      RSideW z Wt' R' → HEq R'.toLevCh.mu0 z.R.toLevCh.mu0 →
      ∀ ι : (w.st Z).toD7.what₂.LL →+* (w'.st Z').toD7.what₂.LL, (∀ y, (w'.st Z').toD7.what₂.embLL (ι y) = (w.st Z).toD7.what₂.embLL y) →
      ∀ i : Fin (w'.st Z').toD7.R.m, (R'.FW i).IsKsForm := by
  intro B B' f f' T T' w w' hPre Z hX Wt z Z' hX' Wt' core' alg' halg hcore hlaws Xg tr R' hR hmu ι hι i'
  let _ := alg'
  let _ := z.alg
  have hm : (w'.st Z').toD7.R.m = (w.st Z).toD7.R.m := congrArg Ranks.m (geoExt_pre_eq B B' f f' T T' w w' hPre Z Z').1
  let i : Fin (w.st Z).toD7.R.m := ⟨i'.1, hm ▸ i'.2⟩
  obtain ⟨hH, hl, hc, -⟩ := hcore
  have hU := geoExt_rsideW_unpack hR
  have hn : z.R.nW i = R'.nW i' := geoExt_fin_val_eq hm _ _ hU.nW i i' rfl
  have hcol := hU.wk i i' rfl hι
  have halg2 : ∀ (y : z.core.Q.c.F) (y' : core'.Q.c.F), (y' : ℂ) = (y : ℂ) →
      ι (@algebraMap z.core.Q.c.F (w.st Z).toD7.what₂.LL _ _ z.alg y) =
      @algebraMap core'.Q.c.F (w'.st Z').toD7.what₂.LL _ _ alg' y' := fun y y' hy =>
    (w'.st Z').toD7.what₂.embLL.injective ((hι _).trans ((z.alg_eq y).trans (hy.symm.trans (halg y').symm)))
  exact ksForm_of_pre B B' f f' T T' w w' hPre Z Z' z.core core' hH hl hc ι halg2 hn
    (z.R.FW i).WK (R'.FW i').WK hcol.1 hcol.2 (z.geo.fw.ks i)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.KsFormBaseChangeCrd =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LawsJEnl =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LawsJEnl", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CrdOver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PlaceModelImp\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RowsRestWordColumnUnitBaseTupleAlt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx Formalism.IndefR.RecTie
open scoped TensorProduct InnerProductSpace ComplexOrder
attribute [local instance] Formalism.BasicNotions.Host.cmStar Formalism.IndefR.principalLevelFrame.instCMHostI
open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.Mem.R3.Tr
open Formalism.IndefR.FWT Formalism.L2.Pj Formalism.IndefR.Mult GlobalTheory.RealGeo

namespace GlobalTheory.Mem.R3.Ext

private theorem lawsJ_of_pre
    (B B' : Base) (f : Fr B.toPre) (f' : Fr B'.toPre) (T : TwDat B) (T' : TwDat B') (w : ColW B f T) (w' : ColW B' f' T')
    (hPre : B'.toPre = B.toPre) (Z : w.Lt) (Z' : w'.Lt)
    (core : CoreJ (w.st Z).toD7) (core' : CoreJ (w'.st Z').toD7)
    (hH : HEq core'.Q.H core.Q.H ∧ HEq core'.Q.l core.Q.l ∧ HEq core'.Q.c core.Q.c ∧ HEq core'.Q.Dw core.Q.Dw ∧
      HEq core'.Q.Xo core.Q.Xo ∧ HEq core'.U core.U ∧ HEq core'.V core.V ∧ HEq core'.dict core.dict ∧
      HEq core'.mu core.mu ∧ HEq core'.Kf core.Kf ∧ HEq core'.cE core.cE ∧ HEq core'.chiW core.chiW ∧
      HEq core'.x₀ core.x₀ ∧ HEq core'.iota core.iota)
    (hL : LawsCore core'.toCore) (hz : LawsJ core) : LawsJ core' := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14⟩ := hH
  obtain ⟨P'⟩ := B'
  dsimp only at hPre
  subst hPre
  obtain ⟨⟨⟨H, l, c, Dw, Xo, eO⟩, U, V, dict, mu, Kf, pb⟩, cE, chiW, x₀, iota⟩ := core'
  have e_h1 : H = core.Q.H := eq_of_heq h1; subst e_h1
  have e_h2 : l = core.Q.l := eq_of_heq h2; subst e_h2
  have e_h3 : c = core.Q.c := eq_of_heq h3; subst e_h3
  have e_h4 : Dw = core.Q.Dw := eq_of_heq h4; subst e_h4
  have e_h5 : Xo = core.Q.Xo := eq_of_heq h5; subst e_h5
  have e_h6 : U = core.U := eq_of_heq h6; subst e_h6
  have e_h7 : V = core.V := eq_of_heq h7; subst e_h7
  have e_h8 : dict = core.dict := eq_of_heq h8; subst e_h8
  have e_h9 : mu = core.mu := eq_of_heq h9; subst e_h9
  have e_h10 : Kf = core.Kf := eq_of_heq h10; subst e_h10
  have e_h11 : cE = core.cE := eq_of_heq h11; subst e_h11
  have e_h12 : chiW = core.chiW := eq_of_heq h12; subst e_h12
  have e_h13 : x₀ = core.x₀ := eq_of_heq h13; subst e_h13
  have e_h14 : iota = core.iota := eq_of_heq h14; subst e_h14
  exact ⟨hL.toLawsM, hz.cUnit, hz.muVal, hz.muConj, hz.intAll, hz.modelW,
    hz.familyUniformisationBasePointOrthogonal, hz.kfHalf, hz.adPin⟩

theorem lawsJ_enl : ∀ (B B' : Base) (f : Fr B.toPre) (f' : Fr B'.toPre) (T : TwDat B) (T' : TwDat B') (w : ColW B f T) (w' : ColW B' f' T'),
    B'.toPre = B.toPre → ∀ (Z : w.Lt) (hX : B.fields.Ok) (Wt : Set B.places.Pl) (z : Dat (w.st Z) w.I hX T Wt) (Z' : w'.Lt) (hX' : B'.fields.Ok)
    (Wt' : Set B'.places.Pl) (core' : Formalism.L2.Pj.CoreJ (w'.st Z').toD7) (alg' : Algebra core'.Q.c.F (w'.st Z').toD7.what₂.LL),
    (∀ y : core'.Q.c.F, B'.embLL (@algebraMap core'.Q.c.F (w'.st Z').toD7.what₂.LL _ _ alg' y) = (y : ℂ)) →
    (HEq core'.Q.H z.core.Q.H ∧ HEq core'.Q.l z.core.Q.l ∧ HEq core'.Q.c z.core.Q.c ∧ HEq core'.Q.Dw z.core.Q.Dw ∧
      HEq core'.Q.Xo z.core.Q.Xo ∧ HEq core'.U z.core.U ∧ HEq core'.V z.core.V ∧ HEq core'.dict z.core.dict ∧
      HEq core'.mu z.core.mu ∧ HEq core'.Kf z.core.Kf ∧ HEq core'.cE z.core.cE ∧ HEq core'.chiW z.core.chiW ∧
      HEq core'.x₀ z.core.x₀ ∧ HEq core'.iota z.core.iota) →
    Formalism.L2.Pj.LawsCore core'.toCore →
    letI := alg'; ∀ (Xg : Finset (Gc B' w'.px → B'.LL)) (tr : TrI B' w'.px)
      (R' : RealDat3 (w'.st Z').toD7 (famR (w'.st Z') w'.I hX' (usedOf w'.I T' Wt') Xg tr) core'.Q.c.F),
      RSideW z Wt' R' → HEq R'.toLevCh.mu0 z.R.toLevCh.mu0 →
      ∀ ι : (w.st Z).toD7.what₂.LL →+* (w'.st Z').toD7.what₂.LL, (∀ y, (w'.st Z').toD7.what₂.embLL (ι y) = (w.st Z).toD7.what₂.embLL y) →
      Formalism.L2.Pj.LawsJ core' := by
  intro B B' f f' T T' w w' hPre Z hX Wt z Z' hX' Wt' core' _ _ hH hL _ _ _ _ _ _ _
  exact lawsJ_of_pre B B' f f' T T' w w' hPre Z Z' z.core core' hH hL z.geo.fw.laws

end GlobalTheory.Mem.R3.Ext
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LawsJEnl =====

-- ===== clump member: Development.AutomorphicArithmetic.UnitTensorPairings.CuspCoreDatumTransportOfSamePre =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.UnitTensorPairings.CuspCoreDatumTransportOfSamePre", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CrdOver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PlaceModelImp\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RowsRestWordColumnUnitBaseTupleAlt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx Formalism.IndefR.RecTie
open scoped TensorProduct InnerProductSpace ComplexOrder
attribute [local instance] Formalism.BasicNotions.Host.cmStar Formalism.IndefR.principalLevelFrame.instCMHostI
open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.Mem.R3.Tr
open Formalism.IndefR.FWT Formalism.L2.Pj Formalism.IndefR.Mult GlobalTheory.RealGeo


private theorem dsModel_vec_of_pre
    (B B' : Base) (f : Fr B.toPre) (f' : Fr B'.toPre) (T : TwDat B) (T' : TwDat B') (w : ColW B f T) (w' : ColW B' f' T')
    (hPre : B'.toPre = B.toPre) (Z : w.Lt) (Z' : w'.Lt)
    (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m) (hii : (i : ℕ) = i')
    {S : (w.st Z).toD7.what₂.Tau → SPar} {S' : (w'.st Z').toD7.what₂.Tau → SPar}
    (M : DSModel (Wc (w.st Z).toD7 i) S) (M' : DSModel (Wc (w'.st Z').toD7 i') S')
    (hMM : GeoTies.ModelSame M M') (v : M.Vec) : ∃ v' : M'.Vec, HEq v' v := by
  obtain ⟨P'⟩ := B'
  dsimp only at hPre
  subst hPre
  have ei : i = i' := Fin.ext hii
  clear hii
  subst ei
  obtain @⟨H, nacg, ips, sg, lam, ep, fr, enum, ds, fu, fg⟩ := M'
  obtain ⟨m1, m2, m3, m4, m5, m6, m7⟩ := hMM
  have e_m1 : H = M.H := eq_of_heq m1; subst e_m1
  have e_m2 : nacg = M.nacg := eq_of_heq m2; subst e_m2
  have e_m3 : ips = M.ips := eq_of_heq m3; subst e_m3
  have e_m4 : sg = M.σ := eq_of_heq m4; subst e_m4
  have e_m5 : lam = M.lam := eq_of_heq m5; subst e_m5
  have e_m6 : ep = M.ε := eq_of_heq m6; subst e_m6
  have e_m7 : fr = M.fr := eq_of_heq m7; subst e_m7
  exact ⟨v, HEq.rfl⟩

theorem UpperTheory.cuspCoreDatum_transport_of_same_pre :
    ∀ (B B' : Base) (f : Fr B.toPre) (f' : Fr B'.toPre) (T : TwDat B) (T' : TwDat B') (w : ColW B f T) (w' : ColW B' f' T'),
        B'.toPre = B.toPre → ∀ (Z : w.Lt) (hX : B.fields.Ok) (Wt : Set B.places.Pl) (z : Dat (w.st Z) w.I hX T Wt) (Z' : w'.Lt) (hX' : B'.fields.Ok)
        (Wt' : Set B'.places.Pl) (core' : Formalism.L2.Pj.CoreJ (w'.st Z').toD7) (alg' : Algebra core'.Q.c.F (w'.st Z').toD7.what₂.LL),
        (∀ y : core'.Q.c.F, B'.embLL (@algebraMap core'.Q.c.F (w'.st Z').toD7.what₂.LL _ _ alg' y) = (y : ℂ)) →
        (HEq core'.Q.H z.core.Q.H ∧ HEq core'.Q.l z.core.Q.l ∧ HEq core'.Q.c z.core.Q.c ∧ HEq core'.Q.Dw z.core.Q.Dw ∧
          HEq core'.Q.Xo z.core.Q.Xo ∧ HEq core'.U z.core.U ∧ HEq core'.V z.core.V ∧ HEq core'.dict z.core.dict ∧
          HEq core'.mu z.core.mu ∧ HEq core'.Kf z.core.Kf ∧ HEq core'.cE z.core.cE ∧ HEq core'.chiW z.core.chiW ∧
          HEq core'.x₀ z.core.x₀ ∧ HEq core'.iota z.core.iota) →
        Formalism.L2.Pj.LawsCore core'.toCore →
        letI := alg'; ∀ (Xg : Finset (Gc B' w'.px → B'.LL)) (tr : TrI B' w'.px)
          (R' : RealDat3 (w'.st Z').toD7 (famR (w'.st Z') w'.I hX' (usedOf w'.I T' Wt') Xg tr) core'.Q.c.F),
          RSideW z Wt' R' → HEq R'.toLevCh.mu0 z.R.toLevCh.mu0 →
          ∀ ι : (w.st Z).toD7.what₂.LL →+* (w'.st Z').toD7.what₂.LL, (∀ y, (w'.st Z').toD7.what₂.embLL (ι y) = (w.st Z).toD7.what₂.embLL y) →
          ∃ (v₀' : ∀ (i : Fin (w'.st Z').toD7.R.m) (σ : (w'.st Z').toD7.what₂.LL →+* ℂ), (R'.MW i σ).Vec),
            (∀ (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m), (i : ℕ) = i' → ∀ σ' : (w'.st Z').toD7.what₂.LL →+* ℂ,
              HEq (v₀' i' σ') (z.geo.v₀ i (σ'.comp ι))) := by
  intro B B' f f' T T' w w' hPre Z hX Wt z Z' hX' Wt' core' alg' halg hcore hlaws Xg tr R' hR hmu ι hι
  have hm : (w'.st Z').toD7.R.m = (w.st Z).toD7.R.m := congrArg Ranks.m (geoExt_pre_eq B B' f f' T T' w w' hPre Z Z').1
  have key : ∀ (i' : Fin (w'.st Z').toD7.R.m) (σ : (w'.st Z').toD7.what₂.LL →+* ℂ),
      ∃ v : (R'.MW i' σ).Vec, HEq v (z.geo.v₀ ⟨i'.1, hm ▸ i'.2⟩ (σ.comp ι)) := by
    intro i' σ
    let i : Fin (w.st Z).toD7.R.m := ⟨i'.1, hm ▸ i'.2⟩
    exact dsModel_vec_of_pre B B' f f' T T' w w' hPre Z Z' i i' rfl (z.R.MW i (σ.comp ι)) (R'.MW i' σ)
      ((geoExt_rsideW_unpack hR).model i i' rfl hι σ).1
      (z.geo.v₀ i (σ.comp ι))
  refine ⟨fun i' σ => (key i' σ).choose, fun i i' hi σ' => ?_⟩
  have e : (⟨i'.1, hm ▸ i'.2⟩ : Fin (w.st Z).toD7.R.m) = i := Fin.ext hi.symm
  subst e
  exact (key i' σ').choose_spec
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.UnitTensorPairings.CuspCoreDatumTransportOfSamePre =====

-- ===== clump member: Development.AutomorphicArithmetic.UnitTensorPairings.CuspEvalPropertyIndepOfBaseSamePre =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.UnitTensorPairings.CuspEvalPropertyIndepOfBaseSamePre", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CrdOver\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ModelSame\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PlaceModelImp\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RowsRestWordColumnUnitBaseTupleAlt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx Formalism.IndefR.RecTie
open scoped TensorProduct InnerProductSpace ComplexOrder
attribute [local instance] Formalism.BasicNotions.Host.cmStar Formalism.IndefR.principalLevelFrame.instCMHostI
open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.Mem.R3.Tr
open Formalism.IndefR.FWT Formalism.L2.Pj Formalism.IndefR.Mult GlobalTheory.RealGeo

attribute [local instance high] Submodule.addCommGroup Submodule.module

noncomputable section

namespace UpperTheory.RestrictionEvaluation

open GlobalTheory.Mem.R3.Rw.GeoTies

private def EvAtOne {D : D7} (T : CoreJ D) (j : ℕ) (w : WeightFamilies.Wt D j) (s : T.Q.c.F →+* ℂ) {W : HSp D} {S : D.what₂.Tau → SPar}
    (M : DSModel W S) (Hm : Links.HMod (MMap M)) (v : M.Vec) {L : Type} [Field L] (σ : L →+* ℂ) {n : ℕ}
    (c : T.cuspA j (wtA w) w.n → Fin n → L) (r : (Fin n → L) → Hm.H) : Prop :=
  GoodEmb T.Q.c s → ∀ hV : T.V j s = W,
    (∃ j' : (Fin n → L) →ₛₗ[σ] Hm.H, ∀ f : T.cuspA j (wtA w) w.n,
      Hm.e (j' (c f)) v = phiC T hV (wtA w) (f : T.R j)) →
    ∀ f : T.cuspA j (wtA w) w.n, Hm.e (r (c f)) v = phiC T hV (wtA w) (f : T.R j)

private theorem exists_restrict {L L' : Type} [Field L] [Field L'] (ι : L →+* L') (σ' : L' →+* ℂ) {n : ℕ}
    {A : Type} [AddCommGroup A] [Module ℂ A] (j' : (Fin n → L') →ₛₗ[σ'] A) :
    ∃ j : (Fin n → L) →ₛₗ[σ'.comp ι] A, ∀ x x', CrdOver ι x x' → j' x' = j x := by
  refine ⟨{ toFun := fun x => j' (fun k => ι (x k)), map_add' := ?_, map_smul' := ?_ }, ?_⟩
  · intro x y
    rw [← map_add (f := _)]
    congr 1
    funext k
    simp
  · intro a x
    have : (fun k => ι ((a • x) k)) = ι a • (fun k => ι (x k)) := by
      funext k
      simp
    rw [this, map_smulₛₗ]
    rfl
  · intro x x' h
    have : x' = fun k => ι (x k) := funext fun k => h.2 k k rfl
    rw [this]
    rfl

private theorem evAtOne_core {α β L L' : Type} [Field L] [Field L'] (ι : L →+* L') (σ' : L' →+* ℂ)
    {n : ℕ} {A : Type} [AddCommGroup A] [Module ℂ A] (ev : A → β) (phi : α → β)
    (c : α → Fin n → L) (c' : α → Fin n → L') (hc : ∀ f, CrdOver ι (c f) (c' f))
    (r : (Fin n → L) → A) (r' : (Fin n → L') → A) (hr : ∀ x x', CrdOver ι x x' → r' x' = r x)
    (h : (∃ j₀ : (Fin n → L) →ₛₗ[σ'.comp ι] A, ∀ f, ev (j₀ (c f)) = phi f) → ∀ f, ev (r (c f)) = phi f)
    (hex : ∃ j' : (Fin n → L') →ₛₗ[σ'] A, ∀ f, ev (j' (c' f)) = phi f) (f : α) :
    ev (r' (c' f)) = phi f := by
  obtain ⟨j', hj'⟩ := hex
  obtain ⟨j₀, hj₀⟩ := exists_restrict ι σ' j'
  have h1 := h ⟨j₀, fun f => (congrArg ev (hj₀ _ _ (hc f))).symm.trans (hj' f)⟩ f
  exact (congrArg ev (hr _ _ (hc f))).trans h1

private theorem evAtOne_of_pre
    (B B' : Base) (f : Fr B.toPre) (f' : Fr B'.toPre) (T : TwDat B) (T' : TwDat B') (w : ColW B f T) (w' : ColW B' f' T')
    (hPre : B'.toPre = B.toPre) (Z : w.Lt) (Z' : w'.Lt)
    (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m) (hii : (i : ℕ) = i')
    (core : CoreJ (w.st Z).toD7) (core' : CoreJ (w'.st Z').toD7)
    (h1 : HEq core'.Q.H core.Q.H) (h2 : HEq core'.Q.l core.Q.l) (h3 : HEq core'.Q.c core.Q.c)
    (h4 : HEq core'.Q.Dw core.Q.Dw) (h5 : HEq core'.Q.Xo core.Q.Xo) (h6 : HEq core'.U core.U)
    (h7 : HEq core'.V core.V) (h8 : HEq core'.dict core.dict) (h9 : HEq core'.mu core.mu) (h10 : HEq core'.cE core.cE)
    (κ : WeightFamilies.Wt (w.st Z).toD7 ((i : ℕ) + 1)) (κ' : WeightFamilies.Wt (w'.st Z').toD7 ((i' : ℕ) + 1))
    (hP : HEq κ'.aP κ.aP) (hM : HEq κ'.aM κ.aM) (hn : κ'.n = κ.n)
    (s : core.Q.c.F →+* ℂ) (s' : core'.Q.c.F →+* ℂ)
    (hs : ∀ (y : core.Q.c.F) (y' : core'.Q.c.F), (y' : ℂ) = (y : ℂ) → s' y' = s y)
    {S : (w.st Z).toD7.what₂.Tau → SPar} {S' : (w'.st Z').toD7.what₂.Tau → SPar}
    (M : DSModel (Wc (w.st Z).toD7 i) S) (M' : DSModel (Wc (w'.st Z').toD7 i') S') (hMM : ModelSame M M')
    (Hm : Links.HMod (MMap M)) (Hm' : Links.HMod (MMap M')) (hH : HEq Hm' Hm)
    (v : M.Vec) (v' : M'.Vec) (hv : HEq v' v)
    {L L' : Type} [Field L] [Field L'] (ι : L →+* L') (σ' : L' →+* ℂ) {n n' : ℕ} (hnn : n = n')
    (c : core.cuspA ((i : ℕ) + 1) (wtA κ) κ.n → Fin n → L)
    (c' : core'.cuspA ((i' : ℕ) + 1) (wtA κ') κ'.n → Fin n' → L')
    (hc : ∀ f f', HEq f' f → CrdOver ι (c f) (c' f'))
    (r : (Fin n → L) → Hm.H) (r' : (Fin n' → L') → Hm'.H)
    (hr : ∀ x x', CrdOver ι x x' → HEq (r' x') (r x)) :
    EvAtOne core ((i : ℕ) + 1) κ s M Hm v (σ'.comp ι) c r →
    EvAtOne core' ((i' : ℕ) + 1) κ' s' M' Hm' v' σ' c' r' := by
  obtain ⟨P'⟩ := B'
  dsimp only at hPre
  subst hPre
  have ei : i = i' := Fin.ext hii
  clear hii
  subst ei
  obtain ⟨⟨⟨H, l, cc, Dw, Xo, eO⟩, U, V, dict, mu, Kf, pb⟩, cE, chiW, x₀, iota⟩ := core
  obtain ⟨⟨⟨H', l', cc', Dw', Xo', eO'⟩, U', V', dict', mu', Kf', pb'⟩, cE', chiW', x₀', iota'⟩ := core'
  have e_h1 : H' = H := eq_of_heq h1; subst e_h1
  have e_h2 : l' = l := eq_of_heq h2; subst e_h2
  have e_h3 : cc' = cc := eq_of_heq h3; subst e_h3
  have e_h4 : Dw' = Dw := eq_of_heq h4; subst e_h4
  have e_h5 : Xo' = Xo := eq_of_heq h5; subst e_h5
  have e_h6 : U' = U := eq_of_heq h6; subst e_h6
  have e_h7 : V' = V := eq_of_heq h7; subst e_h7
  have e_h8 : dict' = dict := eq_of_heq h8; subst e_h8
  have e_h9 : mu' = mu := eq_of_heq h9; subst e_h9
  have e_h10 : cE' = cE := eq_of_heq h10; subst e_h10
  obtain ⟨aP, aM, _, _, m, _⟩ := κ
  obtain ⟨aP', aM', _, _, m', _⟩ := κ'
  have e_hP : aP' = aP := eq_of_heq hP; subst e_hP
  have e_hM : aM' = aM := eq_of_heq hM; subst e_hM
  dsimp only at hn
  subst hn
  have hs' : s' = s := RingHom.ext fun y => hs y y rfl
  subst hs'
  obtain @⟨X, nacg, ips, σ₀, lam, ε, fr, _, _, _, _⟩ := M
  obtain @⟨X', nacg', ips', σ'', lam', ε', fr', _, _, _, _⟩ := M'
  obtain ⟨m1, m2, m3, m4, m5, m6, m7⟩ := hMM
  have e_m1 : X' = X := eq_of_heq m1; subst e_m1
  have e_m2 : nacg' = nacg := eq_of_heq m2; subst e_m2
  have e_m3 : ips' = ips := eq_of_heq m3; subst e_m3
  have e_m4 : σ'' = σ₀ := eq_of_heq m4; subst e_m4
  have e_m5 : lam' = lam := eq_of_heq m5; subst e_m5
  have e_m6 : ε' = ε := eq_of_heq m6; subst e_m6
  have e_m7 : fr' = fr := eq_of_heq m7; subst e_m7
  have hH' : Hm' = Hm := eq_of_heq hH
  subst hH'
  have hv' : v' = v := eq_of_heq hv
  subst hv'
  subst hnn
  intro h hg hV hex f
  exact evAtOne_core ι σ' (fun x => Hm'.e x v') _ c c' (fun f => hc f f HEq.rfl) r r'
    (fun x x' hx => eq_of_heq (hr x x' hx)) (h hg hV) hex f

end UpperTheory.RestrictionEvaluation

end

open GlobalTheory.Mem.R3.Rw.GeoTies UpperTheory.RestrictionEvaluation in
theorem UpperTheory.cuspEvalProperty_indep_of_base_same_pre :
    ∀ (B B' : Base) (f : Fr B.toPre) (f' : Fr B'.toPre) (T : TwDat B) (T' : TwDat B') (w : ColW B f T) (w' : ColW B' f' T'),
        B'.toPre = B.toPre → ∀ (Z : w.Lt) (hX : B.fields.Ok) (Wt : Set B.places.Pl) (z : Dat (w.st Z) w.I hX T Wt) (Z' : w'.Lt) (hX' : B'.fields.Ok)
        (Wt' : Set B'.places.Pl) (core' : Formalism.L2.Pj.CoreJ (w'.st Z').toD7) (alg' : Algebra core'.Q.c.F (w'.st Z').toD7.what₂.LL),
        (∀ y : core'.Q.c.F, B'.embLL (@algebraMap core'.Q.c.F (w'.st Z').toD7.what₂.LL _ _ alg' y) = (y : ℂ)) →
        (HEq core'.Q.H z.core.Q.H ∧ HEq core'.Q.l z.core.Q.l ∧ HEq core'.Q.c z.core.Q.c ∧ HEq core'.Q.Dw z.core.Q.Dw ∧
          HEq core'.Q.Xo z.core.Q.Xo ∧ HEq core'.U z.core.U ∧ HEq core'.V z.core.V ∧ HEq core'.dict z.core.dict ∧
          HEq core'.mu z.core.mu ∧ HEq core'.Kf z.core.Kf ∧ HEq core'.cE z.core.cE ∧ HEq core'.chiW z.core.chiW ∧
          HEq core'.x₀ z.core.x₀ ∧ HEq core'.iota z.core.iota) →
        Formalism.L2.Pj.LawsCore core'.toCore →
        letI := alg'; ∀ (Xg : Finset (Gc B' w'.px → B'.LL)) (tr : TrI B' w'.px)
          (R' : RealDat3 (w'.st Z').toD7 (famR (w'.st Z') w'.I hX' (usedOf w'.I T' Wt') Xg tr) core'.Q.c.F),
          RSideW z Wt' R' → HEq R'.toLevCh.mu0 z.R.toLevCh.mu0 →
          ∀ ι : (w.st Z).toD7.what₂.LL →+* (w'.st Z').toD7.what₂.LL, (∀ y, (w'.st Z').toD7.what₂.embLL (ι y) = (w.st Z).toD7.what₂.embLL y) →
          ∀ (κ' : ∀ i : Fin (w'.st Z').toD7.R.m, WeightFamilies.Wt (w'.st Z').toD7 ((i : ℕ) + 1)),
            (∀ (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m), (i : ℕ) = i' →
              HEq (κ' i').aP (z.geo.κ i).aP ∧ HEq (κ' i').aM (z.geo.κ i).aM ∧ (κ' i').n = (z.geo.κ i).n) →
          ∀ (v₀' : ∀ (i : Fin (w'.st Z').toD7.R.m) (σ : (w'.st Z').toD7.what₂.LL →+* ℂ), (R'.MW i σ).Vec),
            (∀ (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m), (i : ℕ) = i' → ∀ σ' : (w'.st Z').toD7.what₂.LL →+* ℂ,
              HEq (v₀' i' σ') (z.geo.v₀ i (σ'.comp ι))) →
          ∀ (e' : ∀ i : Fin (w'.st Z').toD7.R.m, core'.cuspA ((i : ℕ) + 1) (wtA (κ' i)) (κ' i).n ≃ₗ[core'.Q.c.F] (R'.FW i).WK),
            (∀ (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m), (i : ℕ) = i' → ∀ φ φ', HEq φ' φ →
              CrdOver ι (z.geo.fw.e i φ : (z.R.FW i).WK).1 (e' i' φ' : (R'.FW i').WK).1) →
          ∀ (i : Fin (w'.st Z').toD7.R.m) (σ : (w'.st Z').toD7.what₂.LL →+* ℂ), Formalism.L2.Pj.GoodEmb core'.Q.c (σ.comp (algebraMap core'.Q.c.F (w'.st Z').toD7.what₂.LL)) →
            ∀ hV : core'.V ((i : ℕ) + 1) (σ.comp (algebraMap core'.Q.c.F (w'.st Z').toD7.what₂.LL)) = Wc (w'.st Z').toD7 i,
            (∃ j' : (Fin (R'.nW i) → (w'.st Z').toD7.what₂.LL) →ₛₗ[σ] (R'.HW i σ).H, ∀ f : core'.cuspA ((i : ℕ) + 1) (wtA (κ' i)) (κ' i).n,
              ((R'.HW i σ).e (j' ((e' i f : (R'.FW i).WK) : Fin (R'.nW i) → (w'.st Z').toD7.what₂.LL))) (v₀' i σ) =
                hV ▸ core'.phiJ ((i : ℕ) + 1) (σ.comp (algebraMap core'.Q.c.F (w'.st Z').toD7.what₂.LL)) (wtA (κ' i)) (f : core'.R ((i : ℕ) + 1))) →
            ∀ f : core'.cuspA ((i : ℕ) + 1) (wtA (κ' i)) (κ' i).n,
              ((R'.HW i σ).e ((R'.FW i).j σ ((e' i f : (R'.FW i).WK) : Fin (R'.nW i) → (w'.st Z').toD7.what₂.LL))) (v₀' i σ) =
                hV ▸ core'.phiJ ((i : ℕ) + 1) (σ.comp (algebraMap core'.Q.c.F (w'.st Z').toD7.what₂.LL)) (wtA (κ' i)) (f : core'.R ((i : ℕ) + 1)) := by
  intro B B' f f' T T' w w' hPre Z hX Wt z Z' hX' Wt' core' alg' halg hc _ Xg tr R' hRS _ ι hι κ' hκ v₀' hv e' he i' σ'
  let _ := alg'
  let _ := z.alg
  have hm : (w'.st Z').toD7.R.m = (w.st Z).toD7.R.m := congrArg Ranks.m (geoExt_pre_eq B B' f f' T T' w w' hPre Z Z').1
  let i : Fin (w.st Z).toD7.R.m := ⟨i'.1, hm ▸ i'.2⟩
  have hU := geoExt_rsideW_unpack hRS
  obtain ⟨hMM, hHW, hj⟩ := hU.model i i' rfl hι σ'
  have hs : ∀ (y : z.core.Q.c.F) (y' : core'.Q.c.F), (y' : ℂ) = (y : ℂ) →
      res core' σ' y' = res z.core (σ'.comp ι) y := fun y y' hy =>
    congrArg σ' ((w'.st Z').toD7.what₂.embLL.injective
      ((halg y').trans (hy.trans ((hι _).trans (z.alg_eq y)).symm)))
  have hn : z.R.nW i = R'.nW i' := geoExt_fin_val_eq hm _ _ hU.nW i i' rfl
  obtain ⟨hP, hM, hnn⟩ := hκ i i' rfl
  obtain ⟨c1, c2, c3, c4, c5, c6, c7, c8, c9, -, c10, -⟩ := hc
  exact evAtOne_of_pre B B' f f' T T' w w' hPre Z Z' i i' rfl z.core core' c1 c2 c3 c4 c5 c6 c7 c8 c9 c10
    (z.geo.κ i) (κ' i') hP hM hnn (res z.core (σ'.comp ι)) (res core' σ') hs
    (z.R.MW i (σ'.comp ι)) (R'.MW i' σ') hMM (z.R.HW i (σ'.comp ι)) (R'.HW i' σ') hHW
    (z.geo.v₀ i (σ'.comp ι)) (v₀' i' σ') (hv i i' rfl σ') ι σ' hn
    (fun φ => (z.geo.fw.e i φ : (z.R.FW i).WK).1) (fun φ => (e' i' φ : (R'.FW i').WK).1) (he i i' rfl)
    (fun x => (z.R.FW i).j (σ'.comp ι) x) (fun x => (R'.FW i').j σ' x) hj (z.geo.fw.ev i (σ'.comp ι))
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.UnitTensorPairings.CuspEvalPropertyIndepOfBaseSamePre =====

-- ===== clump member: Development.AutomorphicArithmetic.UnitTensorPairings.CuspFormCoordsIdentificationOfSamePre =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.UnitTensorPairings.CuspFormCoordsIdentificationOfSamePre", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CrdOver\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.BaseChangeEquivCrdOver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PlaceModelImp\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RowsRestWordColumnUnitBaseTupleAlt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx Formalism.IndefR.RecTie
open scoped TensorProduct InnerProductSpace ComplexOrder
attribute [local instance] Formalism.BasicNotions.Host.cmStar Formalism.IndefR.principalLevelFrame.instCMHostI
open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.Mem.R3.Tr
open Formalism.IndefR.FWT Formalism.L2.Pj Formalism.IndefR.Mult GlobalTheory.RealGeo
attribute [local instance high] Submodule.addCommGroup Submodule.module

private theorem wtA_heq_of_pre (B B' : Base) (f : Fr B.toPre) (f' : Fr B'.toPre) (T : TwDat B) (T' : TwDat B')
    (w : ColW B f T) (w' : ColW B' f' T') (hPre : B'.toPre = B.toPre) (Z : w.Lt) (Z' : w'.Lt)
    (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m) (hii : (i : ℕ) = i')
    (k : WeightFamilies.Wt (w.st Z).toD7 ((i : ℕ) + 1)) (k' : WeightFamilies.Wt (w'.st Z').toD7 ((i' : ℕ) + 1))
    (a1 : HEq k'.aP k.aP) (a2 : HEq k'.aM k.aM) :
    HEq (wtA k') (wtA k) := by
  obtain ⟨P'⟩ := B'
  dsimp only at hPre
  subst hPre
  have ei : i = i' := Fin.ext hii
  clear hii
  subst ei
  obtain ⟨aP', aM', _, _, _, _⟩ := k'
  dsimp only at a1 a2
  have e_a1 := eq_of_heq a1; clear a1; subst e_a1
  have e_a2 := eq_of_heq a2; clear a2; subst e_a2
  change HEq (wtA _) (wtA _)
  unfold wtA
  rfl

private theorem exEquiv (LL LL' Ks C : Type) [Field LL] [Field LL'] [Field Ks] [Algebra Ks LL] (alg' : Algebra Ks LL')
    [AddCommGroup C] [Module Ks C]
    (ι : LL →+* LL') (hι : ∀ y, ι (algebraMap Ks LL y) = algebraMap Ks LL' y) (n n' : ℕ)
    (WK : Submodule Ks (Fin n → LL)) (WK' : Submodule Ks (Fin n' → LL'))
    (hmem : ∀ x x', CrdOver ι x x' → (x' ∈ WK' ↔ x ∈ WK))
    (honto : ∀ x' ∈ WK', ∃ x : Fin n → LL, CrdOver ι x x')
    (e : C ≃ₗ[Ks] WK) :
    ∃ e' : C ≃ₗ[Ks] WK', ∀ (φ : C) (φ' : C), HEq φ' φ → CrdOver ι (e φ).1 (e' φ').1 := by
  have hn : n = n' := (honto 0 WK'.zero_mem).choose_spec.1
  refine ⟨e.trans (GeoFW.baseChangeEquiv ι hι hn WK WK' hmem honto), fun φ φ' h => ?_⟩
  cases h
  exact GeoFW.baseChangeEquiv_crdOver ι hι hn WK WK' hmem honto (e φ)

private theorem exEquiv_cusp2
    {R R' : Ranks} (hR : R' = R)
    {host : Host R} {host' : Host R'} (hHost : HEq host' host)
    {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host host.E}
    {H' : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host host'.E}
    {l : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Level H}
    {l' : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Level H'}
    {c : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Coeff l}
    {c' : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Coeff l'}
    {Dw : ℕ → ReciprocityTheory.ChartRestriction.G.Geo.Tor.Datum H}
    {Dw' : ℕ → ReciprocityTheory.ChartRestriction.G.Geo.Tor.Datum H'}
    {Xo : ∀ j, ReciprocityTheory.ChartRestriction.G.Geo.Tor.Moduli (Dw j) l}
    {Xo' : ∀ j, ReciprocityTheory.ChartRestriction.G.Geo.Tor.Moduli (Dw' j) l'}
    {U : ∀ j (σ : c.F →+* ℂ), Formalism.L2.Pj.Unf (Xo j) c σ R.r}
    {U' : ∀ j (σ : c'.F →+* ℂ), Formalism.L2.Pj.Unf (Xo' j) c' σ R'.r}
    {j j' : ℕ} (hj : j = j')
    {a : (host.E →+* ℂ) × ℕ → ℕ} {a' : (host'.E →+* ℂ) × ℕ → ℕ}
    {n n' : ℕ}
    (hH : HEq H' H) (hl : HEq l' l) (hc : HEq c' c) (hDw : HEq Dw' Dw) (hXo : HEq Xo' Xo) (hU : HEq U' U)
    (ha : HEq a' a) (hn : n' = n)
    (LL LL' : Type) [Field LL] [Field LL'] [Algebra c.F LL] (alg' : Algebra c'.F LL')
    (ι : LL →+* LL') (hι : ∀ (y : c.F) (y' : c'.F), (y' : ℂ) = (y : ℂ) → ι (algebraMap c.F LL y) = @algebraMap c'.F LL' _ _ alg' y')
    (m m' : ℕ) (WK : Submodule c.F (Fin m → LL)) (WK' : Submodule c'.F (Fin m' → LL'))
    (hmem : ∀ x x', CrdOver ι x x' → (x' ∈ WK' ↔ x ∈ WK))
    (honto : ∀ x' ∈ WK', ∃ x : Fin m → LL, CrdOver ι x x')
    (e : Formalism.L2.Pj.cusp (Xo j) c (U j) a n ≃ₗ[c.F] WK) :
    ∃ e' : Formalism.L2.Pj.cusp (Xo' j') c' (U' j') a' n' ≃ₗ[c'.F] WK',
      ∀ φ φ', HEq φ' φ → CrdOver ι (e φ).1 (e' φ').1 := by
  subst hR
  cases hHost
  subst hj
  cases hH
  cases hl
  cases hc
  cases hDw
  cases hXo
  cases hU
  cases ha
  subst hn
  exact exEquiv LL LL' c'.F (Formalism.L2.Pj.cusp (Xo' j) c' (U' j) a' n') alg' ι (fun y => hι y y rfl) m m' WK WK' hmem honto e

theorem UpperTheory.cuspFormCoords_identification_of_same_pre :
    ∀ (B B' : Base) (f : Fr B.toPre) (f' : Fr B'.toPre) (T : TwDat B) (T' : TwDat B') (w : ColW B f T) (w' : ColW B' f' T'),
        B'.toPre = B.toPre → ∀ (Z : w.Lt) (hX : B.fields.Ok) (Wt : Set B.places.Pl) (z : Dat (w.st Z) w.I hX T Wt) (Z' : w'.Lt) (hX' : B'.fields.Ok)
        (Wt' : Set B'.places.Pl) (core' : Formalism.L2.Pj.CoreJ (w'.st Z').toD7) (alg' : Algebra core'.Q.c.F (w'.st Z').toD7.what₂.LL),
        (∀ y : core'.Q.c.F, B'.embLL (@algebraMap core'.Q.c.F (w'.st Z').toD7.what₂.LL _ _ alg' y) = (y : ℂ)) →
        (HEq core'.Q.H z.core.Q.H ∧ HEq core'.Q.l z.core.Q.l ∧ HEq core'.Q.c z.core.Q.c ∧ HEq core'.Q.Dw z.core.Q.Dw ∧
          HEq core'.Q.Xo z.core.Q.Xo ∧ HEq core'.U z.core.U ∧ HEq core'.V z.core.V ∧ HEq core'.dict z.core.dict ∧
          HEq core'.mu z.core.mu ∧ HEq core'.Kf z.core.Kf ∧ HEq core'.cE z.core.cE ∧ HEq core'.chiW z.core.chiW ∧
          HEq core'.x₀ z.core.x₀ ∧ HEq core'.iota z.core.iota) →
        Formalism.L2.Pj.LawsCore core'.toCore →
        letI := alg'; ∀ (Xg : Finset (Gc B' w'.px → B'.LL)) (tr : TrI B' w'.px)
          (R' : RealDat3 (w'.st Z').toD7 (famR (w'.st Z') w'.I hX' (usedOf w'.I T' Wt') Xg tr) core'.Q.c.F),
          RSideW z Wt' R' → HEq R'.toLevCh.mu0 z.R.toLevCh.mu0 →
          ∀ ι : (w.st Z).toD7.what₂.LL →+* (w'.st Z').toD7.what₂.LL, (∀ y, (w'.st Z').toD7.what₂.embLL (ι y) = (w.st Z).toD7.what₂.embLL y) →
          ∀ (κ' : ∀ i : Fin (w'.st Z').toD7.R.m, WeightFamilies.Wt (w'.st Z').toD7 ((i : ℕ) + 1)),
            (∀ (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m), (i : ℕ) = i' →
              HEq (κ' i').aP (z.geo.κ i).aP ∧ HEq (κ' i').aM (z.geo.κ i).aM ∧ (κ' i').n = (z.geo.κ i).n) →
          ∃ (e' : ∀ i : Fin (w'.st Z').toD7.R.m, core'.cuspA ((i : ℕ) + 1) (wtA (κ' i)) (κ' i).n ≃ₗ[core'.Q.c.F] (R'.FW i).WK),
            (∀ (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m), (i : ℕ) = i' → ∀ φ φ', HEq φ' φ →
              CrdOver ι (z.geo.fw.e i φ : (z.R.FW i).WK).1 (e' i' φ' : (R'.FW i').WK).1) := by
  intro B B' f f' T T' w w' hPre Z hX Wt z Z' hX' Wt' core' alg' halg hcore hlaws Xg tr R' hR hmu ι hι κ' hκ
  have ⟨hRR, hHost⟩ := geoExt_pre_eq B B' f f' T T' w w' hPre Z Z'
  have h0 := fun i i' hii => (geoExt_rsideW_unpack hR).wk i i' hii hι
  obtain ⟨c1, c2, c3, c4, c5, c6, -⟩ := hcore
  clear hR hmu hlaws
  have halg2 : ∀ (y : z.core.Q.c.F) (y' : core'.Q.c.F), (y' : ℂ) = (y : ℂ) →
      ι (@algebraMap z.core.Q.c.F (w.st Z).toD7.what₂.LL _ _ z.alg y) =
      @algebraMap core'.Q.c.F (w'.st Z').toD7.what₂.LL _ _ alg' y' := fun y y' hy =>
    (w'.st Z').toD7.what₂.embLL.injective ((hι _).trans ((z.alg_eq y).trans (hy.symm.trans (halg y').symm)))
  have key : ∀ (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m), (i : ℕ) = i' →
      ∃ e' : core'.cuspA ((i' : ℕ) + 1) (wtA (κ' i')) (κ' i').n ≃ₗ[core'.Q.c.F] (R'.FW i').WK,
        ∀ φ φ', HEq φ' φ → CrdOver ι (z.geo.fw.e i φ : (z.R.FW i).WK).1 (e' φ' : (R'.FW i').WK).1 := by
    intro i i' hii
    let _ : Algebra z.core.Q.c.F (w.st Z).toD7.what₂.LL := z.alg
    exact exEquiv_cusp2 hRR hHost (congrArg (· + 1) hii) c1 c2 c3 c4 c5 c6
      (wtA_heq_of_pre B B' f f' T T' w w' hPre Z Z' i i' hii (z.geo.κ i) (κ' i') (hκ i i' hii).1 (hκ i i' hii).2.1)
      (hκ i i' hii).2.2 (w.st Z).toD7.what₂.LL (w'.st Z').toD7.what₂.LL alg' ι halg2
      (z.R.nW i) (R'.nW i') (z.R.FW i).WK (R'.FW i').WK (h0 i i' hii).1 (h0 i i' hii).2 (z.geo.fw.e i)
  have hm : (w'.st Z').toD7.R.m = (w.st Z).toD7.R.m := congrArg Ranks.m hRR
  refine ⟨fun i' => (key ⟨i'.1, hm ▸ i'.2⟩ i' rfl).choose, fun i i' hii => ?_⟩
  have hi : (⟨i'.1, hm ▸ i'.2⟩ : Fin (w.st Z).toD7.R.m) = i := Fin.ext hii.symm
  subst hi
  exact (key _ i' rfl).choose_spec
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.UnitTensorPairings.CuspFormCoordsIdentificationOfSamePre =====

-- ===== clump member: Development.AutomorphicArithmetic.UnitTensorPairings.ExtVecPairingIndepOfBaseSamePre =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.UnitTensorPairings.ExtVecPairingIndepOfBaseSamePre", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CrdOver\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ModelSame\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PlaceModelImp\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RowsRestWordColumnUnitBaseTupleAlt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx Formalism.IndefR.RecTie
open scoped TensorProduct InnerProductSpace ComplexOrder
attribute [local instance] Formalism.BasicNotions.Host.cmStar Formalism.IndefR.principalLevelFrame.instCMHostI
open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.Mem.R3.Tr
open Formalism.IndefR.FWT Formalism.L2.Pj Formalism.IndefR.Mult GlobalTheory.RealGeo


noncomputable section

private def UpperTheory.HasUnitPureTensorPairing {D : D7} {W : HSp D} {S : D.what₂.Tau → SPar} (M : DSModel W S) {V : HSp D} (c : CoefA V)
    {P : Type} [AddCommGroup P] [Module ℂ P] (io : LowT M →ₗ[ℂ] c.W →ₗ[ℂ] P) (Δ : P) (v : M.Vec) : Prop :=
  ∃ (u : ∀ ρ, lowT M ρ) (w : c.W), (∀ ρ, (u ρ : M.sm ρ) = v ρ) ∧ ‖w‖ = 1 ∧ io (PiTensorProduct.tprod ℂ u) w = Δ

private theorem UpperTheory.isExtVec_of_pre
    (B B' : Base) (f : Fr B.toPre) (f' : Fr B'.toPre) (T : TwDat B) (T' : TwDat B') (w : ColW B f T) (w' : ColW B' f' T')
    (hPre : B'.toPre = B.toPre) (Z : w.Lt) (Z' : w'.Lt)
    (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m) (hii : (i : ℕ) = i')
    {S : (w.st Z).toD7.what₂.Tau → SPar} {S' : (w'.st Z').toD7.what₂.Tau → SPar}
    (M : DSModel (Wc (w.st Z).toD7 i) S) (M' : DSModel (Wc (w'.st Z').toD7 i') S')
    (hMM : GeoTies.ModelSame M M') (v : M.Vec) (v' : M'.Vec) (hv : HEq v' v) :
    IsExtVec M v → IsExtVec M' v' := by
  obtain ⟨P'⟩ := B'
  dsimp only at hPre
  subst hPre
  have ei : i = i' := Fin.ext hii
  clear hii
  subst ei
  obtain @⟨X', nacg', ips', σ'', lam', ε', fr', _, _, _, _⟩ := M'
  obtain ⟨m1, m2, m3, m4, m5, m6, m7⟩ := hMM
  have e_m1 : X' = M.H := eq_of_heq m1; subst e_m1
  have e_m2 : nacg' = M.nacg := eq_of_heq m2; subst e_m2
  have e_m3 : ips' = M.ips := eq_of_heq m3; subst e_m3
  have e_m4 : σ'' = M.σ := eq_of_heq m4; subst e_m4
  have e_m5 : lam' = M.lam := eq_of_heq m5; subst e_m5
  have e_m6 : ε' = M.ε := eq_of_heq m6; subst e_m6
  have e_m7 : fr' = M.fr := eq_of_heq m7; subst e_m7
  have hv' : v' = v := eq_of_heq hv
  subst hv'
  exact id

private theorem UpperTheory.hasUnitPureTensorPairing_of_pre
    (B B' : Base) (f : Fr B.toPre) (f' : Fr B'.toPre) (T : TwDat B) (T' : TwDat B') (w : ColW B f T) (w' : ColW B' f' T')
    (hPre : B'.toPre = B.toPre) (Z : w.Lt) (Z' : w'.Lt)
    (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m) (hii : (i : ℕ) = i')
    {S : (w.st Z).toD7.what₂.Tau → SPar} {S' : (w'.st Z').toD7.what₂.Tau → SPar}
    (M : DSModel (Wc (w.st Z).toD7 i) S) (M' : DSModel (Wc (w'.st Z').toD7 i') S')
    (hMM : GeoTies.ModelSame M M') (v : M.Vec) (v' : M'.Vec) (hv : HEq v' v)
    (c : CoefA (Vc (w.st Z).toD7 i)) (c' : CoefA (Vc (w'.st Z').toD7 i'))
    (h1 : HEq c'.W c.W) (h2 : HEq c'.nW c.nW) (h3 : HEq c'.iW c.iW)
    (io : LowT M →ₗ[ℂ] c.W →ₗ[ℂ] PolF (w.st Z).toD7 (Wc (w.st Z).toD7 i).rank (Vc (w.st Z).toD7 i).rank)
    (io' : LowT M' →ₗ[ℂ] c'.W →ₗ[ℂ] PolF (w'.st Z').toD7 (Wc (w'.st Z').toD7 i').rank (Vc (w'.st Z').toD7 i').rank)
    (hio : HEq io' io)
    (Δ : PolF (w.st Z).toD7 (Wc (w.st Z).toD7 i).rank (Vc (w.st Z).toD7 i).rank)
    (Δ' : PolF (w'.st Z').toD7 (Wc (w'.st Z').toD7 i').rank (Vc (w'.st Z').toD7 i').rank)
    (hΔ : HEq Δ' Δ) :
    ((∃ u, IsExtVec M u ∧ UpperTheory.HasUnitPureTensorPairing M c io Δ u) → UpperTheory.HasUnitPureTensorPairing M c io Δ v) →
      ((∃ u, IsExtVec M' u ∧ UpperTheory.HasUnitPureTensorPairing M' c' io' Δ' u) → UpperTheory.HasUnitPureTensorPairing M' c' io' Δ' v') := by
  obtain ⟨P'⟩ := B'
  dsimp only at hPre
  subst hPre
  have ei : i = i' := Fin.ext hii
  clear hii
  subst ei
  obtain @⟨X', nacg', ips', σ'', lam', ε', fr', _, _, _, _⟩ := M'
  obtain ⟨m1, m2, m3, m4, m5, m6, m7⟩ := hMM
  have e_m1 : X' = M.H := eq_of_heq m1; subst e_m1
  have e_m2 : nacg' = M.nacg := eq_of_heq m2; subst e_m2
  have e_m3 : ips' = M.ips := eq_of_heq m3; subst e_m3
  have e_m4 : σ'' = M.σ := eq_of_heq m4; subst e_m4
  have e_m5 : lam' = M.lam := eq_of_heq m5; subst e_m5
  have e_m6 : ε' = M.ε := eq_of_heq m6; subst e_m6
  have e_m7 : fr' = M.fr := eq_of_heq m7; subst e_m7
  obtain @⟨Y', nW', iW', fW', ρ'⟩ := c'
  have e_h1 : Y' = c.W := eq_of_heq h1; subst e_h1
  have e_h2 : nW' = c.nW := eq_of_heq h2; subst e_h2
  have e_h3 : iW' = c.iW := eq_of_heq h3; subst e_h3
  have hv' : v' = v := eq_of_heq hv
  subst hv'
  have hio' : io' = io := eq_of_heq hio
  subst hio'
  have hΔ' : Δ' = Δ := eq_of_heq hΔ
  subst hΔ'
  exact id

private theorem delta_heq_of_pre
    (B B' : Base) (f : Fr B.toPre) (f' : Fr B'.toPre) (T : TwDat B) (T' : TwDat B') (w : ColW B f T) (w' : ColW B' f' T')
    (hPre : B'.toPre = B.toPre) (Z : w.Lt) (Z' : w'.Lt)
    (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m) (hii : (i : ℕ) = i') :
    HEq (RealDat.Delta (D := (w'.st Z').toD7) i') (RealDat.Delta (D := (w.st Z).toD7) i) := by
  obtain ⟨P'⟩ := B'
  dsimp only at hPre
  subst hPre
  have ei : i = i' := Fin.ext hii
  subst ei
  exact HEq.rfl

end

theorem UpperTheory.extVecPairing_indep_of_base_same_pre :
    ∀ (B B' : Base) (f : Fr B.toPre) (f' : Fr B'.toPre) (T : TwDat B) (T' : TwDat B') (w : ColW B f T) (w' : ColW B' f' T'),
        B'.toPre = B.toPre → ∀ (Z : w.Lt) (hX : B.fields.Ok) (Wt : Set B.places.Pl) (z : Dat (w.st Z) w.I hX T Wt) (Z' : w'.Lt) (hX' : B'.fields.Ok)
        (Wt' : Set B'.places.Pl) (core' : Formalism.L2.Pj.CoreJ (w'.st Z').toD7) (alg' : Algebra core'.Q.c.F (w'.st Z').toD7.what₂.LL),
        (∀ y : core'.Q.c.F, B'.embLL (@algebraMap core'.Q.c.F (w'.st Z').toD7.what₂.LL _ _ alg' y) = (y : ℂ)) →
        (HEq core'.Q.H z.core.Q.H ∧ HEq core'.Q.l z.core.Q.l ∧ HEq core'.Q.c z.core.Q.c ∧ HEq core'.Q.Dw z.core.Q.Dw ∧
          HEq core'.Q.Xo z.core.Q.Xo ∧ HEq core'.U z.core.U ∧ HEq core'.V z.core.V ∧ HEq core'.dict z.core.dict ∧
          HEq core'.mu z.core.mu ∧ HEq core'.Kf z.core.Kf ∧ HEq core'.cE z.core.cE ∧ HEq core'.chiW z.core.chiW ∧
          HEq core'.x₀ z.core.x₀ ∧ HEq core'.iota z.core.iota) →
        Formalism.L2.Pj.LawsCore core'.toCore →
        letI := alg'; ∀ (Xg : Finset (Gc B' w'.px → B'.LL)) (tr : TrI B' w'.px)
          (R' : RealDat3 (w'.st Z').toD7 (famR (w'.st Z') w'.I hX' (usedOf w'.I T' Wt') Xg tr) core'.Q.c.F),
          RSideW z Wt' R' → HEq R'.toLevCh.mu0 z.R.toLevCh.mu0 →
          ∀ ι : (w.st Z).toD7.what₂.LL →+* (w'.st Z').toD7.what₂.LL, (∀ y, (w'.st Z').toD7.what₂.embLL (ι y) = (w.st Z).toD7.what₂.embLL y) →
          ∀ (v₀' : ∀ (i : Fin (w'.st Z').toD7.R.m) (σ : (w'.st Z').toD7.what₂.LL →+* ℂ), (R'.MW i σ).Vec),
            (∀ (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m), (i : ℕ) = i' → ∀ σ' : (w'.st Z').toD7.what₂.LL →+* ℂ,
              HEq (v₀' i' σ') (z.geo.v₀ i (σ'.comp ι))) →
          ∀ (i : Fin (w'.st Z').toD7.R.m) (σ : (w'.st Z').toD7.what₂.LL →+* ℂ), Formalism.IndefR.FWT.IsChosenExtremalVector R'.toRealDat i σ (v₀' i σ) := by
  intro B B' f f' T T' w w' hPre Z hX Wt z Z' hX' Wt' core' alg' halg hc _ Xg tr R' hRS _ ι hι v₀' hv i' σ'
  let _ := alg'
  let _ := z.alg
  have hm : (w'.st Z').toD7.R.m = (w.st Z).toD7.R.m := congrArg Ranks.m (geoExt_pre_eq B B' f f' T T' w w' hPre Z Z').1
  let i : Fin (w.st Z).toD7.R.m := ⟨i'.1, hm ▸ i'.2⟩
  have hb := z.geo.fw.hv₀ i (σ'.comp ι)
  have hU := geoExt_rsideW_unpack hRS
  have hMM : GeoTies.ModelSame (z.R.MW i (σ'.comp ι)) (R'.MW i' σ') :=
    (hU.model i i' rfl hι σ').1
  have hs' : sg0 (w'.st Z').toD7 (famR (w'.st Z') w'.I hX' (usedOf w'.I T' Wt') Xg tr).A = (w'.st Z').toD7.what₂.embLL :=
    sgAt_mk _ R'.toRealDat.hv0
  have hs : sg0 (w.st Z).toD7 (famR (w.st Z) w.I hX (usedOf w.I T Wt) z.Xg z.tr).A = (w.st Z).toD7.what₂.embLL :=
    sgAt_mk _ z.R.toRealDat.hv0
  refine ⟨UpperTheory.isExtVec_of_pre B B' f f' T T' w w' hPre Z Z' i i' rfl
      (z.R.MW i (σ'.comp ι)) (R'.MW i' σ') hMM (z.geo.v₀ i (σ'.comp ι)) (v₀' i' σ') (hv i i' rfl σ') hb.1,
    fun h => ?_⟩
  have h0 : σ'.comp ι = sg0 (w.st Z).toD7 (famR (w.st Z) w.I hX (usedOf w.I T Wt) z.Xg z.tr).A := by
    rw [h, hs', hs]
    exact RingHom.ext hι
  have hb2 := hb.2 h0
  have hMM0 : GeoTies.ModelSame (z.R.MW i (sg0 (w.st Z).toD7 (famR (w.st Z) w.I hX (usedOf w.I T Wt) z.Xg z.tr).A))
      (R'.MW i' (sg0 (w'.st Z').toD7 (famR (w'.st Z') w'.I hX' (usedOf w'.I T' Wt') Xg tr).A)) := by
    rw [← h, ← h0]; exact hMM
  have hv0 : HEq (h ▸ v₀' i' σ') (h0 ▸ z.geo.v₀ i (σ'.comp ι)) :=
    (geoExt_heq_eqRec (fun s => (R'.MW i' s).Vec) h (v₀' i' σ')).trans
      ((hv i i' rfl σ').trans (geoExt_heq_eqRec (fun s => (z.R.MW i s).Vec) h0 (z.geo.v₀ i (σ'.comp ι))).symm)
  obtain ⟨hc1, hc3, hc4, hio⟩ := hU.cV i i' rfl
  exact UpperTheory.hasUnitPureTensorPairing_of_pre B B' f f' T T' w w' hPre Z Z' i i' rfl
    (z.R.MW i _) (R'.MW i' _) hMM0 (h0 ▸ z.geo.v₀ i (σ'.comp ι)) (h ▸ v₀' i' σ') hv0
    (z.R.cV i) (R'.cV i') hc1 hc3 hc4 (z.R.ioP i) (R'.ioP i') hio
    (RealDat.Delta i) (RealDat.Delta i') (delta_heq_of_pre B B' f f' T T' w w' hPre Z Z' i i' rfl) hb2
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.UnitTensorPairings.ExtVecPairingIndepOfBaseSamePre =====

-- ===== clump member: Development.AutomorphicArithmetic.UnitTensorPairings.LocalCuspNormsIndepOfBaseSamePre =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.UnitTensorPairings.LocalCuspNormsIndepOfBaseSamePre", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CrdOver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PlaceModelImp\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RowsRestWordColumnUnitBaseTupleAlt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx Formalism.IndefR.RecTie
open scoped TensorProduct InnerProductSpace ComplexOrder
attribute [local instance] Formalism.BasicNotions.Host.cmStar Formalism.IndefR.principalLevelFrame.instCMHostI
open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.Mem.R3.Tr
open Formalism.IndefR.FWT Formalism.L2.Pj Formalism.IndefR.Mult GlobalTheory.RealGeo

attribute [local instance high] Submodule.addCommGroup Submodule.module

private def UpperTheory.LocalNormsMatchCuspForms {D : D7} (T : CoreJ D) (j : ℕ) (w : WeightFamilies.Wt D j)
    (Pt : HeightOneSpectrum (𝓞 T.Q.c.F) → Type) {W : Type} (nrm : ∀ la, Pt la → W → ℝ)
    (e : T.cuspA j (wtA w) w.n → W) (pt : ∀ la, Pt la → T.PtM j la) : Prop :=
  ∀ la (y : Pt la) (f : T.cuspA j (wtA w) w.n), nrm la y (e f) = T.nrmM j la (pt la y) (f : T.R j)

private theorem UpperTheory.localNorms_of_pre
    (B B' : Base) (f : Fr B.toPre) (f' : Fr B'.toPre) (T : TwDat B) (T' : TwDat B') (w : ColW B f T) (w' : ColW B' f' T')
    (hPre : B'.toPre = B.toPre) (Z : w.Lt) (Z' : w'.Lt)
    (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m) (hii : (i : ℕ) = i')
    (core : CoreJ (w.st Z).toD7) (core' : CoreJ (w'.st Z').toD7)
    (h1 : HEq core'.Q.H core.Q.H) (h2 : HEq core'.Q.l core.Q.l) (h3 : HEq core'.Q.c core.Q.c)
    (h4 : HEq core'.Q.Dw core.Q.Dw) (h5 : HEq core'.Q.Xo core.Q.Xo) (h6 : HEq core'.U core.U)
    (κ : WeightFamilies.Wt (w.st Z).toD7 ((i : ℕ) + 1)) (κ' : WeightFamilies.Wt (w'.st Z').toD7 ((i' : ℕ) + 1))
    (hP : HEq κ'.aP κ.aP) (hM : HEq κ'.aM κ.aM) (hn : κ'.n = κ.n)
    (Pt : HeightOneSpectrum (𝓞 core.Q.c.F) → Type) (Pt' : HeightOneSpectrum (𝓞 core'.Q.c.F) → Type) (hPt : HEq Pt' Pt)
    {W W' : Type} (Rel : W → W' → Prop) (nrm : ∀ la, Pt la → W → ℝ) (nrm' : ∀ la, Pt' la → W' → ℝ)
    (hnrm : ∀ la' la, HEq la' la → ∀ y' y, HEq y' y → ∀ φ' φ, Rel φ φ' → nrm' la' y' φ' = nrm la y φ)
    (e : core.cuspA ((i : ℕ) + 1) (wtA κ) κ.n → W) (e' : core'.cuspA ((i' : ℕ) + 1) (wtA κ') κ'.n → W')
    (he : ∀ φ φ', HEq φ' φ → Rel (e φ) (e' φ'))
    (pt : ∀ la, Pt la → core.PtM ((i : ℕ) + 1) la) (pt' : ∀ la, Pt' la → core'.PtM ((i' : ℕ) + 1) la)
    (hpt : ∀ la la', HEq la' la → ∀ y' y, HEq y' y → HEq (pt' la' y') (pt la y)) :
    UpperTheory.LocalNormsMatchCuspForms core ((i : ℕ) + 1) κ Pt nrm e pt →
    UpperTheory.LocalNormsMatchCuspForms core' ((i' : ℕ) + 1) κ' Pt' nrm' e' pt' := by
  obtain ⟨P'⟩ := B'
  dsimp only at hPre
  subst hPre
  have ei : i = i' := Fin.ext hii
  clear hii
  subst ei
  obtain ⟨⟨⟨H, l, cc, Dw, Xo, eO⟩, U, V, dict, mu, Kf, pb⟩, cE, chiW, x₀, iota⟩ := core
  obtain ⟨⟨⟨H', l', cc', Dw', Xo', eO'⟩, U', V', dict', mu', Kf', pb'⟩, cE', chiW', x₀', iota'⟩ := core'
  have e_h1 : H' = H := eq_of_heq h1; subst e_h1
  have e_h2 : l' = l := eq_of_heq h2; subst e_h2
  have e_h3 : cc' = cc := eq_of_heq h3; subst e_h3
  have e_h4 : Dw' = Dw := eq_of_heq h4; subst e_h4
  have e_h5 : Xo' = Xo := eq_of_heq h5; subst e_h5
  have e_h6 : U' = U := eq_of_heq h6; subst e_h6
  obtain ⟨aP, aM, _, _, m, _⟩ := κ
  obtain ⟨aP', aM', _, _, m', _⟩ := κ'
  have e_hP : aP' = aP := eq_of_heq hP; subst e_hP
  have e_hM : aM' = aM := eq_of_heq hM; subst e_hM
  dsimp only at hn
  subst hn
  have e_hPt : Pt' = Pt := eq_of_heq hPt; subst e_hPt
  intro h la y f
  have k1 := hnrm la la HEq.rfl y y HEq.rfl _ _ (he f f HEq.rfl)
  have k3 : pt' la y = pt la y := eq_of_heq (hpt la la HEq.rfl y y HEq.rfl)
  rw [k1, k3]
  exact h la y f

theorem UpperTheory.localCuspNorms_indep_of_base_same_pre :
    ∀ (B B' : Base) (f : Fr B.toPre) (f' : Fr B'.toPre) (T : TwDat B) (T' : TwDat B') (w : ColW B f T) (w' : ColW B' f' T'),
        B'.toPre = B.toPre → ∀ (Z : w.Lt) (hX : B.fields.Ok) (Wt : Set B.places.Pl) (z : Dat (w.st Z) w.I hX T Wt) (Z' : w'.Lt) (hX' : B'.fields.Ok)
        (Wt' : Set B'.places.Pl) (core' : Formalism.L2.Pj.CoreJ (w'.st Z').toD7) (alg' : Algebra core'.Q.c.F (w'.st Z').toD7.what₂.LL),
        (∀ y : core'.Q.c.F, B'.embLL (@algebraMap core'.Q.c.F (w'.st Z').toD7.what₂.LL _ _ alg' y) = (y : ℂ)) →
        (HEq core'.Q.H z.core.Q.H ∧ HEq core'.Q.l z.core.Q.l ∧ HEq core'.Q.c z.core.Q.c ∧ HEq core'.Q.Dw z.core.Q.Dw ∧
          HEq core'.Q.Xo z.core.Q.Xo ∧ HEq core'.U z.core.U ∧ HEq core'.V z.core.V ∧ HEq core'.dict z.core.dict ∧
          HEq core'.mu z.core.mu ∧ HEq core'.Kf z.core.Kf ∧ HEq core'.cE z.core.cE ∧ HEq core'.chiW z.core.chiW ∧
          HEq core'.x₀ z.core.x₀ ∧ HEq core'.iota z.core.iota) →
        Formalism.L2.Pj.LawsCore core'.toCore →
        letI := alg'; ∀ (Xg : Finset (Gc B' w'.px → B'.LL)) (tr : TrI B' w'.px)
          (R' : RealDat3 (w'.st Z').toD7 (famR (w'.st Z') w'.I hX' (usedOf w'.I T' Wt') Xg tr) core'.Q.c.F),
          RSideW z Wt' R' → HEq R'.toLevCh.mu0 z.R.toLevCh.mu0 →
          ∀ ι : (w.st Z).toD7.what₂.LL →+* (w'.st Z').toD7.what₂.LL, (∀ y, (w'.st Z').toD7.what₂.embLL (ι y) = (w.st Z).toD7.what₂.embLL y) →
          ∀ (κ' : ∀ i : Fin (w'.st Z').toD7.R.m, WeightFamilies.Wt (w'.st Z').toD7 ((i : ℕ) + 1)),
            (∀ (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m), (i : ℕ) = i' →
              HEq (κ' i').aP (z.geo.κ i).aP ∧ HEq (κ' i').aM (z.geo.κ i).aM ∧ (κ' i').n = (z.geo.κ i).n) →
          ∀ (e' : ∀ i : Fin (w'.st Z').toD7.R.m, core'.cuspA ((i : ℕ) + 1) (wtA (κ' i)) (κ' i).n ≃ₗ[core'.Q.c.F] (R'.FW i).WK),
            (∀ (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m), (i : ℕ) = i' → ∀ φ φ', HEq φ' φ →
              CrdOver ι (z.geo.fw.e i φ : (z.R.FW i).WK).1 (e' i' φ' : (R'.FW i').WK).1) →
          ∀ (pt' : ∀ (i : Fin (w'.st Z').toD7.R.m) (la : HeightOneSpectrum (𝓞 core'.Q.c.F)), (R'.FW i).Pt la ≃ core'.PtM ((i : ℕ) + 1) la),
            (∀ (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m), (i : ℕ) = i' → ∀ la la', HEq la' la → ∀ y' y, HEq y' y →
              HEq (pt' i' la' y') (z.geo.fw.pt i la y)) →
          ∀ (i : Fin (w'.st Z').toD7.R.m) (la : HeightOneSpectrum (𝓞 core'.Q.c.F)) (y : (R'.FW i).Pt la) (f : core'.cuspA ((i : ℕ) + 1) (wtA (κ' i)) (κ' i).n),
            (R'.FW i).nrm la y (e' i f) = core'.nrmM ((i : ℕ) + 1) la (pt' i la y) (f : core'.R ((i : ℕ) + 1)) := by
  intro B B' f f' T T' w w' hPre Z hX Wt z Z' hX' Wt' core' alg' halg hc _ Xg tr R' hRS _ ι hι κ' hκ e' he pt' hpt i'
  let _ := alg'
  let _ := z.alg
  have hm : (w'.st Z').toD7.R.m = (w.st Z).toD7.R.m := congrArg Ranks.m (geoExt_pre_eq B B' f f' T T' w w' hPre Z Z').1
  let i : Fin (w.st Z).toD7.R.m := ⟨i'.1, hm ▸ i'.2⟩
  have hcl := (geoExt_rsideW_unpack hRS).pt_nrm i i' rfl hι
  obtain ⟨hP, hM, hnn⟩ := hκ i i' rfl
  obtain ⟨c1, c2, c3, c4, c5, c6, -⟩ := hc
  exact UpperTheory.localNorms_of_pre B B' f f' T T' w w' hPre Z Z' i i' rfl z.core core' c1 c2 c3 c4 c5 c6
    (z.geo.κ i) (κ' i') hP hM hnn (z.R.FW i).Pt (R'.FW i').Pt hcl.1
    (W := (z.R.FW i).WK) (W' := (R'.FW i').WK) (fun φ φ' => CrdOver ι φ.1 φ'.1) (z.R.FW i).nrm (R'.FW i').nrm hcl.2
    (fun φ => z.geo.fw.e i φ) (fun φ => e' i' φ) (he i i' rfl)
    (fun la y => z.geo.fw.pt i la y) (fun la y => pt' i' la y) (hpt i i' rfl) (z.geo.fw.nrm_eq i)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.UnitTensorPairings.LocalCuspNormsIndepOfBaseSamePre =====

-- ===== clump member: Development.AutomorphicArithmetic.UnitTensorPairings.PointEquivFamilyTransportOfSamePre =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.UnitTensorPairings.PointEquivFamilyTransportOfSamePre", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CrdOver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PlaceModelImp\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RowsRestWordColumnUnitBaseTupleAlt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx Formalism.IndefR.RecTie
open scoped TensorProduct InnerProductSpace ComplexOrder
attribute [local instance] Formalism.BasicNotions.Host.cmStar Formalism.IndefR.principalLevelFrame.instCMHostI
open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.Mem.R3.Tr
open Formalism.IndefR.FWT Formalism.L2.Pj Formalism.IndefR.Mult GlobalTheory.RealGeo


private theorem ex_equiv_moved {m : ℕ} {L : Type} (P P' Q : Fin m → L → Type) (h : ∀ i, HEq (P' i) (P i))
    (e : ∀ i la, P i la ≃ Q i la) :
    ∃ e' : ∀ i la, P' i la ≃ Q i la, ∀ (i i' : Fin m), (i : ℕ) = i' → ∀ la la', HEq la' la → ∀ y' y, HEq y' y →
      HEq (e' i' la' y') (e i la y) := by
  obtain rfl : P' = P := funext fun i => eq_of_heq (h i)
  refine ⟨e, fun i i' hi la la' hla y' y hy => ?_⟩
  obtain rfl : i = i' := Fin.ext hi
  cases hla
  cases hy
  rfl

private theorem ptEquiv_of_pre
    (B B' : Base) (f : Fr B.toPre) (f' : Fr B'.toPre) (T : TwDat B) (T' : TwDat B') (w : ColW B f T) (w' : ColW B' f' T')
    (hPre : B'.toPre = B.toPre) (Z : w.Lt) (Z' : w'.Lt)
    (core : CoreJ (w.st Z).toD7) (core' : CoreJ (w'.st Z').toD7)
    (h1 : HEq core'.Q.H core.Q.H) (h2 : HEq core'.Q.l core.Q.l) (h3 : HEq core'.Q.c core.Q.c)
    (h4 : HEq core'.Q.Dw core.Q.Dw) (h5 : HEq core'.Q.Xo core.Q.Xo)
    (P : Fin (w.st Z).toD7.R.m → HeightOneSpectrum (𝓞 core.Q.c.F) → Type)
    (P' : Fin (w'.st Z').toD7.R.m → HeightOneSpectrum (𝓞 core'.Q.c.F) → Type)
    (hP : ∀ (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m), (i : ℕ) = i' → HEq (P' i') (P i))
    (e : ∀ i la, P i la ≃ core.PtM ((i : ℕ) + 1) la) :
    ∃ pt' : ∀ (i : Fin (w'.st Z').toD7.R.m) (la : HeightOneSpectrum (𝓞 core'.Q.c.F)), P' i la ≃ core'.PtM ((i : ℕ) + 1) la,
      ∀ (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m), (i : ℕ) = i' → ∀ la la', HEq la' la → ∀ y' y, HEq y' y →
        HEq (pt' i' la' y') (e i la y) := by
  obtain ⟨Q'⟩ := B'
  dsimp only at hPre
  subst hPre
  obtain ⟨⟨⟨H, l, c, Dw, Xo, eO⟩, U, V, dict, mu, Kf, pb⟩, cE, chiW, x₀, iota⟩ := core'
  dsimp only at h1 h2 h3 h4 h5
  have e_h1 := eq_of_heq h1; clear h1; subst e_h1
  have e_h2 := eq_of_heq h2; clear h2; subst e_h2
  have e_h3 := eq_of_heq h3; clear h3; subst e_h3
  have e_h4 := eq_of_heq h4; clear h4; subst e_h4
  have e_h5 := eq_of_heq h5; clear h5; subst e_h5
  exact ex_equiv_moved P P' (fun i la => core.PtM ((i : ℕ) + 1) la) (fun i => hP i i rfl) e

theorem UpperTheory.pointEquiv_family_transport_of_same_pre :
    ∀ (B B' : Base) (f : Fr B.toPre) (f' : Fr B'.toPre) (T : TwDat B) (T' : TwDat B') (w : ColW B f T) (w' : ColW B' f' T'),
        B'.toPre = B.toPre → ∀ (Z : w.Lt) (hX : B.fields.Ok) (Wt : Set B.places.Pl) (z : Dat (w.st Z) w.I hX T Wt) (Z' : w'.Lt) (hX' : B'.fields.Ok)
        (Wt' : Set B'.places.Pl) (core' : Formalism.L2.Pj.CoreJ (w'.st Z').toD7) (alg' : Algebra core'.Q.c.F (w'.st Z').toD7.what₂.LL),
        (∀ y : core'.Q.c.F, B'.embLL (@algebraMap core'.Q.c.F (w'.st Z').toD7.what₂.LL _ _ alg' y) = (y : ℂ)) →
        (HEq core'.Q.H z.core.Q.H ∧ HEq core'.Q.l z.core.Q.l ∧ HEq core'.Q.c z.core.Q.c ∧ HEq core'.Q.Dw z.core.Q.Dw ∧
          HEq core'.Q.Xo z.core.Q.Xo ∧ HEq core'.U z.core.U ∧ HEq core'.V z.core.V ∧ HEq core'.dict z.core.dict ∧
          HEq core'.mu z.core.mu ∧ HEq core'.Kf z.core.Kf ∧ HEq core'.cE z.core.cE ∧ HEq core'.chiW z.core.chiW ∧
          HEq core'.x₀ z.core.x₀ ∧ HEq core'.iota z.core.iota) →
        Formalism.L2.Pj.LawsCore core'.toCore →
        letI := alg'; ∀ (Xg : Finset (Gc B' w'.px → B'.LL)) (tr : TrI B' w'.px)
          (R' : RealDat3 (w'.st Z').toD7 (famR (w'.st Z') w'.I hX' (usedOf w'.I T' Wt') Xg tr) core'.Q.c.F),
          RSideW z Wt' R' → HEq R'.toLevCh.mu0 z.R.toLevCh.mu0 →
          ∀ ι : (w.st Z).toD7.what₂.LL →+* (w'.st Z').toD7.what₂.LL, (∀ y, (w'.st Z').toD7.what₂.embLL (ι y) = (w.st Z).toD7.what₂.embLL y) →
          ∃ (pt' : ∀ (i : Fin (w'.st Z').toD7.R.m) (la : HeightOneSpectrum (𝓞 core'.Q.c.F)), (R'.FW i).Pt la ≃ core'.PtM ((i : ℕ) + 1) la),
            (∀ (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m), (i : ℕ) = i' → ∀ la la', HEq la' la → ∀ y' y, HEq y' y →
              HEq (pt' i' la' y') (z.geo.fw.pt i la y)) := by
  intro B B' f f' T T' w w' hPre Z hX Wt z Z' hX' Wt' core' alg' halg hH hL Xg tr R' hR hmu ι hι
  obtain ⟨h1, h2, h3, h4, h5, -⟩ := hH
  exact ptEquiv_of_pre B B' f f' T T' w w' hPre Z Z' z.core core' h1 h2 h3 h4 h5
    (fun i => (z.R.FW i).Pt) (fun i => (R'.FW i).Pt)
    (fun i i' hi => ((geoExt_rsideW_unpack hR).pt_nrm i i' hi hι).1)
    z.geo.fw.pt
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.UnitTensorPairings.PointEquivFamilyTransportOfSamePre =====

-- ===== clump member: Development.AutomorphicArithmetic.SemilinearForms.GeoExtFW =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.SemilinearForms.GeoExtFW", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PlaceModelImp\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CrdOver\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.AlgebraMapEqOtoLLEOOfPin\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ChiROfEnlarged\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CoreBaseFramesEqModelFramesEnlargedCoefficientBa\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.EnlargedBaseReadingZeroWithoutEvaluationProperty\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.KapMoved\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.KsFormBaseChangeCrd\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LawsJEnl\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LiftCharactersAgreeOverEnlargedBase\npublic import Development.AutomorphicArithmetic.UnitTensorPairings.CuspCoreDatumTransportOfSamePre\npublic import Development.AutomorphicArithmetic.UnitTensorPairings.CuspEvalPropertyIndepOfBaseSamePre\npublic import Development.AutomorphicArithmetic.UnitTensorPairings.CuspFormCoordsIdentificationOfSamePre\npublic import Development.AutomorphicArithmetic.UnitTensorPairings.ExtVecPairingIndepOfBaseSamePre\npublic import Development.AutomorphicArithmetic.UnitTensorPairings.LocalCuspNormsIndepOfBaseSamePre\npublic import Development.AutomorphicArithmetic.UnitTensorPairings.PointEquivFamilyTransportOfSamePre\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx Formalism.IndefR.RecTie
open scoped TensorProduct InnerProductSpace ComplexOrder
attribute [local instance] Formalism.BasicNotions.Host.cmStar Formalism.IndefR.principalLevelFrame.instCMHostI
open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.Mem.R3.Tr
open Formalism.IndefR.FWT Formalism.L2.Pj Formalism.IndefR.Mult GlobalTheory.RealGeo
attribute [local instance high] Submodule.addCommGroup Submodule.module


namespace UpperTheory.Mem.GeoExt

section Set

variable {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 I0 T0 : Type} {A3 : FamIn3 D.what₂.LL G Pl0 I0 (List ℕ) T0 D.R.m}

def setMu0 {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat3 D A3 Ks) (m : ℕ → ((AE D)ˣ →* Circle)) :
    RealDat3 D A3 Ks :=
  { R with mu0 := m }

def fwBack {T : CoreJ D} [Algebra T.Q.c.F D.what₂.LL] (R : RealDat3 D A3 T.Q.c.F) (m : ℕ → ((AE D)ˣ →* Circle))
    (h : ∀ i : Fin D.R.m, m ((i : ℕ) + 1) = R.mu0 ((i : ℕ) + 1)) {κ : ∀ i : Fin D.R.m, WeightFamilies.Wt D ((i : ℕ) + 1)}
    {v₀ : ∀ (i : Fin D.R.m) (σ : D.what₂.LL →+* ℂ), (R.MW i σ).Vec} (t : FWTie T (setMu0 R m).toRealDat κ v₀) :
    FWTie T R.toRealDat κ v₀ where
  alg_eq := t.alg_eq
  e := t.e
  ks := t.ks
  kap := t.kap
  pt := t.pt
  nrm_eq := t.nrm_eq
  laws := t.laws
  chiR := fun i σ hg => by
    obtain ⟨a1, a2, a3, a4, a5⟩ := t.chiR i σ hg
    refine ⟨a1, a2, a3, fun x hx => ?_, fun hσ => (a5 hσ).trans (h i)⟩
    obtain ⟨y, hy1, hy2⟩ := a4 x hx
    exact ⟨y, by rw [← h i]; exact hy1, hy2⟩
  hv₀ := t.hv₀
  x0 := t.x0
  ev0 := t.ev0
  ev := t.ev

end Set

private theorem exists_kap_of_pre
    (B B' : Base) (f : Fr B.toPre) (f' : Fr B'.toPre) (T : TwDat B) (T' : TwDat B') (w : ColW B f T) (w' : ColW B' f' T')
    (hPre : B'.toPre = B.toPre) (Z : w.Lt) (Z' : w'.Lt)
    (κ : ∀ i : Fin (w.st Z).toD7.R.m, WeightFamilies.Wt (w.st Z).toD7 ((i : ℕ) + 1)) :
    ∃ (κ' : ∀ i : Fin (w'.st Z').toD7.R.m, WeightFamilies.Wt (w'.st Z').toD7 ((i : ℕ) + 1)),
      (∀ (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m), (i : ℕ) = i' →
        HEq (κ' i').aP (κ i).aP ∧ HEq (κ' i').aM (κ i).aM ∧ (κ' i').n = (κ i).n) := by
  obtain ⟨P'⟩ := B'
  dsimp only at hPre
  subst hPre
  refine ⟨fun i =>
    { aP := (κ i).aP
      aM := (κ i).aM
      aPlus_antitone := (κ i).aPlus_antitone
      aM_anti := (κ i).aM_anti
      n := (κ i).n
      n_even := (κ i).n_even }, fun i i' hi => ?_⟩
  obtain rfl : i = i' := Fin.ext hi
  exact ⟨HEq.rfl, HEq.rfl, rfl⟩

theorem exists_kap : ∀ (B B' : Base) (f : Fr B.toPre) (f' : Fr B'.toPre) (T : TwDat B) (T' : TwDat B') (w : ColW B f T) (w' : ColW B' f' T'),
    B'.toPre = B.toPre → ∀ (Z : w.Lt) (hX : B.fields.Ok) (Wt : Set B.places.Pl) (z : Dat (w.st Z) w.I hX T Wt) (Z' : w'.Lt) (hX' : B'.fields.Ok)
    (Wt' : Set B'.places.Pl) (core' : Formalism.L2.Pj.CoreJ (w'.st Z').toD7) (alg' : Algebra core'.Q.c.F (w'.st Z').toD7.what₂.LL),
    (∀ y : core'.Q.c.F, B'.embLL (@algebraMap core'.Q.c.F (w'.st Z').toD7.what₂.LL _ _ alg' y) = (y : ℂ)) →
    (HEq core'.Q.H z.core.Q.H ∧ HEq core'.Q.l z.core.Q.l ∧ HEq core'.Q.c z.core.Q.c ∧ HEq core'.Q.Dw z.core.Q.Dw ∧
      HEq core'.Q.Xo z.core.Q.Xo ∧ HEq core'.U z.core.U ∧ HEq core'.V z.core.V ∧ HEq core'.dict z.core.dict ∧
      HEq core'.mu z.core.mu ∧ HEq core'.Kf z.core.Kf ∧ HEq core'.cE z.core.cE ∧ HEq core'.chiW z.core.chiW ∧
      HEq core'.x₀ z.core.x₀ ∧ HEq core'.iota z.core.iota) →
    Formalism.L2.Pj.LawsCore core'.toCore →
    letI := alg'; ∀ (Xg : Finset (Gc B' w'.px → B'.LL)) (tr : TrI B' w'.px)
      (R' : RealDat3 (w'.st Z').toD7 (famR (w'.st Z') w'.I hX' (usedOf w'.I T' Wt') Xg tr) core'.Q.c.F),
      RSideW z Wt' R' → HEq R'.toLevCh.mu0 z.R.toLevCh.mu0 →
      ∀ ι : (w.st Z).toD7.what₂.LL →+* (w'.st Z').toD7.what₂.LL, (∀ y, (w'.st Z').toD7.what₂.embLL (ι y) = (w.st Z).toD7.what₂.embLL y) →
      ∃ (κ' : ∀ i : Fin (w'.st Z').toD7.R.m, WeightFamilies.Wt (w'.st Z').toD7 ((i : ℕ) + 1)),
        (∀ (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m), (i : ℕ) = i' →
          HEq (κ' i').aP (z.geo.κ i).aP ∧ HEq (κ' i').aM (z.geo.κ i).aM ∧ (κ' i').n = (z.geo.κ i).n) := by
  intro B B' f f' T T' w w' hPre Z _ _ z Z' _ _ _ _ _ _ _ _ _ _ _ _ _ _
  exact exists_kap_of_pre B B' f f' T T' w w' hPre Z Z' z.geo.κ

theorem exists_fw_mu : ∀ (B B' : Base) (f : Fr B.toPre) (f' : Fr B'.toPre) (T : TwDat B) (T' : TwDat B') (w : ColW B f T) (w' : ColW B' f' T'),
    B'.toPre = B.toPre → ∀ (Z : w.Lt) (hX : B.fields.Ok) (Wt : Set B.places.Pl) (z : Dat (w.st Z) w.I hX T Wt) (Z' : w'.Lt) (hX' : B'.fields.Ok)
    (Wt' : Set B'.places.Pl) (core' : Formalism.L2.Pj.CoreJ (w'.st Z').toD7) (alg' : Algebra core'.Q.c.F (w'.st Z').toD7.what₂.LL),
    (∀ y : core'.Q.c.F, B'.embLL (@algebraMap core'.Q.c.F (w'.st Z').toD7.what₂.LL _ _ alg' y) = (y : ℂ)) →
    (HEq core'.Q.H z.core.Q.H ∧ HEq core'.Q.l z.core.Q.l ∧ HEq core'.Q.c z.core.Q.c ∧ HEq core'.Q.Dw z.core.Q.Dw ∧
      HEq core'.Q.Xo z.core.Q.Xo ∧ HEq core'.U z.core.U ∧ HEq core'.V z.core.V ∧ HEq core'.dict z.core.dict ∧
      HEq core'.mu z.core.mu ∧ HEq core'.Kf z.core.Kf ∧ HEq core'.cE z.core.cE ∧ HEq core'.chiW z.core.chiW ∧
      HEq core'.x₀ z.core.x₀ ∧ HEq core'.iota z.core.iota) →
    Formalism.L2.Pj.LawsCore core'.toCore →
    letI := alg'; ∀ (Xg : Finset (Gc B' w'.px → B'.LL)) (tr : TrI B' w'.px)
      (R' : RealDat3 (w'.st Z').toD7 (famR (w'.st Z') w'.I hX' (usedOf w'.I T' Wt') Xg tr) core'.Q.c.F),
      RSideW z Wt' R' → HEq R'.toLevCh.mu0 z.R.toLevCh.mu0 →
      ∀ ι : (w.st Z).toD7.what₂.LL →+* (w'.st Z').toD7.what₂.LL, (∀ y, (w'.st Z').toD7.what₂.embLL (ι y) = (w.st Z).toD7.what₂.embLL y) →
      ∃ (κ' : ∀ i : Fin (w'.st Z').toD7.R.m, WeightFamilies.Wt (w'.st Z').toD7 ((i : ℕ) + 1))
        (v₀' : ∀ (i : Fin (w'.st Z').toD7.R.m) (σ : (w'.st Z').toD7.what₂.LL →+* ℂ), (R'.MW i σ).Vec) (fw' : FWTie core' R'.toRealDat κ' v₀'),
        (∀ (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m), (i : ℕ) = i' →
          HEq (κ' i').aP (z.geo.κ i).aP ∧ HEq (κ' i').aM (z.geo.κ i).aM ∧ (κ' i').n = (z.geo.κ i).n) ∧
        (∀ (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m), (i : ℕ) = i' → ∀ σ' : (w'.st Z').toD7.what₂.LL →+* ℂ,
          HEq (v₀' i' σ') (z.geo.v₀ i (σ'.comp ι))) ∧
        (∀ (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m), (i : ℕ) = i' → ∀ φ φ', HEq φ' φ →
          CrdOver ι (z.geo.fw.e i φ : (z.R.FW i).WK).1 (fw'.e i' φ' : (R'.FW i').WK).1) := by
  intro B B' f f' T T' w w' hPre Z hX Wt z Z' hX' Wt' core' alg' halg hcore hlaws Xg tr R' hRS hmu ι hι
  let _ := alg'
  obtain ⟨κ', hκ⟩ := exists_kap B B' f f' T T' w w' hPre Z hX Wt z Z' hX' Wt' core' alg' halg hcore hlaws Xg tr R' hRS hmu ι hι
  obtain ⟨v₀', hv⟩ := UpperTheory.cuspCoreDatum_transport_of_same_pre B B' f f' T T' w w' hPre Z hX Wt z Z' hX' Wt' core' alg' halg hcore hlaws Xg tr R' hRS hmu ι hι
  obtain ⟨e', he⟩ := UpperTheory.cuspFormCoords_identification_of_same_pre B B' f f' T T' w w' hPre Z hX Wt z Z' hX' Wt' core' alg' halg hcore hlaws Xg tr R' hRS hmu ι hι κ' hκ
  obtain ⟨pt', hpt⟩ := UpperTheory.pointEquiv_family_transport_of_same_pre B B' f f' T T' w w' hPre Z hX Wt z Z' hX' Wt' core' alg' halg hcore hlaws Xg tr R' hRS hmu ι hι
  exact ⟨κ', v₀',
    { alg_eq := GlobalTheory.Mem.R3.Rw.algebraMap_eq_OtoLL_eO_of_pin B B' f f' T T' w w' hPre Z hX Wt z Z' hX' Wt' core' alg' halg hcore hlaws Xg tr R' hRS hmu ι hι
      e := e'
      ks := GlobalTheory.ksForm_moved B B' f f' T T' w w' hPre Z hX Wt z Z' hX' Wt' core' alg' halg hcore hlaws Xg tr R' hRS hmu ι hι
      kap := GlobalTheory.FWKapMove.kap_moved B B' f f' T T' w w' hPre Z hX Wt z Z' hX' Wt' core' alg' halg hcore hlaws Xg tr R' hRS hmu ι hι κ' hκ
      pt := pt'
      nrm_eq := UpperTheory.localCuspNorms_indep_of_base_same_pre B B' f f' T T' w w' hPre Z hX Wt z Z' hX' Wt' core' alg' halg hcore hlaws Xg tr R' hRS hmu ι hι κ' hκ e' he pt' hpt
      laws := GlobalTheory.Mem.R3.Ext.lawsJ_enl B B' f f' T T' w w' hPre Z hX Wt z Z' hX' Wt' core' alg' halg hcore hlaws Xg tr R' hRS hmu ι hι
      chiR := GlobalTheory.Mem.R3.Rw.chiR_of_enlarged B B' f f' T T' w w' hPre Z hX Wt z Z' hX' Wt' core' alg' halg hcore hlaws Xg tr R' hRS hmu ι hι
      hv₀ := UpperTheory.extVecPairing_indep_of_base_same_pre B B' f f' T T' w w' hPre Z hX Wt z Z' hX' Wt' core' alg' halg hcore hlaws Xg tr R' hRS hmu ι hι v₀' hv
      x0 := GlobalTheory.Mem.R3.Rw.FwBase.coreBaseFrames_eq_modelFrames_enlargedCoefficientBase B B' f f' T T' w w' hPre Z hX Wt z Z' hX' Wt' core' alg' halg hcore hlaws Xg tr R' hRS hmu ι hι
      ev0 := GlobalTheory.Mem.R3.Rw.EvZero.enlargedBase_reading_zero_without_evaluationProperty B B' f f' T T' w w' hPre Z hX Wt z Z' hX' Wt' core' alg' halg hcore hlaws Xg tr R' hRS hmu ι hι κ' hκ v₀' hv e' he
      ev := UpperTheory.cuspEvalProperty_indep_of_base_same_pre B B' f f' T T' w w' hPre Z hX Wt z Z' hX' Wt' core' alg' halg hcore hlaws Xg tr R' hRS hmu ι hι κ' hκ v₀' hv e' he }, hκ, hv, he⟩

theorem exists_reference_characters_over_extension {B B' : Base} {C : Cols B} {C' : Cols B'} {a : Late B C} {a' : Late B' C'} (hP : B'.toPre = B.toPre)
    (m : ℕ → ((AE a.D)ˣ →* Circle)) : ∃ m' : ℕ → ((AE a'.D)ˣ →* Circle), HEq m' m ∧ ∀ j, HEq (m' j) (m j) := by
  rcases B' with ⟨P'⟩
  change P' = B.toPre at hP
  subst hP
  exact ⟨m, HEq.rfl, fun _ => HEq.rfl⟩

theorem exists_fw : ∀ (B B' : Base) (f : Fr B.toPre) (f' : Fr B'.toPre) (T : TwDat B) (T' : TwDat B') (w : ColW B f T) (w' : ColW B' f' T'),
    B'.toPre = B.toPre → ∀ (Z : w.Lt) (hX : B.fields.Ok) (Wt : Set B.places.Pl) (z : Dat (w.st Z) w.I hX T Wt) (Z' : w'.Lt) (hX' : B'.fields.Ok)
    (Wt' : Set B'.places.Pl) (core' : Formalism.L2.Pj.CoreJ (w'.st Z').toD7) (alg' : Algebra core'.Q.c.F (w'.st Z').toD7.what₂.LL),
    (∀ y : core'.Q.c.F, B'.embLL (@algebraMap core'.Q.c.F (w'.st Z').toD7.what₂.LL _ _ alg' y) = (y : ℂ)) →
    (HEq core'.Q.H z.core.Q.H ∧ HEq core'.Q.l z.core.Q.l ∧ HEq core'.Q.c z.core.Q.c ∧ HEq core'.Q.Dw z.core.Q.Dw ∧
      HEq core'.Q.Xo z.core.Q.Xo ∧ HEq core'.U z.core.U ∧ HEq core'.V z.core.V ∧ HEq core'.dict z.core.dict ∧
      HEq core'.mu z.core.mu ∧ HEq core'.Kf z.core.Kf ∧ HEq core'.cE z.core.cE ∧ HEq core'.chiW z.core.chiW ∧
      HEq core'.x₀ z.core.x₀ ∧ HEq core'.iota z.core.iota) →
    Formalism.L2.Pj.LawsCore core'.toCore →
    letI := alg'; ∀ (Xg : Finset (Gc B' w'.px → B'.LL)) (tr : TrI B' w'.px)
      (R' : RealDat3 (w'.st Z').toD7 (famR (w'.st Z') w'.I hX' (usedOf w'.I T' Wt') Xg tr) core'.Q.c.F),
      RSideW z Wt' R' → HEq f' f → LevOf (w'.st Z') w'.I (usedOf w'.I T' Wt') R'.toLevCh →
      ∀ ι : (w.st Z).toD7.what₂.LL →+* (w'.st Z').toD7.what₂.LL, (∀ y, (w'.st Z').toD7.what₂.embLL (ι y) = (w.st Z).toD7.what₂.embLL y) →
      ∃ (κ' : ∀ i : Fin (w'.st Z').toD7.R.m, WeightFamilies.Wt (w'.st Z').toD7 ((i : ℕ) + 1))
        (v₀' : ∀ (i : Fin (w'.st Z').toD7.R.m) (σ : (w'.st Z').toD7.what₂.LL →+* ℂ), (R'.MW i σ).Vec) (fw' : FWTie core' R'.toRealDat κ' v₀'),
        (∀ (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m), (i : ℕ) = i' →
          HEq (κ' i').aP (z.geo.κ i).aP ∧ HEq (κ' i').aM (z.geo.κ i).aM ∧ (κ' i').n = (z.geo.κ i).n) ∧
        (∀ (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m), (i : ℕ) = i' → ∀ σ' : (w'.st Z').toD7.what₂.LL →+* ℂ,
          HEq (v₀' i' σ') (z.geo.v₀ i (σ'.comp ι))) ∧
        (∀ (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m), (i : ℕ) = i' → ∀ φ φ', HEq φ' φ →
          CrdOver ι (z.geo.fw.e i φ : (z.R.FW i).WK).1 (fw'.e i' φ' : (R'.FW i').WK).1) := by
  intro B B' f f' T T' w w' hPre Z hX Wt z Z' hX' Wt' core' alg' halg hcore hlaws Xg tr R' hRS hf hL' ι hι
  let _ := alg'
  obtain ⟨m, hm, hm'⟩ := exists_reference_characters_over_extension (a := Z) (a' := Z') hPre z.R.toLevCh.mu0
  have hC : z.R.toLevCh.C = Top.Fr.at (w.st Z) f := z.lev.C.trans (by rw [w.C_eq])
  have hC' : R'.toLevCh.C = Top.Fr.at (w'.st Z') f' := hL'.C.trans (by rw [w'.C_eq])
  have hmu0 : ∀ (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m), (i : ℕ) = i' →
      HEq (R'.toLevCh.C.mu0 i') (z.R.toLevCh.C.mu0 i) := by
    intro i i' h
    rw [hC, hC']
    exact LevExt.hermitianCodeCharFrame_referenceCharacter_heq (a := Z) (a' := Z') hPre hf h
  have hm0 : (w'.st Z').toD7.R.m = (w.st Z).toD7.R.m := congrArg Ranks.m (geoExt_pre_eq B B' f f' T T' w w' hPre Z Z').1
  have h : ∀ i' : Fin (w'.st Z').toD7.R.m, m ((i' : ℕ) + 1) = R'.mu0 ((i' : ℕ) + 1) := fun i' =>
    eq_of_heq ((hm' _).trans (LevExt.idc_heq (a := Z) (a' := Z') hPre (hmu0 ⟨i'.1, hm0 ▸ i'.2⟩ i' rfl)
      (z.lev.is.mu0 ⟨i'.1, hm0 ▸ i'.2⟩) (hL'.is.mu0 i')).symm)
  have hRS' : RSideW z Wt' (setMu0 R' m) := by
    set_option backward.isDefEq.lazyProjDelta false in
    exact hRS
  obtain ⟨κ', v₀', fw', h1, h2, h3⟩ := exists_fw_mu B B' f f' T T' w w' hPre Z hX Wt z Z' hX' Wt' core' alg' halg hcore hlaws Xg tr
    (setMu0 R' m) hRS' hm ι hι
  have h3' : ∀ (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m), (i : ℕ) = i' → ∀ φ φ', HEq φ' φ →
      CrdOver ι (z.geo.fw.e i φ : (z.R.FW i).WK).1 ((fwBack R' m h fw').e i' φ' : (R'.FW i').WK).1 := by
    set_option backward.isDefEq.lazyProjDelta false in
    exact h3
  exact ⟨κ', v₀', fwBack R' m h fw', h1, h2, h3'⟩

end UpperTheory.Mem.GeoExt

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.SemilinearForms.GeoExtFW =====

