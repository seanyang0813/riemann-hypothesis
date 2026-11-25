module

public import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.BasicOpenClosedEmbedding
public import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.EmbeddedResolutionRule
public import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.SmoothPullbackLocalAmbientEmbedding
public import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.ClosedEmbeddingIntoAffineSpace
public import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.AffineSpaceChartPresentation
public import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.AffineSpaceZeroSection
public import Development.ResolutionOfSingularities.EmbeddedResolution.AlgebraicPreliminaries.CoproductBaseChange
public import Development.ResolutionOfSingularities.EmbeddedResolution.AlgebraicPreliminaries.KernelFlatBaseChange
public import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.PresentedSelection
public import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.BlowupSequenceFlatDescent
public import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.IsoBlowupRemovalBaseChange
public import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.PullbackBlowupSequenceIsomorphism
public import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.StrictPullbackComposition
public import Development.ResolutionOfSingularities.EmbeddedResolution.StrongResolution.SequenceIsomorphism
import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.SmoothCoordinateCodimensionPullback
import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.StrictTransform
import Mathlib.Tactic.Linter.Style
import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.SupportFlatPullback
import Development.ResolutionOfSingularities.Foundations.Schemes.SchemeMorphismProperties
import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.BlowupSequenceFlatBaseChange
import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.StrictPullbackCriterion

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.LastCoordinateSlices, Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.SmoothLocalChart, Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.PresentedLocalChart, Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.EtaleCoverClosedEmbedding, Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.PresentedSelectionCompatibility

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.LastCoordinateSlices =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.LastCoordinateSlices", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.BasicOpenClosedEmbedding\nimport Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.SmoothCoordinateCodimensionPullback\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.StrictTransform\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry TopologicalSpace

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

def baseFieldToGlobalSections {X : Scheme.{u}} (k : Type u) [Field k]
    (p : X ⟶ Spec (CommRingCat.of k)) : k →+* ↑(X.presheaf.obj (Opposite.op ⊤)) :=
  RingHom.comp (Scheme.Hom.appTop p).hom (Scheme.ΓSpecIso (CommRingCat.of k)).inv.hom

theorem exists_translateLastCoord (k : Type u) [Field k] (M : ℕ) (a : k) :
    ∃ f : affineSpaceTimesLine k M ⟶ affineSpaceTimesLine k M,
      f ≫ affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M ⊕ Fin 1)) =
          affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M ⊕ Fin 1)) ∧
        (∀ b : Fin M, pullbackCoord f (⟨Sum.inl b⟩ : ULift.{u, 0} (Fin M ⊕ Fin 1)) =
          AffineSpace.coord (Spec (CommRingCat.of k))
            (⟨Sum.inl b⟩ : ULift.{u, 0} (Fin M ⊕ Fin 1))) ∧
        (ConcreteCategory.hom (Scheme.Hom.appTop f)) (lastCoordinate k M) =
          lastCoordinate k M +
            baseFieldToGlobalSections k (affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M ⊕ Fin 1))) a := by
  refine ⟨AffineSpace.homOfVector (affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M ⊕ Fin 1)))
      (fun i : ULift.{u, 0} (Fin M ⊕ Fin 1) =>
        Sum.elim
          (fun b : Fin M =>
            AffineSpace.coord (Spec (CommRingCat.of k))
              (⟨Sum.inl b⟩ : ULift.{u, 0} (Fin M ⊕ Fin 1)))
          (fun j : Fin 1 =>
            AffineSpace.coord (Spec (CommRingCat.of k))
                (⟨Sum.inr j⟩ : ULift.{u, 0} (Fin M ⊕ Fin 1)) +
              baseFieldToGlobalSections k (affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M ⊕ Fin 1))) a)
          i.down),
    ?_, ?_, ?_⟩
  · simp
  · intro b
    simp [pullbackCoord_def]
  · simp

def translateLastCoord (k : Type u) [Field k] (M : ℕ) (a : k) : affineSpaceTimesLine k M ⟶ affineSpaceTimesLine k M :=
  (exists_translateLastCoord k M a).choose

@[simp]
theorem translateLastCoord_comp_affineSpaceIndexedByToSpec (k : Type u) [Field k] (M : ℕ) (a : k) :
    translateLastCoord k M a ≫ affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M ⊕ Fin 1)) =
      affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M ⊕ Fin 1)) :=
  (exists_translateLastCoord k M a).choose_spec.1

theorem pullbackCoord_translateLastCoord_inl (k : Type u) [Field k] (M : ℕ) (a : k) (b : Fin M) :
    pullbackCoord (translateLastCoord k M a) (⟨Sum.inl b⟩ : ULift.{u, 0} (Fin M ⊕ Fin 1)) =
      AffineSpace.coord (Spec (CommRingCat.of k))
        (⟨Sum.inl b⟩ : ULift.{u, 0} (Fin M ⊕ Fin 1)) :=
  (exists_translateLastCoord k M a).choose_spec.2.1 b

theorem translateLastCoord_appTop_lastCoordinate (k : Type u) [Field k] (M : ℕ) (a : k) :
    (ConcreteCategory.hom (Scheme.Hom.appTop (translateLastCoord k M a))) (lastCoordinate k M) =
      lastCoordinate k M +
        baseFieldToGlobalSections k (affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M ⊕ Fin 1))) a :=
  (exists_translateLastCoord k M a).choose_spec.2.2

private theorem baseFieldToGlobalSections_apply (k : Type u) [Field k] {X : Scheme.{u}}
    (p : X ⟶ Spec (CommRingCat.of k)) (a : k) :
    baseFieldToGlobalSections k p a =
      (ConcreteCategory.hom (Scheme.Hom.appTop p))
        ((ConcreteCategory.hom (Scheme.ΓSpecIso (CommRingCat.of k)).inv) a) :=
  rfl

private theorem appTop_baseFieldToGlobalSections (k : Type u) [Field k] {X Y : Scheme.{u}}
    (f : X ⟶ Y) (p : Y ⟶ Spec (CommRingCat.of k)) (a : k) :
    (ConcreteCategory.hom (Scheme.Hom.appTop f)) (baseFieldToGlobalSections k p a) =
      baseFieldToGlobalSections k (f ≫ p) a := by
  rw [baseFieldToGlobalSections_apply, baseFieldToGlobalSections_apply, Scheme.Hom.comp_appTop,
    CommRingCat.comp_apply]

theorem translateLastCoord_comp_translateLastCoord_neg (k : Type u) [Field k] (M : ℕ) (a : k) :
    translateLastCoord k M a ≫ translateLastCoord k M (-a) = 𝟙 (affineSpaceTimesLine k M) := by
  have hstruct : ∀ b : k,
      translateLastCoord k M b ≫ affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M ⊕ Fin 1)) =
        affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M ⊕ Fin 1)) := translateLastCoord_comp_affineSpaceIndexedByToSpec k M
  have hconst : ∀ b c : k,
      (ConcreteCategory.hom (Scheme.Hom.appTop (translateLastCoord k M b)))
          (baseFieldToGlobalSections k (affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M ⊕ Fin 1))) c) =
        baseFieldToGlobalSections k (affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M ⊕ Fin 1))) c := by
    intro b c
    rw [appTop_baseFieldToGlobalSections, hstruct b]
  have H0 : (translateLastCoord k M a ≫ translateLastCoord k M (-a)) ≫
      affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M ⊕ Fin 1)) =
      𝟙 (affineSpaceTimesLine k M) ≫ affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M ⊕ Fin 1)) := by
    rw [Category.assoc, hstruct, hstruct, Category.id_comp]
  have H : ∀ i : ULift.{u, 0} (Fin M ⊕ Fin 1),
      (ConcreteCategory.hom (Scheme.Hom.appTop (translateLastCoord k M a ≫ translateLastCoord k M (-a))))
          (AffineSpace.coord (Spec (CommRingCat.of k)) i) =
        (ConcreteCategory.hom (Scheme.Hom.appTop (𝟙 (affineSpaceTimesLine k M))))
          (AffineSpace.coord (Spec (CommRingCat.of k)) i) := by
    rintro ⟨b | j⟩
    · have h1 := pullbackCoord_translateLastCoord_inl k M a b
      have h2 := pullbackCoord_translateLastCoord_inl k M (-a) b
      rw [pullbackCoord_def] at h1 h2
      rw [Scheme.Hom.comp_appTop, CommRingCat.comp_apply, h2, h1, Scheme.Hom.id_appTop,
        CommRingCat.id_apply]
    · have h1 := translateLastCoord_appTop_lastCoordinate k M a
      have h2 := translateLastCoord_appTop_lastCoordinate k M (-a)
      rw [← lastCoordinate_eq_coord k M j, Scheme.Hom.comp_appTop, CommRingCat.comp_apply, h2,
        map_add, h1, hconst, map_neg, Scheme.Hom.id_appTop, CommRingCat.id_apply,
        add_neg_cancel_right]
  apply AffineSpace.hom_ext
  · exact H0
  · exact H

theorem translateLastCoord_neg_comp_translateLastCoord (k : Type u) [Field k] (M : ℕ) (a : k) :
    translateLastCoord k M (-a) ≫ translateLastCoord k M a = 𝟙 (affineSpaceTimesLine k M) := by
  have h := translateLastCoord_comp_translateLastCoord_neg k M (-a)
  rwa [neg_neg] at h

def translateLastCoordIso (k : Type u) [Field k] (M : ℕ) (a : k) : affineSpaceTimesLine k M ≅ affineSpaceTimesLine k M where
  hom := translateLastCoord k M a
  inv := translateLastCoord k M (-a)
  hom_inv_id := translateLastCoord_comp_translateLastCoord_neg k M a
  inv_hom_id := translateLastCoord_neg_comp_translateLastCoord k M a

theorem exists_sliceAtLastCoord (k : Type u) [Field k] (M : ℕ) (a : k) :
    ∃ f : affineSpaceIndexedBy k (ULift.{u, 0} (Fin M)) ⟶ affineSpaceTimesLine k M,
      f ≫ affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M ⊕ Fin 1)) =
          affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M)) ∧
        IsClosedImmersion f ∧
        f ≫ projLeft k M 1 = 𝟙 (affineSpaceIndexedBy k (ULift.{u, 0} (Fin M))) ∧
        (ConcreteCategory.hom (Scheme.Hom.appTop f)) (lastCoordinate k M) =
          baseFieldToGlobalSections k (affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M))) a := by
  refine ⟨AffineSpace.homOfVector (affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M)))
      (fun i : ULift.{u, 0} (Fin M ⊕ Fin 1) =>
        Sum.elim
          (fun b : Fin M =>
            AffineSpace.coord (Spec (CommRingCat.of k)) (⟨b⟩ : ULift.{u, 0} (Fin M)))
          (fun _ : Fin 1 =>
            baseFieldToGlobalSections k (affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M))) a)
          i.down),
    ?_, ?_, ?_, ?_⟩
  · simp
  · refine isClosedImmersion_of_coord_surjective _ ?_ ?_
    · simp
    · rintro ⟨b⟩
      exact ⟨AffineSpace.coord (Spec (CommRingCat.of k))
        (⟨Sum.inl b⟩ : ULift.{u, 0} (Fin M ⊕ Fin 1)), by simp⟩
  · apply AffineSpace.hom_ext
    · rw [Category.assoc, projLeft_comp_affineSpaceIndexedByToSpec]
      simp
    · rintro ⟨b⟩
      rw [Scheme.Hom.comp_appTop, CommRingCat.comp_apply, projLeft_appTop_coord]
      simp
  · simp

def sliceAtLastCoord (k : Type u) [Field k] (M : ℕ) (a : k) :
    affineSpaceIndexedBy k (ULift.{u, 0} (Fin M)) ⟶ affineSpaceTimesLine k M :=
  (exists_sliceAtLastCoord k M a).choose

@[simp]
theorem sliceAtLastCoord_comp_affineSpaceIndexedByToSpec (k : Type u) [Field k] (M : ℕ) (a : k) :
    sliceAtLastCoord k M a ≫ affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M ⊕ Fin 1)) =
      affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M)) :=
  (exists_sliceAtLastCoord k M a).choose_spec.1

theorem isClosedImmersion_sliceAtLastCoord (k : Type u) [Field k] (M : ℕ) (a : k) :
    IsClosedImmersion (sliceAtLastCoord k M a) :=
  (exists_sliceAtLastCoord k M a).choose_spec.2.1

instance instIsClosedImmersionHeightSlice (k : Type u) [Field k] (M : ℕ) (a : k) :
    IsClosedImmersion (sliceAtLastCoord k M a) :=
  isClosedImmersion_sliceAtLastCoord k M a

