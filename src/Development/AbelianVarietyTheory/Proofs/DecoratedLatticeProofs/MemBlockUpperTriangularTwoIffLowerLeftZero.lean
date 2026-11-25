module

public import Formalism.LocalToGlobal.Divisibility.DefGroup
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsContinuousPadic
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CardGLFiniteFieldEqPowMulProd
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Ring.IsFormallyReal
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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
import Mathlib.Tactic.Linter.HaveILetI
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
import Mathlib.Topology.Sheaves.Init
public import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.HalfLinearCocycle
public import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.VolumeFlatSection
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.ChainParSucc
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsLevMeas
import Formalism.LocalToGlobal.BesselHermitianTheta.NoncompactGapAtLeastRange
import Formalism.LocalToGlobal.IndefiniteReal.IndefiniteWeightData
import Formalism.LocalToGlobal.IndefiniteReal.LinksDefs
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.T2SpaceIsNonarchimedeanLocalFieldSingleBlock

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum
open scoped TensorProduct InnerProductSpace ComplexConjugate
open GlobalTheory.ChainOnto GlobalTheory.ChainTw
open GlobalTheory.IndefiniteRowSideFullHecke.RestrictedTensorSplitting (SplitProj IsProjAt IsIdemOf LiftsChar rdA grpCo frCo gAt)
open GlobalTheory.IndefiniteRowSideFullHecke.VolumeFlatSection (Blocks parahoric datum)
namespace GlobalTheory.ParabIndex

theorem card_GL_real (κ : Type) [Field κ] [Finite κ] (m : ℕ) :
    (Nat.card (GL (Fin m) κ) : ℝ)
      = (Nat.card κ : ℝ) ^ (m * m) * ∏ i ∈ Finset.Ioc 0 m, (1 - ((Nat.card κ : ℝ) ^ i)⁻¹) := by
  apply _root_.GlobalTheory.SingleBlock.card_GL_real <;> assumption

variable {κ : Type} [Field κ]

theorem val_mk' {ι : Type} [Fintype ι] [DecidableEq ι] (A : Matrix ι ι κ) (h : IsUnit A.det) :
    ((Matrix.GeneralLinearGroup.mk'' A h : GL ι κ) : Matrix ι ι κ) = A := rfl

def toSum {r s : ℕ} (g : GL (Fin (r + s)) κ) : Matrix (Fin r ⊕ Fin s) (Fin r ⊕ Fin s) κ :=
  Matrix.reindex finSumFinEquiv.symm finSumFinEquiv.symm (g : Matrix (Fin (r + s)) (Fin (r + s)) κ)

theorem isUnit_det_toSum {r s : ℕ} (g : GL (Fin (r + s)) κ) : IsUnit (toSum g).det := by
  rw [toSum, Matrix.det_reindex_self]
  exact (Matrix.isUnit_iff_isUnit_det _).1 g.isUnit

theorem mem_blockUpperTriangularTwo_iff_lowerLeft_zero {r s : ℕ} (g : GL (Fin (r + s)) κ) :
    g ∈ Formalism.L2.DIV.blockTri (Formalism.L2.DIV.blk2 r) ↔ (toSum g).toBlocks₂₁ = 0 := by
  rw [Formalism.L2.DIV.mem_blockTri]
  constructor
  · intro h
    ext i j
    simp only [toSum, Matrix.toBlocks₂₁, Matrix.reindex_apply, Matrix.submatrix_apply, Equiv.symm_symm,
      Matrix.of_apply, Matrix.zero_apply]
    apply h
    simp [Formalism.L2.DIV.blk2]
  · intro h i j hij
    obtain ⟨x, rfl⟩ := finSumFinEquiv.surjective i
    obtain ⟨y, rfl⟩ := finSumFinEquiv.surjective j
    rcases x with x | x <;> rcases y with y | y
    · simp [Formalism.L2.DIV.blk2] at hij
    · simp [Formalism.L2.DIV.blk2] at hij
    · have := congrFun (congrFun h x) y
      simpa [toSum, Matrix.toBlocks₂₁] using this
    · simp [Formalism.L2.DIV.blk2] at hij

