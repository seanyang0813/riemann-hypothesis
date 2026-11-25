module

public import Development.WeilBound.ThetaLifts.Reductions.WeilPairs.OneAddPow
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TwoMulInvOf
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRationalDarbouxHermitianTensorAdeles
public import Development.WeilBound.ThetaLifts.Reductions.WeilPairs.DCdE
public import Formalism.LocalToGlobal.IndefiniteReal.DatumF
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdelicSymplecticTraceFormAlternatingSwap
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsWeilTransportAdelicSchwartzCmExtension
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchurLemmaHeisenbergCommutingThetaOperator
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHalfAbstract
import Development.WeilBound.ThetaLifts.Reductions.WeilPairs.IntegralMul
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

@[expose] public section

open scoped TensorProduct Matrix
open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes MeasureTheory
open GlobalTheory.WeilM GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels
open Formalism.IndefR.DatumF

set_option linter.unusedSectionVars false

noncomputable section

namespace PositivityTheory.ThKW.AdelicSchwartzProperties

open PositivityTheory.ThKW.ModulusFactorDefinition PositivityTheory.ThKW.ModulusDerivativeNormalisation PositivityTheory.ThKW.PhaseFourierInjectivity GlobalTheory.ThetaTransform GlobalTheory.RatDarboux

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E} {nS nT N : ℕ}

def adB (b : Module.Basis (Fin N) F (Matrix (Fin nT) (Fin nS) E)) : Module.Basis (Fin N) (AF F) (WOF F E nS nT) :=
  (b.baseChange (AF F)).map (matBC (AF F))

theorem adB_apply (b : Module.Basis (Fin N) F (Matrix (Fin nT) (Fin nS) E)) (i : Fin N) : adB b i = ratWF (b i) := by
  rw [adB, Module.Basis.map_apply, Module.Basis.baseChange_apply, matBC_one]; rfl

theorem adB_rat (b : Module.Basis (Fin N) F (Matrix (Fin nT) (Fin nS) E)) (x : Matrix (Fin nT) (Fin nS) E) :
    (adB b).equivFun (ratWF x) = GlobalTheory.SWQ.rat (b.equivFun x) := by
  funext i
  have e : (ratWF x : WOF F E nS nT) = matBC (AF F) ((1 : AF F) ⊗ₜ[F] x) := (matBC_one (AF F) x).symm
  rw [Module.Basis.equivFun_apply, adB, Module.Basis.map_repr, LinearEquiv.trans_apply, e, LinearEquiv.symm_apply_apply,
    Module.Basis.baseChange_repr_tmul, Algebra.smul_def, mul_one]
  rfl

theorem aC_map {R S : Type} [CommRing R] [CommRing S] (φ : R →+* S) (n : ℕ) : (aC R n).map φ = aC S n := by
  ext i j
  obtain ⟨p, rfl⟩ := finSumFinEquiv.surjective i
  simp only [Matrix.map_apply, Matrix.submatrix_apply, Equiv.symm_apply_apply, id]
  rcases p with p | p <;> simp [Matrix.one_apply, apply_ite φ]

theorem dCdE_eq (J : Matrix (Fin nT) (Fin nT) E) : dCdE J = aC E nT * ((1 / 2 : E) • J⁻¹) := by
  ext i j
  obtain ⟨p, rfl⟩ := finSumFinEquiv.surjective i
  simp only [dCdE, Matrix.mul_apply, Matrix.submatrix_apply, Equiv.symm_apply_apply, id]
  rcases p with p | p <;> simp [Matrix.one_apply]

theorem dCd_eq (J : Matrix (Fin nT) (Fin nT) E) :
    dCd F J = aC (AF F ⊗[F] E) nT * ((1 / 2 : E) • J⁻¹).map (incAF F E) := by
  rw [dCd, dCdE_eq, Matrix.map_mul, aC_map]

