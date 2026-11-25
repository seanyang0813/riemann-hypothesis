module

public import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.BlowupSequenceRelations
public import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.StrictNormalCrossings
public import Development.ResolutionOfSingularities.EmbeddedResolution.AlgebraicPreliminaries.ClopenSubscheme
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.AmbientCenterImage
public import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.Saturation
public import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.StrictTransformSubscheme
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.ControlledTransformBasic
public import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.StrictNormalCrossingsSmoothBaseChange
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.MarkedSequenceTransforms
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.IrreducibleComponentsAlongSequence
public import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.StrictNormalCrossingsWithoutUnitIdeals
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.GoingUpInvariant
import Mathlib.Tactic.Linter.Style
import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.ControlledTransformRestriction
import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.SupportsAlongSequence
import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.PowerContainmentAndOrderLocus
import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.ControlledTransformPowers
import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.OrderLocusComparison
import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.StrictNormalCrossingsMoveToFront
import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.IsoInvariance
import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.ControlledTransform
import Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData
import Development.ResolutionOfSingularities.Foundations.Schemes.SchemeMorphismProperties
import Std.Tactic.BVDecide.Normalize.BitVec

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.ClopenStrictTransform, Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.RestrictedBlowupEmbedding, Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.GoingUpInvariantOnOpens

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.ClopenStrictTransform =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.ClopenStrictTransform", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.BlowupSequenceRelations\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.StrictNormalCrossings\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.AlgebraicPreliminaries.ClopenSubscheme\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.AmbientCenterImage\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.Saturation\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.StrictTransformSubscheme\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry TopologicalSpace

namespace FunctorialResolution.EmbeddedResolution

theorem imageIdealSheaf_comap_ι_eq_self_of_support_subset {Y : Scheme.{u}} (Z : Y.IdealSheafData)
    (U : Y.Opens) (_hU : IsClosed (U : Set Y))
    (hZ : (Z.support : Set Y) ⊆ (U : Set Y)) :
    _root_.FunctorialResolution.Blowup.schemeImageIdeal U.ι (Z.comap U.ι) = Z := by
  have hmem : ∀ x : ↥Z.subscheme, x ∈ (Z.subschemeι ⁻¹ᵁ U) := by
    intro x
    have hx : Z.subschemeι.base x ∈ (Z.support : Set Y) := by
      rw [← Scheme.IdealSheafData.range_subschemeι]
      exact Set.mem_range_self x
    exact hZ hx
  have key : ∀ y : ↥Z.subscheme,
      y ∈ Set.range ⇑(Scheme.Opens.ι (Z.subschemeι ⁻¹ᵁ U)).base := by
    intro y
    rw [Scheme.Opens.range_ι]
    exact hmem y
  obtain ⟨e, he⟩ : ∃ e : Z.subscheme ⟶ (Z.subschemeι ⁻¹ᵁ U).toScheme,
      e ≫ Scheme.Opens.ι (Z.subschemeι ⁻¹ᵁ U) = 𝟙 Z.subscheme := by
    refine ⟨IsOpenImmersion.lift (Scheme.Opens.ι (Z.subschemeι ⁻¹ᵁ U)) (𝟙 Z.subscheme)
      (fun y _ => key y), ?_⟩
    exact IsOpenImmersion.lift_fac ..
  have h2 : Scheme.Opens.ι (Z.subschemeι ⁻¹ᵁ U) ≫ e = 𝟙 (Z.subschemeι ⁻¹ᵁ U).toScheme := by
    rw [← cancel_mono (Scheme.Opens.ι (Z.subschemeι ⁻¹ᵁ U)), Category.assoc, he,
      Category.comp_id, Category.id_comp]
  have : IsIso (Scheme.Opens.ι (Z.subschemeι ⁻¹ᵁ U)) := ⟨⟨e, h2, he⟩⟩
  rw [_root_.FunctorialResolution.EmbeddedResolution.imageIdealSheaf_eq_ker, ← ker_ι_preimage_comp_subschemeι_eq_ker_comap Z U,
    ker_eq_ker_of_isIso_comp (Scheme.Opens.ι (Z.subschemeι ⁻¹ᵁ U) ≫ Z.subschemeι) Z.subschemeι
      (Scheme.Opens.ι (Z.subschemeι ⁻¹ᵁ U)) rfl,
    Scheme.IdealSheafData.ker_subschemeι]

private theorem coe_base_comp {A B C : Scheme.{u}} (a : A ⟶ B) (b : B ⟶ C) :
    ⇑(a ≫ b).base = ⇑b.base ∘ ⇑a.base := by
  funext x
  simp

private theorem isClosedEmbedding_base_opens_ι_comp_of_isClosed {S Y : Scheme.{u}} (f : S ⟶ Y)
    [IsClosedImmersion f] (U : S.Opens) (hU : IsClosed (U : Set S)) :
    Topology.IsClosedEmbedding ⇑(U.ι ≫ f).base := by
  have hUce : Topology.IsClosedEmbedding ⇑U.ι.base := by
    refine ⟨U.ι.isOpenEmbedding.toIsEmbedding, ?_⟩
    rw [Scheme.Opens.range_ι]
    exact hU
  rw [coe_base_comp]
  exact (Scheme.Hom.isClosedEmbedding f).comp hUce

theorem support_ker_opens_ι_comp {S Y : Scheme.{u}} (f : S ⟶ Y) [IsClosedImmersion f]
    (U : S.Opens) (hU : IsClosed (U : Set S)) :
    ((Scheme.Hom.ker (U.ι ≫ f)).support : Set Y) = ⇑f.base '' (U : Set S) := by
  have hce : Topology.IsClosedEmbedding ⇑(U.ι ≫ f).base :=
    isClosedEmbedding_base_opens_ι_comp_of_isClosed f U hU
  have : QuasiCompact (U.ι ≫ f) := by
    constructor
    intro V _ hV
    exact hce.isCompact_preimage hV
  have hrange : Set.range ⇑(U.ι ≫ f).base = ⇑f.base '' (U : Set S) := by
    rw [coe_base_comp, Set.range_comp, Scheme.Opens.range_ι]
  have hclosed : IsClosed (⇑f.base '' (U : Set S)) := by
    rw [← hrange]
    exact hce.isClosed_range
  rw [Scheme.Hom.support_ker, hrange]
  exact hclosed.closure_eq

private theorem quasiCompact_of_isClosedEmbedding_base {A B : Scheme.{u}} (g : A ⟶ B)
    (hg : Topology.IsClosedEmbedding ⇑g.base) : QuasiCompact g := by
  constructor
  intro V _ hV
  exact hg.isCompact_preimage hV

private theorem range_base_preimage_ι_comp_ι_eq_of_le {S Y : Scheme.{u}} (f : S ⟶ Y) (U : S.Opens)
    (W : Y.Opens) (hW : (f ⁻¹ᵁ W : S.Opens) ≤ U) :
    Set.range ⇑(Scheme.Opens.ι ((U.ι ≫ f) ⁻¹ᵁ W) ≫ U.ι).base
      = Set.range ⇑(Scheme.Opens.ι (f ⁻¹ᵁ W)).base := by
  have h2 : (((U.ι ≫ f) ⁻¹ᵁ W : U.toScheme.Opens) : Set U.toScheme)
      = ⇑U.ι.base ⁻¹' ((f ⁻¹ᵁ W : S.Opens) : Set S) := rfl
  rw [_root_.AlgebraicGeometry.Scheme.Hom.range_comp_base, Scheme.Opens.range_ι, Scheme.Opens.range_ι, h2,
    Set.image_preimage_eq_inter_range, Scheme.Opens.range_ι]
  refine Set.inter_eq_left.mpr ?_
  intro x hx
  exact hW hx

