module

public import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.RemoveIsoBlowups
public import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.StrictTransform
public import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.BlowupSequenceRelations
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.DivisorReductionSequence
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.PushforwardComposition
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.PushforwardFlatBaseChange
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.PushforwardUniqueness
public import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.NoetherianBlowup
public import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.BlowupSequenceFlatBaseChange
public import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.IsoBlowupRemovalBaseChange
public import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.PullbackBlowupSequenceIsomorphism
import Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData
import Mathlib.Tactic.Linter.Style
import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.BlowupSequenceBasic
import Development.ResolutionOfSingularities.Foundations.Blowup.BlowupBasic
import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.PullbackBlowupSequenceComposition

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.RemoveIsoBlowupsComparison, Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.IsoBlowupRemoval, Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.AmbientBlowupFlatBaseChange

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.RemoveIsoBlowupsComparison =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.RemoveIsoBlowupsComparison", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.RemoveIsoBlowups\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.StrictTransform\nimport Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

namespace FunctorialResolution.EmbeddedResolution

namespace SequenceOfBlowups

variable {X Y : Scheme.{u}}

private theorem nextNontrivialIndex_le_of_center_eq_top_iff (s : SequenceOfBlowups X) (t : SequenceOfBlowups Y)
    (hlen : s.length = t.length)
    (htriv : ∀ i, i < s.length → (s.center i = ⊤ ↔ t.center i = ⊤)) (a : ℕ) :
    s.nextNontrivialIndex a ≤ t.nextNontrivialIndex a := by
  refine s.nextNontrivialIndex_le (t.le_nextNontrivialIndex a) ?_
  rcases Nat.lt_or_ge (t.nextNontrivialIndex a) s.length with h | h
  · refine Or.inl ?_
    have hlt : t.nextNontrivialIndex a < t.length := by rw [← hlen]; exact h
    rcases t.center_nextNontrivialIndex_ne_top_or_length_le a with hd | hd
    · intro hc
      exact hd ((htriv _ h).1 hc)
    · exact absurd hd (not_le.mpr hlt)
  · exact Or.inr h

