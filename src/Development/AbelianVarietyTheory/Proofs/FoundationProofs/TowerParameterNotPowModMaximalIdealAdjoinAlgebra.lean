module

public import Mathlib.Algebra.Algebra.Subalgebra.Lattice
public import Mathlib.Algebra.CharP.Defs
public import Mathlib.Algebra.Field.IsField
public import Mathlib.RingTheory.LocalRing.Defs
public import Mathlib.FieldTheory.PurelyInseparable.PerfectClosure
public import Mathlib.Algebra.Polynomial.Basic
public import Mathlib.Algebra.Polynomial.Degree.Defs
public import Mathlib.Algebra.Polynomial.Monic
public import Mathlib.FieldTheory.IntermediateField.Adjoin.Defs
public import Mathlib.RingTheory.Artinian.Ring
public import Mathlib.RingTheory.Derivation.Basic
public import Mathlib.RingTheory.Kaehler.Basic
public import Mathlib.RingTheory.Unramified.Basic
public import Mathlib.RingTheory.Unramified.Field
public import Development.AbelianVarietyTheory.Definitions.Foundations.NotCoboundaryConstantOne
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.CompletedLaurentIsDVRStatement
public import Mathlib.Algebra.Algebra.Subalgebra.Basic
public import Mathlib.Basic.NNReal.Defs
public import Mathlib.RingTheory.IntegralClosure.IsIntegral.Defs
public import Mathlib.RingTheory.Valuation.Basic
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.DivMemSubalgebraOfValuationLeOneOfUniformizer
public import Mathlib.NumberTheory.Padics.PadicIntegers
public import Mathlib.RingTheory.Algebraic.Defs
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsFinitePidSubalgebraDivPadicInt
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsGeneratorValuationPrimeDvdPowSubOfFinitePa
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.UnramifiedIntegersAdicComplete
public import Mathlib.RingTheory.DiscreteValuationRing.Basic
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ValuationLeOneIffIsIntegralOfCompleteDvr
public import Mathlib.Algebra.CharP.Quotient
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
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.HaveILetI
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
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsCompletedLaurentQuotPrimeEquivLaurentFp
import Mathlib.Algebra.Order.Star.Real
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsFieldAndPthRootsOfLocalAlgFrobeniusFixed, Development.AbelianVarietyTheory.Proofs.FoundationProofs.TowerParameterNotPowModMaximalIdealAdjoinAlgebra

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsFieldAndPthRootsOfLocalAlgFrobeniusFixed =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsFieldAndPthRootsOfLocalAlgFrobeniusFixed", "h": "module\n\npublic import Mathlib.Algebra.Algebra.Subalgebra.Lattice\npublic import Mathlib.Algebra.CharP.Defs\npublic import Mathlib.Algebra.Field.IsField\npublic import Mathlib.RingTheory.LocalRing.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\npublic import Mathlib.FieldTheory.PurelyInseparable.PerfectClosure\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.Polynomial.Basic\npublic import Mathlib.Algebra.Polynomial.Degree.Defs\npublic import Mathlib.Algebra.Polynomial.Monic\npublic import Mathlib.FieldTheory.IntermediateField.Adjoin.Defs\npublic import Mathlib.RingTheory.Artinian.Ring\npublic import Mathlib.RingTheory.Derivation.Basic\npublic import Mathlib.RingTheory.Kaehler.Basic\npublic import Mathlib.RingTheory.Unramified.Basic\npublic import Mathlib.RingTheory.Unramified.Field\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory

