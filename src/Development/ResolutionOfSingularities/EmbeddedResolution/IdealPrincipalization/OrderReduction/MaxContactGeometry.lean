module

public import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.ControlledTransform
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.MaxContactGeometryHypotheses
public import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.DerivativeIdealSheafSmoothPullback
public import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.PowerContainmentAndOrderLocus
public import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.BlowupSmoothness
public import Development.ResolutionOfSingularities.Foundations.Blowup.AffineBlowupChartPreimages
public import Development.ResolutionOfSingularities.Foundations.Blowup.AffineBlowupCartier
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.BlowupSeqComparison
public import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.BlowupDerivativeIdealBound
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.MarkedSequenceTransforms
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.OrderUnderStalkIsomorphism
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.RadicalCenterIdeal
public import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.StrictPullbackCriterion
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.IrreducibleComponentsAlongSequence
import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.DerivativeIdealSheafOrderDecrease
import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.BlowupSequenceBasic
import Mathlib.Tactic.Linter.Style
import Development.ResolutionOfSingularities.Foundations.Blowup.AffineBlowupUniversal
import Development.ResolutionOfSingularities.Foundations.Blowup.BlowupExistence
import Development.ResolutionOfSingularities.Foundations.Blowup.BlowupOpenCover
import Development.ResolutionOfSingularities.Foundations.Schemes.AffineOpens
import Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData
import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.IsoInvariance
import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.SupportsAlongSequence

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.WeakTransform, Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.BlowupChartCongruence, Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.BlowupLiftCongruence, Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.MaxContactGeometry

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.WeakTransform =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.WeakTransform", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.ControlledTransform\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.MaxContactGeometryHypotheses\nimport Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.DerivativeIdealSheafOrderDecrease\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.DerivativeIdealSheafSmoothPullback\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.PowerContainmentAndOrderLocus\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.BlowupSequenceBasic\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.BlowupSmoothness\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

def MaxContactIdealComapLeControlled : Prop :=
  ∀ (k : Type u) [Field k] [CharZero k] (X X₁ : Scheme.{u})
      (p : X ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.Smooth p]
      [AlgebraicGeometry.LocallyOfFiniteType p]
      (π : X₁ ⟶ X) (Z : X.IdealSheafData) (E : List X.IdealSheafData),
      HasStrictNormalCrossingsWith p Z E → Blowup.IsBlowupAlongIdealSheaf π Z →
      ∀ [AlgebraicGeometry.IsLocallyNoetherian X₁] [AlgebraicGeometry.Smooth (π ≫ p)]
        [AlgebraicGeometry.LocallyOfFiniteType (π ≫ p)]
        (A : X.IdealSheafData) (μ : ℕ), 1 ≤ μ → A ≤ Z ^ μ →
      ∀ A₁ : X₁.IdealSheafData,
        Blowup.exceptionalIdeal π Z ^ μ * A₁ = A.comap π →
        (maxContactIdeal k p A μ).comap π ≤
          Blowup.exceptionalIdeal π Z * maxContactIdeal k (π ≫ p) A₁ μ

theorem smooth_projectionToBase_comp {k : Type u} [Field k] {V : Scheme.{u}}
    {q : V ⟶ Spec (CommRingCat.of k)} [AlgebraicGeometry.Smooth q] {A : V.IdealSheafData}
    {μ : ℕ} {E : List V.IdealSheafData} (u : MarkedSequenceOfBlowups q A μ E) (i : ℕ)
    (hi : i ≤ u.length) : AlgebraicGeometry.Smooth (u.projectionToBase i ≫ q) := by
  revert hi
  induction i with
  | zero =>
    intro _
    have h0 : u.projectionToBase 0 ≫ q = u.isoZero.hom ≫ q := by
      rw [SequenceOfBlowups.projectionToBase_zero]
    rw [h0]
    infer_instance
  | succ j ih =>
    intro hj1
    have hj : j < u.length := hj1
    have := ih hj.le
    have hsucc : u.projectionToBase (j + 1) ≫ q = u.transitionMapSucc j ≫ (u.projectionToBase j ≫ q) := by
      rw [SequenceOfBlowups.projectionToBase_succ, Category.assoc]
    rw [hsucc]
    exact smooth_comp_of_isBlowupAlongIdealSheaf (u.center_snc j hj) (u.isBlowupAlongIdealSheaf_blowupMorphism j hj)

theorem le_pow_one_of_le {X : Scheme.{u}} {b Z : X.IdealSheafData} (h : b ≤ Z) :
    b ≤ Z ^ 1 := by
  rw [pow_one]; exact h

