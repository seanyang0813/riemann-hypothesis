module

public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLocPart
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SplitPlaceCharacterComponentSmoothUnitaryConductStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StandardPairFrameBlocksDetAndNegTranspose
public import Development.AutomorphicArithmetic.DivisorFrames.StdAStdBMemSchwartzBruhat
public import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.UnitCharTriangle
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IsReading
public import Development.AutomorphicArithmetic.LocalEmbeddings.ComplEquivEvW
public import Development.AutomorphicArithmetic.LocalEmbeddings.FinMatchDefs
public import Development.AutomorphicArithmetic.LocalEmbeddings.StageGeoDefs
public import Development.AutomorphicArithmetic.DivisorFrames.ExistsIsSBHalfThetaOfSelfDualLattices
public import Development.AutomorphicArithmetic.DivisorFrames.IdempotentSumFixesIffHalfEl
public import Development.AutomorphicArithmetic.DivisorFrames.StdSectionFirstEqProdLocal
public import Development.AutomorphicArithmetic.DivisorFrames.StdSectionSecondEqProdLocal
public import Development.AutomorphicArithmetic.DivisorFrames.ExistsThOEqOfIsLatVacThetaFun
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.MatchingAdjoints
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.BlkGLMem
import Formalism.LocalToGlobal.BesselHermitianTheta.LemmasWeil
import Mathlib.Tactic.Linter.Style
import Development.AbelianVarietyTheory.Counterexamples.HeightSurvey.StarPurelyImaginaryEqNeg
import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.FinTensMemLatO

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicArithmetic.DivisorFrames.ExistsLocalZetaDataRealizingStandardPair, Development.AutomorphicArithmetic.DivisorFrames.ThetaLiftTripleLocalSplitPlaces, Development.AutomorphicArithmetic.DivisorFrames.TripleDualCoordSplitPlacesOfIsPairIsLat, Development.AutomorphicArithmetic.LocalEmbeddings.StageGeoConst

-- ===== clump member: Development.AutomorphicArithmetic.DivisorFrames.ExistsLocalZetaDataRealizingStandardPair =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.DivisorFrames.ExistsLocalZetaDataRealizingStandardPair", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLocPart\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SplitPlaceCharacterComponentSmoothUnitaryConductStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.StandardPairFrameBlocksDetAndNegTranspose\npublic import Development.AutomorphicArithmetic.DivisorFrames.StdAStdBMemSchwartzBruhat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.MatchingAdjoints\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.UnitCharTriangle\nimport Development.AbelianVarietyTheory.Proofs.TwistedOperators.BlkGLMem\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IsReading\npublic import Development.AutomorphicArithmetic.LocalEmbeddings.ComplEquivEvW\nimport Development.AutomorphicArithmetic.LocalEmbeddings.FinMatchDefs\nimport Development.AutomorphicArithmetic.LocalEmbeddings.StageGeoDefs\n\n"}
section -- clump:auto
@[expose] public section

namespace UpperTheory.StandardPairNonvanishing
open GlobalTheory.SplitFlip GlobalTheory.SplitWeil GlobalTheory.StdPairLoc GlobalTheory.StdPairCone MeasureTheory
open scoped Matrix

section

variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]
  [MeasurableSpace k] [BorelSpace k]

private theorem std_key (α β ν : kˣ →* ℂˣ) (ϖ : kˣ) (c a a' : ℕ) (hϖ : IsUnif ϖ) (hν : ν = α / β) (h : GL (Fin (a + a')) k) :
    bigP (haarVol (KO k (Fin a))) ϖ finSumFinEquiv ν β (stdA ν ϖ c a a') h =
      smallP (haarVol (KO k (Fin a'))) finSumFinEquiv ν α (stdB ν ϖ c a a') h := by
  rw [bigZetaIntegral_eq, smallP]
  obtain ⟨hdet, hrel⟩ := standardPair_frameBlocks_det_and_neg_transpose a a' h
  obtain ⟨hA0, hA⟩ := bigF_stdA ν ϖ c a a' hϖ
  obtain ⟨hB0, hB⟩ := smallF_stdB (k := k) ν ϖ c a a'
  by_cases h0 : (blk₁ (X0 k (finSumFinEquiv (m := a) (n := a')) * (invT h).val)).det = 0
  · have h0' : (blk₂ (Y0 k (finSumFinEquiv (m := a) (n := a')) * h.val)).det = 0 := by rw [← hdet, h0, zero_mul]
    rw [hA0 _ h0, hB0 _ h0']; simp
  · have h0' : (blk₂ (Y0 k (finSumFinEquiv (m := a) (n := a')) * h.val)).det ≠ 0 := by
      rw [← hdet]; exact mul_ne_zero h0 h.det_ne_zero
    set g₁ := Matrix.GeneralLinearGroup.mkOfDetNeZero _ h0 with hg₁
    set g₂ := Matrix.GeneralLinearGroup.mkOfDetNeZero _ h0' with hg₂
    rw [hA _ g₁ rfl, hB _ g₂ rfl, hrel g₁ g₂ rfl rfl, cball_neg_transpose]
    have hd : gdet g₂ = gdet g₁ * gdet h := Units.ext (by
      simp only [gdet, Units.val_mul, Matrix.GeneralLinearGroup.val_det_apply, g₁, g₂,
        Matrix.GeneralLinearGroup.val_mkOfDetNeZero]
      exact hdet.symm)
    have hαν : α = ν * β := by rw [hν, div_mul_cancel]
    have e : apow (gdet h) ((Fintype.card (Fin a') : ℂ) / 2) * apow (gdet h) (-((Fintype.card (Fin (a + a')) : ℂ) / 2)) =
        apow (gdet h) (-(a : ℂ) / 2) := by
      rw [← apow_add]; congr 1; simp only [Fintype.card_fin]; push_cast; ring
    have e1 : (((ν (gdet g₁ * gdet h))⁻¹ : ℂˣ) : ℂ) = (((ν (gdet g₁))⁻¹ : ℂˣ) : ℂ) * (((ν (gdet h))⁻¹ : ℂˣ) : ℂ) := by
      rw [map_mul, _root_.mul_inv, Units.val_mul]
    have e2 : (α (gdet h) : ℂ) = (ν (gdet h) : ℂ) * (β (gdet h) : ℂ) := by
      rw [hαν, MonoidHom.mul_apply, Units.val_mul]
    have e3 : (ν (gdet h) : ℂ) * (((ν (gdet h))⁻¹ : ℂˣ) : ℂ) = 1 := by
      rw [← Units.val_mul, mul_inv_cancel, Units.val_one]
    rw [hd, e1, apow_mul, e2]
    have key2 : ∀ B V Vi Vhi P1 Pa' PN I : ℂ, V * Vhi = 1 →
        B * (Pa' * PN) * (Vi * P1 * I) = V * B * Pa' * (Vi * Vhi * (P1 * PN) * I) := by
      intro B V Vi Vhi P1 Pa' PN I hV; linear_combination (-(B * Pa' * PN * Vi * P1 * I)) * hV
    rw [← e]
    exact key2 _ _ _ _ _ _ _ _ e3

