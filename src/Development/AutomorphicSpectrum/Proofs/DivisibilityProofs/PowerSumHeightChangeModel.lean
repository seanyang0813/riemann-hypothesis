module

public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Birational
public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.LaurentCechNerveLevelSpecTensorPower
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.MassFormulaConjugationAction
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ArithmeticHilbertSamuelLowerBound
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.DivCycleMapLocalisation
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.LocalizationModelOverPlace
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PointIdealComapPrimeLift
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ResidueModelAtPrime
public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.LocalAtPlaces
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.VerticalNumberLocalCycle
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.OfSteps
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.CycNumIntAndComb
public import Mathlib.GroupTheory.FiniteAbelian.Basic
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.IsometricVerticalIntersectionEq
public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.BundleChernComparison
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.CycleNumberLinear
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.CycleNumberMulExpand
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.CycleNumberRename
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PVerticalDivisorsCommute
public import Mathlib.RingTheory.Ideal.KrullsHeightTheorem
public import Mathlib.RingTheory.HopkinsLevitzki
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FiniteVerticalRecursion
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FractionRingRingEquiv
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.IsMultiProjPrimeExtTo
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.LogIntegralCongrSmul
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.UniformizerDivisorCycleNumber
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PNumericalSegre
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PowerSumsVanishAtPlaces
import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.BundleObjects
import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.VerticalNumberZeroOfHorizontal
import Mathlib.Tactic.Linter.HaveILetI
import Development.AutomorphicSpectrum.Proofs.GeometryProofs.ModelDescentIntegralClosure
import Mathlib.Tactic.Linter.Style
import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.IsSemipositiveOn

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.DegreeEqCardToMultiset, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FinitePlacesModelFamily, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagM3PadicGlobal, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.IsometricFamilyIntersectionEq, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.LocalPairPowerSumValue, Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.LocPairValLinear, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.LocalPairValueLinear, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FibreComponentDivisorProperties, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.VerticalPairPowerSumVanish, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PowerSumTermDiscreteValuation, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.LogIntegralEqGenericIntersection, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RootModelGeometricGenericNumber, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ExistsMixedDifferenceExpansion, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PowerSumMixedExpansion, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RootPowerSumMixedExpansion, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PowerSumHeightChangeModel

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.DegreeEqCardToMultiset =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.DegreeEqCardToMultiset", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Birational\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.LaurentCechNerveLevelSpecTensorPower\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.MassFormulaConjugationAction\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GroundTheory.Heights₂.Heights.NumbersDVR GlobalTheory.CompanionTheory.Ar.Num GlobalTheory.CompanionTheory.Ar.Top GroundTheory.Heights₂.Heights.ModelLeaves
open ReciprocityTheory.ChartRestriction.G.Geo (HermLine IsSmoothHerm IsArithVar IsHorizontal mcPts mCoordIdeal IsIntersectionFamily IsIntersectionSystem IntersectionSystem ptsIntegral geoNum charOf recR arInt ChartBundle chartRing)

namespace GlobalTheory.CompanionTheory.Ar.Num

theorem degree_eq_card_toMultiset {α : Type} (d : α →₀ ℕ) :
    d.degree = Multiset.card (Finsupp.toMultiset d) := by
  rw [Finsupp.card_toMultiset]
  rfl

