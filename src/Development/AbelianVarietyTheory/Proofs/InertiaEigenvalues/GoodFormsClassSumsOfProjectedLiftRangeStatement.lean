module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnivChar
public import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.ThetaTranslateRangeGap
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemBlockTriangularTwoBlockSizesOfLe
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.AdmissibleEmptyOfGood
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LevelCharacterApplyEqLevelFunctionSwap
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ToUnitsCompToCircle
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteAdelicPointLatticeIsLattice
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockHarmonicLatticeFgAndSpansValueSpace
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.SqEqOneOfFixDat
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BaseOfOfPin
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PlacesApart
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ThetaProjectionIntertwinesLevelLiftsStatement
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.TranslateUnitaryLifts
public import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.NormalFam
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GoodProjectorThetaLiftOfBaseLevelLaw
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LevelLiftIsLiftPrincipalLevelDatumRealisation
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ClassSumPrincipalLevelEqConstMulClassSum
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExtensionOfLowSmoothLines
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ActOfMemGfC
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsIsScaleOfChar
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PureTensorOSmul
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ThetaLiftEqMultiplePrincipalLevelClassSum
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ThFEqIntegral
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
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
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.HaveILetI
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.FieldTheory.Galois.Profinite
import Mathlib.Tactic.Linter.Style
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.AdelicUnitaryEqRealMulFiniteSplit

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GoodFormReadingEqGoodModelVectorEvaluation, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SupportTermSubset, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BaseLevelCharacterMemCoefficientRing, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ComplexFormsBaseLevelLeSpanIntegral, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsLevelLiftBaseOfRealisationLift, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsLevelLiftBaseOfRealisationLiftStatement, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TrivialTwistBaseLevelEqTupleParahoric, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TrivialTwistBaseLevelEqTupleParahoricStatement, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ProjectedLiftUnipotentTypeBaseLevelForm, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockReadingTranslatedFormMemComplexForms, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ThetaLiftExtremalVectorEqClassSum, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ProjectedThetaLiftExtremalVectorEqClassSum, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GoodModelVectorEqClassSumBaseLevel, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GoodTypeFormReadingRightTranslateLift, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GoodFormsClassSumsOfProjectedLiftRange, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GoodFormsClassSumsOfProjectedLiftRangeStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GoodFormReadingEqGoodModelVectorEvaluation =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GoodFormReadingEqGoodModelVectorEvaluation", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnivChar\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.ThetaTranslateRangeGap\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemBlockTriangularTwoBlockSizesOfLe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links IsDedekindDomain NumberField Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.ExportSeries GlobalTheory.SeriesTie GlobalTheory.TwInputs GlobalTheory.TwSys GlobalTheory.TwAll GlobalTheory.SupLaw GlobalTheory.LiftLeaf
open Formalism.MainNotions.IntegralHeckeForms (TwOK ClsQ HkIdx V0 Fm0 FullRk SgJ BasisOf)
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Lev




noncomputable section

namespace GlobalTheory.SeriesTie.ModelGood

variable {D : D7} {Γ : Type} [Group Γ] [Fintype Γ] {Pl0 I0 T : Type}
  {A3 : FamIn3 D.what₂.LL Γ Pl0 I0 (List ℕ) T D.R.m} {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL]
  {Rl : RealDat3 D A3 Ks} {cG : Formalism.L2.DIV.G0 Rl.Pg D.R.r ≃* G0g D.nd} {S : NX.RatDat D.ntw} (YS : NX.NExpRealS Rl cG S)

def jH (j : Fin D.R.m) : S.WL ((j : ℕ) + 1) →+ (Rl.HW j (sg0 D A3.A)).H where
  toFun x := (Rl.FW j).j (sg0 D A3.A) ((YS.fi j).e x)
  map_zero' := by rw [map_zero, map_zero]
  map_add' x y := by rw [map_add (f := _), map_add (f := _)]

theorem jH_smul (j : Fin D.R.m) (c : D.what₂.LL) (x : S.WL ((j : ℕ) + 1)) :
    jH YS j (c • x) = D.what₂.embLL c • jH YS j x := by
  change (Rl.FW j).j (sg0 D A3.A) ((YS.fi j).e (c • x)) = _
  rw [map_smul, map_smulₛₗ, show sg0 D A3.A c = D.what₂.embLL c from
    congrArg (fun f : D.what₂.LL →+* ℂ => f c) (sgAt_mk _ Rl.hv0)]
  rfl

section Read

variable {ρ : Setup D.ntw} (hρ : ρ.Good) (i : D.ntw.Tw) (j : Fin D.R.m) (b : Bool)

def evH : NX.KB S i b ⊗[S.Ks] NX.FmK S ((j : ℕ) + 1) →+ (Rl.HW j (sg0 D A3.A)).H :=
  TensorProduct.liftAddHom
    { toFun := fun a => (DistribSMul.toAddMonoidHom _ (ρ.e i b a)).comp
        ((jH YS j).comp (S.A ((j : ℕ) + 1)).WK.subtype.toAddMonoidHom)
      map_zero' := by ext; simp [show ρ.e i b (0 : NX.KB S i b) = 0 from map_zero _]
      map_add' := fun x y => by
        ext; simp [show ρ.e i b (x + y : NX.KB S i b) = ρ.e i b x + ρ.e i b y from map_add _ _ _, add_smul] }
    fun c a f => by
      change ρ.e i b (sideEmb D.ntw i b (S.kKs c) * (show FractionRing (D.ntw.O i) from a)) • jH YS j (Subtype.val f) =
        ρ.e i b a • jH YS j (c • Subtype.val f)
      rw [← algebraMap_smul D.what₂.LL c, jH_smul, map_mul, hρ.e_LL0, smul_smul, mul_comm, ← S.kKs_spec]
      rfl

theorem evH_tmul (a : NX.KB S i b) (f : NX.FmK S ((j : ℕ) + 1)) :
    evH YS hρ i j b (a ⊗ₜ f) = ρ.e i b a • jH YS j (Subtype.val f) := rfl

theorem evK_eq (v₀ : ∀ (j : Fin D.R.m) (σ : D.what₂.LL →+* ℂ), (Rl.MW j σ).Vec)
    (t : NX.KB S i b ⊗[S.Ks] NX.FmK S ((j : ℕ) + 1)) :
    evK YS v₀ hρ i j b t = (Rl.HW j (sg0 D A3.A)).e (evH YS hρ i j b t) (v₀ j _) := by
  induction t using TensorProduct.induction_on with
  | zero => rw [map_zero, map_zero, map_zero]; rfl
  | add x y hx hy => rw [map_add (f := _), map_add (f := _), map_add (f := _), hx, hy]; rfl
  | tmul a f => rw [evK_tmul, evH_tmul, map_smul]; rfl

