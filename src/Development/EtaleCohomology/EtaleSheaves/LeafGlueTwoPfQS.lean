module

public import Development.EtaleCohomology.EtaleSheaves.LeafObjGluePf
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.GlueModelsOverSubfield
import Mathlib.AlgebraicGeometry.QuasiAffine
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.EtaleSheaves.LeafGlueTwoPf, Development.EtaleCohomology.EtaleSheaves.LeafGlueTwoPfFP, Development.EtaleCohomology.EtaleSheaves.LeafGlueTwoPfQS

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LeafGlueTwoPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LeafGlueTwoPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LeafObjGluePf\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.GlueModelsOverSubfield\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite LateralTheory.E.E4 LateralTheory.E.LeafDescendVCut LateralTheory.E.LeafDescendFPPf
  LateralTheory.E.LeafObjFPPf LateralTheory.E.LeafObjGluePf GlobalTheory.GlueModels

namespace LateralTheory.E.LeafGlueTwoPf

def LeafPushoutFP : Prop := ∀ {DW DU DV S : Scheme.{0}} (φU : DW ⟶ DU) (φV : DW ⟶ DV) [IsOpenImmersion φU]
    [IsOpenImmersion φV] (qU : DU ⟶ S) (qV : DV ⟶ S) (h : φU ≫ qU = φV ≫ qV), IsAffine S →
    FP qU → FP qV → FP (φU ≫ qU) → FP (pushout.desc qU qV h)

theorem LeafGlueTwo_of (hF : LeafPushoutFP) : LeafGlueTwo := by
  intro k _ Ω _ _ X f U V R hUV ⟨DU, DV, DW, qU, qV, qW, vU, vV, vW, φU, φV, hqU, hqV, hqW, hφU, hφV, eU, eV,
    pU, pV, pW, cU, cV⟩
  have hc : ∀ x : X, x ∈ Set.range U.ι ∨ x ∈ Set.range V.ι := by
    intro x
    have hx : x ∈ (U ⊔ V : X.Opens) := by rw [hUV]; trivial
    rcases hx with hx | hx
    · exact Or.inl (by simpa using hx)
    · exact Or.inr (by simpa using hx)
  have hsq : IsPullback (X.homOfLE inf_le_left) (X.homOfLE inf_le_right) U.ι V.ι := isPullback_opens_inf U V
  have hab : X.homOfLE (inf_le_left : U ⊓ V ≤ U) ≫ vU ≫ pushout.inl φU φV =
      X.homOfLE (inf_le_right : U ⊓ V ≤ V) ≫ vV ≫ pushout.inr φU φV := by
    rw [← Category.assoc, ← Category.assoc, ← cU, ← cV, Category.assoc, Category.assoc, pushout.condition]
  obtain ⟨v, h1, h2⟩ := exists_glue hsq hc _ _ hab
  have hh : φU ≫ qU = φV ≫ qV := eU.trans eV.symm
  have := isOpenImmersion_inl φU φV
  have := isOpenImmersion_inr φU φV

  have HV : IsPullback vW (X.homOfLE (inf_le_right : U ⊓ V ≤ V)) φV vV := by
    refine IsPullback.of_bot ?_ cV pV
    rw [← Category.assoc, Scheme.homOfLE_ι, eV]; exact pW
  have HU : IsPullback vW (X.homOfLE (inf_le_left : U ⊓ V ≤ U)) φU vU := by
    refine IsPullback.of_bot ?_ cU pU
    rw [← Category.assoc, Scheme.homOfLE_ι, eU]; exact pW
  have e1 (x : U.toScheme) : v (U.ι x) = pushout.inl φU φV (vU x) := congrArg (fun g => g x) h1
  have e2 (x : V.toScheme) : v (V.ι x) = pushout.inr φU φV (vV x) := congrArg (fun g => g x) h2
  refine ⟨pushout φU φV, pushout.desc qU qV hh, v, hF φU φV qU qV hh inferInstance hqU hqV (eU ▸ hqW), ?_⟩
  refine isPullback_of_two (pushout_cover φU φV) (u' := U.ι) (v' := V.ι) (aU := vU) (aV := vV) ?_ ?_ ?_ ?_
  · refine IsOpenImmersion.isPullback _ _ _ _ h1 ?_
    ext x
    constructor
    · rintro ⟨y, hy⟩
      rcases hc x with hx | ⟨x, rfl⟩
      · exact hx
      · obtain ⟨w, -, hw⟩ := exists_of_inl_eq_inr _ _ (hy.trans (e2 x))
        obtain ⟨z, -, rfl⟩ := Scheme.exists_preimage_of_isPullback HV w x hw
        refine ⟨X.homOfLE inf_le_left z, ?_⟩
        exact congrArg (fun g => g z) hsq.w
    · rintro ⟨y, rfl⟩
      exact ⟨vU y, (e1 y).symm⟩
  · refine IsOpenImmersion.isPullback _ _ _ _ h2 ?_
    ext x
    constructor
    · rintro ⟨y, hy⟩
      rcases hc x with ⟨x, rfl⟩ | hx
      · obtain ⟨w, hw, -⟩ := exists_of_inl_eq_inr _ _ (hy.trans (e1 x)).symm
        obtain ⟨z, -, rfl⟩ := Scheme.exists_preimage_of_isPullback HU w x hw
        refine ⟨X.homOfLE inf_le_right z, ?_⟩
        exact (congrArg (fun g => g z) hsq.w).symm
      · exact hx
    · rintro ⟨y, rfl⟩
      exact ⟨vV y, (e2 y).symm⟩
  · simpa only [pushout.inl_desc] using pU
  · simpa only [pushout.inr_desc] using pV

