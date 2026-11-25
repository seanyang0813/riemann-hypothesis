module

public import Formalism.PolynomialDimension.StatementHar
public import Formalism.PolynomialDimension.MultinomialDepth.SqrtFockGaussLatticeComparisonHolds
public import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.SingleWeightLatticeComparison
public import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.FinrankTensor
import Formalism.PolynomialDimension.MultinomialDepth.HarmonicDecompositionHolds
import Mathlib.Tactic.Linter.Style
import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.RhoLowerBoundOfEdgeCount

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PolynomialDimension.MultinomialDepth.PairingAdjointLaplacianHolds, Formalism.PolynomialDimension.FinalHar, Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.HarProjEqZeroIff, Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.SingleWeightOfModelIdentification

-- ===== clump member: Formalism.PolynomialDimension.MultinomialDepth.PairingAdjointLaplacianHolds =====
-- clump-header: {"m": "Formalism.PolynomialDimension.MultinomialDepth.PairingAdjointLaplacianHolds", "h": "module\n\npublic import Formalism.PolynomialDimension.StatementHar\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option linter.unusedSimpArgs false

noncomputable section

open scoped BigOperators
open Finset MvPolynomial

namespace Formalism.CountingSumsFrames

section Gen

variable (K : Type) [Field K] (k : ℕ)

def eulX_har (f : PolXY K k) : PolXY K k := ∑ i : Fin k, X (Sum.inl i) * pderiv (Sum.inl i) f

def eulY (f : PolXY K k) : PolXY K k := ∑ i : Fin k, X (Sum.inr i) * pderiv (Sum.inr i) f

variable {K k}

theorem ctrF_apply (f : PolXY K k) :
    ctrF K k f = ∑ i : Fin k, pderiv (Sum.inl i) (pderiv (Sum.inr i) f) := by
  simp [ctrF, LinearMap.sum_apply]

theorem pderiv_inl_h (i : Fin k) : pderiv (Sum.inl i) (hXY K k) = X (Sum.inr i) := by
  classical
  simp [hXY, pderiv_X, Pi.single_apply, Finset.sum_ite_eq']

theorem pderiv_inr_h (i : Fin k) : pderiv (Sum.inr i) (hXY K k) = X (Sum.inl i) := by
  classical
  simp [hXY, pderiv_X, Pi.single_apply, Finset.sum_ite_eq']

theorem ctrF_h_mul (f : PolXY K k) :
    ctrF K k (hXY K k * f) = hXY K k * ctrF K k f + (k : K) • f + eulX_har K k f + eulY K k f := by
  classical
  have key : ∀ i : Fin k, pderiv (Sum.inl i) (pderiv (Sum.inr i) (hXY K k * f)) =
      hXY K k * pderiv (Sum.inl i) (pderiv (Sum.inr i) f) + f +
        X (Sum.inl i) * pderiv (Sum.inl i) f + X (Sum.inr i) * pderiv (Sum.inr i) f := by
    intro i
    rw [pderiv_mul, pderiv_inr_h, map_add (f := _), pderiv_mul, pderiv_mul, pderiv_inl_h, pderiv_X_self]
    ring
  rw [ctrF_apply, ctrF_apply, eulX_har, eulY, Finset.sum_congr rfl (fun i _ => key i)]
  simp only [Finset.sum_add_distrib, Finset.mul_sum, Finset.sum_const, Finset.card_univ,
    Fintype.card_fin]
  rw [← Nat.cast_smul_eq_nsmul K]

theorem coeff_X_mul_pderiv (v : XY k) (f : PolXY K k) (m : XY k →₀ ℕ) :
    AddMonoidAlgebra.coeff (X v * pderiv v f) m = (m v : K) * AddMonoidAlgebra.coeff f m := by
  classical
  induction f using MvPolynomial.induction_on' with
  | add p q hp hq => simp [mul_add, hp, hq]
  | monomial n a =>
    rw [X_mul_pderiv_monomial, MvPolynomial.coeff_smul, coeff_monomial]
    by_cases h : n = m
    · subst h; simp
    · simp [h]

theorem coeff_eulX (f : PolXY K k) (m : XY k →₀ ℕ) :
    AddMonoidAlgebra.coeff (eulX_har K k f) m = (xDeg m : K) * AddMonoidAlgebra.coeff f m := by
  simp [eulX_har, coeff_sum, coeff_X_mul_pderiv, xDeg, Finset.sum_mul]

theorem coeff_eulY (f : PolXY K k) (m : XY k →₀ ℕ) :
    AddMonoidAlgebra.coeff (eulY K k f) m = (yDeg m : K) * AddMonoidAlgebra.coeff f m := by
  simp [eulY, coeff_sum, coeff_X_mul_pderiv, yDeg, Finset.sum_mul]

theorem eulX_of_mem {A B : ℕ} {f : PolXY K k} (hf : f ∈ PolAB K k A B) :
    eulX_har K k f = (A : K) • f := by
  ext m
  rw [coeff_eulX, MvPolynomial.coeff_smul, smul_eq_mul]
  by_cases hm : m ∈ f.support
  · rw [(hf m hm).1]
  · rw [notMem_support_iff.1 hm]; simp

theorem eulY_of_mem {A B : ℕ} {f : PolXY K k} (hf : f ∈ PolAB K k A B) :
    eulY K k f = (B : K) • f := by
  ext m
  rw [coeff_eulY, MvPolynomial.coeff_smul, smul_eq_mul]
  by_cases hm : m ∈ f.support
  · rw [(hf m hm).2]
  · rw [notMem_support_iff.1 hm]; simp

end Gen

theorem slTwoCommutator_holds : SlTwo := by
  intro K _ _ k A B f hf
  rw [ctrF_h_mul, eulX_of_mem hf, eulY_of_mem hf]
  simp only [Algebra.smul_def, Nat.cast_add, Nat.cast_mul, Nat.cast_one, Nat.cast_zero, map_add (f := _), map_mul,
      map_one, map_zero, map_natCast]
  ring

section Gen2

variable {K : Type} [Field K] {k : ℕ}

end Gen2

section Fis

variable {K : Type} [Field K] {k : ℕ}

end Fis

section Can

variable {K : Type} [Field K] {k : ℕ}

end Can

end Formalism.CountingSumsFrames
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PolynomialDimension.MultinomialDepth.PairingAdjointLaplacianHolds =====

-- ===== clump member: Formalism.PolynomialDimension.FinalHar =====
-- clump-header: {"m": "Formalism.PolynomialDimension.FinalHar", "h": "module\n\npublic import Formalism.PolynomialDimension.StatementHar\nimport Formalism.PolynomialDimension.MultinomialDepth.HarmonicDecompositionHolds\npublic import Formalism.PolynomialDimension.MultinomialDepth.PairingAdjointLaplacianHolds\npublic import Formalism.PolynomialDimension.MultinomialDepth.SqrtFockGaussLatticeComparisonHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.CountingSumsFrames.Top

theorem harProj : Formalism.CountingSumsFrames.HarProj := Formalism.CountingSumsFrames.harmonicProjection_holds
theorem levelProj : Formalism.CountingSumsFrames.LevelProj := Formalism.CountingSumsFrames.isotypicProjection_holds
end Formalism.CountingSumsFrames.Top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PolynomialDimension.FinalHar =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.HarProjEqZeroIff =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.HarProjEqZeroIff", "h": "module\n\npublic import Formalism.PolynomialDimension.StatementHar\npublic import Formalism.PolynomialDimension.FinalHar\nimport Mathlib.Algebra.AffineMonoid.UniqueSums\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.flipOneThree.Pf

open Formalism.CountingSumsFrames MvPolynomial

theorem harProj_eq_zero_iff {K : Type} [Field K] [CharZero K] {k : ℕ} (hk : 1 ≤ k) (p : ℕ) (hp : p.Prime)
    (Ov : ValuationSubring K) (hloc : PLocal Ov.toSubring p) {a b : ℕ} {f : PolXY K k} (hf : f ∈ PolAB K k a b) :
    harProj K k a b f = 0 ↔ ∃ G ∈ PolAB K k (a - 1) (b - 1), f = hXY K k * G := by
  have HP : Formalism.CountingSumsFrames.HarProj := Formalism.CountingSumsFrames.Top.harProj
  have HQ : Formalism.CountingSumsFrames.HarQuot := _root_.Formalism.CountingSumsFrames.harmonicQuotient_holds
  obtain ⟨hf1, g, hg, hfg⟩ := (HP K k a b hk).1 f hf
  constructor
  · intro h0
    refine ⟨g, hg, ?_⟩
    rw [h0, sub_zero] at hfg
    exact hfg
  · rintro ⟨G, -, rfl⟩
    refine (HQ K k a b p Ov 1 hk hp hloc).1 _ (G - g) hf1 ?_
    rw [mul_sub, ← hfg, sub_sub_cancel]

private theorem mem_PolAB_iff_xDeg_yDeg {K : Type} [Field K] {k A B : ℕ} {f : Formalism.CountingSumsFrames.PolXY K k} :
    f ∈ Formalism.CountingSumsFrames.PolAB K k A B ↔ ∀ m ∈ f.support, Formalism.CountingSumsFrames.xDeg m = A ∧ Formalism.CountingSumsFrames.yDeg m = B := Iff.rfl

private theorem hXY_pow_mem_PolAB {K : Type} [Field K] {k : ℕ} (j : ℕ) :
    Formalism.CountingSumsFrames.hXY K k ^ j ∈ Formalism.CountingSumsFrames.PolAB K k j j := by
  induction j with
  | zero =>
    rw [pow_zero, mem_PolAB_iff_xDeg_yDeg]
    intro m hm
    rw [mem_support_iff, coeff_one] at hm
    split_ifs at hm with h
    · subst h; simp [Formalism.CountingSumsFrames.xDeg, Formalism.CountingSumsFrames.yDeg]
    · exact (hm rfl).elim
  | succ n ih =>
    rw [pow_succ]
    exact _root_.Formalism.CountingSumsFrames.Har4.mul_mem_PolAB ih _root_.Formalism.CountingSumsFrames.Har4.hXY_mem_PolAB

theorem oneTop_abs (K : Type) [Field K] [CharZero K] (k P Q p : ℕ) (hk : 1 ≤ k) (hp : p.Prime)
    (Ov : ValuationSubring K) (hloc : PLocal Ov.toSubring p)
    {V2 : Type} [AddCommGroup V2] [Module K V2] (α : V2 ≃ₗ[K] PolAB K k P Q)
    (W : ℕ → Type) [∀ j, AddCommGroup (W j)] [∀ j, Module K (W j)]
    (β : ∀ j, PolAB K k (P - j) (Q - j) →ₗ[K] W j) (hsurj : ∀ j, Function.Surjective (β j))
    (hker : ∀ j (f : PolAB K k (P - j) (Q - j)), β j f = 0 ↔
      ∃ G ∈ PolAB K k (P - j - 1) (Q - j - 1), (f : PolXY K k) = hXY K k * G) :
    ∃ (io : ∀ j, W j →ₗ[K] V2) (pr : ∀ j, V2 →ₗ[K] W j),
      (∀ x, ∑ j ∈ Finset.range (min P Q + 1), io j (pr j x) = x) ∧
      ∀ (g : GL (Fin k) K) (j : ℕ), j ≤ min P Q →
        (∀ x, (α x : PolXY K k) ∈ latOf g (GaussLat Ov.toSubring) →
          ∃ f : PolAB K k (P - j) (Q - j), (f : PolXY K k) ∈ latOf g (GaussLat Ov.toSubring) ∧
            β j f = ((p : K) ^ ((k + 1) * Nat.log p (P + Q + k))) • pr j x) ∧
        (∀ f : PolAB K k (P - j) (Q - j), (f : PolXY K k) ∈ latOf g (GaussLat Ov.toSubring) →
          (α (((p : K) ^ ((k + 1) * Nat.log p (P + Q + k))) • io j (β j f)) : PolXY K k) ∈
            latOf g (GaussLat Ov.toSubring)) := by
  classical
  have HP : Formalism.CountingSumsFrames.HarProj := Formalism.CountingSumsFrames.Top.harProj
  have IP : Formalism.CountingSumsFrames.LevelProj := Formalism.CountingSumsFrames.Top.levelProj
  have GP : Formalism.CountingSumsFrames.GaussProj := _root_.Formalism.CountingSumsFrames.gaussLatticeProjection_holds
  have GLP : Formalism.CountingSumsFrames.GaussLemmaH := _root_.Formalism.CountingSumsFrames.Har4.gaussLemmaPairing_holds
  have IL : Formalism.CountingSumsFrames.LevelLattice := _root_.Formalism.CountingSumsFrames.Har4.isotypicLattice_holds
  have SC : Formalism.CountingSumsFrames.SlTwo := _root_.Formalism.CountingSumsFrames.slTwoCommutator_holds
  have hpair : Formalism.CountingSumsFrames.hXY K k ≠ 0 := by
    intro h0
    have h1 : (1 : Formalism.CountingSumsFrames.PolXY K k) ∈ Formalism.CountingSumsFrames.PolAB K k 0 0 := by
      simpa using hXY_pow_mem_PolAB (K := K) (k := k) 0
    have h2 := SC K k 0 0 1 h1
    rw [h0] at h2
    simp only [zero_mul, map_zero, sub_self, zero_add] at h2
    have h3 : ((k : ℕ) : K) = 0 := by
      have h4 := congrArg (AddMonoidAlgebra.coeff · 0) h2.symm
      simpa using h4
    exact absurd (Nat.cast_eq_zero.1 h3) (by omega)
  have hle : ∀ A B, Formalism.CountingSumsFrames.HarAB K k A B ≤ Formalism.CountingSumsFrames.PolAB K k A B := fun A B => inf_le_left
  let D : ℕ → Formalism.CountingSumsFrames.PolXY K k →ₗ[K] Formalism.CountingSumsFrames.PolXY K k := fun j =>
    ((((P + Q + k - 2 * j + j - 1).choose j : ℕ) : K)⁻¹ * ((j.factorial : K))⁻¹) •
      (Formalism.CountingSumsFrames.harProj K k (P - j) (Q - j) ∘ₗ Formalism.CountingSumsFrames.ctrDiv K k j)
  have hD : ∀ j F, Formalism.CountingSumsFrames.levelProj K k P Q j F = Formalism.CountingSumsFrames.hXY K k ^ j * D j F := by
    intro j F
    simp only [D, Formalism.CountingSumsFrames.levelProj, Formalism.CountingSumsFrames.hDiv, LinearMap.smul_apply, LinearMap.comp_apply,
      LinearMap.mulLeft_apply]
    rw [mul_smul_comm, smul_smul]
  have hDmem : ∀ j, j ≤ min P Q → ∀ F ∈ Formalism.CountingSumsFrames.PolAB K k P Q,
      D j F ∈ Formalism.CountingSumsFrames.HarAB K k (P - j) (Q - j) := by
    intro j hj F hF
    obtain ⟨w, hw, hw'⟩ := (IP K k P Q hk).1 F hF j hj
    rw [hD] at hw'
    rw [mul_left_cancel₀ (pow_ne_zero j hpair) hw']
    exact hw
  have hjP : ∀ j, j ≤ min P Q → j ≤ P := fun j hj => le_trans hj (min_le_left _ _)
  have hjQ : ∀ j, j ≤ min P Q → j ≤ Q := fun j hj => le_trans hj (min_le_right _ _)
  let Dc : ∀ j, j ≤ min P Q → V2 →ₗ[K] Formalism.CountingSumsFrames.PolAB K k (P - j) (Q - j) := fun j hj =>
    LinearMap.codRestrict _ (D j ∘ₗ (Formalism.CountingSumsFrames.PolAB K k P Q).subtype ∘ₗ α.toLinearMap)
      (fun x => hle _ _ (hDmem j hj _ (α x).2))
  have hEmem : ∀ j, j ≤ min P Q → ∀ f : Formalism.CountingSumsFrames.PolAB K k (P - j) (Q - j),
      Formalism.CountingSumsFrames.hXY K k ^ j * Formalism.CountingSumsFrames.harProj K k (P - j) (Q - j) f ∈ Formalism.CountingSumsFrames.PolAB K k P Q := by
    intro j hj f
    have h := _root_.Formalism.CountingSumsFrames.Har4.mul_mem_PolAB (hXY_pow_mem_PolAB (K := K) (k := k) j)
      (hle _ _ ((HP K k (P - j) (Q - j) hk).1 f f.2).1)
    rwa [Nat.add_sub_of_le (hjP j hj), Nat.add_sub_of_le (hjQ j hj)] at h
  let E : ∀ j, j ≤ min P Q → Formalism.CountingSumsFrames.PolAB K k (P - j) (Q - j) →ₗ[K] V2 := fun j hj =>
    α.symm.toLinearMap ∘ₗ LinearMap.codRestrict _
      (LinearMap.mulLeft K (Formalism.CountingSumsFrames.hXY K k ^ j) ∘ₗ Formalism.CountingSumsFrames.harProj K k (P - j) (Q - j) ∘ₗ
        (Formalism.CountingSumsFrames.PolAB K k (P - j) (Q - j)).subtype) (fun f => hEmem j hj f)
  choose s hs using fun j =>
    LinearMap.exists_rightInverse_of_surjective (β j) (LinearMap.range_eq_top.2 (hsurj j))
  have hβs : ∀ j w, β j (s j w) = w := fun j w => LinearMap.congr_fun (hs j) w
  have hEcoe : ∀ j (hj : j ≤ min P Q) f,
      ((α (E j hj f) : Formalism.CountingSumsFrames.PolAB K k P Q) : Formalism.CountingSumsFrames.PolXY K k) =
        Formalism.CountingSumsFrames.hXY K k ^ j * Formalism.CountingSumsFrames.harProj K k (P - j) (Q - j) f := by
    intro j hj f
    simp only [E, LinearMap.comp_apply, LinearEquiv.coe_coe, LinearEquiv.apply_symm_apply]
    rfl
  have hEker : ∀ j (hj : j ≤ min P Q) f, β j f = 0 → E j hj f = 0 := by
    intro j hj f h0
    apply α.injective
    apply Subtype.ext
    rw [hEcoe j hj, (harProj_eq_zero_iff hk p hp Ov hloc f.2).2 ((hker j f).1 h0)]
    simp
  have hEβ : ∀ j (hj : j ≤ min P Q) f, E j hj (s j (β j f)) = E j hj f := by
    intro j hj f
    have h := hEker j hj (s j (β j f) - f) (by rw [map_sub, hβs, sub_self])
    rwa [map_sub, sub_eq_zero] at h
  let pr : ∀ j, V2 →ₗ[K] W j := fun j =>
    if hj : j ≤ min P Q then β j ∘ₗ Dc j hj else 0
  let io : ∀ j, W j →ₗ[K] V2 := fun j =>
    if hj : j ≤ min P Q then E j hj ∘ₗ s j else 0
  have hpr : ∀ j (hj : j ≤ min P Q) x, pr j x = β j (Dc j hj x) := by
    intro j hj x
    simp only [pr, dif_pos hj, LinearMap.comp_apply]
  have hio : ∀ j (hj : j ≤ min P Q) f, io j (β j f) = E j hj f := by
    intro j hj f
    simp only [io, dif_pos hj, LinearMap.comp_apply]
    exact hEβ j hj f
  have hterm : ∀ j (hj : j ≤ min P Q) x,
      ((α (io j (pr j x)) : Formalism.CountingSumsFrames.PolAB K k P Q) : Formalism.CountingSumsFrames.PolXY K k) =
        Formalism.CountingSumsFrames.levelProj K k P Q j (α x) := by
    intro j hj x
    rw [hpr j hj, hio j hj, hEcoe j hj]
    have hDc : ((Dc j hj x : Formalism.CountingSumsFrames.PolAB K k (P - j) (Q - j)) : Formalism.CountingSumsFrames.PolXY K k) = D j (α x) := rfl
    rw [hDc, (HP K k (P - j) (Q - j) hk).2.1 _ (hDmem j hj _ (α x).2), hD]
  refine ⟨io, pr, ?_, ?_⟩
  · intro x
    apply α.injective
    apply Subtype.ext

    rw [map_sum, Submodule.coe_sum,
    Finset.sum_congr rfl (fun j hj => hterm j (Nat.lt_succ_iff.1 (Finset.mem_range.1 hj)) x)]
    exact (IP K k P Q hk).2.1 _ (α x).2
  · intro g j hj
    refine ⟨fun x hx => ?_, fun f hf => ?_⟩
    · refine ⟨((p : K) ^ ((k + 1) * Nat.log p (P + Q + k))) • Dc j hj x, ?_, ?_⟩
      · apply GLP K k Ov g j _ hk
        have h := ((GP K k P Q p Ov.toSubring g hk hp hloc (α x) (α x).2).1 hx).2 j hj
        rw [hD, ← mul_smul_comm] at h
        rw [Submodule.coe_smul]
        exact h
      · rw [map_smul, hpr j hj]
    · have hw : ((p : K) ^ ((k + 1) * Nat.log p (P + Q + k))) •
          Formalism.CountingSumsFrames.harProj K k (P - j) (Q - j) f ∈ Formalism.CountingSumsFrames.HarAB K k (P - j) (Q - j) :=
        Submodule.smul_mem _ _ ((HP K k (P - j) (Q - j) hk).1 f f.2).1
      have he : (k + 1) * Nat.log p (P - j + (Q - j) + k) ≤ (k + 1) * Nat.log p (P + Q + k) :=
        Nat.mul_le_mul_left _ (Nat.log_mono_right (by omega))
      have hL : ((p : K) ^ ((k + 1) * Nat.log p (P + Q + k))) •
          Formalism.CountingSumsFrames.harProj K k (P - j) (Q - j) f ∈ Formalism.CountingSumsFrames.latOf g (Formalism.CountingSumsFrames.GaussLat Ov.toSubring) := by
        have h0 := ((GP K k (P - j) (Q - j) p Ov.toSubring g hk hp hloc f f.2).1 hf).1
        have h1 := _root_.Formalism.CountingSumsFrames.Har4.smul_mem_latOf_gauss Ov.toSubring g
          (pow_mem (natCast_mem Ov.toSubring p)
            ((k + 1) * Nat.log p (P + Q + k) - (k + 1) * Nat.log p (P - j + (Q - j) + k))) h0
        rwa [smul_smul, ← pow_add, Nat.sub_add_cancel he] at h1
      have hmem : Formalism.CountingSumsFrames.hXY K k ^ j * (((p : K) ^ ((k + 1) * Nat.log p (P + Q + k))) •
          Formalism.CountingSumsFrames.harProj K k (P - j) (Q - j) f) ∈
          (fun w => Formalism.CountingSumsFrames.hXY K k ^ j * w) '' (Formalism.CountingSumsFrames.latOf g (Formalism.CountingSumsFrames.GaussLat Ov.toSubring) ∩
            (Formalism.CountingSumsFrames.HarAB K k (P - j) (Q - j) : Set (Formalism.CountingSumsFrames.PolXY K k))) :=
        ⟨_, ⟨hL, hw⟩, rfl⟩
      rw [← IL K k (P - j) (Q - j) j Ov g hk] at hmem
      rw [map_smul, hio j hj, Submodule.coe_smul, hEcoe j hj, ← mul_smul_comm]
      exact hmem.1

end Formalism.MainNotions.flipOneThree.Pf

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.HarProjEqZeroIff =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.SingleWeightOfModelIdentification =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.SingleWeightOfModelIdentification", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.SingleWeightLatticeComparison\npublic import Formalism.PolynomialDimension.StatementHar\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.FinrankTensor\npublic import Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.HarProjEqZeroIff\nimport Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.RhoLowerBoundOfEdgeCount\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.flipOneThree.Pf

open Formalism.MainNotions.G Formalism.MainNotions.flipOneThree Formalism.GradedWeylDivisibility Formalism.CountingSumsFrames MvPolynomial

def RS.Ov {p n' : ℕ} (R : RS p n') : ValuationSubring R.Kf :=
  { (algebraMap R.O R.Kf).range with
    mem_or_inv_mem' := by
      intro x
      have := R.std.1.frac_O
      rcases ValuationRing.isInteger_or_isInteger R.O x with ⟨a, ha⟩ | ⟨a, ha⟩
      · exact Or.inl ⟨a, ha⟩
      · exact Or.inr ⟨a, ha⟩ }

theorem RS.mem_Ov {p n' : ℕ} (R : RS p n') (a : R.O) : algebraMap R.O R.Kf a ∈ R.Ov.toSubring := ⟨a, rfl⟩

theorem RS.pLocal {p n' : ℕ} (R : RS p n') : PLocal R.Ov.toSubring p := by
  intro n hn
  have hcop : IsCoprime (n : ℤ) (p : ℤ) := by
    have := (Nat.Prime.coprime_iff_not_dvd R.std.1.prime).2 hn
    exact (Nat.isCoprime_iff_coprime.2 this).symm
  obtain ⟨a, b, hab⟩ := hcop
  have hu : IsUnit (n : R.O) := by
    by_contra hnu
    have h1 : (n : R.O) ∈ IsLocalRing.maximalIdeal R.O := (IsLocalRing.mem_maximalIdeal _).2 hnu
    have h2 : (p : R.O) ∈ IsLocalRing.maximalIdeal R.O := (IsLocalRing.mem_maximalIdeal _).2 R.p_not_unit
    have h3 : ((a : R.O) * (n : R.O) + (b : R.O) * (p : R.O)) ∈ IsLocalRing.maximalIdeal R.O :=
      Ideal.add_mem _ (Ideal.mul_mem_left _ _ h1) (Ideal.mul_mem_left _ _ h2)
    have h4 : ((a : R.O) * (n : R.O) + (b : R.O) * (p : R.O)) = 1 := by
      have := congrArg (fun z : ℤ => (z : R.O)) hab
      simpa using this
    rw [h4] at h3
    exact (IsLocalRing.mem_maximalIdeal _).1 h3 isUnit_one
  obtain ⟨v, hv⟩ := hu
  refine ⟨((v⁻¹ : R.Oˣ) : R.O), ?_⟩
  have h5 : algebraMap R.O R.Kf ((v⁻¹ : R.Oˣ) : R.O) * (n : R.Kf) = 1 := by
    rw [← map_natCast (algebraMap R.O R.Kf) n, ← hv, ← map_mul, Units.inv_mul, map_one]
  exact eq_inv_of_mul_eq_one_left h5

def TwoLetterModelIdentification : Prop :=
  ∀ (p n' : ℕ) (R : RS p n') (m : ℕ), 2 ≤ m →
    ∃ (α : ∀ P Q : ℕ, twoSp R.Kf m P Q ≃ₗ[R.Kf] PolAB R.Kf (m + 1) P Q)
      (β : ∀ a b : ℕ, PolAB R.Kf (m + 1) a b →ₗ[R.Kf] dualWeyl R.Kf (m + 1) (m + 1) (nuOf (wtPQ m a b))),
      (∀ a b, Function.Surjective (β a b)) ∧
      (∀ a b (f : PolAB R.Kf (m + 1) a b), β a b f = 0 ↔
        ∃ G ∈ PolAB R.Kf (m + 1) (a - 1) (b - 1), (f : PolXY R.Kf (m + 1)) = hXY R.Kf (m + 1) * G) ∧
      ∀ Λ : Submodule R.O (Fin (m + 1) → R.Kf), IsLattice R.O Λ → ∃ g' : GL (Fin (m + 1)) R.Kf,
        (∀ (P Q : ℕ) (x : MvPolynomial (Bool × (Fin (m + 1) × Fin (m + 1))) R.Kf), x ∈ twoLat R.O m P Q Λ ↔
          ∃ hx : x ∈ twoSp R.Kf m P Q,
            (α P Q ⟨x, hx⟩ : PolXY R.Kf (m + 1)) ∈ latOf g' (GaussLat R.Ov.toSubring)) ∧
        (∀ (a b : ℕ) (y : MvPolynomial (Fin (m + 1) × Fin (m + 1)) R.Kf), y ∈ H0 R.O m (wtPQ m a b) Λ ↔
          ∃ f : PolAB R.Kf (m + 1) a b, (f : PolXY R.Kf (m + 1)) ∈ latOf g' (GaussLat R.Ov.toSubring) ∧
            (β a b f : MvPolynomial (Fin (m + 1) × Fin (m + 1)) R.Kf) = y)

theorem expo_le (p a m P Q : ℕ) (hp : 2 ≤ p) (h : P + Q + 1 ≤ 8 * a) :
    (m + 1 + 1) * Nat.log p (P + Q + (m + 1)) ≤ ⌈((m : ℝ) + 2) * lgA p a m⌉₊ := by
  have h1 : (Nat.log p (P + Q + (m + 1)) : ℝ) ≤ Real.logb p ((P + Q + (m + 1) : ℕ) : ℝ) := Real.natLog_le_logb _ _
  have hp1 : (1 : ℝ) < p := by exact_mod_cast hp
  have h2 : Real.logb p ((P + Q + (m + 1) : ℕ) : ℝ) ≤ Real.logb p (8 * (a : ℝ) + m) := by
    apply Real.logb_le_logb_of_le hp1
    · have : 0 < P + Q + (m + 1) := by omega
      exact_mod_cast this
    · have : P + Q + (m + 1) ≤ 8 * a + m := by omega
      exact_mod_cast this
  have h3 : (((m + 1 + 1) * Nat.log p (P + Q + (m + 1)) : ℕ) : ℝ) ≤ ((m : ℝ) + 2) * lgA p a m := by
    unfold lgA
    push_cast
    have hm : (0 : ℝ) ≤ (m : ℝ) + 2 := by positivity
    have : ((m : ℝ) + 1 + 1) = (m : ℝ) + 2 := by ring
    rw [this]
    exact mul_le_mul_of_nonneg_left (by linarith) hm
  exact_mod_cast le_trans h3 (Nat.le_ceil _)

theorem single_weight_of_model_identification (h : TwoLetterModelIdentification) : SingleWeightLatticeComparison := by
  classical
  intro p n' R m hm a P Q hPQ
  obtain ⟨α, β, hsurj, hker, hlat⟩ := h p n' R m hm
  have : CharZero R.Kf := R.charZero
  have hp := R.std.1.prime
  obtain ⟨io, pr, hsum, hL⟩ := oneTop_abs R.Kf (m + 1) P Q p (by omega) hp R.Ov R.pLocal (α P Q)
    (fun j => dualWeyl R.Kf (m + 1) (m + 1) (nuOf (wtPQ m (P - j) (Q - j)))) (fun j => β (P - j) (Q - j))
    (fun j => hsurj _ _) (fun j f => hker _ _ f)
  set E := (m + 1 + 1) * Nat.log p (P + Q + (m + 1)) with hE
  set U := ⌈((m : ℝ) + 2) * lgA p a m⌉₊ with hU
  have hEU : E ≤ U := expo_le p a m P Q hp.two_le hPQ
  obtain ⟨d, hd⟩ := Nat.exists_eq_add_of_le hEU
  have hpd : (p : R.Kf) ^ d ∈ R.Ov.toSubring := Subring.pow_mem _ (natCast_mem _ p) d
  have hexI : ∀ j, ∃ I : MvPolynomial (Fin (m + 1) × Fin (m + 1)) R.Kf →ₗ[R.Kf]
      MvPolynomial (Bool × (Fin (m + 1) × Fin (m + 1))) R.Kf,
      I ∘ₗ (dualWeyl R.Kf (m + 1) (m + 1) (nuOf (wtPQ m (P - j) (Q - j)))).subtype =
        (twoSp R.Kf m P Q).subtype ∘ₗ io j := fun j => LinearMap.exists_extend _
  have hexP : ∀ j, ∃ Pj : MvPolynomial (Bool × (Fin (m + 1) × Fin (m + 1))) R.Kf →ₗ[R.Kf]
      MvPolynomial (Fin (m + 1) × Fin (m + 1)) R.Kf,
      Pj ∘ₗ (twoSp R.Kf m P Q).subtype =
        (dualWeyl R.Kf (m + 1) (m + 1) (nuOf (wtPQ m (P - j) (Q - j)))).subtype ∘ₗ pr j :=
    fun j => LinearMap.exists_extend _
  choose I hI using hexI
  choose Pj hPj using hexP
  have hI' : ∀ j (y : dualWeyl R.Kf (m + 1) (m + 1) (nuOf (wtPQ m (P - j) (Q - j)))),
      I j (y : MvPolynomial (Fin (m + 1) × Fin (m + 1)) R.Kf) = (io j y : MvPolynomial _ R.Kf) :=
    fun j y => LinearMap.congr_fun (hI j) y
  have hP' : ∀ j (x : twoSp R.Kf m P Q),
      Pj j (x : MvPolynomial (Bool × (Fin (m + 1) × Fin (m + 1))) R.Kf) = (pr j x : MvPolynomial _ R.Kf) :=
    fun j x => LinearMap.congr_fun (hPj j) x
  refine ⟨I, Pj, ?_, ?_, ?_⟩
  · intro x hx
    have h0 := congrArg (twoSp R.Kf m P Q).subtype (hsum ⟨x, hx⟩)

    rw [map_sum] at h0
    calc ∑ j ∈ Finset.range (min P Q + 1), I j (Pj j x)
        = ∑ j ∈ Finset.range (min P Q + 1), (twoSp R.Kf m P Q).subtype (io j (pr j ⟨x, hx⟩)) :=
          Finset.sum_congr rfl fun j _ => by rw [hP' j ⟨x, hx⟩, hI']; rfl
      _ = x := h0
  · intro j _
    refine ⟨fun x hx => ?_, fun y hy => ?_⟩
    · rw [hP' j ⟨x, hx⟩]; exact (pr j ⟨x, hx⟩).2
    · rw [hI' j ⟨y, hy⟩]; exact (io j ⟨y, hy⟩).2
  · intro Λ hΛ j hj
    obtain ⟨g', h1, h2⟩ := hlat Λ hΛ
    obtain ⟨hA, hB⟩ := hL g' j hj
    constructor
    · intro x hx
      obtain ⟨hx2, hx3⟩ := (h1 P Q x).1 hx
      obtain ⟨f, hf, hfe⟩ := hA ⟨x, hx2⟩ hx3
      refine (h2 (P - j) (Q - j) _).2 ⟨((p : R.Kf) ^ d) • f, _root_.Formalism.CountingSumsFrames.Har4.smul_mem_latOf_gauss _ g' hpd hf, ?_⟩
      rw [map_smul, hfe, hP' j ⟨x, hx2⟩, Submodule.coe_smul, Submodule.coe_smul, smul_smul, hd, pow_add, mul_comm]
    · intro y hy
      obtain ⟨f, hf, hfe⟩ := (h2 (P - j) (Q - j) y).1 hy
      have h3 := hB f hf
      have hy2 : y ∈ dualWeyl R.Kf (m + 1) (m + 1) (nuOf (wtPQ m (P - j) (Q - j))) := by
        rw [← hfe]; exact (β (P - j) (Q - j) f).2
      have hyf : (⟨y, hy2⟩ : dualWeyl R.Kf (m + 1) (m + 1) (nuOf (wtPQ m (P - j) (Q - j)))) = β (P - j) (Q - j) f :=
        Subtype.ext hfe.symm
      refine (h1 P Q _).2 ⟨?_, ?_⟩
      · rw [hI' j ⟨y, hy2⟩]
        exact Submodule.smul_mem _ _ (io j ⟨y, hy2⟩).2
      · have e : (⟨((p : R.Kf) ^ U) • I j y, by
            rw [hI' j ⟨y, hy2⟩]; exact Submodule.smul_mem _ _ (io j ⟨y, hy2⟩).2⟩ : twoSp R.Kf m P Q) =
            ((p : R.Kf) ^ d) • (((p : R.Kf) ^ E) • io j (β (P - j) (Q - j) f)) := by
          have hIy : I j y = (io j (β (P - j) (Q - j) f) : MvPolynomial _ R.Kf) := by
            rw [← hyf]; exact hI' j ⟨y, hy2⟩
          apply Subtype.ext
          show ((p : R.Kf) ^ U) • I j y = _
          rw [Submodule.coe_smul, Submodule.coe_smul, hIy, smul_smul, hd, pow_add, mul_comm]
        rw [e, map_smul, Submodule.coe_smul]
        exact _root_.Formalism.CountingSumsFrames.Har4.smul_mem_latOf_gauss _ g' hpd h3

end Formalism.MainNotions.flipOneThree.Pf

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.ColumnSpanDensity.SingleWeightOfModelIdentification =====
