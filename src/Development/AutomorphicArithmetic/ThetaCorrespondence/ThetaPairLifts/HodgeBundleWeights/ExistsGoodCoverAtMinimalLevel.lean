module

public import Development.AbelianVarietyTheory.Definitions.Divisors.NormNegCmConstantEqAtAllEmbeddings
public import Development.AbelianVarietyTheory.BlockTheory.TorsionBlocks.LevelCarrying
public import Development.AbelianVarietyTheory.Definitions.Divisors.IsCoprimeOfNatCast
public import Development.AbelianVarietyTheory.Definitions.Divisors.MemLevEigenIffTransl
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbsNormMapRingOfIntegersHom
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DegreeSupLatticeComponentEq
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaExponentsDominantLastEntryOneDegree
public import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsIndexIdeal
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThFamMono
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HolSub0LeSpanRaw
public import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ExistsShortHarmonicFamilyUnimodular
public import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ShortThetaRuleLinearInHarmonicPolynomial
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DeepLevelCoverPrincipalLevelLawsGalois
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrincipalLevelArithmeticGroupsContainCongruence
public import Development.AbelianVarietyTheory.Proofs.SiegelThetaTransformation.CuspFormsLeSpanShortThetaSeries
public import Development.AbelianVarietyTheory.Proofs.SiegelThetaTransformation.ShortThetaSeriesDominantWeightIsCuspForm
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.HodgeBundleWeights.ToKnownTheoremsOf
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsBoundedIntegerGoodCoverThetaSeriesIntegral
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormPhiHatIndPhi
public import Development.AbelianVarietyTheory.Proofs.FormalGroupCharts.ExistsIsNabUncond
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.TypeStar
import Development.AbelianVarietyTheory.Definitions.Divisors.BadElt
import Development.AbelianVarietyTheory.Definitions.Divisors.CuspIso
import Development.AbelianVarietyTheory.Definitions.Divisors.GenRatios
import Development.AbelianVarietyTheory.Definitions.Divisors.IsRightActFunPull
import Development.AbelianVarietyTheory.Definitions.Divisors.IsoOverOfIsOpenImmersion
import Development.AbelianVarietyTheory.Definitions.Divisors.Multiplier
import Formalism.MeanHeightDescent.AverageDegreeBounds.GlobalBoundRefinements
import Mathlib.Algebra.Order.Star.Int
import Mathlib.Algebra.Ring.IsFormallyReal
import Development.AbelianVarietyTheory.Counterexamples.LevelGroupExamples.InducedEqOne
import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ShortValTotOfPinned
import Development.AbelianVarietyTheory.Proofs.FormalGroupCharts.ChartIndependenceUnconditional
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.LevelMapsClosed
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllUniformizationLawsHold
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.FramedModuliAlgebraicLawsChartWeightIntegrality
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.FramedPointReducedFromTestRing
import Formalism.LocalToGlobal.ProjectiveLattices.DatProofs
import Formalism.SharpRestriction.GlobalSchurBounds.ThickPlacesCorollaryOfAnyTranslate
import Std.Tactic.BVDecide.Normalize.Prop

attribute [-instance]
  NormedSpace.toModule Submodule.normedSpace Submodule.seminormedAddCommGroup
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
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EvenDomainWeightBound, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSmallScalarReflexIdealSelfDualLattice, Development.AbelianVarietyTheory.Proofs.DivisorProofs.PolynomialCoefficientEmbeddingNormLeOfL1Bound, Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.HodgeBundleWeights.ExistsGoodCoverAtMinimalLevel

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EvenDomainWeightBound =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.EvenDomainWeightBound", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.NormNegCmConstantEqAtAllEmbeddings\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.TypeStar\npublic import Development.AbelianVarietyTheory.BlockTheory.TorsionBlocks.LevelCarrying\nimport Development.AbelianVarietyTheory.Definitions.Divisors.BadElt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.CuspIso\nimport Development.AbelianVarietyTheory.Definitions.Divisors.GenRatios\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsCoprimeOfNatCast\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsRightActFunPull\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsoOverOfIsOpenImmersion\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.MemLevEigenIffTransl\nimport Development.AbelianVarietyTheory.Definitions.Divisors.Multiplier\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Theta
open GlobalTheory GlobalTheory.CompHS GlobalTheory.CovTop GlobalTheory.HSApp GlobalTheory.DegVal GlobalTheory.DegCmp
open GlobalTheory.AllWt (Psi wtOf cuspOn cuspW latOn latW normOn petOn GoodOn GoodW rankOn degOn rankW)
open GlobalTheory.CompHt (hodgeWt)
open GlobalTheory.LevDesc (TypeFrame grpHR grpGHR latN levDet secRing transl pull KeepsCusp)
open GlobalTheory.IndefiniteRowSideFullHecke.LevelStructureAutomorphisms (LevelAut)
open GlobalTheory.BadCount
open scoped TensorProduct

noncomputable section

namespace GlobalTheory.CovGmin

theorem petW_le_of_homN_le : ∀ (D : D7) (T : Core D) (j : ℕ) (Y : Deep T j) (G : WTZ D.host.E) (σ : Y.d.c₂.F →+* ℂ) (f : Rul Y.d.Xo₂ Y.d.c₂) (B : ℝ), 0 ≤ B → (∀ z : Σ k, ReciprocityTheory.ChartRestriction.G.FD.Frame ((Y.U (Formalism.L2.Pj.goodOf Y.d.c₂ σ)).X k).Ψ D.R.r, z.2 ∈ ((Y.U (Formalism.L2.Pj.goodOf Y.d.c₂ σ)).X z.1).dom → AllWt.homN (Y.U (Formalism.L2.Pj.goodOf Y.d.c₂ σ)) (xiR D) G f z ≤ B) → AllWt.petW Y.U (xiR D) (fun _ => D.sp.W j) Y.dict G σ f ≤ B ∧ ∀ Z, petOn Y.U (xiR D) (fun _ => D.sp.W j) Y.dict Z G σ f ≤ B := by
  intro D T j Y G σ f B hB h
  have key : ∀ μ : MeasureTheory.Measure (AutQ (D.sp.W j)), μ Set.univ ≤ 1 →
      AllWt.petAt (Y.U (Formalism.L2.Pj.goodOf Y.d.c₂ σ)) (xiR D) (D.sp.W j) (Y.dict (Formalism.L2.Pj.goodOf Y.d.c₂ σ)) μ G f ≤ B := by
    intro μ hμ
    rw [AllWt.petAt_eq]
    have hb : ∀ q : AutQ (D.sp.W j), ‖AllWt.homN (Y.U (Formalism.L2.Pj.goodOf Y.d.c₂ σ)) (xiR D) G f
        (Y.dict (Formalism.L2.Pj.goodOf Y.d.c₂ σ) q.out)‖ₑ ≤ ENNReal.ofReal B := by
      intro q
      rw [Real.enorm_eq_ofReal (AllWt.homN_nonneg _ _ _ _ _)]
      apply ENNReal.ofReal_le_ofReal
      by_cases hz : (Y.dict (Formalism.L2.Pj.goodOf Y.d.c₂ σ) q.out).2 ∈
          ((Y.U (Formalism.L2.Pj.goodOf Y.d.c₂ σ)).X (Y.dict (Formalism.L2.Pj.goodOf Y.d.c₂ σ) q.out).1).dom
      · exact h _ hz
      · have h0 : AllWt.homN (Y.U (Formalism.L2.Pj.goodOf Y.d.c₂ σ)) (xiR D) G f
            (Y.dict (Formalism.L2.Pj.goodOf Y.d.c₂ σ) q.out) = 0 := by
          simp [AllWt.homN, AllWt.ptN, rdU, hz, ReciprocityTheory.ChartRestriction.G.FD.Data.pnorm]
        rw [h0]; exact hB
    have h1 : MeasureTheory.eLpNorm' (fun q : AutQ (D.sp.W j) =>
        AllWt.homN (Y.U (Formalism.L2.Pj.goodOf Y.d.c₂ σ)) (xiR D) G f
          (Y.dict (Formalism.L2.Pj.goodOf Y.d.c₂ σ) q.out)) 2 μ ≤
        MeasureTheory.eLpNorm' (fun _ : AutQ (D.sp.W j) => B) 2 μ := by
      apply MeasureTheory.eLpNorm'_mono_eNorm_ae (by norm_num)
      exact Filter.Eventually.of_forall (fun q => by simpa [Real.eNorm_eq_ofReal hB] using hb q)
    rw [MeasureTheory.eLpNorm'_const B (by norm_num), Real.eNorm_eq_ofReal hB] at h1
    have h2 : MeasureTheory.eLpNorm' (fun q : AutQ (D.sp.W j) =>
        AllWt.homN (Y.U (Formalism.L2.Pj.goodOf Y.d.c₂ σ)) (xiR D) G f
          (Y.dict (Formalism.L2.Pj.goodOf Y.d.c₂ σ) q.out)) 2 μ ≤ ENNReal.ofReal B := by
      exact h1.trans ((mul_le_mul_right (ENNReal.rpow_le_one hμ (by positivity)) _).trans (by simp))
    exact ENNReal.toReal_le_of_le_ofReal hB h2
  refine ⟨key _ ?_, fun Z => key _ (AllWt.muPart_univ_le _ _ _)⟩
  rw [← AllWt.muPart_univ (D.sp.W j) (Y.dict (Formalism.L2.Pj.goodOf Y.d.c₂ σ))]
  exact AllWt.muPart_univ_le _ _ _