end LateralTheory.E.LeafGlueTwoPf
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LeafGlueTwoPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LeafGlueTwoPfFP =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LeafGlueTwoPfFP", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LeafGlueTwoPf\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.GlueModelsOverSubfield\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.QuasiAffine\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry LateralTheory.E.LeafDescendFPPf LateralTheory.E.LeafGlueTwoPf GlobalTheory.GlueModels

namespace LateralTheory.E.LeafGlueTwoPfFP

def LeafPushoutQS : Prop := ∀ {DW DU DV : Scheme.{0}} (φU : DW ⟶ DU) (φV : DW ⟶ DV) [IsOpenImmersion φU]
    [IsOpenImmersion φV], CompactSpace DW → QuasiSeparatedSpace DW → QuasiSeparatedSpace DU →
    QuasiSeparatedSpace DV → QuasiSeparatedSpace (pushout φU φV : Scheme.{0})

set_option backward.isDefEq.respectTransparency false in
theorem pushout_finitePresentation_of_quasiSeparated (hQ : LeafPushoutQS) : LeafPushoutFP := by
  intro DW DU DV S φU φV _ _ qU qV h hS ⟨l1, c1, s1⟩ ⟨l2, c2, s2⟩ ⟨l3, c3, s3⟩
  have : CompactSpace DU := QuasiCompact.compactSpace_of_compactSpace qU
  have : CompactSpace DV := QuasiCompact.compactSpace_of_compactSpace qV
  have : CompactSpace DW := QuasiCompact.compactSpace_of_compactSpace (φU ≫ qU)
  have : QuasiSeparatedSpace DU := quasiSeparatedSpace_of_quasiSeparated qU
  have : QuasiSeparatedSpace DV := quasiSeparatedSpace_of_quasiSeparated qV
  have : QuasiSeparatedSpace DW := quasiSeparatedSpace_of_quasiSeparated (φU ≫ qU)
  have := isOpenImmersion_inl φU φV
  have := isOpenImmersion_inr φU φV
  let T : Bool → Scheme.{0} := fun i => Bool.rec DU DV i
  let t : ∀ i, T i ⟶ pushout φU φV := fun i => Bool.rec (motive := fun i => T i ⟶ pushout φU φV)
    (pushout.inl φU φV) (pushout.inr φU φV) i
  have ht : ∀ i, IsOpenImmersion (t i) := fun i => by cases i <;> assumption
  let 𝒰 : (pushout φU φV).OpenCover := Scheme.Cover.mkOfCovers Bool T t (fun x => by
    rcases pushout_cover φU φV x with ⟨y, hy⟩ | ⟨y, hy⟩
    · exact ⟨false, y, hy⟩
    · exact ⟨true, y, hy⟩)
  have hL : LocallyOfFinitePresentation (pushout.desc qU qV h) := by
    refine IsZariskiLocalAtSource.of_openCover 𝒰 ?_
    rintro (_ | _)
    · change LocallyOfFinitePresentation (pushout.inl φU φV ≫ pushout.desc qU qV h)
      rw [pushout.inl_desc]; exact l1
    · change LocallyOfFinitePresentation (pushout.inr φU φV ≫ pushout.desc qU qV h)
      rw [pushout.inr_desc]; exact l2
  have hC : CompactSpace (pushout φU φV : Scheme.{0}) := by
    refine ⟨?_⟩
    have hu : (Set.univ : Set (pushout φU φV : Scheme.{0})) =
        Set.range (pushout.inl φU φV) ∪ Set.range (pushout.inr φU φV) := by
      ext x; simpa using pushout_cover φU φV x
    rw [hu]
    exact (isCompact_range (pushout.inl φU φV).continuous).union (isCompact_range (pushout.inr φU φV).continuous)
  have hQS := hQ φU φV inferInstance inferInstance inferInstance inferInstance
  exact ⟨hL, inferInstance, inferInstance⟩

