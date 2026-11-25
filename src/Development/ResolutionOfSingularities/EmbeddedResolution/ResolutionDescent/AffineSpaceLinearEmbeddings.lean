module

public import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.BlowupSequenceRelations
public import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.AffineSpaceCoordinates
public import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.StrictNormalCrossings
public import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.PullbackBlowupSequenceComposition
public import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.StrictPullbackCriterion
import Mathlib.Tactic.Linter.Style

@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

theorem nonzeroOnComponents_of_support_ne_univ {X : Scheme.{u}} [IrreducibleSpace ↥X]
    (I : X.IdealSheafData) (h : (↑I.support : Set ↥X) ≠ Set.univ) :
    NonzeroOnComponents I := by
  intro T hT hsub
  have huniv : IsIrreducible (Set.univ : Set ↥X) := IrreducibleSpace.isIrreducible_univ ↥X
  have hle : (Set.univ : Set ↥X) ⊆ T := hT.2 huniv (Set.subset_univ T)
  exact h (Set.univ_subset_iff.mp (hle.trans hsub))

theorem nonzeroOnComponents_ker_comp {Y A A' : Scheme.{u}} (j : Y ⟶ A) (i : A ⟶ A')
    [IsClosedImmersion j] [IsClosedImmersion i] [IrreducibleSpace ↥A']
    (h : NonzeroOnComponents (Scheme.Hom.ker j)) :
    NonzeroOnComponents (Scheme.Hom.ker (j ≫ i)) := by
  refine nonzeroOnComponents_of_support_ne_univ _ ?_
  rw [Scheme.Hom.support_ker, (Scheme.Hom.isClosedEmbedding _).isClosed_range.closure_eq]
  intro hrange
  have hsurj : ∀ z : ↥A', ∃ y : ↥Y, (j ≫ i).base y = z := by
    intro z
    have hz : z ∈ Set.range ⇑(j ≫ i).base := by
      rw [hrange]
      exact Set.mem_univ z
    exact Set.mem_range.mp hz
  obtain ⟨a'⟩ : Nonempty ↥A' := inferInstance
  obtain ⟨y, -⟩ := hsurj a'
  have hjsurj : ∀ b : ↥A, ∃ y' : ↥Y, j.base y' = b := by
    intro b
    obtain ⟨y', hy'⟩ := hsurj (i.base b)
    refine ⟨y', (Scheme.Hom.isClosedEmbedding i).injective ?_⟩
    simpa using hy'
  refine h (irreducibleComponent (j.base y))
    (irreducibleComponent_mem_irreducibleComponents _) ?_
  rw [Scheme.Hom.support_ker, (Scheme.Hom.isClosedEmbedding _).isClosed_range.closure_eq]
  intro b _
  exact Set.mem_range.mpr (hjsurj b)

theorem isClosedImmersion_of_coord_surjective {R : CommRingCat.{u}} {N M : Type u}
    (f : AffineSpace N (Spec R) ⟶ AffineSpace M (Spec R))
    (hover : f ≫ (AffineSpace M (Spec R) ↘ Spec R) = (AffineSpace N (Spec R) ↘ Spec R))
    (hcoord : ∀ i : N, ∃ s : ↑((AffineSpace M (Spec R)).presheaf.obj (Opposite.op ⊤)),
      (ConcreteCategory.hom (Scheme.Hom.appTop f)) s = AffineSpace.coord (Spec R) i) :
    IsClosedImmersion f := by
  choose s hs using hcoord
  have hgcoord : ∀ i : N,
      (ConcreteCategory.hom (Scheme.Hom.appTop
        (AffineSpace.homOfVector (AffineSpace M (Spec R) ↘ Spec R) s)))
        (AffineSpace.coord (Spec R) i) = s i := by
    intro i
    simp [AffineSpace.homOfVector_appTop_coord]
  have key : f ≫ AffineSpace.homOfVector (AffineSpace M (Spec R) ↘ Spec R) s
      = 𝟙 (AffineSpace N (Spec R)) := by
    apply AffineSpace.hom_ext
    · simp [hover]
    · intro i
      rw [Scheme.Hom.comp_appTop, CommRingCat.comp_apply, hgcoord i, hs i]
      simp
  have hsurj : Function.Surjective (ConcreteCategory.hom (Scheme.Hom.appTop f)) := by
    intro x
    refine ⟨(ConcreteCategory.hom (Scheme.Hom.appTop
      (AffineSpace.homOfVector (AffineSpace M (Spec R) ↘ Spec R) s))) x, ?_⟩
    have h := congrArg (fun φ => (Scheme.Hom.appTop φ) x) key
    rw [Scheme.Hom.comp_appTop, CommRingCat.comp_apply] at h
    simpa using h
  exact IsClosedImmersion.of_surjective_of_isAffine f hsurj

def affineSpaceInl (k : Type u) [Field k] (n m : ℕ) :
    affineSpaceIndexedBy k (ULift.{u, 0} (Fin n)) ⟶ affineSpaceIndexedBy k (ULift.{u, 0} (Fin n ⊕ Fin m)) :=
  AffineSpace.homOfVector (affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin n)))
    (coordVectorInl n m (𝟙 (affineSpaceIndexedBy k (ULift.{u, 0} (Fin n)))))

