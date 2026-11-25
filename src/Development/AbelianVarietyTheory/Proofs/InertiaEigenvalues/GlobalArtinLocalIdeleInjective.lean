module

public import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.ChevalleyUnits
public import Mathlib.RingTheory.DedekindDomain.AdicValuation.Completion
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsContinuousPadic
public import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ExistsUniqueHcharOfFiniteOrder
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
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
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
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExistsNotCongPow
import Development.AbelianVarietyTheory.Definitions.Foundations.MatrixMeasurableSpace
import Development.AbelianVarietyTheory.Definitions.Foundations.SmoothPartStable
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NonemptyEquivOfRangeEq
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.LeviEmbMemNormalizerLower
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HasExponentZeroIff
import Formalism.ConjugateSelfDual.Statement
import ReciprocityTheory.GaloisValuations.GlobalA
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.ReduceModChar
import Mathlib.Algebra.Order.Star.Int

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.EqOneOfApproxByCongruentGlobalUnits, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsGlobalApproxOfArtinTrivial, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ValuationEqOneOfCongruentGlobalApprox, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GlobalArtinLocalIdeleInjective

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.EqOneOfApproxByCongruentGlobalUnits =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.EqOneOfApproxByCongruentGlobalUnits", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.ChevalleyUnits\npublic import Mathlib.RingTheory.DedekindDomain.AdicValuation.Completion\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsContinuousPadic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExistsNotCongPow\nimport Development.AbelianVarietyTheory.Definitions.Foundations.MatrixMeasurableSpace\nimport Development.AbelianVarietyTheory.Definitions.Foundations.SmoothPartStable\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NonemptyEquivOfRangeEq\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.LeviEmbMemNormalizerLower\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HasExponentZeroIff\nimport Formalism.ConjugateSelfDual.Statement\nimport ReciprocityTheory.GaloisValuations.GlobalA\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain ValuativeRel Matrix Polynomial Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.PRep GlobalTheory.SmGL GlobalTheory.SplitWeil GlobalTheory.LocGL GlobalTheory.WeilDeligne GlobalTheory.LocLanglands GlobalTheory.Published
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

namespace GlobalTheory

theorem unit_pow_dvd_sub_one_of_finite {R : Type} [CommRing R] (g : R)
    [Finite (R ⧸ Ideal.span {g})] :
    ∃ m : ℕ, 0 < m ∧ ∀ ε : Rˣ, g ∣ (ε : R) ^ m - 1 := by
  haveI : Finite (R ⧸ Ideal.span {g})ˣ := Finite.of_injective (fun u => (u : R ⧸ Ideal.span {g})) (fun _ _ h => Units.ext h)
  refine ⟨Nat.card (R ⧸ Ideal.span {g})ˣ, Nat.card_pos, fun ε => ?_⟩
  have h := pow_card_eq_one' (G := (R ⧸ Ideal.span {g})ˣ) (x := Units.map (Ideal.Quotient.mk _).toMonoidHom ε)
  have h2 : Ideal.Quotient.mk (Ideal.span {g}) ((ε : R) ^ Nat.card (R ⧸ Ideal.span {g})ˣ - 1) = 0 := by
    have := congrArg Units.val h
    simp only [Units.val_pow_eq_pow_val, Units.coe_map, RingHom.toMonoidHom_eq_coe, MonoidHom.coe_coe, Units.val_one] at this
    rw [map_sub, map_pow, this, map_one, sub_self]
  rw [Ideal.Quotient.eq_zero_iff_mem, Ideal.mem_span_singleton] at h2
  exact h2

end GlobalTheory

namespace GlobalTheory