theorem evH_smul (c : NX.KB S i b) (t : NX.KB S i b ⊗[S.Ks] NX.FmK S ((j : ℕ) + 1)) :
    evH YS hρ i j b (c • t) = ρ.e i b c • evH YS hρ i j b t := by
  induction t using TensorProduct.induction_on with
  | zero => rw [smul_zero, map_zero, smul_zero]
  | add x y hx hy => rw [smul_add, map_add (f := _), map_add (f := _), hx, hy, smul_add]
  | tmul a f =>
    rw [TensorProduct.smul_tmul', evH_tmul, evH_tmul, smul_smul]
    exact congrArg (· • _) (map_mul (ρ.e i b) c a)

def mv (y : D.nexp.Fm i ((j : ℕ) + 1) b) : (Rl.HW j (sg0 D A3.A)).H :=
  evH YS hρ i j b (YS.eF i _ b (Nat.le_add_left _ _) j.2 y)

theorem mv_act (hU : Rl.toRealDat.LUnif) (g : G0g D.nd) (y : D.nexp.Fm i ((j : ℕ) + 1) b) :
    (Rl.HW j (sg0 D A3.A)).e (mv YS hρ i j b (D.nexp.actG i _ b g y)) =
      postOn _ (actL (Wc D j) (Rl.βW j) (Rl.datWp j Rl.triv) (cG.symm g))
        ((Rl.HW j (sg0 D A3.A)).e (mv YS hρ i j b y)) := by
  unfold mv
  rw [YS.act]
  generalize YS.eF i _ b (Nat.le_add_left _ _) j.2 y = t
  induction t using TensorProduct.induction_on with
  | zero =>
    erw [LinearEquiv.map_zero]
    simp only [map_zero]
    exact (congrArg (Rl.HW j (sg0 D A3.A)).e ((evH YS hρ i j b).map_zero)).trans (map_zero _)
  | add y z hy hz => erw [LinearEquiv.map_add, map_add, map_add, hy, hz, map_add, map_add, map_add]
  | tmul a f0 =>
    have e1 : (NX.actG S i ((j : ℕ) + 1) b (YS.rho _ (Nat.le_add_left _ _) j.2) (YS.chi _ (Nat.le_add_left _ _) j.2) g)
        (a ⊗ₜ f0) = ((NX.readLL0 S i b (NX.chiL S _ (YS.chi _ (Nat.le_add_left _ _) j.2) (S.eG.symm g)))⁻¹ * a) ⊗ₜ
          (NX.rhoKG S _ (YS.rho _ (Nat.le_add_left _ _) j.2) (S.eG.symm g) f0) := by
      change (NX.readLL0 S i b (NX.chiL S _ _ (S.eG.symm g)))⁻¹ •
        (a ⊗ₜ[S.Ks] (NX.rhoKG S _ (YS.rho _ (Nat.le_add_left _ _) j.2) (S.eG.symm g) f0)) = _
      rw [TensorProduct.smul_tmul', smul_eq_mul]
    erw [e1]
    rw [evH_tmul, evH_tmul]
    have hgeq : Rl.eG ((YS.fi j).eG (S.eG.symm g)) = cG.symm g := by
      have h0 := YS.geq j (S.eG.symm g)
      rw [MulEquiv.apply_symm_apply] at h0
      exact ((MulEquiv.symm_apply_eq cG).2 h0.symm).symm
    have he : ρ.e i b (NX.readLL0 S i b (NX.chiL S _ (YS.chi _ (Nat.le_add_left _ _) j.2) (S.eG.symm g))) =
        D.what₂.embLL (((S.A ((j : ℕ) + 1)).chi (S.eG.symm g) : D.what₂.LLˣ) : D.what₂.LL) :=
      hρ.e_LL0 i b _
    have hne : D.what₂.embLL (((S.A ((j : ℕ) + 1)).chi (S.eG.symm g) : D.what₂.LLˣ) : D.what₂.LL) ≠ 0 :=
      (map_ne_zero _).2 (Units.ne_zero _)
    have hs : sg0 D A3.A = D.what₂.embLL := GlobalTheory.SeriesTie.ActProof.sg0_eq_embLL Rl
    change (Rl.HW j (sg0 D A3.A)).e (ρ.e i b _ • (Rl.FW j).j (sg0 D A3.A)
      ((YS.fi j).e ((S.A ((j : ℕ) + 1)).ρ (S.eG.symm g) (Subtype.val f0)))) = _
    rw [map_smul, map_smul, map_smul, (YS.fi j).rho, (hU j _).2.2, (YS.fi j).chi, hgeq, smul_smul]
    congr 1
    erw [map_mul, map_inv₀, he, hs]
    field_simp

theorem mv_smul (c : FractionRing (D.ntw.O i)) (y : D.nexp.Fm i ((j : ℕ) + 1) b) :
    mv YS hρ i j b (c • y) = ρ.e i b c • mv YS hρ i j b y := by
  unfold mv
  rw [map_smul]
  exact evH_smul YS hρ i j b c _

theorem mv_sum {ι : Type} (s : Finset ι) (y : ι → D.nexp.Fm i ((j : ℕ) + 1) b) :
    mv YS hρ i j b (∑ k ∈ s, y k) = ∑ k ∈ s, mv YS hρ i j b (y k) := by
  unfold mv

  rw [map_sum]
  exact map_sum (evH YS hρ i j b) _ _

theorem postOn_eWf_sum (σ : D.what₂.LL →+* ℂ) (M : MMap (Rl.MW j σ)) :
    postOn (Rl.MW j σ) (Rl.toRealDat.eWf j σ) M = ∑ γ : Γ, RealDat.eC (A := A3.A) σ γ •
      postOn (Rl.MW j σ) (actL (Wc D j) (Rl.βW j) (Rl.datWp j Rl.triv) (Rl.eG γ)) M := by
  refine MultilinearMap.ext fun v => ?_
  simp only [RealDat.eWf, gaL, postOn, LinearMap.coe_mk, AddHom.coe_mk, LinearMap.compMultilinearMap_apply,
    LinearMap.sum_apply, LinearMap.smul_apply, MultilinearMap.sum_apply, MultilinearMap.smul_apply]
  rfl

theorem mv_eG (hU : Rl.toRealDat.LUnif)
    (hid : ∀ γ : Γ, D.what₂.embLL ((idemOf A3.A.X).coeff γ) = D.ntypes.e0.coeff ((Rl.eG.trans cG) γ))
    (y : D.nexp.Fm i ((j : ℕ) + 1) b) :
    (Rl.HW j (sg0 D A3.A)).e (mv YS hρ i j b (Formalism.MainNotions.IntegralHeckeForms.eG D.nexp i _ b y)) =
      postOn _ (Rl.toRealDat.eWf j (sg0 D A3.A)) ((Rl.HW j (sg0 D A3.A)).e (mv YS hρ i j b y)) := by
  letI : Fintype (G0g D.nd) := Fintype.ofEquiv Γ (Rl.eG.trans cG).toEquiv
  have h1 : Formalism.MainNotions.IntegralHeckeForms.eG D.nexp i _ b y = ∑ g, (D.nexp.eAlg i b).coeff g • D.nexp.actG i _ b g y := by
    unfold Formalism.MainNotions.IntegralHeckeForms.eG
    rw [MonoidAlgebra.lift_apply, Finsupp.sum_fintype]
    · rw [LinearMap.sum_apply]; rfl
    · intro; exact zero_smul _ _
  have hc : ∀ g, ρ.e i b ((D.nexp.eAlg i b).coeff g) = D.ntypes.e0.coeff g := fun g => by
    have h : (D.nexp.eAlg i b).coeff g = NX.readLL0 S i b (D.nexp.eLL0 g) := by rw [D.nexp.eAlg_def]; rfl
    rw [h]
    exact (hρ.e_LL0 i b _).trans (D.nStage_trivialCharacter_coeff_eq g)
  have hs : sg0 D A3.A = D.what₂.embLL := GlobalTheory.SeriesTie.ActProof.sg0_eq_embLL Rl

  rw [h1, mv_sum, map_sum, postOn_eWf_sum]
  refine (Fintype.sum_equiv (Rl.eG.trans cG).toEquiv _ _ fun γ => ?_).symm
  rw [mv_smul, map_smul, mv_act YS hρ i j b hU, hc]
  simp only [MulEquiv.toEquiv_eq_coe, MulEquiv.coe_toEquiv, MulEquiv.trans_apply, MulEquiv.symm_apply_apply]
  congr 1
  exact (congrArg (fun f : D.what₂.LL →+* ℂ => f ((idemOf A3.A.X).coeff γ)) hs).trans (hid γ)

end Read
end GlobalTheory.SeriesTie.ModelGood

open GlobalTheory.SeriesTie.ModelGood in
theorem GlobalTheory.SeriesTie.rd_good_model : ∀ (D : D7) (X : RealSide D) (E : IntegralHeckeForms.XD D) (Y : SerSide X E) (i : D.ntw.Tw) (j : Fin D.R.m) (b : Bool),
    ∀ x ∈ V0 D.nexp i ((j : ℕ) + 1) b, ∃ w ∈ GlobalTheory.IndefiniteRowSideFullHecke.ThetaTranslateSize.goodModel X.R.toRealDat j,
      Y.Z.rd i j b x = (Y.Z.ν i j b)⁻¹ • (X.R.HW j (sg0 D X.A3.A)).e w (X.geo.v₀ j _) := by
  intro D X E Y i j b x hx
  obtain ⟨f, -, rfl⟩ := hx
  have hidem : ∀ z, Formalism.MainNotions.IntegralHeckeForms.eG D.nexp i _ b (Formalism.MainNotions.IntegralHeckeForms.eG D.nexp i _ b z) = Formalism.MainNotions.IntegralHeckeForms.eG D.nexp i ((j : ℕ) + 1) b z :=
    fun z => by rw [← Module.End.mul_apply, Formalism.MainNotions.IntegralHeckeForms.eG, ← map_mul, D.nexp.eAlg_idem]
  refine ⟨mv Y.YS Y.Z.good i j b (Formalism.MainNotions.IntegralHeckeForms.eG D.nexp i _ b f), ⟨?_, ?_⟩, ?_⟩
  · have h := LinearMap.mem_range_self (X.R.HW j (sg0 D X.A3.A)).e
      (mv Y.YS Y.Z.good i j b (Formalism.MainNotions.IntegralHeckeForms.eG D.nexp i _ b f))
    rw [(X.char.models.HW j _).2.1] at h
    exact h
  · rw [SetLike.mem_coe, LinearMap.mem_ker, LinearMap.sub_apply, sub_eq_zero, LinearMap.id_apply]
    rw [← mv_eG Y.YS Y.Z.good i j b X.unif X.idem, hidem]
  · change (Y.Z.ν i j b)⁻¹ • evK Y.YS X.geo.v₀ Y.Z.good i j b _ = _
    exact congrArg _ (evK_eq Y.YS Y.Z.good i j b X.geo.v₀ _)
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GoodFormReadingEqGoodModelVectorEvaluation =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SupportTermSubset =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SupportTermSubset", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.AdmissibleEmptyOfGood\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.IndefR

namespace GlobalTheory.LawTrace

variable {G Γ W : Type} [Group G] [Group Γ] [AddCommGroup W] [Module ℂ W]
  (ι : Γ →* G) (ρ : Γ →* Module.End ℂ W) (J : Subgroup G) (χ : J →* ℂˣ)


open Classical in
def term (y x : G) (P : W) (γ : Γ) : W :=
  if h : (ι γ * y)⁻¹ * x ∈ J then ((χ ⟨_, h⟩ : ℂˣ) : ℂ) • ρ γ P else 0

def tr (y : G) (P : W) : G → W := fun x => ∑ᶠ γ, term ι ρ J χ y x P γ

variable {ι ρ J χ}

theorem support_term_subset (y x : G) (P : W) :
    Function.support (term ι ρ J χ y x P) ⊆ {γ | (ι γ * y)⁻¹ * x ∈ J} := by
  intro γ hγ
  by_contra h
  exact hγ (by unfold term; exact dif_neg (show ¬ ((ι γ * y)⁻¹ * x ∈ J) from h))

theorem finite_cond {y : G} (hf : Finite (Bridge.stab ι J y)) (x : G) : {γ | (ι γ * y)⁻¹ * x ∈ J}.Finite := by
  rcases Set.eq_empty_or_nonempty {γ | (ι γ * y)⁻¹ * x ∈ J} with h | ⟨γ₀, h₀⟩
  · rw [h]; exact Set.finite_empty
  · have hs : ((Bridge.stab ι J y : Subgroup Γ) : Set Γ).Finite := Set.finite_coe_iff.1 hf
    refine (hs.image fun s => γ₀ * s).subset fun γ hγ => ⟨γ₀⁻¹ * γ, ?_, by simp⟩
    change γ₀⁻¹ * γ ∈ Bridge.stab ι J y
    rw [Bridge.mem_stab]
    have h1 := J.mul_mem h₀ (J.inv_mem (show (ι γ * y)⁻¹ * x ∈ J from hγ))
    convert h1 using 1
    simp [mul_assoc]

theorem support_term_finite {y : G} (hf : Finite (Bridge.stab ι J y)) (x : G) (P : W) :
    (Function.support (term ι ρ J χ y x P)).Finite :=
  (finite_cond hf x).subset (support_term_subset y x P)

theorem term_mul (y x : G) (P : W) (γ₀ γ : Γ) (k : J) :
    term ι ρ J χ y (ι γ₀ * x * k) P (γ₀ * γ) = ((χ k : ℂˣ) : ℂ) • ρ γ₀ (term ι ρ J χ y x P γ) := by
  have e : (ι (γ₀ * γ) * y)⁻¹ * (ι γ₀ * x * k) = (ι γ * y)⁻¹ * x * k := by
    simp [mul_assoc]
  unfold term
  by_cases h : (ι γ * y)⁻¹ * x ∈ J
  · have h' : (ι (γ₀ * γ) * y)⁻¹ * (ι γ₀ * x * k) ∈ J := by rw [e]; exact J.mul_mem h k.2
    rw [dite_eq_left h', dite_eq_left h]
    have ek : (⟨_, h'⟩ : J) = ⟨_, h⟩ * k := Subtype.ext e
    rw [ek, map_mul, map_mul, Units.val_mul, map_smul, smul_smul, mul_comm, Module.End.mul_apply]
  · have h' : ¬ (ι (γ₀ * γ) * y)⁻¹ * (ι γ₀ * x * k) ∈ J := by
      rw [e]; intro h2; exact h (by simpa using J.mul_mem h2 (J.inv_mem k.2))
    rw [dif_neg h', dif_neg h, map_zero, smul_zero]

theorem tr_law {y : G} (hf : Finite (Bridge.stab ι J y)) (P : W) (γ₀ : Γ) (x : G) (k : J) :
    tr ι ρ J χ y P (ι γ₀ * x * k) = ((χ k : ℂˣ) : ℂ) • ρ γ₀ (tr ι ρ J χ y P x) := by
  unfold tr
  rw [← finsum_comp_equiv (Equiv.mulLeft γ₀)]
  simp only [Equiv.coe_mulLeft, term_mul]
  let L : W →ₗ[ℂ] W := ((χ k : ℂˣ) : ℂ) • ρ γ₀
  change ∑ᶠ γ, L (term ι ρ J χ y x P γ) = L (∑ᶠ γ, term ι ρ J χ y x P γ)
  exact (map_finsum L (support_term_finite hf x P)).symm

theorem mem_lawForms_tr {y : G} (hf : Finite (Bridge.stab ι J y)) (P : W) :
    tr ι ρ J χ y P ∈ GlobalTheory.ExportSeries.lawForms ι ρ J χ :=
  GlobalTheory.ExportSeries.mem_lawForms.2 fun γ x k => tr_law hf P γ x k

theorem tr_add {y : G} (hf : Finite (Bridge.stab ι J y)) (P Q : W) :
    tr ι ρ J χ y (P + Q) = tr ι ρ J χ y P + tr ι ρ J χ y Q := by
  funext x
  have e : ∀ γ, term ι ρ J χ y x (P + Q) γ = term ι ρ J χ y x P γ + term ι ρ J χ y x Q γ := fun γ => by
    unfold term; split_ifs <;> simp [smul_add]
  simp only [tr, Pi.add_apply, e]
  exact finsum_add_distrib (support_term_finite hf x P) (support_term_finite hf x Q)

theorem tr_smul (y : G) (a : ℂ) (P : W) : tr ι ρ J χ y (a • P) = a • tr ι ρ J χ y P := by
  funext x
  have e : ∀ γ, term ι ρ J χ y x (a • P) γ = a • term ι ρ J χ y x P γ := fun γ => by
    unfold term; split_ifs <;> simp [smul_comm a]
  simp only [tr, Pi.smul_apply, e]
  exact (smul_finsum a _).symm

theorem tr_zero (y : G) : tr ι ρ J χ y (0 : W) = 0 := by
  simpa using tr_smul (ι := ι) (ρ := ρ) (χ := χ) y (0 : ℂ) (0 : W)

theorem tr_mem {R : Type} [Semiring R] [Module R W] {y : G} (hf : Finite (Bridge.stab ι J y)) (P : W) (x : G)
    (M : Submodule R W) (hM : ∀ γ, (ι γ * y)⁻¹ * x ∈ J → term ι ρ J χ y x P γ ∈ M) : tr ι ρ J χ y P x ∈ M := by
  unfold tr
  rw [finsum_eq_sum _ (support_term_finite hf x P)]
  refine Submodule.sum_mem _ fun γ hγ => ?_
  have h := support_term_subset y x P ((Set.Finite.mem_toFinset _).1 hγ)
  exact hM γ h

theorem tr_self {y : G} (hf : Finite (Bridge.stab ι J y)) {F : G → W} (hF : F ∈ GlobalTheory.ExportSeries.lawForms ι ρ J χ) :
    tr ι ρ J χ y (F y) y = (Nat.card (Bridge.stab ι J y) : ℂ) • F y := by
  classical
  have e : ∀ γ, term ι ρ J χ y y (F y) γ = if γ ∈ Bridge.stab ι J y then F y else 0 := fun γ => by
    unfold term
    have hc : (ι γ * y)⁻¹ * y ∈ J ↔ γ ∈ Bridge.stab ι J y := by
      rw [Bridge.mem_stab, ← J.inv_mem_iff]
      simp [mul_assoc]
    by_cases h : (ι γ * y)⁻¹ * y ∈ J
    · rw [dite_eq_left h, if_pos (hc.1 h)]
      have := GlobalTheory.ExportSeries.mem_lawForms.1 hF γ y ⟨_, h⟩
      rw [show ι γ * y * ((ι γ * y)⁻¹ * y) = y by group] at this
      exact this.symm
    · rw [dif_neg h, if_neg fun h' => h (hc.2 h')]
  unfold tr
  simp only [e]
  have hs : ((Bridge.stab ι J y : Subgroup Γ) : Set Γ).Finite := Set.finite_coe_iff.1 hf
  have ei : (fun γ => if γ ∈ Bridge.stab ι J y then F y else 0) =
      Set.indicator ((Bridge.stab ι J y : Subgroup Γ) : Set Γ) (fun _ => F y) := by
    funext γ; simp [Set.indicator]
  rw [ei, ← finsum_mem_def]
  rw [finsum_mem_eq_finite_toFinset_sum _ hs, Finset.sum_const, ← Nat.cast_smul_eq_nsmul ℂ]
  congr 1
  rw [← Nat.card_eq_card_finite_toFinset hs]
  rfl

theorem eq_sum_tr {I : Type} [Fintype I] {y : I → G} (hr : Bridge.IsReps ι J y)
    (hf : ∀ i, Finite (Bridge.stab ι J (y i))) {F : G → W} (hF : F ∈ GlobalTheory.ExportSeries.lawForms ι ρ J χ) :
    F = ∑ i, ((Nat.card (Bridge.stab ι J (y i)) : ℂ))⁻¹ • tr ι ρ J χ (y i) (F (y i)) := by
  funext x
  obtain ⟨i₀, ⟨γ₀, k₀, hx⟩, huniq⟩ := hr x
  rw [Finset.sum_apply, Finset.sum_eq_single i₀]
  · have hne : ((Nat.card (Bridge.stab ι J (y i₀)) : ℂ)) ≠ 0 := by
      haveI := hf i₀
      exact Nat.cast_ne_zero.2 Nat.card_pos.ne'
    rw [Pi.smul_apply, hx, tr_law (hf i₀), tr_self (hf i₀) hF, GlobalTheory.ExportSeries.mem_lawForms.1 hF γ₀ (y i₀) k₀, map_smul,
      smul_comm ((χ k₀ : ℂˣ) : ℂ) ((Nat.card (Bridge.stab ι J (y i₀)) : ℂ)), smul_smul, inv_mul_cancel₀ hne, one_smul]
  · intro i _ hi
    rw [Pi.smul_apply]
    have : tr ι ρ J χ (y i) (F (y i)) x = 0 := by
      unfold tr
      refine finsum_eq_zero_of_forall_eq_zero fun γ => ?_
      unfold term
      rw [dif_neg]
      intro h
      exact hi (huniq i ⟨γ, ⟨_, h⟩, by simp [mul_assoc]⟩)
    rw [this, smul_zero]
  · intro h; exact absurd (Finset.mem_univ _) h

end GlobalTheory.LawTrace

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SupportTermSubset =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BaseLevelCharacterMemCoefficientRing =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BaseLevelCharacterMemCoefficientRing", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnivChar\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LevelCharacterApplyEqLevelFunctionSwap\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.FieldTheory.Galois.Profinite\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ToUnitsCompToCircle\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links IsDedekindDomain NumberField Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.ExportSeries GlobalTheory.SeriesTie GlobalTheory.TwInputs GlobalTheory.TwSys GlobalTheory.TwAll GlobalTheory.SupLaw GlobalTheory.LiftLeaf
open Formalism.MainNotions.IntegralHeckeForms (TwOK ClsQ HkIdx V0 Fm0 FullRk SgJ BasisOf)
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section

namespace GlobalTheory.LamVal

theorem exists_of_pow {A : Type} [CommRing A] [IsDomain A] [IsIntegrallyClosed A] {a : FractionRing A} {n : ℕ}
    (hn : n ≠ 0) (h : a ^ n = 1) : ∃ y : A, algebraMap A (FractionRing A) y = a := by
  have hi : IsIntegral A a := ⟨Polynomial.X ^ n - Polynomial.C 1, Polynomial.monic_X_pow_sub_C 1 hn, by simp [h]⟩
  exact IsIntegrallyClosed.isIntegral_iff.1 hi

variable {D : D7}

theorem e_mem_of_pow {ρ : Setup D.ntw} (hρ : ρ.Good) (i : D.ntw.Tw) (b : Bool) {a : FractionRing (D.ntw.O i)} {n : ℕ}
    (hn : n ≠ 0) (h : a ^ n = 1) : ρ.e i b a ∈ (ρ.eOk i b 0).range := by
  obtain ⟨y, rfl⟩ := exists_of_pow hn h
  exact ⟨algebraMap _ _ y, hρ.ek_e i b 0 y⟩

theorem de_mem {ρ : Setup D.ntw} (hρ : ρ.Good) (i : D.ntw.Tw) (j : Fin D.R.m) (b : Bool) (z : (AE D)ˣ) :
    (((ρ.B i j b).de.chi z : Circle) : ℂ) ∈ (ρ.eOk i b 0).range := by
  obtain ⟨σ, hσ⟩ := ρ.rc.exists_sym z
  have hopen : IsOpen ((Formalism.MainNotions.BlochKatoReduction.Gen.psiAt b (D.ntw.delta i)).ker : Set (G D.host.E D.nd.Om)) := by
    have e : (Formalism.MainNotions.BlochKatoReduction.Gen.psiAt b (D.ntw.delta i)).ker = (D.ntw.delta i).ker := by
      ext g
      cases b <;> simp [Formalism.MainNotions.BlochKatoReduction.Gen.psiAt, MonoidHom.mem_ker]
    rw [e]
    exact D.ntw.delta_open i
  have : Finite (G D.host.E D.nd.Om ⧸ (Formalism.MainNotions.BlochKatoReduction.Gen.psiAt b (D.ntw.delta i)).ker) :=
    Subgroup.quotient_finite_of_isOpen _ hopen
  have hfi : (Formalism.MainNotions.BlochKatoReduction.Gen.psiAt b (D.ntw.delta i)).ker.FiniteIndex := Subgroup.finiteIndex_of_finite_quotient
  have hn : (Formalism.MainNotions.BlochKatoReduction.Gen.psiAt b (D.ntw.delta i)).ker.index ≠ 0 := Subgroup.FiniteIndex.index_ne_zero
  have hpow : Formalism.MainNotions.BlochKatoReduction.Gen.psiAt b (D.ntw.delta i) σ ^ (Formalism.MainNotions.BlochKatoReduction.Gen.psiAt b (D.ntw.delta i)).ker.index = 1 := by
    rw [← map_pow]
    exact MonoidHom.mem_ker.1 (Subgroup.pow_index_mem _ σ)
  refine ⟨algebraMap (D.ntw.O i) (D.ntw.Ok i 0)
    (algebraMap (D.ntw.O0 i) (D.ntw.O i) ((Formalism.MainNotions.BlochKatoReduction.Gen.psiAt b (D.ntw.delta i) σ : (D.ntw.O0 i)ˣ) : D.ntw.O0 i)), ?_⟩
  rw [hρ.ek_e, hρ.delta i j b]
  exact (charOf_eq ρ.rc ((ρ.eO i b).comp (algebraMap (D.ntw.O0 i) (D.ntw.O i))) hopen hσ hn hpow).symm

end GlobalTheory.LamVal

namespace GlobalTheory.LamVal

variable {D : D7} {X : RealSide D} {E : IntegralHeckeForms.XD D}

theorem typeCharacterExtension_mem_range_coefficientRing (Y : SerSide X E) (i : D.ntw.Tw) (j : Fin D.R.m) (b : Bool)
    (g : G0 (Y.Z.ρ.B i j b).G.Pg (Wc D j).rank) :
    ((ext1 (Y.Z.ρ.B i j b).G.P.H (⇑(Y.Z.ρ.B i j b).G.P.chi) g : ℂˣ) : ℂ) ∈ (Y.Z.ρ.eOk i b 0).range := by
  unfold ext1
  split_ifs with h
  · set g' := (Y.Z.ρ.eG i j b).symm g with hg'
    have hg : Y.Z.ρ.eG i j b g' = g := MulEquiv.apply_symm_apply _ _
    have h' : Y.Z.ρ.eG i j b g' ∈ (Y.Z.ρ.B i j b).G.P.H := by rw [hg]; exact h
    have hu : g' ∈ D.nexp.U := ((Y.Z.tie i j b).U_eq g').1 h'
    have e1 := (Y.Z.tie i j b).psiU_eq ⟨g', hu⟩ h'
    have e2 : (Y.Z.ρ.B i j b).G.P.chi ⟨g, h⟩ = (Y.Z.ρ.B i j b).G.P.chi ⟨Y.Z.ρ.eG i j b g', h'⟩ := by
      congr 1
      exact Subtype.ext hg.symm
    rw [e2, e1]
    have hfin : ((Y.Z.ρ.B i j b).G.P.chi ⟨Y.Z.ρ.eG i j b g', h'⟩) ^ Nat.card (Y.Z.ρ.B i j b).G.P.H = 1 := by
      rw [← map_pow, pow_card_eq_one', map_one]
    refine e_mem_of_pow Y.Z.good i b (n := Nat.card (Y.Z.ρ.B i j b).G.P.H) Nat.card_pos.ne' ?_
    apply (Y.Z.ρ.e i b).injective
    rw [map_pow, ← e1, ← Units.val_pow_eq_pow_val, hfin, Units.val_one, map_one]
  · exact one_mem _

theorem loc_mem (Y : SerSide X E) (i : D.ntw.Tw) (j : Fin D.R.m) (b : Bool) (PP : Pl D.host.E) (w : (kP PP)ˣ) :
    ((((Y.Z.ρ.B i j b).de.locC PP * (Y.Z.ρ.tw i b 0 ∅ 1).locC PP) w : ℂˣ) : ℂ) ∈ (Y.Z.ρ.eOk i b 0).range := by
  have hψ : (Y.Z.ρ.tw i b 0 ∅ 1).locC PP = 1 := by
    simp [Twist.locC, Setup.tw, twistOf, half_empty]
  rw [hψ, mul_one]
  unfold Twist.locC
  split_ifs with hq
  · have hB := Y.Z.good.base i j b
    obtain ⟨P, -, hQ, hsp⟩ := hB.places.split
    obtain ⟨x, hx⟩ := GlobalTheory.ConjTwist.exists_isLocUnit (hsp.isIdemAt (hQ hq)) w
    show (((Y.Z.ρ.B i j b).de.res PP w : Circle) : ℂ) ∈ _
    rw [← hx.eq (hB.de.res PP hq)]
    exact de_mem Y.Z.good i j b x
  · simp

end GlobalTheory.LamVal

namespace GlobalTheory.LamVal

variable {D : D7} {X : RealSide D} {E : IntegralHeckeForms.XD D}

theorem de_frac {ρ : Setup D.ntw} (hρ : ρ.Good) (i : D.ntw.Tw) (j : Fin D.R.m) (b : Bool) (z : (AE D)ˣ) :
    ∃ d, ρ.e i b d = (((ρ.B i j b).de.chi z : Circle) : ℂ) := by
  obtain ⟨σ, hσ⟩ := ρ.rc.exists_sym z
  have hopen : IsOpen ((Formalism.MainNotions.BlochKatoReduction.Gen.psiAt b (D.ntw.delta i)).ker : Set (G D.host.E D.nd.Om)) := by
    have e : (Formalism.MainNotions.BlochKatoReduction.Gen.psiAt b (D.ntw.delta i)).ker = (D.ntw.delta i).ker := by
      ext g
      cases b <;> simp [Formalism.MainNotions.BlochKatoReduction.Gen.psiAt, MonoidHom.mem_ker]
    rw [e]
    exact D.ntw.delta_open i
  have : Finite (G D.host.E D.nd.Om ⧸ (Formalism.MainNotions.BlochKatoReduction.Gen.psiAt b (D.ntw.delta i)).ker) :=
    Subgroup.quotient_finite_of_isOpen _ hopen
  have hfi : (Formalism.MainNotions.BlochKatoReduction.Gen.psiAt b (D.ntw.delta i)).ker.FiniteIndex := Subgroup.finiteIndex_of_finite_quotient
  have hn : (Formalism.MainNotions.BlochKatoReduction.Gen.psiAt b (D.ntw.delta i)).ker.index ≠ 0 := Subgroup.FiniteIndex.index_ne_zero
  have hpow : Formalism.MainNotions.BlochKatoReduction.Gen.psiAt b (D.ntw.delta i) σ ^ (Formalism.MainNotions.BlochKatoReduction.Gen.psiAt b (D.ntw.delta i)).ker.index = 1 := by
    rw [← map_pow]
    exact MonoidHom.mem_ker.1 (Subgroup.pow_index_mem _ σ)
  refine ⟨algebraMap (D.ntw.O i) _
    (algebraMap (D.ntw.O0 i) (D.ntw.O i) ((Formalism.MainNotions.BlochKatoReduction.Gen.psiAt b (D.ntw.delta i) σ : (D.ntw.O0 i)ˣ) : D.ntw.O0 i)), ?_⟩
  rw [hρ.delta i j b]
  exact (charOf_eq ρ.rc ((ρ.eO i b).comp (algebraMap (D.ntw.O0 i) (D.ntw.O i))) hopen hσ hn hpow).symm

theorem baseCharacter_finiteIdeles_mem_range_fractionRing (Y : SerSide X E) (i : D.ntw.Tw) (j : Fin D.R.m) (b : Bool) (x : (AE D)ˣ) (hx : infPart D (x : AE D) = 1) :
    ∃ a, Y.Z.ρ.e i b a = (((Y.Z.ρ.B i j b).mu0 x : Circle) : ℂ) := by
  obtain ⟨y, hy⟩ := X.valKs j x hx
  refine ⟨sideEmb D.ntw i b (Y.S.kKs ((Y.YS.fi j).eK.symm y)), ?_⟩
  rw [Y.Z.good.e_LL0, Y.Z.pin.mu0 i j b]
  refine Eq.trans ?_ hy.symm
  change D.what₂.embLL ((Y.S.kKs ((Y.YS.fi j).eK.symm y) : D.LL0) : D.what₂.LL) = _
  rw [Y.S.kKs_spec, ← (Y.YS.fi j).eK_LL, RingEquiv.apply_symm_apply]

theorem muC_mem (Y : SerSide X E) (i : D.ntw.Tw) (j : Fin D.R.m) (b : Bool)
    {PP : Pl D.host.E} (hPP : PP ∈ (Y.Z.ρ.B i j b).G.Pg) (w : (kP PP)ˣ) :
    (((Y.Z.ρ.B i j b).G.muC PP w : ℂˣ) : ℂ) ∈ (Y.Z.ρ.eOk i b 0).range := by
  have hB := Y.Z.good.base i j b
  obtain ⟨P, hPg, -, hsp⟩ := hB.places.split
  obtain ⟨x, hx⟩ := GlobalTheory.ConjTwist.exists_isLocUnit (hsp.isIdemAt (hPg hPP)) w
  have e1 : (Y.Z.ρ.B i j b).G.mu PP w = (Y.Z.ρ.B i j b).mu x := (hx.eq (hB.tame PP hPP)).symm
  show (((Y.Z.ρ.B i j b).G.mu PP w : Circle) : ℂ) ∈ _
  obtain ⟨a, ha⟩ := baseCharacter_finiteIdeles_mem_range_fractionRing Y i j b x hx.inf
  obtain ⟨d, hd⟩ := de_frac Y.Z.good i j b x
  have e2 : (((Y.Z.ρ.B i j b).G.mu PP w : Circle) : ℂ) = Y.Z.ρ.e i b (a * d) := by
    rw [e1, Base.mu, MonoidHom.mul_apply, Circle.coe_mul, map_mul, ha, hd]
  haveI : Finite (kP PP)ˣ := inferInstance
  have hfin : ((Y.Z.ρ.B i j b).G.mu PP w) ^ Nat.card (kP PP)ˣ = 1 := by
    rw [← map_pow, pow_card_eq_one', map_one]
  rw [e2]
  refine e_mem_of_pow Y.Z.good i b (n := Nat.card (kP PP)ˣ) Nat.card_pos.ne' ?_
  apply (Y.Z.ρ.e i b).injective
  rw [map_pow, ← e2, ← Circle.coe_pow, hfin, Circle.coe_one, map_one]

theorem levLam_mem_coef : ∀ (D : D7) (X : RealSide D) (E : IntegralHeckeForms.XD D) (Y : SerSide X E) (i : D.ntw.Tw) (j : Fin D.R.m) (b : Bool)
    (k : (Y.Z.ρ.B i j b).levJ (Y.Z.ρ.tw i b 0 ∅ 1)),
    (((Y.Z.ρ.B i j b).levLam (Y.Z.ρ.tw i b 0 ∅ 1) k : ℂˣ) : ℂ) ∈ (Y.Z.ρ.eOk i b 0).range := by
  intro D X E Y i j b k
  rw [GlobalTheory.MtLatConj.levelCharacter_apply_eq_levelFunction_swap]
  simp only [levFn, Base.levS, Units.val_mul, Units.coe_prod]
  exact mul_mem (mul_mem (typeCharacterExtension_mem_range_coefficientRing Y i j b _) (prod_mem fun PP hPP => prod_mem fun _ _ => muC_mem Y i j b hPP _))
    (prod_mem fun PP _ => loc_mem Y i j b PP _)

end GlobalTheory.LamVal
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BaseLevelCharacterMemCoefficientRing =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ComplexFormsBaseLevelLeSpanIntegral =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ComplexFormsBaseLevelLeSpanIntegral", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnivChar\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SupportTermSubset\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BaseLevelCharacterMemCoefficientRing\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteAdelicPointLatticeIsLattice\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockHarmonicLatticeFgAndSpansValueSpace\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links IsDedekindDomain NumberField Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.ExportSeries GlobalTheory.SeriesTie GlobalTheory.TwInputs GlobalTheory.TwSys GlobalTheory.TwAll GlobalTheory.SupLaw GlobalTheory.LiftLeaf
open Formalism.MainNotions.IntegralHeckeForms (TwOK ClsQ HkIdx V0 Fm0 FullRk SgJ BasisOf)
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
set_option maxHeartbeats 1600000open Formalism.L2.Host (embLL0)

noncomputable section

namespace GlobalTheory.BaseSpan

variable {D : D7} {S T : HSp D}

theorem pq_le {B : Base S T} (hB : B.Good) (τ : D.what₂.Tau) : B.w.p τ + B.w.q τ ≤ T.rank := by
  obtain ⟨e, -⟩ := hB.sigOK (tauE D τ)
  rw [← hB.sig τ] at e
  have := Fintype.card_congr e
  simp only [Fintype.card_fin, Fintype.card_sum] at this
  omega

theorem coefLat_le_valSpace {B : Base S T} {K : Type} [Field K] [NumberField K] {σ : K →+* ℂ}
    {emb : D.what₂.Tau → (D.host.E →+* K)} {O : Subring ℂ} {y : Bridge.Gf S}
    (hspan : Submodule.span ℂ (B.coefLat σ emb O y : Set (PolF D T.rank S.rank)) = B.valSpace)
    {P : PolF D T.rank S.rank} (hP : P ∈ B.coefLat σ emb O y) : P ∈ B.valSpace :=
  hspan ▸ Submodule.subset_span hP

theorem tr_mem_mtLat {B : Base S T} (hB : B.Good) {K : Type} [Field K] [NumberField K] {σ : K →+* ℂ}
    {emb : D.what₂.Tau → (D.host.E →+* K)} {O : Subring ℂ} (hc : IsCoefRing σ emb O) {ψ : Twist D Circle}
    (hlam : ∀ k, ((B.levLam ψ k : ℂˣ) : ℂ) ∈ O) {y : Bridge.Gf S}
    (hf : Finite (Bridge.stab (Bridge.ratF S) (B.levJ ψ) y))
    (hspan : Submodule.span ℂ (B.coefLat σ emb O y : Set (PolF D T.rank S.rank)) = B.valSpace)
    {P : PolF D T.rank S.rank} (hP : P ∈ B.coefLat σ emb O y) :
    GlobalTheory.LawTrace.tr (Bridge.ratF S) (B.act.comp (GQ S).subtype) (B.levJ ψ) (B.levLam ψ) y P ∈ B.mtLat σ emb O ψ := by
  refine (Base.mem_mtLat B σ emb O).2 ⟨Submodule.mem_inf.2 ⟨?_, GlobalTheory.LawTrace.mem_lawForms_tr hf P⟩, fun x => ?_⟩
  · refine Submodule.mem_pi.2 fun x _ => GlobalTheory.LawTrace.tr_mem hf P x B.valSpace fun γ h => ?_
    unfold GlobalTheory.LawTrace.term
    rw [dite_eq_left h]
    exact Submodule.smul_mem _ _ (Base.act_mem_valSpace _ (coefLat_le_valSpace hspan hP))
  · refine GlobalTheory.LawTrace.tr_mem hf P x (B.coefLat σ emb O x) fun γ h => ?_
    unfold GlobalTheory.LawTrace.term
    rw [dite_eq_left h]
    have hx : x = Bridge.ratF S γ * y * ((⟨_, h⟩ : B.levJ ψ) : Bridge.Gf S) := by
      change x = Bridge.ratF S γ * y * ((Bridge.ratF S γ * y)⁻¹ * x)
      group
    have h1 := Base.act_mem_coefLat hB.frame hc γ y _ (Base.mem_St_of_mem_levJ (B := B) h) hP
    rw [← hx] at h1
    have h2 := Submodule.smul_mem (B.coefLat σ emb O x) (⟨_, hlam ⟨_, h⟩⟩ : O) h1
    exact h2

end GlobalTheory.BaseSpan

namespace GlobalTheory.BaseSpan

theorem tw_one_good {D : D7} {ρ : Setup D.ntw} (i : D.ntw.Tw) (b : Bool) :
    (ρ.tw i b 0 ∅ 1).Good ∧ (ρ.tw i b 0 ∅ 1).Q = ∅ := by
  have hc : (ρ.tw i b 0 ∅ 1).chi = 1 := charOf_one _ _
  have hq : (ρ.tw i b 0 ∅ 1).Q = ∅ := half_empty _
  refine ⟨⟨?_, fun x => ?_, fun a => ?_, ?_, fun x _ _ _ _ => ?_, fun PP h => ?_⟩, hq⟩
  · rw [hc, MonoidHom.ker_one, Subgroup.coe_top]; exact isOpen_univ
  · rw [hc]; rfl
  · rw [hc]; rfl
  · rw [hq]; exact splitSet_empty
  · rw [hc]; rfl
  · rw [hq] at h; exact absurd h (Finset.notMem_empty _)

theorem formsC_le_span_mt : ∀ (D : D7) (X : RealSide D) (E : IntegralHeckeForms.XD D) (Y : SerSide X E) (i : D.ntw.Tw) (j : Fin D.R.m) (b : Bool),
    ∀ F ∈ (Y.Z.ρ.B i j b).formsC (Y.Z.ρ.tw i b 0 ∅ 1),
      F ∈ Submodule.span ℂ (Y.Z.ρ.mt i j b 0 ∅ 1 : Set (Bridge.Gf (Vc D j) → PolF D (Wc D j).rank (Vc D j).rank)) := by
  intro D X E Y i j b F hF
  have hρ : Y.Z.ρ.Good := Y.Z.good
  have hB : (Y.Z.ρ.B i j b).Good := hρ.base i j b
  obtain ⟨hψ, hψQ⟩ := tw_one_good (ρ := Y.Z.ρ) i b
  have hcls := hρ.classes i j b (Y.Z.ρ.tw i b 0 ∅ 1) hψ (by rw [hψQ]; exact Base.admissible_empty_of_good hB)
  have hlam : ∀ k, (((Y.Z.ρ.B i j b).levLam (Y.Z.ρ.tw i b 0 ∅ 1) k : ℂˣ) : ℂ) ∈ (Y.Z.ρ.eOk i b 0).range := fun k => _root_.GlobalTheory.LamVal.levLam_mem_coef D X E Y i j b k
  have hL := (Submodule.mem_inf.1 hF).2
  rw [GlobalTheory.LawTrace.eq_sum_tr hcls.reps hcls.stab hL]
  refine Submodule.sum_mem _ fun c _ => Submodule.smul_mem _ _ ?_
  have hspan : Submodule.span ℂ ((Y.Z.ρ.B i j b).coefLat (embLL0 D) (labLL0 D) (Y.Z.ρ.eOk i b 0).range
      (finPt (Vc D j) (Y.Z.ρ.rep i j b _ c)) : Set (PolF D (Wc D j).rank (Vc D j).rank)) = (Y.Z.ρ.B i j b).valSpace :=
    (GlobalTheory.ExportSeries.HarmLattice.harmLat_fg_span D (Wc D j).rank (Vc D j).rank (Y.Z.ρ.B i j b).w (Y.Z.ρ.B i j b).F.BS _
      (embLL0 D) (labLL0 D) _ _ hB.wt (pq_le hB) (hρ.isCoefRing_k i b 0)
      (GlobalTheory.LatFull.latAt_isFullLattice D Y.Z.ρ hρ i j b _)).2
  have hFy : F (finPt (Vc D j) (Y.Z.ρ.rep i j b _ c)) ∈ Submodule.span ℂ ((Y.Z.ρ.B i j b).coefLat (embLL0 D) (labLL0 D)
      (Y.Z.ρ.eOk i b 0).range (finPt (Vc D j) (Y.Z.ρ.rep i j b _ c)) : Set (PolF D (Wc D j).rank (Vc D j).rank)) := by
    rw [hspan]
    exact (Submodule.mem_pi.1 (Submodule.mem_inf.1 hF).1) _ trivial
  generalize F (finPt (Vc D j) (Y.Z.ρ.rep i j b _ c)) = v at hFy ⊢
  induction hFy using Submodule.span_induction with
  | mem P hP =>
    exact Submodule.subset_span (tr_mem_mtLat hB (hρ.isCoefRing_k i b 0) hlam (hcls.stab c) hspan hP)
  | zero =>
    rw [GlobalTheory.LawTrace.tr_zero]
    exact Submodule.zero_mem _
  | add P Q _ _ hP hQ =>
    rw [GlobalTheory.LawTrace.tr_add (hcls.stab c)]
    exact Submodule.add_mem _ hP hQ
  | smul a P _ hP =>
    rw [GlobalTheory.LawTrace.tr_smul]
    exact Submodule.smul_mem _ _ hP

end GlobalTheory.BaseSpan

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ComplexFormsBaseLevelLeSpanIntegral =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsLevelLiftBaseOfRealisationLift =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsLevelLiftBaseOfRealisationLift", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnivChar\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links IsDedekindDomain NumberField Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.ExportSeries GlobalTheory.SeriesTie GlobalTheory.TwInputs GlobalTheory.TwSys GlobalTheory.TwAll GlobalTheory.SupLaw GlobalTheory.LiftLeaf
open Formalism.MainNotions.IntegralHeckeForms (TwOK ClsQ HkIdx V0 Fm0 FullRk SgJ BasisOf)
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar


noncomputable section

namespace GlobalTheory.TwistLiftW

theorem isLevelLift_base_of_realisation_lift : ∀ (D : D7) (X : RealSide D) (E : IntegralHeckeForms.XD D) (Y : SerSide X E) (i : D.ntw.Tw) (j : Fin D.R.m) (b : Bool)
    (g : X.Γ) (κ : GA D (Wc D j)),
    Lev.IsLevelLift (Wc D j) (X.R.βW j) (X.R.datWp j X.R.triv) (X.R.eG g) κ →
    Lev.IsLevelLift (Wc D j) (Y.Z.ρ.B i j b).F.βT (Y.Z.ρ.B i j b).G.levT (Y.Z.ρ.eG i j b (X.cG (X.R.eG g))) κ := by
  intro D X E Y i j b g κ h
  have P := Y.Z.pin
  have rW : (Wc D j).rank = D.R.r := D.sp.W_rank _ (Nat.le_add_left _ _) j.2
  have hβ := P.frT i j b
  have hP := P.Pg i j b
  have tri : ∀ (PP : Pl D.host.E) (r t : ℕ), r = (Wc D j).rank → ∀ x : GL (Fin (Wc D j).rank) (kP PP),
      x ∈ blockTri (blkOf r t) := fun PP r t hr x => mem_blockTri.2 fun a c hac => by
    have ha : a.val < r := lt_of_lt_of_eq a.2 hr.symm
    have e : blkOf r t a = 0 := if_pos ha
    exact absurd (lt_of_lt_of_eq hac e) (Nat.not_lt_zero _)
  refine ⟨h.1, mem_parLev.2 ⟨parLev_UA h.2.1, ?_, fun PP _ => tri PP _ _ rfl _,
    fun PP hPP => absurd hPP (Finset.notMem_empty _)⟩, ?_⟩
  · rw [hβ]; exact parLev_St h.2.1
  · funext PP
    obtain ⟨PP, hPP⟩ := PP
    have hPP' : PP ∈ X.R.Pg := hP ▸ hPP
    refine Units.ext (Matrix.ext fun a c => ?_)
    have e1 := P.grp i j b (X.cG (X.R.eG g)) PP hPP hPP' a c
    rw [MulEquiv.symm_apply_apply] at e1
    refine Eq.trans ?_ e1.symm
    rw [← h.2.2, hβ]
    have e2 := upper_block_val_submatrix (le_refl _) (blockTri_blkOf_le _ 1 (tri PP _ 1 rfl (redFn (X.R.βW j) PP (Lev.finE (Wc D j) κ))))
    have e3 := upper_block_val_submatrix rW.ge (blockTri_blkOf_le _ 1 (tri PP _ 1 rW.symm (redFn (X.R.βW j) PP (Lev.finE (Wc D j) κ))))
    exact (congrFun (congrFun e2 a) c).trans (congrFun (congrFun e3 (Fin.cast rW a)) (Fin.cast rW c)).symm

end GlobalTheory.TwistLiftW

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsLevelLiftBaseOfRealisationLift =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsLevelLiftBaseOfRealisationLiftStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsLevelLiftBaseOfRealisationLiftStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnivChar\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsLevelLiftBaseOfRealisationLift\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links IsDedekindDomain NumberField Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.ExportSeries GlobalTheory.SeriesTie GlobalTheory.TwInputs GlobalTheory.TwSys GlobalTheory.TwAll GlobalTheory.SupLaw GlobalTheory.LiftLeaf
open Formalism.MainNotions.IntegralHeckeForms (TwOK ClsQ HkIdx V0 Fm0 FullRk SgJ BasisOf)
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar


theorem _root_.GlobalTheory.T.isLevelLift_of_isLevelLift_realisation : ∀ (D : D7) (X : RealSide D) (E : IntegralHeckeForms.XD D) (Y : SerSide X E) (i : D.ntw.Tw) (j : Fin D.R.m) (b : Bool)
    (g : X.Γ) (κ : GA D (Wc D j)),
    Lev.IsLevelLift (Wc D j) (X.R.βW j) (X.R.datWp j X.R.triv) (X.R.eG g) κ →
    Lev.IsLevelLift (Wc D j) (Y.Z.ρ.B i j b).F.βT (Y.Z.ρ.B i j b).G.levT (Y.Z.ρ.eG i j b (X.cG (X.R.eG g))) κ := by
  first | exact @GlobalTheory.TwistLiftW.isLevelLift_base_of_realisation_lift
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsLevelLiftBaseOfRealisationLiftStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TrivialTwistBaseLevelEqTupleParahoric =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TrivialTwistBaseLevelEqTupleParahoric", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnivChar\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.SqEqOneOfFixDat\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BaseOfOfPin\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links IsDedekindDomain NumberField Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.ExportSeries GlobalTheory.SeriesTie GlobalTheory.TwInputs GlobalTheory.TwSys GlobalTheory.TwAll GlobalTheory.SupLaw GlobalTheory.LiftLeaf
open Formalism.MainNotions.IntegralHeckeForms (TwOK ClsQ HkIdx V0 Fm0 FullRk SgJ BasisOf)
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar


theorem GlobalTheory.TrivTwistLevel.levS_triv_iff_and_levFn : ∀ (D : D7) (X : RealSide D) (E : IntegralHeckeForms.XD D) (Y : SerSide X E) (i : D.ntw.Tw) (j : Fin D.R.m) (b : Bool) (t : X.T),
    X.R.xi t = (Y.Z.ρ.B i j b).de.chi → X.R.Q t = (Y.Z.ρ.B i j b).de.Q →
    ∀ x : GL (Fin (Vc D j).rank) (Lev.EAf D),
      (x ∈ lev D.sp.cm (Vc D j).gram (Y.Z.ρ.B i j b).F.βS ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)) ↔
        x ∈ parLev D.sp.cm (Vc D j).gram (X.R.βV j) (X.R.datVt j t) ∧
          X.cG (rTup (X.R.βV j) (X.R.datVt j t) x) ∈ D.nexp.U) ∧
      ∀ (hx : x ∈ parLev D.sp.cm (Vc D j).gram (X.R.βV j) (X.R.datVt j t))
        (hu : X.cG (rTup (X.R.βV j) (X.R.datVt j t) x) ∈ D.nexp.U),
        ((levFn (Y.Z.ρ.B i j b).F.βS ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)) x : ℂˣ) : ℂ) =
          ((levFn (X.R.βV j) (Lev.flagL (X.R.datVt j t)) x : ℂˣ) : ℂ) *
            Y.Z.ρ.e i b ((D.nexp.psiU i b ⟨_, hu⟩ : (FractionRing (D.ntw.O i))ˣ) : FractionRing (D.ntw.O i)) := by
  classical
  intro D X E Y i j b t h1 h2 x
  have hB := Y.Z.good.base i j b
  have hbo := GlobalTheory.PinBase.baseOf_of_pin D X Y.Z.ρ Y.Z.good Y.Z.pin i j b
  have hL : X.R.toLevCh.Is X.A3.A.μ0 := X.char.lev
  have hQe : (Y.Z.ρ.tw i b 0 ∅ 1).Q = ∅ := half_empty _
  have hce : (Y.Z.ρ.tw i b 0 ∅ 1).chi = 1 := charOf_one _ _
  have hψ : (Y.Z.ρ.tw i b 0 ∅ 1).Good := by
    have g0 := Twist.triv_good (D := D) (A := Circle) splitSet_empty
    refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩
    · rw [hce]; exact g0.isOpen
    · rw [hce]; exact g0.rat
    · rw [hce]; exact g0.real
    · rw [hQe]; exact g0.split
    · rw [hce, hQe]; exact g0.unram
    · rw [hQe]; intro PP hPP; exact absurd hPP (Finset.notMem_empty _)
  have hAdm : (Y.Z.ρ.B i j b).admitted (Y.Z.ρ.tw i b 0 ∅ 1).Q := by
    rw [hQe]
    exact ⟨by rw [Finset.union_empty]; exact hB.places, Finset.disjoint_empty_right _⟩
  have ht : GlobalTheory.ConjTwist.IsTupOf X.R.toRealDat (Y.Z.ρ.B i j b) (Y.Z.ρ.tw i b 0 ∅ 1) t :=
    ⟨by rw [hce, mul_one]; exact h1, by rw [hQe, Finset.union_empty]; exact h2⟩
  obtain ⟨hPg, hQ, hcg, hxq⟩ := GlobalTheory.ConjTwist.Test.levS_chars hbo hL hB hψ hAdm ht
  have rV : (Vc D j).rank = D.R.r + D.R.t := D.sp.V_rank _ (Nat.le_add_left _ _) j.2
  have rW : (Wc D j).rank = D.R.r := D.sp.W_rank _ (Nat.le_add_left _ _) j.2
  have htW : (Vc D j).rank - (Wc D j).rank = D.R.t := by omega
  have eβ : (Y.Z.ρ.B i j b).F.βS = X.R.βV j := hbo.βS
  have ebo : blkOf ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)).r ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)).t =
      blkOf (n := (Vc D j).rank) (X.R.datVt j t).r (X.R.datVt j t).t := by
    show blkOf (Wc D j).rank ((Vc D j).rank - (Wc D j).rank) = blkOf D.R.r D.R.t
    rw [htW, rW]
  have eb2 : blk2 (n := (Vc D j).rank) ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)).r = blk2 (X.R.datVt j t).r := by
    show blk2 (Wc D j).rank = blk2 D.R.r
    rw [rW]
  have hpar : ∀ y, y ∈ parLev D.sp.cm (Vc D j).gram (Y.Z.ρ.B i j b).F.βS ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)) ↔
      y ∈ parLev D.sp.cm (Vc D j).gram (X.R.βV j) (X.R.datVt j t) := by
    intro y
    rw [mem_parLev, mem_parLev, eβ, ebo, eb2, hPg, hQ]

  have hrt : ∀ y (hy : y ∈ parLev D.sp.cm (Vc D j).gram (X.R.βV j) (X.R.datVt j t)),
      rTup (Y.Z.ρ.B i j b).F.βS ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)) y =
        Y.Z.ρ.eG i j b (X.cG (rTup (X.R.βV j) (X.R.datVt j t) y)) := by
    intro y hy
    have hy' := (hpar y).2 hy
    funext PP
    obtain ⟨P, hP⟩ := PP
    have h' : P ∈ X.R.Pg := by rw [← hbo.Pg]; exact hP
    apply Units.ext
    ext a c
    have hg := Y.Z.pin.grp i j b (X.cG (rTup (X.R.βV j) (X.R.datVt j t) y)) P hP h' a c
    refine Eq.trans ?_ hg.symm
    have m1 := blockTri_blkOf_le _ _ (parLev_g hy' hP)
    have m2 := blockTri_blkOf_le _ _ (parLev_g hy h')
    have hz := X.cG.symm_apply_apply (rTup (X.R.βV j) (X.R.datVt j t) y)
    rw [hz]
    simp only [rTup]
    rw [upper_block_val_submatrix _ m1, upper_block_val_submatrix _ m2]
    simp only [Matrix.submatrix_apply]
    rw [eβ]
    rfl

  refine ⟨?_, ?_⟩
  · rw [mem_lev, hpar x]
    constructor
    · rintro ⟨hx, hr⟩
      refine ⟨hx, ?_⟩
      rw [hrt x hx] at hr
      exact ((Y.Z.tie i j b).U_eq _).1 hr
    · rintro ⟨hx, hu⟩
      refine ⟨hx, ?_⟩
      rw [hrt x hx]
      exact ((Y.Z.tie i j b).U_eq _).2 hu
  · intro hx hu
    have hmem : Y.Z.ρ.eG i j b (X.cG (rTup (X.R.βV j) (X.R.datVt j t) x)) ∈ (Y.Z.ρ.B i j b).G.P.H :=
      ((Y.Z.tie i j b).U_eq _).2 hu
    have hmem' : rTup (Y.Z.ρ.B i j b).F.βS ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)) x ∈
        ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)).P.H := by
      rw [hrt x hx]; exact hmem
    have f1 : ext1 ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)).P.H ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)).P.chi
        (rTup (Y.Z.ρ.B i j b).F.βS ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)) x) =
        (Y.Z.ρ.B i j b).G.P.chi ⟨_, hmem⟩ := by
      rw [extendOne_of_mem _ hmem']
      congr 1
      exact Subtype.ext (hrt x hx)
    have f1' : ext1 (Lev.flagL (X.R.datVt j t)).P.H (Lev.flagL (X.R.datVt j t)).P.chi
        (rTup (X.R.βV j) (Lev.flagL (X.R.datVt j t)) x) = 1 := by
      rw [extendOne_of_mem _ (show _ ∈ (Lev.flagL (X.R.datVt j t)).P.H from Subgroup.mem_top _)]
      rfl
    have f2 : (∏ PP ∈ ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)).Pg,
        ∏ c ∈ Finset.range ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)).s,
          ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)).cg (c + 1) PP
            (dBlk (blkOf ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)).r ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)).t) (c + 1)
              (redFn (Y.Z.ρ.B i j b).F.βS PP x))) =
        ∏ PP ∈ (Lev.flagL (X.R.datVt j t)).Pg, ∏ c ∈ Finset.range (Lev.flagL (X.R.datVt j t)).s,
          (Lev.flagL (X.R.datVt j t)).cg (c + 1) PP
            (dBlk (blkOf (Lev.flagL (X.R.datVt j t)).r (Lev.flagL (X.R.datVt j t)).t) (c + 1) (redFn (X.R.βV j) PP x)) := by
      refine Finset.prod_congr hPg fun PP hP => Finset.prod_congr rfl fun c _ => ?_
      have h' : PP ∈ X.R.Pg := hP
      rw [hcg _ PP h', ebo, eβ]
      rfl
    have f3 : (∏ PP ∈ ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)).Q,
          ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)).xq PP
            (dBlk (blk2 ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)).r) 1 (redFn (Y.Z.ρ.B i j b).F.βS PP x))) =
        ∏ PP ∈ (Lev.flagL (X.R.datVt j t)).Q,
          (Lev.flagL (X.R.datVt j t)).xq PP (dBlk (blk2 (Lev.flagL (X.R.datVt j t)).r) 1 (redFn (X.R.βV j) PP x)) := by
      refine Finset.prod_congr hQ fun PP hP => ?_
      have h' : PP ∈ X.R.Q t := hP
      rw [hxq PP h', eb2, eβ]
      rfl
    unfold levFn
    rw [f1, f1', f2, f3, Units.val_mul, Units.val_mul, Units.val_mul, Units.val_mul, Units.val_one,
      (Y.Z.tie i j b).psiU_eq ⟨_, hu⟩ hmem]
    ring
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TrivialTwistBaseLevelEqTupleParahoric =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TrivialTwistBaseLevelEqTupleParahoricStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TrivialTwistBaseLevelEqTupleParahoricStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnivChar\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TrivialTwistBaseLevelEqTupleParahoric\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links IsDedekindDomain NumberField Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.ExportSeries GlobalTheory.SeriesTie GlobalTheory.TwInputs GlobalTheory.TwSys GlobalTheory.TwAll GlobalTheory.SupLaw GlobalTheory.LiftLeaf
open Formalism.MainNotions.IntegralHeckeForms (TwOK ClsQ HkIdx V0 Fm0 FullRk SgJ BasisOf)
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar


theorem _root_.GlobalTheory.T.trivialTwist_baseLevel_eq_tuple_parahoric : ∀ (D : D7) (X : RealSide D) (E : IntegralHeckeForms.XD D) (Y : SerSide X E) (i : D.ntw.Tw) (j : Fin D.R.m) (b : Bool) (t : X.T),
    X.R.xi t = (Y.Z.ρ.B i j b).de.chi → X.R.Q t = (Y.Z.ρ.B i j b).de.Q →
    ∀ x : GL (Fin (Vc D j).rank) (Lev.EAf D),
      (x ∈ lev D.sp.cm (Vc D j).gram (Y.Z.ρ.B i j b).F.βS ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)) ↔
        x ∈ parLev D.sp.cm (Vc D j).gram (X.R.βV j) (X.R.datVt j t) ∧
          X.cG (rTup (X.R.βV j) (X.R.datVt j t) x) ∈ D.nexp.U) ∧
      ∀ (hx : x ∈ parLev D.sp.cm (Vc D j).gram (X.R.βV j) (X.R.datVt j t))
        (hu : X.cG (rTup (X.R.βV j) (X.R.datVt j t) x) ∈ D.nexp.U),
        ((levFn (Y.Z.ρ.B i j b).F.βS ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)) x : ℂˣ) : ℂ) =
          ((levFn (X.R.βV j) (Lev.flagL (X.R.datVt j t)) x : ℂˣ) : ℂ) *
            Y.Z.ρ.e i b ((D.nexp.psiU i b ⟨_, hu⟩ : (FractionRing (D.ntw.O i))ˣ) : FractionRing (D.ntw.O i)) := by
  first | exact @GlobalTheory.TrivTwistLevel.levS_triv_iff_and_levFn
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TrivialTwistBaseLevelEqTupleParahoricStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ProjectedLiftUnipotentTypeBaseLevelForm =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ProjectedLiftUnipotentTypeBaseLevelForm", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnivChar\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PlacesApart\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsLevelLiftBaseOfRealisationLiftStatement\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TrivialTwistBaseLevelEqTupleParahoricStatement\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ThetaProjectionIntertwinesLevelLiftsStatement\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.TranslateUnitaryLifts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.NormalFam\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links IsDedekindDomain NumberField Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.ExportSeries GlobalTheory.SeriesTie GlobalTheory.TwInputs GlobalTheory.TwSys GlobalTheory.TwAll GlobalTheory.SupLaw GlobalTheory.LiftLeaf
open Formalism.MainNotions.IntegralHeckeForms (TwOK ClsQ HkIdx V0 Fm0 FullRk SgJ BasisOf)
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar


