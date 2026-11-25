module

public import Mathlib.RingTheory.IntegralClosure.IntegrallyClosed
public import Mathlib.RingTheory.LocalRing.ResidueField.Defs
public import Mathlib.RingTheory.LocalRing.ResidueField.Basic
public import Mathlib.RingTheory.Localization.Submodule
public import Development.AbelianVarietyTheory.Definitions.Degenerations.InducedModelMorphismCompStructureMap
public import Mathlib.RingTheory.AdicCompletion.Basic
public import Mathlib.RingTheory.LocalRing.Defs
public import Mathlib.RingTheory.Noetherian.Defs
public import Mathlib.RingTheory.AdicCompletion.Functoriality
public import Mathlib.RingTheory.Filtration
public import Mathlib.NumberTheory.Padics.RingHoms
public import Mathlib.RingTheory.AdicCompletion.Algebra
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsNoetherianRingAdicCompletionOfNoetherian
public import Mathlib.RingTheory.AdicCompletion.LocalRing
public import Mathlib.RingTheory.Ideal.Quotient.Index
public import Mathlib.NumberTheory.Padics.Complex
public import Mathlib.NumberTheory.Padics.PadicIntegers
public import Mathlib.RingTheory.LocalRing.MaximalIdeal.Defs
public import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsValuationSubringLiftOfSpecialFibre
public import Development.AbelianVarietyTheory.Definitions.Degenerations.ArithBase
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.FiniteResidueFieldOfIsClosedOfLocallyOfFiniteTyp
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLeSpanSupPow
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsSpecializesIsLocalization
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CompletionIsDomainAndIsIntegrallyClosed
public import Development.AbelianVarietyTheory.Definitions.Divisors.NonUnitAt
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
import Mathlib.RingTheory.Radical.NatInt
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
import Development.AbelianVarietyTheory.Definitions.Divisors.IsThetaCompact
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.NormNatCastOfCoprime
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Order.CompletePartialOrder
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.Tactic.Linter.Style
import Mathlib.Algebra.Order.Star.Real
import Mathlib.RingTheory.AdicCompletion.Noetherian
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsNatDiagIffIsDiag
import Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDominatingLocalDomainEqMulMaximal, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNonzeroClassicalPointOfLocalHomAvoiding, Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.FiniteOfFiniteQuotMapOfIsPrecomplete, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFinitePadicIntDomainEmbedding, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsInjectiveNormLeOne, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPrimeNotMemForallGtEqMaximalIdeal, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRingHomPadicAlgClNeZero, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ModelLocalRingEssFiniteTypeInt, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ModelLocalRingResidueFieldFiniteOfClosedPoint, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IInfIzumiSmallValueIdealMapLeSpan, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IzumiBoundModPrincipalIdeal

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDominatingLocalDomainEqMulMaximal =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDominatingLocalDomainEqMulMaximal", "h": "module\n\npublic import Mathlib.RingTheory.IntegralClosure.IntegrallyClosed\npublic import Mathlib.RingTheory.LocalRing.ResidueField.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.RingTheory.LocalRing.ResidueField.Basic\npublic import Mathlib.RingTheory.Localization.Submodule\n\n"}
section -- clump:auto
@[expose] public section

open IsLocalRing Polynomial

namespace GlobalTheory.Izumi

theorem exists_dominating_of_residue_map {R S : Type} [CommRing R] [IsLocalRing R]
    [CommRing S] [IsDomain S] [IsNoetherianRing S] (j : R →+* S) (hj : Function.Injective j)
    (φ : S →+* ResidueField R) (hφ : ∀ r, φ (j r) = residue R r) (f G : R) (u : S)
    (hu : φ u = 0) (hf : j f = j G * u) :
    ∃ (B : Type) (_ : CommRing B) (_ : IsDomain B) (_ : IsLocalRing B) (_ : IsNoetherianRing B)
      (ι : R →+* B), Function.Injective ι ∧ IsLocalHom ι ∧
      (∀ b : B, ∃ r : R, b - ι r ∈ maximalIdeal B) ∧ ∃ u ∈ maximalIdeal B, ι f = ι G * u := by
  have hsurj : Function.Surjective φ := fun y => by
    obtain ⟨r, rfl⟩ := residue_surjective y
    exact ⟨j r, hφ r⟩
  haveI hmax : (RingHom.ker φ).IsMaximal := RingHom.ker_isMaximal_of_surjective φ hsurj
  let B := Localization.AtPrime (RingHom.ker φ)
  have hmem : ∀ s : S, algebraMap S B s ∈ maximalIdeal B ↔ φ s = 0 := fun s => by
    rw [IsLocalization.AtPrime.to_map_mem_maximal_iff B (RingHom.ker φ), RingHom.mem_ker]
  haveI : IsNoetherianRing B :=
    IsLocalization.isNoetherianRing (RingHom.ker φ).primeCompl B inferInstance
  refine ⟨B, inferInstance, inferInstance, inferInstance, inferInstance,
    (algebraMap S B).comp j, ?_, ⟨fun r hr => ?_⟩, fun b => ?_, algebraMap S B u,
    (hmem u).2 hu, ?_⟩
  · exact (IsLocalization.injective B (RingHom.ker φ).primeCompl_le_nonZeroDivisors).comp hj
  · by_contra h
    have h1 : φ (j r) = 0 := by
      rw [hφ, residue_eq_zero_iff]; exact h
    exact (hmem _).2 h1 hr
  · obtain ⟨⟨s, t⟩, rfl⟩ := IsLocalization.mk'_surjective (RingHom.ker φ).primeCompl b
    have ht : φ t ≠ 0 := t.2
    obtain ⟨r, hr⟩ := residue_surjective (φ s / φ t)
    refine ⟨r, ?_⟩
    have hunit : IsUnit (algebraMap S B t) := IsLocalization.map_units B t
    rw [← Ideal.unit_mul_mem_iff_mem _ hunit, mul_sub]
    dsimp only
    rw [IsLocalization.mk'_spec', RingHom.comp_apply, ← map_mul, ← map_sub, hmem, map_sub,
      map_mul, hφ, hr, mul_div_cancel₀ _ ht, sub_self]
  · simp [hf]

