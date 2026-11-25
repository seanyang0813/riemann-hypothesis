module

public import Mathlib.AlgebraicGeometry.AffineScheme
public import Mathlib.CategoryTheory.Monoidal.Cartesian.Over
public import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne
public import Mathlib.RingTheory.Norm.Defs
public import Mathlib.LinearAlgebra.Charpoly.BaseChange
public import Mathlib.RingTheory.Ideal.GoingUp
public import Mathlib.RingTheory.Localization.NormTrace
public import Mathlib.Tactic.ENatToNat
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemRangeAppOfFlatBaseChangeEqualised
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.IsAffineHomOfFlatQuotientOfAffineKernel
public import Mathlib.AlgebraicGeometry.Morphisms.QuasiFinite
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.IsAbelianScheme
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteFibreAndEqOfSpecializesOfIsFinite
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFiniteFromSpecResidueFieldCompOfIsClosedOfClosStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IrreducibleSpaceFibreSemiAbelianFieldPoint
public import Development.AbelianVarietyTheory.Definitions.Divisors.QuasiCompact
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.UniformisationConclusion
public import Development.AbelianVarietyTheory.Definitions.Degenerations.AdmissibleBaseOfCompleteDvr
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThickTransComp
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteEtaleSectionOfSmoothClosedFibreStatement
public import Development.AbelianVarietyTheory.Definitions.ShimuraVarieties.IsDomainAndIsIntegrallyClosedLocalizationOfIsInv
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisQuotientSmoothBaseChangeIsoClosedFibreStatement
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.AlgebraicGeometry.Modules.Sheaf
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
import Mathlib.Order.CompletePartialOrder
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
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
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SymplecticGenerators.StTransl
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Mathlib.RingTheory.DedekindDomain.Instances
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Mathlib.Topology.Sheaves.Presheaf
import Mathlib.AlgebraicGeometry.Morphisms.Proper
import Mathlib.RingTheory.Etale.Weakly
import Mathlib.Tactic.Basify
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsQuotientOfFiniteGroup
import Mathlib.AlgebraicGeometry.Morphisms.WeaklyEtale

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsBasicOpenBetweenFinsetAndOpen, Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormNotMemIff, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormBasicOpenFiniteFreeBaseChange, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAffineOpenDescendingFiniteFreeBaseChange, Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfSpecializesSemiAbelianSquareSameProjections, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsClosedImageSndOfSubsetSemiAbelianFibre, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIrreducibleFibreFst, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOpenTranslationsMovingClosedPointsIntoOpen, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslateBaseChangeAffineOpen, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAffineOpenFinsetClosedFibreSemiAbelian, Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedGroupClosedFibreFinsetInAffineOpen, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGaloisInvariantNbhdClosedFibre, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGaloisQuotientInvariantOpen, Development.AbelianVarietyTheory.Proofs.DivisorProofs.GlueLocalDescentsNearClosedFibreGalois, Development.AbelianVarietyTheory.Proofs.DivisorProofs.GroupLawDescendsGaloisInvariantOpen, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNearGaloisQuotient

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsBasicOpenBetweenFinsetAndOpen =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsBasicOpenBetweenFinsetAndOpen", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.AffineScheme\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\npublic import Mathlib.CategoryTheory.Monoidal.Cartesian.Over\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SymplecticGenerators.StTransl\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem exists_basicOpen_between_finset_and_open : ∀ (X : Scheme.{0}) (W : X.Opens), IsAffineOpen W → ∀ (V : X.Opens), V ≤ W → ∀ s : Finset X, (∀ x ∈ s, x ∈ V) → ∃ f : Γ(X, W), X.basicOpen f ≤ V ∧ ∀ x ∈ s, x ∈ X.basicOpen f := by
  classical
  intro X W hW V hVW s hs
  rcases s.eq_empty_or_nonempty with rfl | ⟨x₀, hx₀⟩
  · refine ⟨0, ?_, fun x hx => absurd hx (Finset.notMem_empty x)⟩
    rw [Scheme.basicOpen_zero]
    exact bot_le
  set Z : Set (PrimeSpectrum Γ(X, W)) := {p | hW.fromSpec p ∉ V} with hZ
  have hZc : IsClosed Z := by
    have h := (hW.fromSpec ⁻¹ᵁ V).isOpen.isClosed_compl
    exact h
  let P : X → Ideal Γ(X, W) := fun x => if h : x ∈ W then (hW.primeIdealOf ⟨x, h⟩).asIdeal else ⊤
  have hPx : ∀ x (h : x ∈ W), P x = (hW.primeIdealOf ⟨x, h⟩).asIdeal := fun x h => by
    simp only [P, dif_pos h]
  have hP : ∀ i ∈ s, i ≠ x₀ → i ≠ x₀ → (P i).IsPrime := by
    intro x hx _ _
    rw [hPx x (hVW (hs x hx))]
    exact (hW.primeIdealOf _).isPrime
  have key : ¬ ((PrimeSpectrum.vanishingIdeal Z : Set Γ(X, W)) ⊆
      ⋃ i ∈ (↑s : Set X), (P i : Set Γ(X, W))) := by
    rw [Ideal.subset_union_prime x₀ x₀ hP]
    rintro ⟨x, hx, hle⟩
    have hxW : x ∈ W := hVW (hs x hx)
    rw [hPx x hxW] at hle
    have hmem : hW.primeIdealOf ⟨x, hxW⟩ ∈
        PrimeSpectrum.zeroLocus (PrimeSpectrum.vanishingIdeal Z : Set Γ(X, W)) :=
      (PrimeSpectrum.mem_zeroLocus _ _).2 hle
    rw [PrimeSpectrum.zeroLocus_vanishingIdeal_eq_closure, hZc.closure_eq] at hmem
    apply hmem
    show hW.fromSpec (hW.primeIdealOf ⟨x, hxW⟩) ∈ V
    rw [hW.fromSpec_primeIdealOf]
    exact hs x hx
  obtain ⟨f, hfI, hfP⟩ := Set.not_subset.mp key
  refine ⟨f, ?_, ?_⟩
  · intro y hy
    have hyW : y ∈ W := X.basicOpen_le f hy
    obtain ⟨p, rfl⟩ : y ∈ Set.range hW.fromSpec := by rw [hW.range_fromSpec]; exact hyW
    have hp : p ∈ hW.fromSpec ⁻¹ᵁ X.basicOpen f := hy
    rw [hW.fromSpec_preimage_basicOpen] at hp
    by_contra hnot
    have hpZ : p ∈ Z := hnot
    exact (PrimeSpectrum.mem_basicOpen _ _).1 hp
      ((PrimeSpectrum.mem_vanishingIdeal _ _).1 hfI p hpZ)
  · intro x hx
    have hxW : x ∈ W := hVW (hs x hx)
    have hf : f ∉ (hW.primeIdealOf ⟨x, hxW⟩).asIdeal := by
      intro h
      apply hfP
      rw [Set.mem_iUnion₂]
      exact ⟨x, hx, by rw [hPx x hxW]; exact h⟩
    have hmem : hW.primeIdealOf ⟨x, hxW⟩ ∈ hW.fromSpec ⁻¹ᵁ X.basicOpen f := by
      rw [hW.fromSpec_preimage_basicOpen]
      exact (PrimeSpectrum.mem_basicOpen _ _).2 hf
    have h2 : hW.fromSpec (hW.primeIdealOf ⟨x, hxW⟩) ∈ X.basicOpen f := hmem
    rwa [hW.fromSpec_primeIdealOf] at h2

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsBasicOpenBetweenFinsetAndOpen =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormNotMemIff =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormNotMemIff", "h": "module\n\npublic import Mathlib.RingTheory.Norm.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\npublic import Mathlib.CategoryTheory.Monoidal.Cartesian.Over\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.Charpoly.BaseChange\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.DedekindDomain.Instances\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Mathlib.RingTheory.Ideal.GoingUp\npublic import Mathlib.RingTheory.Localization.NormTrace\nimport Mathlib.Topology.Sheaves.Presheaf\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SymplecticGenerators.StTransl\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem algebraMap_norm_mem_span_singleton (A B : Type) [CommRing A] [CommRing B] [Algebra A B]
    [Module.Finite A B] [Module.Free A B] (f : B) :
    algebraMap A B (Algebra.norm A f) ∈ Ideal.span {f} := by
  set g : B →ₗ[A] B := Algebra.lmul A B f with hg
  set p := g.charpoly
  obtain ⟨q, hq⟩ := Polynomial.X_dvd_sub_C (p := p)
  have h0 : Polynomial.aeval f p = 0 := by
    have h1 : Polynomial.aeval g p = 0 := LinearMap.aeval_self_charpoly g
    rw [hg, Polynomial.aeval_algHom_apply] at h1
    have h2 := congrArg (fun u : B →ₗ[A] B => u 1) h1
    simpa using h2
  have h3 := congrArg (Polynomial.aeval f) hq
  simp only [map_sub, Polynomial.aeval_C, map_mul, Polynomial.aeval_X, h0, zero_sub] at h3
  rw [Algebra.norm_apply, LinearMap.det_eq_sign_charpoly_coeff, map_mul,
    show algebraMap A B (g.charpoly.coeff 0) = -(f * Polynomial.aeval f q) by
      rw [← h3, neg_neg]]
  exact Ideal.mul_mem_left _ _ (neg_mem (Ideal.mul_mem_right _ _ (Ideal.mem_span_singleton_self f)))

theorem norm_not_mem_iff (A B : Type) [CommRing A] [CommRing B] [Algebra A B]
    [Module.Finite A B] [Module.Free A B] (f : B) (P : PrimeSpectrum A) :
    Algebra.norm A f ∉ P.asIdeal ↔
      ∀ Q : PrimeSpectrum B, Q.asIdeal.comap (algebraMap A B) = P.asIdeal → f ∉ Q.asIdeal := by
  constructor
  · intro hN Q hQ hf
    apply hN
    rw [← hQ, Ideal.mem_comap]
    exact (Ideal.span_singleton_le_iff_mem _).mpr hf (algebraMap_norm_mem_span_singleton A B f)
  · intro h hN
    let Rₘ := Localization.AtPrime P.asIdeal
    let Sₘ := Localization (Algebra.algebraMapSubmonoid B P.asIdeal.primeCompl)
    have hnu : ¬ IsUnit (algebraMap B Sₘ f) := by
      intro hu
      have h1 := hu.map (Algebra.norm Rₘ (S := Sₘ))
      rw [Algebra.norm_localization A P.asIdeal.primeCompl] at h1
      exact (IsLocalization.AtPrime.isUnit_to_map_iff Rₘ P.asIdeal _).mp h1 hN
    obtain ⟨M, hM, hfM⟩ := exists_max_ideal_of_mem_nonunits hnu
    haveI : Module.Finite Rₘ Sₘ := Module.Finite.of_basis
      ((Module.Free.chooseBasis A B).localizationLocalization Rₘ P.asIdeal.primeCompl Sₘ)
    have hMc : M.comap (algebraMap Rₘ Sₘ) = IsLocalRing.maximalIdeal Rₘ :=
      IsLocalRing.eq_maximalIdeal (Ideal.isMaximal_under_of_isIntegral_of_isMaximal (R := Rₘ) M)
    refine h ⟨M.comap (algebraMap B Sₘ), hM.isPrime.comap _⟩ ?_ hfM
    show (M.comap (algebraMap B Sₘ)).comap (algebraMap A B) = P.asIdeal
    rw [Ideal.comap_comap, ← IsScalarTower.algebraMap_eq, IsScalarTower.algebraMap_eq A Rₘ Sₘ,
      ← Ideal.comap_comap, hMc]
    exact Localization.AtPrime.under_maximalIdeal

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormNotMemIff =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormBasicOpenFiniteFreeBaseChange =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormBasicOpenFiniteFreeBaseChange", "h": "module\n\npublic import Mathlib.RingTheory.Norm.Defs\npublic import Mathlib.Tactic.ENatToNat\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemRangeAppOfFlatBaseChangeEqualised\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NormNotMemIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum.NormBC

open TensorProduct

