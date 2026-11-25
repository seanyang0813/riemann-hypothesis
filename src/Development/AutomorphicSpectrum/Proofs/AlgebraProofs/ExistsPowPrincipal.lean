module

public import Mathlib.NumberTheory.NumberField.Basic
public import Mathlib.RingTheory.DedekindDomain.Factorization
public import Mathlib.RingTheory.DedekindDomain.AdicValuation.Valuation
public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ExistsUniqueIdeleOfLinearEquivQuotientLocal
import Mathlib.NumberTheory.NumberField.ClassNumber
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.ReduceModChar

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCountSpanSingletonEqMul, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ExistsPowPrincipal

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCountSpanSingletonEqMul =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCountSpanSingletonEqMul", "h": "module\n\npublic import Mathlib.NumberTheory.NumberField.Basic\npublic import Mathlib.RingTheory.DedekindDomain.Factorization\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.NumberField.ClassNumber\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain

namespace GlobalTheory.RootIdeal

theorem exists_pow_eq_spanSingleton (K : Type) [Field K] [NumberField K]
    (J : FractionalIdeal (nonZeroDivisors (𝓞 K)) K) (hJ : J ≠ 0) :
    ∃ (h : ℕ) (x : K), 0 < h ∧ x ≠ 0 ∧
      FractionalIdeal.spanSingleton (nonZeroDivisors (𝓞 K)) x = J ^ h := by
  classical
  let u : (FractionalIdeal (nonZeroDivisors (𝓞 K)) K)ˣ := Units.mk0 J hJ
  have hpos : 0 < orderOf (ClassGroup.mk K u) := orderOf_pos _
  have h1 : ClassGroup.mk K (u ^ orderOf (ClassGroup.mk K u)) = 1 := by
    rw [map_pow, pow_orderOf_eq_one]
  rw [ClassGroup.mk_eq_one_iff] at h1
  obtain ⟨x, hx⟩ := h1.principal
  have hJh : ((u ^ orderOf (ClassGroup.mk K u) : (FractionalIdeal (nonZeroDivisors (𝓞 K)) K)ˣ) :
      FractionalIdeal (nonZeroDivisors (𝓞 K)) K) = J ^ orderOf (ClassGroup.mk K u) := by
    simp [u]
  have key : FractionalIdeal.spanSingleton (nonZeroDivisors (𝓞 K)) x =
      J ^ orderOf (ClassGroup.mk K u) := by
    rw [← hJh]
    apply FractionalIdeal.coeToSubmodule_injective
    dsimp only
    rw [FractionalIdeal.coe_spanSingleton, hx]
  refine ⟨_, x, hpos, ?_, key⟩
  rintro rfl
  rw [FractionalIdeal.spanSingleton_zero] at key
  exact pow_ne_zero _ hJ key.symm

theorem exists_count_spanSingleton_eq_mul (K : Type) [Field K] [NumberField K]
    (r : HeightOneSpectrum (𝓞 K) →₀ ℚ) :
    ∃ (n : ℕ) (x : K), 0 < n ∧ x ≠ 0 ∧ ∀ v : HeightOneSpectrum (𝓞 K),
      ((FractionalIdeal.count K v
        (FractionalIdeal.spanSingleton (nonZeroDivisors (𝓞 K)) x) : ℤ) : ℚ) = n * r v := by
  classical
  set d : ℕ := ∏ v ∈ r.support, (r v).den with hd
  have hdpos : 0 < d := Finset.prod_pos (fun v _ => (r v).pos)
  have hdvd : ∀ v, (r v).den ∣ d := by
    intro v
    by_cases hv : v ∈ r.support
    · exact Finset.dvd_prod_of_mem _ hv
    · rw [Finsupp.notMem_support_iff.mp hv]
      simp
  let e : HeightOneSpectrum (𝓞 K) →₀ ℤ :=
    Finsupp.mapRange (fun q : ℚ => q.num * ((d / q.den : ℕ) : ℤ)) (by simp) r
  have he : ∀ v, ((e v : ℤ) : ℚ) = d * r v := by
    intro v
    simp only [e, Finsupp.mapRange_apply]
    have hden : ((r v).den : ℚ) ≠ 0 := by exact_mod_cast (r v).pos.ne'
    rw [Int.cast_mul, Int.cast_natCast, Nat.cast_div (hdvd v) hden]
    conv_rhs => rw [← Rat.num_div_den (r v)]
    field_simp
  set J : FractionalIdeal (nonZeroDivisors (𝓞 K)) K :=
    e.prod (fun v n => ((v.asIdeal : Ideal (𝓞 K)) : FractionalIdeal (nonZeroDivisors (𝓞 K)) K) ^ n)
    with hJdef
  have hJ0 : J ≠ 0 := by
    rw [hJdef, Finsupp.prod, Finset.prod_ne_zero_iff]
    intro v _
    exact zpow_ne_zero _ (FractionalIdeal.coeIdeal_ne_zero.mpr v.ne_bot)
  have hcount : ∀ v, FractionalIdeal.count K v J = e v := fun v =>
    FractionalIdeal.count_finsuppProd K v e
  obtain ⟨h, x, hh, hx0, hxJ⟩ := exists_pow_eq_spanSingleton K J hJ0
  refine ⟨h * d, x, Nat.mul_pos hh hdpos, hx0, fun v => ?_⟩
  rw [hxJ, FractionalIdeal.count_pow, hcount, Int.cast_mul, Int.cast_natCast, he]
  push_cast
  ring

end GlobalTheory.RootIdeal
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCountSpanSingletonEqMul =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ExistsPowPrincipal =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ExistsPowPrincipal", "h": "module\n\npublic import Mathlib.NumberTheory.NumberField.Basic\npublic import Mathlib.RingTheory.DedekindDomain.AdicValuation.Valuation\npublic import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ExistsUniqueIdeleOfLinearEquivQuotientLocal\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCountSpanSingletonEqMul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain

namespace GlobalTheory.CompanionTheory.Ar.Flat

theorem exists_pow_principal : ∀ (F : Type) [Field F] [NumberField F]
    (r : HeightOneSpectrum (𝓞 F) →₀ ℚ), ∃ (M : ℕ) (α : F), 0 < M ∧ α ≠ 0 ∧
      ∀ v : HeightOneSpectrum (𝓞 F), ∃ n : ℤ, (n : ℚ) = M * r v ∧
        v.valuation F α = WithZero.exp (-n) := by
  intro F _ _ r
  obtain ⟨M, α, hM, hα, h⟩ := GlobalTheory.RootIdeal.exists_count_spanSingleton_eq_mul F r
  exact ⟨M, α, hM, hα, fun v => ⟨_, h v, GlobalTheory.Idele.valuation_eq_exp_neg_count v hα⟩⟩

end GlobalTheory.CompanionTheory.Ar.Flat
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ExistsPowPrincipal =====
