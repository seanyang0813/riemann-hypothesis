module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OneMapOfOfExtends
public import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.NormalFam
public import Formalism.LocalToGlobal.IndefiniteReal.FWTie
public import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ReadingLinearIndependentAndInjective
public import Formalism.LocalToGlobal.ProjectiveLattices.FreeBridge
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ConjTupRefl
public import Development.AbelianVarietyTheory.BlockTheory.ExistenceTori.BaseChangeTensorProduct
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.SpanGlue
public import Formalism.LocalToGlobal.ProjectiveLattices.HasDataCondition
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EquivAtRecordOfEquivRow
public import Formalism.LocalToGlobal.ProjectiveLattices.RealPtPf
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.ExtFStatementPfA
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.FrMapComp
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.FrameLaws
public import Formalism.LocalToGlobal.ProjectiveLattices.ReadProofs
public import Formalism.LocalToGlobal.IndefiniteReal.ZeroPartEigenvalueConvention
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ClassSumsSpanCuspFormsBaseTupleSecondField
public import Formalism.LocalToGlobal.Columns.MtIsoVal
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.LawsFieldsSeparately
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ExistsEmbExt
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
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.Style
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
import Development.AbelianVarietyTheory.BlockTheory.NonGaloisCusps.RationalRayLevels
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IntFormsSubset
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnivOfNotLinearIndependent
import Mathlib.Tactic.Linter.HaveILetI
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.AbelianSchemeLawsUnconditional
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ActLevAndActBC
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.SecBCAndCuspBC
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.IndepPts
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.JInjRdOf
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaLiftEqClassSumThetaKernelsLowestKType
import Formalism.LocalToGlobal.Columns.CoefficientsModP.FkMapInitMinor
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat

attribute [-instance]
  Submodule.normedSpace Submodule.seminormedAddCommGroup
  Submodule.normedAddCommGroup SubalgebraClass.toNormedAlgebra
  Subalgebra.isScalarTower_left Subalgebra.isScalarTower_mid
  Submonoid.instIsScalarTowerSubtypeMem Submonoid.instSMulCommClassSubtypeMem_1
  Subalgebra.smulCommClass_right Subalgebra.smulCommClass_left
  MulSemiringAction.toDistribMulAction
  RingHomClass.toLinearMapClassNNRat RingHomClass.toLinearMapClassRat
  NonUnitalAlgHomClass.instLinearMapClass
  NonUnitalAlgHomClass.instSemilinearMapClassOfNonUnitalAlgSemiHomClassOfClassRingHom
  Algebra.TensorProduct.instNonUnitalSemiring Algebra.TensorProduct.instNonUnitalRing
attribute [local instance high]
  Submodule.module TensorProduct.leftModule Algebra.TensorProduct.leftAlgebra

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CuspFormsBaseChangeSecondFieldNeBot, Development.AbelianVarietyTheory.Proofs.UnitaryExistence.LinearIndependentOfIndepToC, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsCentralTranslateUniformisationCuspFormNeZe, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsThetaSeriesRationalVectorNeZeroOfCuspForms, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsThetaSeriesRationalVectorNeZeroOfCuspFormsStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CuspFormsBaseChangeSecondFieldNeBot =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CuspFormsBaseChangeSecondFieldNeBot", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OneMapOfOfExtends\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.NormalFam\npublic import Formalism.LocalToGlobal.IndefiniteReal.FWTie\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.LawsFieldsSeparately\nimport Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ExistsEmbExt\npublic import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ReadingLinearIndependentAndInjective\npublic import Formalism.LocalToGlobal.ProjectiveLattices.FreeBridge\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.BlockTheory.NonGaloisCusps.RationalRayLevels\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ConjTupRefl\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IntFormsSubset\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnivOfNotLinearIndependent\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.IndefR.Links IsDedekindDomain NumberField GlobalTheory.ExportSeries Formalism.L2.Pj GlobalTheory.CoverRead GlobalTheory.IndefiniteRowSideFullHecke.RationalRayLevels GlobalTheory.ConjTwist
open Formalism.L2.Host (embLL0)
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.BaseChangeNonzero

theorem cuspOver_ne_bot : ∀ (D : D7) (Γ : Type) [Group Γ] [Fintype Γ] (Pl0 T0 : Type) (A : FamIn D.what₂.LL Γ Pl0 T0 D.R.m) (T : CoreJ D) [Algebra T.Q.c.F D.what₂.LL] (R : RealDat D A T.Q.c.F) (F : Face D A) (κ : ∀ i : Fin D.R.m, WeightFamilies.Wt D ((i : ℕ) + 1)) (v₀ : ∀ (i : Fin D.R.m) (σ : D.what₂.LL →+* ℂ), (R.MW i σ).Vec) (O : ∀ i, OMDat T.toCore R i Unit (fun _ => A.μ0)), 8 * D.R.f * D.R.r + 4 ≤ D.R.nV → GlobalTheory.Hk3.Core R F → Nonempty (FWTie T R κ v₀) → IoExt R → ∀ (j : Fin D.R.m), OMPins T R κ v₀ O j → OneMapRow0 T R κ v₀ O j → T.toCore.cuspA ((j : ℕ) + 1) (wtA (κ j)) (κ j).n ≠ ⊥ → GlobalTheory.OneMapAll.cuspOver (O j) (κ j) ≠ ⊥ := by
  intro D Γ _ _ Pl0 T0 A T _ R F κ v₀ O hnV hC hFW hIo j hP hrow hne
  obtain ⟨tie⟩ := hFW
  have hT : LawsJ T := tie.laws
  have hj : InR D ((j : ℕ) + 1) := ⟨Nat.le_add_left _ _, j.2⟩
  have hn : (κ j).n = (Vc D j).rank :=
    (tie.kap j (D.eTau.symm 1)).2.2.trans (D.sp.V_rank _ (Nat.le_add_left _ _) j.2).symm
  obtain ⟨f, hf, hf0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hne
  have hsec := cusp_le_sec _ _ _ _ _ hf
  have hBC := GlobalTheory.FieldBC.rulBC_cusp _ _ _ _ _ _ _ (O j).hle _ (T.U ((j : ℕ) + 1)) _ _ f hsec
  have hmem : GlobalTheory.FieldBC.rulBC (O j).hle f ∈ GlobalTheory.OneMapAll.cuspOver (O j) (κ j) := by
    unfold GlobalTheory.OneMapAll.cuspOver
    rw [← hn]
    exact hBC.2.2 hf
  intro hbot
  rw [hbot, Submodule.mem_bot] at hmem
  obtain ⟨σ', hσ'⟩ := GlobalTheory.FieldBC.exists_emb_ext (O j).hle T.toCore.σ₀
  have hrd := hBC.1 σ'
  rw [hmem, map_zero] at hrd
  have hgood : GoodEmb T.Q.c (σ'.comp (incF T.Q.c (O j).c' (O j).hle)) := hσ' ▸ T.toCore.good_σ₀
  have hU : IsUnf (T.U ((j : ℕ) + 1) (σ'.comp (incF T.Q.c (O j).c' (O j).hle))) := hT.unf _ hj _ hgood
  refine hf0 ((GlobalTheory.reading_linearIndependent_and_injective GlobalTheory.lawsFieldsSeparately.2.1 _ _ _ _ _ T.Q.c _ _
    (Formalism.L2.PjFree.Unf.ofPj (T.U ((j : ℕ) + 1) (σ'.comp (incF T.Q.c (O j).c' (O j).hle))))
    ((Formalism.L2.PjFree.isUnf_ofPj _).2 hU) _ _).2 f hsec (fun k x _ => ?_))
  show rdU (T.U ((j : ℕ) + 1) (σ'.comp (incF T.Q.c (O j).c' (O j).hle))) f k x = 0
  exact (congrFun (congrFun hrd k) x).symm