theorem dbl_map (J : Matrix (Fin nT) (Fin nT) E) : (GlobalTheory.WeilSchrodinger.DblTargetF.dblG J).map (incAF F E) =
    (dbl (J.map (incAF F E))).submatrix finSumFinEquiv.symm finSumFinEquiv.symm := by
  ext i j
  obtain ⟨p, rfl⟩ := finSumFinEquiv.surjective i
  obtain ⟨r, rfl⟩ := finSumFinEquiv.surjective j
  simp only [GlobalTheory.WeilSchrodinger.DblTargetF.dblG, dbl, Matrix.map_apply, Matrix.reindex_apply,
    Matrix.submatrix_apply, Equiv.symm_apply_apply]
  rcases p with p | p <;> rcases r with r | r <;> simp

theorem h_CC (JS : Matrix (Fin nS) (Fin nS) E) (J : Matrix (Fin nT) (Fin nT) E) (u u' : WOF F E nS nT) :
    hOF σ JS (GlobalTheory.WeilSchrodinger.DblTargetF.dblG J) (dC (AF F ⊗[F] E) nT * u) (dC (AF F ⊗[F] E) nT * u') = 0 := by
  rw [hOF_eq_trace, Matrix.map_mul, dC_map, Matrix.transpose_mul, dbl_map, Matrix.mul_assoc _ (dC _ nT)ᵀ, C_D]
  simp only [Matrix.mul_assoc]
  rw [← Matrix.mul_assoc (aC _ nT)ᵀ, A_C]
  simp

theorem h_AA (JS : Matrix (Fin nS) (Fin nS) E) (J : Matrix (Fin nT) (Fin nT) E) (u u' : WOF F E nS nT) :
    hOF σ JS (GlobalTheory.WeilSchrodinger.DblTargetF.dblG J) (aC (AF F ⊗[F] E) nT * u) (aC (AF F ⊗[F] E) nT * u') = 0 := by
  rw [hOF_eq_trace, Matrix.map_mul, aC_map, Matrix.transpose_mul, dbl_map, Matrix.mul_assoc _ (aC _ nT)ᵀ, A_D]
  simp only [Matrix.mul_assoc]
  rw [← Matrix.mul_assoc (dC _ nT)ᵀ, C_A]
  simp

theorem C_C {R : Type} [CommRing R] {n : ℕ} : (dC R n)ᵀ * dC R n = (2 : R) • 1 := by
  rw [Matrix.transpose_submatrix, Matrix.submatrix_mul_equiv, diagCols, Matrix.transpose_fromRows,
    Matrix.fromCols_mul_fromRows]
  simp [two_smul]

theorem proj_facts (J : Matrix (Fin nT) (Fin nT) E) (hJ : J.det ≠ 0) :
    ∃ U V : Matrix (Fin nT) (Fin (nT + nT)) E, U * dC E nT = 1 ∧ U * dCdE J = 0 ∧ V * dC E nT = 0 ∧ V * dCdE J = 1 ∧
      dC E nT * U + dCdE J * V = 1 := by
  refine ⟨(1 / 2 : E) • (dC E nT)ᵀ, J * (aC E nT)ᵀ, ?_, ?_, ?_, ?_, ?_⟩
  · rw [Matrix.smul_mul, C_C, smul_smul]; norm_num
  · rw [dCdE_eq, ← Matrix.mul_assoc, Matrix.smul_mul, C_A]; simp
  · rw [Matrix.mul_assoc, A_C, Matrix.mul_zero]
  · rw [← C_D]; exact dC_dual J hJ
  · rw [dCdE_eq, Matrix.mul_assoc, ← Matrix.mul_assoc _ J, Matrix.smul_mul, Matrix.nonsing_inv_mul _ (Ne.isUnit hJ),
      Matrix.smul_mul, Matrix.one_mul, Matrix.mul_smul, Matrix.mul_smul, ← smul_add, CC_add, smul_smul]
    norm_num

theorem rat_mul {a b c : ℕ} (M : Matrix (Fin a) (Fin b) E) (x : Matrix (Fin b) (Fin c) E) :
    (M.map (incAF F E) * (ratWF x : WOF F E c b) : Matrix (Fin a) (Fin c) (AF F ⊗[F] E)) = ratWF (M * x) :=
  Matrix.map_mul.symm

theorem split (JT : Matrix (Fin nT) (Fin nT) E) (hT : IsHermND σ JT) :
    ∃ (d : WOF F E nS (nT + nT) ≃ₗ[AF F] WOF F E nS nT × WOF F E nS nT) (U V : Matrix (Fin nT) (Fin (nT + nT)) E),
      (∀ w, d w = (V.map (incAF F E) * w, U.map (incAF F E) * w)) ∧
      ∀ p, d.symm p = dC (AF F ⊗[F] E) nT * p.2 + dCd F JT * p.1 := by
  obtain ⟨U, V, p1, p2, p3, p4, p5⟩ := proj_facts JT hT.2
  have m := fun {a b : ℕ} {X Y : Matrix (Fin a) (Fin b) E} (h : X = Y) =>
    congrArg (fun M : Matrix (Fin a) (Fin b) E => M.map (incAF F E)) h
  have q1 := m p1
  have q2 := m p2
  have q3 := m p3
  have q4 := m p4
  have q5 := m p5
  simp only [Matrix.map_mul, dC_map, Matrix.map_add _ (map_add (incAF F E)), Matrix.map_one _ (map_zero (incAF F E))
    (map_one (incAF F E)), Matrix.map_zero _ (map_zero (incAF F E))] at q1 q2 q3 q4 q5
  rw [show (dCdE JT).map (incAF F E) = dCd F JT from rfl] at q2 q4 q5
  let d : WOF F E nS (nT + nT) ≃ₗ[AF F] WOF F E nS nT × WOF F E nS nT :=
    { toFun := fun w => (V.map (incAF F E) * w, U.map (incAF F E) * w)
      invFun := fun p => dC (AF F ⊗[F] E) nT * p.2 + dCd F JT * p.1
      map_add' := fun x y => Prod.ext (Matrix.mul_add _ _ _) (Matrix.mul_add _ _ _)
      map_smul' := fun a x => Prod.ext (Matrix.mul_smul _ _ _) (Matrix.mul_smul _ _ _)
      left_inv := fun w => by
        simp only [← Matrix.mul_assoc]
        rw [← Matrix.add_mul, q5, Matrix.one_mul]
      right_inv := fun p => by
        simp only [Matrix.mul_add, ← Matrix.mul_assoc, q1, q2, q3, q4, Matrix.one_mul, Matrix.zero_mul, add_zero, zero_add] }
  exact ⟨d, U, V, fun _ => rfl, fun _ => rfl⟩

theorem modTop (a c : ℕ) : IsModuleTopology (AF F) (WOF F E a c) := by
  have i0 : IsModuleTopology (AF F) (AF F ⊗[F] E) := ⟨rfl⟩
  have := IsModuleTopology.toContinuousAdd (AF F) (AF F ⊗[F] E)
  exact inferInstanceAs (IsModuleTopology (AF F) (Fin c → Fin a → AF F ⊗[F] E))

theorem cont2 {M M' : Type} [AddCommGroup M] [AddCommGroup M'] [Module (AF F) M] [Module (AF F) M'] [TopologicalSpace M]
    [TopologicalSpace M'] (h : IsModuleTopology (AF F) M) (h' : IsModuleTopology (AF F) M') (e : M ≃ₗ[AF F] M') :
    Continuous e ∧ Continuous e.symm := by
  have := IsModuleTopology.toContinuousAdd (AF F) M
  have := IsModuleTopology.toContinuousAdd (AF F) M'
  have := IsModuleTopology.toContinuousSMul (AF F) M
  have := IsModuleTopology.toContinuousSMul (AF F) M'
  exact ⟨IsModuleTopology.continuous_of_linearMap e.toLinearMap, IsModuleTopology.continuous_of_linearMap e.symm.toLinearMap⟩

end PositivityTheory.ThKW.AdelicSchwartzProperties

end