theorem restrictIdeal_ker_opens_ι_comp_of_preimage_le {S Y : Scheme.{u}} (f : S ⟶ Y) [IsClosedImmersion f]
    (U : S.Opens) (hU : IsClosed (U : Set S)) (W : Y.Opens)
    (hW : (f ⁻¹ᵁ W : S.Opens) ≤ U) :
    restrictIdeal (Scheme.Hom.ker (U.ι ≫ f)) W = restrictIdeal (Scheme.Hom.ker f) W := by
  have hcif : Topology.IsClosedEmbedding ⇑f.base := Scheme.Hom.isClosedEmbedding f
  have _hciU : IsClosedImmersion U.ι :=
    AlgebraicGeometry.Scheme.Opens.isClosedImmersion_ι_of_isClosed U hU
  have _hqf : QuasiCompact f := quasiCompact_of_isClosedEmbedding_base f hcif
  have _hqUf : QuasiCompact (U.ι ≫ f) := by
    refine quasiCompact_of_isClosedEmbedding_base _ ?_
    rw [coe_base_comp]
    exact hcif.comp (Scheme.Hom.isClosedEmbedding U.ι)
  have hrange : Set.range ⇑(Scheme.Opens.ι (f ⁻¹ᵁ W)).base
      = Set.range ⇑(Scheme.Opens.ι ((U.ι ≫ f) ⁻¹ᵁ W) ≫ U.ι).base :=
    (range_base_preimage_ι_comp_ι_eq_of_le f U W hW).symm
  have hfac : ∀ e : (f ⁻¹ᵁ W).toScheme ⟶ ((U.ι ≫ f) ⁻¹ᵁ W).toScheme,
      e ≫ Scheme.Opens.ι ((U.ι ≫ f) ⁻¹ᵁ W) ≫ U.ι = Scheme.Opens.ι (f ⁻¹ᵁ W) →
      e ≫ ((U.ι ≫ f) ∣_ W) = f ∣_ W := by
    intro e he
    have he' : (e ≫ Scheme.Opens.ι ((U.ι ≫ f) ⁻¹ᵁ W)) ≫ U.ι = Scheme.Opens.ι (f ⁻¹ᵁ W) := by
      rw [Category.assoc]
      exact he
    rw [← cancel_mono (Scheme.Opens.ι W), Category.assoc, morphismRestrict_ι,
      morphismRestrict_ι, ← Category.assoc, ← Category.assoc, he']
  have key : (IsOpenImmersion.isoOfRangeEq (Scheme.Opens.ι (f ⁻¹ᵁ W))
      (Scheme.Opens.ι ((U.ι ≫ f) ⁻¹ᵁ W) ≫ U.ι) hrange).hom ≫ ((U.ι ≫ f) ∣_ W) = f ∣_ W :=
    hfac _ (IsOpenImmersion.isoOfRangeEq_hom_fac ..)
  rw [restrictIdeal_eq_comap_ι, restrictIdeal_eq_comap_ι, ker_comap_ι_eq_ker_morphismRestrict (U.ι ≫ f) W,
    ker_comap_ι_eq_ker_morphismRestrict f W]
  exact (ker_eq_ker_of_isIso_comp (f ∣_ W) ((U.ι ≫ f) ∣_ W)
    (IsOpenImmersion.isoOfRangeEq (Scheme.Opens.ι (f ⁻¹ᵁ W))
      (Scheme.Opens.ι ((U.ι ≫ f) ⁻¹ᵁ W) ≫ U.ι) hrange).hom key).symm

theorem restrictIdeal_strictTransform_congr {Y Y₁ : Scheme.{u}} [IsLocallyNoetherian Y₁]
    (f : Y₁ ⟶ Y) (Z : Y.IdealSheafData) (W : Y.Opens) (A B : Y.IdealSheafData)
    (h : restrictIdeal A W = restrictIdeal B W) :
    restrictIdeal (Blowup.strictTransform f Z A) (f ⁻¹ᵁ W)
      = restrictIdeal (Blowup.strictTransform f Z B) (f ⁻¹ᵁ W) := by
  have hcomp : Scheme.Opens.ι (f ⁻¹ᵁ W) ≫ f = (f ∣_ W) ≫ Scheme.Opens.ι W :=
    (morphismRestrict_ι f W).symm
  have hA : restrictIdeal (Blowup.strictTransform f Z A) (f ⁻¹ᵁ W)
      = Blowup.strictTransform (f ∣_ W) (restrictIdeal Z W) (restrictIdeal A W) := by
    rw [restrictIdeal_strictTransform f Z A (f ⁻¹ᵁ W), hcomp,
      strictTransform_comp_ι W (f ∣_ W) Z A]
  have hB : restrictIdeal (Blowup.strictTransform f Z B) (f ⁻¹ᵁ W)
      = Blowup.strictTransform (f ∣_ W) (restrictIdeal Z W) (restrictIdeal B W) := by
    rw [restrictIdeal_strictTransform f Z B (f ⁻¹ᵁ W), hcomp,
      strictTransform_comp_ι W (f ∣_ W) Z B]
  rw [hA, hB, h]

private theorem ker_preimage_ι_comp_eq_strictTransform_of_cover {S Y S₁ Y₁ : Scheme.{u}}
    [IsLocallyNoetherian Y₁]
    (ι : S ⟶ Y) [IsClosedImmersion ι] (ι₁ : S₁ ⟶ Y₁) [IsClosedImmersion ι₁]
    (g : S₁ ⟶ S) (f : Y₁ ⟶ Y) (hsq : ι₁ ≫ f = g ≫ ι)
    (Z : Y.IdealSheafData) (U : S.Opens) (hU : IsClosed (U : Set S))
    (hU₁ : IsClosed ((g ⁻¹ᵁ U : S₁.Opens) : Set S₁))
    (hker : Scheme.Hom.ker ι₁ = Blowup.strictTransform f Z (Scheme.Hom.ker ι))
    (W₁ W₂ : Y.Opens) (hcov : ∀ y : Y, y ∈ W₁ ∨ y ∈ W₂)
    (h₁ : (ι ⁻¹ᵁ W₁ : S.Opens) ≤ U)
    (h₂ : ∀ x : S, x ∈ U → ι.base x ∉ W₂) :
    Scheme.Hom.ker ((g ⁻¹ᵁ U).ι ≫ ι₁)
      = Blowup.strictTransform f Z (Scheme.Hom.ker (U.ι ≫ ι)) := by
  have hbase : ∀ x : S₁, f.base (ι₁.base x) = ι.base (g.base x) := by
    intro x
    have hh1 : (ι₁ ≫ f).base x = f.base (ι₁.base x) := by simp
    have hh2 : (g ≫ ι).base x = ι.base (g.base x) := by simp
    rw [← hh1, ← hh2, hsq]
  have hpre₁ : (ι₁ ⁻¹ᵁ (f ⁻¹ᵁ W₁) : S₁.Opens) ≤ (g ⁻¹ᵁ U : S₁.Opens) := by
    intro x hx
    have hx' : f.base (ι₁.base x) ∈ W₁ := hx
    rw [hbase x] at hx'
    have hmem : g.base x ∈ (ι ⁻¹ᵁ W₁ : S.Opens) := hx'
    exact h₁ hmem
  refine eq_of_restrictIdeal_eq_of_iSup_eq_top _ _
    (fun b : Bool => cond b (f ⁻¹ᵁ W₁) (f ⁻¹ᵁ W₂)) ?_ ?_
  · rw [eq_top_iff]
    intro y _
    refine TopologicalSpace.Opens.mem_iSup.mpr ?_
    rcases hcov (f.base y) with hy | hy
    · exact ⟨true, hy⟩
    · exact ⟨false, hy⟩
  · intro b
    cases b with
    | false =>
      show restrictIdeal (Scheme.Hom.ker ((g ⁻¹ᵁ U).ι ≫ ι₁)) (f ⁻¹ᵁ W₂)
        = restrictIdeal (Blowup.strictTransform f Z (Scheme.Hom.ker (U.ι ≫ ι))) (f ⁻¹ᵁ W₂)
      have t1 : restrictIdeal (Scheme.Hom.ker ((g ⁻¹ᵁ U).ι ≫ ι₁)) (f ⁻¹ᵁ W₂) = ⊤ := by
        refine (restrictIdeal_eq_top_iff_forall_notMem_support _ _).mpr ?_
        intro y hy hmem
        have hmem' : y ∈ ((Scheme.Hom.ker ((g ⁻¹ᵁ U).ι ≫ ι₁)).support : Set ↥Y₁) := hmem
        rw [support_ker_opens_ι_comp ι₁ (g ⁻¹ᵁ U) hU₁] at hmem'
        obtain ⟨x, hxU, rfl⟩ := hmem'
        have hxU' : g.base x ∈ U := hxU
        have hfy : f.base (ι₁.base x) ∈ W₂ := hy
        rw [hbase x] at hfy
        exact h₂ (g.base x) hxU' hfy
      have t2 : restrictIdeal (Scheme.Hom.ker (U.ι ≫ ι)) W₂ = ⊤ := by
        refine (restrictIdeal_eq_top_iff_forall_notMem_support _ _).mpr ?_
        intro y hy hmem
        have hmem' : y ∈ ((Scheme.Hom.ker (U.ι ≫ ι)).support : Set ↥Y) := hmem
        rw [support_ker_opens_ι_comp ι U hU] at hmem'
        obtain ⟨x, hxU, rfl⟩ := hmem'
        have hxU' : x ∈ U := hxU
        exact h₂ x hxU' hy
      have t3 : restrictIdeal (Scheme.Hom.ker (U.ι ≫ ι)) W₂
          = restrictIdeal (⊤ : Y.IdealSheafData) W₂ := by
        rw [t2]
        exact (Scheme.IdealSheafData.comap_top ..).symm
      have htop : Blowup.strictTransform f Z (⊤ : Y.IdealSheafData) = (⊤ : Y₁.IdealSheafData) := by
        refine le_antisymm le_top ?_
        have hle := Blowup.comap_le_strictTransform f Z (⊤ : Y.IdealSheafData)
        rwa [Scheme.IdealSheafData.comap_top] at hle
      rw [t1, restrictIdeal_strictTransform_congr f Z W₂ _ _ t3, htop]
      exact (Scheme.IdealSheafData.comap_top ..).symm
    | true =>
      show restrictIdeal (Scheme.Hom.ker ((g ⁻¹ᵁ U).ι ≫ ι₁)) (f ⁻¹ᵁ W₁)
        = restrictIdeal (Blowup.strictTransform f Z (Scheme.Hom.ker (U.ι ≫ ι))) (f ⁻¹ᵁ W₁)
      have e1 := restrictIdeal_ker_opens_ι_comp_of_preimage_le ι₁ (g ⁻¹ᵁ U) hU₁ (f ⁻¹ᵁ W₁) hpre₁
      have e2 := restrictIdeal_ker_opens_ι_comp_of_preimage_le ι U hU W₁ h₁
      rw [e1, hker, restrictIdeal_strictTransform_congr f Z W₁ _ _ e2]

theorem ker_preimage_ι_comp_eq_strictTransform_of_isClopen {S Y S₁ Y₁ : Scheme.{u}} [IsLocallyNoetherian Y₁]
    (ι : S ⟶ Y) [IsClosedImmersion ι] (ι₁ : S₁ ⟶ Y₁) [IsClosedImmersion ι₁]
    (g : S₁ ⟶ S) (f : Y₁ ⟶ Y) (hsq : ι₁ ≫ f = g ≫ ι)
    (Z : Y.IdealSheafData) (U : S.Opens) (hU : IsClosed (U : Set S))
    (hker : Scheme.Hom.ker ι₁ = Blowup.strictTransform f Z (Scheme.Hom.ker ι)) :
    Scheme.Hom.ker ((g ⁻¹ᵁ U).ι ≫ ι₁)
      = Blowup.strictTransform f Z (Scheme.Hom.ker (U.ι ≫ ι)) := by
  have hιemb : Topology.IsClosedEmbedding ⇑ι.base := Scheme.Hom.isClosedEmbedding ι
  have hinj : Function.Injective ⇑ι.base := hιemb.toIsEmbedding.injective
  have hVcl : IsClosed ((U : Set S)ᶜ) := isClosed_compl_iff.mpr U.isOpen
  have hUimg : IsClosed (⇑ι.base '' (U : Set S)) := hιemb.isClosedMap _ hU
  have hVimg : IsClosed (⇑ι.base '' ((U : Set S)ᶜ)) := hιemb.isClosedMap _ hVcl
  have hU₁ : IsClosed ((g ⁻¹ᵁ U : S₁.Opens) : Set S₁) :=
    isOpen_compl_iff.mp (g ⁻¹ᵁ (⟨(U : Set S)ᶜ, hU.isOpen_compl⟩ : S.Opens)).isOpen
  refine ker_preimage_ι_comp_eq_strictTransform_of_cover ι ι₁ g f hsq Z U hU hU₁ hker
    ⟨(⇑ι.base '' ((U : Set S)ᶜ))ᶜ, hVimg.isOpen_compl⟩
    ⟨(⇑ι.base '' (U : Set S))ᶜ, hUimg.isOpen_compl⟩ ?_ ?_ ?_
  · intro y
    by_cases hy : y ∈ ⇑ι.base '' (U : Set S)
    · left
      obtain ⟨x, hxU, rfl⟩ := hy
      show ι.base x ∈ (⇑ι.base '' ((U : Set S)ᶜ))ᶜ
      rintro ⟨x', hx'V, hx'⟩
      have hx'U : x' ∈ (U : Set S) := by
        rw [hinj hx']
        exact hxU
      exact absurd hx'U hx'V
    · right
      show y ∈ (⇑ι.base '' (U : Set S))ᶜ
      exact hy
  · intro x hx
    have hx' : ι.base x ∈ (⇑ι.base '' ((U : Set S)ᶜ))ᶜ := hx
    by_contra hxU
    exact absurd (show ι.base x ∈ ⇑ι.base '' ((U : Set S)ᶜ) from ⟨x, hxU, rfl⟩) hx'
  · intro x hxU hmem
    have hmem' : ι.base x ∈ (⇑ι.base '' (U : Set S))ᶜ := hmem
    exact absurd (show ι.base x ∈ ⇑ι.base '' (U : Set S) from ⟨x, hxU, rfl⟩) hmem'

theorem restrictIdeal_exceptionalIdeal {Y Y₁ : Scheme.{u}} (f : Y₁ ⟶ Y)
    (Z : Y.IdealSheafData) (W : Y.Opens) :
    restrictIdeal (Blowup.exceptionalIdeal f Z) (f ⁻¹ᵁ W)
      = Blowup.exceptionalIdeal (f ∣_ W) (restrictIdeal Z W) := by
  show (Z.comap f).comap (Scheme.Opens.ι (f ⁻¹ᵁ W))
      = (Z.comap (Scheme.Opens.ι W)).comap (f ∣_ W)
  rw [← Scheme.IdealSheafData.comap_comp, ← Scheme.IdealSheafData.comap_comp,
    morphismRestrict_ι]

theorem restrictIdeal_strictTransform_preimage {Y Y₁ : Scheme.{u}} [IsLocallyNoetherian Y₁]
    (f : Y₁ ⟶ Y) (Z D : Y.IdealSheafData) (W : Y.Opens) :
    restrictIdeal (Blowup.strictTransform f Z D) (f ⁻¹ᵁ W)
      = Blowup.strictTransform (f ∣_ W) (restrictIdeal Z W) (restrictIdeal D W) := by
  have hcomp : Scheme.Opens.ι (f ⁻¹ᵁ W) ≫ f = (f ∣_ W) ≫ Scheme.Opens.ι W :=
    (morphismRestrict_ι f W).symm
  rw [restrictIdeal_strictTransform f Z D (f ⁻¹ᵁ W), hcomp,
    strictTransform_comp_ι W (f ∣_ W) Z D]

end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.ClopenStrictTransform =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.RestrictedBlowupEmbedding =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.RestrictedBlowupEmbedding", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.ControlledTransformBasic\nimport Development.ResolutionOfSingularities.EmbeddedResolution.AlgebraicPreliminaries.ClopenSubscheme\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.StrictNormalCrossingsSmoothBaseChange\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.ClopenStrictTransform\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.ControlledTransformRestriction\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.MarkedSequenceTransforms\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.SupportsAlongSequence\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.IrreducibleComponentsAlongSequence\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry TopologicalSpace

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

namespace DivisorReduction

variable (T : MarkedIdealWithBoundary.{u}) (j : ℕ) (hj : j < T.boundary.length)
    (I₀ : T.scheme.IdealSheafData) (E₀ : List T.scheme.IdealSheafData)
    (s : (restrictToBoundaryDivisor T j hj I₀ E₀).SequenceOfBlowups)

def iteratedPreimage (U₀ : (s.toSequenceOfBlowups.schemeAt 0).Opens) :
    (t : ℕ) → (s.toSequenceOfBlowups.schemeAt t).Opens
  | 0 => U₀
  | t + 1 => s.toSequenceOfBlowups.transitionMapSucc t ⁻¹ᵁ iteratedPreimage U₀ t

theorem iteratedPreimage_succ (U₀ : (s.toSequenceOfBlowups.schemeAt 0).Opens) (t : ℕ) :
    iteratedPreimage T j hj I₀ E₀ s U₀ (t + 1) =
      s.toSequenceOfBlowups.transitionMapSucc t ⁻¹ᵁ iteratedPreimage T j hj I₀ E₀ s U₀ t := rfl

def restrictedBlowupMorphism (U₀ : (s.toSequenceOfBlowups.schemeAt 0).Opens) (t : ℕ) :
    (↑(iteratedPreimage T j hj I₀ E₀ s U₀ (t + 1)) : Scheme.{u}) ⟶
      (↑(iteratedPreimage T j hj I₀ E₀ s U₀ t) : Scheme.{u}) :=
  s.toSequenceOfBlowups.transitionMapSucc t ∣_ iteratedPreimage T j hj I₀ E₀ s U₀ t

theorem restrictedBlowupMorphism_comp_ι (U₀ : (s.toSequenceOfBlowups.schemeAt 0).Opens) (t : ℕ) :
    restrictedBlowupMorphism T j hj I₀ E₀ s U₀ t ≫ (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι =
      (iteratedPreimage T j hj I₀ E₀ s U₀ (t + 1)).ι ≫ s.toSequenceOfBlowups.transitionMapSucc t :=
  AlgebraicGeometry.morphismRestrict_ι (s.toSequenceOfBlowups.transitionMapSucc t)
    (iteratedPreimage T j hj I₀ E₀ s U₀ t)

theorem isClosed_iteratedPreimage (U₀ : (s.toSequenceOfBlowups.schemeAt 0).Opens)
    (hU : IsClosed ((U₀ : Set ↥(s.toSequenceOfBlowups.schemeAt 0)))) (t : ℕ) :
    IsClosed ((iteratedPreimage T j hj I₀ E₀ s U₀ t : Set ↥(s.toSequenceOfBlowups.schemeAt t))) := by
  induction t with
  | zero => exact hU
  | succ n ih =>
      have hV : IsOpen ((iteratedPreimage T j hj I₀ E₀ s U₀ n : Set ↥(s.toSequenceOfBlowups.schemeAt n))ᶜ) :=
        ih.isOpen_compl
      have h2 : IsOpen
          (((s.toSequenceOfBlowups.transitionMapSucc n ⁻¹ᵁ
              (⟨(iteratedPreimage T j hj I₀ E₀ s U₀ n : Set ↥(s.toSequenceOfBlowups.schemeAt n))ᶜ, hV⟩ :
                (s.toSequenceOfBlowups.schemeAt n).Opens)) : (s.toSequenceOfBlowups.schemeAt (n + 1)).Opens) :
            Set ↥(s.toSequenceOfBlowups.schemeAt (n + 1))) :=
        TopologicalSpace.Opens.isOpen _
      have hop : IsOpen ((iteratedPreimage T j hj I₀ E₀ s U₀ (n + 1) :
          Set ↥(s.toSequenceOfBlowups.schemeAt (n + 1)))ᶜ) := h2
      exact isOpen_compl_iff.mp hop

theorem smooth_iteratedPreimage_ι_comp_projectionToSpec (U₀ : (s.toSequenceOfBlowups.schemeAt 0).Opens)
    (hV : (restrictToBoundaryDivisor T j hj I₀ E₀).IsAdmissible) (t : ℕ) (ht : t ≤ s.toSequenceOfBlowups.length) :
    AlgebraicGeometry.Smooth ((iteratedPreimage T j hj I₀ E₀ s U₀ t).ι ≫ s.projectionToSpec t) := by
  have : AlgebraicGeometry.Smooth (s.projectionToSpec t) :=
    MarkedSequenceOfBlowups.smooth_projectionToSpec effectiveCartierSupportContainsNoComponent hV s t ht
  infer_instance

theorem support_center_comap_subset_orderAtLeastLocus (U₀ : (s.toSequenceOfBlowups.schemeAt 0).Opens)
    (_hV : (restrictToBoundaryDivisor T j hj I₀ E₀).IsAdmissible) (t : ℕ) (ht : t < s.toSequenceOfBlowups.length) :
    (((s.toSequenceOfBlowups.center t).comap (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι).support : Set _) ⊆
      orderAtLeastLocus ((s.ideal t).comap (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι) T.mult := by
  intro y hy
  have hy0 : y ∈ ((s.toSequenceOfBlowups.center t).comap (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι).support := hy
  have hy1 : (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι.base y ∈ (s.toSequenceOfBlowups.center t).support := by
    rw [AlgebraicGeometry.Scheme.IdealSheafData.support_comap] at hy0
    exact hy0
  have hy2 : (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι.base y ∈
      ((s.toSequenceOfBlowups.center t).support : Set ↥(s.toSequenceOfBlowups.schemeAt t)) := hy1
  have hc : (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι.base y ∈ orderAtLeastLocus (s.ideal t) T.mult :=
    s.center_order t ht hy2
  have hord : (T.mult : ℕ∞) ≤
      orderAt (s.ideal t) ((iteratedPreimage T j hj I₀ E₀ s U₀ t).ι.base y) :=
    (mem_orderAtLeastLocus_iff _ _ _).1 hc
  refine (mem_orderAtLeastLocus_iff _ _ _).2 ?_
  rw [orderAt_comap_of_isOpenImmersion]
  exact hord

theorem hasStrictNormalCrossingsWith_iteratedPreimage (U₀ : (s.toSequenceOfBlowups.schemeAt 0).Opens)
    (hV : (restrictToBoundaryDivisor T j hj I₀ E₀).IsAdmissible) (t : ℕ) (ht : t < s.toSequenceOfBlowups.length) :
    HasStrictNormalCrossingsWith ((iteratedPreimage T j hj I₀ E₀ s U₀ t).ι ≫ s.projectionToSpec t)
      ((s.toSequenceOfBlowups.center t).comap (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι)
      (List.map (fun D => D.comap (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι) (s.boundary t)) := by
  have : AlgebraicGeometry.Smooth (s.projectionToSpec t) :=
    MarkedSequenceOfBlowups.smooth_projectionToSpec effectiveCartierSupportContainsNoComponent hV s t (le_of_lt ht)
  have hZE : HasStrictNormalCrossingsWith (s.projectionToSpec t) (s.toSequenceOfBlowups.center t) (s.boundary t) := by
    rw [MarkedSequenceOfBlowups.projectionToSpec_eq]
    exact s.center_snc t ht
  exact hasStrictNormalCrossingsWith_comap (s.projectionToSpec t) (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι
    (s.toSequenceOfBlowups.center t) (s.boundary t) hZE

theorem boundary_comap_iteratedPreimage_succ (U₀ : (s.toSequenceOfBlowups.schemeAt 0).Opens)
    (hV : (restrictToBoundaryDivisor T j hj I₀ E₀).IsAdmissible) (t : ℕ) (ht : t < s.toSequenceOfBlowups.length) :
    List.map (fun D => D.comap (iteratedPreimage T j hj I₀ E₀ s U₀ (t + 1)).ι) (s.boundary (t + 1)) =
      List.map
          (Blowup.strictTransform (restrictedBlowupMorphism T j hj I₀ E₀ s U₀ t)
            ((s.toSequenceOfBlowups.center t).comap (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι))
          (List.map (fun D => D.comap (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι) (s.boundary t)) ++
        [Blowup.exceptionalIdeal (restrictedBlowupMorphism T j hj I₀ E₀ s U₀ t)
            ((s.toSequenceOfBlowups.center t).comap (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι)] := by
  have : AlgebraicGeometry.IsNoetherian (s.toSequenceOfBlowups.schemeAt (t + 1)) :=
    MarkedSequenceOfBlowups.isNoetherian_schemeAt effectiveCartierSupportContainsNoComponent hV s (t + 1) ht
  have : AlgebraicGeometry.IsLocallyNoetherian (s.toSequenceOfBlowups.schemeAt (t + 1)) := inferInstance
  have hex : (Blowup.exceptionalIdeal (s.toSequenceOfBlowups.transitionMapSucc t) (s.toSequenceOfBlowups.center t)).comap
        (iteratedPreimage T j hj I₀ E₀ s U₀ (t + 1)).ι =
      Blowup.exceptionalIdeal (restrictedBlowupMorphism T j hj I₀ E₀ s U₀ t)
        ((s.toSequenceOfBlowups.center t).comap (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι) :=
    restrictIdeal_exceptionalIdeal (s.toSequenceOfBlowups.transitionMapSucc t) (s.toSequenceOfBlowups.center t)
      (iteratedPreimage T j hj I₀ E₀ s U₀ t)
  have hst : ∀ D : (s.toSequenceOfBlowups.schemeAt t).IdealSheafData,
      (Blowup.strictTransform (s.toSequenceOfBlowups.transitionMapSucc t) (s.toSequenceOfBlowups.center t) D).comap
          (iteratedPreimage T j hj I₀ E₀ s U₀ (t + 1)).ι =
        Blowup.strictTransform (restrictedBlowupMorphism T j hj I₀ E₀ s U₀ t)
          ((s.toSequenceOfBlowups.center t).comap (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι)
          (D.comap (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι) := fun D =>
    restrictIdeal_strictTransform_preimage (s.toSequenceOfBlowups.transitionMapSucc t) (s.toSequenceOfBlowups.center t) D
      (iteratedPreimage T j hj I₀ E₀ s U₀ t)
  rw [s.boundary_succ t ht]
  simp only [List.map_append, List.map_map, List.map_cons, List.map_nil, hex]
  congr 1
  exact List.map_congr_left fun D _ => hst D

section

variable (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u}) (hno : BlowupPreservesNoetherian.{u})

def restrictedEmbedding [AlgebraicGeometry.IsNoetherian T.scheme]
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent)
    (U₀ : (s.toSequenceOfBlowups.schemeAt 0).Opens) (t : ℕ) :
    (↑(iteratedPreimage T j hj I₀ E₀ s U₀ t) : Scheme.{u}) ⟶ (ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).obj t :=
  (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι ≫ embeddingIntoAmbient hres hno T j hj I₀ E₀ s hpr t

theorem restrictedEmbedding_eq_ι_comp_embeddingIntoAmbient [AlgebraicGeometry.IsNoetherian T.scheme]
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent)
    (U₀ : (s.toSequenceOfBlowups.schemeAt 0).Opens) (t : ℕ) :
    restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t =
      (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι ≫ embeddingIntoAmbient hres hno T j hj I₀ E₀ s hpr t := rfl

theorem isClosedImmersion_restrictedEmbedding [AlgebraicGeometry.IsNoetherian T.scheme]
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent)
    (U₀ : (s.toSequenceOfBlowups.schemeAt 0).Opens)
    (hU : IsClosed ((U₀ : Set ↥(s.toSequenceOfBlowups.schemeAt 0)))) (t : ℕ) :
    AlgebraicGeometry.IsClosedImmersion (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t) := by
  have hι : AlgebraicGeometry.IsClosedImmersion (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι :=
    Scheme.Opens.isClosedImmersion_ι_of_isClosed (iteratedPreimage T j hj I₀ E₀ s U₀ t)
      (isClosed_iteratedPreimage T j hj I₀ E₀ s U₀ hU t)
  have hemb : AlgebraicGeometry.IsClosedImmersion (embeddingIntoAmbient hres hno T j hj I₀ E₀ s hpr t) :=
    isClosedImmersion_embeddingIntoAmbient hres hno T j hj I₀ E₀ s hpr t
  rw [restrictedEmbedding_eq_ι_comp_embeddingIntoAmbient]
  exact @IsClosedImmersion.comp _ _ _ _ _ hι hemb

theorem restrictedEmbedding_comp_blowupMorphism [AlgebraicGeometry.IsNoetherian T.scheme]
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent)
    (U₀ : (s.toSequenceOfBlowups.schemeAt 0).Opens) (t : ℕ) :
    restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ (t + 1) ≫
        (ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).map t =
      restrictedBlowupMorphism T j hj I₀ E₀ s U₀ t ≫ restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t := by
  have h1 := embeddingIntoAmbient_comp_blowupMorphism hres hno T j hj I₀ E₀ s hpr t
  have h2 := restrictedBlowupMorphism_comp_ι T j hj I₀ E₀ s U₀ t
  have e1 : restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ (t + 1) ≫
        (ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).map t =
      (iteratedPreimage T j hj I₀ E₀ s U₀ (t + 1)).ι ≫
        (embeddingIntoAmbient hres hno T j hj I₀ E₀ s hpr (t + 1) ≫
          (ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).map t) := by
    rw [restrictedEmbedding_eq_ι_comp_embeddingIntoAmbient]
    exact Category.assoc _ _ _
  have e2 : (iteratedPreimage T j hj I₀ E₀ s U₀ (t + 1)).ι ≫
        (embeddingIntoAmbient hres hno T j hj I₀ E₀ s hpr (t + 1) ≫
          (ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).map t) =
      (iteratedPreimage T j hj I₀ E₀ s U₀ (t + 1)).ι ≫
        (s.toSequenceOfBlowups.transitionMapSucc t ≫ embeddingIntoAmbient hres hno T j hj I₀ E₀ s hpr t) :=
    congrArg (fun g => (iteratedPreimage T j hj I₀ E₀ s U₀ (t + 1)).ι ≫ g) h1
  have e3 : (iteratedPreimage T j hj I₀ E₀ s U₀ (t + 1)).ι ≫
        (s.toSequenceOfBlowups.transitionMapSucc t ≫ embeddingIntoAmbient hres hno T j hj I₀ E₀ s hpr t) =
      ((iteratedPreimage T j hj I₀ E₀ s U₀ (t + 1)).ι ≫ s.toSequenceOfBlowups.transitionMapSucc t) ≫
        embeddingIntoAmbient hres hno T j hj I₀ E₀ s hpr t := (Category.assoc _ _ _).symm
  have e4 : ((iteratedPreimage T j hj I₀ E₀ s U₀ (t + 1)).ι ≫ s.toSequenceOfBlowups.transitionMapSucc t) ≫
        embeddingIntoAmbient hres hno T j hj I₀ E₀ s hpr t =
      (restrictedBlowupMorphism T j hj I₀ E₀ s U₀ t ≫ (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι) ≫
        embeddingIntoAmbient hres hno T j hj I₀ E₀ s hpr t :=
    congrArg (fun f => f ≫ embeddingIntoAmbient hres hno T j hj I₀ E₀ s hpr t) h2.symm
  have e5 : (restrictedBlowupMorphism T j hj I₀ E₀ s U₀ t ≫ (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι) ≫
        embeddingIntoAmbient hres hno T j hj I₀ E₀ s hpr t =
      restrictedBlowupMorphism T j hj I₀ E₀ s U₀ t ≫ restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t := by
    rw [restrictedEmbedding_eq_ι_comp_embeddingIntoAmbient]
    exact Category.assoc _ _ _
  exact e1.trans (e2.trans (e3.trans (e4.trans e5)))

theorem restrictedEmbedding_comp_structureMorphism_ambientBlowupSeq [AlgebraicGeometry.IsNoetherian T.scheme]
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent)
    (U₀ : (s.toSequenceOfBlowups.schemeAt 0).Opens) (t : ℕ) :
    restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t ≫
        ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t =
      (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι ≫ s.projectionToSpec t := by
  have h1 : embeddingIntoAmbient hres hno T j hj I₀ E₀ s hpr t ≫
      (ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).projectionToBase t =
      s.toSequenceOfBlowups.projectionToBase t ≫ divisorEmbedding T j hj I₀ E₀ :=
    embeddingIntoAmbient_comp_projectionToBase hres hno T j hj I₀ E₀ s hpr t
  have h2 : (s.toSequenceOfBlowups.projectionToBase t ≫ divisorEmbedding T j hj I₀ E₀) ≫ T.structMap = s.projectionToSpec t :=
    (Category.assoc (s.toSequenceOfBlowups.projectionToBase t) (divisorEmbedding T j hj I₀ E₀) T.structMap).trans
      (MarkedSequenceOfBlowups.projectionToSpec_eq s t).symm
  have h3 : (embeddingIntoAmbient hres hno T j hj I₀ E₀ s hpr t ≫
      (ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).projectionToBase t) ≫ T.structMap = s.projectionToSpec t := by
    rw [h1]
    exact h2
  have key : embeddingIntoAmbient hres hno T j hj I₀ E₀ s hpr t ≫
      ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t = s.projectionToSpec t :=
    (Category.assoc (embeddingIntoAmbient hres hno T j hj I₀ E₀ s hpr t)
      ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).projectionToBase t) T.structMap).symm.trans h3
  have e1 : restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t ≫
        ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t =
      (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι ≫
        (embeddingIntoAmbient hres hno T j hj I₀ E₀ s hpr t ≫
          ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t) := by
    rw [restrictedEmbedding_eq_ι_comp_embeddingIntoAmbient]
    exact Category.assoc _ _ _
  exact e1.trans (congrArg (fun g => (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι ≫ g) key)

theorem ker_restrictedEmbedding_succ [AlgebraicGeometry.IsNoetherian T.scheme]
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent)
    (U₀ : (s.toSequenceOfBlowups.schemeAt 0).Opens)
    (hU : IsClosed ((U₀ : Set ↥(s.toSequenceOfBlowups.schemeAt 0)))) (t : ℕ)
    (ht : t < s.toSequenceOfBlowups.length) :
    Scheme.Hom.ker (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ (t + 1)) =
      Blowup.strictTransform ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).map t)
        ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).center t)
        (Scheme.Hom.ker (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t)) := by
  have hlen : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.length = s.toSequenceOfBlowups.length := by
    rw [MarkedBlowupSequenceData.blowupSequenceData_ofMarkedSequence, BlowupSequenceData.ofSequenceOfBlowups_length]
  have htlt : t < (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.length := by
    rw [hlen]; exact ht
  have htle : t + 1 ≤ (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.length := htlt
  have : AlgebraicGeometry.IsNoetherian
      ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).obj (t + 1)) :=
    isNoetherian_ambientBlowupSequence_schemeAt (T.boundary.get ⟨j, hj⟩).subschemeι
      (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData hres hno hpr (t + 1) htle
  have : AlgebraicGeometry.IsLocallyNoetherian
      ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).obj (t + 1)) := inferInstance
  have hker : Scheme.Hom.ker (embeddingIntoAmbient hres hno T j hj I₀ E₀ s hpr (t + 1)) =
      Blowup.strictTransform ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).map t)
        ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).center t)
        (Scheme.Hom.ker (embeddingIntoAmbient hres hno T j hj I₀ E₀ s hpr t)) :=
    ker_embeddingIntoAmbientBlowupSequence_succ (T.boundary.get ⟨j, hj⟩).subschemeι
      (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData hres hno hpr t htlt
  have h := ker_preimage_ι_comp_eq_strictTransform_of_isClopen
      (embeddingIntoAmbient hres hno T j hj I₀ E₀ s hpr t)
      (embeddingIntoAmbient hres hno T j hj I₀ E₀ s hpr (t + 1))
      (s.toSequenceOfBlowups.transitionMapSucc t)
      ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).map t)
      (embeddingIntoAmbient_comp_blowupMorphism hres hno T j hj I₀ E₀ s hpr t)
      ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).center t)
      (iteratedPreimage T j hj I₀ E₀ s U₀ t) (isClosed_iteratedPreimage T j hj I₀ E₀ s U₀ hU t) hker
  rw [restrictedEmbedding_eq_ι_comp_embeddingIntoAmbient, restrictedEmbedding_eq_ι_comp_embeddingIntoAmbient, iteratedPreimage_succ]
  exact h

private theorem support_ideal_subset_iteratedPreimage (U₀ : (s.toSequenceOfBlowups.schemeAt 0).Opens)
    (hsupp : (((s.ideal 0).support : Set ↥(s.toSequenceOfBlowups.schemeAt 0))) ⊆
      (U₀ : Set ↥(s.toSequenceOfBlowups.schemeAt 0))) :
    ∀ t : ℕ, t ≤ s.toSequenceOfBlowups.length →
      (((s.ideal t).support : Set ↥(s.toSequenceOfBlowups.schemeAt t))) ⊆
        ((iteratedPreimage T j hj I₀ E₀ s U₀ t : Set ↥(s.toSequenceOfBlowups.schemeAt t))) := by
  intro t
  induction t with
  | zero =>
      intro _
      exact hsupp
  | succ n ih =>
      intro hn
      have hn' : n < s.toSequenceOfBlowups.length := hn
      have h1 := s.support_ideal_succ_subset_preimage n hn'
      have h2 := ih (le_of_lt hn')
      intro x hx
      have hx1 : (s.toSequenceOfBlowups.transitionMapSucc n).base x ∈
          (((s.ideal n).support : Set ↥(s.toSequenceOfBlowups.schemeAt n))) := h1 hx
      exact h2 hx1

private theorem support_center_subset_iteratedPreimage (U₀ : (s.toSequenceOfBlowups.schemeAt 0).Opens) (hm : 1 ≤ T.mult)
    (hsupp : (((s.ideal 0).support : Set ↥(s.toSequenceOfBlowups.schemeAt 0))) ⊆
      (U₀ : Set ↥(s.toSequenceOfBlowups.schemeAt 0)))
    (t : ℕ) (ht : t < s.toSequenceOfBlowups.length) :
    (((s.toSequenceOfBlowups.center t).support : Set ↥(s.toSequenceOfBlowups.schemeAt t))) ⊆
      ((iteratedPreimage T j hj I₀ E₀ s U₀ t : Set ↥(s.toSequenceOfBlowups.schemeAt t))) := by
  intro x hx
  have h1 : x ∈ orderAtLeastLocus (s.ideal t) T.mult := s.center_order t ht hx
  have h2 : x ∈ orderAtLeastLocus (s.ideal t) 1 :=
    orderAtLeastLocus_subset_of_le (s.ideal t) hm h1
  have h3 : x ∈ (s.ideal t).support := (mem_orderAtLeastLocus_one_iff _ _).1 h2
  have h4 : x ∈ (((s.ideal t).support : Set ↥(s.toSequenceOfBlowups.schemeAt t))) := h3
  exact support_ideal_subset_iteratedPreimage T j hj I₀ E₀ s U₀ hsupp t (le_of_lt ht) h4

private theorem imageIdealSheaf_comp_of_eq {S X P : Scheme.{u}} (ι : S ⟶ X) (emb : X ⟶ P)
    (J : S.IdealSheafData) (Z : X.IdealSheafData) (hJ : _root_.FunctorialResolution.Blowup.schemeImageIdeal ι J = Z) :
    _root_.FunctorialResolution.Blowup.schemeImageIdeal (ι ≫ emb) J = _root_.FunctorialResolution.Blowup.schemeImageIdeal emb Z := by
  subst hJ
  exact Scheme.IdealSheafData.map_comp J ι emb

theorem center_ambientBlowupSeq_eq_imageIdealSheaf [AlgebraicGeometry.IsNoetherian T.scheme]
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent)
    (U₀ : (s.toSequenceOfBlowups.schemeAt 0).Opens)
    (hU : IsClosed ((U₀ : Set ↥(s.toSequenceOfBlowups.schemeAt 0)))) (hm : 1 ≤ T.mult)
    (hsupp : (((s.ideal 0).support : Set ↥(s.toSequenceOfBlowups.schemeAt 0))) ⊆
      (U₀ : Set ↥(s.toSequenceOfBlowups.schemeAt 0)))
    (t : ℕ) (ht : t < s.toSequenceOfBlowups.length) :
    (ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).center t =
      _root_.FunctorialResolution.Blowup.schemeImageIdeal (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t)
        ((s.toSequenceOfBlowups.center t).comap (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι) := by
  have hcl : IsClosed ((iteratedPreimage T j hj I₀ E₀ s U₀ t : Set ↥(s.toSequenceOfBlowups.schemeAt t))) :=
    isClosed_iteratedPreimage T j hj I₀ E₀ s U₀ hU t
  have : AlgebraicGeometry.IsClosedImmersion (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι :=
    Scheme.Opens.isClosedImmersion_ι_of_isClosed _ hcl
  have hsub : (((s.toSequenceOfBlowups.center t).support : Set ↥(s.toSequenceOfBlowups.schemeAt t))) ⊆
      ((iteratedPreimage T j hj I₀ E₀ s U₀ t : Set ↥(s.toSequenceOfBlowups.schemeAt t))) :=
    support_center_subset_iteratedPreimage T j hj I₀ E₀ s U₀ hm hsupp t ht
  have h1 : _root_.FunctorialResolution.Blowup.schemeImageIdeal (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι
        ((s.toSequenceOfBlowups.center t).comap (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι)
      = s.toSequenceOfBlowups.center t :=
    imageIdealSheaf_comap_ι_eq_self_of_support_subset (s.toSequenceOfBlowups.center t)
      (iteratedPreimage T j hj I₀ E₀ s U₀ t) hcl hsub
  rw [ambientBlowupSeq_center_eq_imageIdealSheaf, restrictedEmbedding_eq_ι_comp_embeddingIntoAmbient]
  exact (imageIdealSheaf_comp_of_eq (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι
    (embeddingIntoAmbient hres hno T j hj I₀ E₀ s hpr t)
    ((s.toSequenceOfBlowups.center t).comap (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι)
    (s.toSequenceOfBlowups.center t) h1).symm

end

end DivisorReduction

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.RestrictedBlowupEmbedding =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.GoingUpInvariantOnOpens =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.GoingUpInvariantOnOpens", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.StrictNormalCrossingsWithoutUnitIdeals\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.GoingUpInvariant\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.RestrictedBlowupEmbedding\nimport Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.PowerContainmentAndOrderLocus\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.AmbientCenterImage\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.ControlledTransformPowers\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.ControlledTransformRestriction\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.OrderLocusComparison\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.StrictNormalCrossingsMoveToFront\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.IsoInvariance\nimport Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.ControlledTransform\nimport Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData\nimport Development.ResolutionOfSingularities.Foundations.Schemes.SchemeMorphismProperties\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Std.Tactic.BVDecide.Normalize.BitVec\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

private theorem filterNeTop_cons_of_eq_top {X : Scheme.{u}} {D : X.IdealSheafData}
    (h : D = ⊤) (E : List X.IdealSheafData) :
    filterNeTop (D :: E) = filterNeTop E := by
  subst h
  simp [filterNeTop]

private theorem filterNeTop_cons_of_ne_top {X : Scheme.{u}} {D : X.IdealSheafData}
    (h : D ≠ ⊤) (E : List X.IdealSheafData) :
    filterNeTop (D :: E) = D :: filterNeTop E := by
  simp [filterNeTop, h]

private theorem filterNeTop_append {Y : Scheme.{u}} (A B : List Y.IdealSheafData) :
    filterNeTop (A ++ B) = filterNeTop A ++ filterNeTop B := by
  simp only [filterNeTop, List.filter_append]

private theorem filterNeTop_cons_congr {Y : Scheme.{u}} (a : Y.IdealSheafData)
    {L L' : List Y.IdealSheafData} (h : filterNeTop L = filterNeTop L') :
    filterNeTop (a :: L) = filterNeTop (a :: L') := by
  by_cases ha : a = ⊤
  · rw [filterNeTop_cons_of_eq_top ha L, filterNeTop_cons_of_eq_top ha L']
    exact h
  · rw [filterNeTop_cons_of_ne_top ha L, filterNeTop_cons_of_ne_top ha L', h]

private theorem filterNeTop_map_filterNeTop {X Y : Scheme.{u}}
    (f : X.IdealSheafData → Y.IdealSheafData) (hf : f ⊤ = ⊤) (E : List X.IdealSheafData) :
    filterNeTop (List.map f E) = filterNeTop (List.map f (filterNeTop E)) := by
  induction E with
  | nil => simp [filterNeTop]
  | cons a E ih =>
    by_cases ha : a = ⊤
    · have h1 : filterNeTop (a :: E) = filterNeTop E := filterNeTop_cons_of_eq_top ha E
      have h2 : f a = ⊤ := by rw [ha]; exact hf
      have h3 : filterNeTop (List.map f (a :: E)) = filterNeTop (List.map f E) := by
        rw [List.map_cons]
        exact filterNeTop_cons_of_eq_top h2 (List.map f E)
      rw [h1, h3]
      exact ih
    · have h1 : filterNeTop (a :: E) = a :: filterNeTop E := filterNeTop_cons_of_ne_top ha E
      rw [h1]
      simp only [List.map_cons]
      exact filterNeTop_cons_congr (f a) ih

theorem filterNeTop_map_append_congr {X Y : Scheme.{u}}
    (f : X.IdealSheafData → Y.IdealSheafData) (hf : f ⊤ = ⊤) (D : Y.IdealSheafData)
    (E E' : List X.IdealSheafData) (h : filterNeTop E = filterNeTop E') :
    filterNeTop (List.map f E ++ [D]) = filterNeTop (List.map f E' ++ [D]) := by
  rw [filterNeTop_append (List.map f E) [D], filterNeTop_append (List.map f E') [D],
    filterNeTop_map_filterNeTop f hf E, filterNeTop_map_filterNeTop f hf E', h]

namespace DivisorReduction

theorem ker_restrictedEmbedding_le_center (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) (T : MarkedIdealWithBoundary.{u})
    [AlgebraicGeometry.IsNoetherian T.scheme] (j : ℕ) (hj : j < T.boundary.length)
    (I₀ : T.scheme.IdealSheafData) (E₀ : List T.scheme.IdealSheafData)
    (s : (restrictToBoundaryDivisor T j hj I₀ E₀).SequenceOfBlowups)
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent)
    (U₀ : (s.toSequenceOfBlowups.schemeAt 0).Opens)
    (hU : IsClosed ((U₀ : Set ↥(s.toSequenceOfBlowups.schemeAt 0)))) (hm : 1 ≤ T.mult)
    (hsupp : (((s.ideal 0).support : Set ↥(s.toSequenceOfBlowups.schemeAt 0))) ⊆
      (U₀ : Set ↥(s.toSequenceOfBlowups.schemeAt 0)))
    (t : ℕ) (ht : t < s.length) :
    Scheme.Hom.ker (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t) ≤
      (ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).center t := by
  have hlt : t < s.toSequenceOfBlowups.length := ht
  have hc := center_ambientBlowupSeq_eq_imageIdealSheaf T j hj I₀ E₀ s hres hno hpr U₀ hU hm hsupp t hlt
  rw [hc, _root_.FunctorialResolution.EmbeddedResolution.imageIdealSheaf_eq_ker]
  exact Scheme.Hom.le_ker_comp _ _

structure GoingUpInvariantOnOpen (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) (T : MarkedIdealWithBoundary.{u})
    [AlgebraicGeometry.IsNoetherian T.scheme] [AlgebraicGeometry.Smooth T.structMap]
    [AlgebraicGeometry.LocallyOfFiniteType T.structMap]
    (j : ℕ) (hj : j < T.boundary.length)
    (I₀ : T.scheme.IdealSheafData) (E₀ : List T.scheme.IdealSheafData)
    (s : (restrictToBoundaryDivisor T j hj I₀ E₀).SequenceOfBlowups)
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent)
    (U₀ : (s.toSequenceOfBlowups.schemeAt 0).Opens) (t : ℕ) : Prop where
  divDeriv : ∀ l ≤ T.mult, ∀ i < t,
    ∃ B : ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).obj (i + 1)).IdealSheafData,
      Blowup.exceptionalIdeal ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).map i)
          ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).center i) ^ (T.mult - l) * B =
        (ambientDerivIdeal hres hno T j hj I₀ E₀ s hpr l i).comap
          ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).map i)
  idx_lt : j < ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).boundaryFrom E₀ t).length
  deriv_le : ∀ [_instFt : AlgebraicGeometry.LocallyOfFiniteType
        (ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t)], ∀ n < T.mult,
      derivIdealSheafIterate T.base (ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t) n
          ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).controlledTransform I₀ T.mult t) ≤
        ⨆ l ≤ n, logDerivIdealSheafIterate T.base
          (ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t)
          (Scheme.Hom.ker (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t)) (n - l)
          (ambientDerivIdeal hres hno T j hj I₀ E₀ s hpr l t)
  comap_eraseIdx :
    filterNeTop (List.map (fun D => D.comap (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t))
        (((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).boundaryFrom E₀ t).eraseIdx j)) =
      filterNeTop (List.map (fun D => D.comap (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι) (s.boundary t))
  snc_bdry : InStrictNormalCrossingPosition (ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t)
      ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).boundaryFrom E₀ t)
  bdry_getElem : ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).boundaryFrom E₀ t)[j]'idx_lt =
      Scheme.Hom.ker (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t)
  smooth_structMap :
    AlgebraicGeometry.Smooth (ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t)

