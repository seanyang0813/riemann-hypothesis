module

public import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteTypeAdditiveLineBundleFamilyAffine
public import Mathlib.AlgebraicGeometry.ResidueField
public import Mathlib.Combinatorics.Quiver.ReflQuiver
public import Mathlib.RingTheory.HopkinsLevitzki
public import Mathlib.RingTheory.RingHom.Flat
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IdealEqBotOfFlatQuotientOfMapMaximalIdeal
public import Mathlib.AlgebraicGeometry.Noetherian
public import Mathlib.AlgebraicGeometry.Morphisms.FlatMono
public import Mathlib.AlgebraicGeometry.Morphisms.Flat
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SurjRestrictSnd
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleFamilyOpenChartAffineFiniteType
public import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.FormallyUnramifiedOfTangentMapInjective
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsClosedSubschemeAdditiveFamiliesAgreeStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothInjectiveFamilyLiftsSmallArtinianStatement
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.IsProperAndGeometricallyConnectedOfIsNilpotent
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BaseChangeStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GlueOpenChartsAdditiveFamiliesRepresentingStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RepresentsAdditiveLineBundleFamiliesUniqueIso
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ExistsLiftPt
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
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
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.TypeStar
import Mathlib.Topology.Sheaves.Init
import Mathlib.CategoryTheory.Limits.Shapes.Countable
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.NonemptyMumfordTorusQuotientTower
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle
import Development.AbelianVarietyTheory.PublishedTheorems.AbelianLaws.PrincipalPolarisationOneSection
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal
import Mathlib.Tactic.Linter.Style
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsLocalMultiplicationPullbackThetaEmbedding
import Mathlib.CategoryTheory.Limits.Shapes.Connected

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditiveFamilyChartAffineOfChartFiniteType, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsStalkRetractionOfSmallLifting, Development.AbelianVarietyTheory.Proofs.DivisorProofs.FlatOfLocalRetractionsModMaximalIdealPow, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ResidueFieldMapSurjectiveOfMono, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsOpenImmersionOfMonoLiftSmallArtinExtensions, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleFamilyChartOfAffineParameters, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleFamilyOpenChartAffineFiniteTypeStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleFamilyParamInjectiveOfGeomFiberInjecti, Development.AbelianVarietyTheory.Proofs.DivisorProofs.OpenChartOfSmoothFamilyGeomFibreInjective, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProperSmoothGeomConnectedDescendFiniteSurjective, Development.AbelianVarietyTheory.Proofs.DivisorProofs.RepresentingSchemeOfFiniteSurjectiveLift, Development.AbelianVarietyTheory.Proofs.DivisorProofs.RepresentingSchemeOfFiniteSurjectiveLiftStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditiveFamilyChartAffineOfChartFiniteType =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditiveFamilyChartAffineOfChartFiniteType", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsFiniteTypeAdditiveLineBundleFamilyAffine\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.DualApprox

theorem evc_comp_of_same {S : Scheme.{0}} {A T T₀ Y : Over S} {N : LB (A ⊗ T).left} {N₀ : LB (A ⊗ T₀).left}
    (hN : N.IsLB) (hN₀ : N₀.IsLB) (h : T ⟶ T₀) (hs : Same A N N₀ (𝟙 T) h) (y : Y ⟶ T) :
    evc hN (fst A Y) (snd A Y ≫ y) = evc hN₀ (fst A Y) (snd A Y ≫ y ≫ h) := by
  rw [same_iff hN hN₀, Category.comp_id] at hs
  have := congrArg (CechPic.pull (lift (fst A Y) (snd A Y ≫ y)).left) hs
  rw [pull_evc, pull_evc] at this
  simp only [lift_fst, lift_snd, lift_snd_assoc, Category.assoc] at this
  exact this

theorem chartAt_of_finiteType : ∀ (R : Type) [CommRing R] [IsNoetherianRing R] (A : Over (Sp R)) [GrpObj A], IsAbelianScheme A → ∀ (U : Over (Sp R)) (M : LB (A ⊗ U).left), Fam A M → (∀ (T : Over (Sp R)) [IsAffine T.left], LocallyOfFiniteType T.hom → ∀ (N : LB (A ⊗ T).left), Fam A N → ChartAt A M N) → ∀ (T : Over (Sp R)) [IsAffine T.left] (N : LB (A ⊗ T).left), Fam A N → ChartAt A M N := by
  intro R _ _ A _ hA U M hM hfin T _ N hN
  obtain ⟨T₀, h, N₀, hT₀, hft, hN₀, hs⟩ := _root_.GlobalTheory.DualApprox.exists_fam_finiteType R A hA T N hN
  obtain ⟨W₀, hW₀⟩ := hfin T₀ hft N₀ hN₀
  refine ⟨h.left ⁻¹ᵁ W₀, fun Y y ↦ ?_⟩
  have key : ∀ u : Y ⟶ U, Same A N M y u ↔ Same A N₀ M (y ≫ h) u := fun u ↦ by
    rw [same_iff hN.isLB hM.isLB, same_iff hN₀.isLB hM.isLB, evc_comp_of_same hN.isLB hN₀.isLB h hs y]
  simp_rw [key, hW₀ Y (y ≫ h)]
  rfl

end GlobalTheory.DualApprox
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditiveFamilyChartAffineOfChartFiniteType =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsStalkRetractionOfSmallLifting =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsStalkRetractionOfSmallLifting", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.ResidueField\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Mathlib.RingTheory.HopkinsLevitzki\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry IsLocalRing

namespace GlobalTheory.SmallLift

theorem map_closedPoint {X : Scheme.{0}} {x : X} {R : CommRingCat.{0}} [IsLocalRing R]
    (φ : X.presheaf.stalk x ⟶ R) [IsLocalHom φ.hom] :
    (Spec.map φ ≫ X.fromSpecStalk x) (closedPoint R) = x := by
  refine (Scheme.Hom.comp_apply (Spec.map φ) (X.fromSpecStalk x) (closedPoint R)).trans ?_
  exact (congrArg (X.fromSpecStalk x) (Spec_closedPoint (f := φ))).trans
    Scheme.fromSpecStalk_closedPoint