theorem ofFn_monoLines_perm {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)] {J J' : Type}
    (ℓ : J' → HermLine ι) (e : J → J') (μ : J →₀ ℕ) (m : J' →₀ ℕ) (d : ℕ)
    (hm : Finsupp.toMultiset m = (Finsupp.toMultiset μ).map e)
    (hd : (Finsupp.toMultiset m).toList.length = d) :
    ((Finsupp.toMultiset μ).map (ℓ ∘ e)).toList.Perm (List.ofFn (monoLines ℓ m d)) := by
  have h1 : List.ofFn (monoLines ℓ m d) = (Finsupp.toMultiset m).toList.map ℓ := by
    refine List.ext_getElem (by rw [List.length_ofFn, List.length_map, hd]) fun n h₁ h₂ => ?_
    have hn : n < (Finsupp.toMultiset m).toList.length := by rwa [List.length_map] at h₂
    rw [List.getElem_ofFn, List.getElem_map]
    simp only [monoLines]
    rw [dite_eq_left hn]
    rfl
  rw [h1, ← Multiset.coe_eq_coe, ← Multiset.map_coe, Multiset.coe_toList, Multiset.coe_toList, hm,
    Multiset.map_map]

theorem arMono_mapDomain_some {Ψ : Type} [Fintype Ψ] {N : ℕ} (M : RootModel Ψ N)
    (II : IntersectionSystem) (hII : IsIntersectionSystem II) (t : ℝ) (μ : Ψ × Fin N →₀ ℕ)
    (hμ : μ.degree = dimFl Ψ N + 1) :
    M.arMono II t (Finsupp.mapDomain some μ) =
      arList (II M.K M.ι) M.P (μ.toMultiset.map (M.x t)).toList / (M.δ : ℝ) := by
  classical
  have hms : Finsupp.toMultiset (Finsupp.mapDomain some μ) = (Finsupp.toMultiset μ).map some :=
    (Finsupp.toMultiset_map _ _).symm
  have hcard : Multiset.card (Finsupp.toMultiset μ) = dimFl Ψ N + 1 := by
    rw [← degree_eq_card_toMultiset, hμ]
  have hdeg : (Finsupp.mapDomain some μ).degree = dimFl Ψ N + 1 := by
    rw [degree_eq_card_toMultiset, hms, Multiset.card_map, hcard]
  have hnone : (Finsupp.mapDomain some μ) none = 0 :=
    Finsupp.mapDomain_notin_range _ _ (by simp)
  have hlen : (Finsupp.toMultiset (Finsupp.mapDomain some μ)).toList.length = dimFl Ψ N + 1 := by
    rw [Multiset.length_toList, hms, Multiset.card_map, hcard]
  have hperm := ofFn_monoLines_perm (M.line t) some μ (Finsupp.mapDomain some μ) (dimFl Ψ N + 1) hms hlen
  have hall : ∀ r ∈ (Finsupp.toMultiset (Finsupp.mapDomain some μ)).toList, IsSmoothHerm (M.line t r) := by
    intro r hr
    rw [Multiset.mem_toList, hms, Multiset.mem_map] at hr
    obtain ⟨r', -, rfl⟩ := hr
    exact M.x_smooth t r'
  have hsm : ∀ j, IsSmoothHerm (monoLines (M.line t) (Finsupp.mapDomain some μ) (dimFl Ψ N + 1) j) := by
    intro j
    have hj : (j : ℕ) < (Finsupp.toMultiset (Finsupp.mapDomain some μ)).toList.length := by
      rw [hlen]; exact j.2
    simp only [monoLines]
    rw [dite_eq_left hj]
    exact hall _ (List.get_mem _ _)
  have hmain := arNum_linear_arList_symm.2 M.K M.ι M.P (dimFl Ψ N) M.arith (II M.K M.ι) (hII M.K M.ι) _ _ hsm
    (by simpa [Function.comp_def, RootModel.line] using hperm)
  unfold RootModel.arMono
  rw [if_pos hdeg, hnone, pow_zero, mul_one]
  congr 1
  exact hmain.symm

theorem arFun_toA_eq_arNum : ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (M : RootModel Ψ N) (II : IntersectionSystem), IsIntersectionSystem II → ∀ (t : ℝ) (F : RP Ψ N), F.IsHomogeneous (dimFl Ψ N + 1) → M.arFun II t (toA F) = arNum (II M.K M.ι) M.P (M.x t) F / (M.δ : ℝ) := by
  intro Ψ _ _ N M II hII t F hF
  classical
  have hmono : ∀ μ ∈ F.support, M.arFun II t (toA (monomial μ (F.coeff μ))) =
      F.coeff μ * (arList (II M.K M.ι) M.P (μ.toMultiset.map (M.x t)).toList / (M.δ : ℝ)) := by
    intro μ hμ
    have hdeg : μ.degree = dimFl Ψ N + 1 := by
      have h := hF (MvPolynomial.mem_support_iff.1 hμ)
      rw [Finsupp.degree_eq_weight_one]
      exact h
    have h1 : toA (monomial μ (F.coeff μ)) =
        (F.coeff μ) • (basisMonomials (Option (Ψ × Fin N)) ℝ) (Finsupp.mapDomain some μ) := by
      simp [toA, MvPolynomial.rename_monomial, MvPolynomial.smul_monomial]
    rw [h1, map_smul, RootModel.arFun, Module.Basis.constr_basis, smul_eq_mul,
      arMono_mapDomain_some M II hII t μ hdeg]
  have hsum : toA F = ∑ μ ∈ F.support, toA (monomial μ (F.coeff μ)) := by
    unfold toA
    conv_lhs => rw [F.as_sum]

    rw [map_sum]

  rw [hsum, map_sum, Finset.sum_congr rfl hmono]
  unfold arNum
  rw [Finset.sum_div]
  refine Finset.sum_congr rfl fun μ _ => ?_
  rw [mul_div_assoc]

end GlobalTheory.CompanionTheory.Ar.Num
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.DegreeEqCardToMultiset =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FinitePlacesModelFamily =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FinitePlacesModelFamily", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.LaurentCechNerveLevelSpecTensorPower\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ArithmeticHilbertSamuelLowerBound\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.DivCycleMapLocalisation\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.LocalizationModelOverPlace\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PointIdealComapPrimeLift\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ResidueModelAtPrime\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.LocalAtPlaces\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.VerticalNumberLocalCycle\nimport GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.BundleObjects\nimport Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.VerticalNumberZeroOfHorizontal\nimport GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.OfSteps\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GroundTheory.Heights₂.Heights.NumbersDVR GlobalTheory.CompanionTheory.Ar.Num GlobalTheory.CompanionTheory.Ar.Top GroundTheory.Heights₂.Heights.ModelLeaves
open ReciprocityTheory.ChartRestriction.G.Geo (HermLine IsSmoothHerm IsArithVar IsHorizontal mcPts mCoordIdeal IsIntersectionFamily IsIntersectionSystem IntersectionSystem ptsIntegral geoNum charOf recR arInt ChartBundle chartRing)
set_option maxSynthPendingDepth 1

namespace GlobalTheory.CompanionTheory.Ar.Num.Places

variable {K : Type} {ι : K → Type}

theorem map_map_cast {A O : Type} [CommRing A] [CommRing O] [Algebra A O] (f : MRing ι ℤ) :
    MvPolynomial.map (algebraMap A O) (MvPolynomial.map (Int.castRingHom A) f) =
      MvPolynomial.map (Int.castRingHom O) f := by
  have h : (algebraMap A O).comp (Int.castRingHom A) = Int.castRingHom O := RingHom.ext_int _ _
  rw [MvPolynomial.map_map, h]

theorem comap_cast_eq {A O : Type} [CommRing A] [CommRing O] [Algebra A O] (W : Ideal (MRing ι O)) :
    W.comap (MvPolynomial.map (Int.castRingHom O)) =
      (W.comap (MvPolynomial.map (algebraMap A O))).comap (MvPolynomial.map (Int.castRingHom A)) := by
  ext g
  simp only [Ideal.mem_comap, map_map_cast]

theorem comap_pointIdeal {Ω : Type} [Field Ω] {y : (Σ k, ι k) → Ω} {A O : Type} [CommRing A] [CommRing O]
    [Algebra A O] [Algebra A Ω] [Algebra O Ω] [IsScalarTower A O Ω] :
    (pointIdeal O y : Ideal (MRing ι O)).comap (MvPolynomial.map (algebraMap A O)) = pointIdeal A y := by
  ext g
  rw [Ideal.mem_comap, pointIdeal, pointIdeal, RingHom.mem_ker, RingHom.mem_ker]
  simp only [pointConeMap]
  rw [MvPolynomial.aeval_map_algebraMap]

theorem mem_of_divCycle_ne_zero {R : Type} [CommRing R] {P W : Ideal (MRing ι R)} {f : MRing ι R}
    (h : divCycle P f W ≠ 0) : W ∈ (P ⊔ Ideal.span {f}).minimalPrimes ∧ IsRelevant W := by
  unfold divCycle at h
  split_ifs at h with h'
  · exact h'
  · exact absurd rfl h

theorem isRelevant_comap {R S : Type} [CommRing R] [CommRing S] (φ : R →+* S) {W : Ideal (MRing ι S)}
    (h : IsRelevant W) : IsRelevant (W.comap (MvPolynomial.map φ)) := by
  intro k
  obtain ⟨i, hi⟩ := h k
  exact ⟨i, by simpa [Ideal.mem_comap] using hi⟩

theorem isRelevant_of_comap {R S : Type} [CommRing R] [CommRing S] (φ : R →+* S) {W : Ideal (MRing ι S)}
    (h : IsRelevant (W.comap (MvPolynomial.map φ))) : IsRelevant W := by
  intro k
  obtain ⟨i, hi⟩ := h k
  exact ⟨i, by simpa [Ideal.mem_comap] using hi⟩

theorem isMultiHomog_map [DecidableEq K] {R S : Type} [CommRing R] [CommRing S] (φ : R →+* S)
    {G : MRing ι R} {b : K → ℕ} (hG : IsMultiHomog G b) : IsMultiHomog (MvPolynomial.map φ G) b := by
  intro d hd
  apply hG
  intro h0
  apply hd
  rw [MvPolynomial.coeff_map, h0, map_zero]

section Loc

variable {A O : Type} [CommRing A] [CommRing O] [Algebra A O] (m : Ideal A) [m.IsPrime]
  [IsLocalization.AtPrime O m]

attribute [local instance] MvPolynomial.algebraMvPolynomial

include m

theorem eq_of_comap_eq {W₁ W₂ : Ideal (MRing ι O)}
    (h : W₁.comap (MvPolynomial.map (algebraMap A O)) = W₂.comap (MvPolynomial.map (algebraMap A O))) :
    W₁ = W₂ := by
  haveI : IsLocalization (m.primeCompl.map (C (σ := (Σ k, ι k)) (R := A))) (ReciprocityTheory.ChartRestriction.G.Geo.MRingOver O ι) :=
    MvPolynomial.isLocalization m.primeCompl O
  have e : ∀ W : Ideal (MRing ι O), (W.comap (algebraMap (MRing ι A) (MRing ι O))).map
      (algebraMap (MRing ι A) (MRing ι O)) = W :=
    IsLocalization.map_under (m.primeCompl.map (C (σ := (Σ k, ι k)) (R := A))) _
  have h' : W₁.comap (algebraMap (MRing ι A) (MRing ι O)) =
      W₂.comap (algebraMap (MRing ι A) (MRing ι O)) := h
  rw [← e W₁, ← e W₂, h']

theorem exists_prime_of_comap_C {W : Ideal (MRing ι A)} (hW : W.IsPrime)
    (hm : W.comap (C : A →+* MRing ι A) = m) :
    ∃ W' : Ideal (MRing ι O), W'.IsPrime ∧ W'.comap (MvPolynomial.map (algebraMap A O)) = W := by
  haveI : IsLocalization (m.primeCompl.map (C (σ := (Σ k, ι k)) (R := A))) (MRing ι O) :=
    MvPolynomial.isLocalization m.primeCompl O
  have hdisj : Disjoint ((m.primeCompl.map (C (σ := (Σ k, ι k)) (R := A)) : Submonoid (MRing ι A)) :
      Set (MRing ι A)) (W : Set (MRing ι A)) := by
    rw [Set.disjoint_left]
    rintro _ ⟨s, hs, rfl⟩ hsW
    exact hs (by rw [← hm]; exact hsW)
  exact ⟨W.map (algebraMap (MRing ι A) (MRing ι O)),
    IsLocalization.isPrime_of_isPrime_disjoint _ _ _ hW hdisj,
    IsLocalization.under_map_of_isPrime_disjoint _ _ hW hdisj⟩

theorem comap_C_comap_eq [IsLocalRing O] {W : Ideal (MRing ι O)} (hW : W.IsPrime)
    (h : (IsLocalRing.maximalIdeal O).map (C : O →+* MRing ι O) ≤ W) :
    (W.comap (MvPolynomial.map (algebraMap A O))).comap (C : A →+* MRing ι A) = m := by
  have h1 : W.comap (C : O →+* MRing ι O) = IsLocalRing.maximalIdeal O :=
    ((IsLocalRing.maximalIdeal.isMaximal O).eq_of_le (Ideal.comap_isPrime _ W).ne_top
      (Ideal.map_le_iff_le_comap.mp h)).symm
  have h2 : (W.comap (MvPolynomial.map (algebraMap A O))).comap (C : A →+* MRing ι A) =
      (W.comap (C : O →+* MRing ι O)).comap (algebraMap A O) := by
    ext a
    simp [Ideal.mem_comap]
  rw [h2, h1]
  exact IsLocalization.AtPrime.under_maximalIdeal O m

end Loc

section DVR

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]

theorem maximal_le_of_C_mem {x : O} (hx : x ≠ 0) {W : Ideal (MRing ι O)} (hW : W.IsPrime)
    (hxW : (C x : MRing ι O) ∈ W) :
    (IsLocalRing.maximalIdeal O).map (C : O →+* MRing ι O) ≤ W := by
  obtain ⟨ϖ, hϖ⟩ := IsDiscreteValuationRing.exists_irreducible O
  obtain ⟨n, u, hu⟩ := IsDiscreteValuationRing.associated_pow_irreducible hx hϖ
  have hp : (C ϖ : MRing ι O) ^ n ∈ W := by
    rw [← map_pow, ← hu, map_mul]
    exact W.mul_mem_right _ hxW
  have hϖW := hW.mem_of_pow_mem n hp
  rw [hϖ.maximalIdeal_eq, Ideal.map_span, Ideal.span_le]
  rintro _ ⟨z, hz, rfl⟩
  rw [Set.mem_singleton_iff.mp hz]
  exact hϖW

theorem C_uniformiser_notMem {x : O} (hx : x ∈ IsLocalRing.maximalIdeal O) {ϖ : O} (hϖ : Irreducible ϖ)
    {W : Ideal (MRing ι O)} (hxW : (C x : MRing ι O) ∉ W) : (C ϖ : MRing ι O) ∉ W := by
  intro h
  rw [hϖ.maximalIdeal_eq, Ideal.mem_span_singleton'] at hx
  obtain ⟨c, rfl⟩ := hx
  apply hxW
  rw [map_mul]
  exact W.mul_mem_left _ h

end DVR

end GlobalTheory.CompanionTheory.Ar.Num.Places

theorem GlobalTheory.CompanionTheory.Ar.Num.cycList_zp_eq_sum_places : ∀ (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (Ω : Type) [Field Ω] (y : (Σ k, ι k) → Ω) (A : Type) [CommRing A] [Algebra A Ω] [IsDedekindDomain A] [Module.Finite ℤ A], Function.Injective (algebraMap A Ω) → HasConstants ℤ A y → ∀ D : ℕ, IsArithVar (mCoordIdeal y) (D + 1) → ∀ (p : Nat.Primes) (Λ : Type) [Fintype Λ] (m : Λ → Ideal A) [∀ l, (m l).IsPrime], Function.Injective m → (∀ n : Ideal A, n.IsPrime → (((p : ℕ) : A) ∈ n ↔ n ∈ Set.range m)) → ∀ (O : Λ → Type) [∀ l, CommRing (O l)] [∀ l, IsDomain (O l)] [∀ l, IsDiscreteValuationRing (O l)] [∀ l, Algebra A (O l)] [∀ l, IsLocalization.AtPrime (O l) (m l)] [∀ l, Algebra (O l) Ω] [∀ l, IsScalarTower A (O l) Ω], ∀ fd : Λ → ℕ, (∀ l, Nat.card (A ⧸ m l) = (p : ℕ) ^ fd l) → ∀ (a : K → ℕ) (f : MRing ι ℤ), IsMultiHomog f a → f ∉ mCoordIdeal y → ∀ L : List (K → ℤ), L.length = D → cycList (divCycle (extTo (ZP p) (mCoordIdeal y)) (MvPolynomial.map (Int.castRingHom (ZP p)) f)) L = ∑ l, (fd l : ℤ) * cycList (divCycle (pointIdeal (O l) y) (MvPolynomial.map (Int.castRingHom (O l)) f)) L := by
  intro K _ _ ι _ Ω _ y A _ _ _ _ hinj hconst D hP p Λ _ m _ hminj hm O _ _ _ _ _ _ _ fd hfd a f hf hfP L hL
  classical
  haveI hpf : Fact (p : ℕ).Prime := ⟨p.2⟩
  obtain ⟨hcomapA, hlift, hdiv⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Num.pl_corr K ι Ω y A hconst
  have hmod := fun l => _root_.GlobalTheory.CompanionTheory.Ar.Num.pl_model K ι Ω y A hinj hconst D hP (m l) (O l)

  have hcomapO : ∀ l, (pointIdeal (O l) y : Ideal (MRing ι (O l))).comap
      (MvPolynomial.map (Int.castRingHom (O l))) = mCoordIdeal y := fun l => by
    rw [Places.comap_cast_eq (A := A), Places.comap_pointIdeal, hcomapA]
  have hfO : ∀ l, MvPolynomial.map (Int.castRingHom (O l)) f ∉ pointIdeal (O l) y := fun l h =>
    hfP (by rw [← hcomapO l]; exact h)
  have hpm : ∀ l, ((p : ℕ) : A) ∈ m l := fun l => (hm (m l) inferInstance).2 ⟨l, rfl⟩
  have hpmax : ∀ l, ((p : ℕ) : O l) ∈ IsLocalRing.maximalIdeal (O l) := fun l => by
    have e : (IsLocalRing.maximalIdeal (O l)).comap (algebraMap A (O l)) = m l :=
      IsLocalization.AtPrime.under_maximalIdeal (O l) (m l)
    have h : ((p : ℕ) : A) ∈ (IsLocalRing.maximalIdeal (O l)).comap (algebraMap A (O l)) := by
      rw [e]
      exact hpm l
    simpa [Ideal.mem_comap] using h
  have hp0 : ∀ l, ((p : ℕ) : O l) ≠ 0 := fun l h0 => by
    have h1 : (C (((p : ℕ) : ℤ)) : MRing ι ℤ) ∈ mCoordIdeal y := by
      rw [← hcomapO l, Ideal.mem_comap, MvPolynomial.map_C]
      simp [h0]
    have h2 : ((p : ℕ) : ℤ) ∈ (mCoordIdeal y).comap (C : ℤ →+* MRing ι ℤ) := h1
    rw [hP.2.2.1, Ideal.mem_bot] at h2
    exact p.2.ne_zero (by exact_mod_cast h2)

  have hfacts : ∀ l (W : Ideal (MRing ι (O l))),
      divCycle (pointIdeal (O l) y) (MvPolynomial.map (Int.castRingHom (O l)) f) W ≠ 0 →
      W.IsPrime ∧ IsRelevant W ∧ pointIdeal (O l) y ≤ W ∧ IsMultiHomogIdeal W := fun l W h => by
    obtain ⟨hmin, hrel⟩ := Places.mem_of_divCycle_ne_zero h
    exact ⟨hmin.1.1, hrel, le_sup_left.trans hmin.1.2,
      MinimalPrimeMultiHomog.full (O l) K ι _ W
        (SupSpanMultiHomog.full (O l) K ι _ _ a (hmod l).2.1.multiProj.multiHomog
          (Places.isMultiHomog_map _ hf)) hmin⟩

  have hmult : ∀ l (W : Ideal (MRing ι (O l))), W.IsPrime → IsRelevant W → pointIdeal (O l) y ≤ W →
      divCycle (pointIdeal (O l) y) (MvPolynomial.map (Int.castRingHom (O l)) f) W =
        divCycle (mCoordIdeal y) f (W.comap (MvPolynomial.map (Int.castRingHom (O l)))) := fun l W hW hrel hle => by
    have h1 := GlobalTheory.CompanionTheory.Ar.Num.divCycle_map_localisation K ι A (O l) (m l).primeCompl (pointIdeal A y)
      (MvPolynomial.map (Int.castRingHom A) f) W hW
    rw [Places.map_map_cast, ← (hmod l).1] at h1
    rw [h1, Places.comap_cast_eq (A := A)]
    refine hdiv f _ (Ideal.comap_isPrime _ W) (Places.isRelevant_comap _ hrel) ?_
    rw [← Places.comap_pointIdeal (O := O l)]
    exact Ideal.comap_mono hle
  have hCp : ∀ l (W : Ideal (MRing ι (O l))),
      (C (((p : ℕ) : ℤ)) : MRing ι ℤ) ∈ W.comap (MvPolynomial.map (Int.castRingHom (O l))) ↔
        (C ((p : ℕ) : O l) : MRing ι (O l)) ∈ W := fun l W => by
    rw [Ideal.mem_comap, MvPolynomial.map_C]
    simp
  have hfinZ := DivCycleFiniteSupport.full ℤ K ι (mCoordIdeal y) f
  have hfinl := fun l => DivCycleFiniteSupport.full (O l) K ι (pointIdeal (O l) y)
    (MvPolynomial.map (Int.castRingHom (O l)) f)
  let T : Finset (Ideal (MRing ι ℤ)) :=
    hfinZ.toFinset.filter fun W => (C (((p : ℕ) : ℤ)) : MRing ι ℤ) ∈ W
  let Tl : ∀ l, Finset (Ideal (MRing ι (O l))) := fun l =>
    (hfinl l).toFinset.filter fun W => (C ((p : ℕ) : O l) : MRing ι (O l)) ∈ W
  have hLeft : cycList (divCycle (extTo (ZP p) (mCoordIdeal y))
      (MvPolynomial.map (Int.castRingHom (ZP p)) f)) L =
      ∑ W ∈ T, divCycle (mCoordIdeal y) f W * intNumL (ZMod p) (extTo (ZMod p) W) L := by
    rw [← _root_.GlobalTheory.CompanionTheory.Ar.Num.vertAt_eq_cycList K ι _ D hP p a f hf hfP L hL]
    unfold vertAt cycEval
    rw [finsum_eq_sum_of_support_subset (s := T)]
    · refine Finset.sum_congr rfl fun W hW => ?_
      beta_reduce
      rw [if_pos (Finset.mem_filter.mp hW).2]
    · intro W hW
      rw [Function.mem_support] at hW
      have h1 := left_ne_zero_of_mul hW
      have h2 := right_ne_zero_of_mul hW
      by_cases hc : (C (((p : ℕ) : ℤ)) : MRing ι ℤ) ∈ W
      · exact Finset.mem_coe.mpr (Finset.mem_filter.mpr ⟨hfinZ.mem_toFinset.mpr h1, hc⟩)
      · beta_reduce at h2
        rw [if_neg hc] at h2
        exact absurd rfl h2
  have hRight : ∀ l, cycList (divCycle (pointIdeal (O l) y) (MvPolynomial.map (Int.castRingHom (O l)) f)) L =
      ∑ W ∈ Tl l, divCycle (pointIdeal (O l) y) (MvPolynomial.map (Int.castRingHom (O l)) f) W * vNumL W L := fun l => by
    unfold cycList cycEval
    rw [finsum_eq_sum_of_support_subset (s := Tl l)]
    intro W hW
    rw [Function.mem_support] at hW
    have h1 := left_ne_zero_of_mul hW
    have h2 := right_ne_zero_of_mul hW
    have hc : (C ((p : ℕ) : O l) : MRing ι (O l)) ∈ W := by
      by_contra hc
      obtain ⟨ϖ, hϖ⟩ := IsDiscreteValuationRing.exists_irreducible (O l)
      exact h2 (_root_.GlobalTheory.CompanionTheory.Ar.Num.horizontal_vNumL_eq_zero (O l) ϖ hϖ K ι _ D (hmod l).2.1 a _ (Places.isMultiHomog_map _ hf) (hfO l) W h1
        (Places.C_uniformiser_notMem (hpmax l) hϖ hc) L hL)
    exact Finset.mem_coe.mpr (Finset.mem_filter.mpr ⟨(hfinl l).mem_toFinset.mpr h1, hc⟩)
  have hsum : ∑ l, (fd l : ℤ) * cycList (divCycle (pointIdeal (O l) y) (MvPolynomial.map (Int.castRingHom (O l)) f)) L =
      ∑ l, ∑ W ∈ Tl l, (fd l : ℤ) * (divCycle (pointIdeal (O l) y) (MvPolynomial.map (Int.castRingHom (O l)) f) W * vNumL W L) :=
    Finset.sum_congr rfl fun l _ => by rw [hRight l, Finset.mul_sum]

  have hmem : ∀ l (W : Ideal (MRing ι (O l))), W ∈ Tl l →
      divCycle (pointIdeal (O l) y) (MvPolynomial.map (Int.castRingHom (O l)) f) W ≠ 0 ∧
      (C ((p : ℕ) : O l) : MRing ι (O l)) ∈ W := fun l W h => by
    obtain ⟨h1, h2⟩ := Finset.mem_filter.mp h
    exact ⟨(hfinl l).mem_toFinset.mp h1, h2⟩
  rw [hLeft, hsum, Finset.sum_sigma']
  symm
  refine Finset.sum_bij (fun x _ => x.2.comap (MvPolynomial.map (Int.castRingHom (O x.1)))) ?_ ?_ ?_ ?_
  · rintro ⟨l, W⟩ hx
    obtain ⟨hne, hc⟩ := hmem l W (Finset.mem_sigma.mp hx).2
    obtain ⟨hWp, hrel, hle, -⟩ := hfacts l W hne
    refine Finset.mem_filter.mpr ⟨hfinZ.mem_toFinset.mpr ?_, (hCp l W).2 hc⟩
    rw [Function.mem_support, ← hmult l W hWp hrel hle]
    exact hne
  · rintro ⟨l₁, W₁⟩ hx₁ ⟨l₂, W₂⟩ hx₂ heq
    obtain ⟨hne₁, hc₁⟩ := hmem l₁ W₁ (Finset.mem_sigma.mp hx₁).2
    obtain ⟨hne₂, hc₂⟩ := hmem l₂ W₂ (Finset.mem_sigma.mp hx₂).2
    obtain ⟨hp₁, hrel₁, hle₁, -⟩ := hfacts l₁ W₁ hne₁
    obtain ⟨hp₂, hrel₂, hle₂, -⟩ := hfacts l₂ W₂ hne₂
    have heq' : W₁.comap (MvPolynomial.map (Int.castRingHom (O l₁))) =
        W₂.comap (MvPolynomial.map (Int.castRingHom (O l₂))) := heq
    have hA : ∀ l (W : Ideal (MRing ι (O l))), pointIdeal (O l) y ≤ W →
        pointIdeal A y ≤ W.comap (MvPolynomial.map (algebraMap A (O l))) := fun l W h => by
      rw [← Places.comap_pointIdeal (O := O l)]
      exact Ideal.comap_mono h
    have hlow : mCoordIdeal y ≤ W₁.comap (MvPolynomial.map (Int.castRingHom (O l₁))) := by
      rw [← hcomapO l₁]
      exact Ideal.comap_mono hle₁
    have hWA : W₁.comap (MvPolynomial.map (algebraMap A (O l₁))) =
        W₂.comap (MvPolynomial.map (algebraMap A (O l₂))) :=
      (hlift _ (Ideal.comap_isPrime _ W₁) (Places.isRelevant_comap _ hrel₁) hlow).unique
        ⟨Ideal.comap_isPrime _ W₁, hA l₁ W₁ hle₁, (Places.comap_cast_eq W₁).symm⟩
        ⟨Ideal.comap_isPrime _ W₂, hA l₂ W₂ hle₂, by rw [heq']; exact (Places.comap_cast_eq W₂).symm⟩
    have hm₁ := Places.comap_C_comap_eq (O := O l₁) (m l₁) hp₁
      (Places.maximal_le_of_C_mem (hp0 l₁) hp₁ hc₁)
    have hm₂ := Places.comap_C_comap_eq (O := O l₂) (m l₂) hp₂
      (Places.maximal_le_of_C_mem (hp0 l₂) hp₂ hc₂)
    have hl : l₁ = l₂ := hminj (by rw [← hm₁, ← hm₂, hWA])
    subst hl
    have := Places.eq_of_comap_eq (O := O l₁) (m l₁) hWA
    subst this
    rfl
  · intro W hW
    obtain ⟨hfin, hc⟩ := Finset.mem_filter.mp hW
    have hne : divCycle (mCoordIdeal y) f W ≠ 0 := hfinZ.mem_toFinset.mp hfin
    obtain ⟨hmin, hrel⟩ := Places.mem_of_divCycle_ne_zero hne
    have hWp : W.IsPrime := hmin.1.1
    obtain ⟨WA, ⟨hWAp, hWAle, hWAc⟩, -⟩ := hlift W hWp hrel (le_sup_left.trans hmin.1.2)
    have hpn : ((p : ℕ) : A) ∈ WA.comap (C : A →+* MRing ι A) := by
      rw [← hWAc, Ideal.mem_comap, MvPolynomial.map_C] at hc
      simpa [Ideal.mem_comap] using hc
    obtain ⟨l, hl⟩ := (hm _ (Ideal.comap_isPrime _ WA)).1 hpn
    obtain ⟨W', hW'p, hW'c⟩ := Places.exists_prime_of_comap_C (O := O l) (m l) hWAp hl.symm
    have hcomp : W'.comap (MvPolynomial.map (Int.castRingHom (O l))) = W := by
      rw [Places.comap_cast_eq (A := A), hW'c, hWAc]
    have hrel' : IsRelevant W' := Places.isRelevant_of_comap (Int.castRingHom (O l)) (hcomp ▸ hrel)
    have hle' : pointIdeal (O l) y ≤ W' := by
      rw [(hmod l).1]
      exact Ideal.map_le_iff_le_comap.mpr (hW'c ▸ hWAle)
    refine ⟨⟨l, W'⟩, Finset.mem_sigma.mpr ⟨Finset.mem_univ _, Finset.mem_filter.mpr
      ⟨(hfinl l).mem_toFinset.mpr ?_, (hCp l W').1 (hcomp ▸ hc)⟩⟩, hcomp⟩
    rw [Function.mem_support, hmult l W' hW'p hrel' hle', hcomp]
    exact hne
  · rintro ⟨l, W⟩ hx
    obtain ⟨hne, hc⟩ := hmem l W (Finset.mem_sigma.mp hx).2
    obtain ⟨hWp, hrel, hle, hmh⟩ := hfacts l W hne
    dsimp only
    rw [hmult l W hWp hrel hle, _root_.GlobalTheory.CompanionTheory.Ar.Num.intNumL_zmod_eq_residueDegree_mul_vNumL K ι Ω y A hconst (p : ℕ) (m l) (O l) (hpm l) (fd l) (hfd l) W
      hWp hmh hle (Places.maximal_le_of_C_mem (hp0 l) hWp hc) L]
    ring
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FinitePlacesModelFamily =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagM3PadicGlobal =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagM3PadicGlobal", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.LocalAtPlaces\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.CycNumIntAndComb\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.LaurentCechNerveLevelSpecTensorPower\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ArithmeticHilbertSamuelLowerBound\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FinitePlacesModelFamily\npublic import Mathlib.GroupTheory.FiniteAbelian.Basic\nimport Development.AutomorphicSpectrum.Proofs.GeometryProofs.ModelDescentIntegralClosure\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GroundTheory.Heights₂.Heights.NumbersDVR GlobalTheory.CompanionTheory.Ar.Num GlobalTheory.CompanionTheory.Ar.Top GroundTheory.Heights₂.Heights.ModelLeaves
open ReciprocityTheory.ChartRestriction.G.Geo (HermLine IsSmoothHerm IsArithVar IsHorizontal mcPts mCoordIdeal IsIntersectionFamily IsIntersectionSystem IntersectionSystem ptsIntegral geoNum charOf recR arInt ChartBundle chartRing)

namespace GlobalTheory.CompanionTheory.Ar.Num.PlacesFlagM3

theorem divCycle_support_finite {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)]
    {O : Type} [CommRing O] [IsNoetherianRing O] (P : Ideal (MRing ι O)) (f : MRing ι O) :
    (Function.support (divCycle P f)).Finite := by
  refine (Ideal.finite_minimalPrimes_of_isNoetherianRing _ (P ⊔ Ideal.span {f})).subset ?_
  intro W hW
  by_contra h
  apply hW
  unfold divCycle
  rw [dite_eq_right (fun h' => h h'.1)]

theorem cycEval_ratDiv {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)]
    {O : Type} [CommRing O] [IsNoetherianRing O] (n : Ideal (MRing ι O) → ℤ) (P : Ideal (MRing ι O))
    (f g : MRing ι O) :
    cycEval n (ratDiv P f g) = cycEval n (divCycle P f) - cycEval n (divCycle P g) := by
  unfold cycEval ratDiv
  simp only [sub_mul]
  refine finsum_sub_distrib ?_ ?_
  · exact (divCycle_support_finite P f).subset (Function.support_mul_subset_left _ _)
  · exact (divCycle_support_finite P g).subset (Function.support_mul_subset_left _ _)

section Numbers

variable {K : Type} [Fintype K] [DecidableEq K] {ι : K → Type} [∀ k, Fintype (ι k)]

theorem ck_cast {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] {r : ℕ}
    (T : LocPair ι O (Fin r)) (P : Ideal (MRing ι O)) (k : ℕ) (Q : List (K → ℤ)) :
    ((T.ck P k Q : ℤ) : ℝ) = ∑ i, (cycNum (divCycle P (T.f i)) (Sum.elim T.x T.x')
        (MvPolynomial.map (Int.castRingHom ℝ) (psumExpansion r k i)) Q -
      cycNum (divCycle P (T.g i)) (Sum.elim T.x T.x')
        (MvPolynomial.map (Int.castRingHom ℝ) (psumExpansion r k i)) Q) := by
  have hint := fun Z hZ H =>
    (cycNum_int_and_comb O K ι (Fin r ⊕ Fin r) (Sum.elim T.x T.x') Q).1 Z hZ H
  unfold LocPair.ck pairNum
  push_cast
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [cycEval_ratDiv, hint _ (divCycle_support_finite P _), hint _ (divCycle_support_finite P _)]
  push_cast
  rfl


omit [Fintype K] [∀ k, Fintype (ι k)] in
theorem length_classList {σ : Type} (cls : σ → K → ℤ) {H : MvPolynomial σ ℝ} {e : ℕ}
    (hH : H.IsHomogeneous e) {μ : σ →₀ ℕ} (hμ : μ ∈ H.support) : (classList cls μ).length = e := by
  have h := hH (mem_support_iff.mp hμ)
  unfold classList
  simp [Finsupp.card_toMultiset]
  rw [← h, Finsupp.weight_apply]
  simp [Finsupp.sum]


omit [∀ k, Fintype (ι k)] in
theorem cycNum_transfer {O₀ : Type} [CommRing O₀] [IsDomain O₀] [IsDiscreteValuationRing O₀]
    {Λ : Type} [Fintype Λ] {O : Λ → Type} [∀ l, CommRing (O l)] [∀ l, IsDomain (O l)]
    [∀ l, IsDiscreteValuationRing (O l)] (Z₀ : Ideal (MRing ι O₀) → ℤ)
    (Z : ∀ l, Ideal (MRing ι (O l)) → ℤ) (fd : Λ → ℕ) (D : ℕ)
    (h : ∀ L : List (K → ℤ), L.length = D → cycList Z₀ L = ∑ l, (fd l : ℤ) * cycList (Z l) L)
    {σ : Type} (cls : σ → K → ℤ) {H : MvPolynomial σ ℝ} {e : ℕ} (hH : H.IsHomogeneous e)
    (Q : List (K → ℤ)) (he : e + Q.length = D) :
    cycNum Z₀ cls H Q = ∑ l, (fd l : ℝ) * cycNum (Z l) cls H Q := by
  unfold cycNum
  simp only [Finset.mul_sum]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun μ hμ => ?_
  rw [h _ (by rw [List.length_append, length_classList cls hH hμ, he])]
  push_cast
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun l _ => ?_
  ring

variable {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {N : ℕ}

theorem bracket_isHomogeneous (j : ℕ) (φ : Equiv.Perm (Ψ ⊕ Ψ)) (p k : ℕ) (τ : Ψ) :
    (bracket (N := N) j φ p k τ).IsHomogeneous (k - 1) := by
  apply GlobalTheory.CompanionTheory.Ar.Num.ModelDescentAlt.isHomogeneous_bracket

end Numbers

section Transfer

variable {K : Type} [Fintype K] [DecidableEq K] {ι : K → Type} [∀ k, Fintype (ι k)]
variable {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {N : ℕ}

theorem flag_m3_of_places {O₀ : Type} [CommRing O₀] [IsDomain O₀] [IsDiscreteValuationRing O₀]
    {Λ : Type} [Fintype Λ] {O : Λ → Type} [∀ l, CommRing (O l)] [∀ l, IsDomain (O l)]
    [∀ l, IsDiscreteValuationRing (O l)] (P₀ : Ideal (MRing ι O₀)) (P : ∀ l, Ideal (MRing ι (O l)))
    (fd : Λ → ℕ) (D p j : ℕ) (φ : Equiv.Perm (Ψ ⊕ Ψ)) (T₀ : LocPair ι O₀ (Ψ × Fin N))
    (T : ∀ l, LocPair ι (O l) (Ψ × Fin N)) (hx : ∀ l, (T l).x = T₀.x) (hx' : ∀ l, (T l).x' = T₀.x')
    (hf : ∀ i (L : List (K → ℤ)), L.length = D → cycList (divCycle P₀ (T₀.f i)) L =
      ∑ l, (fd l : ℤ) * cycList (divCycle (P l) ((T l).f i)) L)
    (hg : ∀ i (L : List (K → ℤ)), L.length = D → cycList (divCycle P₀ (T₀.g i)) L =
      ∑ l, (fd l : ℤ) * cycList (divCycle (P l) ((T l).g i)) L)
    (hp : ∀ L : List (K → ℤ), L.length = D → cycList (divCycle P₀ (C (p : O₀))) L =
      ∑ l, (fd l : ℤ) * cycList (divCycle (P l) (C (p : O l))) L)
    (hloc : ∀ l, FlagChernComparison (P l) D p j φ (T l)) : FlagChernComparison P₀ D p j φ T₀ := by
  intro τ k hk Q hQ
  have hQ' : k - 1 + Q.length = D := by omega
  have hloc' := fun l => hloc l τ k hk Q hQ
  rw [cycNum_transfer _ _ fd D hp _ (bracket_isHomogeneous j φ p k τ) Q hQ', ck_cast]
  have hG : ∀ i, (MvPolynomial.map (Int.castRingHom ℝ)
      (psumExpansion N k i)).IsHomogeneous (k - 1) := fun i =>
    (isHomogeneous_psumExpansion N k i).map _
  have hterm : ∀ l, cycNum (divCycle (P l) (C (p : O l))) T₀.x (bracket j φ p k τ) Q =
      (((((T l).comp fun i : Fin N => (τ, i)).ck (P l) k Q : ℤ)) : ℝ) := by
    intro l
    rw [hloc' l, hx l]
  simp only [hterm, ck_cast, Finset.mul_sum]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => ?_
  have e₁ := cycNum_transfer _ _ fd D (hf (τ, i)) (Sum.elim (T₀.x ∘ fun i : Fin N => (τ, i))
    (T₀.x' ∘ fun i : Fin N => (τ, i))) (hG i) Q hQ'
  have e₂ := cycNum_transfer _ _ fd D (hg (τ, i)) (Sum.elim (T₀.x ∘ fun i : Fin N => (τ, i))
    (T₀.x' ∘ fun i : Fin N => (τ, i))) (hG i) Q hQ'
  simp only [LocPair.comp, Function.comp_apply, hx, hx']
  rw [e₁, e₂, ← Finset.sum_sub_distrib]
  refine Finset.sum_congr rfl fun l _ => ?_
  ring

end Transfer

section Ring

variable {A : Type} [CommRing A] [IsDedekindDomain A] [Module.Finite ℤ A]

theorem finite_primes_containing {a : A} (ha : a ≠ 0) :
    Finite {n : Ideal A // n.IsPrime ∧ a ∈ n} := by
  have hfin := Ideal.finite_minimalPrimes_of_isNoetherianRing A (Ideal.span {a})
  refine Set.Finite.to_subtype (hfin.subset (show {n : Ideal A | n.IsPrime ∧ a ∈ n} ⊆ _ from ?_))
  rintro n ⟨hn, han⟩
  have hn0 : n ≠ ⊥ := fun h => ha (by simpa [h] using han)
  have hmax := Ring.DimensionLEOne.maximalOfPrime hn0 hn
  refine ⟨⟨hn, (Ideal.span_singleton_le_iff_mem n).2 han⟩, ?_⟩
  rintro q ⟨hq, hqa⟩ hqn
  have hq0 : q ≠ ⊥ := fun h => ha (by
    have : a ∈ q := (Ideal.span_singleton_le_iff_mem q).1 hqa
    simpa [h] using this)
  exact (Ring.DimensionLEOne.maximalOfPrime hq0 hq).eq_of_le hn.ne_top hqn |>.ge

theorem exists_card_residue (p : Nat.Primes) (hp : ((p : ℕ) : A) ≠ 0) (n : Ideal A) [hn : n.IsPrime]
    (hpn : ((p : ℕ) : A) ∈ n) : ∃ f : ℕ, Nat.card (A ⧸ n) = (p : ℕ) ^ f := by
  have hn0 : n ≠ ⊥ := fun h => hp (by simpa [h] using hpn)
  haveI hmax : n.IsMaximal := Ring.DimensionLEOne.maximalOfPrime hn0 hn
  haveI : Module.Finite ℤ (A ⧸ n) :=
    Module.Finite.of_surjective (Ideal.Quotient.mkₐ ℤ n).toLinearMap (Ideal.Quotient.mkₐ_surjective ℤ n)
  have hz : (((p : ℕ) : A ⧸ n)) = 0 := by
    have := Ideal.Quotient.eq_zero_iff_mem.2 hpn
    simpa using this
  have htor : Module.IsTorsion ℤ (A ⧸ n) := by
    intro x
    refine ⟨⟨((p : ℕ) : ℤ), mem_nonZeroDivisors_of_ne_zero (by exact_mod_cast p.2.ne_zero)⟩, ?_⟩
    change ((p : ℕ) : ℤ) • x = 0
    rw [zsmul_eq_mul]
    simp [hz]
  haveI : Finite (A ⧸ n) := Module.finite_of_fg_torsion _ htor
  letI : Field (A ⧸ n) := Ideal.Quotient.field n
  haveI : CharP (A ⧸ n) (p : ℕ) := (CharP.charP_iff_prime_eq_zero p.2).2 hz
  letI : Fintype (A ⧸ n) := Fintype.ofFinite _
  obtain ⟨m, -, hm⟩ := FiniteField.card (A ⧸ n) (p : ℕ)
  exact ⟨m, by rw [Nat.card_eq_fintype_card, hm]⟩

end Ring

section Main

variable {K : Type} [Fintype K] [DecidableEq K] {ι : K → Type} [∀ k, Fintype (ι k)]
  {Ω : Type} [Field Ω] {y : (Σ k, ι k) → Ω}

theorem C_prime_notMem (hh : IsHorizontal (mCoordIdeal y)) (p : Nat.Primes) :
    (C ((p : ℕ) : ℤ) : MvPolynomial (Σ k, ι k) ℤ) ∉ mCoordIdeal y := by
  intro h
  have h' : ((p : ℕ) : ℤ) ∈ (mCoordIdeal y).comap (C : ℤ →+* MvPolynomial (Σ k, ι k) ℤ) := h
  have hb : (mCoordIdeal y).comap (C : ℤ →+* MvPolynomial (Σ k, ι k) ℤ) = ⊥ := hh
  rw [hb, Ideal.mem_bot] at h'
  exact p.2.ne_zero (by exact_mod_cast h')

theorem prime_ne_zero_field (hh : IsHorizontal (mCoordIdeal y)) (p : Nat.Primes) :
    ((p : ℕ) : Ω) ≠ 0 := by
  intro h
  apply C_prime_notMem hh p
  change _ ∈ RingHom.ker _
  rw [RingHom.mem_ker]
  simp [ReciprocityTheory.ChartRestriction.G.Geo.mConeMap]
  exact (map_natCast (C : Ω →+* MvPolynomial K Ω) (p : ℕ)).symm.trans (by rw [h, map_zero])

variable {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {N : ℕ}

theorem flag_m3_padic_of_family {A : Type} [CommRing A] [Algebra A Ω] [IsDedekindDomain A] [Module.Finite ℤ A]
    (hinj : Function.Injective (algebraMap A Ω)) (hc : HasConstants ℤ A y) (D : ℕ)
    (hv : IsArithVar (mCoordIdeal y) (D + 1)) (p : Nat.Primes) (j : ℕ) (φ : Equiv.Perm (Ψ ⊕ Ψ))
    (S : Finset Nat.Primes) (T : LocPair ι ℤ (Ψ × Fin N)) (hT : T.IsVertOff (mCoordIdeal y) S)
    (Λ : Type) [Fintype Λ] (m : Λ → Ideal A) [∀ l, (m l).IsPrime] (hm : Function.Injective m)
    (hcov : ∀ n : Ideal A, n.IsPrime → (((p : ℕ) : A) ∈ n ↔ n ∈ Set.range m))
    (O : Λ → Type) [∀ l, CommRing (O l)] [∀ l, IsDomain (O l)] [∀ l, IsDiscreteValuationRing (O l)]
    [∀ l, Algebra A (O l)] [∀ l, IsLocalization.AtPrime (O l) (m l)] [∀ l, Algebra (O l) Ω]
    [∀ l, IsScalarTower A (O l) Ω] (fd : Λ → ℕ) (hfd : ∀ l, Nat.card (A ⧸ m l) = (p : ℕ) ^ fd l)
    (hloc : ∀ l, FlagChernComparison (pointIdeal (O l) y) D p j φ (T.map (Int.castRingHom (O l)))) :
    FlagChernComparison (extTo (ZP p) (mCoordIdeal y)) D p j φ (T.map (Int.castRingHom (ZP p))) := by
  have hnum := _root_.GlobalTheory.CompanionTheory.Ar.Num.cycList_zp_eq_sum_places K ι Ω y A hinj hc D hv p Λ m hm hcov O fd hfd
  have hCp := C_prime_notMem hv.2.2.1 p
  have hconst : ∀ (R : Type) [CommRing R], MvPolynomial.map (Int.castRingHom R)
      (C ((p : ℕ) : ℤ) : MvPolynomial (Σ k, ι k) ℤ) = C ((p : ℕ) : R) := by
    intro R _
    simp
  refine flag_m3_of_places _ (fun l => pointIdeal (O l) y) fd D p j φ _
    (fun l => T.map (Int.castRingHom (O l))) (fun _ => rfl) (fun _ => rfl) ?_ ?_ ?_ hloc
  · intro i L hL
    obtain ⟨⟨bf, _, hbf, _, _⟩, hf, _, _⟩ := hT i
    exact hnum bf (T.f i) hbf hf L hL
  · intro i L hL
    obtain ⟨⟨_, bg, _, hbg, _⟩, _, hg, _⟩ := hT i
    exact hnum bg (T.g i) hbg hg L hL
  · intro L hL
    have h := hnum 0 (C ((p : ℕ) : ℤ)) (isWeightedHomogeneous_C _ _) hCp L hL
    simp only [hconst] at h
    exact h

theorem flag_m3_padic : ∀ (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (Ω : Type) [Field Ω] (y : (Σ k, ι k) → Ω) (A : Type) [CommRing A] [Algebra A Ω] [IsDedekindDomain A] [Module.Finite ℤ A], Function.Injective (algebraMap A Ω) → HasConstants ℤ A y → ∀ D : ℕ, IsArithVar (mCoordIdeal y) (D + 1) → ∀ (p : Nat.Primes) (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N j : ℕ) (φ : Equiv.Perm (Ψ ⊕ Ψ)) (S : Finset Nat.Primes) (T : LocPair ι ℤ (Ψ × Fin N)), T.IsVertOff (mCoordIdeal y) S → (AtPlacesOver A Ω p fun O _ _ _ _ => FlagChernComparison (pointIdeal O y) D p j φ (T.map (Int.castRingHom O))) → FlagChernComparison (extTo (ZP p) (mCoordIdeal y)) D p j φ (T.map (Int.castRingHom (ZP p))) := by
  intro K _ _ ι _ Ω _ y A _ _ _ _ hinj hc D hv p Ψ _ _ N j φ S T hT hpl
  have hpΩ := prime_ne_zero_field hv.2.2.1 p
  have hpA : ((p : ℕ) : A) ≠ 0 := fun h => hpΩ (by
    have := congrArg (algebraMap A Ω) h
    simpa using this)
  haveI hfin := finite_primes_containing hpA
  letI : Fintype {n : Ideal A // n.IsPrime ∧ ((p : ℕ) : A) ∈ n} := Fintype.ofFinite _
  haveI hpr : ∀ l : {n : Ideal A // n.IsPrime ∧ ((p : ℕ) : A) ∈ n}, (l.1).IsPrime := fun l => l.2.1
  have hne : ∀ l : {n : Ideal A // n.IsPrime ∧ ((p : ℕ) : A) ∈ n}, l.1 ≠ ⊥ := fun l h =>
    hpA (by simpa [h] using l.2.2)
  haveI hdom : ∀ l : {n : Ideal A // n.IsPrime ∧ ((p : ℕ) : A) ∈ n},
      IsDomain (Localization.AtPrime l.1) := fun l =>
    IsLocalization.isDomain_localization (Ideal.primeCompl_le_nonZeroDivisors _)
  haveI hdvr : ∀ l : {n : Ideal A // n.IsPrime ∧ ((p : ℕ) : A) ∈ n},
      IsDiscreteValuationRing (Localization.AtPrime l.1) := fun l =>
    IsLocalization.AtPrime.isDiscreteValuationRing_of_dedekind_domain A (hne l) _
  have hunit : ∀ (l : {n : Ideal A // n.IsPrime ∧ ((p : ℕ) : A) ∈ n}) (s : (l.1).primeCompl),
      IsUnit (algebraMap A Ω s) := fun l s => by
    refine IsUnit.mk0 _ fun h => s.2 ?_
    have : (s : A) = 0 := hinj (by simpa using h)
    simp [this]
  letI halg : ∀ l : {n : Ideal A // n.IsPrime ∧ ((p : ℕ) : A) ∈ n},
      Algebra (Localization.AtPrime l.1) Ω := fun l =>
    (IsLocalization.lift (M := (l.1).primeCompl) (S := Localization.AtPrime l.1) (hunit l)).toAlgebra
  haveI htow : ∀ l : {n : Ideal A // n.IsPrime ∧ ((p : ℕ) : A) ∈ n},
      IsScalarTower A (Localization.AtPrime l.1) Ω := fun l =>
    IsScalarTower.of_algebraMap_eq fun a => (IsLocalization.lift_eq (hunit l) a).symm
  choose fd hfd using fun l : {n : Ideal A // n.IsPrime ∧ ((p : ℕ) : A) ∈ n} =>
    exists_card_residue p hpA l.1 l.2.2
  have hloc : ∀ l : {n : Ideal A // n.IsPrime ∧ ((p : ℕ) : A) ∈ n},
      FlagChernComparison (pointIdeal (Localization.AtPrime l.1) y) D p j φ
        (T.map (Int.castRingHom (Localization.AtPrime l.1))) := fun l =>
    hpl l.1 l.2.2 (Localization.AtPrime l.1)
  have hcov : ∀ n : Ideal A, n.IsPrime → (((p : ℕ) : A) ∈ n ↔
      n ∈ Set.range (Subtype.val : {n : Ideal A // n.IsPrime ∧ ((p : ℕ) : A) ∈ n} → Ideal A)) := by
    intro n hn
    exact ⟨fun h => ⟨⟨n, hn, h⟩, rfl⟩, by rintro ⟨l, rfl⟩; exact l.2.2⟩
  exact flag_m3_padic_of_family hinj hc D hv p j φ S T hT {n : Ideal A // n.IsPrime ∧ ((p : ℕ) : A) ∈ n}
    Subtype.val Subtype.val_injective hcov (fun l => Localization.AtPrime l.1) fd hfd hloc

end Main

end GlobalTheory.CompanionTheory.Ar.Num.PlacesFlagM3
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagM3PadicGlobal =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.IsometricFamilyIntersectionEq =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.IsometricFamilyIntersectionEq", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.LaurentCechNerveLevelSpecTensorPower\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.LocalAtPlaces\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.IsometricVerticalIntersectionEq\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.MassFormulaConjugationAction\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.VerticalNumberLocalCycle\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GroundTheory.Heights₂.Heights.NumbersDVR GlobalTheory.CompanionTheory.Ar.Num GlobalTheory.CompanionTheory.Ar.Top GroundTheory.Heights₂.Heights.ModelLeaves
open ReciprocityTheory.ChartRestriction.G.Geo (HermLine IsSmoothHerm IsArithVar IsHorizontal mcPts mCoordIdeal IsIntersectionFamily IsIntersectionSystem IntersectionSystem ptsIntegral geoNum charOf recR arInt ChartBundle chartRing)

namespace GlobalTheory.CompanionTheory.Ar.Num.TopLink

section Cyc

variable {K : Type} [DecidableEq K] {ι : K → Type}

theorem intNumL_perm (F : Type) [Field F] (V : Ideal (MRing ι F)) {l l' : List (K → ℤ)} (h : l.Perm l') :
    intNumL F V l = intNumL F V l' := by
  haveI : LeftCommutative (diffStep : (K → ℤ) → ((K → ℤ) → ℤ) → (K → ℤ) → ℤ) := ⟨fun a b g => by
    funext m
    simp only [diffStep]
    rw [sub_right_comm m a b]
    ring⟩
  unfold intNumL intNum mixedDiff
  rw [List.ofFn_get, List.ofFn_get, h.foldr_eq]

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]

theorem cycList_perm (Z : Ideal (MRing ι O) → ℤ) {l l' : List (K → ℤ)} (h : l.Perm l') :
    cycList Z l = cycList Z l' := by
  unfold cycList
  congr 1
  funext W
  exact intNumL_perm (IsLocalRing.ResidueField O) (specialIdeal W) h


omit [DecidableEq K] in
theorem divCycle_mul_finite {R : Type} [CommRing R] [IsNoetherianRing (MRing ι R)] (P : Ideal (MRing ι R))
    (f : MRing ι R) (n : Ideal (MRing ι R) → ℤ) :
    (Function.support fun W => divCycle P f W * n W).Finite := by
  refine (Ideal.finite_minimalPrimes_of_isNoetherianRing _ (P ⊔ Ideal.span {f})).subset ?_
  intro W hW
  by_contra h
  apply hW
  simp only [divCycle]
  rw [dite_eq_right (fun h' => h h'.1), zero_mul]

theorem cycList_ratDiv [Fintype K] [∀ k, Fintype (ι k)] (P : Ideal (MRing ι O)) (f g : MRing ι O)
    (l : List (K → ℤ)) :
    cycList (ratDiv P f g) l = cycList (divCycle P f) l - cycList (divCycle P g) l := by
  unfold cycList cycEval ratDiv
  simp only [sub_mul]
  exact finsum_sub_distrib (divCycle_mul_finite P f _) (divCycle_mul_finite P g _)

end Cyc

theorem link_monomial {K : Type} [Fintype K] [DecidableEq K] {ι : K → Type} [∀ k, Fintype (ι k)]
    {P : Ideal (MRing ι ℤ)} {D : ℕ} (hP : IsArithVar P (D + 1))
    {I : Ideal (MRing ι ℤ) → (n : ℕ) → (Fin n → HermLine ι) → ℝ} (hI : IsIntersectionFamily I)
    {σ : Type} {S : Finset Nat.Primes} {T : LocPair ι ℤ σ} (hT : T.IsVertOff P S)
    {A A' : σ → HermLine ι} (hA : ∀ i, IsSmoothHerm (A i)) (hA' : ∀ i, IsSmoothHerm (A' i))
    (hiso : T.IsIsometric P A A') (i : σ) (μ : σ ⊕ σ →₀ ℕ) (hμ : μ.toMultiset.card = D) :
    arList I P (((μ + Finsupp.single (Sum.inl i) 1).toMultiset.map (Sum.elim A A')).toList) -
      arList I P (((μ + Finsupp.single (Sum.inr i) 1).toMultiset.map (Sum.elim A A')).toList) =
    ∑ p ∈ S, Real.log (p : ℕ) *
      (cycList (ratDiv (extTo (ZP p) P) (MvPolynomial.map (Int.castRingHom (ZP p)) (T.f i))
        (MvPolynomial.map (Int.castRingHom (ZP p)) (T.g i))) (classList (Sum.elim T.x T.x') μ ++ []) : ℝ) := by
  classical
  set m := μ.toMultiset.toList with hm
  have hlen : m.length = D := by rw [hm, Multiset.length_toList, hμ]
  subst hlen
  let L : Fin m.length → HermLine ι := fun j => Sum.elim A A' (m.get j)
  have hB : ∀ s, IsSmoothHerm (Sum.elim A A' s) := by
    rintro (s | s)
    · exact hA s
    · exact hA' s
  have hL : ∀ j, IsSmoothHerm (L j) := fun j => hB _
  have hofL : List.ofFn L = m.map (Sum.elim A A') := by
    conv_rhs => rw [← List.ofFn_get m]
    rw [List.map_ofFn]
    rfl
  have key : ∀ s, arList I P (((μ + Finsupp.single s 1).toMultiset.map (Sum.elim A A')).toList) =
      I P (m.length + 1) (Fin.snoc L (Sum.elim A A' s)) := by
    intro s
    apply arList_eq_of_perm hP hI
    · intro j
      refine Fin.lastCases ?_ (fun j => ?_) j
      · rw [Fin.snoc_last]; exact hB s
      · rw [Fin.snoc_castSucc]; exact hL j
    · rw [List.ofFn_succ']
      simp only [Fin.snoc_castSucc, Fin.snoc_last]
      rw [show (List.ofFn fun j => L j) = m.map (Sum.elim A A') from hofL, ← Multiset.coe_eq_coe,
        Multiset.coe_toList, List.concat_eq_append, ← Multiset.coe_add, ← Multiset.map_coe, hm,
        Multiset.coe_toList, map_add, Finsupp.toMultiset_single, Multiset.map_add]
      simp
  have hdeg : (List.ofFn fun j => (L j).a).Perm (classList (Sum.elim T.x T.x') μ ++ []) := by
    have h1 : (List.ofFn fun j => (L j).a) = m.map (Sum.elim T.x T.x') := by
      conv_rhs => rw [← List.ofFn_get m]
      rw [List.map_ofFn]
      congr 1
      funext j
      change (Sum.elim A A' (m.get j)).a = Sum.elim T.x T.x' (m.get j)
      cases h : m.get j with
      | inl s => exact (hiso s).1
      | inr s => exact (hiso s).2.1
    rw [h1, List.append_nil, classList, ← Multiset.coe_eq_coe, Multiset.coe_toList, ← Multiset.map_coe, hm,
      Multiset.coe_toList]
  rw [key, key]
  have step := _root_.GlobalTheory.CompanionTheory.Ar.Num.Link.change_line K ι P m.length hP I hI S (T.comp fun _ : Unit => i) (fun _ => hT i)
    (A i) (A' i) (hA i) (hA' i) (fun _ => hiso i) L hL
  refine step.trans (Finset.sum_congr rfl fun p _ => ?_)
  obtain ⟨⟨bf, bg, hf, hg, -⟩, hfP, hgP, -⟩ := hT i
  have e1 := _root_.GlobalTheory.CompanionTheory.Ar.Num.vertAt_eq_cycList K ι P m.length hP p bf (T.f i) hf hfP (List.ofFn fun j => (L j).a) (by simp)
  have e2 := _root_.GlobalTheory.CompanionTheory.Ar.Num.vertAt_eq_cycList K ι P m.length hP p bg (T.g i) hg hgP (List.ofFn fun j => (L j).a) (by simp)
  rw [← cycList_perm _ hdeg, cycList_ratDiv, ← e1, ← e2]
  push_cast
  rfl

theorem arNum_eq_sum_log_val : ∀ (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (P : Ideal (MRing ι ℤ)) (D : ℕ), IsArithVar P (D + 1) → ∀ (I : Ideal (MRing ι ℤ) → (n : ℕ) → (Fin n → HermLine ι) → ℝ), IsIntersectionFamily I → ∀ (σ : Type) [Fintype σ] (S : Finset Nat.Primes) (T : LocPair ι ℤ σ), T.IsVertOff P S → ∀ A A' : σ → HermLine ι, (∀ i, IsSmoothHerm (A i)) → (∀ i, IsSmoothHerm (A' i)) → T.IsIsometric P A A' → ∀ (V : MvPolynomial (σ ⊕ σ) ℝ) (Gs : σ → MvPolynomial (σ ⊕ σ) ℝ), IsMixExpansion D V Gs → arNum I P (Sum.elim A A') V = ∑ p ∈ S, Real.log (p : ℕ) * (T.map (Int.castRingHom (ZP p))).val (extTo (ZP p) P) Gs := by
  intro K _ _ ι _ P D hP I hI σ _ S T hT A A' hA hA' hiso V Gs hV
  classical
  obtain ⟨rfl, hG⟩ := hV
  rw [arNum_sum']
  simp only [LocPair.val, Finset.mul_sum]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => ?_
  simp only [cycNum, Finset.mul_sum]
  rw [Finset.sum_comm]
  conv_lhs => rw [(Gs i).as_sum, Finset.mul_sum, arNum_sum']
  refine Finset.sum_congr rfl fun μ hμ => ?_
  have hcard : μ.toMultiset.card = D := by
    have h := hG i (MvPolynomial.mem_support_iff.1 hμ)
    rw [Finsupp.card_toMultiset, ← h, Finsupp.weight_apply]
    simp only [Pi.one_apply, smul_eq_mul, mul_one]
    rfl
  have hpoly : (X (Sum.inl i) - X (Sum.inr i)) * monomial μ (AddMonoidAlgebra.coeff (Gs i) μ) =
      monomial (μ + Finsupp.single (Sum.inl i) 1) (AddMonoidAlgebra.coeff (Gs i) μ) +
        monomial (μ + Finsupp.single (Sum.inr i) 1) (-AddMonoidAlgebra.coeff (Gs i) μ) := by
    rw [monomial_add_single, monomial_add_single, map_neg]
    ring
  have hmono := link_monomial hP hI hT hA hA' hiso i μ hcard
  rw [hpoly, arNum_add', arNum_monomial', arNum_monomial', neg_mul, ← sub_eq_add_neg, ← mul_sub, hmono,
    Finset.mul_sum]
  refine Finset.sum_congr rfl fun p _ => ?_
  simp only [LocPair.map]
  ring

end GlobalTheory.CompanionTheory.Ar.Num.TopLink
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.IsometricFamilyIntersectionEq =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.LocalPairPowerSumValue =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.LocalPairPowerSumValue", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.BundleChernComparison\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.CycNumIntAndComb\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.CycleNumberLinear\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.CycleNumberMulExpand\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.CycleNumberRename\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.OfSteps\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PVerticalDivisorsCommute\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GroundTheory.Heights₂.Heights.NumbersDVR GlobalTheory.CompanionTheory.Ar.Num

namespace GlobalTheory.CompanionTheory.Ar.Num

theorem val_psumExpansion_mul : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (σ : Type) [Fintype σ] [DecidableEq σ] (T : LocPair ι O σ) (P : Ideal (MRing ι O)) (r k : ℕ) (e : Fin r → σ) (G : MvPolynomial (σ ⊕ σ) ℝ), T.val P (fun i => (∑ a ∈ Finset.univ.filter (fun a => e a = i), rename (Sum.map e e) (MvPolynomial.map (Int.castRingHom ℝ) (psumExpansion r k a))) * G) = ∑ μ ∈ G.support, G.coeff μ * (((T.comp e).ck P k (classList (Sum.elim T.x T.x') μ) : ℤ) : ℝ) := by
  intro O _ _ _ K _ _ ι _ σ _ _ T P r k e G
  have hcomp : (Sum.elim T.x T.x') ∘ Sum.map e e = Sum.elim (T.x ∘ e) (T.x' ∘ e) := by
    funext s
    cases s <;> rfl
  have hfin : ∀ f g : MRing ι O, (Function.support (ratDiv P f g)).Finite := fun f g =>
    ratDiv_support_finite DivCycleFiniteSupport.full P f g
  have hterm : ∀ (i : σ) (L : List (K → ℤ)),
      cycNum (ratDiv P (T.f i) (T.g i)) (Sum.elim T.x T.x')
        (∑ a ∈ Finset.univ.filter (fun a => e a = i),
          rename (Sum.map e e) (MvPolynomial.map (Int.castRingHom ℝ) (psumExpansion r k a))) L =
      ∑ a ∈ Finset.univ.filter (fun a => e a = i),
        ((cycEval (fun W => classNum (Sum.elim (T.x ∘ e) (T.x' ∘ e)) (psumExpansion r k a) L W)
          (ratDiv P (T.f (e a)) (T.g (e a))) : ℤ) : ℝ) := by
    intro i L
    rw [(_root_.GlobalTheory.CompanionTheory.Ar.Num.cycNum_linear O K ι (σ ⊕ σ) (ratDiv P (T.f i) (T.g i)) (Sum.elim T.x T.x') L).2.2.1]
    refine Finset.sum_congr rfl fun a ha => ?_
    obtain rfl : e a = i := (Finset.mem_filter.mp ha).2
    rw [_root_.GlobalTheory.CompanionTheory.Ar.Num.numbers_rename.1 O K ι (Fin r ⊕ Fin r) (σ ⊕ σ) (Sum.map e e) _ (Sum.elim T.x T.x') _ L, hcomp]
    exact (cycNum_int_and_comb O K ι (Fin r ⊕ Fin r) (Sum.elim (T.x ∘ e) (T.x' ∘ e)) L).1 _
      (hfin _ _) _
  have hck : ∀ L : List (K → ℤ), (((T.comp e).ck P k L : ℤ) : ℝ) =
      ∑ i, ∑ a ∈ Finset.univ.filter (fun a => e a = i),
        ((cycEval (fun W => classNum (Sum.elim (T.x ∘ e) (T.x' ∘ e)) (psumExpansion r k a) L W)
          (ratDiv P (T.f (e a)) (T.g (e a))) : ℤ) : ℝ) := by
    intro L
    rw [Finset.sum_fiberwise]
    simp only [LocPair.ck, pairNum, LocPair.comp, Function.comp_apply, Int.cast_sum]
  unfold LocPair.val
  simp only [_root_.GlobalTheory.CompanionTheory.Ar.Num.cycNum_mul O K ι (σ ⊕ σ), List.append_nil, hterm]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun μ _ => ?_
  rw [← Finset.mul_sum, hck]

end GlobalTheory.CompanionTheory.Ar.Num
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.LocalPairPowerSumValue =====

-- ===== clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.LocPairValLinear =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.LocPairValLinear", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.BundleChernComparison\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem UpperTheory.Reformulated.B.Qp9.locPair_val_linear :
    ∀ (O : Type) [inst : CommRing O] [inst_1 : IsDomain O]
    [inst_2 : IsDiscreteValuationRing O] (K : Type) [Fintype K] [inst_4 : DecidableEq K] (ι : K → Type)
    [(k : K) → Fintype (ι k)] (σ : Type) [inst_6 : Fintype σ] (T : GlobalTheory.CompanionTheory.Ar.Num.LocPair ι O σ)
    (P : Ideal (GroundTheory.Heights₂.Heights.NumbersDVR.MRing ι O)),
    (∀ (Gs Hs : σ → MvPolynomial (σ ⊕ σ) ℝ), T.val P (Gs + Hs) = T.val P Gs + T.val P Hs) ∧
      (∀ (c : ℝ) (Gs : σ → MvPolynomial (σ ⊕ σ) ℝ),
          (T.val P fun (i : σ) ↦ (MvPolynomial.C : ℝ → MvPolynomial (σ ⊕ σ) ℝ) c * Gs i) = c * T.val P Gs) ∧
        ∀ (α : Type) (s : Finset α) (Gs : α → σ → MvPolynomial (σ ⊕ σ) ℝ),
          (T.val P fun (i : σ) ↦ ∑ a ∈ s, Gs a i) =
            ∑ a ∈ s,
              T.val P
                (Gs
                  a) := by
  intro O _ _ _ K _ _ ι _ σ _ T P
  have key : ∀ Gs : σ → MvPolynomial (σ ⊕ σ) ℝ, T.val P Gs = ∑ i, Finsupp.linearCombination ℝ
      (fun μ => (GlobalTheory.CompanionTheory.Ar.Num.cycList (GroundTheory.Heights₂.Heights.NumbersDVR.ratDiv P (T.f i) (T.g i))
        (GroundTheory.Heights₂.Heights.NumbersDVR.classList (Sum.elim T.x T.x') μ ++ []) : ℝ))
      (MvPolynomial.basisMonomials (σ ⊕ σ) ℝ |>.repr (Gs i)) := fun Gs => rfl
  refine ⟨fun Gs Hs => ?_, fun c Gs => ?_, fun α s Gs => ?_⟩
  · simp only [key, Pi.add_apply, map_add (f := _), Finset.sum_add_distrib]
  · simp only [key, MvPolynomial.C_mul', map_smul, smul_eq_mul, Finset.mul_sum]

  · simp only [key, map_sum]
    exact Finset.sum_comm
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.LocPairValLinear =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.LocalPairValueLinear =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.LocalPairValueLinear", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.BundleChernComparison\npublic import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.LocPairValLinear\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GroundTheory.Heights₂.Heights.NumbersDVR GlobalTheory.CompanionTheory.Ar.Num

namespace GlobalTheory.CompanionTheory.Ar.Num.ValLin

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] {K : Type} [DecidableEq K]
  {ι : K → Type} {σ : Type}

end GlobalTheory.CompanionTheory.Ar.Num.ValLin

namespace GlobalTheory.CompanionTheory.Ar.Num

theorem locPair_val_linear : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (σ : Type) [Fintype σ] (T : LocPair ι O σ) (P : Ideal (MRing ι O)), (∀ Gs Hs, T.val P (Gs + Hs) = T.val P Gs + T.val P Hs) ∧ (∀ (c : ℝ) Gs, T.val P (fun i => C c * Gs i) = c * T.val P Gs) ∧ ∀ (α : Type) (s : Finset α) (Gs : α → σ → MvPolynomial (σ ⊕ σ) ℝ), T.val P (fun i => ∑ a ∈ s, Gs a i) = ∑ a ∈ s, T.val P (Gs a) :=
  _root_.UpperTheory.Reformulated.B.Qp9.locPair_val_linear

end GlobalTheory.CompanionTheory.Ar.Num
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.LocalPairValueLinear =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FibreComponentDivisorProperties =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FibreComponentDivisorProperties", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.BundleChernComparison\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\npublic import Mathlib.RingTheory.Ideal.KrullsHeightTheorem\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.RingTheory.HopkinsLevitzki\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GroundTheory.Heights₂.Heights.NumbersDVR GlobalTheory.CompanionTheory.Ar.Num

namespace GlobalTheory.CompanionTheory.Ar.Num.FibreComp

theorem mem_minimalPrimes_span_of_mem {T : Type} [CommRing T] [IsDomain T] [IsNoetherianRing T]
    {q : Ideal T} {a b : T} (hq : q ∈ (Ideal.span {a}).minimalPrimes) (hb : b ∈ q) (hb0 : b ≠ 0) :
    q ∈ (Ideal.span {b}).minimalPrimes := by
  have hqp : q.IsPrime := hq.1.1
  refine ⟨⟨hqp, (Ideal.span_singleton_le_iff_mem q).2 hb⟩, ?_⟩
  rintro p ⟨hp, hbp⟩ hpq
  by_contra hne
  have hlt : p < q := lt_of_le_of_ne hpq (fun h => hne (h ▸ le_rfl))
  have hbp' : b ∈ p := (Ideal.span_singleton_le_iff_mem p).1 hbp
  have hbot : (⊥ : Ideal T) < p := by
    refine bot_lt_iff_ne_bot.2 (fun h => hb0 ?_)
    rw [h] at hbp'
    exact (Submodule.mem_bot T).1 hbp'
  haveI : (Ideal.span {a}).IsPrincipal := ⟨⟨a, rfl⟩⟩
  haveI := hqp
  haveI := hp
  have h1 : q.height ≤ ((1 : ℕ) : ℕ∞) := by
    have := Ideal.height_le_one_of_isPrincipal_of_mem_minimalPrimes (Ideal.span {a}) q hq
    exact_mod_cast this
  have hp1 : p.height < ((1 : ℕ) : ℕ∞) := (Ideal.height_le_iff.mp h1) p hp hlt
  have hp0 : p.height ≤ ((0 : ℕ) : ℕ∞) := by
    have h' : p.height < 1 := by exact_mod_cast hp1
    rw [Order.lt_one_iff.mp h']
    simp
  have h2 := (Ideal.height_le_iff.mp hp0) ⊥ Ideal.isPrime_bot hbot
  simp at h2

theorem mem_minimalPrimes_sup_of_mem {S : Type} [CommRing S] [IsNoetherianRing S] {P W : Ideal S}
    [P.IsPrime] {f b : S} (hW : W ∈ (P ⊔ Ideal.span {f}).minimalPrimes) (hb : b ∈ W) (hbP : b ∉ P) :
    W ∈ (P ⊔ Ideal.span {b}).minimalPrimes := by
  have hπ : Function.Surjective (Ideal.Quotient.mk P) := Ideal.Quotient.mk_surjective
  have hcomap : ∀ x : S, Ideal.comap (Ideal.Quotient.mk P) (Ideal.span {Ideal.Quotient.mk P x}) =
      P ⊔ Ideal.span {x} := by
    intro x
    have hx : Ideal.span {Ideal.Quotient.mk P x} = Ideal.map (Ideal.Quotient.mk P) (Ideal.span {x}) := by
      rw [Ideal.map_span, Set.image_singleton]
    rw [hx, Ideal.comap_map_of_surjective' _ hπ, Ideal.mk_ker, sup_comm]
  rw [← hcomap f, Ideal.comap_minimalPrimes_eq_of_surjective hπ] at hW
  obtain ⟨W', hW', rfl⟩ := hW
  rw [← hcomap b, Ideal.comap_minimalPrimes_eq_of_surjective hπ]
  refine ⟨W', ?_, rfl⟩
  have hbW' : Ideal.Quotient.mk P b ∈ W' := hb
  have hb0 : Ideal.Quotient.mk P b ≠ 0 := fun h => hbP (Ideal.Quotient.eq_zero_iff_mem.mp h)
  exact mem_minimalPrimes_span_of_mem hW' hbW' hb0

theorem length_toNat_ne_zero {S : Type} [CommRing S] [IsNoetherianRing S] {J W : Ideal S}
    [hWp : W.IsPrime] (hW : W ∈ J.minimalPrimes) :
    (Module.length (Localization.AtPrime W) (LocalizedModule W.primeCompl (S ⧸ J))).toNat ≠ 0 := by
  classical
  haveI : IsNoetherianRing (Localization.AtPrime W) :=
    IsLocalization.isNoetherianRing W.primeCompl _ inferInstance
  rw [Ne, ENat.toNat_eq_zero, not_or]
  refine ⟨?_, ?_⟩
  · rw [Module.length_eq_zero_iff]
    intro hsub
    have h10 : (LocalizedModule.mk (1 : S ⧸ J) (1 : W.primeCompl) :
        LocalizedModule W.primeCompl (S ⧸ J)) = LocalizedModule.mk 0 1 := Subsingleton.elim _ _
    rw [LocalizedModule.mk_eq] at h10
    obtain ⟨u, hu⟩ := h10
    simp only [one_smul, smul_zero] at hu
    have hu' : (u : S) ∈ J := by
      rw [Submonoid.smul_def, Algebra.smul_def, mul_one, Ideal.Quotient.algebraMap_eq] at hu
      exact Ideal.Quotient.eq_zero_iff_mem.mp hu
    exact u.2 (hW.1.2 hu')
  · set JA : Ideal (Localization.AtPrime W) := J.map (algebraMap S (Localization.AtPrime W)) with hJA
    have hm : IsLocalRing.maximalIdeal (Localization.AtPrime W) ∈ JA.minimalPrimes := by
      rw [hJA, IsLocalization.minimalPrimes_map W.primeCompl (Localization.AtPrime W) J,
        Set.mem_preimage, Localization.AtPrime.under_maximalIdeal]
      exact hW
    haveI : Ring.KrullDimLE 0 (Localization.AtPrime W ⧸ JA) := by
      rw [Ring.krullDimLE_zero_iff]
      intro I hI
      have hQ : (I.comap (Ideal.Quotient.mk JA)).IsPrime := Ideal.comap_isPrime _ I
      have hJQ : JA ≤ I.comap (Ideal.Quotient.mk JA) := by
        intro x hx
        rw [Ideal.mem_comap, Ideal.Quotient.eq_zero_iff_mem.mpr hx]
        exact I.zero_mem
      have hQm : I.comap (Ideal.Quotient.mk JA) ≤ IsLocalRing.maximalIdeal _ :=
        IsLocalRing.le_maximalIdeal hQ.ne_top
      have hmQ := hm.2 ⟨hQ, hJQ⟩ hQm
      have hIeq : I = Ideal.map (Ideal.Quotient.mk JA) (IsLocalRing.maximalIdeal _) := by
        rw [← le_antisymm hQm hmQ, Ideal.map_comap_of_surjective _ Ideal.Quotient.mk_surjective]
      rcases Ideal.map_eq_top_or_isMaximal_of_surjective (Ideal.Quotient.mk JA)
          Ideal.Quotient.mk_surjective (IsLocalRing.maximalIdeal.isMaximal (Localization.AtPrime W))
          with h | h
      · exact absurd (hIeq.trans h) hI.ne_top
      · rw [hIeq]
        exact h
    haveI : IsArtinianRing (Localization.AtPrime W ⧸ JA) :=
      IsNoetherianRing.isArtinianRing_of_krullDimLE_zero
    have hlenQ : Module.length (Localization.AtPrime W) (Localization.AtPrime W ⧸ JA) ≠ ⊤ := by
      rw [Module.length_eq_of_surjective (S := Localization.AtPrime W)
        (R := Localization.AtPrime W ⧸ JA) (M := Localization.AtPrime W ⧸ JA)
        (by rw [Ideal.Quotient.algebraMap_eq]; exact Ideal.Quotient.mk_surjective)]
      exact Module.length_ne_top
    let x : LocalizedModule W.primeCompl (S ⧸ J) := LocalizedModule.mk 1 1
    let g : Localization.AtPrime W →ₗ[Localization.AtPrime W] LocalizedModule W.primeCompl (S ⧸ J) :=
      LinearMap.toSpanSingleton _ _ x
    have hker : JA ≤ LinearMap.ker g := by
      rw [hJA, Ideal.map_le_iff_le_comap]
      intro j hj
      rw [Ideal.mem_comap, LinearMap.mem_ker]
      show (algebraMap S (Localization.AtPrime W) j) • x = 0
      rw [← Localization.mk_one_eq_algebraMap, LocalizedModule.mk_smul_mk, Algebra.smul_def, mul_one,
        Ideal.Quotient.algebraMap_eq, Ideal.Quotient.eq_zero_iff_mem.mpr hj, LocalizedModule.zero_mk]
    have hsurj : Function.Surjective (JA.liftQ g hker) := by
      intro y
      refine LocalizedModule.induction_on (fun m s => ?_) y
      obtain ⟨t, rfl⟩ := Ideal.Quotient.mk_surjective m
      refine ⟨Submodule.Quotient.mk (Localization.mk t s), ?_⟩
      rw [Submodule.liftQ_apply]
      show Localization.mk t s • x = _
      rw [LocalizedModule.mk_smul_mk, Algebra.smul_def, mul_one, mul_one, Ideal.Quotient.algebraMap_eq]
    exact ne_top_of_le_ne_top hlenQ (Module.length_le_of_surjective _ hsurj)

theorem facts_of_divCycle_ne_zero {K : Type} {ι : K → Type} {R : Type} [CommRing R]
    {P W : Ideal (MRing ι R)} {f : MRing ι R} (h : divCycle P f W ≠ 0) :
    W ∈ (P ⊔ Ideal.span {f}).minimalPrimes ∧ IsRelevant W := by
  by_contra hc
  apply h
  unfold divCycle
  rw [dite_eq_right hc]

theorem fibre_comp : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (ϖ : O), Irreducible ϖ → ∀ (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (P : Ideal (MRing ι O)) (d : ℕ), IsModelOver P d → (∀ W, IsFibreComp P W ↔ divCycle P (C ϖ) W ≠ 0) ∧ (∀ (a : K → ℕ) (f : MRing ι O), IsMultiHomog f a → f ∉ P → ∀ W, divCycle P f W ≠ 0 → (C ϖ : MRing ι O) ∈ W → IsFibreComp P W) ∧ ∀ (b : K → ℤ) (f g : MRing ι O), IsVerticalDivisor P ϖ b f g → ∀ W, ratDiv P f g W ≠ 0 → IsFibreComp P W := by
  intro O _ _ _ ϖ hϖ K _ _ ι _ P d hP
  classical
  haveI : IsNoetherianRing (MRing ι O) :=
    (inferInstance : IsNoetherianRing (MvPolynomial ((k : K) × ι k) O))
  obtain ⟨⟨hPprime, -, -⟩, hnt, -⟩ := hP
  haveI := hPprime
  have hmax : Ideal.map (C : O →+* MRing ι O) (IsLocalRing.maximalIdeal O) =
      Ideal.span {(C ϖ : MRing ι O)} := by
    rw [(IsDiscreteValuationRing.irreducible_iff_uniformizer ϖ).mp hϖ, Ideal.map_span,
      Set.image_singleton]
  have hϖP : (C ϖ : MRing ι O) ∉ P := by
    intro h
    have h2 : ϖ ∈ Ideal.comap (C : O →+* MRing ι O) P := Ideal.mem_comap.mpr h
    rw [hnt] at h2
    exact hϖ.ne_zero ((Submodule.mem_bot O).1 h2)
  have key : ∀ f : MRing ι O, f ∉ P → ∀ W, divCycle P f W ≠ 0 → (C ϖ : MRing ι O) ∈ W →
      IsFibreComp P W := by
    intro f _ W hW hϖW
    obtain ⟨hWmin, hWrel⟩ := facts_of_divCycle_ne_zero hW
    unfold IsFibreComp
    rw [hmax]
    exact ⟨mem_minimalPrimes_sup_of_mem hWmin hϖW hϖP, hWrel⟩
  refine ⟨?_, fun a f _ hf W hW hϖW => key f hf W hW hϖW, ?_⟩
  · intro W
    constructor
    · intro hF
      unfold IsFibreComp at hF
      rw [hmax] at hF
      obtain ⟨hWmin, hWrel⟩ := hF
      haveI : W.IsPrime := hWmin.1.1
      unfold divCycle
      rw [dite_eq_left ⟨hWmin, hWrel⟩]
      exact Nat.cast_ne_zero.mpr (length_toNat_ne_zero hWmin)
    · intro hW
      obtain ⟨hWmin, hWrel⟩ := facts_of_divCycle_ne_zero hW
      unfold IsFibreComp
      rw [hmax]
      exact ⟨hWmin, hWrel⟩
  · intro b f g hV W hW
    obtain ⟨-, hfP, hgP, hvert, -⟩ := hV
    have hϖW : (C ϖ : MRing ι O) ∈ W := hvert W hW
    by_cases hfW : divCycle P f W = 0
    · have hgW : divCycle P g W ≠ 0 := by
        intro hg
        apply hW
        unfold ratDiv
        rw [hfW, hg, sub_zero]
      exact key g hgP W hgW hϖW
    · exact key f hfP W hfW hϖW

end GlobalTheory.CompanionTheory.Ar.Num.FibreComp
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FibreComponentDivisorProperties =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.VerticalPairPowerSumVanish =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.VerticalPairPowerSumVanish", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.BundleChernComparison\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.CycNumIntAndComb\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.CycleNumberMulExpand\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.CycleNumberRename\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FibreComponentDivisorProperties\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GroundTheory.Heights₂.Heights.NumbersDVR GlobalTheory.CompanionTheory.Ar.Num

namespace GlobalTheory.CompanionTheory.Ar.Num

theorem classList_length_of_mem_support {K σ : Type} (cls : σ → K → ℤ) {m : ℕ}
    {G : MvPolynomial σ ℝ} (hG : G.IsHomogeneous m) {μ : σ →₀ ℕ} (hμ : μ ∈ G.support) :
    (classList cls μ).length = m := by
  have h := hG (mem_support_iff.mp hμ)
  have hw : Finsupp.weight (1 : σ → ℕ) μ = μ.sum fun _ => id := by
    simp [Finsupp.weight_apply, Finsupp.sum]
  rw [hw] at h
  simpa [classList, Multiset.length_toList, Finsupp.card_toMultiset] using h

theorem sum_X_inr_pow_eq {σ : Type} {r : ℕ} (e : Fin r → σ) (k : ℕ) :
    (∑ a, X (Sum.inr (e a)) ^ k : MvPolynomial (σ ⊕ σ) ℝ) =
      rename (Sum.inr ∘ e) (MvPolynomial.map (Int.castRingHom ℝ) (psum (Fin r) ℤ k)) := by
  set_option synthInstance.maxHeartbeats 100000 in
    simp [psum, map_sum, map_pow, rename_X]

theorem val_psum_mul_eq_zero : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (ϖ : O), Irreducible ϖ → ∀ (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (P : Ideal (MRing ι O)) (d : ℕ), IsModelOver P d → ∀ (σ : Type) [Fintype σ] (T : LocPair ι O σ), T.IsVert P ϖ → ∀ (r : ℕ) (e : Fin r → σ), PowerSumsVanish P d (T.x' ∘ e) → ∀ k m : ℕ, 1 ≤ k → k + m = d → ∀ Gs : σ → MvPolynomial (σ ⊕ σ) ℝ, (∀ i, (Gs i).IsHomogeneous m) → T.val P (fun i => (∑ a, X (Sum.inr (e a)) ^ k) * Gs i) = 0 := by
  intro O _ _ _ ϖ hϖ K _ _ ι _ P d hP σ _ T hT r e hv k m hk hkm Gs hGs
  have hfib := (_root_.GlobalTheory.CompanionTheory.Ar.Num.FibreComp.fibre_comp O ϖ hϖ K ι P d hP).2.2
  unfold LocPair.val
  refine Finset.sum_eq_zero fun i _ => ?_
  have hZc : ∀ W, ratDiv P (T.f i) (T.g i) W ≠ 0 → IsFibreComp P W := hfib _ _ _ (hT i)
  have hfin : (Function.support (ratDiv P (T.f i) (T.g i))).Finite := by
    refine (Ideal.finite_minimalPrimes_of_isNoetherianRing (MRing ι O)
      (P ⊔ (IsLocalRing.maximalIdeal O).map (C : O →+* MRing ι O))).subset ?_
    intro W hW
    exact (hZc W hW).1
  rw [_root_.GlobalTheory.CompanionTheory.Ar.Num.cycNum_mul O K ι (σ ⊕ σ) (ratDiv P (T.f i) (T.g i)) (Sum.elim T.x T.x') _ (Gs i) []]
  refine Finset.sum_eq_zero fun μ hμ => ?_
  have hlen : ((classList (Sum.elim T.x T.x') μ ++ []).length) + k = d := by
    rw [List.append_nil, classList_length_of_mem_support _ (hGs i) hμ]
    omega
  have hcomp : Sum.elim T.x T.x' ∘ (Sum.inr ∘ e) = T.x' ∘ e := by
    funext a
    simp
  rw [sum_X_inr_pow_eq, (_root_.GlobalTheory.CompanionTheory.Ar.Num.numbers_rename).1 O K ι (Fin r) (σ ⊕ σ) (Sum.inr ∘ e), hcomp,
    (cycNum_int_and_comb O K ι (Fin r) (T.x' ∘ e) (classList (Sum.elim T.x T.x') μ ++ [])).1
      (ratDiv P (T.f i) (T.g i)) hfin (psum (Fin r) ℤ k)]
  have hzero : cycEval (fun W => classNum (T.x' ∘ e) (psum (Fin r) ℤ k)
      (classList (Sum.elim T.x T.x') μ ++ []) W) (ratDiv P (T.f i) (T.g i)) = 0 := by
    unfold cycEval
    refine finsum_eq_zero_of_forall_eq_zero fun W => ?_
    by_cases hW : ratDiv P (T.f i) (T.g i) W = 0
    · simp [hW]
    · beta_reduce
      rw [hv W (hZc W hW) k hk _ hlen, mul_zero]
  rw [hzero]
  simp

end GlobalTheory.CompanionTheory.Ar.Num
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.VerticalPairPowerSumVanish =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PowerSumTermDiscreteValuation =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PowerSumTermDiscreteValuation", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.BundleChernComparison\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.CycleNumberMulExpand\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.LocalPairPowerSumValue\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.LocalPairValueLinear\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.VerticalPairPowerSumVanish\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ArithmeticHilbertSamuelLowerBound\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GroundTheory.Heights₂.Heights.NumbersDVR GlobalTheory.CompanionTheory.Ar.Num GlobalTheory.CompanionTheory.Ar.Top GroundTheory.Heights₂.Heights.ModelLeaves
open ReciprocityTheory.ChartRestriction.G.Geo (HermLine IsSmoothHerm IsArithVar IsHorizontal mcPts mCoordIdeal IsIntersectionFamily IsIntersectionSystem IntersectionSystem ptsIntegral geoNum charOf recR arInt ChartBundle chartRing)

theorem GlobalTheory.CompanionTheory.Ar.Num.power_sum_term_dvr : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (ϖ : O), Irreducible ϖ → ∀ (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (P : Ideal (MRing ι O)) (d : ℕ), IsModelOver P d → ∀ (p : ℕ) (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N j : ℕ) (φ : Equiv.Perm (Ψ ⊕ Ψ)) (k : ℕ), 1 ≤ k → k ≤ d + 1 → ∀ (τ : Ψ) (Q : MvPolynomial (Ψ × Fin N) ℝ) (Hs : Ψ × Fin N → MvPolynomial ((Ψ × Fin N) ⊕ (Ψ × Fin N)) ℝ), Q.IsHomogeneous (d + 1 - k) → (∀ i, (Hs i).IsHomogeneous (d - k)) → (k = d + 1 → ∀ i, Hs i = 0) → ∀ T : LocPair ι O (Ψ × Fin N), T.IsVert P ϖ → FlagChernComparison P d p j φ T → PowerSumsVanish P d (fun i : Fin N => T.x' (τ, i)) → T.val P (fun i => (∑ a ∈ Finset.univ.filter (fun a : Fin N => (τ, a) = i), rename (Sum.map (fun a => (τ, a)) (fun a => (τ, a))) (MvPolynomial.map (Int.castRingHom ℝ) (psumExpansion N k a))) * rename Sum.inl Q + (∑ a : Fin N, X (Sum.inr (τ, a)) ^ k) * Hs i) = cycNum (divCycle P (C (p : O))) T.x (bracket j φ p k τ * Q) [] := by
  intro O _ _ _ ϖ hϖ K _ _ ι _ P d hP p Ψ _ _ N j φ k hk1 hkd τ Q Hs hQ hHs hH0 T hT hM hPS
  obtain ⟨hadd, hsmul, -⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Num.locPair_val_linear O K ι (Ψ × Fin N) T P
  have hB : T.val P (fun i => (∑ a : Fin N, X (Sum.inr (τ, a)) ^ k) * Hs i) = 0 := by
    rcases Nat.lt_or_ge k (d + 1) with hlt | hge
    · exact _root_.GlobalTheory.CompanionTheory.Ar.Num.val_psum_mul_eq_zero O ϖ hϖ K ι P d hP (Ψ × Fin N) T hT N (fun a => (τ, a)) hPS k (d - k) hk1
        (by omega) Hs hHs
    · have hk : k = d + 1 := by omega
      have h0 := hsmul 0 (fun _ => 0)
      simp only [mul_zero, zero_mul] at h0
      have hfun : (fun i => (∑ a : Fin N, X (Sum.inr (τ, a)) ^ k) * Hs i) =
          (fun _ => (0 : MvPolynomial ((Ψ × Fin N) ⊕ (Ψ × Fin N)) ℝ)) := by
        funext i
        rw [hH0 hk i, mul_zero]
      rw [hfun]
      exact h0
  have hA : T.val P (fun i => (∑ a ∈ Finset.univ.filter (fun a : Fin N => (τ, a) = i),
        rename (Sum.map (fun a => (τ, a)) (fun a => (τ, a)))
          (MvPolynomial.map (Int.castRingHom ℝ) (psumExpansion N k a))) * rename Sum.inl Q) =
      cycNum (divCycle P (C (p : O))) T.x (bracket j φ p k τ * Q) [] := by
    rw [_root_.GlobalTheory.CompanionTheory.Ar.Num.val_psumExpansion_mul O K ι (Ψ × Fin N) T P N k (fun a => (τ, a)) (rename Sum.inl Q),
      support_rename_of_injective Sum.inl_injective,
      Finset.sum_image (Finsupp.mapDomain_injective Sum.inl_injective).injOn,
      _root_.GlobalTheory.CompanionTheory.Ar.Num.cycNum_mul O K ι (Ψ × Fin N) (divCycle P (C (p : O))) T.x (bracket j φ p k τ) Q []]
    refine Finset.sum_congr rfl fun μ hμ => ?_
    have hcl : classList (Sum.elim T.x T.x') (Finsupp.mapDomain Sum.inl μ) = classList T.x μ := by
      have hm : Finsupp.toMultiset (Finsupp.mapDomain (Sum.inl : Ψ × Fin N → (Ψ × Fin N) ⊕ (Ψ × Fin N)) μ) =
          (Finsupp.toMultiset μ).map Sum.inl := (Finsupp.toMultiset_map μ Sum.inl).symm
      unfold classList
      rw [hm, Multiset.map_map]
      rfl
    have hdeg : (classList T.x μ).length + k = d + 1 := by
      have h1 : (classList T.x μ).length = d + 1 - k := by
        have h2 := hQ (mem_support_iff.mp hμ)
        unfold classList
        rw [Multiset.length_toList, Multiset.card_map, Finsupp.card_toMultiset]
        rw [Finsupp.weight_apply] at h2
        exact (by simpa using h2 : (μ.sum fun _ c => c) = d + 1 - k)
      omega
    rw [coeff_rename_mapDomain _ Sum.inl_injective, hcl, List.append_nil, hM τ k hk1 _ hdeg]
  exact (hadd _ _).trans (by rw [hA, hB, add_zero])
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PowerSumTermDiscreteValuation =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.LogIntegralEqGenericIntersection =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.LogIntegralEqGenericIntersection", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.LocalAtPlaces\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FiniteVerticalRecursion\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FractionRingRingEquiv\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.IsMultiProjPrimeExtTo\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.LogIntegralCongrSmul\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.BundleChernComparison\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.UniformizerDivisorCycleNumber\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.VerticalNumberLocalCycle\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Presheaf\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GroundTheory.Heights₂.Heights.NumbersDVR GlobalTheory.CompanionTheory.Ar.Num GlobalTheory.CompanionTheory.Ar.Top GroundTheory.Heights₂.Heights.ModelLeaves
open ReciprocityTheory.ChartRestriction.G.Geo (HermLine IsSmoothHerm IsArithVar IsHorizontal mcPts mCoordIdeal IsIntersectionFamily IsIntersectionSystem IntersectionSystem ptsIntegral geoNum charOf recR arInt ChartBundle chartRing)

namespace GlobalTheory.CompanionTheory.Ar.Num.GenInt

section SlopeTestRemainingChoices

variable {K : Type} {ι : K → Type}

theorem divCycle_one (P W : Ideal (MRing ι ℤ)) : divCycle P (1 : MRing ι ℤ) W = 0 := by
  unfold divCycle
  rw [dite_eq_right]
  rintro ⟨h, -⟩
  have e : (P ⊔ Ideal.span {(1 : MRing ι ℤ)}) = ⊤ := by simp
  rw [e] at h
  exact h.1.1.ne_top (top_le_iff.1 h.1.2)

theorem isPrime_mem_of_divCycle_ne {P W : Ideal (MRing ι ℤ)} {s : MRing ι ℤ}
    (h : divCycle P s W ≠ 0) : W.IsPrime ∧ s ∈ W := by
  unfold divCycle at h
  by_cases hc : W ∈ (P ⊔ Ideal.span {s}).minimalPrimes ∧ IsRelevant W
  · exact ⟨hc.1.1.1, hc.1.1.2 (Ideal.mem_sup_right (Ideal.mem_span_singleton_self s))⟩
  · rw [dite_eq_right hc] at h
    exact absurd rfl h

end SlopeTestRemainingChoices

end GlobalTheory.CompanionTheory.Ar.Num.GenInt

namespace GlobalTheory.CompanionTheory.Ar.Num.GenInt

variable {K : Type} [Fintype K] [DecidableEq K] {ι : K → Type} [∀ k, Fintype (ι k)]

theorem geoHomog_C (c : ℤ) : ReciprocityTheory.ChartRestriction.G.Geo.IsMultiHomog (C c : MRing ι ℤ) (0 : K → ℕ) := by
  intro m hm k
  rw [C_apply] at hm
  have h0 : m = 0 := Finset.mem_singleton.1 (support_monomial_subset hm)
  subst h0
  simp

theorem vertAt_two_of_ne (P : Ideal (MRing ι ℤ)) (p : Nat.Primes) (hp : (p : ℕ) ≠ 2) (l : List (K → ℤ)) :
    vertAt p P (C (2 : ℤ)) l = 0 := by
  classical
  unfold vertAt cycEval
  refine finsum_eq_zero_of_forall_eq_zero fun W => ?_
  by_cases h : divCycle P (C (2 : ℤ)) W = 0
  · rw [h, zero_mul]
  · obtain ⟨hW, h2⟩ := isPrime_mem_of_divCycle_ne h
    have hpW : (C ((p : ℕ) : ℤ) : MvPolynomial (Σ k, ι k) ℤ) ∉ W := by
      intro hpW
      have hcop : IsCoprime (((p : ℕ) : ℤ)) 2 := by
        have : Nat.Coprime (p : ℕ) 2 := (Nat.coprime_primes p.2 Nat.prime_two).2 hp
        exact_mod_cast Nat.isCoprime_iff_coprime.2 this
      obtain ⟨a, b, hab⟩ := hcop
      apply hW.ne_top
      rw [Ideal.eq_top_iff_one]
      have : (1 : MvPolynomial (Σ k, ι k) ℤ) = C a * C ((p : ℕ) : ℤ) + C b * C 2 := by
        rw [← C_mul, ← C_mul, ← C_add, hab, C_1]
      rw [this]
      exact W.add_mem (W.mul_mem_left _ hpW) (W.mul_mem_left _ h2)
    exact mul_eq_zero_of_right _ (if_neg hpW)

theorem ptsIntegral_one_eq_vertAt (P : Ideal (MRing ι ℤ)) (D : ℕ) (hP : IsArithVar P (D + 1))
    (I : Ideal (MRing ι ℤ) → (n : ℕ) → (Fin n → HermLine ι) → ℝ) (hI : IsIntersectionFamily I)
    (L : Fin D → HermLine ι) (hL : ∀ j, IsSmoothHerm (L j)) :
    ptsIntegral P (fun j z => Real.log ((L j).h z)) (fun _ => 1) =
      (vertAt ⟨2, Nat.prime_two⟩ P (C (2 : ℤ)) (List.ofFn fun j => (L j).a) : ℝ) := by
  classical
  have hPp : P.IsPrime := hP.2.1.1
  have hA : IsSmoothHerm (trivLine ι) := contDiffOn_const
  have hc := ptsIntegral_congr_and_homog K ι P D (fun j z => Real.log ((L j).h z))
  have nm1 : (1 : MRing ι ℤ) ∉ P := fun h => hPp.ne_top ((Ideal.eq_top_iff_one _).2 h)
  have nm2 : (C (2 : ℤ) : MRing ι ℤ) ∉ P := by
    intro h
    have h2 : (2 : ℤ) ∈ P.comap (C : ℤ →+* MRing ι ℤ) := h
    rw [show P.comap (C : ℤ →+* MRing ι ℤ) = ⊥ from hP.2.2.1] at h2
    simp at h2
  have g1 : ReciprocityTheory.ChartRestriction.G.Geo.IsMultiHomog (1 : MRing ι ℤ) (0 : K → ℕ) := by
    simpa using geoHomog_C (K := K) (ι := ι) 1
  have g2 : ReciprocityTheory.ChartRestriction.G.Geo.IsMultiHomog (C (2 : ℤ) : MRing ι ℤ) (0 : K → ℕ) := geoHomog_C 2
  have f1 : IsMultiHomog (1 : MRing ι ℤ) (0 : K → ℕ) := isWeightedHomogeneous_one _ _
  have f2 : IsMultiHomog (C (2 : ℤ) : MRing ι ℤ) (0 : K → ℕ) := isWeightedHomogeneous_C _ _
  have e1 := hI.2.2 P D L (trivLine ι) 1 0 hP hL hA (fun k => by simp [trivLine]) g1 nm1
  have e2 := hI.2.2 P D L (trivLine ι) (C 2) 0 hP hL hA (fun k => by simp [trivLine]) g2 nm2
  rw [(_root_.GlobalTheory.CompanionTheory.Ar.Num.RecSplit.recR_split K ι P D hP I 0 1 f1 nm1 L (trivLine ι)).2] at e1
  rw [(_root_.GlobalTheory.CompanionTheory.Ar.Num.RecSplit.recR_split K ι P D hP I 0 (C 2) f2 nm2 L (trivLine ι)).2] at e2
  have a1 : arInt P (1 : MRing ι ℤ) (trivLine ι) L = 0 := by
    unfold arInt
    rw [hc.1 _ (fun _ => (0 : ℝ) * 1) (fun z _ => by simp [ReciprocityTheory.ChartRestriction.G.Geo.logNorm, trivLine]),
      hc.2 0 (fun _ => 1)]
    simp
  have a2 : arInt P (C (2 : ℤ) : MRing ι ℤ) (trivLine ι) L =
      Real.log 2 * ptsIntegral P (fun j z => Real.log ((L j).h z)) (fun _ => 1) := by
    unfold arInt
    rw [hc.1 _ (fun _ => Real.log 2 * 1) (fun z _ => by simp [ReciprocityTheory.ChartRestriction.G.Geo.logNorm, trivLine]),
      hc.2 (Real.log 2) (fun _ => 1)]
  have v1 : ∀ p : Nat.Primes, vertAt p P (1 : MRing ι ℤ) (List.ofFn fun j => (L j).a) = 0 := by
    intro p
    unfold vertAt cycEval
    exact finsum_eq_zero_of_forall_eq_zero fun W => by rw [divCycle_one]; simp
  have h1 : ∑ᶠ W, (divCycle P (1 : MRing ι ℤ) W : ℝ) *
      Set.indicator {W | IsHorizontal W} (fun W => I W D L) W = 0 :=
    finsum_eq_zero_of_forall_eq_zero fun W => by rw [divCycle_one]; simp
  have h2 : ∑ᶠ W, (divCycle P (C (2 : ℤ) : MRing ι ℤ) W : ℝ) *
      Set.indicator {W | IsHorizontal W} (fun W => I W D L) W = 0 := by
    refine finsum_eq_zero_of_forall_eq_zero fun W => ?_
    by_cases h : divCycle P (C (2 : ℤ) : MRing ι ℤ) W = 0
    · rw [h, Int.cast_zero, zero_mul]
    · have hW := (isPrime_mem_of_divCycle_ne h).2
      have : W ∉ {W : Ideal (MRing ι ℤ) | IsHorizontal W} := by
        intro hH
        have h2 : (2 : ℤ) ∈ W.comap (C : ℤ →+* MRing ι ℤ) := hW
        rw [show W.comap (C : ℤ →+* MRing ι ℤ) = ⊥ from hH] at h2
        simp at h2
      rw [Set.indicator_of_notMem this, mul_zero]
  have p1 : ∑ᶠ p : Nat.Primes, Real.log (p : ℕ) *
      (vertAt p P (1 : MRing ι ℤ) (List.ofFn fun j => (L j).a) : ℝ) = 0 :=
    finsum_eq_zero_of_forall_eq_zero fun p => by rw [v1]; simp
  have p2 : ∑ᶠ p : Nat.Primes, Real.log (p : ℕ) *
      (vertAt p P (C (2 : ℤ)) (List.ofFn fun j => (L j).a) : ℝ) =
      Real.log 2 * (vertAt ⟨2, Nat.prime_two⟩ P (C (2 : ℤ)) (List.ofFn fun j => (L j).a) : ℝ) := by
    refine (finsum_eq_single _ (⟨2, Nat.prime_two⟩ : Nat.Primes) ?_).trans ?_
    · intro p hp
      have : (p : ℕ) ≠ 2 := fun h => hp (Subtype.ext h)
      rw [vertAt_two_of_ne P p this, Int.cast_zero, mul_zero]
    · norm_num
  rw [h1, p1, a1] at e1
  rw [h2, p2, a2] at e2
  have hlog : Real.log 2 ≠ 0 := (Real.log_pos (by norm_num)).ne'
  apply mul_left_cancel₀ hlog
  linarith

theorem vertAt_self_eq_intNum (P : Ideal (MRing ι ℤ)) (D : ℕ) (hP : IsArithVar P (D + 1))
    (p : Nat.Primes) (b : Fin D → K → ℤ) :
    (vertAt p P (C ((p : ℕ) : ℤ)) (List.ofFn b) : ℝ) = (intNum ℚ (extTo ℚ P) b : ℝ) := by
  classical
  have hlen : (List.ofFn b).length = D := by simp
  have hm := zp_model K ι P D hP p
  have f2 : IsMultiHomog (C ((p : ℕ) : ℤ) : MRing ι ℤ) (0 : K → ℕ) := isWeightedHomogeneous_C _ _
  have nm2 : (C ((p : ℕ) : ℤ) : MRing ι ℤ) ∉ P := by
    intro h
    have h2 : ((p : ℕ) : ℤ) ∈ P.comap (C : ℤ →+* MRing ι ℤ) := h
    rw [show P.comap (C : ℤ →+* MRing ι ℤ) = ⊥ from hP.2.2.1] at h2
    have := p.2.ne_zero
    simp_all
  rw [_root_.GlobalTheory.CompanionTheory.Ar.Num.vertAt_eq_cycList K ι P D hP p 0 (C ((p : ℕ) : ℤ)) f2 nm2 (List.ofFn b) hlen]
  have hcy := _root_.GlobalTheory.CompanionTheory.Ar.Num.cycNum_divCycle_const (ZP p) (((p : ℕ) : ZP p)) hm.1 K ι (extTo (ZP p) P) D hm.2.1 1 1
    Empty Empty.elim 1 0 (MvPolynomial.isHomogeneous_one _ _) (List.ofFn b) (by simp)
  have hg := genNum_zp_eq_rat K ι P p Empty Empty.elim 1 (List.ofFn b)
  have hcN : ∀ Z : Ideal (MRing ι (ZP p)) → ℤ,
      cycNum Z (Empty.elim : Empty → K → ℤ) 1 (List.ofFn b) = (cycList Z (List.ofFn b) : ℝ) := by
    intro Z
    unfold cycNum
    simp [classList]
  have hgN : genNum ℚ (extTo ℚ P) (Empty.elim : Empty → K → ℤ) 1 (List.ofFn b) =
      (intNum ℚ (extTo ℚ P) b : ℝ) := by
    unfold genNum
    simp [classList, _root_.GlobalTheory.CompanionTheory.Ar.Num.RecSplit.intNumL_ofFn]
  rw [hcN, hg, hgN] at hcy
  have e : MvPolynomial.map (Int.castRingHom (ZP p)) (C ((p : ℕ) : ℤ) : MRing ι ℤ) =
      C (((1 : (ZP p)ˣ) : ZP p) * ((p : ℕ) : ZP p) ^ 1) := by
    simp
  rw [e, hcy]
  simp

end GlobalTheory.CompanionTheory.Ar.Num.GenInt

namespace GlobalTheory.CompanionTheory.Ar.Num

theorem ptsIntegral_one_eq_intNum :
    ∀ (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (P : Ideal (MRing ι ℤ)) (D : ℕ), IsArithVar P (D + 1) → ∀ (I : Ideal (MRing ι ℤ) → (n : ℕ) → (Fin n → HermLine ι) → ℝ), IsIntersectionFamily I → ∀ L : Fin D → HermLine ι, (∀ j, IsSmoothHerm (L j)) → ptsIntegral P (fun j z => Real.log ((L j).h z)) (fun _ => 1) = (intNum ℚ (extTo ℚ P) (fun j => (L j).a) : ℝ) := by
  intro K _ _ ι _ P D hP I hI L hL
  rw [GenInt.ptsIntegral_one_eq_vertAt P D hP I hI L hL]
  have h := GenInt.vertAt_self_eq_intNum P D hP ⟨2, Nat.prime_two⟩ (fun j => (L j).a)
  have e : (((⟨2, Nat.prime_two⟩ : Nat.Primes) : ℕ) : ℤ) = 2 := rfl
  rwa [e] at h

end GlobalTheory.CompanionTheory.Ar.Num
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.LogIntegralEqGenericIntersection =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RootModelGeometricGenericNumber =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RootModelGeometricGenericNumber", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Birational\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.LaurentCechNerveLevelSpecTensorPower\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.LogIntegralEqGenericIntersection\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PNumericalSegre\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GroundTheory.Heights₂.Heights.NumbersDVR GlobalTheory.CompanionTheory.Ar.Num GlobalTheory.CompanionTheory.Ar.Top GroundTheory.Heights₂.Heights.ModelLeaves
open ReciprocityTheory.ChartRestriction.G.Geo (HermLine IsSmoothHerm IsArithVar IsHorizontal mcPts mCoordIdeal IsIntersectionFamily IsIntersectionSystem IntersectionSystem ptsIntegral geoNum charOf recR arInt ChartBundle chartRing)

namespace GlobalTheory.CompanionTheory.Ar.Num.GeoModel

variable {Ψ : Type} [Fintype Ψ] {N : ℕ}

theorem intNumL_ofFn' {K : Type} [DecidableEq K] {ι : K → Type} (F : Type) [Field F] (Q : Ideal (MRing ι F)) {n : ℕ}
    (b : Fin n → K → ℤ) : intNumL F Q (List.ofFn b) = intNum F Q b := by
  unfold intNumL intNum mixedDiff
  rw [List.ofFn_get]

theorem geoMono_mapDomain_some (M : RootModel Ψ N) [DecidableEq M.K] (II : IntersectionSystem)
    (hII : IsIntersectionSystem II) (μ : Ψ × Fin N →₀ ℕ) (hμ : μ.degree = dimFl Ψ N) :
    M.geoMono (μ.mapDomain some) = (intNumL ℚ (extTo ℚ M.P) (classList M.xdeg μ) : ℝ) / (M.δ : ℝ) := by
  have hcard : (Finsupp.toMultiset μ).card = dimFl Ψ N := by
    rw [Finsupp.card_toMultiset, ← hμ, Finsupp.degree_apply]
    rfl
  have hmap : Finsupp.toMultiset (μ.mapDomain some) = (Finsupp.toMultiset μ).map some :=
    (Finsupp.toMultiset_map μ some).symm
  have hdeg : (μ.mapDomain some).degree = dimFl Ψ N := by
    rw [← hμ]
    induction μ using Finsupp.induction_linear with
    | zero => simp
    | add f g hf hg => simp [Finsupp.mapDomain_add]
    | single a b => simp
  have hnone : (μ.mapDomain some) none = 0 := Finsupp.mapDomain_notin_range _ _ (by simp)
  have hlen : (Finsupp.toMultiset (μ.mapDomain some)).toList.length = dimFl Ψ N := by
    rw [Multiset.length_toList, hmap, Multiset.card_map, hcard]
  unfold RootModel.geoMono
  rw [if_pos hdeg, hnone, pow_zero, mul_one]
  set L := monoLines (M.line 1) (μ.mapDomain some) (dimFl Ψ N) with hLdef
  have hL : ∀ k : Fin (dimFl Ψ N), L k = M.line 1 ((Finsupp.toMultiset (μ.mapDomain some)).toList.get
      ⟨k, by rw [hlen]; exact k.2⟩) := by
    intro k
    simp only [hLdef, monoLines]
    rw [dite_eq_left (by rw [hlen]; exact k.2)]
  have hline : ∀ o, IsSmoothHerm (M.line 1 o) := by
    rintro (_ | r)
    · exact M.A_smooth
    · exact M.x_smooth 1 r
  have hsm : ∀ j, IsSmoothHerm (L j) := fun j => by rw [hL j]; exact hline _
  rw [_root_.GlobalTheory.CompanionTheory.Ar.Num.ptsIntegral_one_eq_intNum M.K M.ι M.P (dimFl Ψ N) M.arith (II M.K M.ι) (hII _ _) L hsm, ← intNumL_ofFn']
  congr 2
  refine NumericalSegreProof.intNumL_perm ℚ _ ?_
  have hlist : List.ofFn (fun j => (L j).a) =
      (Finsupp.toMultiset (μ.mapDomain some)).toList.map (fun o => (M.line 1 o).a) := by
    apply List.ext_getElem
    · simp [hlen]
    · intro i h1 h2
      simp only [List.getElem_ofFn, List.getElem_map]
      rw [hL]
      rfl
  rw [hlist, ← Multiset.coe_eq_coe, ← Multiset.map_coe, Multiset.coe_toList, hmap, Multiset.map_map]
  rw [classList, Multiset.coe_toList]
  refine Multiset.map_congr rfl fun r _ => ?_
  exact M.x_deg 1 r

theorem geoFun_toA_eq : ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (M : RootModel Ψ N) [DecidableEq M.K]
    (II : IntersectionSystem), IsIntersectionSystem II → ∀ (F : RP Ψ N), F.IsHomogeneous (dimFl Ψ N) →
    M.geoFun (toA F) = genNum ℚ (extTo ℚ M.P) M.xdeg F [] / (M.δ : ℝ) := by
  intro Ψ _ _ N M _ II hII F hF
  have h1 : toA F = ∑ μ ∈ F.support, F.coeff μ • basisMonomials (Option (Ψ × Fin N)) ℝ (μ.mapDomain some) := by

    conv_lhs => rw [toA, F.as_sum, map_sum]
    refine Finset.sum_congr rfl fun μ _ => ?_
    rw [rename_monomial, coe_basisMonomials, smul_monomial, smul_eq_mul, mul_one]

  rw [h1, map_sum, genNum, Finset.sum_div]
  refine Finset.sum_congr rfl fun μ hμ => ?_
  have hd : μ.degree = dimFl Ψ N := by
    exact (DFunLike.congr_fun Finsupp.degree_eq_weight_one μ).trans (hF (mem_support_iff.1 hμ))
  rw [map_smul, RootModel.geoFun, Module.Basis.constr_basis, geoMono_mapDomain_some M II hII μ hd,
    smul_eq_mul, List.append_nil, mul_div_assoc]

end GlobalTheory.CompanionTheory.Ar.Num.GeoModel
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RootModelGeometricGenericNumber =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ExistsMixedDifferenceExpansion =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ExistsMixedDifferenceExpansion", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.BundleChernComparison\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory.CompanionTheory.Ar.Num

open MvPolynomial GroundTheory.Heights₂.Heights.NumbersDVR

noncomputable section

theorem exists_monomial_mixExpansion {σ : Type} [Fintype σ] (d : ℕ) :
    ∀ s : σ →₀ ℕ, s.degree = d → ∃ Gs : σ → MvPolynomial (σ ⊕ σ) ℝ,
      mixDiff (monomial s (1 : ℝ)) = ∑ i, (X (Sum.inl i) - X (Sum.inr i)) * Gs i ∧
      ∀ i, (Gs i).IsHomogeneous (d - 1) ∧ (d = 0 → Gs i = 0) := by
  classical
  induction d with
  | zero =>
    intro s hs
    have hs0 : s = 0 := (Finsupp.degree_eq_zero_iff s).mp hs
    subst hs0
    refine ⟨fun _ => 0, ?_, fun i => ⟨isHomogeneous_zero _ _ _, fun _ => rfl⟩⟩
    simp [mixDiff]
  | succ d ih =>
    intro s hs
    obtain ⟨i, hi⟩ : ∃ i, s i ≠ 0 := by
      by_contra h
      push_neg at h
      have h0 : s = 0 := Finsupp.ext h
      simp [h0] at hs
    have hle : Finsupp.single i 1 ≤ s := by
      rw [Finsupp.single_le_iff]
      omega
    obtain ⟨s', rfl⟩ : ∃ s', s = s' + Finsupp.single i 1 :=
      ⟨s - Finsupp.single i 1, (tsub_add_cancel_of_le hle).symm⟩
    have hdeg : s'.degree = d := by
      have e : (s' + Finsupp.single i 1).degree = s'.degree + 1 := by
        rw [Finsupp.degree_eq_weight_one, map_add (f := _)]
        simp [Finsupp.weight_apply, Finsupp.sum_single_index]
      omega
    obtain ⟨G', hG', hG'h⟩ := ih s' hdeg
    refine ⟨fun j => (if j = i then rename Sum.inl (monomial s' (1 : ℝ)) else 0) + X (Sum.inr i) * G' j,
      ?_, fun j => ⟨?_, fun h => absurd h (Nat.succ_ne_zero d)⟩⟩
    · have key : mixDiff (monomial (s' + Finsupp.single i 1) (1 : ℝ)) =
          (X (Sum.inl i) - X (Sum.inr i)) * rename Sum.inl (monomial s' (1 : ℝ)) +
            X (Sum.inr i) * mixDiff (monomial s' (1 : ℝ)) := by
        simp only [mixDiff]
        rw [monomial_add_single, pow_one, map_mul, map_mul, rename_X, rename_X]
        ring
      rw [key, hG', Finset.mul_sum]
      simp only [mul_add, Finset.sum_add_distrib, mul_ite, mul_zero, Finset.sum_ite_eq', Finset.mem_univ, if_true]
      congr 1
      exact Finset.sum_congr rfl fun j _ => by ring
    · have h2 : (X (Sum.inr i) * G' j : MvPolynomial (σ ⊕ σ) ℝ).IsHomogeneous d := by
        rcases Nat.eq_zero_or_pos d with h0 | hpos
        · rw [(hG'h j).2 h0, mul_zero]
          exact isHomogeneous_zero _ _ _
        · have h3 := (isHomogeneous_X ℝ (Sum.inr i : σ ⊕ σ)).mul (hG'h j).1
          rwa [show 1 + (d - 1) = d by omega] at h3
      have h1 : (if j = i then rename Sum.inl (monomial s' (1 : ℝ)) else 0 :
          MvPolynomial (σ ⊕ σ) ℝ).IsHomogeneous d := by
        split_ifs
        · exact (isHomogeneous_monomial _ hdeg).rename_isHomogeneous
        · exact isHomogeneous_zero _ _ _
      rw [Nat.add_sub_cancel]
      exact h1.add h2

theorem exists_mixExpansion_mixDiff (σ : Type) [Fintype σ] (n : ℕ) (F : MvPolynomial σ ℝ)
    (hF : F.IsHomogeneous n) : ∃ Gs, IsMixExpansion (n - 1) (mixDiff F) Gs := by
  classical
  have H := fun s : σ →₀ ℕ => fun h : s.degree = n => exists_monomial_mixExpansion n s h
  choose! G hGeq hGhom using H
  have hdeg : ∀ s ∈ F.support, s.degree = n := fun s hs => by
    rw [Finsupp.degree_eq_weight_one]
    exact hF (mem_support_iff.mp hs)
  have hlin : mixDiff F = ∑ s ∈ F.support, C (F.coeff s) * mixDiff (monomial s (1 : ℝ)) := by
    conv_lhs => rw [F.as_sum]

    simp only [mixDiff, map_sum, ← Finset.sum_sub_distrib]
    refine Finset.sum_congr rfl fun s _ => ?_
    rw [show monomial s (F.coeff s) = C (F.coeff s) * monomial s (1 : ℝ) by rw [C_mul_monomial, mul_one],
      map_mul, map_mul, rename_C, rename_C]
    ring
  refine ⟨fun i => ∑ s ∈ F.support, C (F.coeff s) * G s i, ?_⟩
  unfold IsMixExpansion
  refine ⟨?_, fun i => ?_⟩
  · rw [hlin]
    calc ∑ s ∈ F.support, C (F.coeff s) * mixDiff (monomial s (1 : ℝ))
        = ∑ s ∈ F.support, C (F.coeff s) * ∑ i, (X (Sum.inl i) - X (Sum.inr i)) * G s i :=
          Finset.sum_congr rfl fun s hs => by rw [hGeq s (hdeg s hs)]
      _ = ∑ i, (X (Sum.inl i) - X (Sum.inr i)) * ∑ s ∈ F.support, C (F.coeff s) * G s i := by
          simp only [Finset.mul_sum]
          rw [Finset.sum_comm]
          exact Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun s _ => by ring
  · exact IsHomogeneous.sum _ _ _ fun s hs => ((hGhom s (hdeg s hs) i).1).C_mul _
end

end GlobalTheory.CompanionTheory.Ar.Num
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ExistsMixedDifferenceExpansion =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PowerSumMixedExpansion =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PowerSumMixedExpansion", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.BundleChernComparison\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GroundTheory.Heights₂.Heights.NumbersDVR GlobalTheory.CompanionTheory.Ar.Num

namespace GlobalTheory.CompanionTheory.Ar.Num

theorem rename_map_psumExpansion {σ : Type} (r k : ℕ) (e : Fin r → σ) (a : Fin r) :
    rename (Sum.map e e) (MvPolynomial.map (Int.castRingHom ℝ) (psumExpansion r k a)) =
      ∑ j ∈ Finset.range k,
        (X (Sum.inl (e a)) : MvPolynomial (σ ⊕ σ) ℝ) ^ j * X (Sum.inr (e a)) ^ (k - 1 - j) := by

  simp [psumExpansion, map_sum, map_mul, map_pow, rename_X]

theorem isHomogeneous_rename_map_psumExpansion {σ : Type} (r k : ℕ) (e : Fin r → σ) (a : Fin r) :
    (rename (Sum.map e e) (MvPolynomial.map (Int.castRingHom ℝ) (psumExpansion r k a))).IsHomogeneous
      (k - 1) := by
  rw [rename_map_psumExpansion]
  refine IsHomogeneous.sum _ _ _ fun j hj => ?_
  have hj' : j + (k - 1 - j) = k - 1 := by
    have := Finset.mem_range.mp hj
    omega
  have h := ((isHomogeneous_X ℝ (Sum.inl (e a) : σ ⊕ σ)).pow j).mul
    ((isHomogeneous_X ℝ (Sum.inr (e a) : σ ⊕ σ)).pow (k - 1 - j))
  simpa [hj'] using h

theorem mixDiff_sum_pow {σ : Type} [Fintype σ] (r k : ℕ) (e : Fin r → σ) :
    mixDiff (∑ a, X (e a) ^ k : MvPolynomial σ ℝ) =
      ∑ a, (X (Sum.inl (e a)) - X (Sum.inr (e a))) *
        rename (Sum.map e e) (MvPolynomial.map (Int.castRingHom ℝ) (psumExpansion r k a)) := by
  unfold mixDiff

  simp only [map_sum, map_pow, rename_X, ← Finset.sum_sub_distrib]
  refine Finset.sum_congr rfl fun a _ => ?_
  rw [rename_map_psumExpansion, mul_comm, (Commute.all _ _).geom_sum₂_mul]

theorem isMixExpansion_psum_mul : ∀ (σ : Type) [Fintype σ] [DecidableEq σ] (r k m : ℕ) (e : Fin r → σ) (G : MvPolynomial (σ ⊕ σ) ℝ), G.IsHomogeneous m → IsMixExpansion (k - 1 + m) (mixDiff (∑ a, X (e a) ^ k) * G) (fun i => (∑ a ∈ Finset.univ.filter (fun a => e a = i), rename (Sum.map e e) (MvPolynomial.map (Int.castRingHom ℝ) (psumExpansion r k a))) * G) := by
  intro σ _ _ r k m e G hG
  refine ⟨?_, fun i => ?_⟩
  · rw [mixDiff_sum_pow, ← Finset.sum_fiberwise Finset.univ e, Finset.sum_mul]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [Finset.sum_mul, ← mul_assoc, Finset.mul_sum, Finset.sum_mul]
    refine Finset.sum_congr rfl fun a ha => ?_
    rw [(Finset.mem_filter.mp ha).2]
  · exact (IsHomogeneous.sum _ _ _ fun a _ => isHomogeneous_rename_map_psumExpansion r k e a).mul hG

end GlobalTheory.CompanionTheory.Ar.Num
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PowerSumMixedExpansion =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RootPowerSumMixedExpansion =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RootPowerSumMixedExpansion", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.BundleChernComparison\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.ExistsMixedDifferenceExpansion\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PowerSumMixedExpansion\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ArithmeticHilbertSamuelLowerBound\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.IsSemipositiveOn\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GroundTheory.Heights₂.Heights.NumbersDVR GlobalTheory.CompanionTheory.Ar.Num GlobalTheory.CompanionTheory.Ar.Top GroundTheory.Heights₂.Heights.ModelLeaves
open ReciprocityTheory.ChartRestriction.G.Geo (HermLine IsSmoothHerm IsArithVar IsHorizontal mcPts mCoordIdeal IsIntersectionFamily IsIntersectionSystem IntersectionSystem ptsIntegral geoNum charOf recR arInt ChartBundle chartRing)

namespace GlobalTheory.CompanionTheory.Ar.Num

theorem mixDiff_mul_leibniz {σ : Type} (A B : MvPolynomial σ ℝ) :
    mixDiff (A * B) = mixDiff A * rename Sum.inl B + rename Sum.inr A * mixDiff B := by
  simp only [mixDiff, map_mul]
  ring

theorem mixDiff_eq_zero_of_isHomogeneous_zero {σ : Type} {Q : MvPolynomial σ ℝ}
    (hQ : Q.IsHomogeneous 0) : mixDiff Q = 0 := by
  have h : Q.totalDegree = 0 := Nat.eq_zero_of_le_zero hQ.totalDegree_le
  rw [MvPolynomial.totalDegree_eq_zero_iff_eq_C] at h
  rw [h]
  simp only [mixDiff, rename_C, sub_self]

theorem rootPs_mul_mixExpansion : ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N d k : ℕ), 1 ≤ k → k ≤ d + 1 → ∀ (τ : Ψ) (Q : MvPolynomial (Ψ × Fin N) ℝ), Q.IsHomogeneous (d + 1 - k) → ∃ Hs : Ψ × Fin N → MvPolynomial ((Ψ × Fin N) ⊕ (Ψ × Fin N)) ℝ, (∀ i, (Hs i).IsHomogeneous (d - k)) ∧ (k = d + 1 → ∀ i, Hs i = 0) ∧ IsMixExpansion d (mixDiff (rootPs τ k * Q)) (fun i => (∑ a ∈ Finset.univ.filter (fun a : Fin N => (τ, a) = i), rename (Sum.map (fun a => (τ, a)) (fun a => (τ, a))) (MvPolynomial.map (Int.castRingHom ℝ) (psumExpansion N k a))) * rename Sum.inl Q + (∑ a : Fin N, X (Sum.inr (τ, a)) ^ k) * Hs i) := by
  intro Ψ _ _ N d k hk1 hk2 τ Q hQ
  obtain ⟨Hs, hMix⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Num.exists_mixExpansion_mixDiff (Ψ × Fin N) (d + 1 - k) Q hQ
  unfold IsMixExpansion at hMix
  obtain ⟨hHs, hHdeg⟩ := hMix
  have hQl : (rename Sum.inl Q : MvPolynomial ((Ψ × Fin N) ⊕ (Ψ × Fin N)) ℝ).IsHomogeneous (d + 1 - k) :=
    hQ.rename_isHomogeneous
  have hE := _root_.GlobalTheory.CompanionTheory.Ar.Num.isMixExpansion_psum_mul (Ψ × Fin N) N k (d + 1 - k) (fun a => (τ, a)) (rename Sum.inl Q) hQl
  unfold IsMixExpansion at hE
  obtain ⟨hE1, hE2⟩ := hE
  obtain ⟨Hs', hz, hmixQ, hdeg'⟩ : ∃ Hs' : Ψ × Fin N → MvPolynomial ((Ψ × Fin N) ⊕ (Ψ × Fin N)) ℝ,
      (k = d + 1 → ∀ i, Hs' i = 0) ∧ mixDiff Q = ∑ i, (X (Sum.inl i) - X (Sum.inr i)) * Hs' i ∧
        ∀ i, (Hs' i).IsHomogeneous (d - k) := by
    by_cases hkd : k = d + 1
    · refine ⟨fun _ => 0, fun _ _ => rfl, ?_, fun _ => MvPolynomial.isHomogeneous_zero _ _ _⟩
      have h0 : Q.IsHomogeneous 0 := by
        have e : d + 1 - k = 0 := by omega
        rw [e] at hQ
        exact hQ
      simp only [mul_zero, Finset.sum_const_zero]
      exact mixDiff_eq_zero_of_isHomogeneous_zero h0
    · refine ⟨Hs, fun h => absurd h hkd, hHs, fun i => ?_⟩
      have h3 := hHdeg i
      have e : d + 1 - k - 1 = d - k := by omega
      rw [e] at h3
      exact h3
  unfold IsMixExpansion
  refine ⟨Hs', hdeg', hz, ?_, ?_⟩
  · rw [mixDiff_mul_leibniz, hmixQ]
    have h1 : mixDiff (rootPs τ k : MvPolynomial (Ψ × Fin N) ℝ) * rename Sum.inl Q =
        ∑ i, (X (Sum.inl i) - X (Sum.inr i)) *
          ((∑ a ∈ Finset.univ.filter (fun a : Fin N => (τ, a) = i),
            rename (Sum.map (fun a => (τ, a)) (fun a => (τ, a)))
              (MvPolynomial.map (Int.castRingHom ℝ) (psumExpansion N k a))) * rename Sum.inl Q) := hE1
    have h2 : (rename Sum.inr (rootPs τ k : MvPolynomial (Ψ × Fin N) ℝ) :
        MvPolynomial ((Ψ × Fin N) ⊕ (Ψ × Fin N)) ℝ) = ∑ a : Fin N, X (Sum.inr (τ, a)) ^ k := by
      set_option synthInstance.maxHeartbeats 100000 in
        simp only [rootPs, map_sum, map_pow, rename_X]
    rw [h1, h2, Finset.mul_sum, ← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl (fun i _ => ?_)
    ring
  · intro i
    apply MvPolynomial.IsHomogeneous.add
    · have h4 := hE2 i
      have e : k - 1 + (d + 1 - k) = d := by omega
      rw [e] at h4
      exact h4
    · have hS : (∑ a : Fin N, X (Sum.inr (τ, a)) ^ k :
          MvPolynomial ((Ψ × Fin N) ⊕ (Ψ × Fin N)) ℝ).IsHomogeneous k :=
        MvPolynomial.IsHomogeneous.sum _ _ _ (fun a _ => MvPolynomial.isHomogeneous_X_pow _ _)
      by_cases hkd : k = d + 1
      · rw [hz hkd i, mul_zero]
        exact MvPolynomial.isHomogeneous_zero _ _ _
      · have h5 := hS.mul (hdeg' i)
        have e : k + (d - k) = d := by omega
        rw [e] at h5
        exact h5

end GlobalTheory.CompanionTheory.Ar.Num
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RootPowerSumMixedExpansion =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PowerSumHeightChangeModel =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PowerSumHeightChangeModel", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.LocalAtPlaces\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.DegreeEqCardToMultiset\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagM3PadicGlobal\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FractionRingRingEquiv\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.LaurentCechNerveLevelSpecTensorPower\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.IsometricFamilyIntersectionEq\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.BundleChernComparison\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PowerSumTermDiscreteValuation\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PowerSumsVanishAtPlaces\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Birational\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RootModelGeometricGenericNumber\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.RootPowerSumMixedExpansion\nimport Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.IsMultiProjPrimeExtTo\nimport Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.MassFormulaConjugationAction\nimport Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.UniformizerDivisorCycleNumber\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GroundTheory.Heights₂.Heights.NumbersDVR GlobalTheory.CompanionTheory.Ar.Num GlobalTheory.CompanionTheory.Ar.Top GroundTheory.Heights₂.Heights.ModelLeaves
open ReciprocityTheory.ChartRestriction.G.Geo (HermLine IsSmoothHerm IsArithVar IsHorizontal mcPts mCoordIdeal IsIntersectionFamily IsIntersectionSystem IntersectionSystem ptsIntegral geoNum charOf recR arInt ChartBundle chartRing)

namespace GlobalTheory.CompanionTheory.Ar.Num.Prop6Model

theorem arNum_mixDiff {K : Type} [Fintype K] [DecidableEq K] {ι : K → Type} [∀ k, Fintype (ι k)]
    (I : Ideal (MRing ι ℤ) → (n : ℕ) → (Fin n → HermLine ι) → ℝ) (P : Ideal (MRing ι ℤ)) {σ : Type}
    (A A' : σ → HermLine ι) (F : MvPolynomial σ ℝ) :
    arNum I P (Sum.elim A A') (mixDiff F) = arNum I P A F - arNum I P A' F := by
  obtain ⟨hadd, hsmul, -, -, hren⟩ := arNum_linear_arList_symm.1 K ι I P (σ ⊕ σ) (Sum.elim A A')
  have h : mixDiff F = rename Sum.inl F + C (-1) * rename Sum.inr F := by
    simp [mixDiff, sub_eq_add_neg]
  rw [h, hadd, hsmul, hren, hren, Sum.elim_comp_inl, Sum.elim_comp_inr]
  ring

theorem le_dimFl_succ (Ψ : Type) [Fintype Ψ] (τ : Ψ) (N : ℕ) : N ≤ dimFl Ψ N + 1 := by
  have hc : 1 ≤ Fintype.card Ψ := Fintype.card_pos_iff.2 ⟨τ⟩
  have h1 : N * (N - 1) / 2 ≤ dimFl Ψ N := by
    unfold dimFl
    exact Nat.le_mul_of_pos_left _ hc
  have h2 : N ≤ N * (N - 1) / 2 + 1 := by
    rcases N with _ | _ | n
    · simp
    · simp
    · have h3 : (n + 1) * 2 ≤ (n + 1 + 1) * (n + 1 + 1 - 1) := by
        rw [Nat.add_sub_cancel]
        nlinarith
      have h4 := (Nat.le_div_iff_mul_le (by norm_num : 0 < 2)).2 h3
      omega
  omega

variable {Ψ : Type} {N : ℕ}

theorem liePs_isHomogeneous (j m : ℕ) (l : Ψ ⊕ Ψ) :
    (liePs j m l : MvPolynomial (Ψ × Fin N) ℝ).IsHomogeneous m := by
  cases l with
  | inl τ =>
    refine IsHomogeneous.sum _ _ _ fun i _ => ?_
    simpa using (isHomogeneous_X ℝ (τ, i)).pow m
  | inr τ =>
    refine IsHomogeneous.sum _ _ _ fun i _ => ?_
    simpa using ((isHomogeneous_X ℝ (τ, i)).neg).pow m

theorem bracket_isHomogeneous [Fintype Ψ] [DecidableEq Ψ] (j : ℕ) (φ : Equiv.Perm (Ψ ⊕ Ψ)) (p k : ℕ) (τ : Ψ) :
    (bracket j φ p k τ : MvPolynomial (Ψ × Fin N) ℝ).IsHomogeneous (k - 1) := by
  unfold bracket
  have h := (isHomogeneous_C (Ψ × Fin N) (k : ℝ)).mul
    (IsHomogeneous.sum Finset.univ (fun τ' => C (co φ p k (Sum.inl τ) τ') * liePs j (k - 1) τ') (k - 1)
      fun τ' _ => by
        simpa using (isHomogeneous_C (Ψ × Fin N) (co φ p k (Sum.inl τ) τ')).mul
          (liePs_isHomogeneous (N := N) j (k - 1) τ'))
  simpa using h

end GlobalTheory.CompanionTheory.Ar.Num.Prop6Model

namespace GlobalTheory.CompanionTheory.Ar.Num


open Prop6Model in
theorem power_sum_height_model_change : ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (M : RootModel Ψ N) (R : SecondRoots M) (II : IntersectionSystem), IsIntersectionSystem II → ∀ (S : Finset Nat.Primes) (j : ℕ) (φ : ℕ → Equiv.Perm (Ψ ⊕ Ψ)), R.IsChange S → R.LocalAtPlaces j S φ → ∀ t : ℝ, 0 < t → ∀ (τ : Ψ) (k : ℕ), 1 ≤ k → k ≤ N → ∀ Q : RP Ψ N, Q.IsHomogeneous (dimFl Ψ N + 1 - k) → M.arFun II t (toA (pk τ k * Q)) = R.model.arFun II t (toA (pk τ k * Q)) + ∑ p ∈ S, Real.log (p : ℕ) * M.geoFun (toA (bracket j (φ p) p k τ * Q)) := by
  intro Ψ _ _ N M R II hII S j φ hCh hLoc t ht τ k hk1 hkN Q hQ
  classical
  have hkd : k ≤ dimFl Ψ N + 1 := hkN.trans (le_dimFl_succ Ψ τ N)
  have hpk : (pk τ k : RP Ψ N).IsHomogeneous k := by
    refine IsHomogeneous.sum _ _ _ fun i _ => ?_
    simpa using (isHomogeneous_X ℝ (τ, i)).pow k
  have hF : (pk τ k * Q : RP Ψ N).IsHomogeneous (dimFl Ψ N + 1) := by
    have h := hpk.mul hQ
    rwa [Nat.add_sub_cancel' hkd] at h
  have hδ : (M.δ : ℝ) ≠ 0 := by exact_mod_cast M.δ_pos.ne'
  have e1 := arFun_toA_eq_arNum Ψ N M II hII t _ hF
  have e2 : R.model.arFun II t (toA (pk τ k * Q)) =
      arNum (II M.K M.ι) M.P (R.x t) (pk τ k * Q) / (M.δ : ℝ) :=
    arFun_toA_eq_arNum Ψ N R.model II hII t _ hF
  obtain ⟨Hs, hHs, hHs0, hexp⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Num.rootPs_mul_mixExpansion Ψ N (dimFl Ψ N) k hk1 hkd τ Q hQ
  obtain ⟨hvert, hiso⟩ := hCh
  have hlink := _root_.GlobalTheory.CompanionTheory.Ar.Num.TopLink.arNum_eq_sum_log_val M.K M.ι M.P (dimFl Ψ N) M.arith (II M.K M.ι) (hII M.K M.ι) (Ψ × Fin N) S R.pairs
    hvert (M.x t) (R.x t) (fun i => M.x_smooth t i) (fun i => R.x_smooth t i) (hiso t ht) _ _ hexp
  obtain ⟨A, i1, i2, i3, i4, hinj, hconst, hloc⟩ := hLoc
  have hdiff : arNum (II M.K M.ι) M.P (M.x t) (pk τ k * Q) - arNum (II M.K M.ι) M.P (R.x t) (pk τ k * Q) =
      ∑ p ∈ S, Real.log (p : ℕ) * ((M.δ : ℝ) * M.geoFun (toA (bracket j (φ p) p k τ * Q))) := by
    rw [← arNum_mixDiff]
    refine Eq.trans hlink (Finset.sum_congr rfl fun p hp => ?_)
    congr 1
    obtain ⟨hirr, hmod, hv⟩ := zp_model M.K M.ι M.P (dimFl Ψ N) M.arith p
    have hm3 := _root_.GlobalTheory.CompanionTheory.Ar.Num.PlacesFlagM3.flag_m3_padic M.K M.ι M.Ω M.y A hinj hconst (dimFl Ψ N) M.arith p Ψ N j (φ p) S R.pairs hvert
      (fun m _ hm O _ _ _ _ _ _ _ => (hloc p hp m hm O).1)
    have hz := _root_.GlobalTheory.CompanionTheory.Ar.Num.powerSumsVanish_extTo_of_atPlacesOver M.K M.ι M.Ω M.y A hinj hconst (dimFl Ψ N) M.arith p N (fun i => R.xdeg (τ, i))
      (fun m _ hm O _ _ _ _ _ _ _ => (hloc p hp m hm O).2 τ)
    have hH : (bracket j (φ p) p k τ * Q : RP Ψ N).IsHomogeneous (dimFl Ψ N) := by
      have h := (bracket_isHomogeneous (N := N) j (φ p) p k τ).mul hQ
      have e : k - 1 + (dimFl Ψ N + 1 - k) = dimFl Ψ N := by omega
      rwa [e] at h
    have h1 := _root_.GlobalTheory.CompanionTheory.Ar.Num.power_sum_term_dvr (ZP p) _ hirr M.K M.ι _ _ hmod p Ψ N j (φ p) k hk1 hkd τ Q Hs hQ hHs hHs0 _
      (hv _ S R.pairs hvert) hm3 hz
    have h2 := _root_.GlobalTheory.CompanionTheory.Ar.Num.cycNum_divCycle_const (ZP p) _ hirr M.K M.ι _ _ hmod 1 1 (Ψ × Fin N) M.xdeg
      (bracket j (φ p) p k τ * Q) (dimFl Ψ N) hH [] (by simp)
    simp only [Units.val_one, one_mul, pow_one, Nat.cast_one] at h2
    have h3 := genNum_zp_eq_rat M.K M.ι M.P p (Ψ × Fin N) M.xdeg (bracket j (φ p) p k τ * Q) []
    have h4 := _root_.GlobalTheory.CompanionTheory.Ar.Num.GeoModel.geoFun_toA_eq Ψ N M II hII _ hH
    refine h1.trans ?_
    refine Eq.trans h2 ?_
    rw [h3, h4]
    field_simp
  have hsum : ∑ p ∈ S, Real.log (p : ℕ) * ((M.δ : ℝ) * M.geoFun (toA (bracket j (φ p) p k τ * Q))) =
      (M.δ : ℝ) * ∑ p ∈ S, Real.log (p : ℕ) * M.geoFun (toA (bracket j (φ p) p k τ * Q)) := by
    rw [Finset.mul_sum]
    exact Finset.sum_congr rfl fun p _ => by ring
  rw [e1, e2]
  rw [hsum] at hdiff
  field_simp
  linarith

end GlobalTheory.CompanionTheory.Ar.Num
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PowerSumHeightChangeModel =====