namespace GoingUpInvariantOnOpen

theorem exists_pow_mul_eq_comap_controlledTransform {hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u}}
    {hno : BlowupPreservesNoetherian.{u}} {T : MarkedIdealWithBoundary.{u}}
    [AlgebraicGeometry.IsNoetherian T.scheme] [AlgebraicGeometry.Smooth T.structMap]
    [AlgebraicGeometry.LocallyOfFiniteType T.structMap]
    {j : ℕ} {hj : j < T.boundary.length}
    {I₀ : T.scheme.IdealSheafData} {E₀ : List T.scheme.IdealSheafData}
    {s : (restrictToBoundaryDivisor T j hj I₀ E₀).SequenceOfBlowups}
    {hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent}
    {U₀ : (s.toSequenceOfBlowups.schemeAt 0).Opens} {t : ℕ}
    (hinv : GoingUpInvariantOnOpen hres hno T j hj I₀ E₀ s hpr U₀ t) :
    ∀ i < t, ∃ B : ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).obj (i + 1)).IdealSheafData,
      Blowup.exceptionalIdeal ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).map i)
          ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).center i) ^ T.mult * B =
        ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).controlledTransform I₀ T.mult i).comap
          ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).map i) := by
  intro i hi
  obtain ⟨B, hB⟩ := hinv.divDeriv 0 (Nat.zero_le _) i hi
  refine ⟨B, ?_⟩
  have h0 : ambientDerivIdeal hres hno T j hj I₀ E₀ s hpr 0 i =
      (ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).controlledTransform I₀ T.mult i :=
    ambientDerivIdeal_order_zero_eq_controlledTransform hres hno T j hj I₀ E₀ s hpr i
  simp only [Nat.sub_zero] at hB
  rw [hB, h0]