theorem nextNontrivialIndex_congr_of_center_eq_top_iff (s : SequenceOfBlowups X) (t : SequenceOfBlowups Y)
    (hlen : s.length = t.length)
    (htriv : ∀ i, i < s.length → (s.center i = ⊤ ↔ t.center i = ⊤)) (a : ℕ) :
    s.nextNontrivialIndex a = t.nextNontrivialIndex a := by
  refine le_antisymm (nextNontrivialIndex_le_of_center_eq_top_iff s t hlen htriv a) ?_
  refine nextNontrivialIndex_le_of_center_eq_top_iff t s hlen.symm ?_ a
  intro i hi
  have hi' : i < s.length := by rw [hlen]; exact hi
  exact (htriv i hi').symm

theorem nontrivialIndex_congr_of_center_eq_top_iff (s : SequenceOfBlowups X) (t : SequenceOfBlowups Y)
    (hlen : s.length = t.length)
    (htriv : ∀ i, i < s.length → (s.center i = ⊤ ↔ t.center i = ⊤)) :
    s.nontrivialIndex = t.nontrivialIndex := by
  funext j
  induction j with
  | zero =>
      rw [nontrivialIndex_zero, nontrivialIndex_zero]
      exact nextNontrivialIndex_congr_of_center_eq_top_iff s t hlen htriv 0
  | succ j ih =>
      rw [nontrivialIndex_succ, nontrivialIndex_succ, ih]
      exact nextNontrivialIndex_congr_of_center_eq_top_iff s t hlen htriv _

private theorem lengthWithoutIsoBlowups_le_of_nontrivialIndex_eq (s : SequenceOfBlowups X) (t : SequenceOfBlowups Y)
    (hlen : s.length = t.length) (hret : s.nontrivialIndex = t.nontrivialIndex) :
    s.lengthWithoutIsoBlowups ≤ t.lengthWithoutIsoBlowups := by
  by_contra hc
  push Not at hc
  have h1 : s.nontrivialIndex t.lengthWithoutIsoBlowups < s.length := s.nontrivialIndex_lt_length hc
  have h2 : t.length ≤ t.nontrivialIndex t.lengthWithoutIsoBlowups := t.length_le_nontrivialIndex_lengthWithoutIsoBlowups
  rw [← hret, ← hlen] at h2
  exact absurd h2 (not_le.mpr h1)

theorem lengthWithoutIsoBlowups_congr_of_center_eq_top_iff (s : SequenceOfBlowups X) (t : SequenceOfBlowups Y)
    (hlen : s.length = t.length)
    (htriv : ∀ i, i < s.length → (s.center i = ⊤ ↔ t.center i = ⊤)) :
    s.lengthWithoutIsoBlowups = t.lengthWithoutIsoBlowups := by
  have hret : s.nontrivialIndex = t.nontrivialIndex := nontrivialIndex_congr_of_center_eq_top_iff s t hlen htriv
  exact le_antisymm (lengthWithoutIsoBlowups_le_of_nontrivialIndex_eq s t hlen hret)
    (lengthWithoutIsoBlowups_le_of_nontrivialIndex_eq t s hlen.symm hret.symm)

end SequenceOfBlowups

private theorem preimage_inv_eq {P Q : Scheme.{u}} (m : P ⟶ Q) [IsIso m] {V : Q.Opens}
    {U : P.Opens} (h : m ⁻¹ᵁ V = U) : (inv m) ⁻¹ᵁ U = V := by
  rw [← h, ← Scheme.Hom.comp_preimage, IsIso.inv_hom_id, Scheme.Hom.id_preimage]

private theorem exists_isIso_subscheme_comap_of_isIso {A B C : Scheme.{u}} (e : C ⟶ B) [IsIso e] (π : B ⟶ A)
    (D : A.IdealSheafData) :
    ∃ m : (D.comap (e ≫ π)).subscheme ⟶ (D.comap π).subscheme,
      IsIso m ∧ m ≫ (D.comap π).subschemeι = (D.comap (e ≫ π)).subschemeι ≫ e := by
  rw [Scheme.IdealSheafData.comap_comp]
  exact Scheme.IdealSheafData.exists_iso_subscheme_comap_of_isIso e (D.comap π)

private theorem exists_isIso_strictTransformOpens_of_isIso {A B C : Scheme.{u}} (e : C ⟶ B) [IsIso e] (π : B ⟶ A)
    (Z D : A.IdealSheafData) :
    ∃ φ : (strictTransformOpens (e ≫ π) Z D).toScheme ⟶
        (strictTransformOpens π Z D).toScheme,
      IsIso φ ∧ φ ≫ strictTransformι π Z D
        = strictTransformι (e ≫ π) Z D ≫ e := by
  obtain ⟨μ, hμiso, hμfac⟩ := exists_isIso_subscheme_comap_of_isIso e π D
  have := hμiso
  have hbase : ∀ T : Set B, ⇑μ.base ⁻¹' (⇑(D.comap π).subschemeι.base ⁻¹' T)
      = ⇑(D.comap (e ≫ π)).subschemeι.base ⁻¹' (⇑e.base ⁻¹' T) := by
    intro T
    have h := congrArg (fun m : (D.comap (e ≫ π)).subscheme ⟶ B => ⇑m.base ⁻¹' T) hμfac
    simpa [Set.preimage_comp] using h
  have hsupp : (((Z.comap (e ≫ π)).support.compl : C.Opens) : Set C)
      = ⇑e.base ⁻¹' (((Z.comap π).support.compl : B.Opens) : Set B) := by
    have h1 : (((Z.comap π).support : TopologicalSpace.Closeds B) : Set B)
        = ⇑π.base ⁻¹' (Z.support : Set A) := by
      rw [Scheme.IdealSheafData.support_comap]; rfl
    have h2 : (((Z.comap (e ≫ π)).support : TopologicalSpace.Closeds C) : Set C)
        = ⇑(e ≫ π).base ⁻¹' (Z.support : Set A) := by
      rw [Scheme.IdealSheafData.support_comap]; rfl
    show (((Z.comap (e ≫ π)).support : TopologicalSpace.Closeds C) : Set C)ᶜ
        = ⇑e.base ⁻¹' ((((Z.comap π).support : TopologicalSpace.Closeds B) : Set B)ᶜ)
    rw [h1, h2, Set.preimage_compl]
    simp [Set.preimage_comp]
  have hset : ⇑μ.base ⁻¹' ((strictTransformOpens π Z D :
        ((D.comap π).subscheme).Opens) : Set ((D.comap π).subscheme))
      = ((strictTransformOpens (e ≫ π) Z D :
        ((D.comap (e ≫ π)).subscheme).Opens) : Set ((D.comap (e ≫ π)).subscheme)) := by
    rw [coe_strictTransformOpens, coe_strictTransformOpens, hbase, hsupp]
  have hopens : μ ⁻¹ᵁ (strictTransformOpens π Z D)
      = strictTransformOpens (e ≫ π) Z D := TopologicalSpace.Opens.ext hset
  have hopens2 : (inv μ) ⁻¹ᵁ (strictTransformOpens (e ≫ π) Z D)
      = strictTransformOpens π Z D := preimage_inv_eq μ hopens
  refine ⟨μ.resLE (strictTransformOpens π Z D) (strictTransformOpens (e ≫ π) Z D)
      hopens.ge, ?_, ?_⟩
  · refine ⟨(inv μ).resLE (strictTransformOpens (e ≫ π) Z D)
      (strictTransformOpens π Z D) hopens2.ge, ?_, ?_⟩
    · rw [← cancel_mono (Scheme.Opens.ι (strictTransformOpens (e ≫ π) Z D)),
        Category.assoc, Scheme.Hom.resLE_comp_ι, ← Category.assoc, Scheme.Hom.resLE_comp_ι,
        Category.assoc, IsIso.hom_inv_id, Category.comp_id, Category.id_comp]
    · rw [← cancel_mono (Scheme.Opens.ι (strictTransformOpens π Z D)),
        Category.assoc, Scheme.Hom.resLE_comp_ι, ← Category.assoc, Scheme.Hom.resLE_comp_ι,
        Category.assoc, IsIso.inv_hom_id, Category.comp_id, Category.id_comp]
  · rw [strictTransformι_eq_ι_comp_subschemeι, strictTransformι_eq_ι_comp_subschemeι, ← Category.assoc,
      Scheme.Hom.resLE_comp_ι, Category.assoc, hμfac, ← Category.assoc]

