module

import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FockPolynomialSpaceEqFockImageOfArchLaws
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFockMap
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsArchimedeanAdeleCMPrescribedEmbeddingValue
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FockHeisenbergOperatorISignatureConjApplyOne
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FockVariableMultiplicationMemSpanHeisenbergOpera
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PiTensorMvPolynomialSubmoduleEqTopOfOneMulX
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
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Basify
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init

@[expose] public section

noncomputable section

open scoped TensorProduct Matrix Classical
open NumberField Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.BasicNotions.TH GlobalTheory.WeilM GlobalTheory.AdelicU GlobalTheory.FockAlg GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.RealLift

namespace PositivityTheory.ThKEnd.Comp.PR

section Tensor

variable {ι : Type} [Fintype ι] [DecidableEq ι] {V : ι → Type} [∀ i, AddCommGroup (V i)] [∀ i, Module ℂ (V i)]

theorem atPl_eq' (w : ι) (L : Module.End ℂ (V w)) :
    atPl w L = PiTensorProduct.mapMultilinear ℂ V V (Function.update (fun i => (LinearMap.id : V i →ₗ[ℂ] V i)) w L) := rfl

theorem atPl_add' (w : ι) (L L' : Module.End ℂ (V w)) : atPl w (L + L') = atPl w L + atPl w L' := by
  simp only [atPl_eq', MultilinearMap.map_update_add]

theorem atPl_smul' (w : ι) (c : ℂ) (L : Module.End ℂ (V w)) : atPl w (c • L) = c • atPl w L := by
  simp only [atPl_eq', MultilinearMap.map_update_smul, RingHom.id_apply]

theorem atPl_zero' (w : ι) : atPl w (0 : Module.End ℂ (V w)) = 0 := by
  simp only [atPl_eq', MultilinearMap.map_update_zero]

end Tensor

theorem heisOp_zero {P Q R S : ℕ} : heisOp (P := P) (Q := Q) (R := R) (S := S) 0 = 0 := by
  simp [heisOp]

theorem Jm_transpose' (p q : ℕ) : (Jm p q)ᵀ = Jm p q := by
  simp [Jm, Formalism.UG.Jpq, Matrix.fromBlocks_transpose]

theorem exists_mat_at {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
    {σ : E →ₐ[F] E} (hcm : IsCMExt F E σ) (τ : ∀ w : InfinitePlace F, EmbOver E w)
    {m k : Type} (z : InfinitePlace F → Matrix m k ℂ) :
    ∃ u : Matrix m k (AE F E), At (evI F) u ∧ ∀ w, u.map (piInf (τ w)) = z w := by
  choose a ha using fun i j => _root_.GlobalTheory.PolRangeInf.exists_at_inf_values hcm τ (fun w => z w i j)
  refine ⟨Matrix.of a, fun x hx => ?_, fun w => ?_⟩
  · ext i j
    simp only [Matrix.smul_apply, Matrix.of_apply, Matrix.zero_apply]
    exact (ha i j).1 x hx
  · ext i j
    simp [(ha i j).2 w]

theorem polRange_of (hL : ActsLaws) (_hD : DerEx) (hV : VacLine) : PolRange := by
  apply GlobalTheory.RealLift.PolRangePf.polRange_of <;> assumption

end PositivityTheory.ThKEnd.Comp.PR