namespace GlobalTheory.AvgLevel
open Formalism.IndefR.Lev

theorem levels_V : ∀ (D : D7) (X : RealSide D) (E : IntegralHeckeForms.XD D) (Y : SerSide X E) (i : D.ntw.Tw) (j : Fin D.R.m) (b : Bool) (t : X.T),
    X.R.xi t = (Y.Z.ρ.B i j b).de.chi → X.R.Q t = (Y.Z.ρ.B i j b).de.Q →
    ∀ x : GL (Fin (Vc D j).rank) (Lev.EAf D),
      (x ∈ lev D.sp.cm (Vc D j).gram (Y.Z.ρ.B i j b).F.βS ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)) ↔
        x ∈ parLev D.sp.cm (Vc D j).gram (X.R.βV j) (X.R.datVt j t) ∧
          X.cG (rTup (X.R.βV j) (X.R.datVt j t) x) ∈ D.nexp.U) ∧
      ∀ (hx : x ∈ parLev D.sp.cm (Vc D j).gram (X.R.βV j) (X.R.datVt j t))
        (hu : X.cG (rTup (X.R.βV j) (X.R.datVt j t) x) ∈ D.nexp.U),
        ((levFn (Y.Z.ρ.B i j b).F.βS ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)) x : ℂˣ) : ℂ) =
          ((levFn (X.R.βV j) (Lev.flagL (X.R.datVt j t)) x : ℂˣ) : ℂ) *
            Y.Z.ρ.e i b ((D.nexp.psiU i b ⟨_, hu⟩ : (FractionRing (D.ntw.O i))ˣ) : FractionRing (D.ntw.O i)) := GlobalTheory.T.trivialTwist_baseLevel_eq_tuple_parahoric

