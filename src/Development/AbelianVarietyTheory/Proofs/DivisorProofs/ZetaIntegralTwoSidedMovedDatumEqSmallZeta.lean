module

public import Mathlib.Analysis.Matrix.MeasurableSpace
public import Formalism.DoubleCosetMeasures.StatementZ
public import Development.AbelianVarietyTheory.Definitions.Divisors.RankEqCardIffExistsFrameMatrixFirstColumnBlock
import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsGivenStageEqOne
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ZetaIntegralLeftTranslatePrimitiveFramesStatement
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
import Mathlib.Topology.Sheaves.Init
public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.UnitaryConjugation
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BlockV
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLagrModelOfIsLin

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory Matrix
open scoped TensorProduct GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
open GlobalTheory.FunObj GlobalTheory.ChiGrid GlobalTheory.SplitFlip GlobalTheory.SplitWeil GlobalTheory.StdFrames GlobalTheory.BigNZ GlobalTheory.AdelicU
open GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation (spV spW spW₁ spV₁ Num IsTripleOf IsDatumA skewGram blkU conjU UB)
open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels (Base Spc Model Chars Rep IsTriple UAt ratU mat Acts SInf)

attribute [local instance] GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.measFv GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.borelFv
attribute [local instance] GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.measFv GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.borelFv
open GlobalTheory.PureMatch GlobalTheory.SquareFlipReach ValuativeRel

noncomputable section

theorem GlobalTheory.OneSquareZeta.bigZeta_phiA_twist_eq_smallZeta : ∀ (k : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] [MeasurableSpace k] [BorelSpace k]
    (a : ℕ) (A' C : Type) [Fintype A'] [DecidableEq A'] [Fintype C] [DecidableEq C] (μ : Measure (GL A' k)) [μ.IsHaarMeasure]
    (σ : Fin a ⊕ A' ≃ C) (ν β : kˣ →* ℂˣ) (ϖ : kˣ) (n : ℕ) (c : C → kˣ) (Ψ : Matrix A' C k → ℂ) (g₀ : GL (Fin a) k) (N h : GL C k),
    IsUnif ϖ →
    (ν (gdet g₀) : ℂ) * apow (gdet g₀) ((Fintype.card C : ℂ) / 2) * (ν (gdet N) : ℂ) * apow (gdet N) ((Fintype.card C : ℂ) / 2) *
      bigP (haarVol (KO k (Fin a))) ϖ σ ν β (fun Z => phiA μ σ ν ϖ n (diagLat c) Ψ (g₀.val * Z * N.val)) h =
      smallP μ σ ν (ν * β) (fun Y => Ψ (Y * (invT N).val)) h := by
  intro k _ _ _ _ _ _ a A' C _ _ _ _ μ _ σ ν β ϖ n c Ψ g₀ N h hϖ
  set h' : GL C k := h * invT N with hh'
  have hX : X0 k σ * (invT h).val * N.val = X0 k σ * (invT h').val := by
    rw [hh', map_mul, invT_invT, Units.val_mul, Matrix.mul_assoc]
  have hF : bigF (haarVol (KO k (Fin a))) ϖ ν (fun Z => phiA μ σ ν ϖ n (diagLat c) Ψ (g₀.val * Z * N.val))
      (X0 k σ * (invT h).val) =
      bigF (haarVol (KO k (Fin a))) ϖ ν (fun Z => phiA μ σ ν ϖ n (diagLat c) Ψ (g₀.val * Z))
      (X0 k σ * (invT h').val) := by
    rw [← hX]; simp only [bigF, Matrix.mul_assoc]
  have hL := GlobalTheory.T.zetaIntegral_leftTranslate_primitiveFrames k a A' C μ σ ν ϖ n c Ψ g₀ h' hϖ
  rw [splitTheta_fFun_frameFirstBlock_mul] at hL
  have hS : smallF μ ν Ψ (Y0 k σ * h'.val) = smallF μ ν (fun Y => Ψ (Y * (invT N).val)) (Y0 k σ * h.val) := by
    simp only [smallF, hh', Units.val_mul, Matrix.mul_assoc]
  have hdet : gdet h' = gdet h * (gdet N)⁻¹ := by rw [hh', gdet_mul, gdet_invT]
  rw [hS, hdet, map_mul ν, apow_mul, apow_inv, map_inv ν, Units.val_mul] at hL
  rw [bigZetaIntegral_eq, hF, smallP]
  have hC : (Fintype.card C : ℂ) = a + Fintype.card A' := by
    rw [← Fintype.card_congr σ, Fintype.card_sum, Fintype.card_fin]; push_cast; ring
  have e : apow (gdet h) (-(a : ℂ) / 2) * apow (gdet h) ((Fintype.card C : ℂ) / 2) =
      apow (gdet h) ((Fintype.card A' : ℂ) / 2) := by
    rw [← apow_add, hC]; congr 1; ring
  have eN : apow (gdet N) ((Fintype.card C : ℂ) / 2) * apow (gdet N) (-((Fintype.card C : ℂ) / 2)) = 1 := by
    rw [apow_neg, mul_inv_cancel₀ (apow_ne_zero _ _)]
  have eν : (ν (gdet N) : ℂ) * ((ν (gdet N))⁻¹ : ℂˣ) = 1 := by
    rw [← Units.val_mul, mul_inv_cancel, Units.val_one]
  simp only [MonoidHom.mul_apply, Units.val_mul]
  linear_combination ((β (gdet h) : ℂ) * apow (gdet h) (-(a : ℂ) / 2) * (ν (gdet N) : ℂ) * apow (gdet N) ((Fintype.card C : ℂ) / 2)) * hL +
    ((β (gdet h) : ℂ) * (ν (gdet h) : ℂ) * smallF μ ν (fun Y => Ψ (Y * (invT N).val)) (Y0 k σ * h.val)) *
      (apow (gdet h) (-(a : ℂ) / 2) * apow (gdet h) ((Fintype.card C : ℂ) / 2) * ((ν (gdet N) : ℂ) * ((ν (gdet N))⁻¹ : ℂˣ)) * eN +
        apow (gdet h) (-(a : ℂ) / 2) * apow (gdet h) ((Fintype.card C : ℂ) / 2) * eν + e)
