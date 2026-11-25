module

import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PolyCoeffVectorsLieInFiniteDimensionalSmooth
public import Development.AbelianVarietyTheory.Definitions.Divisors.DatumEquiv
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.IsPhysSet
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.AdMatConjTranspose
public import Development.AbelianVarietyTheory.Definitions.Divisors.VdmSplit
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.DiscreteSeriesExistence.Bridge
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.LayerLeGeneratedTensorFock
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GapConditionsOfLargeGaps
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.DiscreteSeriesExistence.Arbitrary
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.DiscreteSeriesExistence.EquivSigLamOfIsDS
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.CoordSpan
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.ActDiagMemOfWK
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.ExistsNonzeroPhysicalHighestWeightVectorTensFock
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.FockWeightWedgeLowerModes
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.TensFockInfPhysSub
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.DiscreteSeriesExistence.MeasurePreservingMulRight
public import Development.AbelianVarietyTheory.Definitions.Divisors.TCoefMInMMul
public import Formalism.RealPlaceAnalysis.Complexify
public import Development.AbelianVarietyTheory.Definitions.Foundations.ContinuousOfMemCcSmooth
public import Development.AbelianVarietyTheory.Definitions.Foundations.InnerEqZeroOfNotUEquiv
public import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.IntegralConjInnerMulInnerOfIsEmptyEquiv
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.DetOneSubEqSumMinors
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.SupTrace
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.DiracSquareMemLayer
public import Development.AbelianVarietyTheory.Definitions.Divisors.RangeShape
public import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.AnalyticIntertwiners.Clause1
public import Mathlib.LinearAlgebra.PID
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.HighestWeights.ContinuousTorepK
public import ReciprocityTheory.ReductiveGroups.SymplecticTraces.WeylCharacters.Weyl
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HarishChandraModulesIndefiniteUnitaryGroup
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdjointDetOnCompactTorus
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EvConjTransposeMem
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IrrepAveragesFinDimSmoothOfKTypesAndPolyAverages
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PolyCoefIrrepHasDerivedAction
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeylFormulaCompactTorusIdentityOfIngredients
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
import Mathlib.Topology.Sheaves.Init
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TensorRepresentations.CsqDdPt
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.MemTensorFockOfCoeffs
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TensorRepresentations.CARUnit
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.DiscreteSeriesExistence.Compact
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.DiscreteSeriesExistence.BridgeExpK
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.DiscreteSeriesExistence.ExistsKhwGenSubOfKType
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.DiscreteSeriesExistence.PropsEquiv
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.RingTheory.Finiteness.Lattice
import Std.Tactic.BVDecide.Normalize.Prop
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirAlgebra.MulMulSubMulMulEqAdd
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.DiscreteSeriesExistence.CFCoreA
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.MemHighestWeightSubIff
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.ProdModeCharExp
import Mathlib.Tactic.Lemma
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Analysis.InnerProductSpace.Trace
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.KoszulLowersPower
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.CompactHaarRightInvariantInst
import Mathlib.Topology.Algebra.MvPolynomial
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.AdPhysDiagSingle
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.TraceIntegralRestrict
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.AnalyticVectors.Unitary
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.TraceEqTraceRestrictOfRangeLe

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdjointDetTraceClassFunction, Development.AbelianVarietyTheory.Proofs.DivisorProofs.CasimirScalarStableSumSpace, Development.AbelianVarietyTheory.Proofs.DivisorProofs.CasimirValueHighestWeightCoordinates, Development.AbelianVarietyTheory.Proofs.DivisorProofs.CompactDiscreteSeriesOwnType, Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqDiscreteSeriesOfLowestKTypeCasimir, Development.AbelianVarietyTheory.Proofs.DivisorProofs.FockCoordinatesSpanFiniteDimensional, Development.AbelianVarietyTheory.Proofs.DivisorProofs.HarishChandraWeightIntegralDominant, Development.AbelianVarietyTheory.Proofs.DivisorProofs.HighestWeightKernelLowestType, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntertwinerPreservesHighestWeight, Development.AbelianVarietyTheory.Proofs.DivisorProofs.MaxCompactPolynomialBlockTimesConjDetPower, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ModeMatrixDetEqAdjointDet, Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsCharFnAndIsPseudoCoeffOfCompact, Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormIrreducibleCharacterUnitaryMaxCompactEqOne, Development.AbelianVarietyTheory.Proofs.DivisorProofs.PolyOnKConj, Development.AbelianVarietyTheory.Proofs.DivisorProofs.StrIdxProof2, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SupertraceCarriedByDiracKernel, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TraceEqOfMem, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TracePairingNonzeroIntertwiner, Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitaryRepUpqMatrixFunction, Development.AbelianVarietyTheory.Proofs.DivisorProofs.MaximalCompactPseudoCoefficientData

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdjointDetTraceClassFunction =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdjointDetTraceClassFunction", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.DatumEquiv\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.IsPhysSet\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.AdMatConjTranspose\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open ReciprocityTheory.ChartRestriction.DS ReciprocityTheory.ChartRestriction.DS.TRGap Matrix
open Formalism.REAL (KG toMK)

namespace GlobalTheory.PsCo.PcEF.PhysicalMatrixDeterminant

variable {n : ℕ} {ε : Fin n → Bool}