theorem step {X Y : Scheme.{0}} (f : X ⟶ Y) (x : X) (C : Type) [CommRing C] [IsLocalRing C]
    (I : Ideal C) [IsLocalRing (C ⧸ I)]
    (H : ∀ (a : Spec (CommRingCat.of (C ⧸ I)) ⟶ X) (b : Spec (CommRingCat.of C) ⟶ Y),
      a ≫ f = Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk I)) ≫ b →
      ∃ l : Spec (CommRingCat.of C) ⟶ X,
        Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk I)) ≫ l = a ∧ l ≫ f = b)
    (π : Y.presheaf.stalk (f x) ⟶ CommRingCat.of C)
    (ψ : X.presheaf.stalk x ⟶ CommRingCat.of (C ⧸ I)) [IsLocalHom ψ.hom]
    (hψ : ψ.hom.comp (f.stalkMap x).hom = (Ideal.Quotient.mk I).comp π.hom) :
    ∃ g : X.presheaf.stalk x →+* C, IsLocalHom g ∧ g.comp (f.stalkMap x).hom = π.hom := by
  have e : f.stalkMap x ≫ ψ =
      π ≫ CommRingCat.ofHom (Ideal.Quotient.mk I) := by
    ext1
    exact hψ
  obtain ⟨l, hl, hs⟩ := H (Spec.map ψ ≫ X.fromSpecStalk x)
    (Spec.map π ≫ Y.fromSpecStalk (f x)) (by
      rw [Category.assoc, ← Scheme.SpecMap_stalkMap_fromSpecStalk, ← Spec.map_comp_assoc,
        ← Spec.map_comp_assoc, e])
  obtain ⟨⟨x', φ, hφ⟩, rfl⟩ := (SpecToEquivOfLocalRing X (CommRingCat.of C)).symm.surjective l
  rw [SpecToEquivOfLocalRing_symm_apply] at hs hl
  dsimp only at hs hl
  have hmk : IsLocalHom (CommRingCat.ofHom (Ideal.Quotient.mk I)).hom :=
    IsLocalHom.of_surjective (Ideal.Quotient.mk I) Ideal.Quotient.mk_surjective
  have hx : x' = x := by
    rw [← Spec.map_comp_assoc] at hl
    have : IsLocalHom (φ ≫ CommRingCat.ofHom (Ideal.Quotient.mk I)).hom :=
      @RingHom.isLocalHom_comp _ _ _ _ _ _ _ φ.hom hmk hφ
    have h1 := map_closedPoint (φ ≫ CommRingCat.ofHom (Ideal.Quotient.mk I))
    rw [hl] at h1
    exact h1.symm.trans (map_closedPoint ψ)
  subst hx
  rw [Category.assoc, ← Scheme.SpecMap_stalkMap_fromSpecStalk, ← Spec.map_comp_assoc] at hs
  have : Mono (Y.fromSpecStalk (f x')) :=
    SurjectiveOnStalks.mono_of_injective (Y.fromSpecStalk (f x')).isEmbedding.injective
  have key := Spec.map_injective ((cancel_mono _).1 hs)
  exact ⟨φ.hom, hφ, congrArg CommRingCat.Hom.hom key⟩

theorem pow_ne_top {A : Type} [CommRing A] [IsLocalRing A] (n : ℕ) :
    maximalIdeal A ^ (n + 1) ≠ ⊤ := fun h =>
  (maximalIdeal.isMaximal A).ne_top (top_le_iff.1 (h ▸ Ideal.pow_le_self n.succ_ne_zero))

theorem isLocalRing_quot {A : Type} [CommRing A] [IsLocalRing A] (n : ℕ) :
    IsLocalRing (A ⧸ maximalIdeal A ^ (n + 1)) :=
  haveI := Ideal.Quotient.nontrivial_iff.2 (pow_ne_top (A := A) n)
  IsLocalRing.of_surjective' _ Ideal.Quotient.mk_surjective

theorem map_maximalIdeal_quot {A : Type} [CommRing A] [IsLocalRing A] (J : Ideal A)
    [IsLocalRing (A ⧸ J)] :
    (maximalIdeal A).map (Ideal.Quotient.mk J) = maximalIdeal (A ⧸ J) :=
  IsLocalRing.map_maximalIdeal_of_surjective _ Ideal.Quotient.mk_surjective

theorem isArtinianRing_quot {A : Type} [CommRing A] [IsLocalRing A] [IsNoetherianRing A] (n : ℕ) :
    IsArtinianRing (A ⧸ maximalIdeal A ^ (n + 1)) := by
  haveI := isLocalRing_quot (A := A) n
  rw [isArtinianRing_iff_isNilpotent_maximalIdeal]
  refine ⟨n + 1, ?_⟩
  rw [← map_maximalIdeal_quot, ← Ideal.map_pow, Ideal.map_quotient_self]
  rfl

theorem exists_retraction : ∀ {X Y : Scheme.{0}} (f : X ⟶ Y), (∀ (B : Type) [CommRing B] [IsLocalRing B] [IsArtinianRing B] (I : Ideal B), I ≤ IsLocalRing.maximalIdeal B → IsLocalRing.maximalIdeal B * I = ⊥ → ∀ (a : Spec (CommRingCat.of (B ⧸ I)) ⟶ X) (b : Spec (CommRingCat.of B) ⟶ Y), a ≫ f = Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk I)) ≫ b → ∃ l : Spec (CommRingCat.of B) ⟶ X, Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk I)) ≫ l = a ∧ l ≫ f = b) → ∀ (x : X) [IsNoetherianRing (Y.presheaf.stalk (f x))], Function.Surjective (f.residueFieldMap x).hom → ∀ n : ℕ, ∃ ψ : X.presheaf.stalk x →+* Y.presheaf.stalk (f x) ⧸ maximalIdeal (Y.presheaf.stalk (f x)) ^ (n + 1), ψ.comp (f.stalkMap x).hom = Ideal.Quotient.mk _ := by
  intro X Y f H x _ hs n
  suffices h : ∃ ψ : X.presheaf.stalk x →+*
      Y.presheaf.stalk (f x) ⧸ maximalIdeal (Y.presheaf.stalk (f x)) ^ (n + 1),
      IsLocalHom ψ ∧ ψ.comp (f.stalkMap x).hom = Ideal.Quotient.mk _ from
    let ⟨ψ, _, h⟩ := h; ⟨ψ, h⟩
  induction n with
  | zero =>
    let e : ResidueField (Y.presheaf.stalk (f x)) ≃+* ResidueField (X.presheaf.stalk x) :=
      RingEquiv.ofBijective (f.residueFieldMap x).hom ⟨(f.residueFieldMap x).hom.injective, hs⟩
    let q : (Y.presheaf.stalk (f x) ⧸ maximalIdeal (Y.presheaf.stalk (f x)) ^ (0 + 1)) ≃+*
        ResidueField (Y.presheaf.stalk (f x)) :=
      Ideal.quotEquivOfEq (by rw [zero_add, pow_one])
    let r := (q.trans e).symm
    haveI := isLocalRing_quot (A := Y.presheaf.stalk (f x)) 0
    refine ⟨r.toRingHom.comp (residue _), ?_, ?_⟩
    · have : IsLocalHom r.toRingHom := IsLocalHom.of_surjective _ r.surjective
      infer_instance
    · ext a
      change r (residue _ ((f.stalkMap x).hom a)) = _
      rw [RingEquiv.symm_apply_eq]
      rfl
  | succ n ih =>
    obtain ⟨ψ, hψ, h⟩ := ih
    set A := Y.presheaf.stalk (f x) with hA
    haveI := isLocalRing_quot (A := A) n
    haveI := isLocalRing_quot (A := A) (n + 1)
    haveI := isArtinianRing_quot (A := A) (n + 1)
    have hle : maximalIdeal A ^ (n + 1 + 1) ≤ maximalIdeal A ^ (n + 1) :=
      Ideal.pow_le_pow_right (Nat.le_succ _)
    let I : Ideal (A ⧸ maximalIdeal A ^ (n + 1 + 1)) :=
      (maximalIdeal A ^ (n + 1)).map (Ideal.Quotient.mk _)
    let r : (A ⧸ maximalIdeal A ^ (n + 1)) ≃+* ((A ⧸ maximalIdeal A ^ (n + 1 + 1)) ⧸ I) :=
      (DoubleQuot.quotQuotEquivQuotOfLE hle).symm
    haveI : IsLocalRing ((A ⧸ maximalIdeal A ^ (n + 1 + 1)) ⧸ I) := r.isLocalRing
    have h1 : I ≤ maximalIdeal _ := by
      rw [← map_maximalIdeal_quot]
      exact Ideal.map_mono (Ideal.pow_le_self n.succ_ne_zero)
    have h2 : maximalIdeal _ * I = ⊥ := by
      rw [← map_maximalIdeal_quot, ← Ideal.map_mul, ← pow_succ', Ideal.map_quotient_self]
    have : IsLocalHom r.toRingHom := IsLocalHom.of_surjective _ r.surjective
    have hl : IsLocalHom (r.toRingHom.comp ψ) := inferInstance
    let π : A →+* A ⧸ maximalIdeal A ^ (n + 1 + 1) := Ideal.Quotient.mk _
    refine @step X Y f x _ _ _ I _ (H _ I h1 h2) (CommRingCat.ofHom π)
      (CommRingCat.ofHom (r.toRingHom.comp ψ)) hl ?_
    change (r.toRingHom.comp ψ).comp _ = _
    rw [RingHom.comp_assoc, h]
    ext a
    rfl

end GlobalTheory.SmallLift
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsStalkRetractionOfSmallLifting =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FlatOfLocalRetractionsModMaximalIdealPow =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.FlatOfLocalRetractionsModMaximalIdealPow", "h": "module\n\npublic import Mathlib.RingTheory.RingHom.Flat\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IdealEqBotOfFlatQuotientOfMapMaximalIdeal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open IsLocalRing

namespace GlobalTheory

section

variable {A B : Type*} [CommRing A] [CommRing B] [IsLocalRing A] [IsLocalRing B]

theorem isLocalHom_mk_maximalIdeal_pow_succ (n : ℕ) :
    IsLocalHom (Ideal.Quotient.mk (maximalIdeal A ^ (n + 1))) := by
  refine ⟨fun a ha => ?_⟩
  by_contra hu
  obtain ⟨c, hc⟩ := ha.exists_right_inv
  obtain ⟨c, rfl⟩ := Ideal.Quotient.mk_surjective c
  rw [← map_mul, ← map_one (Ideal.Quotient.mk (maximalIdeal A ^ (n + 1))),
    Ideal.Quotient.eq] at hc
  have h1 : a * c - 1 ∈ maximalIdeal A := Ideal.pow_le_self n.succ_ne_zero hc
  have h2 : a * c ∈ maximalIdeal A := Ideal.mul_mem_right _ _ hu
  have h3 : (1 : A) ∈ maximalIdeal A := by simpa using sub_mem h2 h1
  exact (maximalIdeal.isMaximal A).ne_top ((Ideal.eq_top_iff_one _).mpr h3)

theorem quotientMap_pow_bijective_of_retraction (φ : A →+* B) [IsLocalHom φ] (n : ℕ)
    (hle : maximalIdeal A ^ (n + 1) ≤ (maximalIdeal B ^ (n + 1)).comap φ)
    (ψ : B →+* A ⧸ maximalIdeal A ^ (n + 1)) (hψ : ψ.comp φ = Ideal.Quotient.mk _)
    (huniq : ∀ g₁ g₂ : B →+* B ⧸ maximalIdeal B ^ (n + 1), IsLocalHom g₁ → IsLocalHom g₂ →
      g₁.comp φ = g₂.comp φ → g₁ = g₂) :
    Function.Bijective (Ideal.quotientMap (maximalIdeal B ^ (n + 1)) φ hle) := by
  haveI hA := isLocalHom_mk_maximalIdeal_pow_succ (A := A) n
  haveI hB := isLocalHom_mk_maximalIdeal_pow_succ (A := B) n
  have hψφ : ∀ a, ψ (φ a) = Ideal.Quotient.mk _ a := fun a => RingHom.congr_fun hψ a
  have hsurj : Function.Surjective ψ := fun x => by
    obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective x
    exact ⟨φ a, hψφ a⟩
  haveI : Nontrivial (A ⧸ maximalIdeal A ^ (n + 1)) :=
    Ideal.Quotient.nontrivial_iff.mpr fun h =>
      (maximalIdeal.isMaximal A).ne_top (top_le_iff.mp (h ▸ Ideal.pow_le_self n.succ_ne_zero))
  haveI hψl : IsLocalHom ψ := IsLocalHom.of_surjective ψ hsurj
  haveI hφl : IsLocalHom (Ideal.quotientMap (maximalIdeal B ^ (n + 1)) φ hle) := by
    refine ⟨fun x hx => ?_⟩
    obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective x
    rw [Ideal.quotientMap_mk] at hx
    exact (IsUnit.of_map φ _ (IsUnit.of_map (Ideal.Quotient.mk _) _ hx)).map _
  have key := huniq (Ideal.Quotient.mk _)
    ((Ideal.quotientMap (maximalIdeal B ^ (n + 1)) φ hle).comp ψ) hB inferInstance (by
      ext a
      simp [hψφ])
  refine ⟨(injective_iff_map_eq_zero _).mpr fun x hx => ?_, fun y => ?_⟩
  · obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective x
    rw [Ideal.quotientMap_mk, Ideal.Quotient.eq_zero_iff_mem] at hx
    have h1 : maximalIdeal B ≤ ((maximalIdeal A).map
        (Ideal.Quotient.mk (maximalIdeal A ^ (n + 1)))).comap ψ := by
      intro b hb
      obtain ⟨c, hc⟩ := Ideal.Quotient.mk_surjective (ψ b)
      rw [Ideal.mem_comap, ← hc]
      refine Ideal.mem_map_of_mem _ fun hu => hb ?_
      exact IsUnit.of_map ψ _ (hc ▸ hu.map _)
    have h2 := pow_le_comap_pow_of_le h1 (n + 1) hx
    rwa [Ideal.mem_comap, ← Ideal.map_pow, Ideal.map_quotient_self, hψφ, Ideal.mem_bot] at h2
  · obtain ⟨b, rfl⟩ := Ideal.Quotient.mk_surjective y
    exact ⟨ψ b, (RingHom.congr_fun key b).symm⟩

end

theorem flat_of_retractions_mod_pow {A B : Type} [CommRing A] [CommRing B] [IsLocalRing A]
    [IsLocalRing B] [IsNoetherianRing A] [IsNoetherianRing B] (φ : A →+* B) [IsLocalHom φ]
    (hex : ∀ n : ℕ, ∃ ψ : B →+* A ⧸ maximalIdeal A ^ (n + 1), ψ.comp φ = Ideal.Quotient.mk _)
    (huniq : ∀ n : ℕ, ∀ g₁ g₂ : B →+* B ⧸ maximalIdeal B ^ (n + 1), IsLocalHom g₁ →
      IsLocalHom g₂ → g₁.comp φ = g₂.comp φ → g₁ = g₂) : φ.Flat := by
  have hle : maximalIdeal A ≤ (maximalIdeal B).comap φ := fun a ha => map_nonunit φ a ha
  have hbij : ∀ n : ℕ, Function.Bijective
      (Ideal.quotientMap (maximalIdeal B ^ n) φ (pow_le_comap_pow_of_le hle n)) := by
    intro n
    cases n with
    | zero =>
      haveI : Subsingleton (A ⧸ maximalIdeal A ^ 0) := Ideal.Quotient.subsingleton_iff.mpr (by simp)
      haveI : Subsingleton (B ⧸ maximalIdeal B ^ 0) := Ideal.Quotient.subsingleton_iff.mpr (by simp)
      exact ⟨fun _ _ _ => Subsingleton.elim _ _, fun _ => ⟨0, Subsingleton.elim _ _⟩⟩
    | succ n =>
      obtain ⟨ψ, hψ⟩ := hex n
      exact quotientMap_pow_bijective_of_retraction φ n _ ψ hψ (huniq n)
  refine ringHom_flat_of_flat_quotientMap_pow φ ?_ (maximalIdeal_le_jacobson _)
    (pow_le_comap_pow_of_le hle) fun n => RingHom.Flat.of_bijective (hbij n)
  refine le_antisymm (Ideal.map_le_of_le_comap hle)
    (Submodule.le_of_le_smul_of_le_jacobson_bot (IsNoetherian.noetherian _)
      (maximalIdeal_le_jacobson _) fun y hy => ?_)
  obtain ⟨x, hx⟩ := (hbij 2).2 (Ideal.Quotient.mk _ y)
  obtain ⟨x, rfl⟩ := Ideal.Quotient.mk_surjective x
  rw [Ideal.quotientMap_mk, Ideal.Quotient.eq] at hx
  have hxm : x ∈ maximalIdeal A := by
    have : φ x ∈ maximalIdeal B := by
      simpa using add_mem (Ideal.pow_le_self two_ne_zero hx) hy
    exact fun hu => this (hu.map φ)
  rw [show y = φ x - (φ x - y) by ring]
  refine sub_mem (Submodule.mem_sup_left (Ideal.mem_map_of_mem _ hxm)) (Submodule.mem_sup_right ?_)
  rwa [smul_eq_mul, ← pow_two]

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FlatOfLocalRetractionsModMaximalIdealPow =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ResidueFieldMapSurjectiveOfMono =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ResidueFieldMapSurjectiveOfMono", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.ResidueField\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Limits.Shapes.Countable\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry IsLocalRing

namespace GlobalTheory

theorem surjective_of_epi_of_field_to_field {K L : Type} [Field K] [Field L]
    (φ : CommRingCat.of K ⟶ CommRingCat.of L) [Epi φ] : Function.Surjective φ.hom := by
  letI : Algebra K L := φ.hom.toAlgebra
  have h : ∀ a : L, (a ⊗ₜ[K] (1 : L)) = (1 : L) ⊗ₜ[K] a := by
    intro a
    have e : CommRingCat.ofHom (Algebra.TensorProduct.includeLeftRingHom (R := K) (A := L) (B := L))
        = CommRingCat.ofHom (Algebra.TensorProduct.includeRight (R := K) (A := L) (B := L)).toRingHom := by
      rw [← cancel_epi φ]
      ext c
      exact congr($(Algebra.TensorProduct.includeLeftRingHom_comp_algebraMap (R := K) (A := L) (B := L)) c)
    exact congr(($e).hom a)
  obtain ⟨g, hg⟩ := LinearMap.exists_leftInverse_of_injective (Algebra.linearMap K L)
    (LinearMap.ker_eq_bot.2 (algebraMap K L).injective)
  have g1 : g 1 = 1 := by simpa using congr($hg 1)
  intro a
  refine ⟨g a, ?_⟩
  have := congr(TensorProduct.rid K L (LinearMap.lTensor L g $(h a)))
  simp only [LinearMap.lTensor_tmul, TensorProduct.rid_tmul, g1, one_smul] at this
  exact (Algebra.algebraMap_eq_smul_one (A := L) (g a)).trans this.symm

theorem residueFieldMap_surjective_of_mono {X Y : Scheme.{0}} (f : X ⟶ Y) [Mono f] (x : X) :
    Function.Surjective (f.residueFieldMap x).hom := by
  have h1 : Mono (Spec.map (f.residueFieldMap x) ≫ Y.fromSpecResidueField (f x)) := by
    rw [Scheme.Hom.SpecMap_residueFieldMap_fromSpecResidueField]
    infer_instance
  have h2 : Mono (Spec.map (f.residueFieldMap x)) := mono_of_mono _ (Y.fromSpecResidueField (f x))
  have h3 : Mono (f.residueFieldMap x).op :=
    Scheme.Spec.mono_of_mono_map (f := (f.residueFieldMap x).op) h2
  have h4 : Epi (f.residueFieldMap x) := (CategoryTheory.op_mono_iff _).1 h3
  exact surjective_of_epi_of_field_to_field (K := Y.residueField (f x)) (L := X.residueField x) (f.residueFieldMap x)

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ResidueFieldMapSurjectiveOfMono =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsOpenImmersionOfMonoLiftSmallArtinExtensions =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsOpenImmersionOfMonoLiftSmallArtinExtensions", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Noetherian\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import Mathlib.AlgebraicGeometry.ResidueField\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsStalkRetractionOfSmallLifting\npublic import Mathlib.RingTheory.RingHom.Flat\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FlatOfLocalRetractionsModMaximalIdealPow\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ResidueFieldMapSurjectiveOfMono\npublic import Mathlib.AlgebraicGeometry.Morphisms.FlatMono\npublic import Mathlib.AlgebraicGeometry.Morphisms.Flat\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.NonemptyMumfordTorusQuotientTower\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\nimport Development.AbelianVarietyTheory.PublishedTheorems.AbelianLaws.PrincipalPolarisationOneSection\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

open IsLocalRing

namespace GlobalTheory.ArtinOpen

theorem stalk_hom_ext_of_mono {X Y : Scheme.{0}} (f : X ⟶ Y) [Mono f] (x : X) (R : CommRingCat.{0})
    [IsLocalRing R] (g₁ g₂ : X.presheaf.stalk x ⟶ R) [IsLocalHom g₁.hom] [IsLocalHom g₂.hom]
    (h : f.stalkMap x ≫ g₁ = f.stalkMap x ≫ g₂) : g₁ = g₂ := by
  have e : Spec.map g₁ ≫ X.fromSpecStalk x = Spec.map g₂ ≫ X.fromSpecStalk x := by
    rw [← cancel_mono f, Category.assoc, Category.assoc, ← Scheme.SpecMap_stalkMap_fromSpecStalk,
      ← Category.assoc, ← Category.assoc, ← Spec.map_comp, ← Spec.map_comp, h]
  have e2 := (SpecToEquivOfLocalRing X R).symm.injective (a₁ := ⟨x, g₁, inferInstance⟩)
    (a₂ := ⟨x, g₂, inferInstance⟩)
    (by rw [SpecToEquivOfLocalRing_symm_apply, SpecToEquivOfLocalRing_symm_apply]; exact e)
  obtain ⟨_, e3⟩ := SpecToEquivOfLocalRing_eq_iff.mp e2
  simpa using e3

theorem isOpenImmersion_of_lift : ∀ {X Y : Scheme.{0}} (f : X ⟶ Y) [IsLocallyNoetherian Y] [LocallyOfFiniteType f] [Mono f], (∀ (B : Type) [CommRing B] [IsLocalRing B] [IsArtinianRing B] (I : Ideal B), I ≤ IsLocalRing.maximalIdeal B → IsLocalRing.maximalIdeal B * I = ⊥ → ∀ (a : Spec (CommRingCat.of (B ⧸ I)) ⟶ X) (b : Spec (CommRingCat.of B) ⟶ Y), a ≫ f = Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk I)) ≫ b → ∃ l : Spec (CommRingCat.of B) ⟶ X, Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk I)) ≫ l = a ∧ l ≫ f = b) → IsOpenImmersion f := by
  intro X Y f _ _ _ hlift
  haveI : IsLocallyNoetherian X := LocallyOfFiniteType.isLocallyNoetherian f
  have : Flat f := by
    refine (Flat.iff_flat_stalkMap f).2 fun x => ?_
    have hres := _root_.GlobalTheory.residueFieldMap_surjective_of_mono f x
    refine _root_.GlobalTheory.flat_of_retractions_mod_pow (f.stalkMap x).hom (fun n => _root_.GlobalTheory.SmallLift.exists_retraction f hlift x hres n) ?_
    intro n g₁ g₂ h₁ h₂ h
    have := stalk_hom_ext_of_mono f x
      (CommRingCat.of (X.presheaf.stalk x ⧸ maximalIdeal (X.presheaf.stalk x) ^ (n + 1)))
      (CommRingCat.ofHom g₁) (CommRingCat.ofHom g₂) (by ext a; exact congr($h a))
    exact congrArg CommRingCat.Hom.hom this
  exact IsOpenImmersion.of_flat_of_mono f

