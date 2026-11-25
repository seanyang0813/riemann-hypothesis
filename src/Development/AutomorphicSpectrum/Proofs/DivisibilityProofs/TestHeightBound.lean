module

public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE
public import Formalism.DegreeFormula.PointDegree.PowSum
public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.HeckeSectionsIsotropicCommutatorPairingPower
public import GroundTheory.HeightsAndTheta.Heights.RemainderTerms.IsFlagIntegralOne
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RemainderTermSummable
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TestPolynomialShiftTotal
public import GroundTheory.HeightsAndTheta.Heights.RemainderTerms.Imports
public import GroundTheory.HeightsAndTheta.Heights.RemainderTerms.RestAt
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.CutoffCoefficientsBound
public import Mathlib.RingTheory.MvPolynomial.Homogeneous
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.HomogeneousPowerSumDecomposition
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerHeightIdentityExpansion
import Std.Tactic.BVDecide.Normalize.BitVec
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagDegreePowerSumMulZero, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TestPolynomialRemainderBound, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TestHeightBound

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagDegreePowerSumMulZero =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagDegreePowerSumMulZero", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\npublic import Formalism.DegreeFormula.PointDegree.PowSum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace GlobalTheory.CompanionTheory.Ar.Top

theorem degFl_pk_mul_eq_zero : ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (τ : Ψ) (k : ℕ) (G : RP Ψ N), 1 ≤ k → degFl (pk τ k * G) = 0 :=
  fun Ψ _ _ N τ k G hk => Formalism.DegreeFormula.degreePowerSumMulEqZero Ψ N τ k G hk

end GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagDegreePowerSumMulZero =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TestPolynomialRemainderBound =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TestPolynomialRemainderBound", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.HeckeSectionsIsotropicCommutatorPairingPower\npublic import GroundTheory.HeightsAndTheta.Heights.RemainderTerms.IsFlagIntegralOne\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagDegreePowerSumMulZero\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RemainderTermSummable\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TestPolynomialShiftTotal\npublic import GroundTheory.HeightsAndTheta.Heights.RemainderTerms.Imports\npublic import GroundTheory.HeightsAndTheta.Heights.RemainderTerms.RestAt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.BitVec\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke

namespace GlobalTheory.CompanionTheory.Ar.Top.TestRest

def Sg {R : Type*} [CommRing R] (a b : R) : Prop := a = b ∨ a = -b

section Sign

variable {R : Type*} [CommRing R]