private theorem stdA_ne (ν : kˣ →* ℂˣ) (ϖ : kˣ) (c a a' : ℕ) : stdA ν ϖ c a a' ≠ 0 := by
  intro h
  let X : Matrix (Fin a) (Fin (a + a')) k :=
    Matrix.of fun i j => Fin.addCases (motive := fun _ => k) (fun j => (1 : Matrix (Fin a) (Fin a) k) i j) (fun _ => 0) j
  have e1 : blk₁ X = 1 := by ext i j; simp [X, blk₁]
  have e2 : blk₂ X = 0 := by ext i j; simp [X, blk₂]
  have hX := congrFun h X
  rw [stdA, dite_eq_left] at hX
  · exact Units.ne_zero _ hX
  · rw [e1, e2]
    refine ⟨by simp, ⟨fun i j => ?_, by simp⟩, fun i j => by simp [cball]⟩
    rw [Matrix.one_apply]
    split_ifs
    · exact one_mem _
    · exact zero_mem _

private theorem stdB_ne (ν : kˣ →* ℂˣ) (ϖ : kˣ) (c a a' : ℕ) : stdB ν ϖ c a a' ≠ 0 := by
  intro h
  let X : Matrix (Fin a') (Fin (a + a')) k :=
    Matrix.of fun i j => Fin.addCases (motive := fun _ => k) (fun _ => 0) (fun j => (1 : Matrix (Fin a') (Fin a') k) i j) j
  have e1 : blk₁ X = 0 := by ext i j; simp [X, blk₁]
  have e2 : blk₂ X = 1 := by ext i j; simp [X, blk₂]
  have hX := congrFun h X
  rw [stdB, dite_eq_left] at hX
  · exact Units.ne_zero _ hX
  · rw [e1, e2]
    refine ⟨by simp, ⟨fun i j => ?_, by simp⟩, fun i j => by simp [cball]⟩
    rw [Matrix.one_apply]
    split_ifs
    · exact one_mem _
    · exact zero_mem _

end

end UpperTheory.StandardPairNonvanishing

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Datum GlobalTheory.IndefiniteRowSideFullHecke.MatchingAdjoints GlobalTheory.Grid GlobalTheory.ChainFr GlobalTheory.SquareComm GlobalTheory.FinMatch
open scoped TensorProduct ComplexConjugate GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels Classical
open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels (Base Spc Model Geo piW chrW unifAt latAtV At SInf)
open GlobalTheory.IndefiniteRowSideFullHecke.UnitCharTriangle (Tri)
open GlobalTheory.TripleRead (thO ptO)
open GlobalTheory.AdelicU (evFin splitPrime IsSplitBasis)
open GlobalTheory.BotMatch (evW)
open GlobalTheory.StageGeo
attribute [local instance] Formalism.BasicNotions.Host.cmStar GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

theorem UpperTheory.exists_local_zeta_data_realizing_standard_pair :
    ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E →ₐ[F] E) (B : Base F E) (a a' : ℕ)
        (Γ : Geo σ a a') (X : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Chars F E) (Rf : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.FinMaps F a a') (v : B.P),
        GlobalTheory.LFun.IsHecke F E X.α → GlobalTheory.LFun.IsHecke F E X.β → GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.IsZetaAt B Γ X Rf v → Γ.M.IsGood B.ψ → Γ.M'.IsGood B.ψ → ∀ c : ℕ,
        ∃ ι ι' φ φ', Γ.M.IsLinW B.ψ (B.τ v) (Γ.V.bas v) (Γ.W.bas v) ι ∧ Γ.M'.IsLinBar B.ψ (B.τ v) (Γ.V'.bas v) (Γ.W.bas v) ι' ∧
          ι (Γ.M.vac v) 0 = 1 ∧ ι' (Γ.M'.vac v) 0 = 1 ∧ φ ∈ GlobalTheory.WeilM.SB _ ∧ φ' ∈ GlobalTheory.WeilM.SB _ ∧
          ι φ = GlobalTheory.StdPairCone.stdA (chrW X.ν (B.τ v)) (unifAt v.1) c a a' ∧
          ι' φ' = GlobalTheory.StdPairCone.stdB (chrW X.ν (B.τ v)) (unifAt v.1) c a a' ∧ Rf.p v φ = Rf.p' v φ' ∧ φ ≠ 0 ∧ φ' ≠ 0 := by
  intro F E _ _ _ _ _ σ B a a' Γ X Rf v hα hβ hZ _ _ c
  obtain ⟨ι, ι', hι, hι', hv, hv', hz⟩ := hZ
  letI := GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.measFv v.1
  haveI := GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.borelFv v.1
  have hν : GlobalTheory.LFun.IsHecke F E X.ν := ⟨hα.1.div' hβ.1, fun x => by
    rw [GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Chars.ν, MonoidHom.div_apply, hα.2, hβ.2, div_one]⟩
  have h1 := (GlobalTheory.T.splitPlaceCharacterComponent_smooth_unitary_conductor F E X.ν hν v (B.τ v)).2.1
  have hdiv : chrW X.ν (B.τ v) = chrW X.α (B.τ v) / chrW X.β (B.τ v) := by
    ext x
    simp [chrW, GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Chars.ν, GlobalTheory.LFun.locChar]
  have hϖ : GlobalTheory.SplitFlip.IsUnif (unifAt v.1) := (GlobalTheory.SplitFlip.exists_isUnif (k := Fv F v.1)).choose_spec
  obtain ⟨sA, sB⟩ := UpperTheory.stdA_stdB_mem_schwartzBruhat (Fv F v) (chrW X.ν (B.τ v)) (unifAt v.1) hϖ h1 c a a'
  obtain ⟨φ, hφ, eφ⟩ := hι.bij.surjOn sA
  obtain ⟨φ', hφ', eφ'⟩ := hι'.bij.surjOn sB
  refine ⟨ι, ι', φ, φ', hι, hι', ?_, ?_, hφ, hφ', eφ, eφ', (hz φ hφ φ' hφ').2 ?_, ?_, ?_⟩
  · rw [hv, Set.indicator_of_mem (by intro i j; exact zero_mem _)]; rfl
  · rw [hv', Set.indicator_of_mem (by intro i j; exact zero_mem _)]; rfl
  · rw [eφ, eφ']
    funext h
    exact UpperTheory.StandardPairNonvanishing.std_key _ _ _ _ c a a' hϖ hdiv h
  · rintro rfl
    exact UpperTheory.StandardPairNonvanishing.stdA_ne _ _ c a a' (by rw [← eφ, map_zero])
  · rintro rfl
    exact UpperTheory.StandardPairNonvanishing.stdB_ne _ _ c a a' (by rw [← eφ', map_zero])
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.DivisorFrames.ExistsLocalZetaDataRealizingStandardPair =====

-- ===== clump member: Development.AutomorphicArithmetic.DivisorFrames.ThetaLiftTripleLocalSplitPlaces =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.DivisorFrames.ThetaLiftTripleLocalSplitPlaces", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.UnitCharTriangle\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLocPart\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IsReading\npublic import Development.AutomorphicArithmetic.LocalEmbeddings.ComplEquivEvW\npublic import Development.AutomorphicArithmetic.LocalEmbeddings.FinMatchDefs\npublic import Development.AutomorphicArithmetic.DivisorFrames.ExistsIsSBHalfThetaOfSelfDualLattices\npublic import Development.AutomorphicArithmetic.DivisorFrames.IdempotentSumFixesIffHalfEl\npublic import Development.AutomorphicArithmetic.DivisorFrames.StdSectionFirstEqProdLocal\nimport Formalism.LocalToGlobal.BesselHermitianTheta.LemmasWeil\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicArithmetic.LocalEmbeddings.StageGeoDefs\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Datum GlobalTheory.IndefiniteRowSideFullHecke.MatchingAdjoints GlobalTheory.Grid GlobalTheory.ChainFr GlobalTheory.SquareComm GlobalTheory.FinMatch
open scoped TensorProduct ComplexConjugate GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels Classical
open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels (Base Spc Model Geo piW chrW unifAt latAtV At SInf)
open GlobalTheory.IndefiniteRowSideFullHecke.UnitCharTriangle (Tri)
open GlobalTheory.TripleRead (thO ptO)
open GlobalTheory.AdelicU (evFin splitPrime IsSplitBasis)
open GlobalTheory.BotMatch (evW)
open GlobalTheory.StageGeo
attribute [local instance] Formalism.BasicNotions.Host.cmStar GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

private theorem fmFst_mat {k : Type} [Field k] {a n d : ℕ} (e : Fin n ≃ Fin d) (B G Gi : Matrix (Fin a) (Fin a) k) (hG : Gi * G = 1)
    (W Wi : Matrix (Fin d) (Fin d) k) (hW : Wi * W = 1) (m : GL (Fin n) k) (hm : m.1 = W.submatrix e e)
    (X : Matrix (Fin d) (Fin a) k) :
    (G * B)ᵀ * ((X * Gi)ᵀ).submatrix id e * (GlobalTheory.SplitFlip.invT m).1 = ((Wi * X * B)ᵀ).submatrix id e := by
  have h1 : (m⁻¹).1 = Wi.submatrix e e := by
    have : Wi.submatrix e e * m.1 = 1 := by
      rw [hm, Matrix.submatrix_mul_equiv, hW]; exact Matrix.submatrix_one_equiv e
    calc (m⁻¹).1 = (Wi.submatrix e e * m.1) * (m⁻¹).1 := by rw [this, Matrix.one_mul]
      _ = Wi.submatrix e e := by rw [Matrix.mul_assoc, Units.mul_inv, Matrix.mul_one]
  have h2 : (G * B)ᵀ * ((X * Gi)ᵀ).submatrix id e = ((X * B)ᵀ).submatrix id e := by
    have : (G * B)ᵀ * ((X * Gi)ᵀ).submatrix id e = ((G * B)ᵀ * (X * Gi)ᵀ).submatrix id e := rfl
    rw [this, ← Matrix.transpose_mul, Matrix.mul_assoc X, ← Matrix.mul_assoc Gi, hG, Matrix.one_mul]
  rw [h2, GlobalTheory.SplitFlip.invT_val, h1, Matrix.transpose_submatrix, Matrix.submatrix_mul_equiv, ← Matrix.transpose_mul,
    Matrix.mul_assoc]

private theorem selfDual_neg {D : D7} {V : HSp D} {Λ : Submodule (𝓞 D.host.E) (Fin V.rank → D.host.E)}
    (h : IsSelfDualC V Λ) : IsSelfDualC (sgn true V) Λ := by
  refine ⟨h.1, fun y => (h.2 y).trans (forall₂_congr fun x _ => ?_)⟩
  have e : ∑ i, ∑ j, star (x i) * (sgn true V).gram i j * y j = -∑ i, ∑ j, star (x i) * V.gram i j * y j := by
    rw [← Finset.sum_neg_distrib]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [← Finset.sum_neg_distrib]
    refine Finset.sum_congr rfl fun j _ => ?_
    show star (x i) * (-V.gram i j) * y j = _
    ring
  rw [e]
  exact ⟨fun ⟨b, hb⟩ => ⟨-b, by simp [hb]⟩, fun ⟨b, hb⟩ => ⟨-b, by simp [hb]⟩⟩

theorem UpperTheory.thetaLift_triple_local_split_places :
    ∀ (D : D7) (T : Type) (A A' WW : HSp D) (X : Tri T A A' WW) (ψ : AddChar (AF D.host.F) ℂ) (θ : InfFam D)
        (α β : T → ((AE D)ˣ →* Circle)) (νH : T → Formalism.L2.Host.HChar D.host.E) (S : T → Finset (HeightOneSpectrum (𝓞 D.host.E))),
        X.Is ψ θ α β νH S → ∀ (hr : A.rank + A'.rank = WW.rank) (Bs : Base D.host.F D.host.E)
        (Vs : Spc D.host.F D.host.E A.rank) (Ws : Spc D.host.F D.host.E (A.rank + A'.rank)) (M : Model D.sp.cm.sig Vs Ws),
        IsPair ψ true A WW (finCongr hr) Bs Vs Ws M → IsLat (finCongr hr) Vs Ws X.rA.Λ X.rW.Λ →
        ∀ (t : T) (P : Finset (HeightOneSpectrum (𝓞 D.host.F))) (τ : ∀ v : P, D.host.E →ₐ[D.host.F] Fv D.host.F v),
        (∀ w, w ∈ S t ↔ ∃ v : P, splitPrime (τ v) = w) →
        ∀ (b : ∀ v : P, GL (Fin A.rank) (Fv D.host.F v)) (c : ∀ v : P, GL (Fin (A.rank + A'.rank)) (Fv D.host.F v))
          (ι : ∀ v : P, ((Fin A.rank × Fin (A.rank + A'.rank) → Fv D.host.F v) → ℂ) →ₗ[ℂ]
            (Matrix (Fin A.rank) (Fin (A.rank + A'.rank)) (Fv D.host.F v) → ℂ)),
        (∀ v, ((b v)⁻¹).1 = -(A.gram.map (τ v) * X.rA.β.1.map (evW (τ v)))ᵀ) →
        (∀ v, (c v).1 = (X.rW.β.1.map (evW (τ v))).submatrix (finCongr hr) (finCongr hr)) →
        (∀ v, M.IsLinW ψ (τ v) (b v) (c v) (ι v)) → (∀ v : P, ι v (M.vac v) 0 = 1) →
        ∀ (φ : ∀ v : HeightOneSpectrum (𝓞 D.host.F), (Fin A.rank × Fin (A.rank + A'.rank) → Fv D.host.F v) → ℂ),
        (∀ v, φ v ∈ GlobalTheory.WeilM.SB _) → (∀ v, v ∉ P → φ v = M.vac v) →
        (∀ v : P, ι v (φ v) = GlobalTheory.StdPairCone.stdA (chrW (α t / β t) (τ v)) (unifAt v.1) (X.c t (splitPrime (τ v))) A.rank A'.rank) →
        ∀ g : SInf D.host.F (Fin A.rank × Fin (A.rank + A'.rank)),
        X.vac = thO M ψ (sgn true A).gram (finCongr hr) (GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.pure g M.vac) →
        X.f t = thO M ψ (sgn true A).gram (finCongr hr) (GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.pure g φ) := by
  intro D T A A' WW X ψ θ α β νH S hX hr Bs Vs Ws M hP hL t P τ hS b c ι hb hc hι hι0 φ hφ hφ' hφA g hvac
  have hPS : ∀ v, v ∈ P ↔ ∃ w ∈ S t, w.under (𝓞 D.host.F) = v := fun v => by
    constructor
    · intro hv
      exact ⟨splitPrime (τ ⟨v, hv⟩), (hS _).2 ⟨_, rfl⟩, GlobalTheory.AdelicU.splitPrime_under (τ ⟨v, hv⟩)⟩
    · rintro ⟨w, hw, rfl⟩
      obtain ⟨u, rfl⟩ := (hS w).1 hw
      rw [GlobalTheory.AdelicU.splitPrime_under (τ u)]
      exact u.2
  have hτS : ∀ v : P, splitPrime (τ v) ∈ S t := fun v => (hS _).2 ⟨v, rfl⟩
  have hinj : Function.Injective fun v : P => splitPrime (τ v) := fun u v h => by
    have h1 := GlobalTheory.AdelicU.splitPrime_under (τ u)
    have h2 := GlobalTheory.AdelicU.splitPrime_under (τ v)
    have h' : splitPrime (τ u) = splitPrime (τ v) := h
    exact Subtype.ext (h1.symm.trans (h' ▸ h2))
  obtain ⟨hh0, hh1⟩ := UpperTheory.idempotentSum_fixes_iff_halfEl D (X.e t) (S t) (hX.idem t) P τ hPS hτS
  obtain ⟨G, hG⟩ : ∃ G : Matrix (Fin A.rank) (Fin A.rank) D.host.E, G = (sgn true A).gram := ⟨_, rfl⟩
  have hdet : IsUnit G.det := by rw [hG]; exact (Formalism.L2.Theta.gram_det_ne (sgn true A)).isUnit
  have hGi : ∀ v : P, (G⁻¹.map (incA D)).map (piW (τ v)) * (G.map (incA D)).map (piW (τ v)) = 1 := fun v => by
    rw [← Matrix.map_mul, ← Matrix.map_mul, Matrix.nonsing_inv_mul _ hdet, Matrix.map_one _ (map_zero _) (map_one _),
      Matrix.map_one _ (map_zero _) (map_one _)]
  have hbG : ∀ v : P, ((b v)⁻¹).1 = ((G.map (incA D)).map (piW (τ v)) * X.rA.β.1.map (evW (τ v)))ᵀ := fun v => by
    have e0 : (G.map (incA D)).map (piW (τ v)) = -A.gram.map (τ v) := by
      refine Matrix.ext fun i j => ?_
      have e1 : G i j = -A.gram i j := by rw [hG]; rfl
      have e2 : ∀ y, piW (τ v) (incA D y) = τ v y := fun y => one_mul (τ v y)
      show piW (τ v) (incA D (G i j)) = -(τ v (A.gram i j))
      rw [e2, e1, map_neg]
    rw [hb, e0, Matrix.neg_mul, Matrix.transpose_neg]
  have key : ∀ (x : WO A WW) (v : P),
      ((b v)⁻¹).1 * (ptO (sgn true A).gram (finCongr hr) x).map (piW (τ v)) * (GlobalTheory.SplitFlip.invT (c v)).1 =
      (((frMapO A WW X.rA.β X.rW.β x).map (evW (τ v)))ᵀ).submatrix id (finCongr hr) := fun x v => by
    have e1 : (ptO G (finCongr hr) x).map (piW (τ v)) =
        ((Matrix.map x (piW (τ v)) * (G⁻¹.map (incA D)).map (piW (τ v)))ᵀ).submatrix id (finCongr hr) := by
      rw [← Matrix.map_mul]; rfl
    have e2 : (frMapO A WW X.rA.β X.rW.β x).map (evW (τ v)) =
        (X.rW.β⁻¹).1.map (evW (τ v)) * Matrix.map x (piW (τ v)) * X.rA.β.1.map (evW (τ v)) := by
      unfold frMapO
      rw [Matrix.map_mul, Matrix.map_mul]
      congr 2
      refine Matrix.ext fun i j => ?_
      exact GlobalTheory.BotMatch.evW_toEAf (τ v) (x i j)
    rw [← hG, hbG, e1, e2]
    refine fmFst_mat (finCongr hr) _ _ _ (hGi v) (X.rW.β.1.map (evW (τ v))) _ ?_ (c v) (hc v) _
    rw [← Matrix.map_mul, Units.inv_mul, Matrix.map_one _ (map_zero _) (map_one _)]
  have hth := hX.fst t
  rw [hvac] at hth
  have hres := (UpperTheory.exists_isSBHalf_theta_of_selfDual_lattices D ψ true A WW _ (finCongr hr) Bs Vs Ws M hP X.rA.Λ X.rW.Λ hL (selfDual_neg hX.rigA.1) hX.rigW.1
    P τ (fun v => (τ v).comp D.sp.cm.sig) (fun _ _ => rfl) (X.e t) hh0 hh1 (fun v => (b v)⁻¹)
    (fun v => GlobalTheory.SplitFlip.invT (c v)) ι (fun v => hι v) φ hφ hφ' g
    (GlobalTheory.IndefiniteRowSideFullHecke.UnitCharTriangle.stdFst (α t / β t) (X.e t) (X.ideal S t) A WW X.rA.β X.rW.β) (X.f t) (fun x => by
      by_cases hx : IsHalf (X.e t) x
      · rw [ite_eq_left hx]
        refine (UpperTheory.stdSectionFirst_eq_prod_local D (X.e t) (S t) (hX.idem t) P (fun v => v.1) τ hS hinj (X.c t) (α t / β t) A WW X.rA.β X.rW.β
          A'.rank hr x hx).trans (Finset.prod_congr rfl fun v _ => ?_)
        rw [hφA v]
        exact congrArg _ (key x v).symm
      · rw [ite_eq_right hx]
        exact ite_eq_right fun h => hx h.1) hth).2
  simpa [Finset.prod_eq_one fun v _ => hι0 v] using hres
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.DivisorFrames.ThetaLiftTripleLocalSplitPlaces =====

-- ===== clump member: Development.AutomorphicArithmetic.DivisorFrames.TripleDualCoordSplitPlacesOfIsPairIsLat =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.DivisorFrames.TripleDualCoordSplitPlacesOfIsPairIsLat", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.UnitCharTriangle\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLocPart\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IsReading\npublic import Development.AutomorphicArithmetic.LocalEmbeddings.ComplEquivEvW\npublic import Development.AutomorphicArithmetic.LocalEmbeddings.FinMatchDefs\nimport Development.AbelianVarietyTheory.Counterexamples.HeightSurvey.StarPurelyImaginaryEqNeg\nimport Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.FinTensMemLatO\npublic import Development.AutomorphicArithmetic.DivisorFrames.ExistsIsSBHalfThetaOfSelfDualLattices\npublic import Development.AutomorphicArithmetic.DivisorFrames.IdempotentSumFixesIffHalfEl\npublic import Development.AutomorphicArithmetic.DivisorFrames.StdSectionSecondEqProdLocal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AutomorphicArithmetic.LocalEmbeddings.StageGeoDefs\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Datum GlobalTheory.IndefiniteRowSideFullHecke.MatchingAdjoints GlobalTheory.Grid GlobalTheory.ChainFr GlobalTheory.SquareComm GlobalTheory.FinMatch
open scoped TensorProduct ComplexConjugate GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels Classical
open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels (Base Spc Model Geo piW chrW unifAt latAtV At SInf)
open GlobalTheory.IndefiniteRowSideFullHecke.UnitCharTriangle (Tri)
open GlobalTheory.TripleRead (thO ptO)
open GlobalTheory.AdelicU (evFin splitPrime IsSplitBasis)
open GlobalTheory.BotMatch (evW)
open GlobalTheory.StageGeo
attribute [local instance] Formalism.BasicNotions.Host.cmStar GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

private theorem piW_cA' {D : D7} {v : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := D.host.F)} (t : D.host.E →ₐ[D.host.F] Fv D.host.F v) (w : AE D) :
    piW t (cA D w) = piW (t.comp D.sp.cm.sig) w := by
  induction w using TensorProduct.induction_on with
  | zero => simp
  | tmul a e => rfl
  | add x y hx hy => simp only [map_add (f := _), hx, hy]

private theorem piW_incA' {D : D7} {v : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := D.host.F)} (t : D.host.E →ₐ[D.host.F] Fv D.host.F v)
    (e : D.host.E) : piW t (incA D e) = t e := by
  change GlobalTheory.AdelicU.evFin D.host.F v 1 * t e = t e
  simp

private theorem coord_eq {D : D7} {v : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := D.host.F)} (t : D.host.E →ₐ[D.host.F] Fv D.host.F v)
    (A' WW : HSp D) {d : ℕ} (e : Fin d ≃ Fin WW.rank)
    (βA' : GL (Fin A'.rank) (EAf D)) (βW : GL (Fin WW.rank) (EAf D)) (y : WO A' WW) :
    (βA'⁻¹).1.map (evW t) * (ptO A'.gram e y).map (piW (t.comp D.sp.cm.sig)) *
        ((D.host.xi0 • (WW.gramᵀ).submatrix e e).map t)ᵀ * (βW.1.map (evW t)).submatrix e e =
      ((GlobalTheory.IndefiniteRowSideFullHecke.UnitCharTriangle.dualCoord A' WW βA' βW y).map (evW t)).submatrix id e := by
  have hG : (A'.gram⁻¹)ᴴ = A'.gram⁻¹ := by
    rw [Matrix.conjTranspose_nonsing_inv]
    congr 1
    refine Matrix.ext fun i j => ?_
    exact GlobalTheory.DualPairCheck.gram_star A' j i
  have h0 : ((GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation.incM (A'.gram⁻¹))ᵀ).map (piW (t.comp D.sp.cm.sig)) = (A'.gram⁻¹).map t := by
    refine Matrix.ext fun i j => ?_
    have h := congrFun (congrFun hG i) j
    change piW (t.comp D.sp.cm.sig) (incA D (A'.gram⁻¹ j i)) = t (A'.gram⁻¹ i j)
    rw [piW_incA', ← h]
    rfl
  have h2 : (ptO A'.gram e y).map (piW (t.comp D.sp.cm.sig)) =
      ((A'.gram⁻¹).map t * ((y : Matrix _ _ (AE D))ᵀ).map (piW (t.comp D.sp.cm.sig))).submatrix id e := by
    rw [← h0, ← Matrix.map_mul, ← Matrix.transpose_mul]
    rfl
  have h3 : ((D.host.xi0 • (WW.gramᵀ).submatrix e e).map t)ᵀ = t D.host.xi0 • (WW.gram.map t).submatrix e e := by
    refine Matrix.ext fun i j => ?_
    simp
  have hinc : ∀ {p q : ℕ} (M : Matrix (Fin p) (Fin q) D.host.E),
      ((M.map (incA D)).map (toEAf D)).map (evW t) = M.map t := by
    intro p q M
    refine Matrix.ext fun i j => ?_
    simp only [Matrix.map_apply, GlobalTheory.BotMatch.evW_toEAf, piW_incA']
  have hy : ((((y : Matrix _ _ (AE D)).map (cA D))ᵀ).map (toEAf D)).map (evW t) =
      ((y : Matrix _ _ (AE D))ᵀ).map (piW (t.comp D.sp.cm.sig)) := by
    refine Matrix.ext fun i j => ?_
    simp only [Matrix.map_apply, Matrix.transpose_apply, GlobalTheory.BotMatch.evW_toEAf, piW_cA']
  have hxi : evW t (eToEAf D D.host.xi0) = t D.host.xi0 := by
    rw [← piW_incA' t, ← GlobalTheory.BotMatch.evW_toEAf]
    rfl
  have h1 : (GlobalTheory.IndefiniteRowSideFullHecke.UnitCharTriangle.dualCoord A' WW βA' βW y).map (evW t) =
      t D.host.xi0 • ((βA'⁻¹).1.map (evW t) * ((A'.gram⁻¹).map t *
        ((y : Matrix _ _ (AE D))ᵀ).map (piW (t.comp D.sp.cm.sig)) * WW.gram.map t) * βW.1.map (evW t)) := by
    rw [← hxi, ← hinc, ← hinc, ← hy, ← Matrix.map_mul, ← Matrix.map_mul, ← Matrix.map_mul, ← Matrix.map_mul,
      ← Matrix.map_mul, ← Matrix.map_mul]
    refine Matrix.ext fun i j => ?_
    exact map_mul (evW t) _ _
  rw [h1, h2, h3, Matrix.mul_smul, Matrix.smul_mul, Matrix.submatrix_smul]
  simp only [Pi.smul_apply]
  congr 1
  rw [Matrix.mul_assoc, Matrix.mul_assoc, Matrix.submatrix_mul_equiv, Matrix.submatrix_mul_equiv]
  refine Matrix.ext fun i j => ?_
  simp only [Matrix.mul_assoc]
  rfl

theorem UpperTheory.triple_dualCoord_split_places_of_isPair_isLat :
    ∀ (D : D7) (T : Type) (A A' WW : HSp D) (X : Tri T A A' WW) (ψ : AddChar (AF D.host.F) ℂ) (θ : InfFam D)
        (α β : T → ((AE D)ˣ →* Circle)) (νH : T → Formalism.L2.Host.HChar D.host.E) (S : T → Finset (HeightOneSpectrum (𝓞 D.host.E))),
        X.Is ψ θ α β νH S → ∀ (hr : A.rank + A'.rank = WW.rank) (Bs : Base D.host.F D.host.E)
        (Vs : Spc D.host.F D.host.E A'.rank) (Ws : Spc D.host.F D.host.E (A.rank + A'.rank)) (M : Model D.sp.cm.sig Vs Ws),
        IsPair ψ false A' WW (finCongr hr) Bs Vs Ws M → IsLat (finCongr hr) Vs Ws X.rA'.Λ X.rW.Λ →
        ∀ (t : T) (P : Finset (HeightOneSpectrum (𝓞 D.host.F))) (τ : ∀ v : P, D.host.E →ₐ[D.host.F] Fv D.host.F v),
        (∀ w, w ∈ S t ↔ ∃ v : P, splitPrime (τ v) = w) →
        ∀ (b : ∀ v : P, GL (Fin A'.rank) (Fv D.host.F v)) (c : ∀ v : P, GL (Fin (A.rank + A'.rank)) (Fv D.host.F v))
          (ι : ∀ v : P, ((Fin A'.rank × Fin (A.rank + A'.rank) → Fv D.host.F v) → ℂ) →ₗ[ℂ]
            (Matrix (Fin A'.rank) (Fin (A.rank + A'.rank)) (Fv D.host.F v) → ℂ)),
        (∀ v, ((b v)⁻¹).1 = (A'.gram.map (τ v) * X.rA'.β.1.map (evW (τ v)))ᵀ) →
        (∀ v, (c v).1 = (X.rW.β.1.map (evW (τ v))).submatrix (finCongr hr) (finCongr hr)) →
        (∀ v, M.IsLinBar ψ (τ v) (b v) (c v) (ι v)) → (∀ v : P, ι v (M.vac v) 0 = 1) →
        ∀ (φ : ∀ v : HeightOneSpectrum (𝓞 D.host.F), (Fin A'.rank × Fin (A.rank + A'.rank) → Fv D.host.F v) → ℂ),
        (∀ v, φ v ∈ GlobalTheory.WeilM.SB _) → (∀ v, v ∉ P → φ v = M.vac v) →
        (∀ v : P, ι v (φ v) = GlobalTheory.StdPairCone.stdB (chrW (α t / β t) (τ v)) (unifAt v.1) (X.c t (splitPrime (τ v))) A.rank A'.rank) →
        ∀ g : SInf D.host.F (Fin A'.rank × Fin (A.rank + A'.rank)),
        X.vac' = thO M ψ (sgn false A').gram (finCongr hr) (GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.pure g M.vac) →
        X.f' t = thO M ψ (sgn false A').gram (finCongr hr) (GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.pure g φ) := by
  intro D T A A' WW X ψ θ α β νH S hX hr Bs Vs Ws M hp hl t P τ hS b c ι hb hc hι h1 φ hφ hφP hstd g hvac
  have hP : ∀ v, v ∈ P ↔ ∃ w ∈ S t, w.under (𝓞 D.host.F) = v := fun v =>
    ⟨fun hv => ⟨_, (hS _).2 ⟨⟨v, hv⟩, rfl⟩, GlobalTheory.AdelicU.splitPrime_under _⟩, by
      rintro ⟨w, hw, rfl⟩
      obtain ⟨u, rfl⟩ := (hS w).1 hw
      rw [GlobalTheory.AdelicU.splitPrime_under]
      exact u.2⟩
  have hinj : Function.Injective (fun v : P => splitPrime (τ v)) := fun u v h =>
    Subtype.ext ((GlobalTheory.AdelicU.splitPrime_under (τ u)).symm.trans
      ((congrArg (fun w : HeightOneSpectrum (𝓞 D.host.E) => w.under (𝓞 D.host.F)) h).trans (GlobalTheory.AdelicU.splitPrime_under (τ v))))
  obtain ⟨hh1, hh0⟩ := UpperTheory.idempotentSum_fixes_iff_halfEl D (X.e t) (S t) (hX.idem t) P τ hP fun v => (hS _).2 ⟨v, rfl⟩
  have hdet : ∀ v : P, ((Ws.J.map (τ v))ᵀ).det ≠ 0 := fun v => by
    have h0 : Ws.J.det ≠ 0 := by
      rw [hp.JW, Matrix.det_smul, Matrix.det_submatrix_equiv_self, Matrix.det_transpose]
      exact mul_ne_zero (pow_ne_zero _ GlobalTheory.ChiGrid.cmHost_imaginaryGenerator_ne_zero) (GlobalTheory.LatVac.gram_det_isUnit WW).ne_zero
    rw [Matrix.det_transpose]
    have h2 := (τ v).toRingHom.map_det Ws.J
    exact fun h => h0 ((τ v).toRingHom.injective ((h2.trans h).trans (map_zero _).symm))
  have hbb : ∀ v : P, -((b v).1ᵀ * Vs.J.map (τ v)) = (X.rA'.β⁻¹).1.map (evW (τ v)) := fun v => by
    have e1 : Vs.J.map (τ v) = -(A'.gram.map (τ v)) := by
      rw [hp.JV]
      refine Matrix.ext fun i j => ?_
      simp
    have e2 : (b v).1ᵀ * (A'.gram.map (τ v) * X.rA'.β.1.map (evW (τ v))) = 1 := by
      rw [← Matrix.transpose_transpose (A'.gram.map (τ v) * _), ← hb v, ← Matrix.transpose_mul, Units.inv_mul,
        Matrix.transpose_one]
    have e3 : X.rA'.β.1.map (evW (τ v)) * (X.rA'.β⁻¹).1.map (evW (τ v)) = 1 := by
      rw [← Matrix.map_mul, Units.mul_inv, Matrix.map_one _ (map_zero _) (map_one _)]
    rw [e1, Matrix.mul_neg, neg_neg, ← Matrix.mul_one (_ * A'.gram.map (τ v)), ← e3, ← Matrix.mul_assoc,
      Matrix.mul_assoc (b v).1ᵀ, e2, Matrix.one_mul]
  have hres := (UpperTheory.exists_isSBHalf_theta_of_selfDual_lattices D ψ false A' WW _ (finCongr hr) Bs Vs Ws M hp X.rA'.Λ X.rW.Λ hl hX.rigA'.1 hX.rigW.1 P
    (fun v => (τ v).comp D.sp.cm.sig) τ (fun v x => congrArg (τ v) (star_star x).symm) (cA D (X.e t)) hh0
    (fun z => by rw [GlobalTheory.DualPairCheck.cA_cA]; exact hh1 z)
    (fun v => Matrix.GeneralLinearGroup.map (evW (τ v)) X.rA'.β⁻¹)
    (fun v => Matrix.GeneralLinearGroup.mkOfDetNeZero _ (hdet v) * c v) ι (fun v => by
      have h := hι v
      unfold Model.IsLinBar at h
      convert h using 1
      funext u
      change (X.rA'.β⁻¹).1.map (evW (τ v)) * _ * ((Ws.J.map (τ v))ᵀ * (c v).1) = _
      rw [← hbb v]
      simp only [Matrix.neg_mul, Matrix.mul_assoc]) φ hφ hφP g
    (GlobalTheory.IndefiniteRowSideFullHecke.UnitCharTriangle.stdSnd (α t / β t) (X.e t) (X.ideal S t) A.rank A' WW X.rA'.β X.rW.β) (X.f' t) (fun x => by
      by_cases hx : IsHalf (cA D (X.e t)) x
      · rw [ite_eq_left hx]
        refine (UpperTheory.stdSectionSecond_eq_prod_local D (X.e t) (S t) (hX.idem t) P (fun v => v.1) τ hS hinj (X.c t) (α t / β t) A.rank A' WW
          X.rA'.β X.rW.β hr x hx).trans (Finset.prod_congr rfl fun v _ => ?_)
        rw [hstd v, ← coord_eq, ← hc v, ← hp.JW, Matrix.mul_assoc]
        rfl
      · rw [ite_eq_right hx]
        exact ite_eq_right fun h => hx h.1) (by rw [← hvac]; exact hX.snd t)).2
  simpa [Finset.prod_eq_one fun v _ => h1 v] using hres
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.DivisorFrames.TripleDualCoordSplitPlacesOfIsPairIsLat =====

-- ===== clump member: Development.AutomorphicArithmetic.LocalEmbeddings.StageGeoConst =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.LocalEmbeddings.StageGeoConst", "h": "module\n\npublic import Development.AutomorphicArithmetic.LocalEmbeddings.StageGeoDefs\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IsReading\npublic import Development.AutomorphicArithmetic.DivisorFrames.ExistsLocalZetaDataRealizingStandardPair\npublic import Development.AutomorphicArithmetic.DivisorFrames.ExistsThOEqOfIsLatVacThetaFun\npublic import Development.AutomorphicArithmetic.DivisorFrames.ThetaLiftTripleLocalSplitPlaces\npublic import Development.AutomorphicArithmetic.DivisorFrames.TripleDualCoordSplitPlacesOfIsPairIsLat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Datum GlobalTheory.IndefiniteRowSideFullHecke.MatchingAdjoints GlobalTheory.Grid GlobalTheory.ChainFr GlobalTheory.SquareComm GlobalTheory.FinMatch
open scoped TensorProduct ComplexConjugate GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels Classical
open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels (Base Spc Model Geo piW chrW unifAt latAtV At SInf)
open GlobalTheory.IndefiniteRowSideFullHecke.UnitCharTriangle (Tri)
open GlobalTheory.TripleRead (thO ptO)
open GlobalTheory.AdelicU (evFin splitPrime IsSplitBasis)
open GlobalTheory.BotMatch (evW)
open GlobalTheory.StageGeo
attribute [local instance] Formalism.BasicNotions.Host.cmStar GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

namespace GlobalTheory.StageGeo

variable {D : D7} {T : Type} {A A' WW : HSp D} {X : Tri T A A' WW} {ψ : AddChar (AF D.host.F) ℂ} {θ : InfFam D}
  {α β : T → ((AE D)ˣ →* Circle)} {νH : T → Formalism.L2.Host.HChar D.host.E} {S : T → Finset (HeightOneSpectrum (𝓞 D.host.E))}
  {FA : Fr A} {FA' : Fr A'} {FW : Fr WW} {Bs : Base D.host.F D.host.E} {Γ : Geo D.sp.cm.sig A.rank A'.rank}

structure Reads (α β : T → ((AE D)ˣ →* Circle)) (S : T → Finset (HeightOneSpectrum (𝓞 D.host.E))) (Bs : Base D.host.F D.host.E)
    (t : T) (Xc : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Chars D.host.F D.host.E) : Prop where

  eα : Xc.α = α t

  eβ : Xc.β = β t

  pl : ∀ w, w ∈ S t ↔ ∃ v : Bs.P, v.1 ∈ Xc.T ∧ splitPrime (Bs.τ v) = w

  unit : ∀ v : Bs.P, v.1 ∈ Xc.T → AUnit (Bs.τ v)

theorem exists_fin (hX : X.Is ψ θ α β νH S) (hG : IsStageGeo ψ X FA FA' FW hX.rank Bs Γ) {t : T}
    {Xc : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Chars D.host.F D.host.E} (hR : Reads α β S Bs t Xc) {om om' R Rf}
    (hm : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.IsMatched Bs Γ Xc om om' R Rf) {g g'}
    (hg : X.vac = thO Γ.M ψ (sgn true A).gram (finCongr hX.rank) (GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.pure g Γ.M.vac))
    (hg' : X.vac' = thO Γ.M' ψ (sgn false A').gram (finCongr hX.rank) (GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.pure g' Γ.M'.vac)) :
    ∃ (φ : ∀ v : HeightOneSpectrum (𝓞 D.host.F), (Fin A.rank × Fin (A.rank + A'.rank) → Fv D.host.F v) → ℂ)
      (φ' : ∀ v : HeightOneSpectrum (𝓞 D.host.F), (Fin A'.rank × Fin (A.rank + A'.rank) → Fv D.host.F v) → ℂ),
      (∀ v, φ v ∈ GlobalTheory.WeilM.SB _) ∧ (∀ v, φ' v ∈ GlobalTheory.WeilM.SB _) ∧ (∀ v ∉ Xc.T, φ v = Γ.M.vac v) ∧
      (∀ v ∉ Xc.T, φ' v = Γ.M'.vac v) ∧ (∀ v, φ v ≠ 0) ∧ (∀ v, φ' v ≠ 0) ∧ (∀ v ∈ Xc.T, Rf.p v (φ v) = Rf.p' v (φ' v)) ∧
      X.f t = thO Γ.M ψ (sgn true A).gram (finCongr hX.rank) (GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.pure g φ) ∧
      X.f' t = thO Γ.M' ψ (sgn false A').gram (finCongr hX.rank) (GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.pure g' φ') := by
  have hT := hm.triple
  let u : Xc.T → Bs.P := fun v => ⟨v.1, hT.chars.sub v.2⟩
  choose ι ι' φ₀ φ₀' l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11 using fun v : Xc.T =>
    UpperTheory.exists_local_zeta_data_realizing_standard_pair _ _ D.sp.cm.sig Bs _ _ Γ Xc Rf (u v) hT.chars.heckeα hT.chars.heckeβ (hm.fin.zeta (u v) v.2) hT.geo.hM hT.geo.hM'
      (X.c t (splitPrime (Bs.τ (u v))))
  have hν : Xc.ν = α t / β t := by rw [GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Chars.ν, hR.eα, hR.eβ]
  have hψ : Bs.ψ = ψ := hG.pairA.psi
  rw [hν] at l7 l8
  rw [hψ] at l1 l2
  have hS : ∀ w, w ∈ S t ↔ ∃ v : Xc.T, splitPrime (Bs.τ (u v)) = w := fun w =>
    (hR.pl w).trans ⟨fun ⟨v, hv, e⟩ => ⟨⟨v.1, hv⟩, e⟩, fun ⟨v, e⟩ => ⟨u v, v.2, e⟩⟩
  let φ : ∀ v : HeightOneSpectrum (𝓞 D.host.F), (Fin A.rank × Fin (A.rank + A'.rank) → Fv D.host.F v) → ℂ :=
    fun v => if h : v ∈ Xc.T then φ₀ ⟨v, h⟩ else Γ.M.vac v
  let φ' : ∀ v : HeightOneSpectrum (𝓞 D.host.F), (Fin A'.rank × Fin (A.rank + A'.rank) → Fv D.host.F v) → ℂ :=
    fun v => if h : v ∈ Xc.T then φ₀' ⟨v, h⟩ else Γ.M'.vac v
  have e1 : ∀ v (h : v ∈ Xc.T), φ v = φ₀ ⟨v, h⟩ := fun v h => dif_pos h
  have e1' : ∀ v (h : v ∈ Xc.T), φ' v = φ₀' ⟨v, h⟩ := fun v h => dif_pos h
  have e2 : ∀ v ∉ Xc.T, φ v = Γ.M.vac v := fun v h => dif_neg h
  have e2' : ∀ v ∉ Xc.T, φ' v = Γ.M'.vac v := fun v h => dif_neg h
  have s1 : ∀ v, φ v ∈ GlobalTheory.WeilM.SB _ ∧ φ v ≠ 0 := fun v => by
    by_cases h : v ∈ Xc.T
    · rw [e1 v h]; exact ⟨l5 _, l10 _⟩
    · rw [e2 v h]; exact ⟨(hT.geo.hM.vac v).1, (hT.geo.hM.vac v).2.1⟩
  have s2 : ∀ v, φ' v ∈ GlobalTheory.WeilM.SB _ ∧ φ' v ≠ 0 := fun v => by
    by_cases h : v ∈ Xc.T
    · rw [e1' v h]; exact ⟨l6 _, l11 _⟩
    · rw [e2' v h]; exact ⟨(hT.geo.hM'.vac v).1, (hT.geo.hM'.vac v).2.1⟩
  refine ⟨φ, φ', fun v => (s1 v).1, fun v => (s2 v).1, e2, e2', fun v => (s1 v).2, fun v => (s2 v).2, fun v h => ?_, ?_, ?_⟩
  · rw [e1 v h, e1' v h]; exact l9 ⟨v, h⟩
  · exact UpperTheory.thetaLift_triple_local_split_places D T A A' WW X ψ θ α β νH S hX hX.rank Bs Γ.V Γ.W Γ.M hG.pairA hG.latA t Xc.T (fun v => Bs.τ (u v)) hS
      (fun v => Γ.V.bas v) (fun v => Γ.W.bas v) ι (fun v => hG.basA (u v)) (fun v => hG.basW (u v) (hR.unit (u v) v.2)) l1 l3 φ
      (fun v => (s1 v).1) e2 (fun v => by rw [e1 v.1 v.2]; exact l7 v) g hg
  · exact UpperTheory.triple_dualCoord_split_places_of_isPair_isLat D T A A' WW X ψ θ α β νH S hX hX.rank Bs Γ.V' Γ.W Γ.M' hG.pairB hG.latB t Xc.T (fun v => Bs.τ (u v)) hS
      (fun v => Γ.V'.bas v) (fun v => Γ.W.bas v) ι' (fun v => hG.basB (u v)) (fun v => hG.basW (u v) (hR.unit (u v) v.2)) l2 l4 φ'
      (fun v => (s2 v).1) e2' (fun v => by rw [e1' v.1 v.2]; exact l8 v) g' hg'

theorem exists_vac {ε : Bool} {S₀ : HSp D} {d : ℕ} {e : Fin d ≃ Fin WW.rank} {Vs : Spc D.host.F D.host.E S₀.rank}
    {Ws : Spc D.host.F D.host.E d} {M : Model D.sp.cm.sig Vs Ws} (hP : IsPair ψ ε S₀ WW e Bs Vs Ws M)
    {ΛS : Submodule (𝓞 D.host.E) (Fin S₀.rank → D.host.E)} {ΛX : Submodule (𝓞 D.host.E) (Fin WW.rank → D.host.E)}
    (hL : IsLat e Vs Ws ΛS ΛX) {s s'} {f : WO (sgn ε S₀) WW → ℂ} (hf : IsVacO ψ θ (sgn ε S₀) WW s s' ΛS ΛX f) :
    ∃ g : SInf D.host.F (Fin S₀.rank × Fin d), g ≠ 0 ∧ f = thO M ψ (sgn ε S₀).gram e (GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.pure g M.vac) := by
  obtain ⟨g, hg⟩ := UpperTheory.exists_thO_eq_of_isLatVac_thetaFun D ψ ε S₀ WW d e Bs Vs Ws M hP ΛS ΛX hL f hf.2.theta hf.2.lat
  refine ⟨g, fun h0 => ?_, hg⟩
  obtain ⟨⟨p, hp⟩, hn⟩ := hf.2.norm
  have h1 := hn p hp
  have h2 : f = 0 := by
    rw [hg, h0]
    funext x
    simp [thO, GlobalTheory.WeilM.thetaSum, GlobalTheory.WeilM.Darboux.rho, GlobalTheory.WeilM.schr, GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.pure]
  rw [h2] at h1
  simp [nrm2] at h1

end GlobalTheory.StageGeo

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.LocalEmbeddings.StageGeoConst =====
