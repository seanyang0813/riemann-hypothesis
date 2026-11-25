module

import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TangentVectorSectionValueEqExpansionSumStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LiftsAlong
public import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff
public import Development.AbelianVarietyTheory.Definitions.Divisors.NotIsIsoSpMapDnFst
public import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.IsAbelianSchemeAndExtendOfGenericHoms
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsRelAmpleOfIsProjBy
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianVarietyIsProjectiveOverRingByChartsStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasDualRepresentativeOfRelAmpleNoetherianStatement
public import Mathlib.AlgebraicGeometry.Morphisms.Smooth
public import Mathlib.Combinatorics.Quiver.ReflQuiver
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsOpenImmersionOfMonoOfSmoothOfRelativeDimension
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditiveLineBundleFamilyCalculusRules
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.IsAbelianScheme
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.GlobalFnsHolds
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.TrivBasicOpenOfTrivFibre
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditiveFamilyOfTrivialModEpsilon
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCechCocycleOneOnThickening
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SectionsFlatBaseChangeAffineMilnorSquareOpenStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PicardClassEqZeroAffineMilnorSquare
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditiveLineBundleFamilyCalculusRulesStatement
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DualNumberFieldHomFlatSurjective
public import Mathlib.AlgebraicGeometry.Morphisms.Flat
public import Mathlib.CategoryTheory.MorphismProperty.Descent
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsClosedSubschemeAdditiveFamiliesAgree
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
import Mathlib.Tactic.Basify
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
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasProperSmoothDualRepresentativeGrpPullbackIff
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Development.AbelianVarietyTheory.PublishedTheorems.AbelianLaws.PrincipalPolarisationOneSection
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SymplecticGenerators.StTransl
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Mathlib.Tactic.Linter.Style
import Mathlib.CategoryTheory.Limits.Shapes.Connected
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.AlgebraicGeometry.Morphisms.FlatDescent
import Mathlib.RingTheory.DualNumber

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LiftsAlongOfPrincipal, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMonoClassifyingOfInjectiveFamily, Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasProperSmoothDualRepresentativeFieldPoint, Development.AbelianVarietyTheory.Proofs.DivisorProofs.OpenImmersionClassifyingFamilyChart, Development.AbelianVarietyTheory.Proofs.DivisorProofs.FieldChartOfInj, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LiftsAlongPrincipalSmallExtension, Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianSchemeUnitsLiftAlongThickening, Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditiveFamilyOfTrivialModEpsilonStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCechCocycleOneOnThickeningStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPicardClassExtendAffineMilnorSquare, Development.AbelianVarietyTheory.Proofs.DivisorProofs.GlueMorphismsIntoAffineOpenMilnorSquare, Development.AbelianVarietyTheory.Proofs.DivisorProofs.AffineMilnorSquareOfCartesianRingSquare, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmallExtensionDualNumberFibreProductAffineMilnor, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmallExtensionDualNumberFibreProductAffineMilnorStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleFamilyAgreeingSmallExtensionTang, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothExistsPointLiftSquareZeroLocalRing, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothExistsPointLiftSquareZeroLocalRingStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LiftsAlongSmallExtensionOfDualNumberLifting, Development.AbelianVarietyTheory.Proofs.DivisorProofs.DualNumberFieldHomFlatSurjectiveStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLiftMonoOfFpqcCoverLift, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMonoFiniteTypeAgreementLocusInjectiveFamil, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SubsingletonSpectrumDualNumber, Development.AbelianVarietyTheory.Proofs.DivisorProofs.LiftsAlongOfSmoothInj, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothInjectiveFamilyLiftsSmallArtinian, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothInjectiveFamilyLiftsSmallArtinianStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LiftsAlongOfPrincipal =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LiftsAlongOfPrincipal", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LiftsAlong\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.DualCon.LiftInduct