end GlobalTheory.ArtinOpen
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsOpenImmersionOfMonoLiftSmallArtinExtensions =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleFamilyChartOfAffineParameters =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleFamilyChartOfAffineParameters", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SurjRestrictSnd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.DualCon.Zar

variable {S : Scheme.{0}} {A : Over S}

theorem same_comp {T U Y Z : Over S} {N : LB (A ⊗ T).left} {M : LB (A ⊗ U).left} (hN : N.IsLB) (hM : M.IsLB)
    {y : Y ⟶ T} {u : Y ⟶ U} (h : Same A N M y u) (z : Z ⟶ Y) : Same A N M (z ≫ y) (z ≫ u) := by
  rw [same_iff hN hM] at h ⊢
  have e := congrArg (CechPic.pull (lift (fst A Z) (snd A Z ≫ z)).left) h
  simpa only [pull_evc, lift_fst, lift_snd_assoc, Category.assoc] using e

theorem same_ev_iff {T U V Y : Over S} {N : LB (A ⊗ T).left} {M : LB (A ⊗ U).left} (hN : N.IsLB) (hM : M.IsLB)
    (j : V ⟶ T) (y : Y ⟶ V) (u : Y ⟶ U) :
    Same A (ev N (fst A V) (snd A V ≫ j)) M y u ↔ Same A N M (y ≫ j) u := by
  rw [same_iff (pull_isLB hN _) hM, same_iff hN hM, evc_ev hN]
  simp only [lift_fst, lift_snd_assoc, Category.assoc]

