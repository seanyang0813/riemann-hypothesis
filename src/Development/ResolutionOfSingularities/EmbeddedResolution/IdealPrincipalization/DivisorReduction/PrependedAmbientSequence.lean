module

public import Development.ResolutionOfSingularities.Foundations.Blowup.StrictTransform
public import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.StrictNormalCrossings
public import Mathlib.Order.CompletePartialOrder
public import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.CoordinateDivisorSmoothness
public import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.SmoothDivisorEtaleChart
public import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.Saturation
public import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.StrictNormalCrossingsBlowup
public import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.StrictTransformSubscheme
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.BlowupSequenceData
public import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.StrictTransform
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.PushedBlowupSequence
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.OrderAlongBlowupSequence
public import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.OrderAtMultiplicativity
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.AmbientCenterImage
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.ContainedComponentsIdeal
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.KernelOfAmbientEmbedding
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.LowerBoundaryAfterBlowup
import Development.ResolutionOfSingularities.Foundations.Blowup.BlowupCoproduct
import Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.SmoothDivisorOperations, Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.IteratedComapDivisor, Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.PrependedAmbientSequence

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.SmoothDivisorOperations =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.SmoothDivisorOperations", "h": "module\n\npublic import Development.ResolutionOfSingularities.Foundations.Blowup.StrictTransform\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.StrictNormalCrossings\npublic import Mathlib.Order.CompletePartialOrder\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.CoordinateDivisorSmoothness\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.SmoothDivisorEtaleChart\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.Saturation\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.StrictNormalCrossingsBlowup\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.StrictTransformSubscheme\nimport Development.ResolutionOfSingularities.Foundations.Blowup.BlowupCoproduct\nimport Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry TopologicalSpace

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

theorem restrictIdeal_mul {X : Scheme.{u}} (I J : X.IdealSheafData) (U : X.Opens) :
    restrictIdeal (I * J) U = restrictIdeal I U * restrictIdeal J U :=
  Scheme.IdealSheafData.comap_mul I J U.ι

