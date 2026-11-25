module

public import Development.WeilBound.CoreStatements.PublishedTheorems.JacquetShalikaBound.FormQuasiInvariantMirabolic
public import Mathlib.RingTheory.PowerSeries.Basic
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ValuationLtOneOfDiv
public import Development.WeilBound.CoreStatements.PublishedTheorems.JacquetShalikaBound.lift_levelP_alt₂
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.DifferentiableAtChart
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsSplitAdelicMatrixLocalComponent
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsInvariantHermitianFormCuspidalRep
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CuspRapidDecaySiegelGL
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CuspidalEqTwistNormalised
public import GroundTheory.AutomorphicForms.MacdonaldHecke
public import GroundTheory.AutomorphicForms.MacdonaldWhittakerHecke
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ColumnAverageQuasiInvariant
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ColumnMirabolicHolds
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUnitOfOneAdd
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InvMulMemIntegralGLOfMem
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemUnipBOfMemUnipotent
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MinusculeSetEqDoubleCoset
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SymmetricFunctionAbsoluteValues
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TendstoZeroOfSumSqLe
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnipCMemIntegralGL
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
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
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.WittVector.IsPoly
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
import Mathlib.Tactic.TypeStar
import Std.Tactic.BVDecide.Normalize.Prop
import GroundTheory.LocalFields.LocalFourierHaar
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Tactic.Linter.Style
import GroundTheory.AutomorphicForms.MacdonaldRecursion
import GroundTheory.AutomorphicForms.AffineBruhat
import Mathlib.Algebra.Module.StablyFree.Basic
import Mathlib.Order.CompletePartialOrder

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CMEqZeroOfNe, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoeffEqPowOfMulOneSub, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ColumnAverageHermitianPositive, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousOfTrivialInteger, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPowMulMemInteger, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsTranslateNeZero, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUnitForm, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FinalFormBesselBound, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.JacquetShalikaBoundOfSteps, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemCongruenceSubgroupOfDiv, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ModulusEqOneOfIntegral, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.OrthogonalityOfLatticeCharacter, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SecondCountableField, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SumRangeEsymmLMulSchur, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TwistedColumnAverageExists, Development.WeilBound.CoreStatements.PublishedTheorems.JacquetShalikaBound.JacquetShalikaBound

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CMEqZeroOfNe =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CMEqZeroOfNe", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.JacquetShalikaBound.FormQuasiInvariantMirabolic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix GroundTheory.Automorphic GroundTheory.Automorphic.Iwasawa PositivityTheory.JacquetShalikaLocal

namespace GlobalTheory.CompanionTheory.JSBound.ColumnUnipotent

section Algebra

variable {F : Type} [Field F] {n : ℕ}

theorem cM_eq_zero_of_ne {k : ℕ} (x : Fin (k + 1) → F) {i j : Fin n}
    (h : ¬ ((j : ℕ) = k + 1 ∧ (i : ℕ) < k + 1)) : cM n k x i j = 0 := by
  simp only [cM, Matrix.of_apply]
  rw [dite_eq_right h]

theorem cM_eq_of {k : ℕ} (x : Fin (k + 1) → F) {i j : Fin n} (hj : (j : ℕ) = k + 1)
    (hi : (i : ℕ) < k + 1) : cM n k x i j = x ⟨i, hi⟩ := by
  simp only [cM, Matrix.of_apply]
  rw [dite_eq_left ⟨hj, hi⟩]

theorem col_val (k : ℕ) (x : Fin (k + 1) → F) :
    ((col n k x : GL (Fin n) F) : Matrix (Fin n) (Fin n) F) = 1 + cM n k x := rfl

theorem col_inv_val (k : ℕ) (x : Fin (k + 1) → F) :
    (((col n k x)⁻¹ : GL (Fin n) F) : Matrix (Fin n) (Fin n) F) = 1 - cM n k x := rfl

theorem col_mem (k : ℕ) (x : Fin (k + 1) → F) : col n k x ∈ unipotent F n := by
  refine ⟨fun i j hij => ?_, fun i => ?_⟩
  · have hij' : (j : ℕ) < i := hij
    rw [col_val, Matrix.add_apply, Matrix.one_apply_ne (by intro e; subst e; omega),
      cM_eq_zero_of_ne x (by omega), add_zero]
  · rw [col_val, Matrix.add_apply, Matrix.one_apply_eq, cM_eq_zero_of_ne x (by omega), add_zero]

theorem superdiagSum_cM {k : ℕ} (hk : k + 1 < n) (x : Fin (k + 1) → F) :
    Whittaker.superdiagSum (cM n k x) = x (Fin.last k) := by
  unfold Whittaker.superdiagSum
  rw [Finset.sum_eq_single (⟨k, by omega⟩ : Fin n), Finset.sum_eq_single (⟨k + 1, hk⟩ : Fin n)]
  · rw [if_pos rfl, cM_eq_of x rfl (by simp)]
    rfl
  · intro j _ hj
    rw [if_neg]
    intro e
    exact hj (Fin.ext (by simpa using e))
  · simp
  · intro i _ hi
    refine Finset.sum_eq_zero fun j _ => ?_
    split_ifs with h
    · refine cM_eq_zero_of_ne x fun h' => hi (Fin.ext ?_)
      simp only
      omega
    · rfl
  · simp

theorem psiN_col (ψ : AddChar F ℂ) {k : ℕ} (hk : k + 1 < n) (x : Fin (k + 1) → F) :
    Whittaker.psiN ψ (col n k x) = ψ (x (Fin.last k)) := by
  rw [Whittaker.psiN, col_val, Whittaker.superdiagSum_add, Whittaker.superdiagSum_one, zero_add,
    superdiagSum_cM hk]

theorem mul_cM {k : ℕ} {M : Matrix (Fin n) (Fin n) F}
    (hM : ∀ i j : Fin n, (j : ℕ) ≤ k → M i j = (1 : Matrix (Fin n) (Fin n) F) i j)
    (x : Fin (k + 1) → F) : M * cM n k x = cM n k x := by
  have h : M * cM n k x = 1 * cM n k x := by
    ext i j
    rw [Matrix.mul_apply, Matrix.mul_apply]
    refine Finset.sum_congr rfl fun l _ => ?_
    by_cases hl : (l : ℕ) ≤ k
    · rw [hM i l hl]
    · rw [cM_eq_zero_of_ne x (i := l) (j := j) (by omega), mul_zero, mul_zero]
  rw [h, one_mul]

theorem conj_expand {M C : Matrix (Fin n) (Fin n) F} (hMC : M * C = C) (hCC : C * C = 0) :
    (1 + C) * M * (1 - C) = M + C * M - C := by
  calc (1 + C) * M * (1 - C) = M + C * M - M * C - C * (M * C) := by noncomm_ring
    _ = M + C * M - C := by rw [hMC, hCC, sub_zero]

end Algebra

section Local

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]
  {n : ℕ}

