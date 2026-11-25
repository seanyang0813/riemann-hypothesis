module

public import Development.WeilBound.ThetaLifts.Reductions.WeilPairs.LatRepBS
import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.MemRangeOfOneTmulMem
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHalfAbstract
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeisenbergCMRealLineAddNoPhase
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InertPrimeNotDvdRelIndexSplitPlace
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaFunctionHeisenbergInvariant
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.AdelicCompletionFractionalIdealProperties
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.FiniteAdeleStrongApproximationModNat
public import Development.WeilBound.ThetaLifts.Reductions.WeilPairs.LatRepB_A
public import Development.WeilBound.ThetaLifts.Reductions.WeilPairs.SumFourEqTrace
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init

@[expose] public section

noncomputable section

open scoped TensorProduct Matrix Topology
open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open Formalism.IndefR.DatumF GlobalTheory.FinLatF GlobalTheory.FinWeil

namespace PositivityTheory.ThKW.LatB

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}
variable {nS nT : ℕ} {Λ : Submodule (𝓞 E) (Matrix (Fin nT) (Fin nS) E)}

theorem fin_smul_self (u : XFF F E nS nT) :
    algebraMap (AF F) (AEF F E) (pairA F 0 1) • (u : WOF F E nS nT) = u := by
  have h0 : pairA F 1 0 • (u : WOF F E nS nT) = 0 := GlobalTheory.HeisThetaF.smul_eq_zero_of_map_infPartF (XFF.fin u)
  have h := PositivityTheory.ThKW.LatA.dec (u : WOF F E nS nT)
  rw [h0, zero_add] at h
  rw [algebraMap_smul]
  exact h.symm

theorem int_smul_mem {a : AEF F E} (ha : finPartF F E a ∈ hatO (F := F) E) {u : XFF F E nS nT}
    (hu : u ∈ (latF F E nS nT Λ).toAddSubgroup) : a • u ∈ (latF F E nS nT Λ).toAddSubgroup := by
  show ((a • u : XFF F E nS nT) : WOF F E nS nT) ∈ latOF F E nS nT Λ
  rw [XFF.coe_asmul, ← fin_smul_self u, smul_smul, mul_comm, fin_mul_eq]
  exact liftF_smul_mem ha hu

theorem int_smul_mem_map {JS : Matrix (Fin nS) (Fin nS) E} {JT : Matrix (Fin nT) (Fin nT) E}
    (p : GAF σ JS × GAF σ JT) {a : AEF F E} (ha : finPartF F E a ∈ hatO (F := F) E) {u : XFF F E nS nT}
    (hu : u ∈ ((latF F E nS nT Λ).map (rhoFF σ JS JT p)).toAddSubgroup) :
    a • u ∈ ((latF F E nS nT Λ).map (rhoFF σ JS JT p)).toAddSubgroup := by
  obtain ⟨y, hy, rfl⟩ := hu
  refine ⟨a • y, int_smul_mem ha hy, XFF.ext ?_⟩
  rw [coe_rhoFF, XFF.coe_asmul, XFF.coe_asmul, coe_rhoFF, actOF_smul]

alias mtF_mul := _root_.GlobalTheory.WeilPartsF.mtF_mul

theorem mtF_one {n : ℕ} {J : Matrix (Fin n) (Fin n) E} : mtF σ J 1 = 1 := by
  simp only [mtF, map_one, Units.val_one]


end PositivityTheory.ThKW.LatB

end
