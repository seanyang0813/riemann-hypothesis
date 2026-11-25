module

public import Mathlib.NumberTheory.Padics.Complex
public import Mathlib.RingTheory.DiscreteValuationRing.Basic
public import Formalism.ConjugateSelfDual.Statement
public import Formalism.LocalRingCardinality.DataHost
public import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow
import Formalism.PadicSubsetSums.CentralIdempotents.CentralIdempotentIntegral
import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc
public import Formalism.SharpRestriction.LevelLetterCocycles.ExistsIdealDenominator
import ReciprocityTheory.GaloisValuations.GlobalA

@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.BasicNotions

namespace Formalism.MainNotions.ExistsIdealDenominator

open Formalism.IrreducibleCountingLemmas.TW

section Dense

variable (l : ℕ) [Fact l.Prime]

theorem norm_l : ‖(l : ℂ_[l])‖ = (l : ℝ)⁻¹ := by
  have h := PadicComplex.norm_extends' l (l : ℚ_[l])
  rw [Padic.norm_p, map_natCast, PadicComplex.coe_natCast] at h
  exact h

theorem exists_norm_btwn (x y : ℝ) (hx : 0 ≤ x) (hxy : x < y) : ∃ a : ℂ_[l], x < ‖a‖ ∧ ‖a‖ < y := by
  have hl1 : (1 : ℝ) < l := by exact_mod_cast (Fact.out : l.Prime).one_lt
  have hl0 : (0 : ℝ) < l := lt_trans one_pos hl1
  have hy : 0 < y := lt_of_le_of_lt hx hxy
  set x' := max x (y / 2) with hx'
  have hx'0 : 0 < x' := lt_of_lt_of_le (half_pos hy) (le_max_right _ _)
  have hx'y : x' < y := max_lt hxy (half_lt_self hy)
  obtain ⟨q, hq1, hq2⟩ := exists_rat_btwn ((Real.logb_lt_logb_iff hl1 hx'0 hy).2 hx'y)
  obtain ⟨c, hc⟩ := IsAlgClosed.exists_pow_nat_eq (l : ℂ_[l]) q.den_pos
  have hcn : ‖c‖ ^ q.den = (l : ℝ)⁻¹ := by rw [← norm_pow, hc, norm_l]
  have hc' : ‖c‖ = ((l : ℝ)⁻¹) ^ ((q.den : ℝ)⁻¹) := by
    rw [← hcn, Real.pow_rpow_inv_natCast (norm_nonneg _) q.den_ne_zero]
  have hval : ‖c ^ (-q.num)‖ = (l : ℝ) ^ (q : ℝ) := by
    rw [norm_zpow, ← Real.rpow_intCast, hc', ← Real.rpow_mul (inv_nonneg.2 hl0.le),
      Real.inv_rpow hl0.le, ← Real.rpow_neg hl0.le]
    congr 1
    have hq : (q : ℝ) = (q.num : ℝ) / (q.den : ℝ) := by
      exact_mod_cast (Rat.num_div_den q).symm
    rw [hq]
    push_cast
    field_simp
  refine ⟨c ^ (-q.num), ?_, ?_⟩
  · rw [hval]
    refine lt_of_le_of_lt (le_max_left x (y / 2)) ?_
    rw [← hx']
    calc x' = (l : ℝ) ^ Real.logb l x' := (Real.rpow_logb hl0 hl1.ne' hx'0).symm
      _ < (l : ℝ) ^ (q : ℝ) := (Real.rpow_lt_rpow_left_iff hl1).2 hq1
  · rw [hval]
    calc (l : ℝ) ^ (q : ℝ) < (l : ℝ) ^ Real.logb l y := (Real.rpow_lt_rpow_left_iff hl1).2 hq2
      _ = y := Real.rpow_logb hl0 hl1.ne' hy

@[reducible] def denseC : DenselyNormedField ℂ_[l] where
  __ := (inferInstance : NormedField ℂ_[l])
  lt_norm_lt := exists_norm_btwn l

attribute [local instance] denseC

variable {l}

end Dense

namespace PtGeo

variable {l : ℕ} [Fact l.Prime] {Λ : Type} [AddCommGroup Λ] {σ : Type} (X : PtGeo l Λ σ)

variable {X} {k : ℕ} {ρ : ℝ}

end PtGeo

variable {D : Formalism.BasicNotions.D7}

section Places

section

variable {E L V : Type} [Field E] [NumberField E] [AddCommGroup L] [Module (𝓞 E) L]

end

end Places

section Gal

variable (X : Geo D)

end Gal

section U4

theorem norm_unif {K O : Type} [NormedField K] [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
    [Algebra O K] [IsFractionRing O K]
    (hball : ∀ x : K, ‖x‖ ≤ 1 ↔ x ∈ (algebraMap O K).range) {ϖ : O} (hϖ : Irreducible ϖ) :
    0 < ‖algebraMap O K ϖ‖ ∧ ‖algebraMap O K ϖ‖ < 1 := by
  have h0 : algebraMap O K ϖ ≠ 0 := by
    rw [Ne, map_eq_zero_iff _ (IsFractionRing.injective O K)]; exact hϖ.ne_zero
  refine ⟨norm_pos_iff.2 h0, lt_of_le_of_ne ((hball _).2 ⟨ϖ, rfl⟩) ?_⟩
  intro h1
  have h2 : ‖(algebraMap O K ϖ)⁻¹‖ ≤ 1 := by rw [norm_inv, h1, inv_one]
  obtain ⟨a, ha⟩ := (hball _).1 h2
  apply hϖ.not_isUnit
  refine IsUnit.of_mul_eq_one a ?_
  apply IsFractionRing.injective O K
  rw [map_mul, ha, map_one, mul_inv_cancel₀ h0]

theorem complete_of_adic {K O : Type} [NormedField K] [CommRing O] [IsDomain O]
    [IsDiscreteValuationRing O] [Algebra O K] [IsFractionRing O K]
    (hball : ∀ x : K, ‖x‖ ≤ 1 ↔ x ∈ (algebraMap O K).range)
    (hc : IsAdicComplete (IsLocalRing.maximalIdeal O) O) : CompleteSpace K := by
  obtain ⟨ϖ, hϖ⟩ := IsDiscreteValuationRing.exists_irreducible O
  obtain ⟨hr0, hr1⟩ := norm_unif hball hϖ
  set r := ‖algebraMap O K ϖ‖ with hr
  have hπ0 : algebraMap O K ϖ ≠ 0 := norm_pos_iff.1 hr0
  have hmem : ∀ (a : O) (n : ℕ), ‖algebraMap O K a‖ ≤ r ^ n → a ∈ IsLocalRing.maximalIdeal O ^ n := by
    intro a n h
    have h1 : ‖algebraMap O K a / (algebraMap O K ϖ) ^ n‖ ≤ 1 := by
      rw [norm_div, norm_pow, div_le_one (pow_pos hr0 n)]; exact h
    obtain ⟨c, hc'⟩ := (hball _).1 h1
    rw [hϖ.maximalIdeal_eq, Ideal.span_singleton_pow, Ideal.mem_span_singleton]
    refine ⟨c, ?_⟩
    apply IsFractionRing.injective O K
    rw [map_mul, map_pow, hc', mul_div_cancel₀ _ (pow_ne_zero n hπ0)]
  have hnorm : ∀ (a : O) (n : ℕ), a ∈ IsLocalRing.maximalIdeal O ^ n → ‖algebraMap O K a‖ ≤ r ^ n := by
    intro a n h
    rw [hϖ.maximalIdeal_eq, Ideal.span_singleton_pow, Ideal.mem_span_singleton] at h
    obtain ⟨c, rfl⟩ := h
    rw [map_mul, map_pow, norm_mul, norm_pow]
    exact mul_le_of_le_one_right (pow_nonneg hr0.le n) ((hball _).2 ⟨c, rfl⟩)
  refine Metric.complete_of_convergent_controlled_sequences (fun n => r ^ n) (fun n => pow_pos hr0 n) ?_
  intro u hu
  have h1 : ∀ n, ∃ a : O, algebraMap O K a = u n - u 0 := by
    intro n
    have := hu 0 n 0 (Nat.zero_le _) le_rfl
    rw [pow_zero, dist_eq_norm] at this
    exact (hball _).1 this.le
  choose a ha using h1
  obtain ⟨L, hL⟩ := hc.toIsPrecomplete.prec (f := a) (by
    intro m n hmn
    rw [SModEq.sub_mem, smul_eq_mul, Ideal.mul_top]
    apply hmem
    rw [map_sub, ha, ha, sub_sub_sub_cancel_right, ← dist_eq_norm]
    exact (hu m m n le_rfl hmn).le)
  refine ⟨u 0 + algebraMap O K L, ?_⟩
  rw [tendsto_iff_norm_sub_tendsto_zero]
  refine squeeze_zero (fun n => norm_nonneg _) (fun n => ?_) (tendsto_pow_atTop_nhds_zero_of_lt_one hr0.le hr1)
  have h2 := hL n
  rw [SModEq.sub_mem, smul_eq_mul, Ideal.mul_top] at h2
  have h3 := hnorm _ n h2
  rw [map_sub, ha] at h3
  rwa [← sub_sub]

end U4

section U4rec

variable {D : Formalism.BasicNotions.D7}

end U4rec

section ConjPlaces

end ConjPlaces

namespace SplitL

variable {R : Ranks} (H : Host R)

end SplitL

section PartC

variable {i : D.ntw.Tw} {j : ℕ} {M : ℕ} {Q : Finset (HeightOneSpectrum (𝓞 D.host.E))}

variable {δ : G D.host.E D.nd.Om →* Multiplicative (DelQM D.host (D.ntw.l i) Q M)}
  {Φ : ↥Q → ZMod (D.ntw.l i ^ M) → D.nth.Lt i j → KK i} {φ : D.nth.Lt i j → KK i}

variable (X : Geo D)

end PartC

section U5

end U5

end Formalism.MainNotions.ExistsIdealDenominator

end