theorem nrm_le_of_eq_smul (D : D7) (T : Core D) (j : ℕ) (Y : Deep T j) (G : WTZ D.host.E) (σ : Y.d.c₂.F →+* ℂ)
    (w : Y.V G) (f : Rul Y.d.Xo₂ Y.d.c₂) (Na : ℕ) (A B : ℝ) (hB : 0 ≤ B) (hA : (Na : ℝ) ≤ A)
    (hc : (w : Rul Y.d.Xo₂ Y.d.c₂) = (Na : Y.d.c₂.F) • f)
    (h : ∀ z : Σ k, ReciprocityTheory.ChartRestriction.G.FD.Frame ((Y.U (Formalism.L2.Pj.goodOf Y.d.c₂ σ)).X k).Ψ D.R.r,
      z.2 ∈ ((Y.U (Formalism.L2.Pj.goodOf Y.d.c₂ σ)).X z.1).dom →
        AllWt.homN (Y.U (Formalism.L2.Pj.goodOf Y.d.c₂ σ)) (xiR D) G f z ≤ B) :
    Y.nrm G σ w ≤ A * B ∧
      ∀ Z, petOn Y.U (xiR D) (fun _ => D.sp.W j) Y.dict Z G σ (w : Rul Y.d.Xo₂ Y.d.c₂) ≤ A * B := by
  obtain ⟨h1, h2⟩ := petW_le_of_homN_le D T j Y G σ f B hB h
  have hn1 : ‖σ (Na : Y.d.c₂.F)‖ = Na := by rw [map_natCast, Complex.norm_natCast]
  have hN0 : (0 : ℝ) ≤ Na := Nat.cast_nonneg _
  refine ⟨?_, fun Z => ?_⟩
  · show AllWt.petW Y.U (xiR D) (fun _ => D.sp.W j) Y.dict G σ (w : Rul Y.d.Xo₂ Y.d.c₂) ≤ _
    rw [hc, AllWt.petW_smul, hn1]
    exact (mul_le_mul_of_nonneg_left h1 hN0).trans (mul_le_mul_of_nonneg_right hA hB)
  · rw [hc, AllWt.petOn_smul, hn1]
    exact (mul_le_mul_of_nonneg_left (h2 Z) hN0).trans (mul_le_mul_of_nonneg_right hA hB)

