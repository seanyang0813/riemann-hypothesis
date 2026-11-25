module

public import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.IsStrictlySemistableModel
public import Mathlib.RingTheory.IntegralClosure.IntegrallyClosed
public import Mathlib.Algebra.MvPolynomial.Basic
public import Mathlib.RingTheory.DiscreteValuationRing.Basic
public import Mathlib.Algebra.MvPolynomial.NoZeroDivisors
public import Mathlib.Algebra.MvPolynomial.Degrees
public import Mathlib.Algebra.MvPolynomial.Equiv
public import Mathlib.RingTheory.Polynomial.UniqueFactorization
public import Mathlib.Algebra.MvPolynomial.Division
public import Mathlib.Algebra.MvPolynomial.Eval
public import Mathlib.RingTheory.Ideal.Quotient.Nilpotent
public import Mathlib.RingTheory.LocalRing.ResidueField.Basic
public import Mathlib.RingTheory.Polynomial.Basic
public import Development.AbelianVarietyTheory.Definitions.ShimuraVarieties.IsOpenOfMemIrreducibleComponentsOfFinite
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HarishChandraFormulaStatement
public import Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.GeometricallyIntegralIffGeometricallyConnectedOf
public import Mathlib.RingTheory.RingHom.Smooth
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SemistableGenericFibreLocalization
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.NormLtOneOfIrreducible
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.EtSide
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.CompSm
public import Mathlib.FieldTheory.KrullTopology
public import Mathlib.RingTheory.Invariant.Defs
public import Mathlib.RingTheory.TensorProduct.Free
public import Mathlib.Order.CompletePartialOrder
public import Mathlib.RingTheory.Invariant.Profinite
public import Mathlib.FieldTheory.Galois.Infinite
public import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.IsMatrixForm
public import Development.AbelianVarietyTheory.Definitions.Divisors.GalMapMul
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.EtProps
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.TypeStar
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Mathlib.Tactic.Linter.Style
import Mathlib.FieldTheory.Galois.Profinite
import Mathlib.RingTheory.Henselian
import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.IsOpenConnectedComponentOfNoetherianSpace
import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.CrystallineTowers.SpecOf
import Mathlib.AlgebraicGeometry.ProjectiveSpectrum.Proper
import Mathlib.AlgebraicGeometry.QuasiAffine
import Mathlib.RingTheory.TotallySplit

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.SmoothSndOfIsStrictlySemistable, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsIntegrallyClosedOfReducedQuotientLocalization, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SemistableModelRingIsDomain, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SemistableSpecialFibreProperty, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.SsModelAlgebraMapInjective, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.CompGood, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.IsOpenStabilizer, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.ExistsGalMapApply, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.IsOpenConnectedComponent, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.CompactSpaceOfIsProjOver, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.Geo

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.SmoothSndOfIsStrictlySemistable =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.SmoothSndOfIsStrictlySemistable", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.IsStrictlySemistableModel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory Limits AlgebraicGeometry TopologicalSpace

namespace CrystallineSemistableComparison


theorem smooth_snd_of_isStrictlySemistable {O K : Type} [CommRing O] [CommRing K] [Algebra O K] (ϖ : O)
    [IsLocalization.Away ϖ K] {X : Scheme.{0}} (p : X ⟶ Spec (CommRingCat.of O))
    (hss : GlobalTheory.Et.IsStrictlySemistable ϖ p)
    (hsm : ∀ m r : ℕ, 1 ≤ r → r ≤ m →
      (IsLocalization.Away.map K (Localization.Away (algebraMap O (GlobalTheory.Et.ssModel O ϖ m r) ϖ))
        (algebraMap O (GlobalTheory.Et.ssModel O ϖ m r)) ϖ).Smooth) :
    Smooth (pullback.snd p (Spec.map (CommRingCat.ofHom (algebraMap O K)))) := by
  have : IsZariskiLocalAtSource @Smooth.{0} := HasRingHomProperty.instIsZariskiLocalAtSource
  set j := Spec.map (CommRingCat.ofHom (algebraMap O K))
  have hgen := IsPullback.of_hasPullback p j
  choose W hW hxW m r h1 h2 ψ hψe hψ using hss
  refine IsZariskiLocalAtSource.of_iSup_eq_top (fun x : X ↦ (pullback.fst p j) ⁻¹ᵁ W x) ?_ ?_
  · rw [eq_top_iff]
    intro z _
    rw [TopologicalSpace.Opens.mem_iSup]
    exact ⟨pullback.fst p j z, hxW _⟩
  intro x
  set B := GlobalTheory.Et.ssModel O ϖ (m x) (r x)
  set s : Spec (CommRingCat.of B) ⟶ Spec (CommRingCat.of O) := Spec.map (CommRingCat.ofHom (algebraMap O B))
  set φ : (W x).toScheme ⟶ Spec (CommRingCat.of B) := (hW x).isoSpec.hom ≫ Spec.map (CommRingCat.ofHom (ψ x))
  have hφ : (W x).ι ≫ p = φ ≫ s := by
    have e1 : (W x).ι = (hW x).isoSpec.hom ≫ (hW x).fromSpec := by
      rw [← (hW x).isoSpec_inv_ι, Iso.hom_inv_id_assoc]
    have e2 := IsAffineOpen.SpecMap_appLE_fromSpec p (isAffineOpen_top (Spec (CommRingCat.of O))) (hW x) le_top
    rw [e1, Category.assoc, ← e2]
    simp only [φ, s, Category.assoc, ← Spec.map_comp]
    congr 2
    rw [IsAffineOpen.fromSpec_top, Scheme.isoSpec_Spec_inv, ← Spec.map_comp]
    congr 1
    apply CommRingCat.hom_ext
    exact (hψ x).symm
  set Bϖ := Localization.Away (algebraMap O B ϖ)
  set σ : K →+* Bϖ := IsLocalization.Away.map K Bϖ (algebraMap O B) ϖ
  have hH : σ.comp (algebraMap O K) = (algebraMap B Bϖ).comp (algebraMap O B) := by
    simp only [σ, IsLocalization.Away.map]
    exact IsLocalization.map_comp _
  have : IsLocalization ((Submonoid.powers ϖ).map (algebraMap O B)) Bϖ := by
    rw [Submonoid.map_powers]; infer_instance
  have hpush := CommRingCat.isPushout_of_isLocalization (algebraMap O B) σ hH (Submonoid.powers ϖ)
  have hbot := isPullback_SpecMap_of_isPushout _ _ _ _ hpush
  have hout := (isPullback_morphismRestrict (pullback.fst p j) (W x)).paste_vert hgen
  rw [hφ] at hout
  have hw : ((pullback.fst p j ∣_ W x) ≫ φ) ≫ s =
      (((pullback.fst p j) ⁻¹ᵁ W x).ι ≫ pullback.snd p j) ≫ j := by
    rw [Category.assoc]; exact hout.w
  set t := hbot.lift _ _ hw
  have ht1 : t ≫ Spec.map (CommRingCat.ofHom (algebraMap B Bϖ)) = (pullback.fst p j ∣_ W x) ≫ φ :=
    hbot.lift_fst _ _ hw
  have ht2 : t ≫ Spec.map (CommRingCat.ofHom σ) = ((pullback.fst p j) ⁻¹ᵁ W x).ι ≫ pullback.snd p j :=
    hbot.lift_snd _ _ hw
  rw [← ht2] at hout
  have hleft := IsPullback.of_bot hout ht1.symm hbot
  have : Etale (Spec.map (CommRingCat.ofHom (ψ x))) := HasRingHomProperty.Spec_iff.mpr (hψe x)
  have : Etale φ := inferInstance
  have : Etale t := MorphismProperty.of_isPullback hleft ‹Etale φ›
  have : Smooth (Spec.map (CommRingCat.ofHom σ)) := HasRingHomProperty.Spec_iff.mpr (hsm _ _ (h1 x) (h2 x))
  rw [← ht2]
  infer_instance

end CrystallineSemistableComparison
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.SmoothSndOfIsStrictlySemistable =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsIntegrallyClosedOfReducedQuotientLocalization =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsIntegrallyClosedOfReducedQuotientLocalization", "h": "module\n\npublic import Mathlib.RingTheory.IntegralClosure.IntegrallyClosed\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory.CompanionTheory.IntClosedAway

open Polynomial