theorem strictTransform_top_eq_comap {A B : Scheme.{u}} (π : B ⟶ A) (D : A.IdealSheafData)
    [QuasiCompact (strictTransformι π ⊤ D)] :
    Blowup.strictTransform π ⊤ D = D.comap π := by
  have hs : (((⊤ : A.IdealSheafData).support : TopologicalSpace.Closeds A) : Set A) = ∅ := by
    simp
  have hsupp : ((((⊤ : A.IdealSheafData).comap π).support :
        TopologicalSpace.Closeds B) : Set B)
      = ⇑π.base ⁻¹' (((⊤ : A.IdealSheafData).support : TopologicalSpace.Closeds A) : Set A) := by
    rw [Scheme.IdealSheafData.support_comap]; rfl
  have hc : ((((⊤ : A.IdealSheafData).comap π).support.compl : B.Opens) : Set B) = Set.univ := by
    show (((((⊤ : A.IdealSheafData).comap π).support : TopologicalSpace.Closeds B) : Set B))ᶜ
        = Set.univ
    rw [hsupp, hs]
    simp
  have hU : ((strictTransformOpens π ⊤ D : ((D.comap π).subscheme).Opens) :
      Set ((D.comap π).subscheme)) = Set.univ := by
    rw [coe_strictTransformOpens, hc, Set.preimage_univ]
  have hrange : ∀ g : (D.comap π).subscheme ⟶ (D.comap π).subscheme,
      Set.range ⇑g.base
        ⊆ Set.range ⇑(Scheme.Opens.ι (strictTransformOpens π ⊤ D)).base := by
    intro g
    rw [Scheme.Opens.range_ι, hU]
    exact Set.subset_univ _
  have : IsIso (Scheme.Opens.ι (strictTransformOpens π ⊤ D)) := by
    refine ⟨IsOpenImmersion.lift (Scheme.Opens.ι (strictTransformOpens π ⊤ D)) (𝟙 _)
      (hrange (𝟙 _)), ?_, IsOpenImmersion.lift_fac _ _ _⟩
    rw [← cancel_mono (Scheme.Opens.ι (strictTransformOpens π ⊤ D)), Category.assoc,
      IsOpenImmersion.lift_fac, Category.comp_id, Category.id_comp]
  rw [strictTransform_eq_ker_strictTransformι, strictTransformι_eq_ι_comp_subschemeι,
    Scheme.Hom.ker_comp_of_isIso, Scheme.IdealSheafData.ker_subschemeι]

theorem strictTransform_isIso_comp {A B C : Scheme.{u}} [IsLocallyNoetherian B]
    [IsLocallyNoetherian C] (e : C ⟶ B) [IsIso e] (π : B ⟶ A) (Z D : A.IdealSheafData)
    (_hπ : Blowup.IsBlowupAlongIdealSheaf π Z) :
    Blowup.strictTransform (e ≫ π) Z D = (Blowup.strictTransform π Z D).comap e := by
  have : QuasiCompact (strictTransformι (e ≫ π) Z D) := inferInstance
  have : QuasiCompact (strictTransformι (e ≫ π) Z D ≫ e) := inferInstance
  obtain ⟨φ, hφiso, hφfac⟩ := exists_isIso_strictTransformOpens_of_isIso e π Z D
  have := hφiso
  have hker : (strictTransformι (e ≫ π) Z D ≫ e).ker
      = (strictTransformι π Z D).ker :=
    ker_eq_ker_of_isIso_comp _ _ φ hφfac
  have h2 := Blowup.comap_ker_comp_of_isOpenImmersion (strictTransformι (e ≫ π) Z D) e
  rw [strictTransform_eq_ker_strictTransformι, strictTransform_eq_ker_strictTransformι, ← h2, hker]

end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.RemoveIsoBlowupsComparison =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.IsoBlowupRemoval =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.IsoBlowupRemoval", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.RemoveIsoBlowups\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.BlowupSequenceRelations\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.BlowupSequenceBasic\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.RemoveIsoBlowupsComparison\nimport Development.ResolutionOfSingularities.Foundations.Blowup.BlowupBasic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

private theorem imageIdealSheaf_top {S X : Scheme.{u}} (σ : S ⟶ X) :
    _root_.FunctorialResolution.Blowup.schemeImageIdeal σ (⊤ : S.IdealSheafData) = ⊤ := by
  have hemp : IsEmpty ↥(⊤ : S.IdealSheafData).subscheme := inferInstance
  have hqc : QuasiCompact ((⊤ : S.IdealSheafData).subschemeι ≫ σ) := by
    constructor
    intro U _ _
    convert isCompact_empty
    exact Set.eq_empty_of_isEmpty _
  rw [imageIdealSheaf_eq_ker, ← Scheme.IdealSheafData.support_eq_bot_iff]
  have hs := Scheme.Hom.support_ker ((⊤ : S.IdealSheafData).subschemeι ≫ σ)
  rw [Set.range_eq_empty, closure_empty] at hs
  refine SetLike.coe_injective ?_
  rw [hs]
  simp

