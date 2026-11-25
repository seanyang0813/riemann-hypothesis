module

public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE
public import Mathlib.RingTheory.MvPolynomial.Homogeneous
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.FlagImmersions.ExistsDegreeOneClass, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ExistsFlagDegreeOnePolys

-- ===== clump member: Development.WeilBound.CoreStatements.FlagImmersions.ExistsDegreeOneClass =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.FlagImmersions.ExistsDegreeOneClass", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\npublic import Mathlib.RingTheory.MvPolynomial.Homogeneous\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace RootFieldNumerics.L3

variable {Ψ : Type} [Fintype Ψ] {N : ℕ}

theorem permExp_apply (σ : Ψ → Equiv.Perm (Fin N)) (x : Ψ × Fin N) :
    permExp σ x = N - 1 - ((σ x.1 x.2 : Fin N) : ℕ) := by
  simp [permExp]

theorem permExp_injective :
    Function.Injective (permExp : (Ψ → Equiv.Perm (Fin N)) → (Ψ × Fin N) →₀ ℕ) := by
  intro σ σ' h
  funext τ
  ext i
  have h1 := DFunLike.congr_fun h (τ, i)
  rw [permExp_apply, permExp_apply] at h1
  have h2 := (σ τ i).2
  have h3 := (σ' τ i).2
  dsimp only at h1
  omega

theorem degree_permExp_one :
    (permExp (1 : Ψ → Equiv.Perm (Fin N))).degree = dimFl Ψ N := by
  rw [Finsupp.degree_eq_sum, Fintype.sum_prod_type]
  simp only [permExp_apply, Pi.one_apply, Equiv.Perm.one_apply]
  rw [Finset.sum_const, Finset.card_univ, smul_eq_mul, dimFl,
    Fin.sum_univ_eq_sum_range (fun i => N - 1 - i) N, Finset.sum_range_reflect (fun i => i) N,
    Finset.sum_range_id]

theorem degFl_monomial_one [DecidableEq Ψ] :
    degFl (monomial (permExp (1 : Ψ → Equiv.Perm (Fin N))) ((-1 : ℝ) ^ dimFl Ψ N)) = 1 := by
  unfold degFl
  rw [Finset.sum_eq_single (1 : Ψ → Equiv.Perm (Fin N))]
  · simp [← mul_pow]
  · intro σ _ hσ
    rw [coeff_monomial, if_neg (fun h => hσ (permExp_injective h).symm), mul_zero]
  · simp

end RootFieldNumerics.L3

theorem RootFieldNumerics.exists_degree_one_class : ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (j : ℕ) (τ : Ψ), 1 ≤ j → j < N → (∃ Q : RP Ψ N, Q.IsHomogeneous (dimFl Ψ N) ∧ degFl Q = 1) ∧ ∃ Q : RP Ψ N, Q.IsHomogeneous (dimFl Ψ N - 1) ∧ degFl (pkLow j τ 1 * Q) = 1 := by
  intro Ψ _ _ N j τ h1 hj
  refine ⟨⟨_, isHomogeneous_monomial _ RootFieldNumerics.L3.degree_permExp_one, RootFieldNumerics.L3.degFl_monomial_one⟩, ?_⟩
  let i0 : Fin N := ⟨j - 1, by omega⟩
  let i1 : Fin N := ⟨j, hj⟩
  let m : (Ψ × Fin N) →₀ ℕ := permExp (1 : Ψ → Equiv.Perm (Fin N)) - Finsupp.single (τ, i0) 1
  have hm : Finsupp.single (τ, i0) 1 + m = permExp (1 : Ψ → Equiv.Perm (Fin N)) := by
    apply add_tsub_cancel_of_le
    rw [Finsupp.single_le_iff, RootFieldNumerics.L3.permExp_apply]
    simp only [Pi.one_apply, Equiv.Perm.one_apply, i0]
    omega
  have hdeg : m.degree = dimFl Ψ N - 1 := by
    rw [← RootFieldNumerics.L3.degree_permExp_one, ← hm, map_add (f := _), Finsupp.degree_single]
    omega
  have h01 : i0 ≠ i1 := by
    intro h
    have := congrArg Fin.val h
    simp only [i0, i1] at this
    omega
  have hm0 : m (τ, i0) = N - 1 - j := by
    simp only [m, Finsupp.tsub_apply, RootFieldNumerics.L3.permExp_apply, Finsupp.single_eq_same, Pi.one_apply,
      Equiv.Perm.one_apply, i0]
    omega
  have hm1 : m (τ, i1) = N - 1 - j := by
    have : (Finsupp.single (τ, i0) 1 : (Ψ × Fin N) →₀ ℕ) (τ, i1) = 0 :=
      Finsupp.single_eq_of_ne' (by simpa using h01)
    simp only [m, Finsupp.tsub_apply, RootFieldNumerics.L3.permExp_apply, this, Pi.one_apply,
      Equiv.Perm.one_apply, i1]
    omega
  refine ⟨monomial m ((-1 : ℝ) ^ dimFl Ψ N), isHomogeneous_monomial _ hdeg, ?_⟩
  refine Eq.trans ?_ (RootFieldNumerics.L3.degFl_monomial_one (Ψ := Ψ) (N := N))
  unfold degFl
  congr 1
  refine Finset.sum_congr rfl fun σ _ => ?_
  congr 1
  rw [pkLow, Finset.sum_mul, coeff_sum, Finset.sum_eq_single i0]
  · rw [X_pow_eq_monomial, monomial_mul, one_mul, hm]
  · intro i hi hi0
    rw [X_pow_eq_monomial, monomial_mul, coeff_monomial, if_neg]
    intro h
    have hi1 : i ≠ i1 := by
      intro h'
      rw [Finset.mem_filter, h'] at hi
      simp [i1] at hi
    have e0 := DFunLike.congr_fun h (τ, i0)
    have e1 := DFunLike.congr_fun h (τ, i1)
    rw [Finsupp.add_apply, Finsupp.single_eq_of_ne' (by simpa using hi0), hm0,
      RootFieldNumerics.L3.permExp_apply] at e0
    rw [Finsupp.add_apply, Finsupp.single_eq_of_ne' (by simpa using hi1), hm1,
      RootFieldNumerics.L3.permExp_apply] at e1
    dsimp only at e0 e1
    have h2 := (σ τ i0).2
    have h3 := (σ τ i1).2
    exact h01 ((σ τ).injective (Fin.ext (by omega)))
  · intro h
    exact absurd (by simp only [Finset.mem_filter, Finset.mem_univ, true_and, i0]; omega) h
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.FlagImmersions.ExistsDegreeOneClass =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ExistsFlagDegreeOnePolys =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ExistsFlagDegreeOnePolys", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\npublic import Mathlib.RingTheory.MvPolynomial.Homogeneous\npublic import Development.WeilBound.CoreStatements.FlagImmersions.ExistsDegreeOneClass\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace GlobalTheory.CompanionTheory.Ar.Top

theorem testForms_sh_tot : ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (j : ℕ) (τ : Ψ), 1 ≤ j → j < N → (∃ Q : RP Ψ N, Q.IsHomogeneous (dimFl Ψ N) ∧ degFl Q = 1) ∧ ∃ Q : RP Ψ N, Q.IsHomogeneous (dimFl Ψ N - 1) ∧ degFl (pkLow j τ 1 * Q) = 1 :=
  RootFieldNumerics.exists_degree_one_class

end GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ExistsFlagDegreeOnePolys =====