theorem localAlg_frob_fixed_isField_and_pth_roots :
    ∀ (p : ℕ) [Fact p.Prime] (k A : Type) [Field k] [CharP k p] [CommRing A] [Algebra k A] [IsLocalRing A]
  (T : Finset A) (f : ℕ), 0 < f → Algebra.adjoin k (T : Set A) = ⊤ → (∀ t ∈ T, t ^ p ^ f = t) →
  IsField A ∧ ∀ (y : A) (a : k), y ^ p = algebraMap k A a → ∃ b : k, y = algebraMap k A b := by
  intro p hp k A _ _ _ _ _ T f hf hT hfix
  have hp1 : 1 < p ^ f := Nat.one_lt_pow hf.ne' hp.out.one_lt

  have hint : ∀ t ∈ (T : Set A), IsIntegral k t := by
    intro t ht
    refine ⟨Polynomial.X ^ (p ^ f) - Polynomial.X, ?_, ?_⟩
    · exact Polynomial.monic_X_pow_sub (by rw [Polynomial.degree_X]; exact_mod_cast hp1)
    · simp [hfix t ht]
  have hfinA : Module.Finite k (Algebra.adjoin k (T : Set A)) :=
    Algebra.finite_adjoin_of_finite_of_isIntegral T.finite_toSet hint
  rw [hT] at hfinA
  haveI : Module.Finite k A := Module.Finite.equiv (Subalgebra.topEquiv (R := k) (A := A)).toLinearEquiv

  have hpk : ((p ^ f : ℕ) : k) = 0 := by
    rw [CharP.cast_eq_zero_iff k p]; exact dvd_pow_self p hf.ne'
  have hD : KaehlerDifferential.D k A = 0 := by
    apply Derivation.ext_of_adjoin_eq_top (T : Set A) hT
    intro t ht
    have h1 := (KaehlerDifferential.D k A).leibniz_pow t (p ^ f)
    rw [hfix t ht] at h1
    rw [h1, ← Nat.cast_smul_eq_nsmul k, hpk, zero_smul]
    rfl
  haveI : Subsingleton (Ω[A⁄k]) := by
    constructor
    intro x y
    have hx : ∀ z : Ω[A⁄k], z = 0 := by
      intro z
      have htop := KaehlerDifferential.span_range_derivation k A
      have hz : z ∈ Submodule.span A (Set.range (KaehlerDifferential.D k A)) := by rw [htop]; trivial
      rw [hD] at hz
      have : Set.range (⇑(0 : Derivation k A (Ω[A⁄k]))) ⊆ ({0} : Set (Ω[A⁄k])) := by
        rintro _ ⟨w, rfl⟩; simp
      have := Submodule.span_mono (R := A) this hz
      simpa using this
    rw [hx x, hx y]
  haveI : Algebra.FormallyUnramified k A := ⟨inferInstance⟩
  haveI : IsReduced A := Algebra.FormallyUnramified.isReduced_of_field k A
  haveI : IsArtinianRing A := IsArtinianRing.of_finite k A
  have hField : IsField A := IsArtinianRing.isField_of_isReduced_of_isLocalRing A
  refine ⟨hField, ?_⟩
  intro y a hy
  letI : Field A := hField.toField
  haveI : Algebra.IsSeparable k A := Algebra.FormallyUnramified.isSeparable k A
  haveI : ExpChar k p := ExpChar.prime hp.out
  have hmem : y ∈ perfectClosure k A := by
    rw [mem_perfectClosure_iff_pow_mem p]
    exact ⟨1, by rw [pow_one, hy]; exact ⟨a, rfl⟩⟩
  rw [perfectClosure.eq_bot_of_isSeparable, IntermediateField.mem_bot] at hmem
  obtain ⟨b, hb⟩ := hmem
  exact ⟨b, hb.symm⟩

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsFieldAndPthRootsOfLocalAlgFrobeniusFixed =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.TowerParameterNotPowModMaximalIdealAdjoinAlgebra =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.TowerParameterNotPowModMaximalIdealAdjoinAlgebra", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.NotCoboundaryConstantOne\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.CompletedLaurentIsDVRStatement\npublic import Mathlib.Algebra.Algebra.Subalgebra.Basic\npublic import Mathlib.Basic.NNReal.Defs\npublic import Mathlib.RingTheory.IntegralClosure.IsIntegral.Defs\npublic import Mathlib.RingTheory.Valuation.Basic\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.DivMemSubalgebraOfValuationLeOneOfUniformizer\npublic import Mathlib.NumberTheory.Padics.PadicIntegers\npublic import Mathlib.RingTheory.Algebraic.Defs\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsFinitePidSubalgebraDivPadicInt\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsGeneratorValuationPrimeDvdPowSubOfFinitePa\npublic import Mathlib.Algebra.Algebra.Subalgebra.Lattice\npublic import Mathlib.Algebra.CharP.Defs\npublic import Mathlib.Algebra.Field.IsField\npublic import Mathlib.RingTheory.LocalRing.Defs\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsFieldAndPthRootsOfLocalAlgFrobeniusFixed\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.UnramifiedIntegersAdicComplete\npublic import Mathlib.RingTheory.DiscreteValuationRing.Basic\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ValuationLeOneIffIsIntegralOfCompleteDvr\npublic import Mathlib.Algebra.CharP.Quotient\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsCompletedLaurentQuotPrimeEquivLaurentFp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.K5
open scoped NNReal