theorem same_comp {S : Scheme.{0}} (A : Over S) {T U Y Y' : Over S} {N : LB (A ⊗ T).left} {M : LB (A ⊗ U).left}
    (e : Y' ⟶ Y) {y : Y ⟶ T} {u : Y ⟶ U} (h : Same A N M y u) : Same A N M (e ≫ y) (e ≫ u) :=
  LBIso.chartPull (h := (lift (fst A Y') (snd A Y' ≫ e)).left)
    (chartPullSame N _ _ _ _ fun _ => by
      rw [← Over.comp_left, comp_lift, lift_fst, lift_snd_assoc, Category.assoc])
    (chartPullSame M _ _ _ _ fun _ => by
      rw [← Over.comp_left, comp_lift, lift_fst, lift_snd_assoc, Category.assoc]) h

variable {R : Type} [CommRing R] (A : Over (Sp R)) [GrpObj A] {U : Over (Sp R)} (M : LB (A ⊗ U).left)

def LiftsVia {B C : Type} [CommRing B] [CommRing C] (φ : B →+* C) : Prop :=
  ∀ (T : Over (Sp R)) (N : LB (A ⊗ T).left), Fam A N → ∀ (y : Spec (CommRingCat.of B) ⟶ T.left)
    (u₀ : Over.mk (Spec.map (CommRingCat.ofHom φ) ≫ y ≫ T.hom) ⟶ U),
    Same A N M (Over.homMk (Spec.map (CommRingCat.ofHom φ) ≫ y) (by simp) :
      Over.mk (Spec.map (CommRingCat.ofHom φ) ≫ y ≫ T.hom) ⟶ T) u₀ →
    ∃ u : Over.mk (y ≫ T.hom) ⟶ U, Same A N M (Over.homMk y rfl : Over.mk (y ≫ T.hom) ⟶ T) u

theorem liftsVia_of_leftInverse {B C : Type} [CommRing B] [CommRing C] (φ : B →+* C) (ψ : C →+* B)
    (hψ : ψ.comp φ = RingHom.id B) : LiftsVia A M φ := by
  intro T N _ y u₀ h
  have hs : Spec.map (CommRingCat.ofHom ψ) ≫ Spec.map (CommRingCat.ofHom φ) = 𝟙 _ := by
    rw [← Spec.map_comp, ← CommRingCat.ofHom_comp, hψ, CommRingCat.ofHom_id, Spec.map_id]
  let e : Over.mk (y ≫ T.hom) ⟶ Over.mk (Spec.map (CommRingCat.ofHom φ) ≫ y ≫ T.hom) :=
    Over.homMk (Spec.map (CommRingCat.ofHom ψ)) (by simp [reassoc_of% hs])
  refine ⟨e ≫ u₀, ?_⟩
  have h' := same_comp A e h
  convert h' using 1
  ext
  simp [e, reassoc_of% hs]

theorem liftsVia_comp {B C D : Type} [CommRing B] [CommRing C] [CommRing D] (φ : B →+* C) (ψ : C →+* D)
    (hφ : LiftsVia A M φ) (hψ : LiftsVia A M ψ) : LiftsVia A M (ψ.comp φ) := by
  intro T N hN y u₀ h
  have k : Spec.map (CommRingCat.ofHom (ψ.comp φ)) =
      Spec.map (CommRingCat.ofHom ψ) ≫ Spec.map (CommRingCat.ofHom φ) := by
    rw [CommRingCat.ofHom_comp, Spec.map_comp]
  let e : Over.mk (Spec.map (CommRingCat.ofHom ψ) ≫ (Spec.map (CommRingCat.ofHom φ) ≫ y) ≫ T.hom) ⟶
      Over.mk (Spec.map (CommRingCat.ofHom (ψ.comp φ)) ≫ y ≫ T.hom) := Over.homMk (𝟙 _) (by simp [k])
  obtain ⟨u₁, h₁⟩ := hψ T N hN (Spec.map (CommRingCat.ofHom φ) ≫ y) (e ≫ u₀) (by
    have h' := same_comp A e h
    convert h' using 1
    ext
    simp [e, k])
  let e' : Over.mk (Spec.map (CommRingCat.ofHom φ) ≫ y ≫ T.hom) ⟶
      Over.mk ((Spec.map (CommRingCat.ofHom φ) ≫ y) ≫ T.hom) := Over.homMk (𝟙 _) (by simp)
  exact hφ T N hN y (e' ≫ u₁) (by
    have h' := same_comp A e' h₁
    convert h' using 1
    ext
    simp [e'])

theorem liftsVia_of_list
    (hyp : ∀ (B : Type) [CommRing B] [IsLocalRing B] [IsArtinianRing B] (t : B),
      t ∈ IsLocalRing.maximalIdeal B → IsLocalRing.maximalIdeal B * Ideal.span {t} = ⊥ →
      LiftsAlong A M B (Ideal.span {t})) :
    ∀ (n : ℕ) (B : Type) [CommRing B] [IsLocalRing B] [IsArtinianRing B] (C : Type) [CommRing C] (φ : B →+* C)
      (l : List B), l.length = n → Function.Surjective φ → RingHom.ker φ = Ideal.span {x | x ∈ l} →
      RingHom.ker φ ≤ IsLocalRing.maximalIdeal B → IsLocalRing.maximalIdeal B * RingHom.ker φ = ⊥ →
      LiftsVia A M φ := by
  intro n
  induction n with
  | zero =>
    intro B _ _ _ C _ φ l hl hs hk _ _
    have hl0 : l = [] := List.eq_nil_of_length_eq_zero hl
    subst hl0
    have hinj : Function.Injective φ := by
      rw [RingHom.injective_iff_ker_eq_bot, hk]
      simp
    let e := RingEquiv.ofBijective φ ⟨hinj, hs⟩
    refine liftsVia_of_leftInverse A M φ e.symm.toRingHom ?_
    ext x
    exact e.symm_apply_apply x
  | succ n ih =>
    intro B _ _ _ C _ φ l hl hs hk hkm hmk
    obtain ⟨t, l', rfl⟩ : ∃ t l', l = t :: l' := by
      cases l with
      | nil => simp at hl
      | cons t l' => exact ⟨t, l', rfl⟩
    have ht : t ∈ RingHom.ker φ := hk ▸ Ideal.subset_span (by simp)
    have hJ : Ideal.span {t} ≤ RingHom.ker φ := (Ideal.span_singleton_le_iff_mem _).2 ht
    let ψ : B ⧸ Ideal.span {t} →+* C := Ideal.Quotient.lift _ φ (fun a ha => hJ ha)
    have hcomp : ψ.comp (Ideal.Quotient.mk _) = φ := by
      ext x
      rfl
    have hprin : LiftsVia A M (Ideal.Quotient.mk (Ideal.span {t})) :=
      hyp B t (hkm ht) (le_bot_iff.1 ((Ideal.mul_mono_right hJ).trans hmk.le))
    have hne : Ideal.span {t} ≠ ⊤ := fun h =>
      (IsLocalRing.maximalIdeal.isMaximal B).ne_top (top_le_iff.1 (h ▸ hJ.trans hkm))
    haveI : Nontrivial (B ⧸ Ideal.span {t}) := Ideal.Quotient.nontrivial_iff.2 hne
    haveI : IsLocalRing (B ⧸ Ideal.span {t}) :=
      IsLocalRing.of_surjective' _ Ideal.Quotient.mk_surjective
    have hψs : Function.Surjective ψ := Ideal.Quotient.lift_surjective_of_surjective _ _ hs
    have hC : Nontrivial C := by
      rcases subsingleton_or_nontrivial C with hC | hC
      · exact absurd (hkm (RingHom.mem_ker.2 (Subsingleton.elim _ _)))
          ((Ideal.ne_top_iff_one _).1 (IsLocalRing.maximalIdeal.isMaximal B).ne_top)
      · exact hC
    have h0 : Ideal.Quotient.mk (Ideal.span {t}) t = 0 :=
      Ideal.Quotient.eq_zero_iff_mem.2 (Ideal.mem_span_singleton_self t)
    have hker : RingHom.ker ψ = (RingHom.ker φ).map (Ideal.Quotient.mk (Ideal.span {t})) := by
      refine le_antisymm (fun x hx => ?_) (Ideal.map_le_iff_le_comap.2 fun b hb => ?_)
      · obtain ⟨b, rfl⟩ := Ideal.Quotient.mk_surjective x
        exact Ideal.mem_map_of_mem _ (RingHom.mem_ker.2 (RingHom.mem_ker.1 hx))
      · exact RingHom.mem_ker.2 (RingHom.mem_ker.1 hb)
    have hkerψ : RingHom.ker ψ =
        Ideal.span {x | x ∈ l'.map (Ideal.Quotient.mk (Ideal.span {t}))} := by
      rw [hker, hk, Ideal.map_span]
      have hset : (Ideal.Quotient.mk (Ideal.span {t})) '' {x | x ∈ t :: l'} =
          insert 0 {x | x ∈ l'.map (Ideal.Quotient.mk (Ideal.span {t}))} := by
        ext x
        simp only [List.mem_cons, Set.mem_image, Set.mem_setOf_eq, Set.mem_insert_iff, List.mem_map]
        constructor
        · rintro ⟨a, rfl | ha, rfl⟩
          · exact Or.inl h0
          · exact Or.inr ⟨a, ha, rfl⟩
        · rintro (rfl | ⟨a, ha, rfl⟩)
          · exact ⟨t, Or.inl rfl, h0⟩
          · exact ⟨a, Or.inr ha, rfl⟩
      rw [hset, Ideal.span_insert_zero]
    have hkm' : RingHom.ker ψ ≤ IsLocalRing.maximalIdeal (B ⧸ Ideal.span {t}) :=
      IsLocalRing.le_maximalIdeal (RingHom.ker_ne_top ψ)
    have hmk' : IsLocalRing.maximalIdeal (B ⧸ Ideal.span {t}) * RingHom.ker ψ = ⊥ := by
      rw [eq_bot_iff, Ideal.mul_le]
      intro x hx y hy
      obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective x
      obtain ⟨b, rfl⟩ := Ideal.Quotient.mk_surjective y
      have ha : a ∈ IsLocalRing.maximalIdeal B := by
        rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff] at hx ⊢
        exact fun h => hx (h.map _)
      have hb : b ∈ RingHom.ker φ := RingHom.mem_ker.2 (RingHom.mem_ker.1 hy)
      have hab : a * b = 0 := by
        have := Ideal.mul_mem_mul ha hb
        rw [hmk] at this
        simpa using this
      rw [Ideal.mem_bot, ← map_mul, hab, map_zero]
    have hlen : (l'.map (Ideal.Quotient.mk (Ideal.span {t}))).length = n := by
      simpa using hl
    have hψ := ih (B ⧸ Ideal.span {t}) C ψ _ hlen hψs hkerψ hkm' hmk'
    rw [← hcomp]
    exact liftsVia_comp A M _ _ hprin hψ

end GlobalTheory.DualCon.LiftInduct

namespace GlobalTheory.DualCon

theorem liftsAlong_of_principal : ∀ (R : Type) [CommRing R] (A : Over (Sp R)) [GrpObj A] (U : Over (Sp R)) (M : LB (A ⊗ U).left), (∀ (B : Type) [CommRing B] [IsLocalRing B] [IsArtinianRing B] (t : B), t ∈ IsLocalRing.maximalIdeal B → IsLocalRing.maximalIdeal B * Ideal.span {t} = ⊥ → LiftsAlong A M B (Ideal.span {t})) → ∀ (B : Type) [CommRing B] [IsLocalRing B] [IsArtinianRing B] (I : Ideal B), I ≤ IsLocalRing.maximalIdeal B → IsLocalRing.maximalIdeal B * I = ⊥ → LiftsAlong A M B I := by
  intro R _ A _ U M hyp B _ _ _ I hI hmI
  obtain ⟨s, hs⟩ : I.FG := IsNoetherian.noetherian I
  refine LiftInduct.liftsVia_of_list A M hyp _ B (B ⧸ I) (Ideal.Quotient.mk I) s.toList rfl
    Ideal.Quotient.mk_surjective ?_ ?_ ?_
  · rw [Ideal.mk_ker, ← hs]
    congr 1
    ext x
    simp
  · rwa [Ideal.mk_ker]
  · rwa [Ideal.mk_ker]

end GlobalTheory.DualCon
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LiftsAlongOfPrincipal =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMonoClassifyingOfInjectiveFamily =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMonoClassifyingOfInjectiveFamily", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.NotIsIsoSpMapDnFst\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon GlobalTheory.DualOpen
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.DualCon

theorem fam_ev_param {S : Scheme.{0}} {A T Y : Over S} [GrpObj A] {N : LB (A ⊗ T).left} (hN : Fam A N)
    (y : Y ⟶ T) : Fam A (ev N (fst A Y) (snd A Y ≫ y)) := by
  have h : (ev N (fst A Y) (snd A Y ≫ y)).IsLB := pull_isLB hN.isLB _
  refine ⟨h, (isAdditive_iff h).2 fun Z a a' t ↦ ?_⟩
  simp only [evc_ev hN.isLB, lift_fst, lift_snd_assoc]
  exact (isAdditive_iff hN.isLB).1 hN.add Z a a' (t ≫ y)

theorem classify_mono : ∀ (S : Scheme.{0}) (A B S' U : Over S) [GrpObj A] (b : B ⟶ S') (P : LB (A ⊗ B).left)
    (M : LB (A ⊗ U).left), Rep A b P → Fam A M → Inj A M →
    ∃ φ : U ⊗ S' ⟶ B, φ ≫ b = snd U S' ∧ Same A M P (fst U S') φ ∧ Mono φ.left := by
  intro S A B S' U _ b P M hP hM hI
  obtain ⟨φ, ⟨hb, hN⟩, -⟩ := hP.univ (U ⊗ S') (snd U S') _ (fam_ev_param hM (fst U S'))
  have hS : Same A M P (fst U S') φ := hN
  refine ⟨φ, hb, hS, ?_⟩
  have hm : Mono φ := ⟨fun {Y} a a' e ↦ by
    have e1 : Same A M P (a ≫ fst U S') (a ≫ φ) := by
      rw [same_iff hM.isLB hP.fam.isLB] at hS ⊢
      have := congrArg (CechPic.pull (lift (fst A Y) (snd A Y ≫ a)).left) hS
      simpa only [pull_evc, lift_fst, lift_snd_assoc, Category.assoc] using this
    have e2 : Same A M P (a' ≫ fst U S') (a' ≫ φ) := by
      rw [same_iff hM.isLB hP.fam.isLB] at hS ⊢
      have := congrArg (CechPic.pull (lift (fst A Y) (snd A Y ≫ a')).left) hS
      simpa only [pull_evc, lift_fst, lift_snd_assoc, Category.assoc] using this
    have e3 : Same A M M (a ≫ fst U S') (a' ≫ fst U S') := by
      rw [same_iff hM.isLB hP.fam.isLB] at e1 e2
      rw [same_iff hM.isLB hM.isLB, e1, e2, e]
    have ef := hI Y _ _ e3
    have es : a ≫ snd U S' = a' ≫ snd U S' := by rw [← hb, reassoc_of% e]
    exact CartesianMonoidalCategory.hom_ext _ _ ef es⟩
  exact Over.mono_left_of_mono φ
end GlobalTheory.DualCon -- clump:auto
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMonoClassifyingOfInjectiveFamily =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasProperSmoothDualRepresentativeFieldPoint =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasProperSmoothDualRepresentativeFieldPoint", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\npublic import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.IsAbelianSchemeAndExtendOfGenericHoms\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsRelAmpleOfIsProjBy\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianVarietyIsProjectiveOverRingByChartsStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasDualRepresentativeOfRelAmpleNoetherianStatement\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasProperSmoothDualRepresentativeGrpPullbackIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.NotIsIsoSpMapDnFst\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon GlobalTheory.DualOpen
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section
namespace GlobalTheory.DualCon.FieldRep

theorem hasRep_field : ∀ (S : Scheme.{0}) (A : Over S) [GrpObj A], IsAbelianScheme A → ∀ g : ℕ,
    SmoothOfRelativeDimension g A.hom → ∀ (K : Type) [Field K] (s : Sp K ⟶ S), HasRep A g (Over.mk s) := by
  intro S A _ hA g hg K _ s
  have hA' : IsAbelianScheme ((Over.pullback s).obj A) := GlobalTheory.isAbelianScheme_pullback_obj s A hA
  have hg' : SmoothOfRelativeDimension g ((Over.pullback s).obj A).hom :=
    (smoothOfRelativeDimension_isStableUnderBaseChange _).of_isPullback (IsPullback.of_hasPullback _ _) hg
  obtain ⟨L, hL, hamp⟩ := GlobalTheory.ProjFinite.exists_relAmple_of_isProjBy (GlobalTheory.T.abelianVariety_isProjectiveOverRingByCharts K _ hA')
  have hAF : HasRepAF ((Over.pullback s).obj A) g (𝟙_ _) := GlobalTheory.T.hasDualRepresentative_of_relAmple_noetherian K _ g hA' hg' L hL hamp
  have h := (GlobalTheory.DualCon.hasRep_baseChange_iff S (Sp K) s A ((Over.pullback s).obj A) (pullback.fst A.hom s)
    (isGrpPullback_pullback A s) g (𝟙_ _)).1.1
  obtain ⟨B, b, P, hR, hG, -⟩ := hAF
  have h2 := h ⟨B, b, P, hR, hG⟩
  have e : (𝟙_ (Over (Sp K))).hom ≫ s = s := Category.id_comp s
  rw [e] at h2
  exact h2

end GlobalTheory.DualCon.FieldRep
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasProperSmoothDualRepresentativeFieldPoint =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.OpenImmersionClassifyingFamilyChart =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.OpenImmersionClassifyingFamilyChart", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.NotIsIsoSpMapDnFst\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon GlobalTheory.DualOpen
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.RepChart

theorem repChart : ∀ (S : Scheme.{0}) (A B S' U : Over S) [GrpObj A] (b : B ⟶ S') (P : LB (A ⊗ B).left) (M : LB (A ⊗ U).left), Rep A b P → Fam A M → ∀ φ : U ⊗ S' ⟶ B, φ ≫ b = snd U S' → Same A M P (fst U S') φ → IsOpenImmersion φ.left → ∀ (T : Over S) (_ : T ⟶ S') (N : LB (A ⊗ T).left), Fam A N → ChartAt A M N := by
  intro S A B S' U _ b P M hP hM φ hφb hsame hopen T t N hN
  have hP' := hP.fam.isLB
  have hM' := hM.isLB
  have hN' := hN.isLB
  obtain ⟨x, ⟨hxb, hxN⟩, -⟩ := hP.univ T t N hN
  have ex : cls N hN' = evc hP' (fst A T) (snd A T ≫ x) := (cls_eq_iff hN' (pull_isLB hP' _)).2 hxN
  have eφ : evc hM' (fst A (U ⊗ S')) (snd A (U ⊗ S') ≫ fst U S') = evc hP' (fst A (U ⊗ S')) (snd A (U ⊗ S') ≫ φ) :=
    (same_iff hM' hP' _ _).1 hsame
  have eY : ∀ (Y : Over S) (y : Y ⟶ T), evc hN' (fst A Y) (snd A Y ≫ y) = evc hP' (fst A Y) (snd A Y ≫ y ≫ x) := by
    intro Y y
    have e := congrArg (CechPic.pull (lift (fst A Y) (snd A Y ≫ y)).left) ex
    rw [pull_evc, lift_fst, lift_snd_assoc] at e
    exact e
  have eV : ∀ (Y : Over S) (v : Y ⟶ U ⊗ S'), evc hM' (fst A Y) (snd A Y ≫ v ≫ fst U S') =
      evc hP' (fst A Y) (snd A Y ≫ v ≫ φ) := by
    intro Y v
    have e := congrArg (CechPic.pull (lift (fst A Y) (snd A Y ≫ v)).left) eφ
    rw [pull_evc, pull_evc, lift_fst, lift_snd_assoc, lift_snd_assoc] at e
    exact e
  have uniq : ∀ (Y : Over S) (y : Y ⟶ T) (x₁ x₂ : Y ⟶ B), x₁ ≫ b = y ≫ t → x₂ ≫ b = y ≫ t →
      evc hP' (fst A Y) (snd A Y ≫ x₁) = evc hN' (fst A Y) (snd A Y ≫ y) →
      evc hP' (fst A Y) (snd A Y ≫ x₂) = evc hN' (fst A Y) (snd A Y ≫ y) → x₁ = x₂ := by
    intro Y y x₁ x₂ h₁ h₂ e₁ e₂
    have hL : (ev N (fst A Y) (snd A Y ≫ y)).IsLB := pull_isLB hN' _
    have hF : Fam A (ev N (fst A Y) (snd A Y ≫ y)) := by
      refine ⟨hL, (isAdditive_iff hL).2 fun Z a a' z ↦ ?_⟩
      simp only [evc_ev hN', lift_fst, lift_snd_assoc]
      exact (isAdditive_iff hN').1 hN.add Z a a' (z ≫ y)
    refine (hP.univ Y (y ≫ t) _ hF).unique ⟨h₁, (cls_eq_iff hL (pull_isLB hP' _)).1 ?_⟩
      ⟨h₂, (cls_eq_iff hL (pull_isLB hP' _)).1 ?_⟩
    · rw [cls_ev hN', cls_ev hP', e₁]
    · rw [cls_ev hN', cls_ev hP', e₂]
  refine ⟨x.left ⁻¹ᵁ φ.left.opensRange, fun Y y ↦ ⟨?_, ?_⟩⟩
  · rintro ⟨u, hu⟩
    rw [same_iff hN' hM'] at hu
    let v : Y ⟶ U ⊗ S' := lift u (y ≫ t)
    have hvx : v ≫ φ = y ≫ x := by
      refine uniq Y y _ _ ?_ ?_ ?_ (by rw [eY])
      · rw [Category.assoc, hφb, lift_snd]
      · rw [Category.assoc, hxb]
      · rw [← eV, lift_fst, hu]
    intro z
    have e := congrArg (fun q : Y ⟶ B ↦ q.left z) hvx
    simp only [Over.comp_left, Scheme.Hom.comp_apply] at e
    simp only [Scheme.Hom.mem_preimage, Scheme.Hom.mem_opensRange]
    exact ⟨_, e⟩
  · intro h
    have hr : Set.range (y.left ≫ x.left) ⊆ Set.range φ.left := by
      rintro _ ⟨z, rfl⟩
      have := h z
      simp only [Scheme.Hom.mem_preimage, Scheme.Hom.mem_opensRange] at this
      simpa [Scheme.Hom.comp_apply] using this
    let l := IsOpenImmersion.lift φ.left (y.left ≫ x.left) hr
    have hl : l ≫ φ.left = y.left ≫ x.left := IsOpenImmersion.lift_fac _ _ _
    let v : Y ⟶ U ⊗ S' := Over.homMk l (by
      rw [← Over.w φ, ← Category.assoc, hl, Category.assoc, Over.w x, Over.w y])
    have hvx : v ≫ φ = y ≫ x := Over.OverMorphism.ext (by simpa [v] using hl)
    refine ⟨v ≫ fst U S', (same_iff hN' hM' _ _).2 ?_⟩
    rw [eV, hvx, eY]

end GlobalTheory.RepChart
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.OpenImmersionClassifyingFamilyChart =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FieldChartOfInj =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.FieldChartOfInj", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.NotIsIsoSpMapDnFst\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMonoClassifyingOfInjectiveFamily\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HasProperSmoothDualRepresentativeFieldPoint\npublic import Mathlib.AlgebraicGeometry.Morphisms.Smooth\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsOpenImmersionOfMonoOfSmoothOfRelativeDimension\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OpenImmersionClassifyingFamilyChart\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon GlobalTheory.DualOpen
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.DualOpen

theorem fieldChart_of_inj : ∀ (S : Scheme.{0}) (A : Over S) [GrpObj A], IsAbelianScheme A → ∀ g : ℕ,
    SmoothOfRelativeDimension g A.hom → ∀ (U : Over S) (M : LB (A ⊗ U).left), SmoothOfRelativeDimension g U.hom →
    Fam A M → Inj A M → FieldChart A M := by
  intro S A _ hA g hg U M hU hM hI K _ _ s T t N hN
  obtain ⟨B, b, P, hP, hgood⟩ := _root_.GlobalTheory.DualCon.FieldRep.hasRep_field S A hA g hg K s
  obtain ⟨φ, hφb, hφS, hφm⟩ := _root_.GlobalTheory.DualCon.classify_mono S A B (Over.mk s) U b P M hP hM hI
  have hpb : IsPullback (fst U (Over.mk s)).left (snd U (Over.mk s)).left U.hom (Over.mk s).hom :=
    .of_hasPullback _ _
  have hsnd : SmoothOfRelativeDimension g (snd U (Over.mk s)).left :=
    (smoothOfRelativeDimension_isStableUnderBaseChange g).of_isPullback hpb hU
  have hcomp : SmoothOfRelativeDimension g (φ.left ≫ b.left) := by
    rw [← Over.comp_left, hφb]; exact hsnd
  have hopen : IsOpenImmersion φ.left :=
    _root_.GlobalTheory.isOpenImmersion_of_mono_of_smoothOfRelativeDimension _ _ _ φ.left b.left g hgood.smooth hcomp hφm
  exact _root_.GlobalTheory.RepChart.repChart S A B (Over.mk s) U b P M hP hM φ hφb hφS hopen T t N hN

end GlobalTheory.DualOpen
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FieldChartOfInj =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LiftsAlongPrincipalSmallExtension =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LiftsAlongPrincipalSmallExtension", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.NotIsIsoSpMapDnFst\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LiftsAlong\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditiveLineBundleFamilyCalculusRules\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon GlobalTheory.DualOpen
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.DualOpen

theorem liftsAlong_span_singleton : ∀ (R : Type) [CommRing R] (A : Over (Sp R)) [GrpObj A] (U : Over (Sp R)) (M : LB (A ⊗ U).left), Fam A M → SmallLift A M → ∀ (B : Type) [CommRing B] [IsLocalRing B] (t : B), t ∈ IsLocalRing.maximalIdeal B → IsLocalRing.maximalIdeal B * Ideal.span {t} = ⊥ → LiftsAlong A M B (Ideal.span {t}) := by
  intro R _ A _ U M hM hSL B _ _ t ht hmt T N hN y u₀ h₀
  have calc5 := ((GlobalTheory.FamCalc.famCalc (Sp R) A).2.2.2.2)
  have hkill : ∀ a ∈ IsLocalRing.maximalIdeal B, a * t = 0 := fun a ha ↦ by
    have : a * t ∈ IsLocalRing.maximalIdeal B * Ideal.span {t} :=
      Ideal.mul_mem_mul ha (Ideal.mem_span_singleton_self t)
    rwa [hmt, Ideal.mem_bot] at this
  let Y : Over (Sp R) := Over.mk (y ≫ T.hom)
  let yy : Y ⟶ T := Over.homMk y rfl
  have hN' : Fam A (ev N (fst A Y) (snd A Y ≫ yy)) := (GlobalTheory.FamCalc.famCalc (Sp R) A).1 T Y N yy hN
  have key : ptMap (y ≫ T.hom) (Ideal.Quotient.mk (Ideal.span {t})) ≫ yy =
      (Over.homMk (Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk (Ideal.span {t}))) ≫ y) (by simp) :
        Over.mk (Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk (Ideal.span {t}))) ≫ y ≫ T.hom) ⟶ T) := by
    ext1; rfl
  have h₁ : Same A (ev N (fst A Y) (snd A Y ≫ yy)) M (ptMap (y ≫ T.hom) (Ideal.Quotient.mk (Ideal.span {t}))) u₀ := by
    rw [calc5 T U Y _ N M yy _ u₀ hN.isLB hM.isLB, key]
    exact h₀
  obtain ⟨u, hu⟩ := hSL B t ht hkill (y ≫ T.hom) _ hN' u₀ h₁
  refine ⟨u, ?_⟩
  have := (calc5 T U Y Y N M yy (𝟙 _) u hN.isLB hM.isLB).1 hu
  rwa [Category.id_comp] at this

end GlobalTheory.DualOpen
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LiftsAlongPrincipalSmallExtension =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianSchemeUnitsLiftAlongThickening =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianSchemeUnitsLiftAlongThickening", "h": "module\n\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.IsAbelianScheme\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.GlobalFnsHolds\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.TrivBasicOpenOfTrivFibre\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.NotIsIsoSpMapDnFst\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon GlobalTheory.DualOpen
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.DualOpen

theorem isUnit_of_isUnit_appTop_of_surjective {X Y : Scheme.{0}} (f : X ⟶ Y) [Surjective f]
    (a : Γ(Y, ⊤)) (h : IsUnit (f.appTop a)) : IsUnit a := by
  refine Y.toRingedSpace.isUnit_of_isUnit_germ _ _ fun y _ => ?_
  obtain ⟨x, rfl⟩ := f.surjective y
  have hx : x ∈ X.basicOpen (f.appTop a) := by
    rw [Scheme.basicOpen_of_isUnit _ h]; trivial
  rw [← Scheme.preimage_basicOpen_top] at hx
  exact (Y.mem_basicOpen _ _ (by trivial)).1 hx

theorem units_lift_of_thickening : ∀ (S : Scheme.{0}) (A : Over S) [GrpObj A], IsAbelianScheme A →
    ∀ (T₂ T₀ : Over S) (k : T₀ ⟶ T₂), IsAffine T₂.left → IsClosedImmersion k.left → Surjective k.left →
      Function.Surjective (Units.map (A ◁ k).left.appTop.hom.toMonoidHom) := by
  intro S A _ hA T₂ T₀ k _ _ _ u
  have hb₀ : Function.Bijective (snd A T₀).left.appTop.hom :=
    CubeOpen.bijective_appTop GlobalTheory.globalFns_holds A hA (IsPullback.of_hasPullback A.hom T₀.hom)
  have hk : Function.Surjective k.left.appTop.hom :=
    (IsClosedImmersion.isAffine_surjective_of_isAffine k.left).2
  have hc : (A ◁ k).left ≫ (snd A T₂).left = (snd A T₀).left ≫ k.left := by
    rw [← Over.comp_left, ← Over.comp_left, whiskerLeft_snd]
  have hc' : ∀ w, (A ◁ k).left.appTop ((snd A T₂).left.appTop w) =
      (snd A T₀).left.appTop (k.left.appTop w) := by
    intro w
    rw [← CommRingCat.comp_apply, ← CommRingCat.comp_apply, ← Scheme.Hom.comp_appTop,
      ← Scheme.Hom.comp_appTop, hc]
  obtain ⟨v, hv⟩ := hb₀.2 (u : Γ((A ⊗ T₀).left, ⊤))
  obtain ⟨w, rfl⟩ := hk v
  let e := RingEquiv.ofBijective (snd A T₀).left.appTop.hom hb₀
  have hvu : IsUnit (k.left.appTop w) := by
    have : IsUnit (e (k.left.appTop w)) := by
      show IsUnit ((snd A T₀).left.appTop (k.left.appTop w)); rw [hv]; exact u.isUnit
    exact (isUnit_map_iff e _).1 this
  have hw : IsUnit w := isUnit_of_isUnit_appTop_of_surjective k.left w hvu
  obtain ⟨w', hw'⟩ := hw.map (snd A T₂).left.appTop.hom
  refine ⟨w', Units.ext ?_⟩
  show (A ◁ k).left.appTop (w' : Γ((A ⊗ T₂).left, ⊤)) = u
  rw [hw', hc', hv]

end GlobalTheory.DualOpen
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianSchemeUnitsLiftAlongThickening =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditiveFamilyOfTrivialModEpsilonStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditiveFamilyOfTrivialModEpsilonStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.NotIsIsoSpMapDnFst\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditiveFamilyOfTrivialModEpsilon\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon GlobalTheory.DualOpen
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

theorem _root_.GlobalTheory.T.additiveFamily_of_trivial_mod_epsilon : ∀ (S : Scheme.{0}) (A : Over S) [GrpObj A], IsAbelianScheme A → ∀ (k : Type) [Field k] (s : Sp (DualNumber k) ⟶ S) (D : LB (A ⊗ Over.mk s).left) (hD : D.IsLB), GlobalTheory.CechPic.pull (A ◁ ptMap s (dnFst k)).left (cls D hD) = 0 → Fam A D := by
  first | exact @GlobalTheory.DualOpen.fam_of_triv_mod_eps
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditiveFamilyOfTrivialModEpsilonStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCechCocycleOneOnThickeningStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCechCocycleOneOnThickeningStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCechCocycleOneOnThickening\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.NotIsIsoSpMapDnFst\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Development.AbelianVarietyTheory.PublishedTheorems.AbelianLaws.PrincipalPolarisationOneSection\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon GlobalTheory.DualOpen
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

theorem _root_.GlobalTheory.T.exists_cechCocycle_one_on_thickening : ∀ (X X₀ : Scheme.{0}) (i : X₀ ⟶ X) [IsClosedImmersion i] [Surjective i] (c : Pic X), GlobalTheory.CechPic.pull i c = 0 → ∃ (D : LB X) (hD : D.IsLB), cls D hD = c ∧ ∀ a b, pullU i _ (D.g a b) = 1 := by
  first | exact @GlobalTheory.CechPic.exists_cocycle_one_on_thickening
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCechCocycleOneOnThickeningStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPicardClassExtendAffineMilnorSquare =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPicardClassExtendAffineMilnorSquare", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.NotIsIsoSpMapDnFst\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCechCocycleOneOnThickeningStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SectionsFlatBaseChangeAffineMilnorSquareOpenStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Limits.Shapes.Connected\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon GlobalTheory.DualOpen
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.DualOpen

open TopologicalSpace

theorem exists_pic_of_glue_units {X X₁ X₂ : Scheme.{0}} (p₁ : X₁ ⟶ X) (p₂ : X₂ ⟶ X) [IsClosedImmersion p₂]
    [Surjective p₂] (D : LB X₂) (hD : D.IsLB)
    (inj : ∀ (W : X.Opens) (a b : Γ(X, W)ˣ), pullU p₁ W a = pullU p₁ W b → pullU p₂ W a = pullU p₂ W b → a = b)
    (glue : ∀ (W : X.Opens) (a b : D.ι) (h : p₂ ⁻¹ᵁ W ≤ D.U a ⊓ D.U b),
      ∃ v : Γ(X, W)ˣ, pullU p₁ W v = 1 ∧ pullU p₂ W v = res h (D.g a b)) :
    ∃ c : Pic X, GlobalTheory.CechPic.pull p₁ c = 0 ∧ GlobalTheory.CechPic.pull p₂ c = cls D hD := by
  have hW : ∀ a : D.ι, ∃ W : X.Opens, ∀ y : X₂, p₂ y ∈ W ↔ y ∈ D.U a := fun a => by
    obtain ⟨t, ht, e⟩ := (p₂.isClosedEmbedding.isInducing.isOpen_iff).1 (D.U a).isOpen
    exact ⟨⟨t, ht⟩, fun y => Set.ext_iff.1 e y⟩
  choose W hW using hW
  have hle : ∀ a b, p₂ ⁻¹ᵁ (W a ⊓ W b) ≤ D.U a ⊓ D.U b := fun a b y hy => ⟨(hW a y).1 hy.1, (hW b y).1 hy.2⟩
  choose v hv₁ hv₂ using fun a b => glue (W a ⊓ W b) a b (hle a b)
  have g₁ : ∀ (y : X₁) a b, p₁ y ∈ W a → p₁ y ∈ W b → gm (𝟙 X₁ ≫ p₁) y (W a ⊓ W b) (v a b) = 1 :=
    fun y a b ha hb => by
      rw [← gm_pull (𝟙 X₁) p₁ y (W a ⊓ W b) ⟨ha, hb⟩, hv₁, map_one]
  have g₂ : ∀ (y : X₂) a b, p₂ y ∈ W a → p₂ y ∈ W b →
      gm (𝟙 X₂ ≫ p₂) y (W a ⊓ W b) (v a b) = gm (𝟙 X₂) y _ (D.g a b) :=
    fun y a b ha hb => by
      rw [← gm_pull (𝟙 X₂) p₂ y (W a ⊓ W b) ⟨ha, hb⟩, hv₂, gm_res (𝟙 X₂) y (hle a b) ⟨ha, hb⟩]
  have ext : ∀ (V : X.Opens) (a b : Γ(X, V)ˣ),
      (∀ y : X₁, p₁ y ∈ V → gm (𝟙 X₁ ≫ p₁) y V a = gm (𝟙 X₁ ≫ p₁) y V b) →
      (∀ y : X₂, p₂ y ∈ V → gm (𝟙 X₂ ≫ p₂) y V a = gm (𝟙 X₂ ≫ p₂) y V b) → a = b := fun V a b h₁ h₂ =>
    inj V a b
      (unit_ext fun y hy => by rw [gm_pull (𝟙 X₁) p₁ y V hy, gm_pull (𝟙 X₁) p₁ y V hy]; exact h₁ y hy)
      (unit_ext fun y hy => by rw [gm_pull (𝟙 X₂) p₂ y V hy, gm_pull (𝟙 X₂) p₂ y V hy]; exact h₂ y hy)
  let E : LB X := ⟨D.ι, W, v⟩
  have hE : E.IsLB :=
    { cover := by
        rw [eq_top_iff]
        intro x _
        obtain ⟨y, rfl⟩ := Surjective.surj (f := p₂) x
        obtain ⟨a, ha⟩ := exists_chart hD y
        exact Opens.mem_iSup.2 ⟨a, (hW a y).2 ha⟩
      g_self := fun a => ext _ _ _
        (fun y hy => by
          rw [gm_res (𝟙 X₁ ≫ p₁) y _ hy, map_one]
          exact g₁ y a a hy hy)
        (fun y hy => by
          rw [gm_res (𝟙 X₂ ≫ p₂) y _ hy, map_one]
          exact (g₂ y a a hy hy).trans (gm_self hD (𝟙 X₂) y ((hW a y).1 hy)))
      cocycle := fun a b c => ext _ _ _
        (fun y hy => by
          rw [map_mul, gm_res (𝟙 X₁ ≫ p₁) y _ hy, gm_res (𝟙 X₁ ≫ p₁) y _ hy, gm_res (𝟙 X₁ ≫ p₁) y _ hy]
          exact (congrArg₂ (· * ·) (g₁ y a b hy.1.1 hy.1.2) (g₁ y b c hy.1.2 hy.2)).trans
            ((_root_.mul_one _).trans (g₁ y a c hy.1.1 hy.2).symm))
        (fun y hy => by
          rw [map_mul, gm_res (𝟙 X₂ ≫ p₂) y _ hy, gm_res (𝟙 X₂ ≫ p₂) y _ hy, gm_res (𝟙 X₂ ≫ p₂) y _ hy]
          exact (congrArg₂ (· * ·) (g₂ y a b hy.1.1 hy.1.2) (g₂ y b c hy.1.2 hy.2)).trans
            ((gm_cocycle hD (𝟙 X₂) y ((hW a y).1 hy.1.1) ((hW b y).1 hy.1.2) ((hW c y).1 hy.2)).trans
              (g₂ y a c hy.1.1 hy.2).symm)) }
  refine ⟨cls E hE, ?_, ?_⟩
  · rw [← cls_pull hE p₁ (pull_isLB hE p₁), cls_eq_zero_iff]
    refine ⟨⟨fun _ => 1⟩, (isGen_iff_germ _).2 fun y J J' hJ hJ' => ?_⟩
    rw [map_one, map_one, _root_.mul_one]
    exact ((gm_pull_g E p₁ (𝟙 _) y J J' hJ hJ').trans (g₁ y _ _ (mem_pull.1 hJ) (mem_pull.1 hJ'))).symm
  · rw [← cls_pull hE p₂ (pull_isLB hE p₂)]
    refine Eq.symm ((cls_eq_iff hD (pull_isLB hE p₂)).2 (iso_of_chart (pull_isLB hE p₂) ?_))
    exact
      { idx := fun a _ => a
        le := fun a y hy => mem_pull.2 ((hW a y).2 hy)
        g := fun y a b ha hb => Eq.symm ((gm_pull_g E p₂ (𝟙 _) y (fun _ => a) (fun _ => b)
          (mem_pull.2 ((hW a y).2 ha)) (mem_pull.2 ((hW b y).2 hb))).trans
          (g₂ y a b ((hW a y).2 ha) ((hW b y).2 hb))) }

theorem isPullback_whiskerLeft_left {S : Scheme.{0}} (A : Over S) {T T' : Over S} (j : T' ⟶ T) :
    IsPullback (A ◁ j).left (snd A T').left (snd A T).left j.left := by
  have P : IsPullback (A ◁ j) (snd A T') (snd A T) j := by
    refine ⟨⟨by simp⟩, ⟨PullbackCone.IsLimit.mk _ (fun s => lift (s.fst ≫ fst A T) s.snd) ?_ ?_ ?_⟩⟩
    · intro s
      ext <;> simp [s.condition]
    · intro s
      simp
    · intro s m h₁ h₂
      ext <;> simp [← h₁, ← h₂]
  exact P.map (Over.forget S)

theorem exists_pic_extend_of_milnor : ∀ (S : Scheme.{0}) (A T T₁ T₂ T₀ : Over S) [Flat A.hom] (j₁ : T₁ ⟶ T) (j₂ : T₂ ⟶ T) (k₁ : T₀ ⟶ T₁) (k₂ : T₀ ⟶ T₂), Milnor j₁.left j₂.left k₁.left k₂.left → IsClosedImmersion j₂.left → Surjective j₂.left → Surjective k₂.left → ∀ c₂ : Pic (A ⊗ T₂).left, GlobalTheory.CechPic.pull (A ◁ k₂).left c₂ = 0 → ∃ c : Pic (A ⊗ T).left, GlobalTheory.CechPic.pull (A ◁ j₁).left c = 0 ∧ GlobalTheory.CechPic.pull (A ◁ j₂).left c = c₂ := by
  intro S A T T₁ T₂ T₀ _ j₁ j₂ k₁ k₂ hM hj hj' hk' c₂ hc
  have hk := hM.closed
  haveI : IsClosedImmersion (A ◁ j₂).left :=
    MorphismProperty.of_isPullback (isPullback_whiskerLeft_left A j₂).flip hj
  haveI : Surjective (A ◁ j₂).left :=
    MorphismProperty.of_isPullback (isPullback_whiskerLeft_left A j₂).flip hj'
  haveI : IsClosedImmersion (A ◁ k₂).left :=
    MorphismProperty.of_isPullback (isPullback_whiskerLeft_left A k₂).flip hk
  haveI : Surjective (A ◁ k₂).left :=
    MorphismProperty.of_isPullback (isPullback_whiskerLeft_left A k₂).flip hk'
  have w₀ : k₁ ≫ j₁ = k₂ ≫ j₂ := Over.OverMorphism.ext hM.w
  have w : (A ◁ k₁).left ≫ (A ◁ j₁).left = (A ◁ k₂).left ≫ (A ◁ j₂).left := by
    rw [← Over.comp_left, ← Over.comp_left, ← MonoidalCategory.whiskerLeft_comp,
      ← MonoidalCategory.whiskerLeft_comp, w₀]
  obtain ⟨D, hD, rfl, h1⟩ := GlobalTheory.T.exists_cechCocycle_one_on_thickening _ _ (A ◁ k₂).left c₂ hc
  have H := GlobalTheory.T.sections_flat_baseChange_affineMilnorSquare_open S A T T₁ T₂ T₀ j₁ j₂ k₁ k₂ hM
  generalize (A ◁ j₁).left = p₁ at *
  generalize (A ◁ j₂).left = p₂ at *
  generalize (A ◁ k₁).left = q₁ at *
  generalize (A ◁ k₂).left = q₂ at *
  have inj : ∀ (W : (A ⊗ T).left.Opens) (a b : Γ((A ⊗ T).left, W)ˣ), pullU p₁ W a = pullU p₁ W b →
      pullU p₂ W a = pullU p₂ W b → a = b := fun W a b h₁ h₂ =>
    Units.ext ((H W).1 _ _ (congrArg Units.val h₁) (congrArg Units.val h₂))
  refine exists_pic_of_glue_units p₁ p₂ D hD inj fun W a b h => ?_
  have e : q₁ ⁻¹ᵁ (p₁ ⁻¹ᵁ W) = q₂ ⁻¹ᵁ (p₂ ⁻¹ᵁ W) := by
    rw [← Scheme.Hom.comp_preimage, ← Scheme.Hom.comp_preimage, w]
  have lift : ∀ u : Γ((A ⊗ T₂).left, p₂ ⁻¹ᵁ W)ˣ, pullU q₂ _ u = 1 →
      ∃ s : Γ((A ⊗ T).left, W), p₁.app W s = 1 ∧ p₂.app W s = u.val := fun u hu =>
    (H W).2 _ e.ge le_rfl e.le 1 u.val (by
      rw [map_one, Scheme.Hom.appLE_eq_app]
      exact (congrArg Units.val hu).symm)
  have hu : pullU q₂ _ (res h (D.g a b)) = 1 := unit_ext fun y hy => by
    rw [gm_pull (𝟙 _) q₂ y _ hy, gm_res (𝟙 _ ≫ q₂) y h hy, ← gm_pull (𝟙 _) q₂ y _ (h hy), h1, map_one, map_one]
  obtain ⟨s, hs₁, hs₂⟩ := lift _ hu
  obtain ⟨t, ht₁, ht₂⟩ := lift (res h (D.g a b))⁻¹ (by rw [map_inv, hu, inv_one])
  have st : s * t = 1 := (H W).1 _ _ (by rw [map_mul, hs₁, ht₁, map_one, _root_.mul_one])
    (by rw [map_mul, hs₂, ht₂, map_one, Units.mul_inv])
  exact ⟨⟨s, t, st, (mul_comm _ _).trans st⟩, Units.ext hs₁, Units.ext hs₂⟩

end GlobalTheory.DualOpen
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPicardClassExtendAffineMilnorSquare =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GlueMorphismsIntoAffineOpenMilnorSquare =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.GlueMorphismsIntoAffineOpenMilnorSquare", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.NotIsIsoSpMapDnFst\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon GlobalTheory.DualOpen
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.DualOpen

theorem glue_into_affineOpen (S : Scheme.{0}) [IsAffine S] (U T T₁ T₂ T₀ : Over S) (j₁ : T₁ ⟶ T) (j₂ : T₂ ⟶ T)
    (k₁ : T₀ ⟶ T₁) (k₂ : T₀ ⟶ T₂) (hM : Milnor j₁.left j₂.left k₁.left k₂.left) (V : U.left.Opens)
    (hV : IsAffineOpen V) (u₁ : T₁ ⟶ U) (u₂ : T₂ ⟶ U) (hk : k₁ ≫ u₁ = k₂ ≫ u₂)
    (h₁ : ∀ x, u₁.left x ∈ V) (h₂ : ∀ x, u₂.left x ∈ V) :
    ∃ u : T ⟶ U, j₁ ≫ u = u₁ ∧ j₂ ≫ u = u₂ := by
  haveI : IsAffine V.toScheme := hV
  have r₁ : Set.range u₁.left ⊆ Set.range V.ι := by
    rintro _ ⟨x, rfl⟩; rw [Scheme.Opens.range_ι]; exact h₁ x
  have r₂ : Set.range u₂.left ⊆ Set.range V.ι := by
    rintro _ ⟨x, rfl⟩; rw [Scheme.Opens.range_ι]; exact h₂ x
  set a₁ := IsOpenImmersion.lift V.ι u₁.left r₁ with ha₁
  set a₂ := IsOpenImmersion.lift V.ι u₂.left r₂ with ha₂
  have f₁ : a₁ ≫ V.ι = u₁.left := IsOpenImmersion.lift_fac _ _ _
  have f₂ : a₂ ≫ V.ι = u₂.left := IsOpenImmersion.lift_fac _ _ _
  have hk' : k₁.left ≫ a₁ = k₂.left ≫ a₂ := by
    rw [← cancel_mono V.ι, Category.assoc, Category.assoc, f₁, f₂]
    exact congrArg CommaMorphism.left hk
  have w : a₁.appTop ≫ k₁.left.appTop = a₂.appTop ≫ k₂.left.appTop := by
    rw [← Scheme.Hom.comp_appTop, ← Scheme.Hom.comp_appTop, hk']
  set b := hM.cart.lift a₁.appTop a₂.appTop w with hb
  have b₁ : b ≫ j₁.left.appTop = a₁.appTop := hM.cart.lift_fst _ _ _
  have b₂ : b ≫ j₂.left.appTop = a₂.appTop := hM.cart.lift_snd _ _ _
  haveI := hM.aff
  let a : T.left ⟶ V.toScheme := T.left.toSpecΓ ≫ Spec.map b ≫ V.toScheme.isoSpec.inv
  have e₁ : j₁.left ≫ a = a₁ := by
    simp only [a]
    rw [Scheme.toSpecΓ_naturality_assoc, ← Spec.map_comp_assoc, b₁, ← Scheme.toSpecΓ_naturality_assoc,
      ← Scheme.isoSpec_hom, Iso.hom_inv_id, Category.comp_id]
  have e₂ : j₂.left ≫ a = a₂ := by
    simp only [a]
    rw [Scheme.toSpecΓ_naturality_assoc, ← Spec.map_comp_assoc, b₂, ← Scheme.toSpecΓ_naturality_assoc,
      ← Scheme.isoSpec_hom, Iso.hom_inv_id, Category.comp_id]
  have hover : (a ≫ V.ι) ≫ U.hom = T.hom := by
    apply ext_of_isAffine
    apply hM.cart.hom_ext
    · rw [← Scheme.Hom.comp_appTop, ← Scheme.Hom.comp_appTop]; congr 1
      simp only [Category.assoc]; rw [reassoc_of% e₁, reassoc_of% f₁, Over.w u₁, Over.w j₁]
    · rw [← Scheme.Hom.comp_appTop, ← Scheme.Hom.comp_appTop]; congr 1
      simp only [Category.assoc]; rw [reassoc_of% e₂, reassoc_of% f₂, Over.w u₂, Over.w j₂]
  refine ⟨Over.homMk (a ≫ V.ι) hover, ?_, ?_⟩
  · ext1; simp only [Over.comp_left, Over.homMk_left]; rw [← Category.assoc, e₁, f₁]
  · ext1; simp only [Over.comp_left, Over.homMk_left]; rw [← Category.assoc, e₂, f₂]

end GlobalTheory.DualOpen
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GlueMorphismsIntoAffineOpenMilnorSquare =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AffineMilnorSquareOfCartesianRingSquare =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.AffineMilnorSquareOfCartesianRingSquare", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.NotIsIsoSpMapDnFst\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon GlobalTheory.DualOpen
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
noncomputable section

namespace GlobalTheory.DualOpen

theorem milnor_of_ring_square : ∀ (P C₁ C₂ C₀ : Type) [CommRing P] [CommRing C₁] [CommRing C₂] [CommRing C₀] (p₁ : P →+* C₁) (p₂ : P →+* C₂) (q₁ : C₁ →+* C₀) (q₂ : C₂ →+* C₀), q₁.comp p₁ = q₂.comp p₂ → (∀ x, p₁ x = 0 → p₂ x = 0 → x = 0) → (∀ a b, q₁ a = q₂ b → ∃ x, p₁ x = a ∧ p₂ x = b) → Function.Surjective q₂ → Milnor (spMap p₁) (spMap p₂) (spMap q₁) (spMap q₂) := by
  intro P C₁ C₂ C₀ _ _ _ _ p₁ p₂ q₁ q₂ hw hinj hsurj hq₂
  have hwc : CommRingCat.ofHom p₁ ≫ CommRingCat.ofHom q₁ = CommRingCat.ofHom p₂ ≫ CommRingCat.ofHom q₂ := by
    ext x; exact congrArg (fun f : P →+* C₀ => f x) hw
  have H : IsPullback (CommRingCat.ofHom p₁) (CommRingCat.ofHom p₂) (CommRingCat.ofHom q₁) (CommRingCat.ofHom q₂) := by
    refine IsPullback.of_map (forget CommRingCat) hwc ?_
    rw [Types.isPullback_iff]
    refine ⟨by rw [← Functor.map_comp, ← Functor.map_comp, hwc], ?_, ?_⟩
    · rintro x y ⟨h1, h2⟩
      have h1' : p₁ x = p₁ y := h1
      have h2' : p₂ x = p₂ y := h2
      exact sub_eq_zero.mp (hinj _ (by rw [map_sub, h1', sub_self]) (by rw [map_sub, h2', sub_self]))
    · intro a b hab
      exact hsurj a b hab
  refine ⟨inferInstance, inferInstance, inferInstance, IsClosedImmersion.spec_of_surjective _ hq₂, ?_, ?_⟩
  · simp only [spMap, ← Spec.map_comp, hwc]
  · refine IsPullback.of_iso H (Scheme.ΓSpecIso _).symm (Scheme.ΓSpecIso _).symm (Scheme.ΓSpecIso _).symm
      (Scheme.ΓSpecIso _).symm ?_ ?_ ?_ ?_ <;>
    simp [spMap, Scheme.ΓSpecIso_inv_naturality]

end GlobalTheory.DualOpen
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.AffineMilnorSquareOfCartesianRingSquare =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmallExtensionDualNumberFibreProductAffineMilnor =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmallExtensionDualNumberFibreProductAffineMilnor", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.NotIsIsoSpMapDnFst\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AffineMilnorSquareOfCartesianRingSquare\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon GlobalTheory.DualOpen
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.DualOpen


open IsLocalRing in
theorem smallExt_fibre_ring : ∀ (C : Type) [CommRing C] [IsLocalRing C] (e : C), e ∈ IsLocalRing.maximalIdeal C → (∀ a ∈ IsLocalRing.maximalIdeal C, a * e = 0) → e ≠ 0 → ∃ (P : Type) (_ : CommRing P) (i : C →+* P) (p σ : P →+* C) (q : P →+* DualNumber (IsLocalRing.ResidueField C)), p.comp i = RingHom.id C ∧ σ.comp i = RingHom.id C ∧ q.comp i = (dnInl _).comp (IsLocalRing.residue C) ∧ IsClosedImmersion (spMap σ) ∧ Surjective (spMap σ) ∧ Milnor (spMap p) (spMap σ) (spMap (Ideal.Quotient.mk (Ideal.span {e}))) (spMap (Ideal.Quotient.mk (Ideal.span {e}))) ∧ Milnor (spMap p) (spMap q) (spMap (IsLocalRing.residue C)) (spMap (dnFst _)) := by
  intro C _ _ e he hm hne
  have hee : e * e = 0 := hm e he
  obtain ⟨φ, hφ⟩ : ∃ φ : ResidueField C →+ C, ∀ c, φ (residue C c) = c * e := by
    refine ⟨(Submodule.liftQ (maximalIdeal C) (LinearMap.toSpanSingleton C C e) ?_).toAddMonoidHom, fun c ↦ ?_⟩
    · intro a ha
      simpa using hm a ha
    · rfl
  have hφ0 : ∀ x, φ x = 0 → x = 0 := by
    intro x hx
    obtain ⟨c, rfl⟩ := residue_surjective x
    rw [hφ] at hx
    rw [residue_eq_zero_iff]
    by_contra hc
    have hu : IsUnit c := by simpa using hc
    exact hne (hu.mul_right_eq_zero.mp hx)
  let P : Subring (C × DualNumber (ResidueField C)) :=
    RingHom.eqLocus ((residue C).comp (RingHom.fst _ _)) ((dnFst _).comp (RingHom.snd _ _))
  have hP : ∀ x : C × DualNumber (ResidueField C), x ∈ P ↔ residue C x.1 = x.2.fst := fun x ↦ Iff.rfl
  let p : P →+* C := (RingHom.fst _ _).comp P.subtype
  let q : P →+* DualNumber (ResidueField C) := (RingHom.snd _ _).comp P.subtype
  let i : C →+* P := RingHom.codRestrict ((RingHom.id C).prod ((dnInl _).comp (residue C))) P
    (fun c ↦ (hP _).2 rfl)
  let σ : P →+* C :=
    { toFun := fun x ↦ x.1.1 + φ x.1.2.snd
      map_one' := by simp
      map_zero' := by simp
      map_add' := by
        intro x y
        simp only [Subring.coe_add, Prod.fst_add, Prod.snd_add, TrivSqZeroExt.snd_add, map_add (f := _)]
        ring
      map_mul' := by
        rintro ⟨⟨a, x⟩, hx⟩ ⟨⟨b, y⟩, hy⟩
        have hx' : residue C a = x.fst := hx
        have hy' : residue C b = y.fst := hy
        obtain ⟨c, hc⟩ := residue_surjective (R := C) x.snd
        obtain ⟨d, hd⟩ := residue_surjective (R := C) y.snd
        show a * b + φ (x * y).snd = (a + φ x.snd) * (b + φ y.snd)
        rw [DualNumber.snd_mul, ← hx', ← hy', ← hc, ← hd, ← map_mul, ← map_mul, ← map_add (f := _), hφ, hφ, hφ]
        linear_combination (-(c * d)) * hee }
  have hσ : ∀ x : P, σ x = x.1.1 + φ x.1.2.snd := fun _ ↦ rfl
  have hσi : σ.comp i = RingHom.id C := by
    ext c
    show c + φ (TrivSqZeroExt.inl (residue C c) : DualNumber _).snd = c
    simp
  have hsurj : Function.Surjective σ := fun c ↦ ⟨i c, RingHom.congr_fun hσi c⟩
  have hφmem : ∀ x, φ x ∈ Ideal.span {e} := by
    intro x
    obtain ⟨c, rfl⟩ := residue_surjective x
    rw [hφ]
    exact Ideal.mem_span_singleton'.2 ⟨c, rfl⟩
  have hker : RingHom.ker σ ≤ nilradical P := by
    rintro ⟨⟨a, x⟩, hx⟩ h
    have hx' : residue C a = x.fst := hx
    have h' : a + φ x.snd = 0 := h
    obtain ⟨c, hc⟩ := residue_surjective (R := C) x.snd
    rw [← hc, hφ] at h'
    have ha : a = -c * e := by linear_combination h'
    have h0 : x.fst = 0 := by
      rw [← hx', residue_eq_zero_iff, ha]
      exact Ideal.mul_mem_left _ _ he
    refine mem_nilradical.2 ⟨2, ?_⟩
    rw [pow_two]
    refine Subtype.ext (Prod.ext ?_ ?_)
    · show a * a = 0
      rw [ha]
      linear_combination (c * c) * hee
    · show x * x = 0
      ext
      · simp [h0]
      · simp [h0]
  refine ⟨P, inferInstance, i, p, σ, q, rfl, hσi, rfl, ?_, ?_, ?_, ?_⟩
  · exact IsClosedImmersion.spec_of_surjective _ hsurj
  · refine ⟨fun x ↦ ?_⟩
    have := range_comap_of_surjective _ σ hsurj
    have hx : x ∈ PrimeSpectrum.zeroLocus (RingHom.ker σ : Set P) := fun a ha ↦
      @nilradical_le_prime _ _ x.asIdeal x.isPrime _ (hker ha)
    rw [← this] at hx
    exact hx
  · refine _root_.GlobalTheory.DualOpen.milnor_of_ring_square _ _ _ _ _ _ _ _ ?_ ?_ ?_ Ideal.Quotient.mk_surjective
    · refine RingHom.ext fun x ↦ ?_
      refine (Ideal.Quotient.eq.2 ?_).symm
      show x.1.1 + φ x.1.2.snd - x.1.1 ∈ _
      simpa using hφmem _
    · rintro ⟨⟨a, x⟩, hx⟩ h1 h2
      have hx' : residue C a = x.fst := hx
      have h1' : a = 0 := h1
      have h2' : a + φ x.snd = 0 := h2
      subst h1'
      rw [zero_add] at h2'
      refine Subtype.ext (Prod.ext rfl ?_)
      show x = 0
      ext
      · simp [← hx']
      · simpa using hφ0 _ h2'
    · intro a b hab
      obtain ⟨c, hc⟩ := Ideal.mem_span_singleton'.1 (Ideal.Quotient.eq.1 hab.symm)
      refine ⟨⟨(a, ⟨residue C a, residue C c⟩), rfl⟩, rfl, ?_⟩
      show a + φ (residue C c) = b
      rw [hφ, hc]
      ring
  · refine _root_.GlobalTheory.DualOpen.milnor_of_ring_square _ _ _ _ _ _ _ _ ?_ ?_ ?_ (fun x ↦ ⟨TrivSqZeroExt.inl x, rfl⟩)
    · exact RingHom.ext fun x ↦ x.2
    · intro x h1 h2
      exact Subtype.ext (Prod.ext h1 h2)
    · intro a b hab
      exact ⟨⟨(a, b), hab⟩, rfl, rfl⟩

end GlobalTheory.DualOpen
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmallExtensionDualNumberFibreProductAffineMilnor =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmallExtensionDualNumberFibreProductAffineMilnorStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmallExtensionDualNumberFibreProductAffineMilnorStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.NotIsIsoSpMapDnFst\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmallExtensionDualNumberFibreProductAffineMilnor\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon GlobalTheory.DualOpen
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

theorem _root_.GlobalTheory.T.smallExtension_dualNumber_fibreProduct_affineMilnorSquare : ∀ (C : Type) [CommRing C] [IsLocalRing C] (e : C), e ∈ IsLocalRing.maximalIdeal C → (∀ a ∈ IsLocalRing.maximalIdeal C, a * e = 0) → e ≠ 0 → ∃ (P : Type) (_ : CommRing P) (i : C →+* P) (p σ : P →+* C) (q : P →+* DualNumber (IsLocalRing.ResidueField C)), p.comp i = RingHom.id C ∧ σ.comp i = RingHom.id C ∧ q.comp i = (dnInl _).comp (IsLocalRing.residue C) ∧ IsClosedImmersion (spMap σ) ∧ Surjective (spMap σ) ∧ Milnor (spMap p) (spMap σ) (spMap (Ideal.Quotient.mk (Ideal.span {e}))) (spMap (Ideal.Quotient.mk (Ideal.span {e}))) ∧ Milnor (spMap p) (spMap q) (spMap (IsLocalRing.residue C)) (spMap (dnFst _)) := by
  first | exact @GlobalTheory.DualOpen.smallExt_fibre_ring
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmallExtensionDualNumberFibreProductAffineMilnorStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleFamilyAgreeingSmallExtensionTang =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleFamilyAgreeingSmallExtensionTang", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.NotIsIsoSpMapDnFst\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.IsAbelianScheme\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianSchemeUnitsLiftAlongThickening\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditiveFamilyOfTrivialModEpsilonStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditiveLineBundleFamilyCalculusRulesStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsPicardClassExtendAffineMilnorSquare\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GlueMorphismsIntoAffineOpenMilnorSquare\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PicardClassEqZeroAffineMilnorSquare\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmallExtensionDualNumberFibreProductAffineMilnorStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon GlobalTheory.DualOpen
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.DualOpen.SmallExt

variable {S : Scheme.{0}}

alias spMap_comp' := _root_.ReciprocityTheory.ChartRestriction.G.Geo.Tor.spMap_comp

theorem spMap_id' (R : Type) [CommRing R] : spMap (RingHom.id R) = 𝟙 (Sp R) := by
  simp [spMap]

theorem surjective_spMap {R R' : Type} [CommRing R] [CommRing R'] (φ : R →+* R') (hφ : Function.Surjective φ)
    (hn : ∀ a ∈ RingHom.ker φ, IsNilpotent a) : Surjective (spMap φ) := by
  refine ⟨fun (x : PrimeSpectrum R) ↦ ?_⟩
  have : x ∈ Set.range (PrimeSpectrum.comap φ) := by
    rw [range_comap_of_surjective _ _ hφ]
    intro a ha
    obtain ⟨n, hn⟩ := hn a ha
    exact x.isPrime.mem_of_pow_mem n (by rw [hn]; exact zero_mem _)
  exact this

theorem pull_wl_comp {A X Y Z : Over S} (f : X ⟶ Y) (g : Y ⟶ Z) (c : Pic (A ⊗ Z).left) :
    CechPic.pull (A ◁ (f ≫ g)).left c = CechPic.pull (A ◁ f).left (CechPic.pull (A ◁ g).left c) := by
  rw [MonoidalCategory.whiskerLeft_comp, Over.comp_left, pull_comp]

theorem pull_wl_id {A X : Over S} (c : Pic (A ⊗ X).left) : CechPic.pull (A ◁ 𝟙 X).left c = c := by
  rw [MonoidalCategory.whiskerLeft_id, Over.id_left, pull_id]

end GlobalTheory.DualOpen.SmallExt


open GlobalTheory.DualOpen.SmallExt in
theorem GlobalTheory.DualOpen.exists_same_of_smallExt : ∀ (S : Scheme.{0}) [IsAffine S] (A : Over S) [GrpObj A], IsAbelianScheme A → ∀ (U : Over S) (M : LB (A ⊗ U).left), Fam A M → Inj A M → TanLift A M → ∀ (C : Type) [CommRing C] [IsLocalRing C] (e : C), e ∈ IsLocalRing.maximalIdeal C → (∀ a ∈ IsLocalRing.maximalIdeal C, a * e = 0) → e ≠ 0 → ∀ (s : Sp C ⟶ S) (N : LB (A ⊗ Over.mk s).left), Fam A N → ∀ u' : Over.mk s ⟶ U, Same A N M (ptMap s (Ideal.Quotient.mk (Ideal.span {e}))) (ptMap s (Ideal.Quotient.mk (Ideal.span {e})) ≫ u') → ∃ u : Over.mk s ⟶ U, Same A N M (𝟙 _) u := by
  intro S _ A _ hA U M hMf hMi hMt C _ _ e he hme hne s N hNf u' hsame
  haveI : Smooth A.hom := hA.smooth
  obtain ⟨P, _, i, p, σ, q, hpi, hσi, hqi, hσc, hσs, hM1, hM2⟩ := GlobalTheory.T.smallExtension_dualNumber_fibreProduct_affineMilnorSquare C e he hme hne
  have calc3 := (GlobalTheory.T.additiveLineBundleFamily_calculus_rules S A).2.2.1
  set k := IsLocalRing.ResidueField C
  set π : C →+* C ⧸ Ideal.span {e} := Ideal.Quotient.mk (Ideal.span {e})
  set ρ : C →+* k := IsLocalRing.residue C
  have hfi : (dnFst k).comp (dnInl k) = RingHom.id k := RingHom.ext fun x ↦ rfl
  let TC : Over S := Over.mk s
  let TP : Over S := Over.mk (spMap i ≫ s)
  let Tε : Over S := Over.mk (spMap (dnInl k) ≫ spMap ρ ≫ s)
  let Tk : Over S := Over.mk (spMap (dnFst k) ≫ spMap (dnInl k) ≫ spMap ρ ≫ s)
  let jp : TC ⟶ TP := Over.homMk (spMap p) (by
    show spMap p ≫ spMap i ≫ s = s
    rw [← Category.assoc, ← spMap_comp', hpi, spMap_id', Category.id_comp])
  let jσ : TC ⟶ TP := Over.homMk (spMap σ) (by
    show spMap σ ≫ spMap i ≫ s = s
    rw [← Category.assoc, ← spMap_comp', hσi, spMap_id', Category.id_comp])
  let jq : Tε ⟶ TP := Over.homMk (spMap q) (by
    show spMap q ≫ spMap i ≫ s = spMap (dnInl k) ≫ spMap ρ ≫ s
    rw [← Category.assoc, ← spMap_comp', hqi, spMap_comp', Category.assoc])
  let r : TP ⟶ TC := Over.homMk (spMap i) rfl
  let kε : Tk ⟶ Tε := ptMap _ (dnFst k)
  let kc : Tk ⟶ TC := Over.homMk (spMap ρ) (by
    show spMap ρ ≫ s = spMap (dnFst k) ≫ spMap (dnInl k) ≫ spMap ρ ≫ s
    rw [← Category.assoc, ← spMap_comp', hfi, spMap_id', Category.id_comp])
  let k₀ := ptMap s π
  have hjr : jp ≫ r = 𝟙 _ := Over.OverMorphism.ext (by
    show spMap p ≫ spMap i = 𝟙 _
    rw [← spMap_comp', hpi, spMap_id'])
  have hσr : jσ ≫ r = 𝟙 _ := Over.OverMorphism.ext (by
    show spMap σ ≫ spMap i = 𝟙 _
    rw [← spMap_comp', hσi, spMap_id'])
  have hsq : kε ≫ jq = kc ≫ jp := Over.OverMorphism.ext hM2.w.symm
  have hkqr : kε ≫ jq ≫ r = kc := Over.OverMorphism.ext (by
    show spMap (dnFst k) ≫ spMap q ≫ spMap i = spMap ρ
    rw [← spMap_comp' i q, hqi, spMap_comp', ← Category.assoc, ← spMap_comp', hfi, spMap_id', Category.id_comp])
  have hεs : Function.Surjective (dnFst k) := fun x ↦ ⟨TrivSqZeroExt.inl x, rfl⟩
  have hεn : ∀ a ∈ RingHom.ker (dnFst k), IsNilpotent a := by
    intro a ha
    have h0 : a.fst = 0 := ha
    refine ⟨2, ?_⟩
    ext <;> simp [pow_two, h0]
  have hπn : ∀ a ∈ RingHom.ker π, IsNilpotent a := by
    intro a ha
    rw [Ideal.mk_ker] at ha
    obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.1 ha
    exact ⟨2, by rw [mul_pow, sq e, hme e he, mul_zero]⟩
  have hkεs : Surjective kε.left := surjective_spMap _ hεs hεn
  have hkεc : IsClosedImmersion kε.left := IsClosedImmersion.spec_of_surjective _ hεs
  have hk₀s : Surjective k₀.left := surjective_spMap _ Ideal.Quotient.mk_surjective hπn

  set n := cls N hNf.isLB
  set m := cls M hMf.isLB
  have hd : CechPic.pull (A ◁ k₀).left (n - CechPic.pull (A ◁ u').left m) = 0 := by
    have h := (calc3 _ _ _ N M hNf.isLB hMf.isLB _ _).1 hsame
    rw [map_sub, h, pull_wl_comp, sub_self]
  obtain ⟨d', hd'p, hd'σ⟩ := _root_.GlobalTheory.DualOpen.exists_pic_extend_of_milnor S A TP TC TC _ jp jσ k₀ k₀ hM1 hσc hσs hk₀s _ hd
  have h3 : CechPic.pull (A ◁ kε).left (CechPic.pull (A ◁ jq).left d') = 0 := by
    rw [← pull_wl_comp, hsq, pull_wl_comp, hd'p, map_zero]
  obtain ⟨D, hD, hDc⟩ := cls_surj (CechPic.pull (A ◁ jq).left d')
  have hDf : Fam A D := GlobalTheory.T.additiveFamily_of_trivial_mod_epsilon S A hA k (spMap (dnInl k) ≫ spMap ρ ≫ s) D hD (by rw [hDc]; exact h3)
  obtain ⟨D₂, hD₂, hD₂c⟩ := cls_surj (CechPic.pull (A ◁ jq).left d' + CechPic.pull (A ◁ (jq ≫ r ≫ u')).left m)
  have hD₂f : Fam A D₂ := (GlobalTheory.T.additiveLineBundleFamily_calculus_rules S A).2.1 Tε U Tε D M hDf hMf (𝟙 _) (jq ≫ r ≫ u') D₂ hD₂
    (Or.inl (by rw [hD₂c, pull_wl_id, hDc]))
  obtain ⟨v, hv⟩ := hMt k (spMap ρ ≫ s) D₂ hD₂f (kε ≫ jq ≫ r ≫ u') ((calc3 _ _ _ D₂ M hD₂ hMf.isLB _ _).2 (by
    rw [hD₂c, map_add (f := _), h3, zero_add, pull_wl_comp kε]))
  have hv' : CechPic.pull (A ◁ jq).left d' + CechPic.pull (A ◁ (jq ≫ r ≫ u')).left m =
      CechPic.pull (A ◁ v).left m := by
    have h := (calc3 _ _ _ D₂ M hD₂ hMf.isLB _ _).1 hv
    rwa [pull_wl_id, hD₂c] at h
  have hglue : kc ≫ u' = kε ≫ v := hMi Tk _ _ ((calc3 _ _ _ M M hMf.isLB hMf.isLB _ _).2 (by
    rw [← hkqr, Category.assoc, Category.assoc, pull_wl_comp kε (jq ≫ r ≫ u'), pull_wl_comp kε v, ← hv', map_add (f := _),
      h3, zero_add]))
  obtain ⟨V, hVa, hV0, -⟩ := exists_isAffineOpen_mem_and_subset (X := U.left) (U := ⊤)
    (x := u'.left (IsLocalRing.closedPoint C)) trivial
  have hu'V : ∀ x, u'.left x ∈ V := fun x ↦
    ((IsLocalRing.specializes_closedPoint (R := C) x).map u'.left.continuous).mem_open V.isOpen hV0
  have hvV : ∀ y, v.left y ∈ V := by
    intro y
    obtain ⟨z, rfl⟩ := hkεs.surj y
    have h := congrArg (fun f ↦ f.left z) hglue
    simp only [Over.comp_left, Scheme.Hom.comp_apply] at h
    rw [← h]
    exact hu'V _
  obtain ⟨w, hw₁, hw₂⟩ := _root_.GlobalTheory.DualOpen.glue_into_affineOpen S U TP TC Tε Tk jp jq kc kε hM2 V hVa u' v hglue hu'V hvV
  have hunit := _root_.GlobalTheory.DualOpen.units_lift_of_thickening S A hA Tε Tk kε (inferInstanceAs (IsAffine (Sp (DualNumber k)))) hkεc hkεs
  have hE := _root_.GlobalTheory.DualOpen.pic_eq_zero_of_milnor S A TP TC Tε Tk jp jq kc kε hM2 hunit
    (CechPic.pull (A ◁ w).left m - CechPic.pull (A ◁ (r ≫ u')).left m - d') (by
      rw [map_sub, map_sub, ← pull_wl_comp, ← pull_wl_comp, hw₁, ← Category.assoc, hjr, Category.id_comp, hd'p,
        sub_self, sub_zero]) (by
      rw [map_sub, map_sub, ← pull_wl_comp, ← pull_wl_comp, hw₂, ← hv', add_sub_cancel_right, sub_self])
  have hwe : CechPic.pull (A ◁ w).left m = CechPic.pull (A ◁ (r ≫ u')).left m + d' := by
    rw [sub_sub] at hE
    exact sub_eq_zero.1 hE
  refine ⟨jσ ≫ w, (calc3 _ _ _ N M hNf.isLB hMf.isLB _ _).2 ?_⟩
  rw [pull_wl_id, pull_wl_comp, hwe, map_add (f := _), ← pull_wl_comp, ← Category.assoc, hσr, Category.id_comp, hd'σ]
  exact (add_sub_cancel _ _).symm
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleFamilyAgreeingSmallExtensionTang =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothExistsPointLiftSquareZeroLocalRing =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothExistsPointLiftSquareZeroLocalRing", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Morphisms.Smooth\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.NotIsIsoSpMapDnFst\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\nimport Development.AbelianVarietyTheory.PublishedTheorems.AbelianLaws.PrincipalPolarisationOneSection\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon GlobalTheory.DualOpen
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.SmoothPtLift

theorem exists_lift (U S : Scheme.{0}) (p : U ⟶ S) [Smooth p] (C : Type) [CommRing C] [IsLocalRing C]
    (I : Ideal C) (hI : I ^ 2 = ⊥) (s : Sp C ⟶ S) (u₀ : Sp (C ⧸ I) ⟶ U)
    (hw : u₀ ≫ p = spMap (Ideal.Quotient.mk I) ≫ s) :
    ∃ u : Sp C ⟶ U, spMap (Ideal.Quotient.mk I) ≫ u = u₀ ∧ u ≫ p = s := by
  have hItop : I ≠ ⊤ := by
    rintro rfl
    have h1 : (1 : C) ∈ (⊤ : Ideal C) ^ 2 := by rw [Ideal.top_pow]; exact Submodule.mem_top
    rw [hI, Ideal.mem_bot] at h1
    exact one_ne_zero h1
  haveI : Nontrivial (C ⧸ I) := Ideal.Quotient.nontrivial_iff.mpr hItop
  haveI : IsLocalRing (C ⧸ I) :=
    IsLocalRing.of_surjective' (Ideal.Quotient.mk I) Ideal.Quotient.mk_surjective
  haveI : IsLocalHom (Ideal.Quotient.mk I) := IsLocalHom.of_surjective _ Ideal.Quotient.mk_surjective
  let t₀ : Sp (C ⧸ I) := IsLocalRing.closedPoint (C ⧸ I)
  obtain ⟨_, ⟨W, hW, rfl⟩, hxW, -⟩ :=
    S.isBasis_affineOpens.exists_subset_of_mem_open (Set.mem_univ (p (u₀ t₀))) isOpen_univ
  obtain ⟨_, ⟨V, hV, rfl⟩, hxV, hVW⟩ :=
    U.isBasis_affineOpens.exists_subset_of_mem_open (a := u₀ t₀) hxW (W.2.preimage p.continuous)
  haveI : IsOpenImmersion hW.fromSpec := hW.isOpenImmersion_fromSpec
  haveI : IsOpenImmersion hV.fromSpec := hV.isOpenImmersion_fromSpec
  have hmap : (spMap (Ideal.Quotient.mk I)) t₀ = IsLocalRing.closedPoint C :=
    IsLocalRing.comap_closedPoint (Ideal.Quotient.mk I)
  have hsW : Set.range s ⊆ Set.range hW.fromSpec := by
    rw [hW.range_fromSpec]
    rintro _ ⟨z, rfl⟩
    have h1 : s (IsLocalRing.closedPoint C) ∈ W := by
      rw [← hmap, ← Scheme.Hom.comp_apply, ← hw, Scheme.Hom.comp_apply]
      exact hxW
    exact ((IsLocalRing.specializes_closedPoint z).map s.continuous).mem_open W.2 h1
  have hu₀V : Set.range u₀ ⊆ Set.range hV.fromSpec := by
    rw [hV.range_fromSpec]
    rintro _ ⟨z, rfl⟩
    exact ((IsLocalRing.specializes_closedPoint z).map u₀.continuous).mem_open V.2 hxV
  obtain ⟨a, ha⟩ : ∃ a, Spec.map a = IsOpenImmersion.lift hW.fromSpec s hsW := ⟨_, Spec.map_preimage _⟩
  obtain ⟨b₀, hb₀⟩ : ∃ b, Spec.map b = IsOpenImmersion.lift hV.fromSpec u₀ hu₀V :=
    ⟨_, Spec.map_preimage _⟩
  have key : p.appLE W V hVW ≫ b₀ = a ≫ CommRingCat.ofHom (Ideal.Quotient.mk I) := by
    apply Spec.map_injective
    rw [← cancel_mono hW.fromSpec, Spec.map_comp, Spec.map_comp, Category.assoc, Category.assoc,
      IsAffineOpen.SpecMap_appLE_fromSpec p hW hV hVW, hb₀, ha, IsOpenImmersion.lift_fac_assoc,
      IsOpenImmersion.lift_fac, hw]
  have hsm := p.smooth_appLE hW hV hVW
  algebraize [(p.appLE W V hVW).hom, a.hom]
  let g : Γ(U, V) →ₐ[Γ(S, W)] C ⧸ I :=
    { b₀.hom with
      commutes' := fun r => by
        have := congrArg (fun f => f.hom r) key
        exact this }
  let b := Algebra.FormallySmooth.lift I ⟨2, hI⟩ g
  refine ⟨Spec.map (CommRingCat.ofHom b.toRingHom) ≫ hV.fromSpec, ?_, ?_⟩
  · have e : CommRingCat.ofHom b.toRingHom ≫ CommRingCat.ofHom (Ideal.Quotient.mk I) = b₀ := by
      ext x
      exact Algebra.FormallySmooth.mk_lift I ⟨2, hI⟩ g x
    rw [← Category.assoc, ← Spec.map_comp, e, hb₀, IsOpenImmersion.lift_fac]
  · have e : p.appLE W V hVW ≫ CommRingCat.ofHom b.toRingHom = a := by
      ext r
      exact b.commutes r
    rw [Category.assoc, ← IsAffineOpen.SpecMap_appLE_fromSpec p hW hV hVW, ← Category.assoc,
      ← Spec.map_comp, e, ha, IsOpenImmersion.lift_fac]

end GlobalTheory.SmoothPtLift
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothExistsPointLiftSquareZeroLocalRing =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothExistsPointLiftSquareZeroLocalRingStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothExistsPointLiftSquareZeroLocalRingStatement", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Morphisms.Smooth\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothExistsPointLiftSquareZeroLocalRing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.NotIsIsoSpMapDnFst\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\nimport Development.AbelianVarietyTheory.PublishedTheorems.AbelianLaws.PrincipalPolarisationOneSection\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon GlobalTheory.DualOpen
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothExistsPointLiftSquareZeroLocalRingStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LiftsAlongSmallExtensionOfDualNumberLifting =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LiftsAlongSmallExtensionOfDualNumberLifting", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.NotIsIsoSpMapDnFst\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditiveLineBundleFamilyCalculusRulesStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLineBundleFamilyAgreeingSmallExtensionTang\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothExistsPointLiftSquareZeroLocalRingStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon GlobalTheory.DualOpen
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.DualOpen

theorem smallLift_of_tanLift : ∀ (S : Scheme.{0}) [IsAffine S] (A : Over S) [GrpObj A], IsAbelianScheme A →
    ∀ (U : Over S) [Smooth U.hom] (M : LB (A ⊗ U).left), Fam A M → Inj A M → TanLift A M → SmallLift A M := by
  intro S _ A _ hA U _ M hM hI hT C _ _ e he hk s N hN u₀ h
  have hsq : (Ideal.span {e}) ^ 2 = ⊥ := by
    rw [Ideal.span_singleton_pow, Ideal.span_singleton_eq_bot, sq]
    exact hk e he
  obtain ⟨v, hv, hp⟩ := _root_.GlobalTheory.SmoothPtLift.exists_lift U.left S U.hom C (Ideal.span {e}) hsq s u₀.left (Over.w u₀)
  let u' : Over.mk s ⟶ U := Over.homMk v hp
  have hu : u₀ = ptMap s (Ideal.Quotient.mk (Ideal.span {e})) ≫ u' := by
    ext1
    exact hv.symm
  by_cases h0 : e = 0
  · have hb : Function.Bijective (Ideal.Quotient.mk (Ideal.span {e})) := by
      refine ⟨?_, Ideal.Quotient.mk_surjective⟩
      rw [RingHom.injective_iff_ker_eq_bot, Ideal.mk_ker, Ideal.span_singleton_eq_bot]
      exact h0
    have : IsIso (CommRingCat.ofHom (Ideal.Quotient.mk (Ideal.span {e}))) :=
      (RingEquiv.ofBijective _ hb).toCommRingCatIso.isIso_hom
    have : IsIso (ptMap s (Ideal.Quotient.mk (Ideal.span {e}))).left :=
      inferInstanceAs (IsIso (Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk (Ideal.span {e})))))
    have : IsIso ((Over.forget S).map (ptMap s (Ideal.Quotient.mk (Ideal.span {e})))) := this
    have : IsIso (ptMap s (Ideal.Quotient.mk (Ideal.span {e}))) := isIso_of_reflects_iso _ (Over.forget S)
    have h' := (GlobalTheory.T.additiveLineBundleFamily_calculus_rules S A).2.2.2.1 _ _ _ _ N M _ _ (inv (ptMap s (Ideal.Quotient.mk (Ideal.span {e}))))
      hN.isLB hM.isLB h
    rw [IsIso.inv_hom_id] at h'
    exact ⟨_, h'⟩
  · exact _root_.GlobalTheory.DualOpen.exists_same_of_smallExt S A hA U M hM hI hT C e he hk h0 s N hN u' (hu ▸ h)

end GlobalTheory.DualOpen
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LiftsAlongSmallExtensionOfDualNumberLifting =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DualNumberFieldHomFlatSurjectiveStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.DualNumberFieldHomFlatSurjectiveStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.NotIsIsoSpMapDnFst\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DualNumberFieldHomFlatSurjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon GlobalTheory.DualOpen
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

theorem _root_.GlobalTheory.T.dualNumber_fieldHom_flat_surjective : ∀ (k K : Type) [Field k] [Field K] (φ : k →+* K), ∃ ψ : DualNumber k →+* DualNumber K, ψ.comp (dnInl k) = (dnInl K).comp φ ∧ (dnFst K).comp ψ = φ.comp (dnFst k) ∧ Flat (spMap ψ) ∧ Surjective (spMap ψ) := by
  first | exact @GlobalTheory.DualOpen.dualNumber_map_flat_surjective
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DualNumberFieldHomFlatSurjectiveStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLiftMonoOfFpqcCoverLift =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLiftMonoOfFpqcCoverLift", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Morphisms.Flat\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Morphisms.FlatDescent\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.NotIsIsoSpMapDnFst\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\nimport Development.AbelianVarietyTheory.PublishedTheorems.AbelianLaws.PrincipalPolarisationOneSection\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\npublic import Mathlib.CategoryTheory.MorphismProperty.Descent\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SymplecticGenerators.StTransl\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon GlobalTheory.DualOpen
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.DualOpen

theorem exists_lift_of_fpqc_cover : ∀ (G T T' Y : Scheme.{0}) (π : G ⟶ Y) [Mono π] (y : T ⟶ Y) (t : T' ⟶ T)
    [Flat t] [Surjective t] [QuasiCompact t] (z : T' ⟶ G), z ≫ π = t ≫ y → ∃ w : T ⟶ G, w ≫ π = y := by
  intro G T T' Y π _ y t _ _ _ z hz
  let s := pullback.snd π y
  let σ : T' ⟶ pullback s t :=
    pullback.lift (pullback.lift z t hz) (𝟙 T') (by rw [Category.id_comp]; exact pullback.lift_snd _ _ _)
  have hσ : σ ≫ pullback.snd s t = 𝟙 T' := pullback.lift_snd _ _ _
  haveI : IsSplitEpi (pullback.snd s t) := ⟨⟨⟨σ, hσ⟩⟩⟩
  haveI : IsIso (pullback.snd s t) := isIso_of_mono_of_isSplitEpi _
  have hq : (@Surjective ⊓ @Flat ⊓ @QuasiCompact : MorphismProperty Scheme.{0}) t :=
    ⟨⟨‹_›, ‹_›⟩, ‹_›⟩
  have hs : IsIso s :=
    MorphismProperty.of_pullback_snd_of_descendsAlong (P := MorphismProperty.isomorphisms Scheme.{0})
      (Q := @Surjective ⊓ @Flat ⊓ @QuasiCompact) hq (MorphismProperty.isomorphisms.infer_property _)
  refine ⟨inv s ≫ pullback.fst π y, ?_⟩
  rw [Category.assoc, pullback.condition, IsIso.inv_hom_id_assoc]

end GlobalTheory.DualOpen
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLiftMonoOfFpqcCoverLift =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMonoFiniteTypeAgreementLocusInjectiveFamil =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMonoFiniteTypeAgreementLocusInjectiveFamil", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsClosedSubschemeAdditiveFamiliesAgree\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.NotIsIsoSpMapDnFst\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon GlobalTheory.DualOpen
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.DualGraph

variable {S : Scheme.{0}} {A : Over S} [GrpObj A]

theorem evc_ev_comp {T P Y : Over S} {N : LB (A ⊗ T).left} (hN : N.IsLB) (f : P ⟶ T)
    (h : (ev N (fst A P) (snd A P ≫ f)).IsLB) (a : Y ⟶ A) (p : Y ⟶ P) : evc h a p = evc hN a (p ≫ f) := by
  rw [evc_ev hN, lift_fst, lift_snd_assoc]

theorem fam_ev {T P : Over S} {N : LB (A ⊗ T).left} (hN : Fam A N) (f : P ⟶ T) :
    Fam A (ev N (fst A P) (snd A P ≫ f)) := by
  have h : (ev N (fst A P) (snd A P ≫ f)).IsLB := pull_isLB hN.isLB _
  refine ⟨h, (isAdditive_iff h).2 fun Y a a' p ↦ ?_⟩
  rw [evc_ev_comp hN.isLB f h, evc_ev_comp hN.isLB f h, evc_ev_comp hN.isLB f h]
  exact (isAdditive_iff hN.isLB).1 hN.add Y a a' (p ≫ f)

theorem same_prod_iff {T U Y : Over S} {N : LB (A ⊗ T).left} {M : LB (A ⊗ U).left} (hN : N.IsLB) (hM : M.IsLB)
    (p : Y ⟶ T ⊗ U) :
    Same A (ev N (fst A (T ⊗ U)) (snd A (T ⊗ U) ≫ fst T U)) (ev M (fst A (T ⊗ U)) (snd A (T ⊗ U) ≫ snd T U)) p p ↔
      Same A N M (p ≫ fst T U) (p ≫ snd T U) := by
  have h₁ : (ev N (fst A (T ⊗ U)) (snd A (T ⊗ U) ≫ fst T U)).IsLB := pull_isLB hN _
  have h₂ : (ev M (fst A (T ⊗ U)) (snd A (T ⊗ U) ≫ snd T U)).IsLB := pull_isLB hM _
  rw [same_iff h₁ h₂, same_iff hN hM, evc_ev_comp hN _ h₁, evc_ev_comp hM _ h₂, Category.assoc, Category.assoc]

theorem exists_mono_same : ∀ (S : Scheme.{0}) (A : Over S) [GrpObj A], IsAbelianScheme A →
    ∀ (T U : Over S) [IsLocallyNoetherian T.left] [LocallyOfFiniteType U.hom] (N : LB (A ⊗ T).left)
      (M : LB (A ⊗ U).left), Fam A N → Fam A M → Inj A M → ∃ (G : Over S) (π : G ⟶ T), Mono π.left ∧
        LocallyOfFiniteType π.left ∧ ∀ (Y : Over S) (y : Y ⟶ T),
          (∃ u : Y ⟶ U, Same A N M y u) ↔ ∃ z : Y.left ⟶ G.left, z ≫ π.left = y.left := by
  intro S A _ hA T U _ _ N M hN hM hI
  have hf : LocallyOfFiniteType (fst T U).left := by
    show LocallyOfFiniteType (pullback.fst T.hom U.hom)
    infer_instance
  haveI : IsLocallyNoetherian (T ⊗ U).left := LocallyOfFiniteType.isLocallyNoetherian (fst T U).left
  obtain ⟨G, i, hi, hG⟩ := GlobalTheory.DualLocus.exists_closed_same S A (T ⊗ U) hA _ _ (fam_ev hN (fst T U))
    (fam_ev hM (snd T U))
  have key : ∀ (Y : Over S) (z : Y ⟶ G), Same A N M (z ≫ i ≫ fst T U) (z ≫ i ≫ snd T U) := fun Y z ↦ by
    rw [← Category.assoc, ← Category.assoc, ← same_prod_iff hN.isLB hM.isLB]
    exact (hG Y (z ≫ i)).2 ⟨z, rfl⟩
  have hw : i.left ≫ (fst T U).left ≫ T.hom = G.hom := by
    rw [Over.w (fst T U), Over.w i]
  refine ⟨G, i ≫ fst T U, ⟨fun {W} a b hab ↦ ?_⟩, ?_, fun Y y ↦ ⟨?_, ?_⟩⟩
  · let Y : Over S := Over.mk (a ≫ G.hom)
    let a' : Y ⟶ G := Over.homMk a rfl
    let b' : Y ⟶ G := Over.homMk b (by
      show b ≫ G.hom = a ≫ G.hom
      simp only [Over.comp_left] at hab
      rw [← hw, reassoc_of% hab])
    have e₁ : a' ≫ i ≫ fst T U = b' ≫ i ≫ fst T U := Over.OverMorphism.ext (by
      simpa only [Over.comp_left, a', b', Over.homMk_left] using hab)
    have e₂ : a' ≫ i ≫ snd T U = b' ≫ i ≫ snd T U := by
      refine hI Y _ _ ((same_iff hM.isLB hM.isLB _ _).2 ?_)
      rw [← (same_iff hN.isLB hM.isLB _ _).1 (key Y a'), ← (same_iff hN.isLB hM.isLB _ _).1 (key Y b'), e₁]
    have e : a' ≫ i = b' ≫ i := by
      rw [← Category.assoc, ← Category.assoc] at e₁ e₂
      exact CartesianMonoidalCategory.hom_ext _ _ e₁ e₂
    have e' := congrArg (fun q : Y ⟶ T ⊗ U ↦ q.left) e
    simp only [Over.comp_left, a', b', Over.homMk_left] at e'
    exact (cancel_mono i.left).1 e'
  · rw [Over.comp_left]
    infer_instance
  · rintro ⟨u, hu⟩
    have hs := (same_prod_iff hN.isLB hM.isLB (lift y u)).2 (by rwa [lift_fst, lift_snd])
    obtain ⟨z, hz⟩ := (hG Y (lift y u)).1 hs
    refine ⟨z.left, ?_⟩
    rw [← Over.comp_left, ← Category.assoc, hz, lift_fst]
  · rintro ⟨z, hz⟩
    let z' : Y ⟶ G := Over.homMk z (by
      show z ≫ G.hom = Y.hom
      rw [← hw, ← Over.w y, ← hz, Over.comp_left]
      simp only [Category.assoc])
    have ey : z' ≫ i ≫ fst T U = y := Over.OverMorphism.ext (by
      simpa only [Over.comp_left, z', Over.homMk_left] using hz)
    refine ⟨z' ≫ i ≫ snd T U, ?_⟩
    have := key Y z'
    rwa [ey] at this

end GlobalTheory.DualGraph
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMonoFiniteTypeAgreementLocusInjectiveFamil =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SubsingletonSpectrumDualNumber =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SubsingletonSpectrumDualNumber", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.NotIsIsoSpMapDnFst\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AdditiveLineBundleFamilyCalculusRulesStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DualNumberFieldHomFlatSurjectiveStatement\npublic import Mathlib.AlgebraicGeometry.Morphisms.Flat\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLiftMonoOfFpqcCoverLift\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsMonoFiniteTypeAgreementLocusInjectiveFamil\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.DualNumber\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon GlobalTheory.DualOpen
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.DualOpen

theorem subsingleton_spectrum_dualNumber (K : Type) [Field K] : Subsingleton (PrimeSpectrum (DualNumber K)) := by
  apply _root_.GlobalTheory.MBLow.TanVal.subsingleton_dual <;> assumption

private theorem spMap_comp_of_eq {R₁ R₂ R₂' R₃ : Type} [CommRing R₁] [CommRing R₂] [CommRing R₂'] [CommRing R₃]
    {f : R₁ →+* R₂} {g : R₂ →+* R₃} {f' : R₁ →+* R₂'} {g' : R₂' →+* R₃} (h : g.comp f = g'.comp f') :
    spMap g ≫ spMap f = spMap g' ≫ spMap f' := by
  simp only [spMap, ← Spec.map_comp, ← CommRingCat.ofHom_comp, h]

theorem tanLift_of_fieldChart : ∀ (S : Scheme.{0}) (A : Over S) [GrpObj A], IsAbelianScheme A →
    ∀ (U : Over S) [LocallyOfFiniteType U.hom] (M : LB (A ⊗ U).left), Fam A M → Inj A M → FieldChart A M →
      TanLift A M := by
  intro S A _ hA U _ M hM hInj hFC k _ s N hN u₀ h₀
  obtain ⟨hpull, -, -, hcomp, hev⟩ := GlobalTheory.T.additiveLineBundleFamily_calculus_rules S A
  obtain ⟨ψ, hψ₁, hψ₂, hflat, hsurj⟩ :=
    GlobalTheory.T.dualNumber_fieldHom_flat_surjective k (AlgebraicClosure k) (algebraMap k (AlgebraicClosure k))

  let T : Over S := Over.mk (spMap (dnInl k) ≫ s)
  haveI : IsNoetherianRing (DualNumber k) := inferInstance
  haveI : IsLocallyNoetherian T.left := (inferInstance : IsLocallyNoetherian (Sp (DualNumber k)))
  obtain ⟨G, π, hmono, -, hG⟩ := _root_.GlobalTheory.DualGraph.exists_mono_same S A hA T U N M hN hM hInj
  haveI : Mono π.left := hmono

  let Y : Over S := Over.mk (spMap ψ ≫ spMap (dnInl k) ≫ s)
  let y : Y ⟶ T := Over.homMk (spMap ψ)
  have hq : spMap ψ ≫ spMap (dnInl k) =
      spMap (dnInl (AlgebraicClosure k)) ≫ spMap (algebraMap k (AlgebraicClosure k)) :=
    spMap_comp_of_eq hψ₁
  let q : Y ⟶ Over.mk (spMap (algebraMap k (AlgebraicClosure k)) ≫ s) :=
    Over.homMk (spMap (dnInl (AlgebraicClosure k))) ((reassoc_of% hq) s).symm
  have hN' : Fam A (ev N (fst A Y) (snd A Y ≫ y)) := hpull T Y N y hN
  obtain ⟨W, hW⟩ := hFC (AlgebraicClosure k) (spMap (algebraMap k (AlgebraicClosure k)) ≫ s) Y q _ hN'

  let Z : Over S := Over.mk (spMap (dnFst (AlgebraicClosure k)) ≫ Y.hom)
  let z : Z ⟶ Y := Over.homMk (spMap (dnFst (AlgebraicClosure k)))
  have hr : spMap (dnFst (AlgebraicClosure k)) ≫ spMap ψ =
      spMap (algebraMap k (AlgebraicClosure k)) ≫ spMap (dnFst k) :=
    spMap_comp_of_eq hψ₂
  let e : Z ⟶ Over.mk (spMap (dnFst k) ≫ spMap (dnInl k) ≫ s) :=
    Over.homMk (spMap (algebraMap k (AlgebraicClosure k))) ((reassoc_of% hr) (spMap (dnInl k) ≫ s)).symm
  have hez : e ≫ ptMap _ (dnFst k) = z ≫ y := by
    ext
    exact hr.symm
  have h₁ : Same A N M (z ≫ y) (e ≫ u₀) := by
    rw [← hez]
    exact hcomp T U _ Z N M (ptMap _ (dnFst k)) u₀ e hN.isLB hM.isLB h₀
  have h₂ : Same A (ev N (fst A Y) (snd A Y ≫ y)) M z (e ≫ u₀) :=
    (hev T U Y Z N M y z _ hN.isLB hM.isLB).2 h₁
  have hx : ∀ x, z.left x ∈ W := (hW Z z).1 ⟨_, h₂⟩

  haveI : Subsingleton Y.left := subsingleton_spectrum_dualNumber (AlgebraicClosure k)
  have x₀ : Z.left := IsLocalRing.closedPoint (AlgebraicClosure k)
  have hall : ∀ x : Y.left, x ∈ W := fun x => by
    rw [Subsingleton.elim x (z.left x₀)]
    exact hx x₀
  obtain ⟨u', hu'⟩ := (hW Y (𝟙 Y)).2 (fun x => hall _)
  have h₃ : Same A N M y u' := by
    have := (hev T U Y Y N M y (𝟙 Y) u' hN.isLB hM.isLB).1 hu'
    rwa [Category.id_comp] at this

  obtain ⟨z', hz'⟩ := (hG Y y).1 ⟨u', h₃⟩
  haveI : Flat (spMap ψ) := hflat
  haveI : Surjective (spMap ψ) := hsurj
  obtain ⟨w, hw⟩ := _root_.GlobalTheory.DualOpen.exists_lift_of_fpqc_cover G.left T.left Y.left T.left π.left (𝟙 _) (spMap ψ) z'
    (by rw [Category.comp_id]; exact hz')
  exact (hG T (𝟙 T)).2 ⟨w, hw⟩

end GlobalTheory.DualOpen
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SubsingletonSpectrumDualNumber =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LiftsAlongOfSmoothInj =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.LiftsAlongOfSmoothInj", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LiftsAlong\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FieldChartOfInj\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LiftsAlongPrincipalSmallExtension\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LiftsAlongSmallExtensionOfDualNumberLifting\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SubsingletonSpectrumDualNumber\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.NotIsIsoSpMapDnFst\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon GlobalTheory.DualOpen
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.DualOpen

theorem liftsAlong_of_smooth_inj : ∀ (R : Type) [CommRing R] (A : Over (Sp R)) [GrpObj A] (g : ℕ), IsAbelianScheme A → SmoothOfRelativeDimension g A.hom → ∀ (U : Over (Sp R)) (M : LB (A ⊗ U).left), SmoothOfRelativeDimension g U.hom → Fam A M → Inj A M → ∀ (B : Type) [CommRing B] [IsLocalRing B] (t : B), t ∈ IsLocalRing.maximalIdeal B → IsLocalRing.maximalIdeal B * Ideal.span {t} = ⊥ → LiftsAlong A M B (Ideal.span {t}) := by
  intro R _ A _ g hA hg U M hU hM hI B _ _ t ht hsq
  have : Smooth U.hom := hU.smooth
  have : LocallyOfFiniteType U.hom := inferInstance
  have hF : FieldChart A M := fieldChart_of_inj _ A hA g hg U M hU hM hI
  have hT : TanLift A M := tanLift_of_fieldChart _ A hA U M hM hI hF
  have hS : SmallLift A M := _root_.GlobalTheory.DualOpen.smallLift_of_tanLift _ A hA U M hM hI hT
  exact _root_.GlobalTheory.DualOpen.liftsAlong_span_singleton R A U M hM hS B t ht hsq

end GlobalTheory.DualOpen
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.LiftsAlongOfSmoothInj =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothInjectiveFamilyLiftsSmallArtinian =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothInjectiveFamilyLiftsSmallArtinian", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LiftsAlongOfPrincipal\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LiftsAlongOfSmoothInj\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LiftsAlong\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.DualCon

theorem same_lift_small : ∀ (R : Type) [CommRing R] [IsNoetherianRing R] (A : Over (Sp R)) [GrpObj A] (g : ℕ), IsAbelianScheme A → SmoothOfRelativeDimension g A.hom → ∀ (U : Over (Sp R)) (M : LB (A ⊗ U).left), SmoothOfRelativeDimension g U.hom → Fam A M → Inj A M → ∀ (T : Over (Sp R)) (N : LB (A ⊗ T).left), Fam A N → ∀ (B : Type) [CommRing B] [IsLocalRing B] [IsArtinianRing B] (I : Ideal B), I ≤ IsLocalRing.maximalIdeal B → IsLocalRing.maximalIdeal B * I = ⊥ → ∀ (y : Spec (CommRingCat.of B) ⟶ T.left) (u₀ : Over.mk (Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk I)) ≫ y ≫ T.hom) ⟶ U), Same A N M (Over.homMk (Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk I)) ≫ y) (by simp) : Over.mk (Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk I)) ≫ y ≫ T.hom) ⟶ T) u₀ → ∃ u : Over.mk (y ≫ T.hom) ⟶ U, Same A N M (Over.homMk y rfl : Over.mk (y ≫ T.hom) ⟶ T) u := by
  intro R _ _ A _ g hA hgA U M hgU hfam hinj T N hN B _ _ _ I hIm hmI y u₀ h
  have key : LiftsAlong A M B I :=
    liftsAlong_of_principal R A U M (by
      intro B' _ _ _ t ht hmt
      exact GlobalTheory.DualOpen.liftsAlong_of_smooth_inj R A g hA hgA U M hgU hfam hinj B' t ht hmt) B I hIm hmI
  exact key T N hN y u₀ h

end GlobalTheory.DualCon
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothInjectiveFamilyLiftsSmallArtinian =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothInjectiveFamilyLiftsSmallArtinianStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothInjectiveFamilyLiftsSmallArtinianStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothInjectiveFamilyLiftsSmallArtinian\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothInjectiveFamilyLiftsSmallArtinianStatement =====