theorem comap_controlledTransform {hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u}}
    {hno : BlowupPreservesNoetherian.{u}} {T : MarkedIdealWithBoundary.{u}}
    [AlgebraicGeometry.IsNoetherian T.scheme] [AlgebraicGeometry.Smooth T.structMap]
    [AlgebraicGeometry.LocallyOfFiniteType T.structMap]
    {j : ℕ} {hj : j < T.boundary.length}
    {I₀ : T.scheme.IdealSheafData} {E₀ : List T.scheme.IdealSheafData}
    {s : (restrictToBoundaryDivisor T j hj I₀ E₀).SequenceOfBlowups}
    {hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent}
    {U₀ : (s.toSequenceOfBlowups.schemeAt 0).Opens} {t : ℕ}
    (hinv : GoingUpInvariantOnOpen hres hno T j hj I₀ E₀ s hpr U₀ t) (ht : t ≤ s.length) :
    ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).controlledTransform I₀ T.mult t).comap
        (embeddingIntoAmbient hres hno T j hj I₀ E₀ s hpr t) = s.ideal t :=
  _root_.FunctorialResolution.EmbeddedResolution.DivisorReduction.comap_controlledTransform_embeddingIntoAmbient hres hno T j hj I₀ E₀ s hpr t ht hinv.exists_pow_mul_eq_comap_controlledTransform

