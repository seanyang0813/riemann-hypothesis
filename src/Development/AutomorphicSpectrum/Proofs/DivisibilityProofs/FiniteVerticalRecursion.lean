module

public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.LaurentCechNerveLevelSpecTensorPower
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PVocabMultiHomog
public import GroundTheory.HeightsAndTheta.Heights.HeightComparison.GeoNum
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterDivSupp
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ArithmeticHilbertSamuelLowerBound
public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.LocalAtPlaces
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PVocabDivCycle
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterPCProof
import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.VerticalDivisorGeometricNumber, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FiniteVerticalRecursion

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.VerticalDivisorGeometricNumber =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.VerticalDivisorGeometricNumber", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.LaurentCechNerveLevelSpecTensorPower\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PVocabMultiHomog\npublic import GroundTheory.HeightsAndTheta.Heights.HeightComparison.GeoNum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterDivSupp\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterPCProof\nimport Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ArithmeticHilbertSamuelLowerBound\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GroundTheory.Heights₂.Heights.NumbersDVR GlobalTheory.CompanionTheory.Ar.Num GlobalTheory.CompanionTheory.Ar.Top GroundTheory.Heights₂.Heights.ModelLeaves
open ReciprocityTheory.ChartRestriction.G.Geo (HermLine IsSmoothHerm IsArithVar IsHorizontal mcPts mCoordIdeal IsIntersectionFamily IsIntersectionSystem IntersectionSystem ptsIntegral geoNum charOf recR arInt ChartBundle chartRing)

namespace GlobalTheory.CompanionTheory.Ar.Num.GeoNumFp

theorem charOf_eq_of_mem {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)]
    {W : Ideal (MRing ι ℤ)} (hW : W.IsPrime) {p : ℕ} (hp : p.Prime)
    (hpW : (C (p : ℤ) : MRing ι ℤ) ∈ W) : ¬ IsHorizontal W ∧ charOf W = p := by
  have hv : ¬ IsHorizontal W := by
    intro h
    have hm : (p : ℤ) ∈ W.comap (C : ℤ →+* MRing ι ℤ) := Ideal.mem_comap.mpr hpW
    rw [show W.comap (C : ℤ →+* MRing ι ℤ) = ⊥ from h, Ideal.mem_bot] at hm
    exact hp.ne_zero (by exact_mod_cast hm)
  refine ⟨hv, ?_⟩
  have hq : (charOf W).Prime := ReciprocityTheory.ChartRestriction.G.Geo.charOf_prime hW hv
  have hm : (p : ℤ) ∈ W.comap (C : ℤ →+* MRing ι ℤ) := Ideal.mem_comap.mpr hpW
  have hd : Submodule.IsPrincipal.generator (W.comap (C : ℤ →+* MRing ι ℤ)) ∣ (p : ℤ) :=
    (Submodule.IsPrincipal.mem_iff_generator_dvd _).mp hm
  have hd' : charOf W ∣ p := by
    have := Int.natAbs_dvd_natAbs.mpr hd
    simpa [charOf] using this
  exact (Nat.prime_dvd_prime_iff_eq hq hp).mp hd'