@[simp]
theorem sliceAtLastCoord_comp_projLeft (k : Type u) [Field k] (M : ℕ) (a : k) :
    sliceAtLastCoord k M a ≫ projLeft k M 1 = 𝟙 (affineSpaceIndexedBy k (ULift.{u, 0} (Fin M))) :=
  (exists_sliceAtLastCoord k M a).choose_spec.2.2.1

theorem sliceAtLastCoord_appTop_lastCoordinate (k : Type u) [Field k] (M : ℕ) (a : k) :
    (ConcreteCategory.hom (Scheme.Hom.appTop (sliceAtLastCoord k M a))) (lastCoordinate k M) =
      baseFieldToGlobalSections k (affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M))) a :=
  (exists_sliceAtLastCoord k M a).choose_spec.2.2.2

def sliceSeparatingFunction (k : Type u) [Field k] (M : ℕ) {ι : Type u} [Fintype ι] [DecidableEq ι]
    (e : ι → k) (i : ι) : ↑((affineSpaceTimesLine k M).presheaf.obj (Opposite.op ⊤)) :=
  ∏ j ∈ Finset.univ.erase i,
    (lastCoordinate k M -
      baseFieldToGlobalSections k (affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M ⊕ Fin 1))) (e j))

def sliceSeparatingOpen (k : Type u) [Field k] (M : ℕ) {ι : Type u} [Fintype ι] [DecidableEq ι]
    (e : ι → k) (i : ι) : (affineSpaceTimesLine k M).Opens :=
  (affineSpaceTimesLine k M).basicOpen (sliceSeparatingFunction k M e i)

def coproductSliceMap (k : Type u) [Field k] (M : ℕ) {ι : Type u} (e : ι → k) (A : ι → Scheme.{u})
    (ρ : ∀ i, A i ⟶ affineSpaceIndexedBy k (ULift.{u, 0} (Fin M))) : (∐ A) ⟶ affineSpaceTimesLine k M :=
  Sigma.desc fun i => ρ i ≫ sliceAtLastCoord k M (e i)

@[simp]
theorem sigma_ι_coproductSliceMap (k : Type u) [Field k] (M : ℕ) {ι : Type u} (e : ι → k) (A : ι → Scheme.{u})
    (ρ : ∀ i, A i ⟶ affineSpaceIndexedBy k (ULift.{u, 0} (Fin M))) (i : ι) :
    Sigma.ι A i ≫ coproductSliceMap k M e A ρ = ρ i ≫ sliceAtLastCoord k M (e i) := by
  simp [coproductSliceMap]

@[simp]
theorem sigma_ι_coproductSliceMap_assoc (k : Type u) [Field k] (M : ℕ) {ι : Type u} (e : ι → k)
    (A : ι → Scheme.{u}) (ρ : ∀ i, A i ⟶ affineSpaceIndexedBy k (ULift.{u, 0} (Fin M))) (i : ι)
    {Z : Scheme.{u}} (g : affineSpaceTimesLine k M ⟶ Z) :
    Sigma.ι A i ≫ coproductSliceMap k M e A ρ ≫ g = ρ i ≫ sliceAtLastCoord k M (e i) ≫ g := by
  rw [← Category.assoc, sigma_ι_coproductSliceMap, Category.assoc]

private theorem sliceAtLastCoord_appTop_pullbackAlongProjection (k : Type u) [Field k] (M : ℕ) (a : k)
    (G : ↑((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M))).presheaf.obj (Opposite.op ⊤))) :
    (ConcreteCategory.hom (Scheme.Hom.appTop (sliceAtLastCoord k M a))) (pullbackAlongProjection k M G) = G := by
  have hp : pullbackAlongProjection k M G =
      (ConcreteCategory.hom (Scheme.Hom.appTop (projLeft k M 1))) G := rfl
  rw [hp, ← CommRingCat.comp_apply, ← Scheme.Hom.comp_appTop, sliceAtLastCoord_comp_projLeft,
    Scheme.Hom.id_appTop, CommRingCat.id_apply]

private theorem sliceAtLastCoord_appTop_baseFieldToGlobalSections (k : Type u) [Field k] (M : ℕ) (a x : k) :
    (ConcreteCategory.hom (Scheme.Hom.appTop (sliceAtLastCoord k M a)))
        (baseFieldToGlobalSections k (affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M ⊕ Fin 1))) x) =
      baseFieldToGlobalSections k (affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M))) x := by
  rw [appTop_baseFieldToGlobalSections, sliceAtLastCoord_comp_affineSpaceIndexedByToSpec]

private def lagrangeBasisSection (k : Type u) [Field k] (M : ℕ) {ι : Type u} [Fintype ι]
    [DecidableEq ι] (e : ι → k) (j : ι) : ↑((affineSpaceTimesLine k M).presheaf.obj (Opposite.op ⊤)) :=
  baseFieldToGlobalSections k (affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M ⊕ Fin 1)))
      ((∏ l ∈ Finset.univ.erase j, (e j - e l))⁻¹) *
    ∏ l ∈ Finset.univ.erase j,
      (lastCoordinate k M -
        baseFieldToGlobalSections k (affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M ⊕ Fin 1))) (e l))

private theorem sliceAtLastCoord_appTop_lagrangeSection (k : Type u) [Field k] (M : ℕ) {ι : Type u}
    [Fintype ι] [DecidableEq ι] (e : ι → k) (he : Function.Injective e) (i j : ι) :
    (ConcreteCategory.hom (Scheme.Hom.appTop (sliceAtLastCoord k M (e i))))
        (lagrangeBasisSection k M e j) = if j = i then 1 else 0 := by
  have hlag : lagrangeBasisSection k M e j =
      baseFieldToGlobalSections k (affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M ⊕ Fin 1)))
          ((∏ l ∈ Finset.univ.erase j, (e j - e l))⁻¹) *
        ∏ l ∈ Finset.univ.erase j,
          (lastCoordinate k M -
            baseFieldToGlobalSections k (affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M ⊕ Fin 1)))
              (e l)) := rfl
  rw [hlag, map_mul, map_prod]
  simp only [map_sub, sliceAtLastCoord_appTop_baseFieldToGlobalSections, sliceAtLastCoord_appTop_lastCoordinate]
  have hprod : (∏ l ∈ Finset.univ.erase j,
        (baseFieldToGlobalSections k (affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M))) (e i) -
          baseFieldToGlobalSections k (affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M))) (e l))) =
      baseFieldToGlobalSections k (affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M)))
        (∏ l ∈ Finset.univ.erase j, (e i - e l)) := by
    rw [map_prod]
    exact Finset.prod_congr rfl fun l _ => (map_sub _ _ _).symm
  rw [hprod, ← map_mul]
  by_cases hji : j = i
  · rw [if_pos hji, ← hji]
    have hne : (∏ l ∈ Finset.univ.erase j, (e j - e l)) ≠ 0 := by
      rw [Finset.prod_ne_zero_iff]
      intro l hl
      exact sub_ne_zero_of_ne fun hcon => (Finset.mem_erase.mp hl).1 (he hcon).symm
    rw [inv_mul_cancel₀ hne, map_one]
  · have hz : (∏ l ∈ Finset.univ.erase j, (e i - e l)) = 0 :=
      Finset.prod_eq_zero (Finset.mem_erase.mpr ⟨fun hc => hji hc.symm, Finset.mem_univ i⟩)
        (sub_self (e i))
    rw [if_neg hji, hz, mul_zero, map_zero]

private theorem sliceAtLastCoord_appTop_sum_mul_lagrangeSection (k : Type u) [Field k] (M : ℕ) {ι : Type u}
    [Fintype ι] [DecidableEq ι] (e : ι → k) (he : Function.Injective e)
    (G : ι → ↑((affineSpaceIndexedBy k (ULift.{u, 0} (Fin M))).presheaf.obj (Opposite.op ⊤))) (i : ι) :
    (ConcreteCategory.hom (Scheme.Hom.appTop (sliceAtLastCoord k M (e i))))
        (∑ j : ι, pullbackAlongProjection k M (G j) * lagrangeBasisSection k M e j) = G i := by

  rw [map_sum, Finset.sum_eq_single_of_mem i (Finset.mem_univ i)]
  · simp only [map_mul, sliceAtLastCoord_appTop_pullbackAlongProjection,
      sliceAtLastCoord_appTop_lagrangeSection k M e he i i]
    simp
  · intro j _ hj
    simp only [map_mul, sliceAtLastCoord_appTop_lagrangeSection k M e he i j]
    rw [if_neg hj, mul_zero]

private theorem coproduct_globalSections_ext (k : Type u) [Field k] {ι : Type u} (A : ι → Scheme.{u})
    (q : (∐ A) ⟶ Spec (CommRingCat.of k))
    (s t : ↑((∐ A).presheaf.obj (Opposite.op ⊤)))
    (h : ∀ i : ι, (ConcreteCategory.hom (Scheme.Hom.appTop (Sigma.ι A i))) s =
      (ConcreteCategory.hom (Scheme.Hom.appTop (Sigma.ι A i))) t) : s = t := by
  have hv : ∀ (v : ↑((∐ A).presheaf.obj (Opposite.op ⊤))) (c : ULift.{u, 0} (Fin 1)),
      (ConcreteCategory.hom (Scheme.Hom.appTop
        (AffineSpace.homOfVector q (fun _ : ULift.{u, 0} (Fin 1) => v))))
          (AffineSpace.coord (Spec (CommRingCat.of k)) c) = v := by
    intro v c
    simp
  have hfg : AffineSpace.homOfVector q (fun _ : ULift.{u, 0} (Fin 1) => s) =
      AffineSpace.homOfVector q (fun _ : ULift.{u, 0} (Fin 1) => t) := by
    refine Limits.Sigma.hom_ext _ _ fun i => ?_
    refine AffineSpace.hom_ext ?_ ?_
    · simp
    · intro c
      simp only [Scheme.Hom.comp_appTop, CommRingCat.comp_apply]
      rw [hv s c, hv t c]
      exact h i
  calc s = (ConcreteCategory.hom (Scheme.Hom.appTop
        (AffineSpace.homOfVector q (fun _ : ULift.{u, 0} (Fin 1) => s))))
          (AffineSpace.coord (Spec (CommRingCat.of k)) (⟨0⟩ : ULift.{u, 0} (Fin 1))) :=
        (hv s ⟨0⟩).symm
    _ = (ConcreteCategory.hom (Scheme.Hom.appTop
        (AffineSpace.homOfVector q (fun _ : ULift.{u, 0} (Fin 1) => t))))
          (AffineSpace.coord (Spec (CommRingCat.of k)) (⟨0⟩ : ULift.{u, 0} (Fin 1))) := by
        rw [hfg]
    _ = t := hv t ⟨0⟩

theorem isClosedImmersion_coproductSliceMap (k : Type u) [Field k] (M : ℕ) {ι : Type u} [Fintype ι]
    [DecidableEq ι] (e : ι → k) (he : Function.Injective e) (A : ι → Scheme.{u})
    [∀ i, IsAffine (A i)] (ρ : ∀ i, A i ⟶ affineSpaceIndexedBy k (ULift.{u, 0} (Fin M)))
    [∀ i, IsClosedImmersion (ρ i)] : IsClosedImmersion (coproductSliceMap k M e A ρ) := by
  have haffine : IsAffine (∐ A) := inferInstance
  have hsurj : ∀ F : ↑((∐ A).presheaf.obj (Opposite.op ⊤)),
      ∃ H : ↑((affineSpaceTimesLine k M).presheaf.obj (Opposite.op ⊤)),
        (ConcreteCategory.hom (Scheme.Hom.appTop (coproductSliceMap k M e A ρ))) H = F := by
    intro F
    refine ⟨∑ j : ι, pullbackAlongProjection k M (globalSectionLift k M (ρ j)
        ((ConcreteCategory.hom (Scheme.Hom.appTop (Sigma.ι A j))) F)) *
          lagrangeBasisSection k M e j, ?_⟩
    refine coproduct_globalSections_ext k A
      (Sigma.desc fun j => ρ j ≫ affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M))) _ _ fun i => ?_
    rw [← CommRingCat.comp_apply, ← Scheme.Hom.comp_appTop, sigma_ι_coproductSliceMap, Scheme.Hom.comp_appTop,
      CommRingCat.comp_apply,
      sliceAtLastCoord_appTop_sum_mul_lagrangeSection k M e he
        (fun j => globalSectionLift k M (ρ j)
          ((ConcreteCategory.hom (Scheme.Hom.appTop (Sigma.ι A j))) F)) i,
      appTop_globalSectionLift]
  exact IsClosedImmersion.of_surjective_of_isAffine (coproductSliceMap k M e A ρ) hsurj