theorem exists_restrict {T Y Z : Over S} (y : Y ⟶ T) (z : Z ⟶ T) [IsOpenImmersion z.left] (p : Y.left)
    (hp : y.left p ∈ Set.range z.left) :
    ∃ (Y' : Over S) (i : Y' ⟶ Y) (t : Y' ⟶ Z), IsOpenImmersion i.left ∧ p ∈ Set.range i.left ∧ t ≫ z = i ≫ y := by
  let V := y.left ⁻¹ᵁ z.left.opensRange
  let Y' : Over S := Over.mk (V.ι ≫ Y.hom)
  let i : Y' ⟶ Y := Over.homMk V.ι rfl
  have hr : Set.range (i ≫ y).left ⊆ Set.range z.left := by
    rintro _ ⟨w, rfl⟩
    exact w.2
  let t : Y' ⟶ Z := Over.homMk (IsOpenImmersion.lift z.left (i ≫ y).left hr) (by
    rw [← Over.w z, ← Category.assoc, IsOpenImmersion.lift_fac, Over.w])
  refine ⟨Y', i, t, inferInstanceAs (IsOpenImmersion V.ι), ⟨⟨p, hp⟩, rfl⟩, ?_⟩
  ext1; exact IsOpenImmersion.lift_fac _ _ _

