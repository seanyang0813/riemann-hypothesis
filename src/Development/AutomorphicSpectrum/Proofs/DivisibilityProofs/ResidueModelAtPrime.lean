module

public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.Objects
public import Mathlib.LinearAlgebra.FiniteDimensional.Defs
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PEventualValueFacts
public import Mathlib.Order.Filter.AtTopBot.Group
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ArithmeticHilbertSamuelLowerBound
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.Bundle
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.BundleObjects
public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.LaurentCechNerveLevelSpecTensorPower
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ConstantsMonomialApproximation
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.AssemblyCN
public import Mathlib.Algebra.Algebra.ZMod
import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.BundleChernComparison
import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.IsSemipositiveOn
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.IdealCycleValues.IntNumLComapBaseExtension, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.DescentIntersectionNumber, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ResidueModelAtPrime

-- ===== clump member: Development.WeilBound.CoreStatements.IdealCycleValues.IntNumLComapBaseExtension =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.IdealCycleValues.IntNumLComapBaseExtension", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.Objects\npublic import Mathlib.LinearAlgebra.FiniteDimensional.Defs\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PEventualValueFacts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.BundleChernComparison\nimport Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\npublic import Mathlib.Order.Filter.AtTopBot.Group\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ArithmeticHilbertSamuelLowerBound\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.Bundle\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.IsSemipositiveOn\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GroundTheory.Heights₂.Heights.NumbersDVR GlobalTheory.CompanionTheory.Ar.Num GlobalTheory.CompanionTheory.Ar.Top GroundTheory.Heights₂.Heights.ModelLeaves
open ReciprocityTheory.ChartRestriction.G.Geo (HermLine IsSmoothHerm IsArithVar IsHorizontal mcPts mCoordIdeal IsIntersectionFamily IsIntersectionSystem IntersectionSystem ptsIntegral geoNum charOf recR arInt ChartBundle chartRing)

namespace BaseChangeColon.PlField

section Eventual

variable {K : Type}

theorem foldr_eventually (c : ℤ) (L : List (K → ℤ)) {f g : (K → ℤ) → ℤ}
    (h : ∀ᶠ m in Filter.atTop, f m = c * g m) :
    ∀ᶠ m in Filter.atTop, L.foldr diffStep f m = c * L.foldr diffStep g m := by
  induction L with
  | nil => simpa using h
  | cons b L ih =>
    have ht : Filter.Tendsto (fun m : K → ℤ => m - b) Filter.atTop Filter.atTop := by
      simpa only [sub_eq_add_neg, id] using
        Filter.tendsto_atTop_add_const_right Filter.atTop (-b) (Filter.tendsto_id (α := K → ℤ))
    filter_upwards [ih, ht.eventually ih] with m h1 h2
    simp only [List.foldr_cons, diffStep]
    rw [h1, h2, mul_sub]

theorem eventualValue_mul {c : ℤ} (hc : c ≠ 0) {f g : (K → ℤ) → ℤ}
    (h : ∀ᶠ m in Filter.atTop, f m = c * g m) : eventualValue f = c * eventualValue g := by
  by_cases hg : ∃ v, ∀ᶠ m in Filter.atTop, g m = v
  · obtain ⟨v, hv⟩ := hg
    rw [(EventualValueFacts.proof K g v 0).1 hv]
    refine (EventualValueFacts.proof K f (c * v) 0).1 ?_
    filter_upwards [h, hv] with m h1 h2
    rw [h1, h2]
  · have hf : ¬ ∃ v, ∀ᶠ m in Filter.atTop, f m = v := by
      rintro ⟨v, hv⟩
      refine hg ⟨v / c, ?_⟩
      filter_upwards [h, hv] with m h1 h2
      rw [← h2, h1, Int.mul_ediv_cancel_left _ hc]
    rw [eventualValue, eventualValue, dite_eq_right hg, dite_eq_right hf, mul_zero]

end Eventual

section Charts

variable {K : Type} [Fintype K] [DecidableEq K] {ι : K → Type}

noncomputable def ex (c : ∀ k, ι k) (n : ℕ) : (Σ k, ι k) →₀ ℕ := ∑ k, Finsupp.single ⟨k, c k⟩ n