private theorem imageIdealSheaf_eq_top_iff {S X : Scheme.{u}} (σ : S ⟶ X) [IsClosedImmersion σ]
    (I : S.IdealSheafData) : _root_.FunctorialResolution.Blowup.schemeImageIdeal σ I = ⊤ ↔ I = ⊤ := by
  constructor
  · intro hI
    have h2 : (_root_.FunctorialResolution.Blowup.schemeImageIdeal σ I).comap σ = I := Blowup.comap_schemeImageIdeal σ I
    rw [hI] at h2
    rw [← h2]
    simp
  · rintro rfl
    exact imageIdealSheaf_top σ

private theorem eqToHom_projectionToBase {Sc : Scheme.{u}} (t : SequenceOfBlowups Sc) {a a' : ℕ} (ha : a = a') :
    eqToHom (congrArg t.schemeAt ha) ≫ t.projectionToBase a' = t.projectionToBase a := by
  subst ha
  simp

private theorem comp_eqToHom_comp_transitionMap {Sc A C : Scheme.{u}} (t : SequenceOfBlowups Sc) {a b a' b' : ℕ}
    (ha : a = a') (hb : b = b') (hab : a ≤ b) (hab' : a' ≤ b')
    (g : C ⟶ t.schemeAt b) (f : A ⟶ t.schemeAt a) (u : C ⟶ A)
    (H : g ≫ t.transitionMap hab = u ≫ f) :
    (g ≫ eqToHom (congrArg t.schemeAt hb)) ≫ t.transitionMap hab'
      = u ≫ (f ≫ eqToHom (congrArg t.schemeAt ha)) := by
  subst ha
  subst hb
  simpa using H

private theorem isClosedImmersion_comp_eqToHom {Sc A : Scheme.{u}} (t : SequenceOfBlowups Sc) {a a' : ℕ}
    (ha : a = a') (f : A ⟶ t.schemeAt a) (hf : IsClosedImmersion f) :
    IsClosedImmersion (f ≫ eqToHom (congrArg t.schemeAt ha)) := by
  subst ha
  simpa using hf

private theorem center_eq_imageIdealSheaf_comp_eqToHom {Sc A : Scheme.{u}} (t : SequenceOfBlowups Sc)
    (I : A.IdealSheafData) {a a' : ℕ} (ha : a = a') (f : A ⟶ t.schemeAt a)
    (hf : t.center a = _root_.FunctorialResolution.Blowup.schemeImageIdeal f I) :
    t.center a' = _root_.FunctorialResolution.Blowup.schemeImageIdeal (f ≫ eqToHom (congrArg t.schemeAt ha)) I := by
  subst ha
  simpa using hf

private theorem ker_comp_eqToHom_eq_strictTransform {Sc A C : Scheme.{u}} (t : SequenceOfBlowups Sc)
    {a b a' b' : ℕ} (ha : a = a') (hb : b = b') (hab : a ≤ b) (hab' : a' ≤ b')
    (g : C ⟶ t.schemeAt b) (f : A ⟶ t.schemeAt a)
    (H : g.ker = Blowup.strictTransform (t.transitionMap hab) (t.center a) f.ker) :
    (g ≫ eqToHom (congrArg t.schemeAt hb)).ker
      = Blowup.strictTransform (t.transitionMap hab') (t.center a') (f ≫ eqToHom (congrArg t.schemeAt ha)).ker := by
  subst ha
  subst hb
  simpa using H

theorem isPushforwardSequenceOfBlowups_withoutIsoBlowups {S X : Scheme.{u}} (j : S ⟶ X) [IsClosedImmersion j]
    (B : SequenceOfBlowups S) (t : SequenceOfBlowups X)
    (hN : ∀ i : ℕ, i ≤ t.length → IsLocallyNoetherian (t.schemeAt i))
    (h : IsPushforwardBlowupSeq j B t) :
    IsPushforwardBlowupSeq j B.withoutIsoBlowups t.withoutIsoBlowups := by
  obtain ⟨hlen, σ, hci, h0, hsq, hcen, hker⟩ := h
  have htriv : ∀ i : ℕ, i < B.length → (B.center i = ⊤ ↔ t.center i = ⊤) := by
    intro i hi
    have := hci i hi.le
    rw [hcen i hi]
    exact (imageIdealSheaf_eq_top_iff (σ i hi.le) (B.center i)).symm
  have hretf : B.nontrivialIndex = t.nontrivialIndex :=
    SequenceOfBlowups.nontrivialIndex_congr_of_center_eq_top_iff B t hlen htriv
  have hplen : B.lengthWithoutIsoBlowups = t.lengthWithoutIsoBlowups :=
    SequenceOfBlowups.lengthWithoutIsoBlowups_congr_of_center_eq_top_iff B t hlen htriv
  have hret : ∀ i : ℕ, B.nontrivialIndex i = t.nontrivialIndex i := fun i => congrFun hretf i
  have hdown : ∀ (a b : ℕ) (hab : a ≤ b) (hb : b ≤ B.length),
      σ b hb ≫ t.transitionMap hab = B.transitionMap hab ≫ σ a (le_trans hab hb) := by
    intro a b hab
    induction b, hab using Nat.le_induction with
    | base =>
        intro hb
        rw [t.transitionMap_self, B.transitionMap_self, Category.comp_id, Category.id_comp]
    | succ b hab ih =>
        intro hb
        have hbl : b < B.length := hb
        have e1 : t.transitionMapSucc b ≫ t.transitionMap hab = t.transitionMap (le_trans hab (Nat.le_succ b)) := by
          rw [SequenceOfBlowups.blowupMorphism_eq_transitionMap]
          exact t.transitionMap_trans hab (Nat.le_succ b)
        have e2 : B.transitionMapSucc b ≫ B.transitionMap hab = B.transitionMap (le_trans hab (Nat.le_succ b)) := by
          rw [SequenceOfBlowups.blowupMorphism_eq_transitionMap]
          exact B.transitionMap_trans hab (Nat.le_succ b)
        rw [← e1, ← Category.assoc, hsq b hbl, Category.assoc, ih hbl.le, ← Category.assoc, e2]
  have hstruct : ∀ (i : ℕ) (hi : i ≤ B.length),
      σ i hi ≫ t.projectionToBase i = B.projectionToBase i ≫ j := by
    intro i hi
    have hd := hdown 0 i (Nat.zero_le i) hi
    rw [SequenceOfBlowups.projectionToBase_def, SequenceOfBlowups.projectionToBase_def, ← Category.assoc (σ i hi), hd]
    simp only [Category.assoc, h0]
  have key : ∀ (a c : ℕ) (hac : a + 1 ≤ c), (∀ d : ℕ, a + 1 ≤ d → d < c → t.center d = ⊤) →
      ∀ (hc : c ≤ B.length) (ha : a < B.length),
      (σ c hc).ker
        = Blowup.strictTransform (t.transitionMap (Nat.le_of_succ_le hac)) (t.center a) (σ a ha.le).ker := by
    intro a c hac
    induction c, hac using Nat.le_induction with
    | base =>
        intro _ hc ha
        have hk := hker a ha
        rw [SequenceOfBlowups.blowupMorphism_eq_transitionMap] at hk
        exact hk
    | succ c hac ih =>
        intro htop hc ha
        have hcl : c < B.length := hc
        have hc' : c ≤ B.length := le_of_lt hcl
        have htopc : ∀ d : ℕ, a + 1 ≤ d → d < c → t.center d = ⊤ :=
          fun d hd1 hd2 => htop d hd1 (Nat.lt_succ_of_lt hd2)
        have hctop : t.center c = ⊤ := htop c hac (Nat.lt_succ_self c)
        have : IsLocallyNoetherian (t.schemeAt c) := hN c (by omega)
        have : IsLocallyNoetherian (t.schemeAt (c + 1)) := hN (c + 1) (by omega)
        have ihc := ih htopc hc' ha
        have hk := hker c hcl
        rw [hctop, strictTransform_top_eq_comap (t.transitionMapSucc c) ((σ c hcl.le).ker), ihc] at hk
        have hiso : IsIso (t.transitionMapSucc c) := by
          have hB := t.isBlowupAlongIdealSheaf_blowupMorphism c (by omega)
          rw [hctop] at hB
          exact hB.isIso_of_top
        have hbl : Blowup.IsBlowupAlongIdealSheaf (t.transitionMap (Nat.le_of_succ_le hac)) (t.center a) := by
          have : IsIso (t.transitionMap hac) := t.isIso_transitionMap_of_center_eq_top hac (by omega) htopc
          have hB : Blowup.IsBlowupAlongIdealSheaf (t.transitionMapSucc a) (t.center a) := t.isBlowupAlongIdealSheaf_blowupMorphism a (by omega)
          have hcomp := hB.iso_hom_comp (asIso (t.transitionMap hac))
          have heq2 : (asIso (t.transitionMap hac)).hom ≫ t.transitionMapSucc a
              = t.transitionMap (Nat.le_of_succ_le hac) := by
            rw [SequenceOfBlowups.blowupMorphism_eq_transitionMap]
            exact t.transitionMap_trans (Nat.le_succ a) hac
          rw [heq2] at hcomp
          exact hcomp
        have heq : t.transitionMapSucc c ≫ t.transitionMap (Nat.le_of_succ_le hac)
            = t.transitionMap (Nat.le_of_succ_le (le_trans hac (Nat.le_succ c))) := by
          rw [SequenceOfBlowups.blowupMorphism_eq_transitionMap]
          exact t.transitionMap_trans (Nat.le_of_succ_le hac) (Nat.le_succ c)
        rw [hk, ← strictTransform_isIso_comp (t.transitionMapSucc c) (t.transitionMap (Nat.le_of_succ_le hac))
          (t.center a) ((σ a ha.le).ker) hbl, heq]
  have h1 : ∀ (i : ℕ) (hi : i ≤ B.lengthWithoutIsoBlowups),
      IsClosedImmersion (σ (B.nontrivialIndex i) (B.nontrivialIndex_le_length hi) ≫
        eqToHom (congrArg t.schemeAt (hret i))) := by
    intro i hi
    exact isClosedImmersion_comp_eqToHom t (hret i) _ (hci _ _)
  have h2 : (σ (B.nontrivialIndex 0) (B.nontrivialIndex_le_length (Nat.zero_le B.lengthWithoutIsoBlowups)) ≫
      eqToHom (congrArg t.schemeAt (hret 0))) ≫ t.withoutIsoBlowups.isoZero.hom
      = B.withoutIsoBlowups.isoZero.hom ≫ j := by
    simp only [SequenceOfBlowups.withoutIsoBlowups_isoObjZero, SequenceOfBlowups.objNontrivialIndexZeroIso_hom]
    rw [Category.assoc, eqToHom_projectionToBase t (hret 0)]
    exact hstruct (B.nontrivialIndex 0) (B.nontrivialIndex_le_length (Nat.zero_le B.lengthWithoutIsoBlowups))
  have h3 : ∀ (i : ℕ) (hi : i < B.lengthWithoutIsoBlowups),
      (σ (B.nontrivialIndex (i + 1)) (B.nontrivialIndex_le_length hi) ≫
          eqToHom (congrArg t.schemeAt (hret (i + 1)))) ≫ t.withoutIsoBlowups.transitionMapSucc i
        = B.withoutIsoBlowups.transitionMapSucc i ≫
          (σ (B.nontrivialIndex i) (B.nontrivialIndex_le_length (le_of_lt hi)) ≫
            eqToHom (congrArg t.schemeAt (hret i))) := by
    intro i hi
    simp only [SequenceOfBlowups.withoutIsoBlowups_blowupMorphism]
    exact comp_eqToHom_comp_transitionMap t (hret i) (hret (i + 1))
      (B.nontrivialIndex_monotone (Nat.le_succ i) : B.nontrivialIndex i ≤ B.nontrivialIndex (i + 1))
      (t.nontrivialIndex_monotone (Nat.le_succ i) : t.nontrivialIndex i ≤ t.nontrivialIndex (i + 1)) _ _ _
      (hdown (B.nontrivialIndex i) (B.nontrivialIndex (i + 1))
        (B.nontrivialIndex_monotone (Nat.le_succ i) : B.nontrivialIndex i ≤ B.nontrivialIndex (i + 1))
        (B.nontrivialIndex_le_length hi))
  have h4 : ∀ (i : ℕ) (hi : i < B.lengthWithoutIsoBlowups),
      t.withoutIsoBlowups.center i = _root_.FunctorialResolution.Blowup.schemeImageIdeal (σ (B.nontrivialIndex i) (B.nontrivialIndex_le_length (le_of_lt hi)) ≫
        eqToHom (congrArg t.schemeAt (hret i))) (B.withoutIsoBlowups.center i) := by
    intro i hi
    simp only [SequenceOfBlowups.withoutIsoBlowups_center]
    exact center_eq_imageIdealSheaf_comp_eqToHom t (B.center (B.nontrivialIndex i)) (hret i) _
      (hcen (B.nontrivialIndex i) (B.nontrivialIndex_lt_length hi))
  have h5 : ∀ (i : ℕ) (hi : i < B.lengthWithoutIsoBlowups),
      (σ (B.nontrivialIndex (i + 1)) (B.nontrivialIndex_le_length hi) ≫
          eqToHom (congrArg t.schemeAt (hret (i + 1)))).ker
        = Blowup.strictTransform (t.withoutIsoBlowups.transitionMapSucc i) (t.withoutIsoBlowups.center i)
          (σ (B.nontrivialIndex i) (B.nontrivialIndex_le_length (le_of_lt hi)) ≫
            eqToHom (congrArg t.schemeAt (hret i))).ker := by
    intro i hi
    have htopd : ∀ d : ℕ, B.nontrivialIndex i + 1 ≤ d → d < B.nontrivialIndex (i + 1) → t.center d = ⊤ := by
      intro d hd1 hd2
      have hdlt : d < B.length := lt_of_lt_of_le hd2 (B.nontrivialIndex_le_length hi)
      exact (htriv d hdlt).1 (B.center_eq_top_of_nontrivialIndex_lt (Nat.lt_of_succ_le hd1) hd2)
    simp only [SequenceOfBlowups.withoutIsoBlowups_blowupMorphism, SequenceOfBlowups.withoutIsoBlowups_center]
    exact ker_comp_eqToHom_eq_strictTransform t (hret i) (hret (i + 1))
      (B.nontrivialIndex_monotone (Nat.le_succ i))
      (t.nontrivialIndex_monotone (Nat.le_succ i)) _ _
      (key (B.nontrivialIndex i) (B.nontrivialIndex (i + 1)) (B.succ_le_nontrivialIndex_succ i) htopd
        (B.nontrivialIndex_le_length hi) (B.nontrivialIndex_lt_length hi))
  exact ⟨hplen, fun i hi => σ (B.nontrivialIndex i) (B.nontrivialIndex_le_length hi) ≫
    eqToHom (congrArg t.schemeAt (hret i)), h1, h2, h3, h4, h5⟩

end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.IsoBlowupRemoval =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.AmbientBlowupFlatBaseChange =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.AmbientBlowupFlatBaseChange", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.DivisorReductionSequence\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.IsoBlowupRemoval\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.PushforwardComposition\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.PushforwardFlatBaseChange\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.PushforwardUniqueness\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.NoetherianBlowup\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.BlowupSequenceFlatBaseChange\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.IsoBlowupRemovalBaseChange\nimport Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.PullbackBlowupSequenceComposition\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.PullbackBlowupSequenceIsomorphism\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Morphisms.WeaklyEtale\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry CategoryTheory.Limits

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

theorem isStrictPullbackBlowupSeq_ambientBlowupSequence_of_flat
    (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u})
    {X Y S S' : Scheme.{u}} (ι : S ⟶ X) (ι' : S' ⟶ Y) (h : Y ⟶ X) (h' : S' ⟶ S)
    [AlgebraicGeometry.IsClosedImmersion ι] [AlgebraicGeometry.IsClosedImmersion ι']
    [AlgebraicGeometry.Flat h]
    [AlgebraicGeometry.IsNoetherian X] [AlgebraicGeometry.IsNoetherian Y]
    (hsq : IsPullback ι' h' h ι)
    (s : BlowupSequenceData S) (s' : BlowupSequenceData S')
    (hs : s.CentersContainNoComponent) (hs' : s'.CentersContainNoComponent)
    (hpb : IsStrictPullbackBlowupSeq h' s'.toSequenceOfBlowups s.toSequenceOfBlowups) :
    IsStrictPullbackBlowupSeq h (ambientBlowupSequence ι' s' hres hno hs').toSequenceOfBlowups
      (ambientBlowupSequence ι s hres hno hs).toSequenceOfBlowups := by
  have hstrict : IsStrictPullbackBlowupSeq h
      (((ambientBlowupSequence ι s hres hno hs).toSequenceOfBlowups).baseChange h)
      ((ambientBlowupSequence ι s hres hno hs).toSequenceOfBlowups) :=
    isStrictPullbackSequenceOfBlowups_baseChange ((ambientBlowupSequence ι s hres hno hs).toSequenceOfBlowups) h
  have hN : ∀ i : ℕ, i ≤ ((ambientBlowupSequence ι s hres hno hs).toSequenceOfBlowups).length →
      AlgebraicGeometry.IsLocallyNoetherian (((ambientBlowupSequence ι s hres hno hs).toSequenceOfBlowups).schemeAt i) := by
    intro i hi
    have : AlgebraicGeometry.IsNoetherian (((ambientBlowupSequence ι s hres hno hs).toSequenceOfBlowups).schemeAt i) :=
      isNoetherian_ambientBlowupSequence_schemeAt ι s hres hno hs i hi
    infer_instance
  have hN' : ∀ i : ℕ, i ≤ (((ambientBlowupSequence ι s hres hno hs).toSequenceOfBlowups).baseChange h).length →
      AlgebraicGeometry.IsLocallyNoetherian
        ((((ambientBlowupSequence ι s hres hno hs).toSequenceOfBlowups).baseChange h).schemeAt i) := by
    intro i hi
    have : AlgebraicGeometry.IsNoetherian
        ((((ambientBlowupSequence ι s hres hno hs).toSequenceOfBlowups).baseChange h).schemeAt i) :=
      isNoetherian_schemeAt
        (((ambientBlowupSequence ι s hres hno hs).toSequenceOfBlowups).baseChange h) i hi
    infer_instance
  have hpushTb : IsPushforwardBlowupSeq ι' s'.toSequenceOfBlowups
      (((ambientBlowupSequence ι s hres hno hs).toSequenceOfBlowups).baseChange h) :=
    IsPushforwardBlowupSeq.of_flat_isPullback ι ι' h h' hsq s.toSequenceOfBlowups
      ((ambientBlowupSequence ι s hres hno hs).toSequenceOfBlowups) s'.toSequenceOfBlowups
      (((ambientBlowupSequence ι s hres hno hs).toSequenceOfBlowups).baseChange h) hN hN'
      (isPushforwardBlowupSeq_ambientBlowupSequence ι s hres hno hs) hpb hstrict
  have hequiv : ((((ambientBlowupSequence ι s hres hno hs).toSequenceOfBlowups).baseChange h)).Isomorphic
      ((ambientBlowupSequence ι' s' hres hno hs').toSequenceOfBlowups) :=
    IsPushforwardBlowupSeq.isomorphic ι' hpushTb
      (isPushforwardBlowupSeq_ambientBlowupSequence ι' s' hres hno hs')
  exact IsStrictPullbackBlowupSeq.of_isomorphic_pullback hstrict hequiv

theorem isPullbackBlowupSequence_ambientBlowupSequence_of_flat
    (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u})
    {X Y S S' : Scheme.{u}} (ι : S ⟶ X) (ι' : S' ⟶ Y) (h : Y ⟶ X) (h' : S' ⟶ S)
    [AlgebraicGeometry.IsClosedImmersion ι] [AlgebraicGeometry.IsClosedImmersion ι']
    [AlgebraicGeometry.Flat h]
    [AlgebraicGeometry.IsNoetherian X] [AlgebraicGeometry.IsNoetherian Y]
    (hsq : IsPullback ι' h' h ι)
    (s : BlowupSequenceData S) (s' : BlowupSequenceData S')
    (hs : s.CentersContainNoComponent) (hs' : s'.CentersContainNoComponent)
    (hpb : IsPullbackBlowupSequence h' s'.toSequenceOfBlowups s.toSequenceOfBlowups) :
    IsPullbackBlowupSequence h (ambientBlowupSequence ι' s' hres hno hs').toSequenceOfBlowups
      (ambientBlowupSequence ι s hres hno hs).toSequenceOfBlowups := by
  have : AlgebraicGeometry.Flat h' := by
    rw [← hsq.isoPullback_hom_snd]
    infer_instance
  have hUstrict : IsStrictPullbackBlowupSeq h' (s.toSequenceOfBlowups.baseChange h') s.toSequenceOfBlowups :=
    isStrictPullbackSequenceOfBlowups_baseChange s.toSequenceOfBlowups h'
  have hstrict : IsStrictPullbackBlowupSeq h
      (((ambientBlowupSequence ι s hres hno hs).toSequenceOfBlowups).baseChange h)
      ((ambientBlowupSequence ι s hres hno hs).toSequenceOfBlowups) :=
    isStrictPullbackSequenceOfBlowups_baseChange ((ambientBlowupSequence ι s hres hno hs).toSequenceOfBlowups) h
  have hN : ∀ i : ℕ, i ≤ ((ambientBlowupSequence ι s hres hno hs).toSequenceOfBlowups).length →
      AlgebraicGeometry.IsLocallyNoetherian (((ambientBlowupSequence ι s hres hno hs).toSequenceOfBlowups).schemeAt i) := by
    intro i hi
    have : AlgebraicGeometry.IsNoetherian (((ambientBlowupSequence ι s hres hno hs).toSequenceOfBlowups).schemeAt i) :=
      isNoetherian_ambientBlowupSequence_schemeAt ι s hres hno hs i hi
    infer_instance
  have hN' : ∀ i : ℕ, i ≤ (((ambientBlowupSequence ι s hres hno hs).toSequenceOfBlowups).baseChange h).length →
      AlgebraicGeometry.IsLocallyNoetherian
        ((((ambientBlowupSequence ι s hres hno hs).toSequenceOfBlowups).baseChange h).schemeAt i) := by
    intro i hi
    have : AlgebraicGeometry.IsNoetherian
        ((((ambientBlowupSequence ι s hres hno hs).toSequenceOfBlowups).baseChange h).schemeAt i) :=
      isNoetherian_schemeAt
        (((ambientBlowupSequence ι s hres hno hs).toSequenceOfBlowups).baseChange h) i hi
    infer_instance
  have hpushTb : IsPushforwardBlowupSeq ι' (s.toSequenceOfBlowups.baseChange h')
      (((ambientBlowupSequence ι s hres hno hs).toSequenceOfBlowups).baseChange h) :=
    IsPushforwardBlowupSeq.of_flat_isPullback ι ι' h h' hsq s.toSequenceOfBlowups
      ((ambientBlowupSequence ι s hres hno hs).toSequenceOfBlowups) (s.toSequenceOfBlowups.baseChange h')
      (((ambientBlowupSequence ι s hres hno hs).toSequenceOfBlowups).baseChange h) hN hN'
      (isPushforwardBlowupSeq_ambientBlowupSequence ι s hres hno hs) hUstrict hstrict
  have hpushPrune : IsPushforwardBlowupSeq ι' (s.toSequenceOfBlowups.baseChange h').withoutIsoBlowups
      ((((ambientBlowupSequence ι s hres hno hs).toSequenceOfBlowups).baseChange h)).withoutIsoBlowups :=
    isPushforwardSequenceOfBlowups_withoutIsoBlowups ι' (s.toSequenceOfBlowups.baseChange h')
      (((ambientBlowupSequence ι s hres hno hs).toSequenceOfBlowups).baseChange h) hN' hpushTb
  have heq : ((s.toSequenceOfBlowups.baseChange h').withoutIsoBlowups).Isomorphic s'.toSequenceOfBlowups :=
    IsPullbackBlowupSequence.isomorphic hUstrict.isPullbackSequenceOfBlowups_withoutIsoBlowups hpb
  have hpush' : IsPushforwardBlowupSeq ι' s'.toSequenceOfBlowups
      ((((ambientBlowupSequence ι s hres hno hs).toSequenceOfBlowups).baseChange h)).withoutIsoBlowups :=
    IsPushforwardBlowupSeq.of_isomorphic_source ι' heq hpushPrune
  have hequivT : (((((ambientBlowupSequence ι s hres hno hs).toSequenceOfBlowups).baseChange h)).withoutIsoBlowups).Isomorphic
      ((ambientBlowupSequence ι' s' hres hno hs').toSequenceOfBlowups) :=
    IsPushforwardBlowupSeq.isomorphic ι' hpush'
      (isPushforwardBlowupSeq_ambientBlowupSequence ι' s' hres hno hs')
  exact IsPullbackBlowupSequence.of_isomorphic hstrict.isPullbackSequenceOfBlowups_withoutIsoBlowups hequivT

end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.ClosedEmbedding.AmbientBlowupFlatBaseChange =====