theorem coproductSliceMap_comp_affineSpaceIndexedByToSpec (k : Type u) [Field k] (M : ℕ) {ι : Type u} (e : ι → k)
    (A : ι → Scheme.{u}) (ρ : ∀ i, A i ⟶ affineSpaceIndexedBy k (ULift.{u, 0} (Fin M)))
    (q : (∐ A) ⟶ Spec (CommRingCat.of k))
    (hq : ∀ i, Sigma.ι A i ≫ q = ρ i ≫ affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M))) :
    coproductSliceMap k M e A ρ ≫ affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M ⊕ Fin 1)) = q := by
  refine CategoryTheory.Limits.Sigma.hom_ext _ _ fun i => ?_
  rw [sigma_ι_coproductSliceMap_assoc, sliceAtLastCoord_comp_affineSpaceIndexedByToSpec, hq i]

private theorem sigma_ι_base_jointly_surjective {ι : Type u} (A : ι → Scheme.{u}) (x : ↥(∐ A)) :
    ∃ (j : ι) (b : ↥(A j)), (Sigma.ι A j).base b = x := by
  obtain ⟨⟨i, y⟩, rfl⟩ := (sigmaMk A).surjective x
  exact ⟨i, y, (sigmaMk_mk A i y).symm⟩

private theorem coproductSliceMap_base_sigma_ι (k : Type u) [Field k] (M : ℕ) {ι : Type u} (e : ι → k)
    (A : ι → Scheme.{u}) (ρ : ∀ i, A i ⟶ affineSpaceIndexedBy k (ULift.{u, 0} (Fin M))) (j : ι)
    (b : ↥(A j)) :
    (coproductSliceMap k M e A ρ).base ((Sigma.ι A j).base b) =
      (ρ j ≫ sliceAtLastCoord k M (e j)).base b := by
  show (Sigma.ι A j ≫ coproductSliceMap k M e A ρ).base b = (ρ j ≫ sliceAtLastCoord k M (e j)).base b
  rw [sigma_ι_coproductSliceMap]

private theorem sliceAtLastCoord_appTop_sliceSeparatingFunction_eq_prod_sub (k : Type u) [Field k] (M : ℕ) {ι : Type u}
    [Fintype ι] [DecidableEq ι] (e : ι → k) (i j : ι) :
    (ConcreteCategory.hom (Scheme.Hom.appTop (sliceAtLastCoord k M (e j)))) (sliceSeparatingFunction k M e i) =
      baseFieldToGlobalSections k (affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M)))
        (∏ l ∈ Finset.univ.erase i, (e j - e l)) := by
  have hdef : sliceSeparatingFunction k M e i =
      ∏ l ∈ Finset.univ.erase i,
        (lastCoordinate k M -
          baseFieldToGlobalSections k (affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M ⊕ Fin 1))) (e l)) := rfl
  rw [hdef, map_prod, map_prod]
  refine Finset.prod_congr rfl fun l _ => ?_
  rw [map_sub, map_sub, sliceAtLastCoord_appTop_lastCoordinate, appTop_baseFieldToGlobalSections,
    sliceAtLastCoord_comp_affineSpaceIndexedByToSpec]

private theorem comp_sliceAtLastCoord_appTop_sliceSeparatingFunction (k : Type u) [Field k] (M : ℕ) {ι : Type u}
    [Fintype ι] [DecidableEq ι] (e : ι → k) (A : ι → Scheme.{u})
    (ρ : ∀ i, A i ⟶ affineSpaceIndexedBy k (ULift.{u, 0} (Fin M))) (i j : ι) :
    (ConcreteCategory.hom (Scheme.Hom.appTop (ρ j ≫ sliceAtLastCoord k M (e j))))
        (sliceSeparatingFunction k M e i) =
      baseFieldToGlobalSections k (ρ j ≫ affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M)))
        (∏ l ∈ Finset.univ.erase i, (e j - e l)) := by
  rw [Scheme.Hom.comp_appTop, CommRingCat.comp_apply, sliceAtLastCoord_appTop_sliceSeparatingFunction_eq_prod_sub,
    appTop_baseFieldToGlobalSections]

private theorem mem_sliceSeparatingOpen (k : Type u) [Field k] (M : ℕ) {ι : Type u} [Fintype ι]
    [DecidableEq ι] (e : ι → k) (he : Function.Injective e) (A : ι → Scheme.{u})
    (ρ : ∀ i, A i ⟶ affineSpaceIndexedBy k (ULift.{u, 0} (Fin M))) (i : ι) (b : ↥(A i)) :
    (ρ i ≫ sliceAtLastCoord k M (e i)).base b ∈ sliceSeparatingOpen k M e i := by
  have hne0 : (∏ l ∈ Finset.univ.erase i, (e i - e l)) ≠ 0 := by
    rw [Finset.prod_ne_zero_iff]
    intro l hl
    exact sub_ne_zero.2 fun hx => (Finset.mem_erase.1 hl).1 (he hx).symm
  have hunit : IsUnit ((ConcreteCategory.hom (Scheme.Hom.appTop (ρ i ≫ sliceAtLastCoord k M (e i))))
      (sliceSeparatingFunction k M e i)) := by
    rw [comp_sliceAtLastCoord_appTop_sliceSeparatingFunction]
    exact IsUnit.map _ (isUnit_iff_ne_zero.2 hne0)
  have hbasic : (Opens.map (ρ i ≫ sliceAtLastCoord k M (e i)).base).obj (sliceSeparatingOpen k M e i) =
      (A i).basicOpen ((ConcreteCategory.hom (Scheme.Hom.appTop
        (ρ i ≫ sliceAtLastCoord k M (e i)))) (sliceSeparatingFunction k M e i)) :=
    Scheme.preimage_basicOpen _ _
  have hpre : (Opens.map (ρ i ≫ sliceAtLastCoord k M (e i)).base).obj (sliceSeparatingOpen k M e i) = ⊤ := by
    rw [hbasic]
    exact (A i).basicOpen_of_isUnit hunit
  have hmem : b ∈ (Opens.map (ρ i ≫ sliceAtLastCoord k M (e i)).base).obj (sliceSeparatingOpen k M e i) := by
    rw [hpre]; trivial
  exact hmem

private theorem not_mem_sliceSeparatingOpen_of_ne (k : Type u) [Field k] (M : ℕ) {ι : Type u} [Fintype ι]
    [DecidableEq ι] (e : ι → k) (A : ι → Scheme.{u})
    (ρ : ∀ i, A i ⟶ affineSpaceIndexedBy k (ULift.{u, 0} (Fin M))) (i j : ι) (hne : j ≠ i)
    (b : ↥(A j)) :
    (ρ j ≫ sliceAtLastCoord k M (e j)).base b ∉ sliceSeparatingOpen k M e i := by
  have hzero : (∏ l ∈ Finset.univ.erase i, (e j - e l)) = 0 :=
    Finset.prod_eq_zero (Finset.mem_erase.2 ⟨hne, Finset.mem_univ j⟩) (sub_self _)
  have hbasic : (Opens.map (ρ j ≫ sliceAtLastCoord k M (e j)).base).obj (sliceSeparatingOpen k M e i) =
      (A j).basicOpen ((ConcreteCategory.hom (Scheme.Hom.appTop
        (ρ j ≫ sliceAtLastCoord k M (e j)))) (sliceSeparatingFunction k M e i)) :=
    Scheme.preimage_basicOpen _ _
  have hpre : (Opens.map (ρ j ≫ sliceAtLastCoord k M (e j)).base).obj (sliceSeparatingOpen k M e i) = ⊥ := by
    rw [hbasic, comp_sliceAtLastCoord_appTop_sliceSeparatingFunction, hzero, map_zero, Scheme.basicOpen_zero]
  intro hmem
  have hmem' : b ∈ (Opens.map (ρ j ≫ sliceAtLastCoord k M (e j)).base).obj (sliceSeparatingOpen k M e i) :=
    hmem
  rw [hpre] at hmem'
  simp at hmem'

private theorem quasiCompact_coproductSliceMap (k : Type u) [Field k] (M : ℕ) {ι : Type u} [Fintype ι]
    (e : ι → k) (A : ι → Scheme.{u})
    (ρ : ∀ i, A i ⟶ affineSpaceIndexedBy k (ULift.{u, 0} (Fin M))) [∀ i, IsClosedImmersion (ρ i)] :
    QuasiCompact (coproductSliceMap k M e A ρ) := by
  have hqcj : ∀ j, QuasiCompact (ρ j ≫ sliceAtLastCoord k M (e j)) := fun j => inferInstance
  refine ⟨fun V hV1 hV2 => ?_⟩
  have hset : ⇑(coproductSliceMap k M e A ρ).base ⁻¹' V =
      ⋃ j, ⇑(Sigma.ι A j).base '' (⇑(ρ j ≫ sliceAtLastCoord k M (e j)).base ⁻¹' V) := by
    apply Set.Subset.antisymm
    · intro y hy
      obtain ⟨j, b, rfl⟩ := sigma_ι_base_jointly_surjective A y
      refine Set.mem_iUnion.2 ⟨j, b, ?_, rfl⟩
      show (ρ j ≫ sliceAtLastCoord k M (e j)).base b ∈ V
      rw [← coproductSliceMap_base_sigma_ι k M e A ρ j b]
      exact hy
    · intro y hy
      obtain ⟨j, hj⟩ := Set.mem_iUnion.1 hy
      obtain ⟨b, hb, rfl⟩ := hj
      show (coproductSliceMap k M e A ρ).base ((Sigma.ι A j).base b) ∈ V
      rw [coproductSliceMap_base_sigma_ι]
      exact hb
  rw [hset]
  refine isCompact_iUnion fun j => ?_
  exact (QuasiCompact.isCompact_preimage (f := ρ j ≫ sliceAtLastCoord k M (e j)) V hV1 hV2).image
    (Sigma.ι A j).continuous

private theorem comap_ker_coproductSliceMap_eq_of_le_sliceSeparatingOpen (k : Type u) [Field k] (M : ℕ) {ι : Type u}
    [Fintype ι] [DecidableEq ι] (e : ι → k) (A : ι → Scheme.{u})
    (ρ : ∀ i, A i ⟶ affineSpaceIndexedBy k (ULift.{u, 0} (Fin M))) [∀ i, IsClosedImmersion (ρ i)]
    (i : ι) (U : (affineSpaceTimesLine k M).Opens) (hU : U ≤ sliceSeparatingOpen k M e i) :
    (Scheme.Hom.ker (coproductSliceMap k M e A ρ)).comap U.ι =
      (Scheme.Hom.ker (ρ i ≫ sliceAtLastCoord k M (e i))).comap U.ι := by
  have : QuasiCompact (coproductSliceMap k M e A ρ) := quasiCompact_coproductSliceMap k M e A ρ
  have : QuasiCompact (ρ i ≫ sliceAtLastCoord k M (e i)) := inferInstance
  have hfun : ⇑(Scheme.Opens.ι (X := A i)
        ((Opens.map (ρ i ≫ sliceAtLastCoord k M (e i)).base).obj U) ≫ Sigma.ι A i).base =
      ⇑(Sigma.ι A i).base ∘
        ⇑(Scheme.Opens.ι (X := A i)
          ((Opens.map (ρ i ≫ sliceAtLastCoord k M (e i)).base).obj U)).base :=
    funext fun _ => rfl
  have hrange :
      Set.range ⇑(Scheme.Opens.ι (X := A i)
          ((Opens.map (ρ i ≫ sliceAtLastCoord k M (e i)).base).obj U) ≫ Sigma.ι A i).base =
        Set.range ⇑(Scheme.Opens.ι (X := ∐ A)
          ((Opens.map (coproductSliceMap k M e A ρ).base).obj U)).base := by
    rw [hfun, Set.range_comp, Scheme.Opens.range_ι, Scheme.Opens.range_ι]
    show ⇑(Sigma.ι A i).base '' (⇑(ρ i ≫ sliceAtLastCoord k M (e i)).base ⁻¹'
        (U : Set ↥(affineSpaceTimesLine k M))) =
      ⇑(coproductSliceMap k M e A ρ).base ⁻¹' (U : Set ↥(affineSpaceTimesLine k M))
    apply Set.Subset.antisymm
    · rintro _ ⟨b, hb, rfl⟩
      show (coproductSliceMap k M e A ρ).base ((Sigma.ι A i).base b) ∈ (U : Set ↥(affineSpaceTimesLine k M))
      rw [coproductSliceMap_base_sigma_ι]
      exact hb
    · intro y hy
      obtain ⟨j, b, rfl⟩ := sigma_ι_base_jointly_surjective A y
      have hb : (ρ j ≫ sliceAtLastCoord k M (e j)).base b ∈ (U : Set ↥(affineSpaceTimesLine k M)) := by
        have hy' : (coproductSliceMap k M e A ρ).base ((Sigma.ι A j).base b) ∈
            (U : Set ↥(affineSpaceTimesLine k M)) := hy
        rwa [coproductSliceMap_base_sigma_ι] at hy'
      rcases eq_or_ne j i with rfl | hne
      · exact ⟨b, hb, rfl⟩
      · exact absurd (hU hb) (not_mem_sliceSeparatingOpen_of_ne k M e A ρ i j hne b)
  refine (ker_comap_ι_eq_ker_of_isIso_comp (coproductSliceMap k M e A ρ) U
      ((ρ i ≫ sliceAtLastCoord k M (e i)) ∣_ U)
      (IsOpenImmersion.isoOfRangeEq _ _ hrange).hom ?_).trans
    (ker_comap_ι_eq_ker_morphismRestrict (ρ i ≫ sliceAtLastCoord k M (e i)) U).symm
  rw [← cancel_mono U.ι, Category.assoc, morphismRestrict_ι, ← Category.assoc,
    IsOpenImmersion.isoOfRangeEq_hom_fac, Category.assoc, sigma_ι_coproductSliceMap, morphismRestrict_ι]

private theorem sliceAtLastCoord_eq_affineSpaceInl_comp_translateLastCoord (k : Type u) [Field k] (M : ℕ) (a : k) :
    sliceAtLastCoord k M a = affineSpaceInl k M 1 ≫ translateLastCoord k M a := by
  apply AffineSpace.hom_ext
  · rw [Category.assoc, translateLastCoord_comp_affineSpaceIndexedByToSpec, affineSpaceInl_comp_affineSpaceIndexedByToSpec, sliceAtLastCoord_comp_affineSpaceIndexedByToSpec]
  · rintro ⟨b | j⟩
    · have h0 := sliceAtLastCoord_comp_projLeft k M a
      have h1 := congrArg
        (fun m : affineSpaceIndexedBy k (ULift.{u, 0} (Fin M)) ⟶
            affineSpaceIndexedBy k (ULift.{u, 0} (Fin M)) =>
          (ConcreteCategory.hom (Scheme.Hom.appTop m))
            (AffineSpace.coord (Spec (CommRingCat.of k)) (⟨b⟩ : ULift.{u, 0} (Fin M)))) h0
      simp only [Scheme.Hom.comp_appTop, CommRingCat.comp_apply, projLeft_appTop_coord,
        Scheme.Hom.id_appTop, CommRingCat.id_apply] at h1
      rw [h1, Scheme.Hom.comp_appTop, CommRingCat.comp_apply]
      have h2 := pullbackCoord_translateLastCoord_inl k M a b
      rw [pullbackCoord_def] at h2
      rw [h2]
      have h3 := pullbackCoord_affineSpaceInl_inl k M 1 b
      rw [pullbackCoord_def] at h3
      rw [h3]
    · rw [← lastCoordinate_eq_coord k M j, sliceAtLastCoord_appTop_lastCoordinate, Scheme.Hom.comp_appTop,
        CommRingCat.comp_apply, translateLastCoord_appTop_lastCoordinate, map_add, appTop_baseFieldToGlobalSections,
        affineSpaceInl_comp_affineSpaceIndexedByToSpec]
      have h4 := pullbackCoord_affineSpaceInl_inr k M 1 (0 : Fin 1)
      rw [pullbackCoord_def] at h4
      rw [lastCoordinate_eq, h4, zero_add]

private theorem hasSmoothCoordCodim_comp_sliceAtLastCoord (hsm : AffineSpaceIsSmooth.{u}) (k : Type u)
    [Field k] (M c : ℕ) (a : k) {B : Scheme.{u}}
    (σ : B ⟶ affineSpaceIndexedBy k (ULift.{u, 0} (Fin M))) [IsClosedImmersion σ]
    (hσ : HasSmoothCoordCodim (affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M))) σ c) :
    HasSmoothCoordCodim (affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M ⊕ Fin 1)))
      (σ ≫ sliceAtLastCoord k M a) (c + 1) := by
  have h1 : HasSmoothCoordCodim (affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M ⊕ Fin 1)))
      (σ ≫ affineSpaceInl k M 1) (c + 1) := HasSmoothCoordCodim.comp_affineSpaceInl hsm k σ 1 hσ
  have h2 := h1.comp_iso_hom (translateLastCoordIso k M a)
      (affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M ⊕ Fin 1)))
      (translateLastCoord_comp_affineSpaceIndexedByToSpec k M a)
  rw [sliceAtLastCoord_eq_affineSpaceInl_comp_translateLastCoord, ← Category.assoc]
  exact h2