theorem liftW_transport : ∀ (D : D7) (X : RealSide D) (E : IntegralHeckeForms.XD D) (Y : SerSide X E) (i : D.ntw.Tw) (j : Fin D.R.m) (b : Bool)
    (g : X.Γ) (κ : GA D (Wc D j)),
    Lev.IsLevelLift (Wc D j) (X.R.βW j) (X.R.datWp j X.R.triv) (X.R.eG g) κ →
    Lev.IsLevelLift (Wc D j) (Y.Z.ρ.B i j b).F.βT (Y.Z.ρ.B i j b).G.levT (Y.Z.ρ.eG i j b (X.cG (X.R.eG g))) κ := GlobalTheory.T.isLevelLift_of_isLevelLift_realisation

theorem levChi_W_one {D : D7} (X : RealSide D) (j : Fin D.R.m) (κ : GA D (Wc D j)) :
    levChi (Wc D j) (X.R.βW j) (flagL (X.R.datWp j X.R.triv)) κ = 1 := by
  unfold levChi levFn
  simp [flagL, withP, Formalism.IndefR.Links.LevCh.datWp, datY, LevelP.full]
  exact _root_.Formalism.IndefR.Lev.subgroupCharExtension_one_apply _ _

theorem levFn_flag {D : D7} {n : ℕ} (β : GL (Fin n) (Lev.EAf D)) (L : LevDat D.host.E ℂ n) (x : GL (Fin n) (Lev.EAf D)) :
    levFn β (flagL L) x = levFn β (flag1L L) x := by
  unfold levFn
  simp [flagL, flag1L, withP, LevelP.full, LevelP.triv]
  exact (_root_.Formalism.IndefR.Lev.subgroupCharExtension_one_apply _ _).trans (_root_.Formalism.IndefR.Lev.subgroupCharExtension_one_apply _ _).symm

