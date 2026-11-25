module

public import Formalism.ConjugateSelfDual.Statement
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsContinuousPadic
public import Mathlib.NumberTheory.NumberField.Basic
public import Mathlib.RingTheory.DedekindDomain.AdicValuation.Valuation
public import Mathlib.RingTheory.DedekindDomain.AdicValuation.Completion
public import ReciprocityTheory.GaloisValuations.GlobalB
public import Mathlib.RingTheory.Valuation.ValuationSubring
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.Langlands
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
import Mathlib.RingTheory.Valuation.LocalSubring
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
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
import ReciprocityTheory.GaloisValuations.GlobalA
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.ReduceModChar

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AbsNormPlaceLeOfFrobenius, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsNotMemMulValuationLeOneOfNe, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DenseNumberFieldOfContinuousCompletionEquiv, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FixedAlgebraicOfLimitOfFixedElements, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PlaceOverTransportRingIso

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AbsNormPlaceLeOfFrobenius =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AbsNormPlaceLeOfFrobenius", "h": "module\n\npublic import Formalism.ConjugateSelfDual.Statement\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsContinuousPadic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.Valuation.LocalSubring\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExistsNotCongPow\nimport Development.AbelianVarietyTheory.Definitions.Foundations.MatrixMeasurableSpace\nimport Development.AbelianVarietyTheory.Definitions.Foundations.SmoothPartStable\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NonemptyEquivOfRangeEq\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.LeviEmbMemNormalizerLower\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HasExponentZeroIff\nimport ReciprocityTheory.GaloisValuations.GlobalA\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain ValuativeRel Matrix Polynomial Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.PRep GlobalTheory.SmGL GlobalTheory.SplitWeil GlobalTheory.LocGL GlobalTheory.WeilDeligne GlobalTheory.LocLanglands GlobalTheory.Published
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
namespace GlobalTheory
namespace NormLeFrob

theorem valuation_algebraMap_le_one {E Ω : Type} [Field E] [NumberField E] [Field Ω] [Algebra E Ω]
    (A : ValuationSubring Ω) (x : 𝓞 E) :
    A.valuation (algebraMap E Ω (x : E)) ≤ 1 := by
  have h1 : IsIntegral ℤ (algebraMap E Ω (x : E)) := (x.2).map (IsScalarTower.toAlgHom ℤ E Ω)
  have h2 : IsIntegral A (algebraMap E Ω (x : E)) := h1.tower_top
  obtain ⟨y, hy⟩ := IsIntegrallyClosed.isIntegral_iff.mp h2
  rw [← hy]
  exact A.valuation_le_one y

