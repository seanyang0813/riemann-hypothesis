module

public import Development.AutomorphicSpectrum.Definitions.AdelicLattices.FactPrimes
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.SesquilinearFractions.RatProductFormula, Development.AutomorphicSpectrum.Proofs.AdelicProofs.RatProductFormula

-- ===== clump member: Development.WeilBound.CoreStatements.SesquilinearFractions.RatProductFormula =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.SesquilinearFractions.RatProductFormula", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.AdelicLattices.FactPrimes\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Fl

namespace PositivityTheory.Xgf

namespace NR

def Good (r : ℚ) : Prop :=
  {p : Nat.Primes | Real.log ‖(r : ℂ_[p])‖ ≠ 0}.Finite ∧ Real.log ‖(r : ℂ)‖ + ∑ᶠ p : Nat.Primes, Real.log ‖(r : ℂ_[p])‖ = 0

theorem norm_padicNat (p : Nat.Primes) (n : ℕ) : ‖(n : ℂ_[p])‖ = padicNorm p n := by
  haveI : Fact (p : ℕ).Prime := ⟨p.2⟩
  have : ((n : ℚ_[p]) : ℂ_[p]) = (n : ℂ_[p]) := by first | simp
  rw [← this, PadicComplex.norm_extends', ← Rat.cast_natCast, Padic.eq_padicNorm]

theorem good_mul {x y : ℚ} (hx0 : x ≠ 0) (hy0 : y ≠ 0) (hx : Good x) (hy : Good y) : Good (x * y) := by
  have hxp : ∀ p : Nat.Primes, ‖(x : ℂ_[p])‖ ≠ 0 := fun p => by simpa using hx0
  have hyp : ∀ p : Nat.Primes, ‖(y : ℂ_[p])‖ ≠ 0 := fun p => by simpa using hy0
  have e : ∀ p : Nat.Primes, Real.log ‖((x * y : ℚ) : ℂ_[p])‖ = Real.log ‖(x : ℂ_[p])‖ + Real.log ‖(y : ℂ_[p])‖ :=
    fun p => by rw [Rat.cast_mul, norm_mul, Real.log_mul (hxp p) (hyp p)]
  have ea : Real.log ‖((x * y : ℚ) : ℂ)‖ = Real.log ‖(x : ℂ)‖ + Real.log ‖(y : ℂ)‖ := by
    rw [Rat.cast_mul, norm_mul, Real.log_mul (by simpa using hx0) (by simpa using hy0)]
  refine ⟨(hx.1.union hy.1).subset fun p hp => ?_, ?_⟩
  · by_contra h
    simp only [Set.mem_union, Set.mem_setOf_eq, not_or, not_not] at h
    exact hp (by rw [e, h.1, h.2, add_zero])
  · rw [ea, finsum_congr e, finsum_add_distrib hx.1 hy.1]
    linarith [hx.2, hy.2]

theorem good_inv {x : ℚ} (hx : Good x) : Good x⁻¹ := by
  have e : ∀ p : Nat.Primes, Real.log ‖((x⁻¹ : ℚ) : ℂ_[p])‖ = -Real.log ‖(x : ℂ_[p])‖ :=
    fun p => by rw [Rat.cast_inv, norm_inv, Real.log_inv]
  refine ⟨hx.1.subset fun p hp => ?_, ?_⟩
  · intro h; exact hp (by rw [e, h, neg_zero])
  · rw [Rat.cast_inv, norm_inv, Real.log_inv, finsum_congr e, finsum_neg_distrib]
    linarith [hx.2]

theorem good_neg {x : ℚ} (hx : Good x) : Good (-x) := by
  simpa [Good] using hx

theorem good_one : Good 1 := by
  simp [Good]

theorem good_prime (q : ℕ) (hq : q.Prime) : Good q := by
  unfold Good
  simp only [Rat.cast_natCast]
  have e : ∀ p : Nat.Primes, Real.log ‖(q : ℂ_[p])‖ = if (p : ℕ) = q then -Real.log q else 0 := by
    intro p
    haveI : Fact (p : ℕ).Prime := ⟨p.2⟩
    rw [norm_padicNat]
    split_ifs with h
    · subst h
      rw [padicNorm.padicNorm_p_of_prime, Rat.cast_inv, Rat.cast_natCast, Real.log_inv]
    · haveI : Fact q.Prime := ⟨hq⟩
      rw [padicNorm.padicNorm_of_prime_of_ne h, Rat.cast_one, Real.log_one]
  refine ⟨(Set.finite_singleton (⟨q, hq⟩ : Nat.Primes)).subset ?_, ?_⟩
  · intro (p : Nat.Primes) hp
    have hp' := hp
    simp only [e] at hp'
    have h2 : (if (p : ℕ) = q then -Real.log q else 0) ≠ 0 := hp'
    by_cases h : (p : ℕ) = q
    · exact Set.mem_singleton_iff.2 (Subtype.ext h)
    · exact absurd (if_neg h) h2
  · rw [finsum_congr e, finsum_eq_single (fun x : Nat.Primes => if (x : ℕ) = q then -Real.log q else 0) ⟨q, hq⟩
      (fun p hp => if_neg fun h => hp (Subtype.ext h))]
    simp

theorem good_nat (n : ℕ) (hn : n ≠ 0) : Good n := by
  induction n using Nat.recOnMul with
  | zero => exact absurd rfl hn
  | one => simpa using good_one
  | prime p hp => exact good_prime p hp
  | mul a b ha hb =>
    have ha0 : a ≠ 0 := fun h => hn (by rw [h, zero_mul])
    have hb0 : b ≠ 0 := fun h => hn (by rw [h, mul_zero])
    rw [Nat.cast_mul]
    exact good_mul (by exact_mod_cast ha0) (by exact_mod_cast hb0) (ha ha0) (hb hb0)

theorem good_int (z : ℤ) (hz : z ≠ 0) : Good z := by
  rcases Int.natAbs_eq z with h | h
  · rw [h, Int.cast_natCast]; exact good_nat _ (Int.natAbs_ne_zero.2 hz)
  · rw [h, Int.cast_neg, Int.cast_natCast]; exact good_neg (good_nat _ (Int.natAbs_ne_zero.2 hz))

end NR

theorem rat_product_formula : ∀ r : ℚ, r ≠ 0 → {p : Nat.Primes | Real.log ‖(r : ℂ_[p])‖ ≠ 0}.Finite ∧ Real.log ‖(r : ℂ)‖ + ∑ᶠ p : Nat.Primes, Real.log ‖(r : ℂ_[p])‖ = 0 := by
  intro r hr
  have hnum : r.num ≠ 0 := Rat.num_ne_zero.2 hr
  have h := NR.good_mul (by exact_mod_cast hnum) (inv_ne_zero (by exact_mod_cast r.den_nz))
    (NR.good_int r.num hnum) (NR.good_inv (NR.good_nat r.den r.den_nz))
  rw [← div_eq_mul_inv, Rat.num_div_den] at h
  exact h

end PositivityTheory.Xgf
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.SesquilinearFractions.RatProductFormula =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AdelicProofs.RatProductFormula =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AdelicProofs.RatProductFormula", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.AdelicLattices.FactPrimes\npublic import Development.WeilBound.CoreStatements.SesquilinearFractions.RatProductFormula\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Fl

namespace GlobalTheory.CompanionTheory.Ar.Fl

theorem rat_product_formula_complex : ∀ r : ℚ, r ≠ 0 → {p : Nat.Primes | Real.log ‖(r : ℂ_[p])‖ ≠ 0}.Finite ∧ Real.log ‖(r : ℂ)‖ + ∑ᶠ p : Nat.Primes, Real.log ‖(r : ℂ_[p])‖ = 0 :=
  PositivityTheory.Xgf.rat_product_formula

end GlobalTheory.CompanionTheory.Ar.Fl
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AdelicProofs.RatProductFormula =====