private theorem maxContactIdeal_congr {k : Type u} [Field k] {X : Scheme.{u}}
    (p p' : X ⟶ Spec (CommRingCat.of k))
    [AlgebraicGeometry.LocallyOfFiniteType p] [AlgebraicGeometry.LocallyOfFiniteType p']
    (hp : p = p') (I J : X.IdealSheafData) (hI : I = J) (m : ℕ) :
    maxContactIdeal k p I m = maxContactIdeal k p' J m := by
  subst hp
  subst hI
  rfl

namespace MarkedSequenceOfBlowups

def weakTransform {k : Type u} [Field k] {V : Scheme.{u}}
    {q : V ⟶ Spec (CommRingCat.of k)} {A : V.IdealSheafData} {μ : ℕ}
    {E : List V.IdealSheafData} (u : MarkedSequenceOfBlowups q A μ E)
    (hN : ∀ j : ℕ, j ≤ u.length → AlgebraicGeometry.IsLocallyNoetherian (u.schemeAt j))
    (i : ℕ) (hi : i < u.length) (b : (u.schemeAt i).IdealSheafData) (hb : b ≤ u.center i) :
    (u.schemeAt (i + 1)).IdealSheafData :=
  haveI : AlgebraicGeometry.IsLocallyNoetherian (u.schemeAt (i + 1)) := hN (i + 1) hi
  controlledTransform (u.transitionMapSucc i) (u.center i) b 1 (u.isBlowupAlongIdealSheaf_blowupMorphism i hi)
    (le_pow_one_of_le hb)

theorem exceptionalIdeal_mul_weakTransform {k : Type u} [Field k] {V : Scheme.{u}}
    {q : V ⟶ Spec (CommRingCat.of k)} {A : V.IdealSheafData} {μ : ℕ}
    {E : List V.IdealSheafData} (u : MarkedSequenceOfBlowups q A μ E)
    (hN : ∀ j : ℕ, j ≤ u.length → AlgebraicGeometry.IsLocallyNoetherian (u.schemeAt j))
    (i : ℕ) (hi : i < u.length) (b : (u.schemeAt i).IdealSheafData) (hb : b ≤ u.center i) :
    Blowup.exceptionalIdeal (u.transitionMapSucc i) (u.center i) * u.weakTransform hN i hi b hb =
      b.comap (u.transitionMapSucc i) := by
  have : AlgebraicGeometry.IsLocallyNoetherian (u.schemeAt (i + 1)) := hN (i + 1) hi
  have h := exceptionalIdeal_pow_mul_controlledTransform (u.transitionMapSucc i) (u.center i) b 1
    (u.isBlowupAlongIdealSheaf_blowupMorphism i hi) (le_pow_one_of_le hb)
  rw [pow_one] at h
  exact h

theorem weakTransform_unique {k : Type u} [Field k] {V : Scheme.{u}}
    {q : V ⟶ Spec (CommRingCat.of k)} {A : V.IdealSheafData} {μ : ℕ}
    {E : List V.IdealSheafData} (u : MarkedSequenceOfBlowups q A μ E)
    (hN : ∀ j : ℕ, j ≤ u.length → AlgebraicGeometry.IsLocallyNoetherian (u.schemeAt j))
    (i : ℕ) (hi : i < u.length) (b : (u.schemeAt i).IdealSheafData) (hb : b ≤ u.center i)
    (c : (u.schemeAt (i + 1)).IdealSheafData)
    (hc : Blowup.exceptionalIdeal (u.transitionMapSucc i) (u.center i) * c = b.comap (u.transitionMapSucc i)) :
    c = u.weakTransform hN i hi b hb := by
  have : AlgebraicGeometry.IsLocallyNoetherian (u.schemeAt (i + 1)) := hN (i + 1) hi
  have h : Blowup.exceptionalIdeal (u.transitionMapSucc i) (u.center i) ^ 1 * c = b.comap (u.transitionMapSucc i) := by
    rw [pow_one]; exact hc
  exact eq_controlledTransform_of_mul_eq_comap (u.transitionMapSucc i) (u.center i) b 1 (u.isBlowupAlongIdealSheaf_blowupMorphism i hi)
    (le_pow_one_of_le hb) c h

theorem weakTransform_le_maxContactIdeal {k : Type u} [Field k] [CharZero k]
    {V : Scheme.{u}} {q : V ⟶ Spec (CommRingCat.of k)} {A : V.IdealSheafData} {μ : ℕ}
    {E : List V.IdealSheafData} (hstep : MaxContactIdealComapLeControlled.{u})
    (u : MarkedSequenceOfBlowups q A μ E) (hμ : 1 ≤ μ)
    (hN : ∀ j : ℕ, j ≤ u.length → AlgebraicGeometry.IsLocallyNoetherian (u.schemeAt j))
    (i : ℕ) (hi : i < u.length)
    [AlgebraicGeometry.Smooth (u.projectionToBase i ≫ q)]
    [AlgebraicGeometry.LocallyOfFiniteType (u.projectionToBase i ≫ q)]
    [AlgebraicGeometry.Smooth (u.projectionToBase (i + 1) ≫ q)]
    [AlgebraicGeometry.LocallyOfFiniteType (u.projectionToBase (i + 1) ≫ q)]
    (b : (u.schemeAt i).IdealSheafData) (hb : b ≤ u.center i)
    (hbm : b ≤ maxContactIdeal k (u.projectionToBase i ≫ q) (u.ideal i) μ) :
    u.weakTransform hN i hi b hb ≤
      maxContactIdeal k (u.projectionToBase (i + 1) ≫ q) (u.ideal (i + 1)) μ := by
  have : AlgebraicGeometry.IsLocallyNoetherian (u.schemeAt (i + 1)) := hN (i + 1) hi
  have hassoc : u.transitionMapSucc i ≫ (u.projectionToBase i ≫ q) = u.projectionToBase (i + 1) ≫ q := by
    rw [← Category.assoc, ← SequenceOfBlowups.projectionToBase_succ]
  have : AlgebraicGeometry.Smooth (u.transitionMapSucc i ≫ (u.projectionToBase i ≫ q)) := by
    rw [hassoc]; infer_instance
  have : AlgebraicGeometry.LocallyOfFiniteType (u.transitionMapSucc i ≫ (u.projectionToBase i ≫ q)) := by
    rw [hassoc]; infer_instance
  have hAle : u.ideal i ≤ u.center i ^ μ :=
    le_pow_of_hasStrictNormalCrossingsWith (u.projectionToBase i ≫ q) (u.center i) (u.ideal i) (u.boundary i)
      (u.center_snc i hi) μ (u.center_order i hi)
  have hstep' := hstep k (u.schemeAt i) (u.schemeAt (i + 1)) (u.projectionToBase i ≫ q) (u.transitionMapSucc i)
    (u.center i) (u.boundary i) (u.center_snc i hi) (u.isBlowupAlongIdealSheaf_blowupMorphism i hi)
    (u.ideal i) μ hμ hAle (u.ideal (i + 1)) (u.ideal_succ i hi)
  have hM : maxContactIdeal k (u.transitionMapSucc i ≫ (u.projectionToBase i ≫ q)) (u.ideal (i + 1)) μ =
      maxContactIdeal k (u.projectionToBase (i + 1) ≫ q) (u.ideal (i + 1)) μ :=
    maxContactIdeal_congr _ _ hassoc _ _ rfl μ
  rw [hM] at hstep'
  have h1 : Blowup.exceptionalIdeal (u.transitionMapSucc i) (u.center i) * u.weakTransform hN i hi b hb =
      b.comap (u.transitionMapSucc i) := exceptionalIdeal_mul_weakTransform u hN i hi b hb
  have hF : Blowup.IsLocallyGeneratedByNonZeroDivisor (Blowup.exceptionalIdeal (u.transitionMapSucc i) (u.center i)) :=
    ((isSmoothDivisor_iff (u.transitionMapSucc i ≫ (u.projectionToBase i ≫ q)) _).1
      (isSmoothDivisor_exceptionalIdeal (u.center_snc i hi) (u.isBlowupAlongIdealSheaf_blowupMorphism i hi))).1
  refine hF.le_of_mul_le_mul ?_
  rw [h1]
  exact le_trans (Scheme.IdealSheafData.comap_mono (u.transitionMapSucc i) hbm) hstep'

end MarkedSequenceOfBlowups

private def strictTransformMaxContactIdeal {k : Type u} [Field k] {V : Scheme.{u}}
    {q : V ⟶ Spec (CommRingCat.of k)} [AlgebraicGeometry.LocallyOfFiniteType q]
    {A' : V.IdealSheafData} {μ : ℕ} {E' : List V.IdealSheafData}
    (u : MarkedSequenceOfBlowups q A' μ E')
    (hN : ∀ i : ℕ, i ≤ u.length → AlgebraicGeometry.IsLocallyNoetherian (u.schemeAt i)) :
    ∀ i : ℕ, (u.schemeAt i).IdealSheafData := fun i =>
  Nat.rec (motive := fun j => (u.schemeAt j).IdealSheafData)
    ((maxContactIdeal k q A' μ).comap u.isoZero.hom)
    (fun j cj =>
      if h : j + 1 ≤ u.length then
        @idealSheafColon (u.schemeAt (j + 1)) (hN (j + 1) h) (cj.comap (u.transitionMapSucc j))
          (Blowup.exceptionalIdeal (u.transitionMapSucc j) (u.center j))
      else ⊤) i

private theorem strictTransformMaxContactIdeal_succ {k : Type u} [Field k] {V : Scheme.{u}}
    {q : V ⟶ Spec (CommRingCat.of k)} [AlgebraicGeometry.LocallyOfFiniteType q]
    {A' : V.IdealSheafData} {μ : ℕ} {E' : List V.IdealSheafData}
    (u : MarkedSequenceOfBlowups q A' μ E')
    (hN : ∀ i : ℕ, i ≤ u.length → AlgebraicGeometry.IsLocallyNoetherian (u.schemeAt i)) (i : ℕ) :
    strictTransformMaxContactIdeal u hN (i + 1) =
      if h : i + 1 ≤ u.length then
        @idealSheafColon (u.schemeAt (i + 1)) (hN (i + 1) h)
          ((strictTransformMaxContactIdeal u hN i).comap (u.transitionMapSucc i))
          (Blowup.exceptionalIdeal (u.transitionMapSucc i) (u.center i))
      else ⊤ := rfl

private def maxContactIdealAt {k : Type u} [Field k] {V : Scheme.{u}}
    {q : V ⟶ Spec (CommRingCat.of k)} [AlgebraicGeometry.Smooth q]
    {A' : V.IdealSheafData} {μ : ℕ} {E' : List V.IdealSheafData}
    (u : MarkedSequenceOfBlowups q A' μ E') (i : ℕ) (hi : i ≤ u.length) : (u.schemeAt i).IdealSheafData :=
  haveI := smooth_projectionToBase_comp u i hi
  maxContactIdeal k (u.projectionToBase i ≫ q) (u.ideal i) μ

theorem existsMaxContactControlledTransforms_of_comapLeControlled (h : MaxContactIdealComapLeControlled.{u}) :
    ExistsMaxContactControlledTransforms.{u} := by
  intro k _ _ V q _ _ A' μ hμ E' u hN hcen
  have sm : ∀ i : ℕ, i ≤ u.length → AlgebraicGeometry.Smooth (u.projectionToBase i ≫ q) :=
    fun i hi => smooth_projectionToBase_comp u i hi
  have hcart : ∀ i : ℕ, i < u.length →
      Blowup.IsLocallyGeneratedByNonZeroDivisor (Blowup.exceptionalIdeal (u.transitionMapSucc i) (u.center i)) := by
    intro i hi
    have := sm i hi.le
    exact ((isSmoothDivisor_iff (u.transitionMapSucc i ≫ (u.projectionToBase i ≫ q)) _).1
      (isSmoothDivisor_exceptionalIdeal (u.center_snc i hi) (u.isBlowupAlongIdealSheaf_blowupMorphism i hi))).1
  have hcen' : ∀ i : ℕ, (hi : i < u.length) →
      strictTransformMaxContactIdeal u hN i ≤ maxContactIdealAt u i hi.le → strictTransformMaxContactIdeal u hN i ≤ u.center i := by
    intro i hi hM
    have := sm i hi.le
    refine hcen i hi (strictTransformMaxContactIdeal u hN i) ?_
    have h1 : (((u.center i).support : Set ↥(u.schemeAt i))) ⊆ orderAtLeastLocus (u.ideal i) μ :=
      u.center_order i hi
    have h2 : (((maxContactIdealAt u i hi.le).support : Set ↥(u.schemeAt i))) = orderAtLeastLocus (u.ideal i) μ := by
      show (((maxContactIdeal k (u.projectionToBase i ≫ q) (u.ideal i) μ).support :
        Set ↥(u.schemeAt i))) = _
      rw [maxContactIdeal_eq_derivIdealSheafIterate]
      exact support_derivIdealSheafIterate_eq_orderAtLeastLocus k (u.projectionToBase i ≫ q) (u.ideal i) hμ
    have h3 : (((maxContactIdealAt u i hi.le).support : Set ↥(u.schemeAt i))) ⊆
        (((strictTransformMaxContactIdeal u hN i).support : Set ↥(u.schemeAt i))) := by
      exact_mod_cast Scheme.IdealSheafData.support_antitone hM
    rw [h2] at h3
    exact fun x hx => h3 (h1 hx)
  have heq' : ∀ i : ℕ, i < u.length → strictTransformMaxContactIdeal u hN i ≤ u.center i →
      Blowup.exceptionalIdeal (u.transitionMapSucc i) (u.center i) * strictTransformMaxContactIdeal u hN (i + 1) =
        (strictTransformMaxContactIdeal u hN i).comap (u.transitionMapSucc i) := by
    intro i hi hb
    have hi' : i + 1 ≤ u.length := hi
    have : AlgebraicGeometry.IsLocallyNoetherian (u.schemeAt (i + 1)) := hN (i + 1) hi'
    have hI : (strictTransformMaxContactIdeal u hN i).comap (u.transitionMapSucc i) ≤
        Blowup.exceptionalIdeal (u.transitionMapSucc i) (u.center i) ^ 1 :=
      comap_le_exceptionalIdeal_pow (u.transitionMapSucc i) (le_pow_one_of_le hb)
    rw [pow_one] at hI
    have hc : strictTransformMaxContactIdeal u hN (i + 1) =
        @idealSheafColon (u.schemeAt (i + 1)) (hN (i + 1) hi')
          ((strictTransformMaxContactIdeal u hN i).comap (u.transitionMapSucc i))
          (Blowup.exceptionalIdeal (u.transitionMapSucc i) (u.center i)) := by
      rw [strictTransformMaxContactIdeal_succ, dite_eq_left hi']
    rw [hc]
    exact (hcart i hi).mul_idealSheafColon hI
  have main : ∀ i : ℕ, (hi : i ≤ u.length) → strictTransformMaxContactIdeal u hN i ≤ maxContactIdealAt u i hi := by
    intro i
    induction i with
    | zero =>
      intro hi
      have := sm 0 hi
      have : AlgebraicGeometry.Smooth u.isoZero.hom := inferInstance
      have : AlgebraicGeometry.Smooth (u.isoZero.hom ≫ q) := inferInstance
      show strictTransformMaxContactIdeal u hN 0 ≤ maxContactIdeal k (u.projectionToBase 0 ≫ q) (u.ideal 0) μ
      have e1 : maxContactIdeal k (u.projectionToBase 0 ≫ q) (u.ideal 0) μ =
          maxContactIdeal k (u.isoZero.hom ≫ q) (A'.comap u.isoZero.hom) μ :=
        maxContactIdeal_congr _ _ (by rw [SequenceOfBlowups.projectionToBase_zero]) _ _ u.ideal_zero μ
      have e2 : maxContactIdeal k (u.isoZero.hom ≫ q) (A'.comap u.isoZero.hom) μ =
          (maxContactIdeal k q A' μ).comap u.isoZero.hom := by
        simp only [maxContactIdeal_eq_derivIdealSheafIterate]
        exact derivIdealSheafIterate_comap k q u.isoZero.hom (μ - 1) A'
      rw [e1, e2]
      exact le_rfl
    | succ j ih =>
      intro hj1
      have hj : j < u.length := hj1
      have ihj := ih hj.le
      have hb := hcen' j hj ihj
      have hw : strictTransformMaxContactIdeal u hN (j + 1) = u.weakTransform hN j hj (strictTransformMaxContactIdeal u hN j) hb :=
        MarkedSequenceOfBlowups.weakTransform_unique u hN j hj (strictTransformMaxContactIdeal u hN j) hb
          (strictTransformMaxContactIdeal u hN (j + 1)) (heq' j hj hb)
      have := sm j hj.le
      have := sm (j + 1) hj1
      rw [hw]
      exact MarkedSequenceOfBlowups.weakTransform_le_maxContactIdeal h u hμ hN j hj
        (strictTransformMaxContactIdeal u hN j) hb ihj
  exact ⟨strictTransformMaxContactIdeal u hN, rfl, fun i hi => heq' i hi (hcen' i hi (main i hi.le)),
    fun i hi => hcen' i hi (main i hi.le)⟩

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.WeakTransform =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.BlowupChartCongruence =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.BlowupChartCongruence", "h": "module\n\npublic import Development.ResolutionOfSingularities.Foundations.Blowup.AffineBlowupChartPreimages\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.QuasiAffine\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry TopologicalSpace

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

universe u

section

variable {B A : Type u} [CommRing B] [CommRing A]

def eqModIdealSet (f g : B →+* A) (J : Ideal A) : Set B := {b | f b - g b ∈ J}

theorem one_mem_eqModIdealSet (f g : B →+* A) (J : Ideal A) :
    (1 : B) ∈ eqModIdealSet f g J := by
  show f 1 - g 1 ∈ J
  rw [map_one, map_one, sub_self]
  exact J.zero_mem

theorem zero_mem_eqModIdealSet (f g : B →+* A) (J : Ideal A) :
    (0 : B) ∈ eqModIdealSet f g J := by
  show f 0 - g 0 ∈ J
  rw [map_zero, map_zero, sub_self]
  exact J.zero_mem

theorem add_mem_eqModIdealSet (f g : B →+* A) (J : Ideal A) {x y : B}
    (hx : x ∈ eqModIdealSet f g J) (hy : y ∈ eqModIdealSet f g J) : x + y ∈ eqModIdealSet f g J := by
  show f (x + y) - g (x + y) ∈ J
  rw [map_add (f := _), map_add (f := _)]
  have hrw : f x + f y - (g x + g y) = (f x - g x) + (f y - g y) := by ring
  rw [hrw]
  exact J.add_mem hx hy

theorem neg_mem_eqModIdealSet (f g : B →+* A) (J : Ideal A) {x : B}
    (hx : x ∈ eqModIdealSet f g J) : -x ∈ eqModIdealSet f g J := by
  show f (-x) - g (-x) ∈ J
  rw [map_neg, map_neg]
  have hrw : -f x - -g x = -(f x - g x) := by ring
  rw [hrw]
  exact J.neg_mem hx

theorem mul_mem_eqModIdealSet (f g : B →+* A) (J : Ideal A) {x y : B}
    (hx : x ∈ eqModIdealSet f g J) (hy : y ∈ eqModIdealSet f g J) : x * y ∈ eqModIdealSet f g J := by
  show f (x * y) - g (x * y) ∈ J
  rw [map_mul, map_mul]
  have hrw : f x * f y - g x * g y = f x * (f y - g y) + (f x - g x) * g y := by ring
  rw [hrw]
  exact J.add_mem (J.mul_mem_left _ hy) (J.mul_mem_right _ hx)

def eqModIdealSubring (f g : B →+* A) (J : Ideal A) : Subring B where
  carrier := eqModIdealSet f g J
  one_mem' := one_mem_eqModIdealSet f g J
  zero_mem' := zero_mem_eqModIdealSet f g J
  add_mem' := add_mem_eqModIdealSet f g J
  neg_mem' := neg_mem_eqModIdealSet f g J
  mul_mem' := mul_mem_eqModIdealSet f g J

theorem sub_mem_ideal_of_subring_closure_eq_top (f g : B →+* A) (J : Ideal A) (S : Set B)
    (hS : Subring.closure S = ⊤) (hmem : ∀ b ∈ S, f b - g b ∈ J) (b : B) :
    f b - g b ∈ J := by
  have hsub : Subring.closure S ≤ eqModIdealSubring f g J :=
    Subring.closure_le.mpr (fun x hx => hmem x hx)
  rw [hS] at hsub
  exact hsub (Subring.mem_top b)

end

private theorem eq_mul_pow_zero {M : Type u} [CommRing M] (x c : M) : x = x * c ^ 0 := by ring

private theorem mul_add_mul_eq_add_mul {M : Type u} [CommRing M] (x y c : M) :
    x * c + y * c = (x + y) * c := by ring

private theorem self_sub_self_eq_zero {M : Type u} [CommRing M] (x : M) : x - x = 0 := by ring

private theorem localization_mk_eq_mk_one_of_eq_mul {M : Type u} [CommMonoid M] {S : Submonoid M}
    (x y d : M) (hd : d ∈ S) (h : x = d * y) :
    Localization.mk x ⟨d, hd⟩ = Localization.mk y (1 : ↥S) := by
  rw [Localization.mk_eq_mk_iff]
  refine Localization.r_of_eq ?_
  simp [h]

section

variable {R : Type u} [CommRing R]

private theorem val_chartRingHom (I : Ideal R) (a : I) (t : R) :
    HomogeneousLocalization.val (Blowup.chartRingHom I a t)
      = Localization.mk (↑(Blowup.reesDegreeZeroEquiv I t) : ↥(reesAlgebra I))
          (1 : ↥(Submonoid.powers (Blowup.reesGenerator I a))) := by
  rw [Blowup.chartRingHom_apply]
  rfl

private theorem exists_pow_mul_eq (I : Ideal R) (a : I)
    (z : HomogeneousLocalization.Away (Blowup.reesGrading I) (Blowup.reesGenerator I a)) :
    ∃ (n : ℕ) (r : R), r ∈ I ^ n ∧
      z * Blowup.chartRingHom I a (a : R) ^ n = Blowup.chartRingHom I a r := by
  obtain ⟨m, hm⟩ := HomogeneousLocalization.den_mem z
  have hden : HomogeneousLocalization.den z = Blowup.reesGenerator I a ^ m := hm.symm
  have hdencoe : ((HomogeneousLocalization.den z : ↥(reesAlgebra I)) : Polynomial R)
      = Polynomial.monomial m ((a : R) ^ m) := by
    rw [hden, SubmonoidClass.coe_pow, Blowup.reesGenerator_coe, Polynomial.monomial_pow, one_mul]
  have hpow : (Blowup.chartRingHom I a) ((a : R) ^ m) = (Blowup.chartRingHom I a) (a : R) ^ m :=
    map_pow (Blowup.chartRingHom I a) (a : R) m
  by_cases hdeg : HomogeneousLocalization.deg z = m
  · have hnum : HomogeneousLocalization.num z ∈ Blowup.reesGrading I m := by
      rw [← hdeg]
      exact HomogeneousLocalization.num_mem_deg z
    obtain ⟨s, hs, hseq⟩ :=
      (Blowup.mem_reesGrading_iff_monomial I m (HomogeneousLocalization.num z)).mp hnum
    refine ⟨m, s, hs, ?_⟩
    have key : (HomogeneousLocalization.num z)
          * (↑(Blowup.reesDegreeZeroEquiv I ((a : R) ^ m)) : ↥(reesAlgebra I))
        = (HomogeneousLocalization.den z) * (↑(Blowup.reesDegreeZeroEquiv I s) : ↥(reesAlgebra I)) := by
      apply Subtype.ext
      simp only [MulMemClass.coe_mul, hseq, hdencoe, Blowup.reesDegreeZeroEquiv_coe_coe]
      rw [mul_comm (Polynomial.monomial m s) (Polynomial.C ((a : R) ^ m)),
        Polynomial.C_mul_monomial,
        mul_comm (Polynomial.monomial m ((a : R) ^ m)) (Polynomial.C s),
        Polynomial.C_mul_monomial, mul_comm ((a : R) ^ m) s]
    rw [← hpow]
    apply HomogeneousLocalization.val_injective (Submonoid.powers (Blowup.reesGenerator I a))
    rw [HomogeneousLocalization.val_mul, val_chartRingHom, val_chartRingHom,
      HomogeneousLocalization.eq_num_div_den z, Localization.mk_mul, mul_one]
    exact localization_mk_eq_mk_one_of_eq_mul _ _ _ _ key
  · have hzero : (a : R) ^ m = 0 := by
      have h1 := (Blowup.mem_reesGrading_iff_coeff I (HomogeneousLocalization.deg z)
        (HomogeneousLocalization.den z)).mp (HomogeneousLocalization.den_mem_deg z) m
        (fun h => hdeg h.symm)
      rw [hdencoe] at h1
      simpa using h1
    refine ⟨m, 0, Ideal.zero_mem _, ?_⟩
    rw [← hpow, hzero, map_zero]
    exact mul_zero z

private theorem exists_mem_closure_chartRingHom_eq_mul_pow (I : Ideal R) (a : I) (n : ℕ) :
    ∀ r ∈ I ^ n, ∃ w ∈ Subring.closure
        (Set.range ⇑(Blowup.chartRingHom I a) ∪ Set.range (Blowup.chartFraction I a)),
      Blowup.chartRingHom I a r = w * Blowup.chartRingHom I a (a : R) ^ n := by
  induction n with
  | zero =>
    intro r _
    refine ⟨Blowup.chartRingHom I a r, Subring.subset_closure (Or.inl ⟨r, rfl⟩), ?_⟩
    exact eq_mul_pow_zero (M := HomogeneousLocalization.Away (Blowup.reesGrading I) (Blowup.reesGenerator I a)) _ _
  | succ n ih =>
    intro r hr
    rw [pow_succ] at hr
    refine Submodule.mul_induction_on hr ?_ ?_
    · intro s hs b hb
      obtain ⟨w, hw, hweq⟩ := ih s hs
      have hbb : Blowup.chartRingHom I a b
          = Blowup.chartFraction I a ⟨b, hb⟩ * Blowup.chartRingHom I a (a : R) :=
        Blowup.chartRingHom_coe_eq_chartFraction_mul I a ⟨b, hb⟩
      refine ⟨w * Blowup.chartFraction I a ⟨b, hb⟩,
        Subring.mul_mem _ hw (Subring.subset_closure (Or.inr ⟨⟨b, hb⟩, rfl⟩)), ?_⟩
      rw [map_mul, hweq, hbb]
      ring
    · rintro x y ⟨wx, hwx, hx⟩ ⟨wy, hwy, hy⟩
      refine ⟨wx + wy, Subring.add_mem _ hwx hwy, ?_⟩
      rw [map_add (f := _), hx, hy]
      exact mul_add_mul_eq_add_mul wx wy _

theorem closure_chartRingHom_union_chartFraction_eq_top (I : Ideal R) (a : I) :
    Subring.closure
        (Set.range ⇑(Blowup.chartRingHom I a) ∪ Set.range (Blowup.chartFraction I a)) = ⊤ := by
  rw [Subring.eq_top_iff']
  intro z
  obtain ⟨n, r, hr, hz⟩ := exists_pow_mul_eq I a z
  obtain ⟨w, hw, hweq⟩ := exists_mem_closure_chartRingHom_eq_mul_pow I a n r hr
  have e1 : (z - w) * Blowup.chartRingHom I a (a : R) ^ n
      = z * Blowup.chartRingHom I a (a : R) ^ n - w * Blowup.chartRingHom I a (a : R) ^ n :=
    sub_mul z w _
  have h0 : (z - w) * Blowup.chartRingHom I a (a : R) ^ n = 0 := by
    rw [e1, hz, ← hweq]
    exact self_sub_self_eq_zero
      (M := HomogeneousLocalization.Away (Blowup.reesGrading I) (Blowup.reesGenerator I a)) _
  have hnzd : Blowup.chartRingHom I a (a : R) ^ n
      ∈ nonZeroDivisors (HomogeneousLocalization.Away (Blowup.reesGrading I) (Blowup.reesGenerator I a)) :=
    pow_mem (Blowup.chartRingHom_mem_nonZeroDivisors I a) n
  have hzw : z - w = 0 := (mem_nonZeroDivisors_iff.mp hnzd).2 _ h0
  have hzeq : z = w := sub_eq_zero.mp hzw
  rw [hzeq]
  exact hw

theorem chartFraction_sub_mem_of_congr {A : Type u} [CommRing A] (I : Ideal R) (a : I)
    (φ φ' : HomogeneousLocalization.Away (Blowup.reesGrading I) (Blowup.reesGenerator I a) →+* A)
    (σ σ' : R →+* A) (𝔟 : Ideal A)
    (hφ : ∀ r : R, φ (Blowup.chartRingHom I a r) = σ r)
    (hφ' : ∀ r : R, φ' (Blowup.chartRingHom I a r) = σ' r)
    (hcongr : ∀ r : R, σ r - σ' r ∈ Ideal.span {σ (a : R)} * 𝔟)
    (hnzd : σ (a : R) ∈ nonZeroDivisors A)
    (u : A) (hu : σ' (a : R) = u * σ (a : R)) (b : I) :
    φ (Blowup.chartFraction I a b) - φ' (Blowup.chartFraction I a b) ∈ 𝔟 := by
  obtain ⟨c, hc, hcEq⟩ := Ideal.mem_span_singleton_mul.mp (hcongr (a : R))
  obtain ⟨d, hd, hdEq⟩ := Ideal.mem_span_singleton_mul.mp (hcongr (b : R))
  have hone : (1 : A) - u ∈ 𝔟 := by
    have h1 : σ (a : R) - σ' (a : R) = σ (a : R) * c := hcEq.symm
    rw [hu] at h1
    have h0 : ((1 : A) - u - c) * σ (a : R) = 0 := by linear_combination h1
    have h2 := (mem_nonZeroDivisors_iff.mp hnzd).2 _ h0
    have h3 : (1 : A) - u = c := by linear_combination h2
    rw [h3]
    exact hc
  have hb1 : σ (b : R) = φ (Blowup.chartFraction I a b) * σ (a : R) := by
    rw [← hφ (b : R), ← hφ (a : R), ← map_mul, Blowup.chartRingHom_coe_eq_chartFraction_mul I a b]
  have hb2 : σ' (b : R) = φ' (Blowup.chartFraction I a b) * σ' (a : R) := by
    rw [← hφ' (b : R), ← hφ' (a : R), ← map_mul, Blowup.chartRingHom_coe_eq_chartFraction_mul I a b]
  have h2 : σ (b : R) - σ' (b : R) = σ (a : R) * d := hdEq.symm
  rw [hb1, hb2, hu] at h2
  have h0 : (φ (Blowup.chartFraction I a b) - u * φ' (Blowup.chartFraction I a b) - d) * σ (a : R) = 0 := by
    linear_combination h2
  have h3 := (mem_nonZeroDivisors_iff.mp hnzd).2 _ h0
  have hfin : φ (Blowup.chartFraction I a b) - φ' (Blowup.chartFraction I a b)
      = d - (1 - u) * φ' (Blowup.chartFraction I a b) := by linear_combination h3
  rw [hfin]
  exact 𝔟.sub_mem hd (𝔟.mul_mem_right _ hone)

end

section

variable {R : Type u} [CommRing R]

private theorem sectionsRingHom_comp {A : Type u} [CommRing A] {Z W : Scheme.{u}} (p : Z ⟶ W)
    (ρ : W ⟶ Spec (CommRingCat.of A)) (V : W.Opens) (V' : Z.Opens)
    (hle : V' ≤ (Opens.map p.base).obj V) (r : A) :
    Blowup.sectionsRingHom (p ≫ ρ) V' r
      = (CommRingCat.Hom.hom (Scheme.Hom.appLE p V V' hle)) (Blowup.sectionsRingHom ρ V r) := by
  rw [Blowup.sectionsRingHom_apply, Blowup.sectionsRingHom_apply]
  conv_rhs => rw [← CommRingCat.comp_apply, Scheme.Hom.appLE_comp_appLE]

private theorem mem_ideal_of_app_subschemeι_eq_zero {W : Scheme.{u}} (𝔞 : W.IdealSheafData) (V : W.affineOpens)
    (x : ↥(W.presheaf.obj (Opposite.op (V : W.Opens))))
    (hx : (CommRingCat.Hom.hom (Scheme.Hom.app 𝔞.subschemeι (V : W.Opens))) x = 0) :
    x ∈ 𝔞.ideal V := by
  rw [Scheme.IdealSheafData.subschemeι_app 𝔞 V, CommRingCat.comp_apply] at hx
  have h2 := congrArg (CommRingCat.Hom.hom (𝔞.subschemeObjIso V).hom) hx
  rw [← CommRingCat.comp_apply, Iso.inv_hom_id] at h2
  simpa [Ideal.Quotient.eq_zero_iff_mem] using h2

private theorem app_subschemeι_eq_zero_of_mem_ideal {W : Scheme.{u}} (𝔞 : W.IdealSheafData)
    (V : W.affineOpens) {x : ↥(W.presheaf.obj (Opposite.op (V : W.Opens)))}
    (hx : x ∈ 𝔞.ideal V) :
    (CommRingCat.Hom.hom (Scheme.Hom.app 𝔞.subschemeι (V : W.Opens))) x = 0 := by
  rw [Scheme.IdealSheafData.subschemeι_app 𝔞 V, CommRingCat.comp_apply]
  simp [Ideal.Quotient.eq_zero_iff_mem.mpr hx]

private theorem appLE_top_top {X Y : Scheme.{u}} (f : X ⟶ Y)
    (e : (⊤ : X.Opens) ≤ (Opens.map f.base).obj ⊤) :
    Scheme.Hom.appLE f ⊤ ⊤ e = Scheme.Hom.appTop f :=
  Scheme.Hom.appLE_eq_app (f := f)

private theorem appLE_congr_hom {X Y : Scheme.{u}} {f g : X ⟶ Y} (hfg : f = g)
    (U : Y.Opens) (V : X.Opens) (e : V ≤ (Opens.map f.base).obj U)
    (e' : V ≤ (Opens.map g.base).obj U) :
    Scheme.Hom.appLE f U V e = Scheme.Hom.appLE g U V e' := by
  subst hfg
  rfl

theorem sectionsRingHom_sub_mem_ideal {A : Type u} [CommRing A] {W : Scheme.{u}}
    (ρ ρ' : W ⟶ Spec (CommRingCat.of A)) (𝔞 : W.IdealSheafData)
    (hagree : 𝔞.subschemeι ≫ ρ = 𝔞.subschemeι ≫ ρ')
    (V : W.affineOpens) (r : A) :
    Blowup.sectionsRingHom ρ (V : W.Opens) r - Blowup.sectionsRingHom ρ' (V : W.Opens) r ∈ 𝔞.ideal V := by
  apply mem_ideal_of_app_subschemeι_eq_zero
  have h1 : Blowup.sectionsRingHom (𝔞.subschemeι ≫ ρ)
        ((Opens.map 𝔞.subschemeι.base).obj (V : W.Opens)) r
      = Blowup.sectionsRingHom (𝔞.subschemeι ≫ ρ')
        ((Opens.map 𝔞.subschemeι.base).obj (V : W.Opens)) r := by
    rw [hagree]
  rw [sectionsRingHom_comp 𝔞.subschemeι ρ (V : W.Opens) _ le_rfl r,
    sectionsRingHom_comp 𝔞.subschemeι ρ' (V : W.Opens) _ le_rfl r] at h1
  rw [Scheme.Hom.app_eq_appLE, map_sub, h1]
  exact sub_self _

private theorem appTop_lift_affineBlowupChart_apply (I : Ideal R) {W : Scheme.{u}} (k : W ⟶ Blowup.affineBlowup I) (a : I)
    {T : Scheme.{u}} (p : T ⟶ W) (V : W.Opens)
    (hk : V ≤ (Opens.map k.base).obj
      ((Scheme.Hom.opensFunctor (Blowup.affineBlowupChart I a)).obj ⊤))
    (hψ : (⊤ : T.Opens) ≤ (Opens.map p.base).obj V)
    (hrange : Set.range ⇑(p ≫ k).base ⊆ Set.range ⇑(Blowup.affineBlowupChart I a).base)
    (z : HomogeneousLocalization.Away (Blowup.reesGrading I) (Blowup.reesGenerator I a)) :
    (CommRingCat.Hom.hom (Scheme.Hom.appTop
        (IsOpenImmersion.lift (Blowup.affineBlowupChart I a) (p ≫ k) hrange)))
      ((CommRingCat.Hom.hom (Scheme.ΓSpecIso
        (CommRingCat.of (HomogeneousLocalization.Away (Blowup.reesGrading I) (Blowup.reesGenerator I a)))).inv) z)
      = (CommRingCat.Hom.hom (Scheme.Hom.appLE p V ⊤ hψ))
          (Blowup.chartSectionsRingHom I k a V hk z) := by
  have hchartle : (⊤ : (Spec (CommRingCat.of
        (HomogeneousLocalization.Away (Blowup.reesGrading I) (Blowup.reesGenerator I a)))).Opens)
      ≤ (Opens.map (Blowup.affineBlowupChart I a).base).obj
        ((Scheme.Hom.opensFunctor (Blowup.affineBlowupChart I a)).obj ⊤) :=
    fun x _ => ⟨x, trivial, rfl⟩
  have hsec : (CommRingCat.Hom.hom (Scheme.Hom.appLE (Blowup.affineBlowupChart I a)
        ((Scheme.Hom.opensFunctor (Blowup.affineBlowupChart I a)).obj ⊤) ⊤ hchartle))
        ((CommRingCat.Hom.hom (Blowup.chartSectionsIso I a).hom) z)
      = (CommRingCat.Hom.hom (Scheme.ΓSpecIso (CommRingCat.of
          (HomogeneousLocalization.Away (Blowup.reesGrading I) (Blowup.reesGenerator I a)))).inv) z := by
    rw [Blowup.chartSectionsIso_hom_apply, ← CommRingCat.comp_apply,
      show Scheme.Hom.appLE (Blowup.affineBlowupChart I a)
          ((Scheme.Hom.opensFunctor (Blowup.affineBlowupChart I a)).obj ⊤) ⊤ hchartle
        = (Scheme.Hom.appIso (Blowup.affineBlowupChart I a) ⊤).hom from
          (Scheme.Hom.appIso_hom' (Blowup.affineBlowupChart I a) ⊤).symm,
      Iso.inv_hom_id, CommRingCat.id_apply]
  have hlift := IsOpenImmersion.lift_fac (Blowup.affineBlowupChart I a) (p ≫ k) hrange
  have etop : (⊤ : T.Opens)
      ≤ (Opens.map (IsOpenImmersion.lift (Blowup.affineBlowupChart I a) (p ≫ k) hrange).base).obj ⊤ := by
    simp
  have hmain : Scheme.Hom.appLE (Blowup.affineBlowupChart I a)
        ((Scheme.Hom.opensFunctor (Blowup.affineBlowupChart I a)).obj ⊤) ⊤ hchartle
        ≫ Scheme.Hom.appLE (IsOpenImmersion.lift (Blowup.affineBlowupChart I a) (p ≫ k) hrange) ⊤ ⊤ etop
      = Scheme.Hom.appLE k ((Scheme.Hom.opensFunctor (Blowup.affineBlowupChart I a)).obj ⊤) V hk
        ≫ Scheme.Hom.appLE p V ⊤ hψ := by
    rw [Scheme.Hom.appLE_comp_appLE, Scheme.Hom.appLE_comp_appLE]
    exact appLE_congr_hom hlift _ _ _ _
  rw [appLE_top_top _ etop] at hmain
  have happ := congrArg (fun m : _ ⟶ _ =>
      (CommRingCat.Hom.hom m) ((CommRingCat.Hom.hom (Blowup.chartSectionsIso I a).hom) z)) hmain
  simp only [CommRingCat.comp_apply] at happ
  rw [hsec, ← Blowup.chartSectionsRingHom_apply] at happ
  exact happ

theorem comp_eq_of_chartSectionsRingHom_sub_mem (I : Ideal R) {W : Scheme.{u}}
    (h h' : W ⟶ Blowup.affineBlowup I) (a : I) (𝔟 : W.IdealSheafData) (V : W.affineOpens)
    (hV : (V : W.Opens) ≤ (Opens.map h.base).obj
      ((Scheme.Hom.opensFunctor (Blowup.affineBlowupChart I a)).obj ⊤))
    (hV' : (V : W.Opens) ≤ (Opens.map h'.base).obj
      ((Scheme.Hom.opensFunctor (Blowup.affineBlowupChart I a)).obj ⊤))
    (hcongr : ∀ z : HomogeneousLocalization.Away (Blowup.reesGrading I) (Blowup.reesGenerator I a),
      Blowup.chartSectionsRingHom I h a (V : W.Opens) hV z - Blowup.chartSectionsRingHom I h' a (V : W.Opens) hV' z
        ∈ 𝔟.ideal V) :
    Scheme.Opens.ι ((Opens.map 𝔟.subschemeι.base).obj (V : W.Opens)) ≫ 𝔟.subschemeι ≫ h
      = Scheme.Opens.ι ((Opens.map 𝔟.subschemeι.base).obj (V : W.Opens)) ≫ 𝔟.subschemeι ≫ h' := by
  rw [← Category.assoc, ← Category.assoc]
  have hψ : (⊤ : (Scheme.Opens.toScheme
        ((Opens.map 𝔟.subschemeι.base).obj (V : W.Opens))).Opens)
      ≤ (Opens.map (Scheme.Opens.ι ((Opens.map 𝔟.subschemeι.base).obj (V : W.Opens))
            ≫ 𝔟.subschemeι).base).obj (V : W.Opens) := by
    intro x _
    simp
  have hι : (⊤ : (Scheme.Opens.toScheme
        ((Opens.map 𝔟.subschemeι.base).obj (V : W.Opens))).Opens)
      ≤ (Opens.map (Scheme.Opens.ι
          ((Opens.map 𝔟.subschemeι.base).obj (V : W.Opens))).base).obj
        ((Opens.map 𝔟.subschemeι.base).obj (V : W.Opens)) := by
    intro x _
    simp
  have hrange : ∀ (k : W ⟶ Blowup.affineBlowup I),
      (V : W.Opens) ≤ (Opens.map k.base).obj
        ((Scheme.Hom.opensFunctor (Blowup.affineBlowupChart I a)).obj ⊤) →
      Set.range ⇑((Scheme.Opens.ι ((Opens.map 𝔟.subschemeι.base).obj (V : W.Opens))
          ≫ 𝔟.subschemeι) ≫ k).base ⊆ Set.range ⇑(Blowup.affineBlowupChart I a).base := by
    intro k hk
    rintro y ⟨x, rfl⟩
    have h3 : k.base (𝔟.subschemeι.base x.1)
        ∈ Scheme.Hom.opensRange (Blowup.affineBlowupChart I a) := by
      rw [← Scheme.Hom.image_top_eq_opensRange]
      exact hk x.2
    obtain ⟨q, hq⟩ := h3
    exact ⟨q, hq⟩
  have hkill : ∀ x ∈ 𝔟.ideal V,
      (CommRingCat.Hom.hom (Scheme.Hom.appLE
        (Scheme.Opens.ι ((Opens.map 𝔟.subschemeι.base).obj (V : W.Opens)) ≫ 𝔟.subschemeι)
        (V : W.Opens) ⊤ hψ)) x = 0 := by
    intro x hx
    have hcomp : Scheme.Hom.appLE 𝔟.subschemeι (V : W.Opens)
          ((Opens.map 𝔟.subschemeι.base).obj (V : W.Opens)) le_rfl
        ≫ Scheme.Hom.appLE (Scheme.Opens.ι
            ((Opens.map 𝔟.subschemeι.base).obj (V : W.Opens)))
            ((Opens.map 𝔟.subschemeι.base).obj (V : W.Opens)) ⊤ hι
        = Scheme.Hom.appLE (Scheme.Opens.ι
            ((Opens.map 𝔟.subschemeι.base).obj (V : W.Opens)) ≫ 𝔟.subschemeι)
            (V : W.Opens) ⊤ hψ := by
      rw [Scheme.Hom.appLE_comp_appLE]
    have h2 := congrArg (fun m : _ ⟶ _ => (CommRingCat.Hom.hom m) x) hcomp
    simp only [CommRingCat.comp_apply] at h2
    rw [Scheme.Hom.appLE_eq_app, app_subschemeι_eq_zero_of_mem_ideal 𝔟 V hx, map_zero] at h2
    exact h2.symm
  have happ : Scheme.Hom.appTop (IsOpenImmersion.lift (Blowup.affineBlowupChart I a) _ (hrange h hV))
      = Scheme.Hom.appTop (IsOpenImmersion.lift (Blowup.affineBlowupChart I a) _ (hrange h' hV')) := by
    apply CommRingCat.hom_ext
    apply RingHom.ext
    intro y
    have hy : (CommRingCat.Hom.hom (Scheme.ΓSpecIso (CommRingCat.of
          (HomogeneousLocalization.Away (Blowup.reesGrading I) (Blowup.reesGenerator I a)))).inv)
        ((CommRingCat.Hom.hom (Scheme.ΓSpecIso (CommRingCat.of
          (HomogeneousLocalization.Away (Blowup.reesGrading I) (Blowup.reesGenerator I a)))).hom) y) = y := by
      rw [← CommRingCat.comp_apply, Iso.hom_inv_id, CommRingCat.id_apply]
    obtain ⟨z, rfl⟩ : ∃ z, (CommRingCat.Hom.hom (Scheme.ΓSpecIso (CommRingCat.of
        (HomogeneousLocalization.Away (Blowup.reesGrading I) (Blowup.reesGenerator I a)))).inv) z = y :=
      ⟨_, hy⟩
    rw [appTop_lift_affineBlowupChart_apply I h a (Scheme.Opens.ι ((Opens.map 𝔟.subschemeι.base).obj (V : W.Opens))
        ≫ 𝔟.subschemeι) (V : W.Opens) hV hψ (hrange h hV) z,
      appTop_lift_affineBlowupChart_apply I h' a (Scheme.Opens.ι ((Opens.map 𝔟.subschemeι.base).obj (V : W.Opens))
        ≫ 𝔟.subschemeι) (V : W.Opens) hV' hψ (hrange h' hV') z]
    have hz := hkill _ (hcongr z)
    rw [map_sub] at hz
    exact sub_eq_zero.mp hz
  have hfin : IsOpenImmersion.lift (Blowup.affineBlowupChart I a) _ (hrange h hV)
      = IsOpenImmersion.lift (Blowup.affineBlowupChart I a) _ (hrange h' hV') := by
    have hcomp : IsOpenImmersion.lift (Blowup.affineBlowupChart I a) _ (hrange h hV)
          ≫ (Spec (CommRingCat.of
              (HomogeneousLocalization.Away (Blowup.reesGrading I) (Blowup.reesGenerator I a)))).toSpecΓ
        = IsOpenImmersion.lift (Blowup.affineBlowupChart I a) _ (hrange h' hV')
          ≫ (Spec (CommRingCat.of
              (HomogeneousLocalization.Away (Blowup.reesGrading I) (Blowup.reesGenerator I a)))).toSpecΓ := by
      rw [Scheme.toSpecΓ_naturality, Scheme.toSpecΓ_naturality, happ]
    exact (cancel_mono _).mp hcomp
  rw [← IsOpenImmersion.lift_fac (Blowup.affineBlowupChart I a) _ (hrange h hV),
    ← IsOpenImmersion.lift_fac (Blowup.affineBlowupChart I a) _ (hrange h' hV'), hfin]

private theorem sectionsRingHom_sub_mem_span_mul_of_agree (I : Ideal R) {W : Scheme.{u}}
    (ρ ρ' : W ⟶ Spec (CommRingCat.of R)) (𝔞 𝔟₁ : W.IdealSheafData) (V : W.affineOpens)
    (hagree : 𝔞.subschemeι ≫ ρ = 𝔞.subschemeι ≫ ρ')
    (hfac : (Blowup.specIdealSheaf I).comap ρ * 𝔟₁ = 𝔞)
    (s : ↥(W.presheaf.obj (Opposite.op (V : W.Opens))))
    (hspan : ((Blowup.specIdealSheaf I).comap ρ).ideal V = Ideal.span {s})
    (r : R) :
    Blowup.sectionsRingHom ρ (V : W.Opens) r - Blowup.sectionsRingHom ρ' (V : W.Opens) r
      ∈ Ideal.span {s} * 𝔟₁.ideal V := by
  have h1 := sectionsRingHom_sub_mem_ideal ρ ρ' 𝔞 hagree V r
  rw [← hfac] at h1
  rw [← hspan]
  exact h1

private theorem chartSectionsRingHom_sub_mem (I : Ideal R) {W : Scheme.{u}}
    (h h' : W ⟶ Blowup.affineBlowup I) (𝔟₁ : W.IdealSheafData) (a : I) (V : W.affineOpens)
    (hV : (V : W.Opens) ≤ (Opens.map h.base).obj
      ((Scheme.Hom.opensFunctor (Blowup.affineBlowupChart I a)).obj ⊤))
    (hV' : (V : W.Opens) ≤ (Opens.map h'.base).obj
      ((Scheme.Hom.opensFunctor (Blowup.affineBlowupChart I a)).obj ⊤))
    (hnzd : Blowup.sectionsRingHom (h ≫ Blowup.AffineBlowup.toSpec I) (V : W.Opens) (a : R)
      ∈ nonZeroDivisors ↥(W.presheaf.obj (Opposite.op (V : W.Opens))))
    (u : ↥(W.presheaf.obj (Opposite.op (V : W.Opens))))
    (hu : Blowup.sectionsRingHom (h' ≫ Blowup.AffineBlowup.toSpec I) (V : W.Opens) (a : R)
      = u * Blowup.sectionsRingHom (h ≫ Blowup.AffineBlowup.toSpec I) (V : W.Opens) (a : R))
    (hcongr : ∀ r : R, Blowup.sectionsRingHom (h ≫ Blowup.AffineBlowup.toSpec I) (V : W.Opens) r
        - Blowup.sectionsRingHom (h' ≫ Blowup.AffineBlowup.toSpec I) (V : W.Opens) r
      ∈ Ideal.span {Blowup.sectionsRingHom (h ≫ Blowup.AffineBlowup.toSpec I) (V : W.Opens) (a : R)}
          * 𝔟₁.ideal V)
    (z : HomogeneousLocalization.Away (Blowup.reesGrading I) (Blowup.reesGenerator I a)) :
    Blowup.chartSectionsRingHom I h a (V : W.Opens) hV z - Blowup.chartSectionsRingHom I h' a (V : W.Opens) hV' z
      ∈ 𝔟₁.ideal V := by
  refine sub_mem_ideal_of_subring_closure_eq_top (Blowup.chartSectionsRingHom I h a (V : W.Opens) hV)
    (Blowup.chartSectionsRingHom I h' a (V : W.Opens) hV') (𝔟₁.ideal V)
    (Set.range ⇑(Blowup.chartRingHom I a) ∪ Set.range (Blowup.chartFraction I a))
    (closure_chartRingHom_union_chartFraction_eq_top I a) ?_ z
  rintro b (⟨r, rfl⟩ | ⟨b0, rfl⟩)
  · rw [Blowup.chartSectionsRingHom_chartRingHom, Blowup.chartSectionsRingHom_chartRingHom]
    exact (Ideal.mem_inf.mp (Ideal.mul_le_inf (hcongr r))).2
  · exact chartFraction_sub_mem_of_congr I a (Blowup.chartSectionsRingHom I h a (V : W.Opens) hV)
      (Blowup.chartSectionsRingHom I h' a (V : W.Opens) hV')
      (Blowup.sectionsRingHom (h ≫ Blowup.AffineBlowup.toSpec I) (V : W.Opens))
      (Blowup.sectionsRingHom (h' ≫ Blowup.AffineBlowup.toSpec I) (V : W.Opens)) (𝔟₁.ideal V)
      (Blowup.chartSectionsRingHom_chartRingHom I h a (V : W.Opens) hV)
      (Blowup.chartSectionsRingHom_chartRingHom I h' a (V : W.Opens) hV')
      hcongr hnzd u hu b0

theorem comp_eq_on_chart_of_mul_eq_of_agree (I : Ideal R) {W : Scheme.{u}}
    (h h' : W ⟶ Blowup.affineBlowup I) (𝔞 𝔟₁ : W.IdealSheafData) (a : I) (V : W.affineOpens)
    (hagree : 𝔞.subschemeι ≫ (h ≫ Blowup.AffineBlowup.toSpec I)
      = 𝔞.subschemeι ≫ (h' ≫ Blowup.AffineBlowup.toSpec I))
    (hpull : (Blowup.specIdealSheaf I).comap (h ≫ Blowup.AffineBlowup.toSpec I)
      = (Blowup.specIdealSheaf I).comap (h' ≫ Blowup.AffineBlowup.toSpec I))
    (hfac : (Blowup.specIdealSheaf I).comap (h ≫ Blowup.AffineBlowup.toSpec I) * 𝔟₁ = 𝔞)
    (hV : (V : W.Opens) ≤ (Opens.map h.base).obj
      ((Scheme.Hom.opensFunctor (Blowup.affineBlowupChart I a)).obj ⊤))
    (hV' : (V : W.Opens) ≤ (Opens.map h'.base).obj
      ((Scheme.Hom.opensFunctor (Blowup.affineBlowupChart I a)).obj ⊤))
    (hnzd : Blowup.sectionsRingHom (h ≫ Blowup.AffineBlowup.toSpec I) (V : W.Opens) (a : R)
      ∈ nonZeroDivisors ↥(W.presheaf.obj (Opposite.op (V : W.Opens))))
    (hspan : ((Blowup.specIdealSheaf I).comap (h ≫ Blowup.AffineBlowup.toSpec I)).ideal V
      = Ideal.span {Blowup.sectionsRingHom (h ≫ Blowup.AffineBlowup.toSpec I) (V : W.Opens) (a : R)}) :
    Scheme.Opens.ι ((Opens.map 𝔟₁.subschemeι.base).obj (V : W.Opens)) ≫ 𝔟₁.subschemeι ≫ h
      = Scheme.Opens.ι ((Opens.map 𝔟₁.subschemeι.base).obj (V : W.Opens)) ≫ 𝔟₁.subschemeι ≫ h' := by
  have hmem : Blowup.sectionsRingHom (h' ≫ Blowup.AffineBlowup.toSpec I) (V : W.Opens) (a : R)
      ∈ Ideal.span {Blowup.sectionsRingHom (h ≫ Blowup.AffineBlowup.toSpec I) (V : W.Opens) (a : R)} := by
    rw [← hspan, hpull, Blowup.comap_specIdealSheaf_ideal_eq_span I h' a V hV']
    exact Ideal.mem_span_singleton_self _
  obtain ⟨u, hu⟩ := Ideal.mem_span_singleton'.mp hmem
  refine comp_eq_of_chartSectionsRingHom_sub_mem I h h' a 𝔟₁ V hV hV' (fun z => ?_)
  refine chartSectionsRingHom_sub_mem I h h' 𝔟₁ a V hV hV' hnzd u hu.symm (fun r => ?_) z
  exact sectionsRingHom_sub_mem_span_mul_of_agree I (h ≫ Blowup.AffineBlowup.toSpec I) (h' ≫ Blowup.AffineBlowup.toSpec I) 𝔞 𝔟₁ V
    hagree hfac (Blowup.sectionsRingHom (h ≫ Blowup.AffineBlowup.toSpec I) (V : W.Opens) (a : R)) hspan r

theorem exists_common_chart_affineOpen (I : Ideal R) {W : Scheme.{u}}
    (h h' : W ⟶ Blowup.affineBlowup I) (𝔞 𝔟₁ : W.IdealSheafData)
    (hagree : 𝔞.subschemeι ≫ (h ≫ Blowup.AffineBlowup.toSpec I)
      = 𝔞.subschemeι ≫ (h' ≫ Blowup.AffineBlowup.toSpec I))
    (hpull : (Blowup.specIdealSheaf I).comap (h ≫ Blowup.AffineBlowup.toSpec I)
      = (Blowup.specIdealSheaf I).comap (h' ≫ Blowup.AffineBlowup.toSpec I))
    (hcart : Blowup.IsLocallyGeneratedByNonZeroDivisor ((Blowup.specIdealSheaf I).comap (h ≫ Blowup.AffineBlowup.toSpec I)))
    (hfac : (Blowup.specIdealSheaf I).comap (h ≫ Blowup.AffineBlowup.toSpec I) * 𝔟₁ = 𝔞)
    (w : ↥W) :
    ∃ (a : I) (V V' : W.affineOpens),
      w ∈ (V : W.Opens) ∧
      (Opens.map 𝔟₁.subschemeι.base).obj (V' : W.Opens)
        = (Opens.map 𝔟₁.subschemeι.base).obj (V : W.Opens) ∧
      (V' : W.Opens) ≤ (Opens.map h.base).obj
        ((Scheme.Hom.opensFunctor (Blowup.affineBlowupChart I a)).obj ⊤) ∧
      (V' : W.Opens) ≤ (Opens.map h'.base).obj
        ((Scheme.Hom.opensFunctor (Blowup.affineBlowupChart I a)).obj ⊤) ∧
      Blowup.sectionsRingHom (h ≫ Blowup.AffineBlowup.toSpec I) (V' : W.Opens) (a : R)
        ∈ nonZeroDivisors ↥(W.presheaf.obj (Opposite.op (V' : W.Opens))) ∧
      ((Blowup.specIdealSheaf I).comap (h ≫ Blowup.AffineBlowup.toSpec I)).ideal V'
        = Ideal.span {Blowup.sectionsRingHom (h ≫ Blowup.AffineBlowup.toSpec I) (V' : W.Opens) (a : R)} := by
  obtain ⟨a, V, hwV, hVchart, hnzdV⟩ := Blowup.exists_chart_affineOpen_mem_nonZeroDivisors I h hcart w
  have hspanV : ((Blowup.specIdealSheaf I).comap (h ≫ Blowup.AffineBlowup.toSpec I)).ideal V
      = Ideal.span {Blowup.sectionsRingHom (h ≫ Blowup.AffineBlowup.toSpec I) (V : W.Opens) (a : R)} :=
    Blowup.comap_specIdealSheaf_ideal_eq_span I h a V hVchart
  have hsub := sectionsRingHom_sub_mem_ideal (h ≫ Blowup.AffineBlowup.toSpec I)
    (h' ≫ Blowup.AffineBlowup.toSpec I) 𝔞 hagree V (a : R)
  have hmul : ((Blowup.specIdealSheaf I).comap (h ≫ Blowup.AffineBlowup.toSpec I) * 𝔟₁).ideal V
      = ((Blowup.specIdealSheaf I).comap (h ≫ Blowup.AffineBlowup.toSpec I)).ideal V * 𝔟₁.ideal V := rfl
  rw [← hfac, hmul, hspanV] at hsub
  obtain ⟨c, hc, hceq⟩ := Ideal.mem_span_singleton_mul.mp hsub
  set f : ↥(W.presheaf.obj (Opposite.op (V : W.Opens))) := 1 - c with hfdef
  have hf'' : Blowup.sectionsRingHom (h' ≫ Blowup.AffineBlowup.toSpec I) (V : W.Opens) (a : R)
      = Blowup.sectionsRingHom (h ≫ Blowup.AffineBlowup.toSpec I) (V : W.Opens) (a : R) * f := by
    rw [hfdef]
    linear_combination hceq
  have hle : W.basicOpen f ≤ (V : W.Opens) := W.basicOpen_le f
  have haff : IsAffineOpen (W.basicOpen f) := V.2.basicOpen f
  have hlechart : W.basicOpen f ≤ (Opens.map h.base).obj
      ((Scheme.Hom.opensFunctor (Blowup.affineBlowupChart I a)).obj ⊤) := le_trans hle hVchart
  have hsp : ((Blowup.specIdealSheaf I).comap (h ≫ Blowup.AffineBlowup.toSpec I)).ideal
        ⟨W.basicOpen f, haff⟩
      = Ideal.span {Blowup.sectionsRingHom (h ≫ Blowup.AffineBlowup.toSpec I) (W.basicOpen f) (a : R)} :=
    Blowup.comap_specIdealSheaf_ideal_eq_span I h a ⟨W.basicOpen f, haff⟩ hlechart
  have hresσ : Blowup.sectionsRingHom (h ≫ Blowup.AffineBlowup.toSpec I) (W.basicOpen f) (a : R)
      = (CommRingCat.Hom.hom (W.presheaf.map (homOfLE hle).op))
          (Blowup.sectionsRingHom (h ≫ Blowup.AffineBlowup.toSpec I) (V : W.Opens) (a : R)) :=
    Blowup.sectionsRingHom_restrict (h ≫ Blowup.AffineBlowup.toSpec I) hle (a : R)
  have hresσ' : Blowup.sectionsRingHom (h' ≫ Blowup.AffineBlowup.toSpec I) (W.basicOpen f) (a : R)
      = (CommRingCat.Hom.hom (W.presheaf.map (homOfLE hle).op))
          (Blowup.sectionsRingHom (h' ≫ Blowup.AffineBlowup.toSpec I) (V : W.Opens) (a : R)) :=
    Blowup.sectionsRingHom_restrict (h' ≫ Blowup.AffineBlowup.toSpec I) hle (a : R)
  have hloc : IsLocalization.Away f ↥(W.presheaf.obj (Opposite.op (W.basicOpen f))) :=
    V.2.isLocalization_basicOpen f
  have hunit : IsUnit ((CommRingCat.Hom.hom (W.presheaf.map (homOfLE hle).op)) f) :=
    IsLocalization.map_units
      (S := ↥(W.presheaf.obj (Opposite.op (W.basicOpen f))))
      (M := Submonoid.powers f) ⟨f, Submonoid.mem_powers f⟩
  have hnzdres : algebraMap ↥(W.presheaf.obj (Opposite.op (V : W.Opens)))
        ↥(W.presheaf.obj (Opposite.op (W.basicOpen f)))
        (Blowup.sectionsRingHom (h ≫ Blowup.AffineBlowup.toSpec I) (V : W.Opens) (a : R))
      ∈ nonZeroDivisors ↥(W.presheaf.obj (Opposite.op (W.basicOpen f))) := by
    have hcomap := IsLocalization.nonZeroDivisors_le_comap (M := Submonoid.powers f)
      (S := ↥(W.presheaf.obj (Opposite.op (W.basicOpen f))))
    exact hcomap hnzdV
  have hnzdfinal : Blowup.sectionsRingHom (h ≫ Blowup.AffineBlowup.toSpec I) (W.basicOpen f) (a : R)
      ∈ nonZeroDivisors ↥(W.presheaf.obj (Opposite.op (W.basicOpen f))) := by
    rw [hresσ]
    exact hnzdres
  have hcart' : Blowup.IsLocallyGeneratedByNonZeroDivisor
      ((Blowup.specIdealSheaf I).comap (h' ≫ Blowup.AffineBlowup.toSpec I)) := by
    rw [← hpull]
    exact hcart
  have hspanbo' : ((Blowup.specIdealSheaf I).comap (h' ≫ Blowup.AffineBlowup.toSpec I)).ideal
        ⟨W.basicOpen f, haff⟩
      = Ideal.span {Blowup.sectionsRingHom (h' ≫ Blowup.AffineBlowup.toSpec I) (W.basicOpen f) (a : R)} := by
    rw [← hpull, hsp, hresσ, hresσ', hf'', map_mul]
    exact (Ideal.span_singleton_mul_right_unit hunit _).symm
  have hpre : (Opens.map 𝔟₁.subschemeι.base).obj (W.basicOpen f)
      = (Opens.map 𝔟₁.subschemeι.base).obj (V : W.Opens) := by
    rw [Scheme.preimage_basicOpen]
    have happ : (CategoryTheory.ConcreteCategory.hom
        (Scheme.Hom.app 𝔟₁.subschemeι (V : W.Opens))) f = 1 := by
      show (CommRingCat.Hom.hom (Scheme.Hom.app 𝔟₁.subschemeι (V : W.Opens))) f = 1
      rw [hfdef, map_sub, map_one, app_subschemeι_eq_zero_of_mem_ideal 𝔟₁ V hc, sub_zero]
    rw [happ, Scheme.basicOpen_one]
  refine ⟨a, V, ⟨W.basicOpen f, haff⟩, hwV, hpre, hlechart, ?_, hnzdfinal, hsp⟩
  intro x hx
  have hmemrange := Blowup.mem_opensRange_affineBlowupChart_of_ideal_eq_span I h' hcart' x a
    ⟨⟨W.basicOpen f, haff⟩, hx, hspanbo'⟩
  rw [← Scheme.Hom.image_top_eq_opensRange] at hmemrange
  exact hmemrange

theorem subschemeι_comp_eq_of_affineBlowup_lifts (I : Ideal R) {W : Scheme.{u}}
    (ρ ρ' : W ⟶ Spec (CommRingCat.of R)) (𝔞 𝔟₁ : W.IdealSheafData)
    (h h' : W ⟶ Blowup.affineBlowup I)
    (hagree : 𝔞.subschemeι ≫ ρ = 𝔞.subschemeι ≫ ρ')
    (hpull : (Blowup.specIdealSheaf I).comap ρ = (Blowup.specIdealSheaf I).comap ρ')
    (hcart : Blowup.IsLocallyGeneratedByNonZeroDivisor ((Blowup.specIdealSheaf I).comap ρ))
    (hfac : (Blowup.specIdealSheaf I).comap ρ * 𝔟₁ = 𝔞)
    (hh : h ≫ Blowup.AffineBlowup.toSpec I = ρ)
    (hh' : h' ≫ Blowup.AffineBlowup.toSpec I = ρ') :
    𝔟₁.subschemeι ≫ h = 𝔟₁.subschemeι ≫ h' := by
  subst hh
  subst hh'
  choose a V V' hw hpre hVh hVh' hn hs using
    exists_common_chart_affineOpen I h h' 𝔞 𝔟₁ hagree hpull hcart hfac
  have hcov : ∀ z : ↥(𝔟₁.subscheme), ∃ (w : ↥W)
      (y : ↥((Opens.map 𝔟₁.subschemeι.base).obj ((V w : W.Opens)))),
      (Scheme.Opens.ι ((Opens.map 𝔟₁.subschemeι.base).obj ((V w : W.Opens)))).base y = z := by
    intro z
    exact ⟨𝔟₁.subschemeι.base z, ⟨z, hw (𝔟₁.subschemeι.base z)⟩, rfl⟩
  refine Scheme.Cover.hom_ext
    (Scheme.Cover.mkOfCovers (↥W)
      (fun w => Scheme.Opens.toScheme
        ((Opens.map 𝔟₁.subschemeι.base).obj ((V w : W.Opens))))
      (fun w => Scheme.Opens.ι
        ((Opens.map 𝔟₁.subschemeι.base).obj ((V w : W.Opens)))) hcov) _ _ ?_
  intro w
  show Scheme.Opens.ι ((Opens.map 𝔟₁.subschemeι.base).obj ((V w : W.Opens)))
        ≫ (𝔟₁.subschemeι ≫ h)
      = Scheme.Opens.ι ((Opens.map 𝔟₁.subschemeι.base).obj ((V w : W.Opens)))
        ≫ (𝔟₁.subschemeι ≫ h')
  rw [← hpre w]
  exact comp_eq_on_chart_of_mul_eq_of_agree I h h' 𝔞 𝔟₁ (a w) (V' w) hagree hpull hfac
    (hVh w) (hVh' w) (hn w) (hs w)

end

end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.BlowupChartCongruence =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.BlowupLiftCongruence =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.BlowupLiftCongruence", "h": "module\n\npublic import Development.ResolutionOfSingularities.Foundations.Blowup.AffineBlowupCartier\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.BlowupSeqComparison\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.BlowupChartCongruence\nimport Development.ResolutionOfSingularities.Foundations.Blowup.AffineBlowupUniversal\nimport Development.ResolutionOfSingularities.Foundations.Blowup.BlowupExistence\nimport Development.ResolutionOfSingularities.Foundations.Blowup.BlowupOpenCover\nimport Development.ResolutionOfSingularities.Foundations.Schemes.AffineOpens\nimport Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry TopologicalSpace

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

private theorem mul_le_right {X : Scheme.{u}} (I J : X.IdealSheafData) :
    I * J ≤ J := by
  rw [Scheme.IdealSheafData.le_def]
  intro V
  rw [Scheme.IdealSheafData.ideal_mul]
  exact Ideal.mul_le_inf.trans inf_le_right

private theorem eq_of_comp_ι_eq {X : Scheme.{u}} (U : X.Opens) {W : Scheme.{u}}
    {a b : W ⟶ U.toScheme} (h : a ≫ U.ι = b ≫ U.ι) : a = b := by
  have : Mono U.ι := inferInstance
  exact (cancel_mono U.ι).mp h

private theorem hom_ext_of_comp_ι_eq_of_opens_cover {X Y : Scheme.{u}} {ι : Type u} (W : ι → X.Opens)
    (hW : ∀ x : ↥X, ∃ i, x ∈ W i) (a b : X ⟶ Y)
    (h : ∀ i, (W i).ι ≫ a = (W i).ι ≫ b) : a = b := by
  refine (Scheme.Cover.mkOfCovers ι (fun i => (W i).toScheme) (fun i => (W i).ι) ?_ ?_).hom_ext
    a b ?_
  · intro x
    obtain ⟨i, hi⟩ := hW x
    have hx : x ∈ Set.range ⇑(W i).ι := by
      rw [Scheme.Opens.range_ι]
      exact hi
    obtain ⟨y, hy⟩ := hx
    exact ⟨i, y, hy⟩
  · intro i
    infer_instance
  · intro i
    exact h i

private theorem exists_isoSpec_of_isAffineOpen {P : Scheme.{u}} {U : P.Opens}
    (hU : IsAffineOpen U) :
    ∃ (R : Type u) (_ : CommRing R), Nonempty (U.toScheme ≅ Spec (CommRingCat.of R)) :=
  ⟨↥Γ(P, U), inferInstance, ⟨hU.isoSpec⟩⟩

theorem comap_mul_of_isOpenImmersion {X U : Scheme.{u}} (f : U ⟶ X) [IsOpenImmersion f]
    (I J : X.IdealSheafData) :
    (I * J).comap f = I.comap f * J.comap f := by
  refine Scheme.IdealSheafData.ext (funext fun V => ?_)
  have hV : IsAffineOpen (f ''ᵁ (V : U.Opens)) := V.2.image_of_isOpenImmersion f
  have he : (V : U.Opens) ≤ f ⁻¹ᵁ (f ''ᵁ (V : U.Opens)) := by
    simp [Scheme.Hom.preimage_image_eq]
  simp only [Scheme.IdealSheafData.ideal_mul, Pi.mul_apply]
  rw [Scheme.IdealSheafData.comap_ideal_eq_map_appLE I f ⟨_, hV⟩ V he,
    Scheme.IdealSheafData.comap_ideal_eq_map_appLE J f ⟨_, hV⟩ V he,
    Scheme.IdealSheafData.comap_ideal_eq_map_appLE (I * J) f ⟨_, hV⟩ V he]
  simp only [Scheme.IdealSheafData.ideal_mul, Pi.mul_apply]
  rw [Ideal.map_mul]

theorem exists_specIdealSheaf_eq (R : Type u) [CommRing R]
    (I : (Spec (CommRingCat.of R)).IdealSheafData) :
    ∃ J : Ideal R, Blowup.specIdealSheaf J = I := by
  refine ⟨Ideal.map (Scheme.ΓSpecIso (CommRingCat.of R)).hom.hom
    (I.ideal ⟨⊤, isAffineOpen_top (Spec (CommRingCat.of R))⟩), ?_⟩
  have h := (Scheme.IdealSheafData.equivOfIsAffine
      (X := Spec (CommRingCat.of R))).symm_apply_apply I
  rw [Scheme.IdealSheafData.equivOfIsAffine_apply,
    Scheme.IdealSheafData.equivOfIsAffine_symm_apply] at h
  rw [Blowup.specIdealSheaf_eq_ofIdealTop, Ideal.map_map, ← CommRingCat.hom_comp,
    (Scheme.ΓSpecIso (CommRingCat.of R)).hom_inv_id, CommRingCat.hom_id, Ideal.map_id]
  exact h

theorem subschemeι_comap_comp_eq_of_subschemeι_comp_eq {X Y P : Scheme.{u}} (f : X ⟶ Y) (u v : Y ⟶ P)
    (𝔟 : Y.IdealSheafData) (hagree : 𝔟.subschemeι ≫ u = 𝔟.subschemeι ≫ v) :
    (𝔟.comap f).subschemeι ≫ f ≫ u = (𝔟.comap f).subschemeι ≫ f ≫ v := by
  obtain ⟨t, ht⟩ : ∃ t : (𝔟.comap f).subscheme ⟶ 𝔟.subscheme,
      (𝔟.comap f).subschemeι ≫ f = t ≫ 𝔟.subschemeι :=
    ⟨(𝔟.comapIso f).hom ≫ Limits.pullback.snd f 𝔟.subschemeι, by
      rw [Category.assoc, ← Limits.pullback.condition, ← Category.assoc,
        Scheme.IdealSheafData.comapIso_hom_fst]⟩
  calc (𝔟.comap f).subschemeι ≫ f ≫ u
      = t ≫ 𝔟.subschemeι ≫ u := by rw [← Category.assoc, ht, Category.assoc]
    _ = t ≫ 𝔟.subschemeι ≫ v := by rw [hagree]
    _ = (𝔟.comap f).subschemeι ≫ f ≫ v := by rw [← Category.assoc, ← ht, Category.assoc]

theorem subschemeι_comp_eq_of_mul_comap {V V₁ P : Scheme.{u}} (f : V₁ ⟶ V) (u v : V ⟶ P)
    (𝔟 : V.IdealSheafData) (hagree : 𝔟.subschemeι ≫ u = 𝔟.subschemeι ≫ v)
    (e 𝔟₁ : V₁.IdealSheafData) (hmul : e * 𝔟₁ = 𝔟.comap f) :
    𝔟₁.subschemeι ≫ f ≫ u = 𝔟₁.subschemeι ≫ f ≫ v := by
  have hle : 𝔟.comap f ≤ 𝔟₁ := by
    rw [← hmul]
    exact mul_le_right e 𝔟₁
  obtain ⟨t, ht⟩ : ∃ t : 𝔟₁.subscheme ⟶ (𝔟.comap f).subscheme,
      t ≫ (𝔟.comap f).subschemeι = 𝔟₁.subschemeι :=
    ⟨Scheme.IdealSheafData.inclusion hle, Scheme.IdealSheafData.inclusion_subschemeι hle⟩
  have h3 := subschemeι_comap_comp_eq_of_subschemeι_comp_eq f u v 𝔟 hagree
  calc 𝔟₁.subschemeι ≫ f ≫ u
      = (t ≫ (𝔟.comap f).subschemeι) ≫ f ≫ u := by rw [ht]
    _ = t ≫ ((𝔟.comap f).subschemeι ≫ f ≫ u) := by rw [Category.assoc]
    _ = t ≫ ((𝔟.comap f).subschemeι ≫ f ≫ v) := by rw [h3]
    _ = (t ≫ (𝔟.comap f).subschemeι) ≫ f ≫ v := by rw [Category.assoc]
    _ = 𝔟₁.subschemeι ≫ f ≫ v := by rw [ht]

theorem subschemeι_comp_eq_of_blowup_lifts_spec {R : Type u} [CommRing R] {B W : Scheme.{u}}
    (p : B ⟶ Spec (CommRingCat.of R)) (J : (Spec (CommRingCat.of R)).IdealSheafData)
    (hp : Blowup.IsBlowupAlongIdealSheaf p J) (ρ ρ' : W ⟶ Spec (CommRingCat.of R)) (𝔞 𝔟₁ : W.IdealSheafData)
    (hagree : 𝔞.subschemeι ≫ ρ = 𝔞.subschemeι ≫ ρ')
    (hpull : J.comap ρ = J.comap ρ')
    (hcart : Blowup.IsLocallyGeneratedByNonZeroDivisor (J.comap ρ))
    (hfac : J.comap ρ * 𝔟₁ = 𝔞)
    (h h' : W ⟶ B) (hh : h ≫ p = ρ) (hh' : h' ≫ p = ρ') :
    𝔟₁.subschemeι ≫ h = 𝔟₁.subschemeι ≫ h' := by
  obtain ⟨I, rfl⟩ := exists_specIdealSheaf_eq R J
  have hq : Blowup.IsBlowupAlongIdealSheaf (Blowup.AffineBlowup.toSpec I) (Blowup.specIdealSheaf I) := Blowup.isBlowupAlongIdealSheaf_affineBlowup_toSpec I
  obtain ⟨β, hβ⟩ := hq.exists_lift p hp.1
  obtain ⟨α, hα⟩ := hp.exists_lift (Blowup.AffineBlowup.toSpec I) hq.1
  have hβα : β ≫ α = 𝟙 B := by
    refine hp.hom_ext hp.1 ?_ ?_
    · rw [Category.assoc, hα, hβ]
    · rw [Category.id_comp]
  have key := subschemeι_comp_eq_of_affineBlowup_lifts I ρ ρ' 𝔞 𝔟₁ (h ≫ β) (h' ≫ β) hagree hpull hcart hfac
    (by rw [Category.assoc, hβ, hh]) (by rw [Category.assoc, hβ, hh'])
  have hfin := congrArg (fun m => m ≫ α) key
  simp only [Category.assoc, hβα, Category.comp_id] at hfin
  exact hfin

theorem subschemeι_comap_ι_comp_eq_of_blowup_lifts_affine {P P₁ V V₁ : Scheme.{u}} (π : P₁ ⟶ P)
    (Z : P.IdealSheafData) (hπ : Blowup.IsBlowupAlongIdealSheaf π Z) (ψ ψ' : V ⟶ P)
    (hZ : Z.comap ψ = Z.comap ψ') (ρ : V₁ ⟶ V)
    (hcart : Blowup.IsLocallyGeneratedByNonZeroDivisor ((Z.comap ψ).comap ρ))
    (ψ₁ ψ'₁ : V₁ ⟶ P₁) (hψ₁ : ψ₁ ≫ π = ρ ≫ ψ) (hψ'₁ : ψ'₁ ≫ π = ρ ≫ ψ')
    (𝔟 : V.IdealSheafData) (hagree : 𝔟.subschemeι ≫ ψ = 𝔟.subschemeι ≫ ψ')
    (𝔟₁ : V₁.IdealSheafData) (hfac : (Z.comap ψ).comap ρ * 𝔟₁ = 𝔟.comap ρ)
    (U : P.Opens) (hU : IsAffineOpen U) (O : V₁.Opens)
    (hO : O ≤ (Opens.map (ρ ≫ ψ).base).obj U)
    (hO' : O ≤ (Opens.map (ρ ≫ ψ').base).obj U) :
    (𝔟₁.comap O.ι).subschemeι ≫ O.ι ≫ ψ₁ = (𝔟₁.comap O.ι).subschemeι ≫ O.ι ≫ ψ'₁ := by
  obtain ⟨R, hR, ⟨e⟩⟩ := exists_isoSpec_of_isAffineOpen hU
  let _ : CommRing R := hR
  have hres : (ρ ≫ ψ).resLE U O hO ≫ U.ι = O.ι ≫ (ρ ≫ ψ) := by
    rw [Scheme.Hom.resLE_comp_ι]
  have hres' : (ρ ≫ ψ').resLE U O hO' ≫ U.ι = O.ι ≫ (ρ ≫ ψ') := by
    rw [Scheme.Hom.resLE_comp_ι]
  have hπS : Blowup.IsBlowupAlongIdealSheaf (Limits.pullback.snd π U.ι ≫ e.hom) ((Z.comap U.ι).comap e.inv) :=
    (hπ.pullback_snd_of_isOpenImmersion U.ι).comp_iso_hom e
  have hcalc : ∀ (χ : V ⟶ P) (hχ : O ≤ (Opens.map (ρ ≫ χ).base).obj U),
      ((Z.comap U.ι).comap e.inv).comap ((ρ ≫ χ).resLE U O hχ ≫ e.hom)
        = ((Z.comap χ).comap ρ).comap O.ι := by
    intro χ hχ
    simp only [← Scheme.IdealSheafData.comap_comp]
    congr 1
    simp [Scheme.Hom.resLE_comp_ι]
  have hcart_W : Blowup.IsLocallyGeneratedByNonZeroDivisor (((Z.comap U.ι).comap e.inv).comap
      ((ρ ≫ ψ).resLE U O hO ≫ e.hom)) := by
    rw [hcalc ψ hO]
    exact hcart.comap_of_isOpenImmersion O.ι
  have hpull_W : ((Z.comap U.ι).comap e.inv).comap ((ρ ≫ ψ).resLE U O hO ≫ e.hom)
      = ((Z.comap U.ι).comap e.inv).comap ((ρ ≫ ψ').resLE U O hO' ≫ e.hom) := by
    rw [hcalc ψ hO, hcalc ψ' hO', hZ]
  have hfac_W : ((Z.comap U.ι).comap e.inv).comap ((ρ ≫ ψ).resLE U O hO ≫ e.hom)
      * 𝔟₁.comap O.ι = (𝔟.comap ρ).comap O.ι := by
    rw [hcalc ψ hO, ← comap_mul_of_isOpenImmersion O.ι, hfac]
  have hagree_W : ((𝔟.comap ρ).comap O.ι).subschemeι ≫ ((ρ ≫ ψ).resLE U O hO ≫ e.hom)
      = ((𝔟.comap ρ).comap O.ι).subschemeι ≫ ((ρ ≫ ψ').resLE U O hO' ≫ e.hom) := by
    have step1 := subschemeι_comap_comp_eq_of_subschemeι_comp_eq ρ ψ ψ' 𝔟 hagree
    have step2 := subschemeι_comap_comp_eq_of_subschemeι_comp_eq O.ι (ρ ≫ ψ) (ρ ≫ ψ') (𝔟.comap ρ) step1
    have step3 : (((𝔟.comap ρ).comap O.ι).subschemeι ≫ (ρ ≫ ψ).resLE U O hO) ≫ U.ι
        = (((𝔟.comap ρ).comap O.ι).subschemeι ≫ (ρ ≫ ψ').resLE U O hO') ≫ U.ι := by
      rw [Category.assoc, Category.assoc, hres, hres']
      exact step2
    have step4 := eq_of_comp_ι_eq U step3
    rw [← Category.assoc, ← Category.assoc, step4]
  have hcond : (O.ι ≫ ψ₁) ≫ π = (ρ ≫ ψ).resLE U O hO ≫ U.ι := by
    rw [hres, Category.assoc, hψ₁]
  have hcond' : (O.ι ≫ ψ'₁) ≫ π = (ρ ≫ ψ').resLE U O hO' ≫ U.ι := by
    rw [hres', Category.assoc, hψ'₁]
  have hh : Limits.pullback.lift (O.ι ≫ ψ₁) ((ρ ≫ ψ).resLE U O hO) hcond
      ≫ (Limits.pullback.snd π U.ι ≫ e.hom) = (ρ ≫ ψ).resLE U O hO ≫ e.hom := by
    rw [← Category.assoc, Limits.pullback.lift_snd]
  have hh' : Limits.pullback.lift (O.ι ≫ ψ'₁) ((ρ ≫ ψ').resLE U O hO') hcond'
      ≫ (Limits.pullback.snd π U.ι ≫ e.hom) = (ρ ≫ ψ').resLE U O hO' ≫ e.hom := by
    rw [← Category.assoc, Limits.pullback.lift_snd]
  have key := subschemeι_comp_eq_of_blowup_lifts_spec (R := R)
    (Limits.pullback.snd π U.ι ≫ e.hom) ((Z.comap U.ι).comap e.inv) hπS
    ((ρ ≫ ψ).resLE U O hO ≫ e.hom) ((ρ ≫ ψ').resLE U O hO' ≫ e.hom)
    ((𝔟.comap ρ).comap O.ι) (𝔟₁.comap O.ι) hagree_W hpull_W hcart_W hfac_W
    (Limits.pullback.lift (O.ι ≫ ψ₁) ((ρ ≫ ψ).resLE U O hO) hcond)
    (Limits.pullback.lift (O.ι ≫ ψ'₁) ((ρ ≫ ψ').resLE U O hO') hcond') hh hh'
  have hfin := congrArg (fun m => m ≫ Limits.pullback.fst π U.ι) key
  simpa only [Category.assoc, Limits.pullback.lift_fst] using hfin

private theorem exists_preimage_subscheme_to_subscheme_comap {T : Scheme.{u}} (c : T.IdealSheafData)
    (O : T.Opens) :
    ∃ k : (c.subschemeι ⁻¹ᵁ O).toScheme ⟶ (c.comap O.ι).subscheme,
      k ≫ (c.comap O.ι).subschemeι ≫ O.ι = (c.subschemeι ⁻¹ᵁ O).ι ≫ c.subschemeι := by
  obtain ⟨s, hs⟩ : ∃ s : Limits.pullback O.ι c.subschemeι ⟶ (c.comap O.ι).subscheme,
      s ≫ (c.comap O.ι).subschemeι = Limits.pullback.fst O.ι c.subschemeι :=
    ⟨(c.comapIso O.ι).inv, Scheme.IdealSheafData.comapIso_inv_subschemeι c O.ι⟩
  have hres : c.subschemeι.resLE O (c.subschemeι ⁻¹ᵁ O) le_rfl ≫ O.ι
      = (c.subschemeι ⁻¹ᵁ O).ι ≫ c.subschemeι := Scheme.Hom.resLE_comp_ι _ _
  obtain ⟨k, hk⟩ : ∃ k : (c.subschemeι ⁻¹ᵁ O).toScheme ⟶ Limits.pullback O.ι c.subschemeι,
      k ≫ Limits.pullback.fst O.ι c.subschemeι
        = c.subschemeι.resLE O (c.subschemeι ⁻¹ᵁ O) le_rfl :=
    ⟨Limits.pullback.lift _ _ hres, Limits.pullback.lift_fst _ _ _⟩
  refine ⟨k ≫ s, ?_⟩
  calc (k ≫ s) ≫ (c.comap O.ι).subschemeι ≫ O.ι
      = k ≫ (s ≫ (c.comap O.ι).subschemeι) ≫ O.ι := by simp only [Category.assoc]
    _ = k ≫ Limits.pullback.fst O.ι c.subschemeι ≫ O.ι := by rw [hs]
    _ = (k ≫ Limits.pullback.fst O.ι c.subschemeι) ≫ O.ι := by rw [Category.assoc]
    _ = c.subschemeι.resLE O (c.subschemeι ⁻¹ᵁ O) le_rfl ≫ O.ι := by rw [hk]
    _ = (c.subschemeι ⁻¹ᵁ O).ι ≫ c.subschemeι := hres

private theorem preimage_ι_subschemeι_comp_eq_of_comap_ι {T Y : Scheme.{u}} (c : T.IdealSheafData) (O : T.Opens)
    (f' g' : T ⟶ Y)
    (hEqComap : (c.comap O.ι).subschemeι ≫ O.ι ≫ f' = (c.comap O.ι).subschemeι ≫ O.ι ≫ g') :
    (c.subschemeι ⁻¹ᵁ O).ι ≫ c.subschemeι ≫ f'
      = (c.subschemeι ⁻¹ᵁ O).ι ≫ c.subschemeι ≫ g' := by
  obtain ⟨k, hk⟩ := exists_preimage_subscheme_to_subscheme_comap c O
  calc (c.subschemeι ⁻¹ᵁ O).ι ≫ c.subschemeι ≫ f'
      = ((c.subschemeι ⁻¹ᵁ O).ι ≫ c.subschemeι) ≫ f' := by rw [Category.assoc]
    _ = (k ≫ (c.comap O.ι).subschemeι ≫ O.ι) ≫ f' := by rw [hk]
    _ = k ≫ ((c.comap O.ι).subschemeι ≫ O.ι ≫ f') := by
        rw [Category.assoc, Category.assoc]
    _ = k ≫ ((c.comap O.ι).subschemeι ≫ O.ι ≫ g') := by rw [hEqComap]
    _ = (k ≫ (c.comap O.ι).subschemeι ≫ O.ι) ≫ g' := by
        rw [Category.assoc, Category.assoc]
    _ = ((c.subschemeι ⁻¹ᵁ O).ι ≫ c.subschemeι) ≫ g' := by rw [hk]
    _ = (c.subschemeι ⁻¹ᵁ O).ι ≫ c.subschemeι ≫ g' := by rw [Category.assoc]

theorem blowupLiftEqOnControlledTransform : BlowupLiftEqOnControlledTransform.{u} := by
  intro X Y S T π Z hπ f g hfg ρ hρ f' g' hf' hg' a hagree c hc
  have hEqOnSubscheme : c.subschemeι ≫ ρ ≫ f = c.subschemeι ≫ ρ ≫ g :=
    subschemeι_comp_eq_of_mul_comap ρ f g a hagree ((Z.comap f).comap ρ) c hc
  have main : ∀ x : ↥(c.subscheme), ∃ O : T.Opens, c.subschemeι.base x ∈ O ∧
      (c.subschemeι ⁻¹ᵁ O).ι ≫ c.subschemeι ≫ f'
        = (c.subschemeι ⁻¹ᵁ O).ι ≫ c.subschemeι ≫ g' := by
    intro x
    have hpt : (ρ ≫ f).base (c.subschemeι.base x)
        = (ρ ≫ g).base (c.subschemeι.base x) := by
      have h := congrArg (fun m : c.subscheme ⟶ X => m.base x) hEqOnSubscheme
      simpa using h
    obtain ⟨U, hxU, hU⟩ := X.exists_isAffineOpen_mem ((ρ ≫ f).base (c.subschemeι.base x))
    refine ⟨(Opens.map (ρ ≫ f).base).obj U ⊓ (Opens.map (ρ ≫ g).base).obj U, ⟨hxU, ?_⟩, ?_⟩
    · show (ρ ≫ g).base (c.subschemeι.base x) ∈ U
      rw [← hpt]
      exact hxU
    · refine preimage_ι_subschemeι_comp_eq_of_comap_ι c _ f' g' ?_
      exact subschemeι_comap_ι_comp_eq_of_blowup_lifts_affine π Z hπ f g hfg ρ hρ.1 f' g' hf' hg' a hagree
        c hc U hU ((Opens.map (ρ ≫ f).base).obj U ⊓ (Opens.map (ρ ≫ g).base).obj U)
        inf_le_left inf_le_right
  choose Ox hOx hOeq using main
  refine hom_ext_of_comp_ι_eq_of_opens_cover (fun x : ↥(c.subscheme) => c.subschemeι ⁻¹ᵁ (Ox x)) ?_ _ _ hOeq
  intro y
  exact ⟨y, hOx y⟩

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.BlowupLiftCongruence =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.MaxContactGeometry =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.MaxContactGeometry", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.WeakTransform\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.BlowupDerivativeIdealBound\nimport Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.DerivativeIdealSheafSmoothPullback\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.IsoInvariance\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.MarkedSequenceTransforms\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.SupportsAlongSequence\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.BlowupLiftCongruence\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.OrderUnderStalkIsomorphism\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.RadicalCenterIdeal\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.StrictPullbackCriterion\nimport Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.IrreducibleComponentsAlongSequence\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

namespace OrderReductionCorrectness

alias blowupLiftEqOnControlledTransform := _root_.FunctorialResolution.EmbeddedResolution.blowupLiftEqOnControlledTransform

theorem le_of_support_subset_of_smooth : ∀ (k : Type u) [Field k] (X : Scheme.{u})
    (p : X ⟶ Spec (CommRingCat.of k)) (Z : X.IdealSheafData),
    AlgebraicGeometry.Smooth (Z.subschemeι ≫ p) →
    ∀ J : X.IdealSheafData,
      (((Z.support : Set ↥X)) ⊆ ((J.support : Set ↥X))) → J ≤ Z :=
  smoothSubschemeIdealIsRadical

theorem isLocallyNoetherian_schemeAt : ∀ (T : MarkedIdealWithBoundary.{u}), T.IsAdmissible → ∀ (s : T.SequenceOfBlowups) (i : ℕ),
    i ≤ s.length → AlgebraicGeometry.IsLocallyNoetherian (s.schemeAt i) := by
  intro T hT s i hi
  have : AlgebraicGeometry.IsNoetherian (s.schemeAt i) :=
    MarkedSequenceOfBlowups.isNoetherian_schemeAt effectiveCartierSupportContainsNoComponent hT s i hi
  infer_instance

theorem isBalanced_comap_of_smooth : ∀ (T : MarkedIdealWithBoundary.{u}), T.IsAdmissible → ∀ (Y : Scheme.{u})
    (q : Y ⟶ Spec (CommRingCat.of T.base)) (h : Y ⟶ T.scheme)
    [AlgebraicGeometry.Smooth h], h ≫ T.structMap = q →
    ∀ [AlgebraicGeometry.LocallyOfFiniteType T.structMap]
      [AlgebraicGeometry.LocallyOfFiniteType q],
    IsDerivBalanced T.base T.structMap T.ideal T.mult →
    IsDerivBalanced T.base q (T.ideal.comap h) T.mult := by
  intro T hT Y q f _ hq _ _ hbal
  subst hq
  have : AlgebraicGeometry.Smooth T.structMap := hT.smooth
  refine isDerivBalanced_of_pow_le T.base (f ≫ T.structMap) ?_
  intro i hi
  rw [derivIdealSheafIterate_comap T.base T.structMap f i T.ideal,
    ← Scheme.IdealSheafData.comap_pow, ← Scheme.IdealSheafData.comap_pow]
  exact Scheme.IdealSheafData.comap_mono f (IsDerivBalanced.derivIdealSheafIterate_pow_le T.base T.structMap hbal hi)

theorem maxContactIdealComapLeControlled : MaxContactIdealComapLeControlled.{u} := by
  intro k _ _ X X₁ p _ _ π Z E hZ hπ _ _ _ A μ hμ hA A₁ hA₁
  have hct : A₁ = controlledTransform π Z A μ hπ hA :=
    eq_controlledTransform_of_mul_eq_comap π Z A μ hπ hA A₁ hA₁
  have key := comap_derivIdealSheafIterate_le_exceptionalIdeal_pow_mul k p π Z E hZ hπ A μ hA
    (μ - 1) (Nat.sub_le μ 1)
  have hsub : μ - (μ - 1) = 1 := by omega
  rw [hsub, pow_one] at key
  simp only [maxContactIdeal_eq_derivIdealSheafIterate]
  rw [hct]
  exact key

theorem existsMaxContactControlledTransforms : ExistsMaxContactControlledTransforms.{u} :=
  existsMaxContactControlledTransforms_of_comapLeControlled maxContactIdealComapLeControlled

theorem projectionToBase_mem_orderAtLeastLocus_of_mem_ideal :
    ∀ (T : MarkedIdealWithBoundary.{u}) (s : T.SequenceOfBlowups) (i : ℕ), i ≤ s.length → ∀ x : ↥(s.schemeAt i),
      x ∈ orderAtLeastLocus (s.ideal i) T.mult →
      (s.projectionToBase i).base x ∈ orderAtLeastLocus T.ideal T.mult := by
  intro T s i
  induction i with
  | zero =>
      intro _ x hx
      rw [s.ideal_zero, orderAtLeastLocus_comap_iso_hom_eq_preimage] at hx
      rw [SequenceOfBlowups.projectionToBase_zero]
      exact hx
  | succ n ih =>
      intro hn x hx
      have hn' : n < s.length := hn
      have h1 : (s.transitionMapSucc n).base x ∈ orderAtLeastLocus (s.ideal n) T.mult :=
        OrderLocusBlowup.orderAtLeastLocus_subset_preimage_of_isBlowupAlongIdealSheaf (s.transitionMapSucc n) (s.center n)
          (s.isBlowupAlongIdealSheaf_blowupMorphism n hn') (s.ideal n) (s.ideal (n + 1)) T.mult
          (s.ideal_succ n hn') (s.center_order n hn') hx
      have h2 := ih (le_of_lt hn') _ h1
      rw [MarkedSequenceOfBlowups.projectionToBase_succ_apply]
      exact h2

theorem projectionToBase_mem_orderAtLeastLocus_of_mem_center : ∀ (T : MarkedIdealWithBoundary.{u}), T.IsAdmissible → ∀ (s : T.SequenceOfBlowups) (i : ℕ),
    i < s.length → ∀ x : ↥(s.schemeAt i),
      x ∈ (((s.center i).support : Set ↥(s.schemeAt i))) →
      (s.projectionToBase i).base x ∈ orderAtLeastLocus T.ideal T.mult := by
  intro T hT s i hi x hx
  exact projectionToBase_mem_orderAtLeastLocus_of_mem_ideal T s i (le_of_lt hi) x (s.center_order i hi hx)

theorem isStrictPullback_of_isPullback_of_center_nonempty : ∀ (X' X : Scheme.{u}) (φ : X' ⟶ X) (s' : SequenceOfBlowups X')
    (s : SequenceOfBlowups X), IsPullbackBlowupSequence φ s' s →
    (∀ i : ℕ, i < s.length → (((s.center i).support : Set ↥(s.schemeAt i))).Nonempty) →
    (∀ i : ℕ, i < s.length → ∀ x ∈ (((s.center i).support : Set ↥(s.schemeAt i))),
      (s.projectionToBase i).base x ∈ Set.range φ.base) →
    IsStrictPullbackBlowupSeq φ s' s := by
  intro X' X φ s' s hpb hne hran
  exact hpb.isStrictPullback_of_support_comap_center_nonempty (support_comap_center_nonempty_of_mem_range φ s hne hran)

end OrderReductionCorrectness

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.MaxContactGeometry =====