end LateralTheory.E.LeafGlueTwoPfFP

theorem LateralTheory.E.LeafGlueTwoPfFP.LeafGlueTwo_of' (hQ : LateralTheory.E.LeafGlueTwoPfFP.LeafPushoutQS) :
    LateralTheory.E.LeafObjGluePf.LeafGlueTwo :=
  LateralTheory.E.LeafGlueTwoPf.LeafGlueTwo_of (LateralTheory.E.LeafGlueTwoPfFP.pushout_finitePresentation_of_quasiSeparated hQ)

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LeafGlueTwoPfFP =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LeafGlueTwoPfQS =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LeafGlueTwoPfQS", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LeafGlueTwoPfFP\nimport Development.AbelianVarietyTheory.Proofs.DegenerationProofs.GlueModelsOverSubfield\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Topology GlobalTheory.GlueModels LateralTheory.E.LeafGlueTwoPfFP

namespace LateralTheory.E.LeafGlueTwoPfQS

theorem qs_range {A D : Scheme.{0}} (e : A ⟶ D) [IsOpenImmersion e] [QuasiSeparatedSpace A] :
    IsQuasiSeparated (Set.range e) := by
  simpa [Set.image_univ] using (isQuasiSeparated_univ (α := A)).image_of_isEmbedding e.isOpenEmbedding.isEmbedding

