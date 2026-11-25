module

public import Development.AutomorphicSpectrum.Definitions.AdelicLattices.FactPrimes
public import Mathlib.Algebra.AffineMonoid.Basic
public import Mathlib.NumberTheory.NumberField.CMField
public import Mathlib.RingTheory.DedekindDomain.Different
public import Mathlib.RingTheory.SimpleRing.Principal
public import Development.WeilBound.CoreStatements.SesquilinearFractions.ExistsUnitValueSkewHermitian
public import Development.WeilBound.CoreStatements.SesquilinearFractions.NIdeal
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.SesquilinearFractions.DifferentIdealEqTopOfUnramified, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ExistsRealDifferentGenerator

-- ===== clump member: Development.WeilBound.CoreStatements.SesquilinearFractions.DifferentIdealEqTopOfUnramified =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.SesquilinearFractions.DifferentIdealEqTopOfUnramified", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.AdelicLattices.FactPrimes\npublic import Mathlib.Algebra.AffineMonoid.Basic\npublic import Mathlib.NumberTheory.NumberField.CMField\npublic import Mathlib.RingTheory.DedekindDomain.Different\npublic import Mathlib.RingTheory.SimpleRing.Principal\npublic import Development.WeilBound.CoreStatements.SesquilinearFractions.ExistsUnitValueSkewHermitian\npublic import Development.WeilBound.CoreStatements.SesquilinearFractions.NIdeal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Fl
open scoped ComplexOrder

noncomputable section

namespace PositivityTheory.Xgf

theorem differentIdeal_eq_top_of_unramified (E : Type) [Field E] [NumberField E] [IsCMField E]
    [h : Algebra.Unramified (𝓞 (maximalRealSubfield E)) (𝓞 E)] :
    differentIdeal (𝓞 (maximalRealSubfield E)) (𝓞 E) = ⊤ := by
  by_contra hne
  obtain ⟨P, hP, hle⟩ := Ideal.exists_le_maximal _ hne
  have hdvd : P ∣ differentIdeal (𝓞 (maximalRealSubfield E)) (𝓞 E) := Ideal.dvd_iff_le.mpr hle
  haveI : P.IsPrime := hP.isPrime
  have hU : Algebra.IsUnramifiedAt (𝓞 (maximalRealSubfield E)) P := by
    unfold Algebra.IsUnramifiedAt
    haveI : Algebra.FormallyUnramified (𝓞 (maximalRealSubfield E)) (𝓞 E) := inferInstance
    exact Algebra.FormallyUnramified.comp (𝓞 (maximalRealSubfield E)) (𝓞 E) (Localization.AtPrime P)
  exact (not_dvd_differentIdeal_iff.mpr hU) hdvd