theorem toSum_eq_fromBlocks {r s : ℕ} {g : GL (Fin (r + s)) κ} (hg : g ∈ Formalism.L2.DIV.blockTri (Formalism.L2.DIV.blk2 r)) :
    toSum g = Matrix.fromBlocks (toSum g).toBlocks₁₁ (toSum g).toBlocks₁₂ 0 (toSum g).toBlocks₂₂ := by
  rw [← (mem_blockUpperTriangularTwo_iff_lowerLeft_zero g).1 hg]; exact (Matrix.fromBlocks_toBlocks _).symm

theorem isUnit_blocks {r s : ℕ} {g : GL (Fin (r + s)) κ} (hg : g ∈ Formalism.L2.DIV.blockTri (Formalism.L2.DIV.blk2 r)) :
    IsUnit ((toSum g).toBlocks₁₁.det * (toSum g).toBlocks₂₂.det) := by
  rw [← Matrix.det_fromBlocks_zero₂₁ _ (toSum g).toBlocks₁₂, ← toSum_eq_fromBlocks hg]
  exact isUnit_det_toSum g

theorem isUnit_det_fromBlocks {r s : ℕ} (A : GL (Fin r) κ) (D : GL (Fin s) κ) (B : Matrix (Fin r) (Fin s) κ) :
    IsUnit (Matrix.reindex finSumFinEquiv finSumFinEquiv
      (Matrix.fromBlocks (A : Matrix (Fin r) (Fin r) κ) B 0 (D : Matrix (Fin s) (Fin s) κ))).det := by
  rw [Matrix.det_reindex_self, Matrix.det_fromBlocks_zero₂₁]
  exact ((Matrix.isUnit_iff_isUnit_det _).1 A.isUnit).mul ((Matrix.isUnit_iff_isUnit_det _).1 D.isUnit)

noncomputable def blockTriangularEquiv (r s : ℕ) :
    Formalism.L2.DIV.blockTri (κ := κ) (Formalism.L2.DIV.blk2 (n := r + s) r) ≃
      GL (Fin r) κ × GL (Fin s) κ × Matrix (Fin r) (Fin s) κ where
  toFun g :=
    (Matrix.GeneralLinearGroup.mk'' _ (isUnit_of_mul_isUnit_left (isUnit_blocks g.2)),
     Matrix.GeneralLinearGroup.mk'' _ (isUnit_of_mul_isUnit_right (isUnit_blocks g.2)),
     (toSum g.1).toBlocks₁₂)
  invFun x := ⟨Matrix.GeneralLinearGroup.mk'' _ (isUnit_det_fromBlocks x.1 x.2.1 x.2.2), by
    rw [mem_blockUpperTriangularTwo_iff_lowerLeft_zero]
    ext i j
    simp [toSum, Matrix.toBlocks₂₁]⟩
  left_inv g := by
    apply Subtype.ext
    apply Units.ext
    show Matrix.reindex finSumFinEquiv finSumFinEquiv _ = _
    have h := toSum_eq_fromBlocks g.2
    change Matrix.reindex finSumFinEquiv finSumFinEquiv
      (Matrix.fromBlocks (toSum g.1).toBlocks₁₁ (toSum g.1).toBlocks₁₂ 0 (toSum g.1).toBlocks₂₂) = _
    rw [← h, toSum]
    simp
  right_inv x := by
    rcases x with ⟨A, D, B⟩
    refine Prod.ext (Units.ext ?_) (Prod.ext (Units.ext ?_) ?_)
    · show (toSum _).toBlocks₁₁ = _
      ext i j; simp [toSum, Matrix.toBlocks₁₁]
    · show (toSum _).toBlocks₂₂ = _
      ext i j; simp [toSum, Matrix.toBlocks₂₂]
    · show (toSum _).toBlocks₁₂ = _
      ext i j; simp [toSum, Matrix.toBlocks₁₂]

