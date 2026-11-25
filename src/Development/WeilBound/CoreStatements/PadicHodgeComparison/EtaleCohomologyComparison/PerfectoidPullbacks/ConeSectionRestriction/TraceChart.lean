module

public import Mathlib.RingTheory.Derivation.Basic
public import Mathlib.RingTheory.IntegralClosure.Algebra.Defs
public import Mathlib.RingTheory.Localization.FractionRing
public import Mathlib.RingTheory.UniqueFactorizationDomain.Defs
public import Mathlib.RingTheory.Valuation.Basic
public import Mathlib.Algebra.Polynomial.Degree.Lemmas
public import Mathlib.RingTheory.UniqueFactorizationDomain.Multiplicity
public import Mathlib.FieldTheory.Separable
public import Mathlib.RingTheory.DedekindDomain.AdicValuation.Valuation
public import Mathlib.RingTheory.Trace.Defs
public import Mathlib.RingTheory.DedekindDomain.PID
public import Mathlib.RingTheory.DedekindDomain.Factorization
public import Mathlib.RingTheory.DedekindDomain.IntegralClosure
public import Mathlib.RingTheory.Localization.NormTrace
public import Mathlib.Algebra.MvPolynomial.PDeriv
public import Mathlib.RingTheory.Localization.AtPrime.Basic
public import Mathlib.Algebra.MvPolynomial.NoZeroDivisors
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.RaTpowSinglePow
public import Mathlib.RingTheory.IntegralClosure.IsIntegral.Defs
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.TorusMemFldF
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsGoodPoly, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FaithfulIntegralClosure, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPderivNotDvd, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPrimeDvdNotUnit, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FractionFieldTranscendenceBasisExt, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.TraceChart

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsGoodPoly =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsGoodPoly", "h": "module\n\npublic import Mathlib.RingTheory.Derivation.Basic\npublic import Mathlib.RingTheory.IntegralClosure.Algebra.Defs\npublic import Mathlib.RingTheory.Localization.FractionRing\npublic import Mathlib.RingTheory.UniqueFactorizationDomain.Defs\npublic import Mathlib.RingTheory.Valuation.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.Polynomial.Degree.Lemmas\npublic import Mathlib.RingTheory.UniqueFactorizationDomain.Multiplicity\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

namespace GlobalTheory.CompanionTheory.TraceJac

open Polynomial in
theorem deriv_aeval {R S L : Type*} [CommRing R] [CommRing S] [Field L] [Algebra R S] [Algebra S L]
    [Algebra R L] [IsScalarTower R S L] (E : Derivation ℤ L L) (I : Ideal S)
    (hI : ∀ r : R, ∃ s ∈ I, E (algebraMap R L r) = algebraMap S L s) (G : R[X]) (b : S) :
    ∃ s ∈ I, E (algebraMap S L (aeval b G)) =
      algebraMap S L s + algebraMap S L (aeval b (derivative G)) * E (algebraMap S L b) := by
  induction G using Polynomial.induction_on' with
  | add p q hp hq =>
    obtain ⟨s1, h1, e1⟩ := hp
    obtain ⟨s2, h2, e2⟩ := hq
    refine ⟨s1 + s2, I.add_mem h1 h2, ?_⟩
    simp only [map_add (f := _), e1, e2]
    ring
  | monomial n a =>
    obtain ⟨s, hs, es⟩ := hI a
    refine ⟨b ^ n * s, I.mul_mem_left _ hs, ?_⟩
    have h1 : algebraMap S L (aeval b (monomial n a)) = algebraMap R L a * (algebraMap S L b) ^ n := by
      rw [aeval_monomial, map_mul, map_pow, ← IsScalarTower.algebraMap_apply]
    have h2 : algebraMap S L (aeval b (derivative (monomial n a))) =
        algebraMap R L a * ((n : L) * (algebraMap S L b) ^ (n - 1)) := by
      rw [derivative_monomial, aeval_monomial, map_mul, map_pow, map_mul, map_natCast, map_mul,
        ← IsScalarTower.algebraMap_apply, map_natCast]
      ring
    rw [h1, h2, Derivation.leibniz, Derivation.leibniz_pow, es]
    simp only [smul_eq_mul, nsmul_eq_mul, map_mul, map_pow]
    ring

open Polynomial in
theorem exists_good_poly {R S : Type*} [CommRing R] [CommRing S] [Nontrivial R] [Algebra R S]
    [Algebra.IsIntegral R S] (hnat : ∀ n : ℕ, n ≠ 0 → IsUnit (n : R)) (P : Ideal S) (hP : P ≠ ⊤)
    (b : S) : ∃ G : R[X], aeval b G ∈ P ∧ aeval b (derivative G) ∉ P := by
  classical
  have hex : ∃ n : ℕ, ∃ G : R[X], G.Monic ∧ G.natDegree = n ∧ aeval b G ∈ P := by
    obtain ⟨G, hG, h0⟩ := Algebra.IsIntegral.isIntegral (R := R) b
    exact ⟨_, G, hG, rfl, by
      have : aeval b G = 0 := by rw [aeval_def]; exact h0
      rw [this]; exact P.zero_mem⟩
  obtain ⟨G, hG, hdeg, hmem⟩ := Nat.find_spec hex
  refine ⟨G, hmem, fun hd => ?_⟩
  set n := Nat.find hex with hn
  have hn0 : n ≠ 0 := by
    intro h0
    rw [h0] at hdeg
    have : G = 1 := hG.natDegree_eq_zero.1 hdeg
    rw [this, map_one] at hmem
    exact hP ((Ideal.eq_top_iff_one _).2 hmem)
  obtain ⟨u, hu⟩ := hnat n hn0
  let G1 : R[X] := C (↑u⁻¹ : R) * derivative G
  have hG1 : G1.Monic := by
    apply Polynomial.monic_of_natDegree_le_of_coeff_eq_one (n - 1)
    · refine (natDegree_C_mul_le _ _).trans ?_
      rw [← hdeg]; exact natDegree_derivative_le G
    · have : n - 1 + 1 = n := Nat.sub_add_cancel (Nat.pos_of_ne_zero hn0)
      simp only [G1, coeff_C_mul, coeff_derivative, this]
      rw [← hdeg, hG.coeff_natDegree, hdeg]
      simp only [one_mul, Nat.cast_sub (Nat.pos_of_ne_zero hn0), Nat.cast_one, sub_add_cancel]
      rw [← hu]; simp
  have hlt : G1.natDegree < n := by
    have : G1.natDegree ≤ n - 1 := by
      refine (natDegree_C_mul_le _ _).trans ?_
      rw [← hdeg]; exact natDegree_derivative_le G
    omega
  refine Nat.find_min hex hlt ⟨G1, hG1, rfl, ?_⟩
  simp only [G1, map_mul, aeval_C]
  exact P.mul_mem_left _ hd

section core
variable {R S L Γ : Type*} [CommRing R] [Nontrivial R] [CommRing S] [IsDomain S] [WfDvdMonoid S]
  [Field L] [Algebra R S] [Algebra S L] [IsFractionRing S L] [Algebra R L] [IsScalarTower R S L]
  [Algebra.IsIntegral R S] [LinearOrderedCommGroupWithZero Γ]