theorem etaleChart_comap_map_comp_affineSpaceFinToSpec {X X' : Scheme.{u}} {k : Type u} [Field k]
    (p : X ⟶ Spec (CommRingCat.of k)) (π : X' ⟶ X) {U : X.Opens} {m : ℕ}
    (c : EtaleChart p U m) (V : X'.Opens) (hV : V ≤ π ⁻¹ᵁ U) :
    (π.resLE U V hV ≫ c.map) ≫ affineSpaceFinToSpec k m = V.ι ≫ (π ≫ p) := by
  have h1 : π.resLE U V hV ≫ U.ι = V.ι ≫ π := by simp
  rw [Category.assoc, c.comp_struct, ← Category.assoc, h1, Category.assoc]

theorem etale_etaleChart_comap_map {X X' : Scheme.{u}} {k : Type u} [Field k]
    (p : X ⟶ Spec (CommRingCat.of k)) (π : X' ⟶ X) {U : X.Opens} {m : ℕ}
    (c : EtaleChart p U m) (V : X'.Opens) (hV : V ≤ π ⁻¹ᵁ U)
    (he : AlgebraicGeometry.Etale (π.resLE U V hV)) :
    AlgebraicGeometry.Etale (π.resLE U V hV ≫ c.map) := by
  have := he
  have := c.isEtale
  infer_instance

def EtaleChart.comap {X X' : Scheme.{u}} {k : Type u} [Field k]
    (p : X ⟶ Spec (CommRingCat.of k)) (π : X' ⟶ X) {U : X.Opens} {m : ℕ}
    (c : EtaleChart p U m) (V : X'.Opens) (hV : V ≤ π ⁻¹ᵁ U)
    (he : AlgebraicGeometry.Etale (π.resLE U V hV)) : EtaleChart (π ≫ p) V m where
  map := π.resLE U V hV ≫ c.map
  comp_struct := etaleChart_comap_map_comp_affineSpaceFinToSpec p π c V hV
  isEtale := etale_etaleChart_comap_map p π c V hV he

theorem EtaleChart.comap_map {X X' : Scheme.{u}} {k : Type u} [Field k]
    (p : X ⟶ Spec (CommRingCat.of k)) (π : X' ⟶ X) {U : X.Opens} {m : ℕ}
    (c : EtaleChart p U m) (V : X'.Opens) (hV : V ≤ π ⁻¹ᵁ U)
    (he : AlgebraicGeometry.Etale (π.resLE U V hV)) :
    (EtaleChart.comap p π c V hV he).map = π.resLE U V hV ≫ c.map := rfl

theorem EtaleChart.comap_coordIdeal {X X' : Scheme.{u}} {k : Type u} [Field k]
    (p : X ⟶ Spec (CommRingCat.of k)) (π : X' ⟶ X) {U : X.Opens} {m : ℕ}
    (c : EtaleChart p U m) (V : X'.Opens) (hV : V ≤ π ⁻¹ᵁ U)
    (he : AlgebraicGeometry.Etale (π.resLE U V hV)) (S : Finset (Fin m)) :
    (EtaleChart.comap p π c V hV he).coordIdeal S =
      (c.coordIdeal S).comap (π.resLE U V hV) := by
  rw [EtaleChart.coordIdeal_eq_comap_coordSubspaceIdeal, EtaleChart.coordIdeal_eq_comap_coordSubspaceIdeal, EtaleChart.comap_map,
    Scheme.IdealSheafData.comap_comp]

theorem isSmoothDivisor_mul_of_disjoint_support {X : Scheme.{u}} {k : Type u} [Field k]
    [CharZero k] (p : X ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.Smooth p]
    (A B : X.IdealSheafData) (hA : IsSmoothDivisor p A) (hB : IsSmoothDivisor p B)
    (hAB : Disjoint (A.support : Set X) (B.support : Set X)) :
    IsSmoothDivisor p (A * B) := by
  refine isSmoothDivisor_of_locally_coordIdeal (p := p) (A * B) ?_
  intro x
  by_cases hxA : x ∈ A.support
  · have hxB : x ∉ B.support := fun h => Set.disjoint_left.mp hAB hxA h
    obtain ⟨U, m, c, j, hxU, hAU⟩ :=
      exists_etaleChart_restrictIdeal_eq_coordIdeal_singleton p A hA x hxA
    refine ⟨U ⊓ B.support.compl, ⟨hxU, hxB⟩, m, c.restrict inf_le_left, Or.inr ⟨j, ?_⟩⟩
    have hBtop : restrictIdeal B (U ⊓ B.support.compl) = ⊤ := by
      refine (restrictIdeal_eq_top_iff_forall_notMem_support ..).mpr ?_
      intro y hy
      exact hy.2
    have hc := restrictIdeal_eq_restrict_coordIdeal_of_le (U := U) (V := U ⊓ B.support.compl)
      inf_le_left c A {j} hAU
    rw [restrictIdeal_mul, hBtop, Scheme.IdealSheafData.mul_top, hc]
  · by_cases hxB : x ∈ B.support
    · obtain ⟨U, m, c, j, hxU, hBU⟩ :=
        exists_etaleChart_restrictIdeal_eq_coordIdeal_singleton p B hB x hxB
      refine ⟨U ⊓ A.support.compl, ⟨hxU, hxA⟩, m, c.restrict inf_le_left, Or.inr ⟨j, ?_⟩⟩
      have hAtop : restrictIdeal A (U ⊓ A.support.compl) = ⊤ := by
        refine (restrictIdeal_eq_top_iff_forall_notMem_support ..).mpr ?_
        intro y hy
        exact hy.2
      have hc := restrictIdeal_eq_restrict_coordIdeal_of_le (U := U) (V := U ⊓ A.support.compl)
        inf_le_left c B {j} hBU
      rw [restrictIdeal_mul, hAtop, Scheme.IdealSheafData.top_mul, hc]
    · obtain ⟨U, m, hxU, hUW, -, ⟨c⟩⟩ :=
        exists_etaleChart_le p x (A.support.compl ⊓ B.support.compl) ⟨hxA, hxB⟩
      refine ⟨U, hxU, m, c, Or.inl ?_⟩
      have hAtopW : restrictIdeal A (A.support.compl ⊓ B.support.compl) = ⊤ := by
        refine (restrictIdeal_eq_top_iff_forall_notMem_support ..).mpr ?_
        intro y hy
        exact hy.1
      have hBtopW : restrictIdeal B (A.support.compl ⊓ B.support.compl) = ⊤ := by
        refine (restrictIdeal_eq_top_iff_forall_notMem_support ..).mpr ?_
        intro y hy
        exact hy.2
      have hAtop : restrictIdeal A U = ⊤ := restrictIdeal_eq_top_of_le A hUW hAtopW
      have hBtop : restrictIdeal B U = ⊤ := restrictIdeal_eq_top_of_le B hUW hBtopW
      rw [restrictIdeal_mul, hAtop, hBtop, Scheme.IdealSheafData.mul_top]

private theorem restrictIdeal_comap_eq_top_of_notMem_support {X X' : Scheme.{u}} (π : X' ⟶ X)
    (B : X.IdealSheafData) (V : X'.Opens) (hV : ∀ y : X', y ∈ V → π.base y ∉ B.support) :
    restrictIdeal (B.comap π) V = ⊤ := by
  have hcc : B.comap (V.ι ≫ π) = (B.comap π).comap V.ι := by
    rw [Scheme.IdealSheafData.comap_comp]
  have htop : B.comap (V.ι ≫ π) = ⊤ := by
    refine Blowup.comap_eq_top_of_notMem_support (V.ι ≫ π) B ?_
    intro y
    have hy : V.ι.base y ∈ Set.range V.ι.base := Set.mem_range_self y
    rw [Scheme.Opens.range_ι] at hy
    have h2 : π.base (V.ι.base y) ∉ B.support := hV _ hy
    simpa using h2
  rw [restrictIdeal_eq_comap_ι, ← hcc]
  exact htop

theorem isSmoothDivisor_comap_of_isBlowupAlongIdealSheaf {X X' : Scheme.{u}} {k : Type u} [Field k]
    [CharZero k] (p : X ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.Smooth p]
    (π : X' ⟶ X) [AlgebraicGeometry.Smooth (π ≫ p)] (Z B : X.IdealSheafData)
    (hπ : Blowup.IsBlowupAlongIdealSheaf π Z) (hB : IsSmoothDivisor p B)
    (hdisj : Disjoint (Z.support : Set X) (B.support : Set X)) :
    IsSmoothDivisor (π ≫ p) (B.comap π) := by
  refine isSmoothDivisor_of_locally_coordIdeal (B.comap π) ?_
  intro x'
  by_cases hx : π.base x' ∈ B.support
  · obtain ⟨U, m, c, j, hxU, hBU⟩ :=
      exists_etaleChart_restrictIdeal_eq_coordIdeal_singleton p B hB (π.base x') hx
    have hxZ : π.base x' ∉ Z.support := fun hZ => (Set.disjoint_left.mp hdisj hZ) hx
    have hWle : (U ⊓ Z.support.compl : X.Opens) ≤ U := inf_le_left
    have hWsup : ∀ y : X, y ∈ (U ⊓ Z.support.compl : X.Opens) → y ∉ Z.support :=
      fun y hy => hy.2
    have hiso : IsIso (π ∣_ (U ⊓ Z.support.compl : X.Opens)) :=
      isIso_morphismRestrict_of_isBlowupAlongIdealSheaf hπ (U ⊓ Z.support.compl : X.Opens) hWsup
    have hiso2 : IsIso (π.resLE (U ⊓ Z.support.compl : X.Opens)
        (π ⁻¹ᵁ (U ⊓ Z.support.compl : X.Opens)) le_rfl) := by
      rw [Scheme.Hom.resLE_eq_morphismRestrict]
      exact hiso
    have he : AlgebraicGeometry.Etale (π.resLE (U ⊓ Z.support.compl : X.Opens)
        (π ⁻¹ᵁ (U ⊓ Z.support.compl : X.Opens)) le_rfl) := inferInstance
    have hxV : x' ∈ (π ⁻¹ᵁ (U ⊓ Z.support.compl : X.Opens)) := ⟨hxU, hxZ⟩
    refine ⟨π ⁻¹ᵁ (U ⊓ Z.support.compl : X.Opens), hxV, m,
      EtaleChart.comap p π (c.restrict hWle)
        (π ⁻¹ᵁ (U ⊓ Z.support.compl : X.Opens)) le_rfl he, Or.inr ⟨j, ?_⟩⟩
    rw [EtaleChart.comap_coordIdeal,
      restrictIdeal_comap_eq_comap_resLE_restrictIdeal π B (U ⊓ Z.support.compl : X.Opens)
        (π ⁻¹ᵁ (U ⊓ Z.support.compl : X.Opens)) le_rfl,
      restrictIdeal_eq_restrict_coordIdeal_of_le hWle c B {j} hBU]
  · obtain ⟨U, m, hxU, hUW, -, ⟨c⟩⟩ :=
      exists_etaleChart_le (π ≫ p) x' (π ⁻¹ᵁ B.support.compl) hx
    refine ⟨U, hxU, m, c, Or.inl ?_⟩
    refine restrictIdeal_comap_eq_top_of_notMem_support π B U ?_
    intro y hy
    have hy' : y ∈ π ⁻¹ᵁ B.support.compl := hUW hy
    exact hy'

theorem strictTransform_mul_of_disjoint_support {X X' : Scheme.{u}} [IsLocallyNoetherian X']
    (π : X' ⟶ X) (Z A B : X.IdealSheafData)
    (hBZ : Disjoint (B.support : Set X) (Z.support : Set X)) :
    Blowup.strictTransform π Z (A * B) = Blowup.strictTransform π Z A * B.comap π := by
  have hqAB : QuasiCompact (strictTransformι π Z (A * B)) :=
    FunctorialResolution.EmbeddedResolution.quasiCompact_strictTransformι_of_isLocallyNoetherian π Z (A * B)
  have hqA : QuasiCompact (strictTransformι π Z A) :=
    FunctorialResolution.EmbeddedResolution.quasiCompact_strictTransformι_of_isLocallyNoetherian π Z A
  refine eq_of_locally_restrictIdeal_eq _ _ ?_
  intro x
  by_cases hx : π.base x ∈ Z.support
  · have hxB : π.base x ∉ B.support := fun hB => (Set.disjoint_left.mp hBZ hB) hx
    refine ⟨π ⁻¹ᵁ B.support.compl, ?_, ?_⟩
    · exact hxB
    · have hVmem : ∀ y : X', y ∈ π ⁻¹ᵁ B.support.compl → π.base y ∉ B.support := by
        intro y hy
        exact hy
      have hBtop : restrictIdeal (B.comap π) (π ⁻¹ᵁ B.support.compl) = ⊤ :=
        restrictIdeal_comap_eq_top_of_notMem_support π B _ hVmem
      have hcomapB : B.comap ((π ⁻¹ᵁ B.support.compl).ι ≫ π) = ⊤ := by
        rw [Scheme.IdealSheafData.comap_comp]
        exact hBtop
      have hD : (A * B).comap ((π ⁻¹ᵁ B.support.compl).ι ≫ π)
          = A.comap ((π ⁻¹ᵁ B.support.compl).ι ≫ π) := by
        rw [Scheme.IdealSheafData.comap_mul, hcomapB, Scheme.IdealSheafData.mul_top]
      rw [restrictIdeal_mul, hBtop, Scheme.IdealSheafData.mul_top,
        restrictIdeal_strictTransform π Z (A * B) (π ⁻¹ᵁ B.support.compl),
        restrictIdeal_strictTransform π Z A (π ⁻¹ᵁ B.support.compl)]
      exact strictTransform_eq_of_comap_eq _ _ Z (A * B) Z A rfl hD
  · refine ⟨π ⁻¹ᵁ Z.support.compl, ?_, ?_⟩
    · exact hx
    · have hVmem : ∀ y : X', y ∈ π ⁻¹ᵁ Z.support.compl → π.base y ∉ Z.support := by
        intro y hy
        exact hy
      rw [restrictIdeal_strictTransform_eq_comap_of_notMem_support π Z (A * B) _ hVmem,
        Scheme.IdealSheafData.comap_mul, restrictIdeal_mul, restrictIdeal_mul,
        restrictIdeal_strictTransform_eq_comap_of_notMem_support π Z A _ hVmem]

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.SmoothDivisorOperations =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.IteratedComapDivisor =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.IteratedComapDivisor", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.BlowupSequenceData\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.StrictTransform\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.SmoothDivisorOperations\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry TopologicalSpace

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

namespace TransportedDivisor

def iteratedComap {X : Scheme.{u}} (d : BlowupSequenceData X) (B : (d.obj 0).IdealSheafData) (t : ℕ) :
    (d.obj t).IdealSheafData :=
  Nat.rec (motive := fun n => (d.obj n).IdealSheafData) B
    (fun n ih => ih.comap (d.map n)) t

@[simp]
theorem iteratedComap_zero {X : Scheme.{u}} (d : BlowupSequenceData X) (B : (d.obj 0).IdealSheafData) :
    iteratedComap d B 0 = B := rfl

@[simp]
theorem iteratedComap_succ {X : Scheme.{u}} (d : BlowupSequenceData X) (B : (d.obj 0).IdealSheafData)
    (t : ℕ) : iteratedComap d B (t + 1) = (iteratedComap d B t).comap (d.map t) := rfl

theorem support_strictTransform_subset_preimage {Y Y' : Scheme.{u}} [IsLocallyNoetherian Y']
    (π : Y' ⟶ Y) (Z D : Y.IdealSheafData) :
    ((Blowup.strictTransform π Z D).support : Set Y') ⊆ ⇑π.base ⁻¹' (D.support : Set Y) := by
  have hpre : (((D.comap π).support : Closeds Y') : Set Y') =
      ⇑π.base ⁻¹' (D.support : Set Y) := by
    rw [Scheme.IdealSheafData.support_comap]; rfl
  have hclosed : IsClosed (((D.comap π).support : Closeds Y') : Set Y') :=
    (D.comap π).support.2
  rw [support_strictTransform_eq_closure_sdiff π Z D, ← hpre]
  exact closure_minimal Set.sdiff_subset hclosed

theorem isSmoothDivisor_iteratedComap {k : Type u} [Field k] [CharZero k] {X : Scheme.{u}}
    (p : X ⟶ Spec (CommRingCat.of k)) (d : BlowupSequenceData X) (L : ℕ) (hL : L ≤ d.length)
    (hsm : ∀ t, t ≤ L → AlgebraicGeometry.Smooth (BlowupSequenceData.projectionToBase d t ≫ p))
    (B₀ : (d.obj 0).IdealSheafData)
    (hB₀ : IsSmoothDivisor (BlowupSequenceData.projectionToBase d 0 ≫ p) B₀)
    (hcent : ∀ t, t < L →
      Disjoint (((d.center t).support : Set (d.obj t)))
        ((iteratedComap d B₀ t).support : Set (d.obj t))) :
    ∀ t, t ≤ L → IsSmoothDivisor (BlowupSequenceData.projectionToBase d t ≫ p) (iteratedComap d B₀ t) := by
  intro t
  induction t with
  | zero =>
    intro _
    exact hB₀
  | succ n ih =>
    intro hn
    have hlt : n < L := Nat.lt_of_succ_le hn
    have hle : n ≤ L := le_of_lt hlt
    have hs1 : AlgebraicGeometry.Smooth (BlowupSequenceData.projectionToBase d n ≫ p) := hsm n hle
    have heq : BlowupSequenceData.projectionToBase d (n + 1) ≫ p = d.map n ≫ BlowupSequenceData.projectionToBase d n ≫ p := by
      rw [BlowupSequenceData.projectionToBase_succ, Category.assoc]
    have hs2 : AlgebraicGeometry.Smooth (d.map n ≫ BlowupSequenceData.projectionToBase d n ≫ p) := by
      rw [← heq]
      exact hsm (n + 1) hn
    have hblow : Blowup.IsBlowupAlongIdealSheaf (d.map n) (d.center n) := d.isBlowup n (lt_of_lt_of_le hlt hL)
    have key := isSmoothDivisor_comap_of_isBlowupAlongIdealSheaf (BlowupSequenceData.projectionToBase d n ≫ p) (d.map n)
      (d.center n) (iteratedComap d B₀ n) hblow (ih hle) (hcent n hlt)
    rw [iteratedComap_succ, heq]
    exact key

theorem strictTransform_eq_mul_iteratedComap {X : Scheme.{u}} (d : BlowupSequenceData X) (L : ℕ)
    (hnoeth : ∀ t, t ≤ L → IsLocallyNoetherian (d.obj t))
    (K A : ∀ t : ℕ, (d.obj t).IdealSheafData) (B₀ : (d.obj 0).IdealSheafData)
    (hK0 : K 0 = A 0 * B₀)
    (hdisj0 : Disjoint ((A 0).support : Set (d.obj 0)) ((B₀).support : Set (d.obj 0)))
    (hKsucc : ∀ t, t < L → K (t + 1) = Blowup.strictTransform (d.map t) (d.center t) (K t))
    (hAsucc : ∀ t, t < L → A (t + 1) = Blowup.strictTransform (d.map t) (d.center t) (A t))
    (hcent : ∀ t, t < L →
      Disjoint (((d.center t).support : Set (d.obj t)))
        ((iteratedComap d B₀ t).support : Set (d.obj t))) :
    ∀ t, t ≤ L →
      K t = A t * iteratedComap d B₀ t ∧
        Disjoint ((A t).support : Set (d.obj t))
          ((iteratedComap d B₀ t).support : Set (d.obj t)) := by
  intro t
  induction t with
  | zero =>
    intro _
    exact ⟨hK0, hdisj0⟩
  | succ n ih =>
    intro hn
    have hlt : n < L := Nat.lt_of_succ_le hn
    have hle : n ≤ L := le_of_lt hlt
    obtain ⟨hKn, hdn⟩ := ih hle
    have hnoe : IsLocallyNoetherian (d.obj (n + 1)) := hnoeth (n + 1) hn
    have hmul : K (n + 1) = A (n + 1) * iteratedComap d B₀ (n + 1) := by
      rw [hKsucc n hlt, hKn, strictTransform_mul_of_disjoint_support (d.map n) (d.center n)
        (A n) (iteratedComap d B₀ n) (hcent n hlt).symm, hAsucc n hlt, iteratedComap_succ]
    refine ⟨hmul, ?_⟩
    have hsub : ((A (n + 1)).support : Set (d.obj (n + 1))) ⊆
        ⇑(d.map n).base ⁻¹' ((A n).support : Set (d.obj n)) := by
      rw [hAsucc n hlt]
      exact support_strictTransform_subset_preimage (d.map n) (d.center n) (A n)
    have hpre : ((((iteratedComap d B₀ n).comap (d.map n)).support : Closeds (d.obj (n + 1))) :
          Set (d.obj (n + 1))) =
        ⇑(d.map n).base ⁻¹' ((iteratedComap d B₀ n).support : Set (d.obj n)) := by
      rw [Scheme.IdealSheafData.support_comap]; rfl
    rw [iteratedComap_succ, hpre]
    rw [Set.disjoint_left] at hdn ⊢
    intro x hx hx'
    exact hdn (hsub hx) hx'

theorem isSmoothDivisor_strictTransform_of_disjoint_center {k : Type u} [Field k] [CharZero k] {X : Scheme.{u}}
    (p : X ⟶ Spec (CommRingCat.of k)) (d : BlowupSequenceData X) (L : ℕ) (hL : L ≤ d.length)
    (hnoeth : ∀ t, t ≤ L → IsLocallyNoetherian (d.obj t))
    (hsm : ∀ t, t ≤ L → AlgebraicGeometry.Smooth (BlowupSequenceData.projectionToBase d t ≫ p))
    (K A : ∀ t : ℕ, (d.obj t).IdealSheafData) (B₀ : (d.obj 0).IdealSheafData)
    (hK0 : K 0 = A 0 * B₀)
    (hdisj0 : Disjoint ((A 0).support : Set (d.obj 0)) ((B₀).support : Set (d.obj 0)))
    (hKsucc : ∀ t, t < L → K (t + 1) = Blowup.strictTransform (d.map t) (d.center t) (K t))
    (hAsucc : ∀ t, t < L → A (t + 1) = Blowup.strictTransform (d.map t) (d.center t) (A t))
    (hB₀ : IsSmoothDivisor (BlowupSequenceData.projectionToBase d 0 ≫ p) B₀)
    (hA : ∀ t, t ≤ L → IsSmoothDivisor (BlowupSequenceData.projectionToBase d t ≫ p) (A t))
    (hcent : ∀ t, t < L →
      Disjoint (((d.center t).support : Set (d.obj t)))
        ((iteratedComap d B₀ t).support : Set (d.obj t))) :
    ∀ t, t ≤ L → IsSmoothDivisor (BlowupSequenceData.projectionToBase d t ≫ p) (K t) := by
  intro t ht
  have hst : AlgebraicGeometry.Smooth (BlowupSequenceData.projectionToBase d t ≫ p) := hsm t ht
  have hfac := strictTransform_eq_mul_iteratedComap d L hnoeth K A B₀ hK0 hdisj0 hKsucc hAsucc hcent t ht
  have hB := isSmoothDivisor_iteratedComap p d L hL hsm B₀ hB₀ hcent t ht
  rw [hfac.1]
  exact isSmoothDivisor_mul_of_disjoint_support (BlowupSequenceData.projectionToBase d t ≫ p) (A t)
    (iteratedComap d B₀ t) (hA t ht) hB hfac.2

end TransportedDivisor

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.IteratedComapDivisor =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.PrependedAmbientSequence =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.PrependedAmbientSequence", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.PushedBlowupSequence\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedOrderReduction.OrderAlongBlowupSequence\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.IteratedComapDivisor\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.OrderAtMultiplicativity\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.AmbientCenterImage\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.ContainedComponentsIdeal\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.KernelOfAmbientEmbedding\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.LowerBoundaryAfterBlowup\nimport Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

private theorem not_natCast_add_one_le_self (n : ℕ) : ¬ ((n : ℕ∞) + 1 ≤ (n : ℕ∞)) := by
  rw [ENat.add_one_le_iff (ENat.natCast_ne_top n)]
  exact lt_irrefl _

private def iteratedStrictTransform {X : Scheme.{u}} (d : BlowupSequenceData X)
    (A0 : (d.obj 0).IdealSheafData) (t : ℕ) : (d.obj t).IdealSheafData :=
  Nat.rec (motive := fun n => (d.obj n).IdealSheafData) A0
    (fun n ih => Blowup.strictTransform (d.map n) (d.center n) ih) t

private theorem strictTransformIter_succ {X : Scheme.{u}} (d : BlowupSequenceData X)
    (A0 : (d.obj 0).IdealSheafData) (t : ℕ) :
    iteratedStrictTransform d A0 (t + 1) =
      Blowup.strictTransform (d.map t) (d.center t) (iteratedStrictTransform d A0 t) := rfl

private theorem length_le_length_boundary {k : Type u} [Field k] {X : Scheme.{u}}
    {p : X ⟶ Spec (CommRingCat.of k)} {I : X.IdealSheafData} {m : ℕ}
    {E : List X.IdealSheafData} (S : MarkedSequenceOfBlowups p I m E) (n : ℕ) :
    n ≤ S.length → E.length ≤ (S.boundary n).length := by
  induction n with
  | zero =>
    intro _
    simp [S.boundary_zero]
  | succ n ih =>
    intro hn
    have h1 := ih (by omega)
    have h2 : (S.boundary (n + 1)).length = (S.boundary n).length + 1 := by
      rw [S.boundary_succ n (by omega)]
      simp
    omega

private theorem boundary_zero_get_eq_comap {k : Type u} [Field k] {X : Scheme.{u}}
    {p : X ⟶ Spec (CommRingCat.of k)} {I : X.IdealSheafData} {m : ℕ}
    {E : List X.IdealSheafData} (S : MarkedSequenceOfBlowups p I m E) (j : ℕ) (hj : j < E.length)
    (h : j < (S.boundary 0).length) :
    (S.boundary 0).get ⟨j, h⟩ = (E.get ⟨j, hj⟩).comap S.isoZero.hom := by
  have hb := S.boundary_zero
  rw [List.get_eq_getElem, List.get_eq_getElem, List.getElem_of_eq hb h, List.getElem_map]

private theorem boundary_succ_get_eq_strictTransform {k : Type u} [Field k] {X : Scheme.{u}}
    {p : X ⟶ Spec (CommRingCat.of k)} {I : X.IdealSheafData} {m : ℕ}
    {E : List X.IdealSheafData} (S : MarkedSequenceOfBlowups p I m E) (j n : ℕ) (hn : n < S.length)
    (hjn : j < (S.boundary n).length) (h : j < (S.boundary (n + 1)).length) :
    (S.boundary (n + 1)).get ⟨j, h⟩ =
      Blowup.strictTransform (S.transitionMapSucc n) (S.center n) ((S.boundary n).get ⟨j, hjn⟩) := by
  have hb := S.boundary_succ n hn
  have hlen : j < (List.map (Blowup.strictTransform (S.transitionMapSucc n) (S.center n))
      (S.boundary n)).length := by
    rw [List.length_map]
    exact hjn
  rw [List.get_eq_getElem, List.get_eq_getElem, List.getElem_of_eq hb h]
  simp [List.getElem_append_left hlen]

private theorem containedComponentsIdeal_pow_mul_lowerIdealAfterBlowup (T : MarkedIdealWithBoundary.{u}) (hV : T.IsAdmissible) (j : ℕ)
    (hj : j < T.boundary.length) :
    DivisorReduction.containedComponentsIdeal T j hj ^ T.mult * DivisorReduction.lowerIdealAfterBlowup T j hj = T.ideal := by
  obtain ⟨J, hJ⟩ := exists_mul_pow_containedComponentsIdeal_eq_ideal T hV j hj
  have hex : Blowup.exceptionalIdeal (𝟙 T.scheme) (DivisorReduction.containedComponentsIdeal T j hj)
      = DivisorReduction.containedComponentsIdeal T j hj := by
    rw [Blowup.exceptionalIdeal_eq_comap, Scheme.IdealSheafData.comap_id]
  have hA : (T.ideal.comap (𝟙 T.scheme)).comap (𝟙 T.scheme) = T.ideal := by
    rw [Scheme.IdealSheafData.comap_id, Scheme.IdealSheafData.comap_id]
  have h1 : ∃ B, Blowup.exceptionalIdeal (𝟙 T.scheme) (DivisorReduction.containedComponentsIdeal T j hj) ^ T.mult * B
      = (T.ideal.comap (𝟙 T.scheme)).comap (𝟙 T.scheme) := by
    refine ⟨J, ?_⟩
    rw [hex, hA]
    exact hJ
  have h2 := pow_mul_residualByPow ((T.ideal.comap (𝟙 T.scheme)).comap (𝟙 T.scheme))
    (Blowup.exceptionalIdeal (𝟙 T.scheme) (DivisorReduction.containedComponentsIdeal T j hj)) T.mult h1
  rw [hex, hA] at h2
  unfold DivisorReduction.lowerIdealAfterBlowup
  rw [hex, hA]
  exact h2

namespace TransportedDivisor

theorem support_iteratedComap {X : Scheme.{u}} (d : BlowupSequenceData X) (B : (d.obj 0).IdealSheafData)
    (t : ℕ) :
    (↑(iteratedComap d B t).support : Set ↥(d.obj t)) =
      ⇑(d.projectionToBase t ≫ d.isoZero.inv) ⁻¹' (↑B.support : Set ↥(d.obj 0)) := by
  induction t with
  | zero =>
    have h0 : d.projectionToBase 0 ≫ d.isoZero.inv = 𝟙 (d.obj 0) := by
      rw [BlowupSequenceData.projectionToBase_zero]
      exact d.isoZero.hom_inv_id
    rw [iteratedComap_zero, h0]
    ext x
    simp only [Set.mem_preimage, Scheme.Hom.id_base, TopCat.id_app]
  | succ t ih =>
    have hcomp : d.projectionToBase (t + 1) ≫ d.isoZero.inv
        = d.map t ≫ (d.projectionToBase t ≫ d.isoZero.inv) := by
      rw [BlowupSequenceData.projectionToBase_succ, Category.assoc]
    ext x
    rw [iteratedComap_succ]
    have hmem : x ∈ (↑((iteratedComap d B t).comap (d.map t)).support :
          Set ↥(d.obj (t + 1))) ↔
        d.map t x ∈ (↑(iteratedComap d B t).support : Set ↥(d.obj t)) :=
      Scheme.IdealSheafData.mem_support_comap
    rw [hmem, ih, hcomp]
    simp only [Set.mem_preimage, Scheme.Hom.comp_apply]

end TransportedDivisor

namespace DivisorReduction

theorem disjoint_support_lowerIdealAfterBlowup_containedComponentsIdeal (T : MarkedIdealWithBoundary.{u}) (hV : T.IsAdmissible)
    (hord : ∀ x : ↥T.scheme, orderAt T.ideal x ≤ (T.mult : ℕ∞))
    (j : ℕ) (hj : j < T.boundary.length) :
    Disjoint ((lowerIdealAfterBlowup T j hj).support : Set ↥T.scheme)
      ((containedComponentsIdeal T j hj).support : Set ↥T.scheme) := by
  have := hV.charZero
  have := hV.smooth
  rw [Set.disjoint_left]
  intro x hx1 hx2
  have hkey := containedComponentsIdeal_pow_mul_lowerIdealAfterBlowup T hV j hj
  have ha : 1 ≤ orderAt (containedComponentsIdeal T j hj) x :=
    (one_le_orderAt_iff_mem_support _ _).2 hx2
  have hbb : 1 ≤ orderAt (lowerIdealAfterBlowup T j hj) x :=
    (one_le_orderAt_iff_mem_support _ _).2 hx1
  have h3 : orderAt T.ideal x
      = (T.mult : ℕ∞) * orderAt (containedComponentsIdeal T j hj) x
        + orderAt (lowerIdealAfterBlowup T j hj) x := by
    rw [← hkey, orderAt_mul T.base T.structMap, orderAt_pow T.base T.structMap]
  have hm : (T.mult : ℕ∞) ≤ (T.mult : ℕ∞) * orderAt (containedComponentsIdeal T j hj) x := by
    calc (T.mult : ℕ∞) = (T.mult : ℕ∞) * 1 := (mul_one _).symm
      _ ≤ (T.mult : ℕ∞) * orderAt (containedComponentsIdeal T j hj) x := by gcongr
  have hordGe : (T.mult : ℕ∞) + 1 ≤ orderAt T.ideal x := by
    rw [h3]
    exact add_le_add hm hbb
  exact not_natCast_add_one_le_self T.mult (le_trans hordGe (hord x))

private theorem ambientBlowupSeq_isoObjZero_hom (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) (T : MarkedIdealWithBoundary.{u})
    [AlgebraicGeometry.IsNoetherian T.scheme] (j : ℕ) (hj : j < T.boundary.length)
    (I₀ : T.scheme.IdealSheafData) (E₀ : List T.scheme.IdealSheafData)
    (s : (restrictToBoundaryDivisor T j hj I₀ E₀).SequenceOfBlowups)
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent) :
    (ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).isoZero.hom = 𝟙 T.scheme :=
  congrArg Iso.hom (ambientBlowupSequence_isoObjZero (T.boundary.get ⟨j, hj⟩).subschemeι
    (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData hres hno hpr)

private theorem ambientBlowupSeq_isoObjZero_inv (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) (T : MarkedIdealWithBoundary.{u})
    [AlgebraicGeometry.IsNoetherian T.scheme] (j : ℕ) (hj : j < T.boundary.length)
    (I₀ : T.scheme.IdealSheafData) (E₀ : List T.scheme.IdealSheafData)
    (s : (restrictToBoundaryDivisor T j hj I₀ E₀).SequenceOfBlowups)
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent) :
    (ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).isoZero.inv = 𝟙 T.scheme :=
  congrArg Iso.inv (ambientBlowupSequence_isoObjZero (T.boundary.get ⟨j, hj⟩).subschemeι
    (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData hres hno hpr)

private theorem ambientBlowupSeq_projectionToBase_zero_comp_structureMorphism (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) (T : MarkedIdealWithBoundary.{u})
    [AlgebraicGeometry.IsNoetherian T.scheme] (j : ℕ) (hj : j < T.boundary.length)
    (I₀ : T.scheme.IdealSheafData) (E₀ : List T.scheme.IdealSheafData)
    (s : (restrictToBoundaryDivisor T j hj I₀ E₀).SequenceOfBlowups)
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent) :
    (ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).projectionToBase 0 ≫ T.structMap = T.structMap := by
  have h1 : (ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).projectionToBase 0 = 𝟙 T.scheme :=
    (BlowupSequenceData.projectionToBase_zero _).trans (ambientBlowupSeq_isoObjZero_hom hres hno T j hj I₀ E₀ s hpr)
  rw [h1]
  exact Category.id_comp T.structMap

private theorem ambientBlowupSeq_projectionToBase_comp_isoObjZero_inv (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) (T : MarkedIdealWithBoundary.{u})
    [AlgebraicGeometry.IsNoetherian T.scheme] (j : ℕ) (hj : j < T.boundary.length)
    (I₀ : T.scheme.IdealSheafData) (E₀ : List T.scheme.IdealSheafData)
    (s : (restrictToBoundaryDivisor T j hj I₀ E₀).SequenceOfBlowups)
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent) (n : ℕ) :
    (ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).projectionToBase n ≫
        (ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).isoZero.inv
      = (ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).projectionToBase n := by
  rw [ambientBlowupSeq_isoObjZero_inv hres hno T j hj I₀ E₀ s hpr]
  exact Category.comp_id ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).projectionToBase n)

private theorem prependedAmbientSeq_length (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) (T : MarkedIdealWithBoundary.{u})
    [AlgebraicGeometry.IsNoetherian T.scheme] (j : ℕ) (hj : j < T.boundary.length)
    (hb : Blowup.IsBlowupAlongIdealSheaf (𝟙 T.scheme) (containedComponentsIdeal T j hj))
    (s : (restrictTwistedToDivisor T j hj).SequenceOfBlowups)
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent)
    (hmk : (BlowupSequenceData.prepend (containedComponentsIdeal T j hj) hb
        (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr)).IsMarked
      T.structMap T.ideal T.mult T.boundary) :
    (prependedPushedMarkedSeq hres hno T j hj hb s hpr hmk).length = s.length + 1 := by
  have h1 : (BlowupSequenceData.prepend (containedComponentsIdeal T j hj) hb
      (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr)).length
      = s.length + 1 := by
    rw [BlowupSequenceData.prepend_length,
      ambientBlowupSeq_length hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr]
  exact h1

private theorem prependedAmbientSeq_blowupMorphism (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) (T : MarkedIdealWithBoundary.{u})
    [AlgebraicGeometry.IsNoetherian T.scheme] (j : ℕ) (hj : j < T.boundary.length)
    (hb : Blowup.IsBlowupAlongIdealSheaf (𝟙 T.scheme) (containedComponentsIdeal T j hj))
    (s : (restrictTwistedToDivisor T j hj).SequenceOfBlowups)
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent)
    (hmk : (BlowupSequenceData.prepend (containedComponentsIdeal T j hj) hb
        (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr)).IsMarked
      T.structMap T.ideal T.mult T.boundary) (n : ℕ) :
    (prependedPushedMarkedSeq hres hno T j hj hb s hpr hmk).transitionMapSucc n =
      (BlowupSequenceData.prepend (containedComponentsIdeal T j hj) hb
        (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr)).map n :=
  MarkedBlowupSequenceData.toMarkedSequence_blowupMorphism
    ((BlowupSequenceData.prepend (containedComponentsIdeal T j hj) hb
      (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr)).toMarkedBlowupSequenceData
      T.structMap T.ideal T.mult T.boundary hmk) n

private theorem prependedAmbientSeq_center (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) (T : MarkedIdealWithBoundary.{u})
    [AlgebraicGeometry.IsNoetherian T.scheme] (j : ℕ) (hj : j < T.boundary.length)
    (hb : Blowup.IsBlowupAlongIdealSheaf (𝟙 T.scheme) (containedComponentsIdeal T j hj))
    (s : (restrictTwistedToDivisor T j hj).SequenceOfBlowups)
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent)
    (hmk : (BlowupSequenceData.prepend (containedComponentsIdeal T j hj) hb
        (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr)).IsMarked
      T.structMap T.ideal T.mult T.boundary) (n : ℕ) :
    (prependedPushedMarkedSeq hres hno T j hj hb s hpr hmk).center n =
      (BlowupSequenceData.prepend (containedComponentsIdeal T j hj) hb
        (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr)).center n :=
  MarkedBlowupSequenceData.toMarkedSequence_center
    ((BlowupSequenceData.prepend (containedComponentsIdeal T j hj) hb
      (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr)).toMarkedBlowupSequenceData
      T.structMap T.ideal T.mult T.boundary hmk) n

private theorem prependedAmbientSeq_blowupMorphism_zero (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) (T : MarkedIdealWithBoundary.{u})
    [AlgebraicGeometry.IsNoetherian T.scheme] (j : ℕ) (hj : j < T.boundary.length)
    (hb : Blowup.IsBlowupAlongIdealSheaf (𝟙 T.scheme) (containedComponentsIdeal T j hj))
    (s : (restrictTwistedToDivisor T j hj).SequenceOfBlowups)
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent)
    (hmk : (BlowupSequenceData.prepend (containedComponentsIdeal T j hj) hb
        (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr)).IsMarked
      T.structMap T.ideal T.mult T.boundary) :
    (prependedPushedMarkedSeq hres hno T j hj hb s hpr hmk).transitionMapSucc 0 = 𝟙 T.scheme := by
  rw [prependedAmbientSeq_blowupMorphism hres hno T j hj hb s hpr hmk 0, BlowupSequenceData.prepend_blowupMorphism_zero]
  exact ambientBlowupSeq_isoObjZero_hom hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr

private theorem prependedAmbientSeq_blowupMorphism_succ (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) (T : MarkedIdealWithBoundary.{u})
    [AlgebraicGeometry.IsNoetherian T.scheme] (j : ℕ) (hj : j < T.boundary.length)
    (hb : Blowup.IsBlowupAlongIdealSheaf (𝟙 T.scheme) (containedComponentsIdeal T j hj))
    (s : (restrictTwistedToDivisor T j hj).SequenceOfBlowups)
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent)
    (hmk : (BlowupSequenceData.prepend (containedComponentsIdeal T j hj) hb
        (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr)).IsMarked
      T.structMap T.ideal T.mult T.boundary) (n : ℕ) :
    (prependedPushedMarkedSeq hres hno T j hj hb s hpr hmk).transitionMapSucc (n + 1) =
      (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr).map n :=
  (prependedAmbientSeq_blowupMorphism hres hno T j hj hb s hpr hmk (n + 1)).trans
    (BlowupSequenceData.prepend_blowupMorphism_succ (containedComponentsIdeal T j hj) hb
      (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr) n)

private theorem prependedAmbientSeq_center_zero (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) (T : MarkedIdealWithBoundary.{u})
    [AlgebraicGeometry.IsNoetherian T.scheme] (j : ℕ) (hj : j < T.boundary.length)
    (hb : Blowup.IsBlowupAlongIdealSheaf (𝟙 T.scheme) (containedComponentsIdeal T j hj))
    (s : (restrictTwistedToDivisor T j hj).SequenceOfBlowups)
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent)
    (hmk : (BlowupSequenceData.prepend (containedComponentsIdeal T j hj) hb
        (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr)).IsMarked
      T.structMap T.ideal T.mult T.boundary) :
    (prependedPushedMarkedSeq hres hno T j hj hb s hpr hmk).center 0 = containedComponentsIdeal T j hj :=
  (prependedAmbientSeq_center hres hno T j hj hb s hpr hmk 0).trans
    (BlowupSequenceData.prepend_center_zero (containedComponentsIdeal T j hj) hb
      (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr))

private theorem prependedAmbientSeq_center_succ (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) (T : MarkedIdealWithBoundary.{u})
    [AlgebraicGeometry.IsNoetherian T.scheme] (j : ℕ) (hj : j < T.boundary.length)
    (hb : Blowup.IsBlowupAlongIdealSheaf (𝟙 T.scheme) (containedComponentsIdeal T j hj))
    (s : (restrictTwistedToDivisor T j hj).SequenceOfBlowups)
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent)
    (hmk : (BlowupSequenceData.prepend (containedComponentsIdeal T j hj) hb
        (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr)).IsMarked
      T.structMap T.ideal T.mult T.boundary) (n : ℕ) :
    (prependedPushedMarkedSeq hres hno T j hj hb s hpr hmk).center (n + 1) =
      (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr).center n :=
  (prependedAmbientSeq_center hres hno T j hj hb s hpr hmk (n + 1)).trans
    (BlowupSequenceData.prepend_center_succ (containedComponentsIdeal T j hj) hb
      (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr) n)

private theorem prependedAmbientSeq_isoObjZero_hom (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) (T : MarkedIdealWithBoundary.{u})
    [AlgebraicGeometry.IsNoetherian T.scheme] (j : ℕ) (hj : j < T.boundary.length)
    (hb : Blowup.IsBlowupAlongIdealSheaf (𝟙 T.scheme) (containedComponentsIdeal T j hj))
    (s : (restrictTwistedToDivisor T j hj).SequenceOfBlowups)
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent)
    (hmk : (BlowupSequenceData.prepend (containedComponentsIdeal T j hj) hb
        (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr)).IsMarked
      T.structMap T.ideal T.mult T.boundary) :
    (prependedPushedMarkedSeq hres hno T j hj hb s hpr hmk).isoZero.hom = 𝟙 T.scheme :=
  congrArg Iso.hom (BlowupSequenceData.prepend_isoObjZero (containedComponentsIdeal T j hj) hb
    (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr))

private theorem prependedAmbientSeq_projectionToSpec_succ (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) (T : MarkedIdealWithBoundary.{u})
    [AlgebraicGeometry.IsNoetherian T.scheme] (j : ℕ) (hj : j < T.boundary.length)
    (hb : Blowup.IsBlowupAlongIdealSheaf (𝟙 T.scheme) (containedComponentsIdeal T j hj))
    (s : (restrictTwistedToDivisor T j hj).SequenceOfBlowups)
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent)
    (hmk : (BlowupSequenceData.prepend (containedComponentsIdeal T j hj) hb
        (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr)).IsMarked
      T.structMap T.ideal T.mult T.boundary) (n : ℕ) :
    (prependedPushedMarkedSeq hres hno T j hj hb s hpr hmk).projectionToSpec (n + 1) =
      (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr).projectionToBase n ≫
        T.structMap := by
  have h1 := MarkedBlowupSequenceData.toMarkedSequence_projectionToSpec
    ((BlowupSequenceData.prepend (containedComponentsIdeal T j hj) hb
      (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr)).toMarkedBlowupSequenceData
      T.structMap T.ideal T.mult T.boundary hmk) (n + 1)
  have h2 := BlowupSequenceData.projectionToBase_prepend_succ (containedComponentsIdeal T j hj) hb
    (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr) n
  exact h1.trans (congrArg (fun f => f ≫ T.structMap) h2)

private theorem ker_embeddingIntoAmbient_zero (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) (T : MarkedIdealWithBoundary.{u})
    [AlgebraicGeometry.IsNoetherian T.scheme] (j : ℕ) (hj : j < T.boundary.length)
    (hb : Blowup.IsBlowupAlongIdealSheaf (𝟙 T.scheme) (containedComponentsIdeal T j hj))
    (s : (restrictTwistedToDivisor T j hj).SequenceOfBlowups)
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent)
    (hmk : (BlowupSequenceData.prepend (containedComponentsIdeal T j hj) hb
        (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr)).IsMarked
      T.structMap T.ideal T.mult T.boundary) :
    AlgebraicGeometry.Scheme.Hom.ker
        (embeddingIntoAmbient hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr 0)
      = T.boundary.get ⟨j, hj⟩ := by
  have h2 := ker_embeddingIntoAmbient_zero_eq_comap_blowupMorphism hres hno T j hj hb s hpr hmk
  rw [prependedAmbientSeq_isoObjZero_hom hres hno T j hj hb s hpr hmk,
    prependedAmbientSeq_blowupMorphism_zero hres hno T j hj hb s hpr hmk] at h2
  have h3 : ((T.boundary.get ⟨j, hj⟩).comap (𝟙 T.scheme)).comap (𝟙 T.scheme)
      = T.boundary.get ⟨j, hj⟩ := by
    rw [Scheme.IdealSheafData.comap_id, Scheme.IdealSheafData.comap_id]
  exact h2.trans h3

private theorem isSmoothDivisor_prependedAmbientSeq_boundary_get (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) (T : MarkedIdealWithBoundary.{u})
    [AlgebraicGeometry.IsNoetherian T.scheme] (hV : T.IsAdmissible) (j : ℕ)
    (hj : j < T.boundary.length)
    (hb : Blowup.IsBlowupAlongIdealSheaf (𝟙 T.scheme) (containedComponentsIdeal T j hj))
    (s : (restrictTwistedToDivisor T j hj).SequenceOfBlowups)
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent)
    (hmk : (BlowupSequenceData.prepend (containedComponentsIdeal T j hj) hb
        (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr)).IsMarked
      T.structMap T.ideal T.mult T.boundary)
    (i : ℕ) (hi : i ≤ s.length + 1)
    (h : j < ((prependedPushedMarkedSeq hres hno T j hj hb s hpr hmk).boundary i).length) :
    IsSmoothDivisor ((prependedPushedMarkedSeq hres hno T j hj hb s hpr hmk).projectionToSpec i)
      (((prependedPushedMarkedSeq hres hno T j hj hb s hpr hmk).boundary i).get ⟨j, h⟩) := by
  have hvl : (T.transformAt (prependedPushedMarkedSeq hres hno T j hj hb s hpr hmk) i).IsAdmissible :=
    MarkedIdealWithBoundary.IsAdmissible.transformAt effectiveCartierSupportContainsNoComponent hV
      (prependedPushedMarkedSeq hres hno T j hj hb s hpr hmk) i
      (by rw [prependedAmbientSeq_length hres hno T j hj hb s hpr hmk]; omega)
  have h2 : j < (T.transformAt (prependedPushedMarkedSeq hres hno T j hj hb s hpr hmk) i).boundary.length := by
    rw [MarkedIdealWithBoundary.transformAt_boundary]
    exact h
  have h3 := isSmoothDivisor_boundary_get
    (T.transformAt (prependedPushedMarkedSeq hres hno T j hj hb s hpr hmk) i) hvl j h2
  rw [MarkedIdealWithBoundary.transformAt_structureMorphism] at h3
  exact h3

private theorem prependedAmbientSeq_boundary_succ_get
    (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) (T : MarkedIdealWithBoundary.{u})
    [AlgebraicGeometry.IsNoetherian T.scheme] (j : ℕ) (hj : j < T.boundary.length)
    (hb : Blowup.IsBlowupAlongIdealSheaf (𝟙 T.scheme) (containedComponentsIdeal T j hj))
    (s : (restrictTwistedToDivisor T j hj).SequenceOfBlowups)
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent)
    (hmk : (BlowupSequenceData.prepend (containedComponentsIdeal T j hj) hb
        (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr)).IsMarked
      T.structMap T.ideal T.mult T.boundary) :
    ∀ n, n ≤ s.length →
      ∀ h : j < ((prependedPushedMarkedSeq hres hno T j hj hb s hpr hmk).boundary (n + 1)).length,
        ((prependedPushedMarkedSeq hres hno T j hj hb s hpr hmk).boundary (n + 1)).get ⟨j, h⟩ =
          iteratedStrictTransform
            (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr)
            (Blowup.strictTransform (𝟙 T.scheme) (containedComponentsIdeal T j hj)
              ((T.boundary.get ⟨j, hj⟩).comap (𝟙 T.scheme))) n := by
  intro n
  induction n with
  | zero =>
    intro _ h
    have hz0 : j < ((prependedPushedMarkedSeq hres hno T j hj hb s hpr hmk).boundary 0).length :=
      lt_of_lt_of_le hj
        (length_le_length_boundary (prependedPushedMarkedSeq hres hno T j hj hb s hpr hmk) 0 (Nat.zero_le _))
    rw [boundary_succ_get_eq_strictTransform (prependedPushedMarkedSeq hres hno T j hj hb s hpr hmk) j 0
        (by rw [prependedAmbientSeq_length hres hno T j hj hb s hpr hmk]; omega) hz0 h,
      boundary_zero_get_eq_comap (prependedPushedMarkedSeq hres hno T j hj hb s hpr hmk) j hj hz0,
      prependedAmbientSeq_isoObjZero_hom hres hno T j hj hb s hpr hmk,
      prependedAmbientSeq_blowupMorphism_zero hres hno T j hj hb s hpr hmk,
      prependedAmbientSeq_center_zero hres hno T j hj hb s hpr hmk]
    rfl
  | succ n ih =>
    intro hn h
    have hn1 : j < ((prependedPushedMarkedSeq hres hno T j hj hb s hpr hmk).boundary (n + 1)).length :=
      lt_of_lt_of_le hj (length_le_length_boundary (prependedPushedMarkedSeq hres hno T j hj hb s hpr hmk) (n + 1)
        (by rw [prependedAmbientSeq_length hres hno T j hj hb s hpr hmk]; omega))
    rw [boundary_succ_get_eq_strictTransform (prependedPushedMarkedSeq hres hno T j hj hb s hpr hmk) j (n + 1)
        (by rw [prependedAmbientSeq_length hres hno T j hj hb s hpr hmk]; omega) hn1 h,
      ih (by omega) hn1,
      prependedAmbientSeq_blowupMorphism_succ hres hno T j hj hb s hpr hmk n,
      prependedAmbientSeq_center_succ hres hno T j hj hb s hpr hmk n]
    rfl

private theorem projectionToBase_mem_support_of_mem_support_ideal (T : MarkedIdealWithBoundary.{u}) (j : ℕ)
    (hj : j < T.boundary.length) (s : (restrictTwistedToDivisor T j hj).SequenceOfBlowups) :
    ∀ n, n ≤ s.length → ∀ y : ↥((MarkedBlowupSequenceData.ofMarkedSequence s).obj n),
      y ∈ (↑((MarkedBlowupSequenceData.ofMarkedSequence s).ideal n).support :
          Set ↥((MarkedBlowupSequenceData.ofMarkedSequence s).obj n)) →
      (MarkedBlowupSequenceData.ofMarkedSequence s).proj n y ∈
        (↑(restrictTwistedToDivisor T j hj).ideal.support : Set ↥(restrictTwistedToDivisor T j hj).scheme) := by
  intro n
  induction n with
  | zero =>
    intro _ y hy
    have h1 : (MarkedBlowupSequenceData.ofMarkedSequence s).ideal 0
        = (restrictTwistedToDivisor T j hj).ideal.comap (MarkedBlowupSequenceData.ofMarkedSequence s).isoZero.hom :=
      (MarkedBlowupSequenceData.ofMarkedSequence s).ideal_zero
    rw [h1] at hy
    have h2 : (MarkedBlowupSequenceData.ofMarkedSequence s).isoZero.hom y ∈
        (↑(restrictTwistedToDivisor T j hj).ideal.support : Set ↥(restrictTwistedToDivisor T j hj).scheme) :=
      Scheme.IdealSheafData.mem_support_comap.mp hy
    have h3 : (MarkedBlowupSequenceData.ofMarkedSequence s).proj 0
        = (MarkedBlowupSequenceData.ofMarkedSequence s).isoZero.hom :=
      (MarkedBlowupSequenceData.ofMarkedSequence s).proj_zero
    rw [h3]
    exact h2
  | succ n ih =>
    intro hn y hy
    have hn' : n < (MarkedBlowupSequenceData.ofMarkedSequence s).length := by
      rw [MarkedBlowupSequenceData.ofMarkedSequence_length]
      omega
    have h2 := (MarkedBlowupSequenceData.ofMarkedSequence s).ideal_succ n hn'
    have h1 : (1 : ℕ∞) ≤ orderAt ((MarkedBlowupSequenceData.ofMarkedSequence s).ideal (n + 1)) y :=
      (one_le_orderAt_iff_mem_support _ _).2 hy
    have h5 : orderAt (Blowup.exceptionalIdeal ((MarkedBlowupSequenceData.ofMarkedSequence s).map n)
            ((MarkedBlowupSequenceData.ofMarkedSequence s).center n) ^ (restrictTwistedToDivisor T j hj).mult) y
          + orderAt ((MarkedBlowupSequenceData.ofMarkedSequence s).ideal (n + 1)) y
        ≤ orderAt (Blowup.exceptionalIdeal ((MarkedBlowupSequenceData.ofMarkedSequence s).map n)
            ((MarkedBlowupSequenceData.ofMarkedSequence s).center n) ^ (restrictTwistedToDivisor T j hj).mult
            * (MarkedBlowupSequenceData.ofMarkedSequence s).ideal (n + 1)) y := by
      apply add_orderAt_le_orderAt_mul
    rw [h2] at h5
    have h6 : (1 : ℕ∞) ≤ orderAt (((MarkedBlowupSequenceData.ofMarkedSequence s).ideal n).comap
        ((MarkedBlowupSequenceData.ofMarkedSequence s).map n)) y :=
      le_trans (le_trans h1 le_add_self) h5
    have h7 : y ∈ (↑(((MarkedBlowupSequenceData.ofMarkedSequence s).ideal n).comap
        ((MarkedBlowupSequenceData.ofMarkedSequence s).map n)).support :
          Set ↥((MarkedBlowupSequenceData.ofMarkedSequence s).obj (n + 1))) :=
      (one_le_orderAt_iff_mem_support _ _).1 h6
    have h8 : (MarkedBlowupSequenceData.ofMarkedSequence s).map n y ∈
        (↑((MarkedBlowupSequenceData.ofMarkedSequence s).ideal n).support :
          Set ↥((MarkedBlowupSequenceData.ofMarkedSequence s).obj n)) :=
      Scheme.IdealSheafData.mem_support_comap.mp h7
    have h9 := ih (by omega) _ h8
    have h10 : (MarkedBlowupSequenceData.ofMarkedSequence s).proj (n + 1)
        = (MarkedBlowupSequenceData.ofMarkedSequence s).map n ≫ (MarkedBlowupSequenceData.ofMarkedSequence s).proj n :=
      (MarkedBlowupSequenceData.ofMarkedSequence s).proj_succ n
    rw [h10]
    exact h9

private theorem disjoint_support_center_iteratedComap_containedComponentsIdeal
    (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) (T : MarkedIdealWithBoundary.{u})
    [AlgebraicGeometry.IsNoetherian T.scheme] (hV : T.IsAdmissible)
    (hord : ∀ x : ↥T.scheme, orderAt T.ideal x ≤ (T.mult : ℕ∞))
    (j : ℕ) (hj : j < T.boundary.length) (hlow : (restrictTwistedToDivisor T j hj).IsAdmissible)
    (s : (restrictTwistedToDivisor T j hj).SequenceOfBlowups)
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent)
    (hcomp : ∀ t ≤ s.length,
      embeddingIntoAmbient hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr t ≫
          (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr).projectionToBase t =
        (MarkedBlowupSequenceData.ofMarkedSequence s).proj t ≫ (T.boundary.get ⟨j, hj⟩).subschemeι)
    (n : ℕ) (hn : n < s.length) :
    Disjoint
      (↑((ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj)
          (lowerBoundaryAfterBlowup T j hj) s hpr).center n).support :
        Set ↥((ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr).obj n))
      (↑(TransportedDivisor.iteratedComap
          (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr)
          (containedComponentsIdeal T j hj) n).support :
        Set ↥((ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj)
          (lowerBoundaryAfterBlowup T j hj) s hpr).obj n)) := by
  rw [Set.disjoint_left]
  intro y hy1 hy2
  rw [support_ambientBlowupSeq_center_eq_image hres hno T j hj (lowerIdealAfterBlowup T j hj)
    (lowerBoundaryAfterBlowup T j hj) s hpr n] at hy1
  obtain ⟨z, hz, rfl⟩ := hy1
  have hn' : n < (MarkedBlowupSequenceData.ofMarkedSequence s).length := by
    rw [MarkedBlowupSequenceData.ofMarkedSequence_length]
    exact hn
  have hzco := (MarkedBlowupSequenceData.ofMarkedSequence s).center_order n hn' hz
  rw [mem_orderAtLeastLocus_iff] at hzco
  have hz2 : (1 : ℕ∞) ≤ orderAt ((MarkedBlowupSequenceData.ofMarkedSequence s).ideal n) z :=
    le_trans (by exact_mod_cast hlow.one_le_mult) hzco
  have hzs : z ∈ (↑((MarkedBlowupSequenceData.ofMarkedSequence s).ideal n).support :
      Set ↥((MarkedBlowupSequenceData.ofMarkedSequence s).obj n)) :=
    (one_le_orderAt_iff_mem_support _ _).1 hz2
  have hw1 := projectionToBase_mem_support_of_mem_support_ideal T j hj s n (le_of_lt hn) z hzs
  have hw2 : (T.boundary.get ⟨j, hj⟩).subschemeι ((MarkedBlowupSequenceData.ofMarkedSequence s).proj n z)
      ∈ (↑(lowerIdealAfterBlowup T j hj).support : Set ↥T.scheme) :=
    Scheme.IdealSheafData.mem_support_comap.mp hw1
  have hsupp := TransportedDivisor.support_iteratedComap
      (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr)
      (containedComponentsIdeal T j hj) n
  rw [ambientBlowupSeq_projectionToBase_comp_isoObjZero_inv hres hno T j hj (lowerIdealAfterBlowup T j hj)
    (lowerBoundaryAfterBlowup T j hj) s hpr n] at hsupp
  rw [hsupp] at hy2
  have hz' : z ∈ ⇑(embeddingIntoAmbient hres hno T j hj (lowerIdealAfterBlowup T j hj)
        (lowerBoundaryAfterBlowup T j hj) s hpr n ≫
      (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr).projectionToBase n) ⁻¹'
      (↑(containedComponentsIdeal T j hj).support : Set ↥T.scheme) := hy2
  rw [hcomp n (le_of_lt hn)] at hz'
  exact (Set.disjoint_left.1
    (disjoint_support_lowerIdealAfterBlowup_containedComponentsIdeal T hV hord j hj)) hw2 hz'

theorem isSmoothDivisor_ker_embeddingIntoAmbient (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) (_hgeom : OrderAtComapOffExceptionalLocus.{u})
    (T : MarkedIdealWithBoundary.{u}) [AlgebraicGeometry.IsNoetherian T.scheme] (hV : T.IsAdmissible)
    (hord : ∀ x : ↥T.scheme, orderAt T.ideal x ≤ (T.mult : ℕ∞))
    (j : ℕ) (hj : j < T.boundary.length)
    (hb : Blowup.IsBlowupAlongIdealSheaf (𝟙 T.scheme) (containedComponentsIdeal T j hj))
    (hlow : (restrictTwistedToDivisor T j hj).IsAdmissible)
    (s : (restrictTwistedToDivisor T j hj).SequenceOfBlowups)
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent)
    (hmk : (BlowupSequenceData.prepend (containedComponentsIdeal T j hj) hb
        (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr)).IsMarked
      T.structMap T.ideal T.mult T.boundary)
    (hcomp : ∀ t ≤ s.length,
      embeddingIntoAmbient hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr t ≫
          (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr).projectionToBase t =
        (MarkedBlowupSequenceData.ofMarkedSequence s).proj t ≫ (T.boundary.get ⟨j, hj⟩).subschemeι) :
    ∀ t ≤ s.length,
      IsSmoothDivisor ((prependedPushedMarkedSeq hres hno T j hj hb s hpr hmk).projectionToSpec (t + 1))
        (AlgebraicGeometry.Scheme.Hom.ker
          (embeddingIntoAmbient hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr t)) := by
  classical
  have := hV.charZero
  have := hV.smooth
  have hL : s.length ≤ (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj)
      (lowerBoundaryAfterBlowup T j hj) s hpr).length :=
    le_of_eq (ambientBlowupSeq_length hres hno T j hj (lowerIdealAfterBlowup T j hj)
      (lowerBoundaryAfterBlowup T j hj) s hpr).symm
  have hnoeth : ∀ t, t ≤ s.length → IsLocallyNoetherian
      ((ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr).obj t) := by
    intro t htt
    have : AlgebraicGeometry.IsNoetherian
        ((ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr).obj t) :=
      isNoetherian_ambientBlowupSequence_schemeAt (T.boundary.get ⟨j, hj⟩).subschemeι
        (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData hres hno hpr t
        (le_of_le_of_eq htt (MarkedBlowupSequenceData.ofMarkedSequence_length s).symm)
    infer_instance
  have hsm : ∀ t, t ≤ s.length → AlgebraicGeometry.Smooth
      ((ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr).projectionToBase t ≫
        T.structMap) := by
    intro t htt
    have h1 := MarkedSequenceOfBlowups.smooth_projectionToSpec effectiveCartierSupportContainsNoComponent hV
      (prependedPushedMarkedSeq hres hno T j hj hb s hpr hmk) (t + 1)
      (by rw [prependedAmbientSeq_length hres hno T j hj hb s hpr hmk]; omega)
    rw [prependedAmbientSeq_projectionToSpec_succ hres hno T j hj hb s hpr hmk t] at h1
    exact h1
  intro t ht
  rw [prependedAmbientSeq_projectionToSpec_succ hres hno T j hj hb s hpr hmk t]
  refine TransportedDivisor.isSmoothDivisor_strictTransform_of_disjoint_center T.structMap
    (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr)
    s.length hL hnoeth hsm
    (fun n => AlgebraicGeometry.Scheme.Hom.ker
      (embeddingIntoAmbient hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr n))
    (iteratedStrictTransform
      (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr)
      (Blowup.strictTransform (𝟙 T.scheme) (containedComponentsIdeal T j hj)
        ((T.boundary.get ⟨j, hj⟩).comap (𝟙 T.scheme))))
    (containedComponentsIdeal T j hj) ?_ ?_ ?_ ?_ ?_ ?_ ?_ t ht
  · rw [ker_embeddingIntoAmbient_zero hres hno T j hj hb s hpr hmk]
    exact (DivisorReductionBoundary.strictTransform_mul_containedComponentsIdeal T hV j hj).symm
  · exact DivisorReductionBoundary.disjoint_support_strictTransform_containedComponentsIdeal T hV j hj
  · intro n hn
    exact ker_embeddingIntoAmbientBlowupSequence_succ (T.boundary.get ⟨j, hj⟩).subschemeι
      (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData hres hno hpr n
      (by rw [MarkedBlowupSequenceData.ofMarkedSequence_length]; exact hn)
  · intro n _
    exact strictTransformIter_succ _ _ n
  · rw [ambientBlowupSeq_projectionToBase_zero_comp_structureMorphism hres hno T j hj (lowerIdealAfterBlowup T j hj)
      (lowerBoundaryAfterBlowup T j hj) s hpr]
    exact DivisorReductionBoundary.isSmoothDivisor_containedComponentsIdeal T hV j hj
  · intro n hn
    have hlt : j < ((prependedPushedMarkedSeq hres hno T j hj hb s hpr hmk).boundary (n + 1)).length :=
      lt_of_lt_of_le hj (length_le_length_boundary (prependedPushedMarkedSeq hres hno T j hj hb s hpr hmk) (n + 1)
        (by rw [prependedAmbientSeq_length hres hno T j hj hb s hpr hmk]; omega))
    have h1 := isSmoothDivisor_prependedAmbientSeq_boundary_get hres hno T hV j hj hb s hpr hmk (n + 1)
      (by omega) hlt
    rw [prependedAmbientSeq_boundary_succ_get hres hno T j hj hb s hpr hmk n hn hlt,
      prependedAmbientSeq_projectionToSpec_succ hres hno T j hj hb s hpr hmk n] at h1
    exact h1
  · intro n hn
    exact disjoint_support_center_iteratedComap_containedComponentsIdeal hres hno T hV hord j hj
      hlow s hpr hcomp n hn

end DivisorReduction

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.PrependedAmbientSequence =====
