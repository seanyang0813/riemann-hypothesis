module

public import GroundTheory.GlobalFields.TateThesis.AdelicCharLocal
public import Mathlib.Analysis.CStarAlgebra.Classes
public import Mathlib.NumberTheory.NumberField.AdeleRing
public import GroundTheory.GlobalFields.TateThesis.AdelicCharDual
public import GroundTheory.GlobalFields.TateThesis.RootNumberLocalPlace
import Mathlib.Tactic.Linter.HaveILetI
import Development.AbelianVarietyTheory.Definitions.Divisors.HilbertNinetyQuotientHomEqIff

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ExistsInfiniteAdelicCharNeOne, Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.FactorialTendstoZero, Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.UnitaryAnnihilator, Development.AutomorphicSpectrum.Proofs.MembershipProofs.ThetaDistributionHeisenbergInvariant

-- ===== clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ExistsInfiniteAdelicCharNeOne =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ExistsInfiniteAdelicCharNeOne", "h": "module\n\npublic import GroundTheory.GlobalFields.TateThesis.AdelicCharLocal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem UpperTheory.Reformulated.B.Rd3.exists_infiniteAdelicChar_ne_one :
    ∀ {F : Type} [inst : Field F] [inst_1 : NumberField F]
    (w : NumberField.InfinitePlace F),
    ∃ (z : w.Completion),
      (GroundTheory.Global.infiniteAdelicChar F w : w.Completion → Circle) z ≠
        (1 : Circle) := by
  intro F _ _ w
  refine ⟨((2 * w.mult : ℕ) : w.Completion)⁻¹, fun h => ?_⟩
  have hm : (w.mult : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr NumberField.InfinitePlace.mult_pos.ne'
  have hx : 2 * Real.pi * -((w.mult : ℝ) * (((2 * w.mult : ℕ) : ℝ))⁻¹) = -Real.pi := by
    push_cast
    field_simp
  rw [GroundTheory.Global.infiniteAdelicChar_apply, map_inv₀, map_natCast, ← Complex.ofReal_natCast,
    ← Complex.ofReal_inv, Complex.ofReal_re] at h
  have h2 := congrArg (fun c : Circle => (c : ℂ)) h
  simp only [Real.fourierChar_apply, hx, Circle.coe_one] at h2
  rw [Complex.ofReal_neg, neg_mul, Complex.exp_neg, Complex.exp_pi_mul_I] at h2
  norm_num at h2
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ExistsInfiniteAdelicCharNeOne =====

-- ===== clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.FactorialTendstoZero =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.FactorialTendstoZero", "h": "module\n\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.NumberTheory.NumberField.AdeleRing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Filter Topology NumberField IsDedekindDomain

private lemma UpperTheory.Reformulated.B.AdelicCharacterNormOne.factorial_tendsto_zero {K : Type*} [NormedField K]
    (h1 : ∀ n : ℕ, ‖(n : K)‖ ≤ 1) (N : ℕ) (hN : 0 < N) (hlt : ‖(N : K)‖ < 1) :
    Tendsto (fun n : ℕ => ((n.factorial : ℕ) : K)) atTop (𝓝 0) := by
  rw [tendsto_zero_iff_norm_tendsto_zero]
  refine tendsto_order.2 ⟨fun a ha => Eventually.of_forall fun n => ha.trans_le (norm_nonneg _),
    fun a ha => ?_⟩
  obtain ⟨k, hk⟩ := exists_pow_lt_of_lt_one ha hlt
  filter_upwards [eventually_ge_atTop (N ^ k)] with n hn
  obtain ⟨m, hm⟩ := Nat.dvd_factorial (pow_pos hN k) hn
  rw [hm, Nat.cast_mul, Nat.cast_pow, norm_mul, norm_pow]
  exact (mul_le_of_le_one_right (by positivity) (h1 m)).trans_lt hk

private lemma UpperTheory.Reformulated.B.AdelicCharacterNormOne.local_tendsto {F : Type} [Field F] [NumberField F]
    (v : HeightOneSpectrum (𝓞 F)) :
    Tendsto (fun n : ℕ => ((n.factorial : ℕ) : v.adicCompletion F)) atTop (𝓝 0) := by
  refine UpperTheory.Reformulated.B.AdelicCharacterNormOne.factorial_tendsto_zero (K := v.adicCompletion F) (fun n => ?_)
    (Ideal.absNorm v.asIdeal) (zero_lt_one.trans (HeightOneSpectrum.one_lt_absNorm v)) ?_
  · have := FinitePlace.norm_le_one F v (n : 𝓞 F)
    rwa [map_natCast, map_natCast] at this
  · have := (FinitePlace.norm_lt_one_iff_mem F v _).2 (Ideal.absNorm_mem v.asIdeal)
    rwa [map_natCast, map_natCast] at this

private lemma UpperTheory.Reformulated.B.AdelicCharacterNormOne.finite_tendsto {F : Type} [Field F] [NumberField F] :
    Tendsto (fun n : ℕ => ((n.factorial : ℕ) : FiniteAdeleRing (𝓞 F) F)) atTop (𝓝 0) := by
  have h : Tendsto (fun (n : ℕ) (v : HeightOneSpectrum (𝓞 F)) =>
      ((n.factorial : ℕ) : v.adicCompletionIntegers F)) atTop (𝓝 0) := by
    rw [tendsto_pi_nhds]
    intro v
    rw [tendsto_subtype_rng]
    simpa using UpperTheory.Reformulated.B.AdelicCharacterNormOne.local_tendsto v
  have hc := (RestrictedProduct.isEmbedding_structureMap
    (R := fun v : HeightOneSpectrum (𝓞 F) => v.adicCompletion F)
    (A := fun v => (v.adicCompletionIntegers F : Set (v.adicCompletion F)))
    (𝓕 := cofinite)).continuous
  exact (hc.tendsto _).comp h

private lemma UpperTheory.Reformulated.B.AdelicCharacterNormOne.eq_one_of_tendsto {r : ℝ} (hr : 0 ≤ r)
    (h : Tendsto (fun n : ℕ => r ^ n.factorial) atTop (𝓝 1)) : r = 1 := by
  have hf : Tendsto Nat.factorial atTop atTop :=
    tendsto_atTop_mono Nat.self_le_factorial tendsto_id
  rcases lt_trichotomy r 1 with hlt | heq | hgt
  · exact absurd (tendsto_nhds_unique ((tendsto_pow_atTop_nhds_zero_of_lt_one hr hlt).comp hf) h)
      zero_ne_one
  · exact heq
  · exact absurd h (not_tendsto_nhds_of_tendsto_atTop
      ((tendsto_pow_atTop_atTop_of_one_lt hgt).comp hf) 1)

theorem UpperTheory.Reformulated.B.AdelicCharacterNormOne.norm_eq_one :
    ∀ {F : Type} [inst : Field F] [inst_1 : NumberField F]
    (ψ : AddChar (NumberField.AdeleRing (NumberField.RingOfIntegers F) F) ℂ),
    Continuous (⇑ψ : NumberField.AdeleRing (NumberField.RingOfIntegers F) F → ℂ) →
      (∀ (a : F),
          (ψ : NumberField.AdeleRing (NumberField.RingOfIntegers F) F → ℂ)
              ((Algebra.algebraMap F (NumberField.AdeleRing (NumberField.RingOfIntegers F) F) :
                  F → NumberField.AdeleRing (NumberField.RingOfIntegers F) F)
                a) =
            (1 : ℂ)) →
        ∀ (x : NumberField.AdeleRing (NumberField.RingOfIntegers F) F),
          ‖(ψ : NumberField.AdeleRing (NumberField.RingOfIntegers F) F → ℂ) x‖ = (1 : ℝ) := by
  intro F _ _ ψ hψ htriv
  let i : InfiniteAdeleRing F → AdeleRing (𝓞 F) F := fun x => (x, 0)
  let j : FiniteAdeleRing (𝓞 F) F → AdeleRing (𝓞 F) F := fun y => (0, y)
  have hi : Continuous i := continuous_id.prodMk continuous_const
  have hj : Continuous j := continuous_const.prodMk continuous_id
  have hsplit : ∀ x : AdeleRing (𝓞 F) F, x = i x.1 + j x.2 := fun x =>
    Prod.ext (add_zero x.1).symm (zero_add x.2).symm
  have hfin : ∀ y, ‖ψ (j y)‖ = 1 := by
    intro y
    apply UpperTheory.Reformulated.B.AdelicCharacterNormOne.eq_one_of_tendsto (norm_nonneg _)
    have h1 := (UpperTheory.Reformulated.B.AdelicCharacterNormOne.finite_tendsto (F := F)).mul_const y
    rw [zero_mul] at h1
    have h2 := (((hψ.comp hj).norm).tendsto 0).comp h1
    have h0 : j 0 = 0 := rfl
    have hs : ∀ n : ℕ, j ((n : FiniteAdeleRing (𝓞 F) F) * y) = n • j y := fun n =>
      Prod.ext (nsmul_zero n).symm (nsmul_eq_mul n y).symm
    simp only [Function.comp_def, h0, hs, AddChar.map_zero_eq_one, norm_one,
      AddChar.map_nsmul_eq_pow, norm_pow] at h2
    exact h2
  have hinf : ∀ x, ‖ψ (i x)‖ = 1 := by
    intro x
    refine (InfiniteAdeleRing.denseRange_algebraMap F).induction_on x
      (isClosed_eq (hψ.comp hi).norm continuous_const) fun a => ?_
    have h := congrArg norm (htriv a)
    rw [hsplit (algebraMap F _ a), AddChar.map_add_eq_mul, norm_mul, hfin, mul_one, norm_one] at h
    exact h
  intro x
  rw [hsplit x, AddChar.map_add_eq_mul, norm_mul, hfin, hinf, mul_one]
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.FactorialTendstoZero =====

-- ===== clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.UnitaryAnnihilator =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.UnitaryAnnihilator", "h": "module\n\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.NumberTheory.NumberField.AdeleRing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Topology Filter

private theorem small_trivial {G : Type*} [AddCommGroup G] (φ : G → ℂ)
    (h2 : ∀ y, φ (y + y) = φ y * φ y) (h : ∀ y, ‖φ y - 1‖ < 1 / 2) (y : G) : φ y = 1 := by
  have key : ∀ n : ℕ, ∀ y, ‖φ y - 1‖ ≤ (2 / 3 : ℝ) ^ n := by
    intro n
    induction n with
    | zero => intro y; have := h y; simp only [pow_zero]; linarith
    | succ n ih =>
      intro y
      have h1 := ih (y + y)
      have e : φ (y + y) - 1 = (φ y - 1) * (φ y + 1) := by rw [h2]; ring
      have h3 : (3 / 2 : ℝ) ≤ ‖φ y + 1‖ := by
        have e2 : (2 : ℂ) = (φ y + 1) - (φ y - 1) := by ring
        have h4 : ‖(2 : ℂ)‖ ≤ ‖φ y + 1‖ + ‖φ y - 1‖ := by
          rw [e2]; exact norm_sub_le _ _
        have h5 : ‖(2 : ℂ)‖ = 2 := by simp
        have := h y
        linarith
      rw [e, norm_mul] at h1
      have h6 := norm_nonneg (φ y - 1)
      rw [pow_succ]
      nlinarith
  have ht : Tendsto (fun n : ℕ => (2 / 3 : ℝ) ^ n) atTop (𝓝 0) :=
    tendsto_pow_atTop_nhds_zero_of_lt_one (by norm_num) (by norm_num)
  have : ‖φ y - 1‖ ≤ 0 := ge_of_tendsto' ht (fun n => key n y)
  exact sub_eq_zero.1 (norm_le_zero_iff.1 this)

private theorem abstract_thm {F A : Type*} [Field F] [Infinite F] [CommRing A]
    [TopologicalSpace A] [IsTopologicalRing A] [LocallyCompactSpace A] [Algebra F A]
    (K : Set A) (hK : IsCompact K) (hcov : ∀ y : A, ∃ c : F, y - algebraMap F A c ∈ K)
    (hb : ∀ C : Set A, IsCompact C → ∀ x : A, (∀ a : F, x * algebraMap F A a ∈ C) → x = 0)
    (ψ : AddChar A ℂ) (hc : Continuous ψ) (hne : ψ ≠ 1)
    (hF : ∀ a : F, ψ (algebraMap F A a) = 1) :
    (∀ x, ‖ψ x‖ = 1) ∧
      ∀ x : A, (∀ a : F, ψ (x * algebraMap F A a) = 1) → ∃ b : F, x = algebraMap F A b := by
  classical
  constructor
  · obtain ⟨M, hM⟩ := hK.exists_bound_of_continuousOn hc.continuousOn
    have hM' : ∀ y, ‖ψ y‖ ≤ M := by
      intro y
      obtain ⟨c, hc⟩ := hcov y
      have := hM _ hc
      have e : ψ y = ψ (y - algebraMap F A c) * ψ (algebraMap F A c) := by
        rw [← AddChar.map_add_eq_mul, sub_add_cancel]
      rw [e, hF, mul_one]; exact this
    have hle : ∀ y, ‖ψ y‖ ≤ 1 := by
      intro y
      by_contra hlt
      push Not at hlt
      obtain ⟨n, hn⟩ := pow_unbounded_of_one_lt M hlt
      have := hM' (n • y)
      rw [AddChar.map_nsmul_eq_pow, norm_pow] at this
      linarith
    intro x
    have e : ‖ψ x‖ * ‖ψ (-x)‖ = 1 := by
      rw [← norm_mul, ← AddChar.map_add_eq_mul, add_neg_cancel, AddChar.map_zero_eq_one, norm_one]
    have h1 := hle x
    have h2 := hle (-x)
    have h3 := norm_nonneg (ψ x)
    have h4 := norm_nonneg (ψ (-x))
    nlinarith

  have hU0 : ∀ᶠ u in 𝓝 (0 : A), ∀ k ∈ K, ‖ψ (u * k) - 1‖ < 1 / 2 := by
    apply hK.eventually_forall_of_forall_eventually
    intro k _
    have hcont : Continuous fun z : A × A => ‖ψ (z.1 * z.2) - 1‖ := by fun_prop
    apply hcont.continuousAt.eventually_lt continuousAt_const
    simp
  obtain ⟨C, hCc, hC0⟩ := exists_compact_mem_nhds (0 : A)
  obtain ⟨U, hU, hUs, hUC⟩ : ∃ U ∈ 𝓝 (0 : A),
      (∀ u ∈ U, ∀ k ∈ K, ‖ψ (u * k) - 1‖ < 1 / 2) ∧ U ⊆ C :=
    ⟨_, inter_mem hU0 hC0, fun u hu => hu.1, fun u hu => hu.2⟩
  have hS : ∀ u ∈ U, (∀ a : F, ψ (u * algebraMap F A a) = 1) → ∀ y, ψ (u * y) = 1 := by
    intro u hu hua
    apply small_trivial (fun y => ψ (u * y))
    · intro y; rw [mul_add, AddChar.map_add_eq_mul]
    · intro y
      obtain ⟨c, hc⟩ := hcov y
      have e : ψ (u * y) = ψ (u * (y - algebraMap F A c)) * ψ (u * algebraMap F A c) := by
        rw [← AddChar.map_add_eq_mul, ← mul_add, sub_add_cancel]
      rw [e, hua, mul_one]
      exact hUs u hu _ hc

  obtain ⟨V, hV, hVU⟩ := exists_nhds_half_neg hU
  obtain ⟨T, -, hT⟩ := hK.elim_nhds_subcover (fun k => {z | z - k ∈ V}) (by
    intro k _
    have hcont : Continuous fun z : A => z - k := by fun_prop
    apply hcont.continuousAt.preimage_mem_nhds
    simpa using hV)
  have hnet : ∀ y : A, ∃ t : T, ∃ c : F, y - algebraMap F A c - t ∈ V := by
    intro y
    obtain ⟨c, hc⟩ := hcov y
    have := hT hc
    simp only [Set.mem_iUnion] at this
    obtain ⟨t, ht, h⟩ := this
    exact ⟨⟨t, ht⟩, c, h⟩
  choose τ γ hτ using hnet
  have hdiff : ∀ y z, τ y = τ z → y - z - algebraMap F A (γ y - γ z) ∈ U := by
    intro y z h
    have := hVU _ (hτ y) _ (hτ z)
    rw [h] at this
    convert this using 1
    rw [map_sub]; ring
  have hsubW : ∀ (x : A) (c : F), (∀ a : F, ψ (x * algebraMap F A a) = 1) →
      ∀ a : F, ψ ((x - algebraMap F A c) * algebraMap F A a) = 1 := by
    intro x c hx a
    have e : (x - algebraMap F A c) * algebraMap F A a =
        x * algebraMap F A a + algebraMap F A (-(c * a)) := by
      rw [map_neg, map_mul]; ring
    rw [e, AddChar.map_add_eq_mul, hx, hF, mul_one]
  have hsubI : ∀ x z : A, (∀ y, ψ (x * y) = 1) → (∀ y, ψ (z * y) = 1) →
      ∀ y, ψ ((x - z) * y) = 1 := by
    intro x z hx hz y
    have e : (x - z) * y = x * y + z * (-y) := by ring
    rw [e, AddChar.map_add_eq_mul, hx, hz, mul_one]

  have hI : ∀ x : A, (∀ y, ψ (x * y) = 1) → x = 0 := by
    intro x hx
    have hclose : ∀ y z : A, τ (x * y) = τ (x * z) → x * y - x * z ∈ U := by
      intro y z h
      have h1 := hdiff _ _ h
      set c := γ (x * y) - γ (x * z) with hcdef
      have hyz : ∀ w, ψ ((x * y - x * z) * w) = 1 := by
        intro w
        rw [← mul_sub, mul_assoc, hx]
      have h2 := hS _ h1 (hsubW _ c (fun a => hyz _))
      have h3 := hsubI _ _ hyz h2
      by_cases hc0 : c = 0
      · simpa [hc0] using h1
      · exfalso
        apply hne
        ext w
        have := h3 (algebraMap F A c⁻¹ * w)
        rw [sub_sub_cancel, ← mul_assoc, ← map_mul, mul_inv_cancel₀ hc0, map_one, one_mul] at this
        simpa using this
    let σ : A → T := fun y => τ (x * y)
    let ρ : T → A := fun t => x * Function.invFun σ t
    apply hb (⋃ t : T, (fun u => ρ t + u) '' C)
    · exact isCompact_iUnion fun t => hCc.image (by fun_prop)
    · intro a
      have h1 : σ (Function.invFun σ (σ (algebraMap F A a))) = σ (algebraMap F A a) :=
        Function.invFun_eq ⟨_, rfl⟩
      refine Set.mem_iUnion.2 ⟨σ (algebraMap F A a), _, hUC (hclose _ _ h1.symm), ?_⟩
      simp [ρ]
  intro x hx
  obtain ⟨a, b, hab, h⟩ :=
    Finite.exists_ne_map_eq_of_infinite (fun a : F => τ (x * algebraMap F A a))
  have h1 := hdiff _ _ h
  set c := γ (x * algebraMap F A a) - γ (x * algebraMap F A b) with hcdef
  have h2 := hI _ (hS _ h1 (hsubW _ c (by
    intro d
    rw [← mul_sub, mul_assoc, ← map_sub, ← map_mul, hx])))
  have hab' : a - b ≠ 0 := sub_ne_zero.2 hab
  refine ⟨c * (a - b)⁻¹, ?_⟩
  rw [sub_eq_zero, ← mul_sub, ← map_sub] at h2
  rw [map_mul, ← h2, mul_assoc, ← map_mul, mul_inv_cancel₀ hab', map_one, mul_one]

private theorem field_bounded {F E : Type*} [Field F] [CommRing E] [TopologicalSpace E]
    [IsTopologicalRing E] [T1Space E] (f : F →+* E)
    (hf : ∀ U ∈ 𝓝 (0 : E), ∃ b : F, b ≠ 0 ∧ f b ∈ U) (C : Set E) (hC : IsCompact C) (x : E)
    (hx : ∀ a : F, x * f a ∈ C) : x = 0 := by
  by_contra h0
  have hU : ∀ᶠ u in 𝓝 (0 : E), ∀ k ∈ C, u * k ≠ x := by
    apply hC.eventually_forall_of_forall_eventually
    intro k _
    have hcont : Continuous fun z : E × E => z.1 * z.2 := by fun_prop
    apply hcont.continuousAt.eventually_ne
    simpa using Ne.symm h0
  obtain ⟨b, hb, hbU⟩ := hf _ hU
  apply hbU _ (hx b⁻¹)
  rw [mul_left_comm, ← map_mul, mul_inv_cancel₀ hb, map_one, mul_one]

open IsDedekindDomain IsDedekindDomain.HeightOneSpectrum NumberField

section Finite

variable {R K : Type*} [CommRing R] [IsDedekindDomain R] [Field K] [Algebra R K]
  [IsFractionRing R K]

private theorem exists_scale (v : HeightOneSpectrum R) (U : Set (v.adicCompletion K))
    (hU : U ∈ 𝓝 (0 : v.adicCompletion K)) :
    ∃ b : K, b ≠ 0 ∧ ∀ z ∈ v.adicCompletionIntegers K,
      algebraMap K (v.adicCompletion K) b * z ∈ U := by
  obtain ⟨γ, hγ⟩ := Valued.mem_nhds_zero.1 hU
  set g : WithZero (Multiplicative ℤ) := MonoidWithZeroHom.ValueGroup₀.embedding γ.1 with hg
  have hg0 : g ≠ 0 := by
    rw [hg]; exact (map_ne_zero _).2 γ.ne_zero
  obtain ⟨b, hb⟩ := valuation_surjective K v (g * WithZero.exp (-1 : ℤ))
  have hlt : g * WithZero.exp (-1 : ℤ) < g := by
    refine mul_lt_of_lt_one_right (zero_lt_iff.2 hg0) ?_
    rw [← WithZero.exp_zero, WithZero.exp_lt_exp]; norm_num
  refine ⟨b, ?_, fun z hz => hγ ?_⟩
  · rintro rfl
    rw [map_zero] at hb
    exact mul_ne_zero hg0 WithZero.exp_ne_zero hb.symm
  · rw [Set.mem_setOf_eq, Valuation.restrict_lt_iff_lt_embedding, map_mul]
    have h1 : Valued.v (algebraMap K (v.adicCompletion K) b) = v.valuation K b :=
      valuedAdicCompletion_eq_valuation' v b
    rw [h1, hb]
    exact lt_of_le_of_lt (mul_le_of_le_one_right' hz) hlt

private theorem isOpen_int (v : HeightOneSpectrum R) :
    IsOpen (v.adicCompletionIntegers K : Set (v.adicCompletion K)) :=
  Valued.isOpen_valuationSubring _

private theorem compact_int [LocallyCompactSpace (FiniteAdeleRing R K)] :
    IsCompact {y : FiniteAdeleRing R K | ∀ v, y v ∈ v.adicCompletionIntegers K} := by
  have hemb := RestrictedProduct.isOpenEmbedding_structureMap
    (R := fun v : HeightOneSpectrum R => v.adicCompletion K)
    (A := fun v : HeightOneSpectrum R => (v.adicCompletionIntegers K : Set (v.adicCompletion K)))
    (fun v => isOpen_int v)
  haveI : LocallyCompactSpace (RestrictedProduct (fun v : HeightOneSpectrum R => v.adicCompletion K)
    (fun v : HeightOneSpectrum R => (v.adicCompletionIntegers K : Set (v.adicCompletion K)))
    cofinite) := ‹LocallyCompactSpace (FiniteAdeleRing R K)›
  haveI := hemb.locallyCompactSpace
  haveI : ∀ v : HeightOneSpectrum R,
      CompactSpace (v.adicCompletionIntegers K : Set (v.adicCompletion K)) := by
    intro v
    rw [← isCompact_iff_compactSpace]
    obtain ⟨C, hC, hC0⟩ := exists_compact_mem_nhds
      (fun w : HeightOneSpectrum R =>
        (⟨0, zero_mem _⟩ : (w.adicCompletionIntegers K : Set (w.adicCompletion K))))
    have h1 := (isOpenMap_eval v).image_mem_nhds hC0
    have h2 := (isOpen_int (K := K) v).isOpenMap_subtype_val.image_mem_nhds h1
    have h3 := (hC.image (continuous_apply v)).image continuous_subtype_val
    obtain ⟨b, hb0, hb⟩ := exists_scale v _ h2
    refine (h3.image (continuous_const_mul
      (algebraMap K (v.adicCompletion K) b⁻¹))).of_isClosed_subset
      (Valued.isClosed_valuationSubring _) ?_
    intro z hz
    refine ⟨_, hb z hz, ?_⟩
    simp only
    rw [← mul_assoc, ← map_mul, inv_mul_cancel₀ hb0, map_one, one_mul]
  have := isCompact_range hemb.continuous
  rw [RestrictedProduct.range_structureMap] at this
  exact this

private theorem finite_approx (y : FiniteAdeleRing R K) :
    ∃ a : K, ∀ v, (y - algebraMap K (FiniteAdeleRing R K) a) v ∈ v.adicCompletionIntegers K := by
  classical
  have h1 : ∀ v : HeightOneSpectrum R, ∃ k : K,
      y v - algebraMap K _ k ∈ v.adicCompletionIntegers K ∧
        (y v ∈ v.adicCompletionIntegers K → k = 0) := by
    intro v
    by_cases h : y v ∈ v.adicCompletionIntegers K
    · exact ⟨0, by simpa using h, fun _ => rfl⟩
    · have ho : IsOpen {z : v.adicCompletion K | y v - z ∈ v.adicCompletionIntegers K} :=
        (isOpen_int v).preimage (f := fun z => y v - z) (by fun_prop)
      obtain ⟨k, hk⟩ := (denseRange_algebraMap K v).exists_mem_open ho
        ⟨y v, by simp⟩
      exact ⟨k, hk, fun h' => absurd h' h⟩
  choose k hk hk0 using h1
  have hfin : {v : HeightOneSpectrum R | y v ∉ v.adicCompletionIntegers K}.Finite :=
    Filter.eventually_cofinite.1 y.2
  obtain ⟨⟨d, hd⟩, hdk⟩ := IsLocalization.exist_integer_multiples_of_finite (nonZeroDivisors R)
    (ι := hfin.toFinset) (fun v => k v)
  have hd0 : d ≠ 0 := nonZeroDivisors.ne_zero hd
  have hn : ∀ v, ∃ n : R, algebraMap R K n = algebraMap R K d * k v := by
    intro v
    by_cases h : y v ∈ v.adicCompletionIntegers K
    · exact ⟨0, by simp [hk0 v h]⟩
    · obtain ⟨n, hn⟩ := hdk ⟨v, by simpa using h⟩
      exact ⟨n, by simpa [Algebra.smul_def] using hn⟩
  choose n hn using hn
  have hfin2 : {v : HeightOneSpectrum R | v.asIdeal ∣ Ideal.span {d}}.Finite :=
    Ideal.finite_factors (by simpa using hd0)
  obtain ⟨r, hr⟩ := IsDedekindDomain.exists_forall_sub_mem_ideal (s := hfin2.toFinset)
    (fun v => v.asIdeal) (fun v => multiplicity v.asIdeal (Ideal.span {d}))
    (fun v _ => v.prime) (fun i _ j _ hij h => hij (HeightOneSpectrum.ext h)) (fun v => n v)
  have hdK : algebraMap R K d ≠ 0 := by simpa using hd0
  have hle : ∀ v : HeightOneSpectrum R, v.intValuation (r - n v) ≤ v.intValuation d := by
    intro v
    by_cases h : v.asIdeal ∣ Ideal.span {d}
    · rw [v.intValuation_eq_exp_neg_multiplicity hd0, intValuation_le_pow_iff_mem]
      exact hr v (by simpa using h)
    · rw [(intValuation_eq_one_iff (x := d)).2 (by rwa [Ideal.dvd_span_singleton] at h)]
      exact intValuation_le_one v _
  refine ⟨algebraMap R K r / algebraMap R K d, fun v => ?_⟩
  have e : algebraMap R K r / algebraMap R K d =
      k v + algebraMap R K (r - n v) / algebraMap R K d := by
    rw [map_sub, hn]; field_simp; ring
  have h2 : algebraMap K (v.adicCompletion K) (algebraMap R K (r - n v) / algebraMap R K d) ∈
      v.adicCompletionIntegers K := by
    have h3 : Valued.v (algebraMap K (v.adicCompletion K)
        (algebraMap R K (r - n v) / algebraMap R K d)) =
        v.valuation K (algebraMap R K (r - n v) / algebraMap R K d) :=
      valuedAdicCompletion_eq_valuation' v _
    rw [mem_adicCompletionIntegers, h3, map_div₀]
    have h4 : ∀ s : R, v.valuation K (algebraMap R K s) = v.intValuation s :=
      fun s => valuation_of_algebraMap v s
    rw [h4, h4]
    exact div_le_one_of_le₀ (hle v) zero_le
  change y v - algebraMap K (v.adicCompletion K) (algebraMap R K r / algebraMap R K d) ∈ _
  rw [e, map_add (f := _), ← sub_sub]
  exact sub_mem (hk v) h2

end Finite

section Infinite

variable {F : Type*} [Field F] [NumberField F]

private theorem infinite_cover : ∃ B : Set (InfiniteAdeleRing F), IsCompact B ∧
    ∀ x : InfiniteAdeleRing F, ∃ r : RingOfIntegers F,
      x - algebraMap F (InfiniteAdeleRing F) (algebraMap _ F r) ∈ B := by
  classical
  obtain ⟨M, hM⟩ := (ZSpan.fundamentalDomain_isBounded (mixedEmbedding.latticeBasis F)).exists_norm_le
  refine ⟨Set.pi Set.univ (fun v : InfinitePlace F =>
    InfinitePlace.Completion.extensionEmbedding v ⁻¹' Metric.closedBall 0 M), ?_, fun x => ?_⟩
  · exact isCompact_univ_pi fun v =>
      (InfinitePlace.Completion.isometry_extensionEmbedding v).isClosedEmbedding.isCompact_preimage
        (isCompact_closedBall 0 M)
  · set e := InfiniteAdeleRing.ringEquiv_mixedSpace F with he
    have h1 := hM _ (ZSpan.fract_mem_fundamentalDomain (mixedEmbedding.latticeBasis F) (e x))
    obtain ⟨r, hr⟩ := (mixedEmbedding.mem_span_latticeBasis F).1
      (ZSpan.floor (mixedEmbedding.latticeBasis F) (e x)).2
    refine ⟨r, fun v _ => ?_⟩
    set z := x - algebraMap F (InfiniteAdeleRing F) (algebraMap _ F r) with hz
    have h2 : e z = ZSpan.fract (mixedEmbedding.latticeBasis F) (e x) := by
      rw [ZSpan.fract_apply, ← hr, hz, map_sub, he,
        ← InfiniteAdeleRing.mixedEmbedding_eq_algebraMap_comp]
      rfl
    rw [← h2] at h1
    simp only [Set.mem_preimage, mem_closedBall_zero_iff]
    rcases v.isReal_or_isComplex with hv | hv
    · have h3 := ((norm_le_pi_norm (e z).1 ⟨v, hv⟩).trans (norm_fst_le _)).trans h1
      rw [← InfinitePlace.Completion.extensionEmbeddingOfIsReal_apply hv, Complex.norm_real]
      exact h3
    · exact ((norm_le_pi_norm (e z).2 ⟨v, hv⟩).trans (norm_snd_le _)).trans h1

private theorem exists_small_inf (v : InfinitePlace F) (U : Set v.Completion)
    (hU : U ∈ 𝓝 (0 : v.Completion)) : ∃ b : F, b ≠ 0 ∧ algebraMap F v.Completion b ∈ U := by
  obtain ⟨ε, hε, h⟩ := Metric.mem_nhds_iff.1 hU
  obtain ⟨n, hn⟩ := exists_nat_one_div_lt hε
  refine ⟨1 / ((n + 1 : ℕ) : F), one_div_ne_zero (Nat.cast_ne_zero.2 (Nat.succ_ne_zero n)), h ?_⟩
  rw [mem_ball_zero_iff,
    ← (InfinitePlace.Completion.isometry_extensionEmbedding v).norm_map_of_map_zero (map_zero _),
    map_div₀, map_div₀, map_one, map_one, map_natCast, map_natCast, norm_div, norm_one,
    Complex.norm_natCast]
  exact_mod_cast hn

end Infinite

section Adele

variable {F : Type*} [Field F] [NumberField F]

private theorem adele_cover [LocallyCompactSpace (AdeleRing (RingOfIntegers F) F)] :
    ∃ K : Set (AdeleRing (RingOfIntegers F) F), IsCompact K ∧
      ∀ y, ∃ c : F, y - algebraMap F (AdeleRing (RingOfIntegers F) F) c ∈ K := by
  haveI : LocallyCompactSpace
      (InfiniteAdeleRing F × FiniteAdeleRing (RingOfIntegers F) F) :=
    ‹LocallyCompactSpace (AdeleRing (RingOfIntegers F) F)›
  haveI : LocallyCompactSpace (FiniteAdeleRing (RingOfIntegers F) F) :=
    (isOpenQuotientMap_snd (X := InfiniteAdeleRing F)).locallyCompactSpace
  obtain ⟨B, hB, hBc⟩ := infinite_cover (F := F)
  refine ⟨B ×ˢ _, hB.prod (compact_int (R := RingOfIntegers F) (K := F)), fun y => ?_⟩
  obtain ⟨a, ha⟩ := finite_approx y.2
  obtain ⟨r, hr⟩ := hBc (y.1 - algebraMap F _ a)
  refine ⟨a + algebraMap _ F r, ?_, fun v => ?_⟩
  · change y.1 - algebraMap F (InfiniteAdeleRing F) (a + algebraMap _ F r) ∈ B
    rwa [map_add, ← sub_sub]
  · change y.2 v - algebraMap F (v.adicCompletion F) (a + algebraMap _ F r) ∈ _
    rw [map_add (f := _), ← sub_sub]
    exact sub_mem (ha v) (coe_algebraMap_mem _ F v r)

private theorem adele_bounded (C : Set (AdeleRing (RingOfIntegers F) F)) (hC : IsCompact C)
    (x : AdeleRing (RingOfIntegers F) F)
    (hx : ∀ a : F, x * algebraMap F (AdeleRing (RingOfIntegers F) F) a ∈ C) : x = 0 := by
  refine Prod.ext (funext fun v => ?_) (FiniteAdeleRing.ext F fun v => ?_)
  · have hc : Continuous fun z : AdeleRing (RingOfIntegers F) F => z.1 v :=
      (continuous_apply v).comp continuous_fst
    exact field_bounded (algebraMap F v.Completion) (exists_small_inf v) _ (hC.image hc) (x.1 v)
      (fun a => ⟨_, hx a, rfl⟩)
  · have hc : Continuous fun z : AdeleRing (RingOfIntegers F) F => z.2 v :=
      (RestrictedProduct.continuous_eval v).comp continuous_snd
    refine field_bounded (algebraMap F (v.adicCompletion F)) (fun U hU => ?_) _ (hC.image hc)
      (x.2 v) (fun a => ⟨_, hx a, rfl⟩)
    obtain ⟨b, hb0, hb⟩ := exists_scale v U hU
    exact ⟨b, hb0, by simpa using hb 1 (one_mem _)⟩

end Adele

theorem UpperTheory.Reformulated.B.UnitaryAnnihilator.unitary_and_annihilator_eq :
    ∀ (F : Type) [inst : Field F] [inst_1 : NumberField F]
    [LocallyCompactSpace (NumberField.AdeleRing (NumberField.RingOfIntegers F) F)]
    [Invertible (2 : NumberField.AdeleRing (NumberField.RingOfIntegers F) F)]
    (ψ : AddChar (NumberField.AdeleRing (NumberField.RingOfIntegers F) F) ℂ),
    Continuous (⇑ψ : NumberField.AdeleRing (NumberField.RingOfIntegers F) F → ℂ) →
      ψ ≠ (1 : AddChar (NumberField.AdeleRing (NumberField.RingOfIntegers F) F) ℂ) →
        (∀ (a : F),
            (ψ : NumberField.AdeleRing (NumberField.RingOfIntegers F) F → ℂ)
                ((Algebra.algebraMap F (NumberField.AdeleRing (NumberField.RingOfIntegers F) F) :
                    F → NumberField.AdeleRing (NumberField.RingOfIntegers F) F)
                  a) =
              (1 : ℂ)) →
          (∀ (x : NumberField.AdeleRing (NumberField.RingOfIntegers F) F),
              ‖(ψ : NumberField.AdeleRing (NumberField.RingOfIntegers F) F → ℂ) x‖ = (1 : ℝ)) ∧
            ∀ (x : NumberField.AdeleRing (NumberField.RingOfIntegers F) F),
              (∀ (a : F),
                  (ψ : NumberField.AdeleRing (NumberField.RingOfIntegers F) F → ℂ)
                      (x *
                        (Algebra.algebraMap F (NumberField.AdeleRing (NumberField.RingOfIntegers F) F) :
                            F → NumberField.AdeleRing (NumberField.RingOfIntegers F) F)
                          a) =
                    (1 : ℂ)) →
                ∃ (b : F),
                  x =
                    (Algebra.algebraMap F (NumberField.AdeleRing (NumberField.RingOfIntegers F) F) :
                        F → NumberField.AdeleRing (NumberField.RingOfIntegers F) F)
                      b := by
  intro F _ _ _ _ ψ hc hne hF
  obtain ⟨K, hK, hcov⟩ := adele_cover (F := F)
  exact abstract_thm K hK hcov adele_bounded ψ hc hne hF
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.UnitaryAnnihilator =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.MembershipProofs.ThetaDistributionHeisenbergInvariant =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.MembershipProofs.ThetaDistributionHeisenbergInvariant", "h": "module\n\npublic import GroundTheory.GlobalFields.TateThesis.AdelicCharLocal\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ExistsInfiniteAdelicCharNeOne\npublic import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.FactorialTendstoZero\npublic import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.UnitaryAnnihilator\npublic import GroundTheory.GlobalFields.TateThesis.AdelicCharDual\npublic import GroundTheory.GlobalFields.TateThesis.RootNumberLocalPlace\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HilbertNinetyQuotientHomEqIff\n\n"}
section -- clump:auto
@[expose] public section

open Matrix NumberField IsDedekindDomain GlobalTheory.WeilM MeasureTheory
open scoped TensorProduct

namespace GlobalTheory.CompanionTheory.AdeleAnn

open GroundTheory.Global

variable {F : Type} [Field F] [NumberField F]

theorem eq_zero_of_forall_adelicChar_mul {y : AdeleRing (𝓞 F) F}
    (h : ∀ z, adelicChar F (y * z) = 1) : y = 0 := by
  classical
  refine Prod.ext (α := InfiniteAdeleRing F) (β := FiniteAdeleRing (𝓞 F) F) ?_ ?_
  · funext w
    by_contra hw
    have hw' : y.1 w ≠ 0 := hw
    obtain ⟨z, hz⟩ := _root_.UpperTheory.Reformulated.B.Rd3.exists_infiniteAdelicChar_ne_one w
    apply hz
    rw [infiniteAdelicChar_apply', ← h (infinitePlaceIncl w ((y.1 w)⁻¹ * z))]
    congr 1
    refine Prod.ext (α := InfiniteAdeleRing F) (β := FiniteAdeleRing (𝓞 F) F) ?_ ?_
    · funext u
      change (infinitePlaceIncl w z).1 u = y.1 u * (infinitePlaceIncl w ((y.1 w)⁻¹ * z)).1 u
      rw [infinitePlaceIncl_fst, infinitePlaceIncl_fst]
      by_cases hu : u = w
      · subst hu
        rw [Pi.single_eq_same, Pi.single_eq_same, mul_inv_cancel_left₀ hw']
      · rw [Pi.single_eq_of_ne hu, Pi.single_eq_of_ne hu, mul_zero]
    · rw [adeleRing_mul_snd, infinitePlaceIncl_snd, infinitePlaceIncl_snd, mul_zero]
  · refine Subtype.ext (funext fun v => ?_)
    by_contra hv
    have hv' : y.2 v ≠ 0 := hv
    apply localAdelicChar_ne_one (K := F) v
    refine DFunLike.ext _ _ fun z => ?_
    rw [AddChar.one_apply, localAdelicChar_apply, ← h (finitePlaceIncl v ((y.2 v)⁻¹ * z))]
    congr 1
    refine Prod.ext (α := InfiniteAdeleRing F) (β := FiniteAdeleRing (𝓞 F) F) ?_ ?_
    · rw [adeleRing_mul_fst, finitePlaceIncl_apply, finitePlaceIncl_apply, finiteAdeleInr_fst,
        finiteAdeleInr_fst, mul_zero]
    · refine Subtype.ext (funext fun u => ?_)
      change finiteAdeleSingleAdd v z u = y.2 u * finiteAdeleSingleAdd v ((y.2 v)⁻¹ * z) u
      by_cases hu : u = v
      · subst hu
        rw [finiteAdeleSingleAdd_apply_self, finiteAdeleSingleAdd_apply_self,
          mul_inv_cancel_left₀ hv']
      · rw [finiteAdeleSingleAdd_apply_of_ne hu, finiteAdeleSingleAdd_apply_of_ne hu, mul_zero]

alias norm_eq_one := _root_.UpperTheory.Reformulated.B.AdelicCharacterNormOne.norm_eq_one

theorem unitary_and_annihilator_eq : ∀ (F : Type) [Field F] [NumberField F] [LocallyCompactSpace (AdeleRing (𝓞 F) F)] [Invertible (2 : AdeleRing (𝓞 F) F)] (ψ : AddChar (AdeleRing (𝓞 F) F) ℂ), Continuous ψ → ψ ≠ 1 → (∀ a : F, ψ (algebraMap F (AdeleRing (𝓞 F) F) a) = 1) → (∀ x, ‖ψ x‖ = 1) ∧ ∀ x : AdeleRing (𝓞 F) F, (∀ a : F, ψ (x * algebraMap F (AdeleRing (𝓞 F) F) a) = 1) → ∃ b : F, x = algebraMap F (AdeleRing (𝓞 F) F) b :=
  _root_.UpperTheory.Reformulated.B.UnitaryAnnihilator.unitary_and_annihilator_eq

end GlobalTheory.CompanionTheory.AdeleAnn
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.MembershipProofs.ThetaDistributionHeisenbergInvariant =====