open IsDedekindDomain.HeightOneSpectrum in
theorem eq_one_of_approx_by_congruent_units : ChevalleyUnits → ∀ (E : Type) [Field E] [NumberField E] (w : HeightOneSpectrum (𝓞 E))
    (x : w.adicCompletion E), Valued.v x = 1 → (∀ a : ℕ, 0 < a → ∀ t : w.adicCompletion E, t ≠ 0 → ∃ k : Eˣ,
      (∀ v : HeightOneSpectrum (𝓞 E), v ≠ w →
        v.valuation E (((k : E) - 1) / (a : E)) ≤ 1 ∧ v.valuation E ((k : E)⁻¹) ≤ 1) ∧
      Valued.v (algebraMap E (w.adicCompletion E) (k : E) - x) ≤ Valued.v t) → x = 1 := by
  intro hCh E _ _ w x hx hap
  have hE : ∀ k : E, Valued.v (algebraMap E (w.adicCompletion E) k) = w.valuation E k :=
    fun k => valuedAdicCompletion_eq_valuation' w k
  set q : ℕ := Ideal.absNorm w.asIdeal with hqdef
  have hq0 : q ≠ 0 := by
    rw [hqdef, Ne, Ideal.absNorm_eq_zero_iff]; exact w.ne_bot
  have hqmem : (q : 𝓞 E) ∈ w.asIdeal := Ideal.absNorm_mem _
  set γ := w.intValuation (q : 𝓞 E) with hγdef
  have hγ : γ < 1 := (w.intValuation_lt_one_iff_mem _).2 hqmem
  have key : ∀ n : ℕ, Valued.v (x - 1) ≤ γ ^ (n + 1) := by
    intro n
    set g : 𝓞 E := (q : 𝓞 E) ^ (n + 1) with hgdef
    have hg0 : g ≠ 0 := pow_ne_zero _ (Nat.cast_ne_zero.2 hq0)
    haveI : Finite (𝓞 E ⧸ Ideal.span {g}) := by
      refine (Ideal.absNorm_ne_zero_iff _).1 ?_
      rw [Ne, Ideal.absNorm_eq_zero_iff, Ideal.span_singleton_eq_bot]; exact hg0
    obtain ⟨m, hm, hmg⟩ := unit_pow_dvd_sub_one_of_finite g
    obtain ⟨a, ha0, hacop, hch⟩ := hCh E m q hm (Nat.pos_of_ne_zero hq0)

    have hanot : (a : 𝓞 E) ∉ w.asIdeal := by
      intro ha
      obtain ⟨s, t, hst⟩ := (Nat.isCoprime_iff_coprime.2 hacop).map (Int.castRingHom (𝓞 E))
      apply w.isPrime.ne_top
      rw [Ideal.eq_top_iff_one, ← hst]
      simp only [eq_intCast, Int.cast_natCast]
      exact Ideal.add_mem _ (Ideal.mul_mem_left _ _ ha) (Ideal.mul_mem_left _ _ hqmem)
    have hva : w.intValuation (a : 𝓞 E) = 1 := intValuation_eq_one_iff.2 hanot
    have haE : (a : E) = algebraMap (𝓞 E) E (a : 𝓞 E) := (map_natCast _ _).symm
    have ha0E : (a : E) ≠ 0 := Nat.cast_ne_zero.2 ha0.ne'
    have hvaE : ∀ v : HeightOneSpectrum (𝓞 E), v.valuation E (a : E) ≤ 1 := fun v => by
      rw [haE, valuation_of_algebraMap]; exact v.intValuation_le_one _
    have hwaE : w.valuation E (a : E) = 1 := by rw [haE, valuation_of_algebraMap]; exact hva
    set t : w.adicCompletion E := algebraMap E _ (algebraMap (𝓞 E) E g) with htdef
    have hvt : Valued.v t = γ ^ (n + 1) := by
      rw [htdef, hE, valuation_of_algebraMap, hgdef, map_pow]
    have ht0 : t ≠ 0 := by
      intro h; have := hvt; rw [h, map_zero] at this
      exact (pow_ne_zero _ (by have hq0' : (q : 𝓞 E) ≠ 0 := Nat.cast_ne_zero.2 hq0; rw [hγdef]; exact w.intValuation_ne_zero _ hq0')) this.symm
    obtain ⟨k, hkv, hkw⟩ := hap a ha0 t ht0
    rw [hvt] at hkw
    have hγn : γ ^ (n + 1) < 1 := pow_lt_one₀ zero_le' hγ (Nat.succ_ne_zero n)

    have hwk : w.valuation E (k : E) = 1 := by
      rw [← hE, ← hx]
      exact Valuation.map_eq_of_sub_lt _ (lt_of_le_of_lt hkw (hx ▸ hγn))
    have hk1 : ∀ v : HeightOneSpectrum (𝓞 E), v.valuation E ((k : E) - 1) ≤ 1 := by
      intro v
      by_cases hv : v = w
      · subst hv
        exact Valuation.map_sub_le _ hwk.le (by rw [map_one])
      · have h1 := (hkv v hv).1
        have : (k : E) - 1 = ((k : E) - 1) / (a : E) * (a : E) := by field_simp
        rw [this, map_mul]
        exact mul_le_one' h1 (hvaE v)
    have hkle : ∀ v : HeightOneSpectrum (𝓞 E), v.valuation E (k : E) ≤ 1 := by
      intro v
      have : (k : E) = ((k : E) - 1) + 1 := by ring
      rw [this]; exact Valuation.map_add_le _ (hk1 v) (by rw [map_one])
    have hkile : ∀ v : HeightOneSpectrum (𝓞 E), v.valuation E ((k : E)⁻¹) ≤ 1 := by
      intro v
      by_cases hv : v = w
      · subst hv; rw [map_inv₀, hwk, inv_one]
      · exact (hkv v hv).2
    obtain ⟨κ, hκ⟩ := mem_integers_of_valuation_le_one (R := 𝓞 E) (K := E) _ hkle
    obtain ⟨κ', hκ'⟩ := mem_integers_of_valuation_le_one (R := 𝓞 E) (K := E) _ hkile
    have hinj : Function.Injective (algebraMap (𝓞 E) E) := IsFractionRing.injective (𝓞 E) E
    have hkk : κ * κ' = 1 := hinj (by rw [map_mul, hκ, hκ', map_one, mul_inv_cancel₀ k.ne_zero])
    let u : (𝓞 E)ˣ := ⟨κ, κ', hkk, by rw [mul_comm]; exact hkk⟩
    have hdivE : ∀ v : HeightOneSpectrum (𝓞 E), v.valuation E (((k : E) - 1) / (a : E)) ≤ 1 := by
      intro v
      by_cases hv : v = w
      · subst hv; rw [map_div₀, hwaE, div_one]; exact hk1 _
      · exact (hkv v hv).1
    obtain ⟨y, hy⟩ := mem_integers_of_valuation_le_one (R := 𝓞 E) (K := E) _ hdivE
    have hdvd : (a : 𝓞 E) ∣ (u : 𝓞 E) - 1 := by
      refine ⟨y, hinj ?_⟩
      show algebraMap (𝓞 E) E (κ - 1) = algebraMap (𝓞 E) E ((a : 𝓞 E) * y)
      rw [map_sub, map_one, hκ, map_mul, hy, ← haE]
      field_simp
    obtain ⟨ε, hε⟩ := hch u hdvd
    have hgk : g ∣ κ - 1 := by
      have := hmg ε
      rw [← Units.val_pow_eq_pow_val, ← hε] at this
      exact this
    have hwk1 : w.valuation E ((k : E) - 1) ≤ γ ^ (n + 1) := by
      obtain ⟨c, hc⟩ := hgk
      rw [← hκ, ← map_one (algebraMap (𝓞 E) E), ← map_sub, valuation_of_algebraMap, hc, map_mul]
      have : w.intValuation g = γ ^ (n + 1) := by rw [hgdef, map_pow]
      rw [this]
      exact mul_le_of_le_one_right' (w.intValuation_le_one c)
    have hsplit : x - 1 = -(algebraMap E (w.adicCompletion E) (k : E) - x)
        + algebraMap E (w.adicCompletion E) ((k : E) - 1) := by
      rw [map_sub, map_one]; ring
    rw [hsplit]
    refine Valuation.map_add_le _ ?_ ?_
    · rw [Valuation.map_neg]; exact hkw
    · rw [hE]; exact hwk1
  by_contra hne
  have hne' : Valued.v (x - 1) ≠ 0 := (Valuation.ne_zero_iff _).2 (sub_ne_zero.2 hne)
  obtain ⟨n, hn⟩ := exists_pow_lt₀ hγ (Units.mk0 _ hne')
  have h1 := key n
  have h2 : γ ^ (n + 1) ≤ γ ^ n := by rw [pow_succ]; exact mul_le_of_le_one_right' hγ.le
  exact absurd (lt_of_le_of_lt (h1.trans h2) hn) (lt_irrefl _)

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.EqOneOfApproxByCongruentGlobalUnits =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsGlobalApproxOfArtinTrivial =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsGlobalApproxOfArtinTrivial", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ExistsUniqueHcharOfFiniteOrder\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsContinuousPadic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExistsNotCongPow\nimport Development.AbelianVarietyTheory.Definitions.Foundations.MatrixMeasurableSpace\nimport Development.AbelianVarietyTheory.Definitions.Foundations.SmoothPartStable\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NonemptyEquivOfRangeEq\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.LeviEmbMemNormalizerLower\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HasExponentZeroIff\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain ValuativeRel Matrix Polynomial Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.PRep GlobalTheory.SmGL GlobalTheory.SplitWeil GlobalTheory.LocGL GlobalTheory.WeilDeligne GlobalTheory.LocLanglands GlobalTheory.Published
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

noncomputable section

namespace GlobalTheory.ArtinApprox

open Neutral.B1 GlobalTheory.HeckeGal

theorem isOpen_integers_away {E : Type} [Field E] [NumberField E] (w : HeightOneSpectrum (𝓞 E)) :
    IsOpen {f : FiniteAdeleRing (𝓞 E) E | ∀ v, v ≠ w → f v ∈ v.adicCompletionIntegers E} :=
  RestrictedProduct.isOpen_forall_imp_mem (fun v => Valued.isOpen_valuationSubring _) (p := fun v => v ≠ w)

theorem mem_integers_iff {E : Type} [Field E] [NumberField E] (v : HeightOneSpectrum (𝓞 E)) (z : E) :
    algebraMap E (v.adicCompletion E) z ∈ v.adicCompletionIntegers E ↔ v.valuation E z ≤ 1 := by
  rw [HeightOneSpectrum.mem_adicCompletionIntegers]
  show Valued.v ((z : v.adicCompletion E)) ≤ 1 ↔ _
  rw [HeightOneSpectrum.valuedAdicCompletion_eq_valuation']

theorem le_of_mul_inv_mem {E : Type} [Field E] [NumberField E] (w : HeightOneSpectrum (𝓞 E))
    (y t : w.adicCompletion E) (ht : t ≠ 0) (h : y * t⁻¹ ∈ w.adicCompletionIntegers E) : Valued.v y ≤ Valued.v t := by
  rw [HeightOneSpectrum.mem_adicCompletionIntegers, map_mul, map_inv₀] at h
  have hp : 0 < Valued.v t := by
    rw [pos_iff_ne_zero]; exact (_root_.map_ne_zero _).mpr ht
  simpa using (mul_inv_le_iff₀ hp).mp h

theorem snd_mul_infConn {E : Type} [Field E] [NumberField E] (d c : Ideles E) (hc : c ∈ infConn E) :
    ((d * c : Ideles E) : AdeleRing (𝓞 E) E).2 = (d : AdeleRing (𝓞 E) E).2 := by
  obtain ⟨c', _, rfl⟩ := hc
  rw [Units.val_mul]
  show (d : AdeleRing (𝓞 E) E).2 * 1 = _
  rw [mul_one]

theorem snd_diagUnits {E : Type} [Field E] [NumberField E] (k : Eˣ) :
    ((diagUnits E k : Ideles E) : AdeleRing (𝓞 E) E).2 = algebraMap E (FiniteAdeleRing (𝓞 E) E) (k : E) := rfl

theorem localIdele_snd_ne' {E : Type} [Field E] [NumberField E] (w v : HeightOneSpectrum (𝓞 E)) (hv : v ≠ w)
    (x : (w.adicCompletion E)ˣ) : ((localIdele E w x : Ideles E) : AdeleRing (𝓞 E) E).2 v = 1 :=
  (localIdele_isSupportedAt E w x).2 v hv

theorem exists_global_approx : ∀ (E Ω : Type) [Field E] [NumberField E] [Field Ω] [Algebra E Ω] [IsAlgClosure E Ω]
    (art : Neutral.B1.Ideles E →* GlobalTheory.HeckeGal.Gab E Ω), GlobalTheory.HeckeGal.IsGlobalArtin art →
    ∀ (w : HeightOneSpectrum (𝓞 E)) (x : (w.adicCompletion E)ˣ), art (Neutral.B1.localIdele E w x) = 1 →
    (∀ a : ℕ, 0 < a → ∀ t : w.adicCompletion E, t ≠ 0 → ∃ k : Eˣ,
      (∀ v : HeightOneSpectrum (𝓞 E), v ≠ w →
        v.valuation E (((k : E) - 1) / (a : E)) ≤ 1 ∧ v.valuation E ((k : E)⁻¹) ≤ 1) ∧
      Valued.v (algebraMap E (w.adicCompletion E) (k : E) - (x : w.adicCompletion E)) ≤ Valued.v t) := by
  intro E Ω _ _ _ _ _ art ha w x hx a _ t ht
  classical
  have hmem : localIdele E w x ∈ closure (((diagUnits E).range ⊔ infConn E : Subgroup (Ideles E)) : Set (Ideles E)) := by
    rw [← Subgroup.topologicalClosure_coe, ← ha.ker]
    exact hx
  let g1 : Ideles E → FiniteAdeleRing (𝓞 E) E := fun y => (y : AdeleRing (𝓞 E) E).2
  let g2 : Ideles E → FiniteAdeleRing (𝓞 E) E := fun y => ((y⁻¹ : Ideles E) : AdeleRing (𝓞 E) E).2
  have hg1 : Continuous g1 := continuous_snd.comp Units.continuous_val
  have hg2 : Continuous g2 := continuous_snd.comp Units.continuous_coe_inv
  let c : FiniteAdeleRing (𝓞 E) E := algebraMap E (FiniteAdeleRing (𝓞 E) E) ((a : E)⁻¹)
  let U : Set (FiniteAdeleRing (𝓞 E) E) := {f | ∀ v, v ≠ w → f v ∈ v.adicCompletionIntegers E}
  have hU : IsOpen U := isOpen_integers_away w
  let N : Set (Ideles E) := (fun y => (g1 y - 1) * c) ⁻¹' U ∩ g2 ⁻¹' U ∩
    (fun y => (g1 y w - (x : w.adicCompletion E)) * t⁻¹) ⁻¹' (w.adicCompletionIntegers E : Set (w.adicCompletion E))
  have hN : IsOpen N := by
    refine ((hU.preimage ((hg1.sub continuous_const).mul continuous_const)).inter (hU.preimage hg2)).inter ?_
    exact (Valued.isOpen_valuationSubring _).preimage
      ((((RestrictedProduct.continuous_eval w).comp hg1).sub continuous_const).mul continuous_const)
  have hxN : localIdele E w x ∈ N := by
    refine ⟨⟨fun v hv => ?_, fun v hv => ?_⟩, ?_⟩
    · show ((g1 (localIdele E w x) - 1) * c) v ∈ v.adicCompletionIntegers E
      have e : ((g1 (localIdele E w x) - 1) * c) v = 0 := by
        show (((localIdele E w x : Ideles E) : AdeleRing (𝓞 E) E).2 v - 1) * c v = 0
        rw [localIdele_snd_ne' w v hv, sub_self, zero_mul]
      rw [e]; exact zero_mem _
    · show g2 (localIdele E w x) v ∈ v.adicCompletionIntegers E
      have e : g2 (localIdele E w x) v = 1 := by
        show (((localIdele E w x)⁻¹ : Ideles E) : AdeleRing (𝓞 E) E).2 v = 1
        rw [← map_inv]
        exact localIdele_snd_ne' w v hv _
      rw [e]; exact one_mem _
    · show (g1 (localIdele E w x) w - (x : w.adicCompletion E)) * t⁻¹ ∈ w.adicCompletionIntegers E
      have e : g1 (localIdele E w x) w = (x : w.adicCompletion E) := localIdele_snd_self E w x
      rw [e, sub_self, zero_mul]; exact zero_mem _
  obtain ⟨h, hhN, hhH⟩ := mem_closure_iff.mp hmem N hN hxN
  obtain ⟨_, ⟨k, rfl⟩, d, hd, rfl⟩ := Subgroup.mem_sup.1 hhH
  have e1 : g1 (diagUnits E k * d) = algebraMap E (FiniteAdeleRing (𝓞 E) E) (k : E) := by
    show ((diagUnits E k * d : Ideles E) : AdeleRing (𝓞 E) E).2 = _
    rw [snd_mul_infConn _ _ hd, snd_diagUnits]
  have e2 : g2 (diagUnits E k * d) = algebraMap E (FiniteAdeleRing (𝓞 E) E) ((k⁻¹ : Eˣ) : E) := by
    show (((diagUnits E k * d)⁻¹ : Ideles E) : AdeleRing (𝓞 E) E).2 = _
    rw [mul_inv, ← map_inv, snd_mul_infConn _ _ (inv_mem hd), snd_diagUnits]
  obtain ⟨⟨h1, h2⟩, h3⟩ := hhN
  refine ⟨k, fun v hv => ⟨?_, ?_⟩, ?_⟩
  · have this : ((g1 (diagUnits E k * d) - 1) * c) v ∈ v.adicCompletionIntegers E := h1 v hv
    have e : ((g1 (diagUnits E k * d) - 1) * c) v = algebraMap E (v.adicCompletion E) (((k : E) - 1) / (a : E)) := by
      rw [e1, div_eq_mul_inv, map_mul, map_sub, map_one]
      rfl
    rw [e] at this
    exact (mem_integers_iff v _).mp this
  · have this : g2 (diagUnits E k * d) v ∈ v.adicCompletionIntegers E := h2 v hv
    rw [e2] at this
    rw [← Units.val_inv_eq_inv_val]
    exact (mem_integers_iff v _).mp this
  · have e : g1 (diagUnits E k * d) w = algebraMap E (w.adicCompletion E) (k : E) := by
      rw [e1]; rfl
    have h3' : (g1 (diagUnits E k * d) w - (x : w.adicCompletion E)) * t⁻¹ ∈ w.adicCompletionIntegers E := h3
    rw [e] at h3'
    exact le_of_mul_inv_mem w _ t ht h3'

end GlobalTheory.ArtinApprox
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsGlobalApproxOfArtinTrivial =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ValuationEqOneOfCongruentGlobalApprox =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ValuationEqOneOfCongruentGlobalApprox", "h": "module\n\npublic import Mathlib.RingTheory.DedekindDomain.AdicValuation.Completion\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsContinuousPadic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExistsNotCongPow\nimport Development.AbelianVarietyTheory.Definitions.Foundations.MatrixMeasurableSpace\nimport Development.AbelianVarietyTheory.Definitions.Foundations.SmoothPartStable\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NonemptyEquivOfRangeEq\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.LeviEmbMemNormalizerLower\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HasExponentZeroIff\nimport Formalism.ConjugateSelfDual.Statement\nimport ReciprocityTheory.GaloisValuations.GlobalA\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain ValuativeRel Matrix Polynomial Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.PRep GlobalTheory.SmGL GlobalTheory.SplitWeil GlobalTheory.LocGL GlobalTheory.WeilDeligne GlobalTheory.LocLanglands GlobalTheory.Published
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

namespace GlobalTheory
namespace OrdZeroUnit

variable {E : Type} [Field E] [NumberField E]

theorem norm_modEq_one (a : ℕ) (y : 𝓞 E) :
    (((Algebra.norm ℤ (1 + (a : 𝓞 E) * y) : ℤ)) : ZMod a) = 1 := by
  classical
  let b := Module.Free.chooseBasis ℤ (𝓞 E)
  rw [Algebra.norm_eq_matrix_det b, ← eq_intCast (Int.castRingHom (ZMod a)), RingHom.map_det]
  have : (Int.castRingHom (ZMod a)).mapMatrix (Algebra.leftMulMatrix b (1 + (a : 𝓞 E) * y)) = 1 := by
    rw [map_add (f := _), map_one, map_mul, map_natCast, map_add (f := _), map_one, map_mul, map_natCast,
      ← map_natCast (algebraMap (ZMod a) (Matrix (Module.Free.ChooseBasisIndex ℤ (𝓞 E))
        (Module.Free.ChooseBasisIndex ℤ (𝓞 E)) (ZMod a))), ZMod.natCast_self, map_zero, zero_mul, add_zero]
  rw [this, Matrix.det_one]

theorem isUnit_of_valuation_eq_one (z : E) (hz : z ≠ 0) (h : ∀ v : HeightOneSpectrum (𝓞 E), v.valuation E z = 1) :
    ∃ u : 𝓞 E, IsUnit u ∧ algebraMap (𝓞 E) E u = z := by
  obtain ⟨y, hy⟩ := HeightOneSpectrum.mem_integers_of_valuation_le_one E z (fun v => (h v).le)
  obtain ⟨y', hy'⟩ := HeightOneSpectrum.mem_integers_of_valuation_le_one E z⁻¹
    (fun v => by rw [map_inv₀, h v, inv_one])
  have hyy : y * y' = 1 := by
    apply FaithfulSMul.algebraMap_injective (𝓞 E) E
    rw [map_mul, hy, hy', mul_inv_cancel₀ hz, map_one]
  exact ⟨y, ⟨⟨y, y', hyy, by rw [mul_comm]; exact hyy⟩, rfl⟩, hy⟩

end OrdZeroUnit
end GlobalTheory

namespace GlobalTheory
namespace OrdZeroUnit

theorem valuation_eq_one_of_approx : ∀ (E : Type) [Field E] [NumberField E] (w : HeightOneSpectrum (𝓞 E)) (x : w.adicCompletion E),
    x ≠ 0 → Valued.v x ≤ 1 → (∀ a : ℕ, 0 < a → ∀ t : w.adicCompletion E, t ≠ 0 → ∃ k : Eˣ,
      (∀ v : HeightOneSpectrum (𝓞 E), v ≠ w →
        v.valuation E (((k : E) - 1) / (a : E)) ≤ 1 ∧ v.valuation E ((k : E)⁻¹) ≤ 1) ∧
      Valued.v (algebraMap E (w.adicCompletion E) (k : E) - x) ≤ Valued.v t) → Valued.v x = 1 := by
  intro E _ _ w x hx0 hx1 hyp
  by_contra hne
  have hlt : Valued.v x < 1 := lt_of_le_of_ne hx1 hne
  have hxpos : Valued.v x ≠ 0 := (Valuation.ne_zero_iff _).2 hx0
  have ht0 : x * x ≠ 0 := mul_ne_zero hx0 hx0
  have htx : Valued.v (x * x) < Valued.v x := by
    rw [map_mul]
    calc Valued.v x * Valued.v x < 1 * Valued.v x := mul_lt_mul_of_pos_right hlt (zero_lt_iff.2 hxpos)
      _ = Valued.v x := one_mul _

  have hw_eq : ∀ k : E, Valued.v (algebraMap E (w.adicCompletion E) k - x) ≤ Valued.v (x * x) →
      w.valuation E k = Valued.v x := by
    intro k hk
    rw [← HeightOneSpectrum.valuedAdicCompletion_eq_valuation']
    exact Valuation.map_eq_of_sub_lt _ (lt_of_le_of_lt hk htx)

  have hoff : ∀ (a : ℕ), 0 < a → ∀ (k : E), k ≠ 0 → ∀ v : HeightOneSpectrum (𝓞 E),
      v.valuation E ((k - 1) / (a : E)) ≤ 1 → v.valuation E k⁻¹ ≤ 1 →
      v.valuation E k = 1 ∧ v.valuation E (k - 1) ≤ 1 := by
    intro a ha k hk0 v h1 h2
    have hva : v.valuation E (a : E) ≤ 1 := by
      rw [← map_natCast (algebraMap (𝓞 E) E)]; exact v.valuation_le_one _
    have ha0 : (a : E) ≠ 0 := Nat.cast_ne_zero.2 ha.ne'
    have hk1 : v.valuation E (k - 1) ≤ 1 := by
      have : k - 1 = ((k - 1) / a) * a := by field_simp
      rw [this, map_mul]
      calc v.valuation E ((k - 1) / a) * v.valuation E (a : E) ≤ 1 * 1 := mul_le_mul' h1 hva
        _ = 1 := one_mul _
    have hk : v.valuation E k ≤ 1 := by
      have : k = (k - 1) + 1 := by ring
      rw [this]
      exact (Valuation.map_add _ _ _).trans (max_le hk1 (by rw [map_one]))
    refine ⟨le_antisymm hk ?_, hk1⟩
    calc 1 = v.valuation E (k * k⁻¹) := by rw [mul_inv_cancel₀ hk0, map_one]
      _ = v.valuation E k * v.valuation E k⁻¹ := map_mul _ _ _
      _ ≤ v.valuation E k * 1 := mul_le_mul' le_rfl h2
      _ = v.valuation E k := mul_one _

  obtain ⟨k₀, hk₀off, hk₀w⟩ := hyp 1 one_pos (x * x) ht0
  have hw0 := hw_eq _ hk₀w
  have hk₀0 : (k₀ : E) ≠ 0 := k₀.ne_zero
  have hoff0 : ∀ v, v ≠ w → v.valuation E (k₀ : E) = 1 := fun v hv =>
    (hoff 1 one_pos _ hk₀0 v (hk₀off v hv).1 (hk₀off v hv).2).1
  obtain ⟨k₀', hk₀'⟩ := HeightOneSpectrum.mem_integers_of_valuation_le_one E (k₀ : E) (fun v => by
    by_cases hv : v = w
    · subst hv; rw [hw0]; exact hx1
    · exact (hoff0 v hv).le)
  set R : ℕ := (Algebra.norm ℤ k₀').natAbs with hR
  set q : ℕ := Ideal.absNorm w.asIdeal with hq
  have hqmem : (q : 𝓞 E) ∈ w.asIdeal := Ideal.absNorm_mem _
  have hqpos : 0 < q := Nat.pos_of_ne_zero (fun h => w.ne_bot (Ideal.absNorm_eq_zero_iff.1 h))
  set a : ℕ := q * (R + 1) + 1 with ha
  have hapos : 0 < a := Nat.succ_pos _
  have hanot : (a : 𝓞 E) ∉ w.asIdeal := by
    intro h
    have h1 : (1 : 𝓞 E) ∈ w.asIdeal := by
      have := w.asIdeal.sub_mem h (w.asIdeal.mul_mem_right (((R + 1 : ℕ)) : 𝓞 E) hqmem)
      rw [ha] at this; push_cast at this; simpa using this
    exact w.isPrime.ne_top ((Ideal.eq_top_iff_one _).2 h1)
  have hwa : w.valuation E (a : E) = 1 := by
    rw [← map_natCast (algebraMap (𝓞 E) E) a]
    exact (HeightOneSpectrum.valuation_eq_one_iff_notMem w).2 hanot

  obtain ⟨k, hkoff, hkw⟩ := hyp a hapos (x * x) ht0
  have hwk := hw_eq _ hkw
  have hk0 : (k : E) ≠ 0 := k.ne_zero
  have hoffk : ∀ v, v ≠ w → v.valuation E (k : E) = 1 ∧ v.valuation E ((k : E) - 1) ≤ 1 :=
    fun v hv => hoff a hapos _ hk0 v (hkoff v hv).1 (hkoff v hv).2
  obtain ⟨kk, hkk⟩ := HeightOneSpectrum.mem_integers_of_valuation_le_one E (k : E) (fun v => by
    by_cases hv : v = w
    · subst hv; rw [hwk]; exact hx1
    · exact (hoffk v hv).1.le)

  obtain ⟨u, hu, hue⟩ := isUnit_of_valuation_eq_one ((k : E) / k₀) (div_ne_zero hk0 hk₀0) (fun v => by
    rw [map_div₀]
    by_cases hv : v = w
    · subst hv; rw [hw0, hwk, div_self hxpos]
    · rw [(hoffk v hv).1, hoff0 v hv, div_one])
  have hkku : kk = u * k₀' := by
    apply FaithfulSMul.algebraMap_injective (𝓞 E) E
    rw [map_mul, hkk, hue, hk₀', div_mul_cancel₀ _ hk₀0]
  have hNk : (Algebra.norm ℤ kk).natAbs = R := by
    rw [hkku, map_mul, Int.natAbs_mul, Int.isUnit_iff_natAbs_eq.1 (hu.map _), one_mul]

  obtain ⟨y, hy⟩ := HeightOneSpectrum.mem_integers_of_valuation_le_one E (((k : E) - 1) / (a : E))
    (fun v => by
      by_cases hv : v = w
      · subst hv
        rw [map_div₀, hwa, div_one, ← hkk, ← map_one (algebraMap (𝓞 E) E), ← map_sub]
        exact v.valuation_le_one _
      · exact (hkoff v hv).1)
  have hkky : kk = 1 + (a : 𝓞 E) * y := by
    apply FaithfulSMul.algebraMap_injective (𝓞 E) E
    have ha0 : (a : E) ≠ 0 := Nat.cast_ne_zero.2 hapos.ne'
    rw [map_add (f := _), map_one, map_mul, map_natCast, hy, hkk]
    field_simp
    ring
  have hcong := norm_modEq_one a y
  rw [← hkky] at hcong
  have hdvd : (a : ℤ) ∣ Algebra.norm ℤ kk - 1 :=
    (ZMod.intCast_eq_intCast_iff_dvd_sub 1 _ a).1 (by rw [hcong, Int.cast_one])
  have hN1 : Algebra.norm ℤ kk = 1 := by
    obtain ⟨c, hc⟩ := hdvd
    have hA : ((R : ℤ) + 2) ≤ (a : ℤ) := by
      rw [ha]; push_cast
      nlinarith [(Nat.one_le_cast (α := ℤ)).2 hqpos, (Nat.cast_nonneg R : (0 : ℤ) ≤ R)]
    have hR0 : (0 : ℤ) ≤ R := Nat.cast_nonneg R
    rcases Int.natAbs_eq (Algebra.norm ℤ kk) with h | h <;> rw [hNk] at h <;> rw [h] at hc ⊢
    · rcases lt_trichotomy c 0 with hc0 | hc0 | hc0
      · nlinarith
      · subst hc0; linarith
      · nlinarith
    · rcases lt_trichotomy c 0 with hc0 | hc0 | hc0
      · nlinarith
      · subst hc0; linarith
      · nlinarith

  have hunit : IsUnit kk := by
    rw [← Ideal.span_singleton_eq_top, ← Ideal.absNorm_eq_one_iff, Ideal.absNorm_span_singleton, hN1]
    rfl
  have hmem : kk ∈ w.asIdeal := by
    rw [← HeightOneSpectrum.valuation_lt_one_iff_mem (K := E)]
    change w.valuation E (algebraMap (𝓞 E) E kk) < 1
    rw [hkk, hwk]; exact hlt
  exact w.isPrime.ne_top (Ideal.eq_top_of_isUnit_mem _ hmem hunit)

end OrdZeroUnit
end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ValuationEqOneOfCongruentGlobalApprox =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GlobalArtinLocalIdeleInjective =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GlobalArtinLocalIdeleInjective", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ExistsUniqueHcharOfFiniteOrder\npublic import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.ChevalleyUnits\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsContinuousPadic\npublic import Mathlib.RingTheory.DedekindDomain.AdicValuation.Completion\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.EqOneOfApproxByCongruentGlobalUnits\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsGlobalApproxOfArtinTrivial\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ValuationEqOneOfCongruentGlobalApprox\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExistsNotCongPow\nimport Development.AbelianVarietyTheory.Definitions.Foundations.MatrixMeasurableSpace\nimport Development.AbelianVarietyTheory.Definitions.Foundations.SmoothPartStable\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NonemptyEquivOfRangeEq\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.LeviEmbMemNormalizerLower\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HasExponentZeroIff\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain ValuativeRel Matrix Polynomial Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.PRep GlobalTheory.SmGL GlobalTheory.SplitWeil GlobalTheory.LocGL GlobalTheory.WeilDeligne GlobalTheory.LocLanglands GlobalTheory.Published
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

namespace GlobalTheory.ArtinLocalInj

theorem artin_localIdele_injective : ChevalleyUnits → ∀ (E Ω : Type) [Field E] [NumberField E] [Field Ω] [Algebra E Ω] [IsAlgClosure E Ω] (art : Neutral.B1.Ideles E →* GlobalTheory.HeckeGal.Gab E Ω), GlobalTheory.HeckeGal.IsGlobalArtin art → ∀ w : HeightOneSpectrum (𝓞 E), Function.Injective fun x : (w.adicCompletion E)ˣ => art (Neutral.B1.localIdele E w x) := by
  intro hC E Ω _ _ _ _ _ art ha w
  have hker : ∀ x : (w.adicCompletion E)ˣ, art (Neutral.B1.localIdele E w x) = 1 → x = 1 := by
    intro x hx
    have hx' : art (Neutral.B1.localIdele E w x⁻¹) = 1 := by rw [map_inv, map_inv, hx, inv_one]
    have hv : Valued.v (x : w.adicCompletion E) = 1 := by
      rcases le_total (Valued.v (x : w.adicCompletion E)) 1 with h | h
      · exact _root_.GlobalTheory.OrdZeroUnit.valuation_eq_one_of_approx E w x x.ne_zero h (_root_.GlobalTheory.ArtinApprox.exists_global_approx E Ω art ha w x hx)
      · have h2 : Valued.v ((x⁻¹ : (w.adicCompletion E)ˣ) : w.adicCompletion E) ≤ 1 := by
          rw [Units.val_inv_eq_inv_val, map_inv₀]
          exact inv_le_one_of_one_le₀ h
        have h3 := _root_.GlobalTheory.OrdZeroUnit.valuation_eq_one_of_approx E w _ (x⁻¹).ne_zero h2 (_root_.GlobalTheory.ArtinApprox.exists_global_approx E Ω art ha w x⁻¹ hx')
        rw [Units.val_inv_eq_inv_val, map_inv₀, inv_eq_one] at h3
        exact h3
    exact Units.ext (_root_.GlobalTheory.eq_one_of_approx_by_congruent_units hC E w x hv (_root_.GlobalTheory.ArtinApprox.exists_global_approx E Ω art ha w x hx))
  intro x y hxy
  have : art (Neutral.B1.localIdele E w (x * y⁻¹)) = 1 := by
    simp only at hxy
    rw [map_mul, map_mul, map_inv, map_inv, hxy, mul_inv_cancel]
  exact mul_inv_eq_one.mp (hker _ this)

end GlobalTheory.ArtinLocalInj
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.GlobalArtinLocalIdeleInjective =====