theorem hasSmoothCoordCodim_coproductSliceMap (hsm : AffineSpaceIsSmooth.{u}) (k : Type u) [Field k]
    (M c : ℕ) {ι : Type u} [Fintype ι] [DecidableEq ι] (e : ι → k) (he : Function.Injective e)
    (A : ι → Scheme.{u}) [∀ i, IsAffine (A i)]
    (ρ : ∀ i, A i ⟶ affineSpaceIndexedBy k (ULift.{u, 0} (Fin M))) [∀ i, IsClosedImmersion (ρ i)]
    (h : ∀ i, HasSmoothCoordCodim (affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M))) (ρ i) c) :
    HasSmoothCoordCodim (affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M ⊕ Fin 1)))
      (coproductSliceMap k M e A ρ) (c + 1) := by
  rw [hasSmoothCoordCodim_iff]
  intro x
  obtain ⟨i, a, rfl⟩ := sigma_ι_base_jointly_surjective A x
  have hpiece := hasSmoothCoordCodim_comp_sliceAtLastCoord hsm k M c (e i) (ρ i) (h i)
  rw [hasSmoothCoordCodim_iff] at hpiece
  obtain ⟨W, hW, q, hqS, hqstruct, hkerW⟩ := hpiece a
  have : Smooth q := hqS
  refine ⟨W ⊓ sliceSeparatingOpen k M e i, ?_,
    (affineSpaceTimesLine k M).homOfLE (inf_le_left) ≫ q, inferInstance, ?_, ?_⟩
  · show (coproductSliceMap k M e A ρ).base ((Sigma.ι A i).base a) ∈ W ⊓ sliceSeparatingOpen k M e i
    rw [coproductSliceMap_base_sigma_ι]
    exact ⟨hW, mem_sliceSeparatingOpen k M e he A ρ i a⟩
  · rw [Category.assoc, hqstruct, ← Category.assoc, Scheme.homOfLE_ι]
  · have hcrux := comap_ker_coproductSliceMap_eq_of_le_sliceSeparatingOpen k M e A ρ i (W ⊓ sliceSeparatingOpen k M e i)
      inf_le_right
    rw [Scheme.IdealSheafData.comap_comp, ← hkerW, restrictIdeal_eq_comap_ι, restrictIdeal_eq_comap_ι,
      ← Scheme.IdealSheafData.comap_comp, Scheme.homOfLE_ι]
    exact hcrux

abbrev coproductSliceMapReindexed (k : Type u) [Field k] (M : ℕ) {ι : Type u} (e : ι → k) (A : ι → Scheme.{u})
    (ρ : ∀ i, A i ⟶ affineSpaceIndexedBy k (ULift.{u, 0} (Fin M))) :
    (∐ A) ⟶ affineSpaceIndexedBy k (ULift.{u, 0} (Fin (M + 1))) :=
  coproductSliceMap k M e A ρ ≫
    (affineSpaceIsoOfEquiv (uliftFinSumEquiv.{u} M 1) (Spec (CommRingCat.of k))).hom

theorem coproductSliceMapReindexed_comp_affineSpaceIndexedByToSpec (k : Type u) [Field k] (M : ℕ) {ι : Type u} (e : ι → k)
    (A : ι → Scheme.{u}) (ρ : ∀ i, A i ⟶ affineSpaceIndexedBy k (ULift.{u, 0} (Fin M)))
    (q : (∐ A) ⟶ Spec (CommRingCat.of k))
    (hq : ∀ i, Sigma.ι A i ≫ q = ρ i ≫ affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M))) :
    coproductSliceMapReindexed k M e A ρ ≫ affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin (M + 1))) = q := by
  rw [Category.assoc, affineSpaceIsoOfEquiv_hom_comp_toSpec]
  exact coproductSliceMap_comp_affineSpaceIndexedByToSpec k M e A ρ q hq

theorem hasSmoothCoordCodim_coproductSliceMapReindexed (hsm : AffineSpaceIsSmooth.{u}) (k : Type u) [Field k]
    (M c : ℕ) {ι : Type u} [Fintype ι] [DecidableEq ι] (e : ι → k) (he : Function.Injective e)
    (A : ι → Scheme.{u}) [∀ i, IsAffine (A i)]
    (ρ : ∀ i, A i ⟶ affineSpaceIndexedBy k (ULift.{u, 0} (Fin M))) [∀ i, IsClosedImmersion (ρ i)]
    (h : ∀ i, HasSmoothCoordCodim (affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin M))) (ρ i) c) :
    HasSmoothCoordCodim (affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin (M + 1))))
      (coproductSliceMapReindexed k M e A ρ) (c + 1) := by
  have : IsClosedImmersion (coproductSliceMap k M e A ρ) := isClosedImmersion_coproductSliceMap k M e he A ρ
  exact (hasSmoothCoordCodim_coproductSliceMap hsm k M c e he A ρ h).comp_iso_hom
    (affineSpaceIsoOfEquiv (uliftFinSumEquiv.{u} M 1) (Spec (CommRingCat.of k)))
    (affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin (M + 1))))
    (affineSpaceIsoOfEquiv_hom_comp_toSpec k (uliftFinSumEquiv.{u} M 1))

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.LastCoordinateSlices =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.SmoothLocalChart =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.SmoothLocalChart", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.EmbeddedResolutionRule\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

structure SmoothLocalChart {k : Type u} [Field k] [CharZero k] {Y V : Scheme.{u}}
    {pY : Y ⟶ Spec (CommRingCat.of k)} {pV : V ⟶ Spec (CommRingCat.of k)}
    (G : EmbeddingDatum k Y pY) (H : EmbeddingDatum k V pV) (u : V ⟶ Y) (y : ↥V) where
  func : Γ(H.ambient, ⊤)
  mem_domain : y ∈ (H.emb ⁻¹ᵁ H.ambient.basicOpen func)
  ambient : Scheme.{u}
  ambientStruct : ambient ⟶ Spec (CommRingCat.of k)
  isAffine_ambient : AlgebraicGeometry.IsAffine ambient
  smooth_ambientStruct : AlgebraicGeometry.Smooth ambientStruct
  locallyOfFiniteType_ambientStruct : AlgebraicGeometry.LocallyOfFiniteType ambientStruct
  quasiCompact_ambientStruct : AlgebraicGeometry.QuasiCompact ambientStruct
  toAmbient : ambient ⟶ G.ambient
  smooth_toAmbient : AlgebraicGeometry.Smooth toAmbient
  comp_eq : toAmbient ≫ G.ambientStruct = ambientStruct
  imm : (H.emb ⁻¹ᵁ H.ambient.basicOpen func).toScheme ⟶ ambient
  isClosedImmersion_imm : AlgebraicGeometry.IsClosedImmersion imm
  isPullback :
    CategoryTheory.IsPullback imm ((H.emb ⁻¹ᵁ H.ambient.basicOpen func).ι ≫ u) toAmbient
      G.emb

namespace SmoothLocalChart

variable {k : Type u} [Field k] [CharZero k] {Y V : Scheme.{u}}
  {pY : Y ⟶ Spec (CommRingCat.of k)} {pV : V ⟶ Spec (CommRingCat.of k)}
  {G : EmbeddingDatum k Y pY} {H : EmbeddingDatum k V pV} {u : V ⟶ Y} {y : ↥V}

abbrev chartDomain (C : SmoothLocalChart G H u y) : V.Opens :=
  H.emb ⁻¹ᵁ H.ambient.basicOpen C.func

instance instSmoothToAmbient (C : SmoothLocalChart G H u y) :
    AlgebraicGeometry.Smooth C.toAmbient := C.smooth_toAmbient

theorem isAffineOpen_chartDomain [AlgebraicGeometry.IsAffine V]
    (C : SmoothLocalChart G H u y) :
    AlgebraicGeometry.IsAffineOpen C.chartDomain := by
  show AlgebraicGeometry.IsAffineOpen (H.emb ⁻¹ᵁ H.ambient.basicOpen C.func)
  have h : (H.emb ⁻¹ᵁ H.ambient.basicOpen C.func) = V.basicOpen (H.emb.app ⊤ C.func) :=
    Scheme.preimage_basicOpen H.emb C.func
  rw [h]
  exact (isAffineOpen_top V).basicOpen _