theorem norm_map_of_basis {A A' B B' : Type} [CommRing A] [CommRing A'] [CommRing B] [CommRing B']
    [Algebra A B] [Algebra A' B'] (ρ : A →+* A') (ψ : B →+* B')
    (hc : ∀ a, ψ (algebraMap A B a) = algebraMap A' B' (ρ a)) {J : Type} [Fintype J] [DecidableEq J]
    (e : Module.Basis J A B) (e' : Module.Basis J A' B') (he : ∀ i, ψ (e i) = e' i) (f : B) :
    Algebra.norm A' (ψ f) = ρ (Algebra.norm A f) := by
  rw [Algebra.norm_eq_matrix_det e, Algebra.norm_eq_matrix_det e', RingHom.map_det]
  congr 1
  ext i j
  rw [RingHom.mapMatrix_apply, Matrix.map_apply, Algebra.leftMulMatrix_eq_repr_mul,
    Algebra.leftMulMatrix_eq_repr_mul]
  have h : ψ f * e' j = ∑ k, ρ (e.repr (f * e j) k) • e' k := by
    rw [← he j, ← map_mul]
    conv_lhs => rw [← e.sum_repr (f * e j)]

    simp only [map_sum, Algebra.smul_def, map_mul, hc, he]
  rw [h, e'.repr_sum_self]

theorem exists_basis_of_ringEquiv {S₀ A T₀ B : Type} [CommRing S₀] [CommRing A] [CommRing T₀]
    [CommRing B] [Algebra S₀ A] [Algebra S₀ T₀] [Algebra A B] {J : Type}
    (c : Module.Basis J S₀ T₀) (Φ : A ⊗[S₀] T₀ ≃+* B) (hΦ : ∀ a, Φ (a ⊗ₜ 1) = algebraMap A B a) :
    ∃ e : Module.Basis J A B, ∀ i, e i = Φ (1 ⊗ₜ c i) := by
  let L : A ⊗[S₀] T₀ ≃ₗ[A] B := Φ.toAddEquiv.toLinearEquiv (fun a x => by
    show Φ (a • x) = a • Φ x
    rw [Algebra.smul_def, Algebra.smul_def, map_mul, ← hΦ]
    rfl)
  exact ⟨(Algebra.TensorProduct.basis A c).map L, fun i => by
    simp [L, Algebra.TensorProduct.basis_apply]⟩

theorem exists_basis_Gamma {R R₁ : Type} [CommRing R] [CommRing R₁] [Algebra R R₁] {J : Type}
    [Fintype J] (c' : Module.Basis J R R₁) :
    letI := ((spMap (algebraMap R R₁)).appLE ⊤ ⊤ le_top).hom.toAlgebra
    Nonempty (Module.Basis J Γ(Sp R, ⊤) Γ(Sp R₁, ⊤)) := by
  letI := ((spMap (algebraMap R R₁)).appLE ⊤ ⊤ le_top).hom.toAlgebra
  let σ : Γ(Sp R, ⊤) ≃+* R := (Scheme.ΓSpecIso (CommRingCat.of R)).commRingCatIsoToRingEquiv
  let σ₁ : Γ(Sp R₁, ⊤) ≃+* R₁ := (Scheme.ΓSpecIso (CommRingCat.of R₁)).commRingCatIsoToRingEquiv
  have hnat : ∀ a, σ₁ (algebraMap Γ(Sp R, ⊤) Γ(Sp R₁, ⊤) a) = algebraMap R R₁ (σ a) := fun a => by
    have h := congrArg (fun φ => φ.hom a) (Scheme.ΓSpecIso_naturality (CommRingCat.ofHom (algebraMap R R₁)))
    simp only [CommRingCat.hom_comp, RingHom.comp_apply, CommRingCat.hom_ofHom] at h
    rw [AffDesc.appTop_eq_appLE] at h
    exact h
  let E : Γ(Sp R₁, ⊤) ≃ₗ[Γ(Sp R, ⊤)] (J → Γ(Sp R, ⊤)) :=
    { toFun := fun y i => σ.symm (c'.repr (σ₁ y) i)
      invFun := fun g => σ₁.symm (∑ i, σ (g i) • c' i)
      map_add' := fun y y' => by funext i; simp
      map_smul' := fun a y => by
        funext i
        simp only [RingHom.id_apply, Pi.smul_apply, smul_eq_mul]
        rw [Algebra.smul_def, map_mul, hnat, ← Algebra.smul_def, map_smul, Finsupp.smul_apply,
          smul_eq_mul, map_mul, RingEquiv.symm_apply_apply]
      left_inv := fun y => by
        simp only [RingEquiv.apply_symm_apply, c'.sum_repr, RingEquiv.symm_apply_apply]
      right_inv := fun g => by
        funext i
        simp only [RingEquiv.apply_symm_apply, c'.repr_sum_self, RingEquiv.symm_apply_apply] }
  exact ⟨Module.Basis.ofEquivFun E⟩

theorem mem_primeIdealOf_iff' {X : Scheme.{0}} {U : X.Opens} (hU : IsAffineOpen U) (x : U)
    (s : Γ(X, U)) : s ∈ (hU.primeIdealOf x).asIdeal ↔ x.1 ∉ X.basicOpen s := by
  have h : (hU.primeIdealOf x : Spec Γ(X, U)) ∈ hU.fromSpec ⁻¹ᵁ X.basicOpen s ↔
      x.1 ∈ X.basicOpen s := by
    conv_rhs => rw [← hU.fromSpec_primeIdealOf x]
    rfl
  rw [← h, hU.fromSpec_preimage_basicOpen]
  exact not_not.symm

end GlobalTheory.Mum.NormBC

namespace GlobalTheory.Mum.NormBC

open TensorProduct

theorem exists_norm_basicOpen : ∀ (R R₁ : Type) [CommRing R] [CommRing R₁] [Algebra R R₁]
    [Module.Finite R R₁] [Module.Free R R₁] (X X₁ : Scheme.{0}) (p : X ⟶ Sp R) (p₁ : X₁ ⟶ Sp R₁)
    (b : X₁ ⟶ X), IsPullback b p₁ p (spMap (algebraMap R R₁)) → ∀ (V : X.Opens),
    IsCompact (V : Set X) → IsQuasiSeparated (V : Set X) → ∀ f : Γ(X₁, b ⁻¹ᵁ V), ∃ n : Γ(X, V),
    ∀ x : X, x ∈ X.basicOpen n ↔ x ∈ V ∧ ∀ z : X₁, b z = x → z ∈ X₁.basicOpen f := by
  intro R R₁ _ _ _ _ _ X X₁ p p₁ b H V hVc hVq f
  classical
  rcases subsingleton_or_nontrivial R with hR | hR
  · refine ⟨0, fun x => ?_⟩
    exact absurd (Subsingleton.elim _ _ : (p x).asIdeal = ⊤) (p x).isPrime.ne_top
  let c' := Module.Free.chooseBasis R R₁
  letI a0 : Algebra Γ(Sp R, ⊤) Γ(Sp R₁, ⊤) :=
    ((spMap (algebraMap R R₁)).appLE ⊤ ⊤ le_top).hom.toAlgebra
  obtain ⟨c⟩ := exists_basis_Gamma c'
  letI aX : ∀ U : X.Opens, Algebra Γ(Sp R, ⊤) Γ(X, U) := fun U => (p.appLE ⊤ U le_top).hom.toAlgebra
  letI aB : ∀ U : X.Opens, Algebra Γ(X, U) Γ(X₁, b ⁻¹ᵁ U) :=
    fun U => (b.appLE U (b ⁻¹ᵁ U) le_rfl).hom.toAlgebra
  have key : ∀ U : X.Opens, IsIso (pushoutSection H (US := ⊤) (UT := ⊤) (UX := U) le_top le_top
      (show b ⁻¹ᵁ U = b ⁻¹ᵁ U ⊓ p₁ ⁻¹ᵁ ⊤ by simp)) →
      ∃ e : Module.Basis (Module.Free.ChooseBasisIndex R R₁) Γ(X, U) Γ(X₁, b ⁻¹ᵁ U),
        ∀ i, e i = (p₁.appLE ⊤ (b ⁻¹ᵁ U) (by simp)).hom (c i) := by
    intro U hU
    let Φ := (CommRingCat.isPushout_tensorProduct Γ(Sp R, ⊤) Γ(X, U) Γ(Sp R₁, ⊤)).isoPushout.hom ≫
      pushoutSection H (US := ⊤) (UT := ⊤) (UX := U) le_top le_top
        (show b ⁻¹ᵁ U = b ⁻¹ᵁ U ⊓ p₁ ⁻¹ᵁ ⊤ by simp)
    have : IsIso Φ := by dsimp only [Φ]; infer_instance
    let Φe : Γ(X, U) ⊗[Γ(Sp R, ⊤)] Γ(Sp R₁, ⊤) ≃+* Γ(X₁, b ⁻¹ᵁ U) :=
      (asIso Φ).commRingCatIsoToRingEquiv
    have fΦ : ∀ a t, Φe (a ⊗ₜ t) =
        (b.appLE U (b ⁻¹ᵁ U) le_rfl).hom a * (p₁.appLE ⊤ (b ⁻¹ᵁ U) (by simp)).hom t :=
      fun a t => AffDesc.isoPushout_desc_tmul _ _ _ a t
    obtain ⟨e, he⟩ := exists_basis_of_ringEquiv c Φe (fun a => by rw [fΦ, map_one, _root_.mul_one]; rfl)
    exact ⟨e, fun i => by rw [he, fΦ, map_one, _root_.one_mul]⟩
  haveI : Module.Flat R R₁ := inferInstance
  haveI : Flat (spMap (algebraMap R R₁)) :=
    Flat.SpecMap_iff.mpr (RingHom.flat_algebraMap_iff.mpr inferInstance)
  obtain ⟨e, he⟩ := key V (isIso_pushoutSection_of_isQuasiSeparated_of_flat_right H le_top le_top _
    (isAffineOpen_top _) (isAffineOpen_top _) hVc hVq)
  refine ⟨Algebra.norm Γ(X, V) f, fun x => ?_⟩
  by_cases hxV : x ∈ V
  swap
  · exact ⟨fun h => absurd (X.basicOpen_le _ h) hxV, fun h => absurd h.1 hxV⟩
  obtain ⟨U, hU, hxU, hUV⟩ := exists_isAffineOpen_mem_and_subset hxV
  have hUV' : U ≤ V := hUV
  haveI : IsAffineHom b := MorphismProperty.of_isPullback H.flip inferInstance
  have hU₁ : IsAffineOpen (b ⁻¹ᵁ U) := hU.preimage b
  obtain ⟨e', he'⟩ := key U (isIso_pushoutSection_of_isAffineOpen H le_top le_top _
    (isAffineOpen_top _) (isAffineOpen_top _) hU)
  have hUV₁ : b ⁻¹ᵁ U ≤ b ⁻¹ᵁ V := b.preimage_mono hUV'
  let ρ := X.presheaf.map (homOfLE hUV').op
  let ψ := X₁.presheaf.map (homOfLE hUV₁).op
  have hn : Algebra.norm Γ(X, U) (ψ.hom f) = ρ.hom (Algebra.norm Γ(X, V) f) := by
    refine norm_map_of_basis ρ.hom ψ.hom (fun a => ?_) e e' (fun i => ?_) f
    · change (b.appLE V _ le_rfl ≫ X₁.presheaf.map _).hom a = (X.presheaf.map _ ≫ b.appLE U _ le_rfl).hom a
      rw [Scheme.Hom.appLE_map, Scheme.Hom.map_appLE]
    · rw [he, he']
      exact congrArg (fun φ => CommRingCat.Hom.hom φ (c i)) (Scheme.Hom.appLE_map p₁ _ _)
  haveI : Module.Free Γ(X, U) Γ(X₁, b ⁻¹ᵁ U) := Module.Free.of_basis e'
  haveI : Module.Finite Γ(X, U) Γ(X₁, b ⁻¹ᵁ U) := Module.Finite.of_basis e'
  have I := _root_.GlobalTheory.Mum.norm_not_mem_iff Γ(X, U) Γ(X₁, b ⁻¹ᵁ U) (ψ.hom f) (hU.primeIdealOf ⟨x, hxU⟩)
  have hsq := IsAffineOpen.SpecMap_appLE_fromSpec b hU hU₁ le_rfl
  have hpt : ∀ Q, b (hU₁.fromSpec Q) = hU.fromSpec (Spec.map (b.appLE U (b ⁻¹ᵁ U) le_rfl) Q) :=
    fun Q => by rw [← Scheme.Hom.comp_apply, ← hsq, Scheme.Hom.comp_apply]
  have hfib : (∀ Q : PrimeSpectrum Γ(X₁, b ⁻¹ᵁ U),
      Q.asIdeal.comap (algebraMap Γ(X, U) Γ(X₁, b ⁻¹ᵁ U)) = (hU.primeIdealOf ⟨x, hxU⟩).asIdeal →
        ψ.hom f ∉ Q.asIdeal) ↔ ∀ z : X₁, b z = x → z ∈ X₁.basicOpen f := by
    constructor
    · intro h z hz
      have hzU : z ∈ b ⁻¹ᵁ U := by show b z ∈ U; rw [hz]; exact hxU
      have hzf : z ∈ X₁.basicOpen (ψ.hom f) := by
        by_contra hcon
        have hm := (mem_primeIdealOf_iff' hU₁ ⟨z, hzU⟩ (ψ.hom f)).2 hcon
        refine h _ ?_ hm
        have e1 : hU.fromSpec (Spec.map (b.appLE U (b ⁻¹ᵁ U) le_rfl) (hU₁.primeIdealOf ⟨z, hzU⟩)) =
            hU.fromSpec (hU.primeIdealOf ⟨x, hxU⟩) :=
          (hpt _).symm.trans (by rw [hU₁.fromSpec_primeIdealOf, hU.fromSpec_primeIdealOf]; exact hz)
        exact congrArg PrimeSpectrum.asIdeal (hU.fromSpec.isOpenEmbedding.injective e1)
      rw [Scheme.basicOpen_res] at hzf
      exact hzf.2
    · intro h Q hQ hfQ
      have hz := h (hU₁.fromSpec Q) ((hpt Q).trans ((congrArg hU.fromSpec (PrimeSpectrum.ext hQ)).trans
        (hU.fromSpec_primeIdealOf ⟨x, hxU⟩)))
      have hzU : hU₁.fromSpec Q ∈ b ⁻¹ᵁ U := by
        have : hU₁.fromSpec Q ∈ Set.range hU₁.fromSpec := ⟨Q, rfl⟩
        rwa [hU₁.range_fromSpec] at this
      have hz' : hU₁.fromSpec Q ∈ X₁.basicOpen (ψ.hom f) := by
        rw [Scheme.basicOpen_res]; exact ⟨hzU, hz⟩
      have hz'' : Q ∈ hU₁.fromSpec ⁻¹ᵁ X₁.basicOpen (ψ.hom f) := hz'
      rw [hU₁.fromSpec_preimage_basicOpen] at hz''
      exact hz'' hfQ
  have hbx : x ∈ X.basicOpen (Algebra.norm Γ(X, V) f) ↔
      Algebra.norm Γ(X, U) (ψ.hom f) ∉ (hU.primeIdealOf ⟨x, hxU⟩).asIdeal := by
    rw [mem_primeIdealOf_iff', not_not, hn, Scheme.basicOpen_res]
    exact ⟨fun h => ⟨hxU, h⟩, fun h => h.2⟩
  rw [hbx, I, hfib]
  exact ⟨fun h => ⟨hxV, h⟩, fun h => h.2⟩

end GlobalTheory.Mum.NormBC
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormBasicOpenFiniteFreeBaseChange =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAffineOpenDescendingFiniteFreeBaseChange =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAffineOpenDescendingFiniteFreeBaseChange", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.IsAffineHomOfFlatQuotientOfAffineKernel\npublic import Mathlib.AlgebraicGeometry.AffineScheme\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsBasicOpenBetweenFinsetAndOpen\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormBasicOpenFiniteFreeBaseChange\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.AlgebraicGeometry.Morphisms.Proper\npublic import Mathlib.AlgebraicGeometry.Morphisms.QuasiFinite\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem exists_isAffineOpen_of_preimage_le_affine : ∀ (R R₁ : Type) [CommRing R] [CommRing R₁] [Algebra R R₁]
    [Module.Finite R R₁] [Module.Free R R₁] [Nontrivial R₁] [IsLocalRing R] (X X₁ : Scheme.{0})
    (p : X ⟶ Sp R) (p₁ : X₁ ⟶ Sp R₁) (b : X₁ ⟶ X), IsPullback b p₁ p (spMap (algebraMap R R₁)) →
    IsSeparated p → QuasiCompact p → ∀ (W : X₁.Opens), IsAffineOpen W → ∀ s : Finset X,
    (∀ z : X₁, b z ∈ s → z ∈ W) → ∃ O : X.Opens, IsAffineOpen O ∧ ∀ x ∈ s, x ∈ O := by
  intro R R₁ _ _ _ _ _ _ _ X X₁ p p₁ b H _ _ W hW s hs
  classical

  have hg : IsFinite (spMap (algebraMap R R₁)) := by
    rw [IsFinite.SpecMap_iff]
    exact RingHom.finite_algebraMap.2 inferInstance
  have hff : Flat (spMap (algebraMap R R₁)) ∧ Surjective (spMap (algebraMap R R₁)) := by
    rw [flat_and_surjective_SpecMap_iff]
    exact RingHom.faithfullyFlat_algebraMap_iff.2 inferInstance
  have : Flat (spMap (algebraMap R R₁)) := hff.1
  have : Surjective (spMap (algebraMap R R₁)) := hff.2
  have : IsFinite b := MorphismProperty.of_isPullback H.flip hg
  have : QuasiSeparatedSpace X := quasiSeparatedSpace_of_quasiSeparated p

  let O' : X.Opens := ⟨(b '' (W : Set X₁)ᶜ)ᶜ, (b.isClosedMap _ W.isOpen.isClosed_compl).isOpen_compl⟩
  have hsO' : ∀ x ∈ s, x ∈ O' := by
    rintro x hx ⟨z, hz, rfl⟩
    exact hz (hs z hx)
  have key : ∀ x ∈ s, ∃ U : X.Opens, IsAffineOpen U ∧ x ∈ U ∧ U ≤ O' := by
    intro x hx
    obtain ⟨U, hU, hxU, hUO⟩ := (TopologicalSpace.Opens.isBasis_iff_nbhd.1 X.isBasis_affineOpens) (hsO' x hx)
    exact ⟨U, hU, hxU, hUO⟩
  choose U hU hxU hUO using key
  let V : X.Opens := ⨆ x : s, U x.1 x.2
  have hVO : V ≤ O' := iSup_le fun x => hUO x.1 x.2
  have hsV : ∀ x ∈ s, x ∈ V := fun x hx => TopologicalSpace.Opens.mem_iSup.2 ⟨⟨x, hx⟩, hxU x hx⟩
  have hVc : IsCompact (V : Set X) := by
    rw [TopologicalSpace.Opens.coe_iSup]
    exact isCompact_iUnion fun x => (hU x.1 x.2).isCompact
  have hVq : IsQuasiSeparated (V : Set X) := IsQuasiSeparated.of_quasiSeparatedSpace _
  have hVW : b ⁻¹ᵁ V ≤ W := by
    intro z hz
    by_contra h
    exact hVO hz ⟨z, h, rfl⟩

  have hfin : (b ⁻¹' (s : Set X)).Finite :=
    s.finite_toSet.preimage' fun x _ => b.finite_preimage_singleton x
  obtain ⟨f, hfV, hft⟩ := _root_.GlobalTheory.Mum.exists_basicOpen_between_finset_and_open X₁ W hW (b ⁻¹ᵁ V) hVW hfin.toFinset
    (fun z hz => hsV _ ((hfin.mem_toFinset).1 hz))
  let f' : Γ(X₁, b ⁻¹ᵁ V) := X₁.presheaf.map (homOfLE hVW).op f
  have hf' : X₁.basicOpen f' = X₁.basicOpen f := by
    rw [Scheme.basicOpen_res]
    exact inf_eq_right.2 hfV
  obtain ⟨n, hn⟩ := _root_.GlobalTheory.Mum.NormBC.exists_norm_basicOpen R R₁ X X₁ p p₁ b H V hVc hVq f'
  refine ⟨X.basicOpen n, ?_, fun x hx => (hn x).2 ⟨hsV x hx, fun z hz => ?_⟩⟩
  swap
  · rw [hf']
    exact hft z ((hfin.mem_toFinset).2 (by simpa [hz] using hx))

  have hle : b ⁻¹ᵁ X.basicOpen n ≤ X₁.basicOpen f := by
    intro z hz
    rw [← hf']
    exact ((hn (b z)).1 hz).2 z rfl
  have hA : IsAffineOpen (b ⁻¹ᵁ X.basicOpen n) := by
    let g : Γ(X₁, X₁.basicOpen f) := X₁.presheaf.map (homOfLE hfV).op (b.app V n)
    have e : X₁.basicOpen g = b ⁻¹ᵁ X.basicOpen n := by
      rw [Scheme.basicOpen_res, ← Scheme.preimage_basicOpen]
      exact inf_eq_right.2 hle
    rw [← e]
    exact (hW.basicOpen f).basicOpen g
  have : IsAffine (b ⁻¹ᵁ X.basicOpen n).toScheme := hA
  exact isAffine_of_isPullback_of_flat_surjective
    ((isPullback_morphismRestrict b (X.basicOpen n)).paste_vert H)

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAffineOpenDescendingFiniteFreeBaseChange =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfSpecializesSemiAbelianSquareSameProjections =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfSpecializesSemiAbelianSquareSameProjections", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.IsAbelianScheme\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteFibreAndEqOfSpecializesOfIsFinite\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFiniteFromSpecResidueFieldCompOfIsClosedOfClosStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem eq_of_specializes_of_fst_eq_of_snd_eq :
    ∀ (R : Type) [CommRing R] [IsLocalRing R] (G : Over (Sp R)) [GrpObj G], IsSemiAbelian G →
      ∀ x : G.left, G.hom x = closedPoint R → IsClosed ({x} : Set G.left) →
      ∀ p q : (G ⊗ G).left, (fst G G).left p = x → (fst G G).left q = x →
        (snd G G).left p = (snd G G).left q → p ⤳ q → p = q := by
  intro R _ _ G _ hG x hx hxc p q hp hq hpq hs
  haveI : Smooth G.hom := hG.smooth
  have hfin : IsFinite (G.left.fromSpecResidueField x ≫ G.hom) := _root_.GlobalTheory.isFinite_fromSpecResidueField_comp_of_isClosed_of_closedPoint R G inferInstance x hx hxc

  let j : pullback (pullback.fst G.hom G.hom) (G.left.fromSpecResidueField x) ⟶ pullback G.hom G.hom :=
    pullback.fst _ _
  let e := pullbackSymmetry (pullback.fst G.hom G.hom) (G.left.fromSpecResidueField x) ≪≫
    pullbackRightPullbackFstIso G.hom G.hom (G.left.fromSpecResidueField x)
  have hk : j ≫ pullback.snd G.hom G.hom = e.hom ≫ pullback.snd _ _ := by
    simp [e, j, pullbackRightPullbackFstIso_hom_snd]
  have hkf : IsFinite (j ≫ pullback.snd G.hom G.hom) := by rw [hk]; infer_instance
  have hr : Set.range j = (pullback.fst G.hom G.hom) ⁻¹' {x} := by
    simp only [j, Scheme.Pullback.range_fst, Scheme.range_fromSpecResidueField]
  obtain ⟨p', rfl⟩ : p ∈ Set.range j := by rw [hr]; exact hp
  obtain ⟨q', rfl⟩ : q ∈ Set.range j := by rw [hr]; exact hq
  have hs' : p' ⤳ q' := (j.isEmbedding.toIsInducing.specializes_iff).mp hs
  have := (GlobalTheory.finite_fibre_and_eq_of_specializes_of_isFinite _ _ _ hkf
    ((j ≫ pullback.snd G.hom G.hom) q')).2 p' q' (by simpa using hpq) rfl hs'
  rw [this]

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfSpecializesSemiAbelianSquareSameProjections =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsClosedImageSndOfSubsetSemiAbelianFibre =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsClosedImageSndOfSubsetSemiAbelianFibre", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.IsAbelianScheme\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFiniteFromSpecResidueFieldCompOfIsClosedOfClosStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

theorem GlobalTheory.Mum.isClosed_image_snd_of_subset_fibre_closedPoint :
    ∀ (R : Type) [CommRing R] [IsLocalRing R] (G : Over (Sp R)) [GrpObj G], IsSemiAbelian G →
      ∀ x : G.left, G.hom x = closedPoint R → IsClosed ({x} : Set G.left) →
      ∀ N : Set (G ⊗ G).left, IsClosed N → N ⊆ (fst G G).left ⁻¹' {x} →
      IsClosed ((snd G G).left '' N) := by
  intro R _ _ G _ hG x hx hxc N hN hNZ
  have hlft : LocallyOfFiniteType G.hom := by
    haveI := hG.smooth; infer_instance
  have hfin : IsFinite (G.left.fromSpecResidueField x ≫ G.hom) :=
    _root_.GlobalTheory.isFinite_fromSpecResidueField_comp_of_isClosed_of_closedPoint R G hlft x hx hxc
  set k := G.left.fromSpecResidueField x
  set f := G.hom
  let i := pullback.snd k (pullback.fst f f)
  have hrange : Set.range i = (pullback.fst f f) ⁻¹' {x} := by
    simp only [i, Scheme.Pullback.range_snd, k, Scheme.range_fromSpecResidueField]
  have hcomp : i ≫ pullback.snd f f =
      (pullbackRightPullbackFstIso f f k).hom ≫ pullback.snd (k ≫ f) f :=
    (pullbackRightPullbackFstIso_hom_snd f f k).symm
  have hcl : IsClosedMap (i ≫ pullback.snd f f) := by
    rw [hcomp]
    haveI := hfin
    haveI : IsFinite (pullback.snd (k ≫ f) f) := inferInstance
    exact ((pullbackRightPullbackFstIso f f k).hom ≫ pullback.snd (k ≫ f) f).isClosedMap
  have hNi : (snd G G).left '' N = (i ≫ pullback.snd f f) '' (i ⁻¹' N) := by
    rw [Scheme.Hom.comp_base, TopCat.coe_comp, Set.image_comp, Set.image_preimage_eq_of_subset]
    · rfl
    · rw [hrange]; exact hNZ
  rw [hNi]
  exact hcl _ (hN.preimage i.continuous)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsClosedImageSndOfSubsetSemiAbelianFibre =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIrreducibleFibreFst =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIrreducibleFibreFst", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.IsAbelianScheme\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IrreducibleSpaceFibreSemiAbelianFieldPoint\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.MoverFibre

theorem isIrreducible_fibre_fst : ∀ (R : Type) [CommRing R] (G : Over (Sp R)) [GrpObj G], IsSemiAbelian G → ∀ x : G.left, IsIrreducible ((fst G G).left ⁻¹' {x}) := by
  intro R _ G _ hG x
  let j := G.left.fromSpecResidueField x
  let p₁ : pullback G.hom G.hom ⟶ G.left := pullback.fst G.hom G.hom
  have hp : (fst G G).left = p₁ := rfl
  have hirr0 := GlobalTheory.SemiAbFibre.irreducibleSpace_fibre _ G hG _ (j ≫ G.hom)
  haveI hirr : IrreducibleSpace (pullback G.hom (j ≫ G.hom) : Scheme.{0}) := hirr0
  let e : pullback G.hom (j ≫ G.hom) ≅ p₁.fiber x :=
    pullbackSymmetry _ _ ≪≫ (pullbackRightPullbackFstIso G.hom G.hom j).symm ≪≫ pullbackSymmetry _ _
  have hr := (IrreducibleSpace.isIrreducible_univ (pullback G.hom (j ≫ G.hom) : Scheme.{0})).image _
      ((e.hom ≫ Scheme.Hom.fiberι p₁ x).continuous.continuousOn)
  rw [Set.image_univ] at hr
  have hrange : Set.range (e.hom ≫ Scheme.Hom.fiberι p₁ x) = Set.range (Scheme.Hom.fiberι p₁ x) := by
    ext y
    constructor
    · rintro ⟨z, rfl⟩
      exact ⟨e.hom z, by rw [Scheme.Hom.comp_apply]⟩
    · rintro ⟨z, rfl⟩
      exact ⟨e.inv z, by rw [Scheme.Hom.comp_apply, ← Scheme.Hom.comp_apply e.inv e.hom, e.inv_hom_id]; rfl⟩
  show IsIrreducible (p₁ ⁻¹' {x})
  rw [← Scheme.Hom.range_fiberι p₁ x, ← hrange]
  exact hr

end GlobalTheory.MoverFibre
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIrreducibleFibreFst =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOpenTranslationsMovingClosedPointsIntoOpen =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOpenTranslationsMovingClosedPointsIntoOpen", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.IsAbelianScheme\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqOfSpecializesSemiAbelianSquareSameProjections\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsClosedImageSndOfSubsetSemiAbelianFibre\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsIrreducibleFibreFst\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum

theorem exists_open_mul_mem : ∀ (R : Type) [CommRing R] [IsLocalRing R] [IsNoetherianRing R] (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ (V : G.left.Opens), (∃ v ∈ V, G.hom v = closedPoint R) → ∀ s : Finset G.left, (∀ x ∈ s, G.hom x = closedPoint R ∧ IsClosed ({x} : Set G.left)) → ∃ O : G.left.Opens, (∃ u ∈ O, G.hom u = closedPoint R) ∧ ∀ (Ω : Type) [Field Ω] (t : Sp Ω ⟶ Sp R) (x a : Over.mk t ⟶ G), (∀ z, x.left z ∈ s) → (∀ z, a.left z ∈ O) → ∀ z, (x * a).left z ∈ V := by
  intro R _ _ _ G _ _ hG V hV s hs
  obtain ⟨v, hvV, hvc⟩ := hV
  set F : Set G.left := G.hom ⁻¹' {closedPoint R} with hFdef
  have hFc : IsClosed F := (isClosed_singleton_closedPoint R).preimage G.hom.continuous
  have hcond : ∀ p : (G ⊗ G).left, G.hom ((snd G G).left p) = G.hom ((fst G G).left p) := fun p => by
    rw [← Scheme.Hom.comp_apply, ← Scheme.Hom.comp_apply]
    exact congrArg (fun h : (G ⊗ G).left ⟶ Sp R => h p) pullback.condition.symm
  have hsurj : ∀ x : G.left, G.hom x = closedPoint R → (snd G G).left '' ((fst G G).left ⁻¹' {x}) = F := by
    intro x hx
    ext w
    constructor
    · rintro ⟨p, hp, rfl⟩
      show G.hom _ = closedPoint R
      rw [hcond p, show (fst G G).left p = x from hp, hx]
    · intro hw
      obtain ⟨p, h1, h2⟩ := Scheme.Pullback.exists_preimage_pullback (f := G.hom) (g := G.hom) x w (hx.trans hw.symm)
      exact ⟨p, h1, h2⟩
  have hmu : ∀ p : (G ⊗ G).left, G.hom (μ[G].left p) = G.hom ((fst G G).left p) := fun p => by
    rw [← Scheme.Hom.comp_apply, ← Scheme.Hom.comp_apply, Over.w μ[G]]
    rfl
  let Ψ : G ⊗ G ⟶ G ⊗ G := lift (fst G G) ((fst G G)⁻¹ * snd G G)
  have hΨ1 : Ψ ≫ fst G G = fst G G := lift_fst _ _
  have hΨ2 : Ψ ≫ μ[G] = snd G G := by
    show fst G G * ((fst G G)⁻¹ * snd G G) = snd G G
    exact mul_inv_cancel_left _ _
  have hmsurj : ∀ x : G.left, G.hom x = closedPoint R → μ[G].left '' ((fst G G).left ⁻¹' {x}) = F := by
    intro x hx
    ext w
    constructor
    · rintro ⟨p, hp, rfl⟩
      show G.hom _ = closedPoint R
      rw [hmu p, show (fst G G).left p = x from hp, hx]
    · intro hw
      obtain ⟨q, hq, rfl⟩ := (hsurj x hx).symm ▸ hw
      refine ⟨Ψ.left q, ?_, ?_⟩
      · show (fst G G).left (Ψ.left q) = x
        rw [← Scheme.Hom.comp_apply, ← Over.comp_left, hΨ1]; exact hq
      · rw [← Scheme.Hom.comp_apply, ← Over.comp_left, hΨ2]
  have hFirr : IsIrreducible F := by
    rw [← hsurj v hvc]
    exact (_root_.GlobalTheory.MoverFibre.isIrreducible_fibre_fst R G hG v).image _ (snd G G).left.continuous.continuousOn
  set gpt := hFirr.genericPoint
  have hgp : IsGenericPoint gpt F := by
    have := hFirr.isGenericPoint_genericPoint_closure
    rwa [hFc.closure_eq] at this

  have gen_of : ∀ (f : (G ⊗ G).left → G.left), Continuous f → ∀ (Z : Set (G ⊗ G).left) (ξ : (G ⊗ G).left),
      IsGenericPoint ξ Z → f '' Z = F → f ξ = gpt := by
    intro f hf Z ξ hξ hZ
    refine IsGenericPoint.eq ?_ hgp
    show closure {f ξ} = F
    apply le_antisymm
    · exact hFc.closure_subset_iff.2 (Set.singleton_subset_iff.2 (hZ ▸ ⟨ξ, hξ.mem, rfl⟩))
    · rw [← hZ, ← hξ.def, ← Set.image_singleton]
      exact image_closure_subset_closure_image hf
  let T : G.left → Set G.left := fun x =>
    (snd G G).left '' ((fst G G).left ⁻¹' {x} ∩ μ[G].left ⁻¹' (V : Set G.left)ᶜ)
  have hTc : ∀ x ∈ s, IsClosed (T x) := by
    intro x hx
    refine _root_.GlobalTheory.Mum.isClosed_image_snd_of_subset_fibre_closedPoint R G hG x (hs x hx).1 (hs x hx).2 _ ?_ Set.inter_subset_left
    exact ((hs x hx).2.preimage (fst G G).left.continuous).inter
      (V.isOpen.isClosed_compl.preimage μ[G].left.continuous)
  have hgpV : gpt ∈ (V : Set G.left) := (hgp.specializes (show v ∈ F from hvc)).mem_open V.isOpen hvV
  have hgpT : ∀ x ∈ s, gpt ∉ T x := by
    intro x hx ⟨n, ⟨hn1, hn2⟩, hn3⟩
    have hZc : IsClosed ((fst G G).left ⁻¹' {x}) := (hs x hx).2.preimage (fst G G).left.continuous
    have hZi := _root_.GlobalTheory.MoverFibre.isIrreducible_fibre_fst R G hG x
    have hξ : IsGenericPoint hZi.genericPoint ((fst G G).left ⁻¹' {x}) := by
      have := hZi.isGenericPoint_genericPoint_closure
      rwa [hZc.closure_eq] at this
    have e2 := gen_of _ (snd G G).left.continuous _ _ hξ (hsurj x (hs x hx).1)
    have em := gen_of _ μ[G].left.continuous _ _ hξ (hmsurj x (hs x hx).1)
    have hnξ : hZi.genericPoint = n :=
      _root_.GlobalTheory.Mum.eq_of_specializes_of_fst_eq_of_snd_eq R G hG x (hs x hx).1 (hs x hx).2 _ _ hξ.mem hn1 (e2.trans hn3.symm) (hξ.specializes hn1)
    exact hn2 (hnξ ▸ em ▸ hgpV)
  refine ⟨⟨(⋃ x ∈ (s : Set G.left), T x)ᶜ,
    isOpen_compl_iff.2 (s.finite_toSet.isClosed_biUnion hTc)⟩, ⟨gpt, ?_, hgp.mem⟩, ?_⟩
  · show gpt ∉ ⋃ x ∈ (s : Set G.left), T x
    simp only [Set.mem_iUnion, not_exists]
    exact fun x hx => hgpT x hx
  · intro Ω _ t x a hx ha z
    by_contra hz
    let q : Over.mk t ⟶ G ⊗ G := lift x a
    have h1 : (fst G G).left (q.left z) = x.left z := by
      rw [← Scheme.Hom.comp_apply, ← Over.comp_left, lift_fst]
    have h2 : (snd G G).left (q.left z) = a.left z := by
      rw [← Scheme.Hom.comp_apply, ← Over.comp_left, lift_snd]
    have h3 : μ[G].left (q.left z) = (x * a).left z := by
      rw [← Scheme.Hom.comp_apply, ← Over.comp_left]; rfl
    have hO := ha z
    simp only [TopologicalSpace.Opens.mem_mk, Set.mem_compl_iff, Set.mem_iUnion, not_exists] at hO
    exact hO (x.left z) (hx z) ⟨q.left z, ⟨h1, by simp only [Set.mem_preimage, Set.mem_compl_iff, h3]; exact hz⟩, h2⟩

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOpenTranslationsMovingClosedPointsIntoOpen =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslateBaseChangeAffineOpen =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslateBaseChangeAffineOpen", "h": "module\n\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.QuasiCompact\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.UniformisationConclusion\npublic import Development.AbelianVarietyTheory.Definitions.Degenerations.AdmissibleBaseOfCompleteDvr\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum

theorem translate_baseChange_affineOpen : ∀ (R R₁ : Type) [CommRing R] [CommRing R₁] (ρ : R →+* R₁) (G : Over (Sp R)) [GrpObj G] (V : G.left.Opens), IsAffineOpen V → ∀ (a : Over.mk (spMap ρ) ⟶ G), ∃ W : (pullback G.hom (spMap ρ)).Opens, IsAffineOpen W ∧ ∀ (Ω : Type) [Field Ω] (z : Sp Ω ⟶ pullback G.hom (spMap ρ)) (t : Sp Ω ⟶ Sp R) (x a' : Over.mk t ⟶ G), x.left = z ≫ pullback.fst _ _ → a'.left = z ≫ pullback.snd _ _ ≫ a.left → (∀ w, (x * a').left w ∈ V) → ∀ w, z w ∈ W := by
  intro R R₁ _ _ ρ G _ V hV a
  let f := spMap ρ
  let G₁ := (Over.pullback f).obj G
  let a₁ : Over.mk (𝟙 (Sp R₁)) ⟶ G₁ :=
    Over.homMk (pullback.lift (f := G.hom) (g := f) a.left (𝟙 (Sp R₁))
      ((Over.w a).trans (Category.id_comp _).symm))
      (by show pullback.lift _ _ _ ≫ pullback.snd G.hom f = 𝟙 _; simp)
  let e : G₁ ⟶ Over.mk (𝟙 (Sp R₁)) := Over.homMk G₁.hom (by simp)
  let c : G₁ ⟶ G₁ := e ≫ a₁
  have hc : ∀ g : G₁ ⟶ G₁, g ≫ c = c := fun g =>
    by rw [← Category.assoc]; congr 1; ext; simp [e]
  let T : G₁ ⟶ G₁ := 𝟙 G₁ * c
  let T' : G₁ ⟶ G₁ := 𝟙 G₁ * c⁻¹
  have h₁ : T ≫ T' = 𝟙 G₁ := by
    simp only [T', MonObj.comp_mul, Category.comp_id, GrpObj.comp_inv, hc, T, mul_inv_cancel_right]
  have h₂ : T' ≫ T = 𝟙 G₁ := by
    simp only [T, MonObj.comp_mul, Category.comp_id, T', hc, inv_mul_cancel_right]
  haveI : IsIso T := ⟨⟨T', h₁, h₂⟩⟩
  haveI : IsIso T.left := Functor.map_isIso (Over.forget _) T
  haveI : IsAffineHom (pullback.fst G.hom f) :=
    isAffineHom_isStableUnderBaseChange.of_isPullback (IsPullback.of_hasPullback G.hom f).flip
      (inferInstanceAs (IsAffineHom (spMap ρ)))
  refine ⟨(T.left ≫ pullback.fst G.hom f) ⁻¹ᵁ V, hV.preimage _, ?_⟩
  intro Ω _ z t x a' hx ha hxa w
  have ht : t = (z ≫ pullback.snd G.hom f) ≫ f := by
    have h0 : x.left ≫ G.hom = t := Over.w x
    rw [← h0, hx, Category.assoc, pullback.condition, Category.assoc]
  subst ht
  let Z : Over (Sp R₁) := Over.mk (z ≫ pullback.snd G.hom f)
  let z' : Z ⟶ G₁ := Over.homMk z (by simp [G₁, Z])
  have key := (isGrpPullback_pullback G f).2 Z z' (z' ≫ c) x a' (by simpa [z'] using hx)
    (by rw [ha]; simp [z', c, e, a₁, G₁, pullback.lift_fst]; rfl)
  have hT : z' * (z' ≫ c) = z' ≫ T := by simp only [T, MonObj.comp_mul, Category.comp_id]
  rw [hT] at key
  have : (z ≫ T.left ≫ pullback.fst G.hom f) w ∈ V := by
    have e2 : z ≫ T.left ≫ pullback.fst G.hom f = (x * a').left := by
      rw [key]; simp [z']
    rw [e2]; exact hxa w
  simpa using this

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslateBaseChangeAffineOpen =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAffineOpenFinsetClosedFibreSemiAbelian =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAffineOpenFinsetClosedFibreSemiAbelian", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThickTransComp\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAffineOpenDescendingFiniteFreeBaseChange\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteEtaleSectionOfSmoothClosedFibreStatement\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.IsAbelianScheme\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsOpenTranslationsMovingClosedPointsIntoOpen\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TranslateBaseChangeAffineOpen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem exists_affine_open_of_finset_closedFibre :
    ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) →
    ∀ (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ s : Finset G.left,
    (∀ x ∈ s, G.hom x = closedPoint R) → ∃ O : G.left.Opens, IsAffineOpen O ∧ ∀ x ∈ s, x ∈ O := by
  intro R _ _ _ hR G _ _ hG s hs
  haveI : IsNoetherianRing R := hR.1
  haveI : QuasiCompact G.hom := hG.quasiCompact
  haveI : IsSeparated G.hom := hG.separated
  haveI : Smooth G.hom := hG.smooth
  haveI : CompactSpace G.left := QuasiCompact.compactSpace_of_compactSpace G.hom

  rcases s.eq_empty_or_nonempty with hs0 | ⟨x₀, hx₀⟩
  · exact ⟨⊥, isAffineOpen_bot _, by simp [hs0]⟩

  have hcl : ∀ x : G.left, ∃ y ∈ closure ({x} : Set G.left), IsClosed ({y} : Set G.left) :=
    fun x => isClosed_closure.exists_closed_singleton ⟨x, subset_closure rfl⟩
  choose f hfx hfc using hcl
  have hsp : ∀ x, x ⤳ f x := fun x => specializes_iff_mem_closure.2 (hfx x)
  have hcp : IsClosed ({closedPoint R} : Set (Sp R)) := isClosed_singleton_closedPoint R
  have hfib : ∀ x ∈ s, G.hom (f x) = closedPoint R := by
    intro x hx
    have h1 : G.hom x ⤳ G.hom (f x) := (hsp x).map G.hom.continuous
    rw [hs x hx] at h1
    have h2 := specializes_iff_mem_closure.1 h1
    exact closure_minimal (subset_refl _) hcp h2
  classical
  let s' : Finset G.left := s.image f
  have hs' : ∀ y ∈ s', G.hom y = closedPoint R ∧ IsClosed ({y} : Set G.left) := by
    intro y hy
    obtain ⟨x, hx, rfl⟩ := Finset.mem_image.1 hy
    exact ⟨hfib x hx, hfc x⟩
  suffices H : ∃ O : G.left.Opens, IsAffineOpen O ∧ ∀ y ∈ s', y ∈ O by
    obtain ⟨O, hO, hyO⟩ := H
    exact ⟨O, hO, fun x hx => (hsp x).mem_open O.2 (hyO _ (Finset.mem_image_of_mem f hx))⟩

  obtain ⟨V, hV, hxV, -⟩ := (TopologicalSpace.Opens.isBasis_iff_nbhd.mp G.left.isBasis_affineOpens)
    (show x₀ ∈ (⊤ : G.left.Opens) from trivial)

  obtain ⟨O, ⟨u, huO, hu⟩, hmove⟩ :=
    _root_.GlobalTheory.Mum.exists_open_mul_mem R G hG V ⟨x₀, hxV, hs x₀ hx₀⟩ s' hs'

  obtain ⟨R₁, _, _, _, ρ, a, hfin, het, ha, haO⟩ :=
    _root_.GlobalTheory.Mum.exists_finEtale_section_of_smooth R hR G hG.smooth O ⟨u, huO, hu⟩
  letI : Algebra R R₁ := ρ.toAlgebra
  haveI : Module.Finite R R₁ := hfin.2.2
  haveI : Algebra.Etale R R₁ := het
  haveI : Module.Flat R R₁ := inferInstance
  haveI : Module.Free R R₁ := Module.free_of_flat_of_isLocalRing

  let A : Over.mk (spMap ρ) ⟶ G := Over.homMk a ha
  obtain ⟨W, hW, hzW⟩ := _root_.GlobalTheory.Mum.translate_baseChange_affineOpen R R₁ ρ G V hV A

  have hpb : IsPullback (pullback.fst G.hom (spMap ρ)) (pullback.snd G.hom (spMap ρ)) G.hom
      (spMap (algebraMap R R₁)) := IsPullback.of_hasPullback G.hom (spMap ρ)
  refine _root_.GlobalTheory.Mum.exists_isAffineOpen_of_preimage_le_affine R R₁ G.left (pullback G.hom (spMap ρ)) G.hom (pullback.snd _ _) (pullback.fst _ _)
    hpb inferInstance inferInstance W hW s' ?_
  intro z hz
  let Ω := (pullback G.hom (spMap ρ)).residueField z
  let z' : Sp Ω ⟶ pullback G.hom (spMap ρ) := (pullback G.hom (spMap ρ)).fromSpecResidueField z
  have hz' : ∀ w, z' w = z := fun w => Scheme.fromSpecResidueField_apply z w
  let t : Sp Ω ⟶ Sp R := z' ≫ pullback.fst _ _ ≫ G.hom
  let x : Over.mk t ⟶ G := Over.homMk (z' ≫ pullback.fst _ _) (by simp [t])
  let a' : Over.mk t ⟶ G := Over.homMk (z' ≫ pullback.snd _ _ ≫ a)
    (by simp only [t, Over.mk_hom, Category.assoc, ha, pullback.condition])
  have hx : ∀ w, x.left w ∈ s' := by
    intro w
    show (z' ≫ pullback.fst _ _) w ∈ s'
    rw [Scheme.Hom.comp_apply, hz']
    exact hz
  have ha' : ∀ w, a'.left w ∈ O := by
    intro w
    show (z' ≫ pullback.snd _ _ ≫ a) w ∈ O
    rw [Scheme.Hom.comp_apply, Scheme.Hom.comp_apply]
    exact haO ⟨_, rfl⟩
  have hV' := hmove Ω t x a' hx ha'
  have := hzW Ω z' t x a' rfl rfl hV' (closedPoint Ω)
  first
    | exact (Scheme.fromSpecResidueField_apply z _) ▸ this

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAffineOpenFinsetClosedFibreSemiAbelian =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedGroupClosedFibreFinsetInAffineOpen =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedGroupClosedFibreFinsetInAffineOpen", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThickTransComp\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsAffineOpenFinsetClosedFibreSemiAbelian\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem finite_closedFibre_subset_isAffineOpen : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R →
    ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G],
    IsSemiAbelian G → ∀ U : Unif (maximalIdeal R) D A G, ∀ s : Finset G.left, (∀ x ∈ s, G.hom x = closedPoint R) →
    ∃ O : G.left.Opens, IsAffineOpen O ∧ ∀ x ∈ s, x ∈ O := by
  intro R _ _ _ hR _ _ G _ _ hG _ s hs
  exact _root_.GlobalTheory.Mum.exists_affine_open_of_finset_closedFibre R hR.1 G hG s hs

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedGroupClosedFibreFinsetInAffineOpen =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGaloisInvariantNbhdClosedFibre =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGaloisInvariantNbhdClosedFibre", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.QuasiCompact\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UniformisedGroupClosedFibreFinsetInAffineOpen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem exists_invariant_nbhd_of_orbits {X : Scheme.{0}} [X.IsSeparated] {Γ : Type} [Group Γ] [Finite Γ]
    (act : Γ → (X ⟶ X)) (act_one : act 1 = 𝟙 X) (act_mul : ∀ σ τ, act (σ * τ) = act σ ≫ act τ)
    (Z : Set X) (hZ : IsCompact Z)
    (horb : ∀ z ∈ Z, ∃ O : X.Opens, IsAffineOpen O ∧ ∀ σ, act σ z ∈ O) :
    ∃ H : X.Opens, (∀ σ, act σ ⁻¹ᵁ H = H) ∧ (∀ z ∈ Z, z ∈ H) ∧ IsCompact (H : Set X) ∧
      (∀ x ∈ H, ∃ O : X.Opens, IsAffineOpen O ∧ O ≤ H ∧ ∀ σ, act σ x ∈ O) := by
  classical
  have hiso : ∀ σ, IsIso (act σ) := fun σ =>
    ⟨act σ⁻¹, by rw [← act_mul, mul_inv_cancel, act_one], by rw [← act_mul, inv_mul_cancel, act_one]⟩
  have hmul : ∀ σ τ (x : X), act (σ * τ) x = act τ (act σ x) := fun σ τ x => by
    rw [act_mul, Scheme.Hom.comp_apply]
  have hone : ∀ x : X, act 1 x = x := fun x => by rw [act_one]; rfl
  have hW : ∀ z : Z, ∃ V : X.Opens, IsAffineOpen V ∧ z.1 ∈ V ∧ ∀ σ, ∀ x ∈ V, act σ x ∈ V := by
    intro z
    obtain ⟨O, hO, hz⟩ := horb z.1 z.2
    have hmem : ∀ x : X, x ∈ (⨅ σ, act σ ⁻¹ᵁ O) ↔ ∀ σ, act σ x ∈ O := fun x => by
      rw [← SetLike.mem_coe, TopologicalSpace.Opens.coe_iInf, Set.mem_iInter]
      rfl
    refine ⟨⨅ σ, act σ ⁻¹ᵁ O, IsAffineOpen.iInf fun σ => ?_, (hmem _).2 hz, fun σ x hx => (hmem _).2 fun τ => ?_⟩
    · have := hiso σ
      exact hO.preimage (act σ)
    · rw [← hmul]
      exact (hmem _).1 hx _
  choose V hV hzV hVa using hW
  obtain ⟨t, ht⟩ := hZ.elim_finite_subcover (fun z : Z => (V z : Set X)) (fun z => (V z).isOpen)
    (fun z hz => Set.mem_iUnion.2 ⟨⟨z, hz⟩, hzV ⟨z, hz⟩⟩)
  have hH : ∀ x : X, x ∈ (⨆ z ∈ t, V z) ↔ ∃ z ∈ t, x ∈ V z := fun x => by
    simp
  refine ⟨⨆ z ∈ t, V z, fun σ => ?_, fun z hz => ?_, ?_, fun x hx => ?_⟩
  · ext x
    change act σ x ∈ (⨆ z ∈ t, V z) ↔ x ∈ (⨆ z ∈ t, V z)
    rw [hH, hH]
    refine ⟨fun ⟨z, hz, hx⟩ => ⟨z, hz, ?_⟩, fun ⟨z, hz, hx⟩ => ⟨z, hz, hVa z σ x hx⟩⟩
    have := hVa z σ⁻¹ _ hx
    rwa [← hmul, mul_inv_cancel, hone] at this
  · rw [hH]
    simpa using ht hz
  · have : ((⨆ z ∈ t, V z : X.Opens) : Set X) = ⋃ z ∈ t, (V z : Set X) := by
      ext x
      rw [SetLike.mem_coe, hH]
      simp
    rw [this]
    exact t.isCompact_biUnion fun z _ => (hV z).isCompact
  · obtain ⟨z, hz, hx⟩ := (hH x).1 hx
    exact ⟨V z, hV z, fun y hy => (hH y).2 ⟨z, hz, hy⟩, fun σ => hVa z σ x hx⟩

theorem eq_closedPoint_of_finite {R R' : Type} [CommRing R] [IsLocalRing R] [CommRing R'] [IsLocalRing R']
    {ρ : R →+* R'} (hρ : ρ.Finite) (p : Sp R') (hp : spMap ρ p = closedPoint R) : p = closedPoint R' := by
  have h₁ : Ideal.comap ρ (PrimeSpectrum.asIdeal p) = maximalIdeal R := congrArg PrimeSpectrum.asIdeal hp
  have h₂ : (PrimeSpectrum.asIdeal p).IsMaximal := by
    have := PrimeSpectrum.isPrime p
    refine Ideal.isMaximal_of_isIntegral_of_isMaximal_comap' ρ hρ.to_isIntegral _ ?_
    rw [h₁]
    infer_instance
  exact PrimeSpectrum.ext (eq_maximalIdeal h₂)

theorem exists_invariant_nbhd_closedFibre : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (R' : Type) [CommRing R'] [IsDomain R'] [IsLocalRing R'] (ρ : R →+* R'), FinExt ρ → IsGal ρ → ∀ (D : DegData R (maximalIdeal R)) (D' : DegData R' (maximalIdeal R')) (hD : IsPullDeg ρ D.toPre D'.toPre) (A' : PolAV (Sp (FractionRing R'))) (G' : Over (Sp R')) [GrpObj G'] [IsCommMonObj G'], IsSemiAbelian G' → ∀ (U' : Unif (maximalIdeal R') D' A' G') (a : GalAct ρ hD U'), ∃ H : G'.left.Opens, (∀ σ, a.act σ ⁻¹ᵁ H = H) ∧ (∀ g : G'.left, spMap ρ (G'.hom g) = closedPoint R → g ∈ H) ∧ IsCompact (H : Set G'.left) ∧ (∀ x ∈ H, ∃ O : G'.left.Opens, IsAffineOpen O ∧ O ≤ H ∧ ∀ σ, a.act σ x ∈ O) := by
  intro R _ _ _ hR R' _ _ _ ρ hρ hG D D' hD A' G' _ _ hS U' a
  classical
  have := hR.2
  have hR' : Base R' := ⟨hρ.1, charZero_of_injective_ringHom hρ.2.1⟩
  have := hG.1
  have := Fintype.ofFinite (Gal ρ)
  have := hS.separated
  have := hS.quasiCompact
  have : G'.left.IsSeparated := ⟨by
    rw [← terminal.comp_from G'.hom]
    infer_instance⟩
  have : CompactSpace G'.left := QuasiCompact.compactSpace_of_compactSpace G'.hom
  have hover : ∀ (σ : Gal ρ) (g : G'.left), spMap ρ (G'.hom (a.act σ g)) = spMap ρ (G'.hom g) := fun σ g => by
    have h₁ : a.act σ ≫ G'.hom = G'.hom ≫ spMap (Gal.hom σ) := (a.cart σ).1.w
    have h₂ : spMap (Gal.hom σ) ≫ spMap ρ = spMap ρ := by
      rw [← Spec.map_comp]
      congr 1
      ext r
      exact σ.2 r
    rw [← Scheme.Hom.comp_apply (a.act σ), h₁, Scheme.Hom.comp_apply, ← Scheme.Hom.comp_apply (spMap (Gal.hom σ)), h₂]
  have hZ : IsClosed {g : G'.left | spMap ρ (G'.hom g) = closedPoint R} :=
    (isClosed_singleton_closedPoint R).preimage ((spMap ρ).continuous.comp G'.hom.continuous)
  refine exists_invariant_nbhd_of_orbits a.act a.act_one a.act_mul _ hZ.isCompact fun z hz => ?_
  obtain ⟨O, hO, h⟩ := _root_.GlobalTheory.Mum.finite_closedFibre_subset_isAffineOpen R' hR' D' A' G' hS U' (Finset.univ.image fun σ => a.act σ z) (fun x hx => by
    obtain ⟨σ, -, rfl⟩ := Finset.mem_image.1 hx
    exact eq_closedPoint_of_finite hρ.2.2 _ ((hover σ z).trans hz))
  exact ⟨O, hO, fun σ => h _ (Finset.mem_image.2 ⟨σ, Finset.mem_univ _, rfl⟩)⟩

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGaloisInvariantNbhdClosedFibre =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGaloisQuotientInvariantOpen =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGaloisQuotientInvariantOpen", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.QuasiCompact\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsQuotientOfFiniteGroup\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem exists_quotient_of_invariant_open {Γ : Type} [Group Γ] [Finite Γ] {Y S : Scheme.{0}} (act : Γ → (Y ⟶ Y))
    (h1 : act 1 = 𝟙 _) (hm : ∀ σ τ, act (σ * τ) = act σ ≫ act τ) (s : Y ⟶ S) (hs : ∀ σ, act σ ≫ s = s)
    (H : Y.Opens) (hH : ∀ σ, act σ ⁻¹ᵁ H = H)
    (hO : ∀ x ∈ H, ∃ O : Y.Opens, IsAffineOpen O ∧ O ≤ H ∧ ∀ σ, act σ x ∈ O) :
    ∃ (X : Over S) (π : H.toScheme ⟶ X.left), π ≫ X.hom = H.ι ≫ s ∧ IsAffineHom π ∧ Surjective π ∧
      (∀ σ, (act σ).resLE H H (hH σ).ge ≫ π = π) ∧
      (∀ x y : H.toScheme, π x = π y → ∃ σ, act σ (H.ι x) = H.ι y) ∧
      ∀ V : X.left.Opens, Function.Injective (π.app V).hom ∧ ∀ f : Γ(H.toScheme, π ⁻¹ᵁ V),
        (∀ σ (h : π ⁻¹ᵁ V ≤ ((act σ).resLE H H (hH σ).ge) ⁻¹ᵁ (π ⁻¹ᵁ V)),
          (((act σ).resLE H H (hH σ).ge).appLE _ _ h).hom f = f) → f ∈ Set.range (π.app V).hom := by
  let r : Γ → (H.toScheme ⟶ H.toScheme) := fun σ => (act σ).resLE H H (hH σ).ge
  have hr : ∀ σ, r σ ≫ H.ι = H.ι ≫ act σ := fun σ => Scheme.Hom.resLE_comp_ι _ _
  have r1 : r 1 = 𝟙 _ := by
    rw [← cancel_mono H.ι, hr, h1, Category.id_comp, Category.comp_id]
  have rm : ∀ σ τ, r (σ * τ) = r σ ≫ r τ := fun σ τ => by
    rw [← cancel_mono H.ι, hr, hm, Category.assoc, hr, reassoc_of% hr]
  let ρ : Γ →* Aut H.toScheme := MonoidHom.mk'
    (fun σ => ⟨r σ⁻¹, r σ, by rw [← rm, inv_mul_cancel, r1], by rw [← rm, mul_inv_cancel, r1]⟩)
    (fun σ τ => Aut.ext (Iso.ext (show r (σ * τ)⁻¹ = r τ⁻¹ ≫ r σ⁻¹ by rw [mul_inv_rev, rm])))
  have hρ : ∀ σ, (ρ σ).asIso.hom = r σ⁻¹ := fun _ => rfl
  have hρ' : ∀ σ, r σ = (ρ σ⁻¹).asIso.hom := fun σ => by rw [hρ, inv_inv]
  have hpt : ∀ σ (x : H.toScheme), H.ι (r σ x) = act σ (H.ι x) := fun σ x => congr($(hr σ) x)
  have : OrbitsInAffineOpens ρ := ⟨fun x => by
    obtain ⟨O, hO₁, hO₂, hO₃⟩ := hO (H.ι x) x.2
    refine ⟨H.ι ⁻¹ᵁ O, hO₁.preimage_of_isOpenImmersion H.ι (by rwa [Scheme.Opens.opensRange_ι]), fun g => ?_⟩
    change H.ι (r g⁻¹ x) ∈ O
    rw [hpt]
    exact hO₃ _⟩
  obtain ⟨X', π, hπ⟩ := QuotientGluing.exists_isAffineQuotient ρ
  have hinv : ∀ g, (ρ g).asIso.hom ≫ H.ι ≫ s = H.ι ≫ s := fun g => by
    rw [hρ, reassoc_of% hr, hs]
  refine ⟨Over.mk (hπ.desc (H.ι ≫ s) hinv), π, hπ.comp_desc _ hinv, hπ.isAffineHom, hπ.surjective, fun σ => ?_,
    fun x y hxy => ?_, fun V => ⟨hπ.app_injective V, fun f hf => ?_⟩⟩
  · exact (congrArg (· ≫ π) (hρ' σ)).trans (hπ.comp_eq _)
  · obtain ⟨g, rfl⟩ := (hπ.apply_eq_iff x y).mp hxy
    exact ⟨g⁻¹, (hpt _ _).symm⟩
  · exact hπ.mem_range_app V f fun g => ⟨hπ.preimage_le V g, hf g⁻¹ _⟩

theorem exists_galois_quotient : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (R' : Type) [CommRing R'] [IsDomain R'] [IsLocalRing R'] (ρ : R →+* R'), FinExt ρ → IsGal ρ → ∀ (D : DegData R (maximalIdeal R)) (D' : DegData R' (maximalIdeal R')) (hD : IsPullDeg ρ D.toPre D'.toPre) (A' : PolAV (Sp (FractionRing R'))) (G' : Over (Sp R')) [GrpObj G'] [IsCommMonObj G'], IsSemiAbelian G' → ∀ (U' : Unif (maximalIdeal R') D' A' G') (a : GalAct ρ hD U'), ∀ (H : G'.left.Opens) (hH : ∀ σ, a.act σ ⁻¹ᵁ H = H), (∀ x ∈ H, ∃ O : G'.left.Opens, IsAffineOpen O ∧ O ≤ H ∧ ∀ σ, a.act σ x ∈ O) → ∃ (X : Over (Sp R)) (π : H.toScheme ⟶ X.left), π ≫ X.hom = H.ι ≫ G'.hom ≫ spMap ρ ∧ IsAffineHom π ∧ Surjective π ∧ (∀ σ, (a.act σ).resLE H H (hH σ).ge ≫ π = π) ∧ (∀ x y : H.toScheme, π x = π y → ∃ σ, a.act σ (H.ι x) = H.ι y) ∧ ∀ V : X.left.Opens, Function.Injective (π.app V).hom ∧ ∀ f : Γ(H.toScheme, π ⁻¹ᵁ V), (∀ σ (h : π ⁻¹ᵁ V ≤ ((a.act σ).resLE H H (hH σ).ge) ⁻¹ᵁ (π ⁻¹ᵁ V)), (((a.act σ).resLE H H (hH σ).ge).appLE _ _ h).hom f = f) → f ∈ Set.range (π.app V).hom := by
  intro R _ _ _ _ R' _ _ _ ρ _ hG D D' hD A' G' _ _ _ U' a H hH hO
  have := hG.1
  refine exists_quotient_of_invariant_open a.act a.act_one a.act_mul (G'.hom ≫ spMap ρ) (fun σ => ?_) H hH hO
  have e : spMap (Gal.hom σ) ≫ spMap ρ = spMap ρ := by
    rw [← Spec.map_comp]
    congr 1
    ext x
    exact σ.2 x
  rw [← Category.assoc, (a.cart σ).1.w, Category.assoc, e]

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGaloisQuotientInvariantOpen =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GlueLocalDescentsNearClosedFibreGalois =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.GlueLocalDescentsNearClosedFibreGalois", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.QuasiCompact\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum.GlueNear

theorem isPullback_iSup {Y X S S' : Scheme.{0}} (π : Y ⟶ X) (q : X ⟶ S) (t : Y ⟶ S') (f : S' ⟶ S)
    {I : Type} (V : I → X.Opens)
    (h : ∀ i, IsPullback (π ∣_ V i) ((π ⁻¹ᵁ V i).ι ≫ t) ((V i).ι ≫ q) f) :
    IsPullback (π ∣_ (⨆ i, V i)) ((π ⁻¹ᵁ (⨆ i, V i)).ι ≫ t) ((⨆ i, V i).ι ≫ q) f := by
  refine Scheme.isPullback_of_openCover _ _ _ _ (Scheme.Opens.iSupOpenCover V) fun (i : I) => ?_
  have e : V i ≤ ⨆ i, V i := le_iSup V i
  have sq : IsPullback (Y.homOfLE (π.preimage_mono e)) (π ∣_ V i) (π ∣_ (⨆ i, V i)) (X.homOfLE e) := by
    refine IsPullback.of_right (h₁₂ := (π ⁻¹ᵁ (⨆ i, V i)).ι) (h₂₂ := (⨆ i, V i).ι) (v₁₃ := π) ?_ ?_
      (isPullback_morphismRestrict π _).flip
    · simpa using (isPullback_morphismRestrict π (V i)).flip
    · rw [← cancel_mono (⨆ i, V i).ι]; simp
  refine (h i).of_iso sq.isoPullback (Iso.refl _) (Iso.refl _) (Iso.refl _) ?_ ?_ ?_ ?_
  · exact (Category.comp_id _).trans sq.isoPullback_hom_snd.symm
  · refine (Category.comp_id _).trans ?_
    refine Eq.trans ?_ (Category.assoc _ _ _)
    erw [sq.isoPullback_hom_fst]
    simp
  · change _ = 𝟙 _ ≫ X.homOfLE e ≫ _
    simp
  · simp

theorem smooth_iSup {X S : Scheme.{0}} (q : X ⟶ S) {I : Type} (V : I → X.Opens)
    (h : ∀ i, Smooth ((V i).ι ≫ q)) : Smooth ((⨆ i, V i).ι ≫ q) := by
  have : IsZariskiLocalAtSource @Smooth := HasRingHomProperty.instIsZariskiLocalAtSource
  refine IsZariskiLocalAtSource.of_openCover (P := @Smooth) (Scheme.Opens.iSupOpenCover V) fun (i : I) => ?_
  change Smooth (X.homOfLE (le_iSup V i) ≫ _)
  simpa using h i

theorem exists_near {R : Type} [CommRing R] [IsLocalRing R] {S : Scheme.{0}} (f : S ⟶ Sp R) [IsFinite f] [Surjective f]
    (G : Over S) [IsSeparated G.hom] (H : G.left.Opens)
    (hcl : ∀ g : G.left, f (G.hom g) = closedPoint R → g ∈ H) (hc : IsCompact (H : Set G.left))
    (X : Over (Sp R)) (π : H.toScheme ⟶ X.left)
    (hloc : ∀ x : H.toScheme, f (G.hom (H.ι x)) = closedPoint R → ∃ V : X.left.Opens, π x ∈ V ∧ IsAffineOpen V ∧
      Smooth (V.ι ≫ X.hom) ∧ IsPullback (π ∣_ V) ((π ⁻¹ᵁ V).ι ≫ H.ι ≫ G.hom) (V.ι ≫ X.hom) f) :
    ∃ N : Near f G, ∀ (α : G.left ⟶ G.left) (β : S ⟶ S) (hα : H ≤ α ⁻¹ᵁ H), α ≫ G.hom = G.hom ≫ β →
      α.resLE H H hα ≫ π = π →
      ∀ (T : Scheme.{0}) (s : T ⟶ S) (u : T ⟶ N.U.left) (x : T ⟶ G.left), N.Pt s u x → N.Pt (s ≫ β) u (x ≫ α) := by
  classical
  have : CompactSpace H.toScheme := isCompact_iff_compactSpace.mp hc
  let Z : Set H.toScheme := {x | f (G.hom (H.ι x)) = closedPoint R}
  have hZ : IsCompact Z := by
    refine IsClosed.isCompact ?_
    exact (isClosed_singleton_closedPoint R).preimage
      (f.continuous.comp (G.hom.continuous.comp H.ι.continuous))
  choose V hV hVa hVs hVp using fun x : Z => hloc x.1 x.2
  obtain ⟨t, ht⟩ := hZ.elim_finite_subcover (fun x : Z => ((π ⁻¹ᵁ V x : H.toScheme.Opens) : Set H.toScheme))
    (fun x => (π ⁻¹ᵁ V x).isOpen) (fun x hx => Set.mem_iUnion.2 ⟨⟨x, hx⟩, hV ⟨x, hx⟩⟩)
  let W : t → X.left.Opens := fun i => V i.1
  have P := isPullback_iSup π X.hom (H.ι ≫ G.hom) f W fun i => hVp i.1
  have hS := smooth_iSup X.hom W fun i => hVs i.1
  have hC : IsCompact ((⨆ i, W i : X.left.Opens) : Set X.left) := by
    rw [TopologicalSpace.Opens.coe_iSup]
    exact isCompact_iUnion fun i => (hVa i.1).isCompact
  have hA : ∀ x ∈ Z, π x ∈ ⨆ i, W i := by
    intro x hx
    obtain ⟨i, hi, hx⟩ := Set.mem_iUnion₂.1 (ht hx)
    exact TopologicalSpace.Opens.mem_iSup.2 ⟨⟨i, hi⟩, hx⟩
  generalize (⨆ i, W i) = U at P hS hC hA
  have : CompactSpace U.toScheme := isCompact_iff_compactSpace.mp hC
  have hq : QuasiCompact (U.ι ≫ X.hom) := (quasiCompact_iff_compactSpace _).2 inferInstance
  have hsep : IsSeparated (U.ι ≫ X.hom) := by
    have h₁ : IsFinite (π ∣_ U) := MorphismProperty.of_isPullback (P := @IsFinite) P.flip inferInstance
    have h₂ : Surjective (π ∣_ U) := MorphismProperty.of_isPullback (P := @Surjective) P.flip inferInstance
    have h₃ : IsSeparated (π ∣_ U ≫ U.ι ≫ X.hom) := by rw [P.w]; infer_instance
    exact _root_.GlobalTheory.NilProper.isSeparated_of_comp_surjective (π ∣_ U) _
  let N : Near f G :=
    { U := Over.mk (U.ι ≫ X.hom)
      smooth := hS
      separated := hsep
      quasiCompact := hq
      u := P.isoPullback.inv ≫ (π ⁻¹ᵁ U).ι ≫ H.ι
      isOpen := inferInstanceAs (IsOpenImmersion (P.isoPullback.inv ≫ (π ⁻¹ᵁ U).ι ≫ H.ι))
      u_over := (Category.assoc _ _ _).trans
        ((congrArg (P.isoPullback.inv ≫ ·) (Category.assoc _ _ _)).trans P.isoPullback_inv_snd)
      all := by
        intro g hg
        refine ⟨P.isoPullback.hom ⟨⟨g, hcl g hg⟩, hA ⟨g, hcl g hg⟩ hg⟩, ?_⟩
        change (P.isoPullback.hom ≫ P.isoPullback.inv ≫ (π ⁻¹ᵁ U).ι ≫ H.ι) _ = g
        rw [Iso.hom_inv_id_assoc]
        rfl }
  have pt : ∀ {T : Scheme.{0}} (s : T ⟶ S) (u : T ⟶ U.toScheme) (x : T ⟶ G.left), N.Pt s u x ↔
      ∃ y : T ⟶ (π ⁻¹ᵁ U).toScheme, y ≫ π ∣_ U = u ∧ y ≫ (π ⁻¹ᵁ U).ι ≫ H.ι ≫ G.hom = s ∧
        y ≫ (π ⁻¹ᵁ U).ι ≫ H.ι = x := by
    intro T s u x
    constructor
    · rintro ⟨x₀, h₁, h₂, h₃⟩
      refine ⟨x₀ ≫ P.isoPullback.inv, ?_, ?_, ?_⟩
      · exact (Category.assoc _ _ _).trans ((congrArg (x₀ ≫ ·) P.isoPullback_inv_fst).trans h₁)
      · exact (Category.assoc _ _ _).trans ((congrArg (x₀ ≫ ·) P.isoPullback_inv_snd).trans h₂)
      · exact (Category.assoc _ _ _).trans h₃
    · rintro ⟨y, h₁, h₂, h₃⟩
      refine ⟨y ≫ P.isoPullback.hom, ?_, ?_, ?_⟩
      · exact (Category.assoc _ _ _).trans ((congrArg (y ≫ ·) P.isoPullback_hom_fst).trans h₁)
      · exact (Category.assoc _ _ _).trans ((congrArg (y ≫ ·) P.isoPullback_hom_snd).trans h₂)
      · exact (Category.assoc _ _ _).trans ((congrArg (y ≫ ·) (P.isoPullback.hom_inv_id_assoc _)).trans h₃)
  refine ⟨N, fun α β hα hαβ hπ T s u x hx => ?_⟩
  obtain ⟨y, rfl, rfl, rfl⟩ := (pt s u x).1 hx
  have Q := isPullback_morphismRestrict π U
  let δ : (π ⁻¹ᵁ U).toScheme ⟶ (π ⁻¹ᵁ U).toScheme :=
    Q.lift (π ∣_ U) ((π ⁻¹ᵁ U).ι ≫ α.resLE H H hα) (by rw [Category.assoc, hπ, Q.w])
  have hδ : δ ≫ (π ⁻¹ᵁ U).ι ≫ H.ι = (π ⁻¹ᵁ U).ι ≫ H.ι ≫ α := by
    rw [Q.lift_snd_assoc, Category.assoc, Scheme.Hom.resLE_comp_ι]
  refine (pt _ _ _).2 ⟨y ≫ δ, ?_, ?_, ?_⟩
  · rw [Category.assoc, Q.lift_fst]
  · simp only [Category.assoc]
    rw [reassoc_of% hδ, hαβ]
  · simp only [Category.assoc]
    rw [hδ]

theorem glue_near : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (R' : Type) [CommRing R'] [IsDomain R'] [IsLocalRing R'] (ρ : R →+* R'), FinExt ρ → IsGal ρ → ∀ (D : DegData R (maximalIdeal R)) (D' : DegData R' (maximalIdeal R')) (hD : IsPullDeg ρ D.toPre D'.toPre) (A' : PolAV (Sp (FractionRing R'))) (G' : Over (Sp R')) [GrpObj G'] [IsCommMonObj G'], IsSemiAbelian G' → ∀ (U' : Unif (maximalIdeal R') D' A' G') (a : GalAct ρ hD U'), ∀ (H : G'.left.Opens) (hH : ∀ σ, a.act σ ⁻¹ᵁ H = H), (∀ g : G'.left, spMap ρ (G'.hom g) = closedPoint R → g ∈ H) → IsCompact (H : Set G'.left) → ∀ (X : Over (Sp R)) (π : H.toScheme ⟶ X.left) (hX : π ≫ X.hom = H.ι ≫ G'.hom ≫ spMap ρ), IsAffineHom π → Surjective π → (∀ σ, (a.act σ).resLE H H (hH σ).ge ≫ π = π) → (∀ x y : H.toScheme, π x = π y → ∃ σ, a.act σ (H.ι x) = H.ι y) → (∀ V : X.left.Opens, Function.Injective (π.app V).hom ∧ ∀ f : Γ(H.toScheme, π ⁻¹ᵁ V), (∀ σ (h : π ⁻¹ᵁ V ≤ ((a.act σ).resLE H H (hH σ).ge) ⁻¹ᵁ (π ⁻¹ᵁ V)), (((a.act σ).resLE H H (hH σ).ge).appLE _ _ h).hom f = f) → f ∈ Set.range (π.app V).hom) → (∀ x : H.toScheme, spMap ρ (G'.hom (H.ι x)) = closedPoint R → ∃ V : X.left.Opens, π x ∈ V ∧ IsAffineOpen V ∧ Smooth (V.ι ≫ X.hom) ∧ IsIso (pullback.lift (π.resLE V (π ⁻¹ᵁ V) le_rfl) ((π ⁻¹ᵁ V).ι ≫ H.ι ≫ G'.hom) (by rw [Scheme.Hom.resLE_comp_ι_assoc, hX]; simp only [Category.assoc]) : (π ⁻¹ᵁ V).toScheme ⟶ pullback (V.ι ≫ X.hom) (spMap ρ))) → ∃ N : Near (spMap ρ) G', (∀ σ (T : Scheme.{0}) (s : T ⟶ Sp R') (u : T ⟶ N.U.left) (x : T ⟶ G'.left), N.Pt s u x → N.Pt (s ≫ spMap (Gal.hom σ)) u (x ≫ a.act σ)) := by
  intro R _ _ _ _ R' _ _ _ ρ hρ _ D D' hD A' G' _ _ hG U' a H hH hcl hc X π hX _ _ hπ _ _ hloc
  have := hG.separated
  have : IsFinite (spMap ρ) := (IsFinite.SpecMap_iff _).2 hρ.2.2
  have : Surjective (spMap ρ) := ⟨RingHom.IsIntegral.comap_surjective hρ.2.2.to_isIntegral hρ.2.1⟩
  obtain ⟨N, hN⟩ := exists_near (spMap ρ) G' H hcl hc X π fun x hx => by
    obtain ⟨V, h₁, h₂, h₃, h₄⟩ := hloc x hx
    refine ⟨V, h₁, h₂, h₃, ?_⟩
    rw [← Scheme.Hom.resLE_eq_morphismRestrict]
    refine IsPullback.of_iso_pullback ⟨?_⟩ (@asIso _ _ _ _ _ h₄) (pullback.lift_fst _ _ _) (pullback.lift_snd _ _ _)
    rw [Scheme.Hom.resLE_comp_ι_assoc, hX]
    simp only [Category.assoc]
  exact ⟨N, fun σ => hN (a.act σ) _ (hH σ).ge (a.cart σ).1.w (hπ σ)⟩

end GlobalTheory.Mum.GlueNear
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GlueLocalDescentsNearClosedFibreGalois =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GroupLawDescendsGaloisInvariantOpen =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.GroupLawDescendsGaloisInvariantOpen", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.QuasiCompact\npublic import Development.AbelianVarietyTheory.Definitions.ShimuraVarieties.IsDomainAndIsIntegrallyClosedLocalizationOfIsInv\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Morphisms.WeaklyEtale\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum.LawDesc

section

variable {R : Type} [CommRing R] [IsLocalRing R] {S : Scheme.{0}} {π : S ⟶ Sp R} {G : Over S} (N : Near π G)

theorem pt_unique {T : Scheme.{0}} {s : T ⟶ S} {a : T ⟶ N.U.left} {x x' : T ⟶ G.left}
    (h : N.Pt s a x) (h' : N.Pt s a x') : x = x' := by
  obtain ⟨x₀, h₁, h₂, rfl⟩ := h
  obtain ⟨x₁, h₃, h₄, rfl⟩ := h'
  rw [pullback.hom_ext (h₁.trans h₃.symm) (h₂.trans h₄.symm)]

theorem pt_unique_left {T : Scheme.{0}} {s s' : T ⟶ S} {a a' : T ⟶ N.U.left} {x : T ⟶ G.left}
    (h : N.Pt s a x) (h' : N.Pt s' a' x) : a = a' := by
  obtain ⟨x₀, rfl, -, h₂⟩ := h
  obtain ⟨x₁, rfl, -, h₄⟩ := h'
  have := N.isOpen
  rw [(cancel_mono N.u).1 (h₂.trans h₄.symm)]

theorem pt_comp {T T' : Scheme.{0}} (k : T' ⟶ T) {s : T ⟶ S} {a : T ⟶ N.U.left} {x : T ⟶ G.left}
    (h : N.Pt s a x) : N.Pt (k ≫ s) (k ≫ a) (k ≫ x) := by
  obtain ⟨x₀, rfl, rfl, rfl⟩ := h
  exact ⟨k ≫ x₀, Category.assoc _ _ _, Category.assoc _ _ _, Category.assoc _ _ _⟩

theorem pt_over {T : Scheme.{0}} {s : T ⟶ S} {a : T ⟶ N.U.left} {x : T ⟶ G.left}
    (h : N.Pt s a x) : s ≫ π = a ≫ N.U.hom := by
  obtain ⟨x₀, rfl, rfl, -⟩ := h
  rw [Category.assoc, Category.assoc, pullback.condition]

theorem pt_exists {T : Scheme.{0}} {s : T ⟶ S} {a : T ⟶ N.U.left} (h : s ≫ π = a ≫ N.U.hom) :
    ∃ x : Over.mk s ⟶ G, N.Pt s a x.left :=
  ⟨Over.homMk (pullback.lift a s h.symm ≫ N.u) (by
      change (pullback.lift a s h.symm ≫ N.u) ≫ G.hom = s
      rw [Category.assoc, N.u_over, pullback.lift_snd]),
    pullback.lift a s h.symm, pullback.lift_fst _ _ _, pullback.lift_snd _ _ _, rfl⟩

variable [GrpObj G]

def Prod {T : Scheme.{0}} (s : T ⟶ S) (v : T ⟶ (N.U ⊗ N.U).left) (z : T ⟶ G.left) : Prop :=
  ∃ x y : Over.mk s ⟶ G, N.Pt s (v ≫ (fst N.U N.U).left) x.left ∧ N.Pt s (v ≫ (snd N.U N.U).left) y.left ∧
    (x * y).left = z

theorem prod_exists {T : Scheme.{0}} {s : T ⟶ S} {v : T ⟶ (N.U ⊗ N.U).left} (h : s ≫ π = v ≫ (N.U ⊗ N.U).hom) :
    ∃ z, Prod N s v z := by
  obtain ⟨x, hx⟩ := pt_exists N (s := s) (a := v ≫ (fst N.U N.U).left)
    (by rw [h, Category.assoc]; exact congrArg (v ≫ ·) (Over.w (fst N.U N.U)).symm)
  obtain ⟨y, hy⟩ := pt_exists N (s := s) (a := v ≫ (snd N.U N.U).left)
    (by rw [h, Category.assoc]; exact congrArg (v ≫ ·) (Over.w (snd N.U N.U)).symm)
  exact ⟨_, x, y, hx, hy, rfl⟩

theorem prod_unique {T : Scheme.{0}} {s : T ⟶ S} {v : T ⟶ (N.U ⊗ N.U).left} {z z' : T ⟶ G.left}
    (h : Prod N s v z) (h' : Prod N s v z') : z = z' := by
  obtain ⟨x, y, hx, hy, rfl⟩ := h
  obtain ⟨x', y', hx', hy', rfl⟩ := h'
  obtain rfl : x = x' := Over.OverMorphism.ext (pt_unique N hx hx')
  obtain rfl : y = y' := Over.OverMorphism.ext (pt_unique N hy hy')
  rfl

theorem prod_over {T : Scheme.{0}} {s : T ⟶ S} {v : T ⟶ (N.U ⊗ N.U).left} {z : T ⟶ G.left}
    (h : Prod N s v z) : z ≫ G.hom = s := by
  obtain ⟨x, y, -, -, rfl⟩ := h
  exact Over.w (x * y)

theorem prod_comp {T T' : Scheme.{0}} (k : T' ⟶ T) {s : T ⟶ S} {v : T ⟶ (N.U ⊗ N.U).left} {z : T ⟶ G.left}
    (h : Prod N s v z) : Prod N (k ≫ s) (k ≫ v) (k ≫ z) := by
  obtain ⟨x, y, hx, hy, rfl⟩ := h
  let k' : Over.mk (k ≫ s) ⟶ Over.mk s := Over.homMk k rfl
  refine ⟨k' ≫ x, k' ≫ y, ?_, ?_, ?_⟩
  · rw [Category.assoc]; exact pt_comp N k hx
  · rw [Category.assoc]; exact pt_comp N k hy
  · rw [← comp_mul]; rfl

theorem prod_act {c : S ⟶ S} {φ : G.left ⟶ G.left} (hφ : IsGrpPullback G G c φ)
    (hN : ∀ (T : Scheme.{0}) (s : T ⟶ S) (u : T ⟶ N.U.left) (x : T ⟶ G.left),
      N.Pt s u x → N.Pt (s ≫ c) u (x ≫ φ))
    {T : Scheme.{0}} {s : T ⟶ S} {v : T ⟶ (N.U ⊗ N.U).left} {z : T ⟶ G.left}
    (h : Prod N s v z) : Prod N (s ≫ c) v (z ≫ φ) := by
  obtain ⟨x, y, hx, hy, rfl⟩ := h
  have hx' := hN _ _ _ _ hx
  have hy' := hN _ _ _ _ hy
  obtain ⟨x₀, hx₀⟩ := pt_exists N (pt_over N hx')
  obtain ⟨y₀, hy₀⟩ := pt_exists N (pt_over N hy')
  exact ⟨x₀, y₀, hx₀, hy₀, hφ.2 (Over.mk s) x y x₀ y₀ (pt_unique N hx₀ hx') (pt_unique N hy₀ hy')⟩

theorem law_of_isAffineQuotient {Γ : Type} [Group Γ] [Finite Γ] {α : Γ →* Aut S} (hq : IsAffineQuotient α π)
    (φ : Γ → (G.left ⟶ G.left)) (hφ : ∀ g, IsGrpPullback G G (α g).asIso.hom (φ g))
    (hN : ∀ g (T : Scheme.{0}) (s : T ⟶ S) (u : T ⟶ N.U.left) (x : T ⟶ G.left),
      N.Pt s u x → N.Pt (s ≫ (α g).asIso.hom) u (x ≫ φ g)) : N.Law := by
  have := N.smooth
  have := N.isOpen
  have hy : Flat (N.U ⊗ N.U).hom := by
    change Flat (pullback.fst N.U.hom N.U.hom ≫ N.U.hom)
    infer_instance
  have quot : ∀ {Y : Scheme.{0}} (y : Y ⟶ Sp R) [Flat y],
      IsAffineQuotient (pullbackAction α π hq.comp_eq y) (pullback.snd π y) := fun y _ =>
    hq.of_isPullback (IsPullback.of_hasPullback π y) (pullbackAction_fst α π hq.comp_eq y)
      (pullbackAction_snd α π hq.comp_eq y)
  have equiv : ∀ {Y : Scheme.{0}} (y : Y ⟶ Sp R) (j : Y ⟶ (N.U ⊗ N.U).left) (z : pullback π y ⟶ G.left),
      Prod N (pullback.fst π y) (pullback.snd π y ≫ j) z →
      ∀ g, (pullbackAction α π hq.comp_eq y g).asIso.hom ≫ z = z ≫ φ g := fun y j z hz g => by
    have h₁ := prod_comp N (pullbackAction α π hq.comp_eq y g).asIso.hom hz
    rw [pullbackAction_fst, pullbackAction_snd_assoc] at h₁
    exact prod_unique N h₁ (prod_act N (hφ g) (hN g) hz)
  obtain ⟨z₀, hz₁⟩ := prod_exists N (pullback.condition (f := π) (g := (N.U ⊗ N.U).hom))
  have hrange : ∀ g, pullback.map N.U.hom π N.U.hom π (𝟙 _) (α g).asIso.hom (𝟙 _) (by simp) (by simp [hq.comp_eq]) ≫ N.u
      = N.u ≫ φ g := fun g => by
    refine pt_unique N (s := pullback.snd N.U.hom π ≫ (α g).asIso.hom) (a := pullback.fst N.U.hom π)
      ⟨_, ?_, pullback.lift_snd _ _ _, rfl⟩
      (hN g _ _ _ _ ⟨𝟙 _, Category.id_comp _, Category.id_comp _, Category.id_comp _⟩)
    exact (pullback.lift_fst _ _ _).trans (Category.comp_id _)
  obtain ⟨V, hV⟩ := (quot (N.U ⊗ N.U).hom).exists_preimage_eq (U := z₀ ⁻¹ᵁ N.u.opensRange) fun g w hw => by
    obtain ⟨w', hw'⟩ := hw
    change ((pullbackAction α π hq.comp_eq (N.U ⊗ N.U).hom g).asIso.hom ≫ z₀) w ∈ Set.range N.u
    rw [equiv _ (𝟙 _) z₀ (by rw [Category.comp_id]; exact hz₁) g, Scheme.Hom.comp_apply, ← hw',
      ← Scheme.Hom.comp_apply, ← hrange g, Scheme.Hom.comp_apply]
    exact ⟨_, rfl⟩
  let y : V.toScheme ⟶ Sp R := V.ι ≫ (N.U ⊗ N.U).hom
  let k : pullback π y ⟶ pullback π (N.U ⊗ N.U).hom :=
    pullback.lift (pullback.fst π y) (pullback.snd π y ≫ V.ι) (by rw [pullback.condition, Category.assoc])
  have hk : k ≫ pullback.snd _ _ = pullback.snd π y ≫ V.ι := pullback.lift_snd _ _ _
  have hz : Prod N (pullback.fst π y) (pullback.snd π y ≫ V.ι) (k ≫ z₀) := by
    have := prod_comp N k hz₁
    rwa [hk, pullback.lift_fst] at this
  have hsub : Set.range (k ≫ z₀) ⊆ Set.range N.u := by
    rintro _ ⟨w, rfl⟩
    have : k w ∈ pullback.snd π (N.U ⊗ N.U).hom ⁻¹ᵁ V := by
      change (k ≫ pullback.snd π (N.U ⊗ N.U).hom) w ∈ V
      rw [hk, Scheme.Hom.comp_apply]
      exact (pullback.snd π y w).2
    rw [hV] at this
    exact this
  let l := IsOpenImmersion.lift N.u (k ≫ z₀) hsub
  have hl : l ≫ N.u = k ≫ z₀ := IsOpenImmersion.lift_fac _ _ _
  have hf : N.Pt (pullback.fst π y) (l ≫ pullback.fst _ _) (k ≫ z₀) :=
    ⟨l, rfl, by rw [← N.u_over, ← Category.assoc, hl, prod_over N hz], hl⟩
  obtain ⟨m, hm⟩ := (quot y).exists_comp_eq (l ≫ pullback.fst _ _) fun g => by
    have h₁ := pt_comp N (pullbackAction α π hq.comp_eq y g).asIso.hom hf
    rw [equiv y V.ι _ hz g] at h₁
    exact pt_unique_left N h₁ (hN g _ _ _ _ hf)
  refine ⟨V, m, fun z hz₀ => ?_, (quot y).hom_ext ?_, fun T v s a b ha hb => ?_⟩
  · obtain ⟨w, rfl⟩ := (quot (N.U ⊗ N.U).hom).surjective.surj z
    change w ∈ pullback.snd π (N.U ⊗ N.U).hom ⁻¹ᵁ V
    rw [hV]
    refine N.all (z₀ w) ?_
    rw [← hz₀, ← Scheme.Hom.comp_apply z₀, prod_over N hz₁, ← Scheme.Hom.comp_apply, pullback.condition,
      Scheme.Hom.comp_apply]
  · rw [← Category.assoc, hm, ← pt_over N hf, pullback.condition]
  · have hs : s ≫ π = v ≫ y := by
      rw [pt_over N ha, Category.assoc, Category.assoc]
      exact congrArg (fun t => v ≫ V.ι ≫ t) (Over.w (fst N.U N.U))
    have h₁ := pt_comp N (pullback.lift s v hs) hf
    have h₂ := prod_comp N (pullback.lift s v hs) hz
    rw [pullback.lift_fst, pullback.lift_snd_assoc] at h₂
    have h₃ : Prod N s (v ≫ V.ι) (a * b).left :=
      ⟨a, b, by rw [Category.assoc]; exact ha, by rw [Category.assoc]; exact hb, rfl⟩
    rw [← hm, pullback.lift_fst, pullback.lift_snd_assoc, prod_unique N h₂ h₃] at h₁
    exact h₁

end

end GlobalTheory.Mum.LawDesc

namespace GlobalTheory.Mum

theorem law_of_galAct_invariant : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (R' : Type) [CommRing R'] [IsDomain R'] [IsLocalRing R'] (ρ : R →+* R'), FinExt ρ → IsGal ρ → ∀ (D : DegData R (maximalIdeal R)) (D' : DegData R' (maximalIdeal R')) (hD : IsPullDeg ρ D.toPre D'.toPre) (A' : PolAV (Sp (FractionRing R'))) (G' : Over (Sp R')) [GrpObj G'] [IsCommMonObj G'], IsSemiAbelian G' → ∀ (U' : Unif (maximalIdeal R') D' A' G') (a : GalAct ρ hD U'), ∀ N : Near (spMap ρ) G', (∀ σ (T : Scheme.{0}) (s : T ⟶ Sp R') (u : T ⟶ N.U.left) (x : T ⟶ G'.left), N.Pt s u x → N.Pt (s ≫ spMap (Gal.hom σ)) u (x ≫ a.act σ)) → N.Law := by
  intro R _ _ _ _ R' _ _ _ ρ hρ hG D D' hD A' G' _ _ _ U' a N hN
  have := hG.1
  let _ : Algebra R R' := ρ.toAlgebra
  let _ : MulSemiringAction (R' ≃+* R') R' := RingAut.applyMulSemiringAction
  let _ : MulSemiringAction (Gal ρ) R' := Subgroup.mulSemiringAction _
  have : SMulCommClass (Gal ρ) R R' := ⟨fun σ r x => by
    change σ.1 (ρ r * x) = ρ r * σ.1 x
    rw [map_mul, σ.2 r]⟩
  have : FaithfulSMul R R' := (faithfulSMul_iff_algebraMap_injective _ _).2 hρ.2.1
  have : Algebra.IsInvariant R R' (Gal ρ) := ⟨fun x hx => hG.2 x fun σ hσ => hx ⟨σ, hσ⟩⟩
  have hq : IsAffineQuotient (specAction (Gal ρ) R') (spMap ρ) := isAffineQuotient_spec R R'
  have e : ∀ σ : Gal ρ, (specAction (Gal ρ) R' σ).asIso.hom = spMap (Gal.hom σ⁻¹) := fun σ => by
    rw [specAction_hom]; rfl
  refine LawDesc.law_of_isAffineQuotient N hq (fun σ => a.act σ⁻¹) (fun σ => ?_) fun σ => ?_
  · rw [e]; exact a.cart σ⁻¹
  · rw [e]; exact hN σ⁻¹

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GroupLawDescendsGaloisInvariantOpen =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNearGaloisQuotient =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNearGaloisQuotient", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.QuasiCompact\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGaloisInvariantNbhdClosedFibre\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsGaloisQuotientInvariantOpen\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GaloisQuotientSmoothBaseChangeIsoClosedFibreStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GlueLocalDescentsNearClosedFibreGalois\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GroupLawDescendsGaloisInvariantOpen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum

theorem exists_near_galois_quotient : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], Base R → ∀ (R' : Type) [CommRing R'] [IsDomain R'] [IsLocalRing R'] (ρ : R →+* R'), FinExt ρ → IsGal ρ → ∀ (D : DegData R (maximalIdeal R)) (D' : DegData R' (maximalIdeal R')) (hD : IsPullDeg ρ D.toPre D'.toPre) (A' : PolAV (Sp (FractionRing R'))) (G' : Over (Sp R')) [GrpObj G'] [IsCommMonObj G'], IsSemiAbelian G' → ∀ (U' : Unif (maximalIdeal R') D' A' G') (a : GalAct ρ hD U'), ∃ N : Near (spMap ρ) G', N.Law ∧ ∀ σ (T : Scheme.{0}) (s : T ⟶ Sp R') (u : T ⟶ N.U.left) (x : T ⟶ G'.left), N.Pt s u x → N.Pt (s ≫ spMap (Gal.hom σ)) u (x ≫ a.act σ) := by
  intro R _ _ _ hR R' _ _ _ ρ hF hG D D' hD A' G' _ _ hS U' a
  obtain ⟨H, hH, hall, hc, horb⟩ := _root_.GlobalTheory.Mum.exists_invariant_nbhd_closedFibre R hR R' ρ hF hG D D' hD A' G' hS U' a
  obtain ⟨X, π, hX, h1, h2, h3, h4, h5⟩ := _root_.GlobalTheory.Mum.exists_galois_quotient R hR R' ρ hF hG D D' hD A' G' hS U' a H hH horb
  obtain ⟨N, hN⟩ := _root_.GlobalTheory.Mum.GlueNear.glue_near R hR R' ρ hF hG D D' hD A' G' hS U' a H hH hall hc X π hX h1 h2 h3 h4 h5
    (_root_.GlobalTheory.Mum.quotient_smooth_and_baseChange_iso R hR R' ρ hF hG D D' hD A' G' hS U' a H hH horb X π hX h1 h2 h3 h4 h5)
  exact ⟨N, _root_.GlobalTheory.Mum.law_of_galAct_invariant R hR R' ρ hF hG D D' hD A' G' hS U' a N hN, hN⟩

end GlobalTheory.Mum
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNearGaloisQuotient =====