omit [DecidableEq K] in
theorem chart_pow {R : Type} [CommRing R] (c : ∀ k, ι k) (n : ℕ) :
    ((∏ k, X ⟨k, c k⟩) ^ n : MRing ι R) = monomial (ex c n) 1 := by
  rw [ex, monomial_sum_one, ← Finset.prod_pow]
  exact Finset.prod_congr rfl fun k _ => X_pow_eq_monomial

theorem weight_ex (c : ∀ k, ι k) (n : ℕ) :
    Finsupp.weight (blockWeight ι) (ex c n) = fun _ => n := by
  funext k

  rw [ex, map_sum, Finset.sum_apply]
  simp only [Finsupp.weight_apply, Finsupp.sum_single_index, zero_smul, blockWeight, Pi.smul_apply,
    Pi.single_apply, smul_eq_mul]
  simp

theorem ex_le {c : ∀ k, ι k} {n : ℕ} {d : (Σ k, ι k) →₀ ℕ} (h : ∀ k, n ≤ d ⟨k, c k⟩) : ex c n ≤ d := by
  classical
  rintro ⟨k, i⟩
  rw [ex, Finsupp.finsetSum_apply, Finset.sum_eq_single k]
  · rw [Finsupp.single_apply]
    split_ifs with h1
    · rw [← h1]; exact h k
    · exact Nat.zero_le _
  · intro k' _ hk
    rw [Finsupp.single_apply, if_neg]
    intro h1
    exact hk (congrArg Sigma.fst h1)
  · intro h1
    exact absurd (Finset.mem_univ k) h1

variable [∀ k, Fintype (ι k)]

theorem weight_eq_sum (d : (Σ k, ι k) →₀ ℕ) (k : K) :
    Finsupp.weight (blockWeight ι) d k = ∑ i, d ⟨k, i⟩ := by
  rw [Finsupp.weight_apply, Finsupp.sum_fintype d (fun i c => c • blockWeight ι i) (fun _ => zero_smul _ _), Finset.sum_apply,
    Fintype.sum_sigma, Finset.sum_eq_single k]
  · simp [blockWeight]
  · intro k' _ hk
    simp [blockWeight, hk.symm]
  · intro h1
    exact absurd (Finset.mem_univ k) h1

theorem exists_chart {n : ℕ} {d : (Σ k, ι k) →₀ ℕ}
    (h : ∀ k, n * Fintype.card (ι k) < Finsupp.weight (blockWeight ι) d k) :
    ∃ c : ∀ k, ι k, ∀ k, n ≤ d ⟨k, c k⟩ := by
  have : ∀ k, ∃ i : ι k, n ≤ d ⟨k, i⟩ := by
    intro k
    by_contra hc
    push Not at hc
    have h1 := h k
    rw [weight_eq_sum] at h1
    have h2 : ∑ i, d ⟨k, i⟩ ≤ ∑ _i : ι k, n := Finset.sum_le_sum fun i _ => (hc i).le
    rw [Finset.sum_const, Finset.card_univ, smul_eq_mul, mul_comm] at h2
    omega
  choose c hc using this
  exact ⟨c, hc⟩

end Charts

section Fields