namespace GlobalTheory.K5.NotPow

theorem residue_core : ∀ (p : ℕ) [Fact p.Prime] (O Ω : Type) [CommRing O] [Field Ω] [Algebra O Ω], (Ideal.span {(p : O)}).IsMaximal →
  ∀ (v : Valuation Ω NNReal), (∀ x : Ω, v x ≤ 1 ↔ IsIntegral O x) →
  ∀ (T : Finset Ω), (∀ t ∈ T, IsIntegral O t) → ∀ π ∈ Algebra.adjoin O (T : Set Ω), π ≠ 0 → v π < 1 →
  (p : Ω) / π ∈ Algebra.adjoin O (T : Set Ω) →
  ∀ f : ℕ, 0 < f → (∀ t ∈ T, (t ^ p ^ f - t) / π ∈ Algebra.adjoin O (T : Set Ω)) →
  (∀ x ∈ Algebra.adjoin O (T : Set Ω), v x < 1 → x / π ∈ Algebra.adjoin O (T : Set Ω)) ∧
  ∀ y ∈ Algebra.adjoin O (T : Set Ω), ∀ a : O, v (y ^ p - algebraMap O Ω a) < 1 → ∃ b : O, v (y - algebraMap O Ω b) < 1 := by
  intro p _ O Ω _ _ _ hmax v hv T hT π hπ hπ0 hvπ hpπ f hf hstep
  classical
  have hint : ∀ x ∈ Algebra.adjoin O (T : Set Ω), v x ≤ 1 := fun x hx =>
    (hv x).2 (Algebra.adjoin_le (S := integralClosure O Ω) (fun t ht => hT t ht) hx)
  have hunit : ∀ x ∈ Algebra.adjoin O (T : Set Ω), v x = 1 →
      ∃ w ∈ Algebra.adjoin O (T : Set Ω), x * w = 1 := by
    intro x hx hx1
    have hx0 : x ≠ 0 := by
      rintro rfl
      rw [map_zero] at hx1
      exact zero_ne_one hx1
    obtain ⟨P, hPm, hP⟩ := (hv x⁻¹).1 (by rw [map_inv₀, hx1, inv_one])
    letI : Invertible x⁻¹ := invertibleOfNonzero (inv_ne_zero hx0)
    have h1 := Polynomial.eval₂_reverse_mul_pow (algebraMap O Ω) x⁻¹ P
    rw [hP, invOf_eq_inv, inv_inv] at h1
    have h2 : Polynomial.eval₂ (algebraMap O Ω) x P.reverse = 0 :=
      (mul_eq_zero.1 h1).resolve_right (pow_ne_zero _ (inv_ne_zero hx0))
    have h3 := Polynomial.divX_mul_X_add P.reverse
    rw [Polynomial.coeff_zero_reverse, hPm.leadingCoeff, Polynomial.C_1] at h3
    rw [← h3, Polynomial.eval₂_add, Polynomial.eval₂_mul, Polynomial.eval₂_X,
      Polynomial.eval₂_one] at h2
    refine ⟨-Polynomial.eval₂ (algebraMap O Ω) x (Polynomial.divX P.reverse), neg_mem ?_, ?_⟩
    · have hm := (Polynomial.aeval (⟨x, hx⟩ : Algebra.adjoin O (T : Set Ω))
        (Polynomial.divX P.reverse)).2
      rwa [Polynomial.aeval_subalgebra_coe, Polynomial.aeval_def] at hm
    · linear_combination -h2
  let I : Ideal (Algebra.adjoin O (T : Set Ω)) := Ideal.span {⟨π, hπ⟩}
  have memI : ∀ z : Algebra.adjoin O (T : Set Ω), z ∈ I ↔
      (z : Ω) / π ∈ Algebra.adjoin O (T : Set Ω) := by
    intro z
    rw [Ideal.mem_span_singleton']
    constructor
    · rintro ⟨w, rfl⟩
      show ((w : Ω) * π) / π ∈ _
      rw [mul_div_cancel_right₀ _ hπ0]
      exact w.2
    · intro h
      exact ⟨⟨(z : Ω) / π, h⟩, Subtype.ext (div_mul_cancel₀ _ hπ0)⟩
  have hvI : ∀ z : Algebra.adjoin O (T : Set Ω), z ∈ I → v z < 1 := by
    intro z hz
    obtain ⟨w, rfl⟩ := Ideal.mem_span_singleton'.1 hz
    show v ((w : Ω) * π) < 1
    rw [map_mul]
    calc v w * v π ≤ 1 * v π := mul_le_mul_of_nonneg_right (hint _ w.2) zero_le
      _ < 1 := by rw [one_mul]; exact hvπ
  have hpI : (p : Algebra.adjoin O (T : Set Ω)) ∈ I := by
    rw [memI]
    simpa using hpπ
  haveI hmaxI := hmax
  letI hk : Field (O ⧸ Ideal.span {(p : O)}) := Ideal.Quotient.field _
  haveI : CharP (O ⧸ Ideal.span {(p : O)}) p :=
    CharP.quotient O p (fun hu => hmax.ne_top (Ideal.span_singleton_eq_top.2 hu))
  let φ : (O ⧸ Ideal.span {(p : O)}) →+* Algebra.adjoin O (T : Set Ω) ⧸ I :=
    Ideal.Quotient.lift _ ((Ideal.Quotient.mk I).comp (algebraMap O _)) (by
      intro a ha
      obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.1 ha
      rw [RingHom.comp_apply, Ideal.Quotient.eq_zero_iff_mem, map_mul, map_natCast]
      exact I.mul_mem_left _ hpI)
  letI : Algebra (O ⧸ Ideal.span {(p : O)}) (Algebra.adjoin O (T : Set Ω) ⧸ I) := φ.toAlgebra
  haveI hnt : Nontrivial (Algebra.adjoin O (T : Set Ω) ⧸ I) := Ideal.Quotient.nontrivial_iff.2 (by
    intro h
    have h1 : (1 : Algebra.adjoin O (T : Set Ω)) ∈ I := by rw [h]; exact Submodule.mem_top
    have := hvI 1 h1
    simp at this)
  haveI : IsLocalRing (Algebra.adjoin O (T : Set Ω) ⧸ I) := by
    refine { toNontrivial := hnt, isUnit_or_isUnit_of_add_one := ?_ }
    intro a b hab
    obtain ⟨x, rfl⟩ := Ideal.Quotient.mk_surjective a
    obtain ⟨y, rfl⟩ := Ideal.Quotient.mk_surjective b
    have hxy : x + y - 1 ∈ I := by
      rw [← Ideal.Quotient.eq_zero_iff_mem, map_sub, map_add (f := _), hab, map_one, sub_self]
    have hv1 := hvI _ hxy
    have key : v x = 1 ∨ v y = 1 := by
      by_contra hcon
      push_neg at hcon
      have hx' : v x < 1 := lt_of_le_of_ne (hint _ x.2) hcon.1
      have hy' : v y < 1 := lt_of_le_of_ne (hint _ y.2) hcon.2
      have e1 : (1 : Ω) = ((x : Ω) + y) - ((x + y - 1 : Algebra.adjoin O (T : Set Ω)) : Ω) := by
        push_cast
        ring
      have : v (1 : Ω) < 1 := by
        rw [e1]
        exact lt_of_le_of_lt (v.map_sub _ _)
          (max_lt (lt_of_le_of_lt (v.map_add _ _) (max_lt hx' hy')) hv1)
      simp at this
    rcases key with h | h
    · obtain ⟨w, hw, hxw⟩ := hunit _ x.2 h
      left
      have e : x * ⟨w, hw⟩ = 1 := Subtype.ext hxw
      refine IsUnit.of_mul_eq_one (Ideal.Quotient.mk I ⟨w, hw⟩) ?_
      rw [← map_mul, e, map_one]
    · obtain ⟨w, hw, hyw⟩ := hunit _ y.2 h
      right
      have e : y * ⟨w, hw⟩ = 1 := Subtype.ext hyw
      refine IsUnit.of_mul_eq_one (Ideal.Quotient.mk I ⟨w, hw⟩) ?_
      rw [← map_mul, e, map_one]
  let T' : Finset (Algebra.adjoin O (T : Set Ω) ⧸ I) :=
    T.attach.image (fun t => Ideal.Quotient.mk I ⟨t.1, Algebra.subset_adjoin (Finset.mem_coe.2 t.2)⟩)
  have hgen0 : ∀ x (hx : x ∈ Algebra.adjoin O (T : Set Ω)),
      Ideal.Quotient.mk I ⟨x, hx⟩ ∈ Algebra.adjoin (O ⧸ Ideal.span {(p : O)})
        (T' : Set (Algebra.adjoin O (T : Set Ω) ⧸ I)) := by
    intro x hx
    induction hx using Algebra.adjoin_induction with
    | mem t ht =>
      apply Algebra.subset_adjoin
      rw [Finset.mem_coe, Finset.mem_image]
      exact ⟨⟨t, ht⟩, Finset.mem_attach _ _, rfl⟩
    | algebraMap r =>
      convert Subalgebra.algebraMap_mem
        (Algebra.adjoin (O ⧸ Ideal.span {(p : O)}) (T' : Set (Algebra.adjoin O (T : Set Ω) ⧸ I)))
        (Ideal.Quotient.mk (Ideal.span {(p : O)}) r) using 1
      rfl
    | add x y hx hy ihx ihy =>
      have e : (⟨x + y, add_mem hx hy⟩ : Algebra.adjoin O (T : Set Ω)) = ⟨x, hx⟩ + ⟨y, hy⟩ := rfl
      rw [e, map_add (f := _)]
      exact add_mem ihx ihy
    | mul x y hx hy ihx ihy =>
      have e : (⟨x * y, mul_mem hx hy⟩ : Algebra.adjoin O (T : Set Ω)) = ⟨x, hx⟩ * ⟨y, hy⟩ := rfl
      rw [e, map_mul]
      exact mul_mem ihx ihy
  have hgen : Algebra.adjoin (O ⧸ Ideal.span {(p : O)})
      (T' : Set (Algebra.adjoin O (T : Set Ω) ⧸ I)) = ⊤ := by
    rw [eq_top_iff]
    rintro a -
    obtain ⟨⟨x, hx⟩, rfl⟩ := Ideal.Quotient.mk_surjective a
    exact hgen0 x hx
  have hfrob : ∀ t ∈ T', t ^ p ^ f = t := by
    intro t ht
    rw [Finset.mem_image] at ht
    obtain ⟨⟨t0, ht0⟩, -, rfl⟩ := ht
    rw [← map_pow, ← sub_eq_zero, ← map_sub, Ideal.Quotient.eq_zero_iff_mem, memI]
    simpa using hstep t0 ht0
  obtain ⟨hfield, hroot⟩ := _root_.GlobalTheory.localAlg_frob_fixed_isField_and_pth_roots p (O ⧸ Ideal.span {(p : O)})
    (Algebra.adjoin O (T : Set Ω) ⧸ I) T' f hf hgen hfrob
  have hzero : ∀ z : Algebra.adjoin O (T : Set Ω), v z < 1 → z ∈ I := by
    intro z hz
    rw [← Ideal.Quotient.eq_zero_iff_mem]
    by_contra hne
    obtain ⟨b, hb⟩ := hfield.mul_inv_cancel hne
    obtain ⟨w, rfl⟩ := Ideal.Quotient.mk_surjective b
    have h1 : z * w - 1 ∈ I := by
      rw [← Ideal.Quotient.eq_zero_iff_mem, map_sub, map_mul, hb, map_one, sub_self]
    have h2 := hvI _ h1
    have h3 : v ((z : Ω) * w) < 1 := by
      rw [map_mul]
      calc v z * v w ≤ v z * 1 := mul_le_mul_of_nonneg_left (hint _ w.2) zero_le
        _ < 1 := by rw [mul_one]; exact hz
    have e1 : (1 : Ω) = (z : Ω) * w - ((z * w - 1 : Algebra.adjoin O (T : Set Ω)) : Ω) := by
      push_cast
      ring
    have : v (1 : Ω) < 1 := by
      rw [e1]
      exact lt_of_le_of_lt (v.map_sub _ _) (max_lt h3 h2)
    simp at this
  refine ⟨fun x hx hvx => (memI ⟨x, hx⟩).1 (hzero _ hvx), ?_⟩
  intro y hy a hva
  have hI : (⟨y, hy⟩ : Algebra.adjoin O (T : Set Ω)) ^ p - algebraMap O _ a ∈ I :=
    hzero _ (by simpa using hva)
  have heq : (Ideal.Quotient.mk I ⟨y, hy⟩) ^ p =
      algebraMap (O ⧸ Ideal.span {(p : O)}) _ (Ideal.Quotient.mk _ a) := by
    have h0 := (Ideal.Quotient.eq_zero_iff_mem).2 hI
    rw [map_sub, map_pow] at h0
    exact sub_eq_zero.1 h0
  obtain ⟨b', hb'⟩ := hroot _ _ heq
  obtain ⟨b, rfl⟩ := Ideal.Quotient.mk_surjective b'
  refine ⟨b, ?_⟩
  have h5 : (⟨y, hy⟩ : Algebra.adjoin O (T : Set Ω)) - algebraMap O _ b ∈ I := by
    rw [← Ideal.Quotient.eq_zero_iff_mem, map_sub, hb', sub_eq_zero]
    rfl
  simpa using hvI _ h5

theorem q_not_pow_mod (p : ℕ) [hp : Fact p.Prime] (a : O0 p) : ¬ (p : O0 p) ∣ a ^ p - qO p := by
  intro h
  obtain ⟨e, he⟩ := exists_completedLaurent_quot_prime_equiv_laurentFp p
  rcases h with ⟨c, hc⟩
  have hmem : a ^ p - qO p ∈ Ideal.span {(p : O0 p)} :=
    Ideal.mem_span_singleton'.2 ⟨c, by simpa [mul_comm] using hc.symm⟩
  have h1 := (Ideal.Quotient.eq_zero_iff_mem).2 hmem
  have h2 : Ideal.Quotient.mk (Ideal.span {(p : O0 p)}) (a ^ p) -
      Ideal.Quotient.mk (Ideal.span {(p : O0 p)}) (qO p) = 0 := by
    simpa only [RingHom.map_sub] using h1
  have h1 : (Ideal.Quotient.mk (Ideal.span {(p : O0 p)}) a) ^ p =
      Ideal.Quotient.mk (Ideal.span {(p : O0 p)}) (qO p) := by
    simpa only [RingHom.map_pow] using sub_eq_zero.mp h2
  have h2 := congrArg e h1
  rw [map_pow, he] at h2
  have h3 := congrArg HahnSeries.order h2
  rw [HahnSeries.order_pow, HahnSeries.order_single one_ne_zero, nsmul_eq_mul] at h3
  have h4 : (p : ℤ) ∣ 1 := Dvd.intro _ h3
  exact hp.out.not_dvd_one (by exact_mod_cast h4)

end GlobalTheory.K5.NotPow
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.TowerParameterNotPowModMaximalIdealAdjoinAlgebra =====