theorem comap_controlledTransform_restrictedEmbedding {hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u}}
    {hno : BlowupPreservesNoetherian.{u}} {T : MarkedIdealWithBoundary.{u}}
    [AlgebraicGeometry.IsNoetherian T.scheme] [AlgebraicGeometry.Smooth T.structMap]
    [AlgebraicGeometry.LocallyOfFiniteType T.structMap]
    {j : ℕ} {hj : j < T.boundary.length}
    {I₀ : T.scheme.IdealSheafData} {E₀ : List T.scheme.IdealSheafData}
    {s : (restrictToBoundaryDivisor T j hj I₀ E₀).SequenceOfBlowups}
    {hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent}
    {U₀ : (s.toSequenceOfBlowups.schemeAt 0).Opens} {t : ℕ}
    (hinv : GoingUpInvariantOnOpen hres hno T j hj I₀ E₀ s hpr U₀ t) (ht : t ≤ s.length) :
    ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).controlledTransform I₀ T.mult t).comap
        (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t) =
      (s.ideal t).comap (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι := by
  refine Eq.trans (Scheme.IdealSheafData.comap_comp ..) ?_
  exact congrArg
    (fun I : (s.toSequenceOfBlowups.schemeAt t).IdealSheafData =>
      I.comap (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι)
    (comap_controlledTransform hinv ht)

theorem support_center_subset_orderAtLeastLocus {hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u}}
    {hno : BlowupPreservesNoetherian.{u}} {T : MarkedIdealWithBoundary.{u}}
    [AlgebraicGeometry.IsNoetherian T.scheme] [AlgebraicGeometry.Smooth T.structMap]
    [AlgebraicGeometry.LocallyOfFiniteType T.structMap] [CharZero T.base]
    {j : ℕ} {hj : j < T.boundary.length}
    {I₀ : T.scheme.IdealSheafData} {E₀ : List T.scheme.IdealSheafData}
    {s : (restrictToBoundaryDivisor T j hj I₀ E₀).SequenceOfBlowups}
    {hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent}
    {U₀ : (s.toSequenceOfBlowups.schemeAt 0).Opens} {t : ℕ}
    (hinv : GoingUpInvariantOnOpen hres hno T j hj I₀ E₀ s hpr U₀ t)
    (hbal : IsDerivBalanced T.base T.structMap I₀ T.mult) (hm : 1 ≤ T.mult)
    (hV : (restrictToBoundaryDivisor T j hj I₀ E₀).IsAdmissible)
    (hU : IsClosed ((U₀ : Set ↥(s.toSequenceOfBlowups.schemeAt 0))))
    (hsupp : (((s.ideal 0).support : Set ↥(s.toSequenceOfBlowups.schemeAt 0))) ⊆
      (U₀ : Set ↥(s.toSequenceOfBlowups.schemeAt 0)))
    (ht : t < s.length) :
    (↑((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).center t).support :
        Set ↥((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).obj t)) ⊆
      orderAtLeastLocus ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).controlledTransform I₀ T.mult t) T.mult := by
  have ht' : t < s.toSequenceOfBlowups.length := ht
  have htle : t ≤ s.length := le_of_lt ht
  have hmpos : 0 < T.mult := hm
  have : AlgebraicGeometry.Smooth (ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t) :=
    hinv.smooth_structMap
  have : AlgebraicGeometry.IsClosedImmersion
      (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t) :=
    isClosedImmersion_restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ hU t
  have : AlgebraicGeometry.Smooth
      (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t ≫
        ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t) := by
    rw [restrictedEmbedding_comp_structureMorphism_ambientBlowupSeq T j hj I₀ E₀ s hres hno hpr U₀ t]
    exact smooth_iteratedPreimage_ι_comp_projectionToSpec T j hj I₀ E₀ s U₀ hV t (le_of_lt ht')
  have hdom := hinv.deriv_le (T.mult - 1) (Nat.sub_lt hmpos Nat.one_pos)
  have hbal' : ∀ l < T.mult,
      ambientDerivIdeal hres hno T j hj I₀ E₀ s hpr l t ^ T.mult ≤
        (ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).controlledTransform I₀ T.mult t ^ (T.mult - l) := by
    intro l hl
    exact pow_ambientDerivIdeal_le_pow_controlledTransform hres hno T j hj I₀ E₀ s hpr hbal l hl t htle
      (hinv.exists_pow_mul_eq_comap_controlledTransform) (hinv.divDeriv l (le_of_lt hl))
  have hc : (ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).center t =
      _root_.FunctorialResolution.Blowup.schemeImageIdeal (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t)
        ((s.toSequenceOfBlowups.center t).comap (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι) :=
    center_ambientBlowupSeq_eq_imageIdealSheaf T j hj I₀ E₀ s hres hno hpr U₀ hU hm hsupp t ht'
  have hkey : ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).controlledTransform I₀ T.mult t).comap
      (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t) =
      (s.ideal t).comap (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι :=
    comap_controlledTransform_restrictedEmbedding hinv htle
  intro x hx
  rw [hc, support_imageIdealSheaf_eq_image_support] at hx
  obtain ⟨y, hy0, rfl⟩ := hx
  have hy1 : y ∈ orderAtLeastLocus ((s.ideal t).comap (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι) T.mult :=
    support_center_comap_subset_orderAtLeastLocus T j hj I₀ E₀ s U₀ hV t ht' hy0
  have hy2 : y ∈ orderAtLeastLocus
      (((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).controlledTransform I₀ T.mult t).comap
        (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t)) T.mult := by
    rw [hkey]
    exact hy1
  exact base_mem_orderAtLeastLocus_of_mem_comap T.base
    (ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t)
    (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t) T.mult hm
    ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).controlledTransform I₀ T.mult t)
    (fun l => ambientDerivIdeal hres hno T j hj I₀ E₀ s hpr l t) hdom hbal' y hy2