def affineSpaceInrEmbedding (k : Type u) [Field k] (n m : ℕ) :
    affineSpaceIndexedBy k (ULift.{u, 0} (Fin m)) ⟶ affineSpaceIndexedBy k (ULift.{u, 0} (Fin n ⊕ Fin m)) :=
  AffineSpace.homOfVector (affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin m)))
    (coordVectorInr n m (𝟙 (affineSpaceIndexedBy k (ULift.{u, 0} (Fin m)))))

@[simp]
theorem affineSpaceInl_comp_affineSpaceIndexedByToSpec (k : Type u) [Field k] (n m : ℕ) :
    affineSpaceInl k n m ≫ affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin n ⊕ Fin m)) =
      affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin n)) := by
  simp [affineSpaceInl]

@[simp]
theorem affineSpaceInrEmbedding_comp_affineSpaceIndexedByToSpec (k : Type u) [Field k] (n m : ℕ) :
    affineSpaceInrEmbedding k n m ≫ affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin n ⊕ Fin m)) =
      affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin m)) := by
  simp [affineSpaceInrEmbedding]

theorem pullbackCoord_affineSpaceInl (k : Type u) [Field k] (n m : ℕ)
    (i : ULift.{u, 0} (Fin n ⊕ Fin m)) :
    pullbackCoord (affineSpaceInl k n m) i =
      Sum.elim (fun a : Fin n =>
          AffineSpace.coord (Spec (CommRingCat.of k)) (ULift.up.{u, 0} a))
        (fun _ : Fin m => 0) i.down := by
  have h : pullbackCoord (affineSpaceInl k n m) i
      = coordVectorInl n m (𝟙 (affineSpaceIndexedBy k (ULift.{u, 0} (Fin n)))) i := by
    simp only [pullbackCoord_def, affineSpaceInl, AffineSpace.homOfVector_appTop_coord]
  rw [h]
  obtain ⟨j⟩ := i
  cases j with
  | inl a =>
      change pullbackCoord (𝟙 (affineSpaceIndexedBy k (ULift.{u, 0} (Fin n)))) (ULift.up a) = _
      simp
  | inr _ => rfl

theorem pullbackCoord_affineSpaceInl_inl (k : Type u) [Field k] (n m : ℕ) (a : Fin n) :
    pullbackCoord (affineSpaceInl k n m) (ULift.up.{u, 0} (Sum.inl a)) =
      AffineSpace.coord (Spec (CommRingCat.of k)) (ULift.up.{u, 0} a) :=
  pullbackCoord_affineSpaceInl k n m (ULift.up.{u, 0} (Sum.inl a))

theorem pullbackCoord_affineSpaceInl_inr (k : Type u) [Field k] (n m : ℕ) (b : Fin m) :
    pullbackCoord (affineSpaceInl k n m) (ULift.up.{u, 0} (Sum.inr b)) = 0 :=
  pullbackCoord_affineSpaceInl k n m (ULift.up.{u, 0} (Sum.inr b))

theorem pullbackCoord_affineSpaceInrEmbedding (k : Type u) [Field k] (n m : ℕ)
    (i : ULift.{u, 0} (Fin n ⊕ Fin m)) :
    pullbackCoord (affineSpaceInrEmbedding k n m) i =
      Sum.elim (fun _ : Fin n => 0)
        (fun b : Fin m =>
          AffineSpace.coord (Spec (CommRingCat.of k)) (ULift.up.{u, 0} b)) i.down := by
  have h : pullbackCoord (affineSpaceInrEmbedding k n m) i
      = coordVectorInr n m (𝟙 (affineSpaceIndexedBy k (ULift.{u, 0} (Fin m)))) i := by
    simp only [pullbackCoord_def, affineSpaceInrEmbedding, AffineSpace.homOfVector_appTop_coord]
  rw [h]
  obtain ⟨j⟩ := i
  cases j with
  | inl _ => rfl
  | inr b =>
      change pullbackCoord (𝟙 (affineSpaceIndexedBy k (ULift.{u, 0} (Fin m)))) (ULift.up b) = _
      simp

theorem pullbackCoord_affineSpaceInrEmbedding_inl (k : Type u) [Field k] (n m : ℕ) (a : Fin n) :
    pullbackCoord (affineSpaceInrEmbedding k n m) (ULift.up.{u, 0} (Sum.inl a)) = 0 :=
  pullbackCoord_affineSpaceInrEmbedding k n m (ULift.up.{u, 0} (Sum.inl a))

theorem pullbackCoord_affineSpaceInrEmbedding_inr (k : Type u) [Field k] (n m : ℕ) (b : Fin m) :
    pullbackCoord (affineSpaceInrEmbedding k n m) (ULift.up.{u, 0} (Sum.inr b)) =
      AffineSpace.coord (Spec (CommRingCat.of k)) (ULift.up.{u, 0} b) :=
  pullbackCoord_affineSpaceInrEmbedding k n m (ULift.up.{u, 0} (Sum.inr b))