variable {K : Type} [Fintype K] [DecidableEq K] {ι : K → Type}
  {F F' : Type} [Field F] [Field F'] [Algebra F F'] (V' : Ideal (MRing ι F'))

def Good (n : ℕ) (c : ∀ k, ι k) (a : F') : Prop :=
  ∃ G : MRing ι F, IsMultiHomog G (fun _ => n) ∧
    C a * (∏ k, X ⟨k, c k⟩) ^ n - MvPolynomial.map (algebraMap F F') G ∈ V'

variable {V'}

theorem Good.mono {n n' : ℕ} {c : ∀ k, ι k} {a : F'} (h : Good (F := F) V' n c a) (hn : n ≤ n') :
    Good (F := F) V' n' c a := by
  obtain ⟨G, hG, hV⟩ := h
  obtain ⟨r, rfl⟩ := Nat.exists_eq_add_of_le hn
  refine ⟨G * (∏ k, X ⟨k, c k⟩) ^ r, ?_, ?_⟩
  · rw [chart_pow]
    exact IsWeightedHomogeneous.mul hG (isWeightedHomogeneous_monomial _ _ _ (weight_ex c r))
  · have h1 := V'.mul_mem_right ((∏ k, X ⟨k, c k⟩) ^ r) hV
    simp only [map_mul, map_pow, map_prod, map_X]
    convert h1 using 1
    ring

theorem exists_uniform [∀ k, Fintype (ι k)] [FiniteDimensional F F']
    (h : ∀ c a, ∃ n, Good (F := F) V' n c a) : ∃ n, ∀ c a, Good (F := F) V' n c a := by
  classical
  choose nn hnn using h
  let b := Module.finBasis F F'
  let n := Finset.univ.sup fun p : (∀ k, ι k) × Fin (Module.finrank F F') => nn p.1 (b p.2)
  refine ⟨n, fun c a => ?_⟩
  have hb : ∀ i, Good (F := F) V' n c (b i) := fun i =>
    (hnn c (b i)).mono (Finset.le_sup (f := fun p : (∀ k, ι k) × Fin (Module.finrank F F') => nn p.1 (b p.2))
      (Finset.mem_univ (c, i)))
  choose G hG hV using hb
  refine ⟨∑ i, C (b.repr a i) * G i, ?_, ?_⟩
  · exact IsWeightedHomogeneous.sum _ _ _ fun i _ => IsWeightedHomogeneous.C_mul (hG i) _
  · have h1 : ∑ i, C (algebraMap F F' (b.repr a i)) *
        (C (b i) * (∏ k, X ⟨k, c k⟩) ^ n - MvPolynomial.map (algebraMap F F') (G i)) ∈ V' :=
      Ideal.sum_mem _ fun i _ => V'.mul_mem_left _ (hV i)
    have h2 : (C a : MRing ι F') = ∑ i, C (algebraMap F F' (b.repr a i)) * C (b i) := by
      conv_lhs => rw [← b.sum_repr a]

      simp only [map_sum, Algebra.smul_def, map_mul]
    convert h1 using 1
    rw [h2]

    simp only [map_sum, map_mul, map_C, mul_sub, Finset.sum_sub_distrib, Finset.sum_mul, mul_assoc]

theorem lift_form [∀ k, Fintype (ι k)] {n : ℕ} (h : ∀ c a, Good (F := F) V' n c a) {m : K → ℕ}
    (hm : ∀ k, n * Fintype.card (ι k) < m k) {q : MRing ι F'} (hq : IsMultiHomog q m) :
    ∃ p : MRing ι F, IsMultiHomog p m ∧ q - MvPolynomial.map (algebraMap F F') p ∈ V' := by
  rw [q.as_sum]
  refine Finset.sum_induction _
    (fun q => ∃ p : MRing ι F, IsMultiHomog p m ∧ q - MvPolynomial.map (algebraMap F F') p ∈ V') ?_ ?_ ?_
  · rintro q₁ q₂ ⟨p₁, h₁, k₁⟩ ⟨p₂, h₂, k₂⟩
    refine ⟨p₁ + p₂, IsWeightedHomogeneous.add h₁ h₂, ?_⟩
    convert V'.add_mem k₁ k₂ using 1
    rw [map_add (f := _)]
    ring
  · exact ⟨0, isWeightedHomogeneous_zero _ _ _, by simp⟩
  · intro d hd
    have hw : Finsupp.weight (blockWeight ι) d = m := hq (mem_support_iff.1 hd)
    obtain ⟨c, hc⟩ := exists_chart (n := n) (d := d) (by rw [hw]; exact hm)
    obtain ⟨d', hd'⟩ := exists_add_of_le (ex_le hc)
    obtain ⟨G, hG, hV⟩ := h c (AddMonoidAlgebra.coeff q d)
    refine ⟨G * monomial d' 1, ?_, ?_⟩
    · have h1 := IsWeightedHomogeneous.mul hG
        (isWeightedHomogeneous_monomial (R := F) (blockWeight ι) d' 1 rfl)
      have h2 : (fun _ => n) + Finsupp.weight (blockWeight ι) d' = m := by
        rw [← hw, hd', map_add (f := _), weight_ex]
      rw [h2] at h1
      exact h1
    · have h1 := V'.mul_mem_right (monomial d' 1) hV
      have h2 : (monomial d (AddMonoidAlgebra.coeff q d) : MRing ι F') =
          C (AddMonoidAlgebra.coeff q d) * (∏ k, X ⟨k, c k⟩) ^ n * monomial d' 1 := by
        rw [chart_pow, mul_assoc, monomial_mul, ← hd', C_mul_monomial]
        simp
      rw [h2, map_mul, map_monomial, (algebraMap F F').map_one, ← sub_mul]
      exact h1

omit [Fintype K] in
theorem finrank_piece {m : K → ℕ}
    (h : ∀ q : MRing ι F', IsMultiHomog q m →
      ∃ p : MRing ι F, IsMultiHomog p m ∧ q - MvPolynomial.map (algebraMap F F') p ∈ V') :
    Module.finrank F (gradedPiece (V'.comap (MvPolynomial.map (algebraMap F F'))) m) =
      Module.finrank F F' * Module.finrank F' (gradedPiece V' m) := by
  set V := V'.comap (MvPolynomial.map (algebraMap F F')) with hVdef
  have hφ : ∀ p : MRing ι F, mapAlgHom (Algebra.ofId F F') p = MvPolynomial.map (algebraMap F F') p :=
    fun p => rfl
  let ψ : (MRing ι F ⧸ V) →ₐ[F] (MRing ι F' ⧸ V') :=
    Ideal.Quotient.liftₐ V ((Ideal.Quotient.mkₐ F V').comp (mapAlgHom (Algebra.ofId F F')))
      (fun p hp => Ideal.Quotient.eq_zero_iff_mem.2 hp)
  have hψ : ∀ p, ψ (Ideal.Quotient.mk V p) =
      Ideal.Quotient.mk V' (MvPolynomial.map (algebraMap F F') p) := fun p => rfl
  have hinj : Function.Injective ψ.toLinearMap := by
    refine (injective_iff_map_eq_zero ψ).2 fun x hx => ?_
    obtain ⟨p, rfl⟩ := Ideal.Quotient.mk_surjective x
    rw [hψ, Ideal.Quotient.eq_zero_iff_mem] at hx
    exact Ideal.Quotient.eq_zero_iff_mem.2 hx
  have hmap : (gradedPiece V m).map ψ.toLinearMap = (gradedPiece V' m).restrictScalars F := by
    ext x
    constructor
    · rintro ⟨_, ⟨p, hp, rfl⟩, rfl⟩
      refine ⟨MvPolynomial.map (algebraMap F F') p, ?_, (hψ p).symm⟩
      intro d hd
      refine hp fun h0 => hd ?_
      rw [coeff_map, h0, map_zero]
    · rintro ⟨q, hq, rfl⟩
      obtain ⟨p, hp, hV⟩ := h q hq
      refine ⟨Ideal.Quotient.mk V p, ⟨p, hp, rfl⟩, ?_⟩
      exact (hψ p).trans (Ideal.Quotient.eq.2 hV).symm
  rw [(Submodule.equivMapOfInjective _ hinj (gradedPiece V m)).finrank_eq, hmap,
    Module.finrank_mul_finrank]
  exact ((Submodule.restrictScalarsEquiv F F' _ (gradedPiece V' m)).restrictScalars F).finrank_eq

end Fields

end BaseChangeColon.PlField
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.IdealCycleValues.IntNumLComapBaseExtension =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.DescentIntersectionNumber =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.DescentIntersectionNumber", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.BundleObjects\npublic import Development.WeilBound.CoreStatements.IdealCycleValues.IntNumLComapBaseExtension\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.BundleChernComparison\nimport Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GroundTheory.Heights₂.Heights.NumbersDVR GlobalTheory.CompanionTheory.Ar.Num GlobalTheory.CompanionTheory.Ar.Top GroundTheory.Heights₂.Heights.ModelLeaves
open ReciprocityTheory.ChartRestriction.G.Geo (HermLine IsSmoothHerm IsArithVar IsHorizontal mcPts mCoordIdeal IsIntersectionFamily IsIntersectionSystem IntersectionSystem ptsIntegral geoNum charOf recR arInt ChartBundle chartRing)

namespace GlobalTheory.CompanionTheory.Ar.Num

theorem intNumL_subfield_constants : ∀ (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (F F' : Type) [Field F] [Field F'] [Algebra F F'] [FiniteDimensional F F'] (V' : Ideal (MRing ι F')), IsMultiHomogIdeal V' → (∀ (c : ∀ k, ι k) (a : F'), ∃ (n : ℕ) (G : MRing ι F), IsMultiHomog G (fun _ => n) ∧ C a * (∏ k, X ⟨k, c k⟩) ^ n - MvPolynomial.map (algebraMap F F') G ∈ V') → ∀ l : List (K → ℤ), intNumL F (V'.comap (MvPolynomial.map (algebraMap F F'))) l = (Module.finrank F F' : ℤ) * intNumL F' V' l := by
  intro K _ _ ι _ F F' _ _ _ _ V' _ hgen l
  have hgood : ∀ (c : ∀ k, ι k) (a : F'), ∃ n, BaseChangeColon.PlField.Good (F := F) V' n c a := by
    intro c a
    obtain ⟨n, G, hG, hmem⟩ := hgen c a
    exact ⟨n, G, hG, hmem⟩
  obtain ⟨n, hn⟩ := BaseChangeColon.PlField.exists_uniform hgood
  have hev : ∀ᶠ m : K → ℤ in Filter.atTop,
      hilbFn (V'.comap (MvPolynomial.map (algebraMap F F'))) m
        = (Module.finrank F F' : ℤ) * hilbFn V' m := by
    filter_upwards [Filter.eventually_ge_atTop
      (fun k : K => ((n * Fintype.card (ι k) + 1 : ℕ) : ℤ))] with m hm
    have hm' : ∀ k, ((n * Fintype.card (ι k) + 1 : ℕ) : ℤ) ≤ m k := fun k => hm k
    have hm0 : ∀ k, 0 ≤ m k := fun k => le_trans (Int.natCast_nonneg _) (hm' k)
    have hlt : ∀ k, n * Fintype.card (ι k) < (m k).toNat := by
      intro k
      have := hm' k
      omega
    unfold hilbFn
    rw [if_pos hm0, if_pos hm0,
      BaseChangeColon.PlField.finrank_piece (fun q hq => BaseChangeColon.PlField.lift_form hn hlt hq), Nat.cast_mul]
  have hne : (Module.finrank F F' : ℤ) ≠ 0 := by
    exact_mod_cast (Module.finrank_pos (R := F) (M := F')).ne'
  simp only [intNumL, intNum, mixedDiff, List.ofFn_get]
  exact BaseChangeColon.PlField.eventualValue_mul hne (BaseChangeColon.PlField.foldr_eventually _ l hev)

end GlobalTheory.CompanionTheory.Ar.Num
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.DescentIntersectionNumber =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ResidueModelAtPrime =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ResidueModelAtPrime", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.LaurentCechNerveLevelSpecTensorPower\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ConstantsMonomialApproximation\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.BundleObjects\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.DescentIntersectionNumber\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.AssemblyCN\npublic import Mathlib.Algebra.Algebra.ZMod\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GroundTheory.Heights₂.Heights.NumbersDVR GlobalTheory.CompanionTheory.Ar.Num GlobalTheory.CompanionTheory.Ar.Top GroundTheory.Heights₂.Heights.ModelLeaves
open ReciprocityTheory.ChartRestriction.G.Geo (HermLine IsSmoothHerm IsArithVar IsHorizontal mcPts mCoordIdeal IsIntersectionFamily IsIntersectionSystem IntersectionSystem ptsIntegral geoNum charOf recR arInt ChartBundle chartRing)

namespace GlobalTheory.CompanionTheory.Ar.Num

theorem mem_of_residue_map_mem_specialIdeal {K : Type} [DecidableEq K] {ι : K → Type} {O : Type}
    [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] {W : Ideal (MRing ι O)}
    (hW : (IsLocalRing.maximalIdeal O).map (C : O →+* MRing ι O) ≤ W) {f : MRing ι O}
    (hf : MvPolynomial.map (IsLocalRing.residue O) f ∈ specialIdeal W) : f ∈ W := by
  obtain ⟨g, hg, hgf⟩ := (Ideal.mem_map_iff_of_surjective _
    (MvPolynomial.map_surjective _ IsLocalRing.residue_surjective)).1 hf
  have hker : f - g ∈ W := by
    apply hW
    rw [MvPolynomial.mem_map_C_iff]
    intro d
    rw [← IsLocalRing.residue_eq_zero_iff]
    have h := congrArg (AddMonoidAlgebra.coeff · d) hgf
    rw [MvPolynomial.coeff_map, MvPolynomial.coeff_map] at h
    rw [MvPolynomial.coeff_sub, map_sub, h, sub_self]
  have := W.add_mem hker hg
  simpa using this

theorem map_mem_pointIdeal {K : Type} {ι : K → Type} {Ω : Type} [Field Ω]
    {y : (Σ k, ι k) → Ω} {A O : Type} [CommRing A] [CommRing O] [Algebra A O] [Algebra A Ω]
    [Algebra O Ω] [IsScalarTower A O Ω] {f : MRing ι A} (hf : f ∈ pointIdeal A y) :
    MvPolynomial.map (algebraMap A O) f ∈ pointIdeal O y := by
  rw [pointIdeal, RingHom.mem_ker] at hf ⊢
  rw [← hf]
  simp only [pointConeMap]
  exact MvPolynomial.aeval_map_algebraMap _ _ _

theorem isMultiHomog_map {K : Type} [DecidableEq K] {ι : K → Type} {R S : Type} [CommRing R]
    [CommRing S] (φ : R →+* S) {G : MRing ι R} {b : K → ℕ} (hG : IsMultiHomog G b) :
    IsMultiHomog (MvPolynomial.map φ G) b := by
  intro d hd
  apply hG
  intro h0
  apply hd
  rw [MvPolynomial.coeff_map, h0, map_zero]

theorem intNumL_zmod_eq_residueDegree_mul_vNumL : ∀ (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (Ω : Type) [Field Ω] (y : (Σ k, ι k) → Ω) (A : Type) [CommRing A] [Algebra A Ω] [IsDedekindDomain A] [Module.Finite ℤ A], HasConstants ℤ A y → ∀ (p : ℕ) [Fact p.Prime] (m : Ideal A) [m.IsPrime] (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Algebra A O] [IsLocalization.AtPrime O m] [Algebra O Ω] [IsScalarTower A O Ω], (p : A) ∈ m → ∀ fd : ℕ, Nat.card (A ⧸ m) = p ^ fd → ∀ W' : Ideal (MRing ι O), W'.IsPrime → IsMultiHomogIdeal W' → pointIdeal O y ≤ W' → (IsLocalRing.maximalIdeal O).map (C : O →+* MRing ι O) ≤ W' → ∀ l : List (K → ℤ), intNumL (ZMod p) (extTo (ZMod p) (W'.comap (MvPolynomial.map (Int.castRingHom O)))) l = (fd : ℤ) * vNumL W' l := by
  intro K _ _ ι _ Ω _ y A _ _ _ _ hconst p _ m _ O _ _ _ _ _ _ _ hpm fd hcard W' hWp hWh hpt hϖ l
  have hmne : m ≠ ⊥ := by
    intro h
    apply IsDiscreteValuationRing.not_a_field O
    rw [← IsLocalization.AtPrime.map_eq_maximalIdeal m O, h, Ideal.map_bot]
  haveI hmax : m.IsMaximal := Ideal.IsPrime.isMaximal ‹_› hmne
  let e := IsLocalization.AtPrime.equivQuotMaximalIdeal m O
  have hsurj : ∀ x : IsLocalRing.ResidueField O, ∃ a : A,
      IsLocalRing.residue O (algebraMap A O a) = x := by
    intro x
    obtain ⟨q, hq⟩ := e.surjective x
    obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective q
    refine ⟨a, ?_⟩
    rw [← hq]
    exact (IsLocalization.AtPrime.equivQuotMaximalIdeal_apply_mk m O a).symm
  have hcardκ : Nat.card (IsLocalRing.ResidueField O) = p ^ fd :=
    (Nat.card_congr e.toEquiv).symm.trans hcard
  have hp0 : ((p : ℕ) : IsLocalRing.ResidueField O) = 0 := by
    have h1 : algebraMap A O (p : A) ∈ IsLocalRing.maximalIdeal O :=
      (IsLocalization.AtPrime.to_map_mem_maximal_iff O m _).2 hpm
    have h2 := (IsLocalRing.residue_eq_zero_iff _).2 h1
    simpa using h2
  haveI hchar : CharP (IsLocalRing.ResidueField O) p := by
    rcases (Nat.dvd_prime (Fact.out : p.Prime)).1 (ringChar.dvd hp0) with h | h
    · exact absurd h CharP.ringChar_ne_one
    · exact h ▸ ringChar.charP _
  letI : Algebra (ZMod p) (IsLocalRing.ResidueField O) := ZMod.algebra _ p
  haveI hfin : Finite (IsLocalRing.ResidueField O) := by
    apply Nat.finite_of_card_ne_zero
    rw [hcardκ]
    exact pow_ne_zero _ (Fact.out : p.Prime).ne_zero
  haveI : FiniteDimensional (ZMod p) (IsLocalRing.ResidueField O) := Module.Finite.of_finite
  have hfr : Module.finrank (ZMod p) (IsLocalRing.ResidueField O) = fd := by
    have h := Module.natCard_eq_pow_finrank (K := ZMod p) (V := IsLocalRing.ResidueField O)
    rw [hcardκ, Nat.card_zmod] at h
    exact (Nat.pow_right_injective (Fact.out : p.Prime).two_le h).symm
  have hhom : (algebraMap (ZMod p) (IsLocalRing.ResidueField O)).comp
      (Int.castRingHom (ZMod p)) = (IsLocalRing.residue O).comp (Int.castRingHom O) :=
    Subsingleton.elim _ _
  have hmm : ∀ g : MRing ι ℤ,
      MvPolynomial.map (algebraMap (ZMod p) (IsLocalRing.ResidueField O))
        (MvPolynomial.map (Int.castRingHom (ZMod p)) g) =
      MvPolynomial.map (IsLocalRing.residue O) (MvPolynomial.map (Int.castRingHom O) g) := by
    intro g
    rw [MvPolynomial.map_map, MvPolynomial.map_map, hhom]
  have hcomap : (specialIdeal W').comap
      (MvPolynomial.map (algebraMap (ZMod p) (IsLocalRing.ResidueField O))) =
      extTo (ZMod p) (W'.comap (MvPolynomial.map (Int.castRingHom O))) := by
    have hs : Function.Surjective
        (MvPolynomial.map (σ := (Σ k, ι k)) (Int.castRingHom (ZMod p))) :=
      MvPolynomial.map_surjective _ (ZMod.ringHom_surjective _)
    ext g
    obtain ⟨g0, rfl⟩ := hs g
    rw [Ideal.mem_comap, hmm, extTo]
    constructor
    · intro h
      exact Ideal.mem_map_of_mem _ (Ideal.mem_comap.2 (mem_of_residue_map_mem_specialIdeal hϖ h))
    · intro h
      obtain ⟨g1, hg1, hg⟩ := (Ideal.mem_map_iff_of_surjective _ hs).1 h
      rw [← hmm, ← hg, hmm]
      exact Ideal.mem_map_of_mem _ (Ideal.mem_comap.1 hg1)
  have hsu : ∀ (c : ∀ k, ι k) (a : IsLocalRing.ResidueField O), ∃ (n : ℕ)
      (G : MRing ι (ZMod p)), IsMultiHomog G (fun _ => n) ∧
      C a * (∏ k, X ⟨k, c k⟩) ^ n -
        MvPolynomial.map (algebraMap (ZMod p) (IsLocalRing.ResidueField O)) G ∈
        specialIdeal W' := by
    intro c a
    obtain ⟨a0, rfl⟩ := hsurj a
    obtain ⟨n, G, hG, hmem⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Num.const_mul_chartMonomial_pow_form K ι Ω y A hconst c a0
    refine ⟨n, MvPolynomial.map (Int.castRingHom (ZMod p)) G, isMultiHomog_map _ hG, ?_⟩
    have h1 := hpt (map_mem_pointIdeal (O := O) hmem)
    have h2 : MvPolynomial.map (IsLocalRing.residue O) _ ∈ specialIdeal W' :=
      Ideal.mem_map_of_mem _ h1
    rw [hmm]
    have hG' : MvPolynomial.map (IsLocalRing.residue O) (MvPolynomial.map (algebraMap A O)
        (MvPolynomial.map (Int.castRingHom A) G)) =
        MvPolynomial.map (IsLocalRing.residue O) (MvPolynomial.map (Int.castRingHom O) G) := by
      simp only [MvPolynomial.map_map]
      exact congrArg (fun φ : ℤ →+* IsLocalRing.ResidueField O => MvPolynomial.map φ G)
        (Subsingleton.elim _ _)
    simpa [hG'] using h2
  have key := _root_.GlobalTheory.CompanionTheory.Ar.Num.intNumL_subfield_constants K ι (ZMod p) (IsLocalRing.ResidueField O) (specialIdeal W')
    (SpecialIdealMultiHomog.full O K ι W' hWh) hsu l
  rw [hcomap, hfr] at key
  exact key

end GlobalTheory.CompanionTheory.Ar.Num
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ResidueModelAtPrime =====