def physM (ε : Fin n → Bool) (k : Matrix (Fin n) (Fin n) ℂ) :
    Matrix {x : Fin n × Fin n // IsPhys ε x} {x : Fin n × Fin n // IsPhys ε x} ℂ :=
  fun x y => k x.1.1 y.1.1 * star (k x.1.2 y.1.2)

theorem physM_eq_adMat (k : Matrix (Fin n) (Fin n) ℂ) (x y : {x : Fin n × Fin n // IsPhys ε x}) :
    physM ε k x y = adMat ε k x.1 y.1 := by
  simp [physM, adMat, x.2, y.2]

theorem physM_mul {a b : Matrix (Fin n) (Fin n) ℂ} (ha : a ∈ Kset ε) (hb : b ∈ Kset ε) :
    physM ε (a * b) = physM ε a * physM ε b := by
  ext x y
  rw [physM_eq_adMat, adMat_mul ha hb, Matrix.mul_apply, Matrix.mul_apply,
    ← Fintype.sum_subtype_add_sum_subtype (IsPhys ε)]
  have h0 : ∑ z : {z : Fin n × Fin n // ¬ IsPhys ε z}, adMat ε a x.1 z * adMat ε b z y.1 = 0 :=
    Finset.sum_eq_zero fun z _ => by simp [adMat, x.2, z.2]
  rw [h0, add_zero]
  simp only [physM_eq_adMat]

theorem physM_one : physM ε (1 : Matrix (Fin n) (Fin n) ℂ) = 1 := by
  ext x y
  rw [physM_eq_adMat, adMat_one]
  by_cases h : x = y
  · subst h; simp
  · have h' : x.1 ≠ y.1 := fun e => h (Subtype.ext e)
    simp [h, h']

theorem physDet_eq (k : Matrix (Fin n) (Fin n) ℂ) : physDet ε k = (1 - physM ε k).det := by
  unfold physDet
  congr 1

theorem physDet_conj (k k' : KG ε) : physDet ε (toMK (k'⁻¹ * k * k')) = physDet ε (toMK k) := by
  have ha : toMK k'⁻¹ ∈ Kset ε := (k'⁻¹).2
  have hb : toMK k ∈ Kset ε := k.2
  have hc : toMK k' ∈ Kset ε := k'.2
  have hab : toMK k'⁻¹ * toMK k ∈ Kset ε := (k'⁻¹ * k).2
  have hac : physM ε (toMK k'⁻¹) * physM ε (toMK k') = 1 := by
    rw [← physM_mul ha hc, show toMK k'⁻¹ * toMK k' = toMK (k'⁻¹ * k') from rfl, inv_mul_cancel]
    exact physM_one
  rw [physDet_eq, physDet_eq, show toMK (k'⁻¹ * k * k') = toMK k'⁻¹ * toMK k * toMK k' from rfl,
    physM_mul hab hc, physM_mul ha hb]
  have e : 1 - physM ε (toMK k'⁻¹) * physM ε (toMK k) * physM ε (toMK k') =
      physM ε (toMK k'⁻¹) * (1 - physM ε (toMK k)) * physM ε (toMK k') := by
    rw [Matrix.mul_sub, Matrix.sub_mul, Matrix.mul_one, hac]
  rw [e, det_mul, det_mul, mul_comm (det (physM ε (toMK k'⁻¹))), mul_assoc, ← det_mul, hac, det_one, mul_one]

theorem trK_conj {W : Type} [NormedAddCommGroup W] [InnerProductSpace ℂ W] [FiniteDimensional ℂ W]
    (T : Matrix (Fin n) (Fin n) ℂ → (W →L[ℂ] W)) (hT : Formalism.MainNotions.S.IsURepOn (Formalism.REAL.Kset ε) T) (k k' : KG ε) :
    trK T (toMK (k'⁻¹ * k * k')) = trK T (toMK k) := by
  have hmul : ∀ a b : KG ε, (T (toMK (a * b)) : W →ₗ[ℂ] W) = (T (toMK a) : W →ₗ[ℂ] W) * (T (toMK b)) := by
    intro a b
    rw [show toMK (a * b) = toMK a * toMK b from rfl, hT.1.2 _ a.2 _ b.2]
    rfl
  have h1 : (T (toMK (1 : KG ε)) : W →ₗ[ℂ] W) = 1 := by
    rw [show toMK (1 : KG ε) = 1 from rfl, hT.1.1]
    rfl
  unfold trK
  rw [hmul, hmul, LinearMap.trace_mul_comm, ← mul_assoc, ← hmul k' k'⁻¹, mul_inv_cancel, h1, one_mul]

end GlobalTheory.PsCo.PcEF.PhysicalMatrixDeterminant

namespace GlobalTheory.PsCo.PcEF

theorem adjointDetTrace_classFunction (n : ℕ) (ε : Fin n → Bool) (k k' : KG ε) :
    physDet ε (toMK (k'⁻¹ * k * k')) = physDet ε (toMK k) ∧
      ∀ (W : Type) [NormedAddCommGroup W] [InnerProductSpace ℂ W] [FiniteDimensional ℂ W]
        (T : Matrix (Fin n) (Fin n) ℂ → (W →L[ℂ] W)),
        Formalism.MainNotions.S.IsURepOn (Formalism.REAL.Kset ε) T →
        trK T (toMK (k'⁻¹ * k * k')) = trK T (toMK k) := by
  refine ⟨PhysicalMatrixDeterminant.physDet_conj k k', ?_⟩
  intro W _ _ _ T hT
  exact PhysicalMatrixDeterminant.trK_conj T hT k k'

end GlobalTheory.PsCo.PcEF

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdjointDetTraceClassFunction =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CasimirScalarStableSumSpace =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.CasimirScalarStableSumSpace", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.VdmSplit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.DiscreteSeriesExistence.Bridge\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.TensorRepresentations.CsqDdPt\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.LayerLeGeneratedTensorFock\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.MemTensorFockOfCoeffs\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.GapConditionsOfLargeGaps\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open ReciprocityTheory.ChartRestriction.DS ReciprocityTheory.ChartRestriction.DS.TRGap

namespace GlobalTheory.PsCo.PcEF

open GlobalTheory.PsCo.PcEG

theorem casimirScalar_stableSumSpace : BuildY := by
  intro n ε H _ _ σ D E hσ hD c hc L hLf hLK
  have hE : IsGlRep E := hD.glRep
  have hLk : IsKStableSub ε E L :=
    isKStableSub_of_kStable hσ hD L hLf fun k hk v hv => ⟨sigD hD hk v, hLK k hk v hv, rfl⟩
  set Dop := dOp ε (eT E) cpT + dOp' ε (eT E) cmT with hDop
  let Y0 : Submodule ℂ (TensorProduct ℂ D (Fock n)) := tensFock L ⊓ physicalSubspace ε
  have hA : ∀ a b, ε a = ε b → ∀ x ∈ Y0, diagE ε (eT E) cpT cmT a b x ∈ Y0 :=
    fun a b hab x hx => ⟨tensorFock_diagAction_stable ε hLk hab hx.1, (physSub_stable ε E).2.1 a b x hx.2⟩
  have hD2 : ∀ y ∈ Y0, Dop (Dop y) ∈ Y0 := by
    intro y hy
    have h2 := LinearMap.congr_fun (two_D_sq (eT_isGlRep hE) cpT_cmT_isCAR (eT_commutesCAR E) ε) y
    rw [LinearMap.smul_apply, Module.End.mul_apply] at h2
    have hcas : casimir (eT (n := n) E) y = c • y := by
      rw [TRGap.casimir_eT]
      exact map_eq_smul_of_tensFock (fun v _ => hc v) hy.1
    have hmem : (2 : ℂ) • Dop (Dop y) ∈ Y0 := by
      rw [hDop, h2]
      simp only [LinearMap.sub_apply, LinearMap.add_apply, LinearMap.neg_apply, LinearMap.smul_apply,
        LinearMap.sum_apply]
      rw [hcas]
      refine Submodule.sub_mem _ (Submodule.add_mem _ (Submodule.neg_mem _ (Submodule.smul_mem _ _ hy)) ?_)
        (Submodule.smul_mem _ _ (Submodule.sum_mem _ fun a _ => Submodule.smul_mem _ _ (hA a a rfl y hy)))
      simp only [casimirK, LinearMap.sum_apply, Module.End.mul_apply]
      exact Submodule.sum_mem _ fun a _ => Submodule.sum_mem _ fun b hb =>
        hA a b (Finset.mem_filter.1 hb).2.symm _ (hA b a (Finset.mem_filter.1 hb).2 y hy)
    have := Submodule.smul_mem _ (1 / 2 : ℂ) hmem
    rwa [smul_smul, show (1 / 2 : ℂ) * 2 = 1 by norm_num, one_smul] at this
  have hG0 : ∀ z ∈ Y0, gradT z ∈ Y0 := fun z hz =>
    ⟨tensFock_lTensor_stable _ hz.1, (physSub_stable ε E).2.2.2.2 z hz.2⟩
  have hW0 : ∀ (k : Matrix (Fin n) (Fin n) ℂ) (hk : k ∈ Kset ε), ∀ y ∈ Y0, wK hD hk y ∈ Y0 :=
    fun k hk y hy => ⟨wK_tensFock hD hk (fun x hx => hLK k hk x hx) hy.1, wK_physSub hD hk hy.2⟩
  have hfd0 : FiniteDimensional ℂ Y0 := by
    haveI := tensorFock_finiteDimensional (n := n) hLf
    exact Submodule.finiteDimensional_of_le inf_le_left
  refine ⟨Y0 ⊔ Y0.map Dop, inferInstance, le_sup_left, sup_le inf_le_right ?_, ?_, ?_, ?_⟩
  · rintro _ ⟨y, hy, rfl⟩
    exact dD_physSub E hy.2
  · intro y hy
    obtain ⟨y0, hy0, y1, ⟨x, hx, rfl⟩, rfl⟩ := Submodule.mem_sup.1 hy
    show Dop (y0 + Dop x) ∈ _
    rw [map_add (f := _)]
    exact Submodule.add_mem _ (Submodule.mem_sup_right ⟨y0, hy0, rfl⟩) (Submodule.mem_sup_left (hD2 x hx))
  · intro y hy
    obtain ⟨y0, hy0, y1, ⟨x, hx, rfl⟩, rfl⟩ := Submodule.mem_sup.1 hy
    rw [map_add (f := _), hDop, gradT_D]
    exact Submodule.add_mem _ (Submodule.mem_sup_left (hG0 y0 hy0))
      (Submodule.mem_sup_right ⟨-gradT x, Submodule.neg_mem _ (hG0 x hx), by rw [map_neg]⟩)
  · intro k hk y hy
    obtain ⟨y0, hy0, y1, ⟨x, hx, rfl⟩, rfl⟩ := Submodule.mem_sup.1 hy
    rw [map_add (f := _), hDop, wK_D hσ hD hk]
    exact Submodule.add_mem _ (Submodule.mem_sup_left (hW0 k hk y0 hy0))
      (Submodule.mem_sup_right ⟨_, hW0 k hk x hx, rfl⟩)

end GlobalTheory.PsCo.PcEF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CasimirScalarStableSumSpace =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CasimirValueHighestWeightCoordinates =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.CasimirValueHighestWeightCoordinates", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.VdmSplit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.TensorRepresentations.CARUnit\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.TensorRepresentations.CsqDdPt\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.LayerLeGeneratedTensorFock\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.GapConditionsOfLargeGaps\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Finset ReciprocityTheory.ChartRestriction.DS ReciprocityTheory.ChartRestriction.DS.TRGap

namespace GlobalTheory.PsCo.PcEF

open GlobalTheory.PsCo.PcEG

theorem casimirValue_highestWeightCoordinates : CasCoord := by
  intro n ε lam M _ _ E hE z hz hD s
  have hE' := eT_isGlRep (n := n) hE
  have h2 := LinearMap.congr_fun (two_D_sq hE' cpT_cmT_isCAR (eT_commutesCAR E) ε) z
  have hK := casimirK_khwVec_compact ε (diagE_compact hE' cpT_cmT_isCAR (eT_commutesCAR E) ε) hz
  have hs : ∑ a, ((rhoHol ε a : ℝ) : ℂ) • diagE ε (eT E) cpT cmT a a z =
      ((dot (rhoHol ε) (gaW ε lam) : ℝ) : ℂ) • z := by
    simp only [dot, Complex.ofReal_sum, Complex.ofReal_mul, sum_smul, hz.1, smul_smul]
  have h0 : ((2 : ℂ) • ((dOp ε (eT E) cpT + dOp' ε (eT E) cmT) * (dOp ε (eT E) cpT + dOp' ε (eT E) cmT))) z = 0 := by
    rw [LinearMap.smul_apply, mul_apply_eq_comp]
    have : (dOp ε (eT E) cpT + dOp' ε (eT E) cmT) z = 0 := hD
    rw [this, map_zero, smul_zero]
  rw [h0] at h2
  simp only [LinearMap.sub_apply, LinearMap.add_apply, LinearMap.neg_apply, LinearMap.smul_apply,
    LinearMap.sum_apply, hK, hs] at h2
  have hid := khw_real_identity ε (lam - rhoC ε)
  have hg : lam - rhoC ε + rhoHol ε = gaW ε lam := rfl
  have hl : lam - rhoC ε + rhoC ε = lam := sub_add_cancel _ _
  rw [hg, hl] at hid
  have hc : casimir (eT (n := n) E) z = ((casVal lam : ℝ) : ℂ) • z := by
    have e : casimir (eT (n := n) E) z =
        ((nsq (gaW ε lam + rhoC ε) - nsq (rhoC ε) : ℝ) : ℂ) • z -
          (2 : ℂ) • (((dot (rhoHol ε) (gaW ε lam) : ℝ) : ℂ) • z) := by
      linear_combination (norm := module) h2
    rw [e, casVal, ← hid]
    simp only [Complex.ofReal_sub, Complex.ofReal_mul, Complex.ofReal_ofNat, sub_smul, smul_smul]
  have hcoord := congrArg (tco s) hc
  rw [TRGap.casimir_eT, tco_map_left] at hcoord
  simpa only [tco, map_smul] using hcoord

end GlobalTheory.PsCo.PcEF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CasimirValueHighestWeightCoordinates =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CompactDiscreteSeriesOwnType =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.CompactDiscreteSeriesOwnType", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.VdmSplit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.GapConditionsOfLargeGaps\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.DiscreteSeriesExistence.Compact\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open ReciprocityTheory.ChartRestriction.DS ReciprocityTheory.ChartRestriction.DS.TRGap

namespace GlobalTheory.PsCo.PcEF

open GlobalTheory.PsCo.PcEG

variable {n : ℕ}

theorem cpt_Jm_comm {ε : Fin n → Bool} (hc : ∀ a b, ε a = ε b) (M : Matrix (Fin n) (Fin n) ℂ) :
    Formalism.REAL.Jm ε * M = M * Formalism.REAL.Jm ε := by
  ext i j
  delta Formalism.REAL.Jm
  simp only [Matrix.diagonal_mul, Matrix.mul_diagonal, hc i j]
  ring

theorem cpt_Kset_eq {ε : Fin n → Bool} (hc : ∀ a b, ε a = ε b) :
    Formalism.REAL.Kset ε = Formalism.MainNotions.S.UJset ε := by
  ext g
  delta Formalism.REAL.Kset Formalism.MainNotions.S.UJset Formalism.REAL.inUJ
  simp only [Set.mem_ofPred_eq, Matrix.mem_unitaryGroup_iff', Matrix.star_eq_conjTranspose]
  constructor
  · rintro ⟨hu, -⟩
    rw [Matrix.mul_assoc, cpt_Jm_comm hc g, ← Matrix.mul_assoc, hu, Matrix.one_mul]
  · intro h
    refine ⟨?_, (cpt_Jm_comm hc g).symm⟩
    have h2 : g.conjTranspose * g * Formalism.REAL.Jm ε = Formalism.REAL.Jm ε := by
      rw [Matrix.mul_assoc, ← cpt_Jm_comm hc g, ← Matrix.mul_assoc]
      exact h
    have h3 := congrArg (· * Formalism.REAL.Jm ε) h2
    simp only [Matrix.mul_assoc, Formalism.REAL.Jm_mul_self, Matrix.mul_one] at h3
    exact h3

theorem compactDiscreteSeries_ownType : CptCase := by
  intro n ε lam h
  have hc := _root_.ReciprocityTheory.ChartRestriction.DS.cmpt_eps_eq h
  refine ⟨fun k => ?_, ?_, ?_⟩
  · have : IsEmpty {x : Fin n × Fin n // IsPhys ε x} :=
      ⟨fun x => by
        have h1 := x.2.1
        have h2 := x.2.2
        rw [hc x.1.1 x.1.2] at h1
        rw [h1] at h2
        exact Bool.noConfusion h2⟩
    unfold physDet
    exact Matrix.det_isEmpty
  · unfold sDeg sModes
    rw [Finset.card_eq_zero, Finset.filter_eq_empty_iff]
    rintro x - ⟨h1, h2, -⟩
    rw [hc x.1 x.2] at h1
    rw [h1] at h2
    exact Bool.noConfusion h2
  · intro X _ _ D hD
    obtain ⟨hcs, hnt, hU, hirr, -, ⟨S, hS⟩, -⟩ := hD
    have := hcs
    have hKU := cpt_Kset_eq hc
    have : FiniteDimensional ℂ S := hS.1
    have hclosed : IsClosed (S : Set X) := S.isClosed_of_finiteDimensional
    have hstab : ∀ g ∈ Formalism.MainNotions.S.UJset ε, ∀ v ∈ S, D g v ∈ S := fun g hg v hv =>
      hS.2.1 g (hKU ▸ hg) v hv
    have htop : S = ⊤ := by
      rcases hirr S hclosed hstab with h0 | h0
      · exfalso
        obtain ⟨v, hv, hv0, -⟩ := hS.2.2.2.1
        rw [h0] at hv
        exact hv0 ((Submodule.mem_bot ℂ).1 hv)
      · exact h0
    subst htop
    have hga : gaW ε lam = Formalism.QuantumDeterminants.lowK ε lam := by
      funext a
      have hN : Formalism.REAL.rhoN ε a = 0 := by
        unfold Formalism.REAL.rhoN
        have e1 : (Finset.univ.filter fun b => a < b ∧ ε b ≠ ε a) = ∅ :=
          Finset.filter_eq_empty_iff.2 fun b _ hb => hb.2 (hc b a)
        have e2 : (Finset.univ.filter fun b => b < a ∧ ε b ≠ ε a) = ∅ :=
          Finset.filter_eq_empty_iff.2 fun b _ hb => hb.2 (hc b a)
        rw [e1, e2]
        simp
      have hH : rhoHol ε a = 0 := by
        unfold rhoHol
        rcases h with hp | hq
        · have ha : ε a = false := by
            have := Finset.filter_eq_empty_iff.1 (Finset.card_eq_zero.1 hp) (Finset.mem_univ a)
            simpa using this
          simp [ha, hp]
        · have ha : ε a = true := by
            have := Finset.filter_eq_empty_iff.1 (Finset.card_eq_zero.1 hq) (Finset.mem_univ a)
            simpa using this
          simp [ha, hq]
      delta gaW Formalism.QuantumDeterminants.lowK
      simp only [Pi.add_apply, Pi.sub_apply, hN, hH, add_zero]
      rfl
    refine ⟨LinearEquiv.finiteDimensional Submodule.topEquiv, hnt, hKU ▸ hU, ?_⟩
    rw [hga]
    exact hS

end GlobalTheory.PsCo.PcEF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.CompactDiscreteSeriesOwnType =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqDiscreteSeriesOfLowestKTypeCasimir =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqDiscreteSeriesOfLowestKTypeCasimir", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.DatumEquiv\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.DiscreteSeriesExistence.Arbitrary\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.DiscreteSeriesExistence.BridgeExpK\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.DiscreteSeriesExistence.EquivSigLamOfIsDS\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.DiscreteSeriesExistence.ExistsKhwGenSubOfKType\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.DiscreteSeriesExistence.PropsEquiv\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open ReciprocityTheory.ChartRestriction.DS

namespace GlobalTheory.PsCo.PcEF

theorem eq_discreteSeries_of_lowestKType_casimir : DatumEquiv := by
  intro n ε lam hgap H _ _ _ σ hσ hirr V hV hV0 hc X _ _ D hD
  haveI : CompleteSpace X := hD.1
  have hσD : IsURepOn (UJset ε) D := hD.2.2.1
  have hVK : ∀ k ∈ Kset ε, ∀ v ∈ V, ∃ w ∈ V, (w : H) = σ k v :=
    kStable_of_isKStableSub hσ (isDerivedOn_smE hσ) V hV.1 hV.2.1
  obtain ⟨V', hV', hV0', hVK', hc'⟩ := arb_datum hD (casOnSmooth_of_isDS hD hgap)
  have htop := data_closGen_eq_top hgap hσ (isDerivedOn_smE hσ) hV hc hVK hirr hV0
  have htop' := data_closGen_eq_top hgap hσD (isDerivedOn_smE hσD) hV' hc' hVK' hD.2.2.2.1 hV0'
  obtain ⟨U, hU⟩ := data_unitary_equiv hgap hσ (isDerivedOn_smE hσ) hV hc hVK hV0
    hσD (isDerivedOn_smE hσD) hV' hc' hVK' hV0'
  refine ⟨((LinearIsometryEquiv.ofTop _ _ htop).symm.trans U).trans (LinearIsometryEquiv.ofTop _ _ htop'),
    fun g hg x => ?_⟩
  simp only [LinearIsometryEquiv.trans_apply, LinearIsometryEquiv.ofTop_apply]
  apply hU g hg
  simp only [LinearIsometryEquiv.ofTop_symm_apply_coe]

end GlobalTheory.PsCo.PcEF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqDiscreteSeriesOfLowestKTypeCasimir =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FockCoordinatesSpanFiniteDimensional =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.FockCoordinatesSpanFiniteDimensional", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.CoordSpan\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Finiteness.Lattice\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.ActDiagMemOfWK\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open ReciprocityTheory.ChartRestriction.DS ReciprocityTheory.ChartRestriction.DS.TRGap

namespace GlobalTheory.PsCo.PcEF

theorem fockCoordinates_span_finiteDimensional (n : ℕ) (ε : Fin n → Bool) (M : Type)
    [NormedAddCommGroup M] [InnerProductSpace ℂ M] (E : Fin n → Fin n → Module.End ℂ M)
    (Z : Submodule ℂ (TensorProduct ℂ M (Fock n))) (hZ : FiniteDimensional ℂ Z)
    (hK : IsKStableSub ε (diagE ε (eT E) cpT cmT) Z) :
    FiniteDimensional ℂ (coordSpan Z) ∧ IsKStableSub ε E (coordSpan Z) := by
  have hle : coordSpan Z ≤ ⨆ s : Finset (Fin (n * n)), Z.map (tcoef (M := M) ((fockBasis n).coord s)) := by
    refine Submodule.span_le.2 ?_
    rintro v ⟨s, y, hy, rfl⟩
    exact (le_iSup (fun s : Finset (Fin (n * n)) => Z.map (tcoef (M := M) ((fockBasis n).coord s))) s)
      (Submodule.mem_map_of_mem hy)
  refine ⟨Submodule.finiteDimensional_of_le hle, ?_⟩
  intro a b hab v hv
  induction hv using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨s, y, hy, rfl⟩ := hx
    let X := Matrix.single a b (1 : ℂ)
    have e := tco_actDiag (ε := ε) E X y s
    simp only [X, TRGap.actM_single'] at e
    show E a b (tcoef ((fockBasis n).coord s) y) ∈ coordSpan Z
    rw [eq_sub_of_add_eq e.symm, tcoef_eq_sum ((fockBasis n).coord s ∘ₗ sgX ε X) y]
    refine Submodule.sub_mem _ (Submodule.subset_span ⟨s, _, hK a b hab y hy, rfl⟩) ?_
    refine Submodule.sum_mem _ fun s' _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨s', y, hy, rfl⟩)
  | zero => simp
  | add x y _ _ hx hy => rw [map_add (f := _)]; exact Submodule.add_mem _ hx hy
  | smul c x _ hx => rw [map_smul]; exact Submodule.smul_mem _ c hx

end GlobalTheory.PsCo.PcEF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FockCoordinatesSpanFiniteDimensional =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HarishChandraWeightIntegralDominant =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.HarishChandraWeightIntegralDominant", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.VdmSplit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.ExistsNonzeroPhysicalHighestWeightVectorTensFock\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.GapConditionsOfLargeGaps\n\n"}
section -- clump:auto
@[expose] public section

section
open GlobalTheory.PsCo.PcEG

noncomputable section

open Finset ReciprocityTheory.ChartRestriction.DS ReciprocityTheory.ChartRestriction.DS.TRGap

namespace GlobalTheory.PsCo.PcEF.HarishChandraWeightIntegral

variable {n : ℕ}

theorem card_split (ε : Fin n → Bool) (a : Fin n) :
    (univ.filter fun b => a < b ∧ ε b = ε a).card + (univ.filter fun b => b < a ∧ ε b = ε a).card + 1 =
      (univ.filter fun b => ε b = ε a).card := by
  have h : (univ.filter fun b => ε b = ε a) =
      ((univ.filter fun b => a < b ∧ ε b = ε a) ∪ (univ.filter fun b => b < a ∧ ε b = ε a)) ∪ {a} := by
    ext b
    simp only [mem_filter, mem_univ, true_and, mem_union, mem_singleton]
    constructor
    · intro h
      rcases lt_trichotomy a b with h1 | h1 | h1
      · exact Or.inl (Or.inl ⟨h1, h⟩)
      · exact Or.inr h1.symm
      · exact Or.inl (Or.inr ⟨h1, h⟩)
    · rintro ((⟨_, h⟩ | ⟨_, h⟩) | rfl)
      · exact h
      · exact h
      · rfl
  have d1 : Disjoint (univ.filter fun b => a < b ∧ ε b = ε a) (univ.filter fun b => b < a ∧ ε b = ε a) := by
    rw [disjoint_filter]
    intro x _ h1 h2
    exact lt_asymm h1.1 h2.1
  have d2 : Disjoint ((univ.filter fun b => a < b ∧ ε b = ε a) ∪ (univ.filter fun b => b < a ∧ ε b = ε a))
      {a} := by
    rw [disjoint_singleton_right]
    simp
  rw [h, card_union_of_disjoint d2, card_union_of_disjoint d1, card_singleton]

theorem gaW_eq (ε : Fin n → Bool) (lam : Fin n → ℝ) (m : Fin n → ℤ)
    (hm : ∀ a, lam a + ((n : ℝ) - 1) / 2 = m a) (a : Fin n) :
    gaW ε lam a = ((m a - (if ε a then 0 else (pOf ε : ℤ)) - ReciprocityTheory.ChartRestriction.TR.Weyl.rhoK ε a : ℤ) : ℝ) := by
  have hcR : ((univ.filter fun b => a < b ∧ ε b = ε a).card : ℝ) +
      ((univ.filter fun b => b < a ∧ ε b = ε a).card : ℝ) + 1 =
      ((univ.filter fun b => ε b = ε a).card : ℝ) := by exact_mod_cast card_split ε a
  have hpqR : (pOf ε : ℝ) + qOf ε = n := by exact_mod_cast _root_.ReciprocityTheory.ChartRestriction.DS.carU_pOf_add_qOf ε
  have hma := hm a
  delta gaW rhoC rhoHol ReciprocityTheory.ChartRestriction.TR.Weyl.rhoK
  simp only [Pi.add_apply, Pi.sub_apply]
  by_cases h : ε a = true
  · have hs : ((univ.filter fun b => ε b = ε a).card : ℝ) = pOf ε := by
      delta pOf
      rw [h]
    simp only [ite_eq_left h]
    push_cast
    linarith
  · have hs : ((univ.filter fun b => ε b = ε a).card : ℝ) = qOf ε := by
      delta qOf
      rw [Bool.eq_false_of_not_eq_true h]
    simp only [ite_eq_right h]
    push_cast
    linarith

end GlobalTheory.PsCo.PcEF.HarishChandraWeightIntegral

namespace GlobalTheory.PsCo.PcEF

theorem harishChandraWeight_integral_dominant : GaInt := by
  intro n ε lam hlam
  obtain ⟨hanti, hz⟩ := hlam
  choose z hz using hz
  let m : Fin n → ℤ := fun a => z a + ((n : ℤ) - 1)
  have hm : ∀ a, lam a + ((n : ℝ) - 1) / 2 = m a := by
    intro a
    have := hz a
    simp only [m]
    push_cast
    linarith
  let Λ : Fin n → ℤ := fun a =>
    m a - (if ε a then 0 else (pOf ε : ℤ)) - ReciprocityTheory.ChartRestriction.TR.Weyl.rhoK ε a
  have hg : gaW ε lam = fun a => (Λ a : ℝ) := funext fun a => HarishChandraWeightIntegral.gaW_eq ε lam m hm a
  refine ⟨Λ, m, hg, ?_, hm, ?_⟩
  · intro a b hab he
    have hBA : BlockAnti ε lam := by
      intro a b hab _
      have h1 := hanti hab
      have h2 : (m b : ℝ) < m a := by linarith [hm a, hm b]
      have h3 : m b < m a := by exact_mod_cast h2
      have h4 : ((m b : ℤ) : ℝ) + 1 ≤ m a := by exact_mod_cast Int.add_one_le_of_lt h3
      linarith [hm a, hm b]
    have h := lf_dom_block hBA a b hab he
    have e : lowK ε lam + (rhoHol ε - rhoN ε) = gaW ε lam := by
      funext x
      delta lowK gaW
      simp only [Pi.add_apply, Pi.sub_apply]
      ring
    rw [e, hg] at h
    have h' : (Λ b : ℝ) ≤ Λ a := h
    exact_mod_cast h'
  · intro a
    simp only [Λ, Pi.add_apply]
    ring

end GlobalTheory.PsCo.PcEF

end
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HarishChandraWeightIntegralDominant =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HighestWeightKernelLowestType =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.HighestWeightKernelLowestType", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.VdmSplit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.CasimirAlgebra.MulMulSubMulMulEqAdd\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.DiscreteSeriesExistence.CFCoreA\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.ActDiagMemOfWK\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.FockWeightWedgeLowerModes\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.MemHighestWeightSubIff\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.TensFockInfPhysSub\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.GapConditionsOfLargeGaps\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open ReciprocityTheory.ChartRestriction.DS ReciprocityTheory.ChartRestriction.DS.TRGap

namespace GlobalTheory.PsCo.PcEF

open GlobalTheory.PsCo.PcEG

theorem highestWeightKernel_lowestType : AlgDatum := by
  intro n ε lam hg M _ _ E hE hU z hz0 hzp hz hcas S hSfd hSk hzS

  have hz' : IsKHWVec ε (fun a b => TensorProduct.map (E a b) LinearMap.id +
      LinearMap.lTensor M (sgE ε cpFock cmFock a b)) (gaW ε lam) z := by
    have e : (diagE ε (eT E) cpT cmT : Fin n → Fin n → Module.End ℂ (TensorProduct ℂ M (Fock n))) =
        fun a b => TensorProduct.map (E a b) LinearMap.id + LinearMap.lTensor M (sgE ε cpFock cmFock a b) := by
      funext a b
      delta diagE eT
      rw [sgE_cpT]
    rw [← e]; exact hz
  obtain ⟨s, hy0, hy⟩ := khw_extract ε hg.1 hz' hz0
  set y := tcoef ((fockBasis n).coord s) z with hydef

  have hs : s ⊆ lfPhysModes ε := by
    intro m hm
    by_contra hnm
    apply hy0
    refine tco_physSub_zero hzp hm fun hp => hnm ?_
    obtain ⟨x, rfl⟩ := finProdFinEquiv.surjective m
    rw [Equiv.symm_apply_apply] at hp
    exact (lf_mem_phys ε x.1 x.2).2 hp
  set Ph := gcPh ε s with hPh
  have hwt : gaW ε lam - fockWt ε s = lowK ε lam - phSum Ph := by
    rw [gc_wt_eq ε hs]
    funext a
    delta gaW lowK
    simp only [Pi.sub_apply, Pi.add_apply]
    ring
  rw [hwt] at hy
  have hyS : y ∈ S := hzS s
  set V := kLowSpan ε E y with hV
  have hVS : V ≤ S := kLowSpan_le hSk hyS
  haveI : FiniteDimensional ℂ S := hSfd
  have hVfd : FiniteDimensional ℂ V := Submodule.finiteDimensional_of_le hVS
  have hVirr : IsKIrrHW ε E (lowK ε lam - phSum Ph) V := kLowSpan_kIrrHW hE hU hy hy0 hVfd

  set T : Submodule ℂ M := LinearMap.ker (casimir E - ((casVal lam : ℝ) : ℂ) • (1 : Module.End ℂ M)) with hT
  have hTk : IsKStableSub ε E T := by
    intro a b _ v hv
    rw [hT, LinearMap.mem_ker] at hv ⊢
    have hc := congrArg (fun X : Module.End ℂ M => X v) (casimir_comm hE a b)
    simp only [Module.End.mul_apply] at hc
    simp only [LinearMap.sub_apply, LinearMap.smul_apply, Module.End.one_apply] at hv ⊢
    rw [hc, sub_eq_zero.1 hv, map_smul, sub_self]
  have hyT : y ∈ T := by
    rw [hT, LinearMap.mem_ker]
    simp only [LinearMap.sub_apply, LinearMap.smul_apply, Module.End.one_apply]
    rw [hcas s, sub_self]
  have hVT : V ≤ T := kLowSpan_le hTk hyT
  have hVc : ∀ v ∈ V, casimir E v = (casVal lam : ℂ) • v := by
    intro v hv
    have := hVT hv
    rw [hT, LinearMap.mem_ker] at this
    simp only [LinearMap.sub_apply, LinearMap.smul_apply, Module.End.one_apply] at this
    exact sub_eq_zero.1 this

  have hPh0 : Ph = ∅ := by
    by_contra hne
    exact dirac_sharp hg hE hU (gc_isPosNC ε hs) (Finset.nonempty_iff_ne_empty.2 hne) hVirr hVc
  rw [hPh0] at hVirr
  delta phSum at hVirr
  simp only [Finset.sum_empty, sub_zero] at hVirr
  refine ⟨V, hVirr, ?_, hVc⟩
  intro h0
  apply hy0
  have : y ∈ V := self_mem_kLowSpan y
  rw [h0] at this
  exact (Submodule.mem_bot ℂ).1 this

end GlobalTheory.PsCo.PcEF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HighestWeightKernelLowestType =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntertwinerPreservesHighestWeight =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntertwinerPreservesHighestWeight", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.VdmSplit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.DiscreteSeriesExistence.Bridge\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.DiscreteSeriesExistence.MeasurePreservingMulRight\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.ActDiagMemOfWK\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.MemTensorFockOfCoeffs\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.ProdModeCharExp\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.GapConditionsOfLargeGaps\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open ReciprocityTheory.ChartRestriction.DS ReciprocityTheory.ChartRestriction.DS.TRGap
open GlobalTheory.PsCo.Pc1 (Mat)

namespace GlobalTheory.PsCo.PcEF

open GlobalTheory.PsCo.PcEG

theorem intertwiner_preserves_highestWeight : HWVec := by
  intro n ε H _ _ σ D E hσ hD Z _ hZK γ W _ _ _ T hT Φ hΦ hint
  obtain ⟨-, -, hTy⟩ := hT
  obtain ⟨-, -, hirr, ⟨v, -, hv0, hvw⟩, hdom⟩ := hTy

  have hker : LinearMap.ker Φ = ⊥ := by
    rcases hirr (LinearMap.ker Φ) le_top (fun g hg w hw => by
      rw [LinearMap.mem_ker] at hw ⊢
      rw [hint g hg w, hw, map_zero]) with h | h
    · exact h
    · exact absurd (LinearMap.ker_eq_top.1 h) hΦ
  have hinj : Function.Injective Φ := LinearMap.ker_eq_bot.1 hker
  let ι : W →ₗ[ℂ] TensorProduct ℂ D (Fock n) := tsubVal Z ∘ₗ Φ
  have hιinj : Function.Injective ι := tsubVal_injective.comp hinj
  have hιK : ∀ (k : Mat n) (hk : k ∈ Kset ε) (w : W), wK hD hk (ι w) = ι (T k w) := by
    intro k hk w
    show wK hD hk (tsubVal Z (Φ w)) = tsubVal Z (Φ (T k w))
    rw [hint k (by rw [mir_Kset_eq]; exact hk) w, tOp_apply hD hZK hk]
  let S' : Submodule ℂ (TensorProduct ℂ D (Fock n)) := LinearMap.range ι
  have hS'fin : FiniteDimensional ℂ S' := LinearMap.finiteDimensional_range ι
  have hS'K : ∀ (k : Mat n) (hk : k ∈ Kset ε), ∀ y ∈ S', wK hD hk y ∈ S' := by
    rintro k hk _ ⟨w, rfl⟩
    exact ⟨T k w, (hιK k hk w).symm⟩

  have hwt : ∀ (μ : Fin n → ℝ) (w : W), Formalism.MainNotions.S.IsWtOn (Formalism.REAL.Kset ε) T μ w →
      ∀ θ : Fin n → ℝ, wK hD (diag_mem_Kset' ε θ) (ι w) = Complex.exp (((∑ a, μ a * θ a : ℝ) : ℂ) * Complex.I) • ι w := by
    intro μ w hw θ
    rw [hιK _ _ w, hw θ (by rw [mir_Kset_eq]; exact diag_mem_Kset' ε θ), map_smul]
  have hwt' : ∀ (μ : Fin n → ℝ) (w : W),
      (∀ θ : Fin n → ℝ, wK hD (diag_mem_Kset' ε θ) (ι w) = Complex.exp (((∑ a, μ a * θ a : ℝ) : ℂ) * Complex.I) • ι w) →
      Formalism.MainNotions.S.IsWtOn (Formalism.REAL.Kset ε) T μ w := by
    intro μ w hw θ _
    apply hιinj
    rw [map_smul, ← hιK _ (diag_mem_Kset' ε θ) w, hw θ]
  set z := ι v with hz
  have hz0 : z ≠ 0 := fun h => hv0 (hιinj (h.trans (map_zero ι).symm))
  have hzd : ∀ a, diagE ε (eT E) cpT cmT a a z = ((γ a : ℝ) : ℂ) • z :=
    diagE_wt_of_wK hσ hD (hwt γ v hvw)
  refine ⟨z, tsubVal_mem (Φ v), hz0, hzd, fun a b hab hε => ?_⟩
  set y := diagE ε (eT E) cpT cmT a b z with hy
  have hyS : y ∈ S' := diagE_mem_of_wK hσ hD S' hS'fin hS'K hε ⟨v, rfl⟩
  obtain ⟨w', hw'⟩ := hyS
  have hyd : ∀ c, diagE ε (eT E) cpT cmT c c y = (((γ + root a b) c : ℝ) : ℂ) • y := by
    intro c
    have hc := congrArg (fun F => F z)
      (diagAction_commutator (eT_isGlRep hD.glRep) cpT_cmT_isCAR (eT_commutesCAR E) ε c c a b rfl hε)
    simp only [Module.End.mul_apply, LinearMap.sub_apply] at hc
    rw [hzd c, map_smul] at hc
    have e1 : diagE ε (eT E) cpT cmT c c y =
        ((γ c : ℝ) : ℂ) • y + ((if c = a then diagE ε (eT E) cpT cmT c b else 0) -
          (if b = c then diagE ε (eT E) cpT cmT a c else 0)) z := by
      rw [hy, LinearMap.sub_apply, ← hc]; abel
    rw [e1]
    by_cases hca : c = a
    · subst hca
      have hcb : ¬ b = c := fun h => (ne_of_lt hab) h.symm
      simp only [if_neg hcb, sub_zero, Pi.add_apply, root, Pi.sub_apply, Pi.single_eq_same, ↓reduceIte]
      rw [Pi.single_eq_of_ne (ne_of_lt hab)]
      simp only [sub_zero, Complex.ofReal_add, Complex.ofReal_one, add_smul, one_smul]
      rfl
    · by_cases hcb : b = c
      · subst hcb
        simp only [if_neg hca, zero_sub, Pi.add_apply, root, Pi.sub_apply, Pi.single_eq_same,
          LinearMap.neg_apply, ↓reduceIte]
        rw [Pi.single_eq_of_ne hca]
        simp only [zero_sub, Complex.ofReal_add, Complex.ofReal_neg, Complex.ofReal_one, add_smul, neg_smul,
          one_smul]
        rfl
      · simp only [if_neg hca, if_neg hcb, sub_zero, LinearMap.zero_apply, add_zero, Pi.add_apply, root,
          Pi.sub_apply]
        rw [Pi.single_eq_of_ne hca, Pi.single_eq_of_ne (Ne.symm hcb)]
        simp
  have hw'w : Formalism.MainNotions.S.IsWtOn (Formalism.REAL.Kset ε) T (γ + root a b) w' := by
    apply hwt'
    intro θ
    rw [hw']
    exact wK_diag_wt hσ hD hyd θ
  by_contra hne
  have hw'0 : w' ≠ 0 := by
    intro h; apply hne; rw [← hw', h, map_zero]
  exact not_cdom_add_root ε γ hab (hdom _ w' (Submodule.mem_top) hw'0 hw'w)

end GlobalTheory.PsCo.PcEF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntertwinerPreservesHighestWeight =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MaxCompactPolynomialBlockTimesConjDetPower =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.MaxCompactPolynomialBlockTimesConjDetPower", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.DatumEquiv\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

section

noncomputable section

open MvPolynomial Matrix
open GlobalTheory.PsCo.Pc1 (Mat Poly ev blockAlg detbP)
open scoped ComplexConjugate

namespace GlobalTheory.PsCo.PcEF.BlockEvaluationOffDiagonal

variable {n : ℕ}

lemma ev_inl (k : Mat n) (a b : Fin n) : ev k (X (Sum.inl (a, b))) = k a b := by
  simp [GlobalTheory.PsCo.Pc1.ev]

lemma ev_inr (k : Mat n) (a b : Fin n) : ev k (X (Sum.inr (a, b))) = star (k a b) := by
  simp [GlobalTheory.PsCo.Pc1.ev]

lemma offdiag {ε : Fin n → Bool} {k : Mat n} (hk : k ∈ Formalism.REAL.Kset ε) {a b : Fin n} (hab : ε a ≠ ε b) :
    k a b = 0 := by
  have h := congrFun (congrFun hk.2 a) b
  simp only [Formalism.REAL.Jm, mul_diagonal, diagonal_mul] at h
  cases ha : ε a <;> cases hb : ε b <;> simp only [ha, hb, Bool.false_eq_true, if_false, if_true] at h hab
  · exact absurd rfl hab
  · linear_combination (1 / 2 : ℂ) * h
  · linear_combination (-1 / 2 : ℂ) * h
  · exact absurd rfl hab

def bM (ε : Fin n → Bool) : Matrix (Fin n) (Fin n) (blockAlg ε) := fun a b =>
  if h : ε a = ε b then ⟨X (Sum.inl (a, b)), Algebra.subset_adjoin ⟨a, b, h, rfl⟩⟩ else 0

def evB (ε : Fin n → Bool) (k : Mat n) : blockAlg ε →+* ℂ := (ev k).comp (blockAlg ε).val.toRingHom

lemma evB_apply (ε : Fin n → Bool) (k : Mat n) (x : blockAlg ε) : evB ε k x = ev k (x : Poly n) := rfl

lemma map_bM {ε : Fin n → Bool} {k : Mat n} (hk : k ∈ Formalism.REAL.Kset ε) : (bM ε).map (evB ε k) = k := by
  ext a b
  simp only [Matrix.map_apply, bM]
  split_ifs with h
  · rw [evB_apply, ev_inl]
  · rw [map_zero, offdiag hk h]

lemma det_bM {ε : Fin n → Bool} {k : Mat n} (hk : k ∈ Formalism.REAL.Kset ε) : evB ε k (bM ε).det = k.det := by
  rw [RingHom.map_det, RingHom.mapMatrix_apply, map_bM hk]

lemma adj_bM {ε : Fin n → Bool} {k : Mat n} (hk : k ∈ Formalism.REAL.Kset ε) (a b : Fin n) :
    evB ε k ((bM ε).adjugate a b) = k.adjugate a b := by
  have := congrFun (congrFun (RingHom.map_adjugate (evB ε k) (bM ε)) a) b
  simp only [RingHom.mapMatrix_apply, Matrix.map_apply, map_bM hk] at this
  exact this

lemma ev_detbP (k : Mat n) : ev k (detbP n) = conj k.det := by
  rw [GlobalTheory.PsCo.Pc1.detbP, RingHom.map_det, (starRingEnd ℂ).map_det]
  congr 1
  ext a b
  simp [RingHom.mapMatrix_apply, ev_inr]

lemma conj_det_mul {ε : Fin n → Bool} {k : Mat n} (hk : k ∈ Formalism.REAL.Kset ε) : conj k.det * k.det = 1 := by
  have h := congrArg Matrix.det (Matrix.mem_unitaryGroup_iff'.mp hk.1)
  rw [Matrix.det_mul, Matrix.det_one, Matrix.star_eq_conjTranspose, Matrix.det_conjTranspose] at h
  simpa using h

lemma star_entry {ε : Fin n → Bool} {k : Mat n} (hk : k ∈ Formalism.REAL.Kset ε) (a b : Fin n) :
    star (k a b) = conj k.det * k.adjugate b a := by
  have hu : k * star k = 1 := Matrix.mem_unitaryGroup_iff.mp hk.1
  have h1 : k.adjugate * k = k.det • (1 : Mat n) := Matrix.adjugate_mul k
  have h2 : kᴴ = conj k.det • k.adjugate := by
    calc kᴴ = (conj k.det * k.det) • kᴴ := by rw [conj_det_mul hk, one_smul]
      _ = conj k.det • ((k.det • (1 : Mat n)) * kᴴ) := by rw [smul_mul_assoc, one_mul, smul_smul]
      _ = conj k.det • k.adjugate := by
        rw [← h1, Matrix.mul_assoc, ← Matrix.star_eq_conjTranspose, hu, Matrix.mul_one]
  have := congrFun (congrFun h2 b) a
  simpa [Matrix.conjTranspose_apply] using this

def dB (ε : Fin n → Bool) : Poly n := ((bM ε).det : Poly n)

lemma dB_mem (ε : Fin n → Bool) : dB ε ∈ blockAlg ε := (bM ε).det.2

lemma ev_dB {ε : Fin n → Bool} {k : Mat n} (hk : k ∈ Formalism.REAL.Kset ε) : ev k (dB ε) = k.det := det_bM hk

def Good (ε : Fin n → Bool) (P : Poly n) : Prop :=
  ∃ (M : ℕ) (Q : Poly n), Q ∈ blockAlg ε ∧ ∀ k ∈ Formalism.REAL.Kset ε, ev k P = ev k (detbP n ^ M * Q)

lemma good (ε : Fin n → Bool) (P : Poly n) : Good ε P := by
  refine MvPolynomial.induction_on P ?_ ?_ ?_
  · intro a
    refine ⟨0, C a, ?_, fun k _ => by simp⟩
    simpa [MvPolynomial.algebraMap_eq] using (blockAlg ε).algebraMap_mem a
  · rintro p q ⟨M1, Q1, h1, e1⟩ ⟨M2, Q2, h2, e2⟩
    refine ⟨M1 + M2, Q1 * dB ε ^ M2 + Q2 * dB ε ^ M1, ?_, fun k hk => ?_⟩
    · exact add_mem (mul_mem h1 (pow_mem (dB_mem ε) _)) (mul_mem h2 (pow_mem (dB_mem ε) _))
    · have hc : ∀ m : ℕ, conj k.det ^ m * k.det ^ m = 1 := fun m => by
        rw [← mul_pow, conj_det_mul hk, one_pow]
      rw [map_add (f := _), e1 k hk, e2 k hk]
      simp only [map_mul, map_pow, map_add (f := _), ev_detbP, ev_dB hk]
      rw [pow_add]
      linear_combination (-(conj k.det ^ M1 * ev k Q1)) * hc M2 + (-(conj k.det ^ M2 * ev k Q2)) * hc M1
  · rintro p i ⟨M, Q, hQ, e⟩
    rcases i with ⟨a, b⟩ | ⟨a, b⟩
    · refine ⟨M, Q * ((bM ε a b : blockAlg ε) : Poly n), mul_mem hQ (bM ε a b).2, fun k hk => ?_⟩
      have h : ev k ((bM ε a b : blockAlg ε) : Poly n) = k a b := by
        have := congrFun (congrFun (map_bM hk) a) b
        rw [Matrix.map_apply] at this
        exact this
      rw [map_mul, e k hk, ev_inl]
      simp only [map_mul, h]
      ring
    · refine ⟨M + 1, Q * (((bM ε).adjugate b a : blockAlg ε) : Poly n),
        mul_mem hQ ((bM ε).adjugate b a).2, fun k hk => ?_⟩
      have h : ev k (((bM ε).adjugate b a : blockAlg ε) : Poly n) = k.adjugate b a := adj_bM hk b a
      rw [map_mul, e k hk, ev_inr, star_entry hk]
      simp only [map_mul, map_pow, h, ev_detbP]
      ring

end GlobalTheory.PsCo.PcEF.BlockEvaluationOffDiagonal

namespace GlobalTheory.PsCo.PcEF

theorem maxCompactPolynomial_blockTimesConjDetPower : BlockForm := by
  intro n ε P
  exact BlockEvaluationOffDiagonal.good ε P

end GlobalTheory.PsCo.PcEF

end
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MaxCompactPolynomialBlockTimesConjDetPower =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ModeMatrixDetEqAdjointDet =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ModeMatrixDetEqAdjointDet", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.TCoefMInMMul\npublic import Formalism.RealPlaceAnalysis.Complexify\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.IsPhysSet\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix
open GlobalTheory.PsCo.Pc1 (Mat Poly ev OmP Mode dM dZ barM sg)
open ReciprocityTheory.ChartRestriction.DS.TRGap (physDet IsPhys)

namespace GlobalTheory.PsCo.PcEF.OmegaDeterminant

variable {n : ℕ}

lemma ev_X_inl (k : Mat n) (p : Fin n × Fin n) : ev k (MvPolynomial.X (Sum.inl p)) = k p.1 p.2 := by
  simp [ev]

lemma ev_X_inr (k : Mat n) (p : Fin n × Fin n) : ev k (MvPolynomial.X (Sum.inr p)) = star (k p.1 p.2) := by
  simp [ev]

lemma OmP_apply (ε : Fin n → Bool) (x y : Mode ε) :
    OmP ε x y = (if x.1.2 = y.1.2 then MvPolynomial.X (Sum.inr (y.1.1, x.1.1)) else 0) -
      (if x.1.1 = y.1.1 then MvPolynomial.X (Sum.inr (x.1.2, y.1.2)) else 0) := by
  obtain ⟨⟨i, a⟩, hi, ha⟩ := x
  obtain ⟨⟨j, b⟩, hj, hb⟩ := y
  simp only [OmP, dM, dZ, MvPolynomial.mkDerivation_X, Sum.elim_inr, barM, Matrix.single_apply]
  simp [ite_and, mul_ite, sg]
  simp only at hi ha hj hb
  rcases eq_or_ne a b with rfl | hab <;> rcases eq_or_ne i j with rfl | hij <;>
    simp [apply_ite MvPolynomial.C, mul_ite, ite_mul, Finset.sum_add_distrib, sub_eq_add_neg, *]

lemma ev_OmP (ε : Fin n → Bool) (k : Mat n) (x y : Mode ε) :
    ev k (OmP ε x y) = (if x.1.2 = y.1.2 then star (k y.1.1 x.1.1) else 0) -
      (if x.1.1 = y.1.1 then star (k x.1.2 y.1.2) else 0) := by
  rw [OmP_apply, map_sub, apply_ite (ev k), apply_ite (ev k), ev_X_inr, ev_X_inr, map_zero]

lemma K_block {ε : Fin n → Bool} {k : Mat n} (hk : k ∈ Formalism.REAL.Kset ε) {i j : Fin n} (h : ε i ≠ ε j) :
    k i j = 0 := by
  apply _root_.GlobalTheory.PsCo.PcEF.BlockEvaluationOffDiagonal.offdiag <;> assumption

lemma K_unit {ε : Fin n → Bool} {k : Mat n} (hk : k ∈ Formalism.REAL.Kset ε) (i l : Fin n) :
    ∑ j, k i j * star (k l j) = if i = l then 1 else 0 := by
  have := congrFun (congrFun (Matrix.mem_unitaryGroup_iff.mp hk.1) i) l
  simpa [Matrix.mul_apply, Matrix.star_apply, Matrix.one_apply] using this

lemma sum_mode (ε : Fin n → Bool) (f : Fin n × Fin n → ℂ) :
    ∑ y : Mode ε, f y.1 = ∑ j, ∑ b, if ε j = true ∧ ε b = false then f (j, b) else 0 := by
  rw [← Finset.sum_subtype (Finset.univ.filter fun p : Fin n × Fin n => ε p.1 = true ∧ ε p.2 = false)
    (by simp) f, Finset.sum_filter, Fintype.sum_prod_type]

lemma entry {ε : Fin n → Bool} {k : Mat n} (hk : k ∈ Formalism.REAL.Kset ε) (x z : Mode ε) :
    ∑ y : Mode ε, (if x.1.2 = y.1.2 then k x.1.1 y.1.1 else 0) *
      ((if y.1.2 = z.1.2 then star (k z.1.1 y.1.1) else 0) -
        (if y.1.1 = z.1.1 then star (k y.1.2 z.1.2) else 0)) =
    (if x = z then 1 else 0) - k x.1.1 z.1.1 * star (k x.1.2 z.1.2) := by
  obtain ⟨⟨i, a⟩, hi, ha⟩ := x
  obtain ⟨⟨l, d⟩, hl, hd⟩ := z
  have hs := sum_mode ε (fun p => (if a = p.2 then k i p.1 else 0) *
      ((if p.2 = d then star (k l p.1) else 0) - (if p.1 = l then star (k p.2 d) else 0)))
  simp only at hs ⊢
  rw [hs]
  have h1 : ∀ j, (∑ b, if ε j = true ∧ ε b = false then (if a = b then k i j else 0) *
      ((if b = d then star (k l j) else 0) - (if j = l then star (k b d) else 0)) else 0) =
      k i j * ((if a = d then star (k l j) else 0) - (if j = l then star (k a d) else 0)) := by
    intro j
    rw [Finset.sum_eq_single a]
    · by_cases hj : ε j = true
      · simp [hj, ha]
      · have : k i j = 0 := K_block hk (by rw [hi]; exact fun h => hj h.symm)
        simp [hj, this]
    · intro b _ hb
      simp [Ne.symm hb]
    · simp
  rw [Finset.sum_congr rfl (fun j _ => h1 j)]
  simp only [mul_sub, Finset.sum_sub_distrib, mul_ite, mul_zero, Finset.sum_ite_eq', Finset.mem_univ,
    if_true]
  by_cases had : a = d
  · subst had
    simp only [if_true, K_unit hk]
    by_cases hil : i = l
    · subst hil; simp
    · simp [hil]
  · simp [had]

def AP (ε : Fin n → Bool) : Matrix (Mode ε) (Mode ε) (Poly n) :=
  fun x y => if x.1.2 = y.1.2 then MvPolynomial.X (Sum.inl (x.1.1, y.1.1)) else 0

end OmegaDeterminant

open OmegaDeterminant in
theorem modeMatrixDet_eq_adjointDet :
    ∀ (n : ℕ) (ε : Fin n → Bool), ∃ Q : Poly n, ∀ k ∈ Formalism.REAL.Kset ε,
      ev k Q * ev k (OmP ε).det = physDet ε k := by
  intro n ε
  refine ⟨(AP ε).det, fun k hk => ?_⟩
  let e : Mode ε ≃ {x : Fin n × Fin n // IsPhys ε x} :=
    Equiv.subtypeEquivRight (p := fun x : Fin n × Fin n => ε x.1 = true ∧ ε x.2 = false) (fun _ => Iff.rfl)
  have key : (ev k).mapMatrix (AP ε) * (ev k).mapMatrix (OmP ε) =
      (Matrix.of fun x y : {x : Fin n × Fin n // IsPhys ε x} =>
        (if x = y then (1 : ℂ) else 0) - k x.1.1 y.1.1 * star (k x.1.2 y.1.2)).submatrix e e := by
    ext x z
    rw [Matrix.mul_apply]
    simp only [RingHom.mapMatrix_apply, Matrix.map_apply, AP, ev_OmP, Matrix.submatrix_apply, Matrix.of_apply,
      apply_ite (ev k), ev_X_inl, map_zero, e, EmbeddingLike.apply_eq_iff_eq]
    exact entry hk x z
  rw [RingHom.map_det, RingHom.map_det, ← Matrix.det_mul, key, Matrix.det_submatrix_equiv_self]
  rfl

end GlobalTheory.PsCo.PcEF
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ModeMatrixDetEqAdjointDet =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsCharFnAndIsPseudoCoeffOfCompact =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsCharFnAndIsPseudoCoeffOfCompact", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.ContinuousOfMemCcSmooth\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.InnerEqZeroOfNotUEquiv\npublic import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.IntegralConjInnerMulInnerOfIsEmptyEquiv\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.InnerProductSpace.Trace\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Set GlobalTheory.AutomorphicL2Unitary GlobalTheory.OpTrace
open scoped ComplexConjugate ContDiff InnerProductSpace

noncomputable section

namespace GlobalTheory.Orb

variable {H : Type} [Group H] [TopologicalSpace H]
  {V U : Type} [NormedAddCommGroup V] [InnerProductSpace ℂ V] [FiniteDimensional ℂ V]
  [NormedAddCommGroup U] [InnerProductSpace ℂ U] {D : H →* (V →L[ℂ] V)} {π : H →* (U →L[ℂ] U)}


variable [MeasurableSpace H] [BorelSpace H] {μ : Measure H}

variable [IsTopologicalGroup H] [CompactSpace H] [μ.IsHaarMeasure]

theorem integral_conj_trace_mul_trace (hD : IsUnitaryRep D) (hi : IsTopIrreducible D) :
    ∫ g, conj (LinearMap.trace ℂ V (D g : V →ₗ[ℂ] V)) * LinearMap.trace ℂ V (D g : V →ₗ[ℂ] V) ∂μ = μ.real univ := by
  let ρ : Representation ℂ H V := ContinuousLinearMap.toLinearMapRingHom.toMonoidHom.comp D
  have := hi.1
  have : Nontrivial (Subrepresentation ρ) :=
    ⟨⊥, ⊤, fun h => bot_ne_top (α := Submodule ℂ V) (congrArg Subrepresentation.toSubmodule h)⟩
  have : ρ.IsIrreducible := ⟨fun S => (hi.2 S.toSubmodule ⟨S.toSubmodule.closed_of_finiteDimensional,
    fun g v hv => S.apply_mem_toSubmodule g hv⟩).imp (fun h => Subrepresentation.toSubmodule_injective h)
      fun h => Subrepresentation.toSubmodule_injective h⟩
  have h := integral_conj_character_mul_character_self (haarProb H) ρ hD.continuous_apply hD.norm_apply
  conv_lhs => rw [eq_smul_haarProb μ]
  rw [integral_smul_measure]
  exact (congrArg _ h).trans (by simp [Measure.real])

end GlobalTheory.Orb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsCharFnAndIsPseudoCoeffOfCompact =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormIrreducibleCharacterUnitaryMaxCompactEqOne =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormIrreducibleCharacterUnitaryMaxCompactEqOne", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.DatumEquiv\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsCharFnAndIsPseudoCoeffOfCompact\nimport Formalism.RealPlaceAnalysis.RealPlaceTaylor.KoszulLowersPower\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory
open Formalism.REAL (KG toMK muK)
open scoped ComplexConjugate

namespace GlobalTheory.PsCo.PcEF

theorem norm_irreducibleCharacter_unitaryMaxCompact_eq_one : SchurOne := by
  intro n ε γ W _ _ _ T hT
  obtain ⟨hnt, hU, hK⟩ := hT
  have hemb : Topology.IsEmbedding (fun k : KG ε => toMK k) :=
    (Formalism.REAL.isClosedEmbeddingMatrix n ε).1.isEmbedding.comp Topology.IsEmbedding.subtypeVal
  let π : KG ε →* (W →L[ℂ] W) :=
    { toFun := fun k => T (toMK k)
      map_one' := hU.1.1
      map_mul' := fun a b => hU.1.2 _ a.2 _ b.2 }
  have hπU : GlobalTheory.OpTrace.IsUnitaryRep π :=
    ⟨fun k v => hU.2.1 _ k.2 v, fun v => (hU.2.2 v).comp_continuous hemb.continuous fun k => k.2⟩
  have hπI : GlobalTheory.AutomorphicL2Unitary.IsTopIrreducible π := by
    refine ⟨hnt, fun S hS => ?_⟩
    refine hK.2.2.1 S le_top fun g hg v hv => ?_
    have : g ∈ Set.range (fun k : KG ε => toMK k) := by rw [Formalism.REAL.range_toMK]; exact hg
    obtain ⟨k, rfl⟩ := this
    exact hS.2 k v hv
  have h := GlobalTheory.Orb.integral_conj_trace_mul_trace (μ := muK ε) hπU hπI
  have h1 : (muK ε).real Set.univ = 1 := by
    rw [Measure.real, Formalism.REAL.muK, ← TopologicalSpace.PositiveCompacts.coe_top, Measure.haarMeasure_self]
    rfl
  rw [h1] at h
  exact_mod_cast h

end GlobalTheory.PsCo.PcEF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormIrreducibleCharacterUnitaryMaxCompactEqOne =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PolyOnKConj =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PolyOnKConj", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.DatumEquiv\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.InnerProductSpace.Trace\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial
open GlobalTheory.PsCo.Pc1 (Mat Poly ev)
open scoped ComplexConjugate InnerProductSpace

namespace GlobalTheory.PsCo.PcEF

def conjPoly (n : ℕ) : Poly n →+* Poly n :=
  (rename (Sum.swap : (Fin n × Fin n) ⊕ (Fin n × Fin n) → _)).toRingHom.comp (map (starRingEnd ℂ))

theorem ev_conjPoly {n : ℕ} (g : Mat n) (P : Poly n) : ev g (conjPoly n P) = conj (ev g P) := by
  have h : (ev g).comp (conjPoly n) = (starRingEnd ℂ).comp (ev g) := by
    apply MvPolynomial.ringHom_ext
    · intro a
      simp [conjPoly, ev]
    · intro i
      rcases i with x | x
      · simp [conjPoly, ev]
      · simp [conjPoly, ev]
  exact congrArg (fun φ : Poly n →+* ℂ => φ P) h

theorem polyOnK_conj {n : ℕ} {ε : Fin n → Bool} {f : Mat n → ℂ} (hf : PolyOnK ε f) :
    PolyOnK ε fun k => conj (f k) := by
  obtain ⟨P, hP⟩ := hf
  exact ⟨conjPoly n P, fun k hk => by dsimp only; rw [ev_conjPoly, hP k hk]⟩

theorem polyOnK_sum {n : ℕ} {ε : Fin n → Bool} {ι : Type} (s : Finset ι) (f : ι → Mat n → ℂ)
    (hf : ∀ i ∈ s, PolyOnK ε (f i)) : PolyOnK ε fun k => ∑ i ∈ s, f i k := by
  classical
  induction s using Finset.induction_on with
  | empty => exact ⟨0, fun k _ => by simp⟩
  | insert a s ha ih =>
    obtain ⟨P, hP⟩ := hf a (Finset.mem_insert_self a s)
    obtain ⟨Q, hQ⟩ := ih fun i hi => hf i (Finset.mem_insert_of_mem hi)
    exact ⟨P + Q, fun k hk => by dsimp only at hQ ⊢; rw [Finset.sum_insert ha, map_add (f := _), hP k hk, hQ k hk]⟩

theorem trPoly : TrPoly := by
  intro n ε W _ _ _ T hT
  apply polyOnK_conj
  have e : trK T = fun k => ∑ i, ⟪(stdOrthonormalBasis ℂ W) i, T k ((stdOrthonormalBasis ℂ W) i)⟫_ℂ := by
    funext k
    simp only [trK, LinearMap.trace_eq_sum_inner _ (stdOrthonormalBasis ℂ W)]
    rfl
  rw [e]
  exact polyOnK_sum _ _ fun i _ => hT _ _

end GlobalTheory.PsCo.PcEF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PolyOnKConj =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.StrIdxProof2 =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.StrIdxProof2", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.VdmSplit\nimport Formalism.RealPlaceAnalysis.RealPlaceTaylor.CompactHaarRightInvariantInst\nimport Formalism.RealPlaceAnalysis.RealPlaceTaylor.KoszulLowersPower\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Algebra.MvPolynomial\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.AdPhysDiagSingle\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.DetOneSubEqSumMinors\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.LayerLeGeneratedTensorFock\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.SupTrace\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.TensFockInfPhysSub\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.TraceIntegralRestrict\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.GapConditionsOfLargeGaps\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.DiracSquareMemLayer\n\n"}
section -- clump:auto
@[expose] public section

section
open GlobalTheory.PsCo.PcEG

noncomputable section

open MeasureTheory ReciprocityTheory.ChartRestriction.DS ReciprocityTheory.ChartRestriction.DS.TRGap
open Formalism.REAL (KG toMK muK)
open GlobalTheory.PsCo.Pc1 (Mat Poly ev)

namespace GlobalTheory.PsCo.PcEF

theorem StrIdx_proof2 : StrIdx := by
  intro n ε P
  choose Qm hQm using fun s s' : Finset (Fin (n * n)) => ffMat_poly (ε := ε) s s'
  set Q : Poly n := ∑ s ∈ Finset.univ.filter (IsPhysSet ε), ((-1 : ℂ) ^ s.card) • Qm s s with hQdef
  have hQ : ∀ m : Mat n, ev m Q = physDet ε m := by
    intro m
    show MvPolynomial.eval (entVar m) Q = _

    rw [← strPhys_eq_physDet, strPhys, hQdef, map_sum]
    refine Finset.sum_congr rfl fun s _ => ?_
    rw [MvPolynomial.smul_eval, hQm]
    rfl
  obtain ⟨d2, hd2⟩ : ∃ d2 : ℕ, ∀ s s' : Finset (Fin (n * n)), (P * Qm s s').totalDegree ≤ d2 :=
    ⟨∑ s, ∑ s', (P * Qm s s').totalDegree, fun s s' =>
      le_trans (Finset.single_le_sum (f := fun s' => (P * Qm s s').totalDegree) (fun _ _ => Nat.zero_le _)
        (Finset.mem_univ s'))
      (Finset.single_le_sum (f := fun s => ∑ s', (P * Qm s s').totalDegree) (fun _ _ => Nat.zero_le _)
        (Finset.mem_univ s))⟩
  refine ⟨max (P * Q).totalDegree d2, ?_⟩
  intro H _ _ _ σ D E hσ hD L _ hLK hLd Y _ hY0Y hYP hG hK B hB
  have hdeg1 : (P * Q).totalDegree ≤ max (P * Q).totalDegree d2 := le_max_left _ _
  have hdeg2 : ∀ s s', (P * Qm s s').totalDegree ≤ max (P * Q).totalDegree d2 := fun s s' =>
    (hd2 s s').trans (le_max_right _ _)
  have hemb : Topology.IsEmbedding (fun k : KG ε => toMK k) :=
    (Formalism.REAL.isClosedEmbeddingMatrix n ε).1.isEmbedding.comp Topology.IsEmbedding.subtypeVal
  have : SecondCountableTopology (Matrix (Fin n) (Fin n) ℂ) :=
    inferInstanceAs (SecondCountableTopology (Fin n → Fin n → ℂ))
  have : SecondCountableTopology (KG ε) := hemb.isInducing.secondCountableTopology
  have hφc : Continuous (fun k : KG ε => toMK k) := hemb.continuous
  have hφK : ∀ g : KG ε, toMK g ∈ Kset ε := fun g => g.2
  have hent : ∀ R : Poly n, Continuous fun k : KG ε => ev (toMK k) R := by
    intro R
    refine (MvPolynomial.continuous_eval R).comp (continuous_pi fun p => ?_)
    rcases p with p | p
    · exact (continuous_apply p.2).comp ((continuous_apply p.1).comp hφc)
    · exact continuous_star.comp ((continuous_apply p.2).comp ((continuous_apply p.1).comp hφc))
  have hBL : ∀ w, B w ∈ L.map D.subtype := by
    intro w
    rw [hB]
    have := hLd (P * Q) hdeg1 w
    simpa only [map_mul, hQ] using this
  refine ⟨hBL, ?_⟩
  have hAL : ∀ k : KG ε, ∀ x ∈ L.map D.subtype, σ (toMK k) x ∈ L.map D.subtype := by
    rintro k _ ⟨y, hy, rfl⟩
    exact ⟨sigD hD (hφK k) y, hLK _ (hφK k) y hy, rfl⟩
  have hAc : ∀ v, Continuous fun k : KG ε => σ (toMK k) v := fun v =>
    (hσ.2.2 v).comp_continuous hφc fun g => kset_mem_UJset (hφK g)
  have hcont : Continuous fun k : KG ε => ev (toMK k) P * physDet ε (toMK k) := by
    have := hent (P * Q)
    simpa only [map_mul, hQ] using this
  rw [trace_integral_restrict (μ := muK ε) (L.map D.subtype) hcont (fun k => σ (toMK k)) hAc hAL B hB
    (fun x _ => hBL x)]
  have hY0G : ∀ y ∈ tensFock (n := n) L ⊓ physicalSubspace (N := D) ε, gradT y ∈ tensFock (n := n) L ⊓ physicalSubspace (N := D) ε :=
    fun y hy => ⟨tensFock_lTensor_stable _ hy.1, (physSub_stable ε E).2.2.2.2 y hy.2⟩
  have hY0K : ∀ (k : Matrix (Fin n) (Fin n) ℂ) (hk : k ∈ Kset ε), ∀ y ∈ tensFock (n := n) L ⊓ physicalSubspace (N := D) ε,
      wK hD hk y ∈ tensFock (n := n) L ⊓ physicalSubspace (N := D) ε := fun k hk y hy =>
    ⟨wK_tensFock hD hk (hLK k hk) hy.1, wK_physSub hD hk hy.2⟩
  have hpt : ∀ k : KG ε, ev (toMK k) P * physDet ε (toMK k) *
      LinearMap.trace ℂ (L.map D.subtype) (((σ (toMK k) : H →L[ℂ] H) : H →ₗ[ℂ] H).restrict (hAL k)) =
      ev (toMK k) P * LinearMap.trace ℂ ↥(tensFock (n := n) L ⊓ physicalSubspace (N := D) ε)
        ((gradT ∘ₗ wK hD (hφK k)).restrict (fun y hy => hY0G _ (hY0K _ (hφK k) y hy))) := by
    intro k
    rw [trace_map_subtype (sigD hD (hφK k)) (fun x hx => hLK _ (hφK k) x hx) _ _ (fun x => rfl)]
    have := str_tensFock_physSub hD (hφK k) (fun x hx => hLK _ (hφK k) x hx)
      (fun y hy => hY0G _ (hY0K _ (hφK k) y hy))
    rw [show LinearMap.trace ℂ ↥(tensFock (n := n) L ⊓ physicalSubspace (N := D) ε)
        ((gradT ∘ₗ wK hD (hφK k)).restrict (fun y hy => hY0G _ (hY0K _ (hφK k) y hy))) = _ from this]
    ring
  simp_rw [hpt]
  have hcP := hent P
  have hrange := fun y => btot_range (μ := muK ε) hσ hD hK (L := L) hφc hφK hcP
    (fun s s' u => by
      have h1 := hLd (P * Qm s s') (hdeg2 s s') u
      have h2 : ∫ k : KG ε, (ev (toMK k) P * ffMat ε (toMK k) s s') • σ (toMK k) u ∂(muK ε) =
          ∫ k : KG ε, ev (toMK k) (P * Qm s s') • σ (toMK k) u ∂(muK ε) := by
        congr 1
        funext k
        rw [map_mul, hQm]
        rfl
      rw [h2]
      exact h1) hYP y
  exact (int_str_eq (μ := muK ε) hσ hD hY0Y hK hY0K hG hY0G hφc hφK hcP hrange).symm

end GlobalTheory.PsCo.PcEF

end
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.StrIdxProof2 =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SupertraceCarriedByDiracKernel =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SupertraceCarriedByDiracKernel", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.VdmSplit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.AnalyticVectors.Unitary\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.LayerLeGeneratedTensorFock\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.TraceEqTraceRestrictOfRangeLe\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.GapConditionsOfLargeGaps\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open ReciprocityTheory.ChartRestriction.DS ReciprocityTheory.ChartRestriction.DS.TRGap
open GlobalTheory.PsCo.Pc1 (Mat)

namespace GlobalTheory.PsCo.PcEF

open GlobalTheory.PsCo.PcEG


theorem supertrace_carriedBy_diracKernel : StrKer := by
  intro n ε H _ _ σ D E hσ hD Y _ hY hG hK
  classical
  let Z : Submodule ℂ (TensorProduct ℂ D (Fock n)) := Y ⊓ LinearMap.ker (dD ε E)
  have hZY : Z ≤ Y := inf_le_left
  haveI hZf : FiniteDimensional ℂ Z := Submodule.finiteDimensional_of_le hZY
  have hZK : ∀ (k : Mat n) (hk : k ∈ Kset ε), ∀ y ∈ Z, wK hD hk y ∈ Z := by
    intro k hk y hy
    refine ⟨hK k hk y hy.1, ?_⟩
    have h0 : dD ε E y = 0 := hy.2
    show dD ε E (wK hD hk y) = 0
    rw [← wK_D hσ hD hk, h0, map_zero]
  have hZG : ∀ y ∈ Z, gradT y ∈ Z := by
    intro y hy
    refine ⟨hG y hy.1, ?_⟩
    have h0 : dD ε E y = 0 := hy.2
    show dD ε E (gradT y) = 0
    have := gradT_D (ε := ε) E y
    rw [h0, map_zero] at this
    exact neg_eq_zero.1 this.symm
  let Γ : TSub Z →ₗ[ℂ] TSub Z := ((gradT.restrict hZG : Z →ₗ[ℂ] Z) : TSub Z →ₗ[ℂ] TSub Z)
  refine ⟨Z, hZf, hZK, Γ, hZY, fun y hy => hy.2, fun k hk => ?_⟩
  have hU : IsInfUnitary ε E := isInfUnitary_of_isDerivedOn hσ hD
  let Dl : TSub Y →ₗ[ℂ] TSub Y := (((dD ε E).restrict hY : Y →ₗ[ℂ] Y) : TSub Y →ₗ[ℂ] TSub Y)
  let Γy : TSub Y →ₗ[ℂ] TSub Y := ((gradT.restrict hG : Y →ₗ[ℂ] Y) : TSub Y →ₗ[ℂ] TSub Y)
  let B : TSub Y →ₗ[ℂ] TSub Y := (((wK hD hk).restrict (hK k hk) : Y →ₗ[ℂ] Y) : TSub Y →ₗ[ℂ] TSub Y)
  obtain ⟨hker, htr⟩ := str_eq_str_ker Dl Γy B
    (fun x y => by rw [tsub_inner, tsub_inner]; exact tform_D hU _ _)
    (fun x => Subtype.ext (gradT_D E _)) (fun x => Subtype.ext (wK_D hσ hD hk _))
  have h1 : LinearMap.trace ℂ Y ((gradT ∘ₗ wK hD hk).restrict (fun y hy => hG _ (hK k hk y hy))) =
      LinearMap.trace ℂ (TSub Y) (Γy ∘ₗ B) := rfl
  rw [h1, htr]
  have hmemZ : ∀ x : LinearMap.ker Dl, tsubVal Y (x : TSub Y) ∈ Z := by
    intro x
    have hx : Dl (x : TSub Y) = 0 := x.2
    exact ⟨tsubVal_mem (x : TSub Y), congrArg (tsubVal Y) hx⟩
  let f : LinearMap.ker Dl →ₗ[ℂ] TSub Z :=
    { toFun := fun x => ((⟨tsubVal Y (x : TSub Y), hmemZ x⟩ : Z) : TSub Z)
      map_add' := fun x y => rfl
      map_smul' := fun c x => rfl }
  have hf : Function.Bijective f := by
    constructor
    · intro x y hxy
      have : tsubVal Y (x : TSub Y) = tsubVal Y (y : TSub Y) := congrArg (tsubVal Z) hxy
      exact Subtype.ext (tsubVal_injective this)
    · intro z
      have hzY : tsubVal Z z ∈ Y := hZY (tsubVal_mem z)
      let x : TSub Y := ((⟨tsubVal Z z, hzY⟩ : Y) : TSub Y)
      have hx : x ∈ LinearMap.ker Dl := by
        rw [LinearMap.mem_ker]
        apply tsubVal_injective
        rw [map_zero]
        exact (tsubVal_mem z).2
      exact ⟨⟨x, hx⟩, rfl⟩
  let e := LinearEquiv.ofBijective f hf
  rw [← LinearMap.trace_conj' _ e]
  congr 1
  apply LinearMap.ext
  intro z
  rw [LinearEquiv.conj_apply_apply]
  apply tsubVal_injective
  obtain ⟨x, rfl⟩ := e.surjective z
  rw [LinearEquiv.symm_apply_apply]
  show tsubVal Z (f ((Γy ∘ₗ B).restrict hker x)) = tsubVal Z (Γ (tOp hD hZK k (f x)))
  have hΓ : ∀ w : TSub Z, tsubVal Z (Γ w) = gradT (tsubVal Z w) := fun w => rfl
  rw [hΓ, tOp_apply hD hZK hk]
  rfl

end GlobalTheory.PsCo.PcEF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SupertraceCarriedByDiracKernel =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TraceEqOfMem =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TraceEqOfMem", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.RangeShape\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.VdmSplit\npublic import CompanionTheory.HarishChandraModules.KFiniteAnalyticVectors.AnalyticIntertwiners.Clause1\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GapConditionsOfLargeGaps\nimport Formalism.RealPlaceAnalysis.RealPlaceTaylor.CompactHaarRightInvariantInst\nimport Formalism.RealPlaceAnalysis.RealPlaceTaylor.KoszulLowersPower\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.PID\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Algebra.MvPolynomial\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.AnalyticVectors.Unitary\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.HighestWeights.ContinuousTorepK\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.ActDiagMemOfWK\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.ProdModeCharExp\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.SupTrace\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.TraceGap.TraceIntegralRestrict\npublic import ReciprocityTheory.ReductiveGroups.SymplecticTraces.WeylCharacters.Weyl\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory ReciprocityTheory.ChartRestriction.DS ReciprocityTheory.ChartRestriction.DS.TRGap GlobalTheory.Orb GlobalTheory.OpTrace GlobalTheory.AutomorphicL2Unitary
open Formalism.REAL (UJ KG toM toMK muK)
open GlobalTheory.PsCo.Pc1 (Mat Poly ev dMode blockAlg topP detbP OmP)
open GlobalTheory.HCChar (dsChar torusPt)
open scoped ComplexConjugate

namespace GlobalTheory.PsCo.PcEF

open GlobalTheory.PsCo.PcEG

theorem trace_eq_of_mem {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H] (B : H →L[ℂ] H)
    (L : Submodule ℂ H) [FiniteDimensional ℂ L] (hB : ∀ x, (B : H →ₗ[ℂ] H) x ∈ L) {c : ℂ} (hc : HasTrace B c) :
    c = LinearMap.trace ℂ L ((B : H →ₗ[ℂ] H).restrict fun x _ => hB x) := by
  have hle : LinearMap.range (B : H →ₗ[ℂ] H) ≤ L := by rintro _ ⟨x, rfl⟩; exact hB x
  have := Submodule.finiteDimensional_of_le hle
  rw [← hc.2, (hasTrace_of_finiteRank B).2, finRankTrace_eq _ L hB]

theorem equiv_of_index (hR : RangeFD) (hY : BuildY) (hS : StrKer) (hI : StrIdx) (hA : AvgMap) (hH : HWVec)
    (hC : CoordFD) (hCas : CasCoord) (hAlg : AlgDatum) (hE : DatumEquiv) (hCS : CompanionTheory.D.gk.HC.CasScal)
    {n : ℕ} {ε : Fin n → Bool} {lam : Fin n → ℝ} (hstd : StdGap ε lam) (h3 : Gap3 ε lam)
    {W : Type} [NormedAddCommGroup W] [InnerProductSpace ℂ W] [FiniteDimensional ℂ W] {T : Mat n → (W →L[ℂ] W)}
    (hT : IsKIrr ε (gaW ε lam) T) {P : Poly n} (hP : ∀ k ∈ Formalism.REAL.Kset ε, conj (trK T k) = ev k P)
    {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H] {σ : Mat n → (H →L[ℂ] H)}
    (hσ : IsURepOn (UJset ε) σ) (hirr : Formalism.MainNotions.S.IsIrredOn (Formalism.MainNotions.S.UJset ε) σ) (B : H →L[ℂ] H)
    (hB : ∀ w, B w = ∫ k : KG ε, (ev (toMK k) P * physDet ε (toMK k)) • σ (toMK k) w ∂(muK ε)) {c : ℂ}
    (hc : HasTrace B c) (hc0 : c ≠ 0)
    {X : Type} [NormedAddCommGroup X] [InnerProductSpace ℂ X] {D : Mat n → (X →L[ℂ] X)} (hD : Formalism.MainNotions.S.IsDS ε lam D) :
    ∃ U : H ≃ₗᵢ[ℂ] X, ∀ g ∈ UJset ε, ∀ x, U (σ g x) = D g (U x) := by
  have hDer := isDerivedOn_smE hσ
  obtain ⟨d, hd⟩ := hI n ε P
  obtain ⟨L, hLf, hLK, hLr⟩ := hR n ε H σ hσ hirr d
  obtain ⟨cas, hcas⟩ := hCS n ε H σ hσ hirr
  obtain ⟨Y, hYf, hle, hYP, hYD, hG, hK⟩ := hY n ε H σ _ _ hσ hDer cas hcas L hLf hLK
  obtain ⟨hBL, htr⟩ := hd H σ _ _ hσ hDer L hLK hLr Y hle hYP hG hK B hB
  obtain ⟨Z, hZf, hZK, Γ, hZY, hZD, hZtr⟩ := hS n ε H σ _ _ hσ hDer Y hYD hG hK
  have hLH : FiniteDimensional ℂ (L.map (smD ε σ).subtype) := Module.Finite.map _ _
  have h1 := (trace_eq_of_mem B _ hBL hc).trans htr
  obtain ⟨Φ, hΦ0, hΦ⟩ := hA n ε W T (TSub Z) (tOp hDer hZK) Γ hT.2.1 (tOp_isURepOn hDer hZK hσ) (by
    intro h0
    apply hc0
    rw [h1, ← h0]
    refine integral_congr_ae (Filter.Eventually.of_forall fun k => ?_)
    dsimp only
    rw [hZtr (toMK k) k.2, hP (toMK k) k.2])
  obtain ⟨z, hzZ, hz0, hz⟩ := hH n ε H σ _ _ hσ hDer Z hZK _ W T hT Φ hΦ0 hΦ
  obtain ⟨hSf, hSk⟩ := hC n ε _ (smE ε σ) Z hZf fun a b hab y hy => diagE_mem_of_wK hσ hDer Z hZf hZK hab hy
  obtain ⟨V, hV, hV0, hVc⟩ := hAlg n ε lam h3 _ (smE ε σ) hDer.glRep (isInfUnitary_of_isDerivedOn hσ hDer) z hz0
    (hYP (hZY hzZ)) hz (hCas n ε lam _ _ hDer.glRep z hz (hZD z hzZ)) _ hSf hSk
    fun s => Submodule.subset_span ⟨s, z, hzZ, rfl⟩
  exact hE n ε lam hstd H σ hσ hirr V hV hV0 hVc X D hD

theorem exists_type (hCp : CptCase) (hSch : SchurOne)
    {n : ℕ} {ε : Fin n → Bool} {lam : Fin n → ℝ} (hHC : Formalism.QuantumDeterminants.IsHCParam lam) {h : ℝ} (hh : GapAtLeast ε lam h)
    (hthr : thrStar ε < h) {X : Type} [NormedAddCommGroup X] [InnerProductSpace ℂ X] [CompleteSpace X]
    {D : Mat n → (X →L[ℂ] X)} (hD : Formalism.MainNotions.S.IsDS ε lam D) :
    ∃ (W : Type) (_ : NormedAddCommGroup W) (_ : InnerProductSpace ℂ W) (_ : FiniteDimensional ℂ W)
      (T : Mat n → (W →L[ℂ] W)), IsKIrr ε (gaW ε lam) T ∧ ∀ P : Poly n,
      (∀ k ∈ Formalism.REAL.Kset ε, conj (trK T k) = ev k P) → ∀ (B : X →L[ℂ] X) (c : ℂ),
      (∀ w, B w = ∫ k : KG ε, (ev (toMK k) P * physDet ε (toMK k)) • D (toMK k) w ∂(muK ε)) → HasTrace B c →
      c = (-1) ^ sDeg ε := by
  by_cases hpq : pOf ε = 0 ∨ qOf ε = 0
  · obtain ⟨hpd, hs, hX⟩ := hCp n ε lam hpq
    obtain ⟨hfd, hT⟩ := hX X D hD
    refine ⟨X, inferInstance, inferInstance, hfd, D, hT, fun P hP B c hB hc => ?_⟩
    have hemb : Topology.IsEmbedding (fun k : KG ε => toMK k) :=
      (Formalism.REAL.isClosedEmbeddingMatrix n ε).1.isEmbedding.comp Topology.IsEmbedding.subtypeVal
    have : SecondCountableTopology (Matrix (Fin n) (Fin n) ℂ) :=
      inferInstanceAs (SecondCountableTopology (Fin n → Fin n → ℂ))
    have : SecondCountableTopology (KG ε) := hemb.isInducing.secondCountableTopology
    have hcont : Continuous fun k : KG ε => ev (toMK k) P * physDet ε (toMK k) := by
      simp only [hpd, mul_one]
      refine (MvPolynomial.continuous_eval P).comp (continuous_pi fun p => ?_)
      rcases p with p | p
      · exact (continuous_apply p.2).comp ((continuous_apply p.1).comp hemb.continuous)
      · exact continuous_star.comp ((continuous_apply p.2).comp ((continuous_apply p.1).comp hemb.continuous))
    have h1 := trace_integral_restrict (μ := muK ε) (⊤ : Submodule ℂ X) hcont (fun k => D (toMK k))
      (fun v => (hT.2.1.2.2 v).comp_continuous hemb.continuous fun k => k.2) (fun _ _ _ => trivial) B hB
      (fun _ _ => trivial)
    rw [trace_eq_of_mem B ⊤ (fun _ => trivial) hc, h1, hs, pow_zero, ← hSch n ε _ X D hT]
    refine integral_congr_ae (Filter.Eventually.of_forall fun k => ?_)
    dsimp only
    rw [hpd, mul_one, hP (toMK k) k.2]
    delta trK
    congr 1
    exact LinearMap.trace_restrict_eq_of_forall_mem ⊤ _ fun _ => trivial
  · obtain ⟨W, i1, i2, i3, T, h1, h2, h3, h4⟩ := supTrace n ε lam h X D hD hHC hh hthr (by omega) (by omega)
    refine ⟨W, i1, i2, i3, T, ⟨h1, h2, h3⟩, fun P hP B c hB hc => ?_⟩
    obtain ⟨hf, htr⟩ := h4 P B hB
    rw [trace_eq_of_mem B _ (fun x => LinearMap.mem_range_self _ x) hc, htr]
    have h5 := hSch n ε _ W T ⟨h1, h2, h3⟩
    rw [← mul_one ((-1 : ℂ) ^ sDeg ε), mul_assoc, one_mul, ← h5]
    congr 1
    refine integral_congr_ae (Filter.Eventually.of_forall fun k => ?_)
    dsimp only
    rw [hP (toMK k) k.2]
    rfl

theorem stKData_of (hBF : BlockForm) (hOm : OmDet) (hCP : CoefPoly) (hTP : TrPoly) (hCl : ClassFn) (hGa : GaInt)
    (hTK : ToKType) (hPT : PhysTor) (hTor : TorusId) (hA : AvgMap) (hSch : SchurOne) (hR : RangeFD) (hY : BuildY)
    (hS : StrKer) (hI : StrIdx) (hH : HWVec) (hC : CoordFD) (hCas : CasCoord) (hAlg : AlgDatum) (hE : DatumEquiv)
    (hCp : CptCase) (hGap : GapNum) (hM : MatRep) (hCS : CompanionTheory.D.gk.HC.CasScal) : GlobalTheory.PsCo.Pc1.StKData := by
  intro r hr ε lam hg X _ _ D hD
  have := hD.1
  obtain ⟨hHC, hstd, h3, h, hh, hthr⟩ := hGap r hr ε lam hg
  obtain ⟨W, _, _, _, T, hT, hidx⟩ := exists_type hCp hSch hHC hh hthr hD
  have hcoef := hCP r ε W T hT.2.1
  obtain ⟨P, hP⟩ := hTP r ε W T hcoef
  replace hP : ∀ k ∈ Formalism.REAL.Kset ε, conj (trK T k) = ev k P := hP
  obtain ⟨Q, hQ⟩ := hOm r ε
  obtain ⟨M, R, hRb, hRe⟩ := hBF r ε (MvPolynomial.C ((-1 : ℂ) ^ sDeg ε) * P * Q)
  have hsq : ((-1 : ℂ) ^ sDeg ε) * (-1) ^ sDeg ε = 1 := by rw [← mul_pow]; simp
  have htop : ∀ k ∈ Formalism.REAL.Kset ε, ev k (topP ε M R) = (-1) ^ sDeg ε * (ev k P * physDet ε k) := by
    intro k hk
    change ev k (detbP r ^ M * R * (OmP ε).det) = _
    rw [map_mul, ← hRe k hk, ← hQ k hk, map_mul, map_mul,
      show ev k (MvPolynomial.C _) = _ from MvPolynomial.eval_C _]
    ring
  have hscale : ∀ (H : Type) [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]
      (A : KG ε → (H →L[ℂ] H)) (B : H →L[ℂ] H) (c : ℂ),
      (∀ v, B v = ∫ k : KG ε, ev (toMK k) (topP ε M R) • A k v ∂(muK ε)) → HasTrace B c →
      (∀ v, (((-1 : ℂ) ^ sDeg ε) • B) v = ∫ k : KG ε, (ev (toMK k) P * physDet ε (toMK k)) • A k v ∂(muK ε)) ∧
        HasTrace (((-1 : ℂ) ^ sDeg ε) • B) ((-1) ^ sDeg ε * c) := by
    intro H _ _ _ A B c hB hc
    refine ⟨fun v => ?_, ⟨hc.1.smul _, by rw [trace_smul, hc.2]⟩⟩
    rw [_root_.smul_apply, hB, ← integral_smul]
    refine integral_congr_ae (Filter.Eventually.of_forall fun k => ?_)
    dsimp only
    rw [htop (toMK k) k.2, smul_smul, ← mul_assoc, hsq, one_mul]
  refine ⟨M, R, hRb, fun k k' => ?_, fun θ hθ => ?_, fun B c hB hc => ?_, fun U _ _ _ π hπ hi hne B c hB hc => ?_⟩
  · rw [htop _ (k'⁻¹ * k * k').2, htop _ k.2, ← hP _ (k'⁻¹ * k * k').2, ← hP _ k.2, (hCl r ε k k').1,
      (hCl r ε k k').2 W T hT.2.1]
  · obtain ⟨Λ, m, hΛ, hdom, hm, hsh⟩ := hGa r ε _ hHC
    have hk : Matrix.diagonal (tor θ) ∈ Kset ε := diag_mem_Kset' ε θ
    rw [hΛ] at hT
    obtain ⟨T₀, hT₀⟩ := hTK r ε _ W T hT hcoef
    have hw := ReciprocityTheory.ChartRestriction.TR.Weyl.weyl r ε Λ hdom T₀ (HW.torepK ε hk) (tor θ) rfl
    rw [hT₀] at hw
    have h1 := hTor r ε _ Λ m hm hsh θ hθ _ hw
    change (-1) ^ sDeg ε * trK T (Matrix.diagonal (tor θ)) = _ at h1
    change ev (Matrix.diagonal (tor θ)) _ = _
    have h2 := congrArg conj h1
    rw [map_mul, map_mul, map_pow, map_neg, map_one] at h2
    rw [htop _ hk, ← hP _ hk, ← (hPT r ε θ).2, ← mul_assoc, h2]
    ring
  · obtain ⟨h1, h2⟩ := hscale X (fun k => D (toMK k)) B c hB hc
    have h4 := hidx P hP _ _ h1 h2
    have h5 := congrArg (fun x => (-1 : ℂ) ^ sDeg ε * x) h4
    simpa only [← mul_assoc, hsq, one_mul] using h5
  · by_contra hc0
    obtain ⟨σ, hσ, hirr, hσπ⟩ := hM r ε U π hπ hi
    obtain ⟨h1, h2⟩ := hscale U (fun k => π k) B c hB hc
    obtain ⟨A, hAe⟩ := equiv_of_index hR hY hS hI hA hH hC hCas hAlg hE hCS hstd h3 hT hP hσ hirr _
      (fun w => by rw [h1 w]; simp only [toMK, hσπ]) h2
      (mul_ne_zero (pow_ne_zero _ (by norm_num)) hc0) hD
    exact hne ⟨A, fun g v => by rw [← hσπ g]; exact hAe _ g.2 v⟩

end GlobalTheory.PsCo.PcEF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TraceEqOfMem =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TracePairingNonzeroIntertwiner =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TracePairingNonzeroIntertwiner", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.DatumEquiv\nimport Formalism.RealPlaceAnalysis.RealPlaceTaylor.KoszulLowersPower\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.InnerProductSpace.Trace\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory
open Formalism.REAL (KG toMK muK)
open GlobalTheory.PsCo.Pc1 (Mat)
open scoped ComplexConjugate InnerProductSpace

namespace GlobalTheory.PsCo.PcEF

variable {n : ℕ} {ε : Fin n → Bool}

section
variable {W : Type} [NormedAddCommGroup W] [InnerProductSpace ℂ W] [FiniteDimensional ℂ W]
  {Z : Type} [NormedAddCommGroup Z] [InnerProductSpace ℂ Z] [FiniteDimensional ℂ Z]

theorem avg_inner_map {T : W →L[ℂ] W} (hT : ∀ v, ‖T v‖ = ‖v‖) (x y : W) : ⟪T x, T y⟫_ℂ = ⟪x, y⟫_ℂ :=
  (⟨(T : W →ₗ[ℂ] W), hT⟩ : W →ₗᵢ[ℂ] W).inner_map_map x y

theorem avg_secondCountable (ε : Fin n → Bool) : SecondCountableTopology (KG ε) := by
  have hemb : Topology.IsEmbedding (fun k : KG ε => toMK k) :=
    (Formalism.REAL.isClosedEmbeddingMatrix n ε).1.isEmbedding.comp Topology.IsEmbedding.subtypeVal
  have : SecondCountableTopology (Matrix (Fin n) (Fin n) ℂ) :=
    inferInstanceAs (SecondCountableTopology (Fin n → Fin n → ℂ))
  exact hemb.isInducing.secondCountableTopology

theorem avg_continuous_toMK (ε : Fin n → Bool) : Continuous (fun k : KG ε => toMK k) :=
  ((Formalism.REAL.isClosedEmbeddingMatrix n ε).1.isEmbedding.comp Topology.IsEmbedding.subtypeVal).continuous

def avgF (T : Mat n → (W →L[ℂ] W)) (S : Mat n → (Z →L[ℂ] Z)) (e : W) (f : Z) (w : W) (k : KG ε) : Z :=
  ⟪T (toMK k) e, w⟫_ℂ • S (toMK k) f

theorem avgF_continuous {T : Mat n → (W →L[ℂ] W)} {S : Mat n → (Z →L[ℂ] Z)}
    (hT : Formalism.MainNotions.S.IsURepOn (Formalism.REAL.Kset ε) T) (hS : Formalism.MainNotions.S.IsURepOn (Formalism.REAL.Kset ε) S) (e : W) (f : Z)
    (w : W) : Continuous (avgF (ε := ε) T S e f w) := by
  have h1 : Continuous fun k : KG ε => T (toMK k) e :=
    (hT.2.2 e).comp_continuous (avg_continuous_toMK ε) fun k => k.2
  have h2 : Continuous fun k : KG ε => S (toMK k) f :=
    (hS.2.2 f).comp_continuous (avg_continuous_toMK ε) fun k => k.2
  exact (h1.inner continuous_const).smul h2

theorem avgF_integrable {T : Mat n → (W →L[ℂ] W)} {S : Mat n → (Z →L[ℂ] Z)}
    (hT : Formalism.MainNotions.S.IsURepOn (Formalism.REAL.Kset ε) T) (hS : Formalism.MainNotions.S.IsURepOn (Formalism.REAL.Kset ε) S) (e : W) (f : Z)
    (w : W) : Integrable (avgF (ε := ε) T S e f w) (muK ε) := by
  have := avg_secondCountable ε
  exact integrableOn_univ.1 ((avgF_continuous hT hS e f w).continuousOn.integrableOn_compact isCompact_univ)

def avgMapL {T : Mat n → (W →L[ℂ] W)} {S : Mat n → (Z →L[ℂ] Z)}
    (hT : Formalism.MainNotions.S.IsURepOn (Formalism.REAL.Kset ε) T) (hS : Formalism.MainNotions.S.IsURepOn (Formalism.REAL.Kset ε) S) (e : W) (f : Z) :
    W →ₗ[ℂ] Z where
  toFun w := ∫ k, avgF T S e f w k ∂(muK ε)
  map_add' x y := by
    rw [← integral_add (avgF_integrable hT hS e f x) (avgF_integrable hT hS e f y)]
    congr 1; funext k; simp [avgF, add_smul]
  map_smul' c x := by
    rw [RingHom.id_apply, ← integral_smul]
    congr 1; funext k; simp [avgF, smul_smul]

theorem avgMapL_apply {T : Mat n → (W →L[ℂ] W)} {S : Mat n → (Z →L[ℂ] Z)}
    (hT : Formalism.MainNotions.S.IsURepOn (Formalism.REAL.Kset ε) T) (hS : Formalism.MainNotions.S.IsURepOn (Formalism.REAL.Kset ε) S) (e : W) (f : Z)
    (w : W) : avgMapL hT hS e f w = ∫ k, avgF T S e f w k ∂(muK ε) := rfl

theorem avgMapL_intertwines {T : Mat n → (W →L[ℂ] W)} {S : Mat n → (Z →L[ℂ] Z)}
    (hT : Formalism.MainNotions.S.IsURepOn (Formalism.REAL.Kset ε) T) (hS : Formalism.MainNotions.S.IsURepOn (Formalism.REAL.Kset ε) S) (e : W) (f : Z)
    (g : KG ε) (w : W) : avgMapL hT hS e f (T (toMK g) w) = S (toMK g) (avgMapL hT hS e f w) := by
  rw [avgMapL_apply, avgMapL_apply, ← (S (toMK g)).integral_comp_comm (avgF_integrable hT hS e f w),
    ← integral_mul_left_eq_self _ g]
  congr 1; funext k
  have hm : toMK (g * k) = toMK g * toMK k := rfl
  simp only [avgF, hm, hT.1.2 _ g.2 _ k.2, hS.1.2 _ g.2 _ k.2, ContinuousLinearMap.comp_apply, map_smul]
  rw [avg_inner_map (hT.2.1 _ g.2)]

end

theorem tracePairing_nonzero_intertwiner : AvgMap := by
  intro n ε W _ _ _ T Z _ _ _ S Γ hT hS hne
  classical
  set b := stdOrthonormalBasis ℂ W
  set c := stdOrthonormalBasis ℂ Z
  let φ : Fin (Module.finrank ℂ Z) → Z →L[ℂ] ℂ := fun j =>
    LinearMap.toContinuousLinearMap ((innerₛₗ ℂ (c j)).comp Γ)
  have hφ : ∀ j u, φ j u = ⟪c j, Γ u⟫_ℂ := fun j u => rfl
  have hpt : ∀ i j (k : KG ε), φ j (avgF T S (b i) (c j) (b i) k) =
      conj ⟪b i, T (toMK k) (b i)⟫_ℂ * ⟪c j, Γ (S (toMK k) (c j))⟫_ℂ := by
    intro i j k
    simp [avgF, hφ, map_smul, inner_conj_symm]
  have hint : ∀ i j, Integrable (fun k : KG ε =>
      conj ⟪b i, T (toMK k) (b i)⟫_ℂ * ⟪c j, Γ (S (toMK k) (c j))⟫_ℂ) (muK ε) := fun i j =>
    ((φ j).integrable_comp (avgF_integrable hT hS (b i) (c j) (b i))).congr
      (Filter.Eventually.of_forall fun k => hpt i j k)
  have key : ∀ i j, ⟪c j, Γ (avgMapL hT hS (b i) (c j) (b i))⟫_ℂ =
      ∫ k, conj ⟪b i, T (toMK k) (b i)⟫_ℂ * ⟪c j, Γ (S (toMK k) (c j))⟫_ℂ ∂(muK ε) := by
    intro i j
    rw [avgMapL_apply, ← hφ, ← (φ j).integral_comp_comm (avgF_integrable hT hS _ _ _)]
    exact integral_congr_ae (Filter.Eventually.of_forall fun k => hpt i j k)
  have hsum : ∫ k : KG ε, conj (trK T (toMK k)) * LinearMap.trace ℂ Z (Γ ∘ₗ (S (toMK k) : Z →ₗ[ℂ] Z)) ∂(muK ε) =
      ∑ i, ∑ j, ⟪c j, Γ (avgMapL hT hS (b i) (c j) (b i))⟫_ℂ := by
    simp only [key]
    have hpw : ∀ k : KG ε, conj (trK T (toMK k)) * LinearMap.trace ℂ Z (Γ ∘ₗ (S (toMK k) : Z →ₗ[ℂ] Z)) =
        ∑ i, ∑ j, conj ⟪b i, T (toMK k) (b i)⟫_ℂ * ⟪c j, Γ (S (toMK k) (c j))⟫_ℂ := by
      intro k

      simp only [trK, LinearMap.trace_eq_sum_inner _ b, LinearMap.trace_eq_sum_inner _ c, map_sum,
      Finset.sum_mul, Finset.mul_sum, LinearMap.comp_apply, ContinuousLinearMap.coe_coe]
      exact Finset.sum_comm
    simp_rw [hpw]
    rw [integral_finsetSum _ fun i _ => integrable_finsetSum _ fun j _ => hint i j]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [integral_finsetSum _ fun j _ => hint i j]
  rw [hsum] at hne
  obtain ⟨i, -, hi⟩ := Finset.exists_ne_zero_of_sum_ne_zero hne
  obtain ⟨j, -, hj⟩ := Finset.exists_ne_zero_of_sum_ne_zero hi
  refine ⟨avgMapL hT hS (b i) (c j), fun h0 => hj ?_, fun k hk v => ?_⟩
  · rw [h0, LinearMap.zero_apply, map_zero, inner_zero_right]
  · have hk' : k ∈ Set.range (fun g : KG ε => toMK g) := by rw [Formalism.REAL.range_toMK]; exact hk
    obtain ⟨g, rfl⟩ := hk'
    exact avgMapL_intertwines hT hS (b i) (c j) g v

end GlobalTheory.PsCo.PcEF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TracePairingNonzeroIntertwiner =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitaryRepUpqMatrixFunction =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitaryRepUpqMatrixFunction", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.DatumEquiv\nimport Formalism.RealPlaceAnalysis.RealPlaceTaylor.KoszulLowersPower\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

section

noncomputable section

namespace GlobalTheory.PsCo.PcEF.MatrixRepresentation

variable {n : ℕ} (ε : Fin n → Bool) {X : Type} [NormedAddCommGroup X] [InnerProductSpace ℂ X]

abbrev mat (g : Formalism.REAL.UJ ε) : Matrix (Fin n) (Fin n) ℂ :=
  ((g : (Matrix (Fin n) (Fin n) ℂ)ˣ) : Matrix (Fin n) (Fin n) ℂ)

theorem mat_injective : Function.Injective (mat ε) := fun _ _ h => Subtype.ext (Units.ext h)

def rep (π : Formalism.REAL.UJ ε →* (X →L[ℂ] X)) (x : Matrix (Fin n) (Fin n) ℂ) : X →L[ℂ] X := by
  classical exact if h : ∃ g, mat ε g = x then π h.choose else 1

theorem rep_mat (π : Formalism.REAL.UJ ε →* (X →L[ℂ] X)) (g : Formalism.REAL.UJ ε) : rep ε π (mat ε g) = π g := by
  have h : ∃ g', mat ε g' = mat ε g := ⟨g, rfl⟩
  rw [rep, dite_eq_left h, mat_injective ε h.choose_spec]

theorem range_mat : Set.range (mat ε) = Formalism.MainNotions.S.UJset ε := (Formalism.REAL.isClosedEmbeddingMatrix n ε).2

theorem mat_mem (g : Formalism.REAL.UJ ε) : mat ε g ∈ Formalism.MainNotions.S.UJset ε := range_mat ε ▸ ⟨g, rfl⟩

theorem exists_mat {x : Matrix (Fin n) (Fin n) ℂ} (hx : x ∈ Formalism.MainNotions.S.UJset ε) : ∃ g, mat ε g = x := by
  rw [← range_mat ε] at hx; exact hx

theorem isEmbedding_mat : Topology.IsEmbedding (mat ε) := (Formalism.REAL.isClosedEmbeddingMatrix n ε).1.isEmbedding

end GlobalTheory.PsCo.PcEF.MatrixRepresentation

namespace GlobalTheory.PsCo.PcEF

open GlobalTheory.PsCo.PcEF.MatrixRepresentation

theorem unitaryRep_upq_matrixFunction : MatRep := by
  intros
  apply _root_.GlobalTheory.PsCo.PcEF.UF.unitaryRep_upq_matrixFunction <;> assumption

end GlobalTheory.PsCo.PcEF

end
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitaryRepUpqMatrixFunction =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MaximalCompactPseudoCoefficientData =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.MaximalCompactPseudoCoefficientData", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.RangeShape\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.HarishChandraModulesIndefiniteUnitaryGroup\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdjointDetOnCompactTorus\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdjointDetTraceClassFunction\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CasimirScalarStableSumSpace\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CasimirValueHighestWeightCoordinates\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CompactDiscreteSeriesOwnType\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqDiscreteSeriesOfLowestKTypeCasimir\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EvConjTransposeMem\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FockCoordinatesSpanFiniteDimensional\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HarishChandraWeightIntegralDominant\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HighestWeightKernelLowestType\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IntertwinerPreservesHighestWeight\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IrrepAveragesFinDimSmoothOfKTypesAndPolyAverages\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MaxCompactPolynomialBlockTimesConjDetPower\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ModeMatrixDetEqAdjointDet\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormIrreducibleCharacterUnitaryMaxCompactEqOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PolyCoefIrrepHasDerivedAction\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PolyOnKConj\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StrIdxProof2\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SupertraceCarriedByDiracKernel\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TraceEqOfMem\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TracePairingNonzeroIntertwiner\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitaryRepUpqMatrixFunction\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeylFormulaCompactTorusIdentityOfIngredients\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GapConditionsOfLargeGaps\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.PsCo.Pc1

namespace GlobalTheory.PsCo.Pc1

theorem maximalCompact_pseudoCoefficientData' : StKData :=
  GlobalTheory.PsCo.PcEF.stKData_of
    GlobalTheory.PsCo.PcEF.maxCompactPolynomial_blockTimesConjDetPower GlobalTheory.PsCo.PcEF.modeMatrixDet_eq_adjointDet GlobalTheory.PsCo.PcEF.coefPoly
    GlobalTheory.PsCo.PcEF.trPoly GlobalTheory.PsCo.PcEF.adjointDetTrace_classFunction GlobalTheory.PsCo.PcEF.harishChandraWeight_integral_dominant
    GlobalTheory.PsCo.PcEF.polyCoefIrrep_hasDerivedAction GlobalTheory.PsCo.PcEF.adjointDet_onCompactTorus GlobalTheory.PsCo.PcEF.torusId_full
    GlobalTheory.PsCo.PcEF.tracePairing_nonzero_intertwiner GlobalTheory.PsCo.PcEF.norm_irreducibleCharacter_unitaryMaxCompact_eq_one GlobalTheory.PsCo.PcEF.rangeFD_closed
    GlobalTheory.PsCo.PcEF.casimirScalar_stableSumSpace GlobalTheory.PsCo.PcEF.supertrace_carriedBy_diracKernel GlobalTheory.PsCo.PcEF.StrIdx_proof2
    GlobalTheory.PsCo.PcEF.intertwiner_preserves_highestWeight GlobalTheory.PsCo.PcEF.fockCoordinates_span_finiteDimensional GlobalTheory.PsCo.PcEF.casimirValue_highestWeightCoordinates
    GlobalTheory.PsCo.PcEF.highestWeightKernel_lowestType GlobalTheory.PsCo.PcEF.eq_discreteSeries_of_lowestKType_casimir GlobalTheory.PsCo.PcEF.compactDiscreteSeries_ownType
    GlobalTheory.PsCo.PcEF.gapConditions_of_largeGaps GlobalTheory.PsCo.PcEF.unitaryRep_upq_matrixFunction CompanionTheory.D.gk.HC.casimirActsByScalar_indefUnitary

end GlobalTheory.PsCo.Pc1
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MaximalCompactPseudoCoefficientData =====
