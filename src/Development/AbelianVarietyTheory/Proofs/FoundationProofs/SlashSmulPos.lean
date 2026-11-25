module

public import Development.AbelianVarietyTheory.Definitions.Foundations.IsDCReps
public import Development.AbelianVarietyTheory.Definitions.Foundations.PetEqRelIndexMulPetProd
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeOperatorsOnHalfPlaneFunctionsAgreeExplicit
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeTOperatorExplicitSemisimpleCuspForms
public import Mathlib.NumberTheory.DirichletCharacter.Basic
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeOperatorCommutesDiamond
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeTOperatorExplicitCuspForm
public import Mathlib.NumberTheory.ModularForms.Basic
public import Development.AutomorphicArithmetic.AutomorphicVarieties.IdeleGenerators.HolomorphicIrreducibility.FinDim
public import Mathlib.LinearAlgebra.Eigenspace.Triangularizable
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.SlashToGLSmul
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsCuspidalAtAllCuspsSL2SlashIntMatrix
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Lemma
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
import Mathlib.Algebra.Order.Star.Int
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.TypeStar

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeTqSemisimpleCuspFormsGamma1, Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeUlSemisimpleOnLOldSpace, Development.AbelianVarietyTheory.Proofs.FoundationProofs.CuspFormIsCuspidalAtAllCuspsSL2, Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsCuspFormGammaOneOfNebentypusCuspidal, Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeUlEqNebentypusOldformTraceSubDiag, Development.AbelianVarietyTheory.Proofs.FoundationProofs.NebentypusOldformTraceToGammaZero, Development.AbelianVarietyTheory.Proofs.FoundationProofs.NebentypusSlashIntDiagTwoMatrixLevelRaise, Development.AbelianVarietyTheory.Proofs.FoundationProofs.NebentypusSlashOldformLevelRaisingMatrix, Development.AbelianVarietyTheory.Proofs.FoundationProofs.OldformLevelRaisingSlashSlashNebentypus, Development.AbelianVarietyTheory.Proofs.FoundationProofs.OldformTraceToGammaOneEqHeckeUlLevelRaising, Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeUlSqSubMemOldformsGamma1, Development.AbelianVarietyTheory.Proofs.FoundationProofs.SlashSmulPos

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeTqSemisimpleCuspFormsGamma1 =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeTqSemisimpleCuspFormsGamma1", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.IsDCReps\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.PetEqRelIndexMulPetProd\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeOperatorsOnHalfPlaneFunctionsAgreeExplicit\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeTOperatorExplicitSemisimpleCuspForms\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.HeckeFamilyMatrices Polynomial UpperHalfPlane
open scoped MatrixGroups ModularForm
open scoped Manifold

namespace GlobalTheory.HeckeFamilyMatrices.SemisimpleLevelOne

lemma lev_one (N : ℕ) : GlobalTheory.Hk.lev N 1 = CongruenceSubgroup.Gamma1 N := by
  ext γ
  simp only [GlobalTheory.Hk.lev, Subgroup.mem_inf, CongruenceSubgroup.Gamma0_mem, and_iff_left_iff_imp]
  intro _
  exact Subsingleton.elim _ _