theorem exists_real_different_generator : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E], Algebra.Unramified (𝓞 (maximalRealSubfield E)) (𝓞 E) → ∀ p : Nat.Primes, ∃ δ ∈ differentIdeal ℤ (𝓞 E), δ ≠ 0 ∧ IsCMField.complexConj E (δ : E) = δ ∧ ∀ j : E →+* ℂ_[p], Real.log ‖j (δ : E)‖ = logIdeal (j.comp (algebraMap (𝓞 E) E)) (differentIdeal ℤ (𝓞 E)) := by
  intro E _ _ _ hU p
  set F := maximalRealSubfield E
  have hD : differentIdeal ℤ (𝓞 E) = (differentIdeal ℤ (𝓞 F)).map (algebraMap (𝓞 F) (𝓞 E)) := by
    rw [differentIdeal_eq_differentIdeal_mul_differentIdeal ℤ (𝓞 F) (𝓞 E), differentIdeal_eq_top_of_unramified E, Ideal.top_mul]
  have hD0 : differentIdeal ℤ (𝓞 F) ≠ ⊥ := differentIdeal_ne_bot
  obtain ⟨δ, hδI, hδ0, ⟨n, hn, hnI⟩, -⟩ := ideal_padic_generator_log_norm F (differentIdeal ℤ (𝓞 F)) p hD0
  set δ' : 𝓞 E := algebraMap (𝓞 F) (𝓞 E) δ
  have hδ'I : δ' ∈ differentIdeal ℤ (𝓞 E) := by rw [hD]; exact Ideal.mem_map_of_mem _ hδI
  have hinj : Function.Injective (algebraMap (𝓞 F) (𝓞 E)) := FaithfulSMul.algebraMap_injective _ _
  refine ⟨δ', hδ'I, fun h => hδ0 (hinj (h.trans (map_zero _).symm)), ?_, fun j => ?_⟩
  · have : ((δ' : 𝓞 E) : E) = ((δ : F) : E) := rfl
    rw [this]
    exact IsCMField.complexConj_apply_eq_self E (δ : F)
  ·
    set j' : 𝓞 E →+* ℂ_[p] := j.comp (algebraMap (𝓞 E) E) with hj'
    have hmax : ∀ b ∈ differentIdeal ℤ (𝓞 E), ‖j' b‖ ≤ ‖j' δ'‖ := by
      intro b hb
      rw [hD] at hb
      induction hb using Submodule.span_induction with
      | mem x hx =>
        obtain ⟨a, ha, rfl⟩ := hx
        obtain ⟨y, hy⟩ := Ideal.mem_span_singleton'.mp (hnI a ha)
        have e := congrArg (fun z : 𝓞 F => j' (algebraMap (𝓞 F) (𝓞 E) z)) hy
        simp only [map_mul, map_natCast] at e
        have h1 := congrArg norm e
        simp only [norm_mul] at h1
        rw [LocGen.norm_natCast_cp p n hn, one_mul] at h1
        rw [← h1]
        have : ‖j' (algebraMap (𝓞 F) (𝓞 E) y)‖ ≤ 1 := NI.norm_int_le j' _
        calc ‖j' (algebraMap (𝓞 F) (𝓞 E) y)‖ * ‖j' δ'‖ ≤ 1 * ‖j' δ'‖ :=
              mul_le_mul_of_nonneg_right this (norm_nonneg _)
          _ = ‖j' δ'‖ := one_mul _
      | zero => simp
      | add x y _ _ hx hy =>
        rw [map_add (f := _)]
        exact (IsUltrametricDist.norm_add_le_max _ _).trans (max_le hx hy)
      | smul c x _ hx =>
        rw [smul_eq_mul, map_mul, norm_mul]
        have : ‖j' c‖ ≤ 1 := NI.norm_int_le j' c
        calc ‖j' c‖ * ‖j' x‖ ≤ 1 * ‖j' δ'‖ := mul_le_mul this hx (norm_nonneg _) zero_le_one
          _ = ‖j' δ'‖ := one_mul _
    exact (NI.logIdeal_eq (j.comp (algebraMap (𝓞 E) E)) _ hδ'I hmax).symm

end PositivityTheory.Xgf

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.SesquilinearFractions.DifferentIdealEqTopOfUnramified =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ExistsRealDifferentGenerator =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ExistsRealDifferentGenerator", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.AdelicLattices.FactPrimes\npublic import Mathlib.Algebra.AffineMonoid.Basic\npublic import Mathlib.NumberTheory.NumberField.CMField\npublic import Mathlib.RingTheory.DedekindDomain.Different\npublic import Mathlib.RingTheory.SimpleRing.Principal\npublic import Development.WeilBound.CoreStatements.SesquilinearFractions.DifferentIdealEqTopOfUnramified\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Fl
open scoped ComplexOrder

theorem _root_.GlobalTheory.CompanionTheory.Relay.exists_real_different_generator : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E], Algebra.Unramified (𝓞 (maximalRealSubfield E)) (𝓞 E) → ∀ p : Nat.Primes, ∃ δ ∈ differentIdeal ℤ (𝓞 E), δ ≠ 0 ∧ IsCMField.complexConj E (δ : E) = δ ∧ ∀ j : E →+* ℂ_[p], Real.log ‖j (δ : E)‖ = logIdeal (j.comp (algebraMap (𝓞 E) E)) (differentIdeal ℤ (𝓞 E)) := by
  first | exact @PositivityTheory.Xgf.exists_real_different_generator
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ExistsRealDifferentGenerator =====