theorem inU_split (ψ : AddChar F ℂ) {k : ℕ} (hk : k + 1 < n) (g : GL (Fin n) F) (hg : inU k g) :
    ∃ (g' : GL (Fin n) F) (x : Fin (k + 1) → F), inU (k + 1) g' ∧ g = g' * col n k x ∧
      Whittaker.psiN ψ g = Whittaker.psiN ψ g' * ψ (x (Fin.last k)) := by
  obtain ⟨hu, hc⟩ := hg
  let x : Fin (k + 1) → F := fun i => (g : Matrix (Fin n) (Fin n) F) ⟨i, by omega⟩ ⟨k + 1, hk⟩
  have hv : ((g * (col n k x)⁻¹ : GL (Fin n) F) : Matrix (Fin n) (Fin n) F) =
      (g : Matrix (Fin n) (Fin n) F) - cM n k x := by
    rw [Units.val_mul, col_inv_val, mul_sub, mul_one, mul_cM hc]
  have hm : g * (col n k x)⁻¹ ∈ unipotent F n :=
    (unipotent F n).mul_mem hu ((unipotent F n).inv_mem (col_mem k x))
  refine ⟨g * (col n k x)⁻¹, x, ⟨hm, fun i j hj => ?_⟩, (inv_mul_cancel_right _ _).symm, ?_⟩
  · rw [hv, Matrix.sub_apply]
    by_cases hjk : (j : ℕ) ≤ k
    · rw [cM_eq_zero_of_ne x (by omega), sub_zero, hc i j hjk]
    · have hj' : (j : ℕ) = k + 1 := by omega
      by_cases hi : (i : ℕ) < k + 1
      · have hx : x ⟨i, hi⟩ = (g : Matrix (Fin n) (Fin n) F) i j := by
          have e : j = ⟨k + 1, hk⟩ := Fin.ext hj'
          subst e
          rfl
        rw [cM_eq_of x hj' hi, hx, sub_self, Matrix.one_apply_ne (by intro e; subst e; omega)]
      · rw [cM_eq_zero_of_ne x (by omega), sub_zero]
        by_cases e : i = j
        · subst e
          rw [hu.2, Matrix.one_apply_eq]
        · have hlt : id j < id i := by
            have : (j : ℕ) < i := by
              have : (i : ℕ) ≠ j := fun h => e (Fin.ext h)
              omega
            exact this
          rw [hu.1 hlt, Matrix.one_apply_ne e]
  · have h : Whittaker.psiN ψ g = Whittaker.psiN ψ (g * (col n k x)⁻¹ * col n k x) := by
      rw [inv_mul_cancel_right]
    rw [h, Whittaker.psiN_mul ψ hm (col_mem k x), psiN_col ψ hk]

theorem inU_conj (ψ : AddChar F ℂ) {k : ℕ} (g : GL (Fin n) F) (hg : inU (k + 1) g)
    (x : Fin (k + 1) → F) :
    ∃ g' : GL (Fin n) F, inU (k + 1) g' ∧ col n k x * g = g' * col n k x ∧
      Whittaker.psiN ψ g' = Whittaker.psiN ψ g := by
  obtain ⟨hu, hc⟩ := hg
  have hcol : col n k x ∈ unipotent F n := col_mem k x
  have hcg := (unipotent F n).mul_mem hcol hu
  have hinv := (unipotent F n).inv_mem hcol
  have hv : ((col n k x * g * (col n k x)⁻¹ : GL (Fin n) F) : Matrix (Fin n) (Fin n) F) =
      (g : Matrix (Fin n) (Fin n) F) + cM n k x * (g : Matrix (Fin n) (Fin n) F) - cM n k x := by
    rw [Units.val_mul, Units.val_mul, col_val, col_inv_val]
    exact conj_expand (mul_cM (fun i j hj => hc i j (by omega)) x) (cM_mul k x x)
  refine ⟨col n k x * g * (col n k x)⁻¹, ⟨(unipotent F n).mul_mem hcg hinv, fun i j hj => ?_⟩,
    (inv_mul_cancel_right _ _).symm, ?_⟩
  · have hC : (cM n k x * (g : Matrix (Fin n) (Fin n) F)) i j = cM n k x i j := by
      rw [Matrix.mul_apply, Finset.sum_congr rfl fun l _ => by rw [hc l j hj], ← Matrix.mul_apply,
        mul_one]
    rw [hv, Matrix.sub_apply, Matrix.add_apply, hC, hc i j hj, add_sub_cancel_right]
  · have h0 := Whittaker.psiN_ne_zero ψ (col n k x)
    rw [Whittaker.psiN_mul ψ hcg hinv, Whittaker.psiN_mul ψ hcol hu, Whittaker.psiN_inv ψ hcol]
    field_simp

end Local

theorem main : ColumnsUnipotent := by
  intro F _ _ _ _ _ _ μ _ ψ _ n k hk
  exact ⟨fun g hg => inU_split ψ hk g hg, fun g hg x => inU_conj ψ g hg x⟩

end GlobalTheory.CompanionTheory.JSBound.ColumnUnipotent
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CMEqZeroOfNe =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoeffEqPowOfMulOneSub =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoeffEqPowOfMulOneSub", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.JacquetShalikaBound.FormQuasiInvariantMirabolic\npublic import Mathlib.RingTheory.PowerSeries.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open PositivityTheory.JacquetShalikaLocal

namespace GlobalTheory.CompanionTheory.SatakeBound

open PowerSeries Filter Topology

theorem tendsto_coeff_mul_one_sub (G : ℂ⟦X⟧) (b : ℂ)
    (h : Tendsto (fun j => coeff j G) atTop (𝓝 0)) :
    Tendsto (fun j => coeff j (G * (1 - C b * X))) atTop (𝓝 0) := by
  rw [← tendsto_add_atTop_iff_nat 1]
  have e : ∀ j : ℕ, coeff (j + 1) (G * (1 - C b * X)) = coeff (j + 1) G - b * coeff j G := by
    intro j
    have : G * (1 - C b * X) = G - C b * (G * X) := by ring
    rw [this, map_sub, coeff_C_mul, coeff_succ_mul_X]
  simp only [e]
  have h1 := (tendsto_add_atTop_iff_nat 1).2 h
  simpa using h1.sub (h.const_mul b)

theorem tendsto_coeff_mul_prod (G : ℂ⟦X⟧) {ι : Type*} (s : Finset ι) (β : ι → ℂ)
    (h : Tendsto (fun j => coeff j G) atTop (𝓝 0)) :
    Tendsto (fun j => coeff j (G * ∏ k ∈ s, (1 - C (β k) * X))) atTop (𝓝 0) := by
  classical
  induction s using Finset.induction_on with
  | empty => simpa using h
  | insert a s ha ih =>
    rw [Finset.prod_insert ha]
    have : G * ((1 - C (β a) * X) * ∏ k ∈ s, (1 - C (β k) * X)) =
        (G * ∏ k ∈ s, (1 - C (β k) * X)) * (1 - C (β a) * X) := by ring
    rw [this]
    exact tendsto_coeff_mul_one_sub _ _ ih

theorem coeff_eq_pow_of_mul_one_sub (H : ℂ⟦X⟧) (b : ℂ) (h : H * (1 - C b * X) = 1) (j : ℕ) :
    coeff j H = b ^ j := by
  have e : H = 1 + C b * (H * X) := by
    calc H = H * (1 - C b * X) + C b * (H * X) := by ring
      _ = 1 + C b * (H * X) := by rw [h]
  induction j with
  | zero =>
    rw [e]; simp
  | succ j ih =>
    rw [e, map_add (f := _), coeff_C_mul, coeff_succ_mul_X, ih, pow_succ]
    simp [coeff_one, mul_comm]

theorem coeff_prod_one_sub {n : ℕ} (β : Fin n → ℂ) (r : ℕ) :
    coeff r (∏ i, (1 - C (β i) * X) : ℂ⟦X⟧) =
      (-1) ^ r * ∑ S ∈ Finset.powersetCard r Finset.univ, ∏ i ∈ S, β i := by
  classical
  have e : ∀ t : Finset (Fin n), ∏ i ∈ t, (-(C (β i) * X) : ℂ⟦X⟧) =
      C ((-1) ^ t.card * ∏ i ∈ t, β i) * X ^ t.card := by
    intro t
    induction t using Finset.induction_on with
    | empty => simp
    | insert a s ha ih =>
      rw [Finset.prod_insert ha, ih, Finset.prod_insert ha, Finset.card_insert_of_notMem ha]
      simp only [map_mul, map_pow, map_neg, map_one]
      ring
  have e2 : (∏ i, (1 - C (β i) * X) : ℂ⟦X⟧) = ∏ i, (1 + -(C (β i) * X)) := by
    simp only [sub_eq_add_neg]

  rw [e2, Finset.prod_one_add, map_sum, Finset.powersetCard_eq_filter, Finset.sum_filter,
  Finset.mul_sum]
  refine Finset.sum_congr rfl fun t _ => ?_
  rw [e, coeff_C_mul, coeff_X_pow]
  by_cases h : r = t.card
  · subst h; simp
  · rw [if_neg h, if_neg (fun h' => h h'.symm)]; simp

theorem mk_mul_prod_eq_one {n : ℕ} (β : Fin n → ℂ) (g : ℕ → ℂ) (h0 : g 0 = 1)
    (hrec : ∀ j : ℕ, 1 ≤ j → ∑ r ∈ Finset.range (j + 1),
      ((-1) ^ r * ∑ S ∈ Finset.powersetCard r Finset.univ, ∏ i ∈ S, β i) * g (j - r) = 0) :
    (PowerSeries.mk g : ℂ⟦X⟧) * ∏ i, (1 - C (β i) * X) = 1 := by
  ext j
  rw [mul_comm, coeff_mul, Finset.Nat.sum_antidiagonal_eq_sum_range_succ_mk]
  simp only [coeff_prod_one_sub, coeff_mk]
  rcases Nat.eq_zero_or_pos j with rfl | hj
  · simp [h0, coeff_one]
  · rw [hrec j hj, coeff_one, if_neg (by omega)]

end GlobalTheory.CompanionTheory.SatakeBound

theorem GlobalTheory.CompanionTheory.SatakeBound.norm_lt_one : liftZP_newton := by
  intro n β g h0 hrec hg i
  classical
  have hG := GlobalTheory.CompanionTheory.SatakeBound.mk_mul_prod_eq_one β g h0 hrec
  have hc : Filter.Tendsto (fun j => PowerSeries.coeff j (PowerSeries.mk g : PowerSeries ℂ))
      Filter.atTop (nhds 0) := by
    simpa [PowerSeries.coeff_mk] using hg
  have hH := GlobalTheory.CompanionTheory.SatakeBound.tendsto_coeff_mul_prod _ (Finset.univ.erase i) β hc
  have hone : ((PowerSeries.mk g : PowerSeries ℂ) *
      ∏ k ∈ Finset.univ.erase i, (1 - PowerSeries.C (β k) * PowerSeries.X)) *
      (1 - PowerSeries.C (β i) * PowerSeries.X) = 1 := by
    have hs := Finset.mul_prod_erase Finset.univ
      (fun k => (1 - PowerSeries.C (β k) * PowerSeries.X : PowerSeries ℂ)) (Finset.mem_univ i)
    calc _ = (PowerSeries.mk g : PowerSeries ℂ) * ((1 - PowerSeries.C (β i) * PowerSeries.X) *
          ∏ k ∈ Finset.univ.erase i, (1 - PowerSeries.C (β k) * PowerSeries.X)) := by ring
      _ = 1 := by rw [hs, hG]
  have hp := GlobalTheory.CompanionTheory.SatakeBound.coeff_eq_pow_of_mul_one_sub _ _ hone
  simp only [hp] at hH
  exact tendsto_pow_atTop_nhds_zero_iff_norm_lt_one.1 hH
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoeffEqPowOfMulOneSub =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ColumnAverageHermitianPositive =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ColumnAverageHermitianPositive", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.JacquetShalikaBound.FormQuasiInvariantMirabolic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Matrix GroundTheory.Automorphic GroundTheory.Automorphic.GLnLocal GroundTheory.Automorphic.Iwasawa
  GroundTheory.Automorphic.Spherical PositivityTheory.JacquetShalikaLocal
open scoped ValuativeRel ComplexConjugate

namespace GlobalTheory.CompanionTheory.JSBoundStep

theorem column_average_hermitian_positive : L0 → L3 → ColumnsMirabolic → FormHermitianPositive := by
  intro h0 h3 h3c
  unfold FormHermitianPositive ForR ForF
  intro F _ _ _ _ _ _ μ _ ψ hψ n V _ _ ρ hsm l k B B' hk hW hI hC
  unfold L0 ForF at h0
  unfold L3 ForR ForF at h3
  unfold ColumnsMirabolic ForF at h3c
  obtain ⟨-, hlat⟩ := h0 F μ ψ hψ
  obtain ⟨hlatM, hcv⟩ := hlat (k + 1)
  have h3' := h3 F μ ψ hψ n V ρ hsm
  obtain ⟨hcadd, hc0, hcP, -, -, -⟩ := h3c F μ ψ hψ n k hk
  obtain ⟨herm, psd, null, quasi, -⟩ := hI
  clear h0 h3 h3c hlat
  have hψinv : ∀ t : F, ψ (-t) * ψ t = 1 := fun t => by
    rw [← AddChar.map_add_eq_mul, neg_add_cancel, AddChar.map_zero_eq_one]
  have hψconj : ∀ t : F, conj (ψ (-t)) = ψ t := by
    intro t
    have hn : ‖ψ (-t)‖ = 1 := hψ.2.2 (-t)
    calc conj (ψ (-t)) = conj (ψ (-t)) * (ψ (-t) * ψ t) := by rw [hψinv, mul_one]
      _ = (conj (ψ (-t)) * ψ (-t)) * ψ t := by ring
      _ = ψ t := by rw [Complex.conj_mul', hn]; simp
  have hinv : ∀ (x : Fin (k + 1) → F) (b : V),
      ρ (PositivityTheory.JacquetShalikaLocal.col n k x) (ρ (PositivityTheory.JacquetShalikaLocal.col n k (-x)) b) = b := by
    intro x b
    have h1 : PositivityTheory.JacquetShalikaLocal.col n k x * PositivityTheory.JacquetShalikaLocal.col n k (-x) = 1 := by
      rw [← hcadd, add_neg_cancel, hc0]
    calc ρ (PositivityTheory.JacquetShalikaLocal.col n k x) (ρ (PositivityTheory.JacquetShalikaLocal.col n k (-x)) b)
        = (ρ (PositivityTheory.JacquetShalikaLocal.col n k x * PositivityTheory.JacquetShalikaLocal.col n k (-x))) b := by rw [map_mul]; rfl
      _ = b := by rw [h1, map_one]; rfl
  have hB : ∀ (x : Fin (k + 1) → F) (a b : V),
      B (ρ (PositivityTheory.JacquetShalikaLocal.col n k x) a) b = B a (ρ (PositivityTheory.JacquetShalikaLocal.col n k (-x)) b) := by
    intro x a b
    have hq := quasi (PositivityTheory.JacquetShalikaLocal.col n k x) (hcP x).1 a (ρ (PositivityTheory.JacquetShalikaLocal.col n k (-x)) b)
    rw [hinv, (hcP x).2.2.1, map_one] at hq
    simpa using hq

  have hnegS : ∀ (M : ℕ), ∀ x ∈ PositivityTheory.JacquetShalikaLocal.lat F (k + 1) M, -x ∈ PositivityTheory.JacquetShalikaLocal.lat F (k + 1) M := by
    intro M x hx
    simp only [PositivityTheory.JacquetShalikaLocal.lat, Set.mem_setOf_eq, Pi.neg_apply, mul_neg] at hx ⊢
    exact fun i => neg_mem (hx i)
  have hvol : ∀ M : ℕ, 0 < (Measure.pi fun _ => μ).real (PositivityTheory.JacquetShalikaLocal.lat F (k + 1) M) :=
    fun M => (hlatM M).2.2.2
  have hmeas : ∀ M : ℕ, MeasurableSet (PositivityTheory.JacquetShalikaLocal.lat F (k + 1) M) := fun M => (hlatM M).2.2.1
  have hvol' : ∀ M : ℕ, ∫ _ in PositivityTheory.JacquetShalikaLocal.lat F (k + 1) M, (1 : ℂ) ∂(Measure.pi fun _ => μ)
      = (((Measure.pi fun _ => μ).real (PositivityTheory.JacquetShalikaLocal.lat F (k + 1) M) : ℝ) : ℂ) := by
    intro M
    rw [setIntegral_const]
    simp
  have hv : ∀ M : ℕ, ∫ _ in PositivityTheory.JacquetShalikaLocal.lat F (k + 1) M, (1 : ℂ) ∂(Measure.pi fun _ => μ) ≠ 0 := by
    intro M
    rw [hvol' M]
    exact Complex.ofReal_ne_zero.mpr (hvol M).ne'
  have hmv : ∀ x : Fin (k + 1) → F,
      (↑(-1 : GL (Fin (k + 1)) F) : Matrix (Fin (k + 1)) (Fin (k + 1)) F).mulVec x = -x := by
    intro x
    rw [Units.val_neg, Units.val_one, Matrix.neg_mulVec, Matrix.one_mulVec]
  have hcvS : ∀ (M : ℕ) (f : (Fin (k + 1) → F) → ℂ),
      ∫ x in PositivityTheory.JacquetShalikaLocal.lat F (k + 1) M, f (-x) ∂(Measure.pi fun _ => μ)
        = ∫ x in PositivityTheory.JacquetShalikaLocal.lat F (k + 1) M, f x ∂(Measure.pi fun _ => μ) := by
    intro M f
    have himg : (fun x => (↑(-1 : GL (Fin (k + 1)) F) : Matrix (Fin (k + 1)) (Fin (k + 1)) F).mulVec x)
        '' PositivityTheory.JacquetShalikaLocal.lat F (k + 1) M = PositivityTheory.JacquetShalikaLocal.lat F (k + 1) M := by
      ext x
      constructor
      · rintro ⟨y, hy, rfl⟩
        simp only [hmv]
        exact hnegS M y hy
      · intro hx
        exact ⟨-x, hnegS M x hx, by simp only [hmv, neg_neg]⟩
    have e1 := hcv (-1) (PositivityTheory.JacquetShalikaLocal.lat F (k + 1) M) (fun _ => (1 : ℂ)) (hmeas M)
    have e2 := hcv (-1) (PositivityTheory.JacquetShalikaLocal.lat F (k + 1) M) f (hmeas M)
    rw [himg] at e1 e2
    simp only [hmv] at e2
    have alg : ∀ c v I J : ℂ, v ≠ 0 → v = c * v → I = c * J → J = I := by
      intro c v I J hv0 h1 h2
      have hc : c = 1 := by
        have : c * v = 1 * v := by rw [← h1, one_mul]
        exact mul_right_cancel₀ hv0 this
      rw [h2, hc, one_mul]
    exact alg _ _ _ _ (hv M) e1 e2

  have hξ : ∀ x : Fin (k + 1) → F, Pi.single (Fin.last k) (1 : F) ⬝ᵥ x = x (Fin.last k) := by
    intro x
    simp [dotProduct, Pi.single_apply]
  choose P hP1 hP2 using fun (M : ℕ) (u : V) => h3' k M (Pi.single (Fin.last k) (1 : F)) u
  simp only [hξ] at hP1 hP2
  have hSA : ∀ (M : ℕ) (a b : V), B (P M a) b = B a (P M b) := by
    intro M a b
    calc B (P M a) b = conj (B b (P M a)) := (herm b (P M a)).symm
      _ = ∫ x in PositivityTheory.JacquetShalikaLocal.lat F (k + 1) M,
            conj (ψ (-x (Fin.last k)) * B b (ρ (PositivityTheory.JacquetShalikaLocal.col n k x) a)) ∂(Measure.pi fun _ => μ) := by
          rw [hP1 M a (B b), integral_conj]
      _ = ∫ x in PositivityTheory.JacquetShalikaLocal.lat F (k + 1) M,
            ψ (-(-x) (Fin.last k)) * B a (ρ (PositivityTheory.JacquetShalikaLocal.col n k (-x)) b) ∂(Measure.pi fun _ => μ) := by
          congr 1
          funext x
          rw [map_mul, hψconj, herm, hB x a b]
          simp only [Pi.neg_apply, neg_neg]
      _ = ∫ x in PositivityTheory.JacquetShalikaLocal.lat F (k + 1) M,
            ψ (-x (Fin.last k)) * B a (ρ (PositivityTheory.JacquetShalikaLocal.col n k x) b) ∂(Measure.pi fun _ => μ) :=
          hcvS M (fun x => ψ (-x (Fin.last k)) * B a (ρ (PositivityTheory.JacquetShalikaLocal.col n k x) b))
      _ = B a (P M b) := (hP1 M b (B a)).symm
  have hE : ∀ (M : ℕ) (u v : V),
      (∀ y ∈ PositivityTheory.JacquetShalikaLocal.lat F (k + 1) M, ρ (PositivityTheory.JacquetShalikaLocal.col n k y) v = ψ (y (Fin.last k)) • v) →
      B u (P M v) = (∫ _ in PositivityTheory.JacquetShalikaLocal.lat F (k + 1) M, (1 : ℂ) ∂(Measure.pi fun _ => μ)) * B u v := by
    intro M u v hv0
    rw [hP1 M v (B u), ← integral_mul_const]
    refine setIntegral_congr_fun (hmeas M) ?_
    intro x hx
    beta_reduce
    rw [hv0 x hx, map_smul, smul_eq_mul, ← mul_assoc, hψinv]
  have hL : ∀ (M : ℕ) (u : V),
      l (P M u) = (∫ _ in PositivityTheory.JacquetShalikaLocal.lat F (k + 1) M, (1 : ℂ) ∂(Measure.pi fun _ => μ)) * l u := by
    intro M u
    rw [hP1 M u l, ← integral_mul_const]
    congr 1
    funext x
    rw [hW (PositivityTheory.JacquetShalikaLocal.col n k x) (hcP x).2.1.1 u, (hcP x).2.2.2, ← mul_assoc, hψinv]
  have hrel : ∀ (M : ℕ) (u : V), B (P M u) (P M u)
      = (∫ _ in PositivityTheory.JacquetShalikaLocal.lat F (k + 1) M, (1 : ℂ) ∂(Measure.pi fun _ => μ)) * B u (P M u) := by
    intro M u
    rw [hSA M u (P M u), hE M u (P M u) (hP2 M u)]
  have hchar : ∀ u u' : V, ∃ M₀ : ℕ, ∀ M, M₀ ≤ M → B' u' u = B u' (P M u) := by
    intro u u'
    obtain ⟨M₀, h⟩ := hC u u'
    exact ⟨M₀, fun M hM => by rw [h M hM, hP1 M u (B u')]⟩
  refine ⟨fun u u' => ?_, fun u => ?_, fun u hu => ?_⟩
  · obtain ⟨M1, h1⟩ := hchar u u'
    obtain ⟨M2, h2⟩ := hchar u' u
    rw [h2 (max M1 M2) (le_max_right _ _), h1 (max M1 M2) (le_max_left _ _), herm, hSA]
  · obtain ⟨M1, h1⟩ := hchar u u
    rw [h1 M1 le_rfl]
    have hp := psd (P M1 u)
    rw [hrel M1 u, hvol' M1, Complex.re_ofReal_mul] at hp
    exact (mul_nonneg_iff_of_pos_left (hvol M1)).mp hp
  · obtain ⟨M1, h1⟩ := hchar u u
    rw [h1 M1 le_rfl] at hu
    have h0' : B (P M1 u) (P M1 u) = 0 := by rw [hrel, hu, mul_zero]
    have hl0 := null (P M1 u) h0'
    rw [hL M1 u] at hl0
    exact (mul_eq_zero.mp hl0).resolve_left (hv M1)

end GlobalTheory.CompanionTheory.JSBoundStep

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ColumnAverageHermitianPositive =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousOfTrivialInteger =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousOfTrivialInteger", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.JacquetShalikaBound.FormQuasiInvariantMirabolic\nimport GroundTheory.LocalFields.LocalFourierHaar\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open PositivityTheory.JacquetShalikaLocal

noncomputable section

open MeasureTheory Matrix GroundTheory.Automorphic GroundTheory.Automorphic.GLnLocal
open scoped ValuativeRel NNReal Pointwise

namespace GlobalTheory.CompanionTheory.JSBound

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]

theorem continuous_of_trivial_integer {ψ : AddChar F ℂ} (h : ∀ x ∈ 𝒪[F], ψ x = 1) : Continuous ψ := by
  refine IsLocallyConstant.continuous ?_
  rw [IsLocallyConstant.iff_exists_open]
  intro x
  refine ⟨(fun y => y - x) ⁻¹' (𝒪[F] : Set F),
    (Valuation.isOpen_integer).preimage (by fun_prop), ?_, ?_⟩
  · simpa using (𝒪[F]).zero_mem
  · intro y hy
    have hxy : y = x + (y - x) := by ring
    rw [hxy, AddChar.map_add_eq_mul, h _ hy, mul_one]

theorem uniformizer_pow_ne_zero (M : ℕ) : (uniformizer F : F) ^ M ≠ 0 :=
  pow_ne_zero _ ((Valuation.ne_zero_iff _).mp (valuation_uniformizer_ne_zero F))

theorem lat_eq_preimage (m M : ℕ) : lat F m M =
    (Homeomorph.smulOfNeZero ((uniformizer F : F) ^ M) (uniformizer_pow_ne_zero M)) ⁻¹'
      Measures.box (F := F) (ι := Fin m) := by
  ext x
  simp [lat, Measures.mem_box]

theorem isOpen_lat (m M : ℕ) : IsOpen (lat F m M) := by
  rw [lat_eq_preimage]
  exact Measures.isOpen_box.preimage (Homeomorph.continuous _)

theorem isCompact_lat (m M : ℕ) : IsCompact (lat F m M) := by
  rw [lat_eq_preimage]
  exact (Homeomorph.isCompact_preimage _).2 Measures.isCompact_box

theorem zero_mem_lat (m M : ℕ) : (0 : Fin m → F) ∈ lat F m M := by
  intro i
  simpa using (𝒪[F]).zero_mem

variable [MeasurableSpace F] [BorelSpace F] (μ : Measure F) [μ.IsAddHaarMeasure]

theorem lat_measure_pos (m M : ℕ) :
    0 < (Measure.pi fun _ : Fin m => μ).real (lat F m M) := by
  haveI := Measures.sigmaCompactSpace F
  have h0 := (isOpen_lat (F := F) m M).measure_ne_zero (Measure.pi fun _ : Fin m => μ)
    ⟨0, zero_mem_lat m M⟩
  have h1 := (isCompact_lat (F := F) m M).measure_lt_top (μ := Measure.pi fun _ : Fin m => μ)
  exact ENNReal.toReal_pos h0 h1.ne

theorem setIntegral_image_mulVec {m : ℕ} (g : GL (Fin m) F) (A : Set (Fin m → F))
    (f : (Fin m → F) → ℂ) :
    ∫ x in (fun x => (g : Matrix (Fin m) (Fin m) F) *ᵥ x) '' A, f x ∂(Measure.pi fun _ => μ) =
      ((Measures.modulus (g : Matrix (Fin m) (Fin m) F).det : ℝ) : ℂ) *
        ∫ x in A, f ((g : Matrix (Fin m) (Fin m) F) *ᵥ x) ∂(Measure.pi fun _ => μ) := by
  haveI := Measures.sigmaCompactSpace F
  haveI := Measures.metrizableSpace F
  set ν : Measure (Fin m → F) := Measure.pi fun _ => μ with hν
  set L := Measures.glEquiv g with hL
  let e : (Fin m → F) ≃ᵐ (Fin m → F) := (Homeomorph.smul L).toMeasurableEquiv
  have he : ∀ x, e x = (g : Matrix (Fin m) (Fin m) F) *ᵥ x := fun x => Measures.glEquiv_apply g x
  have hc : distribHaarChar (Fin m → F) L =
      Measures.modulus (g : Matrix (Fin m) (Fin m) F).det := by
    rw [hL, Measures.distribHaarChar_glEquiv, ← Measures.modulus_units]
    rfl
  have hmap : ν.map e.symm = (Measures.modulus (g : Matrix (Fin m) (Fin m) F).det) • ν := by
    refine Measure.ext fun s _ => ?_
    have hs : e.symm ⁻¹' s = L • s := (e.image_eq_preimage_symm s).symm
    rw [e.symm.map_apply, hs, ← distribHaarChar_mul ν L s, hc, Measure.smul_apply,
      ENNReal.smul_def, smul_eq_mul]
  have himg : (fun x => (g : Matrix (Fin m) (Fin m) F) *ᵥ x) '' A = e.symm ⁻¹' A := by
    rw [← e.image_eq_preimage_symm]
    exact Set.image_congr fun x _ => (he x).symm
  have key := setIntegral_map_equiv (μ := ν) e.symm (fun x => f (e x)) A
  simp only [MeasurableEquiv.apply_symm_apply] at key
  rw [himg, ← key, hmap, Measure.restrict_smul, integral_smul_nnreal_measure]
  simp only [he, NNReal.smul_def, Complex.real_smul]

theorem l0 : L0 := by
  intro F _ _ _ _ _ _ μ _ ψ hψ
  refine ⟨continuous_of_trivial_integer hψ.1, fun m => ⟨fun M => ?_, fun g A f _ => ?_⟩⟩
  · exact ⟨isCompact_lat m M, isOpen_lat m M, (isOpen_lat m M).measurableSet, lat_measure_pos μ m M⟩
  · exact setIntegral_image_mulVec μ g A f

end GlobalTheory.CompanionTheory.JSBound

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousOfTrivialInteger =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPowMulMemInteger =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPowMulMemInteger", "h": "module\n\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ValuationLtOneOfDiv\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.JacquetShalikaBound.FormQuasiInvariantMirabolic\nimport GroundTheory.LocalFields.LocalFourierHaar\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open PositivityTheory.JacquetShalikaLocal MeasureTheory
open scoped ValuativeRel

namespace GlobalTheory.CompanionTheory.SatakeBound

section Lat

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]


open GroundTheory.Automorphic.GLnLocal in
theorem exists_pow_mul_mem_integer (a : F) :
    ∃ M : ℕ, (uniformizer F : F) ^ M * a ∈ 𝒪[F] := by
  apply GlobalTheory.CompanionTheory.SatakeBound.LargeLattice.exists_pow_mul_mem


theorem lat_mono {m M M' : ℕ} (h : M ≤ M') : lat F m M ⊆ lat F m M' := by
  intro x hx
  simp only [lat, Set.mem_ofPred_eq] at hx ⊢
  exact fun i => GlobalTheory.CompanionTheory.JSBound.unif_pow_mul_mem_of_le h (hx i)

theorem exists_mem_lat {m : ℕ} (y : Fin m → F) : ∃ M, y ∈ lat F m M := by
  choose N hN using fun i => exists_pow_mul_mem_integer (y i)
  refine ⟨Finset.univ.sup N, ?_⟩
  simp only [lat, Set.mem_ofPred_eq]
  exact fun i => GlobalTheory.CompanionTheory.JSBound.unif_pow_mul_mem_of_le (Finset.le_sup (Finset.mem_univ i)) (hN i)

theorem add_mem_lat {m M : ℕ} {x y : Fin m → F} (hx : x ∈ lat F m M) (hy : y ∈ lat F m M) :
    x + y ∈ lat F m M := by
  simp only [lat, Set.mem_ofPred_eq] at hx hy ⊢
  intro i
  rw [Pi.add_apply, mul_add]
  exact add_mem (hx i) (hy i)

theorem sub_mem_lat {m M : ℕ} {x y : Fin m → F} (hx : x ∈ lat F m M) (hy : y ∈ lat F m M) :
    x - y ∈ lat F m M := by
  simp only [lat, Set.mem_ofPred_eq] at hx hy ⊢
  intro i
  rw [Pi.sub_apply, mul_sub]
  exact sub_mem (hx i) (hy i)

theorem setIntegral_lat_add [MeasurableSpace F] [BorelSpace F] (μ : Measure F)
    [μ.IsAddHaarMeasure] {m M : ℕ} (hmeas : MeasurableSet (lat F m M))
    {y : Fin m → F} (hy : y ∈ lat F m M) (f : (Fin m → F) → ℂ) :
    ∫ x in lat F m M, f (x + y) ∂(Measure.pi fun _ => μ)
      = ∫ x in lat F m M, f x ∂(Measure.pi fun _ => μ) := by
  have hpre : (fun x => y + x) ⁻¹' lat F m M = lat F m M := by
    ext x
    simp only [Set.mem_preimage]
    constructor
    · intro h
      have h' := sub_mem_lat h hy
      rwa [add_sub_cancel_left] at h'
    · intro h
      exact add_mem_lat hy h
  have hmp := measurePreserving_add_left (Measure.pi fun _ : Fin m => μ) y
  have e := hmp.setIntegral_preimage_emb (measurableEmbedding_addLeft y) f (lat F m M)
  rw [hpre] at e
  simp only [add_comm y] at e
  exact e

end Lat

theorem equivariant_of_steps : L0 → ColumnsMirabolic → ColumnsUnipotent → FormCoefficientStability → FormEquivariantColumn := by
  intro hL0 hL3c hL3d _
  unfold L0 ColumnsMirabolic ColumnsUnipotent FormEquivariantColumn ForR ForF at *
  intro F _ _ _ _ _ _ μ _ ψ hψ n V _ _ ρ _ l k B B' hk hInv hChar g hg u u'
  obtain ⟨-, hlat⟩ := hL0 F μ ψ hψ
  have hmeas : ∀ M, MeasurableSet (lat F (k + 1) M) := fun M => ((hlat (k + 1)).1 M).2.2.1
  obtain ⟨hadd, -⟩ := hL3c F μ ψ hψ n k hk
  obtain ⟨hd1, hd2⟩ := hL3d F μ ψ hψ n k hk
  obtain ⟨-, -, -, -, hequi⟩ := hInv
  obtain ⟨g', x₀, hg', rfl, hpsi⟩ := hd1 g hg
  obtain ⟨M₁, hM₁⟩ := hChar ((ρ (g' * col n k x₀)) u) u'
  obtain ⟨M₂, hM₂⟩ := hChar u u'
  obtain ⟨M₃, hM₃⟩ := exists_mem_lat x₀
  have hx₀ : x₀ ∈ lat F (k + 1) (M₁ + M₂ + M₃) := lat_mono (by omega) hM₃
  have hpt : ∀ x : Fin (k + 1) → F,
      ψ (-x (Fin.last k)) * (B u') ((ρ (col n k x)) ((ρ (g' * col n k x₀)) u)) =
        GroundTheory.Automorphic.Whittaker.psiN ψ g' * ψ (x₀ (Fin.last k)) *
          (ψ (-(x + x₀) (Fin.last k)) * (B u') ((ρ (col n k (x + x₀))) u)) := by
    intro x
    obtain ⟨g'', hg'', hc, hps⟩ := hd2 g' hg' x
    have hr : (ρ (col n k x)) ((ρ (g' * col n k x₀)) u) = (ρ g'') ((ρ (col n k (x + x₀))) u) := by
      rw [← Module.End.mul_apply, ← map_mul, ← mul_assoc, hc, mul_assoc, ← hadd, map_mul,
        Module.End.mul_apply]
    have hψ' : ψ (-x (Fin.last k)) = ψ (x₀ (Fin.last k)) * ψ (-(x + x₀) (Fin.last k)) := by
      rw [← AddChar.map_add_eq_mul]
      congr 1
      rw [Pi.add_apply]
      ring
    rw [hr, hequi g'' hg'', hps, hψ']
    ring
  rw [hM₁ (M₁ + M₂ + M₃) (by omega), hM₂ (M₁ + M₂ + M₃) (by omega), hpsi]
  simp_rw [hpt]
  rw [integral_const_mul]
  have e := setIntegral_lat_add μ (hmeas (M₁ + M₂ + M₃)) hx₀
    (fun x => ψ (-x (Fin.last k)) * (B u') ((ρ (col n k x)) u))
  beta_reduce at e
  rw [e]

end GlobalTheory.CompanionTheory.SatakeBound
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPowMulMemInteger =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsTranslateNeZero =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsTranslateNeZero", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.JacquetShalikaBound.lift_levelP_alt₂\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.DifferentiableAtChart\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsSplitAdelicMatrixLocalComponent\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain GlobalTheory.CuspRep GlobalTheory.LFun PositivityTheory.JacquetShalikaLocal

namespace GlobalTheory.CompanionTheory.SatakeBound

variable {E : Type} [Field E] [NumberField E] [_root_.NumberField.IsTotallyComplex E] {a : ℕ}

def IsFix (π : CuspSub E a) (w : HeightOneSpectrum (𝓞 E)) (v : π.V) : Prop :=
  ∀ k ∈ KGL w (n := a), π.locRep w k v = v

def sphSpan (π : CuspSub E a) (w : HeightOneSpectrum (𝓞 E)) : Submodule ℂ (Sm E a) :=
  Submodule.span ℂ {φ | ∃ (g : GL (Fin a) (w.adicCompletion E)) (v : π.V), IsFix π w v ∧ φ = (π.locRep w g v).1}

theorem locRep_val (π : CuspSub E a) (w : HeightOneSpectrum (𝓞 E)) (g : GL (Fin a) (w.adicCompletion E)) (v : π.V) :
    (π.locRep w g v).1 = finRep E a (locGL E a w g) v.1 := rfl

theorem mem_sphSpan (π : CuspSub E a) (w : HeightOneSpectrum (𝓞 E)) (g : GL (Fin a) (w.adicCompletion E)) {v : π.V}
    (hv : IsFix π w v) : (π.locRep w g v).1 ∈ sphSpan π w :=
  Submodule.subset_span ⟨g, v, hv, rfl⟩

theorem isFix_op (π : CuspSub E a) (w : HeightOneSpectrum (𝓞 E)) (o : Op E a)
    (hc : ∀ g, act o * finRep E a (locGL E a w g) = finRep E a (locGL E a w g) * act o) {v : π.V} (hv : IsFix π w v) :
    IsFix π w (π.op o v) := fun k hk => by
  refine Subtype.ext ?_
  rw [locRep_val, CuspSub.op_val]
  have e := LinearMap.congr_fun (hc k) v.1
  simp only [Module.End.mul_apply] at e
  rw [← e, ← locRep_val, hv k hk]

theorem act_translate (π : CuspSub E a) (w : HeightOneSpectrum (𝓞 E)) (o : Op E a)
    (hc : ∀ g, act o * finRep E a (locGL E a w g) = finRep E a (locGL E a w g) * act o)
    (g : GL (Fin a) (w.adicCompletion E)) {v : π.V} (hv : IsFix π w v) :
    act o (π.locRep w g v).1 ∈ sphSpan π w := by
  have e := LinearMap.congr_fun (hc g) v.1
  simp only [Module.End.mul_apply] at e
  rw [locRep_val, e]
  exact mem_sphSpan π w g (isFix_op π w o hc hv)

theorem cpt_comm (y : Kinf E a) (k : GL (Fin a) (Af E)) :
    act (.cpt y : Op E a) * finRep E a k = finRep E a k * act (.cpt y : Op E a) := by
  change rt E a _ * rt E a _ = rt E a _ * rt E a _
  rw [← map_mul, ← map_mul]
  exact congrArg (rt E a) (infGL_comm _ _)

theorem lie_comm' (X : Lie E a) (k : GL (Fin a) (Af E)) :
    act (.lie X : Op E a) * finRep E a k = finRep E a k * act (.lie X : Op E a) :=
  lie_rt_fin X k

theorem fin_translate (π : CuspSub E a) (w : HeightOneSpectrum (𝓞 E)) (k : GL (Fin a) (Af E))
    (g : GL (Fin a) (w.adicCompletion E)) {v : π.V} (hv : IsFix π w v) :
    finRep E a k (π.locRep w g v).1 ∈ sphSpan π w := by
  obtain ⟨h, gw, e, hc⟩ := _root_.GlobalTheory.CuspGeneric.exists_split_loc E a w (finGL E a (k * locGL E a w g))
  obtain ⟨h', hh'⟩ : ∃ h' : GL (Fin a) (Af E), h' = k * locGL E a w g * (locGL E a w gw)⁻¹ := ⟨_, rfl⟩
  have hh : h = finGL E a h' := by
    rw [hh', map_mul, map_inv, e, mul_inv_cancel_right]
  have hcomm : ∀ u, finRep E a h' * finRep E a (locGL E a w u) = finRep E a (locGL E a w u) * finRep E a h' := fun u => by
    have h2 := congrArg (rt E a) (hc u)
    rw [hh, map_mul, map_mul] at h2
    exact h2
  have hfix : IsFix π w (π.op (.fin h') v) := isFix_op π w (.fin h') (fun u => hcomm u) hv
  have e2 : finRep E a k (π.locRep w g v).1 = (π.locRep w gw (π.op (.fin h') v)).1 := by
    rw [locRep_val, locRep_val, CuspSub.op_val]
    change (finRep E a k * finRep E a (locGL E a w g)) v.1 = (finRep E a (locGL E a w gw) * finRep E a h') v.1
    rw [← hcomm, ← map_mul, ← map_mul, hh', inv_mul_cancel_right]
  rw [e2]
  exact mem_sphSpan π w gw hfix

theorem isStable_sphSpan (π : CuspSub E a) (w : HeightOneSpectrum (𝓞 E)) : _root_.GlobalTheory.CuspRep.IsStable (sphSpan π w) := by
  intro o φ hφ
  induction hφ using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨g, v, hv, rfl⟩ := hx
    cases o with
    | fin k => exact fin_translate π w k g hv
    | cpt y => exact act_translate π w _ (fun u => cpt_comm y _) g hv
    | lie X => exact act_translate π w _ (fun u => lie_comm' X _) g hv
  | zero => rw [map_zero]; exact Submodule.zero_mem _
  | add x y _ _ hx hy => rw [map_add (f := _)]; exact Submodule.add_mem _ hx hy
  | smul c x _ hx => rw [map_smul]; exact Submodule.smul_mem _ c hx

theorem sphSpan_le (π : CuspSub E a) (w : HeightOneSpectrum (𝓞 E)) : sphSpan π w ≤ π.V :=
  Submodule.span_le.2 fun _ ⟨g, v, _, e⟩ => e ▸ (π.locRep w g v).2

theorem exists_translate_ne_zero : G2 := by
  intro E _ _ _ a π w B hB l hl
  by_contra hcon
  push_neg at hcon
  obtain ⟨x, hx⟩ := hB.exists_vec
  have hfix : ∀ v : π.V, IsFix π w v → v ≠ 0 → IsSatVecGL w (π.locRep w) v B := fun v hv h0 =>
    hB.2 v (GlobalTheory.LGrp.mem_fixed.2 hv) h0
  have hxf : IsFix π w x := GlobalTheory.LGrp.mem_fixed.1 hx.2.1
  have hker : sphSpan π w ≤ (LinearMap.ker l).map π.V.subtype := by
    refine Submodule.span_le.2 ?_
    rintro _ ⟨g, v, hv, rfl⟩
    refine ⟨π.locRep w g v, ?_, rfl⟩
    by_cases h0 : v = 0
    · simp [h0]
    · exact hcon v g (hfix v hv h0)
  rcases π.irred _ (sphSpan_le π w) (isStable_sphSpan π w) with h | h
  · have h1 := mem_sphSpan π w 1 hxf
    rw [h, Submodule.mem_bot] at h1
    exact hx.1 (Subtype.ext (by simpa using h1))
  · refine hl (LinearMap.ext fun u => ?_)
    have h1 : u.1 ∈ sphSpan π w := by rw [h]; exact u.2
    obtain ⟨y, hy, e⟩ := hker h1
    rw [LinearMap.zero_apply, ← Subtype.ext (a1 := y) (a2 := u) e]
    exact hy

end GlobalTheory.CompanionTheory.SatakeBound

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsTranslateNeZero =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUnitForm =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUnitForm", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.JacquetShalikaBound.lift_levelP_alt₂\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsInvariantHermitianFormCuspidalRep\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CuspRapidDecaySiegelGL\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CuspidalEqTwistNormalised\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Matrix Formalism.L2.Host GlobalTheory.CuspRep GlobalTheory.LFun PositivityTheory.JacquetShalikaLocal

attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

namespace GlobalTheory.CompanionTheory.JSUnit

variable {E : Type} [Field E] [NumberField E] [_root_.NumberField.IsTotallyComplex E] {a : ℕ}

theorem norm_central (π : CuspSub E a) (H : π.V →ₗ⋆[ℂ] π.V →ₗ[ℂ] ℂ) (hp : ∀ φ, φ ≠ 0 → 0 < (H φ φ).re)
    (hi : ∀ k φ ψ, H (π.op (.fin k) φ) (π.op (.fin k) ψ) = H φ ψ) {ω : HChar E} (hω : π.HasCentChar ω) (z) :
    ‖((ω.1 (finId E z) : ℂˣ) : ℂ)‖ = 1 := by
  have := Submodule.nontrivial_iff_ne_bot.2 π.ne_bot
  obtain ⟨x, hx⟩ := exists_ne (0 : π.V)
  have h1 : π.op (.fin (GeneralLinearGroup.scalar (Fin a) z)) x = ((ω.1 (finId E z) : ℂˣ) : ℂ) • x := hω z x
  have h2 := hi (GeneralLinearGroup.scalar (Fin a) z) x x
  rw [h1] at h2
  generalize ((ω.1 (finId E z) : ℂˣ) : ℂ) = c at h2 ⊢
  simp only [map_smulₛₗ, LinearMap.smul_apply, smul_eq_mul] at h2
  have hne : H x x ≠ 0 := fun e => by
    have h := hp x hx
    simp [e] at h
  have h3 : starRingEnd ℂ c * c = 1 := mul_right_cancel₀ hne (by linear_combination h2)
  rw [Complex.conj_mul'] at h3
  have h4 : ‖c‖ ^ 2 = 1 := by exact_mod_cast h3
  exact (pow_eq_one_iff_of_nonneg (norm_nonneg _) two_ne_zero).1 h4

theorem norm_loc (π : CuspSub E a) (H : π.V →ₗ⋆[ℂ] π.V →ₗ[ℂ] ℂ) (hp : ∀ φ, φ ≠ 0 → 0 < (H φ φ).re)
    (hi : ∀ k φ ψ, H (π.op (.fin k) φ) (π.op (.fin k) ψ) = H φ ψ) (χ : HChar E) {ω : HChar E} (hu : ω.IsUnitary)
    (hω : (π.twist χ).HasCentChar ω) (ha : a ≠ 0) (w : HeightOneSpectrum (𝓞 E)) (g : GL (Fin a) (w.adicCompletion E)) :
    ‖((χ.loc w (GeneralLinearGroup.det g) : ℂˣ) : ℂ)‖ = 1 := by
  have e : (π.twist χ).twist χ⁻¹ = π := by
    rw [← CuspSub.twist_mul, mul_inv_cancel, CuspSub.twist_one]
  have h2 := hω.twist χ⁻¹
  rw [e] at h2
  have h3 := norm_central π H hp hi h2 (GeneralLinearGroup.det (locGL E a w g))
  rw [finId_det_locGL] at h3
  generalize GeneralLinearGroup.det g = u at h3 ⊢
  have h4 : ‖((ω.loc w u : ℂˣ) : ℂ)‖ = 1 := hu _
  have h5 : (ω * χ⁻¹ ^ a).loc w u = ω.loc w u * (χ.loc w u)⁻¹ ^ a := rfl
  change ‖(((ω * χ⁻¹ ^ a).loc w u : ℂˣ) : ℂ)‖ = 1 at h3
  rw [h5] at h3
  simp only [Units.val_mul, Units.val_pow_eq_pow_val, Units.val_inv_eq_inv_val, norm_mul, norm_pow, norm_inv, h4,
    one_mul] at h3
  have h6 := (pow_eq_one_iff_of_nonneg (by positivity) ha).1 h3
  exact inv_eq_one.1 h6

theorem exists_unit_form : G1 := by
  intro E _ _ _ a π hu w
  obtain ⟨ω, hωu, hω⟩ := hu
  rw [CG.hasCentChar_mk] at hω
  obtain ⟨π₀, χ, hn, rfl⟩ := GlobalTheory.CompanionTheory.TwistNorm.exists_twist_normalised π
  obtain ⟨H, h1, h2, h3, -, -⟩ := GlobalTheory.GelfandKazhdanHerm.exists_invariant_hermitian
    GlobalTheory.CompanionTheory.CuspFinGL.cuspFormsBoundedGL E a π₀ hn
  let T := π₀.toTwist χ
  have hT : ∀ g x, (π₀.twist χ).locRep w g (T x) =
      ((χ.loc w (GeneralLinearGroup.det g) : ℂˣ) : ℂ) • T (π₀.locRep w g x) := fun g x => by
    rw [CuspSub.locRep_eq, CuspSub.op_toTwist, opAdd, zero_smul, add_zero, map_smul, opMul, CuspSub.chiDet_locGL]
    rfl
  have hn1 : ∀ g : GL (Fin a) (w.adicCompletion E), ‖((χ.loc w (GeneralLinearGroup.det g) : ℂˣ) : ℂ)‖ = 1 := fun g => by
    rcases eq_or_ne a 0 with rfl | ha
    · rw [show GeneralLinearGroup.det g = 1 from Units.ext (by simp [Matrix.det_isEmpty]), map_one]
      simp
    · exact norm_loc π₀ H h2 h3 χ hωu hω ha w g
  refine ⟨(H.comp T.symm.toLinearMap).compl₂ T.symm.toLinearMap, ?_⟩
  refine And.intro (fun u v => ?_) (And.intro (fun u hu => ?_) fun g u v => ?_)
  · simpa using h1 (T.symm u) (T.symm v)
  · exact h2 _ (T.symm.map_ne_zero_iff.2 hu)
  · obtain ⟨u, rfl⟩ := T.surjective u
    obtain ⟨v, rfl⟩ := T.surjective v
    rw [hT, hT]
    generalize hc : ((χ.loc w (GeneralLinearGroup.det g) : ℂˣ) : ℂ) = c
    have hcc : starRingEnd ℂ c * c = 1 := by
      rw [Complex.conj_mul', ← hc, hn1 g]
      simp
    simp only [LinearMap.compl₂_apply, LinearMap.comp_apply, LinearEquiv.coe_coe, map_smulₛₗ, LinearMap.smul_apply,
      LinearEquiv.symm_apply_apply, smul_eq_mul]
    rw [CuspSub.locRep_eq, h3, ← mul_assoc, RingHom.id_apply, mul_comm c, hcc, one_mul]

end GlobalTheory.CompanionTheory.JSUnit

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUnitForm =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FinalFormBesselBound =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FinalFormBesselBound", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.JacquetShalikaBound.FormQuasiInvariantMirabolic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Matrix GroundTheory.Automorphic GroundTheory.Automorphic.GLnLocal GroundTheory.Automorphic.Iwasawa
  GroundTheory.Automorphic.Spherical PositivityTheory.JacquetShalikaLocal
open scoped ValuativeRel

namespace GlobalTheory.CompanionTheory.SatakeBound

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]
  {V : Type} [AddCommGroup V] [Module ℂ V]

theorem inv_top {n : ℕ} (hn : 1 < n) {ρ : Representation ℂ (GL (Fin n) F) V} {ψ : AddChar F ℂ}
    {l : V →ₗ[ℂ] ℂ} {B : V →ₗ⋆[ℂ] V →ₗ[ℂ] ℂ} (hU : Unit' ρ B) : Inv ρ ψ l (n - 1) B := by
  obtain ⟨hh, hp, hi⟩ := hU
  refine ⟨hh, fun u => ?_, fun u hu => ?_, fun g _ u u' => ?_, fun g hg u u' => ?_⟩
  · by_cases h : u = 0
    · simp [h]
    · exact (hp u h).le
  · by_cases h : u = 0
    · simp [h]
    · have := hp u h
      rw [hu] at this
      simp at this
  · rw [hi, Nat.sub_self, pow_zero, one_mul]
  · have h1 : g = 1 := by
      apply Units.ext
      ext i j
      exact hg.2 i j (by omega)
    subst h1
    rw [Whittaker.psiN_one]
    simp

theorem inv_step [MeasurableSpace F] [BorelSpace F] (h4a : StableAverageExists) (h4b : FormHermitianPositive) (h4c : FormQuasiInvariantMirabolic) (h4d : FormEquivariantColumn)
    (μ : Measure F) [μ.IsAddHaarMeasure] {ψ : AddChar F ℂ} (hψ : PsiOK ψ) {n : ℕ}
    {ρ : Representation ℂ (GL (Fin n) F) V} (hρ : Smooth ρ) {l : V →ₗ[ℂ] ℂ} (hW : Whit ρ ψ l)
    {k : ℕ} (hk : k + 1 < n) {B : V →ₗ⋆[ℂ] V →ₗ[ℂ] ℂ} (hB : Inv ρ ψ l (k + 1) B) :
    ∃ B', Char μ ρ ψ k B B' ∧ Inv ρ ψ l k B' := by
  obtain ⟨B', hC⟩ := h4a F μ ψ hψ n V ρ hρ l k B hk hB
  obtain ⟨hh, hp, hz⟩ := h4b F μ ψ hψ n V ρ hρ l k B B' hk hW hB hC
  exact ⟨B', hC, hh, hp, hz, h4c F μ ψ hψ n V ρ hρ l k B B' hk hB hC,
    h4d F μ ψ hψ n V ρ hρ l k B B' hk hB hC⟩

theorem inv_down [MeasurableSpace F] [BorelSpace F] (h4a : StableAverageExists) (h4b : FormHermitianPositive) (h4c : FormQuasiInvariantMirabolic) (h4d : FormEquivariantColumn)
    (μ : Measure F) [μ.IsAddHaarMeasure] {ψ : AddChar F ℂ} (hψ : PsiOK ψ) {n : ℕ} (hn : 1 < n)
    {ρ : Representation ℂ (GL (Fin n) F) V} (hρ : Smooth ρ) {l : V →ₗ[ℂ] ℂ} (hW : Whit ρ ψ l)
    {B : V →ₗ⋆[ℂ] V →ₗ[ℂ] ℂ} (hU : Unit' ρ B) (d : ℕ) (hd : d ≤ n - 2) :
    ∃ B₁, Inv ρ ψ l (n - 1 - d) B₁ := by
  induction d with
  | zero => exact ⟨B, inv_top hn hU⟩
  | succ d ih =>
    obtain ⟨B₁, h₁⟩ := ih (by omega)
    have e : n - 1 - d = n - 1 - (d + 1) + 1 := by omega
    rw [e] at h₁
    obtain ⟨B₂, -, h₂⟩ := inv_step h4a h4b h4c h4d μ hψ hρ hW (by omega) h₁
    exact ⟨B₂, h₂⟩

theorem final_form_bessel_bound : StableAverageExists → FormHermitianPositive → FormQuasiInvariantMirabolic → FormEquivariantColumn → L5 → L6 := by
  intro h4a h4b h4c h4d h5 F _ _ _ _ _ _ μ _ ψ hψ n V _ _ ρ hρ l B hn hW hU
  obtain ⟨B₁, h₁⟩ := inv_down h4a h4b h4c h4d μ hψ hn hρ hW hU (n - 2) le_rfl
  have e : n - 1 - (n - 2) = 0 + 1 := by omega
  rw [e] at h₁
  obtain ⟨B', hC, h'⟩ := inv_step h4a h4b h4c h4d μ hψ hρ hW (k := 0) (by omega) h₁
  exact ⟨B', h', h5 F μ ψ hψ n V ρ hρ l B₁ B' hn h₁ hC⟩

end GlobalTheory.CompanionTheory.SatakeBound

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FinalFormBesselBound =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.JacquetShalikaBoundOfSteps =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.JacquetShalikaBoundOfSteps", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.JacquetShalikaBound.lift_levelP_alt₂\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.JacquetShalikaBound.FormQuasiInvariantMirabolic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain MeasureTheory GlobalTheory.CuspRep GlobalTheory.LFun PositivityTheory.JacquetShalikaLocal

attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

namespace GlobalTheory.CompanionTheory.SatakeBound

theorem jacquetShalikaBound_of_steps : ParameterUpperBound → liftZP_unit → ParameterAbsoluteValues → lift_levelP_alt₂ → G1 → G2 → G3 → G4 → GlobalTheory.Published.JacquetShalikaBound := by
  intro h10 h11 h11b h12 g1 g2 g3 g4 E _ _ _ a π hU w B hB α hα
  obtain ⟨L, rfl⟩ : ∃ L : List ℂˣ, (L : Multiset ℂˣ) = B := ⟨B.toList, Multiset.coe_toList B⟩
  have hcard : L.length = a := by simpa using hB.card
  subst hcard
  have hBz : (L : Multiset ℂˣ) = Finset.univ.val.map L.get := by rw [Fin.univ_val_map, List.ofFn_get]
  obtain ⟨i, rfl⟩ : ∃ i, L.get i = α := List.mem_iff_get.1 (Multiset.mem_coe.1 hα)
  have ha : 1 ≤ L.length := Fin.pos i
  induction π using Quotient.inductionOn with | _ π => ?_
  set z := L.get with hz
  let F := w.adicCompletion E
  letI : MeasurableSpace F := borel F
  haveI : BorelSpace F := ⟨rfl⟩
  have hB' : HasSatGL w (π.locRep w) (Finset.univ.val.map z) := by rw [← hBz]; exact hB
  obtain ⟨ψ, hψ, l, hl0, hW⟩ := g4 E L.length ha π w
  obtain ⟨v, g, hv, hlv⟩ := g2 E L.length π w _ hB' l hl0
  obtain ⟨Bf, hBf⟩ := g1 E L.length π hU w
  have hs := g3 E L.length π w
  obtain ⟨hq, h12'⟩ := h12 E w
  have hH : Heig (π.locRep w) v z := h12' L.length π.V (π.locRep w) v z hv
  have hq1 : (1 : ℝ) < (Ideal.absNorm w.asIdeal : ℝ) := by exact_mod_cast NumberField.HeightOneSpectrum.one_lt_absNorm w
  have hpair := h11b L.length z (h11 F L.length π.V (π.locRep w) Bf hBf v z hv.1 hH)
  have hup : ∀ j, ‖(z j : ℂ)‖ < Real.sqrt (Ideal.absNorm w.asIdeal : ℝ) := by
    intro j
    rcases Nat.lt_or_ge 1 L.length with h2 | h1
    · have := h10 F Measure.addHaar ψ hψ L.length π.V (π.locRep w) hs h2 l Bf hW hBf v z hH ⟨g, hlv⟩ j
      rwa [hq] at this
    · obtain ⟨k, hk⟩ := hpair j
      have hkj : k = j := Fin.ext (by have := k.2; have := j.2; omega)
      subst hkj
      have h0 : ‖(z k : ℂ)‖ = 1 := by
        have h00 : 0 ≤ ‖(z k : ℂ)‖ := norm_nonneg _
        nlinarith
      rw [h0, Real.lt_sqrt zero_le_one]
      simpa using hq1
  obtain ⟨k, hk⟩ := hpair i
  have hkpos : 0 < ‖(z k : ℂ)‖ := norm_pos_iff.2 (Units.ne_zero _)
  have hi : ‖(z i : ℂ)‖ = ‖(z k : ℂ)‖⁻¹ := eq_inv_of_mul_eq_one_right hk
  have hsq : (Ideal.absNorm w.asIdeal : ℝ) ^ (1 / 2 : ℝ) = Real.sqrt (Ideal.absNorm w.asIdeal : ℝ) :=
    (Real.sqrt_eq_rpow _).symm
  refine ⟨?_, ?_⟩
  · rw [Real.rpow_neg (by positivity), hsq, hi]
    exact inv_strictAnti₀ hkpos (hup k)
  · rw [hsq]; exact hup i

end GlobalTheory.CompanionTheory.SatakeBound

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.JacquetShalikaBoundOfSteps =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemCongruenceSubgroupOfDiv =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemCongruenceSubgroupOfDiv", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.JacquetShalikaBound.lift_levelP_alt₂\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain GlobalTheory.CuspRep GroundTheory.Automorphic GroundTheory.Automorphic.GLnLocal
  PositivityTheory.JacquetShalikaLocal
open scoped ValuativeRel Topology MatrixGroups

attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

namespace GlobalTheory.CompanionTheory.JSSmooth

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]
  {n : ℕ}

theorem mem_congruenceSubgroup_of_div {c : ℕ} {g : GL (Fin n) F}
    (hg : Div (c + 1) ((g : Matrix (Fin n) (Fin n) F) - 1)) :
    g ∈ congruenceSubgroup F n (c + 1) := by
  choose y hy hgy using hg
  have hone : ∀ i j, (1 : Matrix (Fin n) (Fin n) F) i j ∈ 𝒪[F] := by
    intro i j
    rw [Matrix.one_apply]
    split_ifs
    · exact one_mem _
    · exact zero_mem _
  have hent : ∀ i j, g i j - (1 : Matrix (Fin n) (Fin n) F) i j =
      (uniformizer F : F) ^ (c + 1) * y i j := fun i j => by
    rw [← hgy i j, Matrix.sub_apply]
  have hint : ∀ i j, g i j ∈ 𝒪[F] := fun i j => by
    have h1 : g i j = (uniformizer F : F) ^ (c + 1) * y i j +
        (1 : Matrix (Fin n) (Fin n) F) i j := by rw [← hent i j, sub_add_cancel]
    rw [h1]
    exact add_mem (mul_mem (pow_mem (uniformizer F).2 _) (hy i j)) (hone i j)
  let A : Matrix (Fin n) (Fin n) 𝒪[F] := Matrix.of fun i j => ⟨g i j, hint i j⟩
  have hres : (IsLocalRing.residue 𝒪[F]).mapMatrix A = 1 := by
    ext i j
    have hmem : A i j - (1 : Matrix (Fin n) (Fin n) 𝒪[F]) i j ∈ IsLocalRing.maximalIdeal 𝒪[F] := by
      have h1 : A i j - (1 : Matrix (Fin n) (Fin n) 𝒪[F]) i j =
          uniformizer F * (uniformizer F ^ c * ⟨y i j, hy i j⟩) := by
        apply Subtype.ext
        have h2 : (((1 : Matrix (Fin n) (Fin n) 𝒪[F]) i j : 𝒪[F]) : F) =
            (1 : Matrix (Fin n) (Fin n) F) i j := by
          rw [Matrix.one_apply, Matrix.one_apply]
          split_ifs <;> simp
        simp only [AddSubgroupClass.coe_sub, h2, MulMemClass.coe_mul, SubmonoidClass.coe_pow]
        change g i j - _ = _
        rw [hent i j]
        ring
      rw [h1]
      exact Ideal.mul_mem_right _ _ ((IsLocalRing.mem_maximalIdeal _).2 (irreducible_uniformizer F).not_isUnit)
    have h3 := (IsLocalRing.residue_eq_zero_iff _).2 hmem
    rw [map_sub, sub_eq_zero] at h3
    rw [RingHom.mapMatrix_apply, Matrix.map_apply, h3, Matrix.one_apply, Matrix.one_apply]
    split_ifs <;> simp
  have hdet : IsUnit A.det := by
    have h1 : IsLocalRing.residue 𝒪[F] A.det = 1 := by
      rw [RingHom.map_det, hres, Matrix.det_one]
    by_contra h
    have h2 := (IsLocalRing.residue_eq_zero_iff _).2 ((IsLocalRing.mem_maximalIdeal _).2 h)
    rw [h2] at h1
    exact zero_ne_one h1
  rw [mem_congruenceSubgroup_iff]
  refine ⟨⟨Matrix.GeneralLinearGroup.mk'' A hdet, Units.ext rfl⟩, fun i j => ?_⟩
  rw [hent i j, map_mul, map_pow]
  exact mul_le_of_le_one_right' ((Valuation.mem_integer_iff _ _).1 (hy i j))

theorem smooth_of_isSmooth {V : Type} [AddCommGroup V] [Module ℂ V]
    (ρ : Representation ℂ (GL (Fin n) F) V) (h : GlobalTheory.PRep.IsSmooth ρ) : Smooth ρ := fun u => by
  have h1 : {g : GL (Fin n) F | ρ g u = u} ∈ 𝓝 (1 : GL (Fin n) F) :=
    (h u).mem_nhds (by simp)
  obtain ⟨m, -, hm⟩ := (hasBasis_nhds_one F n).mem_iff.1 h1
  exact ⟨m, fun g hg => hm (congruenceSubgroup_antitone F n (Nat.le_succ m)
    (mem_congruenceSubgroup_of_div hg))⟩

theorem g3 : G3 := fun _ _ _ _ _ π w => smooth_of_isSmooth _ (π.isSmooth_locRep w)

end GlobalTheory.CompanionTheory.JSSmooth

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemCongruenceSubgroupOfDiv =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ModulusEqOneOfIntegral =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ModulusEqOneOfIntegral", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.JacquetShalikaBound.FormQuasiInvariantMirabolic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Matrix GroundTheory.Automorphic GroundTheory.Automorphic.GLnLocal GroundTheory.Automorphic.Iwasawa
  GroundTheory.Automorphic.Spherical
open scoped ValuativeRel

namespace GlobalTheory.CompanionTheory.JSBound
open PositivityTheory.JacquetShalikaLocal

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]

theorem div_mono {ι : Type} {c c' : ℕ} (h : c ≤ c') {A : Matrix ι ι F} (hA : Div c' A) : Div c A := by
  intro i j
  obtain ⟨y, hy, e⟩ := hA i j
  refine ⟨(uniformizer F : F) ^ (c' - c) * y,
    Subring.mul_mem _ (Subring.pow_mem _ (uniformizer F).2 _) hy, ?_⟩
  rw [e, ← mul_assoc, ← pow_add, Nat.add_sub_cancel' h]

theorem modulus_eq_one_of_integral {a : F} (ha : a ≠ 0) (h₁ : a ∈ 𝒪[F]) (h₂ : a⁻¹ ∈ 𝒪[F]) :
    Measures.modulus a = 1 := by
  let u : Fˣ := Units.mk0 a ha
  let g : GL (Fin 1) F := Units.map (Matrix.scalar (Fin 1) : F →+* Matrix (Fin 1) (Fin 1) F).toMonoidHom u
  have hg : ∀ i j, (g : Matrix (Fin 1) (Fin 1) F) i j = a := by
    intro i j
    have hi : i = j := Subsingleton.elim _ _
    subst hi
    simp [g, u]
  have hgi : ∀ i j, ((g⁻¹ : GL (Fin 1) F) : Matrix (Fin 1) (Fin 1) F) i j = a⁻¹ := by
    intro i j
    have hi : i = j := Subsingleton.elim _ _
    subst hi
    simp [g, u]
  have key := Measures.distribHaarChar_glEquiv g
  rw [Measures.distribHaarChar_glEquiv_eq_one (fun i j => by rw [hg]; exact h₁)
    (fun i j => by rw [hgi]; exact h₂)] at key
  have hdet : Matrix.GeneralLinearGroup.det g = u := by
    ext
    simp [g, u]
  rw [hdet] at key
  rw [show a = (u : F) from rfl, Measures.modulus_units, ← key]

theorem modulus_det_eq_one {m c : ℕ} (h : GL (Fin m) F)
    (hD : Div (c + 1) ((h : Matrix (Fin m) (Fin m) F) - 1)) :
    Measures.modulus (h : Matrix (Fin m) (Fin m) F).det = 1 := by
  classical
  choose y hy hA using hD
  let A : Matrix (Fin m) (Fin m) 𝒪[F] := Matrix.of fun i j => ⟨y i j, hy i j⟩
  let M : Matrix (Fin m) (Fin m) 𝒪[F] := 1 + (uniformizer F ^ (c + 1)) • A
  have hM : (𝒪[F]).subtype.mapMatrix M = (h : Matrix (Fin m) (Fin m) F) := by
    ext i j
    have := hA i j
    rw [Matrix.sub_apply, sub_eq_iff_eq_add] at this
    rw [this]
    simp [M, A, Matrix.one_apply, add_comm]
    split_ifs <;> simp
  have hdet : ((M.det : 𝒪[F]) : F) = (h : Matrix (Fin m) (Fin m) F).det := by
    rw [← hM]
    exact RingHom.map_det (𝒪[F]).subtype M
  let I : Ideal 𝒪[F] := Ideal.span {uniformizer F}
  have hq : (Ideal.Quotient.mk I).mapMatrix M = 1 := by
    have h0 : Ideal.Quotient.mk I (uniformizer F) = 0 :=
      Ideal.Quotient.eq_zero_iff_mem.2 (Ideal.mem_span_singleton_self _)
    ext i j
    simp [M, h0, Matrix.one_apply]
  have hone : Ideal.Quotient.mk I M.det = 1 := by
    rw [RingHom.map_det, hq, Matrix.det_one]
  have hmem : M.det - 1 ∈ I := by
    rw [← Ideal.Quotient.eq_zero_iff_mem, map_sub, hone, map_one, sub_self]
  obtain ⟨z, hz⟩ := Ideal.mem_span_singleton'.1 hmem
  have hv : ValuativeRel.valuation F ((M.det : 𝒪[F]) : F) = 1 := by
    have e : ((M.det : 𝒪[F]) : F) = 1 + (z : F) * (uniformizer F : F) := by
      have := congrArg (fun w : 𝒪[F] => (w : F)) hz
      simp only [MulMemClass.coe_mul, AddSubgroupClass.coe_sub, OneMemClass.coe_one] at this
      rw [this]; ring
    rw [e]
    refine Valuation.map_one_add_of_lt _ ?_
    rw [map_mul]
    have hz1 : ValuativeRel.valuation F (z : F) ≤ 1 := z.2
    calc ValuativeRel.valuation F (z : F) * ValuativeRel.valuation F (uniformizer F : F)
        ≤ 1 * ValuativeRel.valuation F (uniformizer F : F) := mul_le_mul_left hz1 _
      _ < 1 := by rw [one_mul]; exact valuation_uniformizer_lt_one F
  rw [← hdet]
  have hne : ((M.det : 𝒪[F]) : F) ≠ 0 := by
    intro h0
    rw [h0, map_zero] at hv
    exact zero_ne_one hv
  refine modulus_eq_one_of_integral hne ?_ ?_
  · exact (Valuation.mem_integer_iff _ _).2 hv.le
  · refine (Valuation.mem_integer_iff _ _).2 ?_
    rw [map_inv₀, hv, inv_one]

theorem div_col {n k c : ℕ} {y : Fin (k + 1) → F}
    (hy : ∀ i, ∃ t ∈ 𝒪[F], y i = (uniformizer F : F) ^ c * t) :
    Div c ((col n k y : Matrix (Fin n) (Fin n) F) - 1) := by
  intro i j
  have e : ((col n k y : Matrix (Fin n) (Fin n) F) - 1) i j = cM n k y i j := by
    show ((1 + cM n k y) - 1) i j = _
    rw [add_sub_cancel_left]
  rw [e]
  by_cases h : (j : ℕ) = k + 1 ∧ (i : ℕ) < k + 1
  · obtain ⟨t, ht, e'⟩ := hy ⟨i, h.2⟩
    refine ⟨t, ht, ?_⟩
    simp only [cM, Matrix.of_apply, dif_pos h]
    exact e'
  · refine ⟨0, Subring.zero_mem _, ?_⟩
    simp only [cM, Matrix.of_apply, dif_neg h, mul_zero]

theorem stability_coefficients : L0 → L2 → ColumnsMirabolic → FormCoefficientStability := by
  intro h0 h2 h3 F _ _ _ _ _ _ μ _ ψ hψ n V _ _ ρ hρ l k B hk hI u u'
  obtain ⟨cu, hcu⟩ := hρ u
  obtain ⟨cv, hcv⟩ := hρ u'
  obtain ⟨hadd, -, -, -, -, hext⟩ := h3 F μ ψ hψ n k hk
  have hfix : ∀ g : GL (Fin n) F, Div (max cu cv + 1) ((g : Matrix (Fin n) (Fin n) F) - 1) →
      ρ g u = u ∧ ρ g u' = u' := fun g hg =>
    ⟨hcu g (div_mono (by omega) hg), hcv g (div_mono (by omega) hg)⟩
  have hf1 : ∀ x y : Fin (k + 1) → F,
      (∀ i, ∃ t ∈ 𝒪[F], y i = (uniformizer F : F) ^ (max cu cv + 1) * t) →
      B u' (ρ (col n k (x + y)) u) = B u' (ρ (col n k x) u) := by
    intro x y hy
    rw [hadd, map_mul, Module.End.mul_apply, (hfix _ (div_col hy)).1]
  have hf2 : ∀ h : GL (Fin (k + 1)) F,
      Div (max cu cv + 1) ((h : Matrix (Fin (k + 1)) (Fin (k + 1)) F) - 1) →
      ∀ x, B u' (ρ (col n k ((h : Matrix (Fin (k + 1)) (Fin (k + 1)) F) *ᵥ x)) u) =
        B u' (ρ (col n k x) u) := by
    intro h hh x
    obtain ⟨g, hgP, hdet, hcomm, hdiv⟩ := hext h
    obtain ⟨gu, gu'⟩ := hfix g (hdiv _ hh)
    have hmod : Measures.modulus (g : Matrix (Fin n) (Fin n) F).det = 1 := by
      rw [← hdet]
      exact modulus_det_eq_one h hh
    have e : ρ (col n k ((h : Matrix (Fin (k + 1)) (Fin (k + 1)) F) *ᵥ x)) u =
        ρ g (ρ (col n k x) u) := by
      have := congrArg (fun a => ρ a u) (hcomm x)
      simp only [map_mul, Module.End.mul_apply, gu] at this
      exact this.symm
    have q := hI.quasi g hgP u' (ρ (col n k x) u)
    rw [gu', hmod] at q
    rw [e, q]
    simp
  have hcont : Continuous (fun x : Fin (k + 1) → F => B u' (ρ (col n k x) u)) := by
    refine IsLocallyConstant.continuous ((IsLocallyConstant.iff_exists_open _).2 fun x => ?_)
    have hϖ : ((uniformizer F : F) ^ (max cu cv + 1)) ≠ 0 := by
      refine pow_ne_zero _ fun h => ?_
      exact valuation_uniformizer_ne_zero F (by rw [h, map_zero])
    refine ⟨(fun z : Fin (k + 1) → F => ((uniformizer F : F) ^ (max cu cv + 1))⁻¹ • (z - x)) ⁻¹'
      (Measures.box F (Fin (k + 1))), Measures.isOpen_box.preimage (by fun_prop), ?_, ?_⟩
    · simpa using Measures.zero_mem_box
    · intro x' hx'
      have := hf1 x (x' - x) fun i => ⟨_, Measures.mem_box.1 hx' i, by
        simp [hϖ]⟩
      simpa using this
  exact ⟨hcont, max cu cv, fun g hg => h2 F μ ψ hψ k (max cu cv) (max cu cv + 1) _ hf1 hf2 g hg⟩

end GlobalTheory.CompanionTheory.JSBound
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ModulusEqOneOfIntegral =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.OrthogonalityOfLatticeCharacter =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.OrthogonalityOfLatticeCharacter", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.JacquetShalikaBound.FormQuasiInvariantMirabolic\nimport GroundTheory.LocalFields.LocalFourierHaar\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open PositivityTheory.JacquetShalikaLocal
open MeasureTheory ValuativeRel

namespace GlobalTheory.CompanionTheory.SatakeBound

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]

theorem exists_integer_psi_mul_ne_one {ψ : AddChar F ℂ} (hψ : PsiOK ψ) {b : F}
    (hb : b ∉ (valuation F).integer) :
    ∃ t ∈ (valuation F).integer, ψ (t * b) ≠ 1 := by
  have hb0 : b ≠ 0 := by
    rintro rfl
    exact hb (zero_mem _)
  have hvb : 1 < valuation F b := by
    rw [Valuation.mem_integer_iff, not_le] at hb
    exact hb
  have hvinv : valuation F b⁻¹ < 1 := ((valuation F).one_lt_val_iff hb0).mp hvb
  have hinvO : b⁻¹ ∈ (valuation F).integer := by
    rw [Valuation.mem_integer_iff]
    exact hvinv.le
  have hynu : (⟨b⁻¹, hinvO⟩ : (valuation F).integer) ∈ IsLocalRing.maximalIdeal (valuation F).integer := by
    rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
    intro hu
    exact (ne_of_lt hvinv) ((Valuation.integer.integers (valuation F)).isUnit_iff_valuation_eq_one.mp hu)
  have hmax := GroundTheory.Automorphic.GLnLocal.maximalIdeal_pow_eq F 1
  rw [pow_one, pow_one] at hmax
  rw [hmax, Ideal.mem_span_singleton] at hynu
  obtain ⟨u, hu⟩ := hynu
  obtain ⟨x, hx, hψx⟩ := hψ.2.1
  refine ⟨(↑(GroundTheory.Automorphic.GLnLocal.uniformizer F) * x) * (u : F), mul_mem hx u.2, ?_⟩
  have hu' : b⁻¹ = (GroundTheory.Automorphic.GLnLocal.uniformizer F : F) * (u : F) := by
    have h := congrArg Subtype.val hu
    simpa using h
  have hx' : (↑(GroundTheory.Automorphic.GLnLocal.uniformizer F) * x) * (u : F) * b = x := by
    calc (↑(GroundTheory.Automorphic.GLnLocal.uniformizer F) * x) * (u : F) * b
        = x * ((GroundTheory.Automorphic.GLnLocal.uniformizer F : F) * u) * b := by ring
      _ = x * b⁻¹ * b := by rw [hu']
      _ = x := by rw [mul_assoc, inv_mul_cancel₀ hb0, mul_one]
  rw [hx']
  exact hψx

theorem mem_lat_zero {m : ℕ} {x : Fin m → F} :
    x ∈ lat F m 0 ↔ ∀ i, x i ∈ (valuation F).integer := by
  simp only [lat, Set.mem_ofPred_eq, pow_zero, one_mul]

theorem orthogonality_of_lattice_character : L0 → L1 := by
  unfold L0 L1 ForF
  intro hL0 F _ _ _ _ _ _ μ _ ψ hψ m y
  have hL := hL0 F μ ψ hψ
  dsimp only at hL ⊢
  by_cases hy : ∀ i, y i ∈ (valuation F).integer
  · rw [if_pos hy]
    have hmeas : MeasurableSet (lat F m 0) := ((hL.2 m).1 0).2.2.1
    have h1 : Set.EqOn (fun ξ : Fin m → F => ψ (ξ ⬝ᵥ y)) (fun _ => (1 : ℂ)) (lat F m 0) := by
      intro ξ hξ
      rw [mem_lat_zero] at hξ
      refine hψ.1 _ ?_
      unfold dotProduct
      exact sum_mem fun j _ => mul_mem (hξ j) (hy j)
    rw [setIntegral_congr_fun hmeas h1, setIntegral_const]
    simp
  · rw [if_neg hy]
    simp only [not_forall] at hy
    obtain ⟨i, hi⟩ := hy
    obtain ⟨t, ht, hne⟩ := exists_integer_psi_mul_ne_one hψ hi
    have hsO : ∀ j, (Pi.single i t : Fin m → F) j ∈ (valuation F).integer := by
      intro j
      by_cases hj : j = i
      · rw [hj, Pi.single_eq_same]
        exact ht
      · rw [Pi.single_eq_of_ne hj]
        exact zero_mem _
    have hinv : (fun ξ : Fin m → F => Pi.single i t + ξ) ⁻¹' lat F m 0 = lat F m 0 := by
      ext ξ
      simp only [Set.mem_preimage, mem_lat_zero, Pi.add_apply]
      constructor
      · intro h j
        have h2 := sub_mem (h j) (hsO j)
        simpa using h2
      · intro h j
        exact add_mem (hsO j) (h j)
    have hsd : (Pi.single i t : Fin m → F) ⬝ᵥ y = t * y i := by
      first
        | simp [dotProduct, Pi.single_apply]
    have hmp := measurePreserving_add_left (Measure.pi fun _ : Fin m => μ) (Pi.single i t : Fin m → F)
    have hemb := measurableEmbedding_addLeft (Pi.single i t : Fin m → F)
    have hshift := hmp.setIntegral_preimage_emb hemb (fun ξ => ψ (ξ ⬝ᵥ y)) (lat F m 0)
    rw [hinv] at hshift
    simp only [add_dotProduct, AddChar.map_add_eq_mul, hsd] at hshift
    rw [integral_const_mul] at hshift
    have h0 : (∫ ξ in lat F m 0, ψ (ξ ⬝ᵥ y) ∂Measure.pi fun _ => μ) * (ψ (t * y i) - 1) = 0 := by
      linear_combination hshift
    exact (mul_eq_zero.mp h0).resolve_right (sub_ne_zero.mpr hne)

end GlobalTheory.CompanionTheory.SatakeBound
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.OrthogonalityOfLatticeCharacter =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SecondCountableField =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SecondCountableField", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.JacquetShalikaBound.FormQuasiInvariantMirabolic\nimport GroundTheory.LocalFields.LocalFourierHaar\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Matrix GroundTheory.Automorphic GroundTheory.Automorphic.GLnLocal GroundTheory.Automorphic.Iwasawa
  GroundTheory.Automorphic.Spherical PositivityTheory.JacquetShalikaLocal
open scoped ValuativeRel

namespace GlobalTheory.CompanionTheory.SatakeStable

theorem secondCountable_field (k : Type) [Field k] [ValuativeRel k] [TopologicalSpace k]
    [IsNonarchimedeanLocalField k] : SecondCountableTopology k := by
  letI := IsTopologicalAddGroup.rightUniformSpace k
  haveI := isUniformAddGroup_of_addCommGroup (G := k)
  letI : (Valued.v (R := k)).RankOne :=
  { hom' := ValuativeRel.IsRankLeOne.nonempty.some.emb (R := k).comp MonoidWithZeroHom.ValueGroup₀.embedding
    strictMono' := ValuativeRel.IsRankLeOne.nonempty.some.strictMono.comp
        MonoidWithZeroHom.ValueGroup₀.embedding_strictMono }
  open scoped Valued in
  haveI : ProperSpace k := .of_nontriviallyNormedField_of_weaklyLocallyCompactSpace k
  exact secondCountable_of_proper

variable {F : Type} [Field F] [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]

theorem unif_ne_zero : (uniformizer F : F) ≠ 0 := by
  intro h0
  exact (irreducible_uniformizer F).ne_zero (Subtype.ext h0)


variable (F) in
def scal (m M : ℕ) : GL (Fin m) F where
  val := ((uniformizer F : F)⁻¹ ^ M) • (1 : Matrix (Fin m) (Fin m) F)
  inv := ((uniformizer F : F) ^ M) • (1 : Matrix (Fin m) (Fin m) F)
  val_inv := by
    have h := unif_ne_zero (F := F)
    rw [smul_mul_smul_comm, one_mul, ← mul_pow, inv_mul_cancel₀ h, one_pow, one_smul]
  inv_val := by
    have h := unif_ne_zero (F := F)
    rw [smul_mul_smul_comm, one_mul, ← mul_pow, mul_inv_cancel₀ h, one_pow, one_smul]

theorem scal_mulVec (m M : ℕ) (x : Fin m → F) :
    ((scal F m M : GL (Fin m) F) : Matrix (Fin m) (Fin m) F) *ᵥ x = ((uniformizer F : F)⁻¹ ^ M) • x := by
  change (((uniformizer F : F)⁻¹ ^ M) • (1 : Matrix (Fin m) (Fin m) F)) *ᵥ x = _
  rw [Matrix.smul_mulVec, Matrix.one_mulVec]

theorem image_scal (m M : ℕ) :
    (fun x => ((scal F m M : GL (Fin m) F) : Matrix (Fin m) (Fin m) F) *ᵥ x) '' lat F m 0 = lat F m M := by
  have h := unif_ne_zero (F := F)
  ext y
  constructor
  · rintro ⟨x, hx, rfl⟩ i
    have hxi := hx i
    rw [pow_zero, one_mul] at hxi
    simp only [scal_mulVec m M x, Pi.smul_apply, smul_eq_mul]
    rwa [← mul_assoc, ← mul_pow, mul_inv_cancel₀ h, one_pow, one_mul]
  · intro hy
    refine ⟨fun i => (uniformizer F : F) ^ M * y i, fun i => ?_, ?_⟩
    · rw [pow_zero, one_mul]; exact hy i
    · funext i
      simp only [scal_mulVec m M _, Pi.smul_apply, smul_eq_mul]
      rw [← mul_assoc, ← mul_pow, inv_mul_cancel₀ h, one_pow, one_mul]

theorem div_scal_inv {m c M : ℕ} (hM : c ≤ M) :
    Div c (((scal F m M)⁻¹ : GL (Fin m) F) : Matrix (Fin m) (Fin m) F) := by
  intro i j
  refine ⟨(uniformizer F : F) ^ (M - c) * (1 : Matrix (Fin m) (Fin m) F) i j, ?_, ?_⟩
  · refine mul_mem (pow_mem (uniformizer F).2 _) ?_
    by_cases hij : i = j
    · rw [hij, Matrix.one_apply_eq]; exact one_mem _
    · rw [Matrix.one_apply_ne hij]; exact zero_mem _
  · change (((uniformizer F : F) ^ M) • (1 : Matrix (Fin m) (Fin m) F)) i j = _
    rw [Matrix.smul_apply, smul_eq_mul, ← mul_assoc, ← pow_add, Nat.add_sub_cancel' hM]

variable [MeasurableSpace F] [BorelSpace F] (μ : Measure F) [μ.IsAddHaarMeasure]
  (ψ : AddChar F ℂ) {n : ℕ} {V : Type} [AddCommGroup V] [Module ℂ V]
  (ρ : Representation ℂ (GL (Fin n) F) V) (k : ℕ) (B : V →ₗ⋆[ℂ] V →ₗ[ℂ] ℂ)

def avg (M : ℕ) (u' u : V) : ℂ :=
  ∫ x in lat F (k + 1) M, ψ (-x (Fin.last k)) * B u' (ρ (col n k x) u) ∂(Measure.pi fun _ => μ)

theorem exists_char (hψ : Continuous ψ) (hlat : ∀ M, IsCompact (lat F (k + 1) M))
    (hcont : ∀ u u', Continuous (fun x : Fin (k + 1) → F => B u' (ρ (col n k x) u)))
    (hst : ∀ u u', ∃ M₀ : ℕ, ∀ M, M₀ ≤ M → avg μ ψ ρ k B M u' u = avg μ ψ ρ k B M₀ u' u) :
    ∃ B', Char μ ρ ψ k B B' := by
  haveI := secondCountable_field F
  choose m hm using hst
  have hint : ∀ M u' u, IntegrableOn
      (fun x : Fin (k + 1) → F => ψ (-x (Fin.last k)) * B u' (ρ (col n k x) u)) (lat F (k + 1) M)
      (Measure.pi fun _ => μ) := by
    intro M u' u
    refine ContinuousOn.integrableOn_compact (hlat M) (Continuous.continuousOn ?_)
    exact (hψ.comp (continuous_apply _).neg).mul (hcont u u')
  let f : V → V → ℂ := fun u' u => avg μ ψ ρ k B (m u u') u' u
  have hf : ∀ u' u M, m u u' ≤ M → f u' u = avg μ ψ ρ k B M u' u :=
    fun u' u M h => (hm u u' M h).symm
  refine ⟨LinearMap.mk₂'ₛₗ (starRingEnd ℂ) (RingHom.id ℂ) f ?_ ?_ ?_ ?_, ?_⟩
  · intro a b w
    let M := max (m w (a + b)) (max (m w a) (m w b))
    rw [hf _ _ M (le_max_left _ _), hf _ _ M ((le_max_left _ _).trans (le_max_right _ _)),
      hf _ _ M ((le_max_right _ _).trans (le_max_right _ _))]
    simp only [avg]
    rw [← integral_add (hint M a w) (hint M b w)]
    congr 1
    funext x
    simp [mul_add]
  · intro c a w
    let M := max (m w (c • a)) (m w a)
    rw [hf _ _ M (le_max_left _ _), hf _ _ M (le_max_right _ _)]
    simp only [avg]
    rw [smul_eq_mul, ← integral_const_mul]
    congr 1
    funext x
    simp
    ring
  · intro a v w
    let M := max (m (v + w) a) (max (m v a) (m w a))
    rw [hf _ _ M (le_max_left _ _), hf _ _ M ((le_max_left _ _).trans (le_max_right _ _)),
      hf _ _ M ((le_max_right _ _).trans (le_max_right _ _))]
    simp only [avg]
    rw [← integral_add (hint M a v) (hint M a w)]
    congr 1
    funext x
    simp [mul_add]
  · intro c a v
    let M := max (m (c • v) a) (m v a)
    rw [hf _ _ M (le_max_left _ _), hf _ _ M (le_max_right _ _)]
    simp only [avg]
    rw [smul_eq_mul, ← integral_const_mul]
    congr 1
    funext x
    simp
    ring
  · intro u u'
    exact ⟨m u u', fun M hM => hf u' u M hM⟩

theorem stable_average : L0 → FormCoefficientStability → StableAverageExists := by
  intro h0 h4 F _ _ _ _ _ _ μ _ ψ hψ n V _ _ ρ hρ l k B hk hInv
  obtain ⟨hψc, hL⟩ := h0 F μ ψ hψ
  have h4' := h4 F μ ψ hψ n V ρ hρ l k B hk hInv
  refine exists_char μ ψ ρ k B hψc (fun M => ((hL (k + 1)).1 M).1) (fun u u' => (h4' u u').1) ?_
  intro u u'
  obtain ⟨c, hc⟩ := (h4' u u').2
  refine ⟨c + 1, fun M hM => ?_⟩
  have := hc (scal F (k + 1) M) (div_scal_inv hM)
  rw [image_scal] at this
  exact this

end GlobalTheory.CompanionTheory.SatakeStable

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SecondCountableField =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SumRangeEsymmLMulSchur =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SumRangeEsymmLMulSchur", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.JacquetShalikaBound.FormQuasiInvariantMirabolic\npublic import GroundTheory.AutomorphicForms.MacdonaldHecke\nimport GroundTheory.AutomorphicForms.MacdonaldRecursion\npublic import GroundTheory.AutomorphicForms.MacdonaldWhittakerHecke\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open GroundTheory.Automorphic GroundTheory.Automorphic.Spherical PositivityTheory.JacquetShalikaLocal

namespace GlobalTheory.CompanionTheory.SatakeBound

variable {n : ℕ}

theorem prod_varL_eq_monomial (S : Finset (Fin n)) :
    ∏ k ∈ S, varL k = monomial (lamS S) := by
  have h : lamS S = ∑ k ∈ S, (Pi.single k 1 : Fin n → ℤ) := by
    funext x
    simp [lamS_apply, Finset.sum_apply, Pi.single_apply]
  rw [h]
  simp only [varL, monomial]
  rw [AddMonoidAlgebra.prod_single, Finset.prod_const_one]

theorem sum_esymmL_mul_pow (i : Fin n) :
    ∑ r ∈ Finset.range (n + 1), (-1) ^ r * esymmL n r * varL i ^ (n - r) = 0 := by
  have h0 : ∏ k : Fin n, (-varL k + varL i) = 0 :=
    Finset.prod_eq_zero (Finset.mem_univ i) (by simp)
  rw [Finset.prod_add, Finset.sum_powerset] at h0
  rw [← h0, Finset.card_univ, Fintype.card_fin]
  refine Finset.sum_congr rfl fun r hr => ?_
  rw [esymmL, Finset.mul_sum, Finset.sum_mul]
  refine Finset.sum_congr rfl fun S hS => ?_
  have hc := (Finset.mem_powersetCard.1 hS).2
  rw [Finset.prod_neg, hc, prod_varL_eq_monomial, Finset.prod_const, Finset.card_sdiff_of_subset (Finset.subset_univ S),
    Finset.card_univ, Fintype.card_fin, hc]

theorem altQuot_zero' : altQuot (0 : LaurentRing n) = 0 :=
  altQuot_eq_of_mul (by simp)

theorem sum_esymmL_mul_schur (hn : 0 < n) (j : ℤ) :
    ∑ r ∈ Finset.range (n + 1), (-1) ^ r * esymmL n r *
      schur (Pi.single (⟨0, hn⟩ : Fin n) (j - (r : ℤ))) = 0 := by
  set i₀ : Fin n := ⟨0, hn⟩
  set P : LaurentRing n := monomial (Pi.single i₀ (j - (n : ℤ)) + staircase n) with hP
  have hterm : ∀ r ∈ Finset.range (n + 1), (-1) ^ r * esymmL n r *
      schur (Pi.single i₀ (j - (r : ℤ))) =
      altQuot ((-1) ^ r * esymmL n r * varL i₀ ^ (n - r) * P) := by
    intro r hr
    have hr' : r ≤ n := Nat.lt_succ_iff.1 (Finset.mem_range.1 hr)
    have hsym : ∀ σ, permAct σ ((-1) ^ r * esymmL n r) = (-1) ^ r * esymmL n r := by
      intro σ
      rw [map_mul, map_pow, map_neg, map_one, permAct_esymmL]
    rw [mul_assoc ((-1) ^ r * esymmL n r), altQuot_mul_of_symm hsym, schur]
    congr 2
    rw [← monomial_single_natCast, hP, ← monomial_add, ← add_assoc, ← Pi.single_add]
    congr 3
    push_cast [Nat.cast_sub hr']
    ring
  rw [Finset.sum_congr rfl hterm, ← altQuot_sum, ← Finset.sum_mul, sum_esymmL_mul_pow, zero_mul,
    altQuot_zero']

theorem schur_single_eq_zero (hn : 0 < n) {m : ℤ} (h1 : 1 - (n : ℤ) ≤ m) (h2 : m ≤ -1) :
    schur (Pi.single (⟨0, hn⟩ : Fin n) m) = 0 := by
  refine altQuot_eq_of_mul ?_
  rw [mul_zero]
  have hlt : (-m).toNat < n := by omega
  refine (alternant_eq_zero (i := (⟨0, hn⟩ : Fin n)) (j := ⟨(-m).toNat, hlt⟩) ?_ ?_).symm
  · intro h
    have := congrArg Fin.val h
    simp only at this
    omega
  · have hne : (⟨(-m).toNat, hlt⟩ : Fin n) ≠ ⟨0, hn⟩ := by
      intro h
      have := congrArg Fin.val h
      simp only at this
      omega
    simp only [Pi.add_apply, Pi.single_eq_same, Pi.single_eq_of_ne hne, staircase]
    have : (((-m).toNat : ℕ) : ℤ) = -m := by omega
    simp only [this]
    ring

theorem sum_range_esymmL_mul_schur (hn : 0 < n) {j : ℕ} (hj : 1 ≤ j) :
    ∑ r ∈ Finset.range (j + 1), (-1) ^ r * esymmL n r *
      schur (Pi.single (⟨0, hn⟩ : Fin n) ((j - r : ℕ) : ℤ)) = 0 := by
  set f : ℕ → LaurentRing n := fun r => (-1) ^ r * esymmL n r *
    schur (Pi.single (⟨0, hn⟩ : Fin n) ((j : ℤ) - (r : ℤ))) with hf
  have h1 : ∑ r ∈ Finset.range (j + 1), f r = ∑ r ∈ Finset.range (j + n + 1), f r := by
    refine Finset.sum_subset (Finset.range_subset_range.2 (by omega)) fun r hr hr' => ?_
    have hjr : j < r := by
      have := Finset.mem_range.not.1 hr'
      omega
    by_cases hrn : n < r
    · simp only [hf]
      rw [esymmL_eq_zero hrn, mul_zero, zero_mul]
    · simp only [hf]
      rw [schur_single_eq_zero hn (by omega) (by omega), mul_zero]
  have h2 : ∑ r ∈ Finset.range (n + 1), f r = ∑ r ∈ Finset.range (j + n + 1), f r := by
    refine Finset.sum_subset (Finset.range_subset_range.2 (by omega)) fun r hr hr' => ?_
    have hrn : n < r := by
      have := Finset.mem_range.not.1 hr'
      omega
    simp only [hf]
    rw [esymmL_eq_zero hrn, mul_zero, zero_mul]
  have h3 : ∑ r ∈ Finset.range (j + 1), f r = 0 := by
    rw [h1, ← h2]
    exact sum_esymmL_mul_schur hn (j : ℤ)
  rw [← h3]
  refine Finset.sum_congr rfl fun r hr => ?_
  have hr' : r ≤ j := Nat.lt_succ_iff.1 (Finset.mem_range.1 hr)
  simp only [hf]
  rw [Nat.cast_sub hr']

theorem monomialChar_lamS (S : Finset (Fin n)) (z : Fin n → ℂˣ) :
    monomialChar (lamS S) z = ∏ i ∈ S, (z i : ℂ) := by
  rw [monomialChar_apply]
  have h : ∀ i, ((z i ^ lamS S i : ℂˣ) : ℂ) = if i ∈ S then (z i : ℂ) else 1 := by
    intro i
    rw [lamS_apply]
    split_ifs <;> simp
  simp only [h]
  rw [Finset.prod_ite_mem, Finset.univ_inter]

theorem schur_row_recursion : L8 := by
  intro n hn z
  refine ⟨?_, fun j hj => ?_⟩
  · have h0 : (Pi.single (⟨0, hn⟩ : Fin n) ((0 : ℕ) : ℤ) : Fin n → ℤ) = 0 := by
      simp
    rw [h0, _root_.GroundTheory.Automorphic.Spherical.schur_zero, map_one]
  · have h := congrArg (evalAt z) (sum_range_esymmL_mul_schur hn hj)

    simp only [map_sum, map_mul, map_pow, map_neg, map_one, map_zero, evalAt_esymmL,
    monomialChar_lamS] at h
    exact h

end GlobalTheory.CompanionTheory.SatakeBound

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SumRangeEsymmLMulSchur =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TwistedColumnAverageExists =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TwistedColumnAverageExists", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.JacquetShalikaBound.FormQuasiInvariantMirabolic\nimport GroundTheory.AutomorphicForms.AffineBruhat\nimport GroundTheory.LocalFields.LocalFourierHaar\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Matrix Filter Topology PositivityTheory.JacquetShalikaLocal GroundTheory.Automorphic GroundTheory.Automorphic.GLnLocal
  GroundTheory.Automorphic.Iwasawa GroundTheory.Automorphic.Spherical
open scoped ValuativeRel

namespace GlobalTheory.CompanionTheory.SatakeBound

theorem col_add {F : Type} [Field F] (n k : ℕ) (x y : Fin (k + 1) → F) :
    col n k (x + y) = col n k x * col n k y := by
  apply Units.ext
  show 1 + cM n k (x + y) = (1 + cM n k x) * (1 + cM n k y)
  have h : cM n k (x + y) = cM n k x + cM n k y := by
    ext i j
    simp only [cM, Matrix.of_apply, Matrix.add_apply, Pi.add_apply]
    split_ifs <;> simp
  rw [h, mul_add, add_mul, add_mul, cM_mul]
  simp [add_assoc]

theorem exists_weak_integral {X V : Type} [TopologicalSpace X] [T2Space X] [MeasurableSpace X] [BorelSpace X]
    [AddCommGroup V] [Module ℂ V] (ν : Measure X) [IsFiniteMeasureOnCompacts ν]
    (Λ : Set X) (hc : IsCompact Λ) (hΛ : MeasurableSet Λ) (φ : X → ℂ) (hφ : Continuous φ)
    (f : X → V) (hf : IsLocallyConstant f) :
    ∃ w : V, ∀ l : V →ₗ[ℂ] ℂ, l w = ∫ x in Λ, φ x * l (f x) ∂ν := by
  classical
  have hS : (f '' Λ).Finite := by
    haveI : CompactSpace Λ := isCompact_iff_compactSpace.mp hc
    have h := (hf.comp_continuous (continuous_subtype_val (p := (· ∈ Λ)))).range_finite
    rwa [Set.range_comp, Subtype.range_coe] at h
  have hmeas : ∀ v, MeasurableSet (Λ ∩ f ⁻¹' {v}) := fun v =>
    hΛ.inter (hf.isOpen_fiber v).measurableSet
  have hcont : ∀ l : V →ₗ[ℂ] ℂ, Continuous fun x => φ x * l (f x) := fun l =>
    hφ.mul (hf.comp l).continuous
  refine ⟨∑ v ∈ hS.toFinset, (∫ x in Λ ∩ f ⁻¹' {v}, φ x ∂ν) • v, fun l => ?_⟩
  have hU : Λ = ⋃ v ∈ hS.toFinset, Λ ∩ f ⁻¹' {v} := by
    ext x
    simp only [Set.mem_iUnion, Set.mem_inter_iff, Set.mem_preimage, Set.mem_singleton_iff,
      Set.Finite.mem_toFinset, exists_prop]
    exact ⟨fun hx => ⟨f x, ⟨x, hx, rfl⟩, hx, rfl⟩, fun ⟨_, _, hx, _⟩ => hx⟩
  have hdisj : Set.PairwiseDisjoint (↑hS.toFinset) fun v => Λ ∩ f ⁻¹' {v} := by
    intro a _ b _ hab
    refine Set.disjoint_left.mpr fun x hxa hxb => hab ?_
    exact hxa.2.symm.trans hxb.2
  have hint : ∀ s, s ⊆ Λ → ∀ g : X → ℂ, Continuous g → IntegrableOn g s ν := fun s hs g hg =>
    (hg.continuousOn.integrableOn_compact hc).mono_set hs
  conv_rhs => rw [hU]

  rw [integral_biUnion_finset _ (fun v _ => hmeas v) hdisj
  (fun v _ => hint _ Set.inter_subset_left _ (hcont l)), map_sum]
  refine Finset.sum_congr rfl fun v _ => ?_
  rw [map_smul, smul_eq_mul, ← integral_mul_const]
  refine setIntegral_congr_fun (hmeas v) fun x hx => ?_
  have hx2 : f x = v := hx.2
  simp only [hx2]

theorem twisted_column_average_exists : L0 → L3 := by
  intro h0
  unfold L3 ForR ForF
  intro F _ _ _ _ _ _ μ _ ψ hψ n V _ _ ρ hρ k M ξ u
  obtain ⟨hψc, hL⟩ := h0 F μ ψ hψ
  obtain ⟨hcomp, -, hmeas, -⟩ := (hL (k + 1)).1 M
  have hopen0 : IsOpen (lat F (k + 1) 0) := ((hL (k + 1)).1 0).2.1
  have hϖ : (uniformizer F : F) ≠ 0 := uniformizer_ne_zero F
  obtain ⟨c, hc⟩ := hρ u
  have hfix : ∀ y : Fin (k + 1) → F, (∀ i, ∃ t ∈ 𝒪[F], y i = (uniformizer F : F) ^ (c + 1) * t) →
      ρ (col n k y) u = u := by
    intro y hy
    apply hc
    intro i j
    show ∃ t ∈ 𝒪[F], ((1 + cM n k y) - 1) i j = (uniformizer F : F) ^ (c + 1) * t
    rw [add_sub_cancel_left]
    simp only [cM, Matrix.of_apply]
    split_ifs with h
    · exact hy _
    · exact ⟨0, zero_mem _, by simp⟩
  have hcol : ∀ x y : Fin (k + 1) → F, ∀ v, ρ (col n k (x + y)) v = ρ (col n k x) (ρ (col n k y) v) := by
    intro x y v
    rw [col_add, map_mul]
    rfl
  have hf : IsLocallyConstant fun x : Fin (k + 1) → F => ρ (col n k x) u := by
    rw [IsLocallyConstant.iff_eventually_eq]
    intro x
    have hcont : Continuous fun y : Fin (k + 1) → F =>
        ((uniformizer F : F) ^ (c + 1))⁻¹ • (y - x) := by fun_prop
    have h0mem : ((uniformizer F : F) ^ (c + 1))⁻¹ • (x - x) ∈ lat F (k + 1) 0 := by
      intro i
      simp
    have hev := hcont.continuousAt.eventually_mem (hopen0.mem_nhds h0mem)
    filter_upwards [hev] with y hy
    have hy' : ρ (col n k (y - x)) u = u := by
      refine hfix _ fun i => ⟨((uniformizer F : F) ^ (c + 1))⁻¹ * (y - x) i, ?_, ?_⟩
      · simpa using hy i
      · field_simp
    show ρ (col n k y) u = ρ (col n k x) u
    rw [show ρ (col n k y) u = ρ (col n k (x + (y - x))) u by rw [add_sub_cancel], hcol, hy']
  have hdot : Continuous fun x : Fin (k + 1) → F => ξ ⬝ᵥ x := by
    simp only [dotProduct]
    fun_prop
  have hφ : Continuous fun x : Fin (k + 1) → F => ψ (-(ξ ⬝ᵥ x)) := hψc.comp hdot.neg
  obtain ⟨w, hw⟩ := exists_weak_integral (Measure.pi fun _ : Fin (k + 1) => μ) (lat F (k + 1) M)
    hcomp hmeas _ hφ _ hf
  refine ⟨w, hw, fun y hy => ?_⟩
  have hpre : (fun x => y + x) ⁻¹' lat F (k + 1) M = lat F (k + 1) M := by
    ext x
    constructor
    · intro hx i
      have h1 := hx i
      have h2 := hy i
      have h3 := sub_mem h1 h2
      simpa [mul_add] using h3
    · intro hx i
      have h1 := hx i
      have h2 := hy i
      have h3 := add_mem h2 h1
      simpa [mul_add] using h3
  refine sub_eq_zero.mp ((Module.forall_dual_apply_eq_zero_iff ℂ _).mp fun l => ?_)
  have hl := hw (l ∘ₗ ρ (col n k y))
  have htr := (measurePreserving_add_left (Measure.pi fun _ : Fin (k + 1) => μ) y).setIntegral_preimage_emb
    (MeasurableEquiv.addLeft y).measurableEmbedding
    (fun x => ψ (-(ξ ⬝ᵥ x)) * l (ρ (col n k x) u)) (lat F (k + 1) M)
  rw [hpre] at htr
  have hψy : ∀ x, ψ (-(ξ ⬝ᵥ x)) = ψ (ξ ⬝ᵥ y) * ψ (-(ξ ⬝ᵥ (y + x))) := by
    intro x
    rw [← AddChar.map_add_eq_mul, dotProduct_add]
    congr 1
    ring
  have hmain : l (ρ (col n k y) w) = ψ (ξ ⬝ᵥ y) * l w := by
    have e1 : l (ρ (col n k y) w) = (l ∘ₗ ρ (col n k y)) w := rfl
    rw [e1, hl, hw l, ← htr, ← integral_const_mul]
    refine integral_congr_ae (ae_of_all _ fun x => ?_)
    simp only [LinearMap.comp_apply]
    rw [hcol, hψy x, mul_assoc]
  rw [map_sub, map_smul, smul_eq_mul, hmain, sub_self]

end GlobalTheory.CompanionTheory.SatakeBound

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TwistedColumnAverageExists =====

-- ===== clump member: Development.WeilBound.CoreStatements.PublishedTheorems.JacquetShalikaBound.JacquetShalikaBound =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PublishedTheorems.JacquetShalikaBound.JacquetShalikaBound", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.JacquetShalikaBound.FormQuasiInvariantMirabolic\npublic import Development.WeilBound.CoreStatements.PublishedTheorems.JacquetShalikaBound.lift_levelP_alt₂\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CMEqZeroOfNe\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoeffEqPowOfMulOneSub\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ColumnAverageHermitianPositive\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ColumnAverageQuasiInvariant\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ColumnMirabolicHolds\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ContinuousOfTrivialInteger\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPowMulMemInteger\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsTranslateNeZero\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUnitForm\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsUnitOfOneAdd\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FinalFormBesselBound\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InvMulMemIntegralGLOfMem\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.JacquetShalikaBoundOfSteps\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemCongruenceSubgroupOfDiv\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemUnipBOfMemUnipotent\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MinusculeSetEqDoubleCoset\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ModulusEqOneOfIntegral\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.OrthogonalityOfLatticeCharacter\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SecondCountableField\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SumRangeEsymmLMulSchur\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SymmetricFunctionAbsoluteValues\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TendstoZeroOfSumSqLe\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TwistedColumnAverageExists\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnipCMemIntegralGL\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ValuationLtOneOfDiv\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PositivityTheory.JacquetShalikaLocal

theorem l1 : L1 := (@GlobalTheory.CompanionTheory.SatakeBound.orthogonality_of_lattice_character : L0 → L1) _root_.GlobalTheory.CompanionTheory.JSBound.l0

theorem l2 : L2 := (@GlobalTheory.CompanionTheory.SatakeBound.LargeLattice.stability : L0 → L1 → L2) _root_.GlobalTheory.CompanionTheory.JSBound.l0 l1

theorem l3 : L3 := (@GlobalTheory.CompanionTheory.SatakeBound.twisted_column_average_exists : L0 → L3) _root_.GlobalTheory.CompanionTheory.JSBound.l0

theorem l4s : FormCoefficientStability := (@GlobalTheory.CompanionTheory.JSBound.stability_coefficients : L0 → L2 → ColumnsMirabolic → FormCoefficientStability) _root_.GlobalTheory.CompanionTheory.JSBound.l0 l2 _root_.GlobalTheory.CompanionTheory.JSBound.column_mirabolic_holds

theorem l4a : StableAverageExists := (@GlobalTheory.CompanionTheory.SatakeStable.stable_average : L0 → FormCoefficientStability → StableAverageExists) _root_.GlobalTheory.CompanionTheory.JSBound.l0 l4s

theorem l4b : FormHermitianPositive := (@GlobalTheory.CompanionTheory.JSBoundStep.column_average_hermitian_positive : L0 → L3 → ColumnsMirabolic → FormHermitianPositive) _root_.GlobalTheory.CompanionTheory.JSBound.l0 l3 _root_.GlobalTheory.CompanionTheory.JSBound.column_mirabolic_holds

theorem l4c : FormQuasiInvariantMirabolic := (@GlobalTheory.CompanionTheory.JSBound.column_average_quasi_invariant : L0 → ColumnsMirabolic → FormCoefficientStability → FormQuasiInvariantMirabolic) _root_.GlobalTheory.CompanionTheory.JSBound.l0 _root_.GlobalTheory.CompanionTheory.JSBound.column_mirabolic_holds l4s

theorem l4d : FormEquivariantColumn := (@GlobalTheory.CompanionTheory.SatakeBound.equivariant_of_steps : L0 → ColumnsMirabolic → ColumnsUnipotent → FormCoefficientStability → FormEquivariantColumn) _root_.GlobalTheory.CompanionTheory.JSBound.l0 _root_.GlobalTheory.CompanionTheory.JSBound.column_mirabolic_holds _root_.GlobalTheory.CompanionTheory.JSBound.ColumnUnipotent.main l4s

theorem l5 : L5 := (@GlobalTheory.CompanionTheory.SatakeBessel.bessel_step : L0 → L1 → L2 → L3 → ColumnsMirabolic → L5) _root_.GlobalTheory.CompanionTheory.JSBound.l0 l1 l2 l3 _root_.GlobalTheory.CompanionTheory.JSBound.column_mirabolic_holds

theorem l6 : L6 := (@GlobalTheory.CompanionTheory.SatakeBound.final_form_bessel_bound : StableAverageExists → FormHermitianPositive → FormQuasiInvariantMirabolic → FormEquivariantColumn → L5 → L6) l4a l4b l4c l4d l5

theorem l10 : ParameterUpperBound := (@GlobalTheory.CompanionTheory.Satake.l10 : L6 → L7 → L8 → liftZP_newton → ParameterUpperBound) l6 _root_.GlobalTheory.CompanionTheory.SatakeBound.heckeEigenvector_whittaker _root_.GlobalTheory.CompanionTheory.SatakeBound.schur_row_recursion _root_.GlobalTheory.CompanionTheory.SatakeBound.norm_lt_one

alias g1 := _root_.GlobalTheory.CompanionTheory.JSUnit.exists_unit_form

alias g2 := _root_.GlobalTheory.CompanionTheory.SatakeBound.exists_translate_ne_zero

alias g3 := _root_.GlobalTheory.CompanionTheory.JSSmooth.g3

alias g4 := _root_.GlobalTheory.CompanionTheory.JSBound.global_character_holds

theorem jacquetShalikaBound : GlobalTheory.Published.JacquetShalikaBound := (@GlobalTheory.CompanionTheory.SatakeBound.jacquetShalikaBound_of_steps : ParameterUpperBound → liftZP_unit → ParameterAbsoluteValues → lift_levelP_alt₂ → G1 → G2 → G3 → G4 → GlobalTheory.Published.JacquetShalikaBound) l10 _root_.GlobalTheory.CompanionTheory.SatakeStable.l11 _root_.GlobalTheory.CompanionTheory.JSBound.symmetric_function_absolute_values _root_.GlobalTheory.CompanionTheory.SatakeTyping.l12 g1 g2 g3 g4

theorem jacquetShalika_of (h : GlobalTheory.Published.JacquetShalikaRigidity) : GlobalTheory.Published.JacquetShalika := ⟨h, jacquetShalikaBound⟩

end PositivityTheory.JacquetShalikaLocal
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PublishedTheorems.JacquetShalikaBound.JacquetShalikaBound =====