theorem Sg.mul {a b c d : R} (h : Sg a b) (h' : Sg c d) : Sg (a * c) (b * d) := by
  rcases h with rfl | rfl <;> rcases h' with rfl | rfl
  · exact Or.inl rfl
  · exact Or.inr (by ring)
  · exact Or.inr (by ring)
  · exact Or.inl (by ring)

theorem Sg.trans {a b c : R} (h : Sg a b) (h' : Sg b c) : Sg a c := by
  rcases h with rfl | rfl <;> rcases h' with rfl | rfl
  · exact Or.inl rfl
  · exact Or.inr rfl
  · exact Or.inr rfl
  · exact Or.inl (by ring)

theorem Sg.prod {ι : Type*} (s : Finset ι) (f g : ι → R) (h : ∀ i ∈ s, Sg (f i) (g i)) :
    Sg (∏ i ∈ s, f i) (∏ i ∈ s, g i) := by
  classical
  induction s using Finset.induction_on with
  | empty => exact Or.inl rfl
  | insert a s ha ih =>
    rw [Finset.prod_insert ha, Finset.prod_insert ha]
    exact (h a (Finset.mem_insert_self _ _)).mul
      (ih fun i hi => h i (Finset.mem_insert_of_mem hi))

def pairProd {m : ℕ} (v : Fin m → R) : R := ∏ a, ∏ b, if a < b then v b - v a else 1

theorem vandermonde_sg {m : ℕ} (v : Fin m → R) :
    Sg (GroundTheory.Heights₂.Heights.vandermonde v) (pairProd v) := by
  have h1 : GroundTheory.Heights₂.Heights.vandermonde v =
      ((Matrix.vandermonde v).submatrix id (Fin.revPerm : Equiv.Perm (Fin m))).det := by
    unfold GroundTheory.Heights₂.Heights.vandermonde
    congr 1
    ext a b
    simp only [Matrix.of_apply, Matrix.submatrix_apply, id, Matrix.vandermonde_apply,
      Fin.revPerm_apply, Fin.val_rev]
    congr 1
    have := b.isLt
    omega
  have h2 : pairProd v = ∏ i, ∏ j ∈ Finset.Ioi i, (v j - v i) := by
    unfold pairProd
    refine Finset.prod_congr rfl fun a _ => ?_
    rw [← Finset.prod_filter]
    refine Finset.prod_congr ?_ fun _ _ => rfl
    ext b
    simp
  rw [h1, Matrix.det_permute', Matrix.det_vandermonde, ← h2]
  rcases Int.units_eq_one_or (Equiv.Perm.sign (Fin.revPerm : Equiv.Perm (Fin m))) with h | h
  · left; simp [h]
  · right; simp [h]

theorem pairProd_neg {m : ℕ} (v : Fin m → R) : Sg (pairProd fun a => -v a) (pairProd v) := by
  refine Sg.prod _ _ _ fun a _ => Sg.prod _ _ _ fun b _ => ?_
  split_ifs
  · right; ring
  · left; rfl

theorem pair_split {j k : ℕ} (x : Fin (j + k) → R) :
    ∏ ab ∈ Finset.univ.filter (fun ab : Fin (j + k) × Fin (j + k) =>
        ab.1 < ab.2 ∧ ((ab.1 : ℕ) < j ↔ (ab.2 : ℕ) < j)), (x ab.2 - x ab.1) =
      pairProd (fun a : Fin j => x (Fin.castAdd k a)) *
        pairProd (fun b : Fin k => x (Fin.natAdd j b)) := by
  rw [Finset.prod_filter, Fintype.prod_prod_type, Fin.prod_univ_add]
  unfold pairProd
  congr 1
  · refine Finset.prod_congr rfl fun a _ => ?_
    rw [Fin.prod_univ_add]
    have h2 : ∀ b : Fin k, ¬ ((Fin.castAdd k a) < (Fin.natAdd j b) ∧
        (((Fin.castAdd k a : Fin (j + k)) : ℕ) < j ↔ ((Fin.natAdd j b : Fin (j + k)) : ℕ) < j)) := by
      rintro b ⟨_, h⟩
      have h' : j + (b : ℕ) < j := h.1 a.isLt
      omega
    rw [Finset.prod_eq_one (s := Finset.univ) (fun b _ => if_neg (h2 b)), mul_one]
    refine Finset.prod_congr rfl fun b _ => ?_
    by_cases h : a < b
    · rw [if_pos h, if_pos]
      exact ⟨show (a : ℕ) < (b : ℕ) from h, iff_of_true a.isLt b.isLt⟩
    · rw [if_neg h, if_neg]
      intro h'
      exact h (show (a : ℕ) < (b : ℕ) from h'.1)
  · refine Finset.prod_congr rfl fun a _ => ?_
    rw [Fin.prod_univ_add]
    have h2 : ∀ b : Fin j, ¬ ((Fin.natAdd j a) < (Fin.castAdd k b) ∧
        (((Fin.natAdd j a : Fin (j + k)) : ℕ) < j ↔ ((Fin.castAdd k b : Fin (j + k)) : ℕ) < j)) := by
      rintro b ⟨_, h⟩
      have h' : j + (a : ℕ) < j := h.2 b.isLt
      omega
    rw [Finset.prod_eq_one (s := Finset.univ) (fun b _ => if_neg (h2 b)), one_mul]
    refine Finset.prod_congr rfl fun b _ => ?_
    by_cases h : a < b
    · rw [if_pos h, if_pos]
      have hab : (a : ℕ) < (b : ℕ) := h
      refine ⟨show j + (a : ℕ) < j + (b : ℕ) by omega, ?_⟩
      exact iff_of_false (show ¬ j + (a : ℕ) < j by omega) (show ¬ j + (b : ℕ) < j by omega)
    · rw [if_neg h, if_neg]
      intro h'
      have hab : j + (a : ℕ) < j + (b : ℕ) := h'.1
      exact h (show (a : ℕ) < (b : ℕ) by omega)

end Sign

theorem sum_low {M : Type*} [AddCommMonoid M] {j k : ℕ} (g : Fin (j + k) → M) :
    ∑ i ∈ Finset.univ.filter (fun i : Fin (j + k) => (i : ℕ) < j), g i =
      ∑ a : Fin j, g (Fin.castAdd k a) := by
  rw [Finset.sum_filter, Fin.sum_univ_add]
  simp

theorem sum_high {M : Type*} [AddCommMonoid M] {j k : ℕ} (g : Fin (j + k) → M) :
    ∑ i ∈ Finset.univ.filter (fun i : Fin (j + k) => j ≤ (i : ℕ)), g i =
      ∑ b : Fin k, g (Fin.natAdd j b) := by
  rw [Finset.sum_filter, Fin.sum_univ_add]
  have h1 : ∀ a : Fin j, ¬ j ≤ ((Fin.castAdd k a : Fin (j + k)) : ℕ) := fun a => not_le.2 a.isLt
  rw [Finset.sum_eq_zero (fun a _ => if_neg (h1 a)), zero_add]
  exact Finset.sum_congr rfl fun b _ => if_pos (show j ≤ j + (b : ℕ) by omega)

variable {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ]

def degFlL (N : ℕ) : RP Ψ N →ₗ[ℝ] ℝ where
  toFun := degFl
  map_add' a b := by
    simp only [degFl, MvPolynomial.coeff_add, mul_add, Finset.sum_add_distrib]
  map_smul' c a := by
    simp only [degFl, MvPolynomial.coeff_smul, smul_eq_mul, RingHom.id_apply, Finset.mul_sum]
    refine Finset.sum_congr rfl fun _ _ => ?_
    ring

theorem permExp_degree (N : ℕ) :
    (permExp (fun _ => 1) : (Ψ × Fin N) →₀ ℕ).degree = dimFl Ψ N := by
  rw [Finsupp.degree_eq_sum, Fintype.sum_prod_type]
  have h : ∀ τ : Ψ, ∑ i : Fin N, (permExp (fun _ => 1) : (Ψ × Fin N) →₀ ℕ) (τ, i) = N * (N - 1) / 2 := by
    intro τ
    simp only [permExp, Finsupp.equivFunOnFinite_symm_apply_apply, Equiv.Perm.coe_one, id]
    rw [Fin.sum_univ_eq_sum_range (fun i => N - 1 - i) N, Finset.sum_range_reflect (fun i => i) N,
      Finset.sum_range_id]
  simp [h, dimFl]

theorem degFl_permExp (N : ℕ) :
    degFl (monomial (permExp (fun _ => 1) : (Ψ × Fin N) →₀ ℕ) (1 : ℝ)) = (-1) ^ dimFl Ψ N := by
  unfold degFl
  rw [Finset.sum_eq_single (fun _ => 1)]
  · simp
  · intro σ _ hσ
    rw [coeff_monomial, if_neg, mul_zero]
    intro h
    apply hσ
    funext τ
    ext i
    have := DFunLike.congr_fun h (τ, i)
    simp only [permExp, Finsupp.equivFunOnFinite_symm_apply_apply, Equiv.Perm.coe_one, id] at this
    have h1 := i.isLt
    have h2 := (σ τ i).isLt
    simp only [Equiv.Perm.coe_one, id]
    omega
  · intro h
    exact absurd (Finset.mem_univ _) h

end GlobalTheory.CompanionTheory.Ar.Top.TestRest

namespace GlobalTheory.CompanionTheory.Ar.Top.TestRest

variable {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {f j k : ℕ}

def rl (e : Ψ ≃ Fin f) (j k : ℕ) : RP Ψ (j + k) →ₐ[ℝ] RestTerms.Roots f j k :=
  rename fun x => (e x.1, x.2)

def rli (e : Ψ ≃ Fin f) (j k : ℕ) : RestTerms.Roots f j k →ₐ[ℝ] RP Ψ (j + k) :=
  rename fun x => (e.symm x.1, x.2)

omit [Fintype Ψ] [DecidableEq Ψ] in
theorem rli_rl (e : Ψ ≃ Fin f) (F : RP Ψ (j + k)) : rli e j k (rl e j k F) = F := by
  unfold rli rl
  rw [rename_rename]
  have : ((fun x : Fin f × Fin (j + k) => (e.symm x.1, x.2)) ∘ fun x : Ψ × Fin (j + k) => (e x.1, x.2)) =
      id := by
    funext x
    simp
  rw [this, rename_id_apply]

omit [Fintype Ψ] [DecidableEq Ψ] in
theorem rl_X (e : Ψ ≃ Fin f) (τ : Ψ) (i : Fin (j + k)) :
    rl e j k (X (τ, i)) = X (e τ, i) := by
  simp [rl]


def flagI (e : Ψ ≃ Fin f) (j k : ℕ) : RestTerms.Roots f j k →ₗ[ℝ] ℝ :=
  (degFlL (j + k)).comp (rli e j k).toLinearMap

theorem flagI_apply (e : Ψ ≃ Fin f) (G : RestTerms.Roots f j k) :
    flagI e j k G = degFl (rli e j k G) := rfl

theorem flagI_rl (e : Ψ ≃ Fin f) (F : RP Ψ (j + k)) : flagI e j k (rl e j k F) = degFl F := by
  rw [flagI_apply, rli_rl]

omit [Fintype Ψ] [DecidableEq Ψ] in
theorem psumAt_eq (e : Ψ ≃ Fin f) (m : ℕ) (τ : Ψ) :
    RestTerms.psumAt f j k m (e τ) = rl e j k (pk τ m) := by

  simp only [RestTerms.psumAt, pk, map_sum, map_pow, rl_X]

theorem isFlag (e : Ψ ≃ Fin f) (hf : Fintype.card Ψ = f) : RestTerms.IsFlagIntegral f j k (flagI e j k) := by
  refine ⟨?_, ?_⟩
  · intro m τ G h1 _ _
    obtain ⟨t, rfl⟩ := e.surjective τ
    rw [flagI_apply, psumAt_eq, map_mul, rli_rl]
    exact _root_.GlobalTheory.CompanionTheory.Ar.Top.degFl_pk_mul_eq_zero Ψ (j + k) t m _ h1
  · subst hf
    refine ⟨rl e j k (monomial (permExp fun _ => 1) 1), ?_, ?_⟩
    · have h := (isHomogeneous_monomial (R := ℝ) (1 : ℝ) (permExp_degree (Ψ := Ψ) (j + k))).rename_isHomogeneous
        (f := fun x : Ψ × Fin (j + k) => (e x.1, x.2))
      exact h
    · rw [flagI_rl, degFl_permExp]
      exact pow_ne_zero _ (by norm_num)

def conv (e : Ψ ≃ Fin f) : Ψ ⊕ Ψ → Fin f × Bool
  | Sum.inl t => (e t, false)
  | Sum.inr t => (e t, true)

omit [Fintype Ψ] [DecidableEq Ψ] in
theorem lie_eq (e : Ψ ≃ Fin f) (m : ℕ) (s : Ψ ⊕ Ψ) :
    RestTerms.lieClass f j k m (conv e s) = rl e j k (pLie j m s) := by
  cases s with
  | inl t =>

    simp only [conv, RestTerms.lieClass, pLie, pkLow, sum_low, map_sum, map_pow, rl_X]
    simp
  | inr t =>

    simp only [conv, RestTerms.lieClass, pLie, sum_high, map_sum, map_pow, map_neg, rl_X, if_true]
    rw [Finset.mul_sum]
    exact Finset.sum_congr rfl fun b _ => (neg_pow _ m).symm

theorem mu_eq (e : Ψ ≃ Fin f) (bot : Bool) (hbot : bot = decide (k ≤ j)) :
    RestTerms.muClass f j k bot = rl e j k (muSmall j) := by
  unfold RestTerms.muClass muSmall
  rw [← Equiv.sum_comp e]
  have hk : j + k - j = k := by omega
  by_cases h : k ≤ j
  · have hb : bot = true := by simp [hbot, h]
    rw [if_pos (by rw [hk]; exact h), hb]

    simp only [RestTerms.smallPsum, if_true, sum_high, map_sum, rl_X, pow_one]
  · have hb : bot = false := by simp [hbot, h]
    rw [if_neg (by rw [hk]; exact h), hb]

    simp only [RestTerms.smallPsum, pkLow, sum_low, map_neg, map_sum, rl_X, pow_one]
    simp

theorem fib_sg (e : Ψ ≃ Fin f) (bot : Bool) :
    Sg (RestTerms.fibClass f j k bot) (rl e j k (fibClass j)) := by
  unfold RestTerms.fibClass fibClass
  rw [← Equiv.prod_comp e, map_prod]
  refine Sg.prod _ _ _ fun τ _ => ?_
  have h : rl e j k (∏ ab ∈ Finset.univ.filter (fun ab : Fin (j + k) × Fin (j + k) =>
      ab.1 < ab.2 ∧ ((ab.1 : ℕ) < j ↔ (ab.2 : ℕ) < j)), (X (τ, ab.2) - X (τ, ab.1))) =
      pairProd (fun a : Fin j => (X (e τ, Fin.castAdd k a) : RestTerms.Roots f j k)) *
        pairProd (fun b : Fin k => (X (e τ, Fin.natAdd j b) : RestTerms.Roots f j k)) := by
    rw [map_prod, ← pair_split (fun i => (X (e τ, i) : RestTerms.Roots f j k))]
    refine Finset.prod_congr rfl fun ab _ => ?_
    rw [map_sub, rl_X, rl_X]
  rw [h]
  cases bot with
  | true =>
    simp only [if_true]
    rw [mul_comm (pairProd _)]
    exact (vandermonde_sg _).mul (vandermonde_sg _)
  | false =>
    simp only [Bool.false_eq_true, if_false]
    exact ((vandermonde_sg _).trans (pairProd_neg _)).mul (vandermonde_sg _)

end GlobalTheory.CompanionTheory.Ar.Top.TestRest

namespace GlobalTheory.CompanionTheory.Ar.Top.TestRest

variable {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {j k : ℕ}

theorem finite_bound [Nonempty Ψ] (hj : 1 ≤ j) (hk : 1 ≤ k) (frob : ℕ → Ψ → ℕ → Ψ ⊕ Ψ) (B₀ : ℕ)
    (Q : Ψ → ℕ → RP Ψ (j + k)) (hB : 4 * Fintype.card Ψ * (j + k) ^ 2 ≤ B₀)
    (hQ : IsDecomp (testPoly j) Q) (S : Finset ℕ) (hS : ∀ p ∈ S, p.Prime ∧ B₀ < p) :
    |∑ p ∈ S, ∑ τ, ∑ m ∈ Finset.Icc 1 (j + k), restTerm j p (frob p τ) m (Q τ m)| ≤
      1.6 * (((dimX Ψ (j + k) j : ℝ) + 1) * testDeg Ψ (j + k) j) := by
  let e : Ψ ≃ Fin (Fintype.card Ψ) := Fintype.equivFin Ψ
  have hf1 : 1 ≤ Fintype.card Ψ := Fintype.card_pos
  let bot : Bool := decide (k ≤ j)
  have hsmall : RestTerms.IsSmallBlock j k bot := by
    refine ⟨fun h => by simpa [bot] using h, fun h => ?_⟩
    have : ¬ k ≤ j := by simpa [bot] using h
    omega
  obtain ⟨ε, hε, hfib⟩ : ∃ ε : ℝ, (ε = 1 ∨ ε = -1) ∧
      RestTerms.fibClass (Fintype.card Ψ) j k bot = ε • rl e j k (fibClass j) := by
    rcases fib_sg (j := j) (k := k) e bot with h | h
    · exact ⟨1, Or.inl rfl, by rw [h, one_smul]⟩
    · exact ⟨-1, Or.inr rfl, by rw [h, neg_smul, one_smul]⟩
  have hmu := mu_eq (j := j) (k := k) e bot rfl
  have hn : RestTerms.nDim (Fintype.card Ψ) j k = dimX Ψ (j + k) j := by
    have : j + k - j = k := by omega
    simp only [RestTerms.nDim, dimX, this, mul_assoc]
  have hrest : RestTerms.restPoly (Fintype.card Ψ) j k bot = ε • rl e j k (testPoly j) := by
    unfold RestTerms.restPoly testPoly
    rw [hmu, hfib, hn, map_mul, map_pow, mul_smul_comm]
  have hdeg : RestTerms.degPoly (Fintype.card Ψ) j k bot =
      ε • rl e j k (muSmall j ^ dimX Ψ (j + k) j * fibClass j) := by
    unfold RestTerms.degPoly
    rw [hmu, hfib, hn, map_mul, map_pow, mul_smul_comm]
  let Q' : Fin (Fintype.card Ψ) → ℕ → RestTerms.Roots (Fintype.card Ψ) j k :=
    fun τ m => ε • rl e j k (Q (e.symm τ) m)
  have hdec : RestTerms.IsPsumDecomp (Fintype.card Ψ) j k
      (RestTerms.restPoly (Fintype.card Ψ) j k bot) Q' := by
    refine ⟨fun τ m h1 h2 => ?_, ?_⟩
    · have h := (hQ.1 (e.symm τ) m h1 h2).rename_isHomogeneous
        (f := fun x : Ψ × Fin (j + k) => (e x.1, x.2))
      have h3 := (isHomogeneous_C (Fin (Fintype.card Ψ) × Fin (j + k)) ε).mul h
      rw [zero_add] at h3
      simp only [Q', smul_eq_C_mul]
      exact h3
    · rw [hrest, hQ.2, (Equiv.sum_comp e _).symm]

      simp only [Q', map_sum, Finset.smul_sum, map_mul, Equiv.symm_apply_apply, psumAt_eq,
      mul_smul_comm]
  let σ : ℕ → ℕ → Fin (Fintype.card Ψ) → Fin (Fintype.card Ψ) × Bool :=
    fun p n τ => conv e (frob p (e.symm τ) (n - 1))
  have hat : ∀ p, RestTerms.restAt (Fintype.card Ψ) j k (flagI e j k) 1 σ Q' p =
      ε * ∑ τ, ∑ m ∈ Finset.Icc 1 (j + k), restTerm j p (frob p τ) m (Q τ m) := by
    intro p
    have hterm : ∀ (τ : Ψ) (m n : ℕ), RestTerms.restTerm (Fintype.card Ψ) j k (flagI e j k) σ Q' p (e τ) m n =
        ε * (((p : ℝ) ^ ((n + 1) * m))⁻¹ * m * degFl (pLie j (m - 1) (frob p τ n) * Q τ m)) := by
      intro τ m n
      unfold RestTerms.restTerm
      simp only [σ, Q', Equiv.symm_apply_apply, Nat.add_sub_cancel, lie_eq, mul_smul_comm,
        ← map_mul, map_smul, flagI_rl, smul_eq_mul]
      ring
    have hin : ∀ (τ : Ψ) (m : ℕ),
        ∑' n, RestTerms.restTerm (Fintype.card Ψ) j k (flagI e j k) σ Q' p (e τ) m n =
          ε * (m * ∑' n : ℕ, ((p : ℝ) ^ m)⁻¹ ^ (n + 1) * degFl (pLie j (m - 1) (frob p τ n) * Q τ m)) := by
      intro τ m
      simp_rw [hterm]
      rw [tsum_mul_left]
      congr 1
      refine Eq.trans (tsum_congr fun n => ?_) (tsum_mul_left (a := (m : ℝ)))
      rw [inv_pow, ← pow_mul, mul_comm m (n + 1)]
      ring
    have hsub : ∀ τ : Ψ, ∑ m ∈ Finset.Icc 1 (j + k), restTerm j p (frob p τ) m (Q τ m) =
        ∑ m ∈ Finset.Icc 2 (j + k), Real.log p *
          (m * ∑' n : ℕ, ((p : ℝ) ^ m)⁻¹ ^ (n + 1) * degFl (pLie j (m - 1) (frob p τ n) * Q τ m)) := by
      intro τ
      have h := Finset.sum_subset (s₁ := Finset.Icc 2 (j + k)) (s₂ := Finset.Icc 1 (j + k))
        (f := fun m => restTerm j p (frob p τ) m (Q τ m))
        (fun x hx => by
          rw [Finset.mem_Icc] at hx ⊢
          omega)
        (fun x hx hnx => by
          rw [Finset.mem_Icc] at hx hnx
          unfold restTerm
          rw [if_neg (by omega)])
      rw [← h]
      refine Finset.sum_congr rfl fun m hm => ?_
      rw [Finset.mem_Icc] at hm
      unfold restTerm
      rw [if_pos hm.1, mul_assoc]
    unfold RestTerms.restAt
    rw [(Equiv.sum_comp e _).symm]
    simp only [hin, hsub, Finset.mul_sum]
    refine Finset.sum_congr rfl fun τ _ => Finset.sum_congr rfl fun m _ => ?_
    ring
  have htsum : ∀ g : ℕ → ℝ,
      ∑' p : RestTerms.primesOver (↑S : Set ℕ) (B₀ : ℝ), g p.1 = ∑ p ∈ S, g p := by
    intro g
    let e2 : RestTerms.primesOver (↑S : Set ℕ) (B₀ : ℝ) ≃ {p // p ∈ S} :=
      { toFun := fun p => ⟨p.1, by simpa using p.2.1⟩
        invFun := fun p => ⟨p.1, by simpa using p.2, (hS _ p.2).1, by exact_mod_cast (hS _ p.2).2⟩
        left_inv := fun _ => rfl
        right_inv := fun _ => rfl }
    rw [← Finset.tsum_subtype S g]
    exact e2.tsum_eq (fun p => g p.1)
  have hB' : 4 * ((Fintype.card Ψ : ℕ) : ℝ) * ((j + k : ℕ) : ℝ) ^ 2 ≤ (B₀ : ℝ) := by
    exact_mod_cast hB
  have hmain := (GroundTheory.Heights₂.Heights.RestTerms.RestBound.imp
    GroundTheory.Heights₂.Heights.RestTerms.RestBound.full (Fintype.card Ψ) j k hf1 hj hk bot hsmall
    (flagI e j k) (isFlag e rfl) 1 one_pos (↑S) (fun p hp => (hS p hp).1) (B₀ : ℝ) hB' σ Q' hdec).2
  rw [htsum (RestTerms.restAt (Fintype.card Ψ) j k (flagI e j k) 1 σ Q')] at hmain
  simp only [hat] at hmain
  have hI : flagI e j k (RestTerms.degPoly (Fintype.card Ψ) j k bot) = ε * testDeg Ψ (j + k) j := by
    rw [hdeg, map_smul, flagI_rl]
    rfl
  have hpos : 0 < testDeg Ψ (j + k) j := (_root_.GlobalTheory.CompanionTheory.Ar.Top.testPoly_facts Ψ (j + k) j hj (by omega)).2.1
  have habs : |ε| = 1 := by rcases hε with rfl | rfl <;> simp
  rw [← Finset.mul_sum, abs_mul, habs, one_mul, hI, abs_mul, habs, one_mul, abs_of_pos hpos, hn] at hmain
  calc _ ≤ _ := hmain
    _ = _ := by ring

end GlobalTheory.CompanionTheory.Ar.Top.TestRest

namespace GlobalTheory.CompanionTheory.Ar.Top

theorem testRest_bound : ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (j : ℕ) (bad : Finset ℕ) (frob : ℕ → Ψ → ℕ → Ψ ⊕ Ψ) (B₀ : ℕ) (Q : Ψ → ℕ → RP Ψ N), 1 ≤ j → j < N → 4 * Fintype.card Ψ * N ^ 2 ≤ B₀ → IsDecomp (testPoly j) Q → |∑ τ, ∑ k ∈ Finset.Icc 1 N, restSum j bad frob B₀ τ k (Q τ k)| ≤ 1.6 * (((dimX Ψ N j : ℝ) + 1) * testDeg Ψ N j) := by
  intro Ψ _ _ N j bad frob B₀ Q hj hjN hB hQ
  obtain ⟨k, rfl⟩ : ∃ k, N = j + k := ⟨N - j, by omega⟩
  have hk : 1 ≤ k := by omega
  have hJ : 0 < testDeg Ψ (j + k) j := (_root_.GlobalTheory.CompanionTheory.Ar.Top.testPoly_facts Ψ (j + k) j hj hjN).2.1
  rcases isEmpty_or_nonempty Ψ with hΨ | hΨ
  · simp only [Finset.univ_eq_empty, Finset.sum_empty, abs_zero]
    exact mul_nonneg (by norm_num) (mul_nonneg (by positivity) hJ.le)
  have hlim : Tendsto (fun B : ℕ => ∑ τ, ∑ m ∈ Finset.Icc 1 (j + k),
      ∑ p ∈ (Finset.Ioc B₀ B).filter (fun p => p.Prime ∧ p ∉ bad), restTerm j p (frob p τ) m (Q τ m))
      atTop (𝓝 (∑ τ, ∑ m ∈ Finset.Icc 1 (j + k), restSum j bad frob B₀ τ m (Q τ m))) :=
    tendsto_finsetSum _ fun τ _ => tendsto_finsetSum _ fun m _ =>
      (_root_.GlobalTheory.CompanionTheory.Ar.Top.restTerm_bound_and_tendsto Ψ (j + k) j bad frob τ m (Q τ m)).2 B₀
  refine le_of_tendsto hlim.abs (Eventually.of_forall fun B => ?_)
  have h := TestRest.finite_bound hj hk frob B₀ Q hB hQ
    ((Finset.Ioc B₀ B).filter (fun p => p.Prime ∧ p ∉ bad))
    (fun p hp => by
      rw [Finset.mem_filter, Finset.mem_Ioc] at hp
      exact ⟨hp.2.1, hp.1.1⟩)
  have h2 : ∑ p ∈ (Finset.Ioc B₀ B).filter (fun p => p.Prime ∧ p ∉ bad), ∑ τ,
      ∑ m ∈ Finset.Icc 1 (j + k), restTerm j p (frob p τ) m (Q τ m) =
      ∑ τ, ∑ m ∈ Finset.Icc 1 (j + k),
        ∑ p ∈ (Finset.Ioc B₀ B).filter (fun p => p.Prime ∧ p ∉ bad), restTerm j p (frob p τ) m (Q τ m) := by
    rw [Finset.sum_comm]
    exact Finset.sum_congr rfl fun τ _ => Finset.sum_comm
  rwa [h2] at h

end GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TestPolynomialRemainderBound =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TestHeightBound =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TestHeightBound", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.HeckeSectionsIsotropicCommutatorPairingPower\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.CutoffCoefficientsBound\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\npublic import Mathlib.RingTheory.MvPolynomial.Homogeneous\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.HomogeneousPowerSumDecomposition\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TestPolynomialRemainderBound\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerHeightIdentityExpansion\nimport Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TestPolynomialShiftTotal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.ExponentialBounds\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace GlobalTheory.CompanionTheory.Ar.Top

theorem lower_bound_key_inequality (K f m x L C h R : ℝ) (hK : 0 < K) (hf : 1 ≤ f) (hm : 1 ≤ m)
    (h1 : -(C * f * m * L) * K ≤ h - x * (f * (K * m)) + R) (l : ℝ) (h2 : h ≤ K * (f * (m / 2 * l)))
    (h3 : |R| ≤ 1.6 * K) : x ≤ C * L + l / 2 + 1.6 := by
  have hR : R ≤ 1.6 * K := (le_abs_self R).trans h3
  have hfm : 1 ≤ f * m := by nlinarith
  have hP : 0 < f * (K * m) := mul_pos (by linarith) (mul_pos hK (by linarith))
  have hKfm : K ≤ K * (f * m) := by nlinarith
  have key : x * (f * (K * m)) ≤ (C * L + l / 2 + 1.6) * (f * (K * m)) := by
    nlinarith
  exact le_of_mul_le_mul_right key hP

theorem lower_bound_finite_arith (N m A M : ℝ) (hm : 0 < m) (hM : 0 ≤ M) (hN : N ≤ 2 * m) (h : -(N * M) ≤ m * A) : -(2 * M) ≤ A := by
  have h' : m * (-(2 * M)) ≤ m * A := by nlinarith
  exact le_of_mul_le_mul_left h' hm

theorem test_height_bound_slope_flat : ∀ II : IntersectionSystem, ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (T : RootTower Ψ N) [Nonempty Ψ] (hh : RP Ψ N →ₗ[ℝ] ℝ) (frob : ℕ → Ψ → ℕ → Ψ ⊕ Ψ) (C C' rd Lval : ℝ), 0 ≤ C → 0 ≤ C' → 1 ≤ rd → T.Proportional → I9 (Ψ := Ψ) (N := N) hh → T.PropF II C' rd Lval → T.SlopeLower II C rd Lval → hh (testPoly T.j) ≤ ((dimX Ψ N T.j : ℝ) + 1) * testDeg Ψ N T.j * (Fintype.card Ψ * ((min T.j (N - T.j) : ℕ) / 2 * Real.log (N + 1))) → T.LowerBoundAtBase II hh frob (2 * (C + C') + 3) rd Lval := by
  intro II Ψ _ _ N T _ hh frob C C' rd Lval hC hC' hrd hprop hI9 hPF hSL hhh B₀ A₀ b₀ hB128 hB4 hbad hId
  have hj1 := T.j_pos
  have hjN := T.j_lt
  obtain ⟨hhom, htd, hcase1, hcase2⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Top.testPoly_facts Ψ N T.j hj1 hjN
  obtain ⟨Q, hQ1, hQ2⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Top.form_top_succ_eq_sum_pk Ψ N (testPoly T.j) (by omega) hhom
  have hdec : IsDecomp (testPoly T.j) Q := ⟨hQ1, hQ2⟩
  have hPP := _root_.GlobalTheory.CompanionTheory.Ar.Top.identOnDecomposedForm II Ψ N T hh frob B₀ A₀ b₀ (testPoly T.j) Q hId hdec
  have hR := _root_.GlobalTheory.CompanionTheory.Ar.Top.testRest_bound Ψ N T.j T.bad frob B₀ Q hj1 hjN hB4 hdec
  have hAb := _root_.GlobalTheory.CompanionTheory.Ar.Top.flat_85_bound II Ψ N T hh frob C' rd Lval B₀ A₀ b₀ hprop hI9 hPF hB128 hbad hId
  have hSL' := hSL B₀ hB128 hB4 hbad
  have hvol : 0 < T.volT := by
    show 0 < ∑ c, T.vol c
    exact Finset.sum_pos (fun c _ => hprop.1 c) Finset.univ_nonempty
  have hcard : 1 ≤ Fintype.card Ψ := Fintype.card_pos
  have hf : (1:ℝ) ≤ (Fintype.card Ψ : ℝ) := by exact_mod_cast hcard
  have hN1 : N + 1 ≤ B₀ := by nlinarith
  have hlogB : Real.log (B₀:ℝ) ≤ bigLam (B₀:ℝ) rd Lval := by
    show Real.log (B₀:ℝ) ≤ Real.log ((B₀:ℝ) * rd) + |Lval|
    have hB0 : (0:ℝ) < B₀ := by exact_mod_cast (show 0 < B₀ by omega)
    have := Real.log_le_log hB0 (le_mul_of_one_le_right hB0.le hrd)
    linarith [abs_nonneg Lval]
  have hl : Real.log ((N:ℝ) + 1) ≤ Real.log (B₀:ℝ) :=
    Real.log_le_log (by positivity) (by exact_mod_cast hN1)
  have hl0 : 0 ≤ Real.log ((N:ℝ) + 1) := Real.log_nonneg (by linarith [(Nat.cast_nonneg N : (0:ℝ) ≤ N)])
  have h16 : 1.6 ≤ Real.log (B₀:ℝ) := by
    have h128 : Real.log 128 = 7 * Real.log 2 := by
      rw [show (128:ℝ) = 2 ^ 7 by norm_num, Real.log_pow]; norm_num
    have : Real.log 128 ≤ Real.log (B₀:ℝ) :=
      Real.log_le_log (by norm_num) (by exact_mod_cast hB128)
    linarith [Real.log_two_gt_d9]
  set Λ := bigLam (B₀:ℝ) rd Lval with hΛ
  set R := ∑ τ, ∑ k ∈ Finset.Icc 1 N, restSum T.j T.bad frob B₀ τ k (Q τ k) with hRdef
  set f : ℝ := (Fintype.card Ψ : ℝ) with hfdef
  set D : ℝ := (dimX Ψ N T.j : ℝ) with hD
  set td := testDeg Ψ N T.j with htddef
  set l := Real.log ((N:ℝ) + 1) with hldef
  have hK : 0 < (D + 1) * td := mul_pos (by positivity) htd
  have hM0 : 0 ≤ C * Λ + l / 2 + 1.6 + C' * Λ := by
    have := mul_nonneg hC (show 0 ≤ Λ by linarith)
    have := mul_nonneg hC' (show 0 ≤ Λ by linarith)
    linarith
  have hfinal : ∀ A : ℝ, -(2 * (C * Λ + l / 2 + 1.6 + C' * Λ)) ≤ A →
      -((2 * (C + C') + 3) * Λ) ≤ A := by
    intro A hA
    nlinarith
  apply hfinal
  have hAb' := abs_le.mp hAb
  by_cases hc : N - T.j ≤ T.j
  · have hs := hcase1 hc
    have hmin : min T.j (N - T.j) = N - T.j := min_eq_right hc
    rw [hmin] at hSL' hhh
    have hm1 : (1:ℝ) ≤ ((N - T.j : ℕ) : ℝ) := by
      have : 1 ≤ N - T.j := by omega
      exact_mod_cast this
    set m : ℝ := ((N - T.j : ℕ) : ℝ) with hmdef
    have hSh : ∑ σ : Ψ, Sh (N := N) T.j σ (testPoly T.j) = 0 := Finset.sum_eq_zero (fun σ _ => (hs σ).1)
    have hTot : ∑ σ : Ψ, Tot (N := N) σ (testPoly T.j) = f * ((D + 1) * td * m) := by
      rw [Finset.sum_congr rfl (fun σ _ => (hs σ).2), Finset.sum_const, Finset.card_univ,
        nsmul_eq_mul]
      ring
    rw [hPP, hSh, hTot] at hSL'
    have h1 : -(C * f * m * Λ) * ((D + 1) * td) ≤
        hh (testPoly T.j) - b₀ * (f * ((D + 1) * td * m)) + R := by
      refine le_of_mul_le_mul_left ?_ hvol
      calc T.volT * (-(C * f * m * Λ) * ((D + 1) * td))
          = -(C * f * m * Λ) * ((D + 1) * (T.volT * td)) := by ring
        _ ≤ _ := hSL'
        _ = T.volT * (hh (testPoly T.j) - b₀ * (f * ((D + 1) * td * m)) + R) := by ring
    have hb := lower_bound_key_inequality ((D + 1) * td) f m b₀ Λ C (hh (testPoly T.j)) R hK hf hm1 h1 l hhh hR
    have hj0 : (0:ℝ) < (T.j : ℝ) := by
      have : 0 < T.j := by omega
      exact_mod_cast this
    have hNj : (N:ℝ) ≤ 2 * (T.j : ℝ) := by
      have : N ≤ 2 * T.j := by omega
      exact_mod_cast this
    refine lower_bound_finite_arith (N:ℝ) (T.j:ℝ) A₀ _ hj0 hM0 hNj ?_
    have hNb := mul_le_mul_of_nonneg_left hb (Nat.cast_nonneg (α := ℝ) N)
    nlinarith
  · have hs := hcase2 hc
    have hmin : min T.j (N - T.j) = T.j := min_eq_left (by omega)
    rw [hmin] at hSL' hhh
    have hm1 : (1:ℝ) ≤ (T.j : ℝ) := by exact_mod_cast hj1
    set m : ℝ := (T.j : ℝ) with hmdef
    have hSh : ∑ σ : Ψ, Sh (N := N) T.j σ (testPoly T.j) = f * (-((D + 1) * m * td)) := by
      rw [Finset.sum_congr rfl (fun σ _ => (hs σ).1), Finset.sum_const, Finset.card_univ,
        nsmul_eq_mul]
    have hTot : ∑ σ : Ψ, Tot (N := N) σ (testPoly T.j) = f * (-((D + 1) * m * td)) := by
      rw [Finset.sum_congr rfl (fun σ _ => (hs σ).2), Finset.sum_const, Finset.card_univ,
        nsmul_eq_mul]
    rw [hPP, hSh, hTot] at hSL'
    have h1 : -(C * f * m * Λ) * ((D + 1) * td) ≤
        hh (testPoly T.j) - (-(A₀ + b₀)) * (f * ((D + 1) * td * m)) + R := by
      refine le_of_mul_le_mul_left ?_ hvol
      calc T.volT * (-(C * f * m * Λ) * ((D + 1) * td))
          = -(C * f * m * Λ) * ((D + 1) * (T.volT * td)) := by ring
        _ ≤ _ := hSL'
        _ = T.volT * (hh (testPoly T.j) - (-(A₀ + b₀)) * (f * ((D + 1) * td * m)) + R) := by ring
    have hb := lower_bound_key_inequality ((D + 1) * td) f m (-(A₀ + b₀)) Λ C (hh (testPoly T.j)) R hK hf hm1 h1 l hhh hR
    have hcast : ((N - T.j : ℕ) : ℝ) = (N:ℝ) - (T.j:ℝ) := by
      rw [Nat.cast_sub (by omega)]
    have hpos : (0:ℝ) < ((N - T.j : ℕ) : ℝ) := by
      have : 0 < N - T.j := by omega
      exact_mod_cast this
    have hNj : (N:ℝ) ≤ 2 * ((N - T.j : ℕ) : ℝ) := by
      have : N ≤ 2 * (N - T.j) := by omega
      exact_mod_cast this
    refine lower_bound_finite_arith (N:ℝ) ((N - T.j : ℕ) : ℝ) A₀ _ hpos hM0 hNj ?_
    rw [hcast]
    have hNb := mul_le_mul_of_nonneg_left hb (Nat.cast_nonneg (α := ℝ) N)
    nlinarith

end GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TestHeightBound =====