end GlobalTheory.BaseChangeNonzero
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CuspFormsBaseChangeSecondFieldNeBot =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.UnitaryExistence.LinearIndependentOfIndepToC =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.UnitaryExistence.LinearIndependentOfIndepToC", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.ExistenceTori.BaseChangeTensorProduct\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.SpanGlue\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Formalism.LocalToGlobal.ProjectiveLattices.HasDataCondition\n\n"}
section -- clump:auto
@[expose] public section



noncomputable section

namespace GlobalTheory.ReadingComparison

open NumberField ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.FD Formalism.L2.Pj Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.WeightAlgebra Formalism.MainNotions.Gaps.EtaleWeightGaps
  ReciprocityTheory.ChartRestriction.G.PullbackSections
open scoped TensorProduct
open GlobalTheory.IndefiniteRowSideFullHecke

section General

variable {K L : Type} [Field K] [Field L] [Algebra K L] {σ : K →+* ℂ} {σ' : L →+* ℂ}
  {C W : Type} [AddCommGroup C] [Module K C] [AddCommGroup W] [Module ℂ W]

theorem bcMap_tmul (hσ : ∀ a, σ' (algebraMap K L a) = σ a) (f : C →ₛₗ[σ] W) (t : L) (x : C) :
    BaseChangeTensorProduct.bcMap hσ f (t ⊗ₜ x) = σ' t • f x := rfl

theorem linearIndependent_of_indepToC {f : C →ₛₗ[σ] W} (hf : IndepToC f) {ι : Type} {b : ι → C}
    (hb : LinearIndependent K b) : LinearIndependent ℂ (fun i => f (b i)) := by
  rw [linearIndependent_iff_finset_linearIndependent]
  intro s
  have e := s.equivFin
  have h1 := hf _ (fun i => b (e.symm i).1) (hb.comp (fun i => (e.symm i).1)
    (Subtype.val_injective.comp e.symm.injective))
  have h2 := h1.comp e e.injective
  convert h2 using 1
  funext i
  simp

theorem indepToC_bcMap_iff (hσ : ∀ a, σ' (algebraMap K L a) = σ a) (f : C →ₛₗ[σ] W) :
    IndepToC (BaseChangeTensorProduct.bcMap hσ f) ↔ IndepToC f := by
  constructor
  · intro h n b hb
    have h1 := h n (fun i => (1 : L) ⊗ₜ[K] b i) (Module.Flat.linearIndependent_one_tmul hb)
    simpa only [bcMap_tmul, map_one, one_smul] using h1
  · intro h n b hb
    letI : Algebra K ℂ := σ.toAlgebra
    letI : Algebra L ℂ := σ'.toAlgebra
    haveI : IsScalarTower K L ℂ := IsScalarTower.of_algebraMap_eq fun a => (hσ a).symm
    letI : Module K W := Module.compHom W σ
    haveI : IsScalarTower K ℂ W := ⟨fun a z w => by
      show (σ a * z) • w = σ a • z • w
      rw [mul_smul]⟩
    let g : C →ₗ[K] W :=
      { toFun := f, map_add' := map_add f, map_smul' := fun a x => f.map_smulₛₗ a x }
    let F : ℂ ⊗[K] C →ₗ[ℂ] W := g.liftBaseChange ℂ
    let e := Module.Basis.ofVectorSpace K C
    have hF : Function.Injective F := by
      refine LinearMap.injective_of_linearIndependent (Algebra.TensorProduct.basis ℂ e).span_eq ?_
      have h0 := linearIndependent_of_indepToC h e.linearIndependent
      have e1 : (F ∘ Algebra.TensorProduct.basis ℂ e) = fun i => f (e i) := by
        funext i
        simp only [Function.comp, Algebra.TensorProduct.basis_apply, F, LinearMap.liftBaseChange_one_tmul]
        rfl
      rw [e1]; exact h0
    let φ := TensorProduct.AlgebraTensorModule.cancelBaseChange K L ℂ ℂ C
    have h1 : LinearIndependent ℂ (fun i => (1 : ℂ) ⊗ₜ[L] b i) := Module.Flat.linearIndependent_one_tmul hb
    have h2 := h1.map' (F ∘ₗ φ.toLinearMap) (LinearMap.ker_eq_bot.2 (hF.comp φ.injective))
    have key : ∀ x : L ⊗[K] C, F (φ ((1 : ℂ) ⊗ₜ[L] x)) = BaseChangeTensorProduct.bcMap hσ f x := by
      intro x
      induction x using TensorProduct.induction_on with
      | zero => simp
      | tmul t x =>
        rw [bcMap_tmul]
        simp only [φ, F, TensorProduct.AlgebraTensorModule.cancelBaseChange_tmul, LinearMap.liftBaseChange_tmul]
        show (σ' t * 1) • f x = _
        rw [mul_one]
      | add x y hx hy => rw [TensorProduct.tmul_add, map_add (f := _), map_add (f := _), hx, hy, map_add (f := _)]
    have e2 : (fun i => BaseChangeTensorProduct.bcMap hσ f (b i)) = (F ∘ₗ φ.toLinearMap) ∘ fun i => (1 : ℂ) ⊗ₜ[L] b i :=
      funext fun i => (key (b i)).symm
    rw [e2]; exact h2

end General

variable {D : D7} {T : Top D} (h : LawsP T) (j : ℕ)

end GlobalTheory.ReadingComparison
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.UnitaryExistence.LinearIndependentOfIndepToC =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsCentralTranslateUniformisationCuspFormNeZe =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsCentralTranslateUniformisationCuspFormNeZe", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OneMapOfOfExtends\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.NormalFam\npublic import Formalism.LocalToGlobal.IndefiniteReal.FWTie\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.SpanGlue\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.AbelianSchemeLawsUnconditional\nimport Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ActLevAndActBC\nimport Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.SecBCAndCuspBC\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EquivAtRecordOfEquivRow\npublic import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.LinearIndependentOfIndepToC\npublic import Formalism.LocalToGlobal.ProjectiveLattices.RealPtPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.UpperBounds.ExtFStatementPfA\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.FrMapComp\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.FrameLaws\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.IndepPts\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.JInjRdOf\npublic import Development.AbelianVarietyTheory.BlockTheory.ExistenceTori.BaseChangeTensorProduct\nimport Development.AbelianVarietyTheory.BlockTheory.NonGaloisCusps.RationalRayLevels\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ConjTupRefl\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IntFormsSubset\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnivOfNotLinearIndependent\npublic import Formalism.LocalToGlobal.ProjectiveLattices.ReadProofs\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.IndefR.Links IsDedekindDomain NumberField GlobalTheory.ExportSeries Formalism.L2.Pj GlobalTheory.CoverRead GlobalTheory.IndefiniteRowSideFullHecke.RationalRayLevels GlobalTheory.ConjTwist
open Formalism.L2.Host (embLL0)
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section

namespace GlobalTheory.MovedUnifNe

open ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.FD

set_option synthInstance.maxHeartbeats 400000 in
theorem indepToC_sec {D : D7} (T : Core D) (hM : LawsM T) {j : ℕ} (hj : InR D j) {σ : T.Q.c.F →+* ℂ}
    (hσ : GoodEmb T.Q.c σ) (a : (D.host.E →+* ℂ) × ℕ → ℕ) (n : ℕ) :
    ReciprocityTheory.ChartRestriction.G.PullbackSections.IndepToC ((rdU (T.U j σ)).comp (sec (T.Q.Xo j) T.Q.c a n).subtype) := by
  have hL := GlobalTheory.abelianSchemeLaws_all.2
  have hA : BCEx (T.Q.Xo j) T.Q.c σ :=
    ReciprocityTheory.ChartRestriction.G.PullbackSections.bcEx_laws T.Q.c hL.secBaseChangeAny hL.secTwist σ
  have hF : WtField (T.Q.Xo j) T.Q.c :=
    ReciprocityTheory.ChartRestriction.G.PullbackSections.wtField_laws T.Q.c hL.secBaseChangeAny hL.secTwist (hM.evalWD j hj)
  intro m b hb
  have hU : IsUnf (T.U j σ) := hM.unf j hj σ hσ
  have hb' := hb.map' (sec (T.Q.Xo j) T.Q.c a n).subtype (Submodule.ker_subtype _)
  have hfs : ∀ i, (⇑(sec (T.Q.Xo j) T.Q.c a n).subtype ∘ b) i ∈ sec (T.Q.Xo j) T.Q.c a n :=
    fun i => (b i).2
  rw [Fintype.linearIndependent_iff]
  intro g hg
  have hrel : ∀ k (x : ((T.U j σ).X k).dom),
      ∑ i, g i * toC (evR (T.Q.Xo j) T.Q.c ((⇑(sec (T.Q.Xo j) T.Q.c a n).subtype ∘ b) i)
        ((T.U j σ).un k x)) = 0 := by
    intro k x
    have h := congrFun (congrFun hg k) x.1
    simp only [Finset.sum_apply, Pi.smul_apply, smul_eq_mul, Pi.zero_apply] at h
    rw [← h]
    exact Finset.sum_congr rfl fun i _ => by
      rw [← ReciprocityTheory.ChartRestriction.G.PullbackSections.rdU_apply_dom (T.U j σ) _ k x]; rfl
  have hall := ReciprocityTheory.ChartRestriction.G.PullbackSections.rel_of_frames (T.U j σ) hU.2.2.1 (hM.unTest j hj σ hσ) hF _ hfs g hrel
  let _ : Algebra T.Q.c.F ℂ := σ.toAlgebra
  have hc := ReciprocityTheory.ChartRestriction.G.PullbackSections.indep_of_complex (K := T.Q.c.F) (fun S _ _ => FrPt (T.Q.Xo j) T.Q.c S)
    (fun φ y z => FrMap φ y z) (hM.evalWD j hj) (fun p φ y => hA p y φ)
    _ (fun i => (hfs i).1) hb' g (fun z hz => hall z hz)
  intro i
  exact congrFun hc i

theorem rel_of_dict {D : D7} (T : Core D) (hM : LawsM T) {j : ℕ} (hj : InR D j) {σ : T.Q.c.F →+* ℂ}
    (hσ : GoodEmb T.Q.c σ) {a : (D.host.E →+* ℂ) × ℕ → ℕ} {n m : ℕ} (fs : Fin m → T.R j)
    (hfs : ∀ i, fs i ∈ sec (T.Q.Xo j) T.Q.c a n) (g : Fin m → ℂ)
    (h : ∀ x : GA D (T.V j σ), ∃ γ ∈ GQ (T.V j σ),
      ∑ i, g i * rdU (T.U j σ) (fs i) (T.dict j σ (γ * x)).1 (T.dict j σ (γ * x)).2 = 0) :
    ∑ i, g i • rdU (T.U j σ) (fs i) = 0 := by
  classical
  have hL := GlobalTheory.abelianSchemeLaws_all.2
  have hF : WtField (T.Q.Xo j) T.Q.c :=
    ReciprocityTheory.ChartRestriction.G.PullbackSections.wtField_laws T.Q.c hL.secBaseChangeAny hL.secTwist (hM.evalWD j hj)
  have hU : IsUnf (T.U j σ) := hM.unf j hj σ hσ
  have hT := hM.unTest j hj σ hσ
  obtain ⟨th, hr, -, hD⟩ := hM.dictU j hj σ hσ
  letI : Field (CAt σ) := inferInstanceAs (Field ℂ)
  funext k x
  simp only [Finset.sum_apply, Pi.smul_apply, smul_eq_mul, Pi.zero_apply]
  by_cases hx : x ∈ ((T.U j σ).X k).dom
  swap
  · refine Finset.sum_eq_zero fun i _ => ?_
    have e : rdU (T.U j σ) (fs i) k x = 0 := by
      show (if h : x ∈ ((T.U j σ).X k).dom then _ else 0) = 0
      rw [dite_eq_right hx]
    rw [e, mul_zero]
  obtain ⟨g0, γ, hγ, b, hb, hg0⟩ := hD.2.2.2.2.1 k x hx
  obtain ⟨γ0, hγ0, hrel⟩ := h g0
  obtain ⟨γ', hγ', hd⟩ := hD.1 γ0 hγ0 g0
  have hdom1 := hD.2.2.2.1 g0
  have hdom2 := hD.2.2.2.1 (γ0 * g0)
  rw [hd] at hrel hdom2
  generalize T.dict j σ g0 = p at hrel hdom1 hdom2 hγ' hg0
  subst hg0
  simp only at hrel hdom1 hdom2 hγ'
  obtain ⟨t1, h1⟩ := (hU.2.2.2.1 k k ⟨x, hx⟩ ⟨_, hdom1⟩).2 ⟨γ, hγ, b, hb, rfl⟩
  obtain ⟨t2, h2⟩ := (hU.2.2.2.1 k k ⟨_, hdom1⟩ ⟨_, hdom2⟩).2
    ⟨γ', hγ', ReciprocityTheory.ChartRestriction.G.AR.Up.ExtFPf.oneF _, ReciprocityTheory.ChartRestriction.G.AR.Up.ExtFPf.oneF_mem _,
      by rw [ReciprocityTheory.ChartRestriction.G.AR.Up.ExtFPf.rmul_oneF]⟩
  have hv : ∀ i, rdU (T.U j σ) (fs i) k (lact γ' (rmul (lact γ x) b)) =
      toC (wchar (ex (T.Q.Dw j) a n) t2) * (toC (wchar (ex (T.Q.Dw j) a n) t1) * rdU (T.U j σ) (fs i) k x) := by
    intro i
    rw [ReciprocityTheory.ChartRestriction.G.PullbackSections.rdU_apply_dom (T.U j σ) (fs i) k ⟨_, hdom2⟩,
      ReciprocityTheory.ChartRestriction.G.PullbackSections.rdU_apply_dom (T.U j σ) (fs i) k ⟨x, hx⟩,
      hF a n (fs i) (hfs i) (CAt σ) t2 _ _ (hT k _) (hT k _) h2,
      hF a n (fs i) (hfs i) (CAt σ) t1 _ _ (hT k _) (hT k _) h1]
    rfl
  simp only [hv] at hrel
  have hw1 : toC (wchar (ex (T.Q.Dw j) a n) t1) ≠ 0 := wchar_ne_zero _ t1
  have hw2 : toC (wchar (ex (T.Q.Dw j) a n) t2) ≠ 0 := wchar_ne_zero _ t2
  have e : ∑ i, g i * (toC (wchar (ex (T.Q.Dw j) a n) t2) * (toC (wchar (ex (T.Q.Dw j) a n) t1) *
      rdU (T.U j σ) (fs i) k x)) = (toC (wchar (ex (T.Q.Dw j) a n) t2) * toC (wchar (ex (T.Q.Dw j) a n) t1)) *
      ∑ i, g i * rdU (T.U j σ) (fs i) k x := by
    rw [Finset.mul_sum]; exact Finset.sum_congr rfl fun i _ => by ring
  rw [e] at hrel
  exact (mul_eq_zero.1 hrel).resolve_left (mul_ne_zero hw2 hw1)


set_option synthInstance.maxHeartbeats 400000 in
set_option maxHeartbeats 800000 in
theorem eq_zero_of_rdU {D : D7} (T : Core D) (hM : LawsM T) {j : ℕ} (hj : InR D j) (c' : Coeff T.Q.l)
    (hle : T.Q.c.F ≤ c'.F) (σ' : c'.F →+* ℂ) (hσ : GoodEmb T.Q.c (σ'.comp (incF T.Q.c c' hle)))
    {a : (D.host.E →+* ℂ) × ℕ → ℕ} {n m : ℕ} {f' : Rul (T.Q.Xo j) c'} (hf' : f' ∈ sec (T.Q.Xo j) c' a n)
    {as : Fin m → c'.F} {gs : Fin m → T.R j} (hgs : ∀ i, gs i ∈ sec (T.Q.Xo j) T.Q.c a n)
    (hBC : IsBC hle f' as gs)
    (h0 : ∑ i, σ' (as i) • rdU (T.U j (σ'.comp (incF T.Q.c c' hle))) (gs i) = 0) : f' = 0 := by
  classical
  letI : Algebra T.Q.c.F c'.F := (incF T.Q.c c' hle).toAlgebra
  have hσ' : ∀ x : T.Q.c.F, σ' (algebraMap T.Q.c.F c'.F x) = (σ'.comp (incF T.Q.c c' hle)) x := fun _ => rfl
  have hI := (GlobalTheory.ReadingComparison.indepToC_bcMap_iff hσ'
    ((rdU (T.U j (σ'.comp (incF T.Q.c c' hle)))).comp (sec (T.Q.Xo j) T.Q.c a n).subtype)).2
    (indepToC_sec T hM hj hσ a n)
  let t : c'.F ⊗[T.Q.c.F] (sec (T.Q.Xo j) T.Q.c a n) :=
    ∑ i, as i ⊗ₜ[T.Q.c.F] (⟨gs i, hgs i⟩ : sec (T.Q.Xo j) T.Q.c a n)
  have hbt : GlobalTheory.IndefiniteRowSideFullHecke.BaseChangeTensorProduct.bcMap hσ'
      ((rdU (T.U j (σ'.comp (incF T.Q.c c' hle)))).comp (sec (T.Q.Xo j) T.Q.c a n).subtype) t = 0 := by
    set_option synthInstance.maxHeartbeats 100000 in
      simp only [t, map_sum, GlobalTheory.ReadingComparison.bcMap_tmul]
    exact h0
  have ht : t = 0 := by
    by_contra ht
    have h1 := hI 1 ![t] (linearIndependent_unique_iff.2 (by exact ht))
    exact h1.ne_zero 0 (by exact hbt)
  funext p y
  show f' p y = 0
  letI : Algebra T.Q.c.F p.R := GlobalTheory.FieldBC.resAlg hle p.R
  have hA : AlgOver T.Q.c c' hle p.R := fun _ => rfl
  have hv : f' p y = evR (T.Q.Xo j) c' f' y := by
    have hft : FromTest (K := c'.F) (fun S _ _ => FrPt (T.Q.Xo j) c' S) (fun φ y z => FrMap φ y z) y :=
      ⟨p, AlgHom.id _ _, y, ReciprocityTheory.ChartRestriction.G.PullbackSections.frMap_refl y⟩
    show _ = evalAt (K := c'.F) (fun S _ _ => FrPt (T.Q.Xo j) c' S) (fun φ y z => FrMap φ y z) f' y
    unfold evalAt
    rw [dite_eq_left hft]
    exact hf'.1 _ _ _ _ _ hft.choose_spec.choose_spec.choose_spec
  rw [hv, hBC p.R hA y]
  have hadd : ∀ g g' : T.R j, evR (T.Q.Xo j) T.Q.c (g + g') (y.res hle hA) =
      evR (T.Q.Xo j) T.Q.c g (y.res hle hA) + evR (T.Q.Xo j) T.Q.c g' (y.res hle hA) :=
    fun g g' => evalAt_add _ _ g g' _
  have hsmul : ∀ (k : T.Q.c.F) (g : T.R j), evR (T.Q.Xo j) T.Q.c (k • g) (y.res hle hA) =
      algebraMap T.Q.c.F p.R k * evR (T.Q.Xo j) T.Q.c g (y.res hle hA) :=
    fun k g => evalAt_smul _ _ k g _
  let B : c'.F →+ (sec (T.Q.Xo j) T.Q.c a n) →+ p.R :=
    { toFun := fun x =>
        { toFun := fun g => algebraMap c'.F p.R x * evR (T.Q.Xo j) T.Q.c (g : T.R j) (y.res hle hA)
          map_zero' := by
            rw [ZeroMemClass.coe_zero, show evR (T.Q.Xo j) T.Q.c (0 : T.R j) (y.res hle hA) = 0 from
              evalAt_zero _ _ _, mul_zero]
          map_add' := fun g g' => by rw [Submodule.coe_add, hadd, mul_add] }
      map_zero' := by ext g; simp
      map_add' := fun x x' => by ext g; simp [add_mul] }
  have hB : ∀ (k : T.Q.c.F) (x : c'.F) (g : sec (T.Q.Xo j) T.Q.c a n), B (k • x) g = B x (k • g) := by
    intro k x g
    simp only [B, AddMonoidHom.coe_mk, ZeroHom.coe_mk]
    rw [Submodule.coe_smul, hsmul, Algebra.smul_def, map_mul]
    have e : algebraMap T.Q.c.F p.R k = algebraMap c'.F p.R (algebraMap T.Q.c.F c'.F k) := rfl
    rw [e]; ring
  let Φ : c'.F ⊗[T.Q.c.F] (sec (T.Q.Xo j) T.Q.c a n) →+ p.R := TensorProduct.liftAddHom B hB
  have e := congrArg Φ ht
  rw [map_zero] at e
  have e2 : Φ t = ∑ i, algebraMap c'.F p.R (as i) * evR (T.Q.Xo j) T.Q.c (gs i) (y.res hle hA) := by
    set_option synthInstance.maxHeartbeats 100000 in
      simp only [t, map_sum, Φ, TensorProduct.liftAddHom_tmul]
    rfl
  rw [← e2, e]

theorem exists_gq_of_cast {D : D7} {V W : HSp D} (hV : V = W) (P : GA D V → Prop)
    (h : ∀ q : AutQ W, P (cast (congrArg (GA D) hV.symm) q.out)) : ∀ x : GA D V, ∃ γ ∈ GQ V, P (γ * x) := by
  subst hV
  intro x
  have hq := h (Quotient.mk _ x)
  have hr := @Quotient.mk_out _ (QuotientGroup.rightRel (GQ V)) x
  rw [QuotientGroup.rightRel_apply] at hr
  refine ⟨(x * (Quotient.mk (QuotientGroup.rightRel (GQ V)) x).out⁻¹)⁻¹, inv_mem hr, ?_⟩
  simpa [mul_assoc] using hq

end GlobalTheory.MovedUnifNe

namespace GlobalTheory.MovedUnifNe

open ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.FD GlobalTheory.OneMapAll



theorem exists_jFn_actLev_ne : ∀ (D : D7) (Γ : Type) [Group Γ] [Fintype Γ] (Pl0 T0 : Type) (A : FamIn D.what₂.LL Γ Pl0 T0 D.R.m) (T : CoreJ D) [Algebra T.Q.c.F D.what₂.LL] (R : RealDat D A T.Q.c.F) (F : Face D A) (κ : ∀ i : Fin D.R.m, WeightFamilies.Wt D ((i : ℕ) + 1)) (v₀ : ∀ (i : Fin D.R.m) (σ : D.what₂.LL →+* ℂ), (R.MW i σ).Vec) (O : ∀ i, OMDat T.toCore R i Unit (fun _ => A.μ0)), 8 * D.R.f * D.R.r + 4 ≤ D.R.nV → GlobalTheory.Hk3.Core R F → Nonempty (FWTie T R κ v₀) → IoExt R → ∀ (j : Fin D.R.m), OMPins T R κ v₀ O j → OneMapRow0 T R κ v₀ O j → ∀ f ∈ GlobalTheory.OneMapAll.cuspOver (O j) (κ j), f ≠ 0 → ∀ z : Γ, z ∈ Subgroup.center Γ → ∃ q, jFn (Wc D j) (inC (O j).c') (rdU (unfBC (O j).hle (T.toCore.U ((j : ℕ) + 1)) (inC (O j).c'))) (O j).dict (O j).mu (actLev (O j).c' (O j).lev2 z f) q ≠ 0 := by
  intro D Γ _ _ Pl0 T0 A T _ R F κ v₀ O hnV hC hFW hIo j hP hrow f hf hf0 z hz
  by_contra hne
  push_neg at hne
  obtain ⟨W⟩ := hFW
  have hM : LawsM T.toCore := W.laws.toLawsM
  have hj : InR D ((j : ℕ) + 1) := ⟨by omega, by have := j.isLt; omega⟩
  have hs0 : GoodEmb T.Q.c (O j).s0 := by
    rw [OMDat.s0, sOv_eq]; exact T.toCore.good_σ₀
  have hact := hP.2.act.1
  have hact' := hP.2.act.2
  obtain ⟨m, as, fs, hfs, hBC⟩ :=
    (GlobalTheory.FieldBC.secBC_and_cuspBC _ _ _ _ _ _ _ (O j).hle).2 _ (T.toCore.U ((j : ℕ) + 1)) _ _ f hf
  have hfsec := ((mem_cusp _ _ _ _ _ _).1 hf).1
  have hs : ∀ k, fs k ∈ sec _ T.Q.c (wtA (κ j)) (Vc D j).rank := fun k => ((mem_cusp _ _ _ _ _ _).1 (hfs k)).1
  have h1 := (GlobalTheory.FieldBC.actLev_and_actBC _ _ _ _ _ _ _ (O j).hle _ _ hact).2 _ _ z m as fs f hfsec hs hBC
  have hgs : ∀ k, actLev T.Q.c (O j).lev2 z (fs k) ∈ sec _ T.Q.c (wtA (κ j)) (Vc D j).rank :=
    fun k => GlobalTheory.LevelEquivCompare.actLev_mem_sec hact z (hs k)
  have hF' : actLev (O j).c' (O j).lev2 z f ∈ sec _ (O j).c' (wtA (κ j)) (Vc D j).rank :=
    GlobalTheory.LevelEquivCompare.actLev_mem_sec hact' z hfsec
  have hrd := rdU_unfBC (O j).hle (T.toCore.U ((j : ℕ) + 1)) (inC (O j).c') h1
  have hrel := rel_of_dict T.toCore hM hj hs0 _ hgs (fun i => inC (O j).c' (as i)) (by
    refine exists_gq_of_cast (O j).hV (fun g => ∑ i, (inC (O j).c') (as i) *
      (rdU (T.U ((j : ℕ) + 1) (O j).s0)) ((actLev T.Q.c (O j).lev2 z) (fs i)) (T.dict ((j : ℕ) + 1) (O j).s0 g).fst
        (T.dict ((j : ℕ) + 1) (O j).s0 g).snd = 0) fun q => ?_
    have e := hne q
    have hmu : (O j).mu q.out ≠ 0 := by
      have h := (hM.muUnit _ hj _ hs0).2.1 (cast (congrArg (GA D) (O j).hV.symm) q.out)
      intro h0
      have h0' : T.mu ((j : ℕ) + 1) (O j).s0 (cast (congrArg (GA D) (O j).hV.symm) q.out) = 0 := h0
      rw [h0', norm_zero] at h
      exact zero_ne_one h
    have e2 : rdU (unfBC (O j).hle (T.toCore.U ((j : ℕ) + 1)) (inC (O j).c')) (actLev (O j).c' (O j).lev2 z f)
        ((O j).dict q.out).1 ((O j).dict q.out).2 = 0 := by
      have e1 : jFn (Wc D j) (inC (O j).c') (rdU (unfBC (O j).hle (T.toCore.U ((j : ℕ) + 1)) (inC (O j).c')))
          (O j).dict (O j).mu (actLev (O j).c' (O j).lev2 z f) q = (O j).mu q.out *
          rdU (unfBC (O j).hle (T.toCore.U ((j : ℕ) + 1)) (inC (O j).c')) (actLev (O j).c' (O j).lev2 z f)
            ((O j).dict q.out).1 ((O j).dict q.out).2 := rfl
      rw [e1] at e
      exact (mul_eq_zero.1 e).resolve_left hmu
    rw [hrd] at e2
    simp only [Finset.sum_apply, Pi.smul_apply, smul_eq_mul] at e2
    exact e2)
  have hz0 := eq_zero_of_rdU T.toCore hM hj (O j).c' (O j).hle (inC (O j).c') hs0 hF' hgs h1 hrel
  apply hf0
  have e3 : actLev (O j).c' (O j).lev2 (z⁻¹ * z) f = f := by
    rw [inv_mul_cancel]
    exact Formalism.L2.Pj.actL_one _ _ _ hact'.total hact'.func hact'.one hfsec.1
  rw [← e3]
  have e4 := Formalism.L2.Pj.actL_mul _ _ _ hact'.total hact'.func hact'.mul z⁻¹ z hfsec.1
  refine e4.trans ?_
  show actLev (O j).c' (O j).lev2 z⁻¹ (actLev (O j).c' (O j).lev2 z f) = 0
  rw [hz0, map_zero]

end GlobalTheory.MovedUnifNe
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsCentralTranslateUniformisationCuspFormNeZe =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsThetaSeriesRationalVectorNeZeroOfCuspForms =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsThetaSeriesRationalVectorNeZeroOfCuspForms", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.NormalFam\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ConjTupRefl\npublic import Formalism.LocalToGlobal.IndefiniteReal.FWTie\npublic import Formalism.LocalToGlobal.IndefiniteReal.ZeroPartEigenvalueConvention\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ClassSumsSpanCuspFormsBaseTupleSecondField\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaLiftEqClassSumThetaKernelsLowestKType\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OneMapOfOfExtends\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CuspFormsBaseChangeSecondFieldNeBot\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsCentralTranslateUniformisationCuspFormNeZe\nimport Formalism.LocalToGlobal.Columns.CoefficientsModP.FkMapInitMinor\npublic import Formalism.LocalToGlobal.Columns.MtIsoVal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.BlockTheory.NonGaloisCusps.RationalRayLevels\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IntFormsSubset\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnivOfNotLinearIndependent\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.IndefR.Links IsDedekindDomain NumberField GlobalTheory.ExportSeries Formalism.L2.Pj GlobalTheory.CoverRead GlobalTheory.IndefiniteRowSideFullHecke.RationalRayLevels GlobalTheory.ConjTwist
open Formalism.L2.Host (embLL0)
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section

namespace GlobalTheory.SeriesTie.RatNe

theorem thetaKO_sum' {D : D7} {S T : HSp D} (om : GA D S × GA D T →* Module.End ℂ (WO S T → ℂ)) (x : GA D S) (g : GA D T)
    {ι : Type} (s : Finset ι) (c : ι → ℂ) (φ : ι → WO S T → ℂ) :
    thetaKO om x g (∑ k ∈ s, c k • φ k) = ∑ k ∈ s, c k * thetaKO om x g (φ k) := by
  unfold thetaKO

  rw [map_sum, Finset.sum_apply]
  refine Finset.sum_congr rfl fun k _ => ?_
  rw [map_smul, Pi.smul_apply, smul_eq_mul]

theorem ser_sum {D : D7} {Γ : Type} [Group Γ] [Fintype Γ] {Pl0 T0 : Type} {A : FamIn D.what₂.LL Γ Pl0 T0 D.R.m}
    {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat D A Ks) (i : Fin D.R.m) (t : T0)
    (f : WO (Vc D i) (Wc D i) → ℂ) (u : ∀ ρ, lowT (R.MW i (sg0 D A)) ρ) (h : GA D (Vc D i)) (g : GA D (Wc D i))
    {ι : Type} (s : Finset ι) (a : ι → ℂ) (w : ι → (R.cV i).W) :
    ser R i t f u h (∑ k ∈ s, a k • w k) g = ∑ k ∈ s, a k * ser R i t f u h (w k) g := by
  unfold ser

  rw [map_sum, map_sum]
  simp only [map_smul]
  exact thetaKO_sum' _ _ _ _ _ _

theorem exists_rat_of_ser_ne {D : D7} {Γ : Type} [Group Γ] [Fintype Γ] {Pl0 T0 : Type} {A : FamIn D.what₂.LL Γ Pl0 T0 D.R.m}
    {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat D A Ks) (i : Fin D.R.m) (t : T0)
    (f : WO (Vc D i) (Wc D i) → ℂ) (u : ∀ ρ, lowT (R.MW i (sg0 D A)) ρ) (h : GA D (Vc D i)) (g : GA D (Wc D i))
    {K' : Type} [Field K'] (σ' : K' →+* ℂ) (ψ : K' →+* D.what₂.LL) (c0' : VsV D i K' →ₛₗ[σ'] (R.cV i).W)
    (c : VsV D i ℂ →ₗ[ℂ] (R.cV i).W) (hc : ExtC R i σ' c0' c) (w : VsV D i K')
    (hne : ser R i t f u h (c0' w) g ≠ 0) :
    ∃ (v : VsV D i D.what₂.LL) (x : VsV D i ℂ),
      (∀ m, ∃ q : ℚ, AddMonoidAlgebra.coeff (v : Pol D.what₂.LL D.what₂.Tau (Vc D i).rank) m = (q : D.what₂.LL)) ∧
      (x : Pol ℂ D.what₂.Tau (Vc D i).rank) = MvPolynomial.map D.what₂.embLL (v : Pol D.what₂.LL D.what₂.Tau (Vc D i).rank) ∧
      ser R i t f u h (c x) g ≠ 0 := by
  classical
  have hw' : c0' w = ∑ b, σ' ((bVV K' (lamV D i)).repr w b) • c0' (bVV K' (lamV D i) b) := by
    conv_lhs => rw [← (bVV K' (lamV D i)).sum_repr w]

    rw [map_sum]
    simp only [map_smulₛₗ]
  rw [hw', ser_sum] at hne
  obtain ⟨b, -, hb⟩ := Finset.exists_ne_zero_of_sum_ne_zero hne
  have hb' := right_ne_zero_of_mul hb
  obtain ⟨P, hP⟩ := bVVfun_int K' (lamV D i) b
  have hvmem : MvPolynomial.map (Int.castRingHom D.what₂.LL) P ∈ VV D.what₂.LL (lamV D i) := by
    have := Formalism.L2.Col.mti_map_mem_VV ψ (lamV D i) (bVV K' (lamV D i) b).2
    rwa [bVV_coe, hP, MvPolynomial.map_map, show ψ.comp (Int.castRingHom K') = Int.castRingHom _ from
      RingHom.ext_int _ _] at this
  have hxmem : MvPolynomial.map (Int.castRingHom ℂ) P ∈ VV ℂ (lamV D i) := by
    have := Formalism.L2.Col.mti_map_mem_VV σ' (lamV D i) (bVV K' (lamV D i) b).2
    rwa [bVV_coe, hP, MvPolynomial.map_map, show σ'.comp (Int.castRingHom K') = Int.castRingHom _ from
      RingHom.ext_int _ _] at this
  refine ⟨⟨_, hvmem⟩, ⟨_, hxmem⟩, fun m => ⟨((AddMonoidAlgebra.coeff P m : ℤ) : ℚ), ?_⟩, ?_, ?_⟩
  · show AddMonoidAlgebra.coeff (MvPolynomial.map (Int.castRingHom D.what₂.LL) P) m = _
    rw [MvPolynomial.coeff_map]
    simp
  · show MvPolynomial.map (Int.castRingHom ℂ) P = MvPolynomial.map D.what₂.embLL (MvPolynomial.map (Int.castRingHom D.what₂.LL) P)
    rw [MvPolynomial.map_map, RingHom.ext_int (D.what₂.embLL.comp (Int.castRingHom D.what₂.LL)) (Int.castRingHom ℂ)]
  · rwa [hc (bVV K' (lamV D i) b) ⟨_, hxmem⟩ (by
      show MvPolynomial.map (Int.castRingHom ℂ) P = MvPolynomial.map σ' ((bVV K' (lamV D i) b : VV K' (lamV D i)) : Pol K' D.what₂.Tau (Vc D i).rank)
      rw [bVV_coe, hP, MvPolynomial.map_map, RingHom.ext_int (σ'.comp (Int.castRingHom K')) (Int.castRingHom ℂ)])]

end GlobalTheory.SeriesTie.RatNe

namespace GlobalTheory.SeriesTie.RatNe


open GlobalTheory.OneMapAll in
theorem exists_ser_rat_ne : ∀ (D : D7) (Γ : Type) [Group Γ] [Fintype Γ] (Pl0 I0 T0 : Type) (A3 : FamIn3 D.what₂.LL Γ Pl0 I0 (List ℕ) T0 D.R.m) (T : CoreJ D) [Algebra T.Q.c.F D.what₂.LL] (Rl : RealDat3 D A3 T.Q.c.F) (F : Face D A3.A) (κ : ∀ j : Fin D.R.m, WeightFamilies.Wt D ((j : ℕ) + 1)) (v₀ : ∀ (j : Fin D.R.m) (σ : D.what₂.LL →+* ℂ), (Rl.MW j σ).Vec) (O : ∀ j, OMDat T.toCore Rl.toRealDat j Unit (fun _ => A3.A.μ0)), 8 * D.R.f * D.R.r + 4 ≤ D.R.nV → GlobalTheory.Hk3.Core Rl.toRealDat F → Nonempty (FWTie T Rl.toRealDat κ v₀) → IoExt Rl.toRealDat → ∀ (j : Fin D.R.m), OMPins T Rl.toRealDat κ v₀ O j → OneMapRow0 T Rl.toRealDat κ v₀ O j → T.toCore.cuspA ((j : ℕ) + 1) (wtA (κ j)) (κ j).n ≠ ⊥ → ∀ (c : VsV D j ℂ →ₗ[ℂ] (Rl.cV j).W), ExtC Rl.toRealDat j (inC (O j).c') (O j).c0' c → ∀ (u : ∀ ρ, lowT (Rl.MW j (sg0 D A3.A)) ρ), (∀ ρ, (u ρ : (Rl.MW j (sg0 D A3.A)).sm ρ) = v₀ j _ ρ) → ∃ (v : VsV D j D.what₂.LL) (x : VsV D j ℂ) (h : GA D (Vc D j)) (g : GA D (Wc D j)), (∀ m, ∃ q : ℚ, AddMonoidAlgebra.coeff (v : Pol D.what₂.LL D.what₂.Tau (Vc D j).rank) m = (q : D.what₂.LL)) ∧ (x : Pol ℂ D.what₂.Tau (Vc D j).rank) = MvPolynomial.map D.what₂.embLL (v : Pol D.what₂.LL D.what₂.Tau (Vc D j).rank) ∧ h ∈ GfC (Vc D j) ∧ ser Rl.toRealDat j A3.A.μ0 (Rl.vP j A3.A.μ0) u h (c x) g ≠ 0 := by
  intro D Γ _ _ Pl0 I0 T0 A3 T _ Rl F κ v₀ O hnV hC hFW hIo j hP hrow hne c hc u hu
  have hspan := GlobalTheory.ClassSumSpanCore.classSumsSpan_core D Γ Pl0 T0 A3.A T Rl.toRealDat F κ v₀ O hnV hC hFW hIo j hP hrow
  have hA1 : cuspOver (O j) (κ j) ≠ ⊥ := _root_.GlobalTheory.BaseChangeNonzero.cuspOver_ne_bot D Γ Pl0 T0 A3.A T Rl.toRealDat F κ v₀ O hnV hC hFW hIo j hP hrow hne
  obtain ⟨g0, ⟨hg0, x, hx, hsum⟩, hg0ne⟩ : ∃ g0 ∈ {g | g ∈ cuspOver (O j) (κ j) ∧ ∃ x, (O j).Plc () x ∧ IsSum (O j) () x g},
      g0 ≠ 0 := by
    by_contra hcon
    push Not at hcon
    refine hA1 (eq_bot_iff.2 (hspan.trans ((Submodule.span_le).2 fun g hg => ?_)))
    rw [SetLike.mem_coe, hcon g hg]
    exact Submodule.zero_mem _
  have hrow' := hrow
  obtain ⟨cc, ph, hO⟩ := hrow'
  obtain ⟨-, ⟨-, -, -, hcc, hph, z, hz, hR⟩, -⟩ := hO
  obtain ⟨ze, -, ⟨m, hm, hze⟩, hR⟩ := hR ()
  have hid := (hR x hx).2 g0 ((mem_cusp _ _ _ _ _ _).1 hg0).1 hsum
  obtain ⟨q, hq⟩ : ∃ q, jFn (Wc D j) (inC (O j).c') (rdU (unfBC (O j).hle (T.toCore.U ((j : ℕ) + 1)) (inC (O j).c')))
      (O j).dict (O j).mu (actLev (O j).c' (O j).lev2 z g0) q ≠ 0 :=
    _root_.GlobalTheory.MovedUnifNe.exists_jFn_actLev_ne D Γ Pl0 T0 A3.A T Rl.toRealDat F κ v₀ O hnV hC hFW hIo j hP hrow g0 hg0 hg0ne z hz
  have hth : (O j).thAd () x q ≠ 0 := by
    intro h0
    have e := hid q
    rw [h0, mul_zero] at e
    have hze0 : ze ≠ 0 := fun h => by simp [h, hm.ne'] at hze
    have hcc0 : cc ((O j).dict q.out).1 ≠ 0 := fun h => by simpa [h] using hcc ((O j).dict q.out).1
    have hl : ((lieFac (T.toCore.Q.Dw ((j : ℕ) + 1)) (xiR D) (wtA (κ j)) : ℝ) : ℂ) ≠ 0 :=
      Complex.ofReal_ne_zero.2 (lieFac_pos _ _ _).ne'
    exact (mul_ne_zero (mul_ne_zero (mul_ne_zero hze0 hcc0) hl) hq) e.symm
  obtain ⟨hLL, hPins⟩ := hP
  obtain ⟨hs, J', hRep, -, hTh, hPlc⟩ := (hPins.tuple ()).reps
  obtain ⟨x₀, hpl⟩ := (hPlc x).1 hx
  have e1 := hTh _ x hpl
  rw [e1] at hth
  have hv : (fun ρ => (u ρ : (Rl.toRealDat.MW j (sg0 D A3.A)).sm ρ)) = v₀ j (sg0 D A3.A) := funext hu
  have hcls := GlobalTheory.LiftUnfoldCore.thF_eq_classSum_core D Γ Pl0 T0 A3.A T.Q.c.F Rl.toRealDat F hC j A3.A.μ0 (O j).c'.F
    (inC (O j).c') (O j).c0' ((O j).Cl' ()) hs ((O j).bad ()) J' ((O j).Lh ()) ((O j).gam ()) ((O j).vol ()) hPins.lift.std hRep
    _ x hpl u q.out
  rw [hv] at hcls
  change Rl.toRealDat.thF j A3.A.μ0 (jVx Rl.toRealDat j A3.A.μ0 x₀) (v₀ j (sg0 D A3.A)) q.out ≠ 0 at hth
  rw [hcls] at hth
  obtain ⟨k, -, hk⟩ := Finset.exists_ne_zero_of_sum_ne_zero hth
  have hk' : ser Rl.toRealDat j A3.A.μ0 (Rl.vP j A3.A.μ0) u (hs k) ((O j).c0' (x k)) q.out ≠ 0 := right_ne_zero_of_mul hk
  have hsurj : Function.Surjective (O j).jL := by
    intro a
    have ha : (a : ℂ) ∈ D.what₂.embLL.toRatAlgHom.fieldRange := hLL ▸ a.2
    obtain ⟨y, hy⟩ := AlgHom.mem_fieldRange.1 ha
    refine ⟨y, Subtype.ext ?_⟩
    have := RingHom.congr_fun hPins.lift.field y
    exact this.trans hy
  let ψ : (O j).c'.F →+* D.what₂.LL := (RingEquiv.ofBijective (O j).jL ⟨(O j).jL.injective, hsurj⟩).symm.toRingHom
  obtain ⟨v, x', hv1, hv2, hv3⟩ := exists_rat_of_ser_ne Rl.toRealDat j A3.A.μ0 _ u (hs k) q.out (inC (O j).c') ψ (O j).c0' c hc
    (x k) hk'
  exact ⟨v, x', hs k, q.out, hv1, hv2, (hRep.2.2.2.2.2.2 k).1.1, hv3⟩

end GlobalTheory.SeriesTie.RatNe
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsThetaSeriesRationalVectorNeZeroOfCuspForms =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsThetaSeriesRationalVectorNeZeroOfCuspFormsStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsThetaSeriesRationalVectorNeZeroOfCuspFormsStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.NormalFam\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ConjTupRefl\npublic import Formalism.LocalToGlobal.IndefiniteReal.FWTie\npublic import Formalism.LocalToGlobal.IndefiniteReal.ZeroPartEigenvalueConvention\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsThetaSeriesRationalVectorNeZeroOfCuspForms\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.BlockTheory.NonGaloisCusps.RationalRayLevels\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IntFormsSubset\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnivOfNotLinearIndependent\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.IndefR.Links IsDedekindDomain NumberField GlobalTheory.ExportSeries Formalism.L2.Pj GlobalTheory.CoverRead GlobalTheory.IndefiniteRowSideFullHecke.RationalRayLevels GlobalTheory.ConjTwist
open Formalism.L2.Host (embLL0)
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsThetaSeriesRationalVectorNeZeroOfCuspFormsStatement =====