variable [GrpObj A]

theorem exists_same_of_local (hA : IsAbelianScheme A) {T U Y : Over S} {N : LB (A ⊗ T).left}
    {M : LB (A ⊗ U).left} (hN : Fam A N) (hM : Fam A M) (hI : Inj A M) (y : Y ⟶ T)
    (loc : ∀ p : Y.left, ∃ (Z : Over S) (z : Z ⟶ Y) (u : Z ⟶ U), IsOpenImmersion z.left ∧
      p ∈ Set.range z.left ∧ Same A N M (z ≫ y) u) : ∃ u : Y ⟶ U, Same A N M y u := by
  choose Z z u ho hp hs using loc
  let 𝒰 : Y.left.OpenCover := Scheme.Cover.mkOfCovers (P := @IsOpenImmersion) Y.left (fun p ↦ (Z p).left)
    (fun p ↦ (z p).left) (fun p ↦ by obtain ⟨q, hq⟩ := hp p; exact ⟨p, q, hq⟩) ho
  have hc : ∀ p q : Y.left, pullback.fst (z p).left (z q).left ≫ (u p).left =
      pullback.snd (z p).left (z q).left ≫ (u q).left := by
    intro p q
    let P : Over S := Over.mk (pullback.fst (z p).left (z q).left ≫ (Z p).hom)
    let a : P ⟶ Z p := Over.homMk (pullback.fst (z p).left (z q).left) rfl
    let b : P ⟶ Z q := Over.homMk (pullback.snd (z p).left (z q).left) (by
      rw [← Over.w (z q), ← Category.assoc, ← pullback.condition, Category.assoc, Over.w]; rfl)
    have hab : a ≫ z p = b ≫ z q := by ext1; exact pullback.condition
    have h₁ := same_comp hN.isLB hM.isLB (hs p) a
    have h₂ := same_comp hN.isLB hM.isLB (hs q) b
    rw [← Category.assoc, hab, Category.assoc] at h₁
    rw [same_iff hN.isLB hM.isLB] at h₁ h₂
    have h := hI P _ _ ((same_iff hM.isLB hM.isLB _ _).2 (h₁.symm.trans h₂))
    exact congrArg (·.left) h
  have hg : ∀ p, (z p).left ≫ 𝒰.glueMorphisms (fun p ↦ (u p).left) hc = (u p).left :=
    𝒰.ι_glueMorphisms _ hc
  let g : Y ⟶ U := Over.homMk (𝒰.glueMorphisms (fun p ↦ (u p).left) hc) (𝒰.hom_ext _ _ fun (p : Y.left) ↦
    ((Category.assoc _ _ _).symm.trans (congrArg (· ≫ U.hom) (hg p))).trans
      ((Over.w (u p)).trans (Over.w (z p)).symm))
  refine ⟨g, same_of_local S A T U hA N M hN hM Y y g fun p ↦ ⟨Z p, z p, ho p, hp p, ?_⟩⟩
  have e : z p ≫ g = u p := by ext1; exact hg p
  rw [e]
  exact hs p

theorem fam_ev {T Y : Over S} {N : LB (A ⊗ T).left} (h : Fam A N) (y : Y ⟶ T) :
    Fam A (ev N (fst A Y) (snd A Y ≫ y)) := by
  have hM : (AbDual.ev N (fst A Y) (snd A Y ≫ y)).IsLB := pull_isLB h.isLB _
  refine ⟨hM, (isAdditive_iff hM).2 fun Z a a' t ↦ ?_⟩
  simp only [evc_ev h.isLB, lift_fst, lift_snd_assoc]
  exact (isAdditive_iff h.isLB).1 h.add _ _ _ _

end GlobalTheory.DualCon.Zar

namespace GlobalTheory.DualCon

theorem chartAt_of_affine : ∀ (S : Scheme.{0}) (A : Over S) [GrpObj A], IsAbelianScheme A →
    ∀ (U : Over S) (M : LB (A ⊗ U).left), Fam A M → Inj A M →
    (∀ (T : Over S) [IsAffine T.left] (N : LB (A ⊗ T).left), Fam A N → ChartAt A M N) →
    ∀ (T : Over S) (N : LB (A ⊗ T).left), Fam A N → ChartAt A M N := by
  intro S A _ hA U M hM hI aff T N hN
  let W : Set T.left := {x | ∃ (Z : Over S) (z : Z ⟶ T) (u : Z ⟶ U), IsOpenImmersion z.left ∧
    x ∈ Set.range z.left ∧ Same A N M z u}
  have hW : IsOpen W := by
    rw [isOpen_iff_forall_mem_open]
    rintro x ⟨Z, z, u, ho, hx, hs⟩
    exact ⟨Set.range z.left, fun x' hx' ↦ ⟨Z, z, u, ho, hx', hs⟩, z.left.opensRange.2, hx⟩
  refine ⟨⟨W, hW⟩, fun Y y ↦ ⟨?_, fun h ↦ ?_⟩⟩
  · rintro ⟨u, hu⟩ p
    obtain ⟨i, q, hq⟩ := T.left.affineCover.exists_eq (y.left p)
    let V : Over S := Over.mk (T.left.affineCover.f i ≫ T.hom)
    let j : V ⟶ T := Over.homMk (T.left.affineCover.f i) rfl
    haveI : IsOpenImmersion j.left := inferInstanceAs (IsOpenImmersion (T.left.affineCover.f i))
    haveI : IsAffine V.left := inferInstanceAs (IsAffine (T.left.affineCover.X i))
    obtain ⟨O, hO⟩ := aff V _ (Zar.fam_ev hN j)
    obtain ⟨Y', c, t, -, ⟨r, hr⟩, ht⟩ := Zar.exists_restrict y j p ⟨q, hq⟩
    have h₁ : t.left r ∈ O := (hO Y' t).1 ⟨c ≫ u, by
      rw [Zar.same_ev_iff hN.isLB hM.isLB, ht]
      exact Zar.same_comp hN.isLB hM.isLB hu c⟩ r
    let Z : Over S := Over.mk (O.ι ≫ V.hom)
    let k : Z ⟶ V := Over.homMk O.ι rfl
    haveI : IsOpenImmersion k.left := inferInstanceAs (IsOpenImmersion O.ι)
    obtain ⟨v, hv⟩ := (hO Z k).2 fun w ↦ w.2
    refine ⟨Z, k ≫ j, v, by rw [Over.comp_left]; infer_instance, ⟨⟨t.left r, h₁⟩, ?_⟩,
      (Zar.same_ev_iff hN.isLB hM.isLB _ _ _).1 hv⟩
    change (t ≫ j).left r = _
    rw [ht, ← hr]
    rfl
  · refine Zar.exists_same_of_local hA hN hM hI y fun p ↦ ?_
    obtain ⟨Z, z, u, ho, hx, hs⟩ := h p
    obtain ⟨Y', c, t, hc, hp, ht⟩ := Zar.exists_restrict y z p hx
    exact ⟨Y', c, t ≫ u, hc, hp, ht ▸ Zar.same_comp hN.isLB hM.isLB hs t⟩

end GlobalTheory.DualCon
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleFamilyChartOfAffineParameters =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleFamilyOpenChartAffineFiniteTypeStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleFamilyOpenChartAffineFiniteTypeStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleFamilyOpenChartAffineFiniteType\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory


theorem _root_.GlobalTheory.T.lineBundleFamily_openChart_affine_finiteType : ∀ (R : Type) [CommRing R] [IsNoetherianRing R] (A : Over (Sp R)) [GrpObj A], IsAbelianScheme A → ∀ (U : Over (Sp R)) (M : LB (A ⊗ U).left), LocallyOfFiniteType U.hom → Fam A M → Inj A M → (∀ {X Y : Scheme.{0}} (f : X ⟶ Y) [IsLocallyNoetherian Y] [LocallyOfFiniteType f] [Mono f], (∀ (B : Type) [CommRing B] [IsLocalRing B] [IsArtinianRing B] (I : Ideal B), I ≤ IsLocalRing.maximalIdeal B → IsLocalRing.maximalIdeal B * I = ⊥ → ∀ (a : Spec (CommRingCat.of (B ⧸ I)) ⟶ X) (b : Spec (CommRingCat.of B) ⟶ Y), a ≫ f = Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk I)) ≫ b → ∃ l : Spec (CommRingCat.of B) ⟶ X, Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk I)) ≫ l = a ∧ l ≫ f = b) → IsOpenImmersion f) → ∀ (T : Over (Sp R)) [IsAffine T.left], LocallyOfFiniteType T.hom → ∀ (N : LB (A ⊗ T).left), Fam A N → (∀ (B : Type) [CommRing B] [IsLocalRing B] [IsArtinianRing B] (I : Ideal B), I ≤ IsLocalRing.maximalIdeal B → IsLocalRing.maximalIdeal B * I = ⊥ → ∀ (y : Spec (CommRingCat.of B) ⟶ T.left) (u₀ : Over.mk (Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk I)) ≫ y ≫ T.hom) ⟶ U), Same A N M (Over.homMk (Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk I)) ≫ y) (by simp) : Over.mk (Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk I)) ≫ y ≫ T.hom) ⟶ T) u₀ → ∃ u : Over.mk (y ≫ T.hom) ⟶ U, Same A N M (Over.homMk y rfl : Over.mk (y ≫ T.hom) ⟶ T) u) → ChartAt A M N := by
  first | exact @GlobalTheory.DualCon.chartAt_of_lifting
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleFamilyOpenChartAffineFiniteTypeStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleFamilyParamInjectiveOfGeomFiberInjecti =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleFamilyParamInjectiveOfGeomFiberInjecti", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\npublic import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.FormallyUnramifiedOfTangentMapInjective\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsClosedSubschemeAdditiveFamiliesAgreeStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsLocalMultiplicationPullbackThetaEmbedding\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.DualInj