theorem isClosedImmersion_affineSpaceInl (k : Type u) [Field k] (n m : ℕ) :
    IsClosedImmersion (affineSpaceInl k n m) := by
  refine isClosedImmersion_of_coord_surjective (affineSpaceInl k n m)
    (affineSpaceInl_comp_affineSpaceIndexedByToSpec k n m) ?_
  rintro ⟨a⟩
  exact ⟨AffineSpace.coord (Spec (CommRingCat.of k)) (ULift.up.{u, 0} (Sum.inl a)),
    pullbackCoord_affineSpaceInl_inl k n m a⟩

theorem isClosedImmersion_affineSpaceInrEmbedding (k : Type u) [Field k] (n m : ℕ) :
    IsClosedImmersion (affineSpaceInrEmbedding k n m) := by
  refine isClosedImmersion_of_coord_surjective (R := CommRingCat.of k)
    (N := ULift.{u, 0} (Fin m)) (M := ULift.{u, 0} (Fin n ⊕ Fin m))
    (affineSpaceInrEmbedding k n m) (affineSpaceInrEmbedding_comp_affineSpaceIndexedByToSpec k n m) ?_
  intro i
  refine ⟨AffineSpace.coord (Spec (CommRingCat.of k)) (ULift.up.{u, 0} (Sum.inr i.down)), ?_⟩
  exact pullbackCoord_affineSpaceInrEmbedding k n m (ULift.up.{u, 0} (Sum.inr i.down))

instance instIsClosedImmersionLinEmbLeft (k : Type u) [Field k] (n m : ℕ) :
    IsClosedImmersion (affineSpaceInl k n m) :=
  isClosedImmersion_affineSpaceInl k n m

instance instIsClosedImmersionLinEmbRight (k : Type u) [Field k] (n m : ℕ) :
    IsClosedImmersion (affineSpaceInrEmbedding k n m) :=
  isClosedImmersion_affineSpaceInrEmbedding k n m

theorem comp_affineSpaceInl {k : Type u} [Field k] {Y : Scheme.{u}} (n m : ℕ)
    (q : Y ⟶ Spec (CommRingCat.of k)) (f : Y ⟶ affineSpaceIndexedBy k (ULift.{u, 0} (Fin n)))
    (hf : f ≫ affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin n)) = q) :
    f ≫ affineSpaceInl k n m = AffineSpace.homOfVector q (coordVectorInl n m f) := by
  apply AffineSpace.hom_ext
  · simp [hf]
  · intro i
    obtain ⟨j⟩ := i
    rw [Scheme.Hom.comp_appTop, CommRingCat.comp_apply, AffineSpace.homOfVector_appTop_coord,
      ← pullbackCoord_def, pullbackCoord_affineSpaceInl]
    cases j with
    | inl _ => rfl
    | inr _ => exact map_zero _

theorem comp_affineSpaceInrEmbedding {k : Type u} [Field k] {Y : Scheme.{u}} (n m : ℕ)
    (q : Y ⟶ Spec (CommRingCat.of k)) (f : Y ⟶ affineSpaceIndexedBy k (ULift.{u, 0} (Fin m)))
    (hf : f ≫ affineSpaceIndexedByToSpec k (ULift.{u, 0} (Fin m)) = q) :
    f ≫ affineSpaceInrEmbedding k n m = AffineSpace.homOfVector q (coordVectorInr n m f) := by
  apply AffineSpace.hom_ext
  · simp [hf]
  · rintro ⟨j⟩
    rw [Scheme.Hom.comp_appTop, CommRingCat.comp_apply, AffineSpace.homOfVector_appTop_coord]
    cases j with
    | inl a =>
        have h := pullbackCoord_affineSpaceInrEmbedding_inl k n m a
        rw [pullbackCoord_def] at h
        rw [h, map_zero, coordVectorInr_inl]
    | inr b =>
        have h := pullbackCoord_affineSpaceInrEmbedding_inr k n m b
        rw [pullbackCoord_def] at h
        rw [h, coordVectorInr_inr, pullbackCoord_def]

theorem IsStrictPullbackBlowupSeq.id {X : Scheme.{u}} (s : SequenceOfBlowups X) :
    IsStrictPullbackBlowupSeq (𝟙 X) s s := by
  refine ⟨rfl, fun i _ => 𝟙 (s.schemeAt i), by simp, fun i _ => ?_, fun i _ => ?_⟩
  · exact IsPullback.of_id_fst
  · simp

theorem isomorphic_of_isPullbackSequenceOfBlowups_id {X : Scheme.{u}} (s t : SequenceOfBlowups X)
    (h : IsPullbackBlowupSequence (𝟙 X) s t) (hc : ∀ i : ℕ, i < t.length → t.center i ≠ ⊤) :
    s.Isomorphic t := by
  have : AlgebraicGeometry.Surjective (𝟙 X) := inferInstance
  exact IsStrictPullbackBlowupSeq.isomorphic (h.isStrictPullback_of_surjective hc)
    (IsStrictPullbackBlowupSeq.id t)

end FunctorialResolution.EmbeddedResolution

end