theorem tq_semisimple : ∀ (N k q : ℕ) (σ : SL(2, ℤ)), 5 ≤ N → 3 ≤ k → q.Prime → ¬ q ∣ N →
    IsDiam N 1 (q : ZMod N) σ →
    ∀ (f : CuspForm (CongruenceSubgroup.Gamma1 N) (k : ℤ)) (c : ℂ) (n : ℕ),
      (fun F => TqF (k : ℤ) q σ F - c • F)^[n] ⇑f = 0 → TqF (k : ℤ) q σ ⇑f = c • ⇑f := by
  intro N k q σ hN _ hq hqN hσ f c n h
  obtain ⟨-, -, hT, hD, -⟩ := GlobalTheory.SlashUpperTriangularMatrices.bridge
  have hT' : TqF (k : ℤ) q σ = GlobalTheory.Hk.heckeT (k : ℤ) q σ := funext fun F => hT _ _ _ F hq.pos
  have hσ' : GlobalTheory.Hk.IsDia N 1 (q : ℤ) σ := (hD N 1 (q : ℤ) σ).1 (by simpa using hσ)
  rw [hT'] at h ⊢
  let g : CuspForm (GlobalTheory.Hk.lev N 1) (k : ℤ) := f.copy ⇑f rfl (by rw [lev_one])
  exact _root_.GlobalTheory.Hk.Semisimple.heckeT_semisimple N 1 q (k : ℤ) σ c n (by omega) one_pos hq (by simpa using hqN) hσ' g h

end GlobalTheory.HeckeFamilyMatrices.SemisimpleLevelOne
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeTqSemisimpleCuspFormsGamma1 =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeUlSemisimpleOnLOldSpace =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeUlSemisimpleOnLOldSpace", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.IsDCReps\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.PetEqRelIndexMulPetProd\npublic import Mathlib.NumberTheory.DirichletCharacter.Basic\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeOperatorCommutesDiamond\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeOperatorsOnHalfPlaneFunctionsAgreeExplicit\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeTOperatorExplicitCuspForm\npublic import Mathlib.NumberTheory.ModularForms.Basic\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeTqSemisimpleCuspFormsGamma1\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.IdeleGenerators.HolomorphicIrreducibility.FinDim\npublic import Mathlib.LinearAlgebra.Eigenspace.Triangularizable\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.HeckeFamilyMatrices Polynomial UpperHalfPlane
open scoped MatrixGroups ModularForm
open scoped Manifold

namespace GlobalTheory.OldSpace

theorem toGL_mat (γ : SL(2, ℤ)) : toGL (mat γ) = Matrix.SpecialLinearGroup.mapGL ℝ γ := by
  have h : (mat γ).det ≠ 0 := by simp [mat]
  unfold toGL
  rw [dite_eq_right h]
  ext i j
  simp [mat, Matrix.SpecialLinearGroup.mapGL]

theorem det_toGL (A : Matrix (Fin 2) (Fin 2) ℤ) (hA : A.det ≠ 0) :
    ((toGL A).det : ℝ) = (A.det : ℝ) := by
  unfold toGL
  rw [dite_eq_right hA]
  simp [Matrix.det_fin_two]

theorem sigma_toGL (A : Matrix (Fin 2) (Fin 2) ℤ) (hA : 0 < A.det) (c : ℂ) : σ (toGL A) c = c := by
  have h : (0 : ℝ) < ((toGL A).det : ℝ) := by
    rw [det_toGL A hA.ne']; exact_mod_cast hA
  have h' : 0 < (↑(toGL A) : Matrix (Fin 2) (Fin 2) ℝ).det := by simpa using h
  simp [UpperHalfPlane.σ, h']

theorem slash_smul_toGL (k : ℤ) (A : Matrix (Fin 2) (Fin 2) ℤ) (hA : 0 < A.det) (c : ℂ) (f : ℍ → ℂ) :
    (c • f) ∣[k] toGL A = c • (f ∣[k] toGL A) := by
  rw [ModularForm.smul_slash, sigma_toGL A hA]

end GlobalTheory.OldSpace

namespace GlobalTheory.OldSpace

theorem toGL_apply (A : Matrix (Fin 2) (Fin 2) ℤ) (hA : A.det ≠ 0) (i j : Fin 2) :
    (↑(toGL A) : Matrix (Fin 2) (Fin 2) ℝ) i j = (A i j : ℝ) := by
  unfold toGL
  rw [dite_eq_right hA]
  simp

theorem toGL_smul_coe (A : Matrix (Fin 2) (Fin 2) ℤ) (hA : 0 < A.det) (τ : ℍ) :
    ((toGL A • τ : ℍ) : ℂ) = ((A 0 0 : ℂ) * τ + A 0 1) / ((A 1 0 : ℂ) * τ + A 1 1) := by
  have h : 0 < ((toGL A).det : ℝ) := by rw [det_toGL A hA.ne']; exact_mod_cast hA
  rw [UpperHalfPlane.coe_smul_of_det_pos h]
  simp [UpperHalfPlane.num, UpperHalfPlane.denom, toGL_apply A hA.ne']

theorem slash_toGL_apply (k : ℤ) (A : Matrix (Fin 2) (Fin 2) ℤ) (hA : 0 < A.det) (f : ℍ → ℂ) (τ : ℍ) :
    (f ∣[k] toGL A) τ = f (toGL A • τ) * ((A.det : ℝ) : ℂ) ^ (k - 1) * ((A 1 0 : ℂ) * τ + A 1 1) ^ (-k) := by
  rw [ModularForm.slash_apply, sigma_toGL A hA, det_toGL A hA.ne']
  have h0 : (0 : ℝ) ≤ (A.det : ℝ) := by exact_mod_cast hA.le
  rw [abs_of_nonneg h0]
  simp [UpperHalfPlane.denom, toGL_apply A hA.ne']

theorem slash_scalar (k : ℤ) (l : ℕ) (hl : 0 < l) (f : ℍ → ℂ) :
    f ∣[k] toGL !![(l : ℤ), 0; 0, (l : ℤ)] = ((l : ℂ) ^ (k - 2)) • f := by
  have hd : 0 < (!![(l : ℤ), 0; 0, (l : ℤ)]).det := by
    rw [Matrix.det_fin_two_of]
    have : (0 : ℤ) < l := by exact_mod_cast hl
    nlinarith
  have hl' : (l : ℂ) ≠ 0 := by exact_mod_cast hl.ne'
  funext τ
  rw [slash_toGL_apply k _ hd]
  have hτ : toGL !![(l : ℤ), 0; 0, (l : ℤ)] • τ = τ := by
    ext1
    rw [toGL_smul_coe _ hd]
    simp
    field_simp
  rw [hτ, Matrix.det_fin_two_of]
  simp only [Matrix.of_apply, Matrix.cons_val', Matrix.cons_val_zero, Matrix.cons_val_one,
    Matrix.empty_val', Matrix.cons_val_fin_one, Pi.smul_apply, smul_eq_mul]
  push_cast
  simp only [zero_mul, zero_add, sub_zero]
  have e2 : (l : ℂ) ^ (2 * (k - 1)) * (l : ℂ) ^ (-k) = (l : ℂ) ^ (k - 2) := by
    rw [← zpow_add₀ hl']; congr 1; ring
  rw [show ((l : ℂ) * l) = (l : ℂ) ^ (2 : ℤ) by rw [zpow_two], ← zpow_mul, mul_assoc, e2, mul_comm]

theorem slash_T_cusp (N : ℕ) (k : ℤ) (f : CuspForm (CongruenceSubgroup.Gamma1 N) k) (j : ℤ) :
    ⇑f ∣[k] toGL !![1, j; 0, 1] = ⇑f := by
  have hm : ModularGroup.T ^ j ∈ CongruenceSubgroup.Gamma1 N := by
    rw [CongruenceSubgroup.Gamma1_mem, ModularGroup.coe_T_zpow]
    simp
  have e : toGL !![1, j; 0, 1] = Matrix.SpecialLinearGroup.mapGL ℝ (ModularGroup.T ^ j) := by
    rw [← toGL_mat, mat, ModularGroup.coe_T_zpow]
  rw [e]
  exact SlashInvariantFormClass.slash_action_eq f _ (Subgroup.mem_map_of_mem _ hm)

end GlobalTheory.OldSpace

namespace GlobalTheory.OldSpace

theorem det_dg (l : ℕ) : (dg (l : ℤ) 1).det = l := by simp [dg, Matrix.det_fin_two_of]

theorem det_ulFam (l : ℕ) (j : Fin l) : (ulFam l j).det = l := by simp [ulFam, Matrix.det_fin_two_of]

theorem ul_slash_dg (N : ℕ) (k : ℤ) (l : ℕ) (hl : 0 < l) (f : CuspForm (CongruenceSubgroup.Gamma1 N) k) :
    UlF k l (⇑f ∣[k] toGL (dg l 1)) = ((l : ℂ) ^ (k - 1)) • ⇑f := by
  have hl0 : (0 : ℤ) < l := by exact_mod_cast hl
  have hl' : (l : ℂ) ≠ 0 := by exact_mod_cast hl.ne'
  unfold UlF hkF
  have key : ∀ j : Fin l, (⇑f ∣[k] toGL (dg l 1)) ∣[k] toGL (ulFam l j) = ((l : ℂ) ^ (k - 2)) • ⇑f := by
    intro j
    have hD : (dg (l : ℤ) 1).det ≠ 0 := by rw [det_dg]; omega
    have hU : (ulFam l j).det ≠ 0 := by rw [det_ulFam]; omega
    have hS : (!![(l : ℤ), 0; 0, (l : ℤ)]).det ≠ 0 := by
      rw [Matrix.det_fin_two_of]; nlinarith
    have hT : (!![1, (j : ℤ); 0, 1]).det ≠ 0 := by rw [Matrix.det_fin_two_of]; norm_num
    rw [← SlashAction.slash_mul, ← _root_.GlobalTheory.SlashUpperTriangularMatrices.toGL_mul _ _ hD hU]
    have e : dg (l : ℤ) 1 * ulFam l j = !![(l : ℤ), 0; 0, (l : ℤ)] * !![1, (j : ℤ); 0, 1] := by
      ext a b; fin_cases a <;> fin_cases b <;> simp [dg, ulFam, Matrix.mul_apply, Fin.sum_univ_two]
    rw [e, _root_.GlobalTheory.SlashUpperTriangularMatrices.toGL_mul _ _ hS hT, SlashAction.slash_mul, slash_scalar k l hl,
      slash_smul_toGL k _ (by rw [Matrix.det_fin_two_of]; norm_num), slash_T_cusp]
  rw [Finset.sum_congr rfl (fun j _ => key j), Finset.sum_const, Finset.card_univ, Fintype.card_fin,
    ← Nat.cast_smul_eq_nsmul ℂ, smul_smul]
  congr 1
  rw [show k - 1 = (k - 2) + 1 by ring, zpow_add_one₀ hl', mul_comm]

theorem tqFam_castSucc (l : ℕ) (s : SL(2, ℤ)) (i : Fin l) : tqFam l s (Fin.castSucc i) = ulFam l i := by
  simp [tqFam, ulFam]

theorem tqFam_last (l : ℕ) (s : SL(2, ℤ)) : tqFam l s (Fin.last l) = mat s * dg (l : ℤ) 1 := by
  simp [tqFam]

theorem tq_eq (N : ℕ) (k : ℤ) (l : ℕ) (hl : 0 < l) (s : SL(2, ℤ)) (χ : DirichletCharacter ℂ N)
    (hs : IsDiam N 1 (l : ZMod N) s) (f : ℍ → ℂ)
    (hf : ∀ γ : SL(2, ℤ), γ ∈ CongruenceSubgroup.Gamma0 N → f ∣[k] γ = χ ((mat γ 1 1 : ℤ) : ZMod N) • f) :
    TqF k l s f = UlF k l f + χ (l : ZMod N) • (f ∣[k] toGL (dg l 1)) := by
  have hl0 : (0 : ℤ) < l := by exact_mod_cast hl
  show (∑ i, f ∣[k] toGL (tqFam l s i)) = (∑ j, f ∣[k] toGL (ulFam l j)) + _
  rw [Fin.sum_univ_castSucc]
  simp only [tqFam_castSucc]
  congr 1
  · have e := tqFam_last l s
    have hs1 : s ∈ CongruenceSubgroup.Gamma0 N := by simpa using hs.1
    have hsd : (mat s).det ≠ 0 := by simp [mat]
    have hD : (dg (l : ℤ) 1).det ≠ 0 := by rw [det_dg]; omega
    rw [e, _root_.GlobalTheory.SlashUpperTriangularMatrices.toGL_mul _ _ hsd hD, SlashAction.slash_mul, toGL_mat]
    have h2 : f ∣[k] (Matrix.SpecialLinearGroup.mapGL ℝ s) = χ (l : ZMod N) • f := by
      have := hf s hs1
      rw [hs.2] at this
      exact this
    rw [h2, slash_smul_toGL k _ (by rw [det_dg]; exact hl0)]

theorem exists_diam (N l : ℕ) (h : Nat.Coprime l N) : ∃ s : SL(2, ℤ), IsDiam N 1 (l : ZMod N) s := by
  have hb := Nat.gcd_eq_gcd_ab l N
  rw [h] at hb
  have hdet : (!![Nat.gcdA l N, -Nat.gcdB l N; (N : ℤ), (l : ℤ)]).det = 1 := by
    rw [Matrix.det_fin_two_of]; push_cast at hb; linarith
  let s : SL(2, ℤ) := ⟨!![Nat.gcdA l N, -Nat.gcdB l N; (N : ℤ), (l : ℤ)], hdet⟩
  refine ⟨s, ?_, ?_⟩
  · rw [mul_one, CongruenceSubgroup.Gamma0_mem]; simp [s]
  · simp [mat, s]

noncomputable def uL (k : ℤ) (l : ℕ) : Module.End ℂ (ℍ → ℂ) where
  toFun := UlF k l
  map_add' f g := by
    unfold UlF hkF
    simp [SlashAction.add_slash, Finset.sum_add_distrib]
  map_smul' c f := by
    unfold UlF hkF
    rw [Finset.smul_sum]
    refine Finset.sum_congr rfl fun j _ => ?_
    by_cases hl : l = 0
    · subst hl; exact j.elim0
    exact slash_smul_toGL k _ (by rw [det_ulFam]; exact_mod_cast Nat.pos_of_ne_zero hl) c f

noncomputable def vL (k : ℤ) (l : ℕ) (hl : 0 < l) : Module.End ℂ (ℍ → ℂ) where
  toFun f := f ∣[k] toGL (dg l 1)
  map_add' f g := SlashAction.add_slash _ _ _ _
  map_smul' c f := slash_smul_toGL k _ (by rw [det_dg]; exact_mod_cast hl) c f

end GlobalTheory.OldSpace

namespace GlobalTheory.OldSpace

def HasChi (N : ℕ) (k : ℤ) (χ : DirichletCharacter ℂ N) (f : ℍ → ℂ) : Prop :=
  ∀ γ : SL(2, ℤ), γ ∈ CongruenceSubgroup.Gamma0 N → f ∣[k] γ = χ ((mat γ 1 1 : ℤ) : ZMod N) • f

theorem hasChi_zero (N : ℕ) (k : ℤ) (χ : DirichletCharacter ℂ N) : HasChi N k χ 0 := by
  intro γ _; simp

theorem hasChi_add {N : ℕ} {k : ℤ} {χ : DirichletCharacter ℂ N} {f g : ℍ → ℂ} (hf : HasChi N k χ f)
    (hg : HasChi N k χ g) : HasChi N k χ (f + g) := by
  intro γ hγ; rw [SlashAction.add_slash, hf γ hγ, hg γ hγ, smul_add]

theorem hasChi_smul {N : ℕ} {k : ℤ} {χ : DirichletCharacter ℂ N} {f : ℍ → ℂ} (c : ℂ) (hf : HasChi N k χ f) :
    HasChi N k χ (c • f) := by
  intro γ hγ; rw [ModularForm.SL_smul_slash, hf γ hγ, smul_comm]

noncomputable def coeL (N : ℕ) (k : ℤ) : CuspForm (CongruenceSubgroup.Gamma1 N) k →ₗ[ℂ] (ℍ → ℂ) where
  toFun f := ⇑f
  map_add' f g := rfl
  map_smul' c f := rfl

def chiSpace (N : ℕ) (k : ℤ) (χ : DirichletCharacter ℂ N) : Submodule ℂ (ℍ → ℂ) where
  carrier := {G | ∃ f : CuspForm (CongruenceSubgroup.Gamma1 N) k, ⇑f = G ∧ HasChi N k χ G}
  add_mem' := by
    rintro _ _ ⟨f, rfl, hf⟩ ⟨g, rfl, hg⟩
    exact ⟨f + g, rfl, hasChi_add hf hg⟩
  zero_mem' := ⟨0, rfl, hasChi_zero N k χ⟩
  smul_mem' := by
    rintro c _ ⟨f, rfl, hf⟩
    exact ⟨c • f, rfl, hasChi_smul c hf⟩

theorem finiteDimensional_chiSpace (N : ℕ) [NeZero N] (k : ℕ) (χ : DirichletCharacter ℂ N) :
    FiniteDimensional ℂ (chiSpace N k χ) := by
  haveI := (UpperTheory.V.Sd.finDim N k).1
  have hle : chiSpace N k χ ≤ LinearMap.range (coeL N k) := by
    rintro _ ⟨f, rfl, _⟩
    exact ⟨f, rfl⟩
  exact Submodule.finiteDimensional_of_le hle

def Good (u : Module.End ℂ (ℍ → ℂ)) (α : ℂ) (G : ℍ → ℂ) : Prop :=
  ∃ g : ℂ[X], g.eval α ≠ 0 ∧ aeval u ((X - C α) * g) G = 0

theorem good_zero (u : Module.End ℂ (ℍ → ℂ)) (α : ℂ) : Good u α 0 := ⟨1, by simp, by simp⟩

theorem good_add {u : Module.End ℂ (ℍ → ℂ)} {α : ℂ} {G H : ℍ → ℂ} (hG : Good u α G) (hH : Good u α H) :
    Good u α (G + H) := by
  obtain ⟨g, hg, hG⟩ := hG
  obtain ⟨h, hh, hH⟩ := hH
  refine ⟨g * h, by simp [hg, hh], ?_⟩
  have e1 : (X - C α) * (g * h) = h * ((X - C α) * g) := by ring
  have e2 : (X - C α) * (g * h) = g * ((X - C α) * h) := by ring
  have hG' : aeval u ((X - C α) * (g * h)) G = 0 := by
    rw [e1, map_mul, Module.End.mul_apply, hG, map_zero]
  have hH' : aeval u ((X - C α) * (g * h)) H = 0 := by
    rw [e2, map_mul, Module.End.mul_apply, hH, map_zero]
  rw [map_add (f := _), hG', hH', add_zero]

theorem good_of_quad (u : Module.End ℂ (ℍ → ℂ)) (α μ c : ℂ) (hαc : α ^ 2 ≠ c) (G : ℍ → ℂ)
    (h : aeval u (X ^ 2 - C μ * X + C c) G = 0) : Good u α G := by
  by_cases hq : α ^ 2 - μ * α + c = 0
  · have hα : α ≠ 0 := by
      rintro rfl; apply hαc; linear_combination (-1 : ℂ) * hq
    refine ⟨X - C (c / α), ?_, ?_⟩
    · simp only [eval_sub, eval_X, eval_C]
      intro h0
      apply hαc
      field_simp at h0
      linear_combination h0
    · have hμ : μ = α + c / α := by field_simp; linear_combination (-1 : ℂ) * hq
      have e : (X - C α) * (X - C (c / α)) = X ^ 2 - C μ * X + C c := by
        rw [hμ, C_add]
        have : C c = C α * C (c / α) := by rw [← C_mul]; congr 1; field_simp
        rw [this]; ring
      rw [e]; exact h
  · refine ⟨X ^ 2 - C μ * X + C c, ?_, ?_⟩
    · simp only [eval_add, eval_sub, eval_pow, eval_X, eval_mul, eval_C]
      intro h0; apply hq; linear_combination h0
    · rw [map_mul, Module.End.mul_apply, h, map_zero]

theorem eigen_of_good (u : Module.End ℂ (ℍ → ℂ)) (α : ℂ) (G : ℍ → ℂ) (hG : Good u α G) (n : ℕ)
    (h : (fun F => u F - α • F)^[n] G = 0) : u G = α • G := by
  obtain ⟨g, hg, hk⟩ := hG
  have hcop : IsCoprime (X - C α) g := by
    rw [(Polynomial.irreducible_X_sub_C α).coprime_iff_not_dvd, Polynomial.dvd_iff_isRoot]
    exact hg
  obtain ⟨s, t, hst⟩ := hcop.pow_left (m := n)
  have hlin : aeval u (X - C α) = u - α • 1 := by
    simp [Algebra.algebraMap_eq_smul_one]
  have hit : aeval u ((X - C α) ^ n) G = 0 := by
    rw [map_pow, hlin, Module.End.pow_apply]
    convert h using 2
  have key : X - C α = s * ((X - C α) * (X - C α) ^ n) + t * ((X - C α) * g) := by
    linear_combination (-(X - C α)) * hst
  have h1 : aeval u (X - C α) G = 0 := by
    rw [key, map_add (f := _), map_mul, map_mul, LinearMap.add_apply, Module.End.mul_apply, Module.End.mul_apply,
      map_mul, Module.End.mul_apply, hit, map_zero, map_zero, hk, map_zero, add_zero]
  rw [hlin] at h1
  simpa [sub_eq_zero] using h1

end GlobalTheory.OldSpace

namespace GlobalTheory.OldSpace

theorem lev_one (N : ℕ) : GlobalTheory.Hk.lev N 1 = CongruenceSubgroup.Gamma1 N := by
  unfold GlobalTheory.Hk.lev
  refine inf_eq_left.2 fun γ _ => ?_
  rw [CongruenceSubgroup.Gamma0_mem]
  exact Subsingleton.elim _ _

theorem hecke_stab : ∀ (N l k : ℕ) (s : SL(2, ℤ)), 5 ≤ N → l.Prime → ¬ l ∣ N → 3 ≤ k → IsDiam N 1 (l : ZMod N) s →
  ∀ (χ : DirichletCharacter ℂ N) (f : CuspForm (CongruenceSubgroup.Gamma1 N) (k : ℤ)),
    (∀ γ : SL(2, ℤ), γ ∈ CongruenceSubgroup.Gamma0 N → ⇑f ∣[(k : ℤ)] γ = χ ((mat γ 1 1 : ℤ) : ZMod N) • ⇑f) →
    ∃ g : CuspForm (CongruenceSubgroup.Gamma1 N) (k : ℤ),
      (∀ γ : SL(2, ℤ), γ ∈ CongruenceSubgroup.Gamma0 N → ⇑g ∣[(k : ℤ)] γ = χ ((mat γ 1 1 : ℤ) : ZMod N) • ⇑g) ∧
      ⇑g = TqF (k : ℤ) l s ⇑f := by
  intro N l k s hN hl hlN _ hs χ f hf
  obtain ⟨-, -, hT, hD, -⟩ := GlobalTheory.SlashUpperTriangularMatrices.bridge
  have hN0 : 0 < N := by omega
  have hlN' : ¬ l ∣ N * 1 := by rwa [mul_one]
  have hs' : GlobalTheory.Hk.IsDia N 1 l s := (hD N 1 l s).1 (by simpa using hs)
  have h1 := _root_.GlobalTheory.Hk.heckeT_cuspForm N 1 l k s hN0 hl hlN' hs'
  have h2 := fun (d : ℤ) (ρ : SL(2, ℤ)) (hρ : GlobalTheory.Hk.IsDia N 1 d ρ) =>
    _root_.GlobalTheory.Hk.heckeT_dia_comm N 1 l k d s ρ hN0 hl hlN' hs' hρ
  rw [lev_one] at h1 h2
  obtain ⟨g, hg⟩ := h1 f
  rw [← hT _ _ _ _ hl.pos] at hg
  refine ⟨g, fun γ hγ => ?_, hg⟩
  have hγ' : GlobalTheory.Hk.IsDia N 1 (mat γ 1 1) γ := (hD N 1 _ γ).1 ⟨by rwa [mul_one], rfl⟩
  have h3 : GlobalTheory.Hk.heckeT k l s (⇑f ∣[(k : ℤ)] γ) = GlobalTheory.Hk.heckeT k l s ⇑f ∣[(k : ℤ)] γ :=
    h2 _ γ hγ' (ModularFormClass.modularForm f)
  rw [← hT _ _ _ _ hl.pos, ← hT _ _ _ _ hl.pos, hf γ hγ] at h3
  rw [hg, ← h3, tq_eq N k l hl.pos s χ hs _ (hasChi_smul _ hf), tq_eq N k l hl.pos s χ hs _ hf]
  change uL k l (_ • ⇑f) + χ (l : ZMod N) • vL k l hl.pos (_ • ⇑f) =
    _ • (uL k l ⇑f + χ (l : ZMod N) • vL k l hl.pos ⇑f)
  rw [map_smul, map_smul]
  module

end GlobalTheory.OldSpace

namespace GlobalTheory.OldSpace

theorem quad_apply (u : Module.End ℂ (ℍ → ℂ)) (μ c : ℂ) (G : ℍ → ℂ) :
    aeval u (X ^ 2 - C μ * X + C c) G = u (u G) - μ • u G + c • G := by
  simp [pow_two, Algebra.algebraMap_eq_smul_one]

theorem ul_oldSpace : ∀ (N l k : ℕ), 5 ≤ N → l.Prime → ¬ l ∣ N → 3 ≤ k → ∀ (χ : DirichletCharacter ℂ N) (α : ℂ), α ^ 2 ≠ χ l * (l : ℂ) ^ (k - 1) →
  ∀ f₁ f₂ : CuspForm (CongruenceSubgroup.Gamma1 N) (k : ℤ),
    (∀ γ : SL(2, ℤ), γ ∈ CongruenceSubgroup.Gamma0 N → ⇑f₁ ∣[(k : ℤ)] γ = χ ((mat γ 1 1 : ℤ) : ZMod N) • ⇑f₁) →
    (∀ γ : SL(2, ℤ), γ ∈ CongruenceSubgroup.Gamma0 N → ⇑f₂ ∣[(k : ℤ)] γ = χ ((mat γ 1 1 : ℤ) : ZMod N) • ⇑f₂) →
    (∃ g₁ g₂ : CuspForm (CongruenceSubgroup.Gamma1 N) (k : ℤ),
      (∀ γ : SL(2, ℤ), γ ∈ CongruenceSubgroup.Gamma0 N → ⇑g₁ ∣[(k : ℤ)] γ = χ ((mat γ 1 1 : ℤ) : ZMod N) • ⇑g₁) ∧
      (∀ γ : SL(2, ℤ), γ ∈ CongruenceSubgroup.Gamma0 N → ⇑g₂ ∣[(k : ℤ)] γ = χ ((mat γ 1 1 : ℤ) : ZMod N) • ⇑g₂) ∧
      UlF (k : ℤ) l (⇑f₁ + ⇑f₂ ∣[(k : ℤ)] toGL (dg l 1)) = ⇑g₁ + ⇑g₂ ∣[(k : ℤ)] toGL (dg l 1)) ∧
    ∀ n : ℕ, (fun F => UlF (k : ℤ) l F - α • F)^[n] (⇑f₁ + ⇑f₂ ∣[(k : ℤ)] toGL (dg l 1)) = 0 →
      UlF (k : ℤ) l (⇑f₁ + ⇑f₂ ∣[(k : ℤ)] toGL (dg l 1)) = α • (⇑f₁ + ⇑f₂ ∣[(k : ℤ)] toGL (dg l 1)) := by
  intro N l k hN hl hlN hk χ α hαc f₁ f₂ hf₁ hf₂
  haveI : NeZero N := ⟨by omega⟩
  have hl0 : 0 < l := hl.pos
  obtain ⟨s, hs⟩ := exists_diam N l ((Nat.Prime.coprime_iff_not_dvd hl).2 hlN)
  have stab := hecke_stab N l k s hN hl hlN hk hs χ
  set W := chiSpace N (k : ℤ) χ with hWdef
  set u := uL (k : ℤ) l with hudef
  set v := vL (k : ℤ) l hl0 with hvdef
  set T' : Module.End ℂ (ℍ → ℂ) := u + χ (l : ZMod N) • v with hT'def
  have hT'eq : ∀ G ∈ W, T' G = TqF (k : ℤ) l s G := by
    rintro _ ⟨f, rfl, hf⟩
    rw [tq_eq N (k : ℤ) l hl0 s χ hs _ hf]
    rfl
  have hTW : ∀ G ∈ W, T' G ∈ W := by
    rintro _ ⟨f, rfl, hf⟩
    obtain ⟨g, hg, hgeq⟩ := stab f hf
    rw [hT'eq _ ⟨f, rfl, hf⟩, ← hgeq]
    exact ⟨g, rfl, hg⟩
  let T0 : Module.End ℂ W := T'.restrict hTW
  have hT0 : ∀ x : W, ((T0 x : W) : ℍ → ℂ) = TqF (k : ℤ) l s (x : ℍ → ℂ) := by
    intro x
    rw [← hT'eq _ x.2]
    rfl
  haveI : FiniteDimensional ℂ W := finiteDimensional_chiSpace N k χ
  have hiter : ∀ (μ : ℂ) (n : ℕ) (x : W),
      ((((T0 - μ • 1) ^ n) x : W) : ℍ → ℂ) = (fun F => TqF (k : ℤ) l s F - μ • F)^[n] (x : ℍ → ℂ) := by
    intro μ n
    induction n with
    | zero => intro x; simp
    | succ n ih =>
      intro x
      rw [pow_succ', Module.End.mul_apply, Function.iterate_succ_apply', ← ih]
      simp only [LinearMap.sub_apply, LinearMap.smul_apply, Module.End.one_apply, Submodule.coe_sub,
        Submodule.coe_smul, hT0]
  have hss : ∀ μ, T0.maxGenEigenspace μ ≤ T0.eigenspace μ := by
    intro μ x hx
    rw [Module.End.mem_maxGenEigenspace] at hx
    obtain ⟨n, hn⟩ := hx
    rw [Module.End.mem_eigenspace_iff]
    obtain ⟨f, hfx, hf⟩ := x.2
    have h1 : (fun F => TqF (k : ℤ) l s F - μ • F)^[n] ⇑f = 0 := by
      rw [hfx, ← hiter, hn]; rfl
    have h2 := _root_.GlobalTheory.HeckeFamilyMatrices.SemisimpleLevelOne.tq_semisimple N k l s hN hk hl hlN hs f μ n h1
    apply Subtype.ext
    rw [hT0, Submodule.coe_smul, ← hfx, h2]
  have htop : ⨆ μ, T0.eigenspace μ = ⊤ :=
    eq_top_iff.2 ((Module.End.iSup_maxGenEigenspace_eq_top T0).ge.trans (iSup_mono hss))
  set Lc : ℂ := (l : ℂ) ^ ((k : ℤ) - 1) with hLc
  have hcL : χ (l : ZMod N) * (l : ℂ) ^ (k - 1) = χ (l : ZMod N) * Lc := by
    rw [hLc, show ((k : ℤ) - 1) = ((k - 1 : ℕ) : ℤ) by omega, zpow_natCast]
  have hαc' : α ^ 2 ≠ χ (l : ZMod N) * Lc := by rw [← hcL]; exact hαc
  have huv : ∀ G ∈ W, u (v G) = Lc • G := by
    rintro _ ⟨f, rfl, _⟩
    exact ul_slash_dg N (k : ℤ) l hl0 f
  have hgoodW : ∀ x : W, Good u α (x : ℍ → ℂ) ∧ Good u α (v x) := by
    intro x
    have hx : x ∈ ⨆ μ, T0.eigenspace μ := by rw [htop]; trivial
    refine Submodule.iSup_induction (fun μ => T0.eigenspace μ)
      (motive := fun y : W => Good u α (y : ℍ → ℂ) ∧ Good u α (v y)) hx ?_ ?_ ?_
    · intro μ y hy
      rw [Module.End.mem_eigenspace_iff] at hy
      have hy' : u y + χ (l : ZMod N) • v y = μ • (y : ℍ → ℂ) := by
        have := congrArg Subtype.val hy
        exact this
      have hvy := huv _ y.2
      have hu1 : u y = μ • (y : ℍ → ℂ) - χ (l : ZMod N) • v y := by rw [← hy']; abel
      constructor
      · apply good_of_quad u α μ _ hαc'
        rw [quad_apply, hu1, map_sub, map_smul, map_smul, hvy, hu1]
        module
      · apply good_of_quad u α μ _ hαc'
        rw [quad_apply, hvy, map_smul, hu1]
        module
    · simp only [ZeroMemClass.coe_zero, map_zero]
      exact ⟨good_zero u α, good_zero u α⟩
    · intro a b ha hb
      simp only [Submodule.coe_add, map_add (f := _)]
      exact ⟨good_add ha.1 hb.1, good_add ha.2 hb.2⟩
  refine ⟨?_, ?_⟩
  · obtain ⟨g, hg, hgeq⟩ := stab f₁ hf₁
    refine ⟨g + Lc • f₂, (-(χ (l : ZMod N))) • f₁, hasChi_add hg (hasChi_smul Lc hf₂),
      hasChi_smul _ hf₁, ?_⟩
    have ht := tq_eq N (k : ℤ) l hl0 s χ hs _ hf₁
    rw [← hgeq] at ht
    change u (⇑f₁ + v ⇑f₂) = ⇑g + Lc • ⇑f₂ + v ((-(χ (l : ZMod N))) • ⇑f₁)
    rw [map_add (f := _), huv _ ⟨f₂, rfl, hf₂⟩, map_smul, ht]
    change u ⇑f₁ + Lc • ⇑f₂ = u ⇑f₁ + χ (l : ZMod N) • v ⇑f₁ + Lc • ⇑f₂ + -χ (l : ZMod N) • v ⇑f₁
    module
  · intro n hn
    have hG : Good u α (⇑f₁ + v ⇑f₂) :=
      good_add (hgoodW ⟨_, f₁, rfl, hf₁⟩).1 (hgoodW ⟨_, f₂, rfl, hf₂⟩).2
    exact eigen_of_good u α _ hG n hn

end GlobalTheory.OldSpace
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeUlSemisimpleOnLOldSpace =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.CuspFormIsCuspidalAtAllCuspsSL2 =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.CuspFormIsCuspidalAtAllCuspsSL2", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.SlashToGLSmul\npublic import Mathlib.NumberTheory.ModularForms.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.HeckeFamilyMatrices UpperHalfPlane CongruenceSubgroup
open scoped MatrixGroups ModularForm Manifold

namespace GlobalTheory.HeckeFamilyMatrices

theorem cuspForm_cuspAll : ∀ (Γ : Subgroup SL(2, ℤ)) [Γ.FiniteIndex] (k : ℤ) (f : CuspForm Γ k), CuspAll k f := by
  intro Γ _ k f
  refine ⟨f.holo', fun c hc => ?_⟩
  rw [← Subgroup.IsArithmetic.isCusp_iff_isCusp_SL2Z (Γ : Subgroup (GL (Fin 2) ℝ))] at hc
  exact f.zero_at_cusps' hc

end GlobalTheory.HeckeFamilyMatrices
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.CuspFormIsCuspidalAtAllCuspsSL2 =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsCuspFormGammaOneOfNebentypusCuspidal =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsCuspFormGammaOneOfNebentypusCuspidal", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.SlashToGLSmul\npublic import Mathlib.NumberTheory.ModularForms.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.HeckeFamilyMatrices UpperHalfPlane CongruenceSubgroup
open scoped MatrixGroups ModularForm Manifold

namespace GlobalTheory.HeckeFamilyMatrices

theorem cuspForm_of_chiInv : ∀ (N : ℕ) (k : ℤ) (χ : DirichletCharacter ℂ N) (G : ℍ → ℂ), 0 < N →
    CuspAll k G → ChiInv k N N χ G → ∃ f : CuspForm (Gamma1 N) k, ⇑f = G := by
  intro N k χ G _ hC hχ
  refine ⟨{ toFun := G
            slash_action_eq' := fun A hA => ?_
            holo' := hC.1
            zero_at_cusps' := fun {c} hc => hC.2 c (hc.mono ?_) }, rfl⟩
  · obtain ⟨A, hA, rfl⟩ := hA
    have hA0 : A ∈ Gamma0 N := Gamma1_in_Gamma0 N hA
    have h11 : ((mat A 1 1 : ℤ) : ZMod N) = 1 := ((Gamma1_mem N A).1 hA).2.1
    have := hχ A hA0
    rw [h11, map_one, one_smul, ModularForm.SL_slash] at this
    exact this
  · rintro _ ⟨γ, -, rfl⟩; exact ⟨γ, rfl⟩
end GlobalTheory.HeckeFamilyMatrices
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsCuspFormGammaOneOfNebentypusCuspidal =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeUlEqNebentypusOldformTraceSubDiag =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeUlEqNebentypusOldformTraceSubDiag", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.SlashToGLSmul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.HeckeFamilyMatrices UpperHalfPlane CongruenceSubgroup
open scoped MatrixGroups ModularForm Manifold

namespace GlobalTheory.HeckeFamilyMatrices

theorem ulF_eq_trOld (N l : ℕ) (k : ℤ) (a b : ℤ) (h : (l : ℤ) * b - N * a = 1)
    (χ : DirichletCharacter ℂ N) (B : ℍ → ℂ) :
    0 < l → ChiInv k N N χ B → UlF k l B = χ (l : ZMod N) •
      (trOld k N l a b h (B ∣[k] toGL (dg l 1)) - B ∣[k] toGL (dg l 1)) := by
  intro hl hB
  let ε : SL(2, ℤ) := ⟨!![(l : ℤ), a; (N : ℤ), b], by rw [Matrix.det_fin_two_of]; linear_combination h⟩
  have hε : ε ∈ Gamma0 N := by
    rw [Gamma0_mem]; simp [ε]
  have hεB : B ∣[k] toGL (mat ε) = χ (b : ZMod N) • B := by
    rw [← slash_SL_eq, hB ε hε]; rfl
  let u : ℕ → Matrix (Fin 2) (Fin 2) ℤ := fun j => !![1, (j : ℤ); 0, (l : ℤ)]
  have hu : ∀ j, 0 < (u j).det := by
    intro j; simp [u, Matrix.det_fin_two_of]; exact_mod_cast hl
  have hD : (dg (l : ℤ) 1).det ≠ 0 := by
    simp [dg, Matrix.det_fin_two_of]; exact_mod_cast hl.ne'
  have key : ∀ j : ℕ, (B ∣[k] toGL (dg l 1)) ∣[k] gaOld N l a b h j =
      χ (b : ZMod N) • (B ∣[k] toGL (u j)) := by
    intro j
    have hg : (mat (gaOld N l a b h j)).det ≠ 0 := by simp [mat]
    have hεd : (mat ε).det ≠ 0 := by simp [mat]
    have hm : dg (l : ℤ) 1 * mat (gaOld N l a b h j) = mat ε * u j := by
      ext i i' <;> fin_cases i <;> fin_cases i' <;>
        simp [dg, gaOld, mat, ε, u, Matrix.mul_apply, Fin.sum_univ_two] <;> ring
    rw [slash_SL_eq, ← SlashAction.slash_mul, ← toGL_mul _ _ hD hg, hm, toGL_mul _ _ hεd (hu j).ne',
      SlashAction.slash_mul, hεB, smul_slash_toGL k _ (hu j)]
  have hsum : trOld k N l a b h (B ∣[k] toGL (dg l 1)) - B ∣[k] toGL (dg l 1) =
      χ (b : ZMod N) • UlF k l B := by
    rw [trOld, add_sub_cancel_left, UlF, hkF, Finset.smul_sum]
    rw [Finset.sum_congr rfl (fun j _ => key j)]
    exact (Fin.sum_univ_eq_sum_range (fun j => χ (b : ZMod N) • (B ∣[k] toGL (u j))) l).symm
  have hlb : (l : ZMod N) * (b : ZMod N) = 1 := by
    have := congrArg (fun x : ℤ => (x : ZMod N)) h
    push_cast at this
    simpa [ZMod.natCast_self] using this
  rw [hsum, smul_smul, ← map_mul, hlb, map_one, one_smul]

end GlobalTheory.HeckeFamilyMatrices
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeUlEqNebentypusOldformTraceSubDiag =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.NebentypusOldformTraceToGammaZero =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.NebentypusOldformTraceToGammaZero", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.SlashToGLSmul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.HeckeFamilyMatrices UpperHalfPlane CongruenceSubgroup
open scoped MatrixGroups ModularForm Manifold

noncomputable section

namespace GlobalTheory.HeckeFamilyMatrices.TrOld

def rep (N l : ℕ) (a b : ℤ) (h : (l : ℤ) * b - N * a = 1) : Option (Fin l) → SL(2, ℤ)
  | none => 1
  | some j => gaOld N l a b h j

def sig (l : ℕ) [NeZero l] (x : SL(2, ℤ)) : Option (Fin l) :=
  if (l : ℤ) ∣ mat x 1 0 then none
  else some ⟨(((mat x 1 1 : ℤ) : ZMod l) * ((mat x 1 0 : ℤ) : ZMod l)⁻¹).val, ZMod.val_lt _⟩

lemma mul_11 (x y : SL(2, ℤ)) : mat (x * y) 1 1 = mat x 1 0 * mat y 0 1 + mat x 1 1 * mat y 1 1 := by
  simp only [mat, Matrix.SpecialLinearGroup.coe_mul, Matrix.mul_apply, Fin.sum_univ_two]

lemma mulInv_10 (x y : SL(2, ℤ)) : mat (x * y⁻¹) 1 0 = mat x 1 0 * mat y 1 1 - mat x 1 1 * mat y 1 0 := by
  simp [mat, Matrix.mul_apply, Fin.sum_univ_two, Matrix.SpecialLinearGroup.coe_inv, Matrix.adjugate_fin_two]
  ring

lemma mulInv_11 (x y : SL(2, ℤ)) : mat (x * y⁻¹) 1 1 = -(mat x 1 0 * mat y 0 1) + mat x 1 1 * mat y 0 0 := by
  simp [mat, Matrix.mul_apply, Fin.sum_univ_two, Matrix.SpecialLinearGroup.coe_inv, Matrix.adjugate_fin_two]

lemma mem_iff (M : ℕ) (x : SL(2, ℤ)) : x ∈ Gamma0 M ↔ (M : ℤ) ∣ mat x 1 0 := by
  rw [Gamma0_mem]
  exact ZMod.intCast_zmod_eq_zero_iff_dvd _ _

section
variable {N l : ℕ} {a b : ℤ} {h : (l : ℤ) * b - N * a = 1}

lemma rep_none_10 : mat (rep N l a b h none) 1 0 = 0 := rfl
lemma rep_none_11 : mat (rep N l a b h none) 1 1 = 1 := rfl
lemma rep_some_10 (j : Fin l) : mat (rep N l a b h (some j)) 1 0 = N := rfl
lemma rep_some_11 (j : Fin l) : mat (rep N l a b h (some j)) 1 1 = (N : ℤ) * (j : ℕ) + l * b := rfl

lemma rep_00 (o : Option (Fin l)) : mat (rep N l a b h o) 0 0 = 1 := by
  cases o <;> simp [rep, gaOld, mat]

lemma rep_10 (o : Option (Fin l)) : ((mat (rep N l a b h o) 1 0 : ℤ) : ZMod N) = 0 := by
  cases o with
  | none => rw [rep_none_10]; simp
  | some j => rw [rep_some_10]; simp

lemma rep_11 (o : Option (Fin l)) : ((mat (rep N l a b h o) 1 1 : ℤ) : ZMod N) = 1 := by
  cases o with
  | none => rw [rep_none_11]; simp
  | some j =>
    have hc := congrArg (Int.cast : ℤ → ZMod N) h
    push_cast at hc
    rw [ZMod.natCast_self, zero_mul, sub_zero] at hc
    rw [rep_some_11]
    push_cast
    rw [ZMod.natCast_self, zero_mul, zero_add, hc]

include h in
lemma cop : IsCoprime (N : ℤ) (l : ℤ) := ⟨-a, b, by linear_combination h⟩

lemma sig_mem [NeZero l] (hl : l.Prime) (x : SL(2, ℤ)) (hx : x ∈ Gamma0 N) :
    x * (rep N l a b h (sig l x))⁻¹ ∈ Gamma0 (N * l) := by
  have := Fact.mk hl
  have hc : IsCoprime (N : ℤ) l := cop (h := h)
  have hδ : ∀ o, (N : ℤ) ∣ mat (rep N l a b h o) 1 0 := fun o =>
    (ZMod.intCast_zmod_eq_zero_iff_dvd _ _).1 (rep_10 o)
  rw [mem_iff] at hx
  rw [mem_iff, mulInv_10]
  push_cast
  apply hc.mul_dvd
  · exact dvd_sub (Dvd.dvd.mul_right hx _) (Dvd.dvd.mul_left (hδ _) _)
  · unfold sig
    split_ifs with hd
    · rw [rep_none_10, rep_none_11]
      simpa using hd
    · rw [rep_some_10, rep_some_11, ← ZMod.intCast_zmod_eq_zero_iff_dvd]
      have hc0 : ((mat x 1 0 : ℤ) : ZMod l) ≠ 0 := by
        rwa [Ne, ZMod.intCast_zmod_eq_zero_iff_dvd]
      have hu := mul_inv_cancel₀ hc0
      have hl0 : ((l : ℕ) : ZMod l) = 0 := ZMod.natCast_self l
      push_cast
      simp only [ZMod.natCast_zmod_val]
      linear_combination ((N : ZMod l) * ((mat x 1 1 : ℤ) : ZMod l)) * hu +
        (((mat x 1 0 : ℤ) : ZMod l) * (b : ZMod l)) * hl0

lemma not_dvd (hN : 0 < N) (hl : l.Prime) : ¬ ((N : ℤ) * l ∣ N) := by
  intro hd
  have h1 := Int.le_of_dvd (by exact_mod_cast hN) hd
  have h2 : (2 : ℤ) ≤ l := by exact_mod_cast hl.two_le
  have h3 : (0 : ℤ) < N := by exact_mod_cast hN
  nlinarith

lemma rep_inj (hN : 0 < N) (hl : l.Prime) (o₁ o₂ : Option (Fin l))
    (hm : rep N l a b h o₁ * (rep N l a b h o₂)⁻¹ ∈ Gamma0 (N * l)) : o₁ = o₂ := by
  have hc : IsCoprime (N : ℤ) l := cop (h := h)
  have hN' : (0 : ℤ) < N := by exact_mod_cast hN
  rw [mem_iff, mulInv_10] at hm
  push_cast at hm
  rcases o₁ with _ | i <;> rcases o₂ with _ | j
  · rfl
  · exfalso
    rw [rep_none_10, rep_none_11, rep_some_10] at hm
    exact not_dvd hN hl (by simpa using hm)
  · exfalso
    rw [rep_some_10, rep_none_11, rep_none_10] at hm
    exact not_dvd hN hl (by simpa using hm)
  · rw [rep_some_10, rep_some_11, rep_some_10, rep_some_11] at hm
    have e : (N : ℤ) * (N * (j : ℕ) + l * b) - (N * (i : ℕ) + l * b) * N =
        N * (N * (((j : ℕ) : ℤ) - ((i : ℕ) : ℤ))) := by ring
    rw [e] at hm
    have h1 : (l : ℤ) ∣ N * (((j : ℕ) : ℤ) - ((i : ℕ) : ℤ)) := (mul_dvd_mul_iff_left hN'.ne').1 hm
    have h2 : (l : ℤ) ∣ ((j : ℕ) : ℤ) - ((i : ℕ) : ℤ) := hc.symm.dvd_of_dvd_mul_left h1
    have h3 : ((j : ℕ) : ℤ) - ((i : ℕ) : ℤ) = 0 := by
      apply Int.eq_zero_of_abs_lt_dvd h2
      have := i.isLt
      have := j.isLt
      rw [abs_lt]
      constructor <;> omega
    congr 1
    ext
    omega

end

end GlobalTheory.HeckeFamilyMatrices.TrOld


open GlobalTheory.HeckeFamilyMatrices.TrOld in
theorem GlobalTheory.HeckeFamilyMatrices.chiInv_trOld : ∀ (N l : ℕ) (k : ℤ) (a b : ℤ) (h : (l : ℤ) * b - N * a = 1)
    (χ : DirichletCharacter ℂ N) (G : ℍ → ℂ), 0 < N → l.Prime → ChiInv k N (N * l) χ G →
    ChiInv k N N χ (trOld k N l a b h G) := by
  intro N l k a b h χ G hN hl hG γ hγ
  have : NeZero l := ⟨hl.ne_zero⟩
  have rep_mem : ∀ o, rep N l a b h o ∈ Gamma0 N := fun o => Gamma0_mem.2 (rep_10 o)
  have hsum : trOld k N l a b h G = ∑ o : Option (Fin l), G ∣[k] rep N l a b h o := by
    rw [Fintype.sum_option]
    simp only [rep, SlashAction.slash_one]
    unfold trOld
    congr 1
    exact (Fin.sum_univ_eq_sum_range (fun j => G ∣[k] gaOld N l a b h j) l).symm
  have hterm : ∀ o, (G ∣[k] rep N l a b h o) ∣[k] γ =
      χ ((mat γ 1 1 : ℤ) : ZMod N) • (G ∣[k] rep N l a b h (sig l (rep N l a b h o * γ))) := by
    intro o
    have hA : rep N l a b h o * γ ∈ Gamma0 N := mul_mem (rep_mem o) hγ
    have hη := sig_mem (h := h) hl _ hA
    have hA0 : ((mat (rep N l a b h o * γ) 1 0 : ℤ) : ZMod N) = 0 := Gamma0_mem.1 hA
    have hchar : ((mat (rep N l a b h o * γ * (rep N l a b h (sig l (rep N l a b h o * γ)))⁻¹) 1 1 : ℤ)
        : ZMod N) = ((mat γ 1 1 : ℤ) : ZMod N) := by
      rw [mulInv_11, rep_00]
      push_cast
      rw [hA0, mul_11]
      push_cast
      rw [rep_10, rep_11]
      ring
    have e : G ∣[k] (rep N l a b h o * γ) =
        (G ∣[k] (rep N l a b h o * γ * (rep N l a b h (sig l (rep N l a b h o * γ)))⁻¹)) ∣[k]
          rep N l a b h (sig l (rep N l a b h o * γ)) := by
      rw [← SlashAction.slash_mul, inv_mul_cancel_right]
    rw [← SlashAction.slash_mul, e, hG _ hη, ModularForm.SL_smul_slash, hchar]
  have hinj : Function.Injective (fun o => sig l (rep N l a b h o * γ)) := by
    intro o₁ o₂ he
    apply rep_inj (h := h) hN hl
    have h1 := sig_mem (h := h) hl _ (mul_mem (rep_mem o₁) hγ)
    have h2 := sig_mem (h := h) hl _ (mul_mem (rep_mem o₂) hγ)
    simp only at he
    rw [he] at h1
    have h3 := mul_mem h1 (inv_mem h2)
    convert h3 using 1
    group
  rw [hsum, SlashAction.sum_slash, Finset.sum_congr rfl (fun o _ => hterm o), ← Finset.smul_sum]
  congr 1
  exact (Finite.injective_iff_bijective.mp hinj).sum_comp (fun o => G ∣[k] rep N l a b h o)
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.NebentypusOldformTraceToGammaZero =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.NebentypusSlashIntDiagTwoMatrixLevelRaise =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.NebentypusSlashIntDiagTwoMatrixLevelRaise", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.SlashToGLSmul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.HeckeFamilyMatrices UpperHalfPlane CongruenceSubgroup
open scoped MatrixGroups ModularForm Manifold

namespace GlobalTheory.HeckeFamilyMatrices

theorem chiInv_slash_dg (N l : ℕ) (k : ℤ) (χ : DirichletCharacter ℂ N) (B : ℍ → ℂ) (hl : 0 < l)
    (hB : ChiInv k N N χ B) : ChiInv k N (N * l) χ (B ∣[k] toGL (dg l 1)) := by
  intro γ hγ
  rw [Gamma0_mem] at hγ
  have hdvd : ((N * l : ℕ) : ℤ) ∣ (mat γ 1 0) := (ZMod.intCast_zmod_eq_zero_iff_dvd _ _).1 hγ
  obtain ⟨t, ht⟩ := hdvd
  have hdet : (mat γ).det = 1 := by simp [mat]
  rw [Matrix.det_fin_two] at hdet
  let γ' : SL(2, ℤ) := ⟨!![mat γ 0 0, (l : ℤ) * mat γ 0 1; (N : ℤ) * t, mat γ 1 1], by
    rw [Matrix.det_fin_two_of]; push_cast at ht; rw [ht] at hdet; linear_combination hdet⟩
  have hE : γ' ∈ Gamma0 N := by
    rw [Gamma0_mem]; simp [γ']
  have hD : (dg l 1).det ≠ 0 := by simp [dg, Matrix.det_fin_two_of]; omega
  have hDpos : 0 < (dg l 1).det := by simp [dg, Matrix.det_fin_two_of]; exact_mod_cast hl
  have hγd : (mat γ).det ≠ 0 := by simp [mat]
  have hEd : (mat γ').det ≠ 0 := by simp [mat]
  have hmul : dg l 1 * mat γ = mat γ' * dg l 1 := by
    push_cast at ht
    ext i j; fin_cases i <;> fin_cases j <;>
      simp [dg, γ', mat, Matrix.mul_apply, Fin.sum_univ_two, ht] <;> ring
  have hs : mat γ' 1 1 = mat γ 1 1 := rfl
  rw [slash_SL_eq, ← SlashAction.slash_mul, ← toGL_mul _ _ hD hγd, hmul, toGL_mul _ _ hEd hD,
    SlashAction.slash_mul, ← slash_SL_eq, hB γ' hE, smul_slash_toGL k _ hDpos, hs]

end GlobalTheory.HeckeFamilyMatrices
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.NebentypusSlashIntDiagTwoMatrixLevelRaise =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.NebentypusSlashOldformLevelRaisingMatrix =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.NebentypusSlashOldformLevelRaisingMatrix", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.SlashToGLSmul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.HeckeFamilyMatrices UpperHalfPlane CongruenceSubgroup
open scoped MatrixGroups ModularForm Manifold

namespace GlobalTheory.HeckeFamilyMatrices

def wConjMat (N l a b p q t s : ℤ) : Matrix (Fin 2) (Fin 2) ℤ :=
  !![l * b * p + a * b * (N * l * t) - N * l * q - N * a * s, -a * p - a ^ 2 * N * t + l * q + a * s;
    N * l * (b * p + l * b ^ 2 * t - N * q - b * s), -N * a * p - a * b * (N * l * t) + N * l * q + l * b * s]

lemma wConjMat_det (N l a b p q t s : ℤ) (hab : l * b - N * a = 1) (hd : p * s - q * (N * l * t) = 1) :
    (wConjMat N l a b p q t s).det = 1 := by
  rw [wConjMat, Matrix.det_fin_two_of]
  linear_combination (l * b - N * a) ^ 2 * hd + (l * b - N * a + 1) * hab

lemma wOld_mul_eq (N l : ℕ) (a b p q t s : ℤ) (hab : (l : ℤ) * b - N * a = 1) :
    wOld N l a b * !![p, q; (N : ℤ) * l * t, s] = wConjMat N l a b p q t s * wOld N l a b := by
  rw [wOld, wConjMat, Matrix.mul_fin_two, Matrix.mul_fin_two]
  congr 1
  ext i j
  fin_cases i <;> fin_cases j <;> simp
  · linear_combination (-((l : ℤ) * p + a * (N * l * t))) * hab
  · linear_combination (-((l : ℤ) * q + a * s)) * hab
  · linear_combination (-((N : ℤ) * l * p + l * b * (N * l * t))) * hab
  · linear_combination (-((N : ℤ) * l * q + l * b * s)) * hab

theorem chiInv_slash_wOld : ∀ (N l : ℕ) (k : ℤ) (a b : ℤ), (l : ℤ) * b - N * a = 1 →
    ∀ (χ : DirichletCharacter ℂ N) (G : ℍ → ℂ), 0 < l → ChiInv k N (N * l) χ G →
      ChiInv k N (N * l) χ (G ∣[k] toGL (wOld N l a b)) := by
  intro N l k a b hab χ G hl hG γ hγ
  rw [Gamma0_mem, ZMod.intCast_zmod_eq_zero_iff_dvd] at hγ
  obtain ⟨t, ht⟩ := hγ
  have ht' : mat γ 1 0 = (N : ℤ) * l * t := by rw [← Nat.cast_mul]; exact ht
  have hm : mat γ = !![mat γ 0 0, mat γ 0 1; (N : ℤ) * l * t, mat γ 1 1] := by
    rw [← ht']; exact Matrix.eta_fin_two _
  have hd : mat γ 0 0 * mat γ 1 1 - mat γ 0 1 * ((N : ℤ) * l * t) = 1 := by
    rw [← ht', ← Matrix.det_fin_two]; exact γ.2
  let δ : SL(2, ℤ) := ⟨wConjMat N l a b (mat γ 0 0) (mat γ 0 1) t (mat γ 1 1),
    wConjMat_det _ _ _ _ _ _ _ _ hab hd⟩
  have hδ : mat δ = wConjMat N l a b (mat γ 0 0) (mat γ 0 1) t (mat γ 1 1) := rfl
  have key : wOld N l a b * mat γ = mat δ * wOld N l a b := by
    rw [hδ, ← wOld_mul_eq N l a b _ _ t _ hab, ← hm]
  have hW : 0 < (wOld N l a b).det := by
    have : (wOld N l a b).det = l := by
      rw [wOld, Matrix.det_fin_two_of]; linear_combination (l : ℤ) * hab
    rw [this]; exact_mod_cast hl
  have h1 : ∀ x : SL(2, ℤ), (mat x).det ≠ 0 := fun x => by simp [mat]
  have hδ0 : δ ∈ Gamma0 (N * l) := by
    rw [Gamma0_mem, ZMod.intCast_zmod_eq_zero_iff_dvd]
    refine ⟨b * mat γ 0 0 + l * b ^ 2 * t - N * mat γ 0 1 - b * mat γ 1 1, ?_⟩
    rw [Nat.cast_mul]; rfl
  have h11 : ((mat δ 1 1 : ℤ) : ZMod N) = ((mat γ 1 1 : ℤ) : ZMod N) := by
    have : mat δ 1 1 = mat γ 1 1 +
        N * (-a * mat γ 0 0 - a * b * l * t + l * mat γ 0 1 + a * mat γ 1 1) := by
      have e : mat δ 1 1 = -(N : ℤ) * a * mat γ 0 0 - a * b * (N * l * t) + N * l * mat γ 0 1 +
        l * b * mat γ 1 1 := rfl
      rw [e]; linear_combination (mat γ 1 1) * hab
    rw [this, Int.cast_add, Int.cast_mul, Int.cast_natCast, ZMod.natCast_self, zero_mul, add_zero]
  rw [slash_SL_eq, ← SlashAction.slash_mul, ← toGL_mul _ _ hW.ne' (h1 γ), key,
    toGL_mul _ _ (h1 δ) hW.ne', SlashAction.slash_mul, ← slash_SL_eq, hG δ hδ0,
    smul_slash_toGL k _ hW, h11]

end GlobalTheory.HeckeFamilyMatrices
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.NebentypusSlashOldformLevelRaisingMatrix =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.OldformLevelRaisingSlashSlashNebentypus =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.OldformLevelRaisingSlashSlashNebentypus", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.SlashToGLSmul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open GlobalTheory.HeckeFamilyMatrices UpperHalfPlane CongruenceSubgroup
open scoped MatrixGroups ModularForm Manifold

namespace GlobalTheory.HeckeFamilyMatrices

def wSqOld (N l : ℕ) (a b : ℤ) (h : (l : ℤ) * b - N * a = 1) : SL(2, ℤ) :=
  ⟨!![(l : ℤ) + a * N, a * (1 + b); (N : ℤ) * l * (1 + b), (N : ℤ) * a + l * b ^ 2], by
    rw [Matrix.det_fin_two_of]; linear_combination ((l : ℤ) * b - N * a + 1) * h⟩

lemma oldformLevelRaisingMatrix_det_eq_level (N l : ℕ) (a b : ℤ) (h : (l : ℤ) * b - N * a = 1) : (wOld N l a b).det = l := by
  rw [wOld, Matrix.det_fin_two_of]; linear_combination (l : ℤ) * h

lemma atkin_lehner_square_mul (N l : ℕ) (a b : ℤ) (h : (l : ℤ) * b - N * a = 1) :
    wOld N l a b * wOld N l a b = (l : ℤ) • mat (wSqOld N l a b h) := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [wOld, wSqOld, mat, Matrix.mul_apply, Fin.sum_univ_two] <;> ring

lemma wSqOld_mem (N l : ℕ) (a b : ℤ) (h : (l : ℤ) * b - N * a = 1) :
    wSqOld N l a b h ∈ Gamma0 (N * l) := by
  rw [Gamma0_mem]
  have : ((((wSqOld N l a b h : SL(2, ℤ)) : Matrix (Fin 2) (Fin 2) ℤ) 1 0 : ℤ)) = ((N * l : ℕ) : ℤ) * (1 + b) := by
    simp [wSqOld]
  rw [this, Int.cast_mul, Int.cast_natCast, ZMod.natCast_self, zero_mul]

lemma wSqOld_entry (N l : ℕ) (a b : ℤ) (h : (l : ℤ) * b - N * a = 1) :
    ((mat (wSqOld N l a b h) 1 1 : ℤ) : ZMod N) = (b : ZMod N) := by
  have e : mat (wSqOld N l a b h) 1 1 = b + (N : ℤ) * (a * (1 + b)) := by
    simp [wSqOld, mat]; linear_combination b * h
  rw [e]; push_cast; simp

theorem wOld_slash_slash (N l : ℕ) (k : ℤ) (a b : ℤ) (h : (l : ℤ) * b - N * a = 1) (χ : DirichletCharacter ℂ N)
    (G : ℍ → ℂ) (hl : 0 < l) (hG : ChiInv k N (N * l) χ G) :
    (G ∣[k] toGL (wOld N l a b)) ∣[k] toGL (wOld N l a b) = ((l : ℂ) ^ (k - 2) * χ (b : ZMod N)) • G := by
  have hd : (wOld N l a b).det ≠ 0 := by rw [oldformLevelRaisingMatrix_det_eq_level N l a b h]; exact_mod_cast hl.ne'
  have hM : 0 < (mat (wSqOld N l a b h)).det := by simp [mat]
  rw [← SlashAction.slash_mul, ← toGL_mul _ _ hd hd, atkin_lehner_square_mul N l a b h, slash_toGL_smul k l hl _ hM,
    ← slash_SL_eq, hG _ (wSqOld_mem N l a b h), wSqOld_entry, smul_smul]

end GlobalTheory.HeckeFamilyMatrices
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.OldformLevelRaisingSlashSlashNebentypus =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.OldformTraceToGammaOneEqHeckeUlLevelRaising =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.OldformTraceToGammaOneEqHeckeUlLevelRaising", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.SlashToGLSmul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open GlobalTheory.HeckeFamilyMatrices UpperHalfPlane CongruenceSubgroup
open scoped MatrixGroups ModularForm Manifold

namespace GlobalTheory.HeckeFamilyMatrices

lemma wOld_mul_ulFam (N l : ℕ) (a b : ℤ) (h : (l : ℤ) * b - N * a = 1) (j : ℕ) :
    wOld N l a b * !![1, (j : ℤ); 0, (l : ℤ)] = (l : ℤ) • mat (gaOld N l a b h j) := by
  ext i m
  fin_cases i <;> fin_cases m <;>
    simp [wOld, gaOld, mat, Matrix.mul_apply, Fin.sum_univ_two] <;> ring

lemma wOld_det (N l : ℕ) (a b : ℤ) (h : (l : ℤ) * b - N * a = 1) : (wOld N l a b).det = l := by
  rw [wOld, Matrix.det_fin_two_of]; linear_combination (l : ℤ) * h

lemma mat_det_pos (γ : SL(2, ℤ)) : 0 < (mat γ).det := by simp [mat]

theorem trOld_eq : ∀ (N l : ℕ) (k : ℤ) (a b : ℤ) (h : (l : ℤ) * b - N * a = 1) (G : ℍ → ℂ), 0 < l →
    trOld k N l a b h G = G + ((l : ℂ) ^ (2 - k)) • UlF k l (G ∣[k] toGL (wOld N l a b)) := by
  intro N l k a b h G hl
  have hW : 0 < (wOld N l a b).det := by rw [wOld_det N l a b h]; exact_mod_cast hl
  have hl' : (l : ℂ) ≠ 0 := by exact_mod_cast hl.ne'
  unfold trOld
  congr 1
  rw [UlF, hkF, Finset.smul_sum, ← Fin.sum_univ_eq_sum_range]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [← SlashAction.slash_mul, ← toGL_mul _ _ hW.ne' (ulFam_det l hl j).ne']
  have e : wOld N l a b * ulFam l j = (l : ℤ) • mat (gaOld N l a b h j) := wOld_mul_ulFam N l a b h j
  rw [e, slash_toGL_smul k l hl _ (mat_det_pos _), smul_smul, ← zpow_add₀ hl', slash_SL_eq]
  simp

end GlobalTheory.HeckeFamilyMatrices
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.OldformTraceToGammaOneEqHeckeUlLevelRaising =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeUlSqSubMemOldformsGamma1 =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeUlSqSubMemOldformsGamma1", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.IsDCReps\npublic import Mathlib.NumberTheory.DirichletCharacter.Basic\npublic import Mathlib.NumberTheory.ModularForms.Basic\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.SlashToGLSmul\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.CuspFormIsCuspidalAtAllCuspsSL2\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsCuspFormGammaOneOfNebentypusCuspidal\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeUlEqNebentypusOldformTraceSubDiag\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsCuspidalAtAllCuspsSL2SlashIntMatrix\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.NebentypusOldformTraceToGammaZero\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.NebentypusSlashIntDiagTwoMatrixLevelRaise\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.NebentypusSlashOldformLevelRaisingMatrix\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.OldformLevelRaisingSlashSlashNebentypus\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.OldformTraceToGammaOneEqHeckeUlLevelRaising\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.HeckeFamilyMatrices Polynomial UpperHalfPlane
open scoped MatrixGroups ModularForm
open scoped Manifold

theorem GlobalTheory.HeckeFamilyMatrices.ulSq_old : ∀ (N l k : ℕ), 5 ≤ N → l.Prime → ¬ l ∣ N → 3 ≤ k → ∀ (χ : DirichletCharacter ℂ N) (f : CuspForm (Lev N l) (k : ℤ)),
  (∀ γ : SL(2, ℤ), γ ∈ CongruenceSubgroup.Gamma0 (N * l) → ⇑f ∣[(k : ℤ)] γ = χ ((mat γ 1 1 : ℤ) : ZMod N) • ⇑f) →
  ∃ f₁ f₂ : CuspForm (CongruenceSubgroup.Gamma1 N) (k : ℤ),
    (∀ γ : SL(2, ℤ), γ ∈ CongruenceSubgroup.Gamma0 N → ⇑f₁ ∣[(k : ℤ)] γ = χ ((mat γ 1 1 : ℤ) : ZMod N) • ⇑f₁) ∧
    (∀ γ : SL(2, ℤ), γ ∈ CongruenceSubgroup.Gamma0 N → ⇑f₂ ∣[(k : ℤ)] γ = χ ((mat γ 1 1 : ℤ) : ZMod N) • ⇑f₂) ∧
    UlF (k : ℤ) l (UlF (k : ℤ) l ⇑f) - (χ l * (l : ℂ) ^ (k - 2)) • ⇑f = ⇑f₁ + ⇑f₂ ∣[(k : ℤ)] toGL (dg l 1) := by
  intro N l k hN hl hlN hk χ f hf
  have hN0 : 0 < N := by omega
  have hl0 : 0 < l := hl.pos
  obtain ⟨u, v, huv⟩ : IsCoprime (l : ℤ) (N : ℤ) :=
    Nat.isCoprime_iff_coprime.mpr ((Nat.Prime.coprime_iff_not_dvd hl).2 hlN)
  have h : (l : ℤ) * u - N * (-v) = 1 := by linear_combination huv
  haveI : NeZero N := ⟨hN0.ne'⟩
  haveI : NeZero l := ⟨hl0.ne'⟩
  haveI : (Lev N l).FiniteIndex := by unfold Lev; infer_instance
  set W := wOld N l (-v) u with hW
  set D := dg (l : ℤ) 1 with hD
  have hWdet : 0 < W.det := by
    rw [hW, wOld, Matrix.det_fin_two_of]; nlinarith
  have hDdet : 0 < D.det := by
    rw [hD, dg, Matrix.det_fin_two_of]; simpa using hl0
  set F : ℍ → ℂ := ⇑f with hFdef
  have hF : ChiInv (k : ℤ) N (N * l) χ F := hf
  have cF : CuspAll (k : ℤ) F := _root_.GlobalTheory.HeckeFamilyMatrices.cuspForm_cuspAll (Lev N l) k f
  set G := F ∣[(k : ℤ)] toGL W with hGdef
  have hG : ChiInv (k : ℤ) N (N * l) χ G := _root_.GlobalTheory.HeckeFamilyMatrices.chiInv_slash_wOld N l k (-v) u h χ F hl0 hF
  have cG : CuspAll (k : ℤ) G := _root_.GlobalTheory.HeckeFamilyMatrices.cuspAll_slash_toGL k W F hWdet cF
  have cTr : ∀ H, CuspAll (k : ℤ) H → CuspAll (k : ℤ) (trOld k N l (-v) u h H) := by
    intro H hH
    unfold trOld
    refine cuspAll_add hH ?_
    induction (Finset.range l) using Finset.induction_on with
    | empty => simpa using cuspAll_smul 0 hH
    | insert j s hj ih =>
      rw [Finset.sum_insert hj]
      refine cuspAll_add ?_ ih
      rw [slash_SL_eq]
      exact _root_.GlobalTheory.HeckeFamilyMatrices.cuspAll_slash_toGL k _ H (by simp [mat]) hH
  set A := trOld k N l (-v) u h F with hAdef
  set B := trOld k N l (-v) u h G with hBdef
  have hA : ChiInv (k : ℤ) N N χ A := _root_.GlobalTheory.HeckeFamilyMatrices.chiInv_trOld N l k (-v) u h χ F hN0 hl hF
  have hB : ChiInv (k : ℤ) N N χ B := _root_.GlobalTheory.HeckeFamilyMatrices.chiInv_trOld N l k (-v) u h χ G hN0 hl hG
  have cA : CuspAll (k : ℤ) A := cTr F cF
  have cB : CuspAll (k : ℤ) B := cTr G cG
  set C := B ∣[(k : ℤ)] toGL D with hCdef
  have hC : ChiInv (k : ℤ) N (N * l) χ C := _root_.GlobalTheory.HeckeFamilyMatrices.chiInv_slash_dg N l k χ B hl0 hB
  have cC : CuspAll (k : ℤ) C := _root_.GlobalTheory.HeckeFamilyMatrices.cuspAll_slash_toGL k D B hDdet cB
  have hTC : ChiInv (k : ℤ) N N χ (trOld k N l (-v) u h C) := _root_.GlobalTheory.HeckeFamilyMatrices.chiInv_trOld N l k (-v) u h χ C hN0 hl hC
  have cTC : CuspAll (k : ℤ) (trOld k N l (-v) u h C) := cTr C cC
  set c₁ : ℂ := χ (l : ZMod N) with hc₁
  set p : ℂ := (l : ℂ) ^ ((k : ℤ) - 2) with hp
  have h₁ : ChiInv (k : ℤ) N N χ (c₁ ^ 2 • trOld k N l (-v) u h C + (-(c₁ * p)) • A) :=
    chiInv_add (chiInv_smul _ hTC) (chiInv_smul _ hA)
  obtain ⟨f₁, hf₁⟩ := _root_.GlobalTheory.HeckeFamilyMatrices.cuspForm_of_chiInv N k χ (c₁ ^ 2 • trOld k N l (-v) u h C + (-(c₁ * p)) • A) hN0
    (cuspAll_add (cuspAll_smul _ cTC) (cuspAll_smul _ cA)) h₁
  obtain ⟨f₂, hf₂⟩ := _root_.GlobalTheory.HeckeFamilyMatrices.cuspForm_of_chiInv N k χ (-(c₁ ^ 2) • B) hN0 (cuspAll_smul _ cB) (chiInv_smul _ hB)
  refine ⟨f₁, f₂, fun γ hγ => ?_, fun γ hγ => ?_, ?_⟩
  · rw [hf₁]; exact h₁ γ hγ
  · rw [hf₂]; exact chiInv_smul _ hB γ hγ
  rw [hf₁, hf₂]
  have e1 := _root_.GlobalTheory.HeckeFamilyMatrices.trOld_eq N l k (-v) u h F hl0
  have e2 := _root_.GlobalTheory.HeckeFamilyMatrices.trOld_eq N l k (-v) u h G hl0
  have e3 := _root_.GlobalTheory.HeckeFamilyMatrices.wOld_slash_slash N l k (-v) u h χ F hl0 hF
  have e4 := _root_.GlobalTheory.HeckeFamilyMatrices.ulF_eq_trOld N l k (-v) u h χ B hl0 hB
  rw [← hAdef, ← hGdef] at e1
  rw [← hBdef, e3] at e2
  rw [← hCdef] at e4
  have cb : c₁ * χ (u : ZMod N) = 1 := by
    rw [hc₁, ← map_mul]
    have h2 := congrArg (Int.cast : ℤ → ZMod N) h
    push_cast at h2
    rw [ZMod.natCast_self] at h2
    rw [show ((l : ZMod N) * (u : ZMod N)) = 1 by linear_combination h2, map_one]
  have hl' : (l : ℂ) ≠ 0 := by exact_mod_cast hl0.ne'
  have pp : p * (l : ℂ) ^ (2 - (k : ℤ)) = 1 := by
    rw [hp, ← zpow_add₀ hl']; simp
  have hUG : UlF k l G = p • (A - F) := by
    rw [e1, add_sub_cancel_left, smul_smul, pp, one_smul]
  have hUF : UlF k l F = c₁ • (B - G) := by
    have key : c₁ * (l : ℂ) ^ (2 - (k : ℤ)) * ((l : ℂ) ^ ((k : ℤ) - 2) * χ (u : ZMod N)) = 1 := by
      rw [← hp]
      calc c₁ * (l : ℂ) ^ (2 - (k : ℤ)) * (p * χ (u : ZMod N))
          = (p * (l : ℂ) ^ (2 - (k : ℤ))) * (c₁ * χ (u : ZMod N)) := by ring
        _ = 1 := by rw [pp, cb, one_mul]
    rw [e2, add_sub_cancel_left, ulF_smul k l hl0, smul_smul, smul_smul, key, one_smul]
  have hpk : (l : ℂ) ^ (k - 2) = p := by
    rw [hp, show ((k : ℤ) - 2) = ((k - 2 : ℕ) : ℤ) by omega, zpow_natCast]
  rw [hpk, hUF, ulF_smul k l hl0, ulF_sub k l hl0, e4, hUG, smul_slash_toGL k D hDdet, ← hCdef]
  funext τ
  simp only [Pi.add_apply, Pi.sub_apply, Pi.smul_apply, smul_eq_mul]
  ring
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeUlSqSubMemOldformsGamma1 =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.SlashSmulPos =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.SlashSmulPos", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.IsDCReps\npublic import Mathlib.NumberTheory.DirichletCharacter.Basic\npublic import Mathlib.NumberTheory.ModularForms.Basic\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeUlSemisimpleOnLOldSpace\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeUlSqSubMemOldformsGamma1\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.HeckeFamilyMatrices Polynomial UpperHalfPlane
open scoped MatrixGroups ModularForm
open scoped Manifold

noncomputable section

namespace GlobalTheory.HeckeFamilyMatrices.UlSemisimple

def ulLin (k : ℤ) (l : ℕ) (hl : 0 < l) : Module.End ℂ (ℍ → ℂ) where
  toFun := UlF k l
  map_add' f g := by simp only [UlF, hkF, SlashAction.add_slash, Finset.sum_add_distrib]
  map_smul' c f := by
    simp only [UlF, hkF, RingHom.id_apply, Finset.smul_sum]
    refine Finset.sum_congr rfl fun j _ => _root_.GlobalTheory.HeckeFamilyMatrices.smul_slash_toGL k _ ?_ c f
    simp [ulFam, Matrix.det_fin_two]
    exact_mod_cast hl

theorem ulLin_apply (k : ℤ) (l : ℕ) (hl : 0 < l) (F : ℍ → ℂ) : ulLin k l hl F = UlF k l F := rfl

def ChiLaw (N : ℕ) (k : ℤ) (χ : DirichletCharacter ℂ N) (F : ℍ → ℂ) : Prop :=
  ∀ γ : SL(2, ℤ), γ ∈ CongruenceSubgroup.Gamma0 N → F ∣[k] γ = χ ((mat γ 1 1 : ℤ) : ZMod N) • F

def oldSp (N l : ℕ) (k : ℤ) (χ : DirichletCharacter ℂ N) (hl : 0 < l) : Submodule ℂ (ℍ → ℂ) where
  carrier := {F | ∃ f₁ f₂ : CuspForm (CongruenceSubgroup.Gamma1 N) k, ChiLaw N k χ ⇑f₁ ∧ ChiLaw N k χ ⇑f₂ ∧
    F = ⇑f₁ + ⇑f₂ ∣[k] toGL (dg l 1)}
  add_mem' := by
    rintro F G ⟨f₁, f₂, h₁, h₂, rfl⟩ ⟨g₁, g₂, h₁', h₂', rfl⟩
    refine ⟨f₁ + g₁, f₂ + g₂, fun γ hγ => ?_, fun γ hγ => ?_, ?_⟩
    · rw [CuspForm.coe_add, SlashAction.add_slash, h₁ γ hγ, h₁' γ hγ, smul_add]
    · rw [CuspForm.coe_add, SlashAction.add_slash, h₂ γ hγ, h₂' γ hγ, smul_add]
    · rw [CuspForm.coe_add, CuspForm.coe_add, SlashAction.add_slash]; abel
  zero_mem' := ⟨0, 0, fun γ _ => by simp, fun γ _ => by simp, by simp⟩
  smul_mem' := by
    rintro c F ⟨f₁, f₂, h₁, h₂, rfl⟩
    have hd : 0 < (dg (l : ℤ) 1).det := by simp [dg, Matrix.det_fin_two]; exact_mod_cast hl
    refine ⟨c • f₁, c • f₂, fun γ hγ => ?_, fun γ hγ => ?_, ?_⟩
    · rw [CuspForm.coe_smul, ModularForm.SL_smul_slash, h₁ γ hγ, smul_comm]
    · rw [CuspForm.coe_smul, ModularForm.SL_smul_slash, h₂ γ hγ, smul_comm]
    · rw [CuspForm.coe_smul, CuspForm.coe_smul, _root_.GlobalTheory.HeckeFamilyMatrices.smul_slash_toGL k _ hd, smul_add]

theorem aeval_mem {M : Type*} [AddCommGroup M] [Module ℂ M] (U : Module.End ℂ M) (O : Submodule ℂ M)
    (hU : ∀ x ∈ O, U x ∈ O) (p : ℂ[X]) (x : M) (hx : x ∈ O) : aeval U p x ∈ O := by
  have hpow : ∀ m : ℕ, ∀ y ∈ O, (U ^ m) y ∈ O := by
    intro m
    induction m with
    | zero => intro y hy; simpa using hy
    | succ m ih => intro y hy; rw [pow_succ', Module.End.mul_apply]; exact hU _ (ih y hy)
  rw [aeval_eq_sum_range, LinearMap.sum_apply]
  exact O.sum_mem fun i _ => by rw [LinearMap.smul_apply]; exact O.smul_mem _ (hpow i x hx)

end GlobalTheory.HeckeFamilyMatrices.UlSemisimple


open GlobalTheory.HeckeFamilyMatrices.UlSemisimple in
theorem GlobalTheory.HeckeFamilyMatrices.ul_semisimple : ∀ (N l k : ℕ), 5 ≤ N → l.Prime → ¬ l ∣ N → 3 ≤ k → ∀ (χ : DirichletCharacter ℂ N) (α : ℂ), α ^ 2 ≠ χ l * (l : ℂ) ^ (k - 1) → α ^ 2 ≠ χ l * (l : ℂ) ^ (k - 2) →
  ∀ f : CuspForm (Lev N l) (k : ℤ), (∀ γ : SL(2, ℤ), γ ∈ CongruenceSubgroup.Gamma0 (N * l) → ⇑f ∣[(k : ℤ)] γ = χ ((mat γ 1 1 : ℤ) : ZMod N) • ⇑f) →
  ∀ n : ℕ, (fun F => UlF (k : ℤ) l F - α • F)^[n] ⇑f = 0 → UlF (k : ℤ) l ⇑f = α • ⇑f := by
  intro N l k hN hl hlN hk χ α hα1 hα2 f hf n hn
  have hl0 : 0 < l := hl.pos
  set U := ulLin (k : ℤ) l hl0 with hUdef
  set O := oldSp N l (k : ℤ) χ hl0 with hOdef
  have hUO : ∀ F ∈ O, U F ∈ O := by
    rintro F ⟨f₁, f₂, h₁, h₂, rfl⟩
    obtain ⟨g₁, g₂, hg₁, hg₂, he⟩ := (_root_.GlobalTheory.OldSpace.ul_oldSpace N l k hN hl hlN hk χ α hα1 f₁ f₂ h₁ h₂).1
    exact ⟨g₁, g₂, hg₁, hg₂, he⟩
  set c : ℂ := χ l * (l : ℂ) ^ (k - 2) with hc
  have hcop : IsCoprime ((X - C α) ^ n) (X ^ 2 - C c) := by
    apply IsCoprime.pow_left
    rw [(irreducible_X_sub_C α).coprime_iff_not_dvd, dvd_iff_isRoot, IsRoot.def]
    simpa [sub_eq_zero] using hα2
  obtain ⟨A, B, hAB⟩ := hcop
  have key : aeval U A (aeval U ((X - C α) ^ n) ⇑f) + aeval U B (aeval U (X ^ 2 - C c) ⇑f) = ⇑f := by
    have := congrArg (fun p => aeval U p ⇑f) hAB
    simpa only [map_add (f := _), map_mul, map_one, LinearMap.add_apply, Module.End.mul_apply,
      Module.End.one_apply] using this
  have h1 : aeval U ((X - C α) ^ n) ⇑f = 0 := by
    rw [map_pow, map_sub, aeval_X, aeval_C, Module.End.pow_apply]
    convert hn using 2
    funext F
    simp [hUdef, ulLin_apply, Module.algebraMap_end_apply]
  have h2 : aeval U (X ^ 2 - C c) ⇑f ∈ O := by
    obtain ⟨f₁, f₂, h₁, h₂, he⟩ := _root_.GlobalTheory.HeckeFamilyMatrices.ulSq_old N l k hN hl hlN hk χ f hf
    refine ⟨f₁, f₂, h₁, h₂, ?_⟩
    rw [← he, map_sub, aeval_C, map_pow, aeval_X, LinearMap.sub_apply, Module.algebraMap_end_apply,
      pow_two, Module.End.mul_apply]
    rfl
  have hfO : ⇑f ∈ O := by
    rw [← key, h1, map_zero, zero_add]
    exact aeval_mem U O hUO B _ h2
  obtain ⟨f₁, f₂, h₁, h₂, he⟩ := hfO
  have hss := (_root_.GlobalTheory.OldSpace.ul_oldSpace N l k hN hl hlN hk χ α hα1 f₁ f₂ h₁ h₂).2 n
  rw [he] at hn ⊢
  exact hss hn

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.SlashSmulPos =====