private theorem ker_comp_eq_ker_subschemeι_comp {A S P : Scheme.{u}} (g : A ⟶ S)
    [AlgebraicGeometry.IsClosedImmersion g] (f : S ⟶ P) :
    Scheme.Hom.ker (g ≫ f) = Scheme.Hom.ker ((Scheme.Hom.ker g).subschemeι ≫ f) := by
  symm
  rw [← kerSubschemeIso_hom_comp g, Category.assoc, Scheme.Hom.ker_comp_of_isIso]

private theorem imageIdealSheaf_iso_hom_comp_eq {A S P : Scheme.{u}} (e : A ≅ S) (f : S ⟶ P)
    (C : A.IdealSheafData) :
    _root_.FunctorialResolution.Blowup.schemeImageIdeal (e.hom ≫ f) C = _root_.FunctorialResolution.Blowup.schemeImageIdeal f (C.comap e.inv) := by
  have : AlgebraicGeometry.IsClosedImmersion (C.subschemeι ≫ e.hom) := inferInstance
  have hker : Scheme.Hom.ker (C.subschemeι ≫ e.hom) = C.comap e.inv := by
    rw [← _root_.FunctorialResolution.EmbeddedResolution.imageIdealSheaf_eq_ker]
    exact imageIdealSheaf_hom_eq_comap_inv e C
  rw [_root_.FunctorialResolution.EmbeddedResolution.imageIdealSheaf_eq_ker, _root_.FunctorialResolution.EmbeddedResolution.imageIdealSheaf_eq_ker, ← Category.assoc,
    ker_comp_eq_ker_subschemeι_comp (C.subschemeι ≫ e.hom) f, hker]