theorem natCard_blockUpperTriangularTwo_finiteField (κ : Type) [Field κ] [Finite κ] (r s : ℕ) :
    Nat.card (Formalism.L2.DIV.blockTri (κ := κ) (Formalism.L2.DIV.blk2 (n := r + s) r)) =
      Nat.card (GL (Fin r) κ) * Nat.card (GL (Fin s) κ) * Nat.card κ ^ (r * s) := by
  rw [Nat.card_congr (blockTriangularEquiv r s), Nat.card_prod, Nat.card_prod, mul_assoc]
  congr 2
  show Nat.card (Fin r → Fin s → κ) = _
  rw [Nat.card_fun, Nat.card_fun, Nat.card_fin, Nat.card_fin, ← pow_mul, mul_comm]

end GlobalTheory.ParabIndex

namespace GlobalTheory.ParabIndex

theorem index_maxParabolic_GL_finiteField : ∀ (κ : Type) [Field κ] [Finite κ] (n r s : ℕ), n = r + s → (((Formalism.L2.DIV.blockTri (Formalism.L2.DIV.blk2 r) : Subgroup (GL (Fin n) κ)).index : ℕ) : ℝ) = (Nat.card κ : ℝ) ^ (r * s) * (∏ i ∈ Finset.Ioc 0 n, (1 - ((Nat.card κ : ℝ) ^ i)⁻¹)) / ((∏ i ∈ Finset.Ioc 0 r, (1 - ((Nat.card κ : ℝ) ^ i)⁻¹)) * ∏ i ∈ Finset.Ioc 0 s, (1 - ((Nat.card κ : ℝ) ^ i)⁻¹)) := by
  intro κ _ _ n r s hn
  subst hn
  have hmul := (Formalism.L2.DIV.blockTri (κ := κ) (Formalism.L2.DIV.blk2 (n := r + s) r)).card_mul_index
  rw [natCard_blockUpperTriangularTwo_finiteField] at hmul
  have hR : (((Formalism.L2.DIV.blockTri (κ := κ) (Formalism.L2.DIV.blk2 (n := r + s) r)).index : ℕ) : ℝ) *
      ((Nat.card (GL (Fin r) κ) : ℝ) * (Nat.card (GL (Fin s) κ) : ℝ) * (Nat.card κ : ℝ) ^ (r * s))
      = (Nat.card (GL (Fin (r + s)) κ) : ℝ) := by
    rw [mul_comm]; exact_mod_cast hmul
  have hGr : (Nat.card (GL (Fin r) κ) : ℝ) ≠ 0 := Nat.cast_ne_zero.2 Nat.card_pos.ne'
  have hGs : (Nat.card (GL (Fin s) κ) : ℝ) ≠ 0 := Nat.cast_ne_zero.2 Nat.card_pos.ne'
  rw [card_GL_real] at hGr hGs
  rw [card_GL_real, card_GL_real, card_GL_real] at hR
  have hq : (Nat.card κ : ℝ) ≠ 0 := Nat.cast_ne_zero.2 Nat.card_pos.ne'
  have hPr := right_ne_zero_of_mul hGr
  have hPs := right_ne_zero_of_mul hGs
  rw [eq_div_iff (mul_ne_zero hPr hPs)]
  have key : (r + s) * (r + s) = r * r + s * s + r * s + r * s := by ring
  rw [key, pow_add, pow_add, pow_add] at hR
  have hX : (Nat.card κ : ℝ) ^ (r * r) * (Nat.card κ : ℝ) ^ (s * s) * (Nat.card κ : ℝ) ^ (r * s) ≠ 0 := by
    have := pow_ne_zero (r * r) hq; have := pow_ne_zero (s * s) hq; have := pow_ne_zero (r * s) hq
    positivity
  apply mul_right_cancel₀ hX
  linear_combination hR

end GlobalTheory.ParabIndex
