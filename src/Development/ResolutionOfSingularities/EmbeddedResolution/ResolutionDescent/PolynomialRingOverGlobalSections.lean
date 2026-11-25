module

public import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.AffineSpaceProduct

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.ExtendCoordinatesToAffineSpace, Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.PolynomialRingOverGlobalSections

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.ExtendCoordinatesToAffineSpace =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.ExtendCoordinatesToAffineSpace", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.AffineSpaceProduct\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.EffectiveEpi.Comp\nimport Mathlib.CategoryTheory.ExtremalEpi\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry TopologicalSpace

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

def specHomOfGlobalSections (A : Scheme.{u}) [AlgebraicGeometry.IsAffine A] {B' : CommRingCat.{u}}
    (σ : Γ(A, ⊤) ⟶ B') : Spec B' ⟶ A :=
  Spec.map σ ≫ A.isoSpec.inv

@[simp]
theorem specHomOfGlobalSections_appTop (A : Scheme.{u}) [AlgebraicGeometry.IsAffine A]
    {B' : CommRingCat.{u}} (σ : Γ(A, ⊤) ⟶ B') (s : Γ(A, ⊤)) :
    (specHomOfGlobalSections A σ).appTop s = (Scheme.ΓSpecIso B').inv (σ s) := by
  have hcomp : specHomOfGlobalSections A σ ≫ A.isoSpec.hom = Spec.map σ := by
    simp [specHomOfGlobalSections]
  have h : (Scheme.ΓSpecIso Γ(A, ⊤)).hom ≫ (specHomOfGlobalSections A σ).appTop
      = (Spec.map σ).appTop := by
    rw [← Scheme.toSpecΓ_appTop, ← Scheme.isoSpec_hom, ← Scheme.Hom.comp_appTop, hcomp]
  have h3 : (specHomOfGlobalSections A σ).appTop = σ ≫ (Scheme.ΓSpecIso B').inv := by
    rw [← cancel_epi (Scheme.ΓSpecIso Γ(A, ⊤)).hom, Scheme.ΓSpecIso_inv_naturality,
      Iso.hom_inv_id_assoc]
    exact h
  rw [h3, CommRingCat.comp_apply]

def specToAffineSpaceExtendCoords (k : Type u) [Field k] (A : Scheme.{u}) [AlgebraicGeometry.IsAffine A]
    (pA : A ⟶ Spec (CommRingCat.of k)) (M : ℕ)
    (e : A ⟶ affineSpaceIndexedBy k (ULift.{u} (Fin M))) {B' : CommRingCat.{u}}
    (σ : Γ(A, ⊤) ⟶ B') (n : ℕ) (b : Fin n → B') :
    Spec B' ⟶ affineSpaceIndexedBy k (ULift.{u} (Fin M ⊕ Fin n)) :=
  AffineSpace.homOfVector (specHomOfGlobalSections A σ ≫ pA)
    (fun i =>
      Sum.elim
        (fun a : Fin M =>
          (specHomOfGlobalSections A σ ≫ e).appTop
            (AffineSpace.coord (Spec (CommRingCat.of k)) (ULift.up a)))
        (fun j : Fin n => (Scheme.ΓSpecIso B').inv (b j))
        i.down)

@[simp]
theorem specToAffineSpaceExtendCoords_comp_toSpec (k : Type u) [Field k] (A : Scheme.{u})
    [AlgebraicGeometry.IsAffine A] (pA : A ⟶ Spec (CommRingCat.of k)) (M : ℕ)
    (e : A ⟶ affineSpaceIndexedBy k (ULift.{u} (Fin M))) {B' : CommRingCat.{u}}
    (σ : Γ(A, ⊤) ⟶ B') (n : ℕ) (b : Fin n → B') :
    specToAffineSpaceExtendCoords k A pA M e σ n b ≫ affineSpaceIndexedByToSpec k (ULift.{u} (Fin M ⊕ Fin n)) =
      specHomOfGlobalSections A σ ≫ pA := by
  simp [specToAffineSpaceExtendCoords]

@[simp]
theorem specToAffineSpaceExtendCoords_appTop_coord_inl (k : Type u) [Field k] (A : Scheme.{u})
    [AlgebraicGeometry.IsAffine A] (pA : A ⟶ Spec (CommRingCat.of k)) (M : ℕ)
    (e : A ⟶ affineSpaceIndexedBy k (ULift.{u} (Fin M))) {B' : CommRingCat.{u}}
    (σ : Γ(A, ⊤) ⟶ B') (n : ℕ) (b : Fin n → B') (a : Fin M) :
    (specToAffineSpaceExtendCoords k A pA M e σ n b).appTop
        (AffineSpace.coord (Spec (CommRingCat.of k))
          (ULift.up (Sum.inl a) : ULift.{u} (Fin M ⊕ Fin n))) =
      (specHomOfGlobalSections A σ ≫ e).appTop
        (AffineSpace.coord (Spec (CommRingCat.of k)) (ULift.up a)) := by
  simp [specToAffineSpaceExtendCoords]

@[simp]
theorem specToAffineSpaceExtendCoords_appTop_coord_inr (k : Type u) [Field k] (A : Scheme.{u})
    [AlgebraicGeometry.IsAffine A] (pA : A ⟶ Spec (CommRingCat.of k)) (M : ℕ)
    (e : A ⟶ affineSpaceIndexedBy k (ULift.{u} (Fin M))) {B' : CommRingCat.{u}}
    (σ : Γ(A, ⊤) ⟶ B') (n : ℕ) (b : Fin n → B') (j : Fin n) :
    (specToAffineSpaceExtendCoords k A pA M e σ n b).appTop
        (AffineSpace.coord (Spec (CommRingCat.of k))
          (ULift.up (Sum.inr j) : ULift.{u} (Fin M ⊕ Fin n))) =
      (Scheme.ΓSpecIso B').inv (b j) := by
  simp [specToAffineSpaceExtendCoords]

theorem specToAffineSpaceExtendCoords_comp_projLeft (k : Type u) [Field k] (A : Scheme.{u})
    [AlgebraicGeometry.IsAffine A] (pA : A ⟶ Spec (CommRingCat.of k)) (M : ℕ)
    (e : A ⟶ affineSpaceIndexedBy k (ULift.{u} (Fin M))) {B' : CommRingCat.{u}}
    (σ : Γ(A, ⊤) ⟶ B') (n : ℕ) (b : Fin n → B')
    (he : e ≫ affineSpaceIndexedByToSpec k (ULift.{u} (Fin M)) = pA) :
    specToAffineSpaceExtendCoords k A pA M e σ n b ≫ projLeft k M n = specHomOfGlobalSections A σ ≫ e := by
  refine AffineSpace.hom_ext ?_ ?_
  · simp [he]
  · rintro ⟨a⟩
    rw [Scheme.Hom.comp_appTop, CommRingCat.comp_apply, projLeft_appTop_coord,
      specToAffineSpaceExtendCoords_appTop_coord_inl]

theorem specToAffineSpaceExtendCoords_appTop_surjective (k : Type u) [Field k] (A : Scheme.{u})
    [AlgebraicGeometry.IsAffine A] (pA : A ⟶ Spec (CommRingCat.of k)) (M : ℕ)
    (e : A ⟶ affineSpaceIndexedBy k (ULift.{u} (Fin M)))
    [AlgebraicGeometry.IsClosedImmersion e] {B' : CommRingCat.{u}}
    (σ : Γ(A, ⊤) ⟶ B') (n : ℕ) (b : Fin n → B')
    (he : e ≫ affineSpaceIndexedByToSpec k (ULift.{u} (Fin M)) = pA)
    (hgen : ∀ x : B', ∃ p : MvPolynomial (Fin n) Γ(A, ⊤),
      MvPolynomial.eval₂ σ.hom b p = x) :
    Function.Surjective ⇑((specToAffineSpaceExtendCoords k A pA M e σ n b).appTop) := by
  have hsurj : Function.Surjective ⇑(e.appTop) :=
    (AlgebraicGeometry.IsClosedImmersion.isAffine_surjective_of_isAffine e).2
  have hproj : specToAffineSpaceExtendCoords k A pA M e σ n b ≫ projLeft k M n
      = specHomOfGlobalSections A σ ≫ e := specToAffineSpaceExtendCoords_comp_projLeft k A pA M e σ n b he
  have hsec : ∀ s : Γ(A, ⊤), ∃ P, (specToAffineSpaceExtendCoords k A pA M e σ n b).appTop P
      = (Scheme.ΓSpecIso B').inv (σ s) := by
    intro s
    obtain ⟨P, hPs⟩ := hsurj s
    refine ⟨(projLeft k M n).appTop P, ?_⟩
    have h2 := congrArg
      (fun g : Spec B' ⟶ affineSpaceIndexedBy k (ULift.{u} (Fin M)) => g.appTop P) hproj
    simp only [Scheme.Hom.comp_appTop, CommRingCat.comp_apply] at h2
    rw [h2, hPs, specHomOfGlobalSections_appTop]
  have key : ∀ p : MvPolynomial (Fin n) Γ(A, ⊤), ∃ P,
      (specToAffineSpaceExtendCoords k A pA M e σ n b).appTop P
        = (Scheme.ΓSpecIso B').inv (MvPolynomial.eval₂ σ.hom b p) := by
    intro p
    induction p using MvPolynomial.induction_on with
    | C s =>
        obtain ⟨P, hP⟩ := hsec s
        refine ⟨P, ?_⟩
        rw [MvPolynomial.eval₂_C]
        exact hP
    | add p q hp hq =>
        obtain ⟨P, hP⟩ := hp
        obtain ⟨Q, hQ⟩ := hq
        refine ⟨P + Q, ?_⟩
        rw [map_add (f := _), MvPolynomial.eval₂_add, map_add (f := _), hP, hQ]
    | mul_X p j hp =>
        obtain ⟨P, hP⟩ := hp
        refine ⟨P * AffineSpace.coord (Spec (CommRingCat.of k))
          (ULift.up (Sum.inr j) : ULift.{u} (Fin M ⊕ Fin n)), ?_⟩
        rw [map_mul, hP, specToAffineSpaceExtendCoords_appTop_coord_inr, MvPolynomial.eval₂_mul,
          MvPolynomial.eval₂_X, map_mul]
  intro y
  obtain ⟨p, hp⟩ := hgen ((Scheme.ΓSpecIso B').hom y)
  obtain ⟨P, hP⟩ := key p
  refine ⟨P, ?_⟩
  rw [hP, hp]
  simp

theorem isClosedImmersion_specToAffineSpaceExtendCoords (k : Type u) [Field k] (A : Scheme.{u})
    [AlgebraicGeometry.IsAffine A] (pA : A ⟶ Spec (CommRingCat.of k)) (M : ℕ)
    (e : A ⟶ affineSpaceIndexedBy k (ULift.{u} (Fin M)))
    [AlgebraicGeometry.IsClosedImmersion e] {B' : CommRingCat.{u}}
    (σ : Γ(A, ⊤) ⟶ B') (n : ℕ) (b : Fin n → B')
    (he : e ≫ affineSpaceIndexedByToSpec k (ULift.{u} (Fin M)) = pA)
    (hgen : ∀ x : B', ∃ p : MvPolynomial (Fin n) Γ(A, ⊤),
      MvPolynomial.eval₂ σ.hom b p = x) :
    AlgebraicGeometry.IsClosedImmersion (specToAffineSpaceExtendCoords k A pA M e σ n b) :=
  AlgebraicGeometry.IsClosedImmersion.of_surjective_of_isAffine _
    (specToAffineSpaceExtendCoords_appTop_surjective k A pA M e σ n b he hgen)

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.ExtendCoordinatesToAffineSpace =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.PolynomialRingOverGlobalSections =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.PolynomialRingOverGlobalSections", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.ExtendCoordinatesToAffineSpace\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry TopologicalSpace

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

def mvPolynomialToSumCoordinateRing (k : Type u) [Field k] (M n : ℕ) :
    MvPolynomial (Fin n) Γ(affineSpaceIndexedBy k (ULift.{u} (Fin M)), ⊤) →+*
      Γ(affineSpaceIndexedBy k (ULift.{u} (Fin M ⊕ Fin n)), ⊤) :=
  MvPolynomial.eval₂Hom ((projLeft k M n).appTop).hom
    (fun i : Fin n =>
      AffineSpace.coord (Spec (CommRingCat.of k))
        (ULift.up (Sum.inr i) : ULift.{u} (Fin M ⊕ Fin n)))

@[simp]
theorem mvPolynomialToSumCoordinateRing_C (k : Type u) [Field k] (M n : ℕ)
    (t : Γ(affineSpaceIndexedBy k (ULift.{u} (Fin M)), ⊤)) :
    mvPolynomialToSumCoordinateRing k M n (MvPolynomial.C t) = (projLeft k M n).appTop t := by
  simp [mvPolynomialToSumCoordinateRing]

@[simp]
theorem mvPolynomialToSumCoordinateRing_X (k : Type u) [Field k] (M n : ℕ) (i : Fin n) :
    mvPolynomialToSumCoordinateRing k M n (MvPolynomial.X i) =
      AffineSpace.coord (Spec (CommRingCat.of k))
        (ULift.up (Sum.inr i) : ULift.{u} (Fin M ⊕ Fin n)) := by
  simp [mvPolynomialToSumCoordinateRing]

private theorem comp_appTop_apply_eq {X Y Z : Scheme.{u}} (f : X ⟶ Y) (g : Y ⟶ Z) (t : Γ(Z, ⊤)) :
    (f ≫ g).appTop t = f.appTop (g.appTop t) := rfl

private theorem id_appTop_apply (X : Scheme.{u}) (t : Γ(X, ⊤)) :
    (𝟙 X : X ⟶ X).appTop t = t := by simp

theorem specToAffineSpaceExtendCoords_appTop_mvPolynomial (k : Type u) [Field k] (A : Scheme.{u})
    [AlgebraicGeometry.IsAffine A] (pA : A ⟶ Spec (CommRingCat.of k)) (M : ℕ)
    (e : A ⟶ affineSpaceIndexedBy k (ULift.{u} (Fin M))) {B' : CommRingCat.{u}}
    (σ : Γ(A, ⊤) ⟶ B') (n : ℕ) (b : Fin n → B')
    (he : e ≫ affineSpaceIndexedByToSpec k (ULift.{u} (Fin M)) = pA)
    (p : MvPolynomial (Fin n) Γ(affineSpaceIndexedBy k (ULift.{u} (Fin M)), ⊤)) :
    (specToAffineSpaceExtendCoords k A pA M e σ n b).appTop (mvPolynomialToSumCoordinateRing k M n p) =
      (Scheme.ΓSpecIso B').inv
        (MvPolynomial.eval₂ σ.hom b (MvPolynomial.map (e.appTop).hom p)) := by
  induction p using MvPolynomial.induction_on with
  | C a =>
      have h1 : (specToAffineSpaceExtendCoords k A pA M e σ n b).appTop ((projLeft k M n).appTop a)
          = (Scheme.ΓSpecIso B').inv (σ (e.appTop a)) := by
        rw [← comp_appTop_apply_eq, specToAffineSpaceExtendCoords_comp_projLeft k A pA M e σ n b he,
          comp_appTop_apply_eq, specHomOfGlobalSections_appTop]
      rw [mvPolynomialToSumCoordinateRing_C, h1]
      simp
  | add p q hp hq =>
      simp only [map_add (f := _), MvPolynomial.eval₂_add, hp, hq]
  | mul_X p i hp =>
      simp only [map_mul, MvPolynomial.eval₂_mul, mvPolynomialToSumCoordinateRing_X, hp,
        specToAffineSpaceExtendCoords_appTop_coord_inr, MvPolynomial.map_X, MvPolynomial.eval₂_X]

private theorem appTop_surjective_of_isClosedImmersion {X Y : Scheme.{u}}
    (f : X ⟶ Y) [AlgebraicGeometry.IsAffine Y] [AlgebraicGeometry.IsClosedImmersion f] :
    Function.Surjective ⇑((f.appTop).hom) :=
  (AlgebraicGeometry.IsClosedImmersion.isAffine_surjective_of_isAffine (f := f)).2

private theorem appTop_ext {X Y : Scheme.{u}} {f g : X ⟶ Y}
    (h : ∀ t : Γ(Y, ⊤), f.appTop t = g.appTop t) : f.appTop = g.appTop := by
  ext t
  exact h t

private theorem specMap_appTop_ΓSpecIso_inv {R S : CommRingCat.{u}} (f : R ⟶ S) (r : R) :
    (Spec.map f).appTop ((Scheme.ΓSpecIso R).inv r) = (Scheme.ΓSpecIso S).inv (f r) := by
  have h := congrArg (fun m : R ⟶ Γ(Spec S, ⊤) => CommRingCat.Hom.hom m r)
    (Scheme.ΓSpecIso_inv_naturality f)
  simp only [CommRingCat.hom_comp, RingHom.comp_apply] at h
  exact h.symm

private def polynomialRingOverGlobalSections (k : Type u) [Field k] (M n : ℕ) : CommRingCat.{u} :=
  CommRingCat.of (MvPolynomial (Fin n) Γ(affineSpaceIndexedBy k (ULift.{u} (Fin M)), ⊤))

private def globalSectionsToPolynomialRing (k : Type u) [Field k] (M n : ℕ) :
    Γ(affineSpaceIndexedBy k (ULift.{u} (Fin M)), ⊤) ⟶ polynomialRingOverGlobalSections k M n :=
  CommRingCat.ofHom
    (MvPolynomial.C :
      Γ(affineSpaceIndexedBy k (ULift.{u} (Fin M)), ⊤) →+*
        MvPolynomial (Fin n) Γ(affineSpaceIndexedBy k (ULift.{u} (Fin M)), ⊤))

private theorem globalSectionsToPolynomialRing_apply (k : Type u) [Field k] (M n : ℕ)
    (t : Γ(affineSpaceIndexedBy k (ULift.{u} (Fin M)), ⊤)) :
    globalSectionsToPolynomialRing k M n t = MvPolynomial.C t := rfl

private def polynomialRingVariables (k : Type u) [Field k] (M n : ℕ) : Fin n → polynomialRingOverGlobalSections k M n :=
  fun i => MvPolynomial.X i

private def specPolynomialRingToAffineSpaceSum (k : Type u) [Field k] (M n : ℕ) :
    Spec (polynomialRingOverGlobalSections k M n) ⟶ affineSpaceIndexedBy k (ULift.{u} (Fin M ⊕ Fin n)) :=
  specToAffineSpaceExtendCoords k (affineSpaceIndexedBy k (ULift.{u} (Fin M)))
    (affineSpaceIndexedByToSpec k (ULift.{u} (Fin M))) M (𝟙 _) (globalSectionsToPolynomialRing k M n) n (polynomialRingVariables k M n)

private def affineSpaceSumToSpecPolynomialRing (k : Type u) [Field k] (M n : ℕ) :
    affineSpaceIndexedBy k (ULift.{u} (Fin M ⊕ Fin n)) ⟶ Spec (polynomialRingOverGlobalSections k M n) :=
  (affineSpaceIndexedBy k (ULift.{u} (Fin M ⊕ Fin n))).isoSpec.hom ≫
    Spec.map (CommRingCat.ofHom (mvPolynomialToSumCoordinateRing k M n))

private theorem comp_affineSpaceIndexedByToSpec_eq (k : Type u) [Field k] (M n : ℕ) :
    specPolynomialRingToAffineSpaceSum k M n ≫ affineSpaceIndexedByToSpec k (ULift.{u} (Fin M ⊕ Fin n)) =
      specHomOfGlobalSections (affineSpaceIndexedBy k (ULift.{u} (Fin M))) (globalSectionsToPolynomialRing k M n) ≫
        affineSpaceIndexedByToSpec k (ULift.{u} (Fin M)) :=
  specToAffineSpaceExtendCoords_comp_toSpec k (affineSpaceIndexedBy k (ULift.{u} (Fin M)))
    (affineSpaceIndexedByToSpec k (ULift.{u} (Fin M))) M (𝟙 _) (globalSectionsToPolynomialRing k M n) n (polynomialRingVariables k M n)

private theorem appTop_coord_inl_eq_C (k : Type u) [Field k] (M n : ℕ) (a : Fin M) :
    (specPolynomialRingToAffineSpaceSum k M n).appTop
        (AffineSpace.coord (Spec (CommRingCat.of k))
          (ULift.up (Sum.inl a) : ULift.{u} (Fin M ⊕ Fin n))) =
      (Scheme.ΓSpecIso (polynomialRingOverGlobalSections k M n)).inv
        (MvPolynomial.C (AffineSpace.coord (Spec (CommRingCat.of k)) (ULift.up a))) := by
  have h := specToAffineSpaceExtendCoords_appTop_coord_inl k (affineSpaceIndexedBy k (ULift.{u} (Fin M)))
    (affineSpaceIndexedByToSpec k (ULift.{u} (Fin M))) M (𝟙 _) (globalSectionsToPolynomialRing k M n) n (polynomialRingVariables k M n) a
  rw [Category.comp_id, specHomOfGlobalSections_appTop] at h
  exact h

private theorem appTop_coord_inr_eq_X (k : Type u) [Field k] (M n : ℕ) (j : Fin n) :
    (specPolynomialRingToAffineSpaceSum k M n).appTop
        (AffineSpace.coord (Spec (CommRingCat.of k))
          (ULift.up (Sum.inr j) : ULift.{u} (Fin M ⊕ Fin n))) =
      (Scheme.ΓSpecIso (polynomialRingOverGlobalSections k M n)).inv (MvPolynomial.X j) :=
  specToAffineSpaceExtendCoords_appTop_coord_inr k (affineSpaceIndexedBy k (ULift.{u} (Fin M)))
    (affineSpaceIndexedByToSpec k (ULift.{u} (Fin M))) M (𝟙 _) (globalSectionsToPolynomialRing k M n) n (polynomialRingVariables k M n) j

private theorem appTop_ΓSpecIso_inv_eq_mvPolynomialToSumCoordinateRing (k : Type u) [Field k] (M n : ℕ)
    (r : MvPolynomial (Fin n) Γ(affineSpaceIndexedBy k (ULift.{u} (Fin M)), ⊤)) :
    (affineSpaceSumToSpecPolynomialRing k M n).appTop ((Scheme.ΓSpecIso (polynomialRingOverGlobalSections k M n)).inv r) =
      mvPolynomialToSumCoordinateRing k M n r := by
  have h1 : (Spec.map (CommRingCat.ofHom (mvPolynomialToSumCoordinateRing k M n))).appTop
        ((Scheme.ΓSpecIso (polynomialRingOverGlobalSections k M n)).inv r) =
      (Scheme.ΓSpecIso Γ(affineSpaceIndexedBy k (ULift.{u} (Fin M ⊕ Fin n)), ⊤)).inv
        (mvPolynomialToSumCoordinateRing k M n r) :=
    specMap_appTop_ΓSpecIso_inv (CommRingCat.ofHom (mvPolynomialToSumCoordinateRing k M n)) r
  have h2 : (affineSpaceSumToSpecPolynomialRing k M n).appTop ((Scheme.ΓSpecIso (polynomialRingOverGlobalSections k M n)).inv r) =
      ((affineSpaceIndexedBy k (ULift.{u} (Fin M ⊕ Fin n))).isoSpec.hom).appTop
        ((Spec.map (CommRingCat.ofHom (mvPolynomialToSumCoordinateRing k M n))).appTop
          ((Scheme.ΓSpecIso (polynomialRingOverGlobalSections k M n)).inv r)) := rfl
  rw [h2, h1]
  simp [Scheme.isoSpec_hom, Scheme.toSpecΓ_appTop]

private theorem mvPolynomialToSumCoordinateRing_surjective (k : Type u) [Field k] (M n : ℕ) :
    Function.Surjective ⇑(mvPolynomialToSumCoordinateRing k M n) := by
  have hcomp : affineSpaceSumToSpecPolynomialRing k M n ≫ specPolynomialRingToAffineSpaceSum k M n =
      𝟙 (affineSpaceIndexedBy k (ULift.{u} (Fin M ⊕ Fin n))) := by
    refine AffineSpace.hom_ext ?_ ?_
    · apply AlgebraicGeometry.ext_of_isAffine
      apply appTop_ext
      intro t
      rw [Category.assoc, Category.id_comp, comp_affineSpaceIndexedByToSpec_eq, comp_appTop_apply_eq,
        comp_appTop_apply_eq, specHomOfGlobalSections_appTop, globalSectionsToPolynomialRing_apply, appTop_ΓSpecIso_inv_eq_mvPolynomialToSumCoordinateRing,
        mvPolynomialToSumCoordinateRing_C, ← comp_appTop_apply_eq, projLeft_comp_affineSpaceIndexedByToSpec]
    · rintro ⟨i⟩
      obtain a | j := i
      · rw [comp_appTop_apply_eq, appTop_coord_inl_eq_C, appTop_ΓSpecIso_inv_eq_mvPolynomialToSumCoordinateRing, mvPolynomialToSumCoordinateRing_C,
          projLeft_appTop_coord, id_appTop_apply]
      · rw [comp_appTop_apply_eq, appTop_coord_inr_eq_X, appTop_ΓSpecIso_inv_eq_mvPolynomialToSumCoordinateRing, mvPolynomialToSumCoordinateRing_X,
          id_appTop_apply]
  intro x
  refine ⟨(Scheme.ΓSpecIso (polynomialRingOverGlobalSections k M n)).hom ((specPolynomialRingToAffineSpaceSum k M n).appTop x), ?_⟩
  have hx : (affineSpaceSumToSpecPolynomialRing k M n).appTop ((specPolynomialRingToAffineSpaceSum k M n).appTop x) = x := by
    rw [← comp_appTop_apply_eq, hcomp, id_appTop_apply]
  rw [← appTop_ΓSpecIso_inv_eq_mvPolynomialToSumCoordinateRing k M n
    ((Scheme.ΓSpecIso (polynomialRingOverGlobalSections k M n)).hom ((specPolynomialRingToAffineSpaceSum k M n).appTop x)),
    Iso.hom_inv_id_apply]
  exact hx

theorem exists_mvPolynomial_map_appTop_eq (k : Type u) [Field k] (A : Scheme.{u}) (M : ℕ)
    (e : A ⟶ affineSpaceIndexedBy k (ULift.{u} (Fin M)))
    [AlgebraicGeometry.IsClosedImmersion e] (n q : ℕ)
    (rel : Fin q → MvPolynomial (Fin n) Γ(A, ⊤)) (j : Fin q) :
    ∃ P : MvPolynomial (Fin n) Γ(affineSpaceIndexedBy k (ULift.{u} (Fin M)), ⊤),
      MvPolynomial.map (e.appTop).hom P = rel j := by
  obtain ⟨P, hP⟩ := MvPolynomial.map_surjective ((e.appTop).hom)
    (appTop_surjective_of_isClosedImmersion e) (rel j)
  exact ⟨P, hP⟩

theorem ker_specToAffineSpaceExtendCoords_appTop (k : Type u) [Field k] (A : Scheme.{u})
    [AlgebraicGeometry.IsAffine A] (pA : A ⟶ Spec (CommRingCat.of k)) (M : ℕ)
    (e : A ⟶ affineSpaceIndexedBy k (ULift.{u} (Fin M)))
    [AlgebraicGeometry.IsClosedImmersion e] {B' : CommRingCat.{u}}
    (σ : Γ(A, ⊤) ⟶ B') (n : ℕ) (b : Fin n → B')
    (he : e ≫ affineSpaceIndexedByToSpec k (ULift.{u} (Fin M)) = pA)
    (q : ℕ) (rel : Fin q → MvPolynomial (Fin n) Γ(A, ⊤))
    (hrel : RingHom.ker (MvPolynomial.eval₂Hom σ.hom b) = Ideal.span (Set.range rel))
    (lift : Fin q → MvPolynomial (Fin n) Γ(affineSpaceIndexedBy k (ULift.{u} (Fin M)), ⊤))
    (hlift : ∀ j, MvPolynomial.map (e.appTop).hom (lift j) = rel j) :
    RingHom.ker ((specToAffineSpaceExtendCoords k A pA M e σ n b).appTop).hom =
      Ideal.map ((projLeft k M n).appTop).hom (RingHom.ker (e.appTop).hom)
        ⊔ Ideal.span (Set.range fun j : Fin q => mvPolynomialToSumCoordinateRing k M n (lift j)) := by
  have hsurje : Function.Surjective ⇑((e.appTop).hom) :=
    appTop_surjective_of_isClosedImmersion e
  have hmap : Function.Surjective ⇑(MvPolynomial.map ((e.appTop).hom) :
      MvPolynomial (Fin n) Γ(affineSpaceIndexedBy k (ULift.{u} (Fin M)), ⊤) →+*
        MvPolynomial (Fin n) Γ(A, ⊤)) :=
    MvPolynomial.map_surjective _ hsurje
  have hsurjS : Function.Surjective ⇑(mvPolynomialToSumCoordinateRing k M n) := mvPolynomialToSumCoordinateRing_surjective k M n
  have hι : Function.Injective ⇑((Scheme.ΓSpecIso B').inv) := by
    intro x y hxy
    have h := congrArg (fun z => (Scheme.ΓSpecIso B').hom z) hxy
    simpa using h
  have key : ∀ p : MvPolynomial (Fin n) Γ(affineSpaceIndexedBy k (ULift.{u} (Fin M)), ⊤),
      ((specToAffineSpaceExtendCoords k A pA M e σ n b).appTop).hom (mvPolynomialToSumCoordinateRing k M n p) =
        (Scheme.ΓSpecIso B').inv
          (MvPolynomial.eval₂ σ.hom b (MvPolynomial.map (e.appTop).hom p)) :=
    fun p => specToAffineSpaceExtendCoords_appTop_mvPolynomial k A pA M e σ n b he p
  have step1 : RingHom.ker (((specToAffineSpaceExtendCoords k A pA M e σ n b).appTop).hom.comp
        (mvPolynomialToSumCoordinateRing k M n)) =
      Ideal.comap (MvPolynomial.map ((e.appTop).hom)) (Ideal.span (Set.range rel)) := by
    rw [← hrel]
    ext p
    simp only [RingHom.mem_ker, RingHom.comp_apply, Ideal.mem_comap]
    rw [key p]
    constructor
    · intro h
      have h0 : MvPolynomial.eval₂ σ.hom b (MvPolynomial.map ((e.appTop).hom) p) = 0 := by
        apply hι
        rw [h]
        simp
      simpa [RingHom.mem_ker] using h0
    · intro h
      have h0 : MvPolynomial.eval₂ σ.hom b (MvPolynomial.map ((e.appTop).hom) p) = 0 := by
        simpa [RingHom.mem_ker] using h
      rw [h0]
      simp
  have step2 : Ideal.span (Set.range rel) =
      Ideal.map (MvPolynomial.map ((e.appTop).hom)) (Ideal.span (Set.range lift)) := by
    rw [Ideal.map_span]
    congr 1
    rw [← Set.range_comp]
    exact congrArg Set.range (funext fun j => (hlift j).symm)
  have step3 : Ideal.comap (MvPolynomial.map ((e.appTop).hom))
        (Ideal.map (MvPolynomial.map ((e.appTop).hom)) (Ideal.span (Set.range lift))) =
      Ideal.span (Set.range lift) ⊔
        RingHom.ker (MvPolynomial.map ((e.appTop).hom) :
          MvPolynomial (Fin n) Γ(affineSpaceIndexedBy k (ULift.{u} (Fin M)), ⊤) →+*
            MvPolynomial (Fin n) Γ(A, ⊤)) :=
    Ideal.comap_map_of_surjective _ hmap _
  have step4 : RingHom.ker (MvPolynomial.map ((e.appTop).hom) :
        MvPolynomial (Fin n) Γ(affineSpaceIndexedBy k (ULift.{u} (Fin M)), ⊤) →+*
          MvPolynomial (Fin n) Γ(A, ⊤)) =
      Ideal.map
        (MvPolynomial.C :
          Γ(affineSpaceIndexedBy k (ULift.{u} (Fin M)), ⊤) →+*
            MvPolynomial (Fin n) Γ(affineSpaceIndexedBy k (ULift.{u} (Fin M)), ⊤))
        (RingHom.ker ((e.appTop).hom)) :=
    MvPolynomial.ker_map _
  have hcomapker : Ideal.comap (mvPolynomialToSumCoordinateRing k M n)
        (RingHom.ker ((specToAffineSpaceExtendCoords k A pA M e σ n b).appTop).hom) =
      RingHom.ker (((specToAffineSpaceExtendCoords k A pA M e σ n b).appTop).hom.comp (mvPolynomialToSumCoordinateRing k M n)) := by
    ext p
    simp [RingHom.mem_ker, Ideal.mem_comap]
  have hcompEq : (mvPolynomialToSumCoordinateRing k M n).comp
      (MvPolynomial.C :
        Γ(affineSpaceIndexedBy k (ULift.{u} (Fin M)), ⊤) →+*
          MvPolynomial (Fin n) Γ(affineSpaceIndexedBy k (ULift.{u} (Fin M)), ⊤))
      = ((projLeft k M n).appTop).hom := by
    ext t
    exact mvPolynomialToSumCoordinateRing_C k M n t
  have main := Ideal.map_comap_of_surjective (mvPolynomialToSumCoordinateRing k M n) hsurjS
    (RingHom.ker ((specToAffineSpaceExtendCoords k A pA M e σ n b).appTop).hom)
  rw [hcomapker, step1, step2, step3, step4] at main
  rw [← main, Ideal.map_sup, Ideal.map_span, Ideal.map_map, hcompEq]
  have hrange : (⇑(mvPolynomialToSumCoordinateRing k M n) '' Set.range lift)
      = Set.range (fun j : Fin q => mvPolynomialToSumCoordinateRing k M n (lift j)) := by
    rw [← Set.range_comp]
    rfl
  rw [hrange, sup_comm]

theorem preimage_basicOpen_specToAffineSpaceExtendCoords (k : Type u) [Field k] (A : Scheme.{u})
    [AlgebraicGeometry.IsAffine A] (pA : A ⟶ Spec (CommRingCat.of k)) (M : ℕ)
    (e : A ⟶ affineSpaceIndexedBy k (ULift.{u} (Fin M))) {B' : CommRingCat.{u}}
    (σ : Γ(A, ⊤) ⟶ B') (n : ℕ) (b : Fin n → B')
    (f : Γ(affineSpaceIndexedBy k (ULift.{u} (Fin M ⊕ Fin n)), ⊤))
    (hf : IsUnit ((specToAffineSpaceExtendCoords k A pA M e σ n b).appTop f)) :
    (Opens.map (specToAffineSpaceExtendCoords k A pA M e σ n b).base).obj
        ((affineSpaceIndexedBy k (ULift.{u} (Fin M ⊕ Fin n))).basicOpen f) = ⊤ := by
  have h1 : (Opens.map (specToAffineSpaceExtendCoords k A pA M e σ n b).base).obj
        ((affineSpaceIndexedBy k (ULift.{u} (Fin M ⊕ Fin n))).basicOpen f) =
      (Spec B').basicOpen ((specToAffineSpaceExtendCoords k A pA M e σ n b).appTop f) :=
    Scheme.preimage_basicOpen ..
  have h2 : (Spec B').basicOpen ((specToAffineSpaceExtendCoords k A pA M e σ n b).appTop f) = ⊤ :=
    Scheme.basicOpen_of_isUnit (Spec B') hf
  rw [h1, h2]

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.PolynomialRingOverGlobalSections =====