theorem hasStrictNormalCrossingsWith_center_cons {hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u}}
    {hno : BlowupPreservesNoetherian.{u}} {T : MarkedIdealWithBoundary.{u}}
    [AlgebraicGeometry.IsNoetherian T.scheme] [AlgebraicGeometry.Smooth T.structMap]
    [AlgebraicGeometry.LocallyOfFiniteType T.structMap] [CharZero T.base]
    {j : ℕ} {hj : j < T.boundary.length}
    {I₀ : T.scheme.IdealSheafData} {E₀ : List T.scheme.IdealSheafData}
    {s : (restrictToBoundaryDivisor T j hj I₀ E₀).SequenceOfBlowups}
    {hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent}
    {U₀ : (s.toSequenceOfBlowups.schemeAt 0).Opens} {t : ℕ}
    (hinv : GoingUpInvariantOnOpen hres hno T j hj I₀ E₀ s hpr U₀ t)
    (hlift : StrictNormalCrossingsLiftFromDivisor.{u}) (hm : 1 ≤ T.mult)
    (hV : (restrictToBoundaryDivisor T j hj I₀ E₀).IsAdmissible)
    (hU : IsClosed ((U₀ : Set ↥(s.toSequenceOfBlowups.schemeAt 0))))
    (hsupp : (((s.ideal 0).support : Set ↥(s.toSequenceOfBlowups.schemeAt 0))) ⊆
      (U₀ : Set ↥(s.toSequenceOfBlowups.schemeAt 0)))
    (ht : t < s.length) :
    HasStrictNormalCrossingsWith (ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t)
      ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).center t)
      (Scheme.Hom.ker (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t) ::
        ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).boundaryFrom E₀ t).eraseIdx j) := by
  have ht' : t < s.toSequenceOfBlowups.length := ht
  have hsm : AlgebraicGeometry.Smooth (ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t) :=
    hinv.smooth_structMap
  have hci : AlgebraicGeometry.IsClosedImmersion
      (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t) :=
    isClosedImmersion_restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ hU t
  obtain ⟨e, he⟩ :
      ∃ e : _ ≅ (Scheme.Hom.ker
          (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t)).subscheme,
        e.hom ≫ (Scheme.Hom.ker (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t)).subschemeι =
          restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t :=
    ⟨(kerSubschemeIso (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t)).symm,
      kerSubschemeIso_inv_comp (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t)⟩
  have hcomp : e.inv ≫ restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t =
      (Scheme.Hom.ker (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t)).subschemeι := by
    calc e.inv ≫ restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t
        = e.inv ≫ (e.hom ≫
            (Scheme.Hom.ker (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t)).subschemeι) := by
          rw [he]
      _ = (Scheme.Hom.ker (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t)).subschemeι := by
          rw [Iso.inv_hom_id_assoc]
  have hsncE : InStrictNormalCrossingPosition (ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t)
      (Scheme.Hom.ker (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t) ::
        ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).boundaryFrom E₀ t).eraseIdx j) := by
    have h1 := inStrictNormalCrossingPosition_moveToFront (ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t)
      ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).boundaryFrom E₀ t) j hinv.idx_lt hinv.snc_bdry
    rwa [moveToFront_eq_cons _ _ hinv.idx_lt, hinv.bdry_getElem] at h1
  have hsncErase : HasStrictNormalCrossingsWith
      (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t ≫
        ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t)
      ((s.toSequenceOfBlowups.center t).comap (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι)
      (List.map (fun D => D.comap (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t))
        (((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).boundaryFrom E₀ t).eraseIdx j)) := by
    rw [restrictedEmbedding_comp_structureMorphism_ambientBlowupSeq T j hj I₀ E₀ s hres hno hpr U₀ t]
    exact hasStrictNormalCrossingsWith_of_filterNeTop_eq _ _ _ _ hinv.comap_eraseIdx.symm
      (hasStrictNormalCrossingsWith_iteratedPreimage T j hj I₀ E₀ s U₀ hV t ht')
  have hq : e.inv ≫ (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t ≫
        ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t)
      = (Scheme.Hom.ker (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t)).subschemeι ≫
        ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t := by
    rw [← Category.assoc, hcomp]
  have hlistEq : List.map (fun D => D.comap e.inv)
        (List.map (fun D => D.comap (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t))
          (((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).boundaryFrom E₀ t).eraseIdx j))
      = List.map (fun D => D.comap
          (Scheme.Hom.ker (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t)).subschemeι)
          (((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).boundaryFrom E₀ t).eraseIdx j) := by
    rw [List.map_map]
    refine List.map_congr_left ?_
    intro D _
    simp only [Function.comp_apply]
    rw [← Scheme.IdealSheafData.comap_comp, hcomp]
  have hsncCenter : HasStrictNormalCrossingsWith
      ((Scheme.Hom.ker (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t)).subschemeι ≫
        ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t)
      (((s.toSequenceOfBlowups.center t).comap (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι).comap e.inv)
      (List.map (fun D => D.comap
          (Scheme.Hom.ker (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t)).subschemeι)
        (((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).boundaryFrom E₀ t).eraseIdx j)) := by
    have h2 := hasStrictNormalCrossingsWith_comap_iso
      (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t ≫
        ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t) e.symm
      ((s.toSequenceOfBlowups.center t).comap (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι)
      (List.map (fun D => D.comap (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t))
        (((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).boundaryFrom E₀ t).eraseIdx j)) hsncErase
    rw [← hq, ← hlistEq]
    exact h2
  have hmain := hlift T.base ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).obj t)
      (ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t)
      (Scheme.Hom.ker (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t))
      (((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).boundaryFrom E₀ t).eraseIdx j) hsncE
      (((s.toSequenceOfBlowups.center t).comap (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι).comap e.inv) hsncCenter
  have himg := imageIdealSheaf_iso_hom_comp_eq e
      (Scheme.Hom.ker (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t)).subschemeι
      ((s.toSequenceOfBlowups.center t).comap (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι)
  rw [he] at himg
  rw [← himg, ← center_ambientBlowupSeq_eq_imageIdealSheaf T j hj I₀ E₀ s hres hno hpr U₀ hU hm
    hsupp t ht'] at hmain
  exact hmain

theorem hasStrictNormalCrossingsWith_center {hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u}}
    {hno : BlowupPreservesNoetherian.{u}} {T : MarkedIdealWithBoundary.{u}}
    [AlgebraicGeometry.IsNoetherian T.scheme] [AlgebraicGeometry.Smooth T.structMap]
    [AlgebraicGeometry.LocallyOfFiniteType T.structMap] [CharZero T.base]
    {j : ℕ} {hj : j < T.boundary.length}
    {I₀ : T.scheme.IdealSheafData} {E₀ : List T.scheme.IdealSheafData}
    {s : (restrictToBoundaryDivisor T j hj I₀ E₀).SequenceOfBlowups}
    {hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent}
    {U₀ : (s.toSequenceOfBlowups.schemeAt 0).Opens} {t : ℕ}
    (hinv : GoingUpInvariantOnOpen hres hno T j hj I₀ E₀ s hpr U₀ t)
    (hlift : StrictNormalCrossingsLiftFromDivisor.{u}) (hm : 1 ≤ T.mult)
    (hV : (restrictToBoundaryDivisor T j hj I₀ E₀).IsAdmissible)
    (hU : IsClosed ((U₀ : Set ↥(s.toSequenceOfBlowups.schemeAt 0))))
    (hsupp : (((s.ideal 0).support : Set ↥(s.toSequenceOfBlowups.schemeAt 0))) ⊆
      (U₀ : Set ↥(s.toSequenceOfBlowups.schemeAt 0)))
    (ht : t < s.length) :
    HasStrictNormalCrossingsWith (ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t)
      ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).center t)
      ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).boundaryFrom E₀ t) := by
  refine hasStrictNormalCrossingsWith_of_moveToFront _ _ _ j hinv.idx_lt ?_
  rw [moveToFront_eq_cons _ j hinv.idx_lt, hinv.bdry_getElem]
  exact hasStrictNormalCrossingsWith_center_cons hinv hlift hm hV hU hsupp ht