theorem hmod_sum {G W ι : Type} [Fintype ι] [NormedAddCommGroup W] [InnerProductSpace ℂ W] (M : Formalism.IndefR.Links.HMod (G → W))
    (a : ι → ℂ) (y : ι → M.H) (h : G) : M.e (∑ g, a g • y g) h = ∑ g, a g • M.e (y g) h := by

  simp [map_sum, Finset.sum_apply]

theorem avg_law {G H W : Type} [Group G] [Fintype G] [Mul H] [AddCommGroup W] [Module ℂ W]
    (inU : G → Prop) [DecidablePred inU] (N : ℂ) (Λ : G → ℂ) (f : H → W) (r : G → H) (h k : H) (gk : G)
    (hgk : ∀ g, inU (gk * g) ↔ inU g) (lamk : ℂ) (hΛ : ∀ g, Λ g ≠ 0)
    (key : ∀ g, inU g → f (h * k * r g) = ((Λ (gk * g))⁻¹ * lamk * Λ g) • f (h * r (gk * g))) :
    ∑ g, (if inU g then N * (Λ g)⁻¹ else 0) • f (h * k * r g) =
      lamk • ∑ g, (if inU g then N * (Λ g)⁻¹ else 0) • f (h * r g) := by
  rw [Finset.smul_sum]
  rw [← Fintype.sum_equiv (Equiv.mulLeft gk) (fun g => lamk • ((if inU (gk * g) then N * (Λ (gk * g))⁻¹ else 0) •
    f (h * r (gk * g)))) (fun g => lamk • ((if inU g then N * (Λ g)⁻¹ else 0) • f (h * r g))) (fun _ => rfl)]
  refine Finset.sum_congr rfl fun g _ => ?_
  by_cases hg : inU g
  · rw [if_pos hg, if_pos ((hgk g).2 hg), key g hg, smul_smul, smul_smul]
    congr 1
    field_simp [hΛ g, hΛ (gk * g)]
  · rw [if_neg hg, if_neg (fun h' => hg ((hgk g).1 h')), zero_smul, zero_smul, smul_zero]

theorem avg_value {G : Type} [Fintype G] (inU : G → Prop) [DecidablePred inU] (Λ lc ev : G → ℂ) (F : ℂ)
    (hlc : ∀ g, lc g ≠ 0) (hev : ∀ g, inU g → Λ g = lc g * ev g) (hev0 : ∀ g, inU g → ev g ≠ 0)
    (hN : ((Finset.univ.filter inU).card : ℂ) ≠ 0) :
    ∑ g, (if inU g then ((Finset.univ.filter inU).card : ℂ)⁻¹ * (Λ g)⁻¹ * lc g else 0) * (ev g * F) = F := by
  have e : ∀ g, (if inU g then ((Finset.univ.filter inU).card : ℂ)⁻¹ * (Λ g)⁻¹ * lc g else 0) * (ev g * F) =
      if inU g then ((Finset.univ.filter inU).card : ℂ)⁻¹ * F else 0 := by
    intro g
    by_cases hg : inU g
    · rw [if_pos hg, if_pos hg, hev g hg]
      field_simp [hlc g, hev0 g hg]
    · rw [if_neg hg, if_neg hg, zero_mul]
  rw [Finset.sum_congr rfl fun g _ => e g, ← Finset.sum_filter, Finset.sum_const, nsmul_eq_mul]
  field_simp

theorem adForms_law {G Γ W : Type} [Group G] [Group Γ] (ι : Γ →* G) [NormedAddCommGroup W] [InnerProductSpace ℂ W]
    (ρ : Γ →* Module.End ℂ W) (J : Subgroup G) (χ : J →* ℂˣ) (F : G → W) (hF : F ∈ Bridge.AdForms ι ρ J χ) (h : G)
    (q : J) : F (h * q) = ((χ q : ℂˣ) : ℂ) • F h := by
  have := hF 1 h q
  simpa using this

theorem hmod_comb {G W ι : Type} [Fintype ι] [Mul G] [NormedAddCommGroup W] [InnerProductSpace ℂ W]
    (inU : ι → Prop) [DecidablePred inU] (N : ℂ) (Λ lc : ι → ℂ) (hlc : ∀ g, lc g ≠ 0)
    (M : Formalism.IndefR.Links.HMod (G → W)) (y0 : M.H) (y' : ι → M.H) (r : ι → G)
    (hy : ∀ g h, M.e (y' g) h = (lc g)⁻¹ • M.e y0 (h * r g)) (h : G) :
    M.e (∑ g, (if inU g then N * (Λ g)⁻¹ * lc g else 0) • y' g) h =
      ∑ g, (if inU g then N * (Λ g)⁻¹ else 0) • M.e y0 (h * r g) := by
  rw [hmod_sum]
  refine Finset.sum_congr rfl fun g _ => ?_
  rw [hy, smul_smul]
  congr 1
  split_ifs
  · field_simp [hlc g]
  · simp

theorem psi_congr {D : D7} (i : D.ntw.Tw) (b : Bool) (e : FractionRing (D.ntw.O i) →+* ℂ) (u u' : G0g D.nd)
    (hu : u ∈ D.nexp.U) (hu' : u' ∈ D.nexp.U) (h : u = u') :
    e ((D.nexp.psiU i b ⟨u, hu⟩ : (FractionRing (D.ntw.O i))ˣ) : FractionRing (D.ntw.O i)) =
      e ((D.nexp.psiU i b ⟨u', hu'⟩ : (FractionRing (D.ntw.O i))ˣ) : FractionRing (D.ntw.O i)) := by
  subst h; rfl

theorem psi_one {D : D7} (i : D.ntw.Tw) (b : Bool) (e : FractionRing (D.ntw.O i) →+* ℂ) (u : G0g D.nd) (hu : u ∈ D.nexp.U)
    (h : u = 1) : e ((D.nexp.psiU i b ⟨u, hu⟩ : (FractionRing (D.ntw.O i))ˣ) : FractionRing (D.ntw.O i)) = 1 := by
  subst h
  have : (⟨1, hu⟩ : D.nexp.U) = 1 := rfl
  rw [this, map_one, Units.val_one, map_one]


theorem key_step (D : D7) (X : RealSide D) (E : IntegralHeckeForms.XD D) (Y : SerSide X E) (i : D.ntw.Tw) (j : Fin D.R.m) (b : Bool) (t : X.T)
    (hxi : X.R.xi t = (Y.Z.ρ.B i j b).de.chi) (hQ : X.R.Q t = (Y.Z.ρ.B i j b).de.Q) (y0 : (X.R.HV j t).H)
    (κ : X.Γ → GA D (Vc D j)) (hκ : ∀ g, IsLevelLift (Vc D j) (X.R.βV j) (X.R.datVt j t) (X.R.eG g) (κ g))
    (h : Bridge.Gf (Vc D j)) (k : (Y.Z.ρ.B i j b).levJ (Y.Z.ρ.tw i b 0 ∅ 1)) (gk g : X.Γ)
    (hgk : X.R.eG gk = rTup (X.R.βV j) (X.R.datVt j t) (Formalism.UG.bc (swapAE D) ((k : Bridge.Gf (Vc D j)) : GL _ _)))
    (hg : X.cG (X.R.eG g) ∈ D.nexp.U) (hg' : X.cG (X.R.eG (gk * g)) ∈ D.nexp.U) :
    (X.R.HV j t).e y0 (h * k * (finHom (Vc D j)).rangeRestrict (κ g)) =
      ((((levFn (Y.Z.ρ.B i j b).F.βS ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)) (finE (Vc D j) (κ (gk * g))) : ℂˣ) : ℂ))⁻¹ *
        ((levFn (Y.Z.ρ.B i j b).F.βS ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1))
          (Formalism.UG.bc (swapAE D) ((k : Bridge.Gf (Vc D j)) : GL _ _)) : ℂˣ) : ℂ) *
        ((levFn (Y.Z.ρ.B i j b).F.βS ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)) (finE (Vc D j) (κ g)) : ℂˣ) : ℂ)) •
      (X.R.HV j t).e y0 (h * (finHom (Vc D j)).rangeRestrict (κ (gk * g))) := by
  have hL := _root_.GlobalTheory.TrivTwistLevel.levS_triv_iff_and_levFn D X E Y i j b t hxi hQ
  have hxk : Formalism.UG.bc (swapAE D) ((k : Bridge.Gf (Vc D j)) : GL _ _) ∈
      lev D.sp.cm (Vc D j).gram (Y.Z.ρ.B i j b).F.βS ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)) := k.2
  have hxkP := ((hL _).1.1 hxk).1
  have haP := (hκ (gk * g)).2.1
  have hcP := (hκ g).2.1
  have haL := (hL (finE (Vc D j) (κ (gk * g)))).1.2 ⟨haP, by rw [(hκ (gk * g)).2.2]; exact hg'⟩
  have hcL := (hL (finE (Vc D j) (κ g))).1.2 ⟨hcP, by rw [(hκ g).2.2]; exact hg⟩
  have hbq : Formalism.UG.bc (swapAE D) ((finHom (Vc D j)).range.subtype (((finHom (Vc D j)).rangeRestrict (κ (gk * g)))⁻¹ *
      (k : Bridge.Gf (Vc D j)) * (finHom (Vc D j)).rangeRestrict (κ g))) =
      (finE (Vc D j) (κ (gk * g)))⁻¹ * Formalism.UG.bc (swapAE D) ((k : Bridge.Gf (Vc D j)) : GL _ _) * finE (Vc D j) (κ g) := by
    simp only [Subgroup.coe_subtype, map_mul, map_inv]
    rfl
  have hqP := mul_mem (mul_mem (inv_mem haP) hxkP) hcP
  have hqr : rTup (X.R.βV j) (X.R.datVt j t) ((finE (Vc D j) (κ (gk * g)))⁻¹ *
      Formalism.UG.bc (swapAE D) ((k : Bridge.Gf (Vc D j)) : GL _ _) * finE (Vc D j) (κ g)) = 1 := by
    have e2 : ((X.R.eG (gk * g))⁻¹ * X.R.eG gk * X.R.eG g : Formalism.L2.DIV.G0 X.R.Pg D.R.r) = 1 := by
      rw [map_mul, mul_inv_rev, mul_assoc, mul_assoc, inv_mul_cancel_left, inv_mul_cancel]
    refine Eq.trans ?_ e2
    rw [rTup_mul (mul_mem (inv_mem haP) hxkP) hcP, rTup_mul (inv_mem haP) hxkP, rTup_inv haP, (hκ _).2.2, (hκ g).2.2,
      ← hgk]
    rfl
  have hqJ : (((finHom (Vc D j)).rangeRestrict (κ (gk * g)))⁻¹ * (k : Bridge.Gf (Vc D j)) *
      (finHom (Vc D j)).rangeRestrict (κ g) : Bridge.Gf (Vc D j)) ∈ (levEnv (Vc D j) (X.R.βV j) (X.R.datVt j t)).J := by
    show Formalism.UG.bc (swapAE D) ((finHom (Vc D j)).range.subtype _) ∈ lev D.sp.cm (Vc D j).gram (X.R.βV j) (flag1L (X.R.datVt j t))
    rw [hbq]
    exact ⟨hqP, Subgroup.mem_bot.2 hqr⟩
  have hF := (X.char.models.HV j t).2.1.le (LinearMap.mem_range_self (X.R.HV j t).e y0)
  have law := adForms_law _ _ _ _ _ hF (h * (finHom (Vc D j)).rangeRestrict (κ (gk * g))) ⟨_, hqJ⟩
  have e1 : h * k * (finHom (Vc D j)).rangeRestrict (κ g) = h * (finHom (Vc D j)).rangeRestrict (κ (gk * g)) *
      (((finHom (Vc D j)).rangeRestrict (κ (gk * g)))⁻¹ * (k : Bridge.Gf (Vc D j)) * (finHom (Vc D j)).rangeRestrict (κ g)) := by
    simp [mul_assoc]
  rw [e1, law]
  congr 1
  have hχ : (((levEnv (Vc D j) (X.R.βV j) (X.R.datVt j t)).χ ⟨_, hqJ⟩ : ℂˣ) : ℂ) =
      ((levFn (X.R.βV j) (flag1L (X.R.datVt j t)) (Formalism.UG.bc (swapAE D) ((finHom (Vc D j)).range.subtype
        (((finHom (Vc D j)).rangeRestrict (κ (gk * g)))⁻¹ * (k : Bridge.Gf (Vc D j)) *
          (finHom (Vc D j)).rangeRestrict (κ g)))) : ℂˣ) : ℂ) := rfl
  rw [hχ, hbq, ← levFn_flag]
  have hc1 : ∀ z : Formalism.L2.DIV.G0 X.R.Pg D.R.r, z = 1 → X.cG z = 1 := by
    rintro _ rfl; exact map_one _
  have hu1 : X.cG (rTup (X.R.βV j) (X.R.datVt j t) ((finE (Vc D j) (κ (gk * g)))⁻¹ *
      Formalism.UG.bc (swapAE D) ((k : Bridge.Gf (Vc D j)) : GL _ _) * finE (Vc D j) (κ g))) ∈ D.nexp.U := by
    rw [hc1 _ hqr]; exact D.nexp.U.one_mem
  have c1 := (hL _).2 hqP hu1
  rw [psi_one i b _ _ hu1 (hc1 _ hqr), mul_one] at c1
  rw [← c1]
  have c2 : Formalism.L2.DIV.levChar D.sp.cm (Vc D j).gram (Y.Z.ρ.B i j b).F.βS ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1))
      (⟨_, haL⟩⁻¹ * ⟨_, hxk⟩ * ⟨_, hcL⟩) =
      (Formalism.L2.DIV.levChar D.sp.cm (Vc D j).gram (Y.Z.ρ.B i j b).F.βS ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)) ⟨_, haL⟩)⁻¹ *
        Formalism.L2.DIV.levChar D.sp.cm (Vc D j).gram (Y.Z.ρ.B i j b).F.βS ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)) ⟨_, hxk⟩ *
        Formalism.L2.DIV.levChar D.sp.cm (Vc D j).gram (Y.Z.ρ.B i j b).F.βS ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)) ⟨_, hcL⟩ := by
    simp only [map_mul, map_inv]
  have c3 : levFn (Y.Z.ρ.B i j b).F.βS ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)) ((finE (Vc D j) (κ (gk * g)))⁻¹ *
      Formalism.UG.bc (swapAE D) ((k : Bridge.Gf (Vc D j)) : GL _ _) * finE (Vc D j) (κ g)) =
      (levFn (Y.Z.ρ.B i j b).F.βS ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)) (finE (Vc D j) (κ (gk * g))))⁻¹ *
      levFn (Y.Z.ρ.B i j b).F.βS ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)) (Formalism.UG.bc (swapAE D) ((k : Bridge.Gf (Vc D j)) : GL _ _)) *
      levFn (Y.Z.ρ.B i j b).F.βS ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)) (finE (Vc D j) (κ g)) := by
    have hx : (((⟨_, haL⟩⁻¹ * ⟨_, hxk⟩ * ⟨_, hcL⟩ : Formalism.L2.DIV.lev D.sp.cm (Vc D j).gram (Y.Z.ρ.B i j b).F.βS
        ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)))) : GL _ _) = (finE (Vc D j) (κ (gk * g)))⁻¹ *
          Formalism.UG.bc (swapAE D) ((k : Bridge.Gf (Vc D j)) : GL _ _) * finE (Vc D j) (κ g) := by
      simp only [Subgroup.coe_mul, Subgroup.coe_inv]
    rw [← hx, ← Formalism.L2.DIV.levChar_apply, c2, Formalism.L2.DIV.levChar_apply, Formalism.L2.DIV.levChar_apply,
      Formalism.L2.DIV.levChar_apply]
  rw [c3, Units.val_mul, Units.val_mul, Units.val_inv_eq_inv_val]