theorem isPullback_morphismRestrict_basicOpen (C : SmoothLocalChart G H u y) :
    CategoryTheory.IsPullback
      (AlgebraicGeometry.morphismRestrict H.emb (H.ambient.basicOpen C.func))
      C.chartDomain.ι (H.ambient.basicOpen C.func).ι H.emb :=
  AlgebraicGeometry.isPullback_morphismRestrict H.emb (H.ambient.basicOpen C.func)

end SmoothLocalChart

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.SmoothLocalChart =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.PresentedLocalChart =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.PresentedLocalChart", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.SmoothPullbackLocalAmbientEmbedding\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.ClosedEmbeddingIntoAffineSpace\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.SmoothLocalChart\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.BasicOpenClosedEmbedding\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.AffineSpaceChartPresentation\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.AffineSpaceZeroSection\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

structure PresentedLocalChart {k : Type u} [Field k] [CharZero k] {Y V : Scheme.{u}}
    {pY : Y ⟶ Spec (CommRingCat.of k)} {pV : V ⟶ Spec (CommRingCat.of k)}
    {G : EmbeddingDatum k Y pY} (P : ClosedEmbeddingIntoAffineSpace G) (H : EmbeddingDatum k V pV)
    (u : V ⟶ Y) (r : ℕ) (y : ↥V) extends SmoothLocalChart G H u y where
  threshold : ℕ
  presentation : ∀ N : ℕ, threshold ≤ N →
    ∃ σ : ambient ⟶ affineSpaceIndexedBy k (ULift.{u, 0} (Fin (P.dim + N + 1))),
      AlgebraicGeometry.IsClosedImmersion σ ∧
      σ ≫ affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin (P.dim + N + 1))) = ambientStruct ∧
      HasSmoothCoordCodim (affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin (P.dim + N + 1)))) σ
        (P.codimBound + (N - r) + 1)
  le_threshold : r ≤ threshold