noncomputable def toResidue {E Ω : Type} [Field E] [NumberField E] [Field Ω] [Algebra E Ω]
    (A : ValuationSubring Ω) : 𝓞 E →+* IsLocalRing.ResidueField A :=
  (IsLocalRing.residue A).comp
    { toFun := fun x => ⟨algebraMap E Ω (x : E), (A.valuation_le_one_iff _).mp (valuation_algebraMap_le_one A x)⟩
      map_one' := by ext; simp
      map_mul' := by intro a b; ext; simp
      map_zero' := by ext; simp
      map_add' := by intro a b; ext; simp }

theorem toResidue_eq_zero_iff {E Ω : Type} [Field E] [NumberField E] [Field Ω] [Algebra E Ω]
    (A : ValuationSubring Ω) (w : HeightOneSpectrum (𝓞 E)) (hw : IsPlaceOver A w) (x : 𝓞 E) :
    toResidue A x = 0 ↔ x ∈ w.asIdeal := by
  rw [← hw x]
  simp only [toResidue, RingHom.coe_comp, Function.comp_apply, RingHom.coe_mk, MonoidHom.coe_mk,
    OneHom.coe_mk, IsLocalRing.residue_eq_zero_iff, ValuationSubring.valuation_lt_one_iff]

theorem toResidue_isRoot {E Ω : Type} [Field E] [NumberField E] [Field Ω] [Algebra E Ω]
    (A : ValuationSubring Ω) (q : ℕ) (σ : G E Ω) (hσ : IsFrob A q σ) (x : 𝓞 E) :
    (X ^ q - X : (IsLocalRing.ResidueField A)[X]).IsRoot (toResidue A x) := by
  have hx := valuation_algebraMap_le_one A x
  have h := hσ.2 _ hx
  rw [AlgEquiv.commutes] at h
  have hmem : (⟨algebraMap E Ω (x : E), (A.valuation_le_one_iff _).mp hx⟩ : A) ^ q
      - ⟨algebraMap E Ω (x : E), (A.valuation_le_one_iff _).mp hx⟩ ∈ IsLocalRing.maximalIdeal A := by
    rw [ValuationSubring.valuation_lt_one_iff]
    rw [← Valuation.map_neg]
    convert h using 2
    simp
  rw [← IsLocalRing.residue_eq_zero_iff] at hmem
  simp only [IsRoot, eval_sub, eval_pow, eval_X]
  have e : toResidue A x = IsLocalRing.residue A
      ⟨algebraMap E Ω (x : E), (A.valuation_le_one_iff _).mp hx⟩ := rfl
  rw [e, ← map_pow, ← map_sub]
  exact hmem

theorem normV_le_of_isFrob : ∀ (E Ω : Type) [Field E] [NumberField E] [Field Ω] [Algebra E Ω] (A : ValuationSubring Ω) (w : HeightOneSpectrum (𝓞 E)), IsPlaceOver A w → ∀ q : ℕ, 1 < q → ∀ σ : G E Ω, IsFrob A q σ → normV w ≤ q := by
  intro E Ω _ _ _ _ A w hw q hq σ hσ
  classical
  set k := IsLocalRing.ResidueField A
  set P : k[X] := X ^ q - X with hP
  have hP0 : P ≠ 0 := FiniteField.X_pow_card_sub_X_ne_zero hq
  let f : 𝓞 E ⧸ w.asIdeal →+* k :=
    Ideal.Quotient.lift w.asIdeal (toResidue A) (fun x hx => (toResidue_eq_zero_iff A w hw x).mpr hx)
  have hf : Function.Injective f := by
    set_option backward.isDefEq.respectTransparency.instanceSearchTypes false in rw [injective_iff_map_eq_zero]
    intro a ha
    obtain ⟨x, rfl⟩ := Ideal.Quotient.mk_surjective a
    rw [Ideal.Quotient.eq_zero_iff_mem]
    exact (toResidue_eq_zero_iff A w hw x).mp ha
  let g : 𝓞 E ⧸ w.asIdeal → {y : k // y ∈ P.roots.toFinset} := fun a =>
    ⟨f a, by
      obtain ⟨x, rfl⟩ := Ideal.Quotient.mk_surjective a
      rw [Multiset.mem_toFinset, mem_roots hP0]
      exact toResidue_isRoot A q σ hσ x⟩
  have hg : Function.Injective g := fun a b h => hf (congrArg Subtype.val h)
  calc normV w = Nat.card (𝓞 E ⧸ w.asIdeal) := rfl
    _ ≤ Nat.card {y : k // y ∈ P.roots.toFinset} := Nat.card_le_card_of_injective g hg
    _ = P.roots.toFinset.card := by rw [Nat.card_eq_fintype_card, Fintype.card_coe]
    _ ≤ P.roots.card := Multiset.toFinset_card_le _
    _ ≤ P.natDegree := card_roots' P
    _ = q := Polynomial.natDegree_X_pow_sub_X (R := k) hq

end NormLeFrob
end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AbsNormPlaceLeOfFrobenius =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsNotMemMulValuationLeOneOfNe =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsNotMemMulValuationLeOneOfNe", "h": "module\n\npublic import Mathlib.NumberTheory.NumberField.Basic\npublic import Mathlib.RingTheory.DedekindDomain.AdicValuation.Valuation\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open IsDedekindDomain NumberField

namespace GlobalTheory

theorem exists_notMem_mul_valuation_le_one_of_ne : ∀ {F : Type} [Field F] [NumberField F]
    (p : HeightOneSpectrum (𝓞 F)) {ι : Type} [Finite ι] (x : ι → F), ∃ s : 𝓞 F, s ∉ p.asIdeal ∧
      ∀ q : HeightOneSpectrum (𝓞 F), q ≠ p → ∀ i, q.valuation F ((s : F) * x i) ≤ 1 := by
  intro F _ _ p ι _ x
  obtain ⟨b, hb⟩ := IsLocalization.exist_integer_multiples_of_finite (nonZeroDivisors (𝓞 F)) x
  have hc : (b : 𝓞 F) ≠ 0 := nonZeroDivisors.ne_zero b.2
  have hfin : FiniteMultiplicity p.asIdeal (Ideal.span {(b : 𝓞 F)}) :=
    FiniteMultiplicity.of_not_isUnit (by rw [Ideal.isUnit_iff]; exact p.isPrime.ne_top)
      (by simpa using hc)
  obtain ⟨J, hJ, hnd⟩ := hfin.exists_eq_pow_mul_and_not_dvd
  have hJp : ¬ J ≤ p.asIdeal := fun h => hnd (Ideal.dvd_iff_le.mpr h)
  obtain ⟨s, hsJ, hsp⟩ := SetLike.not_le_iff_exists.mp hJp
  refine ⟨s, hsp, fun q hq i => ?_⟩
  have hpow : ¬ p.asIdeal ^ multiplicity p.asIdeal (Ideal.span {(b : 𝓞 F)}) ≤ q.asIdeal := by
    intro h
    have h1 : p.asIdeal ≤ q.asIdeal := q.isPrime.le_of_pow_le h
    exact hq (HeightOneSpectrum.ext (p.isMaximal.eq_of_le q.isPrime.ne_top h1).symm)
  obtain ⟨t, ht, htq⟩ := SetLike.not_le_iff_exists.mp hpow
  have hts : t * s ∈ Ideal.span {(b : 𝓞 F)} := by
    rw [hJ]; exact Ideal.mul_mem_mul ht hsJ
  obtain ⟨u, hu⟩ := Ideal.mem_span_singleton.mp hts
  obtain ⟨a, ha⟩ := hb i
  replace ha : algebraMap (𝓞 F) F a = algebraMap (𝓞 F) F (b : 𝓞 F) * x i := by
    rw [ha]; exact Algebra.smul_def _ _
  have key : algebraMap (𝓞 F) F t * ((s : F) * x i) = algebraMap (𝓞 F) F (u * a) := by
    rw [map_mul, ha, RingOfIntegers.coe_eq_algebraMap, ← mul_assoc, ← map_mul, hu, map_mul]
    ring
  have h1 : q.valuation F (algebraMap (𝓞 F) F t) = 1 :=
    (q.valuation_eq_one_iff_notMem (K := F) (r := t)).2 htq
  have h2 : q.valuation F (algebraMap (𝓞 F) F (u * a)) ≤ 1 := q.valuation_le_one (K := F) _
  rw [← key, map_mul, h1, one_mul] at h2
  exact h2

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsNotMemMulValuationLeOneOfNe =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DenseNumberFieldOfContinuousCompletionEquiv =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DenseNumberFieldOfContinuousCompletionEquiv", "h": "module\n\npublic import Formalism.ConjugateSelfDual.Statement\npublic import Mathlib.RingTheory.DedekindDomain.AdicValuation.Completion\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsContinuousPadic\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsNotMemMulValuationLeOneOfNe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.GaloisValuations.GlobalB\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExistsNotCongPow\nimport Development.AbelianVarietyTheory.Definitions.Foundations.MatrixMeasurableSpace\nimport Development.AbelianVarietyTheory.Definitions.Foundations.SmoothPartStable\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NonemptyEquivOfRangeEq\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.LeviEmbMemNormalizerLower\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HasExponentZeroIff\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain ValuativeRel Matrix Polynomial Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.PRep GlobalTheory.SmGL GlobalTheory.SplitWeil GlobalTheory.LocGL GlobalTheory.WeilDeligne GlobalTheory.LocLanglands GlobalTheory.Published
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField
namespace GlobalTheory

open IsDedekindDomain.HeightOneSpectrum

theorem valuationSubring_le_one_of_ringOfIntegers {E' Ω' : Type} [Field E'] [NumberField E'] [Field Ω']
    [Algebra E' Ω'] (A' : ValuationSubring Ω') (m : 𝓞 E') :
    A'.valuation (algebraMap E' Ω' (m : E')) ≤ 1 :=
  (A'.valuation_le_one_iff _).2
    (mem_of_isIntegral_int A' (map_isIntegral_int (algebraMap E' Ω') (RingOfIntegers.isIntegral_coe m)))

theorem valuationSubring_lt_one_of_placeOver {E' Ω' : Type} [Field E'] [NumberField E'] [Field Ω']
    [Algebra E' Ω'] (A' : ValuationSubring Ω') (w' : HeightOneSpectrum (𝓞 E')) (hP : IsPlaceOver A' w')
    (t : E') (ht : w'.valuation E' t < 1) : A'.valuation (algebraMap E' Ω' t) < 1 := by
  obtain ⟨s, hs, hq⟩ := GlobalTheory.exists_notMem_mul_valuation_le_one_of_ne w' (fun _ : Unit => t)
  have hsle : w'.valuation E' (s : E') ≤ 1 := by
    rw [RingOfIntegers.coe_eq_algebraMap]; exact w'.valuation_le_one (K := E') s
  have hw : w'.valuation E' ((s : E') * t) < 1 := by
    rw [map_mul]
    calc w'.valuation E' (s : E') * w'.valuation E' t ≤ 1 * w'.valuation E' t := by gcongr
      _ < 1 := by rwa [one_mul]
  have hall : ∀ q : HeightOneSpectrum (𝓞 E'), q.valuation E' ((s : E') * t) ≤ 1 := by
    intro q
    by_cases hq' : q = w'
    · subst hq'; exact hw.le
    · exact hq q hq' ()
  obtain ⟨m, hm⟩ := HeightOneSpectrum.mem_integers_of_valuation_le_one E' _ hall
  have hmw : m ∈ w'.asIdeal := by
    rw [← HeightOneSpectrum.valuation_lt_one_iff_mem (K := E')]
    show w'.valuation E' (algebraMap (𝓞 E') E' m) < 1
    rw [hm]; exact hw
  have h1 := (hP m).2 hmw
  have h2 : A'.valuation (algebraMap E' Ω' (s : E')) = 1 :=
    le_antisymm (valuationSubring_le_one_of_ringOfIntegers A' s) (not_lt.1 (fun h => hs ((hP s).1 h)))
  have hm' : ((m : 𝓞 E') : E') = (s : E') * t := by rw [← hm]
  rw [hm', map_mul, map_mul, h2, one_mul] at h1
  exact h1

theorem exists_int_valuationSubring_le {E' Ω' : Type} [Field E'] [NumberField E'] [Field Ω']
    [Algebra E' Ω'] [Algebra.IsAlgebraic E' Ω'] (A' : ValuationSubring Ω') {δ : Ω'} (hδ : δ ≠ 0) :
    ∃ n : ℤ, n ≠ 0 ∧ A'.valuation (algebraMap E' Ω' (n : E')) ≤ A'.valuation δ := by
  haveI : Algebra.IsAlgebraic ℤ E' :=
    ⟨fun x => (IsFractionRing.isAlgebraic_iff ℤ ℚ E').mpr (Algebra.IsAlgebraic.isAlgebraic x)⟩
  haveI : Algebra.IsAlgebraic ℤ Ω' := Algebra.IsAlgebraic.trans ℤ E' Ω'
  obtain ⟨n, hn, hint⟩ := (Algebra.IsAlgebraic.isAlgebraic (R := ℤ) δ⁻¹).exists_integral_multiple
  refine ⟨n, hn, ?_⟩
  have hle := (A'.valuation_le_one_iff _).2 (mem_of_isIntegral_int A' hint)
  rw [zsmul_eq_mul, map_mul, map_inv₀] at hle
  have hd : A'.valuation δ ≠ 0 := by simpa using hδ
  rw [map_intCast]
  calc A'.valuation (n : Ω') = A'.valuation (n : Ω') * (A'.valuation δ)⁻¹ * A'.valuation δ := by
        rw [mul_assoc, inv_mul_cancel₀ hd, mul_one]
    _ ≤ 1 * A'.valuation δ := by gcongr
    _ = A'.valuation δ := one_mul _

end GlobalTheory

namespace GlobalTheory

theorem approx_of_completion_equiv : ∀ (E : Type) [Field E] [NumberField E] (w : HeightOneSpectrum (𝓞 E)) (E' Ω' : Type) [Field E'] [NumberField E'] [Field Ω'] [Algebra E' Ω'] [Algebra.IsAlgebraic E' Ω'] (A' : ValuationSubring Ω') (w' : HeightOneSpectrum (𝓞 E')), IsPlaceOver A' w' → ∀ (j : E →+* E') (i : w.adicCompletion E ≃+* w'.adicCompletion E'), Continuous i → (∀ x, i (algebraMap E _ x) = algebraMap E' _ (j x)) → ∀ (y : E') (δ : Ω'), δ ≠ 0 → ∃ x : E, A'.valuation (algebraMap E' Ω' y - algebraMap E' Ω' (j x)) < A'.valuation δ := by
  intro E _ _ w E' Ω' _ _ _ _ _ A' w' hP j i hi hij y δ hδ
  obtain ⟨n, hn, hnδ⟩ := exists_int_valuationSubring_le (E' := E') A' hδ
  set c : E' := (n : E') with hcdef
  have hc : c ≠ 0 := Int.cast_ne_zero.mpr hn
  let U : Set (w'.adicCompletion E') :=
    {z | Valued.v ((z - algebraMap E' _ y) * (algebraMap E' (w'.adicCompletion E') c)⁻¹) < 1}
  have hU : IsOpen U := by
    have h := (Valued.isOpen_ball (w'.adicCompletion E') 1).preimage
      ((continuous_sub_right (algebraMap E' (w'.adicCompletion E') y)).mul
        (continuous_const (y := (algebraMap E' (w'.adicCompletion E') c)⁻¹)))
    convert h using 2 with z
    simp [U, Valuation.restrict_lt_iff_lt_embedding]
  have hdense : DenseRange (i ∘ algebraMap E (w.adicCompletion E)) :=
    i.surjective.denseRange.comp (HeightOneSpectrum.denseRange_algebraMap E w) hi
  obtain ⟨x, hx⟩ := hdense.exists_mem_open hU ⟨algebraMap E' _ y, by simp [U]⟩
  refine ⟨x, ?_⟩
  have hx' : w'.valuation E' ((j x - y) * c⁻¹) < 1 := by
    have e : (i (algebraMap E _ x) - algebraMap E' (w'.adicCompletion E') y) *
        (algebraMap E' (w'.adicCompletion E') c)⁻¹ = algebraMap E' (w'.adicCompletion E') ((j x - y) * c⁻¹) := by
      rw [hij, map_mul, map_sub, map_inv₀]
    have hx2 : (i ∘ algebraMap E (w.adicCompletion E)) x ∈ U := hx
    simp only [Function.comp, U, Set.mem_ofPred_eq] at hx2
    rw [e] at hx2
    have hv : Valued.v (algebraMap E' (w'.adicCompletion E') ((j x - y) * c⁻¹)) = w'.valuation E' ((j x - y) * c⁻¹) :=
      HeightOneSpectrum.valuedAdicCompletion_eq_valuation' w' _
    rw [hv] at hx2
    exact hx2
  have ht := valuationSubring_lt_one_of_placeOver A' w' hP _ hx'
  have e2 : algebraMap E' Ω' y - algebraMap E' Ω' (j x) = -(algebraMap E' Ω' ((j x - y) * c⁻¹) * algebraMap E' Ω' c) := by
    rw [← map_mul, ← map_sub, ← map_neg]; congr 1; field_simp; ring
  have hcpos : 0 < A'.valuation (algebraMap E' Ω' c) := by
    rw [zero_lt_iff]; simpa using hc
  rw [e2, Valuation.map_neg, map_mul]
  calc _ < A'.valuation (algebraMap E' Ω' c) := mul_lt_of_lt_one_left hcpos ht
    _ ≤ A'.valuation δ := hnδ

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DenseNumberFieldOfContinuousCompletionEquiv =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FixedAlgebraicOfLimitOfFixedElements =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FixedAlgebraicOfLimitOfFixedElements", "h": "module\n\npublic import Mathlib.RingTheory.Valuation.ValuationSubring\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsContinuousPadic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExistsNotCongPow\nimport Development.AbelianVarietyTheory.Definitions.Foundations.MatrixMeasurableSpace\nimport Development.AbelianVarietyTheory.Definitions.Foundations.SmoothPartStable\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NonemptyEquivOfRangeEq\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.LeviEmbMemNormalizerLower\nimport Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HasExponentZeroIff\nimport Formalism.ConjugateSelfDual.Statement\nimport ReciprocityTheory.GaloisValuations.GlobalA\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain ValuativeRel Matrix Polynomial Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.PRep GlobalTheory.SmGL GlobalTheory.SplitWeil GlobalTheory.LocGL GlobalTheory.WeilDeligne GlobalTheory.LocLanglands GlobalTheory.Published
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

namespace GlobalTheory.FixApprox

theorem val_lt_map {K : Type} [Field K] (B : ValuationSubring K) (τ : K ≃+* K)
    (hB : ∀ z, τ z ∈ B ↔ z ∈ B) (a b : K) (h : B.valuation a < B.valuation b) :
    B.valuation (τ a) < B.valuation (τ b) := by
  have hb : b ≠ 0 := by
    rintro rfl; simp at h
  by_cases ha : a = 0
  · subst ha
    simp only [map_zero]
    exact (Valuation.pos_iff _).2 (by simpa using hb)
  · have hta : τ a ≠ 0 := by simpa using ha
    rw [← not_le] at h ⊢
    intro h'
    apply h
    have h1 : B.valuation (τ b / τ a) ≤ 1 := by
      rw [map_div₀, div_le_one₀ ((Valuation.pos_iff _).2 hta)]; exact h'
    rw [ValuationSubring.valuation_le_one_iff, ← map_div₀, hB] at h1
    rw [← ValuationSubring.valuation_le_one_iff, map_div₀, div_le_one₀ ((Valuation.pos_iff _).2 ha)] at h1
    exact h1

theorem fix_of_approx : ∀ (K : Type) [Field K] [CharZero K] (B : ValuationSubring K) (τ : K ≃+* K), (∀ z, τ z ∈ B ↔ z ∈ B) → ∀ y : K, IsAlgebraic ℚ y → (∀ δ : K, δ ≠ 0 → ∃ u : K, τ u = u ∧ B.valuation (y - u) < B.valuation δ) → τ y = y := by
  intro K _ _ B τ hB y _ happ
  by_contra hne
  set m := τ y with hm
  set s := τ.symm y with hs
  have hym : y - m ≠ 0 := sub_ne_zero.2 (Ne.symm hne)
  have hys : y - s ≠ 0 := by
    intro h
    apply hne
    have h' := congrArg τ (sub_eq_zero.1 h)
    rw [hs, RingEquiv.apply_symm_apply] at h'
    exact h'
  obtain ⟨u, hu, hlt⟩ := happ (if B.valuation (y - m) ≤ B.valuation (y - s) then y - m else y - s)
    (by split_ifs <;> assumption)
  have h1 : B.valuation (y - u) < B.valuation (y - m) := by
    split_ifs at hlt with hc
    · exact hlt
    · exact lt_of_lt_of_le hlt (le_of_lt (not_le.1 hc))
  have h2 : B.valuation (y - u) < B.valuation (y - s) := by
    split_ifs at hlt with hc
    · exact lt_of_lt_of_le hlt hc
    · exact hlt
  have h3 := val_lt_map B τ hB _ _ h2
  have e1 : τ (y - u) = m - u := by rw [map_sub, hu]
  have e2 : τ (y - s) = m - y := by rw [map_sub, hs, RingEquiv.apply_symm_apply]
  rw [e1, e2] at h3
  have h4 : B.valuation (m - y) = B.valuation (y - m) := Valuation.map_sub_swap _ _ _
  have h5 : m - y = (m - u) - (y - u) := by ring
  have h6 : B.valuation (m - y) < B.valuation (m - y) := by
    calc B.valuation (m - y) = B.valuation ((m - u) - (y - u)) := by rw [← h5]
      _ < B.valuation (m - y) := Valuation.map_sub_lt _ h3 (h4 ▸ h1)
  exact lt_irrefl _ h6

end GlobalTheory.FixApprox
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FixedAlgebraicOfLimitOfFixedElements =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PlaceOverTransportRingIso =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PlaceOverTransportRingIso", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.Langlands\npublic import Formalism.ConjugateSelfDual.Statement\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsContinuousPadic\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.AbsNormPlaceLeOfFrobenius\npublic import Mathlib.RingTheory.DedekindDomain.AdicValuation.Completion\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DenseNumberFieldOfContinuousCompletionEquiv\npublic import Mathlib.RingTheory.Valuation.ValuationSubring\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FixedAlgebraicOfLimitOfFixedElements\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain ValuativeRel Matrix Polynomial Formalism.ConjugateSelfDual ReciprocityTheory.Gal GlobalTheory.PRep GlobalTheory.SmGL GlobalTheory.SplitWeil GlobalTheory.LocGL GlobalTheory.WeilDeligne GlobalTheory.LocLanglands GlobalTheory.Published
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

noncomputable section

namespace GlobalTheory.WeilTransport

theorem conj_nhds : ∀ (E Ω : Type) [Field E] [Field Ω] [Algebra E Ω] [Algebra.IsAlgebraic E Ω] (E' Ω' : Type)
    [Field E'] [Field Ω'] [Algebra E' Ω'] (φ : Ω ≃+* Ω') (U' : Set (G E' Ω')), U' ∈ nhds (1 : G E' Ω') →
    ∃ U : Set (G E Ω), IsOpen U ∧ (1 : G E Ω) ∈ U ∧
      ∀ σ ∈ U, ∀ σ' : G E' Ω', (∀ z, φ (σ z) = σ' (φ z)) → σ' ∈ U' := by
  intro E Ω _ _ _ _ E' Ω' _ _ _ φ U' hU'
  obtain ⟨L', hL'fin, hL'⟩ := (krullTopology_mem_nhds_one_iff E' Ω' U').mp hU'
  let b := Module.finBasis E' L'
  let S : Set Ω := Set.range fun i => φ.symm (b i : Ω')
  let L : IntermediateField E Ω := IntermediateField.adjoin E S
  haveI : Finite S := (Set.finite_range _).to_subtype
  haveI : FiniteDimensional E L := IntermediateField.finiteDimensional_adjoin
    (fun x _ => (Algebra.IsAlgebraic.isAlgebraic x).isIntegral)
  refine ⟨L.fixingSubgroup, L.fixingSubgroup_isOpen, L.fixingSubgroup.one_mem, ?_⟩
  intro σ hσ σ' hrel
  apply hL'
  rw [SetLike.mem_coe, IntermediateField.mem_fixingSubgroup_iff]
  have hb : ∀ i, σ' (b i : Ω') = b i := by
    intro i
    have h1 : φ.symm (b i : Ω') ∈ L := IntermediateField.subset_adjoin E S ⟨i, rfl⟩
    have h2 := (IntermediateField.mem_fixingSubgroup_iff L σ).mp hσ _ h1
    have h3 := hrel (φ.symm (b i : Ω'))
    rw [h2, RingEquiv.apply_symm_apply] at h3
    exact h3.symm
  intro x hx
  have e := congrArg Subtype.val (b.sum_repr ⟨x, hx⟩)
  simp only [AddSubmonoidClass.coe_finsetSum, SetLike.val_smul] at e

  rw [← e, map_sum]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [map_smul, hb]

section Transfer

variable {E Ω : Type} [Field E] [NumberField E] [Field Ω] [Algebra E Ω]
  {A : ValuationSubring Ω} {E' Ω' : Type} [Field E'] [NumberField E'] [Field Ω'] [Algebra E' Ω']
  {A' : ValuationSubring Ω'} {φ : Ω ≃+* Ω'}

def conj (φ : Ω ≃+* Ω') (σ : Ω ≃+* Ω) : Ω' ≃+* Ω' := (φ.symm.trans σ).trans φ

@[simp] theorem conj_apply (φ : Ω ≃+* Ω') (σ : Ω ≃+* Ω) (y : Ω') : conj φ σ y = φ (σ (φ.symm y)) := rfl

def conjAlg (φ : Ω ≃+* Ω') (σ : G E Ω)
    (hσ : ∀ y : E', conj φ σ.toRingEquiv (algebraMap E' Ω' y) = algebraMap E' Ω' y) : G E' Ω' :=
  AlgEquiv.ofRingEquiv hσ

@[simp] theorem conjAlg_apply (φ : Ω ≃+* Ω') (σ : G E Ω)
    (hσ : ∀ y : E', conj φ σ.toRingEquiv (algebraMap E' Ω' y) = algebraMap E' Ω' y) (y : Ω') :
    conjAlg φ σ hσ y = φ (σ (φ.symm y)) := rfl

theorem val_le_one_iff (hm : ∀ z, φ z ∈ A' ↔ z ∈ A) (z : Ω) :
    A'.valuation (φ z) ≤ 1 ↔ A.valuation z ≤ 1 := by
  rw [A'.valuation_le_one_iff, A.valuation_le_one_iff, hm]

theorem val_lt_one_iff (hm : ∀ z, φ z ∈ A' ↔ z ∈ A) (z : Ω) :
    A'.valuation (φ z) < 1 ↔ A.valuation z < 1 := by
  rw [valuation_lt_one_iff', valuation_lt_one_iff', ← map_inv₀, hm, hm, map_eq_zero_iff _ φ.injective]

omit [NumberField E'] in
theorem mem_Dec_iff' {K F : Type} [Field K] [Field F] [NumberField F] [Algebra F K] (B : ValuationSubring K)
    (τ : G F K) : τ ∈ Dec (F := F) B ↔ ∀ x, τ x ∈ B ↔ x ∈ B := by
  refine ⟨fun h x => apply_mem_iff_of_mem_Dec h x, fun h => mem_Dec.mpr ?_⟩
  ext x
  have := h ((τ⁻¹ : G F K) x)
  rw [mul_inv_apply] at this
  rw [ValuationSubring.mem_pointwise_smul_iff_inv_smul_mem, AlgEquiv.smul_def]
  exact this.symm

theorem mem_Dec_iff (hm : ∀ z, φ z ∈ A' ↔ z ∈ A) {σ : G E Ω} {σ' : G E' Ω'}
    (hrel : ∀ z, φ (σ z) = σ' (φ z)) : σ' ∈ Dec (F := E') A' ↔ σ ∈ Dec (F := E) A := by
  rw [mem_Dec_iff', mem_Dec_iff']
  constructor
  · intro h x; rw [← hm, hrel, h, hm]
  · intro h x; obtain ⟨z, rfl⟩ := φ.surjective x; rw [← hrel, hm, hm, h]

theorem actsAs_iff (hm : ∀ z, φ z ∈ A' ↔ z ∈ A) {σ : G E Ω} {σ' : G E' Ω'}
    (hrel : ∀ z, φ (σ z) = σ' (φ z)) (q a b : ℕ) : ActsAs A' q σ' a b ↔ ActsAs A q σ a b := by
  unfold ActsAs
  rw [mem_Dec_iff hm hrel]
  refine and_congr_right fun _ => ?_
  constructor
  · intro h x hx
    have := h (φ x) ((val_le_one_iff hm x).mpr hx)
    rwa [← hrel, ← map_pow φ, ← map_pow φ, ← map_sub φ, val_lt_one_iff hm] at this
  · intro h x hx
    obtain ⟨z, rfl⟩ := φ.surjective x
    rw [val_le_one_iff hm] at hx
    rw [← hrel, ← map_pow φ, ← map_pow φ, ← map_sub φ, val_lt_one_iff hm]
    exact h z hx

end Transfer

section Smooth

variable {E Ω : Type} [Field E] [NumberField E] [Field Ω] [Algebra E Ω] [IsAlgClosure E Ω]
  {A : ValuationSubring Ω} {w : HeightOneSpectrum (𝓞 E)} {h : IsPlaceOver A w}
  {E' Ω' : Type} [Field E'] [NumberField E'] [Field Ω'] [Algebra E' Ω'] [IsAlgClosure E' Ω']
  {A' : ValuationSubring Ω'} {w' : HeightOneSpectrum (𝓞 E')} {h' : IsPlaceOver A' w'}

theorem smooth_comp (φ : Ω ≃+* Ω') (e : Weil h →* Weil h')
    (he : ∀ (σ : Weil h) z, φ ((σ : G E Ω) z) = (e σ : G E' Ω') (φ z)) (hdeg : ∀ σ, deg (e σ) = deg σ)
    {M : Type} [Monoid M] (f : Weil h' →* M) (hf : IsSmooth f) : IsSmooth (f.comp e) := by
  haveI : Algebra.IsAlgebraic E Ω := IsAlgClosure.isAlgebraic
  obtain ⟨O', hO', hpre⟩ := isOpen_induced_iff.mp hf
  have h1 : (1 : G E' Ω') ∈ O' := by
    have : (1 : Ine (F := E') A') ∈ Subtype.val ⁻¹' O' := by rw [hpre]; simp
    exact this
  obtain ⟨U, hU, hU1, hUO⟩ := conj_nhds E Ω E' Ω' φ O' (hO'.mem_nhds h1)
  refine IsSmooth.of_open (U := Subtype.val ⁻¹' U) (hU.preimage continuous_subtype_val) hU1 ?_
  intro τ hτ
  have hmem : ((e (ineIncl h τ) : Weil h') : G E' Ω') ∈ Ine (F := E') A' := by
    rw [← deg_eq_zero_iff, hdeg, deg_ineIncl]
  have hO : (⟨_, hmem⟩ : Ine (F := E') A') ∈ Subtype.val ⁻¹' O' := hUO τ hτ _ (he (ineIncl h τ))
  rw [hpre] at hO
  have e1 : ineIncl h' ⟨_, hmem⟩ = e (ineIncl h τ) := Subtype.ext rfl
  rw [Set.mem_setOf_eq, e1] at hO
  exact hO

end Smooth

open GlobalTheory.LocLanglands in
theorem weil_equiv : ∀ (E Ω : Type) [Field E] [NumberField E] [Field Ω] [Algebra E Ω] [IsAlgClosure E Ω] (A : ValuationSubring Ω) (w : HeightOneSpectrum (𝓞 E)) (h : IsPlaceOver A w) (E' Ω' : Type) [Field E'] [NumberField E'] [Field Ω'] [Algebra E' Ω'] [IsAlgClosure E' Ω'] (A' : ValuationSubring Ω') (w' : HeightOneSpectrum (𝓞 E')) (h' : IsPlaceOver A' w') (φ : Ω ≃+* Ω') (j : E →+* E') (i : w.adicCompletion E ≃+* w'.adicCompletion E'), PlaceIso A w A' w' φ j i → ∃ c : Weil h ≃* Weil h', (∀ σ σ', WeilRel φ σ σ' ↔ c σ = σ') ∧ (∀ σ, deg (c σ) = deg σ) ∧ normV w' = normV w ∧ ∀ (M : Type) [Monoid M] (f : Weil h' →* M), GlobalTheory.WeilDeligne.IsSmooth f ↔ GlobalTheory.WeilDeligne.IsSmooth (f.comp c.toMonoidHom) := by
  intro E Ω _ _ _ _ _ A w h E' Ω' _ _ _ _ _ A' w' h' φ j i hP
  haveI : CharZero Ω' := (RingHom.charZero_iff (algebraMap E' Ω').injective).mp inferInstance
  haveI : Algebra.IsAlgebraic E' Ω' := IsAlgClosure.isAlgebraic
  have fixE : ∀ σ : G E Ω, σ ∈ Dec (F := E) A →
      ∀ y : E', conj φ σ.toRingEquiv (algebraMap E' Ω' y) = algebraMap E' Ω' y := by
    intro σ hσ y
    refine _root_.GlobalTheory.FixApprox.fix_of_approx Ω' A' (conj φ σ.toRingEquiv) ?_ _ ?_ ?_
    · intro z
      rw [conj_apply, hP.mem, AlgEquiv.coe_ringEquiv, apply_mem_iff_of_mem_Dec hσ]
      conv_rhs => rw [← φ.apply_symm_apply z]
      rw [hP.mem]
    · exact (IsIntegral.map (algebraMap E' Ω').toRatAlgHom
        (Algebra.IsIntegral.isIntegral (R := ℚ) y)).isAlgebraic
    · intro δ hδ
      obtain ⟨x, hx⟩ := _root_.GlobalTheory.approx_of_completion_equiv E w E' Ω' A' w' h' j i hP.cont hP.loc y δ hδ
      refine ⟨algebraMap E' Ω' (j x), ?_, hx⟩
      rw [conj_apply, ← hP.ext, RingEquiv.symm_apply_apply, AlgEquiv.coe_ringEquiv, AlgEquiv.commutes]
  have fixE' : ∀ σ' : G E' Ω', ∀ x : E,
      conj φ.symm σ'.toRingEquiv (algebraMap E Ω x) = algebraMap E Ω x := by
    intro σ' x
    rw [conj_apply, RingEquiv.symm_symm, hP.ext, AlgEquiv.coe_ringEquiv, AlgEquiv.commutes, ← hP.ext,
      RingEquiv.symm_apply_apply]
  have hrelC : ∀ (σ : G E Ω) (hσ : ∀ y : E', conj φ σ.toRingEquiv (algebraMap E' Ω' y) = algebraMap E' Ω' y) z,
      φ (σ z) = conjAlg φ σ hσ (φ z) := by
    intro σ hσ z; rw [conjAlg_apply, RingEquiv.symm_apply_apply]
  have hrelC' : ∀ (σ' : G E' Ω') z, φ (conjAlg φ.symm σ' (fixE' σ') z) = σ' (φ z) := by
    intro σ' z; rw [conjAlg_apply, RingEquiv.symm_symm, RingEquiv.apply_symm_apply]
  have q_eq : normV w' = normV w := by
    apply le_antisymm
    · obtain ⟨σ, hσ⟩ := exists_isFrob h
      have hrel := hrelC σ (fixE σ hσ.1)
      refine _root_.GlobalTheory.NormLeFrob.normV_le_of_isFrob E' Ω' A' w' h' (normV w) (one_lt_normV w) (conjAlg φ σ (fixE σ hσ.1)) ?_
      rw [← actsAs_one_iff, actsAs_iff hP.mem hrel, actsAs_one_iff]; exact hσ
    · obtain ⟨τ', hτ'⟩ := exists_isFrob h'
      have hrel := hrelC' τ'
      refine _root_.GlobalTheory.NormLeFrob.normV_le_of_isFrob E Ω A w h (normV w') (one_lt_normV w') (conjAlg φ.symm τ' (fixE' τ')) ?_
      rw [← actsAs_one_iff, ← actsAs_iff hP.mem hrel, actsAs_one_iff]; exact hτ'
  have memW : ∀ σ : Weil h, conjAlg φ (σ : G E Ω) (fixE σ (Weil_le_Dec h σ.2)) ∈ Weil h' := by
    intro σ
    obtain ⟨a, b, hab⟩ := σ.2
    refine ⟨a, b, ?_⟩
    rw [q_eq, actsAs_iff hP.mem (hrelC _ _)]; exact hab
  have memW' : ∀ σ' : Weil h', conjAlg φ.symm (σ' : G E' Ω') (fixE' σ') ∈ Weil h := by
    intro σ'
    obtain ⟨a, b, hab⟩ := σ'.2
    refine ⟨a, b, ?_⟩
    rw [← q_eq, ← actsAs_iff hP.mem (hrelC' _)]; exact hab
  let c : Weil h ≃* Weil h' :=
    { toFun := fun σ => ⟨_, memW σ⟩
      invFun := fun σ' => ⟨_, memW' σ'⟩
      left_inv := fun σ => by ext z; simp
      right_inv := fun σ' => by ext z; simp
      map_mul' := fun σ τ => by ext z; simp }
  have hc : ∀ σ y, ((c σ : Weil h') : G E' Ω') y = φ ((σ : G E Ω) (φ.symm y)) := fun _ _ => rfl
  have hcs : ∀ σ' y, ((c.symm σ' : Weil h) : G E Ω) y = φ.symm ((σ' : G E' Ω') (φ y)) := fun _ _ => rfl
  have hrel : ∀ (σ : Weil h) z, φ ((σ : G E Ω) z) = ((c σ : Weil h') : G E' Ω') (φ z) := by
    intro σ z; rw [hc, RingEquiv.symm_apply_apply]
  have hdeg : ∀ σ, deg (c σ) = deg σ := by
    intro σ
    obtain ⟨a, b, hab⟩ := σ.2
    rw [deg_eq hab, deg_eq (σ := c σ) (a := a) (b := b) (by rw [q_eq, actsAs_iff hP.mem (hrel σ)]; exact hab)]
  refine ⟨c, ?_, hdeg, q_eq, ?_⟩
  · intro σ σ'
    constructor
    · intro hr
      ext y
      obtain ⟨z, rfl⟩ := φ.surjective y
      rw [← hrel]
      exact hr z
    · rintro rfl z
      exact hrel σ z
  · intro M _ f
    constructor
    · exact smooth_comp φ c.toMonoidHom hrel hdeg f
    · intro hf
      have hrel' : ∀ (σ' : Weil h') z, φ.symm ((σ' : G E' Ω') z) = ((c.symm σ' : Weil h) : G E Ω) (φ.symm z) := by
        intro σ' z; rw [hcs, RingEquiv.apply_symm_apply]
      have hdeg' : ∀ σ', deg (c.symm σ') = deg σ' := by
        intro σ'; rw [← hdeg, MulEquiv.apply_symm_apply]
      have := smooth_comp φ.symm c.symm.toMonoidHom hrel' hdeg' (f.comp c.toMonoidHom) hf
      convert this using 1
      ext σ'
      simp

end GlobalTheory.WeilTransport
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PlaceOverTransportRingIso =====