theorem mem_span_of_eq_mul_integral {A K : Type*} [CommRing A] [IsDomain A] [Field K] [Algebra A K]
    [IsFractionRing A K] (t a : A) (hred : IsReduced (A ⧸ Ideal.span {t})) (z : K)
    (hz : IsIntegral A z) (h : algebraMap A K a = algebraMap A K t * z) :
    a ∈ Ideal.span {t} := by
  obtain ⟨p, hp, hpz⟩ := hz
  have hinj := IsFractionRing.injective A K
  have h1 : (p.scaleRoots t).eval a = 0 := by
    apply hinj
    rw [map_zero, ← Polynomial.eval₂_at_apply, h, Polynomial.scaleRoots_eval₂_mul, hpz, mul_zero]
  have h2 : (p.scaleRoots t).map (Ideal.Quotient.mk (Ideal.span {t})) = X ^ p.natDegree := by
    have ht0 : Ideal.Quotient.mk (Ideal.span {t}) t = 0 :=
      Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.mem_span_singleton_self t)
    ext i
    rw [coeff_map, coeff_scaleRoots, coeff_X_pow, map_mul, map_pow, ht0]
    rcases lt_trichotomy i p.natDegree with hi | hi | hi
    · rw [if_neg hi.ne, zero_pow (by omega), mul_zero]
    · subst hi
      simp [hp.coeff_natDegree]
    · rw [if_neg hi.ne', coeff_eq_zero_of_natDegree_lt hi, map_zero, zero_mul]
  have h3 : Ideal.Quotient.mk (Ideal.span {t}) a ^ p.natDegree = 0 := by
    have h4 := congrArg (Ideal.Quotient.mk (Ideal.span {t})) h1
    rw [map_zero, ← Polynomial.eval₂_at_apply, ← Polynomial.eval_map, h2] at h4
    simpa using h4
  exact Ideal.Quotient.eq_zero_iff_mem.mp (IsReduced.eq_zero _ ⟨_, h3⟩)

theorem isIntegrallyClosed_of_away :
    ∀ (A : Type) [CommRing A] [IsDomain A] (t : A), t ≠ 0 → IsReduced (A ⧸ Ideal.span {t}) →
      IsIntegrallyClosed (Localization.Away t) → IsIntegrallyClosed A := by
  intro A _ _ t ht hred hcl
  have hle : Submonoid.powers t ≤ nonZeroDivisors A := powers_le_nonZeroDivisors_of_noZeroDivisors ht
  haveI : IsDomain (Localization.Away t) := IsLocalization.isDomain_localization hle
  let K := FractionRing A
  letI : Algebra (Localization.Away t) K :=
    (IsLocalization.lift (M := Submonoid.powers t) (g := algebraMap A K)
      (fun y => IsLocalization.map_units K (⟨y, hle y.2⟩ : nonZeroDivisors A))).toAlgebra
  haveI : IsScalarTower A (Localization.Away t) K :=
    IsScalarTower.of_algebraMap_eq fun x => (IsLocalization.lift_eq _ x).symm
  haveI : IsFractionRing (Localization.Away t) K :=
    IsFractionRing.isFractionRing_of_isLocalization (Submonoid.powers t) (Localization.Away t) K hle
  rw [isIntegrallyClosed_iff K]
  intro x hx
  have hxB : IsIntegral (Localization.Away t) x := hx.tower_top
  obtain ⟨y, hy⟩ := IsIntegrallyClosed.algebraMap_eq_of_integral hxB
  obtain ⟨n, a, hna⟩ := IsLocalization.Away.surj t y
  have hxa : algebraMap A K a = x * algebraMap A K t ^ n := by
    have h5 := congrArg (algebraMap (Localization.Away t) K) hna
    rw [map_mul, map_pow, hy, ← IsScalarTower.algebraMap_apply A (Localization.Away t) K,
      ← IsScalarTower.algebraMap_apply A (Localization.Away t) K] at h5
    exact h5.symm
  have ht' : algebraMap A K t ≠ 0 := by
    exact (map_ne_zero_iff _ (IsFractionRing.injective A K)).mpr ht
  clear hna
  induction n generalizing a with
  | zero => exact ⟨a, by simpa using hxa⟩
  | succ n ih =>
    have hz : IsIntegral A (x * algebraMap A K t ^ n) := hx.mul (isIntegral_algebraMap.pow n)
    have hmem : a ∈ Ideal.span {t} :=
      mem_span_of_eq_mul_integral t a hred _ hz (by rw [hxa]; ring)
    obtain ⟨b, rfl⟩ := Ideal.mem_span_singleton'.mp hmem
    refine ih b (mul_left_injective₀ ht' ?_)
    simp only [map_mul] at hxa
    simp only [hxa]
    ring

end GlobalTheory.CompanionTheory.IntClosedAway
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsIntegrallyClosedOfReducedQuotientLocalization =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SemistableModelRingIsDomain =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SemistableModelRingIsDomain", "h": "module\n\npublic import Mathlib.Algebra.MvPolynomial.Basic\npublic import Mathlib.RingTheory.DiscreteValuationRing.Basic\npublic import Mathlib.Algebra.MvPolynomial.NoZeroDivisors\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.MvPolynomial.Degrees\npublic import Mathlib.Algebra.MvPolynomial.Equiv\npublic import Mathlib.RingTheory.Polynomial.UniqueFactorization\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory.CompanionTheory.SemistableLocal


open MvPolynomial in
theorem irreducible_prod_X_sub_C (O : Type) [CommRing O] [IsDomain O]
    [IsDiscreteValuationRing O] (ϖ : O) (hϖ : Irreducible ϖ) (m' r : ℕ) (hr : 1 ≤ r) :
    Irreducible ((∏ i ∈ Finset.univ.filter (fun i : Fin (m' + 1) => (i : ℕ) < r), X i) - C ϖ :
      MvPolynomial (Fin (m' + 1)) O) := by
  set g : MvPolynomial (Fin m') O :=
    ∏ j ∈ Finset.univ.filter (fun j : Fin m' => (j : ℕ) + 1 < r), MvPolynomial.X j with hgdef
  have hprod : (∏ i ∈ Finset.univ.filter (fun i : Fin (m' + 1) => (i : ℕ) < r),
      (MvPolynomial.X i : MvPolynomial (Fin (m' + 1)) O))
      = MvPolynomial.X 0 * ∏ j ∈ Finset.univ.filter (fun j : Fin m' => (j : ℕ) + 1 < r),
          (MvPolynomial.X (Fin.succ j) : MvPolynomial (Fin (m' + 1)) O) := by
    rw [Finset.prod_filter, Finset.prod_filter, Fin.prod_univ_succ]
    have h0 : 0 < r := by omega
    simp [Fin.val_succ, h0]
  have hC : MvPolynomial.finSuccEquiv O m' (MvPolynomial.C ϖ) =
      Polynomial.C (MvPolynomial.C ϖ) := by
    have h := (MvPolynomial.finSuccEquiv O m').commutes ϖ
    rw [MvPolynomial.algebraMap_eq, Polynomial.algebraMap_apply, MvPolynomial.algebraMap_eq] at h
    exact h
  have hϖ0 : (MvPolynomial.C ϖ : MvPolynomial (Fin m') O) ≠ 0 := by
    rw [Ne, MvPolynomial.C_eq_zero]; exact hϖ.ne_zero
  have hg0 : g ≠ 0 := by
    intro h
    have h1 := congrArg (MvPolynomial.eval (fun _ : Fin m' => (1 : O))) h
    simp [hgdef] at h1
  have hcop : ∀ a : MvPolynomial (Fin m') O, a ∣ g → a ∣ MvPolynomial.C ϖ → IsUnit a := by
    intro a hag hac
    obtain ⟨s, hs⟩ := hac
    have ha0 : a ≠ 0 := by rintro rfl; rw [zero_mul] at hs; exact hϖ0 hs
    have hs0 : s ≠ 0 := by rintro rfl; rw [mul_zero] at hs; exact hϖ0 hs
    have hdeg := MvPolynomial.totalDegree_mul_of_isDomain ha0 hs0
    rw [← hs, MvPolynomial.totalDegree_C] at hdeg
    have hda : a.totalDegree = 0 := by omega
    rw [MvPolynomial.totalDegree_eq_zero_iff_eq_C] at hda
    rw [hda] at hag ⊢
    refine IsUnit.map MvPolynomial.C (isUnit_of_dvd_one ?_)
    have h1 := map_dvd (MvPolynomial.eval (fun _ : Fin m' => (1 : O))) hag
    simpa [hgdef] using h1
  have hirr : Irreducible (Polynomial.C g * Polynomial.X + Polynomial.C (-MvPolynomial.C ϖ) :
      Polynomial (MvPolynomial (Fin m') O)) := by
    have hdeg : (Polynomial.C g * Polynomial.X + Polynomial.C (-MvPolynomial.C ϖ) :
        Polynomial (MvPolynomial (Fin m') O)).natDegree = 1 := Polynomial.natDegree_linear hg0
    have key2 : ∀ c d : Polynomial (MvPolynomial (Fin m') O),
        Polynomial.C g * Polynomial.X + Polynomial.C (-MvPolynomial.C ϖ) = c * d →
          c.natDegree = 0 → IsUnit c := by
      intro c d hcd hc
      have hc' := Polynomial.eq_C_of_natDegree_eq_zero hc
      have hdvd : Polynomial.C (c.coeff 0) ∣
          Polynomial.C g * Polynomial.X + Polynomial.C (-MvPolynomial.C ϖ) := by
        rw [← hc']; exact ⟨d, hcd⟩
      rw [Polynomial.C_dvd_iff_dvd_coeff] at hdvd
      rw [hc']
      refine IsUnit.map Polynomial.C (hcop _ ?_ ?_)
      · simpa [Polynomial.coeff_C_mul_X, Polynomial.coeff_C] using hdvd 1
      · simpa [Polynomial.coeff_C_mul_X, Polynomial.coeff_C] using hdvd 0
    refine irreducible_iff.mpr ⟨?_, ?_⟩
    · intro hu
      have h0 := Polynomial.natDegree_eq_zero_of_isUnit hu
      omega
    · intro a b hab
      have ha0 : a ≠ 0 := by
        rintro rfl; rw [zero_mul] at hab; rw [hab] at hdeg; simp at hdeg
      have hb0 : b ≠ 0 := by
        rintro rfl; rw [mul_zero] at hab; rw [hab] at hdeg; simp at hdeg
      have hsum := Polynomial.natDegree_mul ha0 hb0
      rw [← hab, hdeg] at hsum
      rcases Nat.eq_zero_or_pos a.natDegree with h | h
      · exact Or.inl (key2 a b hab h)
      · exact Or.inr (key2 b a (by rw [hab, mul_comm]) (by omega))
  refine (MulEquiv.irreducible_iff (MvPolynomial.finSuccEquiv O m')).mp ?_
  rw [hprod, map_sub, map_mul, map_prod, MvPolynomial.finSuccEquiv_X_zero, hC]
  simp only [MvPolynomial.finSuccEquiv_X_succ]
  convert hirr using 1
  rw [hgdef, map_prod, map_neg]
  ring

theorem isDomain_quotient_prod_X_sub_C :
    ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (ϖ : O), Irreducible ϖ →
      ∀ (m r : ℕ), 1 ≤ r → r ≤ m →
        IsDomain (MvPolynomial (Fin m) O ⧸ Ideal.span
          {(∏ i ∈ Finset.univ.filter (fun i : Fin m => (i : ℕ) < r), MvPolynomial.X i) -
            MvPolynomial.C ϖ}) := by
  intro O _ _ _ ϖ hϖ m r hr hrm
  obtain ⟨m', rfl⟩ : ∃ m', m = m' + 1 := ⟨m - 1, by omega⟩
  have hirr := irreducible_prod_X_sub_C O ϖ hϖ m' r hr
  haveI : UniqueFactorizationMonoid (MvPolynomial (Fin (m' + 1)) O) :=
    MvPolynomial.uniqueFactorizationMonoid _
  have hp := UniqueFactorizationMonoid.irreducible_iff_prime.mp hirr
  haveI := (Ideal.span_singleton_prime hp.ne_zero).mpr hp
  exact Ideal.Quotient.isDomain _

end GlobalTheory.CompanionTheory.SemistableLocal
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SemistableModelRingIsDomain =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SemistableSpecialFibreProperty =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SemistableSpecialFibreProperty", "h": "module\n\npublic import Mathlib.Algebra.MvPolynomial.Basic\npublic import Mathlib.RingTheory.DiscreteValuationRing.Basic\npublic import Mathlib.Algebra.MvPolynomial.Division\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.MvPolynomial.Eval\npublic import Mathlib.RingTheory.Ideal.Quotient.Nilpotent\npublic import Mathlib.RingTheory.LocalRing.ResidueField.Basic\npublic import Mathlib.RingTheory.Polynomial.Basic\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory.CompanionTheory.SemistableSpecial

open MvPolynomial

theorem isRadical_prod_X {k σ : Type} [CommRing k] [IsDomain k] [UniqueFactorizationMonoid k]
    (s : Finset σ) : IsRadical (∏ i ∈ s, (X i : MvPolynomial σ k)) := by
  classical
  have key : ∀ (t : Finset σ) (y : MvPolynomial σ k),
      (∀ i ∈ t, (X i : MvPolynomial σ k) ∣ y) → (∏ i ∈ t, (X i : MvPolynomial σ k)) ∣ y := by
    intro t
    induction t using Finset.induction_on with
    | empty => intro y _; simp
    | @insert a t ha ih =>
      intro y hy
      obtain ⟨z, rfl⟩ := hy a (Finset.mem_insert_self a t)
      rw [Finset.prod_insert ha]
      refine mul_dvd_mul_left _ (ih z ?_)
      intro i hi
      have hXi : Prime (X i : MvPolynomial σ k) := MvPolynomial.X_prime
      rcases hXi.dvd_or_dvd (hy i (Finset.mem_insert_of_mem hi)) with h | h
      · exfalso
        rw [MvPolynomial.X_dvd_X] at h
        exact ha (h ▸ hi)
      · exact h
  intro n y hy
  apply key
  intro i hi
  have hXi : Prime (X i : MvPolynomial σ k) := MvPolynomial.X_prime
  exact hXi.dvd_of_dvd_pow
    (dvd_trans (Finset.dvd_prod_of_mem (fun j => (X j : MvPolynomial σ k)) hi) hy)

theorem isRadical_span_sup {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
    {ϖ : O} (hϖ : Irreducible ϖ) {σ : Type} (s : Finset σ) :
    (Ideal.span {(∏ i ∈ s, (X i : MvPolynomial σ O)) - C ϖ} ⊔
      Ideal.span {(C ϖ : MvPolynomial σ O)}).IsRadical := by
  classical
  set P : MvPolynomial σ O := ∏ i ∈ s, X i with hP
  set φ : MvPolynomial σ O →+* MvPolynomial σ (IsLocalRing.ResidueField O) :=
    MvPolynomial.map (IsLocalRing.residue O) with hφ
  have hker : RingHom.ker φ = Ideal.span {C ϖ} := by
    rw [hφ, MvPolynomial.ker_map, IsLocalRing.ker_residue,
      (IsDiscreteValuationRing.irreducible_iff_uniformizer ϖ).mp hϖ, Ideal.map_span,
      Set.image_singleton]
  have hφP : φ P = ∏ i ∈ s, (X i : MvPolynomial σ (IsLocalRing.ResidueField O)) := by
    rw [hP, hφ, map_prod]
    simp only [MvPolynomial.map_X]
  have hCϖ : φ (C ϖ) = 0 := by
    rw [← RingHom.mem_ker, hker]
    exact Ideal.mem_span_singleton_self _
  have hPmem : P ∈ Ideal.span {P - C ϖ} ⊔ Ideal.span {(C ϖ : MvPolynomial σ O)} := by
    have h := Ideal.add_mem (Ideal.span {P - C ϖ} ⊔ Ideal.span {(C ϖ : MvPolynomial σ O)})
      (Ideal.mem_sup_left (Ideal.mem_span_singleton_self (P - C ϖ)))
      (Ideal.mem_sup_right (Ideal.mem_span_singleton_self (C ϖ : MvPolynomial σ O)))
    rwa [sub_add_cancel] at h
  have hmem : ∀ x, x ∈ Ideal.span {P - C ϖ} ⊔ Ideal.span {(C ϖ : MvPolynomial σ O)} ↔
      φ P ∣ φ x := by
    intro x
    constructor
    · intro hx
      have hle : Ideal.span {P - C ϖ} ⊔ Ideal.span {(C ϖ : MvPolynomial σ O)} ≤
          Ideal.comap φ (Ideal.span {φ P}) := by
        refine sup_le ?_ ?_
        · rw [Ideal.span_le, Set.singleton_subset_iff, SetLike.mem_coe, Ideal.mem_comap,
            map_sub, hCϖ, sub_zero]
          exact Ideal.mem_span_singleton_self _
        · rw [Ideal.span_le, Set.singleton_subset_iff, SetLike.mem_coe, Ideal.mem_comap, hCϖ]
          exact Ideal.zero_mem _
      exact Ideal.mem_span_singleton.mp (Ideal.mem_comap.mp (hle hx))
    · rintro ⟨g, hg⟩
      obtain ⟨g', rfl⟩ := MvPolynomial.map_surjective _ IsLocalRing.residue_surjective g
      have hdiff : x - P * g' ∈ RingHom.ker φ := by
        rw [RingHom.mem_ker, map_sub, map_mul, hg, hφ]
        exact sub_self _
      rw [hker] at hdiff
      have hx : x = (x - P * g') + P * g' := by ring
      rw [hx]
      exact Ideal.add_mem _ (Ideal.mem_sup_right hdiff) (Ideal.mul_mem_right _ _ hPmem)
  unfold Ideal.IsRadical
  intro x hx
  rw [Ideal.mem_radical_iff] at hx
  obtain ⟨n, hn⟩ := hx
  rw [hmem] at hn
  rw [hmem]
  rw [map_pow, hφP] at hn
  rw [hφP]
  exact isRadical_prod_X s n (φ x) hn

theorem special_fibre_isReduced : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
    (ϖ : O), Irreducible ϖ → ∀ (m r : ℕ), 1 ≤ r → r ≤ m →
    IsReduced ((MvPolynomial (Fin m) O ⧸ Ideal.span {(∏ i ∈ Finset.univ.filter (fun i : Fin m => (i : ℕ) < r), MvPolynomial.X i) - MvPolynomial.C ϖ}) ⧸ Ideal.span {algebraMap O (MvPolynomial (Fin m) O ⧸ Ideal.span {(∏ i ∈ Finset.univ.filter (fun i : Fin m => (i : ℕ) < r), MvPolynomial.X i) - MvPolynomial.C ϖ}) ϖ}) := by
  intro O _ _ _ ϖ hϖ m r _ _
  set J : Ideal (MvPolynomial (Fin m) O) := Ideal.span {(∏ i ∈ Finset.univ.filter
    (fun i : Fin m => (i : ℕ) < r), MvPolynomial.X i) - MvPolynomial.C ϖ} with hJ
  have e : Ideal.span {algebraMap O (MvPolynomial (Fin m) O ⧸ J) ϖ} =
      Ideal.map (Ideal.Quotient.mk J) (Ideal.span {(MvPolynomial.C ϖ : MvPolynomial (Fin m) O)}) := by
    rw [Ideal.map_span, Set.image_singleton, ← Ideal.Quotient.mk_algebraMap,
      MvPolynomial.algebraMap_eq]
  rw [e]
  have : IsReduced (MvPolynomial (Fin m) O ⧸
      (J ⊔ Ideal.span {(MvPolynomial.C ϖ : MvPolynomial (Fin m) O)})) := by
    rw [← Ideal.isRadical_iff_quotient_reduced]
    exact isRadical_span_sup hϖ (Finset.univ.filter (fun i : Fin m => (i : ℕ) < r))
  exact isReduced_of_injective
    (DoubleQuot.quotQuotEquivQuotSup J (Ideal.span {(MvPolynomial.C ϖ : MvPolynomial (Fin m) O)}))
    (RingEquiv.injective _)

end GlobalTheory.CompanionTheory.SemistableSpecial
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SemistableSpecialFibreProperty =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.SsModelAlgebraMapInjective =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.SsModelAlgebraMapInjective", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.ShimuraVarieties.IsOpenOfMemIrreducibleComponentsOfFinite\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HarishChandraFormulaStatement\npublic import Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.GeometricallyIntegralIffGeometricallyConnectedOf\npublic import Mathlib.RingTheory.IntegralClosure.IntegrallyClosed\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsIntegrallyClosedOfReducedQuotientLocalization\npublic import Mathlib.RingTheory.DiscreteValuationRing.Basic\npublic import Mathlib.RingTheory.RingHom.Smooth\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SemistableGenericFibreLocalization\npublic import Mathlib.Algebra.MvPolynomial.Basic\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SemistableModelRingIsDomain\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SemistableSpecialFibreProperty\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.NormLtOneOfIrreducible\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory Limits AlgebraicGeometry

namespace CrystallineSemistableComparison

section Ring

variable (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (ϖ : O) (hϖ : Irreducible ϖ)
  (m r : ℕ) (h1 : 1 ≤ r) (h2 : r ≤ m)

include hϖ h1 h2 in
theorem ssModel_isDomain : IsDomain (GlobalTheory.Et.ssModel O ϖ m r) := _root_.GlobalTheory.CompanionTheory.SemistableLocal.isDomain_quotient_prod_X_sub_C O ϖ hϖ m r h1 h2

include hϖ h1 h2 in
theorem ssModel_algebraMap_ne_zero : algebraMap O (GlobalTheory.Et.ssModel O ϖ m r) ϖ ≠ 0 := by
  haveI := ssModel_isDomain O ϖ hϖ m r h1 h2
  intro h
  have h0 : ϖ ∈ nonZeroDivisors O := mem_nonZeroDivisors_of_ne_zero hϖ.ne_zero
  have := GlobalTheory.LogCris.model_mul_eq_zero ϖ h0 (1 : GlobalTheory.Et.ssModel O ϖ m r) (by rw [h, zero_mul])
  exact one_ne_zero this

include hϖ h1 h2 in
theorem ssModel_algebraMap_injective : Function.Injective (algebraMap O (GlobalTheory.Et.ssModel O ϖ m r)) := by
  haveI := ssModel_isDomain O ϖ hϖ m r h1 h2
  set_option backward.isDefEq.respectTransparency.instanceSearchTypes false in rw [injective_iff_map_eq_zero]
  intro c hc
  by_contra hc0
  obtain ⟨n, u, rfl⟩ := IsDiscreteValuationRing.eq_unit_mul_pow_irreducible hc0 hϖ
  rw [map_mul, map_pow] at hc
  rcases mul_eq_zero.1 hc with h | h
  · exact (u.isUnit.map (algebraMap O _)).ne_zero h
  · exact ssModel_algebraMap_ne_zero O ϖ hϖ m r h1 h2 (pow_eq_zero_iff'.1 h).1

include hϖ h1 h2 in
theorem ssModel_normal (F : Type) [Field F] [Algebra O F] [IsLocalization.Away ϖ F] :
    IsDomain (GlobalTheory.Et.ssModel O ϖ m r) ∧ IsIntegrallyClosed (GlobalTheory.Et.ssModel O ϖ m r) := by
  have hd := ssModel_isDomain O ϖ hϖ m r h1 h2
  refine ⟨hd, ?_⟩
  have ht := ssModel_algebraMap_ne_zero O ϖ hϖ m r h1 h2
  have hred := _root_.GlobalTheory.CompanionTheory.SemistableSpecial.special_fibre_isReduced O ϖ hϖ m r h1 h2
  have hs := _root_.GlobalTheory.CompanionTheory.Semistable.smooth_generic_fibre O ϖ hϖ m r h1 h2 F
  haveI : Smooth (Spec.map (CommRingCat.ofHom (IsLocalization.Away.map F
      (Localization.Away (algebraMap O (GlobalTheory.Et.ssModel O ϖ m r) ϖ)) (algebraMap O (GlobalTheory.Et.ssModel O ϖ m r)) ϖ))) :=
    HasRingHomProperty.Spec_iff.mpr hs
  have hn := GlobalTheory.isNormalScheme_of_smooth (Spec.map (CommRingCat.ofHom (IsLocalization.Away.map F
      (Localization.Away (algebraMap O (GlobalTheory.Et.ssModel O ϖ m r) ϖ)) (algebraMap O (GlobalTheory.Et.ssModel O ϖ m r)) ϖ)))
  haveI : IsDomain (Localization.Away (algebraMap O (GlobalTheory.Et.ssModel O ϖ m r) ϖ)) :=
    IsLocalization.isDomain_localization (powers_le_nonZeroDivisors_of_noZeroDivisors ht)
  have hic := (GlobalTheory.IsNormalScheme.spec_iff_of_isDomain
    (CommRingCat.of (Localization.Away (algebraMap O (GlobalTheory.Et.ssModel O ϖ m r) ϖ)))).mp hn
  exact _root_.GlobalTheory.CompanionTheory.IntClosedAway.isIntegrallyClosed_of_away _ _ ht hred hic

include hϖ h1 h2 in
theorem ssModel_flat : Module.Flat O (GlobalTheory.Et.ssModel O ϖ m r) := by
  haveI := ssModel_isDomain O ϖ hϖ m r h1 h2
  have hi := ssModel_algebraMap_injective O ϖ hϖ m r h1 h2
  haveI : Module.IsTorsionFree O (GlobalTheory.Et.ssModel O ϖ m r) := Module.isTorsionFree_iff_algebraMap_injective.mpr hi
  infer_instance

end Ring

section Scheme

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} [FiniteDimensional ℚ_[l] K]

theorem good_isNormalScheme (M : Model l K) (hM : M.Good) : GlobalTheory.IsNormalScheme M.X := by
  haveI := OK_dvr (l := l) (K := K)
  obtain ⟨-, ϖ, hϖ, hss⟩ := hM
  haveI := OK_away hϖ
  refine GlobalTheory.IsNormalScheme.of_forall_exists_opens fun x => ?_
  obtain ⟨U, hU, hx, m, r, h1, h2, ψ, hψ, -⟩ := hss x
  refine ⟨U, hx, ?_⟩
  rw [GlobalTheory.IsNormalScheme.iff_spec_of_isAffineOpen hU]
  obtain ⟨hd, hic⟩ := ssModel_normal (OK l K) ϖ hϖ m r h1 h2 K
  haveI : Etale (Spec.map (CommRingCat.ofHom ψ)) := HasRingHomProperty.Spec_iff.mpr hψ
  exact GlobalTheory.isNormalScheme_of_smooth (Spec.map (CommRingCat.ofHom ψ))

theorem good_isLocallyNoetherian (M : Model l K) (hM : M.Good) : IsLocallyNoetherian M.X := by
  haveI := OK_dvr (l := l) (K := K)
  obtain ⟨-, ϖ, hϖ, hss⟩ := hM
  choose U hU hx m r h1 h2 ψ hψ _hc using hss
  refine isLocallyNoetherian_of_affine_cover (S := fun x => ⟨U x, hU x⟩) ?_ fun x => ?_
  · refine top_le_iff.mp fun y _ => ?_
    exact TopologicalSpace.Opens.mem_iSup.mpr ⟨y, hx y⟩
  · letI := (ψ x).toAlgebra
    haveI : Algebra.Etale _ _ := hψ x
    exact Algebra.FiniteType.isNoetherianRing (GlobalTheory.Et.ssModel (OK l K) ϖ (m x) (r x)) Γ(M.X, U x)

theorem good_flat (M : Model l K) (hM : M.Good) : Flat M.p := by
  haveI := OK_dvr (l := l) (K := K)
  obtain ⟨-, ϖ, hϖ, hss⟩ := hM
  choose U hU hx m r h1 h2 ψ hψ hc using hss
  refine HasRingHomProperty.of_iSup_eq_top (P := @Flat) (U := fun x => ⟨U x, hU x⟩) ?_ fun x => ?_
  · refine top_le_iff.mp fun y _ => ?_
    exact TopologicalSpace.Opens.mem_iSup.mpr ⟨y, hx y⟩
  · have e : (M.p.appLE ⊤ (U x) le_top) = (Scheme.ΓSpecIso (CommRingCat.of (OK l K))).hom ≫
        CommRingCat.ofHom ((ψ x).comp (algebraMap (OK l K) _)) := by
      rw [hc x]; simp
    show RingHom.Flat (M.p.appLE ⊤ (U x) le_top).hom
    rw [e, CommRingCat.hom_comp]
    refine RingHom.Flat.comp (RingHom.Flat.of_bijective (ConcreteCategory.bijective_of_isIso _)) ?_
    haveI : Etale (Spec.map (CommRingCat.ofHom (ψ x))) := HasRingHomProperty.Spec_iff.mpr (hψ x)
    have hf : RingHom.Flat (ψ x) := HasRingHomProperty.Spec_iff.mp (inferInstance : Flat (Spec.map (CommRingCat.ofHom (ψ x))))
    refine RingHom.Flat.comp ?_ hf
    exact RingHom.flat_algebraMap_iff.mpr (ssModel_flat (OK l K) ϖ hϖ (m x) (r x) (h1 x) (h2 x))

end Scheme

end CrystallineSemistableComparison
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.SsModelAlgebraMapInjective =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.CompGood =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.CompGood", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.EtSide\npublic import Mathlib.RingTheory.DiscreteValuationRing.Basic\npublic import Mathlib.RingTheory.RingHom.Smooth\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SemistableGenericFibreLocalization\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.CompSm\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.SmoothSndOfIsStrictlySemistable\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.SsModelAlgebraMapInjective\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.NormLtOneOfIrreducible\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory Limits AlgebraicGeometry TopologicalSpace

namespace CrystallineSemistableComparison

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

theorem Model.smooth_q [FiniteDimensional ℚ_[l] K] (M : Model l K) (hM : M.Good) : Smooth M.q := by
  obtain ⟨-, ϖ, hϖ, hss⟩ := hM
  have := OK_away hϖ
  have := OK_dvr (l := l) (K := K)
  exact smooth_snd_of_isStrictlySemistable ϖ M.p hss
    (fun m r h1 h2 ↦ _root_.GlobalTheory.CompanionTheory.Semistable.smooth_generic_fibre (OK l K) ϖ hϖ m r h1 h2 K)

theorem compGood : ∀ (l : ℕ) [Fact l.Prime] (K : IntermediateField ℚ_[l] (PadicAlgCl l)) [FiniteDimensional ℚ_[l] K],
    CompM (Model.Good (l := l) (K := K)) := by
  intro l _ K _
  refine compM_of _ isOpenImmersion_gen (fun M hM U hU ↦ M.good_sub hM U hU) (fun M hM ↦ M.noetherianSpace hM) ?_
  intro M hM
  have := good_flat M hM
  exact ⟨good_isNormalScheme M hM, good_isLocallyNoetherian M hM, Flat.generalizingMap M.p, M.smooth_q hM⟩

end CrystallineSemistableComparison
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.CompGood =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.IsOpenStabilizer =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.IsOpenStabilizer", "h": "module\n\npublic import Mathlib.FieldTheory.KrullTopology\npublic import Mathlib.RingTheory.Invariant.Defs\npublic import Mathlib.RingTheory.TensorProduct.Free\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.FieldTheory.Galois.Profinite\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Henselian\npublic import Mathlib.RingTheory.Invariant.Profinite\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.FieldTheory.Galois.Infinite\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open TensorProduct

namespace CrystallineSemistableComparison.GeoA

variable {k Ω : Type} [Field k] [Field Ω] [Algebra k Ω] (R : Type) [CommRing R] [Algebra k R]

def act (σ : Ω ≃ₐ[k] Ω) : (Ω ⊗[k] R) ≃ₐ[k] (Ω ⊗[k] R) := Algebra.TensorProduct.congr σ AlgEquiv.refl

@[simp] theorem act_tmul (σ : Ω ≃ₐ[k] Ω) (a : Ω) (r : R) : act R σ (a ⊗ₜ r) = σ a ⊗ₜ r := rfl

theorem smul_eq_act (σ : Ω ≃ₐ[k] Ω) (x : Ω ⊗[k] R) : σ • x = act R σ x := by
  induction x using TensorProduct.induction_on with
  | zero => simp
  | tmul a r => rw [TensorProduct.smul_tmul', act_tmul, AlgEquiv.smul_def]
  | add x y hx hy => rw [smul_add, hx, hy, map_add (f := _)]

scoped instance instAct : MulSemiringAction (Ω ≃ₐ[k] Ω) (Ω ⊗[k] R) :=
  { TensorProduct.leftDistribMulAction with
    smul_one := fun σ => by rw [smul_eq_act, map_one]
    smul_mul := fun σ x y => by rw [smul_eq_act, smul_eq_act, smul_eq_act, map_mul] }

alias smul_def := _root_.CrystallineSemistableComparison.GeoA.smul_eq_act

attribute [local instance] Algebra.TensorProduct.rightAlgebra

scoped instance smulComm : SMulCommClass (Ω ≃ₐ[k] Ω) R (Ω ⊗[k] R) where
  smul_comm σ r x := by
    rw [Algebra.smul_def, Algebra.smul_def, smul_def, smul_def, map_mul]
    congr 1
    change act R σ (1 ⊗ₜ r) = 1 ⊗ₜ r
    simp

theorem repr_act {ι : Type} (b : Module.Basis ι k R) (σ : Ω ≃ₐ[k] Ω) (x : Ω ⊗[k] R) (i : ι) :
    (Algebra.TensorProduct.basis Ω b).repr (act R σ x) i = σ ((Algebra.TensorProduct.basis Ω b).repr x i) := by
  induction x using TensorProduct.induction_on with
  | zero => simp
  | tmul a r =>
    simp only [act_tmul, Algebra.TensorProduct.basis_repr_tmul, Finsupp.smul_apply, Finsupp.mapRange_apply,
      smul_eq_mul, map_mul, AlgEquiv.commutes]
  | add x y hx hy => simp only [map_add (f := _), Finsupp.add_apply, hx, hy]

variable [IsGalois k Ω]

open Classical in
theorem isInvariant : Algebra.IsInvariant R (Ω ⊗[k] R) (Ω ≃ₐ[k] Ω) where
  isInvariant x hx := by
    let b := Module.Free.chooseBasis k R
    let B := Algebra.TensorProduct.basis Ω b
    have hc : ∀ i, ∃ c : k, algebraMap k Ω c = B.repr x i := fun i =>
      (InfiniteGalois.mem_range_algebraMap_iff_fixed (B.repr x i)).2 fun σ => by
        rw [← repr_act R b σ x]
        exact congrArg (fun y => B.repr y i) (hx σ)
    let φ : Ω → k := fun ω => if h : ∃ c : k, algebraMap k Ω c = ω then h.choose else 0
    have hφ0 : φ 0 = 0 := by
      simp only [φ]
      split_ifs with h
      · exact (algebraMap k Ω).injective (h.choose_spec.trans (map_zero _).symm)
      · rfl
    have hφ : ∀ i, algebraMap k Ω (φ (B.repr x i)) = B.repr x i := fun i => by
      simp only [φ, dif_pos (hc i)]
      exact (hc i).choose_spec
    let f : Module.Free.ChooseBasisIndex k R →₀ k := Finsupp.mapRange φ hφ0 (B.repr x)
    refine ⟨b.repr.symm f, B.repr.injective ?_⟩
    ext i
    change B.repr (1 ⊗ₜ (b.repr.symm f)) i = _
    rw [Algebra.TensorProduct.basis_repr_tmul, one_smul, Finsupp.mapRange_apply, Module.Basis.repr_symm_apply,
      Module.Basis.repr_linearCombination]
    exact hφ i

omit [IsGalois k Ω] in
theorem isOpen_stabilizer [Algebra.IsIntegral k Ω] (x : Ω ⊗[k] R) :
    IsOpen (MulAction.stabilizer (Ω ≃ₐ[k] Ω) x : Set (Ω ≃ₐ[k] Ω)) := by
  induction x using TensorProduct.induction_on with
  | zero =>
    refine Subgroup.isOpen_mono (H₁ := ⊤) (fun σ _ => by rw [MulAction.mem_stabilizer_iff, smul_zero]) ?_
    rw [Subgroup.coe_top]; exact isOpen_univ
  | tmul a r =>
    refine Subgroup.isOpen_mono (H₁ := MulAction.stabilizer (Ω ≃ₐ[k] Ω) a) ?_ (stabilizer_isOpen_of_isIntegral a)
    intro σ hσ
    rw [MulAction.mem_stabilizer_iff] at hσ ⊢
    rw [smul_def, act_tmul]
    exact congrArg (· ⊗ₜ[k] r) hσ
  | add x y hx hy =>
    refine Subgroup.isOpen_mono (H₁ := MulAction.stabilizer (Ω ≃ₐ[k] Ω) x ⊓ MulAction.stabilizer (Ω ≃ₐ[k] Ω) y)
      ?_ (by rw [Subgroup.coe_inf]; exact hx.inter hy)
    intro σ hσ
    rw [MulAction.mem_stabilizer_iff]
    rw [smul_add, MulAction.mem_stabilizer_iff.1 (Subgroup.mem_inf.1 hσ).1,
      MulAction.mem_stabilizer_iff.1 (Subgroup.mem_inf.1 hσ).2]

theorem exists_comap_eq (P Q : Ideal (Ω ⊗[k] R)) [P.IsPrime] [Q.IsPrime]
    (h : P.comap (Algebra.TensorProduct.includeRight : R →ₐ[k] Ω ⊗[k] R).toRingHom =
      Q.comap (Algebra.TensorProduct.includeRight : R →ₐ[k] Ω ⊗[k] R).toRingHom) :
    ∃ σ : Ω ≃ₐ[k] Ω, Q = P.comap (act R σ).toRingEquiv.toRingHom := by
  let _ : TopologicalSpace (Ω ⊗[k] R) := ⊥
  have : DiscreteTopology (Ω ⊗[k] R) := ⟨rfl⟩
  have : ContinuousSMul (Ω ≃ₐ[k] Ω) (Ω ⊗[k] R) := by
    rw [continuousSMul_iff_stabilizer_isOpen]
    exact isOpen_stabilizer R
  have := isInvariant (k := k) (Ω := Ω) R
  have := smulComm (k := k) (Ω := Ω) R
  obtain ⟨g, hg⟩ := Algebra.IsInvariant.exists_smul_of_under_eq_of_profinite (A := R) (G := Ω ≃ₐ[k] Ω) P Q h
  refine ⟨g⁻¹, ?_⟩
  rw [hg, Ideal.pointwise_smul_eq_comap]
  ext x
  simp only [Ideal.mem_comap]
  have e : (MulSemiringAction.toRingAut (Ω ≃ₐ[k] Ω) (Ω ⊗[k] R) g).symm x = act R g⁻¹ x := by
    rw [← smul_def]; rfl
  rw [e]; rfl

end CrystallineSemistableComparison.GeoA
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.IsOpenStabilizer =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.ExistsGalMapApply =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.ExistsGalMapApply", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.IsMatrixForm\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.IsOpenStabilizer\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory Limits AlgebraicGeometry TensorProduct

namespace CrystallineSemistableComparison.GeoB

variable {k Ω : Type} [Field k] [Field Ω] [Algebra k Ω] {X : Scheme.{0}} (p : X ⟶ Spec (CommRingCat.of k))

theorem exists_galMap_apply [IsGalois k Ω] (y z : GlobalTheory.Et.geom Ω p)
    (h : pullback.fst p (Spec.map (CommRingCat.ofHom (algebraMap k Ω))) y =
      pullback.fst p (Spec.map (CommRingCat.ofHom (algebraMap k Ω))) z) :
    ∃ σ : Ω ≃ₐ[k] Ω, GlobalTheory.Et.galMap Ω p σ y = z := by
  set ψ := Spec.map (CommRingCat.ofHom (algebraMap k Ω)) with hψ
  obtain ⟨R, f, hf, x₀, hx₀⟩ := Scheme.exists_Spec_apply_eq (pullback.fst p ψ y)
  let κ : CommRingCat.of k ⟶ R := Spec.preimage (f ≫ p)
  let _ : Algebra k R := κ.hom.toAlgebra
  let iΩ : CommRingCat.of Ω ⟶ CommRingCat.of (Ω ⊗[k] R) :=
    CommRingCat.ofHom Algebra.TensorProduct.includeLeftRingHom
  let iR : R ⟶ CommRingCat.of (Ω ⊗[k] R) := CommRingCat.ofHom Algebra.TensorProduct.includeRight.toRingHom
  have hout : IsPullback (Spec.map iΩ) (Spec.map iR) ψ (f ≫ p) := by
    have := isPullback_SpecMap_of_isPushout _ _ _ _ (CommRingCat.isPushout_tensorProduct k Ω R)
    rw [← Spec.map_preimage (f ≫ p)]
    exact this
  have t : IsPullback (pullback.snd p ψ) (pullback.fst p ψ) ψ p := (IsPullback.of_hasPullback p ψ).flip
  have L := IsPullback.of_right' hout t
  set Φ := t.lift (Spec.map iΩ) (Spec.map iR ≫ f) (by rw [hout.w, Category.assoc]) with hΦ
  have hΦs : Φ ≫ pullback.snd p ψ = Spec.map iΩ := t.lift_fst _ _ _
  have hΦf : Φ ≫ pullback.fst p ψ = Spec.map iR ≫ f := t.lift_snd _ _ _
  have hrange : ∀ w : GlobalTheory.Et.geom Ω p, pullback.fst p ψ w ∈ Set.range f → ∃ P, Φ P = w := by
    intro w hw
    have : w ∈ Set.range (pullback.fst (pullback.fst p ψ) f) := by
      rw [Scheme.Pullback.range_fst]; exact hw
    obtain ⟨v, rfl⟩ := this
    refine ⟨L.isoPullback.inv v, ?_⟩
    rw [← Scheme.Hom.comp_apply, L.isoPullback_inv_fst]
  obtain ⟨P, rfl⟩ := hrange y ⟨x₀, hx₀⟩
  obtain ⟨Q, rfl⟩ := hrange z ⟨x₀, hx₀.trans h⟩
  have hfst : ∀ P, pullback.fst p ψ (Φ P) = f (Spec.map iR P) := fun P => by
    rw [← Scheme.Hom.comp_apply, hΦf, Scheme.Hom.comp_apply]
  have hPQ : Spec.map iR P = Spec.map iR Q := f.isOpenEmbedding.injective (by rw [← hfst, ← hfst, h])
  have hPQ' : P.asIdeal.comap iR.hom = Q.asIdeal.comap iR.hom := congrArg PrimeSpectrum.asIdeal hPQ
  have : P.asIdeal.IsPrime := P.2
  have : Q.asIdeal.IsPrime := Q.2
  obtain ⟨σ, hσ⟩ := GeoA.exists_comap_eq (k := k) (Ω := Ω) R P.asIdeal Q.asIdeal hPQ'
  refine ⟨σ, ?_⟩
  let T : CommRingCat.of (Ω ⊗[k] R) ⟶ CommRingCat.of (Ω ⊗[k] R) :=
    CommRingCat.ofHom (GeoA.act R σ).toRingEquiv.toRingHom
  have hTR : iR ≫ T = iR := by
    ext r
    change GeoA.act R σ (1 ⊗ₜ r) = 1 ⊗ₜ r
    simp
  have hTΩ : iΩ ≫ T = CommRingCat.ofHom (σ : Ω →+* Ω) ≫ iΩ := by
    ext a
    change GeoA.act R σ (a ⊗ₜ 1) = σ a ⊗ₜ 1
    simp
  have heq : Spec.map T ≫ Φ = Φ ≫ GlobalTheory.Et.galMap Ω p σ := by
    apply pullback.hom_ext
    · rw [Category.assoc, Category.assoc, GlobalTheory.Et.galMap_fst, hΦf, ← Category.assoc, ← Spec.map_comp, hTR]
    · rw [Category.assoc, Category.assoc, GlobalTheory.Et.galMap_snd, hΦs, ← Category.assoc, hΦs, ← Spec.map_comp,
        ← Spec.map_comp, hTΩ]
  have hTP : Spec.map T P = Q := PrimeSpectrum.ext (by rw [Spec.map_apply]; exact hσ.symm)
  rw [← hTP, ← Scheme.Hom.comp_apply, ← heq, Scheme.Hom.comp_apply]

end CrystallineSemistableComparison.GeoB
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.ExistsGalMapApply =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.IsOpenConnectedComponent =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.IsOpenConnectedComponent", "h": "module\n\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.IsOpenConnectedComponentOfNoetherianSpace\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.IsMatrixForm\npublic import Mathlib.Order.CompletePartialOrder\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.GalMapMul\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.GeometricallyIntegralIffGeometricallyConnectedOf\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.ExistsGalMapApply\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory Limits AlgebraicGeometry Topology TopologicalSpace

namespace CrystallineSemistableComparison.GeoC

theorem isOpen_connectedComponent {X : Type*} [TopologicalSpace X] [NoetherianSpace X] (x : X) :
    IsOpen (connectedComponent x) := by
  apply CrystallineSemistableComparison.isOpen_connectedComponent_of_noetherianSpace

theorem image_connectedComponent {X : Type*} [TopologicalSpace X] (h : X ≃ₜ X) (x : X) :
    h '' connectedComponent x = connectedComponent (h x) := by
  refine (h.continuous.image_connectedComponent_subset x).antisymm ?_
  intro y hy
  refine ⟨h.symm y, ?_, h.apply_symm_apply y⟩
  have := h.symm.continuous.image_connectedComponent_subset (h x) ⟨y, hy, rfl⟩
  rwa [h.symm_apply_apply] at this

variable {k Ω : Type} [Field k] [Field Ω] [Algebra k Ω] {X : Scheme.{0}} (p : X ⟶ Spec (CommRingCat.of k))

theorem galMap_comp_inv (σ : Ω ≃ₐ[k] Ω) : GlobalTheory.Et.galMap Ω p σ ≫ GlobalTheory.Et.galMap Ω p σ⁻¹ = 𝟙 _ := by
  rw [← GlobalTheory.EtC.galMap_mul, mul_inv_cancel, GlobalTheory.EtC.galMap_one]

theorem galMap_inv_comp (σ : Ω ≃ₐ[k] Ω) : GlobalTheory.Et.galMap Ω p σ⁻¹ ≫ GlobalTheory.Et.galMap Ω p σ = 𝟙 _ := by
  rw [← GlobalTheory.EtC.galMap_mul, inv_mul_cancel, GlobalTheory.EtC.galMap_one]

instance (σ : Ω ≃ₐ[k] Ω) : IsIso (GlobalTheory.Et.galMap Ω p σ) :=
  ⟨⟨GlobalTheory.Et.galMap Ω p σ⁻¹, galMap_comp_inv p σ, galMap_inv_comp p σ⟩⟩

def galHomeo (σ : Ω ≃ₐ[k] Ω) : GlobalTheory.Et.geom Ω p ≃ₜ GlobalTheory.Et.geom Ω p where
  toFun := GlobalTheory.Et.galMap Ω p σ
  invFun := GlobalTheory.Et.galMap Ω p σ⁻¹
  left_inv x := by rw [← Scheme.Hom.comp_apply, galMap_comp_inv]; rfl
  right_inv x := by rw [← Scheme.Hom.comp_apply, galMap_inv_comp]; rfl
  continuous_toFun := (GlobalTheory.Et.galMap Ω p σ).continuous
  continuous_invFun := (GlobalTheory.Et.galMap Ω p σ⁻¹).continuous

theorem galMap_mul_apply (σ τ : Ω ≃ₐ[k] Ω) (y : GlobalTheory.Et.geom Ω p) :
    GlobalTheory.Et.galMap Ω p (σ * τ) y = GlobalTheory.Et.galMap Ω p τ (GlobalTheory.Et.galMap Ω p σ y) := by
  rw [GlobalTheory.EtC.galMap_mul, Scheme.Hom.comp_apply]

theorem galMap_one_apply (y : GlobalTheory.Et.geom Ω p) : GlobalTheory.Et.galMap Ω p 1 y = y := by
  rw [GlobalTheory.EtC.galMap_one]; rfl

theorem exists_components [IsGalois k Ω] [Smooth p] [ConnectedSpace X] [CompactSpace X] :
    ∃ (r : ℕ) (U : Fin r → (GlobalTheory.Et.geom Ω p).Opens),
      (∀ s, IsIntegral (U s).toScheme) ∧ (∀ y, ∃ s, y ∈ U s) ∧
      (∀ s s', s ≠ s' → Disjoint (U s : Set (GlobalTheory.Et.geom Ω p)) (U s')) ∧
      (∀ (σ : Ω ≃ₐ[k] Ω) s, ∃ s', GlobalTheory.Et.galMap Ω p σ '' (U s : Set (GlobalTheory.Et.geom Ω p)) = U s') ∧
      (∀ s s', ∃ σ : Ω ≃ₐ[k] Ω, GlobalTheory.Et.galMap Ω p σ '' (U s : Set (GlobalTheory.Et.geom Ω p)) = U s') := by
  set ψ := Spec.map (CommRingCat.ofHom (algebraMap k Ω)) with hψ
  set Y := GlobalTheory.Et.geom Ω p
  have : QuasiCompact p := quasiCompact_of_compactSpace p
  have : CompactSpace Y := by dsimp only [Y, GlobalTheory.Et.geom]; infer_instance
  have : IsLocallyNoetherian Y := LocallyOfFiniteType.isLocallyNoetherian (pullback.snd p ψ)
  have : IsNoetherian Y := {}
  have hopen : ∀ y : Y, IsOpen (connectedComponent y) := isOpen_connectedComponent
  have : DiscreteTopology (_root_.ConnectedComponents Y) := ConnectedComponents.discreteTopology_iff.2 hopen
  have : Finite (_root_.ConnectedComponents Y) := finite_of_compact_of_discrete
  obtain ⟨r, ⟨e⟩⟩ := Finite.exists_equiv_fin (_root_.ConnectedComponents Y)
  let C : Fin r → Set Y := fun s => ConnectedComponents.mk ⁻¹' {e.symm s}
  have hC : ∀ y : Y, C (e (ConnectedComponents.mk y)) = connectedComponent y := fun y => by
    simp only [C, Equiv.symm_apply_apply, connectedComponents_preimage_singleton]
  have hCrep : ∀ s, ∃ y : Y, C s = connectedComponent y := fun s => by
    obtain ⟨y, hy⟩ := ConnectedComponents.surjective_coe (e.symm s)
    exact ⟨y, by rw [← hC y, hy, Equiv.apply_symm_apply]⟩
  have hCopen : ∀ s, IsOpen (C s) := fun s => by
    obtain ⟨y, hy⟩ := hCrep s; rw [hy]; exact hopen y
  let U : Fin r → Y.Opens := fun s => ⟨C s, hCopen s⟩
  have hg : ∀ (σ : Ω ≃ₐ[k] Ω) (y : Y),
      GlobalTheory.Et.galMap Ω p σ '' connectedComponent y = connectedComponent (GlobalTheory.Et.galMap Ω p σ y) :=
    fun σ y => image_connectedComponent (galHomeo p σ) y
  refine ⟨r, U, fun s => ?_, fun y => ⟨e (ConnectedComponents.mk y), ?_⟩, fun s s' hss' => ?_,
    fun σ s => ?_, fun s s' => ?_⟩
  · obtain ⟨y, hy⟩ := hCrep s
    have : ConnectedSpace (U s).toScheme := by
      change ConnectedSpace (C s)
      rw [hy]
      exact isConnected_iff_connectedSpace.1 isConnected_connectedComponent
    exact GlobalTheory.isIntegral_of_smooth_field ((U s).ι ≫ pullback.snd p ψ)
  · change y ∈ C _
    rw [hC]; exact mem_connectedComponent
  · change Disjoint (C s) (C s')
    refine Set.disjoint_left.2 fun y h1 h2 => hss' ?_
    simp only [C, Set.mem_preimage, Set.mem_singleton_iff] at h1 h2
    exact e.symm.injective (h1.symm.trans h2)
  · obtain ⟨y, hy⟩ := hCrep s
    refine ⟨e (ConnectedComponents.mk (GlobalTheory.Et.galMap Ω p σ y)), ?_⟩
    change _ '' C s = C _
    rw [hy, hC, hg]
  · obtain ⟨y₀, hy₀⟩ := hCrep s
    obtain ⟨y₁, hy₁⟩ := hCrep s'

    let Z : Set Y := {y | ∃ σ : Ω ≃ₐ[k] Ω, y ∈ connectedComponent (GlobalTheory.Et.galMap Ω p σ y₀)}
    have hZstab : ∀ (τ : Ω ≃ₐ[k] Ω) y, y ∈ Z → GlobalTheory.Et.galMap Ω p τ y ∈ Z := by
      rintro τ y ⟨σ, hσ⟩
      refine ⟨σ * τ, ?_⟩
      rw [galMap_mul_apply, ← hg]
      exact ⟨y, hσ, rfl⟩
    have hZo : IsOpen Z := by
      have : Z = ⋃ σ : Ω ≃ₐ[k] Ω, connectedComponent (GlobalTheory.Et.galMap Ω p σ y₀) := by
        ext y; simp [Z]
      rw [this]; exact isOpen_iUnion fun σ => hopen _
    have hZc : IsOpen Zᶜ := by
      rw [isOpen_iff_forall_mem_open]
      intro y hy
      refine ⟨connectedComponent y, fun w hw hwZ => hy ?_, hopen y, mem_connectedComponent⟩
      obtain ⟨σ, hσ⟩ := hwZ
      refine ⟨σ, ?_⟩
      rw [connectedComponent_eq hσ, ← connectedComponent_eq hw]
      exact mem_connectedComponent
    have hy₀Z : y₀ ∈ Z := ⟨1, by rw [galMap_one_apply]; exact mem_connectedComponent⟩
    have hZ : Z = Set.univ := by
      by_contra hne
      obtain ⟨b, hb⟩ := (Set.ne_univ_iff_exists_notMem Z).1 hne
      have : Algebra.IsIntegral k Ω := inferInstance
      have : IsIntegralHom ψ := IsIntegralHom.SpecMap_iff.2 (fun x => Algebra.IsIntegral.isIntegral x)
      have : Surjective ψ := ⟨fun _ => ⟨Classical.arbitrary _, Subsingleton.elim _ _⟩⟩
      have hcl := (pullback.fst p ψ).isClosedMap
      have hsurj := (pullback.fst p ψ).surjective
      set A := pullback.fst p ψ '' Z
      set B := pullback.fst p ψ '' Zᶜ
      have hAB : A = Bᶜ := by
        ext x
        constructor
        · rintro ⟨a, ha, rfl⟩ ⟨c, hc, hca⟩
          obtain ⟨σ, hσ⟩ := GeoB.exists_galMap_apply p a c hca.symm
          exact hc (hσ ▸ hZstab σ a ha)
        · intro hx
          obtain ⟨a, rfl⟩ := hsurj x
          by_cases ha : a ∈ Z
          · exact ⟨a, ha, rfl⟩
          · exact absurd ⟨a, ha, rfl⟩ hx
      have hAcl : IsClopen A :=
        ⟨hcl _ (isOpen_compl_iff.1 hZc), hAB ▸ (hcl _ hZo.isClosed_compl).isOpen_compl⟩
      rcases isClopen_iff.1 hAcl with h | h
      · exact (Set.eq_empty_iff_forall_notMem.1 h) _ ⟨y₀, hy₀Z, rfl⟩
      · have : pullback.fst p ψ b ∈ A := h ▸ Set.mem_univ _
        rw [hAB] at this
        exact this ⟨b, hb, rfl⟩
    have : y₁ ∈ Z := hZ ▸ Set.mem_univ _
    obtain ⟨σ, hσ⟩ := this
    refine ⟨σ, ?_⟩
    change _ '' C s = C s'
    rw [hy₀, hy₁, hg, connectedComponent_eq hσ]

end CrystallineSemistableComparison.GeoC
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.IsOpenConnectedComponent =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.CompactSpaceOfIsProjOver =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.CompactSpaceOfIsProjOver", "h": "module\n\nimport Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.CrystallineTowers.SpecOf\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.EtProps\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.IsOpenConnectedComponent\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.ProjectiveSpectrum.Proper\nimport Mathlib.AlgebraicGeometry.QuasiAffine\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry ReciprocityTheory.ChartRestriction.G.Geo.Tor

namespace CrystallineSemistableComparison

namespace GeoD


attribute [local instance] MvPolynomial.gradedAlgebra in
theorem isProper_pspace (R : Type) [CommRing R] (N : ℕ) : IsProper (PSpace.str R N) := by
  apply _root_.UpperTheory.Gal.Seam.Spec.isProper_pstr

theorem compactSpace_of_isProjOver {R : Type} [CommRing R] {X : Scheme.{0}} {f : X ⟶ Sp R}
    (h : IsProjOver f) : CompactSpace X := by
  obtain ⟨N, i, hi, rfl⟩ := h
  have := isProper_pspace R N
  exact QuasiCompact.compactSpace_of_compactSpace (i ≫ PSpace.str R N)

end GeoD

theorem geoMain : GeometricGenericComponents := by
  intro l _ K M hM d hC
  obtain ⟨hconn, hsm⟩ := hC
  have : Smooth M.q := SmoothOfRelativeDimension.smooth d M.q
  have : CompactSpace M.X := GeoD.compactSpace_of_isProjOver hM.1
  have : QuasiCompact M.p := quasiCompact_of_compactSpace M.p
  have : CompactSpace M.gen := inferInstance
  obtain ⟨r, U, hint, hcov, hdisj, hperm, htrans⟩ := GeoC.exists_components (Ω := PadicAlgCl l) M.q
  have hne : ∀ s, (U s : Set (GlobalTheory.Et.geom (PadicAlgCl l) M.q)).Nonempty := fun s => by
    obtain ⟨⟨y, hy⟩⟩ := (hint s).nonempty
    exact ⟨y, hy⟩
  refine ⟨r, fun s => (U s).toScheme, fun s => (U s).ι, ⟨fun s => inferInstance, fun y => ?_, fun s s' h => ?_⟩,
    hint, fun σ => ?_, fun s s' => ?_⟩
  · obtain ⟨s, hs⟩ := hcov y
    exact ⟨s, by rw [Scheme.Opens.range_ι]; exact hs⟩
  · rw [Scheme.Opens.range_ι, Scheme.Opens.range_ι]
    exact hdisj s s' h
  · set g := GlobalTheory.Et.galMap (PadicAlgCl l) M.q (IntermediateField.fixingSubgroupEquiv K σ)
    choose f hf using hperm (IntermediateField.fixingSubgroupEquiv K σ)
    have hginj : Function.Injective g := (GeoC.galHomeo M.q (IntermediateField.fixingSubgroupEquiv K σ)).injective
    have hinj : Function.Injective f := by
      intro s s' hss'
      by_contra h
      have h1 : (U s : Set _) = U s' :=
        Set.image_injective.2 hginj ((hf s).trans (hss' ▸ (hf s').symm))
      obtain ⟨y, hy⟩ := hne s
      exact Set.disjoint_left.1 (hdisj s s' h) hy (h1 ▸ hy)
    let π := Equiv.ofBijective f (Finite.injective_iff_bijective.1 hinj)
    have hr : ∀ s, Set.range ((U s).ι ≫ g) = Set.range (U (π s)).ι := fun s => by
      rw [Scheme.Hom.comp_base, TopCat.coe_comp, Set.range_comp, Scheme.Opens.range_ι, Scheme.Opens.range_ι]
      exact hf s
    exact ⟨π, fun s => IsOpenImmersion.isoOfRangeEq ((U s).ι ≫ g) (U (π s)).ι (hr s),
      fun s => (IsOpenImmersion.isoOfRangeEq_hom_fac _ _ _).symm⟩
  · obtain ⟨τ, hτ⟩ := htrans s s'
    refine ⟨(IntermediateField.fixingSubgroupEquiv K).symm τ, ?_⟩
    rw [MulEquiv.apply_symm_apply]
    have hr : Set.range ((U s).ι ≫ GlobalTheory.Et.galMap (PadicAlgCl l) M.q τ) = Set.range (U s').ι := by
      rw [Scheme.Hom.comp_base, TopCat.coe_comp, Set.range_comp, Scheme.Opens.range_ι, Scheme.Opens.range_ι]
      exact hτ
    exact ⟨(IsOpenImmersion.isoOfRangeEq _ _ hr).hom, (IsOpenImmersion.isoOfRangeEq_hom_fac _ _ _).symm⟩

end CrystallineSemistableComparison
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.CompactSpaceOfIsProjOver =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.Geo =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.Geo", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.EtProps\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.CompGood\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.CompSm\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.CompactSpaceOfIsProjOver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace CrystallineSemistableComparison

theorem comp : ModelComponents := fun l _ K _ ↦ ⟨compSm l K, compGood l K⟩

end CrystallineSemistableComparison
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.SmoothGaloisGeometry.Geo =====