theorem act_type (D : D7) (X : RealSide D) (E : IntegralHeckeForms.XD D) (Y : SerSide X E) (i : D.ntw.Tw) (j : Fin D.R.m) (b : Bool)
    (w : (X.R.HW j (sg0 D X.A3.A)).H)
    (hty : ∀ (u : G0g D.nd) (hu : u ∈ D.nexp.U) (κ : GA D (Wc D j)),
        Lev.IsLevelLift (Wc D j) (Y.Z.ρ.B i j b).F.βT (Y.Z.ρ.B i j b).G.levT (Y.Z.ρ.eG i j b u) κ → ∀ g,
        (X.R.HW j (sg0 D X.A3.A)).e w (X.geo.v₀ j _) (g * κ) =
          Y.Z.ρ.e i b ((D.nexp.psiU i b ⟨u, hu⟩ : (FractionRing (D.ntw.O i))ˣ) : FractionRing (D.ntw.O i)) *
          (X.R.HW j (sg0 D X.A3.A)).e w (X.geo.v₀ j _) g)
    (g : X.Γ) (hg : X.cG (X.R.eG g) ∈ D.nexp.U) (g' : GA D (Wc D j)) :
    (X.R.HW j (sg0 D X.A3.A)).e (X.R.gW j (sg0 D X.A3.A) g w) (X.geo.v₀ j _) g' =
      Y.Z.ρ.e i b ((D.nexp.psiU i b ⟨_, hg⟩ : (FractionRing (D.ntw.O i))ˣ) : FractionRing (D.ntw.O i)) *
        (X.R.HW j (sg0 D X.A3.A)).e w (X.geo.v₀ j _) g' := by
  have e1 := X.char.models.gW j (sg0 D X.A3.A) g w
  have e2 := congrFun (congrArg (fun U : Mult.MMap (X.R.MW j (sg0 D X.A3.A)) => U (X.geo.v₀ j _)) e1) g'
  refine e2.trans ?_
  have hk := (GlobalTheory.StepLifts.lifts_exist X.R.toRealDat X.char.lev j).2 (X.R.eG g)
  show actG0 (Wc D j) (X.R.βW j) (X.R.datWp j X.R.triv) (X.R.eG g) ((X.R.HW j (sg0 D X.A3.A)).e w (X.geo.v₀ j _)) g' = _
  unfold actG0
  rw [dite_eq_left hk, levChi_W_one, inv_one, one_mul]
  exact hty _ hg _ (_root_.GlobalTheory.TwistLiftW.isLevelLift_base_of_realisation_lift D X E Y i j b g _ hk.choose_spec) g'


theorem avg_level : ∀ (D : D7) (X : RealSide D) (E : IntegralHeckeForms.XD D) (Y : SerSide X E) (i : D.ntw.Tw) (j : Fin D.R.m) (b : Bool) (t : X.T),
    X.R.xi t = (Y.Z.ρ.B i j b).de.chi → X.R.Q t = (Y.Z.ρ.B i j b).de.Q → ∀ y0 : (X.R.HV j t).H,
    (∀ (u : G0g D.nd) (hu : u ∈ D.nexp.U) (κ : GA D (Wc D j)),
        Lev.IsLevelLift (Wc D j) (Y.Z.ρ.B i j b).F.βT (Y.Z.ρ.B i j b).G.levT (Y.Z.ρ.eG i j b u) κ → ∀ g,
        (X.R.HW j (sg0 D X.A3.A)).e (X.R.thG j t y0) (X.geo.v₀ j _) (g * κ) =
          Y.Z.ρ.e i b ((D.nexp.psiU i b ⟨u, hu⟩ : (FractionRing (D.ntw.O i))ˣ) : FractionRing (D.ntw.O i)) *
          (X.R.HW j (sg0 D X.A3.A)).e (X.R.thG j t y0) (X.geo.v₀ j _) g) →
    ∃ y : (X.R.HV j t).H, (∀ (h : Bridge.Gf (Vc D j)) (k : (Y.Z.ρ.B i j b).levJ (Y.Z.ρ.tw i b 0 ∅ 1)),
        (X.R.HV j t).e y (h * (k : Bridge.Gf (Vc D j))) = (((Y.Z.ρ.B i j b).levLam (Y.Z.ρ.tw i b 0 ∅ 1) k : ℂˣ) : ℂ) • (X.R.HV j t).e y h) ∧
      (X.R.HW j (sg0 D X.A3.A)).e (X.R.thG j t y) (X.geo.v₀ j _) = (X.R.HW j (sg0 D X.A3.A)).e (X.R.thG j t y0) (X.geo.v₀ j _) := by
  intro D X E Y i j b t hxi hQ y0 hty
  classical
  have hC : GlobalTheory.Hk3.Core X.R.toRealDat X.F.lv2 :=
    ⟨X.char.lev, X.char.grp, X.char.fam, X.char.models, X.char.chain, X.char.thP⟩
  have hL := _root_.GlobalTheory.TrivTwistLevel.levS_triv_iff_and_levFn D X E Y i j b t hxi hQ
  have hl := GlobalTheory.StepLifts.lifts_exist X.R.toRealDat X.char.lev j
  choose κ hκ using fun g : X.Γ => hl.1 t (X.R.eG g)
  choose y' hy' using fun g : X.Γ => GlobalTheory.translate_unitary_lifts X.R.toRealDat X.char.lev X.char.models.HV
    X.char.models.cV j t (X.R.eG g) (κ g) (hκ g) y0
  have hlc : ∀ g, levChi (Vc D j) (X.R.βV j) (flagL (X.R.datVt j t)) (κ g) ≠ 0 := fun g => levChi_ne_zero _ _
  have hΛ : ∀ g, ((levFn (Y.Z.ρ.B i j b).F.βS ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)) (finE (Vc D j) (κ g)) : ℂˣ) : ℂ) ≠ 0 := fun g => Units.ne_zero _
  refine ⟨∑ g, (if X.cG (X.R.eG g) ∈ D.nexp.U then ((Finset.univ.filter fun g => X.cG (X.R.eG g) ∈ D.nexp.U).card : ℂ)⁻¹ * (((levFn (Y.Z.ρ.B i j b).F.βS ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)) (finE (Vc D j) (κ g)) : ℂˣ) : ℂ))⁻¹ * levChi (Vc D j) (X.R.βV j) (flagL (X.R.datVt j t)) (κ g) else 0) • y' g,
    fun h k => ?_, ?_⟩
  · have hk := (hL _).1.1 k.2
    have hgk : X.R.eG (X.R.eG.symm (rTup (X.R.βV j) (X.R.datVt j t) (Formalism.UG.bc (swapAE D) ((k : Bridge.Gf (Vc D j)) : GL _ _)))) =
        rTup (X.R.βV j) (X.R.datVt j t) (Formalism.UG.bc (swapAE D) ((k : Bridge.Gf (Vc D j)) : GL _ _)) := X.R.eG.apply_symm_apply _
    have hcl' : ∀ gk : X.Γ, X.R.eG gk = rTup (X.R.βV j) (X.R.datVt j t)
        (Formalism.UG.bc (swapAE D) ((k : Bridge.Gf (Vc D j)) : GL _ _)) → ∀ g, X.cG (X.R.eG (gk * g)) ∈ D.nexp.U ↔ X.cG (X.R.eG g) ∈ D.nexp.U := by
      intro gk e g
      rw [map_mul, map_mul, e]
      exact ⟨fun h' => by simpa using D.nexp.U.mul_mem (D.nexp.U.inv_mem hk.2) h', fun h' => D.nexp.U.mul_mem hk.2 h'⟩
    have hcl := hcl' _ hgk
    refine (hmod_comb (fun g => X.cG (X.R.eG g) ∈ D.nexp.U) _ (fun g => ((levFn (Y.Z.ρ.B i j b).F.βS ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)) (finE (Vc D j) (κ g)) : ℂˣ) : ℂ)) (fun g => levChi (Vc D j) (X.R.βV j) (flagL (X.R.datVt j t)) (κ g)) hlc (X.R.HV j t) y0 y'
      (fun g => (finHom (Vc D j)).rangeRestrict (κ g)) (fun g h => (hy' g).1 h) (h * k)).trans ?_
    refine (avg_law (fun g => X.cG (X.R.eG g) ∈ D.nexp.U) _ (fun g => ((levFn (Y.Z.ρ.B i j b).F.βS ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)) (finE (Vc D j) (κ g)) : ℂˣ) : ℂ)) ((X.R.HV j t).e y0) (fun g => (finHom (Vc D j)).rangeRestrict (κ g))
      h k _ hcl _ hΛ (fun g hg => key_step D X E Y i j b t hxi hQ y0 κ hκ h k _ g hgk hg ((hcl g).2 hg))).trans ?_
    exact congrArg (fun z => _ • z) (hmod_comb (fun g => X.cG (X.R.eG g) ∈ D.nexp.U) _ (fun g => ((levFn (Y.Z.ρ.B i j b).F.βS ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)) (finE (Vc D j) (κ g)) : ℂˣ) : ℂ)) (fun g => levChi (Vc D j) (X.R.βV j) (flagL (X.R.datVt j t)) (κ g)) hlc (X.R.HV j t) y0 y'
      (fun g => (finHom (Vc D j)).rangeRestrict (κ g)) (fun g h => (hy' g).1 h) h).symm
  · have e1 : X.R.thG j t (∑ g, (if X.cG (X.R.eG g) ∈ D.nexp.U then ((Finset.univ.filter fun g => X.cG (X.R.eG g) ∈ D.nexp.U).card : ℂ)⁻¹ * (((levFn (Y.Z.ρ.B i j b).F.βS ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)) (finE (Vc D j) (κ g)) : ℂˣ) : ℂ))⁻¹ * levChi (Vc D j) (X.R.βV j) (flagL (X.R.datVt j t)) (κ g) else 0) • y' g) =
        ∑ g, (if X.cG (X.R.eG g) ∈ D.nexp.U then ((Finset.univ.filter fun g => X.cG (X.R.eG g) ∈ D.nexp.U).card : ℂ)⁻¹ * (((levFn (Y.Z.ρ.B i j b).F.βS ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)) (finE (Vc D j) (κ g)) : ℂˣ) : ℂ))⁻¹ * levChi (Vc D j) (X.R.βV j) (flagL (X.R.datVt j t)) (κ g) else 0) •
          X.R.gW j (sg0 D X.A3.A) g (X.R.thG j t y0) := by

      rw [map_sum]
      refine Finset.sum_congr rfl fun g _ => ?_
      rw [map_smul, GlobalTheory.T.thetaProjection_intertwines_levelLifts X.R.toRealDat X.F.lv2 hC j t g (κ g) (hκ g) y0 (y' g) (hy' g).1]
    rw [e1]
    funext g'

    simp only [map_sum, map_smul, MultilinearMap.sum_apply, MultilinearMap.smul_apply, Finset.sum_apply, Pi.smul_apply, smul_eq_mul]
    have hN : ((Finset.univ.filter fun g => X.cG (X.R.eG g) ∈ D.nexp.U).card : ℂ) ≠ 0 := by
      have h1 : X.cG (X.R.eG 1) ∈ D.nexp.U := by rw [map_one, map_one]; exact D.nexp.U.one_mem
      exact Nat.cast_ne_zero.2 (Finset.card_pos.2 ⟨1, by simpa using h1⟩).ne'
    have hev : ∀ g, X.cG (X.R.eG g) ∈ D.nexp.U → ((levFn (Y.Z.ρ.B i j b).F.βS ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)) (finE (Vc D j) (κ g)) : ℂˣ) : ℂ) = levChi (Vc D j) (X.R.βV j) (flagL (X.R.datVt j t)) (κ g) * (if h : X.cG (X.R.eG g) ∈ D.nexp.U then Y.Z.ρ.e i b ((D.nexp.psiU i b ⟨_, h⟩ : (FractionRing (D.ntw.O i))ˣ) : FractionRing (D.ntw.O i)) else 1) := by
      intro g hg
      rw [dite_eq_left hg]
      have hu : X.cG (rTup (X.R.βV j) (X.R.datVt j t) (finE (Vc D j) (κ g))) ∈ D.nexp.U := by
        rw [(hκ g).2.2]; exact hg
      refine ((hL (finE (Vc D j) (κ g))).2 (hκ g).2.1 hu).trans ?_
      congr 1
      exact psi_congr i b _ _ _ hu hg (congrArg X.cG (hκ g).2.2)
    have hev0 : ∀ g, X.cG (X.R.eG g) ∈ D.nexp.U → (if h : X.cG (X.R.eG g) ∈ D.nexp.U then Y.Z.ρ.e i b ((D.nexp.psiU i b ⟨_, h⟩ : (FractionRing (D.ntw.O i))ˣ) : FractionRing (D.ntw.O i)) else 1) ≠ 0 := by
      intro g hg
      rw [dite_eq_left hg]
      exact (map_ne_zero _).2 (Units.ne_zero _)
    refine (Finset.sum_congr rfl fun g _ => ?_).trans (avg_value (fun g => X.cG (X.R.eG g) ∈ D.nexp.U) (fun g => ((levFn (Y.Z.ρ.B i j b).F.βS ((Y.Z.ρ.B i j b).levS (Y.Z.ρ.tw i b 0 ∅ 1)) (finE (Vc D j) (κ g)) : ℂˣ) : ℂ)) (fun g => levChi (Vc D j) (X.R.βV j) (flagL (X.R.datVt j t)) (κ g))
      (fun g => (if h : X.cG (X.R.eG g) ∈ D.nexp.U then Y.Z.ρ.e i b ((D.nexp.psiU i b ⟨_, h⟩ : (FractionRing (D.ntw.O i))ˣ) : FractionRing (D.ntw.O i)) else 1)) _ hlc hev hev0 hN)
    by_cases hg : X.cG (X.R.eG g) ∈ D.nexp.U
    · rw [act_type D X E Y i j b _ hty g hg g', dite_eq_left hg]
    · simp only [if_neg hg, zero_mul]

end GlobalTheory.AvgLevel

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ProjectedLiftUnipotentTypeBaseLevelForm =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockReadingTranslatedFormMemComplexForms =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockReadingTranslatedFormMemComplexForms", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnivChar\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExtensionOfLowSmoothLines\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ActOfMemGfC\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BaseOfOfPin\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsIsScaleOfChar\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.PureTensorOSmul\nimport Development.AbelianVarietyTheory.Proofs.UnitaryExistence.AdelicUnitaryEqRealMulFiniteSplit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.NormalFam\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ToUnitsCompToCircle\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links IsDedekindDomain NumberField Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.ExportSeries GlobalTheory.SeriesTie GlobalTheory.TwInputs GlobalTheory.TwSys GlobalTheory.TwAll GlobalTheory.SupLaw GlobalTheory.LiftLeaf
open Formalism.MainNotions.IntegralHeckeForms (TwOK ClsQ HkIdx V0 Fm0 FullRk SgJ BasisOf)
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section

namespace GlobalTheory.FockReadForms

theorem fockRead_mem_formsC : ∀ (D : D7) (X : RealSide D) (E : IntegralHeckeForms.XD D) (Y : SerSide X E) (i : D.ntw.Tw) (j : Fin D.R.m) (b : Bool) (t : X.T),
    X.R.xi t = (Y.Z.ρ.B i j b).de.chi → X.R.Q t = (Y.Z.ρ.B i j b).de.Q → ∀ y : (X.R.HV j t).H,
    (∀ (h : Bridge.Gf (Vc D j)) (k : (Y.Z.ρ.B i j b).levJ (Y.Z.ρ.tw i b 0 ∅ 1)),
        (X.R.HV j t).e y (h * (k : Bridge.Gf (Vc D j))) = (((Y.Z.ρ.B i j b).levLam (Y.Z.ρ.tw i b 0 ∅ 1) k : ℂˣ) : ℂ) • (X.R.HV j t).e y h) →
    ∀ (u : ∀ ρ, lowT (X.R.MW j (sg0 D X.A3.A)) ρ),
      (fun ρ => (u ρ : ↥((X.R.MW j (sg0 D X.A3.A)).sm ρ))) = X.geo.v₀ j (sg0 D X.A3.A) →
    ∀ (z : Bridge.Gf (Vc D j)), z ∈ Subgroup.center (Bridge.Gf (Vc D j)) →
    (fun h => X.R.ioP j (PiTensorProduct.tprod ℂ u) ((X.R.HV j t).e y (h * z))) ∈ (Y.Z.ρ.B i j b).formsC (Y.Z.ρ.tw i b 0 ∅ 1) := by
  intro D X E Y i j b t hxi hQ y hlaw u hu z hz
  have hC : GlobalTheory.Hk3.Core X.R.toRealDat X.F.lv2 :=
    ⟨X.char.lev, X.char.grp, X.char.fam, X.char.models, X.char.chain, X.char.thP⟩
  have hBo : GlobalTheory.ConjTwist.BaseOf X.R.toRealDat j (Y.Z.ρ.B i j b) :=
    GlobalTheory.PinBase.baseOf_of_pin D X Y.Z.ρ Y.Z.good Y.Z.pin i j b
  have hG : (Y.Z.ρ.B i j b).Good := Y.Z.good.base i j b
  have htup : GlobalTheory.ConjTwist.IsTupOf X.R.toRealDat (Y.Z.ρ.B i j b) (Twist.triv Circle ∅) t := by
    classical
    exact ⟨by rw [hxi]; exact (mul_one _).symm, by rw [hQ]; exact (Finset.union_empty _).symm⟩
  have hact := (GlobalTheory.CoefActIo.act_ioP hC hG hBo (Twist.triv_good splitSet_empty) htup).2
  have hio : Formalism.IndefR.FWT.IoExt X.R.toRealDat :=
    GlobalTheory.IoExtremal.ioExt D _ _ _ _ _ X.R.toRealDat hC.lev hC.fam hC.models hC.thP
  have hval : ∀ w, X.R.ioP j (PiTensorProduct.tprod ℂ u) w ∈ (Y.Z.ρ.B i j b).valSpace := by
    intro w
    have hcV : (X.R.cV j).Is := hC.models.cV j
    obtain ⟨u', w₀, hu', -, hw⟩ := Formalism.IndefR.FWT.IsChosenExtremalVector.io _ (Y.Z.vec j) hio
    have huu : u' = u := funext fun ρ => Subtype.ext ((hu' ρ).trans (congrFun hu ρ).symm)
    rw [huu] at hw
    have hT := Scale.io_act hC.lev hC.thP hG hBo.ψ hBo.θ hBo.sT hBo.BS hBo.BT hBo.mu0 hBo.eta (PiTensorProduct.tprod ℂ u)
    have hΔ0 := GlobalTheory.AdTh.IoExtPf.Delta_ne (D := D) j
    rcases hcV.2.2.2.2 ((harm (Wc D j).rank (Y.Z.ρ.B i j b).w (Y.Z.ρ.B i j b).F.BS).comap
        (X.R.ioP j (PiTensorProduct.tprod ℂ u))) (fun h => by
        obtain ⟨a, ha, k, hk, rfl⟩ := (GlobalTheory.UnitarySplit.real_finite_split D _).1 h
        rw [map_mul, hcV.1 k hk, mul_one]
        rintro _ ⟨w, hw', rfl⟩
        rw [Submodule.mem_comap, hT a ha]
        exact fockGL_mem_harm _ _ _ hw') with h | h
    · have h0 : w₀ ∈ (harm (Wc D j).rank (Y.Z.ρ.B i j b).w (Y.Z.ρ.B i j b).F.BS).comap
          (X.R.ioP j (PiTensorProduct.tprod ℂ u)) := by
        rw [Submodule.mem_comap, hw, ← hBo.delta]
        exact delta_mem_harm _ _
      rw [h, Submodule.mem_bot] at h0
      rw [h0, map_zero] at hw
      exact absurd hw.symm hΔ0
    · exact (h ▸ Submodule.mem_top : w ∈ (harm (Wc D j).rank (Y.Z.ρ.B i j b).w (Y.Z.ρ.B i j b).F.BS).comap
        (X.R.ioP j (PiTensorProduct.tprod ℂ u)))

  have hx : (X.R.HV j t).e y ∈ Bridge.AdForms (Bridge.ratF (Vc D j)) (X.R.cV j).coef.ρ
      (levEnv _ (X.R.βV j) (X.R.datVt j t)).J (levEnv _ (X.R.βV j) (X.R.datVt j t)).χ :=
    (hC.models.HV j t).2.1.le (LinearMap.mem_range_self _ y)
  rw [Base.mem_formsC]
  refine ⟨fun h => hval _, fun γ h k => ?_⟩
  have hzc := Subgroup.mem_center_iff.1 hz
  have e1 : Bridge.ratF (Vc D j) γ * h * (k : Bridge.Gf (Vc D j)) * z =
      Bridge.ratF (Vc D j) γ * (h * z) * (k : Bridge.Gf (Vc D j)) := by
    simp only [mul_assoc]
    rw [← hzc]
  have h2 : Bridge.ratF (Vc D j) γ * (h * z) * ((1 : (levEnv _ (X.R.βV j) (X.R.datVt j t)).J) : Bridge.Gf (Vc D j)) =
      Bridge.ratF (Vc D j) γ * (h * z) := by
    rw [OneMemClass.coe_one]
    exact mul_one _
  have e2 : (X.R.HV j t).e y (Bridge.ratF (Vc D j) γ * (h * z)) =
      (X.R.cV j).ρ (γ : GA D (Vc D j)) ((X.R.HV j t).e y (h * z)) :=
    calc (X.R.HV j t).e y (Bridge.ratF (Vc D j) γ * (h * z))
        = (X.R.HV j t).e y (Bridge.ratF (Vc D j) γ * (h * z) *
            ((1 : (levEnv _ (X.R.βV j) (X.R.datVt j t)).J) : Bridge.Gf (Vc D j))) := congrArg _ h2.symm
      _ = (((levEnv _ (X.R.βV j) (X.R.datVt j t)).χ 1 : ℂˣ) : ℂ) • (X.R.cV j).ρ (γ : GA D (Vc D j)) ((X.R.HV j t).e y (h * z)) :=
          hx γ (h * z) 1
      _ = (1 : ℂ) • (X.R.cV j).ρ (γ : GA D (Vc D j)) ((X.R.HV j t).e y (h * z)) :=
          congrArg (fun c : ℂ => c • (X.R.cV j).ρ (γ : GA D (Vc D j)) ((X.R.HV j t).e y (h * z)))
            (by rw [MonoidHom.map_one, Units.val_one])
      _ = (X.R.cV j).ρ (γ : GA D (Vc D j)) ((X.R.HV j t).e y (h * z)) := one_smul ℂ _
  calc X.R.ioP j (PiTensorProduct.tprod ℂ u) ((X.R.HV j t).e y (Bridge.ratF (Vc D j) γ * h * (k : Bridge.Gf (Vc D j)) * z))
      = X.R.ioP j (PiTensorProduct.tprod ℂ u) ((X.R.HV j t).e y (Bridge.ratF (Vc D j) γ * (h * z) * (k : Bridge.Gf (Vc D j)))) :=
        congrArg (fun g => X.R.ioP j (PiTensorProduct.tprod ℂ u) ((X.R.HV j t).e y g)) e1
    _ = X.R.ioP j (PiTensorProduct.tprod ℂ u) ((((Y.Z.ρ.B i j b).levLam (Y.Z.ρ.tw i b 0 ∅ 1) k : ℂˣ) : ℂ) •
          (X.R.HV j t).e y (Bridge.ratF (Vc D j) γ * (h * z))) :=
        congrArg (X.R.ioP j (PiTensorProduct.tprod ℂ u)) (hlaw _ k)
    _ = (((Y.Z.ρ.B i j b).levLam (Y.Z.ρ.tw i b 0 ∅ 1) k : ℂˣ) : ℂ) •
          X.R.ioP j (PiTensorProduct.tprod ℂ u) ((X.R.HV j t).e y (Bridge.ratF (Vc D j) γ * (h * z))) :=
        map_smul _ _ _
    _ = (((Y.Z.ρ.B i j b).levLam (Y.Z.ρ.tw i b 0 ∅ 1) k : ℂˣ) : ℂ) •
          X.R.ioP j (PiTensorProduct.tprod ℂ u) ((X.R.cV j).ρ (γ : GA D (Vc D j)) ((X.R.HV j t).e y (h * z))) :=
        congrArg (fun v => (((Y.Z.ρ.B i j b).levLam (Y.Z.ρ.tw i b 0 ∅ 1) k : ℂˣ) : ℂ) • X.R.ioP j (PiTensorProduct.tprod ℂ u) v) e2
    _ = (((Y.Z.ρ.B i j b).levLam (Y.Z.ρ.tw i b 0 ∅ 1) k : ℂˣ) : ℂ) •
          (Y.Z.ρ.B i j b).act (γ : GA D (Vc D j)) (X.R.ioP j (PiTensorProduct.tprod ℂ u) ((X.R.HV j t).e y (h * z))) :=
        congrArg (fun v => (((Y.Z.ρ.B i j b).levLam (Y.Z.ρ.tw i b 0 ∅ 1) k : ℂˣ) : ℂ) • v) (hact _ _ _).symm

end GlobalTheory.FockReadForms

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockReadingTranslatedFormMemComplexForms =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ThetaLiftExtremalVectorEqClassSum =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ThetaLiftExtremalVectorEqClassSum", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnivChar\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BaseOfOfPin\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LevelLiftIsLiftPrincipalLevelDatumRealisation\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ClassSumPrincipalLevelEqConstMulClassSum\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FockReadingTranslatedFormMemComplexForms\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ThFEqIntegral\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ThetaLiftEqMultiplePrincipalLevelClassSum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ToUnitsCompToCircle\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links IsDedekindDomain NumberField Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.ExportSeries GlobalTheory.SeriesTie GlobalTheory.TwInputs GlobalTheory.TwSys GlobalTheory.TwAll GlobalTheory.SupLaw GlobalTheory.LiftLeaf
open Formalism.MainNotions.IntegralHeckeForms (TwOK ClsQ HkIdx V0 Fm0 FullRk SgJ BasisOf)
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar


noncomputable section

namespace GlobalTheory.LiftClassSum

theorem exists_thetaLift_eq_classSum : ∀ (D : D7) (X : RealSide D) (E : IntegralHeckeForms.XD D) (Y : SerSide X E) (i : D.ntw.Tw) (j : Fin D.R.m) (b : Bool) (t : X.T),
    X.R.xi t = (Y.Z.ρ.B i j b).de.chi → X.R.Q t = (Y.Z.ρ.B i j b).de.Q → ∀ y : (X.R.HV j t).H,
    (∀ (h : Bridge.Gf (Vc D j)) (k : (Y.Z.ρ.B i j b).levJ (Y.Z.ρ.tw i b 0 ∅ 1)),
        (X.R.HV j t).e y (h * (k : Bridge.Gf (Vc D j))) = (((Y.Z.ρ.B i j b).levLam (Y.Z.ρ.tw i b 0 ∅ 1) k : ℂˣ) : ℂ) • (X.R.HV j t).e y h) →
    ∃ F ∈ (Y.Z.ρ.B i j b).formsC (Y.Z.ρ.tw i b 0 ∅ 1),
      X.R.thF j t y (X.geo.v₀ j _) = (Y.Z.ρ.B i j b).classSum (X.R.ωP j t) (Y.Z.ρ.tw i b 0 ∅ 1) (Y.Z.ρ.rep i j b (Y.Z.ρ.tw i b 0 ∅ 1)) F := by
  classical
  intro D X E Y i j b t hxi hQ y hy
  obtain ⟨u, hu⟩ := GlobalTheory.LiftClassSum.exists_low D X E Y j
  obtain ⟨m, h₀, c, z, hh₀, hz, hP⟩ := _root_.GlobalTheory.LiftClassSumPrinc.thF_eq_classSum_princ D X E Y i j b t hxi hQ y u
  have hB : (Y.Z.ρ.B i j b).Good := Y.Z.good.base i j b
  have hq : (Y.Z.ρ.tw i b 0 ∅ 1).Q = ∅ := half_empty _
  have hc : (Y.Z.ρ.tw i b 0 ∅ 1).chi = 1 := charOf_one _ _
  have hgood : ∀ τ : Twist D Circle, τ.Q = ∅ → τ.chi = 1 → τ.Good := by
    rintro ⟨Q0, c0, r0⟩ hq0 hc0
    dsimp only at hq0 hc0
    subst hq0 hc0
    have h1 := Twist.triv_good (D := D) (A := Circle) (Q := ∅) splitSet_empty
    exact ⟨h1.isOpen, h1.rat, h1.real, h1.split, h1.unram, fun _ h => absurd h (Finset.notMem_empty _)⟩
  have hψ : (Y.Z.ρ.tw i b 0 ∅ 1).Good := hgood _ hq hc
  have hA : (Y.Z.ρ.B i j b).admitted (Y.Z.ρ.tw i b 0 ∅ 1).Q := by rw [hq]; exact Base.admissible_empty_of_good hB
  have hBase : GlobalTheory.ConjTwist.BaseOf X.R.toRealDat j (Y.Z.ρ.B i j b) :=
    GlobalTheory.PinBase.baseOf_of_pin D X Y.Z.ρ Y.Z.good Y.Z.pin i j b
  have htup : GlobalTheory.ConjTwist.IsTupOf X.R.toRealDat (Y.Z.ρ.B i j b) (Y.Z.ρ.tw i b 0 ∅ 1) t :=
    ⟨by rw [hxi, hc, mul_one], by rw [hQ, hq, Finset.union_empty]⟩
  have hW : (Y.Z.ρ.B i j b).IsWeil (Y.Z.ρ.tw i b 0 ∅ 1).chi (X.R.ωP j t) := hBase.isWeil X.char.thP.ωP htup
  obtain ⟨κ, hκ⟩ := _root_.GlobalTheory.ClassSumPrinc.classSum_princ_eq D _ _ (Y.Z.ρ.B i j b) hB (D.sp.V_sig _) _ hψ hA _ hW m h₀ hh₀ _
    (Y.Z.ρ.rep i j b (Y.Z.ρ.tw i b 0 ∅ 1)) (Y.Z.good.classes i j b _ hψ hA)
  have hF := _root_.GlobalTheory.FockReadForms.fockRead_mem_formsC D X E Y i j b t hxi hQ y hy u hu z hz
  refine ⟨(c * κ) • (fun h => X.R.ioP j (PiTensorProduct.tprod ℂ u) ((X.R.HV j t).e y (h * z))), Submodule.smul_mem _ _ hF, ?_⟩
  refine (congrArg (fun v => X.R.thF j t y v) hu.symm).trans (hP.trans ?_)
  exact (congrArg (c • ·) (hκ _ hF)).trans ((smul_smul c κ _).trans (LinearMap.map_smul _ _ _).symm)

end GlobalTheory.LiftClassSum

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ThetaLiftExtremalVectorEqClassSum =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ProjectedThetaLiftExtremalVectorEqClassSum =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ProjectedThetaLiftExtremalVectorEqClassSum", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnivChar\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GoodProjectorThetaLiftOfBaseLevelLaw\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ThFEqIntegral\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ThetaLiftExtremalVectorEqClassSum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links IsDedekindDomain NumberField Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.ExportSeries GlobalTheory.SeriesTie GlobalTheory.TwInputs GlobalTheory.TwSys GlobalTheory.TwAll GlobalTheory.SupLaw GlobalTheory.LiftLeaf
open Formalism.MainNotions.IntegralHeckeForms (TwOK ClsQ HkIdx V0 Fm0 FullRk SgJ BasisOf)
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar


noncomputable section

namespace GlobalTheory.LiftClassSum

theorem exists_projected_thetaLift_eq_sum : ∀ (D : D7) (X : RealSide D) (E : IntegralHeckeForms.XD D) (Y : SerSide X E) (i : D.ntw.Tw) (j : Fin D.R.m) (b : Bool) (t : X.T),
    X.R.xi t = (Y.Z.ρ.B i j b).de.chi → X.R.Q t = (Y.Z.ρ.B i j b).de.Q → ∀ y : (X.R.HV j t).H,
    (∀ (h : Bridge.Gf (Vc D j)) (k : (Y.Z.ρ.B i j b).levJ (Y.Z.ρ.tw i b 0 ∅ 1)),
        (X.R.HV j t).e y (h * (k : Bridge.Gf (Vc D j))) = (((Y.Z.ρ.B i j b).levLam (Y.Z.ρ.tw i b 0 ∅ 1) k : ℂˣ) : ℂ) • (X.R.HV j t).e y h) →
    ∃ F ∈ (Y.Z.ρ.B i j b).formsC (Y.Z.ρ.tw i b 0 ∅ 1),
      (X.R.HW j (sg0 D X.A3.A)).e (X.R.thG j t y) (X.geo.v₀ j _) = Y.Z.ρ.sum i j b 0 ∅ 1 F := by
  intro D X E Y i j b t hxi hQ y hy
  obtain ⟨y', hy', he⟩ := _root_.GlobalTheory.ProjLiftLaw.projLift_law D X E Y i j b t hxi hQ y hy
  obtain ⟨F, hF, hs⟩ := _root_.GlobalTheory.LiftClassSum.exists_thetaLift_eq_classSum D X E Y i j b t hxi hQ y' hy'
  exact ⟨F, hF, he.trans (hs.trans (LinearMap.congr_fun (sum_eq_classSum_ωP D X E Y i j b t hxi hQ) F).symm)⟩

end GlobalTheory.LiftClassSum

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ProjectedThetaLiftExtremalVectorEqClassSum =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GoodModelVectorEqClassSumBaseLevel =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GoodModelVectorEqClassSumBaseLevel", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnivChar\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.ThetaTranslateRangeGap\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ComplexFormsBaseLevelLeSpanIntegral\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ProjectedLiftUnipotentTypeBaseLevelForm\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ProjectedThetaLiftExtremalVectorEqClassSum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links IsDedekindDomain NumberField Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.ExportSeries GlobalTheory.SeriesTie GlobalTheory.TwInputs GlobalTheory.TwSys GlobalTheory.TwAll GlobalTheory.SupLaw GlobalTheory.LiftLeaf
open Formalism.MainNotions.IntegralHeckeForms (TwOK ClsQ HkIdx V0 Fm0 FullRk SgJ BasisOf)
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.TypeClassSum



theorem goodModel_eq_classSum : ∀ (D : D7) (X : RealSide D) (E : IntegralHeckeForms.XD D) (Y : SerSide X E), (∀ j t, GlobalTheory.IndefiniteRowSideFullHecke.ThetaTranslateSize.GoodRangeAt X.R.toRealDat j t) →
    ∀ i, BaseTup Y i → ∀ (j : Fin D.R.m) (b : Bool), ∀ w ∈ GlobalTheory.IndefiniteRowSideFullHecke.ThetaTranslateSize.goodModel X.R.toRealDat j,
      (∀ (u : G0g D.nd) (hu : u ∈ D.nexp.U) (κ : GA D (Wc D j)),
        Lev.IsLevelLift (Wc D j) (Y.Z.ρ.B i j b).F.βT (Y.Z.ρ.B i j b).G.levT (Y.Z.ρ.eG i j b u) κ → ∀ g,
        (X.R.HW j (sg0 D X.A3.A)).e w (X.geo.v₀ j _) (g * κ) =
          Y.Z.ρ.e i b ((D.nexp.psiU i b ⟨u, hu⟩ : (FractionRing (D.ntw.O i))ˣ) : FractionRing (D.ntw.O i)) *
          (X.R.HW j (sg0 D X.A3.A)).e w (X.geo.v₀ j _) g) →
      ∃ F ∈ Submodule.span ℂ (Y.Z.ρ.mt i j b 0 ∅ 1 : Set (Bridge.Gf (Vc D j) → PolF D (Wc D j).rank (Vc D j).rank)),
        (X.R.HW j (sg0 D X.A3.A)).e w (X.geo.v₀ j _) = Y.Z.ρ.sum i j b 0 ∅ 1 F := by
  intro D X E Y hG i hB j b w hw hty
  obtain ⟨t, hxi, hQ⟩ : ∃ t : X.T, X.R.xi t = (Y.Z.ρ.B i j b).de.chi ∧
      X.R.Q t = (Y.Z.ρ.B i j b).de.Q := hB j b
  obtain ⟨y0, rfl⟩ : w ∈ LinearMap.range (X.R.thG j t) := by
    rw [hG j t]; exact hw
  obtain ⟨y, hlaw, heq⟩ := _root_.GlobalTheory.AvgLevel.avg_level D X E Y i j b t hxi hQ y0 hty
  obtain ⟨F, hF, hsum⟩ := _root_.GlobalTheory.LiftClassSum.exists_projected_thetaLift_eq_sum D X E Y i j b t hxi hQ y hlaw
  exact ⟨F, _root_.GlobalTheory.BaseSpan.formsC_le_span_mt D X E Y i j b F hF, heq.symm.trans hsum⟩

end GlobalTheory.TypeClassSum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GoodModelVectorEqClassSumBaseLevel =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GoodTypeFormReadingRightTranslateLift =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GoodTypeFormReadingRightTranslateLift", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnivChar\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemBlockTriangularTwoBlockSizesOfLe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links IsDedekindDomain NumberField Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.ExportSeries GlobalTheory.SeriesTie GlobalTheory.TwInputs GlobalTheory.TwSys GlobalTheory.TwAll GlobalTheory.SupLaw GlobalTheory.LiftLeaf
open Formalism.MainNotions.IntegralHeckeForms (TwOK ClsQ HkIdx V0 Fm0 FullRk SgJ BasisOf)
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar




namespace GlobalTheory.TypeRead

theorem actG_eG (D : D7) (i : D.ntw.Tw) (j : ℕ) (b : Bool) (u : G0g D.nd) (y : D.nexp.Fm i j b) :
    D.nexp.actG i j b u (Formalism.MainNotions.IntegralHeckeForms.eG D.nexp i j b y) = Formalism.MainNotions.IntegralHeckeForms.eG D.nexp i j b (D.nexp.actG i j b u y) := by
  have h := congrArg (fun z => MonoidAlgebra.lift (FractionRing (D.ntw.O i)) (Module.End (FractionRing (D.ntw.O i)) (D.nexp.Fm i j b)) (G0g D.nd)
    (LinearEquiv.automorphismGroup.toLinearMapMonoidHom.comp (D.nexp.actG i j b)) z y)
    (D.nexp.eAlg_central i b (MonoidAlgebra.single u 1))
  simp only [map_mul, MonoidAlgebra.lift_single, one_smul, Module.End.mul_apply] at h
  exact h.symm

theorem finite_group_acts_on_good_type_form_by_character (D : D7) (i : D.ntw.Tw) (j : ℕ) (b : Bool) (x : D.nexp.Fm i j b) (hx : x ∈ V0 D.nexp i j b)
    (u : G0g D.nd) (hu : u ∈ D.nexp.U) :
    D.nexp.actG i j b u x = ((D.nexp.psiU i b ⟨u, hu⟩ : (FractionRing (D.ntw.O i))ˣ) : FractionRing (D.ntw.O i)) • x := by
  obtain ⟨f, hf, rfl⟩ := hx
  have hf' := (Submodule.mem_iInf _).1 hf ⟨u, hu⟩
  rw [LinearMap.mem_ker, LinearMap.sub_apply, sub_eq_zero] at hf'
  rw [actG_eG]
  change Formalism.MainNotions.IntegralHeckeForms.eG D.nexp i j b ((D.nexp.actG i j b (⟨u, hu⟩ : D.nexp.U) : _ ≃ₗ[_] _) f) = _
  erw [hf']
  simp

end GlobalTheory.TypeRead


open GlobalTheory.TypeRead in
theorem GlobalTheory.TypeRead.rd_mul_lift : ∀ (D : D7) (X : RealSide D) (E : IntegralHeckeForms.XD D) (Y : SerSide X E) (i : D.ntw.Tw) (j : Fin D.R.m) (b : Bool),
    ∀ x ∈ V0 D.nexp i ((j : ℕ) + 1) b, ∀ (u : G0g D.nd) (hu : u ∈ D.nexp.U) (κ : GA D (Wc D j)),
      Lev.IsLevelLift (Wc D j) (Y.Z.ρ.B i j b).F.βT (Y.Z.ρ.B i j b).G.levT (Y.Z.ρ.eG i j b u) κ → ∀ g,
      Y.Z.rd i j b x (g * κ) = Y.Z.ρ.e i b ((D.nexp.psiU i b ⟨u, hu⟩ : (FractionRing (D.ntw.O i))ˣ) : FractionRing (D.ntw.O i)) *
        Y.Z.rd i j b x g := by
  intro D X E Y i j b x hx u hu κ hκ g
  have hA : ActRead (Y.Z.rd i j b) :=
    actRead_realRd D X.Γ X.Pl0 X.I0 X.T X.A3 X.core.Q.c.F X.R X.cG Y.S Y.YS X.geo.v₀ Y.Z.ρ Y.Z.good i j b _ Y.Z.pin X.unif
      X.char.models.HW
  rw [← hA u κ hκ x g, finite_group_acts_on_good_type_form_by_character D i _ b x hx u hu, map_smulₛₗ]
  rfl
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GoodTypeFormReadingRightTranslateLift =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GoodFormsClassSumsOfProjectedLiftRange =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GoodFormsClassSumsOfProjectedLiftRange", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnivChar\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.ThetaTranslateRangeGap\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GoodFormReadingEqGoodModelVectorEvaluation\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GoodModelVectorEqClassSumBaseLevel\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GoodTypeFormReadingRightTranslateLift\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links IsDedekindDomain NumberField Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.ExportSeries GlobalTheory.SeriesTie GlobalTheory.TwInputs GlobalTheory.TwSys GlobalTheory.TwAll GlobalTheory.SupLaw GlobalTheory.LiftLeaf
open Formalism.MainNotions.IntegralHeckeForms (TwOK ClsQ HkIdx V0 Fm0 FullRk SgJ BasisOf)
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section




namespace GlobalTheory.RankOnto

theorem sumOnto_of_goodRange : ∀ (D : D7) (X : RealSide D) (E : IntegralHeckeForms.XD D) (Y : SerSide X E), (∀ j t, GlobalTheory.IndefiniteRowSideFullHecke.ThetaTranslateSize.GoodRangeAt X.R.toRealDat j t) → ∀ i, BaseTup Y i → SumOnto Y.Z.rd i := by
  intro D X E Y hG i hB j b x hx
  obtain ⟨w, hw, hrd⟩ := _root_.GlobalTheory.SeriesTie.rd_good_model D X E Y i j b x hx
  have hν : Y.Z.ν i j b ≠ 0 := (Y.Z.scalar i j b).ne
  have hT := _root_.GlobalTheory.TypeRead.rd_mul_lift D X E Y i j b x hx
  have hφ : (X.R.HW j (Formalism.IndefR.Links.sg0 D X.A3.A)).e w (X.geo.v₀ j _) = Y.Z.ν i j b • Y.Z.rd i j b x := by
    rw [hrd, smul_smul, mul_inv_cancel₀ hν, one_smul]
  obtain ⟨F, hF, hsum⟩ := _root_.GlobalTheory.TypeClassSum.goodModel_eq_classSum D X E Y hG i hB j b w hw (fun u hu κ hκ g => by
    rw [hφ, Pi.smul_apply, Pi.smul_apply, hT u hu κ hκ g, smul_eq_mul, smul_eq_mul]; ring)
  refine ⟨(Y.Z.ν i j b)⁻¹ • F, Submodule.smul_mem _ _ hF, ?_⟩
  rw [map_smul, ← hsum, hrd]

end GlobalTheory.RankOnto
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GoodFormsClassSumsOfProjectedLiftRange =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GoodFormsClassSumsOfProjectedLiftRangeStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GoodFormsClassSumsOfProjectedLiftRangeStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnivChar\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.ThetaTranslateRangeGap\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GoodFormsClassSumsOfProjectedLiftRange\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links IsDedekindDomain NumberField Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.ExportSeries GlobalTheory.SeriesTie GlobalTheory.TwInputs GlobalTheory.TwSys GlobalTheory.TwAll GlobalTheory.SupLaw GlobalTheory.LiftLeaf
open Formalism.MainNotions.IntegralHeckeForms (TwOK ClsQ HkIdx V0 Fm0 FullRk SgJ BasisOf)
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GoodFormsClassSumsOfProjectedLiftRangeStatement =====