theorem coeff_zero_mem_maximalIdeal_of_aeval_div {R : Type} [CommRing R] [IsDomain R]
    [IsLocalRing R] [IsIntegrallyClosed R] (f G : R) (h : G ∉ Ideal.span {f}) (P : R[X])
    (hP : aeval (algebraMap R (FractionRing R) f / algebraMap R (FractionRing R) G) P = 0) :
    P.coeff 0 ∈ maximalIdeal R := by
  by_contra hc
  have hunit : IsUnit (P.coeff 0) := by
    simpa [mem_maximalIdeal] using hc
  have hinj := IsFractionRing.injective R (FractionRing R)
  have hG : G ≠ 0 := by rintro rfl; exact h (zero_mem _)
  have hG' : algebraMap R (FractionRing R) G ≠ 0 := (map_ne_zero_iff _ hinj).2 hG
  have hf : f ≠ 0 := by
    rintro rfl
    rw [map_zero, zero_div, ← coeff_zero_eq_aeval_zero'] at hP
    exact hunit.ne_zero ((map_eq_zero_iff _ hinj).1 hP)
  have hf' : algebraMap R (FractionRing R) f ≠ 0 := (map_ne_zero_iff _ hinj).2 hf
  set u := algebraMap R (FractionRing R) f / algebraMap R (FractionRing R) G with hu
  have hu0 : u ≠ 0 := div_ne_zero hf' hG'
  letI := invertibleOfNonzero hu0
  have hrev : aeval (⅟u) P.reverse = 0 := by
    rw [aeval_def, eval₂_reverse_eq_zero_iff]; exact hP
  have hint := isIntegral_leadingCoeff_smul P.reverse (⅟u) hrev
  rw [reverse_leadingCoeff, trailingCoeff_eq_coeff_zero hunit.ne_zero] at hint
  obtain ⟨r, hr⟩ := IsIntegrallyClosed.isIntegral_iff.1 hint
  apply h
  rw [← Ideal.unit_mul_mem_iff_mem _ hunit, Ideal.mem_span_singleton']
  refine ⟨r, hinj ?_⟩
  rw [map_mul, map_mul, hr, invOf_eq_inv, hu, Algebra.smul_def]
  field_simp

theorem exists_dominating_eq_mul_of_not_mem_span :
    ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] [IsNoetherianRing R]
      [IsIntegrallyClosed R] (f G : R), G ∉ Ideal.span {f} →
      ∃ (B : Type) (_ : CommRing B) (_ : IsDomain B) (_ : IsLocalRing B) (_ : IsNoetherianRing B)
        (ι : R →+* B), Function.Injective ι ∧ IsLocalHom ι ∧
        (∀ b : B, ∃ r : R, b - ι r ∈ maximalIdeal B) ∧ ∃ u ∈ maximalIdeal B, ι f = ι G * u := by
  intro R _ _ _ _ _ f G h
  have hinj := IsFractionRing.injective R (FractionRing R)
  have hG : G ≠ 0 := by rintro rfl; exact h (zero_mem _)
  have hG' : algebraMap R (FractionRing R) G ≠ 0 := (map_ne_zero_iff _ hinj).2 hG
  let u := algebraMap R (FractionRing R) f / algebraMap R (FractionRing R) G
  let e : R[X] →+* FractionRing R := (aeval u : R[X] →ₐ[R] FractionRing R)
  have he : ∀ P, e P = aeval u P := fun _ => rfl
  haveI : (RingHom.ker e).IsPrime := RingHom.ker_isPrime e
  let φ : (R[X] ⧸ RingHom.ker e) →+* ResidueField R :=
    Ideal.Quotient.lift _ ((residue R).comp constantCoeff) fun P hP => by
      rw [RingHom.comp_apply, residue_eq_zero_iff]
      exact coeff_zero_mem_maximalIdeal_of_aeval_div f G h P hP
  refine exists_dominating_of_residue_map ((Ideal.Quotient.mk (RingHom.ker e)).comp C) ?_ φ ?_
    f G (Ideal.Quotient.mk _ X) ?_ ?_
  · rw [injective_iff_map_eq_zero]
    intro r hr
    rw [RingHom.comp_apply, Ideal.Quotient.eq_zero_iff_mem, RingHom.mem_ker, he, aeval_C] at hr
    exact (map_eq_zero_iff _ hinj).1 hr
  · intro r; simp [φ]
  · simp [φ]
  · rw [RingHom.comp_apply, RingHom.comp_apply, ← map_mul, Ideal.Quotient.eq, RingHom.mem_ker, he]
    simp only [map_sub, map_mul, aeval_C, aeval_X, u]
    field_simp
    ring

end GlobalTheory.Izumi
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDominatingLocalDomainEqMulMaximal =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNonzeroClassicalPointOfLocalHomAvoiding =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNonzeroClassicalPointOfLocalHomAvoiding", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Degenerations.InducedModelMorphismCompStructureMap\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsThetaCompact\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory GlobalTheory.ZH GlobalTheory.Poinc

noncomputable section

namespace GlobalTheory.Izumi

theorem exists_point_of_isLocalHom {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω] (M : RatModel o Ω) (x : M.Z)
    {p : ℕ} [Fact p.Prime] (χ : M.O x →+* OO p) [IsLocalHom χ] :
    ∃ y : Sp (OO p) ⟶ M.Z, y (cPt p) = x ∧ ∀ a : M.O x,
      RatModel.val M (gPt p ≫ y) (a : Ω) = ((χ a : OO p) : PadicAlgCl p) := by
  let χ' : M.Z.presheaf.stalk x ⟶ CommRingCat.of (OO p) :=
    CommRingCat.ofHom (χ.comp (M.stalkEquiv x).toRingHom)
  haveI : IsLocalHom χ'.hom := by
    refine ⟨fun a ha => ?_⟩
    have h1 : IsUnit (M.stalkEquiv x a) := isUnit_of_map_unit χ _ ha
    exact (MulEquiv.isUnit_map (M.stalkEquiv x).toMulEquiv).1 h1
  set y : Sp (OO p) ⟶ M.Z := Spec.map χ' ≫ M.Z.fromSpecStalk x with hy
  have hc : y (cPt p) = x := by
    rw [hy, Scheme.Hom.comp_apply, Spec_closedPoint, Scheme.fromSpecStalk_closedPoint]
  have key : ∀ h : y (cPt p) ⤳ x, M.Z.presheaf.stalkSpecializes h ≫ Scheme.stalkClosedPointTo y = χ' := by
    intro h
    refine TopCat.Presheaf.stalk_hom_ext _ fun W hxW => ?_
    rw [← Category.assoc, TopCat.Presheaf.germ_stalkSpecializes]
    exact Scheme.germ_stalkClosedPointTo_Spec_fromSpecStalk χ' W _
  refine ⟨y, hc, fun a => ?_⟩
  rw [RatModel.val_gPt hc a]
  change (((M.Z.presheaf.stalkSpecializes _ ≫ Scheme.stalkClosedPointTo y).hom
    ((M.stalkEquiv x).symm a) : OO p) : PadicAlgCl p) = _
  rw [key]
  exact congrArg (fun b => ((χ b : OO p) : PadicAlgCl p)) ((M.stalkEquiv x).apply_symm_apply a)

theorem exists_ne_zero_forall_exists_cen (o Ω : Type) [CommRing o] [Field Ω] [Algebra o Ω] (M : RatModel o Ω)
    (U : M.Z.Opens) (hU : (U : Set M.Z).Nonempty) (x : M.Z) :
    ∃ s : M.O x, s ≠ 0 ∧ ∀ (p : ℕ) [Fact p.Prime] (χ : M.O x →+* OO p), IsLocalHom χ → χ s ≠ 0 →
      ∃ y : Sp (OO p) ⟶ M.Z, M.Cen U x y ∧ ∀ a : M.O x,
        RatModel.val M (gPt p ≫ y) (a : Ω) = ((χ a : OO p) : PadicAlgCl p) := by
  obtain ⟨V, hV, hxV, -⟩ := exists_isAffineOpen_mem_and_subset (U := ⊤) (x := x) trivial
  obtain ⟨w, hwU, hwV⟩ := M.nonempty_inf hU ⟨x, hxV⟩
  obtain ⟨t, htU, hwt⟩ := hV.exists_basicOpen_le (V := U) ⟨w, hwU⟩ hwV
  have ht0 : valF M.pt V t ≠ 0 :=
    ((RatModel.isUnit_O_iff _).1 ((RatModel.isUnit_valF_iff hwV t).2 hwt)).1
  refine ⟨⟨valF M.pt V t, RatModel.valF_mem_O hxV t⟩, fun h => ht0 (congrArg Subtype.val h), ?_⟩
  intro p _ χ hχ hs
  obtain ⟨y, hc, hval⟩ := exists_point_of_isLocalHom M x χ
  refine ⟨y, ⟨hc, ?_⟩, hval⟩
  rintro _ ⟨w', rfl⟩
  have hz : (gPt p ≫ y) w' ∈ V := (RatModel.gPt_specializes hc w').mem_open V.isOpen hxV
  have hne : M.val (gPt p ≫ y) (valF M.pt V t) ≠ 0 := by
    have e := hval ⟨valF M.pt V t, RatModel.valF_mem_O hxV t⟩
    rw [e]
    intro h0
    exact hs (Subtype.ext h0)
  have hu := (RatModel.val_ne_zero_iff (RatModel.range_eq_singleton _ w')
    ⟨valF M.pt V t, RatModel.valF_mem_O hz t⟩).1 hne
  exact htU ((RatModel.isUnit_valF_iff hz t).1 hu)

end GlobalTheory.Izumi
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNonzeroClassicalPointOfLocalHomAvoiding =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.FiniteOfFiniteQuotMapOfIsPrecomplete =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.FiniteOfFiniteQuotMapOfIsPrecomplete", "h": "module\n\npublic import Mathlib.RingTheory.AdicCompletion.Basic\npublic import Mathlib.RingTheory.LocalRing.Defs\npublic import Mathlib.RingTheory.Noetherian.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.AdicCompletion.Functoriality\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.RingTheory.Filtration\n\n"}
section -- clump:auto
@[expose] public section

open IsLocalRing

namespace GlobalTheory

theorem nak_mem_smul_top_pi {R : Type} [CommRing R] {ι : Type} [Fintype ι] [DecidableEq ι]
    (J : Ideal R) (x : ι → R) :
    x ∈ J • (⊤ : Submodule R (ι → R)) ↔ ∀ i, x i ∈ J := by
  constructor
  · intro hx
    refine Submodule.smul_induction_on (p := fun x => ∀ i, x i ∈ J) hx ?_ ?_
    · intro a ha m _ i; exact J.mul_mem_right _ ha
    · intro a b ha hb i; exact J.add_mem (ha i) (hb i)
  · intro hx
    rw [show x = ∑ i, x i • Pi.single i (1 : R) by
      ext j; simp [Finset.sum_apply, Pi.single_apply]]
    exact Submodule.sum_mem _ fun i _ => Submodule.smul_mem_smul (hx i) Submodule.mem_top

theorem nak_isPrecomplete_pi {R : Type} [CommRing R] {ι : Type} [Fintype ι] [DecidableEq ι]
    (I : Ideal R) [IsPrecomplete I R] : IsPrecomplete I (ι → R) := by
  have key : ∀ k (x : ι → R), x ∈ I ^ k • (⊤ : Submodule R (ι → R)) ↔
      ∀ i, x i ∈ I ^ k • (⊤ : Submodule R R) := by
    intro k x
    rw [nak_mem_smul_top_pi]
    simp only [smul_eq_mul, Ideal.mul_top]
  refine ⟨fun f hf => ?_⟩
  have hc : ∀ i, ∃ l : R, ∀ n, f n i ≡ l [SMOD (I ^ n • ⊤ : Submodule R R)] := by
    intro i
    refine IsPrecomplete.prec' (fun n => f n i) fun {m n} hmn => ?_
    have := (hf hmn)
    rw [SModEq.sub_mem] at this ⊢
    exact (key m _).1 this i
  choose l hl using hc
  refine ⟨l, fun n => ?_⟩
  rw [SModEq.sub_mem, key]
  intro i
  exact SModEq.sub_mem.1 (hl i n)

theorem finite_of_finite_quot_map_of_isPrecomplete :
    ∀ (O A : Type) [CommRing O] [CommRing A] [IsLocalRing A] [IsNoetherianRing A] [Algebra O A]
      (J : Ideal O) [IsPrecomplete J O], J.map (algebraMap O A) ≠ ⊤ →
      Module.Finite O (A ⧸ J.map (algebraMap O A)) → Module.Finite O A := by
  intro O A _ _ _ _ _ J _ hJ hfin
  have hsm : ∀ n : ℕ, (J ^ n • (⊤ : Submodule O A)) =
      Submodule.restrictScalars O ((J.map (algebraMap O A)) ^ n) := by
    intro n
    rw [Ideal.smul_top_eq_map, Ideal.map_pow]
  have hH : IsHausdorff J A := by
    refine ⟨fun x hx => ?_⟩
    have : x ∈ ⨅ n : ℕ, (J.map (algebraMap O A)) ^ n := by
      rw [Submodule.mem_iInf]
      intro n
      have h1 := SModEq.sub_mem.1 (hx n)
      rw [sub_zero, hsm n] at h1
      exact h1
    rw [Ideal.iInf_pow_eq_bot_of_isLocalRing _ hJ] at this
    exact this
  set I := J.map (algebraMap O A) with hI
  obtain ⟨r, s, hs⟩ := Module.Finite.exists_fin (R := O) (M := A ⧸ I)
  choose s' hs' using fun i => Ideal.Quotient.mk_surjective (s i)
  have : IsPrecomplete J (Fin r → O) := nak_isPrecomplete_pi _
  have hsurj : Function.Surjective ((J • (⊤ : Submodule O A)).mkQ ∘ₗ
      Fintype.linearCombination O s') := by
    intro y
    obtain ⟨x, rfl⟩ := Submodule.Quotient.mk_surjective _ y
    have hx : (Ideal.Quotient.mk I x) ∈ Submodule.span O (Set.range s) := by
      rw [hs]; exact Submodule.mem_top
    obtain ⟨c, hc⟩ := (Submodule.mem_span_range_iff_exists_fun O).1 hx
    refine ⟨c, ?_⟩
    have hq : Ideal.Quotient.mk I (Fintype.linearCombination O s' c) = Ideal.Quotient.mk I x := by

      rw [Fintype.linearCombination_apply, map_sum, ← hc]
      refine Finset.sum_congr rfl fun i _ => ?_
      rw [Algebra.smul_def, map_mul, ← hs' i, Algebra.smul_def]
      rfl
    have hmem : Fintype.linearCombination O s' c - x ∈ I := by
      rw [← Ideal.Quotient.eq]; exact hq
    simp only [LinearMap.coe_comp, Function.comp_apply, Submodule.mkQ_apply]
    rw [Submodule.Quotient.eq]
    have h1 := hsm 1
    simp only [pow_one] at h1
    rw [h1]
    exact hmem
  exact Module.Finite.of_surjective _ (surjective_of_mkQ_comp_surjective hsurj)

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.FiniteOfFiniteQuotMapOfIsPrecomplete =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFinitePadicIntDomainEmbedding =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFinitePadicIntDomainEmbedding", "h": "module\n\npublic import Mathlib.NumberTheory.Padics.RingHoms\npublic import Mathlib.RingTheory.AdicCompletion.Algebra\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.FiniteOfFiniteQuotMapOfIsPrecomplete\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsNoetherianRingAdicCompletionOfNoetherian\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.AdicCompletion.LocalRing\npublic import Mathlib.RingTheory.Ideal.Quotient.Index\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open IsLocalRing

namespace GlobalTheory.CompletionEmbed

variable (p : ℕ) [Fact p.Prime] (C : Type) [CommRing C] [IsLocalRing C]

noncomputable def levelMap (hpm : (p : C) ∈ maximalIdeal C) (n : ℕ) :
    ℤ_[p] →+* C ⧸ maximalIdeal C ^ n :=
  have h : ((p ^ n : ℕ) : C ⧸ maximalIdeal C ^ n) = 0 := by
    rw [← map_natCast (Ideal.Quotient.mk (maximalIdeal C ^ n)), Ideal.Quotient.eq_zero_iff_mem,
      Nat.cast_pow]
    exact Ideal.pow_mem_pow hpm n
  (ZMod.castHom (ringChar.dvd h) (C ⧸ maximalIdeal C ^ n)).comp (PadicInt.toZModPow n)

theorem levelMap_compat (hpm : (p : C) ∈ maximalIdeal C) {m n : ℕ} (hle : m ≤ n) :
    (Ideal.Quotient.factorPow (maximalIdeal C) hle).comp (levelMap p C hpm n) =
      levelMap p C hpm m := by
  unfold levelMap
  rw [← PadicInt.zmod_cast_comp_toZModPow m n hle, ← RingHom.comp_assoc, ← RingHom.comp_assoc]
  congr 1
  exact Subsingleton.elim _ _

noncomputable def toCompletion (hpm : (p : C) ∈ maximalIdeal C) :
    ℤ_[p] →+* AdicCompletion (maximalIdeal C) C :=
  AdicCompletion.liftRingHom (maximalIdeal C) (levelMap p C hpm)
    (fun hle => levelMap_compat p C hpm hle)

theorem algebraMap_injective [IsNoetherianRing C] :
    Function.Injective (algebraMap C (AdicCompletion (maximalIdeal C) C)) := by
  set_option backward.isDefEq.respectTransparency.instanceSearchTypes false in rw [injective_iff_map_eq_zero]
  intro x hx
  have hmem : x ∈ ⨅ n : ℕ, maximalIdeal C ^ n := by
    rw [Submodule.mem_iInf]
    intro n
    have := congrArg (AdicCompletion.evalₐ (maximalIdeal C) n) hx
    rw [map_zero] at this
    rw [← Ideal.Quotient.eq_zero_iff_mem]
    simpa using this
  rw [Ideal.iInf_pow_eq_bot_of_isLocalRing _ (maximalIdeal.isMaximal C).ne_top] at hmem
  exact hmem

theorem exists_pow_le_span [IsNoetherianRing C] (hp0 : (p : C) ≠ 0)
    (hprime : ∀ P : Ideal C, P.IsPrime → P ≠ ⊥ → P = maximalIdeal C) :
    ∃ N : ℕ, maximalIdeal C ^ N ≤ Ideal.span {(p : C)} := by
  refine Ideal.exists_pow_le_of_le_radical_of_fg ?_ (IsNoetherian.noetherian _)
  rw [Ideal.radical_eq_sInf]
  refine le_sInf fun Q ⟨hle, hQ⟩ => ?_
  have hQ0 : Q ≠ ⊥ := fun h => hp0 (by
    have := hle (Ideal.mem_span_singleton_self _)
    rw [h] at this
    exact (Ideal.mem_bot).mp this)
  rw [hprime Q hQ hQ0]

theorem finite_quot_span [IsNoetherianRing C] [Finite (ResidueField C)] (hp0 : (p : C) ≠ 0)
    (hprime : ∀ P : Ideal C, P.IsPrime → P ≠ ⊥ → P = maximalIdeal C) :
    Finite (AdicCompletion (maximalIdeal C) C ⧸
      Ideal.span {(p : AdicCompletion (maximalIdeal C) C)}) := by
  set A := AdicCompletion (maximalIdeal C) C
  have fg : (maximalIdeal C).FG := IsNoetherian.noetherian _
  haveI : Finite (C ⧸ maximalIdeal C) := ‹Finite (ResidueField C)›
  haveI : Finite (A ⧸ (maximalIdeal C).map (algebraMap C A)) := by
    have h := Finite.of_injective _
      (RingHom.kerLift_injective (AdicCompletion.evalOneₐ (maximalIdeal C)).toRingHom)
    rw [AdicCompletion.ker_evalOneₐ_eq_map _ fg] at h
    exact h
  obtain ⟨N, hN⟩ := exists_pow_le_span p C hp0 hprime
  haveI : Finite (A ⧸ ((maximalIdeal C).map (algebraMap C A)) ^ N) :=
    Ideal.finite_quotient_pow (fg.map _) N
  have hle : ((maximalIdeal C).map (algebraMap C A)) ^ N ≤ Ideal.span {(p : A)} := by
    rw [← Ideal.map_pow]
    calc _ ≤ (Ideal.span {(p : C)}).map (algebraMap C A) := Ideal.map_mono hN
      _ = _ := by rw [Ideal.map_span, Set.image_singleton, map_natCast]
  exact Finite.of_surjective _ (Ideal.Quotient.factor_surjective hle)

end GlobalTheory.CompletionEmbed


open IsLocalRing GlobalTheory.CompletionEmbed in
theorem GlobalTheory.CompletionEmbed.exists_finite_padicInt_domain :
    ∀ (p : ℕ) [Fact p.Prime] (C : Type) [CommRing C] [IsDomain C] [IsLocalRing C]
      [IsNoetherianRing C], Finite (ResidueField C) → (p : C) ≠ 0 → (p : C) ∈ maximalIdeal C →
      (∀ P : Ideal C, P.IsPrime → P ≠ ⊥ → P = maximalIdeal C) →
      ∃ (D : Type) (_ : CommRing D) (_ : IsDomain D) (_ : Algebra ℤ_[p] D),
        Module.Finite ℤ_[p] D ∧ ∃ ι : C →+* D, Function.Injective ι := by
  intro p _ C _ _ _ _ hfin hp0 hpm hprime
  set A := AdicCompletion (maximalIdeal C) C
  haveI : IsNoetherianRing A := GlobalTheory.AdicNoeth.isNoetherianRing_adicCompletion C _
  letI : Algebra ℤ_[p] A := (toCompletion p C hpm).toAlgebra
  have hJ : (maximalIdeal ℤ_[p]).map (algebraMap ℤ_[p] A) = Ideal.span {(p : A)} := by
    rw [PadicInt.maximalIdeal_eq_span_p, Ideal.map_span, Set.image_singleton, map_natCast]
  haveI : Finite (A ⧸ Ideal.span {(p : A)}) := finite_quot_span p C hp0 hprime
  have hne : Ideal.span {(p : A)} ≠ ⊤ := by
    intro h
    have hu : IsUnit (p : A) := Ideal.span_singleton_eq_top.mp h
    have hu' := hu.map (AdicCompletion.evalOneₐ (maximalIdeal C))
    rw [map_natCast, ← map_natCast (Ideal.Quotient.mk (maximalIdeal C)),
      Ideal.Quotient.eq_zero_iff_mem.mpr hpm] at hu'
    exact not_isUnit_zero hu'
  haveI : Module.Finite ℤ_[p] A := by
    refine GlobalTheory.finite_of_finite_quot_map_of_isPrecomplete ℤ_[p] A (maximalIdeal ℤ_[p]) ?_ ?_
    · rw [hJ]; exact hne
    · rw [hJ]; exact Module.Finite.of_finite
  have hnil : ¬ IsNilpotent (p : A) := by
    rintro ⟨n, hn⟩
    have h : algebraMap C A ((p : C) ^ n) = 0 := by rw [map_pow, map_natCast]; exact hn
    have h3 := (injective_iff_map_eq_zero _).mp (algebraMap_injective C) _ h
    exact hp0 (IsNilpotent.eq_zero ⟨n, h3⟩)
  obtain ⟨Q, hQ, hpQ⟩ : ∃ Q : Ideal A, Q.IsPrime ∧ (p : A) ∉ Q := by
    by_contra h
    push_neg at h
    exact hnil (nilpotent_iff_mem_prime.mpr h)
  haveI := hQ
  refine ⟨A ⧸ Q, inferInstance, inferInstance, inferInstance, ?_,
    (Ideal.Quotient.mk Q).comp (algebraMap C A), ?_⟩
  · exact Module.Finite.of_surjective (Ideal.Quotient.mkₐ ℤ_[p] Q).toLinearMap
      (Ideal.Quotient.mkₐ_surjective ℤ_[p] Q)
  · set_option backward.isDefEq.respectTransparency.instanceSearchTypes false in rw [injective_iff_map_eq_zero]
    intro x hx
    have hbot : Q.comap (algebraMap C A) = ⊥ := by
      by_contra hb
      have h1 := hprime _ (Ideal.comap_isPrime _ _) hb
      apply hpQ
      have h2 : (p : C) ∈ Q.comap (algebraMap C A) := by
        rw [h1]; exact hpm
      rw [Ideal.mem_comap, map_natCast] at h2
      exact h2
    have hx' : x ∈ Q.comap (algebraMap C A) := by
      rw [Ideal.mem_comap, ← Ideal.Quotient.eq_zero_iff_mem]
      exact hx
    rw [hbot] at hx'
    exact (Ideal.mem_bot).mp hx'
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFinitePadicIntDomainEmbedding =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsInjectiveNormLeOne =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsInjectiveNormLeOne", "h": "module\n\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.NormNatCastOfCoprime\npublic import Mathlib.NumberTheory.Padics.Complex\npublic import Mathlib.NumberTheory.Padics.PadicIntegers\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory.InjectiveAlgebraMapTorsionFree

variable (p : ℕ) [Fact (Nat.Prime p)]

theorem algebraMap_injective_of_ne (D : Type) [CommRing D] [IsDomain D] [Algebra ℤ_[p] D]
    (hp : (p : D) ≠ 0) : Function.Injective (algebraMap ℤ_[p] D) := by
  by_contra hinj
  have hker : RingHom.ker (algebraMap ℤ_[p] D) ≠ ⊥ := fun h =>
    hinj ((RingHom.injective_iff_ker_eq_bot _).mpr h)
  obtain ⟨n, hn⟩ := PadicInt.ideal_eq_span_pow_p hker
  have hmem : (p : ℤ_[p]) ^ n ∈ RingHom.ker (algebraMap ℤ_[p] D) := by
    rw [hn]
    exact Ideal.mem_span_singleton_self _
  rw [RingHom.mem_ker, map_pow, map_natCast] at hmem
  exact hp (pow_eq_zero_iff'.mp hmem).1

theorem isTorsionFree_of_injective {R S : Type} [CommRing R] [CommRing S] [IsDomain R]
    [IsDomain S] [Algebra R S] (h : Function.Injective (algebraMap R S)) :
    Module.IsTorsionFree R S :=
  Module.isTorsionFree_iff_algebraMap_injective.mpr h

theorem norm_le_one_of_isIntegral (x : PadicAlgCl p) (hx : IsIntegral ℤ_[p] x) : ‖x‖ ≤ 1 := by
  apply GlobalTheory.PadicNormCastBounds.norm_le_one_of_isIntegral <;> assumption

theorem exists_injective_norm_le_one (p : ℕ) [Fact (Nat.Prime p)] (D : Type) [CommRing D]
    [IsDomain D] [Algebra ℤ_[p] D] [Module.Finite ℤ_[p] D] (hp : (p : D) ≠ 0) :
    ∃ φ : D →+* PadicAlgCl p, Function.Injective φ ∧ ∀ d : D, ‖φ d‖ ≤ 1 := by
  have hM : Function.Injective (algebraMap ℤ_[p] (PadicAlgCl p)) := by
    apply algebraMap_injective_of_ne
    exact_mod_cast (Fact.out : p.Prime).ne_zero
  haveI := isTorsionFree_of_injective (algebraMap_injective_of_ne p D hp)
  haveI := isTorsionFree_of_injective hM
  let φ : D →ₐ[ℤ_[p]] PadicAlgCl p := (by
    refine @_root_.IsAlgClosed.lift _ _ _ _ _ _ _ _ _ _ _ ?_ ?_ ?_
    solve_by_elim* (maxDepth := 2) only [*,
      @_root_.DivisionSemiring.to_moduleIsTorsionFree,
      @_root_.Algebra.IsIntegral.isAlgebraic, @_root_.inferInstance])
  refine ⟨φ.toRingHom, ?_, fun d => ?_⟩
  · rw [RingHom.injective_iff_ker_eq_bot]
    apply Ideal.eq_bot_of_comap_eq_bot (R := ℤ_[p])
    rw [eq_bot_iff]
    intro a ha
    rw [Ideal.mem_comap, RingHom.mem_ker] at ha
    have : algebraMap ℤ_[p] (PadicAlgCl p) a = 0 := by
      rw [← φ.commutes]; exact ha
    exact (map_eq_zero_iff _ hM).mp this
  · exact norm_le_one_of_isIntegral p _ ((Algebra.IsIntegral.isIntegral d).map φ)

end GlobalTheory.InjectiveAlgebraMapTorsionFree
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsInjectiveNormLeOne =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPrimeNotMemForallGtEqMaximalIdeal =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPrimeNotMemForallGtEqMaximalIdeal", "h": "module\n\npublic import Mathlib.RingTheory.LocalRing.MaximalIdeal.Defs\npublic import Mathlib.RingTheory.Noetherian.Defs\npublic import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsValuationSubringLiftOfSpecialFibre\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open IsLocalRing

namespace GlobalTheory

theorem exists_prime_not_mem_forall_gt_eq_maximalIdeal (C : Type) [CommRing C] [IsDomain C]
    [IsLocalRing C] [IsNoetherianRing C] (x : C) (hx : x ≠ 0) (hxm : x ∈ maximalIdeal C) :
    ∃ q : Ideal C, q.IsPrime ∧ x ∉ q ∧ ∀ P : Ideal C, P.IsPrime → q < P → P = maximalIdeal C := by
  classical

  have hnil : ¬ IsNilpotent x := fun h => hx (IsNilpotent.eq_zero h)
  haveI : Nontrivial (Localization.Away x) :=
    (IsLocalization.injective (Localization.Away x)
      (powers_le_nonZeroDivisors_of_noZeroDivisors hx)).nontrivial
  obtain ⟨M, hM⟩ := Ideal.exists_maximal (Localization.Away x)
  set q : Ideal C := M.comap (algebraMap C (Localization.Away x)) with hqdef
  have hMp : M.IsPrime := hM.isPrime
  have hqd := (IsLocalization.isPrime_iff_isPrime_disjoint (Submonoid.powers x)
    (Localization.Away x) M).mp hMp
  have hqp : q.IsPrime := hqd.1
  have hxq : x ∉ q := fun h =>
    Set.disjoint_left.mp hqd.2 (Submonoid.mem_powers x) h

  have habove : ∀ P : Ideal C, P.IsPrime → q < P → x ∈ P := by
    intro P hP hlt
    by_contra hxP
    have hdisj : Disjoint (Submonoid.powers x : Set C) P := by
      rw [Set.disjoint_left]
      rintro _ ⟨n, rfl⟩ h
      exact hxP (hP.mem_of_pow_mem n h)
    have hPL := IsLocalization.isPrime_of_isPrime_disjoint (Submonoid.powers x)
      (Localization.Away x) P hP hdisj
    have hcomap := IsLocalization.under_map_of_isPrime_disjoint (Submonoid.powers x)
      (Localization.Away x) hP hdisj
    have hMle : M ≤ P.map (algebraMap C (Localization.Away x)) := by
      rw [← IsLocalization.map_under (Submonoid.powers x) (Localization.Away x) M]
      exact Ideal.map_mono hlt.le
    have heq := hM.eq_of_le hPL.ne_top hMle
    have : q = P := by rw [hqdef, heq]; exact hcomap
    exact hlt.ne this
  refine ⟨q, hqp, hxq, fun P hP hlt => ?_⟩

  set f := Ideal.Quotient.mk q with hfdef
  have hsurj : Function.Surjective f := Ideal.Quotient.mk_surjective
  have hker : RingHom.ker f = q := Ideal.mk_ker
  haveI : IsDomain (C ⧸ q) := Ideal.Quotient.isDomain q
  set m' : Ideal (C ⧸ q) := (maximalIdeal C).map f with hm'
  have hqm : q ≤ maximalIdeal C := le_maximalIdeal hqp.ne_top
  have hm'p : m'.IsPrime := Ideal.map_isPrime_of_surjective hsurj (hker.symm ▸ hqm)
  have hx0 : f x ≠ 0 := by
    rw [Ne, Ideal.Quotient.eq_zero_iff_mem]; exact hxq
  have hht : m'.height ≤ 1 := by
    refine height_le_one_of_forall_mem m' hx0 ?_
    intro p' hp' hp'0 _
    have hcp : (p'.comap f).IsPrime := Ideal.comap_isPrime f p'
    have hqc : q < p'.comap f := by
      refine lt_of_le_of_ne ?_ ?_
      · intro a ha
        simp [Ideal.mem_comap, hfdef, Ideal.Quotient.eq_zero_iff_mem.mpr ha]
      · intro e
        apply hp'0
        rw [← Ideal.map_comap_of_surjective f hsurj p', ← e]
        exact (Ideal.map_eq_bot_iff_le_ker _).mpr hker.ge
    exact habove _ hcp hqc
  have hPp' : (P.map f).IsPrime := Ideal.map_isPrime_of_surjective hsurj (hker.symm ▸ hlt.le)
  have hP0 : P.map f ≠ ⊥ := by
    intro e
    rw [Ideal.map_eq_bot_iff_le_ker, hker] at e
    exact hlt.ne (le_antisymm hlt.le e)
  have hPm : P.map f ≤ m' := Ideal.map_mono (le_maximalIdeal hP.ne_top)
  have hPeq : P.map f = m' := by
    by_contra hne
    have h1 := Ideal.height_add_one_le_of_lt_of_isPrime (bot_lt_iff_ne_bot.mpr hP0)
    have h2 := Ideal.height_add_one_le_of_lt_of_isPrime (lt_of_le_of_ne hPm hne)
    have h3 : (⊥ : Ideal (C ⧸ q)).height + 1 + 1 ≤ 1 := (add_le_add h1 le_rfl).trans (h2.trans hht)
    simp at h3
    exact absurd h3 (by decide)
  have hPc : P = (P.map f).comap f := by
    rw [Ideal.comap_map_of_surjective' f hsurj, hker, sup_eq_left.mpr hlt.le]
  have hmc : maximalIdeal C = m'.comap f := by
    rw [hm', Ideal.comap_map_of_surjective' f hsurj, hker, sup_eq_left.mpr hqm]
  rw [hPc, hPeq, ← hmc]

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPrimeNotMemForallGtEqMaximalIdeal =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRingHomPadicAlgClNeZero =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRingHomPadicAlgClNeZero", "h": "module\n\npublic import Mathlib.NumberTheory.Padics.Complex\npublic import Mathlib.NumberTheory.Padics.PadicIntegers\npublic import Mathlib.RingTheory.LocalRing.ResidueField.Defs\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFinitePadicIntDomainEmbedding\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsInjectiveNormLeOne\npublic import Mathlib.RingTheory.LocalRing.MaximalIdeal.Defs\npublic import Mathlib.RingTheory.Noetherian.Defs\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPrimeNotMemForallGtEqMaximalIdeal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open IsLocalRing

namespace GlobalTheory.CurvePoint

theorem exists_ringHom_padicAlgCl_ne_zero : ∀ (B : Type) [CommRing B] [IsDomain B] [IsLocalRing B] [IsNoetherianRing B] [CharZero B], Finite (ResidueField B) → ∀ h : B, h ≠ 0 → ∃ (p : ℕ) (_ : Fact p.Prime) (χ : B →+* PadicAlgCl p), (∀ b, ‖χ b‖ ≤ 1) ∧ (∀ b ∈ maximalIdeal B, ‖χ b‖ < 1) ∧ χ h ≠ 0 := by
  intro B _ _ _ _ _ hfin h hh

  set p := ringChar (ResidueField B) with hpdef
  have hp0 : p ≠ 0 := by
    intro h0
    haveI : CharP (ResidueField B) 0 := by rw [← h0]; exact ringChar.charP _
    haveI : CharZero (ResidueField B) := CharP.charP_to_charZero _
    exact not_finite (ResidueField B)
  have hp : p.Prime := (CharP.char_is_prime_or_zero (ResidueField B) p).resolve_right hp0
  haveI hF : Fact p.Prime := ⟨hp⟩
  have hpm : (p : B) ∈ maximalIdeal B := by
    rw [← residue_eq_zero_iff, map_natCast]
    exact ringChar.Nat.cast_ringChar
  have hpB : (p : B) ≠ 0 := Nat.cast_ne_zero.2 hp0

  obtain ⟨q, hq, hxq, hmax⟩ := _root_.GlobalTheory.exists_prime_not_mem_forall_gt_eq_maximalIdeal B (h * p) (mul_ne_zero hh hpB) (Ideal.mul_mem_left _ _ hpm)
  have hhq : h ∉ q := fun hq' => hxq (Ideal.mul_mem_right _ _ hq')
  have hpq : (p : B) ∉ q := fun hq' => hxq (Ideal.mul_mem_left _ _ hq')
  have hqm : q ≤ maximalIdeal B := le_maximalIdeal hq.ne_top
  set C := B ⧸ q
  haveI : Nontrivial C := Ideal.Quotient.nontrivial_iff.2 hq.ne_top
  haveI : IsLocalRing C := IsLocalRing.of_surjective' (Ideal.Quotient.mk q) Ideal.Quotient.mk_surjective
  let π : B →+* C := Ideal.Quotient.mk q
  have hπm : ∀ b ∈ maximalIdeal B, π b ∈ maximalIdeal C := by
    intro b hb hu
    obtain ⟨c, hc⟩ := hu.exists_right_inv
    obtain ⟨c', rfl⟩ := Ideal.Quotient.mk_surjective c
    have h1 : b * c' - 1 ∈ q := Ideal.Quotient.eq.1 (by simpa [π] using hc)
    have h2 : b * c' - 1 ∈ maximalIdeal B := hqm h1
    have h3 : b * c' ∈ maximalIdeal B := Ideal.mul_mem_right _ _ hb
    exact (maximalIdeal.isMaximal B).ne_top ((Ideal.eq_top_iff_one _).2 (by simpa using Ideal.sub_mem _ h3 h2))
  have hmC : ∀ c ∈ maximalIdeal C, ∃ b ∈ maximalIdeal B, π b = c := by
    intro c hc
    obtain ⟨b, rfl⟩ := Ideal.Quotient.mk_surjective c
    refine ⟨b, fun hb => hc ?_, rfl⟩
    exact hb.map π
  have hfinC : Finite (ResidueField C) := by
    let f : ResidueField B → ResidueField C :=
      Ideal.Quotient.lift (maximalIdeal B) ((residue C).comp π) (fun b hb => by
        rw [RingHom.comp_apply, residue_eq_zero_iff]; exact hπm b hb)
    refine Finite.of_surjective f ?_
    intro y
    obtain ⟨c, rfl⟩ := residue_surjective y
    obtain ⟨b, rfl⟩ := Ideal.Quotient.mk_surjective c
    exact ⟨residue B b, rfl⟩
  have hpC : (p : C) ≠ 0 := by
    rw [← map_natCast π, Ne, Ideal.Quotient.eq_zero_iff_mem]; exact hpq
  have hpmC : (p : C) ∈ maximalIdeal C := by rw [← map_natCast π]; exact hπm _ hpm
  have hdim : ∀ P : Ideal C, P.IsPrime → P ≠ ⊥ → P = maximalIdeal C := by
    intro P hP hP0
    refine le_antisymm (le_maximalIdeal hP.ne_top) ?_
    have hlt : q < P.comap π := by
      refine lt_of_le_of_ne (fun b hb => ?_) (fun he => hP0 ?_)
      · show π b ∈ P; rw [Ideal.Quotient.eq_zero_iff_mem.2 hb]; exact P.zero_mem
      · rw [eq_bot_iff]; intro c hc
        obtain ⟨b, rfl⟩ := Ideal.Quotient.mk_surjective c
        have : b ∈ q := he ▸ hc
        exact (Submodule.mem_bot _).2 (Ideal.Quotient.eq_zero_iff_mem.2 this)
    have hc := hmax _ (Ideal.comap_isPrime π P) hlt
    intro c hc'
    obtain ⟨b, hb, rfl⟩ := hmC c hc'
    have : b ∈ P.comap π := hc ▸ hb
    exact this

  obtain ⟨N, hN⟩ : ∃ N : ℕ, maximalIdeal C ^ N ≤ Ideal.span {(p : C)} := by
    refine Ideal.exists_pow_le_of_le_radical_of_fg ?_ (IsNoetherian.noetherian _)
    rw [Ideal.radical_eq_sInf]
    refine le_sInf fun P ⟨hle, hP⟩ => ?_
    have hP0 : P ≠ ⊥ := fun h0 => hpC (by rw [h0] at hle; exact (Submodule.mem_bot _).1 (hle (Ideal.mem_span_singleton_self _)))
    exact (hdim P hP hP0).ge
  obtain ⟨D, _, _, _, hDfin, ι, hι⟩ := _root_.GlobalTheory.CompletionEmbed.exists_finite_padicInt_domain p C hfinC hpC hpmC hdim
  have hpD : (p : D) ≠ 0 := by
    rw [← map_natCast ι]; exact fun h0 => hpC (hι (by rw [h0, map_zero]))
  obtain ⟨φ, hφ, hφ1⟩ := _root_.GlobalTheory.InjectiveAlgebraMapTorsionFree.exists_injective_norm_le_one p D hpD
  refine ⟨p, hF, (φ.comp ι).comp π, fun b => hφ1 _, fun b hb => ?_, ?_⟩
  · have hc := hπm b hb
    have hcN : π b ^ N ∈ Ideal.span {(p : C)} := hN (Ideal.pow_mem_pow hc N)
    obtain ⟨d, hd⟩ := Ideal.mem_span_singleton'.1 hcN
    have key : ‖(φ.comp ι) (π b)‖ ^ N < 1 ^ N := by
      rw [← norm_pow, ← map_pow, ← hd, map_mul, norm_mul, one_pow, map_natCast]
      calc ‖(φ.comp ι) d‖ * ‖(p : PadicAlgCl p)‖ ≤ 1 * ‖(p : PadicAlgCl p)‖ :=
            mul_le_mul_of_nonneg_right (hφ1 _) (norm_nonneg _)
        _ < 1 := by
          rw [one_mul]
          have e : ((p : ℚ_[p]) : PadicAlgCl p) = (p : PadicAlgCl p) := by simp
          rw [← e, norm_algebraMap']; exact Padic.norm_p_lt_one
    exact lt_of_pow_lt_pow_left₀ N zero_le_one key
  · intro h0
    apply hhq
    rw [← Ideal.Quotient.eq_zero_iff_mem]
    exact hι (hφ (by simpa using h0))

end GlobalTheory.CurvePoint
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRingHomPadicAlgClNeZero =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ModelLocalRingEssFiniteTypeInt =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ModelLocalRingEssFiniteTypeInt", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Degenerations.ArithBase\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsThetaCompact\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory GlobalTheory.ZH GlobalTheory.Poinc

namespace GlobalTheory.Izumi

theorem essFiniteType_int_O : ∀ (o Ω : Type) [CommRing o] [Field Ω] [Algebra o Ω] [ArithBase o Ω] (M : RatModel o Ω)
    (x : M.Z), Algebra.EssFiniteType ℤ (M.O x) := by
  intro o Ω _ _ _ hA M x
  haveI : LocallyOfFiniteType M.s := M.lft
  let y : PrimeSpectrum o := M.s x
  letI A : Algebra o ((Sp o).presheaf.stalk (M.s x)) := StructureSheaf.stalkAlgebra _ y
  haveI : @IsLocalization.AtPrime o _ ((Sp o).presheaf.stalk (M.s x)) _ A y.asIdeal _ :=
    StructureSheaf.IsLocalization.to_stalk _ y
  let φ := @algebraMap o ((Sp o).presheaf.stalk (M.s x)) _ _ A
  have h₁ : (M.s.stalkMap x).hom.EssFiniteType := LocallyOfFiniteType.stalkMap M.s x
  have h₂ : φ.EssFiniteType :=
    RingHom.essFiniteType_algebraMap.2 (Algebra.EssFiniteType.of_isLocalization _ y.asIdeal.primeCompl)
  haveI : Algebra.FiniteType ℤ o := hA.ft
  have h₀ : (algebraMap ℤ o).EssFiniteType := RingHom.essFiniteType_algebraMap.2 inferInstance
  have h₃ : (M.stalkEquiv x).toRingHom.EssFiniteType :=
    (RingHom.FiniteType.of_surjective _ (M.stalkEquiv x).surjective).essFiniteType
  have h := ((h₀.comp h₂).comp h₁)
  have h' := h.comp h₃
  rw [← RingHom.essFiniteType_algebraMap]
  convert h'
  exact RingHom.ext_int _ _

end GlobalTheory.Izumi
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ModelLocalRingEssFiniteTypeInt =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ModelLocalRingResidueFieldFiniteOfClosedPoint =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ModelLocalRingResidueFieldFiniteOfClosedPoint", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Degenerations.ArithBase\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.FiniteResidueFieldOfIsClosedOfLocallyOfFiniteTyp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsThetaCompact\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory GlobalTheory.ZH GlobalTheory.Poinc

namespace GlobalTheory.ResFin

theorem finite_residueField_O : ∀ (o Ω : Type) [CommRing o] [Field Ω] [Algebra o Ω] [ArithBase o Ω] (M : RatModel o Ω)
    (x : M.Z), IsClosed ({x} : Set M.Z) → Finite (ResidueField (M.O x)) := by
  intro o Ω _ _ _ hA M x hx
  haveI : Algebra.FiniteType ℤ o := hA.ft
  haveI : LocallyOfFiniteType (spMap (algebraMap ℤ o)) :=
    (HasRingHomProperty.Spec_iff (P := @LocallyOfFiniteType)).2 (RingHom.finiteType_algebraMap.2 inferInstance)
  haveI : LocallyOfFiniteType M.s := M.lft
  have h := finite_residueField_of_isClosed_of_locallyOfFiniteType_int (M.s ≫ spMap (algebraMap ℤ o)) x hx
  haveI : Finite (ResidueField (M.Z.presheaf.stalk x)) := h
  exact Finite.of_equiv _ (ResidueField.mapEquiv (M.stalkEquiv x)).toEquiv

end GlobalTheory.ResFin
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ModelLocalRingResidueFieldFiniteOfClosedPoint =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IInfIzumiSmallValueIdealMapLeSpan =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IInfIzumiSmallValueIdealMapLeSpan", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLeSpanSupPow\npublic import Development.AbelianVarietyTheory.Definitions.Degenerations.ArithBase\npublic import Mathlib.RingTheory.AdicCompletion.LocalRing\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsSpecializesIsLocalization\npublic import Mathlib.RingTheory.IntegralClosure.IntegrallyClosed\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDominatingLocalDomainEqMulMaximal\npublic import Development.AbelianVarietyTheory.Definitions.Degenerations.InducedModelMorphismCompStructureMap\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNonzeroClassicalPointOfLocalHomAvoiding\npublic import Mathlib.NumberTheory.Padics.Complex\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsRingHomPadicAlgClNeZero\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ModelLocalRingEssFiniteTypeInt\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ModelLocalRingResidueFieldFiniteOfClosedPoint\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CompletionIsDomainAndIsIntegrallyClosed\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsNoetherianRingAdicCompletionOfNoetherian\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.AdicCompletion.Noetherian\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsNatDiagIffIsDiag\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsThetaCompact\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R GlobalTheory GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.ZH GlobalTheory.Poinc
open GlobalTheory.SiegelTor
open GlobalTheory.Izumi

noncomputable section
namespace GlobalTheory.Izumi

theorem exists_sub_algebraMap_mem_maximalIdeal_completion : ∀ (A : Type) [CommRing A] [IsLocalRing A] [IsNoetherianRing A] (b : AdicCompletion (maximalIdeal A) A), ∃ a : A, b - algebraMap A (AdicCompletion (maximalIdeal A) A) a ∈ maximalIdeal (AdicCompletion (maximalIdeal A) A) := by
  intro A _ _ _ b
  set ψ := AdicCompletion.evalₐ (maximalIdeal A) (R := A) 1
  have hψ : ∀ r : A, ψ (algebraMap A (AdicCompletion (maximalIdeal A) A) r) = Ideal.Quotient.mk _ r := fun r => ψ.commutes r
  obtain ⟨a, ha⟩ := Ideal.Quotient.mk_surjective (ψ b)
  refine ⟨a, ?_⟩
  by_contra hn
  have hu : IsUnit (b - algebraMap A (AdicCompletion (maximalIdeal A) A) a) := by
    simpa [mem_maximalIdeal, mem_nonunits_iff] using hn
  have h0 : ψ (b - algebraMap A (AdicCompletion (maximalIdeal A) A) a) = 0 := by
    rw [map_sub, hψ, ha, sub_self]
  have h1 := hu.map ψ
  rw [h0] at h1
  haveI : Nontrivial (A ⧸ maximalIdeal A ^ 1) := by
    rw [pow_one]
    exact Ideal.Quotient.nontrivial_iff.2 (maximalIdeal.isMaximal A).ne_top
  exact not_isUnit_zero h1

theorem norm_le_of_mem_iInf_map_smallIdeal : ∀ (o Ω : Type) [CommRing o] [Field Ω] [Algebra o Ω] [ArithBase o Ω] (M : RatModel o Ω) (U : M.Z.Opens) (x : M.Z) (f : Ω) (p : ℕ) [Fact p.Prime] (y : Sp (OO p) ⟶ M.Z), M.Cen U x y → ∀ ψ : AdicCompletion (maximalIdeal (M.O x)) (M.O x) →+* PadicAlgCl p, (∀ g, ‖ψ g‖ ≤ 1) → (∀ a : M.O x, ψ (algebraMap (M.O x) (AdicCompletion (maximalIdeal (M.O x)) (M.O x)) a) = M.val (gPt p ≫ y) a) → ∀ G ∈ ⨅ N, (smallIdeal M U x f N).map (algebraMap (M.O x) (AdicCompletion (maximalIdeal (M.O x)) (M.O x))), ‖ψ G‖ ≤ ‖M.val (gPt p ≫ y) f‖ := by
  intro o Ω _ _ _ _ M U x f p _ y hy ψ hψ1 hψv G hG
  haveI := ArithBase.ded (o := o) (Ω := Ω)
  haveI : IsNoetherianRing (M.O x) := RatModel.isNoetherianRing_O M x
  have hadd : ∀ a b : M.O x, ‖M.val (gPt p ≫ y) ((a + b : M.O x) : Ω)‖ ≤
      max ‖M.val (gPt p ≫ y) (a : Ω)‖ ‖M.val (gPt p ≫ y) (b : Ω)‖ := norm_val_add_le M hy
  have hmul : ∀ c a : M.O x, ‖M.val (gPt p ≫ y) ((c * a : M.O x) : Ω)‖ ≤ ‖M.val (gPt p ≫ y) (a : Ω)‖ :=
    norm_val_mul_le M hy
  obtain ⟨S, hS⟩ := (IsNoetherian.noetherian (maximalIdeal (M.O x)) : (maximalIdeal (M.O x)).FG)
  set ρ : ℝ := ((S.sup fun g => ‖M.val (gPt p ≫ y) (g : Ω)‖₊ : NNReal) : ℝ) with hρdef
  have hρ0 : 0 ≤ ρ := NNReal.coe_nonneg _
  have hρ1 : ρ < 1 := by
    rw [hρdef, ← NNReal.coe_one, NNReal.coe_lt_coe, Finset.sup_lt_iff (by simp)]
    intro g hg
    have hgm : g ∈ maximalIdeal (M.O x) := hS ▸ Submodule.subset_span hg
    have h1 := (hy.norm_val_lt_one_iff g.2).2 (by simpa using hgm)
    rw [← NNReal.coe_lt_coe, coe_nnnorm]
    simpa using h1
  have hρ : ∀ h ∈ maximalIdeal (M.O x), ‖M.val (gPt p ≫ y) (h : Ω)‖ ≤ ρ := by
    intro h hh
    rw [← hS] at hh
    induction hh using Submodule.span_induction with
    | mem g hg =>
      rw [hρdef, ← coe_nnnorm, NNReal.coe_le_coe]
      exact Finset.le_sup (f := fun g : M.O x => ‖M.val (gPt p ≫ y) (g : Ω)‖₊) hg
    | zero =>
      have h0 : ((0 : M.O x) : Ω) = 0 := rfl
      rw [h0, RatModel.val_zero, norm_zero]
      exact hρ0
    | add a b _ _ ha hb => exact (hadd a b).trans (max_le ha hb)
    | smul c a _ ha => exact (hmul c a).trans ha
  have hnu : ∀ h, NonUnitAt M x h → ∀ hO : h ∈ M.O x, (⟨h, hO⟩ : M.O x) ∈ maximalIdeal (M.O x) := by
    intro h hh hO
    rw [mem_maximalIdeal, mem_nonunits_iff]
    intro hu
    rcases hh.2 with h0 | hinv
    · subst h0
      have : (⟨0, hO⟩ : M.O x) = 0 := rfl
      rw [this] at hu
      exact not_isUnit_zero hu
    · obtain ⟨w, hw⟩ := hu.exists_right_inv
      have e : h * (w : Ω) = 1 := congrArg Subtype.val hw
      apply hinv
      rw [← eq_inv_of_mul_eq_one_right e]
      exact w.2
  have hN : ∀ N, ∀ g ∈ (smallIdeal M U x f N).map (algebraMap (M.O x) (AdicCompletion (maximalIdeal (M.O x)) (M.O x))),
      ‖ψ g‖ ≤ max ‖M.val (gPt p ≫ y) f‖ (ρ ^ N) := by
    intro N g hg
    induction hg using Submodule.span_induction with
    | mem g hg =>
      obtain ⟨k, hk, rfl⟩ := hg
      rw [hψv]
      rcases (mem_smallIdeal.1 hk) p y hy with h | ⟨h, hh, hle⟩
      · exact h.trans (le_max_left _ _)
      · refine le_max_of_le_right (hle.trans ?_)
        exact pow_le_pow_left₀ (norm_nonneg _) (hρ _ (hnu h hh hh.1)) N
    | zero => rw [map_zero, norm_zero]; exact le_max_of_le_right (pow_nonneg hρ0 N)
    | add a b _ _ ha hb =>
      set_option synthInstance.maxHeartbeats 200000 in
        rw [map_add ψ]
      exact (IsUltrametricDist.norm_add_le_max _ _).trans (max_le ha hb)
    | smul c a _ ha =>
      rw [smul_eq_mul, map_mul, norm_mul]
      exact (mul_le_of_le_one_left (norm_nonneg _) (hψ1 c)).trans ha
  by_contra hlt
  push_neg at hlt
  have hpos : 0 < ‖ψ G‖ := lt_of_le_of_lt (norm_nonneg _) hlt
  obtain ⟨N, hNlt⟩ := exists_pow_lt_of_lt_one hpos hρ1
  have h1 := hN N G (Submodule.mem_iInf _ |>.1 hG N)
  rcases le_max_iff.1 h1 with h2 | h2
  · exact absurd h2 (not_le.2 hlt)
  · exact absurd h2 (not_le.2 hNlt)



theorem iInf_map_smallIdeal_le_span : ∀ (o Ω : Type) [CommRing o] [Field Ω] [Algebra o Ω] [ArithBase o Ω] (M : RatModel o Ω), ReciprocityTheory.ChartRestriction.G.Geo.Tor.IsNormalScheme M.Z → ∀ (U : M.Z.Opens), (U : Set M.Z).Nonempty → ∀ (x : M.Z), IsClosed ({x} : Set M.Z) → ∀ (f : Ω) (hf : f ∈ M.O x), f ≠ 0 → ⨅ N, (smallIdeal M U x f N).map (algebraMap (M.O x) (AdicCompletion (maximalIdeal (M.O x)) (M.O x))) ≤ Ideal.span {algebraMap (M.O x) (AdicCompletion (maximalIdeal (M.O x)) (M.O x)) ⟨f, hf⟩} := by
  intro o Ω _ _ _ _ M hN U hU x hx f hf hf0
  haveI := ArithBase.ded (o := o) (Ω := Ω)
  haveI := ArithBase.char (o := o) (Ω := Ω)
  haveI : IsNoetherianRing (M.O x) := RatModel.isNoetherianRing_O M x
  haveI : IsIntegrallyClosed (M.O x) := RatModel.isIntegrallyClosed_O hN x
  haveI : CharZero (M.O x) := ⟨fun a b h => by
    have := congrArg Subtype.val h
    simpa using this⟩
  haveI : Algebra.EssFiniteType ℤ (M.O x) := _root_.GlobalTheory.Izumi.essFiniteType_int_O o Ω M x
  haveI : Finite (ResidueField (M.O x)) := _root_.GlobalTheory.ResFin.finite_residueField_O o Ω M x hx
  set A := M.O x with hA
  set R := AdicCompletion (maximalIdeal A) A with hR
  set φ := algebraMap A R with hφ
  obtain ⟨hdom, hic⟩ := GlobalTheory.AnalyticNormality.completion_isDomain_and_isIntegrallyClosed A
  haveI : IsNoetherianRing R := GlobalTheory.AdicNoeth.isNoetherianRing_adicCompletion A _
  have hinj : Function.Injective φ := _root_.GlobalTheory.CompletionEmbed.algebraMap_injective A
  intro G hG
  by_contra hGf
  obtain ⟨s, hs0, hs⟩ := _root_.GlobalTheory.Izumi.exists_ne_zero_forall_exists_cen o Ω M U hU x
  obtain ⟨B, _, _, _, _, ι, hιinj, hιloc, hιres, u, hu, hfu⟩ := _root_.GlobalTheory.Izumi.exists_dominating_eq_mul_of_not_mem_span R (φ ⟨f, hf⟩) G hGf
  have hG0 : G ≠ 0 := by
    rintro rfl
    exact hGf (Submodule.zero_mem _)
  haveI : CharZero B := ⟨fun a b h => by
    have h1 : ι (φ (a : A)) = ι (φ (b : A)) := by simpa using h
    have h2 := hinj (hιinj h1)
    exact_mod_cast h2⟩
  haveI : Finite (ResidueField B) := by
    let g : A → ResidueField B := fun a => residue B (ι (φ a))
    have hg : Function.Surjective g := by
      intro c
      obtain ⟨b, rfl⟩ := residue_surjective c
      obtain ⟨r, hr⟩ := hιres b
      obtain ⟨a, ha⟩ := exists_sub_algebraMap_mem_maximalIdeal_completion A r
      refine ⟨a, ?_⟩
      have h1 : ι r - ι (φ a) ∈ maximalIdeal B := by
        rw [← map_sub]
        exact map_nonunit ι _ ha
      show residue B (ι (φ a)) = residue B b
      rw [← sub_eq_zero, ← map_sub, residue_eq_zero_iff]
      have := Ideal.add_mem _ h1 hr
      have e : ι (φ a) - b = -((ι r - ι (φ a)) + (b - ι r)) := by ring
      rw [e]
      exact (Ideal.neg_mem_iff _).2 this
    have hker : ∀ a a' : A, a - a' ∈ maximalIdeal A → g a = g a' := by
      intro a a' h
      show residue B _ = residue B _
      rw [← sub_eq_zero, ← map_sub, residue_eq_zero_iff, ← map_sub, ← map_sub]
      refine map_nonunit ι _ (map_nonunit φ _ h)
    let g' : ResidueField A → ResidueField B := fun c => g (Classical.choose (residue_surjective c))
    refine Finite.of_surjective g' fun c => ?_
    obtain ⟨a, rfl⟩ := hg c
    refine ⟨residue A a, hker _ _ ?_⟩
    rw [← residue_eq_zero_iff, map_sub, Classical.choose_spec (residue_surjective (residue A a)), sub_self]
  have hh : ι (G * φ s) ≠ 0 := by
    rw [Ne, ← map_zero ι]
    intro h
    exact mul_ne_zero hG0 ((map_ne_zero_iff φ hinj).2 hs0) (hιinj h)
  obtain ⟨p, hp, χ, hχ1, hχm, hχh⟩ := _root_.GlobalTheory.CurvePoint.exists_ringHom_padicAlgCl_ne_zero B inferInstance (ι (G * φ s)) hh
  set ψ : R →+* PadicAlgCl p := χ.comp ι with hψ
  have hψ1 : ∀ g, ‖ψ g‖ ≤ 1 := fun g => hχ1 _
  have hψG : ψ G ≠ 0 := by
    intro h; apply hχh; rw [map_mul, map_mul]; simp [hψ] at h; simp [h]
  have hψs : ψ (φ s) ≠ 0 := by
    intro h; apply hχh; rw [map_mul, map_mul]; simp [hψ] at h; simp [h]
  have hlt : ‖ψ (φ ⟨f, hf⟩)‖ < ‖ψ G‖ := by
    have e : ψ (φ ⟨f, hf⟩) = ψ G * χ u := by
      simp only [hψ, RingHom.comp_apply, hfu, map_mul]
    rw [e, norm_mul]
    have h1 : ‖χ u‖ < 1 := hχm u hu
    have h2 : 0 < ‖ψ G‖ := norm_pos_iff.2 hψG
    nlinarith [norm_nonneg (χ u)]
  let χ0 : A →+* OO p := (ψ.comp φ).codRestrict (OO p) fun a => (mem_OO_iff _).2 (hψ1 _)
  have hloc : IsLocalHom χ0 := by
    refine ⟨fun a ha => ?_⟩
    by_contra hna
    have hm : a ∈ maximalIdeal A := hna
    have h1 : ι (φ a) ∈ maximalIdeal B := map_nonunit ι _ (map_nonunit φ _ hm)
    have e : ((χ0 a : OO p) : PadicAlgCl p) = χ (ι (φ a)) := rfl
    have h2 : ‖((χ0 a : OO p) : PadicAlgCl p)‖ < 1 := by rw [e]; exact hχm _ h1
    exact (not_isUnit_OO_iff (χ0 a)).2 h2 ha
  have hχ0s : χ0 s ≠ 0 := fun h => hψs (congrArg Subtype.val h)
  obtain ⟨y, hy, hval⟩ := hs p χ0 hloc hχ0s
  have hb := norm_le_of_mem_iInf_map_smallIdeal o Ω M U x f p y hy ψ hψ1 (fun a => (hval a).symm) G hG
  have hf' := hval ⟨f, hf⟩
  simp only at hf'
  rw [hf'] at hb
  exact absurd hb (not_le.2 hlt)

end GlobalTheory.Izumi
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IInfIzumiSmallValueIdealMapLeSpan =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IzumiBoundModPrincipalIdeal =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IzumiBoundModPrincipalIdeal", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.NonUnitAt\npublic import Development.AbelianVarietyTheory.Definitions.Degenerations.ArithBase\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsSpecializesIsLocalization\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLeSpanSupPow\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IInfIzumiSmallValueIdealMapLeSpan\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsNatDiagIffIsDiag\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsThetaCompact\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory Limits IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R GlobalTheory GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.ZH GlobalTheory.Poinc
open GlobalTheory.SiegelTor

namespace GlobalTheory.Izumi

theorem small_mod_principal : ∀ (o Ω : Type) [CommRing o] [Field Ω] [Algebra o Ω] [ArithBase o Ω] (M : RatModel o Ω), ReciprocityTheory.ChartRestriction.G.Geo.Tor.IsNormalScheme M.Z → ∀ (U : M.Z.Opens), (U : Set M.Z).Nonempty → ∀ (x : M.Z), IsClosed ({x} : Set M.Z) → ∀ f ∈ M.O x, f ≠ 0 → ∃ C : ℕ → ℕ, ∀ (e : ℕ) (F : M.O x), (∀ (p : ℕ) [Fact p.Prime] (y : Sp (OO p) ⟶ M.Z), M.Cen U x y → ‖M.val (gPt p ≫ y) F‖ ≤ ‖M.val (gPt p ≫ y) f‖ ∨ ∃ h, NonUnitAt M x h ∧ ‖M.val (gPt p ≫ y) F‖ ≤ ‖M.val (gPt p ≫ y) h‖ ^ C e) → ∃ a b : M.O x, (F : Ω) = a * f + b ∧ b ∈ Ideal.span {c : M.O x | ¬ IsUnit c} ^ e := by
  intro o Ω _ _ _ _ M hn U hU x hx f hf hf0
  haveI : IsDedekindDomain o := ArithBase.ded Ω
  haveI : IsNoetherianRing (M.O x) := M.isNoetherianRing_O x
  have hB := _root_.GlobalTheory.Izumi.iInf_map_smallIdeal_le_span o Ω M hn U hU x hx f hf hf0
  choose C hC using exists_le_span_sup_pow (M.O x) (smallIdeal M U x f) ⟨f, hf⟩
    (smallIdeal_antitone U x f) (self_mem_smallIdeal U hf) hB
  refine ⟨C, fun e F hF => ?_⟩
  have hmem : F ∈ Ideal.span {(⟨f, hf⟩ : M.O x)} ⊔ maximalIdeal (M.O x) ^ e := hC e (mem_smallIdeal.2 hF)
  obtain ⟨u, hu, b, hb, rfl⟩ := Submodule.mem_sup.1 hmem
  obtain ⟨a, rfl⟩ := Ideal.mem_span_singleton'.1 hu
  have hm : Ideal.span {c : M.O x | ¬ IsUnit c} = maximalIdeal (M.O x) := Ideal.span_eq (maximalIdeal (M.O x))
  refine ⟨a, b, rfl, ?_⟩
  rw [hm]
  exact hb

end GlobalTheory.Izumi
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IzumiBoundModPrincipalIdeal =====
