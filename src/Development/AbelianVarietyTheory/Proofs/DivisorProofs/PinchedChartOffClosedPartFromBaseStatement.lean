module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitsPatch
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.AlgebraicGeometry.Morphisms.Etale
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
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.HaveILetI
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
import Mathlib.Tactic.ReduceModChar
import Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle
import Development.AbelianVarietyTheory.PublishedTheorems.AbelianLaws.PrincipalPolarisationOneSection
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PinchedChartOffClosedPartFromBase, Development.AbelianVarietyTheory.Proofs.DivisorProofs.PinchedChartOffClosedPartFromBaseStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PinchedChartOffClosedPartFromBase =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PinchedChartOffClosedPartFromBase", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitsPatch\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Morphisms.Etale\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\nimport Development.AbelianVarietyTheory.PublishedTheorems.AbelianLaws.PrincipalPolarisationOneSection\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.Pinch

theorem isLocalization_away_of_absorb {R R' : Type} [CommRing R] [CommRing R'] [Algebra R R']
    (hinj : Function.Injective (algebraMap R R')) (c : Ideal R)
    (hc : ∀ x ∈ c, ∀ r : R', ∃ y ∈ c, algebraMap R R' y = algebraMap R R' x * r) {f : R} (hf : f ∈ c) :
    IsLocalization.Away f (Localization.Away (algebraMap R R' f)) := by
  have hmap : ∀ a : R, algebraMap R (Localization.Away (algebraMap R R' f)) a =
      algebraMap R' (Localization.Away (algebraMap R R' f)) (algebraMap R R' a) := fun a =>
    IsScalarTower.algebraMap_apply R R' _ a
  refine (isLocalization_iff _ _).2 ⟨?_, ?_, ?_⟩
  · rintro ⟨_, n, rfl⟩
    rw [hmap, map_pow, map_pow]
    exact IsUnit.pow n (IsLocalization.Away.algebraMap_isUnit (algebraMap R R' f))
  · intro z
    obtain ⟨⟨r', ⟨_, n, rfl⟩⟩, hz⟩ := IsLocalization.surj (Submonoid.powers (algebraMap R R' f)) z
    obtain ⟨y, -, hy⟩ := hc f hf r'
    refine ⟨⟨y, ⟨f ^ (n + 1), n + 1, rfl⟩⟩, ?_⟩
    simp only at hz ⊢
    rw [hmap, hmap, hy, map_pow, map_pow, pow_succ, map_mul, ← hz, map_pow]
    ring
  · intro a b h
    rw [hmap, hmap] at h
    obtain ⟨⟨_, k, rfl⟩, hk⟩ := IsLocalization.exists_of_eq (M := Submonoid.powers (algebraMap R R' f)) h
    refine ⟨⟨f ^ k, k, rfl⟩, hinj ?_⟩
    simp only [map_mul, map_pow] at hk ⊢
    exact hk

theorem pinched_off : ∀ (R : Type) [CommRing R] (R' : Type) [CommRing R'] [Algebra R R'], Function.Injective (algebraMap R R') → ∀ c : Ideal R, (∀ x ∈ c, ∀ r : R', ∃ y ∈ c, algebraMap R R' y = algebraMap R R' x * r) → ∀ (g : ℕ) (B' C Y : Scheme.{0}) (b' : B' ⟶ Sp R') (e : C ⟶ Sp (R ⧸ c)) (i : Y ⟶ B') (q : Y ⟶ C), SmoothOfRelativeDimension g b' → ∀ x : B', (b' ≫ spMap (algebraMap R R')) x ∉ Set.range (spMap (Ideal.Quotient.mk c)) → GlobalTheory.Pinch.Pinched g (spMap (algebraMap R R')) (spMap (Ideal.Quotient.mk c)) b' e i q x := by
  intro R _ R' _ _ hinj c hc g B' C Y b' e i q hsm x hx
  obtain ⟨f, hfc, hfx⟩ : ∃ f ∈ c, f ∉ ((b' ≫ spMap (algebraMap R R')) x).asIdeal := by
    by_contra hno
    push_neg at hno
    apply hx
    have hr : Set.range (spMap (Ideal.Quotient.mk c)) =
        PrimeSpectrum.zeroLocus (RingHom.ker (Ideal.Quotient.mk c)) :=
      range_comap_of_surjective _ _ Ideal.Quotient.mk_surjective
    rw [hr, Ideal.mk_ker]
    exact hno
  haveI : IsLocalization.Away f (Localization.Away (algebraMap R R' f)) :=
    isLocalization_away_of_absorb hinj c hc hfc
  let l' : Sp (Localization.Away (algebraMap R R' f)) ⟶ Sp R' := spMap (algebraMap R' _)
  let h : Sp (Localization.Away (algebraMap R R' f)) ⟶ Sp R := spMap (algebraMap R _)
  haveI : IsOpenImmersion l' := IsOpenImmersion.of_isLocalization (algebraMap R R' f)
  haveI : IsOpenImmersion h := IsOpenImmersion.of_isLocalization f
  have hcomp : l' ≫ spMap (algebraMap R R') = h := by
    simp only [l', h, spMap, ← Spec.map_comp]
    congr 1
  have hrange : Set.range h = (PrimeSpectrum.basicOpen f : Set (PrimeSpectrum R)) :=
    PrimeSpectrum.localization_away_comap_range _ f
  have hrange' : Set.range l' =
      (PrimeSpectrum.basicOpen (algebraMap R R' f) : Set (PrimeSpectrum R')) :=
    PrimeSpectrum.localization_away_comap_range _ _
  let j : pullback b' l' ⟶ B' := pullback.fst b' l'
  let u : pullback b' l' ⟶ Sp R := pullback.snd b' l' ≫ h
  have hju : j ≫ b' ≫ spMap (algebraMap R R') = u := by
    simp only [j, u, ← hcomp]
    rw [← Category.assoc, pullback.condition, Category.assoc]
  have hsmu : SmoothOfRelativeDimension g u := by
    haveI : SmoothOfRelativeDimension g (pullback.snd b' l') :=
      (smoothOfRelativeDimension_isStableUnderBaseChange g).of_isPullback
        (IsPullback.of_hasPullback b' l') hsm
    haveI : SmoothOfRelativeDimension 0 h := inferInstance
    have := smoothOfRelativeDimension_comp g 0 (pullback.snd b' l') h
    simpa using this
  have hD : ∀ t : ↥(pullback b' l'), f ∉ (u t).asIdeal := fun t => by
    have : u t ∈ Set.range h := ⟨pullback.snd b' l' t, rfl⟩
    rw [hrange] at this
    exact this
  have hEmpty : ∀ (T : Scheme.{0}) (a : T ⟶ pullback b' l') (a' : T ⟶ Sp (R ⧸ c)),
      a ≫ u = a' ≫ spMap (Ideal.Quotient.mk c) → IsEmpty T := by
    intro T a a' w
    refine ⟨fun t => hD (a t) ?_⟩
    have e1 : u (a t) = spMap (Ideal.Quotient.mk c) (a' t) := by
      rw [← Scheme.Hom.comp_apply, w, Scheme.Hom.comp_apply]
    rw [e1]
    show Ideal.Quotient.mk c f ∈ (a' t).asIdeal
    rw [Ideal.Quotient.eq_zero_iff_mem.2 hfc]
    exact Ideal.zero_mem _
  have w1 : 𝟙 (pullback b' l') ≫ u = (j ≫ b') ≫ spMap (algebraMap R R') := by
    rw [Category.id_comp, Category.assoc, hju]
  have w2 : Scheme.emptyTo (pullback b' l') ≫ u = (Scheme.emptyTo C ≫ e) ≫ spMap (Ideal.Quotient.mk c) :=
    Scheme.empty_ext _ _
  refine ⟨pullback b' l', pullback b' l', ∅, u, 𝟙 _, j, Scheme.emptyTo _, Scheme.emptyTo C, hsmu,
    ⟨⟨w1⟩, ⟨PullbackCone.IsLimit.mk w1 (fun s => s.fst) (fun s => Category.comp_id _) (fun s => ?_)
      (fun s m h1 _ => by simpa using h1)⟩⟩, inferInstance, ?_,
    ⟨⟨w2⟩, ⟨PullbackCone.IsLimit.mk w2
      (fun s => haveI := hEmpty _ _ _ s.condition; isInitialOfIsEmpty.to _)
      (fun s => by haveI := hEmpty _ _ _ s.condition; exact isInitialOfIsEmpty.hom_ext _ _)
      (fun s => by haveI := hEmpty _ _ _ s.condition; exact isInitialOfIsEmpty.hom_ext _ _)
      (fun s m _ _ => by haveI := hEmpty _ _ _ s.condition; exact isInitialOfIsEmpty.hom_ext _ _)⟩⟩, ?_⟩
  · have hr : Set.range s.snd ⊆ Set.range l' := by
      rintro _ ⟨t, rfl⟩
      rw [hrange']
      have e1 : spMap (algebraMap R R') (s.snd t) = u (s.fst t) := by
        rw [← Scheme.Hom.comp_apply, ← s.condition, Scheme.Hom.comp_apply]
      have := hD (s.fst t)
      rw [← e1] at this
      exact this
    have hl : IsOpenImmersion.lift l' s.snd hr ≫ l' = s.snd := IsOpenImmersion.lift_fac l' s.snd hr
    have hl2 : IsOpenImmersion.lift l' s.snd hr = s.fst ≫ pullback.snd b' l' := by
      rw [← cancel_mono h, ← hcomp, ← Category.assoc, hl, ← s.condition]
      show s.fst ≫ (pullback.snd b' l' ≫ h) = _
      rw [← hcomp]
      simp only [Category.assoc]
    show s.fst ≫ j ≫ b' = s.snd
    rw [← hl, hl2]
    exact congrArg (s.fst ≫ ·) pullback.condition
  · rw [IsOpenImmersion.range_pullbackFst l' b']
    show b' x ∈ Set.range l'
    rw [hrange']
    exact hfx
  · intro T a a' _
    haveI : IsEmpty T := ⟨fun t => isEmptyElim (a' t)⟩
    exact ⟨isInitialOfIsEmpty.to Y, isInitialOfIsEmpty.hom_ext _ _, isInitialOfIsEmpty.hom_ext _ _⟩

end GlobalTheory.Pinch
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PinchedChartOffClosedPartFromBase =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PinchedChartOffClosedPartFromBaseStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PinchedChartOffClosedPartFromBaseStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.UnitsPatch\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PinchedChartOffClosedPartFromBase\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SameIdIff\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ClsLinCombSingle\nimport Development.AbelianVarietyTheory.PublishedTheorems.AbelianLaws.PrincipalPolarisationOneSection\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsAdditiveOfUniversal\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.AbLaw GlobalTheory.CechPic GlobalTheory.AbDual GlobalTheory.DualCon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PinchedChartOffClosedPartFromBaseStatement =====