theorem geoNum_eq_intNum : ∀ (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (P : Ideal (MRing ι ℤ)) (D : ℕ), IsArithVar P (D + 1) → ∀ (a : K → ℕ) (f : MRing ι ℤ), IsMultiHomog f a → f ∉ P → ∀ W, divCycle P f W ≠ 0 → ∀ (p : ℕ) [Fact p.Prime], (C (p : ℤ) : MRing ι ℤ) ∈ W → charOf W = p ∧ ¬ IsHorizontal W ∧ ∀ L : Fin D → K → ℤ, geoNum D W L = intNum (ZMod p) (extTo (ZMod p) W) L := by
  intro K _ _ ι _ P D hP a f hf hfP W hW p _ hpW
  have hmem : W ∈ (P ⊔ Ideal.span {f}).minimalPrimes ∧ IsRelevant W := by
    by_contra h
    exact hW (by simp only [divCycle]; exact dif_neg h)
  obtain ⟨hWmin, hWrel⟩ := hmem
  obtain ⟨-, ⟨hPp, hPh, -⟩, -, hPdim⟩ := hP
  have hWp : W.IsPrime := hWmin.1.1
  have hfa : ReciprocityTheory.ChartRestriction.G.Geo.IsMultiHomog f a := (VocabMultiHomog.proof ℤ K ι f a).2 hf
  have hWmh : ReciprocityTheory.ChartRestriction.G.Geo.IsMultiHomogIdeal W :=
    ReciprocityTheory.ChartRestriction.G.Geo.isMultiHomogIdeal_of_mem_minimalPrimes hPh hfa hWmin
  have := hPp
  have h1 := ReciprocityTheory.ChartRestriction.G.Geo.dim_quot_minimal_add_one P W f hfP hWmin
  rw [hPdim] at h1
  have hdim : ringKrullDim (MRing ι ℤ ⧸ W) = ((D + Fintype.card K : ℕ) : WithBot ℕ∞) :=
    ReciprocityTheory.ChartRestriction.G.Geo.withBot_eq_of_add_one
      (by rw [h1, show D + 1 + Fintype.card K = D + Fintype.card K + 1 by omega])
  obtain ⟨hv, hc⟩ := charOf_eq_of_mem hWp (Fact.out : p.Prime) hpW
  exact ⟨hc, hv, fun L =>
    (GroundTheory.Heights₂.Heights.Bridge.intNum_map_eq_geoNum p D W ⟨hWp, hWmh, hWrel⟩ hpW hdim L).symm⟩

end GlobalTheory.CompanionTheory.Ar.Num.GeoNumFp
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.VerticalDivisorGeometricNumber =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FiniteVerticalRecursion =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FiniteVerticalRecursion", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.LocalAtPlaces\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.LaurentCechNerveLevelSpecTensorPower\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.VerticalDivisorGeometricNumber\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PVocabDivCycle\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GroundTheory.Heights₂.Heights.NumbersDVR GlobalTheory.CompanionTheory.Ar.Num GlobalTheory.CompanionTheory.Ar.Top GroundTheory.Heights₂.Heights.ModelLeaves
open ReciprocityTheory.ChartRestriction.G.Geo (HermLine IsSmoothHerm IsArithVar IsHorizontal mcPts mCoordIdeal IsIntersectionFamily IsIntersectionSystem IntersectionSystem ptsIntegral geoNum charOf recR arInt ChartBundle chartRing)

namespace GlobalTheory.CompanionTheory.Ar.Num.RecSplit

section SlopeTestRemainingChoices

variable {K : Type} {ι : K → Type}

theorem intNumL_ofFn [DecidableEq K] (F : Type) [Field F] (Q : Ideal (MRing ι F)) {n : ℕ}
    (b : Fin n → K → ℤ) : intNumL F Q (List.ofFn b) = intNum F Q b := by
  unfold intNumL intNum mixedDiff
  rw [List.ofFn_get]

theorem exists_prime_mem (W : Ideal (MRing ι ℤ)) (hW : W.IsPrime) (h : ¬ IsHorizontal W) :
    ∃ p : Nat.Primes, (C ((p : ℕ) : ℤ) : MRing ι ℤ) ∈ W := by
  set J : Ideal ℤ := W.comap (C : ℤ →+* MRing ι ℤ) with hJ
  have hJp : J.IsPrime := Ideal.comap_isPrime _ _
  have hJ0 : J ≠ ⊥ := h
  obtain ⟨g, hg⟩ : ∃ g : ℤ, J = Ideal.span {g} := ⟨_, (Ideal.span_singleton_generator J).symm⟩
  have hg0 : g ≠ 0 := by
    rintro rfl
    exact hJ0 (by simpa using hg)
  have hgp : Prime g := (Ideal.span_singleton_prime hg0).1 (hg ▸ hJp)
  refine ⟨⟨g.natAbs, Int.prime_iff_natAbs_prime.1 hgp⟩, ?_⟩
  have : ((g.natAbs : ℕ) : ℤ) ∈ J := by
    rw [hg]
    exact Ideal.mem_span_singleton.2 (Int.dvd_natAbs.2 dvd_rfl)
  exact this

variable [Fintype K] [∀ k, Fintype (ι k)]

theorem divCycle_eq_zero_of_not_mem (P : Ideal (MRing ι ℤ)) (s : MRing ι ℤ) (W : Ideal (MRing ι ℤ))
    (h : W ∉ ReciprocityTheory.ChartRestriction.G.Geo.divSupp P s) : divCycle P s W = 0 := by
  unfold divCycle
  exact dif_neg h

theorem mem_of_divCycle_ne (P : Ideal (MRing ι ℤ)) (s : MRing ι ℤ) (W : Ideal (MRing ι ℤ))
    (h : divCycle P s W ≠ 0) : W ∈ ReciprocityTheory.ChartRestriction.G.Geo.divSupp P s := by
  by_contra hc
  exact h (divCycle_eq_zero_of_not_mem P s W hc)

theorem multAt_eq (P : Ideal (MRing ι ℤ)) (s : MRing ι ℤ) (W : Ideal (MRing ι ℤ))
    (h : W ∈ ReciprocityTheory.ChartRestriction.G.Geo.divSupp P s) :
    ((ReciprocityTheory.ChartRestriction.G.Geo.multAt (P ⊔ Ideal.span {s}) W : ℕ) : ℤ) = divCycle P s W := by
  rw [← VocabDivCycle.proof ℤ K ι P s W]
  congr 1
  classical
  show _ = (if W ∈ ReciprocityTheory.ChartRestriction.G.Geo.divSupp P s then
    ReciprocityTheory.ChartRestriction.G.Geo.multAt (P ⊔ Ideal.span {s}) W else 0)
  rw [if_pos h]

end SlopeTestRemainingChoices

section Main

variable {K : Type} [Fintype K] [DecidableEq K] {ι : K → Type} [∀ k, Fintype (ι k)]


open Classical in
noncomputable def vertTerm (p : Nat.Primes) (W : Ideal (MRing ι ℤ)) (l : List (K → ℤ)) : ℤ :=
  haveI : Fact (p : ℕ).Prime := ⟨p.2⟩
  if (C ((p : ℕ) : ℤ) : MRing ι ℤ) ∈ W then intNumL (ZMod p) (extTo (ZMod p) W) l else 0

theorem vertTerm_of_not_mem (p : Nat.Primes) (W : Ideal (MRing ι ℤ)) (l : List (K → ℤ))
    (h : (C ((p : ℕ) : ℤ) : MRing ι ℤ) ∉ W) : vertTerm p W l = 0 := by
  unfold vertTerm
  exact if_neg h

theorem vertAt_eq_sum (p : Nat.Primes) (P : Ideal (MRing ι ℤ)) (s : MRing ι ℤ) (l : List (K → ℤ))
    (T : Finset (Ideal (MRing ι ℤ))) (hT : Function.support (divCycle P s) ⊆ T) :
    vertAt p P s l = ∑ W ∈ T, divCycle P s W * vertTerm p W l := by
  unfold vertAt cycEval
  exact finsum_eq_sum_of_support_subset _ fun W hW => hT (left_ne_zero_of_mul hW)

theorem key_of_mem {P : Ideal (MRing ι ℤ)} {D : ℕ} (hP : IsArithVar P (D + 1)) {a : K → ℕ}
    {s : MRing ι ℤ} (hs : IsMultiHomog s a) (hsP : s ∉ P) (b : Fin D → K → ℤ)
    {W : Ideal (MRing ι ℤ)} (hW : divCycle P s W ≠ 0) (p : Nat.Primes)
    (hp : (C ((p : ℕ) : ℤ) : MRing ι ℤ) ∈ W) :
    charOf W = p ∧ ¬ IsHorizontal W ∧ geoNum D W b = vertTerm p W (List.ofFn b) := by
  haveI : Fact (p : ℕ).Prime := ⟨p.2⟩
  obtain ⟨h1, h2, h3⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Num.GeoNumFp.geoNum_eq_intNum K ι P D hP a s hs hsP W hW (p : ℕ) hp
  refine ⟨h1, h2, ?_⟩
  rw [h3 b]
  unfold vertTerm
  rw [if_pos hp, intNumL_ofFn]

theorem support_term_subset {P : Ideal (MRing ι ℤ)} {D : ℕ} (hP : IsArithVar P (D + 1)) {a : K → ℕ}
    {s : MRing ι ℤ} (hs : IsMultiHomog s a) (hsP : s ∉ P) (b : Fin D → K → ℤ)
    (W : Ideal (MRing ι ℤ)) {p : Nat.Primes} (hW : divCycle P s W ≠ 0)
    (hp : vertTerm p W (List.ofFn b) ≠ 0) : charOf W = p := by
  by_cases hm : (C ((p : ℕ) : ℤ) : MRing ι ℤ) ∈ W
  · exact (key_of_mem hP hs hsP b hW p hm).1
  · exact absurd (vertTerm_of_not_mem p W _ hm) hp


open Classical in
theorem finsum_term {P : Ideal (MRing ι ℤ)} {D : ℕ} (hP : IsArithVar P (D + 1)) {a : K → ℕ}
    {s : MRing ι ℤ} (hs : IsMultiHomog s a) (hsP : s ∉ P) (b : Fin D → K → ℤ)
    (W : Ideal (MRing ι ℤ)) :
    ∑ᶠ p : Nat.Primes, Real.log (p : ℕ) * ((divCycle P s W * vertTerm p W (List.ofFn b) : ℤ) : ℝ) =
      (divCycle P s W : ℝ) *
        (if IsHorizontal W then 0 else (geoNum D W b : ℝ) * Real.log (charOf W)) := by
  by_cases hW : divCycle P s W = 0
  · simp [hW]
  by_cases hh : IsHorizontal W
  · rw [if_pos hh, mul_zero]
    refine finsum_eq_zero_of_forall_eq_zero fun p => ?_
    have : vertTerm p W (List.ofFn b) = 0 := by
      by_contra hne
      by_cases hm : (C ((p : ℕ) : ℤ) : MRing ι ℤ) ∈ W
      · exact (key_of_mem hP hs hsP b hW p hm).2.1 hh
      · exact hne (vertTerm_of_not_mem p W _ hm)
    simp [this]
  · rw [if_neg hh]
    have hWp : W.IsPrime := (mem_of_divCycle_ne P s W hW).1.1.1
    obtain ⟨q, hq⟩ := exists_prime_mem W hWp hh
    obtain ⟨hc, -, hg⟩ := key_of_mem hP hs hsP b hW q hq
    rw [finsum_eq_single _ q]
    · rw [hc, hg]
      push_cast
      ring
    · intro p hpq
      have : vertTerm p W (List.ofFn b) = 0 := by
        by_contra hne
        have h2 := support_term_subset hP hs hsP b W hW hne
        exact hpq (Nat.Primes.coe_nat_injective (h2.symm.trans hc))
      simp [this]

theorem recR_split : ∀ (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (P : Ideal (MRing ι ℤ)) (D : ℕ), IsArithVar P (D + 1) → ∀ (I : Ideal (MRing ι ℤ) → (n : ℕ) → (Fin n → HermLine ι) → ℝ) (a : K → ℕ) (s : MRing ι ℤ), IsMultiHomog s a → s ∉ P → ∀ (L : Fin D → HermLine ι) (A : HermLine ι), (Function.support fun p : Nat.Primes => vertAt p P s (List.ofFn fun j => (L j).a)).Finite ∧ recR I P L A s = (∑ᶠ W, (divCycle P s W : ℝ) * Set.indicator {W | IsHorizontal W} (fun W => I W D L) W) + (∑ᶠ p : Nat.Primes, Real.log (p : ℕ) * (vertAt p P s (List.ofFn fun j => (L j).a) : ℝ)) - arInt P s A L := by
  intro K _ _ ι _ P D hP I a s hs hsP L A
  classical
  set b : Fin D → K → ℤ := fun j => (L j).a with hb
  set T : Finset (Ideal (MRing ι ℤ)) := (ReciprocityTheory.ChartRestriction.G.Geo.divSupp_finite P s).toFinset with hT
  have hTm : ∀ W, W ∈ T ↔ W ∈ ReciprocityTheory.ChartRestriction.G.Geo.divSupp P s := fun W => by simp [hT]
  have hsub : Function.support (divCycle P s) ⊆ T := fun W hW =>
    (hTm W).2 (mem_of_divCycle_ne P s W hW)
  constructor
  · have hfin : ((fun W : Ideal (MRing ι ℤ) => charOf W) '' (T : Set _)).Finite :=
      T.finite_toSet.image _
    refine (hfin.preimage (Nat.Primes.coe_nat_injective.injOn)).subset fun p hp => ?_
    have hp' : vertAt p P s (List.ofFn b) ≠ 0 := hp
    rw [vertAt_eq_sum p P s _ T hsub] at hp'
    obtain ⟨W, hWT, hW⟩ := Finset.exists_ne_zero_of_sum_ne_zero hp'
    exact ⟨W, hWT, support_term_subset hP hs hsP b W (left_ne_zero_of_mul hW)
      (right_ne_zero_of_mul hW)⟩
  · have h1 : (∑ᶠ W ∈ ReciprocityTheory.ChartRestriction.G.Geo.divSupp P s,
          ((ReciprocityTheory.ChartRestriction.G.Geo.multAt (P ⊔ Ideal.span {s}) W : ℕ) : ℝ) *
            (if IsHorizontal W then I W D L else (geoNum D W b : ℝ) * Real.log (charOf W))) =
        ∑ W ∈ T, (divCycle P s W : ℝ) *
            (if IsHorizontal W then I W D L else (geoNum D W b : ℝ) * Real.log (charOf W)) := by
      rw [finsum_mem_eq_finite_toFinset_sum _ (ReciprocityTheory.ChartRestriction.G.Geo.divSupp_finite P s)]
      refine Finset.sum_congr rfl fun W hW => ?_
      rw [← multAt_eq P s W ((hTm W).1 hW)]
      norm_cast
    have h2 : (∑ᶠ W, (divCycle P s W : ℝ) * Set.indicator {W | IsHorizontal W} (fun W => I W D L) W) =
        ∑ W ∈ T, (divCycle P s W : ℝ) * Set.indicator {W | IsHorizontal W} (fun W => I W D L) W := by
      refine finsum_eq_sum_of_support_subset _ fun W hW => hsub ?_
      have := left_ne_zero_of_mul hW
      exact fun h0 => this (by simp [h0])
    have h3 : (∑ᶠ p : Nat.Primes, Real.log (p : ℕ) * (vertAt p P s (List.ofFn b) : ℝ)) =
        ∑ W ∈ T, (divCycle P s W : ℝ) *
          (if IsHorizontal W then 0 else (geoNum D W b : ℝ) * Real.log (charOf W)) := by
      have e : ∀ p : Nat.Primes, Real.log (p : ℕ) * (vertAt p P s (List.ofFn b) : ℝ) =
          ∑ W ∈ T, Real.log (p : ℕ) * ((divCycle P s W * vertTerm p W (List.ofFn b) : ℤ) : ℝ) := by
        intro p
        rw [vertAt_eq_sum p P s _ T hsub, Int.cast_sum, Finset.mul_sum]
      simp_rw [e]
      rw [finsum_sum_comm]
      · exact Finset.sum_congr rfl fun W _ => finsum_term hP hs hsP b W
      · intro W _
        refine ((Set.finite_singleton (charOf W)).preimage
          (Nat.Primes.coe_nat_injective.injOn)).subset fun p hp => ?_
        have hne := right_ne_zero_of_mul (show _ ≠ (0 : ℝ) from hp)
        have hne' : divCycle P s W * vertTerm p W (List.ofFn b) ≠ 0 := by exact_mod_cast hne
        exact (support_term_subset hP hs hsP b W (left_ne_zero_of_mul hne')
          (right_ne_zero_of_mul hne')).symm
    have h0 : recR I P L A s = (∑ᶠ W ∈ ReciprocityTheory.ChartRestriction.G.Geo.divSupp P s,
          ((ReciprocityTheory.ChartRestriction.G.Geo.multAt (P ⊔ Ideal.span {s}) W : ℕ) : ℝ) *
            (if IsHorizontal W then I W D L else (geoNum D W b : ℝ) * Real.log (charOf W))) -
        arInt P s A L := rfl
    rw [h0, h1, h2, h3, ← Finset.sum_add_distrib]
    congr 1
    refine Finset.sum_congr rfl fun W _ => ?_
    by_cases hh : IsHorizontal W
    · simp [hh, Set.indicator]
    · simp [hh, Set.indicator]

end Main

end GlobalTheory.CompanionTheory.Ar.Num.RecSplit
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FiniteVerticalRecursion =====