theorem exists_pow_mul_eq_comap_ambientDerivIdeal
    {hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u}}
    {hno : BlowupPreservesNoetherian.{u}} {T : MarkedIdealWithBoundary.{u}}
    [AlgebraicGeometry.IsNoetherian T.scheme] [AlgebraicGeometry.Smooth T.structMap]
    [AlgebraicGeometry.LocallyOfFiniteType T.structMap] [CharZero T.base]
    {j : ℕ} {hj : j < T.boundary.length}
    {I₀ : T.scheme.IdealSheafData} {E₀ : List T.scheme.IdealSheafData}
    {s : (restrictToBoundaryDivisor T j hj I₀ E₀).SequenceOfBlowups}
    {hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent}
    {U₀ : (s.toSequenceOfBlowups.schemeAt 0).Opens} {t : ℕ}
    (hinv : GoingUpInvariantOnOpen hres hno T j hj I₀ E₀ s hpr U₀ t)
    (hbal : IsDerivBalanced T.base T.structMap I₀ T.mult) (hm : 1 ≤ T.mult)
    (hV : (restrictToBoundaryDivisor T j hj I₀ E₀).IsAdmissible) (hlift : StrictNormalCrossingsLiftFromDivisor.{u})
    (hU : IsClosed ((U₀ : Set ↥(s.toSequenceOfBlowups.schemeAt 0))))
    (hsupp : (((s.ideal 0).support : Set ↥(s.toSequenceOfBlowups.schemeAt 0))) ⊆
      (U₀ : Set ↥(s.toSequenceOfBlowups.schemeAt 0)))
    (ht : t < s.length) (l : ℕ) (hl : l ≤ T.mult) :
    ∃ B : ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).obj (t + 1)).IdealSheafData,
      Blowup.exceptionalIdeal ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).map t)
          ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).center t) ^ (T.mult - l) * B =
        (ambientDerivIdeal hres hno T j hj I₀ E₀ s hpr l t).comap
          ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).map t) := by
  by_cases hlm : l < T.mult
  · have hnoe : AlgebraicGeometry.IsNoetherian
        ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).obj (t + 1)) :=
      isNoetherian_ambientBlowupSeq_schemeAt hres hno T j hj I₀ E₀ s hpr (t + 1) (by omega)
    have hsm : AlgebraicGeometry.Smooth (ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t) :=
      hinv.smooth_structMap
    have htle : t ≤ s.length := le_of_lt ht
    have hpow : ambientDerivIdeal hres hno T j hj I₀ E₀ s hpr l t ^ T.mult ≤
        (ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).controlledTransform I₀ T.mult t ^ (T.mult - l) :=
      pow_ambientDerivIdeal_le_pow_controlledTransform hres hno T j hj I₀ E₀ s hpr hbal l hlm t htle
        hinv.exists_pow_mul_eq_comap_controlledTransform (hinv.divDeriv l hl)
    have hcs := orderAtLeastLocus_subset_orderAtLeastLocus_of_pow_le T.base
      (ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t)
      (ambientDerivIdeal hres hno T j hj I₀ E₀ s hpr l t)
      ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).controlledTransform I₀ T.mult t) l T.mult hlm hpow
    have hsub := support_center_subset_orderAtLeastLocus hinv hbal hm hV hU hsupp ht
    have hle : ambientDerivIdeal hres hno T j hj I₀ E₀ s hpr l t ≤
        (ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).center t ^ (T.mult - l) :=
      le_pow_of_hasStrictNormalCrossingsWith (ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t)
        ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).center t)
        (ambientDerivIdeal hres hno T j hj I₀ E₀ s hpr l t)
        ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).boundaryFrom E₀ t)
        (hasStrictNormalCrossingsWith_center hinv hlift hm hV hU hsupp ht) (T.mult - l)
        (fun x hx => hcs (hsub hx))
    have hlen : t < (ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).length := by
      rw [ambientBlowupSeq_length hres hno T j hj I₀ E₀ s hpr]
      exact ht
    obtain ⟨B, hB, -⟩ := existsUnique_pow_mul_eq_comap_of_isBlowupAlongIdealSheaf
      ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).map t)
      ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).center t)
      (ambientDerivIdeal hres hno T j hj I₀ E₀ s hpr l t) (T.mult - l)
      ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).isBlowup t hlen) hle
    exact ⟨B, hB⟩
  · refine ⟨(ambientDerivIdeal hres hno T j hj I₀ E₀ s hpr l t).comap
      ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).map t), ?_⟩
    have h0 : T.mult - l = 0 := Nat.sub_eq_zero_of_le (not_lt.mp hlm)
    rw [h0, pow_zero, one_mul]

theorem ambientDerivIdeal_le_center_pow {hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u}}
    {hno : BlowupPreservesNoetherian.{u}} {T : MarkedIdealWithBoundary.{u}}
    [AlgebraicGeometry.IsNoetherian T.scheme] [AlgebraicGeometry.Smooth T.structMap]
    [AlgebraicGeometry.LocallyOfFiniteType T.structMap] [CharZero T.base]
    {j : ℕ} {hj : j < T.boundary.length}
    {I₀ : T.scheme.IdealSheafData} {E₀ : List T.scheme.IdealSheafData}
    {s : (restrictToBoundaryDivisor T j hj I₀ E₀).SequenceOfBlowups}
    {hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent}
    {U₀ : (s.toSequenceOfBlowups.schemeAt 0).Opens} {t : ℕ}
    (hinv : GoingUpInvariantOnOpen hres hno T j hj I₀ E₀ s hpr U₀ t)
    (hbal : IsDerivBalanced T.base T.structMap I₀ T.mult) (hm : 1 ≤ T.mult)
    (hV : (restrictToBoundaryDivisor T j hj I₀ E₀).IsAdmissible) (hlift : StrictNormalCrossingsLiftFromDivisor.{u})
    (hU : IsClosed ((U₀ : Set ↥(s.toSequenceOfBlowups.schemeAt 0))))
    (hsupp : (((s.ideal 0).support : Set ↥(s.toSequenceOfBlowups.schemeAt 0))) ⊆
      (U₀ : Set ↥(s.toSequenceOfBlowups.schemeAt 0)))
    (ht : t < s.length) (l : ℕ) (hl : l ≤ T.mult) :
    ambientDerivIdeal hres hno T j hj I₀ E₀ s hpr l t ≤
      (ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).center t ^ (T.mult - l) := by
  have hsm : AlgebraicGeometry.Smooth (ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t) :=
    hinv.smooth_structMap
  refine le_pow_of_hasStrictNormalCrossingsWith (ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t)
    ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).center t)
    (ambientDerivIdeal hres hno T j hj I₀ E₀ s hpr l t)
    ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).boundaryFrom E₀ t)
    (hasStrictNormalCrossingsWith_center hinv hlift hm hV hU hsupp ht) (T.mult - l) ?_
  by_cases hlm : l < T.mult
  · have htle : t ≤ s.length := le_of_lt ht
    have hpow : ambientDerivIdeal hres hno T j hj I₀ E₀ s hpr l t ^ T.mult ≤
        (ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).controlledTransform I₀ T.mult t ^ (T.mult - l) :=
      pow_ambientDerivIdeal_le_pow_controlledTransform hres hno T j hj I₀ E₀ s hpr hbal l hlm t htle
        hinv.exists_pow_mul_eq_comap_controlledTransform (hinv.divDeriv l hl)
    have hcs := orderAtLeastLocus_subset_orderAtLeastLocus_of_pow_le T.base
      (ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t)
      (ambientDerivIdeal hres hno T j hj I₀ E₀ s hpr l t)
      ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).controlledTransform I₀ T.mult t) l T.mult hlm hpow
    have hsub := support_center_subset_orderAtLeastLocus hinv hbal hm hV hU hsupp ht
    exact fun x hx => hcs (hsub hx)
  · have h0 : T.mult - l = 0 := Nat.sub_eq_zero_of_le (not_lt.mp hlm)
    rw [h0, orderAtLeastLocus_zero]
    exact Set.subset_univ _

end GoingUpInvariantOnOpen

theorem goingUpInvariantOnOpen_zero (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) (T : MarkedIdealWithBoundary.{u})
    [AlgebraicGeometry.IsNoetherian T.scheme] [AlgebraicGeometry.Smooth T.structMap]
    [AlgebraicGeometry.LocallyOfFiniteType T.structMap] [CharZero T.base]
    (j : ℕ) (hj : j < T.boundary.length)
    (I₀ : T.scheme.IdealSheafData) (E₀ : List T.scheme.IdealSheafData)
    (s : (restrictToBoundaryDivisor T j hj I₀ E₀).SequenceOfBlowups)
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent)
    (U₀ : (s.toSequenceOfBlowups.schemeAt 0).Opens)
    (hE₀ : InStrictNormalCrossingPosition T.structMap E₀) (hjE : j < E₀.length)
    (hget : E₀[j]'hjE = Scheme.Hom.ker (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ 0))
    (hcmp : filterNeTop (List.map
          (fun D => D.comap (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ 0))
          (E₀.eraseIdx j)) =
        filterNeTop (List.map (fun D => D.comap U₀.ι) (s.boundary 0))) :
    GoingUpInvariantOnOpen hres hno T j hj I₀ E₀ s hpr U₀ 0 := by
  have hsmT : AlgebraicGeometry.Smooth T.structMap := inferInstance
  have hftT : AlgebraicGeometry.LocallyOfFiniteType T.structMap := inferInstance
  have hps : ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr 0 = T.structMap :=
    structureMorphism_ambientBlowupSeq_zero hres hno T j hj I₀ E₀ s hpr
  have hbd : (ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).boundaryFrom E₀ 0 = E₀ :=
    ambientBlowupSeq_boundary_zero hres hno T j hj I₀ E₀ s hpr
  have hidx : j < ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).boundaryFrom E₀ 0).length := by
    rw [hbd]; exact hjE
  have hd0 : derivIdealSheafIterate T.base T.structMap 0 I₀ = I₀ := by
    have h1 := maxContactIdeal_eq_derivIdealSheafIterate T.base T.structMap I₀ 1
    have h2 := maxContactIdeal_one T.base T.structMap I₀
    rw [h1, Nat.sub_self] at h2
    exact h2
  have hctrl : (ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).controlledTransform I₀ T.mult 0 = I₀ := by
    have e1 := ambientDerivIdeal_order_zero_eq_controlledTransform hres hno T j hj I₀ E₀ s hpr 0
    have e2 := ambientDerivIdeal_at_zero_eq_derivIdealSheafIterate hres hno T j hj I₀ E₀ s hpr 0
    rw [e2, hd0] at e1
    exact e1.symm
  refine
    { divDeriv := ?_
      idx_lt := hidx
      deriv_le := ?_
      comap_eraseIdx := ?_
      snc_bdry := ?_
      bdry_getElem := ?_
      smooth_structMap := ?_ }
  · intro l _ i hi
    exact absurd hi (Nat.not_lt_zero i)
  · intro instFt n _
    have hcongr := @derivIdealSheafIterate_congr T.base _ _
      (ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr 0) T.structMap instFt hftT hps n I₀
    have key : derivIdealSheafIterate T.base (ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr 0) n
        ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).controlledTransform I₀ T.mult 0) =
        ambientDerivIdeal hres hno T j hj I₀ E₀ s hpr n 0 := by
      rw [hctrl]
      exact hcongr.trans (ambientDerivIdeal_at_zero_eq_derivIdealSheafIterate hres hno T j hj I₀ E₀ s hpr n).symm
    refine le_trans (le_of_eq key) (le_iSup_of_le n (le_iSup_of_le le_rfl (le_of_eq ?_)))
    simp only [Nat.sub_self, logDerivIdealSheafIterate_zero]
  · rw [hbd]
    exact hcmp
  · rw [hps, hbd]
    exact hE₀
  · revert hidx
    rw [hbd]
    intro h
    exact hget
  · rw [hps]
    exact hsmT

end DivisorReduction

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.GoingUpInvariantOnOpens =====