theorem span_eq_top_of_multiples {F M : Type*} [Field F] [CharZero F] [AddCommGroup M] [Module F M] (W : Submodule F M)
    (S S' : Set W) (hS : Submodule.span F S = ⊤) (Na : ℕ) (hNa : 0 < Na)
    (h : ∀ y ∈ S, ∃ s : F, s ≠ 0 ∧ ∀ y₁ : W, (y₁ : M) = s • (y : M) →
      ((Na • y₁ : W) : M) = (Na : F) • (s • (y : M)) → Na • y₁ ∈ S') :
    Submodule.span F S' = ⊤ := by
  rw [eq_top_iff, ← hS, Submodule.span_le]
  intro y hy
  obtain ⟨s, hs, hm⟩ := h y hy
  have hm' := hm (s • y) rfl (by rw [Nat.cast_smul_eq_nsmul]; rfl)
  have hNa' : ((Na : F)) ≠ 0 := by exact_mod_cast hNa.ne'
  have e1 : y = (s⁻¹ * (Na : F)⁻¹) • (Na • (s • y)) := by
    rw [← Nat.cast_smul_eq_nsmul F, smul_smul, smul_smul, mul_assoc s⁻¹, inv_mul_cancel₀ hNa', mul_one,
      inv_mul_cancel₀ hs, one_smul]
  rw [SetLike.mem_coe, e1]
  exact Submodule.smul_mem _ _ (Submodule.subset_span hm')

theorem exp_consts (CA CB CC Q κ : ℝ) :
    Real.exp (CC * Q * κ) * (Real.exp (391 * Q * κ) * Real.exp (CA * Q * κ) * Real.exp (CB * Q * κ)) =
      Real.exp ((CA + CB + CC + 391) * Q * κ) := by
  simp only [← Real.exp_add]
  congr 1
  ring


end GlobalTheory.CovGmin
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EvenDomainWeightBound =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSmallScalarReflexIdealSelfDualLattice =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSmallScalarReflexIdealSelfDualLattice", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.NormNegCmConstantEqAtAllEmbeddings\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbsNormMapRingOfIntegersHom\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DegreeSupLatticeComponentEq\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaExponentsDominantLastEntryOneDegree\npublic import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsIndexIdeal\nimport Formalism.MeanHeightDescent.AverageDegreeBounds.GlobalBoundRefinements\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.BlockTheory.TorsionBlocks.LevelCarrying\nimport Development.AbelianVarietyTheory.Definitions.Divisors.CuspIso\nimport Development.AbelianVarietyTheory.Definitions.Divisors.GenRatios\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsCoprimeOfNatCast\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsRightActFunPull\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.MemLevEigenIffTransl\nimport Development.AbelianVarietyTheory.Definitions.Divisors.Multiplier\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Theta
open GlobalTheory GlobalTheory.CompHS GlobalTheory.CovTop GlobalTheory.HSApp GlobalTheory.DegVal GlobalTheory.DegCmp
open GlobalTheory.AllWt (Psi wtOf cuspOn cuspW latOn latW normOn petOn GoodOn GoodW rankOn degOn rankW)
open GlobalTheory.CompHt (hodgeWt)
open GlobalTheory.LevDesc (TypeFrame grpHR grpGHR latN levDet secRing transl pull KeepsCusp)
open GlobalTheory.IndefiniteRowSideFullHecke.LevelStructureAutomorphisms (LevelAut)
open GlobalTheory.BadCount
open scoped TensorProduct

set_option autoImplicit false

open scoped nonZeroDivisors

noncomputable section

namespace GlobalTheory.SmallScal



theorem exists_small_scalar : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E) (Dw : Datum H) (l : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Level H) (c : Coeff l) (n : ℕ) (La : GenLat E n), La.Unimod → ∃ s : c.F, s ≠ 0 ∧ Submodule.span (𝓞 c.F) {s} * ∏ τ : E →+* ℂ, idealAt c La.Ln τ ^ Dw.mult τ ≤ ∏ τ : E →+* ℂ, idealAt c La.La τ ^ Dw.mult τ ∧ ∀ σ : c.F →+* ℂ, ‖σ s‖ ^ 2 * ((La.Ln.toAddSubgroup.addSubgroupOf La.La.toAddSubgroup).index : ℝ) ^ (Dw.p + Dw.q) ≤ Real.exp (fieldSz c.F) ^ 2 := by
  intro E _ _ _ H Dw l c n La hU
  haveI : IsTotallyComplex c.F := GlobalTheory.CompHS.isTotallyComplex_coeff c
  obtain ⟨𝔞, h0, h1, h2⟩ := GlobalTheory.BetaEx.exists_index_ideal La.Ln La.La inf_le_left
    (GlobalTheory.BetaEx.bdd_of_unimod La hU) (fun m hm => by
      obtain ⟨a, ha, h⟩ := GlobalTheory.BetaEx.exists_smul_std m
      exact ⟨a, ha, La.La.smul_mem a hm, h⟩)
  set idx : ℕ := (La.Ln.toAddSubgroup.addSubgroupOf La.La.toAddSubgroup).index with hidx
  have h2' : Ideal.absNorm 𝔞 = idx := h2
  have hidx0 : idx ≠ 0 := by
    rw [← h2']; exact fun h => h0 (Ideal.absNorm_eq_zero_iff.1 h)

  have e : ∀ τ, idealAt c La.Ln τ =
      Submodule.span (𝓞 c.F) ((embK c τ) '' (𝔞 : Set (𝓞 E))) * idealAt c La.La τ := by
    intro τ
    unfold idealAt
    rw [← GlobalTheory.BetaEx.span_image_span (embF c τ) (detSet La.Ln),
      ← GlobalTheory.BetaEx.span_image_span (embF c τ) (detSet La.La)]
    have := GlobalTheory.BetaEx.span_image_smul (embF c τ) 𝔞 (GlobalTheory.BetaEx.detSpan La.La)
    rw [← h1] at this
    exact this
  let φ : (E →+* ℂ) → (𝓞 E →+* 𝓞 c.F) := fun τ => RingOfIntegers.mapRingHom (embF c τ)
  let B : FractionalIdeal (𝓞 c.F)⁰ c.F :=
    ∏ τ : E →+* ℂ, ((𝔞.map (φ τ) : Ideal (𝓞 c.F)) : FractionalIdeal (𝓞 c.F)⁰ c.F) ^ Dw.mult τ

  have hS : ∀ τ, Submodule.span (𝓞 c.F) ((embK c τ) '' (𝔞 : Set (𝓞 E))) ≤
      (((𝔞.map (φ τ) : Ideal (𝓞 c.F)) : FractionalIdeal (𝓞 c.F)⁰ c.F) : Submodule (𝓞 c.F) c.F) := by
    intro τ
    refine Submodule.span_le.2 ?_
    rintro _ ⟨a, ha, rfl⟩
    exact (FractionalIdeal.mem_coeIdeal _).2 ⟨φ τ a, Ideal.mem_map_of_mem _ ha, rfl⟩
  have hSB : ∏ τ : E →+* ℂ, Submodule.span (𝓞 c.F) ((embK c τ) '' (𝔞 : Set (𝓞 E))) ^ Dw.mult τ ≤
      (B : Submodule (𝓞 c.F) c.F) := by
    have : (B : Submodule (𝓞 c.F) c.F) = FractionalIdeal.coeSubmoduleHom (𝓞 c.F)⁰ c.F B := rfl
    rw [this, map_prod]
    refine Finset.prod_le_prod' fun τ _ => ?_
    rw [map_pow]
    exact pow_le_pow_left' (hS τ) _

  obtain ⟨k, hk⟩ : ∃ k, k = InfinitePlace.nrComplexPlaces c.F := ⟨_, rfl⟩
  have hnF : Module.finrank ℚ c.F = 2 * k := hk ▸ IsTotallyComplex.finrank c.F
  have hnE : Module.finrank ℚ E = 2 * InfinitePlace.nrComplexPlaces E := IsTotallyComplex.finrank E
  have hk0 : k ≠ 0 := by have := Module.finrank_pos (R := ℚ) (M := c.F); omega
  have hdvd : Module.finrank ℚ E ∣ Module.finrank ℚ c.F :=
    (GlobalTheory.absNorm_map_ringOfIntegers_hom E c.F (φ (Classical.arbitrary _)) 𝔞).1
  have hexp : Module.finrank ℚ c.F / Module.finrank ℚ E * ∑ τ : E →+* ℂ, Dw.mult τ = (Dw.p + Dw.q) * k := by
    rw [GlobalTheory.RefSum.sum_mult]
    obtain ⟨t, ht⟩ := hdvd
    have hE0 : 0 < Module.finrank ℚ E := Module.finrank_pos
    rw [ht, Nat.mul_div_cancel_left _ hE0, hnE, Nat.mul_div_cancel_left _ (by norm_num)]
    rw [ht, hnE] at hnF
    have : InfinitePlace.nrComplexPlaces E * t = k := by linarith
    rw [← this]; ring
  have hNB : FractionalIdeal.absNorm B = ((idx : ℚ) ^ (Dw.p + Dw.q)) ^ k := by
    simp only [B, map_prod, map_pow, FractionalIdeal.coeIdeal_absNorm]
    simp only [fun τ => (GlobalTheory.absNorm_map_ringOfIntegers_hom E c.F (φ τ) 𝔞).2, h2']
    rw [← pow_mul, ← hexp, pow_mul, Finset.prod_pow_eq_pow_sum]
    push_cast
    ring
  have hX0 : (0 : ℝ) < (idx : ℝ) ^ (Dw.p + Dw.q) := pow_pos (by exact_mod_cast Nat.pos_of_ne_zero hidx0) _
  have hB0 : B ≠ 0 := by
    intro hB
    have := hNB
    rw [hB, map_zero] at this
    have h' : ((idx : ℚ) ^ (Dw.p + Dw.q)) ^ k ≠ 0 := pow_ne_zero _ (pow_ne_zero _ (by exact_mod_cast hidx0))
    exact h' this.symm

  set X : ℝ := (idx : ℝ) ^ (Dw.p + Dw.q) with hXdef
  set R : ℝ := Real.exp (fieldSz c.F) ^ 2 with hR
  have hR0 : 0 < R := by positivity
  have hg : 0 < R / X := div_pos hR0 hX0
  have hcard : Fintype.card (InfinitePlace c.F) = k := by
    rw [InfinitePlace.card_eq_nrRealPlaces_add_nrComplexPlaces, IsTotallyComplex.nrRealPlaces_eq_zero, zero_add, hk]
  have hd1 : (1 : ℝ) ≤ |(discr c.F : ℝ)| := by
    have := Int.one_le_abs (discr_ne_zero c.F)
    exact_mod_cast this
  have hdR : |(discr c.F : ℝ)| ≤ R ^ k := by
    rw [hR, ← pow_mul, ← Real.exp_nat_mul, ← Real.exp_log (lt_of_lt_of_le one_pos hd1)]
    apply Real.exp_le_exp.2
    have hn : (0 : ℝ) < Module.finrank ℚ c.F := by exact_mod_cast Module.finrank_pos
    have hfs := GlobalTheory.CovTop.log_rd_le_fieldSz c.F
    have hlog := Real.log_natCast_nonneg (Module.finrank ℚ c.F)
    have : Real.log |(discr c.F : ℝ)| ≤ (Module.finrank ℚ c.F : ℝ) * fieldSz c.F := by
      rw [div_le_iff₀ hn] at hfs; linarith
    rw [hnF] at this
    push_cast at this ⊢
    linarith
  have hsq : Real.sqrt |(discr c.F : ℝ)| ≤ |(discr c.F : ℝ)| :=
    Real.sqrt_le_iff.2 ⟨by linarith, by nlinarith⟩
  have hsq0 : 0 < Real.sqrt |(discr c.F : ℝ)| := Real.sqrt_pos.2 (by linarith)
  obtain ⟨b, hb, hb0, hbw⟩ := Formalism.ExtensionFiltration.mk_lt c.F (Units.mk0 B⁻¹ (inv_ne_zero hB0))
    (fun _ => Real.sqrt (R / X)) (fun _ => Real.sqrt_pos.2 hg) (by
      rw [Units.val_mk0, map_inv₀, hNB, Finset.prod_const, Finset.card_univ, hcard, Real.sq_sqrt hg.le, ← hk,
        div_pow]
      push_cast
      rw [← hXdef]
      have hXk : 0 < X ^ k := pow_pos hX0 k
      rw [inv_mul_eq_div, div_mul_eq_mul_div, div_lt_iff₀ hXk, mul_div_assoc', div_mul_cancel₀ _ hXk.ne']
      calc (2 : ℝ) ^ k * Real.sqrt |(discr c.F : ℝ)| < Real.pi ^ k * Real.sqrt |(discr c.F : ℝ)| :=
            mul_lt_mul_of_pos_right (pow_lt_pow_left₀ (by linarith [Real.pi_gt_three]) (by norm_num) hk0) hsq0
        _ ≤ Real.pi ^ k * R ^ k := by gcongr; exact hsq.trans hdR)
  refine ⟨b, hb0, ?_, fun σ => ?_⟩
  ·
    have hsb : Submodule.span (𝓞 c.F) {b} * (B : Submodule (𝓞 c.F) c.F) ≤ 1 := by
      have h1' : Submodule.span (𝓞 c.F) {b} ≤ ((B⁻¹ : FractionalIdeal (𝓞 c.F)⁰ c.F) : Submodule (𝓞 c.F) c.F) :=
        Submodule.span_le.2 (Set.singleton_subset_iff.2 hb)
      calc Submodule.span (𝓞 c.F) {b} * (B : Submodule (𝓞 c.F) c.F)
          ≤ ((B⁻¹ : FractionalIdeal (𝓞 c.F)⁰ c.F) : Submodule (𝓞 c.F) c.F) * (B : Submodule (𝓞 c.F) c.F) :=
            mul_le_mul' h1' le_rfl
        _ = 1 := by rw [← FractionalIdeal.coe_mul, inv_mul_cancel₀ hB0, FractionalIdeal.coe_one]
    simp only [e, mul_pow, Finset.prod_mul_distrib]
    rw [← mul_assoc]
    calc Submodule.span (𝓞 c.F) {b} * (∏ τ : E →+* ℂ,
            Submodule.span (𝓞 c.F) ((embK c τ) '' (𝔞 : Set (𝓞 E))) ^ Dw.mult τ) *
            ∏ τ : E →+* ℂ, idealAt c La.La τ ^ Dw.mult τ
        ≤ 1 * ∏ τ : E →+* ℂ, idealAt c La.La τ ^ Dw.mult τ :=
          mul_le_mul' ((mul_le_mul' le_rfl hSB).trans hsb) le_rfl
      _ = _ := one_mul _
  ·
    have h1 := hbw (InfinitePlace.mk σ)
    rw [InfinitePlace.apply] at h1
    have h3 : ‖σ b‖ ^ 2 < R / X := (Real.lt_sqrt (norm_nonneg _)).1 h1
    rw [lt_div_iff₀ hX0] at h3
    exact h3.le

end GlobalTheory.SmallScal
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSmallScalarReflexIdealSelfDualLattice =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PolynomialCoefficientEmbeddingNormLeOfL1Bound =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PolynomialCoefficientEmbeddingNormLeOfL1Bound", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThFamMono\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HolSub0LeSpanRaw\nimport Development.AbelianVarietyTheory.Counterexamples.LevelGroupExamples.InducedEqOne\npublic import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ExistsShortHarmonicFamilyUnimodular\npublic import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ShortThetaRuleLinearInHarmonicPolynomial\nimport Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ShortValTotOfPinned\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DeepLevelCoverPrincipalLevelLawsGalois\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PrincipalLevelArithmeticGroupsContainCongruence\nimport Development.AbelianVarietyTheory.Proofs.FormalGroupCharts.ChartIndependenceUnconditional\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.LevelMapsClosed\npublic import Development.AbelianVarietyTheory.Proofs.SiegelThetaTransformation.CuspFormsLeSpanShortThetaSeries\npublic import Development.AbelianVarietyTheory.Proofs.SiegelThetaTransformation.ShortThetaSeriesDominantWeightIsCuspForm\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllUniformizationLawsHold\nimport Development.AbelianVarietyTheory.Proofs.UnitaryExistence.FramedModuliAlgebraicLawsChartWeightIntegrality\nimport Development.AbelianVarietyTheory.Proofs.UnitaryExistence.FramedPointReducedFromTestRing\nimport Formalism.LocalToGlobal.ProjectiveLattices.DatProofs\nimport Formalism.SharpRestriction.GlobalSchurBounds.ThickPlacesCorollaryOfAnyTranslate\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Development.AbelianVarietyTheory.Definitions.Divisors.BadElt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.CuspIso\nimport Development.AbelianVarietyTheory.Definitions.Divisors.GenRatios\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsoOverOfIsOpenImmersion\nimport Development.AbelianVarietyTheory.Definitions.Divisors.Multiplier\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Theta
open GlobalTheory GlobalTheory.CompHS GlobalTheory.CovTop GlobalTheory.HSApp GlobalTheory.DegVal GlobalTheory.DegCmp
open GlobalTheory.AllWt (Psi cuspW)
open GlobalTheory.CompHt (hodgeWt)
open GlobalTheory.LevDesc (TypeFrame grpHR grpGHR latN levDet secRing transl pull KeepsCusp)
open GlobalTheory.IndefiniteRowSideFullHecke.LevelStructureAutomorphisms (LevelAut)
open GlobalTheory.BadCount
open scoped TensorProduct
open scoped GlobalTheory.CompHt

namespace GlobalTheory.CovGmin.PrismSpan

section Sizes

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E}

theorem abs_laOf_le_sizeK (Dw : Datum H) (a : (E →+* ℂ) × ℕ → ℕ) (n : ℕ) (τ : Psi H) (k : Fin (Dw.p + Dw.q)) :
    |(laOf Dw a n τ k : ℝ)| ≤ sizeK Dw a n := by
  unfold sizeK
  refine le_trans ?_ (Finset.single_le_sum (f := fun τ : Psi H => ∑ k, |(laOf Dw a n τ k : ℝ)|)
    (fun _ _ => Finset.sum_nonneg fun _ _ => abs_nonneg _) (Finset.mem_univ τ))
  exact Finset.single_le_sum (f := fun k => |(laOf Dw a n τ k : ℝ)|) (fun _ _ => abs_nonneg _) (Finset.mem_univ k)

theorem exp_le_sizeK (Dw : Datum H) (a : (E →+* ℂ) × ℕ → ℕ) (n : ℕ) (τ : E →+* ℂ) (i : ℕ) (hi : i < Dw.mult τ) :
    (a (τ, i) : ℝ) ≤ sizeK Dw a n := by
  by_cases h : τ (H.rt : E) = H.rt0
  · have hm : Dw.mult τ = Dw.p := by simp [Datum.mult, h]
    have hip : i < Dw.p := hm ▸ hi
    have e : laOf Dw a n ⟨τ, h⟩ ⟨i, by omega⟩ = (a (τ, i) : ℤ) + ((n / 2 : ℕ) : ℤ) := by
      simp [laOf, GlobalTheory.AllWt.weightOf, hip]
    have h1 := abs_laOf_le_sizeK Dw a n ⟨τ, h⟩ ⟨i, by omega⟩
    have h4 : (a (τ, i) : ℤ) ≤ |laOf Dw a n ⟨τ, h⟩ ⟨i, by omega⟩| := by
      rw [e]; exact le_trans (by omega) (le_abs_self _)
    have h5 : ((a (τ, i) : ℤ) : ℝ) ≤ ((|laOf Dw a n ⟨τ, h⟩ ⟨i, by omega⟩| : ℤ) : ℝ) := by exact_mod_cast h4
    rw [Int.cast_abs] at h5
    push_cast at h5
    linarith
  · have hm : Dw.mult τ = Dw.q := by simp [Datum.mult, h]
    have hiq : i < Dw.q := hm ▸ hi
    have hc := GlobalTheory.AllWt.conj_mem (H := H) h
    have hk : ¬ (Dw.p + (Dw.q - 1 - i) < Dw.p) := by omega
    have e : laOf Dw a n ⟨conjEmb τ, hc⟩ ⟨Dw.p + (Dw.q - 1 - i), by omega⟩ =
        -(a (τ, i) : ℤ) - ((n / 2 : ℕ) : ℤ) := by
      have e2 : Dw.q - 1 - (Dw.p + (Dw.q - 1 - i) - Dw.p) = i := by omega
      simp only [laOf, GlobalTheory.AllWt.weightOf, hk, if_false, e2, GlobalTheory.AllWt.conjEmb_conjEmb]
    have h1 := abs_laOf_le_sizeK Dw a n ⟨conjEmb τ, hc⟩ ⟨Dw.p + (Dw.q - 1 - i), by omega⟩
    have h4 : (a (τ, i) : ℤ) ≤ |laOf Dw a n ⟨conjEmb τ, hc⟩ ⟨Dw.p + (Dw.q - 1 - i), by omega⟩| := by
      rw [e]; exact le_trans (by omega) (neg_le_abs _)
    have h5 : ((a (τ, i) : ℤ) : ℝ) ≤
        ((|laOf Dw a n ⟨conjEmb τ, hc⟩ ⟨Dw.p + (Dw.q - 1 - i), by omega⟩| : ℤ) : ℝ) := by exact_mod_cast h4
    rw [Int.cast_abs] at h5
    push_cast at h5
    linarith

theorem DF_le_sizeK (Dw : Datum H) (a : (E →+* ℂ) × ℕ → ℕ) (n : ℕ) :
    (DF Dw a : ℝ) ≤ Module.finrank ℚ E * (Dw.p + Dw.q : ℕ) * sizeK Dw a n := by
  unfold DF
  simp only [Nat.cast_sum]
  have hK := sizeK_nonneg Dw a n
  calc ∑ τ : E →+* ℂ, ∑ i : Fin (Dw.mult τ), (a (τ, (i : ℕ)) : ℝ)
      ≤ ∑ τ : E →+* ℂ, ((Dw.p + Dw.q : ℕ) : ℝ) * sizeK Dw a n := by
        refine Finset.sum_le_sum fun τ _ => ?_
        calc ∑ i : Fin (Dw.mult τ), (a (τ, (i : ℕ)) : ℝ) ≤ ∑ _i : Fin (Dw.mult τ), sizeK Dw a n :=
              Finset.sum_le_sum fun i _ => exp_le_sizeK Dw a n τ i i.2
          _ = (Dw.mult τ : ℝ) * sizeK Dw a n := by simp
          _ ≤ ((Dw.p + Dw.q : ℕ) : ℝ) * sizeK Dw a n := by
              refine mul_le_mul_of_nonneg_right ?_ hK
              have : Dw.mult τ ≤ Dw.p + Dw.q := by unfold Datum.mult; split_ifs <;> omega
              exact_mod_cast this
    _ = Module.finrank ℚ E * ((Dw.p + Dw.q : ℕ) : ℝ) * sizeK Dw a n := by
        rw [Finset.sum_const, Finset.card_univ, NumberField.Embeddings.card E ℂ, nsmul_eq_mul]
        ring

theorem one_le_sizeK (Dw : Datum H) (a : (E →+* ℂ) × ℕ → ℕ) (n : ℕ) (hp : 1 ≤ Dw.p) (hev : Even n)
    (hpos : ∀ (τ : Psi H) (k : Fin (Dw.p + Dw.q)), (k : ℕ) < Dw.p → ((n / 2 : ℕ) : ℤ) < laOf Dw a n τ k) :
    1 ≤ sizeK Dw a n ∧ (n : ℝ) ≤ 2 * sizeK Dw a n := by
  obtain ⟨φ⟩ : Nonempty (E →+* ℂ) := inferInstance
  obtain ⟨τ, hτ⟩ : ∃ τ : E →+* ℂ, τ (H.rt : E) = H.rt0 := by
    by_cases h : φ (H.rt : E) = H.rt0
    · exact ⟨φ, h⟩
    · exact ⟨conjEmb φ, GlobalTheory.AllWt.conj_mem h⟩
  have h0 := hpos ⟨τ, hτ⟩ ⟨0, by omega⟩ (by simp; omega)
  have h1 := abs_laOf_le_sizeK Dw a n ⟨τ, hτ⟩ ⟨0, by omega⟩
  have h0' : ((n / 2 : ℕ) : ℤ) + 1 ≤ laOf Dw a n ⟨τ, hτ⟩ ⟨0, by omega⟩ := h0
  have h2 : ((n / 2 : ℕ) : ℝ) + 1 ≤ (laOf Dw a n ⟨τ, hτ⟩ ⟨0, by omega⟩ : ℝ) := by
    have := (Int.cast_le (R := ℝ)).2 h0'
    rwa [Int.cast_add, Int.cast_natCast, Int.cast_one] at this
  have h3 := le_abs_self (laOf Dw a n ⟨τ, hτ⟩ ⟨0, by omega⟩ : ℝ)
  obtain ⟨m, hm⟩ := hev
  have hn2 : n / 2 = m := by omega
  rw [hn2] at h2
  have hm0 : (0 : ℝ) ≤ m := Nat.cast_nonneg _
  have hnm : (n : ℝ) = m + m := by exact_mod_cast hm
  refine ⟨by linarith, ?_⟩
  rw [hnm]
  linarith

end Sizes

end GlobalTheory.CovGmin.PrismSpan

namespace GlobalTheory.CovGmin.PrismSpan

theorem polynomialCoefficientEmbeddingNorm_le_of_l1Bound {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {Dw : Datum H} {l : Level H}
    (c : Coeff l) {n : ℕ} (Q : MvPolynomial (LtN Dw n) c.F) (B : ℝ) (hB : 0 ≤ B)
    (h : ∀ s : c.F →+* ℂ, ∑ m ∈ Q.support, ‖s (Q.coeff m)‖ ≤ B) :
    GlobalTheory.IndefiniteRowSideFullHecke.ThetaWeightData.polyNorm c Q ≤ Real.sqrt (Module.finrank ℚ c.F) * B := by
  unfold GlobalTheory.IndefiniteRowSideFullHecke.ThetaWeightData.polyNorm
  rw [← Real.sqrt_sq hB, ← Real.sqrt_mul (Nat.cast_nonneg _)]
  refine Real.sqrt_le_sqrt ?_
  have hs : ∀ s : c.F →+* ℂ, ∑ m ∈ Q.support, ‖s (Q.coeff m)‖ ^ 2 ≤ B ^ 2 := by
    intro s
    set S := ∑ m ∈ Q.support, ‖s (Q.coeff m)‖ with hSdef
    have hS0 : 0 ≤ S := Finset.sum_nonneg fun _ _ => norm_nonneg _
    calc ∑ m ∈ Q.support, ‖s (Q.coeff m)‖ ^ 2 ≤ ∑ m ∈ Q.support, ‖s (Q.coeff m)‖ * S := by
          refine Finset.sum_le_sum fun m hm => ?_
          rw [sq]
          exact mul_le_mul_of_nonneg_left
            (Finset.single_le_sum (f := fun m => ‖s (Q.coeff m)‖) (fun _ _ => norm_nonneg _) hm) (norm_nonneg _)
      _ = S * S := by rw [← Finset.sum_mul]
      _ ≤ B * B := mul_le_mul (h s) (h s) hS0 hB
      _ = B ^ 2 := (sq B).symm
  calc ∑ s : c.F →+* ℂ, ∑ m ∈ Q.support, ‖s (Q.coeff m)‖ ^ 2 ≤ ∑ _s : c.F →+* ℂ, B ^ 2 := Finset.sum_le_sum fun s _ => hs s
    _ = (Module.finrank ℚ c.F : ℝ) * B ^ 2 := by
        rw [Finset.sum_const, Finset.card_univ, NumberField.Embeddings.card c.F ℂ, nsmul_eq_mul]

theorem le_exp_of_log_le {x t : ℝ} (hx : 0 ≤ x) (h : Real.log x ≤ t) : x ≤ Real.exp t := by
  rcases hx.eq_or_lt with h0 | h0
  · rw [← h0]; exact (Real.exp_pos t).le
  · rw [← Real.exp_log h0]; exact Real.exp_le_exp.2 h

end GlobalTheory.CovGmin.PrismSpan

noncomputable section

namespace GlobalTheory.CovGmin.PrismSpan

open Formalism.L2.PjFree (Unf.ofPj)

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {Dw : Datum H} {l : Level H}
  {Xo : Moduli Dw l} {c : Coeff l}

theorem idCover_laws [StarRing (𝓞 E)] (nab : NabV Xo c) (hnab : IsNab Xo c nab) (bad nV : ℕ) (h1 : 1 ≤ Dw.p + Dw.q)
    (m : ℕ) : (RawSpan.idCover nab m).IsLev ∧
      (∃ _ : StarRing (𝓞 E), IsNab (RawSpan.idCover nab m).Xo₂ (RawSpan.idCover nab m).c₂ (RawSpan.idCover nab m).nab₂) ∧
      GlobalTheory.Dict.UnitC (RawSpan.idCover nab m) ∧ ¬ 3 ∣ (RawSpan.idCover nab m).pd ∧
      (Dw.p + Dw.q ≤ m → ∃ ph ψ x₀, (RawSpan.idCover nab m).PhiPin ph ψ x₀) ∧
      ∀ a, Dom a m → ShortValTot Xo c nab bad nV a m (RawSpan.idCover nab m) := by
  have hC := GlobalTheory.chartIndependence_unconditional
  have hL : Out.Laws := GlobalTheory.firstFiveLaws.1
  have hB : Out.SecBaseChangeSt := hL.secBaseChange
  have hpin := GlobalTheory.DeltaPinTest.noDelta_phiPin (n := m) nab (GlobalTheory.ObjLower.sabId Xo.univ.t)
  have hT := GlobalTheory.Frames.allTest_of_secBaseChange hB E H Dw l Xo c
  have hW := (GlobalTheory.Frames.algebraic_laws hB E H Dw l Xo c).2.2.1
  refine ⟨RawSpan.idCover_isLev nab m, ⟨_, hnab⟩, RawSpan.idCover_unitC nab m, by show ¬ 3 ∣ 1; decide,
    fun _ => ⟨_, 1, _, hpin⟩, fun a _ => ?_⟩
  exact GlobalTheory.shortValTot_of_pinned hL hC E H Dw l Xo c m (RawSpan.idCover nab m) (GlobalTheory.levelMaps_closed hL E H Dw h1) hW hT hW hT
      (RawSpan.idCover_isLev nab m) rfl ⟨_, hnab⟩ (fun _ => ⟨_, 1, _, hpin, RawSpan.idCover_psiTie nab m⟩) nab bad nV a

theorem cusp_sub_span {r : ℕ} (U : ∀ σ : c.F →+* ℂ, Unf Xo c σ r) (σ₀ : c.F →+* ℂ) (hσ₀ : GoodEmb c σ₀)
    (hU : ∀ σ, GoodEmb c σ → IsUnf (U σ)) (hr : 1 ≤ r) (hA : l.A = 1)
    (hG : ∀ k k', ((U σ₀).X k).Gm = ((U σ₀).X k').Gm ∧ ((U σ₀).X k).ξ0 = ((U σ₀).X k').ξ0)
    (hP : ∀ k, GlobalTheory.Dict.HasPrinc ((U σ₀).X k) l.M)
    (hχ : ∀ a n, Dom a n → ∀ k, GlobalTheory.Dict.ChiOne ((U σ₀).X k) (laU (U σ₀) a n k))
    [StarRing (𝓞 E)] (nab : NabV Xo c) (hnab : IsNab Xo c nab) (bad : ℕ) (hbad : 0 < bad)
    (a : (E →+* ℂ) × ℕ → ℕ) (n : ℕ) (hD : Dom a n) (hLP : LastPos Dw a)
    (hn : 8 * (Module.finrank ℚ E / 2) * (Dw.p + Dw.q) + 4 ≤ n) :
    (cusp Xo c U a n : Set (Rul Xo c)) ⊆
      Submodule.span c.F (shortGen Xo c nab bad n a n (RawSpan.idCover nab n)) := by
  have h1 : 1 ≤ Dw.p + Dw.q := (hU σ₀ hσ₀).1 ▸ hr
  exact GlobalTheory.cusp_le_span_shortGen GlobalTheory.chartIndependence_unconditional E H Dw l Xo c r (fun σ => Unf.ofPj (U σ)) σ₀
    hσ₀ (hU σ₀ hσ₀) hr hA hG hP hχ nab bad n (fun m => RawSpan.idCover nab m) hbad
    (fun m => idCover_laws nab hnab bad n h1 m) a n hD hLP hn


set_option synthInstance.maxHeartbeats 400000 in
set_option maxHeartbeats 1000000 in
theorem cusp_sub_span_short {r : ℕ} (U : ∀ σ : c.F →+* ℂ, Unf Xo c σ r) (σ₀ : c.F →+* ℂ) (hσ₀ : GoodEmb c σ₀)
    (hU : ∀ σ, GoodEmb c σ → IsUnf (U σ)) (hr : 1 ≤ r) (hA : l.A = 1)
    (hG : ∀ k k', ((U σ₀).X k).Gm = ((U σ₀).X k').Gm ∧ ((U σ₀).X k).ξ0 = ((U σ₀).X k').ξ0)
    (hP : ∀ k, GlobalTheory.Dict.HasPrinc ((U σ₀).X k) l.M)
    (hχ : ∀ a n, Dom a n → ∀ k, GlobalTheory.Dict.ChiOne ((U σ₀).X k) (laU (U σ₀) a n k))
    [StarRing (𝓞 E)] (nab : NabV Xo c) (hnab : IsNab Xo c nab) (bad : ℕ) (hbad : 0 < bad)
    (a : (E →+* ℂ) × ℕ → ℕ) (n : ℕ) (hD : Dom a n) (hLP : LastPos Dw a)
    (hn : 8 * (Module.finrank ℚ E / 2) * (Dw.p + Dw.q) + 4 ≤ n) (ρ : ℝ)
    (hshort : ∀ Λ : GenLat E n, Λ.Unimod → Λ.TrivAt bad → ∀ P ∈ harmL (Dw := Dw) c Λ a,
      P ∈ Submodule.span c.F {Q | Q ∈ harmL (Dw := Dw) c Λ a ∧ GlobalTheory.IndefiniteRowSideFullHecke.ThetaWeightData.polyNorm c Q ≤ ρ}) :
    (cusp Xo c U a n : Set (Rul Xo c)) ⊆ Submodule.span c.F {f | f ∈ cusp Xo c U a n ∧
      ∃ (x0 : Fin n → LevQc Dw l) (La : GenLat E n) (N : ℕ) (P : MvPolynomial (LtN Dw n) c.F),
        Submodule.span (𝓞 E) (Set.range x0) = ⊤ ∧ La.Unimod ∧ La.TrivAt bad ∧ La.TrivAt l.M ∧
          La.LevOK N l.M ∧ P ∈ harmL c La a ∧ GlobalTheory.IndefiniteRowSideFullHecke.ThetaWeightData.polyNorm c P ≤ ρ ∧
          ∀ (p : TRing c.F) (y : FrPt Xo c p.R), thLaValAt Xo c nab (phiHat c (indPhi c x0)) La N P y (f p y)} := by
  have hC := GlobalTheory.chartIndependence_unconditional
  have h1 : 1 ≤ Dw.p + Dw.q := (hU σ₀ hσ₀).1 ▸ hr
  have hlaws := idCover_laws nab hnab bad n h1 n
  intro f hf
  refine Submodule.span_le.2 ?_ (cusp_sub_span U σ₀ hσ₀ hU hr hA hG hP hχ nab hnab bad hbad a n hD hLP hn hf)
  rintro g ⟨hgs, Λ, N, x0, P, hΛ, hb, hM, hO, hX, hPm, hrule⟩
  obtain ⟨m, cf, Q, hsum⟩ := Submodule.mem_span_set'.1 (hshort Λ hΛ hb P hPm)
  choose gs hgs1 hgs2 using fun i =>
    (hlaws.2.2.2.2.2 a hD Λ N x0 (Q i).1 hΛ hb hM hO hX (Q i).2.1).2
  have hlin := GlobalTheory.ShortRuleLinear.eq_sum_of_isShortRule hC Xo c (RawSpan.idCover nab n)
    (RawSpan.idCover_isLev nab n) hnab a Λ N x0 hΛ hM hO m cf (fun i => (Q i).1) g gs (fun i => (Q i).2.1) hgs hgs1
    (by rw [hsum]; exact hrule) hgs2
  have hX' := hX
  rw [decide_eq_true (rfl : n = n)] at hX'
  have hcusp := GlobalTheory.Dict.shortInCusp_cusp hC E H Dw l Xo c n (RawSpan.idCover nab n) r (fun σ => Unf.ofPj (U σ)) hr hU
    hlaws.1 hlaws.2.1 hlaws.2.2.1 hlaws.2.2.2.2.1 nab bad n a hD hLP
  rw [hlin]
  refine Submodule.sum_mem _ fun i _ => Submodule.smul_mem _ _ ?_
  have hβ := RawSpan.betaH_ne_zero (Dw := Dw) (c := c) Λ
  have hmem : betaH (Dw := Dw) c Λ • gs i ∈ {f | f ∈ cusp Xo c U a n ∧
      ∃ (x0 : Fin n → LevQc Dw l) (La : GenLat E n) (N : ℕ) (P : MvPolynomial (LtN Dw n) c.F),
        Submodule.span (𝓞 E) (Set.range x0) = ⊤ ∧ La.Unimod ∧ La.TrivAt bad ∧ La.TrivAt l.M ∧
          La.LevOK N l.M ∧ P ∈ harmL c La a ∧ GlobalTheory.IndefiniteRowSideFullHecke.ThetaWeightData.polyNorm c P ≤ ρ ∧
          ∀ (p : TRing c.F) (y : FrPt Xo c p.R), thLaValAt Xo c nab (phiHat c (indPhi c x0)) La N P y (f p y)} := by
    refine ⟨Submodule.smul_mem _ _ (hcusp ⟨hgs1 i, Λ, N, x0, (Q i).1, hΛ, hb, hM, hO, hX, (Q i).2.1, hgs2 i⟩),
      fun b => Submodule.Quotient.mk (x0 b), Λ, N, (Q i).1, RawSpan.span_mk_eq_top x0 hX', hΛ, hb, hM, hO, (Q i).2.1,
      (Q i).2.2, fun p y => ?_⟩
    rw [RawSpan.phiHat_indPhi_mk]
    exact RawSpan.thLaValAt_of_isShortRule nab hnab hΛ hM hO (Q i).2.1 x0 (hgs1 i) (hgs2 i) p y
  have e : gs i = (betaH (Dw := Dw) c Λ)⁻¹ • (betaH (Dw := Dw) c Λ • gs i) := by
    rw [smul_smul, inv_mul_cancel₀ hβ, one_smul]
  rw [e]
  exact Submodule.smul_mem _ _ (Submodule.subset_span hmem)

end GlobalTheory.CovGmin.PrismSpan

namespace GlobalTheory.CovGmin.PrismSpan

theorem fg_of_trivAt_two {E : Type} [Field E] [NumberField E] {n : ℕ} (Λ : GenLat E n) {bad : ℕ}
    (h2 : 2 ∣ bad) (h : Λ.TrivAt bad) : Λ.La.FG := by
  obtain ⟨k, hk, hle, -⟩ := h
  have hk0 : k ≠ 0 := by
    rintro rfl
    rw [Nat.coprime_zero_left] at hk
    omega
  have hstd : (stdLat E n).FG := by
    unfold stdLat
    exact Submodule.fg_pi fun _ => Submodule.fg_unit 1
  have hkO : (k : 𝓞 E) ≠ 0 := by exact_mod_cast hk0
  have hinj : Function.Injective (LinearMap.lsmul (𝓞 E) (Fin n → E) (k : 𝓞 E)) :=
    LinearMap.lsmul_injective hkO
  refine Submodule.fg_of_fg_map_injective _ hinj ?_
  have hN := isNoetherian_of_fg_of_noetherian _ hstd
  refine isNoetherian_submodule.1 hN _ ?_
  rintro _ ⟨v, hv, rfl⟩
  exact hle (Submodule.smul_mem_smul (Ideal.subset_span rfl) hv)

theorem exponent_le (o L Lb K F R DFr : ℝ) (hF1 : 1 ≤ F) (hR1 : 1 ≤ R) (hL1 : 1 ≤ Lb) (hK1 : 1 ≤ K)
    (hLb : L ≤ 50 * Lb) (hL0 : 0 ≤ L) (hDF0 : 0 ≤ DFr) (hDF : DFr ≤ 2 * F * R * K)
    (ho : o ≤ 391 * (F * R * Lb) ^ 2) : o / 2 + 140 * R * L * DFr ≤ 20000 * (F * R * Lb) ^ 2 * K := by
  have hF0 : 0 ≤ F := by linarith
  have hR0 : 0 ≤ R := by linarith
  have hLb0 : 0 ≤ Lb := by linarith
  have hK0 : 0 ≤ K := by linarith
  have h0 : 0 ≤ F * R * R * Lb := by positivity
  have hXX : F * R * R * Lb ≤ (F * R * Lb) ^ 2 := by
    calc F * R * R * Lb = (F * R * R * Lb) * 1 * 1 := by ring
      _ ≤ (F * R * R * Lb) * F * Lb := mul_le_mul (mul_le_mul_of_nonneg_left hF1 h0) hL1 zero_le_one (by positivity)
      _ = (F * R * Lb) ^ 2 := by ring
  have t1 : 140 * R * L * DFr ≤ 140 * R * (50 * Lb) * (2 * F * R * K) := by
    have hR0' : 0 ≤ 140 * R := by positivity
    exact mul_le_mul (mul_le_mul_of_nonneg_left hLb hR0') hDF hDF0 (by positivity)
  have t3 : 140 * R * (50 * Lb) * (2 * F * R * K) ≤ 14000 * ((F * R * Lb) ^ 2 * K) := by
    calc 140 * R * (50 * Lb) * (2 * F * R * K) = 14000 * ((F * R * R * Lb) * K) := by ring
      _ ≤ 14000 * ((F * R * Lb) ^ 2 * K) :=
          mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_right hXX hK0) (by norm_num)
  have h1 : 0 ≤ (F * R * Lb) ^ 2 := sq_nonneg _
  have h2 : (F * R * Lb) ^ 2 ≤ (F * R * Lb) ^ 2 * K := le_mul_of_one_le_right h1 hK1
  have e : 20000 * (F * R * Lb) ^ 2 * K = 20000 * ((F * R * Lb) ^ 2 * K) := by ring
  rw [e]
  linarith


set_option maxHeartbeats 1000000 in
theorem harm_short : ∀ (D : D7) (T : CoreJ D) (j : ℕ) (Y : Deep T.toCore j) (e : ℕ) (o Lb : ℝ)
    (a : (D.host.E →+* ℂ) × ℕ → ℕ) (n : ℕ), GlobalTheory.CovGmin.Hyp D T j Y e o Lb a n → ∀ (Λ : GenLat D.host.E n),
    Λ.Unimod → Λ.TrivAt (badC Y) → ∀ P ∈ harmL (Dw := T.Q.Dw j) Y.d.c₂ Λ a,
      P ∈ Submodule.span Y.d.c₂.F {Q | Q ∈ harmL (Dw := T.Q.Dw j) Y.d.c₂ Λ a ∧
        GlobalTheory.IndefiniteRowSideFullHecke.ThetaWeightData.polyNorm Y.d.c₂ Q ≤ Real.exp (20000 * ((D.R.f : ℝ) * D.R.r * Lb) ^ 2 * sizeK (T.Q.Dw j) a n)} := by
  intro D T j Y e o Lb a n hH Λ hΛ hb P hP
  obtain ⟨hJ, hp, hq, hE, hj, hG, hL1, hM, hfs, hfr, ho, hD, hev, hn, hpos, hκ⟩ := hH
  have hU0 := hG.unf _ (rfl : GoodEmb Y.d.c₂ Y.d.c₂.F.val.toRingHom)
  have hr : (T.Q.Dw j).p + (T.Q.Dw j).q = D.R.r := hU0.1.symm
  have hf1 : 1 ≤ D.R.f := MeanTop.Inhab.f_pos D
  have hfg : Λ.La.FG := fg_of_trivAt_two Λ (by
    unfold badC
    exact Dvd.dvd.mul_right (Dvd.dvd.mul_right
      (((dvd_pow_self 2 (Nat.succ_ne_zero _)).trans D.host.tower_dvd).mul_right _) _) _) hb
  have hrn : (T.Q.Dw j).p + (T.Q.Dw j).q ≤ n := by
    have h1 : D.R.r ≤ D.R.f * D.R.r := Nat.le_mul_of_pos_left _ hf1
    have h8 : 8 * D.R.f * D.R.r = 8 * (D.R.f * D.R.r) := by ring
    omega
  obtain ⟨hK1, hKn⟩ := one_le_sizeK (T.Q.Dw j) a n hp hev hpos
  have hDF := DF_le_sizeK (T.Q.Dw j) a n
  set K := sizeK (T.Q.Dw j) a n with hKdef
  have hdegE : (Module.finrank ℚ D.host.E : ℝ) = 2 * D.R.f := by exact_mod_cast StandardLattice.finrank_host D
  have hrR : (((T.Q.Dw j).p + (T.Q.Dw j).q : ℕ) : ℝ) = D.R.r := by exact_mod_cast hr
  rw [hdegE, hrR] at hDF
  have hF1 : (1 : ℝ) ≤ (D.R.f : ℝ) := by exact_mod_cast hf1
  have hR1 : (1 : ℝ) ≤ (D.R.r : ℝ) := by
    have : 1 ≤ D.R.r := by omega
    exact_mod_cast this
  set L : ℝ := 2 + 3 * Lb + Real.log (1 + DF (T.Q.Dw j) a) + Real.log n with hLdef
  have hl1 : 0 ≤ Real.log (1 + (DF (T.Q.Dw j) a : ℝ)) :=
    Real.log_nonneg (by have := Nat.cast_nonneg (α := ℝ) (DF (T.Q.Dw j) a); linarith)
  have hl2 : 0 ≤ Real.log (n : ℝ) := Real.log_natCast_nonneg n
  have hrd : Real.log (FD.rdE D.host.E) ≤ 2 * L := by
    have hd : 0 < FD.dE D.host.E := by
      unfold FD.dE
      exact abs_pos.2 (by exact_mod_cast NumberField.discr_ne_zero D.host.E)
    have h1 : Real.log (FD.rdE D.host.E) =
        Real.log |(NumberField.discr D.host.E : ℝ)| / (Module.finrank ℚ D.host.E : ℝ) := by
      unfold FD.rdE
      rw [Real.log_rpow hd]
      unfold FD.dE
      ring
    have h2 := log_rd_le_fieldSz D.host.E
    rw [h1]
    linarith
  have hfd : Real.log (FD.fdeg D.host.E : ℝ) ≤ 2 * L := by
    have h0 : (0 : ℝ) < FD.fdeg D.host.E := by
      have : 0 < FD.fdeg D.host.E := by unfold FD.fdeg; omega
      exact_mod_cast this
    have h1 : (FD.fdeg D.host.E : ℝ) ≤ Module.finrank ℚ D.host.E := by
      have : FD.fdeg D.host.E ≤ Module.finrank ℚ D.host.E := by unfold FD.fdeg; omega
      exact_mod_cast this
    have h2 := (Real.log_le_log h0 h1).trans (log_finrank_le_fieldSz D.host.E)
    linarith
  have hdf : Real.log (1 + (DF (T.Q.Dw j) a : ℝ)) ≤ 2 * L := by linarith
  have hln : Real.log (n : ℝ) ≤ L := by linarith
  have hL2 : 2 ≤ L := by linarith
  obtain ⟨S, hS1, hS2, -⟩ := GlobalTheory.Harm.exists_short_harmL_family D.host.E T.Q.H (T.Q.Dw j) Y.d.l₂ Y.d.c₂ n Λ hΛ hfg hrn
    a L hL2 hrd hfd hdf hln
  refine Submodule.span_mono ?_ (hS2 P hP.1)
  intro Q hQS
  obtain ⟨hQh, hQb⟩ := hS1 Q hQS
  refine ⟨hQh, ?_⟩
  rw [hrR] at hQb

  have hKpos : 0 < K := by linarith
  have hFR : 1 ≤ (D.R.f : ℝ) * D.R.r := one_le_mul_of_one_le_of_one_le hF1 hR1
  have hFRK : 1 ≤ (D.R.f : ℝ) * D.R.r * K := one_le_mul_of_one_le_of_one_le hFR hK1
  have hlog1 : Real.log (1 + (DF (T.Q.Dw j) a : ℝ)) ≤ 3 + 21 * Lb := by
    have h1 : 1 + (DF (T.Q.Dw j) a : ℝ) ≤ 4 * ((D.R.f : ℝ) * D.R.r) * K := by linarith
    have h2 : 0 < 1 + (DF (T.Q.Dw j) a : ℝ) := by linarith
    have h3 := Real.log_le_log h2 h1
    rw [Real.log_mul (by positivity) (by positivity), Real.log_mul (by norm_num) (by positivity)] at h3
    have h4 : Real.log 4 ≤ 3 := by
      have := Real.log_le_sub_one_of_pos (show (0 : ℝ) < 4 by norm_num); linarith
    have h5 : Real.log ((D.R.f : ℝ) * D.R.r) ≤ Lb := hfr
    linarith
  have hlog2 : Real.log (n : ℝ) ≤ 1 + 20 * Lb := by
    rcases Nat.eq_zero_or_pos n with h0 | h0
    · rw [h0]; simp; linarith
    · have h1 : (0 : ℝ) < n := by exact_mod_cast h0
      have h3 := Real.log_le_log h1 hKn
      rw [Real.log_mul (by norm_num) (by positivity)] at h3
      have h4 : Real.log 2 ≤ 1 := by
        have := Real.log_le_sub_one_of_pos (show (0 : ℝ) < 2 by norm_num); linarith
      linarith
  have hLb : L ≤ 50 * Lb := by linarith
  have hL0 : 0 ≤ L := by linarith

  have hB : ∀ s : Y.d.c₂.F →+* ℂ, ∑ m ∈ Q.support, ‖s (Q.coeff m)‖ ≤
      Real.exp (140 * (D.R.r : ℝ) * L * (DF (T.Q.Dw j) a : ℝ)) := fun s =>
    le_exp_of_log_le (Finset.sum_nonneg fun _ _ => norm_nonneg _) (hQb s)
  have hpn := polynomialCoefficientEmbeddingNorm_le_of_l1Bound Y.d.c₂ Q _ (Real.exp_pos _).le hB
  have hsq : Real.sqrt (Module.finrank ℚ Y.d.c₂.F : ℝ) ≤ Real.exp (o / 2) := by
    have h0 : (0 : ℝ) < Module.finrank ℚ Y.d.c₂.F := by exact_mod_cast Module.finrank_pos
    have h1 : (Module.finrank ℚ Y.d.c₂.F : ℝ) ≤ Real.exp (o / 2) ^ 2 := by
      rw [← Real.exp_nat_mul]
      push_cast
      rw [show (2 : ℝ) * (o / 2) = o by ring]
      exact le_exp_of_log_le h0.le hG.deg
    calc Real.sqrt (Module.finrank ℚ Y.d.c₂.F : ℝ) ≤ Real.sqrt (Real.exp (o / 2) ^ 2) := Real.sqrt_le_sqrt h1
      _ = Real.exp (o / 2) := Real.sqrt_sq (Real.exp_pos _).le
  refine hpn.trans ?_
  refine (mul_le_mul_of_nonneg_right hsq (Real.exp_pos _).le).trans ?_
  rw [← Real.exp_add]
  refine Real.exp_le_exp.2 ?_
  exact exponent_le o L Lb K _ _ _ hF1 hR1 hL1 hK1 hLb hL0 (Nat.cast_nonneg _) hDF ho

end GlobalTheory.CovGmin.PrismSpan


set_option synthInstance.maxHeartbeats 400000 in
open GlobalTheory.CovGmin.PrismSpan in
theorem GlobalTheory.CovGmin.span_thFam : ∃ C : ℝ, 0 ≤ C ∧ ∀ (D : D7) (T : CoreJ D) (j : ℕ) (Y : Deep T.toCore j) (e : ℕ) (o Lb : ℝ) (a : (D.host.E →+* ℂ) × ℕ → ℕ) (n : ℕ), GlobalTheory.CovGmin.Hyp D T j Y e o Lb a n → ∀ [StarRing (𝓞 D.host.E)] (nab : NabV Y.d.Xo₂ Y.d.c₂), IsNab Y.d.Xo₂ Y.d.c₂ nab → Submodule.span Y.d.c₂.F (GlobalTheory.CovGmin.thFam Y nab a n (Real.exp (C * ((D.R.f : ℝ) * D.R.r * Lb) ^ 2 * sizeK (T.Q.Dw j) a n))) = ⊤ := by
  refine ⟨20000, by norm_num, ?_⟩
  intro D T j Y e o Lb a n hH _ nab hnab
  have hH' := hH
  obtain ⟨hJ, hp, hq, hE, hj, hG, hL1, hM, hfs, hfr, ho, hD, hev, hn, hpos, hκ⟩ := hH'
  set σ₀ : Y.d.c₂.F →+* ℂ := Y.d.c₂.F.val.toRingHom with hσ₀def
  have hσ₀ : GoodEmb Y.d.c₂ σ₀ := rfl
  have hU0 := hG.unf σ₀ hσ₀
  have hr : 1 ≤ D.R.r := by have := hU0.1; omega
  obtain ⟨hrk, hmod⟩ := hG.modelW σ₀ hσ₀
  have hGm : ∀ k k', ((Y.U σ₀).X k).Gm = ((Y.U σ₀).X k').Gm ∧ ((Y.U σ₀).X k).ξ0 = ((Y.U σ₀).X k').ξ0 :=
    fun k k' => ⟨(hmod k).1.trans (hmod k').1.symm, (hmod k).2.trans (hmod k').2.symm⟩
  have hlaws := (GlobalTheory.DeepLaws.laws_galois_pull D T j Y e o hJ hj hG hG.unit hG.modelW).1
  have hPr := GlobalTheory.LevGeo.hasPrinc_laws D j _ _ _ Y.d.Xo₂ Y.d.c₂ Y.U Y.dict hlaws σ₀ hσ₀
  have hP : ∀ k, GlobalTheory.Dict.HasPrinc ((Y.U σ₀).X k) Y.d.l₂.M := fun k ga hst hc =>
    hPr k ga hst fun v hv => by
      obtain ⟨u, hu, e⟩ := hc v hv
      refine ⟨u, hu, ?_⟩
      rw [e, add_sub_cancel_left]
      first
        | exact (Nat.cast_smul_eq_nsmul _ _ _).symm
  have hχ : ∀ a n, Dom a n → ∀ k, GlobalTheory.Dict.ChiOne ((Y.U σ₀).X k) (laU (Y.U σ₀) a n k) :=
    fun a n hd k ga hga => hG.chiTriv σ₀ hσ₀ a n hd k ga hga
  have hbad : 0 < badC Y := by
    have h1 := D.host.qd_big.1
    have h2 := d_pos D
    have h3 := Y.d.l₂.three_le
    have hq0 : 0 < D.host.q := by omega
    have hM0 : 0 < Y.d.l₂.M := by omega
    unfold badC
    exact Nat.mul_pos (Nat.mul_pos (Nat.mul_pos D.host.QS_pos hq0) h2) hM0
  have hLP : LastPos (T.Q.Dw j) a := by
    intro τ hτ hm
    have hτ' : τ ↑T.Q.H.rt = T.Q.H.rt0 := hτ
    have hmp : (T.Q.Dw j).mult τ = (T.Q.Dw j).p := by simp [Datum.mult, hτ']
    have := hpos ⟨τ, hτ⟩ ⟨(T.Q.Dw j).p - 1, by omega⟩ (by simp; omega)
    simp only [laOf, GlobalTheory.AllWt.weightOf, show (T.Q.Dw j).p - 1 < (T.Q.Dw j).p by omega, if_true] at this
    rw [hmp]
    omega
  have hn' : 8 * (Module.finrank ℚ D.host.E / 2) * ((T.Q.Dw j).p + (T.Q.Dw j).q) + 4 ≤ n := by
    rw [StandardLattice.finrank_host D, ← hU0.1]
    simpa [Nat.mul_div_cancel_left _ (by norm_num : 0 < 2)] using hn
  have key := cusp_sub_span_short Y.U σ₀ hσ₀ hG.unf hr hG.lev.2 hGm hP hχ nab hnab (badC Y) hbad a n hD hLP hn' _
    (harm_short D T j Y e o Lb a n hH)
  rw [eq_top_iff]
  rintro x -
  have hx : (x : Rul Y.d.Xo₂ Y.d.c₂) ∈ cusp Y.d.Xo₂ Y.d.c₂ Y.U a n := by
    have h0 : (x : Rul Y.d.Xo₂ Y.d.c₂) ∈ cuspW Y.d.Xo₂ Y.d.c₂ Y.U (wtZ a n) := x.2
    rwa [GlobalTheory.AllWt.cuspW_wtZ] at h0
  have hsub : Submodule.span Y.d.c₂.F {f | f ∈ cusp Y.d.Xo₂ Y.d.c₂ Y.U a n ∧
      ∃ (x0 : Fin n → LevQc (T.Q.Dw j) Y.d.l₂) (La : GenLat D.host.E n) (N : ℕ) (P : MvPolynomial (LtN (T.Q.Dw j) n) Y.d.c₂.F),
        Submodule.span (𝓞 D.host.E) (Set.range x0) = ⊤ ∧ La.Unimod ∧ La.TrivAt (badC Y) ∧ La.TrivAt Y.d.l₂.M ∧
          La.LevOK N Y.d.l₂.M ∧ P ∈ harmL Y.d.c₂ La a ∧
          GlobalTheory.IndefiniteRowSideFullHecke.ThetaWeightData.polyNorm Y.d.c₂ P ≤ Real.exp (20000 * ((D.R.f : ℝ) * D.R.r * Lb) ^ 2 * sizeK (T.Q.Dw j) a n) ∧
          ∀ (p : TRing Y.d.c₂.F) (y : FrPt Y.d.Xo₂ Y.d.c₂ p.R),
            thLaValAt Y.d.Xo₂ Y.d.c₂ nab (phiHat Y.d.c₂ (indPhi Y.d.c₂ x0)) La N P y (f p y)} ≤
      (Submodule.span Y.d.c₂.F (GlobalTheory.CovGmin.thFam Y nab a n
        (Real.exp (20000 * ((D.R.f : ℝ) * D.R.r * Lb) ^ 2 * sizeK (T.Q.Dw j) a n)))).map (Y.V (wtZ a n)).subtype := by
    rw [Submodule.map_span]
    refine Submodule.span_mono ?_
    rintro g ⟨hg, x0, La, N, P, h1, h2, h3, h4, h5, h6, h7, h8⟩
    have hgV : g ∈ Y.V (wtZ a n) := by
      show g ∈ cuspW Y.d.Xo₂ Y.d.c₂ Y.U (wtZ a n)
      rw [GlobalTheory.AllWt.cuspW_wtZ]
      exact hg
    exact ⟨⟨g, hgV⟩, ⟨x0, La, N, P, h1, h2, h3, h4, h5, h6, h7, h8⟩, rfl⟩
  obtain ⟨z, hz, hzx⟩ := hsub (key hx)
  have : z = x := Subtype.ext hzx
  rw [← this]
  exact hz
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PolynomialCoefficientEmbeddingNormLeOfL1Bound =====

-- ===== clump member: Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.HodgeBundleWeights.ExistsGoodCoverAtMinimalLevel =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.HodgeBundleWeights.ExistsGoodCoverAtMinimalLevel", "h": "module\n\npublic import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.HodgeBundleWeights.ToKnownTheoremsOf\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.NormNegCmConstantEqAtAllEmbeddings\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EvenDomainWeightBound\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThFamMono\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsBoundedIntegerGoodCoverThetaSeriesIntegral\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSmallScalarReflexIdealSelfDualLattice\npublic import Development.AbelianVarietyTheory.BlockTheory.TorsionBlocks.LevelCarrying\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsCoprimeOfNatCast\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.MemLevEigenIffTransl\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormPhiHatIndPhi\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PolynomialCoefficientEmbeddingNormLeOfL1Bound\npublic import Development.AbelianVarietyTheory.Proofs.FormalGroupCharts.ExistsIsNabUncond\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.CuspIso\nimport Development.AbelianVarietyTheory.Definitions.Divisors.GenRatios\nimport Development.AbelianVarietyTheory.Definitions.Divisors.Multiplier\n\n"}
section -- clump:auto
@[expose] public section

section
open CategoryTheory AlgebraicGeometry NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Theta
open GlobalTheory GlobalTheory.CompHS GlobalTheory.CovTop GlobalTheory.HSApp GlobalTheory.DegVal GlobalTheory.DegCmp
open GlobalTheory.AllWt (Psi wtOf cuspOn cuspW latOn latW normOn petOn GoodOn GoodW rankOn degOn rankW)
open GlobalTheory.CompHt (hodgeWt)
open GlobalTheory.LevDesc (TypeFrame grpHR grpGHR latN levDet secRing transl pull KeepsCusp)
open GlobalTheory.IndefiniteRowSideFullHecke.LevelStructureAutomorphisms (LevelAut)
open GlobalTheory.BadCount
open scoped TensorProduct
open scoped GlobalTheory.CompHt
noncomputable section
namespace GlobalTheory.CovGmin
set_option maxHeartbeats 1000000 in
set_option synthInstance.maxHeartbeats 400000 in
theorem minimal_level_cover_is_good : _root_.GlobalTheory.CovTop.PublishedHodgeBundleTheorems → ∃ C : ℝ, 0 ≤ C ∧ ∀ (D : D7) (T : CoreJ D), LawsJ T → ∀ j : ℕ, 1 ≤ (T.Q.Dw j).p → 1 ≤ (T.Q.Dw j).q → 2 < Module.finrank ℚ D.host.E / 2 → InR D j → ∀ (Y : Deep T.toCore j) (e : ℕ) (o : ℝ), Y.Good e o → ∀ Lb : ℝ, 1 ≤ Lb → Real.log Y.d.l₂.M ≤ 30 * Lb → fieldSz D.host.E ≤ 3 * Lb → Real.log (D.R.f * D.R.r) ≤ Lb → o ≤ 391 * (D.R.f * D.R.r * Lb) ^ 2 → ∀ (a : (D.host.E →+* ℂ) × ℕ → ℕ) (n : ℕ), Dom a n → Even n → 8 * D.R.f * D.R.r + 4 ≤ n → (∀ (τ : Psi T.Q.H) (k : Fin ((T.Q.Dw j).p + (T.Q.Dw j).q)), (k : ℕ) < (T.Q.Dw j).p → ((n / 2 : ℕ) : ℤ) < laOf (T.Q.Dw j) a n τ k) → Real.log (sizeK (T.Q.Dw j) a n) ≤ 20 * Lb → ∃ s : Set (Y.V (wtZ a n)), s ⊆ (AllWt.latW Y.U (wtZ a n) : Set (Y.V (wtZ a n))) ∧ Submodule.span Y.d.c₂.F s = ⊤ ∧ ∀ y ∈ s, ∀ σ, Y.nrm (wtZ a n) σ y ≤ Real.exp (C * ((D.R.f : ℝ) * D.R.r * Lb) ^ 2 * sizeK (T.Q.Dw j) a n) ∧ ∀ Z, petOn Y.U (xiR D) (fun _ => D.sp.W j) Y.dict Z (wtZ a n) σ y ≤ Real.exp (C * ((D.R.f : ℝ) * D.R.r * Lb) ^ 2 * sizeK (T.Q.Dw j) a n) := by
  intro _
  obtain ⟨CA, hCA0, hA⟩ := GlobalTheory.CovGmin.span_thFam
  obtain ⟨CB, hCB0, hB⟩ := GlobalTheory.RawThetaSup.homN_smul_raw_le
  obtain ⟨CC, hCC0, hC⟩ := _root_.GlobalTheory.CovInt.integral_smul_thLa
  refine ⟨CA + CB + CC + 391, by linarith only [hCA0, hCB0, hCC0], ?_⟩
  intro D T hJ j hp hq hf hj Y e o hG Lb hL hM hE hfr ho a n hDom hev hn hpos hsz
  have hH : GlobalTheory.CovGmin.Hyp D T j Y e o Lb a n :=
    ⟨hJ, hp, hq, hf, hj, hG, hL, hM, hE, hfr, ho, hDom, hev, hn, hpos, hsz⟩
  obtain ⟨_, nab, hnab⟩ := GlobalTheory.CanonConn.exists_isNab_uncond D.host.E T.Q.H (T.Q.Dw j) Y.d.l₂ Y.d.Xo₂ Y.d.c₂
  obtain ⟨Na, hNa, hlog, hint⟩ := hC D T j Y e o Lb a n hH nab hnab
  have hspan := hA D T j Y e o Lb a n hH nab hnab
  have hB' := hB D T j Y e o Lb a n hH nab hnab
  clear hA hB hC
  have hκ : 1 ≤ sizeK (T.Q.Dw j) a n := by
    have h1 := GlobalTheory.RawThetaSup.two_mul_card_psi T.Q.H
    have h2 : 1 ≤ n / 2 * (Fintype.card (Psi T.Q.H) * ((T.Q.Dw j).p + (T.Q.Dw j).q)) :=
      Nat.mul_pos (by omega) (Nat.mul_pos (by omega) (by omega))
    have h3 : (1 : ℝ) ≤ ((n / 2 : ℕ) : ℝ) * (Fintype.card (Psi T.Q.H) * ((T.Q.Dw j).p + (T.Q.Dw j).q) : ℕ) := by
      exact_mod_cast h2
    rw [GlobalTheory.RawThetaSup.sizeK_eq]
    exact h3.trans (le_add_of_nonneg_left (Nat.cast_nonneg _))
  have hNaE : (Na : ℝ) ≤ Real.exp (CC * ((D.R.f : ℝ) * D.R.r * Lb) ^ 2 * sizeK (T.Q.Dw j) a n) :=
    (Real.log_le_iff_le_exp (Nat.cast_pos.2 hNa)).1 hlog
  have hFE : Real.exp (fieldSz Y.d.c₂.F) ≤ Real.exp (391 * ((D.R.f : ℝ) * D.R.r * Lb) ^ 2 * sizeK (T.Q.Dw j) a n) :=
    Real.exp_le_exp.2 ((hG.size.trans ho).trans
      (le_mul_of_one_le_right (mul_nonneg (by norm_num) (sq_nonneg _)) hκ))
  refine ⟨{w | w ∈ (AllWt.latW Y.U (wtZ a n) : Set (Y.V (wtZ a n))) ∧ ∀ σ, Y.nrm (wtZ a n) σ w ≤ Real.exp ((CA + CB + CC + 391) * ((D.R.f : ℝ) * D.R.r * Lb) ^ 2 * sizeK (T.Q.Dw j) a n) ∧ ∀ Z, petOn Y.U (xiR D) (fun _ => D.sp.W j) Y.dict Z (wtZ a n) σ w ≤ Real.exp ((CA + CB + CC + 391) * ((D.R.f : ℝ) * D.R.r * Lb) ^ 2 * sizeK (T.Q.Dw j) a n)}, fun _ h => h.1, ?_, fun _ h => h.2⟩
  refine span_eq_top_of_multiples (Y.V (wtZ a n)) _ _ hspan Na hNa ?_
  rintro y ⟨x0, La, N, P, -, hU, hTb, hTM, hO, hP, hρ, hy⟩
  obtain ⟨s, hs0, hs1, hs2⟩ := _root_.GlobalTheory.SmallScal.exists_small_scalar D.host.E T.Q.H (T.Q.Dw j) Y.d.l₂ Y.d.c₂ n La hU
  refine ⟨s, hs0, fun y₁ hy₁ hc => ⟨hint x0 La N P hU hTb hTM hO hP y hy s hs1 y₁ hy₁, fun σ => ?_⟩⟩
  have hsup := hB' _ x0 La N P hU hTM hO hP hρ y hy s _ (Real.exp_pos _).le
    (fun σ => (hs2 σ).trans (pow_le_pow_left₀ (Real.exp_pos _).le hFE 2)) σ
  have hfin := nrm_le_of_eq_smul D T.toCore j Y (wtZ a n) σ _ _ Na _ _
    (mul_nonneg (mul_nonneg (Real.exp_pos _).le (Real.exp_pos _).le) (Real.exp_pos _).le) hNaE hc hsup
  rw [exp_consts] at hfin
  exact hfin
end GlobalTheory.CovGmin
end
end

section
open CategoryTheory AlgebraicGeometry NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Theta
open GlobalTheory GlobalTheory.CompHS GlobalTheory.CovTop GlobalTheory.HSApp GlobalTheory.DegVal GlobalTheory.DegCmp
open GlobalTheory.AllWt (Psi wtOf cuspOn cuspW latOn latW normOn petOn GoodOn GoodW rankOn degOn rankW)
open GlobalTheory.CompHt (hodgeWt)
open GlobalTheory.LevDesc (TypeFrame grpHR grpGHR latN levDet secRing transl pull KeepsCusp)
open GlobalTheory.IndefiniteRowSideFullHecke.LevelStructureAutomorphisms (LevelAut)
open GlobalTheory.BadCount
open scoped TensorProduct
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.HodgeBundleWeights.ExistsGoodCoverAtMinimalLevel =====