theorem core (hnat : ∀ n : ℕ, n ≠ 0 → IsUnit (n : R)) (v : Valuation L Γ) (ϖ : S)
    (hS : ∀ x : S, v (algebraMap S L x) ≤ 1)
    (hlt : ∀ x : S, v (algebraMap S L x) < 1 ↔ ϖ ∣ x)
    (E : Derivation ℤ L L) (I : Ideal S)
    (hI : ∀ r : R, ∃ s ∈ I, E (algebraMap R L r) = algebraMap S L s)
    (π : S) (hπ0 : π ≠ 0) (hπ : ϖ ∣ π)
    (hEπ : ∃ s : S, E (algebraMap S L π) = algebraMap S L (π * s))
    (δ : S) (hδ : δ ≠ 0) (hδE : ∀ x : S, ∃ y : S, algebraMap S L δ * E (algebraMap S L x) = algebraMap S L y) :
    (∀ x : S, v (E (algebraMap S L x)) ≤ 1) ∧ (∀ x : S, ϖ ∣ x → v (E (algebraMap S L x)) < 1) ∧
      (I ≤ Ideal.span {ϖ} → ∀ x : S, v (E (algebraMap S L x)) < 1) := by
  classical
  have inj := IsFractionRing.injective S L
  set ι := algebraMap S L with hι
  have hne : ∀ x : S, x ≠ 0 → ι x ≠ 0 := fun x hx h => hx (inj (by simpa using h))
  have hϖ0 : ϖ ≠ 0 := fun h => hπ0 (by simpa [h] using hπ)
  have hϖu : ¬ IsUnit ϖ := fun h => by
    have := (hlt 1).2 (h.dvd)
    simp at this
  have hone : ∀ x : S, ¬ ϖ ∣ x → v (ι x) = 1 := fun x hx =>
    le_antisymm (hS x) (not_lt.1 (fun h => hx ((hlt x).1 h)))
  set c := v (ι ϖ) with hc
  have hc1 : c < 1 := (hlt ϖ).2 dvd_rfl
  have hc0 : c ≠ 0 := by
    rw [hc, Valuation.ne_zero_iff]; exact hne _ hϖ0
  have hle_c : ∀ x : S, ϖ ∣ x → v (ι x) ≤ c := by
    rintro x ⟨z, rfl⟩
    rw [map_mul, map_mul]
    exact mul_le_of_le_one_right' (hS z)

  obtain ⟨e, w, hw, hπw⟩ := WfDvdMonoid.max_power_factor' hπ0 hϖu
  have he : e ≠ 0 := by
    rintro rfl
    apply hw
    rw [pow_zero, one_mul] at hπw
    rwa [← hπw]
  obtain ⟨e', rfl⟩ := Nat.exists_eq_succ_of_ne_zero he
  have hw0 : ι w ≠ 0 := hne _ (fun h => hw (by simp [h]))
  have hvw : v (ι w) = 1 := hone w hw
  have hnatv : ∀ n : ℕ, n ≠ 0 → v (n : L) = 1 := by
    intro n hn
    have hu : IsUnit (n : S) := by
      have := (hnat n hn).map (algebraMap R S)
      simpa using this
    have : ¬ ϖ ∣ (n : S) := fun h => hϖu (isUnit_of_dvd_unit h hu)
    have := hone _ this
    simpa [hι] using this

  have stepA : ∀ T : Γ, 1 ≤ T → (∀ x : S, v (E (ι x)) ≤ T) → v (E (ι ϖ)) ≤ c * T := by
    intro T hT hb
    obtain ⟨s, hs⟩ := hEπ
    have h1 : E (ι π) = (ι ϖ) ^ (e' + 1) * E (ι w) +
        ι w * (((e' + 1 : ℕ) : L) * (ι ϖ) ^ e' * E (ι ϖ)) := by
      rw [hπw, map_mul, map_pow, Derivation.leibniz, Derivation.leibniz_pow]
      simp only [smul_eq_mul, nsmul_eq_mul, Nat.succ_eq_add_one, Nat.add_sub_cancel]
      push_cast
      ring
    have h2 : ι w * (((e' + 1 : ℕ) : L) * E (ι ϖ)) = ι ϖ * (ι w * ι s - E (ι w)) := by
      have h3 : (ι ϖ) ^ e' ≠ 0 := pow_ne_zero _ (hne _ hϖ0)
      apply mul_left_cancel₀ h3
      have h4 : ι π = (ι ϖ) ^ (e' + 1) * ι w := by rw [hπw, map_mul, map_pow]
      have h5 : E (ι π) = (ι ϖ) ^ (e' + 1) * ι w * ι s := by rw [hs, map_mul, h4]
      rw [h5] at h1
      linear_combination -h1
    have h3 := congrArg v h2
    rw [map_mul, map_mul, map_mul, hvw, hnatv _ (Nat.succ_ne_zero e'), one_mul, one_mul] at h3
    rw [h3]
    gcongr
    refine (Valuation.map_sub _ _ _).trans (max_le ?_ (hb w))
    rw [map_mul, hvw, one_mul]
    exact (hS s).trans hT
  have stepB : ∀ T : Γ, 1 ≤ T → (∀ x : S, v (E (ι x)) ≤ T) → ∀ y : S, ϖ ∣ y → v (E (ι y)) ≤ c * T := by
    rintro T hT hb y ⟨z, rfl⟩
    rw [map_mul, Derivation.leibniz]
    simp only [smul_eq_mul]
    refine (Valuation.map_add _ _ _).trans (max_le ?_ ?_)
    · rw [map_mul]; gcongr; exact hb z
    · rw [map_mul]
      exact (mul_le_of_le_one_left' (hS z)).trans (stepA T hT hb)
  have stepC : ∀ T : Γ, 1 ≤ T → (∀ x : S, v (E (ι x)) ≤ T) → ∀ b : S, v (E (ι b)) ≤ max (c * T) 1 ∧
      (I ≤ Ideal.span {ϖ} → v (E (ι b)) ≤ c * T) := by
    intro T hT hb b
    have hP : Ideal.span {ϖ} ≠ ⊤ := by rwa [Ne, Ideal.span_singleton_eq_top]
    obtain ⟨G, hG1, hG2⟩ := exists_good_poly (R := R) hnat (Ideal.span {ϖ}) hP b
    rw [Ideal.mem_span_singleton] at hG1 hG2
    obtain ⟨s, hsI, hs⟩ := deriv_aeval (R := R) E I hI G b
    have hu := hone _ hG2
    have h1 : v (E (ι b)) = v (E (ι (Polynomial.aeval b G)) - ι s) := by
      have : E (ι (Polynomial.aeval b G)) - ι s =
          ι (Polynomial.aeval b (Polynomial.derivative G)) * E (ι b) := by rw [hs]; ring
      rw [this, map_mul, hu, one_mul]
    constructor
    · rw [h1]
      refine (Valuation.map_sub _ _ _).trans (max_le ?_ ?_)
      · exact (stepB T hT hb _ hG1).trans (le_max_left _ _)
      · exact (hS s).trans (le_max_right _ _)
    · intro hIle
      rw [h1]
      refine (Valuation.map_sub _ _ _).trans (max_le (stepB T hT hb _ hG1) ?_)
      have := Ideal.mem_span_singleton.1 (hIle hsI)
      exact (hle_c s this).trans (le_mul_of_one_le_right' hT)

  have hbase : ∃ m : ℕ, ∀ x : S, v (E (ι x)) ≤ (c⁻¹) ^ m := by
    obtain ⟨m, δ', hδ', hδm⟩ := WfDvdMonoid.max_power_factor' hδ hϖu
    refine ⟨m, fun x => ?_⟩
    obtain ⟨y, hy⟩ := hδE x
    have h1 := congrArg v hy
    rw [map_mul, hδm, map_mul, map_mul, map_pow, map_pow, hone _ hδ', mul_one] at h1
    have h2 : v (E (ι x)) = (c⁻¹) ^ m * v (ι y) := by
      rw [← h1, inv_pow, inv_mul_cancel_left₀ (pow_ne_zero _ hc0)]
    rw [h2]
    exact mul_le_of_le_one_right' (hS y)
  have hcinv : 1 ≤ c⁻¹ := (one_le_inv₀ (zero_lt_iff.2 hc0)).2 hc1.le
  have hdesc : ∀ m : ℕ, (∀ x : S, v (E (ι x)) ≤ (c⁻¹) ^ m) → ∀ x : S, v (E (ι x)) ≤ 1 := by
    intro m
    induction m with
    | zero => simpa using id
    | succ m ih =>
      intro h
      apply ih
      intro x
      have h1 := (stepC _ (one_le_pow₀ hcinv) h x).1
      have h2 : c * (c⁻¹) ^ (m + 1) = (c⁻¹) ^ m := by
        rw [pow_succ, mul_comm, mul_assoc, inv_mul_cancel₀ hc0, mul_one]
      rw [h2] at h1
      exact h1.trans (max_le le_rfl (one_le_pow₀ hcinv))
  obtain ⟨m, hm⟩ := hbase
  have hb1 := hdesc m hm
  refine ⟨hb1, fun x hx => ?_, fun hIle x => ?_⟩
  · have := stepB 1 le_rfl hb1 x hx
    rw [mul_one] at this
    exact this.trans_lt hc1
  · have := (stepC 1 le_rfl hb1 x).2 hIle
    rw [mul_one] at this
    exact this.trans_lt hc1
end core

end GlobalTheory.CompanionTheory.TraceJac
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsGoodPoly =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FaithfulIntegralClosure =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FaithfulIntegralClosure", "h": "module\n\npublic import Mathlib.FieldTheory.Separable\npublic import Mathlib.RingTheory.DedekindDomain.AdicValuation.Valuation\npublic import Mathlib.RingTheory.Derivation.Basic\npublic import Mathlib.RingTheory.Trace.Defs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsGoodPoly\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.DedekindDomain.PID\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.RingTheory.DedekindDomain.Factorization\npublic import Mathlib.RingTheory.DedekindDomain.IntegralClosure\npublic import Mathlib.RingTheory.Localization.NormTrace\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

namespace GlobalTheory.CompanionTheory.TraceJac

section dvr
variable {R F L : Type*} [CommRing R] [IsDomain R] [IsDiscreteValuationRing R] [Field F] [Field L]
  [Algebra R F] [IsFractionRing R F] [Algebra F L] [Algebra R L] [IsScalarTower R F L]
  [FiniteDimensional F L] [Algebra.IsSeparable F L]

include F in
theorem faithful_integralClosure : FaithfulSMul R (integralClosure R L) := by
  rw [faithfulSMul_iff_algebraMap_injective]
  have h1 : Function.Injective (algebraMap R L) := by
    rw [IsScalarTower.algebraMap_eq R F L]
    exact (algebraMap F L).injective.comp (IsFractionRing.injective R F)
  intro a b hab
  apply h1
  have h2 := congrArg (fun x : integralClosure R L => (x : L)) hab
  simpa using h2

include F in
theorem trace_radical (π : R) (hπ : Irreducible π) (y z : integralClosure R L) (n : ℕ)
    (h : y ^ n = algebraMap R _ π * z) :
    ∃ r : R, algebraMap R F (π * r) = Algebra.trace F L (y : L) := by
  classical
  have h1 : Function.Injective (algebraMap R L) := by
    rw [IsScalarTower.algebraMap_eq R F L]
    exact (algebraMap F L).injective.comp (IsFractionRing.injective R F)
  haveI : FaithfulSMul R L := by
    rw [faithfulSMul_iff_algebraMap_injective]
    exact h1
  haveI : Module.Finite R (integralClosure R L) := IsIntegralClosure.finite R F L (integralClosure R L)
  haveI : Module.Free R (integralClosure R L) := IsIntegralClosure.module_free R F L (integralClosure R L)
  haveI : IsLocalization (Algebra.algebraMapSubmonoid (integralClosure R L) (nonZeroDivisors R)) L :=
    IsIntegralClosure.isLocalization R F L (integralClosure R L)
  have htr : Algebra.trace F L (y : L) = algebraMap R F (Algebra.trace R (integralClosure R L) y) :=
    Algebra.trace_localization (Rₘ := F) (Sₘ := L) R (nonZeroDivisors R) y
  have hM : Algebra.leftMulMatrix (Module.Free.chooseBasis R (integralClosure R L)) y ^ n =
      π • Algebra.leftMulMatrix (Module.Free.chooseBasis R (integralClosure R L)) z := by
    rw [← map_pow, h, map_mul, AlgHom.commutes, Algebra.algebraMap_eq_smul_one, smul_mul_assoc, one_mul]
  have hπm : IsLocalRing.residue R π = 0 :=
    (IsLocalRing.residue_eq_zero_iff π).mpr (mem_nonunits_iff.mpr hπ.not_isUnit)
  have hnil : IsNilpotent ((Algebra.leftMulMatrix (Module.Free.chooseBasis R (integralClosure R L)) y).map
      (IsLocalRing.residue R)) := by
    refine ⟨n, ?_⟩
    have h2 := map_pow (IsLocalRing.residue R).mapMatrix
      (Algebra.leftMulMatrix (Module.Free.chooseBasis R (integralClosure R L)) y) n
    simp only [RingHom.mapMatrix_apply] at h2
    rw [← h2, hM]
    ext i j
    simp [hπm]
  have htrace0 : IsLocalRing.residue R
      (Matrix.trace (Algebra.leftMulMatrix (Module.Free.chooseBasis R (integralClosure R L)) y)) = 0 := by
    have h2 := Matrix.isNilpotent_trace_of_isNilpotent hnil
    have h3 : Matrix.trace ((Algebra.leftMulMatrix (Module.Free.chooseBasis R (integralClosure R L)) y).map
        (IsLocalRing.residue R)) = IsLocalRing.residue R
          (Matrix.trace (Algebra.leftMulMatrix (Module.Free.chooseBasis R (integralClosure R L)) y)) := by
      set_option synthInstance.maxHeartbeats 100000 in
        simp [Matrix.trace, map_sum]
    rw [← h3]
    exact h2.eq_zero
  have hmem := (IsLocalRing.residue_eq_zero_iff _).mp htrace0
  rw [hπ.maximalIdeal_eq, Ideal.mem_span_singleton] at hmem
  obtain ⟨r, hr⟩ := hmem
  refine ⟨r, ?_⟩
  rw [htr, Algebra.trace_eq_matrix_trace (Module.Free.chooseBasis R (integralClosure R L)), ← hr]

theorem mem_prime (π : R) (hπ : Irreducible π) (P : Ideal (integralClosure R L)) [P.IsPrime] (hP : P ≠ ⊥) :
    algebraMap R _ π ∈ P := by
  have hne : P.comap (algebraMap R (integralClosure R L)) ≠ ⊥ := by
    obtain ⟨x, hx, hx0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hP
    exact Ideal.comap_ne_bot_of_integral_mem hx0 hx (Algebra.IsIntegral.isIntegral x)
  have hmax : (P.comap (algebraMap R (integralClosure R L))).IsMaximal :=
    Ideal.IsPrime.isMaximal inferInstance hne
  have heq := IsLocalRing.eq_maximalIdeal hmax
  have hπm : π ∈ IsLocalRing.maximalIdeal R :=
    (IsLocalRing.mem_maximalIdeal π).mpr (mem_nonunits_iff.mpr hπ.not_isUnit)
  rw [← heq] at hπm
  exact hπm

include F in
theorem isPID_integralClosure : IsPrincipalIdealRing (integralClosure R L) := by
  classical
  haveI : IsDedekindDomain (integralClosure R L) :=
    IsIntegralClosure.isDedekindDomain R F L (integralClosure R L)
  obtain ⟨π, hπ⟩ := IsDiscreteValuationRing.exists_irreducible R
  haveI := faithful_integralClosure (R := R) (F := F) (L := L)
  have hπ0 : algebraMap R (integralClosure R L) π ≠ 0 :=
    (map_ne_zero_iff _ (FaithfulSMul.algebraMap_injective R (integralClosure R L))).mpr hπ.ne_zero
  apply IsPrincipalIdealRing.of_finite_primes
  have hfin := Ideal.finite_factors (R := integralClosure R L)
    (I := Ideal.span {algebraMap R (integralClosure R L) π}) (Ideal.span_singleton_eq_bot.not.mpr hπ0)
  refine ((hfin.image (fun v => v.asIdeal)).insert ⊥).subset ?_
  intro P hP
  by_cases hb : P = ⊥
  · exact Set.mem_insert_iff.mpr (Or.inl hb)
  · refine Set.mem_insert_iff.mpr (Or.inr ?_)
    haveI : P.IsPrime := hP
    refine ⟨⟨P, hP, hb⟩, ?_, rfl⟩
    show P ∣ Ideal.span {algebraMap R (integralClosure R L) π}
    rw [Ideal.dvd_span_singleton]
    exact mem_prime π hπ P hb

end dvr
end GlobalTheory.CompanionTheory.TraceJac

namespace GlobalTheory.CompanionTheory.TraceJac

theorem exists_den {R S L : Type*} [CommRing R] [CommRing S] [IsDomain S] [Field L] [Algebra R S]
    [Algebra S L] [IsFractionRing S L] [Algebra R L] [IsScalarTower R S L] [Module.Finite R S]
    (E : Derivation ℤ L L) (hE : ∀ r : R, ∃ r' : R, E (algebraMap R L r) = algebraMap R L r') :
    ∃ δ : S, δ ≠ 0 ∧ ∀ x : S, ∃ y : S,
      algebraMap S L δ * E (algebraMap S L x) = algebraMap S L y := by
  classical
  obtain ⟨m, s, hs⟩ := Module.Finite.exists_fin (R := R) (M := S)
  have hfrac : ∀ i, ∃ a d : S, d ≠ 0 ∧ E (algebraMap S L (s i)) = algebraMap S L a / algebraMap S L d := by
    intro i
    obtain ⟨a, d, hd, h⟩ := IsFractionRing.div_surjective (A := S) (E (algebraMap S L (s i)))
    exact ⟨a, d, nonZeroDivisors.ne_zero hd, h.symm⟩
  choose a d hd0 hd using hfrac
  refine ⟨∏ i, d i, Finset.prod_ne_zero_iff.mpr (fun i _ => hd0 i), fun x => ?_⟩
  have hx : x ∈ Submodule.span R (Set.range s) := hs ▸ Submodule.mem_top
  induction hx using Submodule.span_induction with
  | mem y hy =>
    obtain ⟨i, rfl⟩ := hy
    refine ⟨(∏ j ∈ Finset.univ.erase i, d j) * a i, ?_⟩
    have hdi : algebraMap S L (d i) ≠ 0 :=
      (map_ne_zero_iff _ (IsFractionRing.injective S L)).mpr (hd0 i)
    rw [hd i, ← Finset.mul_prod_erase Finset.univ d (Finset.mem_univ i), map_mul, map_mul]
    field_simp
  | zero => exact ⟨0, by simp⟩
  | add y z _ _ hy hz =>
    obtain ⟨y', hy'⟩ := hy
    obtain ⟨z', hz'⟩ := hz
    exact ⟨y' + z', by rw [map_add (f := _), map_add (f := _), mul_add, hy', hz', map_add (f := _)]⟩
  | smul r y _ hy =>
    obtain ⟨y', hy'⟩ := hy
    obtain ⟨r', hr'⟩ := hE r
    refine ⟨algebraMap R S r * y' + y * (∏ i, d i) * algebraMap R S r', ?_⟩
    have e1 : algebraMap S L (r • y) = algebraMap R L r * algebraMap S L y := by
      rw [Algebra.smul_def, map_mul, ← IsScalarTower.algebraMap_apply]
    rw [e1, Derivation.leibniz, hr', smul_eq_mul, smul_eq_mul]
    simp only [map_add (f := _), map_mul, ← IsScalarTower.algebraMap_apply, ← hy']
    ring

section dvr2
variable {R F L : Type*} [CommRing R] [IsDomain R] [IsDiscreteValuationRing R] [Field F] [Field L]
  [Algebra R F] [IsFractionRing R F] [Algebra F L] [Algebra R L] [IsScalarTower R F L]
  [FiniteDimensional F L] [Algebra.IsSeparable F L]

open IsDedekindDomain in
include F in
theorem valuation_bounds (hnat : ∀ n : ℕ, n ≠ 0 → IsUnit (n : R)) (π : R) (hπ : Irreducible π)
    [IsDedekindDomain (integralClosure R L)] [IsFractionRing (integralClosure R L) L]
    [IsPrincipalIdealRing (integralClosure R L)]
    (P : HeightOneSpectrum (integralClosure R L)) (E' : Derivation ℤ L L)
    (I : Ideal (integralClosure R L))
    (hI : ∀ r : R, ∃ s ∈ I, E' (algebraMap R L r) = algebraMap (integralClosure R L) L s)
    (hR' : ∀ r : R, ∃ r' : R, E' (algebraMap R L r) = algebraMap R L r')
    (hπ' : ∃ s : integralClosure R L, E' (algebraMap R L π) =
      algebraMap (integralClosure R L) L (algebraMap R _ π * s)) :
    (∀ x : integralClosure R L, P.valuation L (E' (algebraMap _ L x)) ≤ 1) ∧
    (I ≤ P.asIdeal → ∀ x : integralClosure R L, P.valuation L (E' (algebraMap _ L x)) < 1) := by
  haveI := faithful_integralClosure (R := R) (F := F) (L := L)
  haveI : Module.Finite R (integralClosure R L) := IsIntegralClosure.finite R F L (integralClosure R L)
  obtain ⟨ϖ, hϖ⟩ := (IsPrincipalIdealRing.principal P.asIdeal).principal
  have hπ0 : algebraMap R (integralClosure R L) π ≠ 0 :=
    (map_ne_zero_iff _ (FaithfulSMul.algebraMap_injective R (integralClosure R L))).mpr hπ.ne_zero
  have hmem := mem_prime π hπ P.asIdeal P.ne_bot
  have hdiv : ϖ ∣ algebraMap R (integralClosure R L) π := by
    rw [hϖ] at hmem
    exact Ideal.mem_span_singleton.mp hmem
  have hπ'' : ∃ s, E' (algebraMap (integralClosure R L) L (algebraMap R (integralClosure R L) π)) =
      algebraMap (integralClosure R L) L (algebraMap R (integralClosure R L) π * s) := by
    rw [← IsScalarTower.algebraMap_apply]
    exact hπ'
  obtain ⟨δ, hδ0, hδ⟩ := exists_den (R := R) (S := integralClosure R L) (L := L) E' hR'
  have hle : ∀ x : integralClosure R L, P.valuation L (algebraMap _ L x) ≤ 1 :=
    fun x => P.valuation_le_one x
  have hlt : ∀ x : integralClosure R L, P.valuation L (algebraMap _ L x) < 1 ↔ ϖ ∣ x := by
    intro x
    rw [P.valuation_lt_one_iff_mem, hϖ]
    exact Ideal.mem_span_singleton
  have hc := core hnat (P.valuation L) ϖ hle hlt E' I hI _ hπ0 hdiv hπ'' δ hδ0 hδ
  refine ⟨hc.1, fun hIP => hc.2.2 (by rw [hϖ] at hIP; exact hIP)⟩

end dvr2
end GlobalTheory.CompanionTheory.TraceJac

namespace GlobalTheory.CompanionTheory.TraceJac

section dvr3
variable {R F L : Type*} [CommRing R] [IsDomain R] [IsDiscreteValuationRing R] [Field F] [Field L]
  [Algebra R F] [IsFractionRing R F] [Algebra F L] [Algebra R L] [IsScalarTower R F L]
  [FiniteDimensional F L] [Algebra.IsSeparable F L]

private theorem det_rowop_lemma {n K : Type*} [Fintype n] [DecidableEq n] [CommRing K]
    (A : Matrix n n K) (j : n) (c : n → K) :
    (Matrix.of fun k l => if k = j then A k l else A k l - c k * A j l).det = A.det := by
  have key : ∀ s : Finset n, j ∉ s →
      (Matrix.of fun k l => if k ∈ s then A k l - c k * A j l else A k l).det = A.det := by
    intro s
    induction s using Finset.induction_on with
    | empty =>
      intro _
      congr 1
    | insert k s hks ih =>
      intro hj
      have hjk : k ≠ j := fun h => hj (h ▸ Finset.mem_insert_self k s)
      have hjs : j ∉ s := fun h => hj (Finset.mem_insert_of_mem h)
      have heq : (Matrix.of fun k' l => if k' ∈ insert k s then A k' l - c k' * A j l else A k' l) =
          (Matrix.of fun k' l => if k' ∈ s then A k' l - c k' * A j l else A k' l).updateRow k
            ((Matrix.of fun k' l => if k' ∈ s then A k' l - c k' * A j l else A k' l) k +
              (-c k) • (Matrix.of fun k' l => if k' ∈ s then A k' l - c k' * A j l else A k' l) j) := by
        ext k' l
        by_cases hk' : k' = k
        · subst hk'
          simp [hks, hjs, sub_eq_add_neg, mul_comm]
        · simp [hk']
      rw [heq, Matrix.det_updateRow_add_smul_self _ hjk, ih hjs]
  have h1 := key (Finset.univ.erase j) (Finset.notMem_erase j _)
  rw [← h1]
  congr 1
  ext k l
  by_cases hk : k = j
  · simp [hk]
  · simp [hk]

private theorem val_det_le_lemma_2 {n K Γ : Type*} [Fintype n] [DecidableEq n] [CommRing K]
    [LinearOrderedCommGroupWithZero Γ] (v : Valuation K Γ) (A : Matrix n n K)
    (h : ∀ k l, v (A k l) ≤ 1) : v A.det ≤ 1 := by
  rw [Matrix.det_apply]
  refine v.map_sum_le (fun σ _ => ?_)
  rcases Int.units_eq_one_or (Equiv.Perm.sign σ) with hs | hs
  · rw [hs, one_smul, map_prod]
    exact Finset.prod_le_one' (fun i _ => h _ _)
  · rw [hs, Units.neg_smul, one_smul, Valuation.map_neg, map_prod]
    exact Finset.prod_le_one' (fun i _ => h _ _)

private theorem val_det_lt_lemma_3 {n K Γ : Type*} [Fintype n] [DecidableEq n] [CommRing K]
    [LinearOrderedCommGroupWithZero Γ] (v : Valuation K Γ) (A : Matrix n n K)
    (h : ∀ k l, v (A k l) ≤ 1) (j : n) (hj : ∀ l, v (A j l) < 1) : v A.det < 1 := by
  rw [Matrix.det_eq_sum_mul_adjugate_row A j]
  refine v.map_sum_lt one_ne_zero (fun l _ => ?_)
  rw [map_mul]
  have hadj : v (A.adjugate l j) ≤ 1 := by
    rw [Matrix.adjugate_apply]
    refine val_det_le_lemma_2 v _ (fun k m => ?_)
    by_cases hk : k = j
    · subst hk
      rw [Matrix.updateRow_self]
      by_cases hm : m = l
      · subst hm
        simp
      · simp [hm]
    · rw [Matrix.updateRow_ne hk]
      exact h k m
  exact lt_of_le_of_lt (mul_le_of_le_one_right' hadj) (hj l)

open IsDedekindDomain in
include F in
theorem trace_jac_dvr {n : Type*} [Fintype n] [DecidableEq n]
    (hnat : ∀ m : ℕ, m ≠ 0 → IsUnit (m : R))
    (E : n → Derivation ℤ L L)
    (hR : ∀ k (r : R), ∃ r' : R, E k (algebraMap R L r) = algebraMap R L r')
    (π : R) (hπ : Irreducible π) (j : n) (u : Rˣ) (hj : E j (algebraMap R L π) = algebraMap R L u)
    (c : L) (hc : IsIntegral R c) (b : n → L) (hb : ∀ l, IsIntegral R (b l)) :
    ∃ r : R, algebraMap R F r = Algebra.trace F L (c * (Matrix.of fun k l => E k (b l)).det) := by
  classical
  haveI : IsDedekindDomain (integralClosure R L) :=
    IsIntegralClosure.isDedekindDomain R F L (integralClosure R L)
  haveI : IsFractionRing (integralClosure R L) L :=
    IsIntegralClosure.isFractionRing_of_finite_extension R F L (integralClosure R L)
  haveI : IsPrincipalIdealRing (integralClosure R L) := isPID_integralClosure (F := F)
  haveI := faithful_integralClosure (R := R) (F := F) (L := L)
  have hπS : algebraMap R (integralClosure R L) π ≠ 0 :=
    (map_ne_zero_iff _ (FaithfulSMul.algebraMap_injective R (integralClosure R L))).mpr hπ.ne_zero
  have hsc : ∀ r : R, algebraMap R L r = algebraMap (integralClosure R L) L (algebraMap R _ r) :=
    fun r => IsScalarTower.algebraMap_apply R (integralClosure R L) L r
  choose rk hrk using fun k => hR k π
  set α : n → L := fun k => algebraMap R L (rk k * ↑u⁻¹) with hα
  have hE'π : ∀ k, (E k - α k • E j) (algebraMap R L π) = 0 := by
    intro k
    rw [Derivation.sub_apply, Derivation.smul_apply, hrk k, hj, smul_eq_mul, hα, ← map_mul, mul_assoc,
      Units.inv_mul, mul_one, sub_self]
  have hE'R : ∀ k (r : R), ∃ r' : R, (E k - α k • E j) (algebraMap R L r) = algebraMap R L r' := by
    intro k r
    obtain ⟨r1, h1⟩ := hR k r
    obtain ⟨r2, h2⟩ := hR j r
    refine ⟨r1 - rk k * ↑u⁻¹ * r2, ?_⟩
    rw [Derivation.sub_apply, Derivation.smul_apply, h1, h2, smul_eq_mul, hα, map_sub, map_mul]
  have hE''R : ∀ r : R, ∃ r' : R, (algebraMap R L π • E j) (algebraMap R L r) = algebraMap R L r' := by
    intro r
    obtain ⟨r2, h2⟩ := hR j r
    exact ⟨π * r2, by rw [Derivation.smul_apply, h2, smul_eq_mul, map_mul]⟩
  have hvb : ∀ P : IsDedekindDomain.HeightOneSpectrum (integralClosure R L),
      (∀ k, ∀ x : integralClosure R L,
        P.valuation L ((E k - α k • E j) (algebraMap (integralClosure R L) L x)) ≤ 1) ∧
      (∀ x : integralClosure R L,
        P.valuation L ((algebraMap R L π • E j) (algebraMap (integralClosure R L) L x)) < 1) := by
    intro P
    refine ⟨fun k => ?_, ?_⟩
    · refine (valuation_bounds (F := F) hnat π hπ P (E k - α k • E j) ⊤ (fun r => ?_) (hE'R k)
        ⟨0, by rw [hE'π k, mul_zero, map_zero]⟩).1
      obtain ⟨r', hr'⟩ := hE'R k r
      exact ⟨algebraMap R _ r', Submodule.mem_top, by rw [hr', hsc]⟩
    · refine (valuation_bounds (F := F) hnat π hπ P (algebraMap R L π • E j)
        (Ideal.span {algebraMap R (integralClosure R L) π}) (fun r => ?_) hE''R
        ⟨algebraMap R _ u, ?_⟩).2 ?_
      · obtain ⟨r2, h2⟩ := hR j r
        refine ⟨algebraMap R _ π * algebraMap R _ r2,
          Ideal.mul_mem_right _ _ (Ideal.mem_span_singleton_self _), ?_⟩
        rw [Derivation.smul_apply, h2, smul_eq_mul, map_mul, hsc, hsc]
      · rw [Derivation.smul_apply, hj, smul_eq_mul, map_mul, hsc, hsc]
      · rw [Ideal.span_singleton_le_iff_mem]
        exact mem_prime π hπ P.asIdeal P.ne_bot
  set M : Matrix n n L := Matrix.of fun k l => E k (b l) with hM
  set M2 : Matrix n n L := (Matrix.of fun k l => if k = j then M k l else M k l - α k * M j l).updateRow j
    (algebraMap R L π • M j) with hM2
  have hdet : M2.det = algebraMap R L π * M.det := by
    rw [hM2, Matrix.det_updateRow_smul, ← det_rowop_lemma M j α]
    congr 2
    ext k l
    by_cases hk : k = j
    · subst hk
      simp
    · simp [Matrix.updateRow_ne hk]
  have hent : ∀ P : IsDedekindDomain.HeightOneSpectrum (integralClosure R L), ∀ k l,
      (k = j → P.valuation L (M2 k l) < 1) ∧ P.valuation L (M2 k l) ≤ 1 := by
    intro P k l
    have hb' : b l = algebraMap (integralClosure R L) L ⟨b l, hb l⟩ := rfl
    by_cases hk : k = j
    · subst hk
      have h1 : M2 k l = (algebraMap R L π • E k) (algebraMap (integralClosure R L) L ⟨b l, hb l⟩) := by
        rw [hM2, Matrix.updateRow_self, Derivation.smul_apply]
        rfl
      have h2 := (hvb P).2 ⟨b l, hb l⟩
      rw [← h1] at h2
      exact ⟨fun _ => h2, h2.le⟩
    · have h1 : M2 k l = (E k - α k • E j) (algebraMap (integralClosure R L) L ⟨b l, hb l⟩) := by
        rw [hM2, Matrix.updateRow_ne hk, Derivation.sub_apply, Derivation.smul_apply]
        simp [hk, hM]
      have h2 := (hvb P).1 k ⟨b l, hb l⟩
      rw [← h1] at h2
      exact ⟨fun h => absurd h hk, h2⟩
  have hw : ∀ P : IsDedekindDomain.HeightOneSpectrum (integralClosure R L),
      P.valuation L (c * M2.det) < 1 := by
    intro P
    have hcS : c = algebraMap (integralClosure R L) L ⟨c, hc⟩ := rfl
    rw [map_mul]
    refine lt_of_le_of_lt (mul_le_of_le_one_left' ?_) ?_
    · rw [hcS]
      exact P.valuation_le_one _
    · exact val_det_lt_lemma_3 (P.valuation L) M2 (fun k l => (hent P k l).2) j (fun l => (hent P j l).1 rfl)
  obtain ⟨w0, hw0⟩ : c * M2.det ∈ (algebraMap (integralClosure R L) L).range :=
    IsDedekindDomain.HeightOneSpectrum.mem_integers_of_valuation_le_one L _ (fun P => (hw P).le)
  have hrad : w0 ∈ (Ideal.span {algebraMap R (integralClosure R L) π}).radical := by
    rw [Ideal.radical_eq_sInf, Submodule.mem_sInf]
    rintro J ⟨hJ, hJp⟩
    have hJb : J ≠ ⊥ := by
      intro h0
      rw [h0] at hJ
      exact hπS ((Submodule.mem_bot _).mp (hJ (Ideal.mem_span_singleton_self _)))
    have h1 := hw ⟨J, hJp, hJb⟩
    rw [← hw0] at h1
    exact (IsDedekindDomain.HeightOneSpectrum.valuation_lt_one_iff_mem ⟨J, hJp, hJb⟩ w0).mp h1
  obtain ⟨N, hN⟩ := hrad
  obtain ⟨z, hz⟩ := Ideal.mem_span_singleton'.mp hN
  obtain ⟨r, hr⟩ := trace_radical (F := F) π hπ w0 z N (by rw [← hz, mul_comm])
  refine ⟨r, ?_⟩
  have hw0' : ((w0 : integralClosure R L) : L) = algebraMap R L π * (c * M.det) := by
    rw [show ((w0 : integralClosure R L) : L) = algebraMap (integralClosure R L) L w0 from rfl, hw0, hdet]
    ring
  rw [hw0', IsScalarTower.algebraMap_apply R F L, ← smul_eq_mul, ← Algebra.smul_def,
    LinearMap.map_smul, smul_eq_mul, map_mul] at hr
  have hπF : algebraMap R F π ≠ 0 :=
    (map_ne_zero_iff _ (IsFractionRing.injective R F)).mpr hπ.ne_zero
  exact mul_left_cancel₀ hπF hr

end dvr3
end GlobalTheory.CompanionTheory.TraceJac
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FaithfulIntegralClosure =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPderivNotDvd =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPderivNotDvd", "h": "module\n\npublic import Mathlib.Algebra.MvPolynomial.PDeriv\npublic import Mathlib.FieldTheory.Separable\npublic import Mathlib.RingTheory.Localization.AtPrime.Basic\npublic import Mathlib.RingTheory.Trace.Defs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FaithfulIntegralClosure\npublic import Mathlib.Algebra.MvPolynomial.NoZeroDivisors\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

namespace GlobalTheory.CompanionTheory.TraceJac

open MvPolynomial in
theorem exists_pderiv_not_dvd {K σ : Type*} [Field K] [CharZero K] (π : MvPolynomial σ K)
    (hπ : Prime π) : ∃ j, ¬ π ∣ pderiv j π := by
  classical
  have hT : π.totalDegree ≠ 0 := by
    intro h
    have hC := totalDegree_eq_zero_iff_eq_C.1 h
    by_cases ha : π.coeff 0 = 0
    · rw [ha, map_zero] at hC
      exact hπ.ne_zero hC
    · apply hπ.not_isUnit
      rw [hC]
      exact (IsUnit.mk0 _ ha).map C
  have h1 : ¬ ∀ m ∈ π.support, ∀ x, m x = 0 := by
    rwa [← totalDegree_eq_zero_iff]
  push Not at h1
  obtain ⟨m, hm, j, hj⟩ := h1
  refine ⟨j, fun hd => ?_⟩
  have hm' : (m - Finsupp.single j 1) + Finsupp.single j 1 = m := by
    ext i
    by_cases hi : i = j
    · subst hi
      simp
      omega
    · simp [Ne.symm hi]
  have hne : pderiv j π ≠ 0 := by
    intro h0
    have h2 := coeff_pderiv (i := j) π (m - Finsupp.single j 1)
    rw [h0, hm', AddMonoidAlgebra.coeff_zero, Finsupp.zero_apply] at h2
    have h3 : (((m - Finsupp.single j 1 : σ →₀ ℕ) j : ℕ) + 1 : K) ≠ 0 := by
      exact Nat.cast_add_one_ne_zero _
    exact mul_ne_zero (mem_support_iff.1 hm) h3 h2.symm
  obtain ⟨q, hq⟩ := hd
  have hq0 : q ≠ 0 := fun h => hne (by rw [hq, h, mul_zero])
  have hdeg : (pderiv j π).totalDegree = π.totalDegree + q.totalDegree := by
    rw [hq]; exact totalDegree_mul_of_isDomain hπ.ne_zero hq0
  have hlt : (pderiv j π).totalDegree < π.totalDegree := by
    have : (pderiv j π).totalDegree + 1 ≤ π.totalDegree := by
      have h4 : ∀ s ∈ (pderiv j π).support, s.sum (fun _ e => e) + 1 ≤ π.totalDegree := by
        intro s hs
        have h5 : s + Finsupp.single j 1 ∈ π.support := by
          rw [mem_support_iff] at hs ⊢
          intro h6
          apply hs
          rw [coeff_pderiv, h6, zero_mul]
        have := le_totalDegree h5
        rwa [Finsupp.sum_add_index' (by simp) (by simp), Finsupp.sum_single_index rfl] at this
      obtain ⟨s, hs, hs'⟩ : ∃ s ∈ (pderiv j π).support, (pderiv j π).totalDegree = s.sum (fun _ e => e) := by
        rw [totalDegree]
        obtain ⟨s, hs, hs'⟩ := Finset.exists_mem_eq_sup _ (support_nonempty.2 hne) (fun s : σ →₀ ℕ => s.sum fun _ e => e)
        exact ⟨s, hs, hs'⟩
      rw [hs']; exact h4 s hs
    omega
  omega

theorem finite_frac {A B F L : Type*} [CommRing A] [IsDomain A] [CommRing B] [IsDomain B]
    [Algebra A B] [Module.Finite A B] [Field F] [Field L] [Algebra A F] [IsFractionRing A F]
    [Algebra B L] [IsFractionRing B L] [Algebra F L] [Algebra A L] [IsScalarTower A F L]
    [IsScalarTower A B L] : FiniteDimensional F L := by
  classical
  obtain ⟨T, hT⟩ := (Module.Finite.fg_top : (⊤ : Submodule A B).FG)
  let W := IntermediateField.adjoin F ((T.image (algebraMap B L) : Finset L) : Set L)
  have hint : ∀ x ∈ ((T.image (algebraMap B L) : Finset L) : Set L), IsIntegral F x := by
    intro x hx
    simp only [Finset.coe_image, Set.mem_image] at hx
    obtain ⟨t, -, rfl⟩ := hx
    have h1 : IsIntegral A t := IsIntegral.of_finite A t
    exact (h1.algebraMap (B := L)).tower_top
  haveI : FiniteDimensional F W :=
    IntermediateField.finiteDimensional_adjoin hint
  have hB : ∀ x : B, algebraMap B L x ∈ W := by
    intro x
    have hx : x ∈ Submodule.span A (T : Set B) := hT ▸ Submodule.mem_top
    induction hx using Submodule.span_induction with
    | mem s hs =>
      refine IntermediateField.subset_adjoin _ _ ?_
      simp only [Finset.coe_image]
      exact ⟨s, hs, rfl⟩
    | zero => simp
    | add a b _ _ ha hb => rw [map_add (f := _)]; exact W.add_mem ha hb
    | smul r a _ ha =>
      have h1 : algebraMap B L (r • a) = algebraMap F L (algebraMap A F r) * algebraMap B L a := by
        rw [Algebra.smul_def, map_mul, ← IsScalarTower.algebraMap_apply,
          ← IsScalarTower.algebraMap_apply]
      rw [h1]
      exact W.mul_mem (W.algebraMap_mem _) ha
  have hW : W = ⊤ := by
    rw [eq_top_iff]
    intro x _
    obtain ⟨a, s, -, rfl⟩ := IsFractionRing.div_surjective (A := B) x
    exact W.div_mem (hB a) (hB s)
  have key : ∀ W' : IntermediateField F L, FiniteDimensional F W' → W' = ⊤ →
      FiniteDimensional F L := by
    rintro _ h rfl
    exact (IntermediateField.topEquiv (F := F) (E := L)).toLinearEquiv.finiteDimensional
  exact key W inferInstance hW

open Polynomial in
theorem integral_of_range {A R L : Type*} [CommRing A] [CommRing R] [Field L] [Algebra A L]
    [Algebra R L] (hr : ∀ a : A, algebraMap A L a ∈ (algebraMap R L).range) (x : L)
    (h : IsIntegral A x) : IsIntegral R x := by
  obtain ⟨p, hp, h0⟩ := h
  have hl : p.map (algebraMap A L) ∈ Polynomial.lifts (algebraMap R L) := by
    rw [Polynomial.lifts_iff_coeff_lifts]
    intro n
    rw [coeff_map]
    exact hr _
  obtain ⟨q, hq, -, hqm⟩ := Polynomial.lifts_and_natDegree_eq_and_monic hl (hp.map _)
  refine ⟨q, hqm, ?_⟩
  rw [← Polynomial.eval_map, hq, Polynomial.eval_map]
  exact h0

end GlobalTheory.CompanionTheory.TraceJac

namespace GlobalTheory.CompanionTheory.TraceJac

theorem at_prime_abs {P L F R n : Type*} [CommRing P] [IsDomain P] [IsNoetherianRing P] [Field L]
    [Field F] [CommRing R] [Algebra P R] [Algebra P F] [Algebra P L] [Algebra R F]
    [IsScalarTower P R F] [Algebra F L] [Algebra R L] [IsScalarTower R F L] [IsScalarTower P R L]
    [IsFractionRing P F] [FiniteDimensional F L] [Algebra.IsSeparable F L] [Fintype n]
    [DecidableEq n] (π : P) (hπ : Prime π) (p : Ideal P) [p.IsPrime] (hp : p = Ideal.span {π})
    [IsLocalization.AtPrime R p] (E : n → Derivation ℤ L L)
    (hE : ∀ k f, ∃ f', E k (algebraMap P L f) = algebraMap P L f') (j : n) (fj : P)
    (hfj : E j (algebraMap P L π) = algebraMap P L fj) (hj : ¬ π ∣ fj)
    (hnat : ∀ m : ℕ, m ≠ 0 → IsUnit (m : R))
    (c : L) (hc : IsIntegral R c) (b : n → L) (hb : ∀ l, IsIntegral R (b l)) :
    ∃ f s : P, ¬ π ∣ s ∧
      algebraMap P F s * Algebra.trace F L (c * (Matrix.of fun k l => E k (b l)).det) =
        algebraMap P F f := by
  classical
  have hmem : ∀ s, s ∈ p ↔ π ∣ s := fun s => by rw [hp, Ideal.mem_span_singleton]
  have hmemM : ∀ s, s ∈ p.primeCompl ↔ ¬ π ∣ s := fun s => by
    rw [Ideal.mem_primeCompl_iff, hmem]
  haveI : IsDomain R := IsLocalization.isDomain_of_le_nonZeroDivisors R
    p.primeCompl_le_nonZeroDivisors
  haveI : IsNoetherianRing R := IsLocalization.isNoetherianRing p.primeCompl R inferInstance
  haveI : IsLocalRing R := IsLocalization.AtPrime.isLocalRing R p
  haveI : IsFractionRing R F :=
    IsFractionRing.isFractionRing_of_isDomain_of_isLocalization p.primeCompl R F
  have hmax : IsLocalRing.maximalIdeal R = Ideal.span {algebraMap P R π} := by
    rw [← IsLocalization.AtPrime.map_eq_maximalIdeal p R, hp, Ideal.map_span, Set.image_singleton]
  have hπR0 : algebraMap P R π ≠ 0 := by
    intro h
    apply hπ.ne_zero
    exact IsLocalization.injective R (M := p.primeCompl) p.primeCompl_le_nonZeroDivisors
      (h.trans (map_zero _).symm)
  have hnf : ¬ IsField R := by
    rw [IsLocalRing.isField_iff_maximalIdeal_eq, hmax]
    simpa using hπR0
  have hprin : (IsLocalRing.maximalIdeal R).IsPrincipal := ⟨⟨_, hmax⟩⟩
  haveI : IsDiscreteValuationRing R := by
    have h5 := (IsDiscreteValuationRing.TFAE R hnf).out 1 5
    exact h5.2 hprin
  have hirr : Irreducible (algebraMap P R π) :=
    (IsDiscreteValuationRing.irreducible_iff_uniformizer _).2 hmax
  have hρP : ∀ f, algebraMap R L (algebraMap P R f) = algebraMap P L f := fun f =>
    (IsScalarTower.algebraMap_apply P R L f).symm
  have hR : ∀ k (r : R), ∃ r' : R, E k (algebraMap R L r) = algebraMap R L r' := by
    intro k r
    obtain ⟨f, s, rfl⟩ := IsLocalization.exists_mk'_eq p.primeCompl r
    have h1 := IsLocalization.mk'_spec R f s
    obtain ⟨w, hw⟩ := (IsLocalization.map_units R s).exists_right_inv
    obtain ⟨f1, hf1⟩ := hE k f
    obtain ⟨s1, hs1⟩ := hE k (s : P)
    refine ⟨(algebraMap P R f1 - IsLocalization.mk' R f s * algebraMap P R s1) * w, ?_⟩
    set x := algebraMap R L (IsLocalization.mk' R f s) with hx
    have h2 : x * algebraMap P L s = algebraMap P L f := by
      rw [hx, ← hρP, ← hρP, ← map_mul, h1]
    have h3 : algebraMap P L s * algebraMap R L w = 1 := by
      rw [← hρP, ← map_mul, hw, map_one]
    have h4 := congrArg (E k) h2
    rw [Derivation.leibniz, hf1, hs1] at h4
    simp only [smul_eq_mul] at h4
    rw [map_mul, map_sub, map_mul, hρP, hρP, ← hx, ← h4]
    linear_combination (-E k x) * h3
  obtain ⟨u, hu⟩ := IsLocalization.map_units R (⟨fj, (hmemM _).2 hj⟩ : p.primeCompl)
  obtain ⟨r, hr⟩ := trace_jac_dvr (F := F) hnat E hR (algebraMap P R π) hirr j u
    (by rw [hρP, hfj, hu, hρP]) c hc b hb
  obtain ⟨f, s, rfl⟩ := IsLocalization.exists_mk'_eq p.primeCompl r
  refine ⟨f, s, (hmemM _).1 s.2, ?_⟩
  rw [← hr, IsScalarTower.algebraMap_apply P R F, IsScalarTower.algebraMap_apply P R F f,
    ← map_mul, mul_comm, IsLocalization.mk'_spec]

end GlobalTheory.CompanionTheory.TraceJac
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPderivNotDvd =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPrimeDvdNotUnit =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPrimeDvdNotUnit", "h": "module\n\npublic import Mathlib.Algebra.MvPolynomial.PDeriv\npublic import Mathlib.FieldTheory.Separable\npublic import Mathlib.RingTheory.Trace.Defs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPderivNotDvd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

namespace GlobalTheory.CompanionTheory.TraceJac

theorem exists_prime_dvd_not_unit {P A : Type*} [CommRing P] [IsDomain P]
    [UniqueFactorizationMonoid P] [CommRing A] (φ : P →+* A) (g : P) (hg : g ≠ 0)
    (h : ¬ IsUnit (φ g)) : ∃ π, Prime π ∧ π ∣ g ∧ ¬ IsUnit (φ π) := by
  revert hg h
  refine UniqueFactorizationMonoid.induction_on_prime g ?_ ?_ ?_
  · intro h0
    exact absurd rfl h0
  · intro x hx _ hxu
    exact absurd (hx.map φ) hxu
  · intro a p ha hp ih _ hpa
    by_cases hpu : IsUnit (φ p)
    · have hau : ¬ IsUnit (φ a) := fun hau => hpa (by rw [map_mul]; exact hpu.mul hau)
      obtain ⟨π, hπ, hπa, hπu⟩ := ih ha hau
      exact ⟨π, hπ, dvd_mul_of_dvd_right hπa p, hπu⟩
    · exact ⟨p, hp, dvd_mul_right p a, hpu⟩

section
variable {P A F L n : Type*} [CommRing P] [IsDomain P] [UniqueFactorizationMonoid P]
  [IsNoetherianRing P] [CommRing A] [IsDomain A] [Algebra P A] [Field F] [Algebra A F]
  [IsFractionRing A F] [Algebra P F] [IsScalarTower P A F] [Field L] [Algebra F L] [Algebra A L]
  [IsScalarTower A F L] [Algebra P L] [IsScalarTower P F L] [FiniteDimensional F L]
  [Algebra.IsSeparable F L] [Fintype n] [DecidableEq n]

theorem main_abs (hinj : Function.Injective (algebraMap P A))
    (hloc : ∀ a : A, ∃ f g : P, IsUnit (algebraMap P A g) ∧ a * algebraMap P A g = algebraMap P A f)
    (E : n → Derivation ℤ L L) (hE : ∀ k f, ∃ f', E k (algebraMap P L f) = algebraMap P L f')
    (hjac : ∀ π : P, Prime π → ∃ j fj, E j (algebraMap P L π) = algebraMap P L fj ∧ ¬ π ∣ fj)
    (hnat : ∀ m : ℕ, m ≠ 0 → IsUnit (m : P))
    (c : L) (hc : IsIntegral A c) (b : n → L) (hb : ∀ l, IsIntegral A (b l)) :
    ∃ a : A, algebraMap A F a = Algebra.trace F L (c * (Matrix.of fun k l => E k (b l)).det) := by
  classical
  have hPF_inj : Function.Injective (algebraMap P F) := by
    rw [IsScalarTower.algebraMap_eq P A F]
    exact (IsFractionRing.injective A F).comp hinj
  have hne : ∀ g : P, IsUnit (algebraMap P A g) → algebraMap P F g ≠ 0 := by
    intro g hg h0
    have hg0 : g ≠ 0 := by
      rintro rfl
      simp at hg
    exact hg0 (hPF_inj (h0.trans (map_zero _).symm))
  have hloc' : ∀ a : A, ∃ f g : P, algebraMap P F g ≠ 0 ∧
      algebraMap A F a * algebraMap P F g = algebraMap P F f := by
    intro a
    obtain ⟨f, g, hg, hfg⟩ := hloc a
    refine ⟨f, g, hne g hg, ?_⟩
    rw [IsScalarTower.algebraMap_apply P A F g, IsScalarTower.algebraMap_apply P A F f, ← map_mul, hfg]
  haveI : IsFractionRing P F := by
    haveI : FaithfulSMul P F := (faithfulSMul_iff_algebraMap_injective P F).2 hPF_inj
    refine IsFractionRing.of_field P F (fun z => ?_)
    obtain ⟨a, a', -, rfl⟩ := IsFractionRing.div_surjective (A := A) z
    obtain ⟨f, g, hg, e1⟩ := hloc' a
    obtain ⟨f', g', hg', e2⟩ := hloc' a'
    refine ⟨f * g', g * f', ?_⟩
    rw [map_mul, map_mul, ← e1, ← e2]
    rw [show algebraMap A F a * algebraMap P F g * algebraMap P F g' /
        (algebraMap P F g * (algebraMap A F a' * algebraMap P F g')) =
        algebraMap A F a * (algebraMap P F g * algebraMap P F g') /
        (algebraMap A F a' * (algebraMap P F g * algebraMap P F g')) by ring]
    rw [mul_div_mul_right _ _ (mul_ne_zero hg hg')]
  have key : ∀ π : P, Prime π → ¬ IsUnit (algebraMap P A π) →
      ∃ f s : P, ¬ π ∣ s ∧ algebraMap P F s *
        Algebra.trace F L (c * (Matrix.of fun k l => E k (b l)).det) = algebraMap P F f := by
    intro π hπ hπu
    obtain ⟨j, fj, hfj, hj⟩ := hjac π hπ
    set p : Ideal P := Ideal.span {π} with hp
    haveI hpp : p.IsPrime := (Ideal.span_singleton_prime hπ.ne_zero).2 hπ
    let R : Subalgebra P F :=
      Localization.subalgebra.ofField F p.primeCompl p.primeCompl_le_nonZeroDivisors
    haveI : IsScalarTower R F L := inferInstance
    haveI : IsScalarTower P R L := inferInstance
    haveI : IsLocalization.AtPrime R p := inferInstance
    have hr : ∀ a : A, algebraMap A L a ∈ (algebraMap R L).range := by
      intro a
      obtain ⟨f, g, hg, hfg⟩ := hloc a
      have hgp : g ∈ p.primeCompl := by
        intro hgmem
        apply hπu
        obtain ⟨q, rfl⟩ := Ideal.mem_span_singleton'.1 hgmem
        rw [map_mul] at hg
        exact isUnit_of_mul_isUnit_right hg
      refine ⟨IsLocalization.mk' R f ⟨g, hgp⟩, ?_⟩
      have h1 : algebraMap R F (IsLocalization.mk' R f ⟨g, hgp⟩) * algebraMap P F g = algebraMap P F f := by
        rw [IsScalarTower.algebraMap_apply P R F g, IsScalarTower.algebraMap_apply P R F f, ← map_mul,
          IsLocalization.mk'_spec]
      have h2 : algebraMap A F a * algebraMap P F g = algebraMap P F f := by
        rw [IsScalarTower.algebraMap_apply P A F g, IsScalarTower.algebraMap_apply P A F f, ← map_mul, hfg]
      have h3 : algebraMap R F (IsLocalization.mk' R f ⟨g, hgp⟩) = algebraMap A F a :=
        mul_right_cancel₀ (hne g hg) (h1.trans h2.symm)
      show algebraMap F L (algebraMap R F _) = _
      rw [h3, ← IsScalarTower.algebraMap_apply A F L]
    have hcR := integral_of_range hr c hc
    have hbR : ∀ l, IsIntegral R (b l) := fun l => integral_of_range hr (b l) (hb l)
    have hnatR : ∀ m : ℕ, m ≠ 0 → IsUnit (m : R) := fun m hm => by
      simpa using (hnat m hm).map (algebraMap P R)
    exact at_prime_abs (R := R) π hπ p hp E hE j fj hfj hj hnatR c hcR b hbR
  obtain ⟨n0, d0, hrel, hx0⟩ := IsFractionRing.exists_reduced_fraction (A := P)
    (Algebra.trace F L (c * (Matrix.of fun k l => E k (b l)).det))
  have hd0 : (d0 : P) ≠ 0 := nonZeroDivisors.coe_ne_zero d0
  have hxd : Algebra.trace F L (c * (Matrix.of fun k l => E k (b l)).det) * algebraMap P F d0 =
      algebraMap P F n0 := by
    rw [← hx0]
    exact IsLocalization.mk'_spec F n0 d0
  by_cases hu : IsUnit (algebraMap P A d0)
  · obtain ⟨u, hu'⟩ := hu
    refine ⟨algebraMap P A n0 * ((u⁻¹ : Aˣ) : A), ?_⟩
    have hdF : algebraMap A F (algebraMap P A d0) = algebraMap P F d0 :=
      (IsScalarTower.algebraMap_apply P A F d0).symm
    have hnF : algebraMap A F (algebraMap P A n0) = algebraMap P F n0 :=
      (IsScalarTower.algebraMap_apply P A F n0).symm
    have hinv : algebraMap A F ((u⁻¹ : Aˣ) : A) * algebraMap P F d0 = 1 := by
      rw [← hdF, ← hu', ← map_mul, Units.inv_mul, map_one]
    rw [map_mul, hnF, ← hxd, mul_assoc, mul_comm (algebraMap P F _), hinv, mul_one]
  · obtain ⟨π, hπ, hπd, hπu⟩ := exists_prime_dvd_not_unit (algebraMap P A) (d0 : P) hd0 hu
    obtain ⟨f, s, hs, hfs⟩ := key π hπ hπu
    exfalso
    have h1 : algebraMap P F (s * n0) = algebraMap P F (f * d0) := by
      rw [map_mul, map_mul, ← hxd, ← hfs]
      ring
    have h2 := hPF_inj h1
    have hπn : π ∣ n0 := by
      have : π ∣ s * n0 := by
        rw [h2]
        exact dvd_mul_of_dvd_right hπd f
      exact (hπ.dvd_or_dvd this).resolve_left hs
    exact hπ.not_isUnit (hrel hπn hπd)
end

end GlobalTheory.CompanionTheory.TraceJac

namespace GlobalTheory.CompanionTheory.TraceJac

theorem deriv_aeval_mv {K L : Type*} [Field K] [Field L] [Algebra K L] {d : ℕ} (τ : Fin d → L)
    (D : Derivation K L L) (k : Fin d) (hD : ∀ j, D (τ j) = if k = j then 1 else 0)
    (f : MvPolynomial (Fin d) K) :
    D (MvPolynomial.aeval τ f) = MvPolynomial.aeval τ (MvPolynomial.pderiv k f) := by
  induction f using MvPolynomial.induction_on
  next a =>
    simp
  next p q hp hq =>
    simp only [map_add (f := _), hp, hq]
  next p i hp =>
    simp only [map_mul, Derivation.leibniz, hp, MvPolynomial.aeval_X, hD, smul_eq_mul,
      MvPolynomial.pderiv_X, map_add]
    by_cases hki : k = i
    · subst hki
      simp
    · simp [hki, Ne.symm hki]

theorem trace_jacobian_mem : ∀ (K : Type) [Field K] [CharZero K] (d : ℕ) (A : Type) [CommRing A] [IsDomain A] [Algebra K A] (t : Fin d → A), Function.Injective (MvPolynomial.aeval t : MvPolynomial (Fin d) K →ₐ[K] A) → (∀ a : A, ∃ f g : MvPolynomial (Fin d) K, IsUnit (MvPolynomial.aeval t g) ∧ a * MvPolynomial.aeval t g = MvPolynomial.aeval t f) → ∀ (B : Type) [CommRing B] [IsDomain B] [Algebra A B] [Algebra K B] [IsScalarTower K A B] [Module.Finite A B], Function.Injective (algebraMap A B) → ∀ (F L : Type) [Field F] [Field L] [Algebra A F] [IsFractionRing A F] [Algebra B L] [IsFractionRing B L] [Algebra F L] [Algebra A L] [IsScalarTower A F L] [IsScalarTower A B L] [Algebra K L] [IsScalarTower K B L] (D : Fin d → Derivation K L L), (∀ k j, D k (algebraMap A L (t j)) = if k = j then 1 else 0) → ∀ (c : B) (b : Fin d → B), ∃ a : A, algebraMap A F a = Algebra.trace F L (algebraMap B L c * (Matrix.of fun k l => D k (algebraMap B L (b l))).det) := by
  intro K _ _ d A _ _ _ t ht hloc B _ _ _ _ _ _ hAB F L _ _ _ _ _ _ _ _ _ _ _ _ D hD c b
  classical
  letI : Algebra (MvPolynomial (Fin d) K) A := (MvPolynomial.aeval t).toRingHom.toAlgebra
  letI : Algebra (MvPolynomial (Fin d) K) F :=
    ((algebraMap A F).comp (MvPolynomial.aeval t).toRingHom).toAlgebra
  letI : Algebra (MvPolynomial (Fin d) K) L :=
    ((algebraMap A L).comp (MvPolynomial.aeval t).toRingHom).toAlgebra
  haveI : IsScalarTower (MvPolynomial (Fin d) K) A F := IsScalarTower.of_algebraMap_eq (fun _ => rfl)
  haveI : IsScalarTower (MvPolynomial (Fin d) K) F L := IsScalarTower.of_algebraMap_eq (fun x => by
    show algebraMap A L _ = algebraMap F L (algebraMap A F _)
    exact IsScalarTower.algebraMap_apply A F L _)
  haveI : IsScalarTower K A L := IsScalarTower.of_algebraMap_eq (fun x => by
    rw [IsScalarTower.algebraMap_apply K B L, IsScalarTower.algebraMap_apply K A B,
      ← IsScalarTower.algebraMap_apply A B L])
  haveI : FiniteDimensional F L := finite_frac (A := A) (B := B)
  haveI : CharZero A := (RingHom.charZero_iff (algebraMap K A).injective).1 inferInstance
  haveI : CharZero F := (RingHom.charZero_iff (IsFractionRing.injective A F)).1 inferInstance
  haveI : Algebra.IsSeparable F L := inferInstance
  have hτ : ∀ f : MvPolynomial (Fin d) K, algebraMap (MvPolynomial (Fin d) K) L f =
      MvPolynomial.aeval (fun i => algebraMap A L (t i)) f := by
    intro f
    show algebraMap A L (MvPolynomial.aeval t f) = _
    rw [← MvPolynomial.aeval_algebraMap_apply]
    rfl
  have hE : ∀ (k : Fin d) (f : MvPolynomial (Fin d) K), ∃ f',
      ((D k).restrictScalars ℤ) (algebraMap (MvPolynomial (Fin d) K) L f) =
        algebraMap (MvPolynomial (Fin d) K) L f' := by
    intro k f
    refine ⟨MvPolynomial.pderiv k f, ?_⟩
    rw [hτ, hτ]
    exact deriv_aeval_mv _ (D k) k (fun j => hD k j) f
  have hjac : ∀ π : MvPolynomial (Fin d) K, Prime π → ∃ j fj,
      ((D j).restrictScalars ℤ) (algebraMap (MvPolynomial (Fin d) K) L π) =
        algebraMap (MvPolynomial (Fin d) K) L fj ∧ ¬ π ∣ fj := by
    intro π hπ
    obtain ⟨j, hj⟩ := exists_pderiv_not_dvd π hπ
    refine ⟨j, MvPolynomial.pderiv j π, ?_, hj⟩
    rw [hτ, hτ]
    exact deriv_aeval_mv _ (D j) j (fun i => hD j i) π
  have hnat : ∀ m : ℕ, m ≠ 0 → IsUnit (m : MvPolynomial (Fin d) K) := by
    intro m hm
    have hmK : IsUnit (m : K) := (Nat.cast_ne_zero.2 hm).isUnit
    simpa using hmK.map (MvPolynomial.C : K →+* MvPolynomial (Fin d) K)
  have hc : IsIntegral A (algebraMap B L c) :=
    (Algebra.IsIntegral.isIntegral (R := A) c).map (IsScalarTower.toAlgHom A B L)
  have hb : ∀ l, IsIntegral A (algebraMap B L (b l)) := fun l =>
    (Algebra.IsIntegral.isIntegral (R := A) (b l)).map (IsScalarTower.toAlgHom A B L)
  obtain ⟨a, ha⟩ := main_abs (P := MvPolynomial (Fin d) K) (A := A) (F := F) (L := L) (n := Fin d)
    ht hloc (fun k => (D k).restrictScalars ℤ) hE hjac hnat (algebraMap B L c) hc
    (fun l => algebraMap B L (b l)) hb
  exact ⟨a, ha⟩

end GlobalTheory.CompanionTheory.TraceJac
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPrimeDvdNotUnit =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FractionFieldTranscendenceBasisExt =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FractionFieldTranscendenceBasisExt", "h": "module\n\npublic import Mathlib.RingTheory.Derivation.Basic\npublic import Mathlib.RingTheory.Trace.Defs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPrimeDvdNotUnit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open MvPolynomial

namespace GlobalTheory.CompanionTheory.TraceJac

theorem det_completed_eq_minor {L : Type*} [Field L] {d m : ℕ} (κ : Fin m ↪ Fin d)
    (E : Fin d → L → L) (τ : Fin d → L) (hE : ∀ k j, E k (τ j) = if k = j then 1 else 0)
    (β : Fin m → L) :
    let e : Fin m ⊕ ↥(Set.range κ)ᶜ ≃ Fin d :=
      (Equiv.sumCongr (Equiv.ofInjective κ κ.injective) (Equiv.refl _)).trans
        (Equiv.Set.sumCompl (Set.range κ))
    (Matrix.of fun k l => E k ((Sum.elim β (fun j : ↥(Set.range κ)ᶜ => τ j)) (e.symm l))).det =
      (Matrix.of fun k l => E (κ k) (β l)).det := by
  classical
  intro e
  have he1 : ∀ i, e (Sum.inl i) = κ i := fun i => by simp [e]
  have he2 : ∀ j : ↥(Set.range κ)ᶜ, e (Sum.inr j) = j := fun j => by simp [e]
  rw [← Matrix.det_submatrix_equiv_self e]
  have hblock : (Matrix.of fun k l =>
      E k ((Sum.elim β (fun j : ↥(Set.range κ)ᶜ => τ j)) (e.symm l))).submatrix e e =
      Matrix.fromBlocks (Matrix.of fun k l => E (κ k) (β l)) 0
        (Matrix.of fun (j : ↥(Set.range κ)ᶜ) l => E j (β l)) 1 := by
    ext x y
    simp only [Matrix.submatrix_apply, Matrix.of_apply, Equiv.symm_apply_apply]
    rcases x with i | j <;> rcases y with i' | j'
    · simp [he1]
    · have hne : κ i ≠ (j' : Fin d) := fun h => j'.2 ⟨i, h⟩
      simp [he1, hE, hne]
    · simp [he2]
    · have : ((j : Fin d) = j') ↔ j = j' := Subtype.ext_iff.symm
      simp [he2, hE, Matrix.one_apply, this]
  rw [hblock, Matrix.det_fromBlocks_zero₁₂, Matrix.det_one, mul_one]

theorem trace_minor_mem : ∀ (K : Type) [Field K] [CharZero K] (d : ℕ) (A : Type) [CommRing A] [IsDomain A] [Algebra K A] (t : Fin d → A), Function.Injective (MvPolynomial.aeval t : MvPolynomial (Fin d) K →ₐ[K] A) → (∀ a : A, ∃ f g : MvPolynomial (Fin d) K, IsUnit (MvPolynomial.aeval t g) ∧ a * MvPolynomial.aeval t g = MvPolynomial.aeval t f) → ∀ (B : Type) [CommRing B] [IsDomain B] [Algebra A B] [Algebra K B] [IsScalarTower K A B] [Module.Finite A B], Function.Injective (algebraMap A B) → ∀ (F L : Type) [Field F] [Field L] [Algebra A F] [IsFractionRing A F] [Algebra B L] [IsFractionRing B L] [Algebra F L] [Algebra A L] [IsScalarTower A F L] [IsScalarTower A B L] [Algebra K L] [IsScalarTower K B L] (D : Fin d → Derivation K L L), (∀ k j, D k (algebraMap A L (t j)) = if k = j then 1 else 0) → ∀ (m : ℕ) (κ : Fin m ↪ Fin d) (c : B) (b : Fin m → B), ∃ a : A, algebraMap A F a = Algebra.trace F L (algebraMap B L c * (Matrix.of fun k l => D (κ k) (algebraMap B L (b l))).det) := by
  intro K _ _ d A _ _ _ t ht hloc B _ _ _ _ _ _ hB F L _ _ _ _ _ _ _ _ _ _ _ _ D hD m κ c b
  classical
  let e : Fin m ⊕ ↥(Set.range κ)ᶜ ≃ Fin d :=
    (Equiv.sumCongr (Equiv.ofInjective κ κ.injective) (Equiv.refl _)).trans
      (Equiv.Set.sumCompl (Set.range κ))
  let b' : Fin d → B := fun l =>
    (Sum.elim b (fun j : ↥(Set.range κ)ᶜ => algebraMap A B (t j))) (e.symm l)
  obtain ⟨a, ha⟩ := trace_jacobian_mem K d A t ht hloc B hB F L D hD c b'
  refine ⟨a, ha.trans ?_⟩
  have hdet := det_completed_eq_minor κ (fun k x => D k x) (fun j => algebraMap A L (t j)) hD
    (fun l => algebraMap B L (b l))
  have hmat : (Matrix.of fun k l => D k (algebraMap B L (b' l))) =
      Matrix.of fun k l => D k ((Sum.elim (fun l => algebraMap B L (b l))
        (fun j : ↥(Set.range κ)ᶜ => algebraMap A L (t j))) (e.symm l)) := by
    ext k l
    simp only [Matrix.of_apply, b']
    rcases e.symm l with i | j
    · simp
    · simp [← IsScalarTower.algebraMap_apply A B L]
  rw [hmat]
  exact congrArg (fun x => Algebra.trace F L (algebraMap B L c * x)) hdet

end GlobalTheory.CompanionTheory.TraceJac
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FractionFieldTranscendenceBasisExt =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.TraceChart =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.TraceChart", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.RaTpowSinglePow\npublic import Mathlib.RingTheory.IntegralClosure.IsIntegral.Defs\npublic import Mathlib.RingTheory.Trace.Defs\npublic import Mathlib.RingTheory.Derivation.Basic\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FractionFieldTranscendenceBasisExt\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.TorusMemFldF\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PicardGroup\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

namespace CrystallineSemistableComparison.Pb

variable {K : Type} [Field K] [CharZero K] {R : Type} [CommRing R] [IsDomain R] [Algebra K R] {n : ℕ}

theorem trace_chart (t : Fin (n + 1) → Rˣ) (S : Finset (Fin (n + 2))) (u : Fin (n + 1) → torusS K t S)
    (hinj : Function.Injective (MvPolynomial.aeval u : MvPolynomial (Fin (n + 1)) K →ₐ[K] torusS K t S))
    (hloc : ∀ a : torusS K t S, ∃ f g : MvPolynomial (Fin (n + 1)) K,
      IsUnit (MvPolynomial.aeval u g) ∧ a * MvPolynomial.aeval u g = MvPolynomial.aeval u f)
    (hfr : ∀ k, ∃ a' ∈ torusS K t S, a' ≠ 0 ∧ (t k : R) * a' ∈ torusS K t S)
    (B' : Subalgebra K R) (hTB : torusS K t S ≤ B') (hFG : B'.FG) (hInt : ∀ b ∈ B', IsIntegral (torusS K t S) b)
    (hFrac : ∀ r : R, ∃ b ∈ B', ∃ b' ∈ B', b' ≠ 0 ∧ r * b' = b)
    (E : Fin (n + 1) → Derivation K R R) (hE : ∀ k j, E k (u j : R) = if k = j then 1 else 0)
    {m : ℕ} (κ : Fin m → Fin (n + 1)) (hκ : Function.Injective κ) :
    ∀ y ∈ jacS B' E κ, ∃ a ∈ torusS K t S,
      algebraMap (fldF K t) (FractionRing R)
        (Algebra.trace (fldF K t) (FractionRing R) (algebraMap R (FractionRing R) y)) =
          algebraMap R (FractionRing R) a := by
  classical

  have hι : Function.Injective (algebraMap R (FractionRing R)) := IsFractionRing.injective R (FractionRing R)
  have hιne : ∀ r : R, r ≠ 0 → algebraMap R (FractionRing R) r ≠ 0 := fun r hr h =>
    hr (hι (h.trans (map_zero _).symm))

  letI : Algebra (torusS K t S) B' := (Subalgebra.inclusion hTB).toRingHom.toAlgebra
  haveI : IsScalarTower K (torusS K t S) B' := IsScalarTower.of_algebraMap_eq fun _ => rfl
  have hAB : Function.Injective (algebraMap (torusS K t S) B') := Subalgebra.inclusion_injective hTB
  let f : B' →ₐ[torusS K t S] R := { B'.val with commutes' := fun _ => rfl }
  haveI : Algebra.IsIntegral (torusS K t S) B' :=
    ⟨fun b => (isIntegral_algHom_iff f Subtype.val_injective).mp (hInt b b.2)⟩
  haveI : Algebra.FiniteType K B' := Subalgebra.fg_iff_finiteType B' |>.mp hFG
  haveI : Algebra.FiniteType (torusS K t S) B' := Algebra.FiniteType.of_restrictScalars_finiteType K _ _
  haveI : Module.Finite (torusS K t S) B' := Algebra.IsIntegral.finite

  let ψ : torusS K t S →+* fldF K t :=
    { toFun := fun a => ⟨algebraMap R (FractionRing R) a, torus_mem_fldF t S a a.2⟩
      map_one' := Subtype.ext (map_one _)
      map_mul' := fun a b => Subtype.ext (map_mul _ (a : R) b)
      map_zero' := Subtype.ext (map_zero _)
      map_add' := fun a b => Subtype.ext (map_add _ (a : R) b) }
  letI : Algebra (torusS K t S) (fldF K t) := ψ.toAlgebra
  have hψ : ∀ a : torusS K t S, ((algebraMap (torusS K t S) (fldF K t) a : fldF K t) : FractionRing R) =
      algebraMap R (FractionRing R) a := fun _ => rfl
  have hψinj : Function.Injective (algebraMap (torusS K t S) (fldF K t)) := fun a b h =>
    Subtype.ext (hι (by rw [← hψ, ← hψ, h]))

  have hQ : ∀ z ∈ fldF K t, ∃ x y : torusS K t S, algebraMap R (FractionRing R) (y : R) ≠ 0 ∧
      z = algebraMap R (FractionRing R) x / algebraMap R (FractionRing R) y := fun z hz => by
    induction hz using IntermediateField.adjoin_induction with
    | mem x hx =>
      obtain ⟨k, rfl⟩ := hx
      obtain ⟨a', ha', ha'0, hta⟩ := hfr k
      refine ⟨⟨_, hta⟩, ⟨a', ha'⟩, hιne _ ha'0, ?_⟩
      simp only [map_mul]
      rw [mul_div_assoc, div_self (hιne _ ha'0), mul_one]
    | algebraMap c =>
      refine ⟨algebraMap K _ c, 1, by simpa using one_ne_zero, ?_⟩
      simp [IsScalarTower.algebraMap_apply K R (FractionRing R)]
    | add x y _ _ hx hy =>
      obtain ⟨x1, x2, hx2, rfl⟩ := hx
      obtain ⟨y1, y2, hy2, rfl⟩ := hy
      refine ⟨x1 * y2 + y1 * x2, x2 * y2, by simpa using mul_ne_zero hx2 hy2, ?_⟩
      simp only [Subalgebra.coe_add, Subalgebra.coe_mul, map_add (f := _), map_mul]
      rw [div_add_div _ _ hx2 hy2]
      ring
    | inv x _ hx =>
      obtain ⟨x1, x2, hx2, rfl⟩ := hx
      by_cases h1 : algebraMap R (FractionRing R) (x1 : R) = 0
      · exact ⟨0, 1, by simpa using one_ne_zero, by simp [h1]⟩
      · exact ⟨x2, x1, h1, by rw [inv_div]⟩
    | mul x y _ _ hx hy =>
      obtain ⟨x1, x2, hx2, rfl⟩ := hx
      obtain ⟨y1, y2, hy2, rfl⟩ := hy
      refine ⟨x1 * y1, x2 * y2, by simpa using mul_ne_zero hx2 hy2, ?_⟩
      simp only [Subalgebra.coe_mul, map_mul]
      rw [div_mul_div_comm]
  haveI : FaithfulSMul (torusS K t S) (fldF K t) := (faithfulSMul_iff_algebraMap_injective _ _).mpr hψinj
  haveI : IsFractionRing (torusS K t S) (fldF K t) := IsFractionRing.of_field _ _ fun z => by
    obtain ⟨x, y, hy, hz⟩ := hQ z z.2
    refine ⟨x, y, Subtype.ext ?_⟩
    rw [IntermediateField.coe_div, hψ, hψ, ← hz]

  have hBL : Function.Injective (algebraMap B' (FractionRing R)) := fun a b h => Subtype.ext (hι h)
  haveI : FaithfulSMul B' (FractionRing R) := (faithfulSMul_iff_algebraMap_injective _ _).mpr hBL
  haveI : IsFractionRing B' (FractionRing R) := IsFractionRing.of_field _ _ fun z => by
    obtain ⟨r, s, hs, rfl⟩ := IsFractionRing.div_surjective (A := R) z
    obtain ⟨b1, hb1, b1', hb1', hb1'0, hr⟩ := hFrac r
    obtain ⟨b2, hb2, b2', hb2', hb2'0, hs'⟩ := hFrac s
    have hs0 : s ≠ 0 := nonZeroDivisors.ne_zero hs
    have hb20 : b2 ≠ 0 := by rw [← hs']; exact mul_ne_zero hs0 hb2'0
    refine ⟨⟨b1 * b2', mul_mem hb1 hb2'⟩, ⟨b1' * b2, mul_mem hb1' hb2⟩, ?_⟩
    change _ = algebraMap R (FractionRing R) (b1 * b2') / algebraMap R (FractionRing R) (b1' * b2)
    have hden : algebraMap R (FractionRing R) (b1' * b2) ≠ 0 := hιne _ (mul_ne_zero hb1'0 hb20)
    rw [div_eq_div_iff (hιne _ hs0) hden, ← map_mul, ← map_mul, ← hr, ← hs']
    congr 1
    ring
  haveI : IsScalarTower (torusS K t S) (fldF K t) (FractionRing R) :=
    IsScalarTower.of_algebraMap_eq fun _ => rfl
  haveI : IsScalarTower (torusS K t S) B' (FractionRing R) := IsScalarTower.of_algebraMap_eq fun _ => rfl

  choose Dl hDl using fun k => frac_deriv (E k)
  have hDu : ∀ k j, Dl k (algebraMap (torusS K t S) (FractionRing R) (u j)) = if k = j then 1 else 0 := by
    intro k j
    change Dl k (algebraMap R (FractionRing R) (u j : R)) = _
    rw [hDl, hE]
    split_ifs <;> simp
  intro y hy
  induction hy using AddSubgroup.closure_induction with
  | mem y hy =>
    obtain ⟨b, bs, rfl⟩ := hy
    obtain ⟨a, ha⟩ := _root_.GlobalTheory.CompanionTheory.TraceJac.trace_minor_mem K (n + 1) (torusS K t S) u hinj hloc B' hAB (fldF K t) (FractionRing R)
      Dl hDu m ⟨κ, hκ⟩ b bs
    refine ⟨a, a.2, ?_⟩
    have hX : algebraMap R (FractionRing R) ((b : R) * (Matrix.of fun k l => E (κ k) (bs l : R)).det) =
        algebraMap B' (FractionRing R) b *
          (Matrix.of fun k l => Dl ((⟨κ, hκ⟩ : Fin m ↪ Fin (n + 1)) k) (algebraMap B' (FractionRing R) (bs l))).det := by
      rw [map_mul, RingHom.map_det]
      refine congrArg₂ (· * ·) rfl (congrArg Matrix.det ?_)
      ext k l
      simp only [RingHom.mapMatrix_apply, Matrix.map_apply, Matrix.of_apply]
      rw [← hDl]
      rfl
    rw [← hψ, ha, hX]
    rfl
  | zero => exact ⟨0, zero_mem _, by simp⟩
  | add x y _ _ hx hy =>
    obtain ⟨a, ha, hxa⟩ := hx
    obtain ⟨b, hb, hyb⟩ := hy
    exact ⟨a + b, add_mem ha hb, by simp only [map_add (f := _)] at hxa hyb ⊢; rw [hxa, hyb]⟩
  | neg x _ hx =>
    obtain ⟨a, ha, hxa⟩ := hx
    exact ⟨-a, neg_mem ha, by simp only [map_neg] at hxa ⊢; rw [hxa]⟩

end CrystallineSemistableComparison.Pb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.TraceChart =====