variable {S : Scheme.{0}} {A U : Over S} [GrpObj A]

theorem fam_ev {M : LB (A ⊗ U).left} (hM : Fam A M) {T : Over S} (t : T ⟶ U) :
    Fam A (ev M (fst A T) (snd A T ≫ t)) := by
  have hPull : (ev M (fst A T) (snd A T ≫ t)).IsLB := pull_isLB hM.isLB _
  refine ⟨hPull, (isAdditive_iff hPull).2 ?_⟩
  intro Y a a' y
  simpa only [evc_ev hM.isLB, lift_fst, lift_snd_assoc] using
    (isAdditive_iff hM.isLB).1 hM.add Y a a' (y ≫ t)


omit [GrpObj A] in
theorem same_ev_iff {M M' : LB (A ⊗ U).left} (hM : M.IsLB) (hM' : M'.IsLB) {T Y : Over S} (t t' : T ⟶ U)
    (y : Y ⟶ T) :
    Same A (ev M (fst A T) (snd A T ≫ t)) (ev M' (fst A T) (snd A T ≫ t')) y y ↔ Same A M M' (y ≫ t) (y ≫ t') := by
  rw [same_iff (pull_isLB hM _) (pull_isLB hM' _), same_iff hM hM', evc_ev hM, evc_ev hM']
  simp only [lift_fst, lift_snd_assoc, Category.assoc]

end GlobalTheory.DualInj

namespace GlobalTheory.DualInj

theorem inj_of_fibInj : ∀ (R : Type) [CommRing R] [IsNoetherianRing R] (A : Over (Sp R)) [GrpObj A],
    IsAbelianScheme A → ∀ (U : Over (Sp R)) (M : LB (A ⊗ U).left), LocallyOfFiniteType U.hom → Fam A M →
      FibInj A M → Inj A M := by
  intro R _ _ A _ hA U M hU hM hF
  have : LocallyOfFiniteType (U ⊗ U).hom := by
    show LocallyOfFiniteType (pullback.fst U.hom U.hom ≫ U.hom)
    infer_instance
  have : IsLocallyNoetherian (U ⊗ U).left := LocallyOfFiniteType.isLocallyNoetherian (U ⊗ U).hom
  obtain ⟨G, i, hi, hG⟩ := GlobalTheory.T.exists_closedSubscheme_additiveFamilies_agree (Sp R) A (U ⊗ U) hA
    (ev M (fst A (U ⊗ U)) (snd A (U ⊗ U) ≫ fst U U)) (ev M (fst A (U ⊗ U)) (snd A (U ⊗ U) ≫ snd U U))
    (fam_ev hM _) (fam_ev hM _)
  have key : ∀ (Y : Over (Sp R)) (y : Y ⟶ U ⊗ U),
      Same A M M (y ≫ fst U U) (y ≫ snd U U) ↔ ∃ z : Y ⟶ G, z ≫ i = y :=
    fun Y y => (same_ev_iff hM.isLB hM.isLB _ _ y).symm.trans (hG Y y)
  obtain ⟨δ, hδ⟩ := (key U (lift (𝟙 U) (𝟙 U))).1 (by
    rw [lift_fst, lift_snd]
    exact (same_iff hM.isLB hM.isLB _ _).2 rfl)
  let p : G.left ⟶ U.left := (i ≫ fst U U).left
  have hp : p ≫ U.hom = G.hom := Over.w (i ≫ fst U U)
  have : Mono i.left := inferInstance
  have pt : ∀ (Z : Scheme.{0}) (a b : Z ⟶ G.left) (K : Type) [Field K] [IsAlgClosed K] (t : Z ⟶ Sp K)
      (s : Sp K ⟶ Sp R), a ≫ p = b ≫ p → a ≫ G.hom = t ≫ s → a = b := by
    intro Z a b K _ _ t s e es
    let Y : Over (Sp R) := Over.mk (a ≫ G.hom)
    let α : Y ⟶ G := Over.homMk a rfl
    let β : Y ⟶ G := Over.homMk b (by
      show b ≫ G.hom = a ≫ G.hom
      rw [← hp, ← Category.assoc, ← e, Category.assoc])
    let τ : Y ⟶ Over.mk s := Over.homMk t es.symm
    have h1 : ∀ c0 : Y ⟶ G, c0 ≫ i ≫ fst U U = c0 ≫ i ≫ snd U U := fun c0 => by
      refine hF K s Y τ _ _ ?_
      have := (key Y (c0 ≫ i)).2 ⟨c0, rfl⟩
      simpa only [Category.assoc] using this
    have e1 : α ≫ i ≫ fst U U = β ≫ i ≫ fst U U := by
      refine Over.OverMorphism.ext ?_
      simpa only [Over.comp_left, Over.homMk_left, α, β, p] using e
    have e2 : α ≫ i = β ≫ i := by
      refine CartesianMonoidalCategory.hom_ext _ _ ?_ ?_
      · simpa only [Category.assoc] using e1
      · simpa only [Category.assoc, ← h1 α, ← h1 β] using e1
    have e3 := congrArg CommaMorphism.left e2
    simp only [Over.comp_left, Over.homMk_left, α, β] at e3
    exact (cancel_mono i.left).1 e3
  have : LocallyOfFiniteType p := by
    show LocallyOfFiniteType (i.left ≫ pullback.fst U.hom U.hom)
    infer_instance
  have hmono : Mono p := _root_.GlobalTheory.FibreEmbed.mono_of_geom_points p
    (fun k _ _ y y' e => pt _ y y' k (𝟙 _) (y ≫ G.hom) e (Category.id_comp _).symm)
    (fun k _ _ w hw => pt _ w _ k (TangentCrit.dualBase k) (TangentCrit.dualPt k ≫ w ≫ G.hom) hw (by
      have := congrArg (· ≫ U.hom) hw
      simpa only [Category.assoc, hp] using this))
  intro Y u u' hs
  obtain ⟨z, hz⟩ := (key Y (lift u u')).1 (by rw [lift_fst, lift_snd]; exact hs)
  have hz1 : z ≫ i ≫ fst U U = u := by rw [← Category.assoc, hz, lift_fst]
  have hzδ : z = u ≫ δ := by
    refine Over.OverMorphism.ext ((cancel_mono p).1 ?_)
    have e1 : (z ≫ i ≫ fst U U).left = (u ≫ δ ≫ i ≫ fst U U).left := by
      rw [hz1, reassoc_of% hδ, lift_fst, Category.comp_id]
    simpa only [p, Over.comp_left, Category.assoc] using e1
  symm
  calc u' = lift u u' ≫ snd U U := (lift_snd _ _).symm
    _ = u ≫ δ ≫ i ≫ snd U U := by rw [← hz, hzδ]; simp only [Category.assoc]
    _ = u := by rw [reassoc_of% hδ, lift_snd, Category.comp_id]

end GlobalTheory.DualInj
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleFamilyParamInjectiveOfGeomFiberInjecti =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.OpenChartOfSmoothFamilyGeomFibreInjective =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.OpenChartOfSmoothFamilyGeomFibreInjective", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditiveFamilyChartAffineOfChartFiniteType\npublic import Mathlib.AlgebraicGeometry.Noetherian\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsOpenImmersionOfMonoLiftSmallArtinExtensions\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleFamilyChartOfAffineParameters\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleFamilyOpenChartAffineFiniteTypeStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LineBundleFamilyParamInjectiveOfGeomFiberInjecti\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothInjectiveFamilyLiftsSmallArtinianStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.ChartCrit

theorem openChart : ∀ (R : Type) [CommRing R] [IsNoetherianRing R] (A : Over (Sp R)) [GrpObj A] (g : ℕ), IsAbelianScheme A → SmoothOfRelativeDimension g A.hom → ∀ (U : Over (Sp R)) (M : LB (A ⊗ U).left), SmoothOfRelativeDimension g U.hom → Fam A M → FibInj A M → IsChart A M := by
  intro R _ _ A _ g hA hAg U M hU hM hF
  have hUf : LocallyOfFiniteType U.hom := by
    haveI := hU
    haveI : Smooth U.hom := SmoothOfRelativeDimension.smooth g _
    infer_instance
  have hI : Inj A M := _root_.GlobalTheory.DualInj.inj_of_fibInj R A hA U M hUf hM hF
  refine ⟨hM, hI, ?_⟩
  intro T N hN
  refine _root_.GlobalTheory.DualCon.chartAt_of_affine (Sp R) A hA U M hM hI ?_ T N hN
  intro T _ N hN
  refine _root_.GlobalTheory.DualApprox.chartAt_of_finiteType R A hA U M hM ?_ T N hN
  intro T _ hT N hN
  exact GlobalTheory.T.lineBundleFamily_openChart_affine_finiteType R A hA U M hUf hM hI (fun f _ _ _ h => _root_.GlobalTheory.ArtinOpen.isOpenImmersion_of_lift f h) T hT N hN
    (_root_.GlobalTheory.DualCon.same_lift_small R A g hA hAg U M hU hM hI T N hN)

end GlobalTheory.ChartCrit
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.OpenChartOfSmoothFamilyGeomFibreInjective =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProperSmoothGeomConnectedDescendFiniteSurjective =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProperSmoothGeomConnectedDescendFiniteSurjective", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.IsProperAndGeometricallyConnectedOfIsNilpotent\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.DualCon

theorem surjective_to_spec_field {T : Scheme.{0}} (K : Type) [Field K] (h : T ⟶ Spec (CommRingCat.of K))
    (t : T) : Surjective h := by
  refine ⟨fun x ↦ ⟨t, ?_⟩⟩
  have : Subsingleton (PrimeSpectrum K) := inferInstance
  exact Subsingleton.elim (α := PrimeSpectrum K) _ _

theorem geometricallyConnected_of_isPullback {X X' Y Y' : Scheme.{0}} {f : X ⟶ Y} {f' : X' ⟶ Y'} {p : X' ⟶ X}
    {q : Y' ⟶ Y} (hsq : IsPullback p f' f q) [Surjective q] [GeometricallyConnected f'] :
    GeometricallyConnected f := by
  refine ⟨fun K _ y Z fst snd hz ↦ ?_⟩
  have hb : Surjective (pullback.snd q y) :=
    MorphismProperty.of_isPullback (P := @Surjective) (IsPullback.of_hasPullback q y) inferInstance
  have k : Spec (CommRingCat.of K) := IsLocalRing.closedPoint K
  obtain ⟨z, -⟩ := (pullback.snd q y).surjective k
  let t := (pullback q y).fromSpecResidueField z
  let L := (pullback q y).residueField z
  let W := pullback f' (t ≫ pullback.fst q y)
  have hW : ConnectedSpace W :=
    GeometricallyConnected.geometrically_connectedSpace (f := f') (t ≫ pullback.fst q y)
      (pullback.fst _ _) (pullback.snd _ _) (IsPullback.of_hasPullback _ _)
  have hbig : IsPullback (pullback.fst f' (t ≫ pullback.fst q y) ≫ p) (pullback.snd _ _) f
      ((t ≫ pullback.fst q y) ≫ q) := (IsPullback.of_hasPullback _ _).paste_horiz hsq
  have hbig' : IsPullback (pullback.fst f' (t ≫ pullback.fst q y) ≫ p) (pullback.snd _ _) f
      ((t ≫ pullback.snd q y) ≫ y) := by
    convert hbig using 1
    simp [pullback.condition]
  let w : W ⟶ Z := hz.lift (pullback.fst _ _ ≫ p) (pullback.snd _ _ ≫ t ≫ pullback.snd q y) (by
    simpa using hbig'.w)
  have hw : IsPullback w (pullback.snd f' (t ≫ pullback.fst q y)) snd (t ≫ pullback.snd q y) := by
    refine IsPullback.of_right (h₁₂ := fst) (v₁₃ := f) (h₂₂ := y) ?_ (by simp [w]) hz
    convert hbig' using 1
    simp [w]
  have hs : Surjective (t ≫ pullback.snd q y) := surjective_to_spec_field K _ (IsLocalRing.closedPoint L)
  have : Surjective w := MorphismProperty.of_isPullback (P := @Surjective) hw.flip hs
  exact w.surjective.connectedSpace w.continuous

theorem good_of_isPullback_finite_surjective : ∀ (X X' Y Y' : Scheme.{0}) (f : X ⟶ Y) (f' : X' ⟶ Y') (p : X' ⟶ X)
    (q : Y' ⟶ Y) (g : ℕ), IsPullback p f' f q → IsFinite q → Surjective q → SmoothOfRelativeDimension g f →
    GlobalTheory.DualCon.Good g f' → GlobalTheory.DualCon.Good g f := by
  intro X X' Y Y' f f' p q g hsq hq hqs hf hf'
  have := hf'.proper
  have := hf'.conn
  have : Surjective p := MorphismProperty.of_isPullback (P := @Surjective) hsq.flip hqs
  have : IsFinite p := MorphismProperty.of_isPullback (P := @IsFinite) hsq.flip hq
  have : IsProper (p ≫ f) := by rw [hsq.w]; infer_instance
  have : UniversallyClosed f := UniversallyClosed.of_comp_surjective p f
  have : IsSeparated f := GlobalTheory.NilProper.isSeparated_of_comp_surjective p f
  have : Smooth f := hf.smooth
  have : LocallyOfFiniteType f := inferInstance
  exact ⟨{}, hf, geometricallyConnected_of_isPullback hsq⟩

end GlobalTheory.DualCon
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProperSmoothGeomConnectedDescendFiniteSurjective =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RepresentingSchemeOfFiniteSurjectiveLift =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.RepresentingSchemeOfFiniteSurjectiveLift", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.BaseChangeStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GlueOpenChartsAdditiveFamiliesRepresentingStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OpenChartOfSmoothFamilyGeomFibreInjective\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ProperSmoothGeomConnectedDescendFiniteSurjective\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RepresentsAdditiveLineBundleFamiliesUniqueIso\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Limits.Shapes.Connected\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ExistsLiftPt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.DualCon.Assemble

variable {S : Scheme.{0}} {A : Over S} [GrpObj A]

omit [GrpObj A] in
theorem same_comp {T U Y Z : Over S} {N : LB (A ⊗ T).left} {M : LB (A ⊗ U).left} (hN : N.IsLB) (hM : M.IsLB)
    {y : Y ⟶ T} {u : Y ⟶ U} (h : Same A N M y u) (z : Z ⟶ Y) :
    evc hN (fst A Z) (snd A Z ≫ z ≫ y) = evc hM (fst A Z) (snd A Z ≫ z ≫ u) := by
  have e := congrArg (CechPic.pull (lift (fst A Z) (snd A Z ≫ z)).left) ((same_iff hN hM y u).1 h)
  simpa only [pull_evc, lift_fst, lift_snd_assoc, Category.assoc] using e

theorem exists_lift {S' : Over S} [IsFinite S'.hom] [Surjective S'.hom] {K : Type} [Field K] [IsAlgClosed K]
    (s : Sp K ⟶ S) : Nonempty (Over.mk s ⟶ S') := by
  obtain ⟨t, ht⟩ := exists_lift_pt S'.hom s
  exact ⟨Over.homMk t ht⟩

theorem fibInj {B S' U : Over S} [IsFinite S'.hom] [Surjective S'.hom] {b : B ⟶ S'} {P : LB (A ⊗ B).left}
    (hP : Rep A b P) {M : LB (A ⊗ U).left} (hM : Fam A M) {j : U ⊗ S' ⟶ B} (hj : j ≫ b = snd U S')
    [IsOpenImmersion j.left] (h : Same A M P (fst U S') j) : FibInj A M := by
  intro K _ _ s Y y u u' huu
  obtain ⟨t⟩ := exists_lift (S' := S') s
  have : Mono j := (Over.forget S).mono_of_mono_map (show Mono j.left from inferInstance)
  have k : ∀ v : Y ⟶ U, evc hM.isLB (fst A Y) (snd A Y ≫ v) =
      evc hP.fam.isLB (fst A Y) (snd A Y ≫ lift v (y ≫ t) ≫ j) := fun v ↦ by
    simpa only [lift_fst] using same_comp hM.isLB hP.fam.isLB h (lift v (y ≫ t))
  have hN := _root_.GlobalTheory.DualCon.Fam.ev hM u
  have e : lift u (y ≫ t) ≫ j = lift u' (y ≫ t) ≫ j := by
    refine (hP.univ Y (y ≫ t) _ hN).unique ⟨by rw [Category.assoc, hj, lift_snd], ?_⟩
      ⟨by rw [Category.assoc, hj, lift_snd], ?_⟩
    · exact (cls_eq_iff hN.isLB (pull_isLB hP.fam.isLB _)).1 (k u)
    · exact (cls_eq_iff hN.isLB (pull_isLB hP.fam.isLB _)).1
        (((same_iff hM.isLB hM.isLB u u').1 huu).trans (k u'))
  have e' := congrArg (· ≫ fst U S') ((cancel_mono j).1 e)
  simpa only [lift_fst] using e'

theorem exists_point {B S' U : Over S} {P : LB (A ⊗ B).left} (hP : P.IsLB) {M : LB (A ⊗ U).left} (hM : M.IsLB)
    {j : U ⊗ S' ⟶ B} [IsOpenImmersion j.left] (h : Same A M P (fst U S') j) {K : Type} [Field K]
    {s : Sp K ⟶ S} {N : LB (A ⊗ Over.mk s).left} (hN : N.IsLB) (x : Over.mk s ⟶ B)
    (hx : LBIso N (ev P (fst A _) (snd A _ ≫ x))) (hr : x.left (default : PrimeSpectrum K) ∈ Set.range j.left) :
    ∃ u : Over.mk s ⟶ U, Same A N M (𝟙 _) u := by
  have hr' : Set.range x.left ⊆ Set.range j.left := by
    rintro _ ⟨z, rfl⟩
    rwa [Subsingleton.elim (α := PrimeSpectrum K) z default]
  have fac := IsOpenImmersion.lift_fac j.left x.left hr'
  let v : Over.mk s ⟶ U ⊗ S' := Over.homMk (IsOpenImmersion.lift j.left x.left hr') (by
    rw [← Over.w j, ← Category.assoc, fac]; exact Over.w x)
  have hv : v ≫ j = x := Over.OverMorphism.ext fac
  refine ⟨v ≫ fst U S', (same_id_iff hN hM _).2 ((cls_eq_iff hN (pull_isLB hM _)).1 ?_)⟩
  rw [(cls_eq_iff hN (pull_isLB hP _)).2 hx, cls_ev hP, cls_ev hM, same_comp hM hP h v, hv]

theorem isPullback_prod (X Y : Over S) : IsPullback (fst X Y) (snd X Y) (toUnit X) (toUnit Y) :=
  ⟨⟨toUnit_unique _ _⟩, ⟨PullbackCone.IsLimit.mk _ (fun c ↦ lift c.fst c.snd) (fun _ ↦ lift_fst _ _)
    (fun _ ↦ lift_snd _ _) fun c m h₁ h₂ ↦ by ext <;> simp [h₁, h₂]⟩⟩

alias toUnit_left := _root_.GlobalTheory.ObjPull.toUnit_left'

end GlobalTheory.DualCon.Assemble

namespace GlobalTheory.DualCon
open Assemble

theorem hasRep_of_liftAt (R : Type) [CommRing R] [IsNoetherianRing R] (A : Over (Sp R)) [GrpObj A] (g : ℕ)
    (hA : IsAbelianScheme A) (hg : SmoothOfRelativeDimension g A.hom) (B S' : Over (Sp R)) (b : B ⟶ S')
    (P : LB (A ⊗ B).left) (hf : IsFinite S'.hom) (hs : Surjective S'.hom) (hP : Rep A b P)
    (hb : GlobalTheory.DualCon.Good g b.left) (hl : ∀ x : B.left, LiftAt A g b P x) : HasRep A g (𝟙_ _) := by
  choose U M j hM hU hj ho hx h using hl
  have hc : ∀ x, IsChart A (M x) := fun x ↦
    _root_.GlobalTheory.ChartCrit.openChart R A g hA hg (U x) (M x) (hU x) (hM x) (fibInj hP (hM x) (hj x) (h x))
  obtain ⟨B₀, P₀, i, hP₀, hi, hcov, -⟩ := _root_.GlobalTheory.PicGlue.glue (Sp R) A hA B.left U M hc (by
    intro K _ _ s N hN
    obtain ⟨t⟩ := exists_lift (S' := S') s
    obtain ⟨x, ⟨-, hxN⟩, -⟩ := hP.univ _ t N hN
    exact ⟨_, exists_point hP.fam.isLB (hM _).isLB (h _) hN.isLB x hxN (hx _)⟩)
  have hsm : SmoothOfRelativeDimension g B₀.hom := by
    have : IsZariskiLocalAtSource (@SmoothOfRelativeDimension g) := HasRingHomProperty.instIsZariskiLocalAtSource
    refine IsZariskiLocalAtSource.of_openCover (P := @SmoothOfRelativeDimension g)
      (Scheme.Cover.mkOfCovers B.left (fun x ↦ (U x).left) (fun x ↦ (i x).left) hcov hi) fun x ↦ ?_
    have e : (i x).left ≫ B₀.hom = (U x).hom := Over.w _
    exact (congrArg (@SmoothOfRelativeDimension g _ _) e).mpr (hU x)
  have hpb := isPullback_prod B₀ S'
  obtain ⟨e, he, -⟩ := rep_unique (Sp R) A B (B₀ ⊗ S') S' b P _ _ hP
    (_root_.GlobalTheory.DualCon.Rep.baseChange (Sp R) A B₀ _ S' _ _ P₀ _ _ _ hP₀ hpb)
  have hpb' : IsPullback (e.hom ≫ fst B₀ S') b (toUnit B₀) (toUnit S') :=
    hpb.of_iso e.symm (Iso.refl _) (Iso.refl _) (Iso.refl _) (by simp) (by simp [← he]) (by simp) (by simp)
  refine ⟨B₀, toUnit B₀, P₀, hP₀, _root_.GlobalTheory.DualCon.good_of_isPullback_finite_surjective _ _ _ _ _ _ _ _ g (hpb'.map (Over.forget _)) ?_ ?_ ?_ hb⟩
  · exact (congrArg (@IsFinite _ _) (toUnit_left S')).mpr hf
  · exact (congrArg (@Surjective _ _) (toUnit_left S')).mpr hs
  · exact (congrArg (@SmoothOfRelativeDimension g _ _) (toUnit_left B₀)).mpr hsm

end GlobalTheory.DualCon
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RepresentingSchemeOfFiniteSurjectiveLift =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RepresentingSchemeOfFiniteSurjectiveLiftStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.RepresentingSchemeOfFiniteSurjectiveLiftStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RepresentingSchemeOfFiniteSurjectiveLift\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RepresentingSchemeOfFiniteSurjectiveLiftStatement =====