theorem compact_pre {A D : Scheme.{0}} (e : A ⟶ D) [IsOpenImmersion e] {s : Set D} (hs : IsCompact s)
    (h : s ⊆ Set.range e) : IsCompact (e ⁻¹' s) :=
  (e.isOpenEmbedding.isInducing.isCompact_preimage_iff h).2 hs

theorem compact_inter_range {W A D : Scheme.{0}} (φ : W ⟶ A) (e : A ⟶ D) [IsOpenImmersion e] [QuasiCompact φ]
    {s : Set D} (hs : IsCompact s) (ho : IsOpen s) (h : s ⊆ Set.range e) :
    IsCompact (s ∩ Set.range (φ ≫ e)) := by
  rw [← Set.image_preimage_eq_inter_range]
  refine IsCompact.image ?_ (φ ≫ e).continuous
  have hp : ((φ ≫ e) ⁻¹' s) = φ ⁻¹' (e ⁻¹' s) := by ext x; simp
  rw [hp]
  exact QuasiCompact.isCompact_preimage (f := φ) _ (e.continuous.isOpen_preimage _ ho) (compact_pre e hs h)

theorem leafPushoutQS : LeafPushoutQS := by
  intro DW DU DV φU φV _ _ hW hWs hUs hVs
  have := isOpenImmersion_inl φU φV
  have := isOpenImmersion_inr φU φV
  have : QuasiCompact φU := quasiCompact_of_compactSpace φU
  have : QuasiCompact φV := quasiCompact_of_compactSpace φV
  let good : Set (pushout φU φV : Scheme.{0}) → Prop := fun s => IsOpen s ∧ IsCompact s ∧
    (s ⊆ Set.range (pushout.inl φU φV) ∨ s ⊆ Set.range (pushout.inr φU φV))
  refine QuasiSeparatedSpace.of_isTopologicalBasis (b := fun s : {s // good s} => s.1) ?_ ?_
  · refine TopologicalSpace.isTopologicalBasis_of_isOpen_of_nhds ?_ ?_
    · rintro _ ⟨s, rfl⟩; exact s.2.1
    · intro x u hx hu
      rcases pushout_cover φU φV x with ⟨y, rfl⟩ | ⟨y, rfl⟩
      · have hb : ∀ {U : TopologicalSpace.Opens DU} {x : DU}, x ∈ U → ∃ U' ∈ DU.affineOpens, x ∈ U' ∧ U' ≤ U :=
          TopologicalSpace.Opens.isBasis_iff_nbhd.mp DU.isBasis_affineOpens
        obtain ⟨U', hU', hyU', hle⟩ := hb (U := ⟨pushout.inl φU φV ⁻¹' u, (pushout.inl φU φV).continuous.isOpen_preimage u hu⟩) (x := y) hx
        refine ⟨pushout.inl φU φV '' U', ⟨⟨_, (pushout.inl φU φV).isOpenEmbedding.isOpenMap _ U'.2,
          (show IsAffineOpen U' from hU').isCompact.image (pushout.inl φU φV).continuous, Or.inl (Set.image_subset_range _ _)⟩,
          rfl⟩, ⟨y, hyU', rfl⟩, Set.image_subset_iff.2 hle⟩
      · have hb : ∀ {U : TopologicalSpace.Opens DV} {x : DV}, x ∈ U → ∃ U' ∈ DV.affineOpens, x ∈ U' ∧ U' ≤ U :=
          TopologicalSpace.Opens.isBasis_iff_nbhd.mp DV.isBasis_affineOpens
        obtain ⟨U', hU', hyU', hle⟩ := hb (U := ⟨pushout.inr φU φV ⁻¹' u, (pushout.inr φU φV).continuous.isOpen_preimage u hu⟩) (x := y) hx
        refine ⟨pushout.inr φU φV '' U', ⟨⟨_, (pushout.inr φU φV).isOpenEmbedding.isOpenMap _ U'.2,
          (show IsAffineOpen U' from hU').isCompact.image (pushout.inr φU φV).continuous, Or.inr (Set.image_subset_range _ _)⟩,
          rfl⟩, ⟨y, hyU', rfl⟩, Set.image_subset_iff.2 hle⟩
  · have e : Set.range (φU ≫ pushout.inl φU φV) = Set.range (φV ≫ pushout.inr φU φV) := by
      rw [pushout.condition]
    have hWo : IsOpen (Set.range (φU ≫ pushout.inl φU φV)) := (φU ≫ pushout.inl φU φV).isOpenEmbedding.isOpen_range
    have mixed : ∀ s t : Set (pushout φU φV : Scheme.{0}), IsOpen s → IsCompact s →
        s ⊆ Set.range (pushout.inl φU φV) → IsOpen t → IsCompact t → t ⊆ Set.range (pushout.inr φU φV) →
        IsCompact (s ∩ t) := by
      intro s t so sc hs tO tc ht
      have hsub : s ∩ t ⊆ Set.range (φU ≫ pushout.inl φU φV) := by
        rintro x ⟨h1, h2⟩
        obtain ⟨a, rfl⟩ := hs h1
        obtain ⟨b, hb⟩ := ht h2
        obtain ⟨w, hw, -⟩ := exists_of_inl_eq_inr φU φV hb.symm
        exact ⟨w, by rw [Scheme.Hom.comp_apply, hw]⟩
      have hst : s ∩ t = (s ∩ Set.range (φU ≫ pushout.inl φU φV)) ∩ (t ∩ Set.range (φU ≫ pushout.inl φU φV)) := by
        ext x; constructor
        · intro hx; exact ⟨⟨hx.1, hsub hx⟩, ⟨hx.2, hsub hx⟩⟩
        · intro hx; exact ⟨hx.1.1, hx.2.1⟩
      rw [hst]
      refine qs_range (φU ≫ pushout.inl φU φV) _ _ Set.inter_subset_right (so.inter hWo)
        (compact_inter_range φU _ sc so hs) Set.inter_subset_right (tO.inter hWo) ?_
      rw [e]; exact compact_inter_range φV _ tc tO ht
    rintro ⟨s, so, sc, hs⟩ ⟨t, tO, tc, ht⟩
    rcases hs with hs | hs <;> rcases ht with ht | ht
    · exact qs_range (pushout.inl φU φV) s t hs so sc ht tO tc
    · exact mixed s t so sc hs tO tc ht
    · show IsCompact (s ∩ t); rw [Set.inter_comm]; exact mixed t s tO tc ht so sc hs
    · exact qs_range (pushout.inr φU φV) s t hs so sc ht tO tc

theorem LeafGlueTwo_of : LateralTheory.E.LeafObjGluePf.LeafGlueTwo :=
  LateralTheory.E.LeafGlueTwoPfFP.LeafGlueTwo_of' leafPushoutQS

end LateralTheory.E.LeafGlueTwoPfQS
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LeafGlueTwoPfQS =====