theorem nonempty_presentedLocalChart (hS : SmoothPullbackHasLocalAmbientEmbedding.{u})
    (hsm : AffineSpaceIsSmooth.{u}) (k : Type u) [Field k] [CharZero k] (Y V : Scheme.{u})
    [AlgebraicGeometry.IsAffine Y] [AlgebraicGeometry.IsAffine V]
    (pY : Y ⟶ Spec (CommRingCat.of k)) (pV : V ⟶ Spec (CommRingCat.of k))
    (G : EmbeddingDatum k Y pY) (P : ClosedEmbeddingIntoAffineSpace G) (H : EmbeddingDatum k V pV)
    (u : V ⟶ Y) (r : ℕ) [AlgebraicGeometry.SmoothOfRelativeDimension r u]
    (hu : u ≫ pY = pV) (y : ↥V) :
    Nonempty (PresentedLocalChart P H u r y) := by
  classical
  obtain ⟨V₀, hyV₀, hV₀aff, A', pA', hA'aff, hA'sm, hA'ft, hA'qc, gg, hgsm, hgp, jj, hjci,
      hjpb, N₀, hrN₀, hpres⟩ :=
    hS k Y V G.ambient pY pV G.ambientStruct G.emb G.comp_eq P.dim P.codimBound P.toAffine
      P.toAffine_comp P.locallyConstCodim r u hu y
  have := hA'aff
  have := hA'sm
  have := hA'ft
  have := hA'qc
  have := hgsm
  have := hjci
  obtain ⟨σ₀, hσ₀ci, hσ₀comp, hσ₀codim⟩ := hpres N₀ le_rfl
  have := hσ₀ci
  have hembCI : AlgebraicGeometry.IsClosedImmersion H.emb := H.isClosedImmersion_emb
  have hind := H.emb.isClosedEmbedding.toIsEmbedding.toIsInducing
  obtain ⟨Ω, hΩ, hΩeq⟩ := hind.isOpen_iff.mp V₀.isOpen
  have hyΩ : H.emb.base y ∈ Ω := by
    have h0 : y ∈ ⇑H.emb.base ⁻¹' Ω := by rw [hΩeq]; exact hyV₀
    exact h0
  obtain ⟨Ubase, hUmem, hyU, hUΩ⟩ :=
    TopologicalSpace.Opens.isBasis_iff_nbhd.mp (isBasis_basicOpen H.ambient)
      (U := (⟨Ω, hΩ⟩ : H.ambient.Opens)) (x := H.emb.base y) hyΩ
  obtain ⟨func, rfl⟩ := hUmem
  have hymem : y ∈ (H.emb ⁻¹ᵁ H.ambient.basicOpen func) := hyU
  have hsub : (H.emb ⁻¹ᵁ H.ambient.basicOpen func) ≤ V₀ := by
    intro x hx
    have hx1 : H.emb.base x ∈ H.ambient.basicOpen func := hx
    have hx2 : x ∈ ⇑H.emb.base ⁻¹' Ω := hUΩ hx1
    rw [hΩeq] at hx2
    exact hx2
  obtain ⟨L, hL⟩ : ∃ L : Γ(affineSpaceIndexedBy k (ULift.{u, 0} (Fin (P.dim + N₀))), ⊤),
      (ConcreteCategory.hom (Scheme.Hom.appTop (jj ≫ σ₀))) L
        = (ConcreteCategory.hom (Scheme.Hom.appTop (V₀.ι ≫ H.emb))) func :=
    ⟨_, appTop_globalSectionLift k (P.dim + N₀) (jj ≫ σ₀) _⟩
  obtain ⟨Fsec, hopen⟩ : ∃ Fsec : Γ(A', ⊤),
      jj ⁻¹ᵁ (A'.basicOpen Fsec) = V₀.ι ⁻¹ᵁ (H.emb ⁻¹ᵁ H.ambient.basicOpen func) := by
    refine ⟨(ConcreteCategory.hom (Scheme.Hom.appTop σ₀)) L, ?_⟩
    have eA : A'.basicOpen ((ConcreteCategory.hom (Scheme.Hom.appTop σ₀)) L)
        = σ₀ ⁻¹ᵁ ((affineSpaceIndexedBy k (ULift.{u, 0} (Fin (P.dim + N₀)))).basicOpen L) :=
      (Scheme.preimage_basicOpen σ₀ L).symm
    have e1 : jj ⁻¹ᵁ
          (σ₀ ⁻¹ᵁ ((affineSpaceIndexedBy k (ULift.{u, 0} (Fin (P.dim + N₀)))).basicOpen L))
        = (jj ≫ σ₀) ⁻¹ᵁ
          ((affineSpaceIndexedBy k (ULift.{u, 0} (Fin (P.dim + N₀)))).basicOpen L) := rfl
    have eB : (jj ≫ σ₀) ⁻¹ᵁ
          ((affineSpaceIndexedBy k (ULift.{u, 0} (Fin (P.dim + N₀)))).basicOpen L)
        = (↑V₀ : Scheme.{u}).basicOpen
            ((ConcreteCategory.hom (Scheme.Hom.appTop (jj ≫ σ₀))) L) :=
      Scheme.preimage_basicOpen _ _
    have e2 : V₀.ι ⁻¹ᵁ (H.emb ⁻¹ᵁ H.ambient.basicOpen func)
        = (V₀.ι ≫ H.emb) ⁻¹ᵁ (H.ambient.basicOpen func) := rfl
    have eC : (V₀.ι ≫ H.emb) ⁻¹ᵁ (H.ambient.basicOpen func)
        = (↑V₀ : Scheme.{u}).basicOpen
            ((ConcreteCategory.hom (Scheme.Hom.appTop (V₀.ι ≫ H.emb))) func) :=
      Scheme.preimage_basicOpen _ _
    rw [eA, e1, eB, hL, e2, eC]
  obtain ⟨θ, hθ⟩ : ∃ θ : (H.emb ⁻¹ᵁ H.ambient.basicOpen func).toScheme ≅
      (jj ⁻¹ᵁ A'.basicOpen Fsec).toScheme,
      θ.hom ≫ ((jj ⁻¹ᵁ A'.basicOpen Fsec).ι ≫ V₀.ι)
        = (H.emb ⁻¹ᵁ H.ambient.basicOpen func).ι := by
    have hrange : Set.range ⇑(H.emb ⁻¹ᵁ H.ambient.basicOpen func).ι.base
        = Set.range ⇑((jj ⁻¹ᵁ A'.basicOpen Fsec).ι ≫ V₀.ι).base := by
      have hcomp : Set.range ⇑((jj ⁻¹ᵁ A'.basicOpen Fsec).ι ≫ V₀.ι).base
          = ⇑V₀.ι.base '' Set.range ⇑(jj ⁻¹ᵁ A'.basicOpen Fsec).ι.base := by
        simp [Set.range_comp]
      rw [hcomp, hopen, Scheme.Opens.range_ι, Scheme.Opens.range_ι]
      have h4 : (↑(V₀.ι ⁻¹ᵁ (H.emb ⁻¹ᵁ H.ambient.basicOpen func)) : Set ↥V₀.toScheme)
          = ⇑V₀.ι.base ⁻¹' (↑(H.emb ⁻¹ᵁ H.ambient.basicOpen func) : Set ↥V) := rfl
      rw [h4, Set.image_preimage_eq_inter_range, Scheme.Opens.range_ι]
      exact (Set.inter_eq_self_of_subset_left (fun x hx => hsub hx)).symm
    exact ⟨AlgebraicGeometry.IsOpenImmersion.isoOfRangeEq _ _ hrange,
      AlgebraicGeometry.IsOpenImmersion.isoOfRangeEq_hom_fac _ _ hrange⟩
  have hθ' : (θ.hom ≫ (jj ⁻¹ᵁ A'.basicOpen Fsec).ι) ≫ V₀.ι
      = (H.emb ⁻¹ᵁ H.ambient.basicOpen func).ι := by
    rw [Category.assoc]; exact hθ
  have hpb1 : CategoryTheory.IsPullback
      (AlgebraicGeometry.morphismRestrict jj (A'.basicOpen Fsec))
      ((jj ⁻¹ᵁ A'.basicOpen Fsec).ι ≫ (V₀.ι ≫ u)) ((A'.basicOpen Fsec).ι ≫ gg) G.emb :=
    (AlgebraicGeometry.isPullback_morphismRestrict jj (A'.basicOpen Fsec)).paste_vert hjpb
  have hcomm : CategoryTheory.CommSq θ.hom
      ((H.emb ⁻¹ᵁ H.ambient.basicOpen func).ι ≫ u)
      ((jj ⁻¹ᵁ A'.basicOpen Fsec).ι ≫ (V₀.ι ≫ u)) (𝟙 Y) := by
    constructor
    rw [Category.comp_id, ← Category.assoc, ← Category.assoc, hθ']
  have hiso : CategoryTheory.IsPullback θ.hom
      ((H.emb ⁻¹ᵁ H.ambient.basicOpen func).ι ≫ u)
      ((jj ⁻¹ᵁ A'.basicOpen Fsec).ι ≫ (V₀.ι ≫ u)) (𝟙 Y) :=
    CategoryTheory.IsPullback.of_horiz_isIso hcomm
  have hpb : CategoryTheory.IsPullback
      (θ.hom ≫ AlgebraicGeometry.morphismRestrict jj (A'.basicOpen Fsec))
      ((H.emb ⁻¹ᵁ H.ambient.basicOpen func).ι ≫ u)
      ((A'.basicOpen Fsec).ι ≫ gg) G.emb := by
    have h5 := hiso.paste_horiz hpb1
    rwa [Category.id_comp] at h5
  have hambaff : AlgebraicGeometry.IsAffine (A'.basicOpen Fsec).toScheme :=
    (AlgebraicGeometry.isAffineOpen_top A').basicOpen Fsec
  refine ⟨{
    func := func
    mem_domain := hymem
    ambient := (A'.basicOpen Fsec).toScheme
    ambientStruct := (A'.basicOpen Fsec).ι ≫ pA'
    isAffine_ambient := hambaff
    smooth_ambientStruct := by infer_instance
    locallyOfFiniteType_ambientStruct := by infer_instance
    quasiCompact_ambientStruct := by infer_instance
    toAmbient := (A'.basicOpen Fsec).ι ≫ gg
    smooth_toAmbient := by infer_instance
    comp_eq := by rw [Category.assoc, hgp]
    imm := θ.hom ≫ AlgebraicGeometry.morphismRestrict jj (A'.basicOpen Fsec)
    isClosedImmersion_imm := by
      have : AlgebraicGeometry.IsClosedImmersion
          (AlgebraicGeometry.morphismRestrict jj (A'.basicOpen Fsec)) := by infer_instance
      infer_instance
    isPullback := hpb
    threshold := N₀
    le_threshold := hrN₀
    presentation := by
      intro N hN
      obtain ⟨σ, hσci, hσcomp, hσcodim⟩ := hpres N hN
      have := hσci
      refine ⟨basicOpenEmbedding k (P.dim + N) σ Fsec ≫
          (affineSpaceIsoOfEquiv (uliftFinSumEquiv.{u} (P.dim + N) 1)
            (Spec (CommRingCat.of k))).hom, by infer_instance, ?_, ?_⟩
      · rw [Category.assoc, affineSpaceIsoOfEquiv_hom_comp_toSpec]
        exact basicOpenEmbedding_comp_affineSpaceIndexedByToSpec k (P.dim + N) σ Fsec pA' hσcomp
      · exact hasSmoothCoordCodim_basicOpenEmbedding hsm k (P.dim + N)
          (P.codimBound + (N - r)) σ Fsec hσcodim }⟩

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.PresentedLocalChart =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.EtaleCoverClosedEmbedding =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.EtaleCoverClosedEmbedding", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.SmoothPullbackLocalAmbientEmbedding\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.ClosedEmbeddingIntoAffineSpace\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.AlgebraicPreliminaries.CoproductBaseChange\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.AlgebraicPreliminaries.KernelFlatBaseChange\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.LastCoordinateSlices\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.PresentedLocalChart\nimport Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.SupportFlatPullback\nimport Development.ResolutionOfSingularities.Foundations.Schemes.SchemeMorphismProperties\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Morphisms.WeaklyEtale\nimport Mathlib.AlgebraicGeometry.QuasiAffine\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.AffineSpaceChartPresentation\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.AffineSpaceZeroSection\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.BasicOpenClosedEmbedding\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

private theorem isZariskiLocalAtSource_locallyOfFiniteType :
    IsZariskiLocalAtSource (@LocallyOfFiniteType.{u}) := by
  have hrh : HasRingHomProperty (@LocallyOfFiniteType.{u}) RingHom.FiniteType := inferInstance
  exact @HasRingHomProperty.instIsZariskiLocalAtSource (@LocallyOfFiniteType.{u}) _ hrh

private theorem isZariskiLocalAtSource_flat :
    IsZariskiLocalAtSource (@Flat.{u}) := by
  have hrh : HasRingHomProperty (@Flat.{u}) RingHom.Flat := inferInstance
  exact @HasRingHomProperty.instIsZariskiLocalAtSource (@Flat.{u}) _ hrh

private theorem locallyOfFiniteType_sigmaDesc {ι : Type u} {X : ι → Scheme.{u}} {Z : Scheme.{u}}
    (f : ∀ i, X i ⟶ Z) (hf : ∀ i, LocallyOfFiniteType (f i)) :
    LocallyOfFiniteType (Limits.Sigma.desc f) := by
  have := isZariskiLocalAtSource_locallyOfFiniteType
  exact IsZariskiLocalAtSource.sigmaDesc hf

private theorem flat_sigmaDesc {ι : Type u} {X : ι → Scheme.{u}} {Z : Scheme.{u}}
    (f : ∀ i, X i ⟶ Z) (hf : ∀ i, Flat (f i)) : Flat (Limits.Sigma.desc f) := by
  have := isZariskiLocalAtSource_flat
  exact IsZariskiLocalAtSource.sigmaDesc hf

private theorem exists_etaleCover_closedEmbeddingIntoAffineSpace_of_localCharts (hsm : AffineSpaceIsSmooth.{u})
    (k : Type u) [Field k] [CharZero k]
    (hsnc : ∀ (A : Scheme.{u}) (q : A ⟶ Spec (CommRingCat.of k)),
      AlgebraicGeometry.Smooth q → InStrictNormalCrossingPosition q [])
    (Y V : Scheme.{u}) (pY : Y ⟶ Spec (CommRingCat.of k))
    (pV : V ⟶ Spec (CommRingCat.of k))
    [AlgebraicGeometry.IsAffine Y] [AlgebraicGeometry.IsAffine V]
    [AlgebraicGeometry.IsReduced Y] [AlgebraicGeometry.IsReduced V]
    [AlgebraicGeometry.LocallyOfFiniteType pY] [AlgebraicGeometry.QuasiCompact pY]
    [AlgebraicGeometry.LocallyOfFiniteType pV] [AlgebraicGeometry.QuasiCompact pV]
    (G : EmbeddingDatum k Y pY) (P : ClosedEmbeddingIntoAffineSpace G)
    (H : EmbeddingDatum k V pV) (Q : ClosedEmbeddingIntoAffineSpace H)
    (u : V ⟶ Y) (r : ℕ) (hu : u ≫ pY = pV)
    (ι : Type u) [Fintype ι] [DecidableEq ι] (pt : ι → ↥V)
    (ch : ∀ i, PresentedLocalChart P H u r (pt i))
    (N : ℕ) (hN : ∀ i, (ch i).threshold ≤ N)
    (hcov : (⨆ i, (ch i).chartDomain) = ⊤) :
    ∃ (V'' : Scheme.{u}) (pV'' : V'' ⟶ Spec (CommRingCat.of k)) (c : V'' ⟶ V),
      AlgebraicGeometry.IsAffine V'' ∧ AlgebraicGeometry.IsReduced V'' ∧
      AlgebraicGeometry.LocallyOfFiniteType pV'' ∧ AlgebraicGeometry.QuasiCompact pV'' ∧
      AlgebraicGeometry.Etale c ∧ AlgebraicGeometry.Surjective c ∧ c ≫ pV = pV'' ∧
      (∃ (G' : EmbeddingDatum k V'' pV'') (f : G'.ambient ⟶ G.ambient),
        Nonempty (ClosedEmbeddingIntoAffineSpace G') ∧
        AlgebraicGeometry.Smooth f ∧ f ≫ G.ambientStruct = G'.ambientStruct ∧
        CategoryTheory.IsPullback G'.emb (c ≫ u) f G.emb) ∧
      (∃ (H' : EmbeddingDatum k V'' pV'') (g : H'.ambient ⟶ H.ambient),
        Nonempty (ClosedEmbeddingIntoAffineSpace H') ∧
        AlgebraicGeometry.Smooth g ∧ g ≫ H.ambientStruct = H'.ambientStruct ∧
        CategoryTheory.IsPullback H'.emb c g H.emb) := by
  classical
  have hsubs : Subsingleton ↥(Spec (CommRingCat.of k)) := inferInstance
  have hDaff : ∀ i, IsAffine (((ch i).chartDomain).toScheme) := fun i =>
    (ch i).isAffineOpen_chartDomain
  have hambaff : ∀ i, IsAffine ((ch i).ambient) := fun i => (ch i).isAffine_ambient
  have hBaff : ∀ i, IsAffine ((H.ambient.basicOpen ((ch i).func)).toScheme) := fun i =>
    (isAffineOpen_top H.ambient).basicOpen ((ch i).func)
  have hVaff : IsAffine (sigmaOpens V fun i => (ch i).chartDomain) :=
    isAffine_sigmaOpens V _ fun i => (ch i).isAffineOpen_chartDomain
  have hVcs : CompactSpace ↥(sigmaOpens V fun i => (ch i).chartDomain) := inferInstance
  obtain ⟨e, he⟩ : ∃ e : ι → k, Function.Injective e := by
    refine ⟨fun i => ((Fintype.equivFin ι i : ℕ) : k), fun a b hab => ?_⟩
    have h2 : (Fintype.equivFin ι a : ℕ) = (Fintype.equivFin ι b : ℕ) := Nat.cast_injective hab
    exact (Fintype.equivFin ι).injective (Fin.eq_of_val_eq h2)
  refine ⟨sigmaOpens V (fun i => (ch i).chartDomain),
    (sigmaOpensDesc V fun i => (ch i).chartDomain) ≫ pV,
    sigmaOpensDesc V (fun i => (ch i).chartDomain),
    hVaff, inferInstance, inferInstance,
    quasiCompact_of_compactSpace_of_subsingleton .., inferInstance,
    surjective_sigmaOpensDesc V _ hcov, rfl, ?_, ?_⟩
  · have hpullbackG : IsPullback (Limits.Sigma.map fun i => (ch i).imm)
        ((sigmaOpensDesc V fun i => (ch i).chartDomain) ≫ u)
        (Limits.Sigma.desc fun i => (ch i).toAmbient) G.emb := by
      have h0 : IsPullback (Limits.Sigma.map fun i => (ch i).imm)
          (Limits.Sigma.desc fun i => ((ch i).chartDomain).ι ≫ u)
          (Limits.Sigma.desc fun i => (ch i).toAmbient) G.emb :=
        isPullback_sigmaMap_sigmaDesc G.emb (fun i => (ch i).ambient)
          (fun i => ((ch i).chartDomain).toScheme) (fun i => (ch i).imm)
          (fun i => ((ch i).chartDomain).ι ≫ u) (fun i => (ch i).toAmbient)
          (fun i => (ch i).isPullback)
      have hdescu : (Limits.Sigma.desc fun i => ((ch i).chartDomain).ι ≫ u)
          = (sigmaOpensDesc V fun i => (ch i).chartDomain) ≫ u := by
        refine Limits.Sigma.hom_ext _ _ fun i => ?_
        simp
      rwa [hdescu] at h0
    have hsmfG : Smooth (Limits.Sigma.desc fun i => (ch i).toAmbient) :=
      smooth_sigmaDesc _ fun i => (ch i).smooth_toAmbient
    have hstructeq : (Limits.Sigma.desc fun i => (ch i).toAmbient) ≫ G.ambientStruct
        = Limits.Sigma.desc fun i => (ch i).ambientStruct := by
      refine Limits.Sigma.hom_ext _ _ fun i => ?_
      simp [(ch i).comp_eq]
    have hsmstructG :
        Smooth ((Limits.Sigma.desc fun i => (ch i).toAmbient) ≫ G.ambientStruct) := by
      rw [hstructeq]
      exact smooth_sigmaDesc _ fun i => (ch i).smooth_ambientStruct
    have hlftstructG :
        LocallyOfFiniteType ((Limits.Sigma.desc fun i => (ch i).toAmbient) ≫ G.ambientStruct) := by
      rw [hstructeq]
      exact locallyOfFiniteType_sigmaDesc _ fun i => (ch i).locallyOfFiniteType_ambientStruct
    have hGaff : IsAffine (∐ fun i => (ch i).ambient) := inferInstance
    have hGcs : CompactSpace ↥(∐ fun i => (ch i).ambient) := inferInstance
    have hqcstructG :
        QuasiCompact ((Limits.Sigma.desc fun i => (ch i).toAmbient) ≫ G.ambientStruct) :=
      quasiCompact_of_compactSpace_of_subsingleton ..
    have hCIembG : IsClosedImmersion (Limits.Sigma.map fun i => (ch i).imm) :=
      MorphismProperty.of_isPullback (P := (@IsClosedImmersion : MorphismProperty Scheme.{u}))
        hpullbackG.flip G.isClosedImmersion_emb
    have hqcGemb : QuasiCompact G.emb := inferInstance
    have hqcembG : QuasiCompact (Limits.Sigma.map fun i => (ch i).imm) :=
      quasiCompact_of_isPullback hpullbackG.flip
    have hflatfG : Flat (Limits.Sigma.desc fun i => (ch i).toAmbient) :=
      flat_sigmaDesc _ fun i => inferInstance
    have hkerG : (Limits.Sigma.map fun i => (ch i).imm).ker
        = G.emb.ker.comap (Limits.Sigma.desc fun i => (ch i).toAmbient) :=
      ker_eq_comap_ker_of_isPullback_of_flat hpullbackG.flip
    have hnzG : NonzeroOnComponents (Limits.Sigma.map fun i => (ch i).imm).ker := by
      rw [hkerG]
      exact NonzeroOnComponents.comap_of_flat G.nonzeroOnComponents_ker _
    have hcompG : (Limits.Sigma.map fun i => (ch i).imm) ≫
        ((Limits.Sigma.desc fun i => (ch i).toAmbient) ≫ G.ambientStruct)
        = (sigmaOpensDesc V fun i => (ch i).chartDomain) ≫ pV := by
      rw [← Category.assoc, hpullbackG.w, Category.assoc, G.comp_eq, Category.assoc, hu]
    refine ⟨embeddingDatumOfClosedImmersion (∐ fun i => (ch i).ambient)
        ((Limits.Sigma.desc fun i => (ch i).toAmbient) ≫ G.ambientStruct)
        (Limits.Sigma.map fun i => (ch i).imm) hnzG hcompG (hsnc _ _ hsmstructG),
      Limits.Sigma.desc fun i => (ch i).toAmbient, ⟨?_⟩, hsmfG, rfl, hpullbackG⟩
    have hpres : ∀ i, ∃ σ : (ch i).ambient ⟶ affineSpaceIndexedBy k (ULift.{u, 0} (Fin (P.dim + N + 1))),
        IsClosedImmersion σ ∧
        σ ≫ affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin (P.dim + N + 1))) = (ch i).ambientStruct ∧
        HasSmoothCoordCodim (affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin (P.dim + N + 1)))) σ
          (P.codimBound + (N - r) + 1) := fun i => (ch i).presentation N (hN i)
    choose σ hσCI hσcomp hσcod using hpres
    have hσCI' : ∀ i, IsClosedImmersion (σ i) := hσCI
    have hCIunionG :
        IsClosedImmersion (coproductSliceMap k (P.dim + N + 1) e (fun i => (ch i).ambient) σ) :=
      isClosedImmersion_coproductSliceMap k (P.dim + N + 1) e he (fun i => (ch i).ambient) σ
    have hCIfinG :
        IsClosedImmersion (coproductSliceMapReindexed k (P.dim + N + 1) e (fun i => (ch i).ambient) σ) :=
      inferInstance
    refine ⟨P.codimBound + (N - r) + 1 + 1, P.dim + N + 1 + 1,
      coproductSliceMapReindexed k (P.dim + N + 1) e (fun i => (ch i).ambient) σ, by omega, by omega,
      hCIfinG, ?_, ?_⟩
    · refine coproductSliceMapReindexed_comp_affineSpaceIndexedByToSpec k (P.dim + N + 1) e (fun i => (ch i).ambient) σ _ ?_
      intro i
      show Limits.Sigma.ι (fun j => (ch j).ambient) i ≫
          ((Limits.Sigma.desc fun j => (ch j).toAmbient) ≫ G.ambientStruct) =
          σ i ≫ affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin (P.dim + N + 1)))
      simp [(ch i).comp_eq, hσcomp i]
    · exact hasSmoothCoordCodim_coproductSliceMapReindexed hsm k (P.dim + N + 1)
        (P.codimBound + (N - r) + 1) e he (fun i => (ch i).ambient) σ hσcod
  · have hpullbackH : IsPullback
        (Limits.Sigma.map fun i => (H.emb ∣_ H.ambient.basicOpen ((ch i).func)))
        (sigmaOpensDesc V fun i => (ch i).chartDomain)
        (sigmaOpensDesc H.ambient fun i => H.ambient.basicOpen ((ch i).func)) H.emb :=
      isPullback_sigmaMap_sigmaDesc H.emb
        (fun i => (H.ambient.basicOpen ((ch i).func)).toScheme)
        (fun i => ((ch i).chartDomain).toScheme)
        (fun i => H.emb ∣_ H.ambient.basicOpen ((ch i).func))
        (fun i => ((ch i).chartDomain).ι)
        (fun i => (H.ambient.basicOpen ((ch i).func)).ι)
        (fun i => (ch i).isPullback_morphismRestrict_basicOpen)
    have hsmg : Smooth (sigmaOpensDesc H.ambient fun i => H.ambient.basicOpen ((ch i).func)) :=
      smooth_sigmaDesc _ fun i => inferInstance
    have hlftg : LocallyOfFiniteType
        (sigmaOpensDesc H.ambient fun i => H.ambient.basicOpen ((ch i).func)) :=
      inferInstance
    have hflatg : Flat (sigmaOpensDesc H.ambient fun i => H.ambient.basicOpen ((ch i).func)) :=
      flat_sigmaDesc _ fun i => inferInstance
    have hHaff : IsAffine (sigmaOpens H.ambient fun i => H.ambient.basicOpen ((ch i).func)) :=
      isAffine_sigmaOpens H.ambient _ fun i =>
        (isAffineOpen_top H.ambient).basicOpen ((ch i).func)
    have hHcs :
        CompactSpace ↥(sigmaOpens H.ambient fun i => H.ambient.basicOpen ((ch i).func)) :=
      inferInstance
    have hsmq : Smooth
        ((sigmaOpensDesc H.ambient fun i => H.ambient.basicOpen ((ch i).func)) ≫
          H.ambientStruct) := inferInstance
    have hlftq : LocallyOfFiniteType
        ((sigmaOpensDesc H.ambient fun i => H.ambient.basicOpen ((ch i).func)) ≫
          H.ambientStruct) := inferInstance
    have hqcq : QuasiCompact
        ((sigmaOpensDesc H.ambient fun i => H.ambient.basicOpen ((ch i).func)) ≫
          H.ambientStruct) := quasiCompact_of_compactSpace_of_subsingleton ..
    have hCIembH : IsClosedImmersion
        (Limits.Sigma.map fun i => (H.emb ∣_ H.ambient.basicOpen ((ch i).func))) :=
      MorphismProperty.of_isPullback (P := (@IsClosedImmersion : MorphismProperty Scheme.{u}))
        hpullbackH.flip H.isClosedImmersion_emb
    have hqcHemb : QuasiCompact H.emb := inferInstance
    have hqcembH : QuasiCompact
        (Limits.Sigma.map fun i => (H.emb ∣_ H.ambient.basicOpen ((ch i).func))) :=
      quasiCompact_of_isPullback hpullbackH.flip
    have hkerH :
        (Limits.Sigma.map fun i => (H.emb ∣_ H.ambient.basicOpen ((ch i).func))).ker
          = H.emb.ker.comap
            (sigmaOpensDesc H.ambient fun i => H.ambient.basicOpen ((ch i).func)) :=
      ker_eq_comap_ker_of_isPullback_of_flat hpullbackH.flip
    have hnzH : NonzeroOnComponents
        (Limits.Sigma.map fun i => (H.emb ∣_ H.ambient.basicOpen ((ch i).func))).ker := by
      rw [hkerH]
      exact NonzeroOnComponents.comap_of_flat H.nonzeroOnComponents_ker _
    have hcompH :
        (Limits.Sigma.map fun i => (H.emb ∣_ H.ambient.basicOpen ((ch i).func))) ≫
          ((sigmaOpensDesc H.ambient fun i => H.ambient.basicOpen ((ch i).func)) ≫
            H.ambientStruct)
          = (sigmaOpensDesc V fun i => (ch i).chartDomain) ≫ pV := by
      rw [← Category.assoc, hpullbackH.w, Category.assoc, H.comp_eq]
    refine ⟨embeddingDatumOfClosedImmersion
        (sigmaOpens H.ambient fun i => H.ambient.basicOpen ((ch i).func))
        ((sigmaOpensDesc H.ambient fun i => H.ambient.basicOpen ((ch i).func)) ≫ H.ambientStruct)
        (Limits.Sigma.map fun i => (H.emb ∣_ H.ambient.basicOpen ((ch i).func)))
        hnzH hcompH (hsnc _ _ hsmq),
      sigmaOpensDesc H.ambient (fun i => H.ambient.basicOpen ((ch i).func)), ⟨?_⟩, hsmg, rfl,
      hpullbackH⟩
    have hCIrho : ∀ i, IsClosedImmersion
        (basicOpenEmbedding k Q.dim Q.toAffine ((ch i).func) ≫
          (affineSpaceIsoOfEquiv (uliftFinSumEquiv.{u} Q.dim 1) (Spec (CommRingCat.of k))).hom) :=
      fun i => inferInstance
    have hrhocomp : ∀ i,
        (basicOpenEmbedding k Q.dim Q.toAffine ((ch i).func) ≫
          (affineSpaceIsoOfEquiv (uliftFinSumEquiv.{u} Q.dim 1) (Spec (CommRingCat.of k))).hom) ≫
            affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin (Q.dim + 1)))
          = (H.ambient.basicOpen ((ch i).func)).ι ≫ H.ambientStruct := by
      intro i
      rw [Category.assoc, affineSpaceIsoOfEquiv_hom_comp_toSpec]
      exact basicOpenEmbedding_comp_affineSpaceIndexedByToSpec k Q.dim Q.toAffine ((ch i).func) H.ambientStruct
        Q.toAffine_comp
    have hrhocod : ∀ i,
        HasSmoothCoordCodim (affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin (Q.dim + 1))))
          (basicOpenEmbedding k Q.dim Q.toAffine ((ch i).func) ≫
            (affineSpaceIsoOfEquiv (uliftFinSumEquiv.{u} Q.dim 1) (Spec (CommRingCat.of k))).hom)
          (Q.codimBound + 1) :=
      fun i => hasSmoothCoordCodim_basicOpenEmbedding hsm k Q.dim Q.codimBound Q.toAffine
        ((ch i).func) Q.locallyConstCodim
    have hCIunionH : IsClosedImmersion
        (coproductSliceMap k (Q.dim + 1) e (fun i => (H.ambient.basicOpen ((ch i).func)).toScheme)
          (fun i => basicOpenEmbedding k Q.dim Q.toAffine ((ch i).func) ≫
            (affineSpaceIsoOfEquiv (uliftFinSumEquiv.{u} Q.dim 1) (Spec (CommRingCat.of k))).hom)) :=
      isClosedImmersion_coproductSliceMap k (Q.dim + 1) e he
        (fun i => (H.ambient.basicOpen ((ch i).func)).toScheme)
        (fun i => basicOpenEmbedding k Q.dim Q.toAffine ((ch i).func) ≫
          (affineSpaceIsoOfEquiv (uliftFinSumEquiv.{u} Q.dim 1) (Spec (CommRingCat.of k))).hom)
    have hCIfinH : IsClosedImmersion
        (coproductSliceMapReindexed k (Q.dim + 1) e (fun i => (H.ambient.basicOpen ((ch i).func)).toScheme)
          (fun i => basicOpenEmbedding k Q.dim Q.toAffine ((ch i).func) ≫
            (affineSpaceIsoOfEquiv (uliftFinSumEquiv.{u} Q.dim 1) (Spec (CommRingCat.of k))).hom)) :=
      inferInstance
    refine ⟨Q.codimBound + 1 + 1, Q.dim + 1 + 1,
      coproductSliceMapReindexed k (Q.dim + 1) e (fun i => (H.ambient.basicOpen ((ch i).func)).toScheme)
        (fun i => basicOpenEmbedding k Q.dim Q.toAffine ((ch i).func) ≫
          (affineSpaceIsoOfEquiv (uliftFinSumEquiv.{u} Q.dim 1) (Spec (CommRingCat.of k))).hom),
      by omega, by omega, hCIfinH, ?_, ?_⟩
    · refine coproductSliceMapReindexed_comp_affineSpaceIndexedByToSpec k (Q.dim + 1) e
        (fun i => (H.ambient.basicOpen ((ch i).func)).toScheme)
        (fun i => basicOpenEmbedding k Q.dim Q.toAffine ((ch i).func) ≫
          (affineSpaceIsoOfEquiv (uliftFinSumEquiv.{u} Q.dim 1) (Spec (CommRingCat.of k))).hom) _ ?_
      intro i
      show Limits.Sigma.ι (fun j => (H.ambient.basicOpen ((ch j).func)).toScheme) i ≫
          ((sigmaOpensDesc H.ambient fun j => H.ambient.basicOpen ((ch j).func)) ≫
            H.ambientStruct) =
          (basicOpenEmbedding k Q.dim Q.toAffine ((ch i).func) ≫
            (affineSpaceIsoOfEquiv (uliftFinSumEquiv.{u} Q.dim 1) (Spec (CommRingCat.of k))).hom) ≫
            affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin (Q.dim + 1)))
      rw [hrhocomp i]
      simp
    · exact hasSmoothCoordCodim_coproductSliceMapReindexed hsm k (Q.dim + 1) (Q.codimBound + 1) e he
        (fun i => (H.ambient.basicOpen ((ch i).func)).toScheme)
        (fun i => basicOpenEmbedding k Q.dim Q.toAffine ((ch i).func) ≫
          (affineSpaceIsoOfEquiv (uliftFinSumEquiv.{u} Q.dim 1) (Spec (CommRingCat.of k))).hom)
        hrhocod

theorem exists_etaleCover_closedEmbeddingIntoAffineSpace_of_smooth
    (hS : SmoothPullbackHasLocalAmbientEmbedding.{u}) (hsm : AffineSpaceIsSmooth.{u})
    (k : Type u) [Field k] [CharZero k]
    (hsnc : ∀ (A : Scheme.{u}) (q : A ⟶ Spec (CommRingCat.of k)),
      AlgebraicGeometry.Smooth q → InStrictNormalCrossingPosition q [])
    (Y V : Scheme.{u}) (pY : Y ⟶ Spec (CommRingCat.of k))
    (pV : V ⟶ Spec (CommRingCat.of k))
    [AlgebraicGeometry.IsAffine Y] [AlgebraicGeometry.IsAffine V]
    [AlgebraicGeometry.IsReduced Y] [AlgebraicGeometry.IsReduced V]
    [AlgebraicGeometry.LocallyOfFiniteType pY] [AlgebraicGeometry.QuasiCompact pY]
    [AlgebraicGeometry.LocallyOfFiniteType pV] [AlgebraicGeometry.QuasiCompact pV]
    (G : EmbeddingDatum k Y pY) (P : ClosedEmbeddingIntoAffineSpace G)
    (H : EmbeddingDatum k V pV) (Q : ClosedEmbeddingIntoAffineSpace H)
    (u : V ⟶ Y) (r : ℕ) [AlgebraicGeometry.SmoothOfRelativeDimension r u]
    (hu : u ≫ pY = pV) :
    ∃ (V'' : Scheme.{u}) (pV'' : V'' ⟶ Spec (CommRingCat.of k)) (c : V'' ⟶ V),
      AlgebraicGeometry.IsAffine V'' ∧ AlgebraicGeometry.IsReduced V'' ∧
      AlgebraicGeometry.LocallyOfFiniteType pV'' ∧ AlgebraicGeometry.QuasiCompact pV'' ∧
      AlgebraicGeometry.Etale c ∧ AlgebraicGeometry.Surjective c ∧ c ≫ pV = pV'' ∧
      (∃ (G' : EmbeddingDatum k V'' pV'') (f : G'.ambient ⟶ G.ambient),
        Nonempty (ClosedEmbeddingIntoAffineSpace G') ∧
        AlgebraicGeometry.Smooth f ∧ f ≫ G.ambientStruct = G'.ambientStruct ∧
        CategoryTheory.IsPullback G'.emb (c ≫ u) f G.emb) ∧
      (∃ (H' : EmbeddingDatum k V'' pV'') (g : H'.ambient ⟶ H.ambient),
        Nonempty (ClosedEmbeddingIntoAffineSpace H') ∧
        AlgebraicGeometry.Smooth g ∧ g ≫ H.ambientStruct = H'.ambientStruct ∧
        CategoryTheory.IsPullback H'.emb c g H.emb) := by
  classical
  have hVcs : CompactSpace ↥V := inferInstance
  have hch : ∀ y : ↥V, Nonempty (PresentedLocalChart P H u r y) := fun y =>
    nonempty_presentedLocalChart hS hsm k Y V pY pV G P H u r hu y
  obtain ⟨t, ht⟩ := isCompact_univ.elim_finite_subcover
    (fun y : ↥V => ((((hch y).some.chartDomain) : V.Opens) : Set ↥V))
    (fun y => ((hch y).some.chartDomain).isOpen)
    (by intro x _; exact Set.mem_iUnion.mpr ⟨x, (hch x).some.mem_domain⟩)
  have hfin : Fintype { y : ↥V // y ∈ t } := FinsetCoe.fintype t
  obtain ⟨N, hN⟩ : ∃ N : ℕ, ∀ i : { y : ↥V // y ∈ t }, ((hch i.1).some).threshold ≤ N :=
    ⟨Finset.univ.sup fun i : { y : ↥V // y ∈ t } => ((hch i.1).some).threshold,
      fun i => Finset.le_sup
        (f := fun i : { y : ↥V // y ∈ t } => ((hch i.1).some).threshold) (Finset.mem_univ i)⟩
  refine exists_etaleCover_closedEmbeddingIntoAffineSpace_of_localCharts hsm k hsnc Y V pY pV G P H Q u r hu
    { y : ↥V // y ∈ t } (fun i => i.1) (fun i => (hch i.1).some) N hN ?_
  refine TopologicalSpace.Opens.ext ?_
  rw [TopologicalSpace.Opens.coe_iSup, TopologicalSpace.Opens.coe_top]
  refine Set.eq_univ_of_univ_subset fun x _ => ?_
  obtain ⟨y, hy, hxy⟩ := Set.mem_iUnion₂.mp (ht (Set.mem_univ x))
  exact Set.mem_iUnion.mpr ⟨⟨y, hy⟩, hxy⟩

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.EtaleCoverClosedEmbedding =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.PresentedSelectionCompatibility =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.PresentedSelectionCompatibility", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.SmoothPullbackLocalAmbientEmbedding\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.PresentedSelection\nimport Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.BlowupSequenceFlatBaseChange\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.BlowupSequenceFlatDescent\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.EtaleCoverClosedEmbedding\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.IsoBlowupRemovalBaseChange\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.PullbackBlowupSequenceIsomorphism\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.StrictPullbackComposition\nimport Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.StrictPullbackCriterion\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.StrongResolution.SequenceIsomorphism\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Morphisms.WeaklyEtale\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

theorem isPullbackBlowupSequence_presentedSelection_of_smooth (E : EmbeddedResolutionRule.{u}) (C : PresentedSelection.{u})
    (hinv : E.IsIndependentOfPresentedEmbedding) (hsbc : E.IsCompatibleWithSmoothAmbientMaps)
    (hprop : E.HasProperCenters)
    (hS : SmoothPullbackHasLocalAmbientEmbedding.{u}) (hsm : AffineSpaceIsSmooth.{u})
    (hsnc : ∀ (k : Type u) [Field k] [CharZero k] (A : Scheme.{u})
      (q : A ⟶ Spec (CommRingCat.of k)), AlgebraicGeometry.Smooth q → InStrictNormalCrossingPosition q [])
    (k : Type u) [Field k] [CharZero k] (Y V : Scheme.{u})
    (pY : Y ⟶ Spec (CommRingCat.of k)) (pV : V ⟶ Spec (CommRingCat.of k))
    [AlgebraicGeometry.IsAffine Y] [AlgebraicGeometry.IsAffine V]
    [AlgebraicGeometry.IsReduced Y] [AlgebraicGeometry.IsReduced V]
    [AlgebraicGeometry.LocallyOfFiniteType pY] [AlgebraicGeometry.QuasiCompact pY]
    [AlgebraicGeometry.LocallyOfFiniteType pV] [AlgebraicGeometry.QuasiCompact pV]
    (u : V ⟶ Y) (r : ℕ) [AlgebraicGeometry.SmoothOfRelativeDimension r u]
    (hu : u ≫ pY = pV) :
    IsPullbackBlowupSequence u (E k V pV (C.sel k V pV)) (E k Y pY (C.sel k Y pY)) := by
  obtain ⟨V'', pV'', c, hV''aff, hV''red, hV''ft, hV''qc, hcet, hcsurj, hcpV,
      ⟨G', f, hG'pres, hfsm, hfcomp, hfpb⟩, ⟨H', g, hH'pres, hgsm, hgcomp, hgpb⟩⟩ :=
    exists_etaleCover_closedEmbeddingIntoAffineSpace_of_smooth hS hsm k (fun A q hq => hsnc k A q hq)
      Y V pY pV (C.sel k Y pY) (C.pres k Y pY) (C.sel k V pV) (C.pres k V pV) u r hu
  have := hV''aff
  have := hV''red
  have := hV''ft
  have := hV''qc
  have := hcet
  have := hcsurj
  have := hfsm
  have := hgsm
  have : AlgebraicGeometry.Smooth u := AlgebraicGeometry.SmoothOfRelativeDimension.smooth r u
  have : AlgebraicGeometry.Flat u := inferInstance
  have : AlgebraicGeometry.Flat c := inferInstance
  have s1 : IsPullbackBlowupSequence (c ≫ u) (E k V'' pV'' G') (E k Y pY (C.sel k Y pY)) :=
    hsbc k Y V'' pY pV'' (C.sel k Y pY) G' f (c ≫ u) hfcomp hfpb
  have s2 : IsPullbackBlowupSequence c (E k V'' pV'' H') (E k V pV (C.sel k V pV)) :=
    hsbc k V V'' pV pV'' (C.sel k V pV) H' g c hgcomp hgpb
  have heq : (E k V'' pV'' G').Isomorphic (E k V'' pV'' H') :=
    hinv k V'' pV'' G' H' hG'pres.some hH'pres.some
  have s2' : IsStrictPullbackBlowupSeq c (E k V'' pV'' H') (E k V pV (C.sel k V pV)) :=
    s2.isStrictPullback_of_surjective
      (fun i hi => hprop k V pV (C.sel k V pV) i hi)
  have hBu : IsStrictPullbackBlowupSeq u ((E k Y pY (C.sel k Y pY)).baseChange u)
      (E k Y pY (C.sel k Y pY)) :=
    isStrictPullbackSequenceOfBlowups_baseChange (E k Y pY (C.sel k Y pY)) u
  have hB' : IsPullbackBlowupSequence u ((E k Y pY (C.sel k Y pY)).baseChange u).withoutIsoBlowups
      (E k Y pY (C.sel k Y pY)) := hBu.isPullbackSequenceOfBlowups_withoutIsoBlowups
  have hCc : IsStrictPullbackBlowupSeq c
      ((((E k Y pY (C.sel k Y pY)).baseChange u).withoutIsoBlowups).baseChange c)
      (((E k Y pY (C.sel k Y pY)).baseChange u).withoutIsoBlowups) :=
    isStrictPullbackSequenceOfBlowups_baseChange
      (((E k Y pY (C.sel k Y pY)).baseChange u).withoutIsoBlowups) c
  have hC : IsPullbackBlowupSequence (c ≫ u)
      ((((E k Y pY (C.sel k Y pY)).baseChange u).withoutIsoBlowups).baseChange c)
      (E k Y pY (C.sel k Y pY)) := hB'.comp_isStrictPullbackSequenceOfBlowups hCc
  have heq2 : (E k V'' pV'' G').Isomorphic
      ((((E k Y pY (C.sel k Y pY)).baseChange u).withoutIsoBlowups).baseChange c) := s1.isomorphic hC
  have hdesc : (E k V pV (C.sel k V pV)).Isomorphic
      (((E k Y pY (C.sel k Y pY)).baseChange u).withoutIsoBlowups) :=
    IsStrictPullbackBlowupSeq.isomorphic_of_isomorphic s2' hCc (heq.symm.trans heq2)
  exact hB'.of_isomorphic hdesc.symm

theorem isCompatibleWithOpenImmersions_toAffineResolutionRule (E : EmbeddedResolutionRule.{u})
    (C : PresentedSelection.{u})
    (hinv : E.IsIndependentOfPresentedEmbedding) (hsbc : E.IsCompatibleWithSmoothAmbientMaps)
    (hprop : E.HasProperCenters)
    (hS : SmoothPullbackHasLocalAmbientEmbedding.{u}) (hsm : AffineSpaceIsSmooth.{u})
    (hsnc : ∀ (k : Type u) [Field k] [CharZero k] (A : Scheme.{u})
      (q : A ⟶ Spec (CommRingCat.of k)), AlgebraicGeometry.Smooth q → InStrictNormalCrossingPosition q []) :
    IsCompatibleWithOpenImmersions (E.toAffineResolutionRule C.sel) := by
  intro k _ _ Y V pY pV _ _ _ _ _ _ _ _ φ _ hφ
  have : AlgebraicGeometry.SmoothOfRelativeDimension 0 φ := inferInstance
  exact isPullbackBlowupSequence_presentedSelection_of_smooth E C hinv hsbc hprop hS hsm hsnc k Y V pY pV
    φ 0 hφ

theorem isCompatibleWithEtaleCovers_toAffineResolutionRule (E : EmbeddedResolutionRule.{u})
    (C : PresentedSelection.{u})
    (hinv : E.IsIndependentOfPresentedEmbedding) (hsbc : E.IsCompatibleWithSmoothAmbientMaps)
    (hprop : E.HasProperCenters)
    (hS : SmoothPullbackHasLocalAmbientEmbedding.{u}) (hsm : AffineSpaceIsSmooth.{u})
    (hsnc : ∀ (k : Type u) [Field k] [CharZero k] (A : Scheme.{u})
      (q : A ⟶ Spec (CommRingCat.of k)), AlgebraicGeometry.Smooth q → InStrictNormalCrossingPosition q []) :
    IsCompatibleWithEtaleCovers (E.toAffineResolutionRule C.sel) := by
  intro k _ _ Y W pY pW _ _ _ _ _ _ _ _ φ _ hφ hsurj
  have : AlgebraicGeometry.SmoothOfRelativeDimension 0 φ := inferInstance
  have : AlgebraicGeometry.Surjective φ := ⟨hsurj⟩
  have hpb : IsPullbackBlowupSequence φ (E k W pW (C.sel k W pW)) (E k Y pY (C.sel k Y pY)) :=
    isPullbackBlowupSequence_presentedSelection_of_smooth E C hinv hsbc hprop hS hsm hsnc k Y W pY pW
      φ 0 hφ
  exact hpb.isStrictPullback_of_surjective
    (fun i hi => hprop k Y pY (C.sel k Y pY) i hi)

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.PresentedSelectionCompatibility =====
