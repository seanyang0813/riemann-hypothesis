module

public import Development.ResolutionOfSingularities.Foundations.Blowup.BlowupExistence
public import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionOfSingularities
public import Development.ResolutionOfSingularities.EmbeddedResolution.AlgebraicPreliminaries.KernelFlatBaseChange
public import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.BlowupSequenceBasic
public import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.IdealSheafFlatDescent
public import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.BlowupFlatBaseChange
public import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.BlowupSequenceFlatBaseChange
public import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.PullbackBlowupSequenceComposition
public import Mathlib.CategoryTheory.Functor.OfSequence
import Development.ResolutionOfSingularities.Foundations.Blowup.BlowupBasic
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.BlowupFlatDescent, Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.BlowupSequenceDescentDatum

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.BlowupFlatDescent =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.BlowupFlatDescent", "h": "module\n\npublic import Development.ResolutionOfSingularities.Foundations.Blowup.BlowupExistence\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionOfSingularities\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.AlgebraicPreliminaries.KernelFlatBaseChange\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.BlowupSequenceBasic\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.IdealSheafFlatDescent\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.BlowupFlatBaseChange\nimport Development.ResolutionOfSingularities.Foundations.Blowup.BlowupBasic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry CategoryTheory.Limits

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

abbrev pullbackFstSchemeAt {W Y : Scheme.{u}} (g : W ⟶ Y) (t : SequenceOfBlowups W) (i : ℕ) : Scheme.{u} :=
  pullback (pullback.fst g g) (t.projectionToBase i)

abbrev pullbackSndSchemeAt {W Y : Scheme.{u}} (g : W ⟶ Y) (t : SequenceOfBlowups W) (i : ℕ) : Scheme.{u} :=
  pullback (pullback.snd g g) (t.projectionToBase i)

theorem flat_fst_of_isPullback {A B C D : Scheme.{u}} {p : A ⟶ B} {q : A ⟶ C}
    {f : B ⟶ D} {h : C ⟶ D} (H : IsPullback p q f h) [AlgebraicGeometry.Flat h] :
    AlgebraicGeometry.Flat p :=
  MorphismProperty.IsStableUnderBaseChange.of_isPullback
    (P := @AlgebraicGeometry.Flat) H.flip inferInstance

private theorem isPullback_iso_hom_comp {P P' A B C : Scheme.{u}} {pf : P' ⟶ A} {ps : P' ⟶ B}
    {f : A ⟶ C} {g : B ⟶ C} (H : IsPullback pf ps f g) (e : P ≅ P') :
    IsPullback (e.hom ≫ pf) (e.hom ≫ ps) f g := by
  have E : IsPullback e.hom (e.hom ≫ ps) ps (𝟙 B) :=
    IsPullback.of_horiz_isIso ⟨by simp⟩
  have h := E.paste_horiz H
  rwa [Category.id_comp] at h

theorem comap_map_center_eq_center_of_isPullback {W Y : Scheme.{u}} (g : W ⟶ Y) [AlgebraicGeometry.Flat g]
    [AlgebraicGeometry.QuasiCompact g] (t : SequenceOfBlowups W) (n : ℕ) {X : Scheme.{u}} (π : X ⟶ Y)
    (γ : t.schemeAt n ⟶ X) [AlgebraicGeometry.Flat γ] [AlgebraicGeometry.QuasiCompact γ]
    (hsq : IsPullback γ (t.projectionToBase n) π g)
    (e : pullbackFstSchemeAt g t n ≅ pullbackSndSchemeAt g t n)
    (hcenter : ((t.center n).comap (pullback.snd (pullback.snd g g) (t.projectionToBase n))).comap e.hom
      = (t.center n).comap (pullback.snd (pullback.fst g g) (t.projectionToBase n)))
    (hbase : e.hom ≫ pullback.fst (pullback.snd g g) (t.projectionToBase n)
      = pullback.fst (pullback.fst g g) (t.projectionToBase n))
    (hgamma : e.hom ≫ pullback.snd (pullback.snd g g) (t.projectionToBase n) ≫ γ
      = pullback.snd (pullback.fst g g) (t.projectionToBase n) ≫ γ) :
    ((t.center n).map γ).comap γ = t.center n := by
  have hpbSnd : IsPullback (e.hom ≫ pullback.snd (pullback.snd g g) (t.projectionToBase n))
      (pullback.fst (pullback.fst g g) (t.projectionToBase n)) (t.projectionToBase n) (pullback.snd g g) := by
    have h := isPullback_iso_hom_comp
      (IsPullback.of_hasPullback (pullback.snd g g) (t.projectionToBase n)).flip e
    rwa [hbase] at h
  have Big := hpbSnd.paste_vert (IsPullback.of_hasPullback g g).flip
  have hcond : pullback.fst (pullback.fst g g) (t.projectionToBase n) ≫ pullback.fst g g
      = pullback.snd (pullback.fst g g) (t.projectionToBase n) ≫ t.projectionToBase n := pullback.condition
  rw [hcond, ← hsq.w] at Big
  have comm : (e.hom ≫ pullback.snd (pullback.snd g g) (t.projectionToBase n)) ≫ γ
      = pullback.snd (pullback.fst g g) (t.projectionToBase n) ≫ γ := by
    rw [Category.assoc]
    exact hgamma
  have key : IsPullback (e.hom ≫ pullback.snd (pullback.snd g g) (t.projectionToBase n))
      (pullback.snd (pullback.fst g g) (t.projectionToBase n)) γ γ :=
    IsPullback.of_bot Big comm hsq
  refine comap_map_eq_self_of_isPullback γ key (t.center n) ?_
  rw [Scheme.IdealSheafData.comap_comp]
  exact hcenter

theorem exists_isPullback_blowup_proj_map_center {W X : Scheme.{u}} {t : SequenceOfBlowups W} {n : ℕ}
    (hn : n < t.length) {γ : t.schemeAt n ⟶ X} (hflat : AlgebraicGeometry.Flat γ)
    (hc : ((t.center n).map γ).comap γ = t.center n) :
    ∃ q : t.schemeAt (n + 1) ⟶ Blowup.blowup ((t.center n).map γ),
      q ≫ Blowup.blowup.proj ((t.center n).map γ) = t.transitionMapSucc n ≫ γ ∧
        IsPullback q (t.transitionMapSucc n) (Blowup.blowup.proj ((t.center n).map γ)) γ := by
  have := hflat
  have h' : Blowup.IsBlowupAlongIdealSheaf (t.transitionMapSucc n) (((t.center n).map γ).comap γ) := by
    rw [hc]
    exact t.isBlowupAlongIdealSheaf_blowupMorphism n hn
  exact (Blowup.blowup.isBlowupAlongIdealSheaf_proj ((t.center n).map γ)).exists_isPullback_of_flat γ h'

def toBlowupOfMapCenter {W X : Scheme.{u}} {t : SequenceOfBlowups W} {n : ℕ}
    (hn : n < t.length) {γ : t.schemeAt n ⟶ X} (hflat : AlgebraicGeometry.Flat γ)
    (hc : ((t.center n).map γ).comap γ = t.center n) :
    t.schemeAt (n + 1) ⟶ Blowup.blowup ((t.center n).map γ) :=
  (exists_isPullback_blowup_proj_map_center hn hflat hc).choose

theorem toBlowupOfMapCenter_comp_proj {W X : Scheme.{u}} {t : SequenceOfBlowups W} {n : ℕ}
    (hn : n < t.length) {γ : t.schemeAt n ⟶ X} (hflat : AlgebraicGeometry.Flat γ)
    (hc : ((t.center n).map γ).comap γ = t.center n) :
    toBlowupOfMapCenter hn hflat hc ≫ Blowup.blowup.proj ((t.center n).map γ) = t.transitionMapSucc n ≫ γ :=
  (exists_isPullback_blowup_proj_map_center hn hflat hc).choose_spec.1

theorem isPullback_toBlowupOfMapCenter {W X : Scheme.{u}} {t : SequenceOfBlowups W} {n : ℕ}
    (hn : n < t.length) {γ : t.schemeAt n ⟶ X} (hflat : AlgebraicGeometry.Flat γ)
    (hc : ((t.center n).map γ).comap γ = t.center n) :
    IsPullback (toBlowupOfMapCenter hn hflat hc) (t.transitionMapSucc n)
      (Blowup.blowup.proj ((t.center n).map γ)) γ :=
  (exists_isPullback_blowup_proj_map_center hn hflat hc).choose_spec.2

theorem isPullback_toBlowupOfMapCenter_projectionToBase {W Y X : Scheme.{u}} (g : W ⟶ Y) (t : SequenceOfBlowups W)
    {n : ℕ} (hn : n < t.length) (π : X ⟶ Y) {γ : t.schemeAt n ⟶ X}
    (hflat : AlgebraicGeometry.Flat γ) (hc : ((t.center n).map γ).comap γ = t.center n)
    (hsq : IsPullback γ (t.projectionToBase n) π g) :
    IsPullback (toBlowupOfMapCenter hn hflat hc) (t.projectionToBase (n + 1))
      (Blowup.blowup.proj ((t.center n).map γ) ≫ π) g := by
  have h := (isPullback_toBlowupOfMapCenter hn hflat hc).paste_vert hsq
  rwa [← t.projectionToBase_succ n] at h

theorem toBlowupOfMapCenter_cocycle {W Y X : Scheme.{u}} (g : W ⟶ Y) [AlgebraicGeometry.Flat g]
    [AlgebraicGeometry.QuasiCompact g] (t : SequenceOfBlowups W) {n : ℕ} (hn : n < t.length) (π : X ⟶ Y)
    {γ : t.schemeAt n ⟶ X} (hflat : AlgebraicGeometry.Flat γ)
    (hc : ((t.center n).map γ).comap γ = t.center n)
    (_hsq : IsPullback γ (t.projectionToBase n) π g)
    (e : pullbackFstSchemeAt g t n ≅ pullbackSndSchemeAt g t n)
    (e' : pullbackFstSchemeAt g t (n + 1) ≅ pullbackSndSchemeAt g t (n + 1))
    (hee : e'.hom ≫ t.pullbackTransitionMap (pullback.snd g g) (Nat.le_succ n)
      = t.pullbackTransitionMap (pullback.fst g g) (Nat.le_succ n) ≫ e.hom)
    (hgamma : e.hom ≫ pullback.snd (pullback.snd g g) (t.projectionToBase n) ≫ γ
      = pullback.snd (pullback.fst g g) (t.projectionToBase n) ≫ γ) :
    e'.hom ≫ pullback.snd (pullback.snd g g) (t.projectionToBase (n + 1)) ≫ toBlowupOfMapCenter hn hflat hc
      = pullback.snd (pullback.fst g g) (t.projectionToBase (n + 1)) ≫ toBlowupOfMapCenter hn hflat hc := by
  have := hflat
  have hfst : AlgebraicGeometry.Flat (pullback.fst g g) :=
    flat_fst_of_isPullback (IsPullback.of_hasPullback g g)
  have hdc : AlgebraicGeometry.Flat (toBlowupOfMapCenter hn hflat hc) :=
    flat_fst_of_isPullback (isPullback_toBlowupOfMapCenter hn hflat hc)
  have hsnd1 : pullback.snd (pullback.fst g g) (t.projectionToBase (n + 1)) ≫ t.transitionMapSucc n
      = t.pullbackTransitionMap (pullback.fst g g) (Nat.le_succ n)
        ≫ pullback.snd (pullback.fst g g) (t.projectionToBase n) :=
    (t.pullbackTransitionMap_snd (pullback.fst g g) (Nat.le_succ n)).symm
  have hsnd2 : pullback.snd (pullback.snd g g) (t.projectionToBase (n + 1)) ≫ t.transitionMapSucc n
      = t.pullbackTransitionMap (pullback.snd g g) (Nat.le_succ n)
        ≫ pullback.snd (pullback.snd g g) (t.projectionToBase n) :=
    (t.pullbackTransitionMap_snd (pullback.snd g g) (Nat.le_succ n)).symm
  have hsnd1' : pullback.snd (pullback.fst g g) (t.projectionToBase (n + 1)) ≫ t.transitionMapSucc n ≫ γ
      = t.pullbackTransitionMap (pullback.fst g g) (Nat.le_succ n)
        ≫ pullback.snd (pullback.fst g g) (t.projectionToBase n) ≫ γ := by
    rw [← Category.assoc, ← Category.assoc, hsnd1]
  have hsnd2' : pullback.snd (pullback.snd g g) (t.projectionToBase (n + 1)) ≫ t.transitionMapSucc n ≫ γ
      = t.pullbackTransitionMap (pullback.snd g g) (Nat.le_succ n)
        ≫ pullback.snd (pullback.snd g g) (t.projectionToBase n) ≫ γ := by
    rw [← Category.assoc, ← Category.assoc, hsnd2]
  have hk : Blowup.IsLocallyGeneratedByNonZeroDivisor (((t.center n).map γ).comap
      (pullback.snd (pullback.fst g g) (t.projectionToBase (n + 1)) ≫
        toBlowupOfMapCenter hn hflat hc ≫ Blowup.blowup.proj ((t.center n).map γ))) := by
    rw [Scheme.IdealSheafData.comap_comp, Scheme.IdealSheafData.comap_comp]
    exact Blowup.IsLocallyGeneratedByNonZeroDivisor.comap_of_flat
      (Blowup.IsLocallyGeneratedByNonZeroDivisor.comap_of_flat (Blowup.blowup.isBlowupAlongIdealSheaf_proj ((t.center n).map γ)).1
        (toBlowupOfMapCenter hn hflat hc)) _
  refine Blowup.IsBlowupAlongIdealSheaf.hom_ext_of_comp_eq (Blowup.blowup.isBlowupAlongIdealSheaf_proj ((t.center n).map γ)) hk ?_ ?_
  · simp only [Category.assoc]
    rw [toBlowupOfMapCenter_comp_proj hn hflat hc, hsnd2', hsnd1', ← Category.assoc, hee,
      Category.assoc, hgamma]
  · rw [Category.assoc]

structure DescendedBlowupData {W Y : Scheme.{u}} (g : W ⟶ Y) (t : SequenceOfBlowups W) (n : ℕ)
    {X : Scheme.{u}} (π : X ⟶ Y) (γ : t.schemeAt n ⟶ X)
    (e' : pullbackFstSchemeAt g t (n + 1) ≅ pullbackSndSchemeAt g t (n + 1)) where
  total : Scheme.{u}
  totalStruct : total ⟶ Y
  down : total ⟶ X
  totalCenter : X.IdealSheafData
  totalComparison : t.schemeAt (n + 1) ⟶ total
  center_comap : totalCenter.comap γ = t.center n
  isBlowup_down : Blowup.IsBlowupAlongIdealSheaf down totalCenter
  sq_comm : totalComparison ≫ down = t.transitionMapSucc n ≫ γ
  isPullback_sq : IsPullback totalComparison (t.transitionMapSucc n) down γ
  isPullback_base : IsPullback totalComparison (t.projectionToBase (n + 1)) totalStruct g
  hom_comparison :
    e'.hom ≫ pullback.snd (pullback.snd g g) (t.projectionToBase (n + 1)) ≫ totalComparison
      = pullback.snd (pullback.fst g g) (t.projectionToBase (n + 1)) ≫ totalComparison
  structY_eq : totalStruct = down ≫ π

def descendedBlowupData {W Y : Scheme.{u}} (g : W ⟶ Y) [AlgebraicGeometry.Flat g]
    [AlgebraicGeometry.QuasiCompact g] (t : SequenceOfBlowups W) {n : ℕ} (hn : n < t.length)
    {X : Scheme.{u}} (π : X ⟶ Y) (γ : t.schemeAt n ⟶ X)
    (hsq : IsPullback γ (t.projectionToBase n) π g)
    (e : pullbackFstSchemeAt g t n ≅ pullbackSndSchemeAt g t n)
    (e' : pullbackFstSchemeAt g t (n + 1) ≅ pullbackSndSchemeAt g t (n + 1))
    (hee : e'.hom ≫ t.pullbackTransitionMap (pullback.snd g g) (Nat.le_succ n)
      = t.pullbackTransitionMap (pullback.fst g g) (Nat.le_succ n) ≫ e.hom)
    (hcenter : ((t.center n).comap (pullback.snd (pullback.snd g g) (t.projectionToBase n))).comap e.hom
      = (t.center n).comap (pullback.snd (pullback.fst g g) (t.projectionToBase n)))
    (hbase : e.hom ≫ pullback.fst (pullback.snd g g) (t.projectionToBase n)
      = pullback.fst (pullback.fst g g) (t.projectionToBase n))
    (hgamma : e.hom ≫ pullback.snd (pullback.snd g g) (t.projectionToBase n) ≫ γ
      = pullback.snd (pullback.fst g g) (t.projectionToBase n) ≫ γ) :
    DescendedBlowupData g t n π γ e' :=
  haveI hfl : AlgebraicGeometry.Flat γ := flat_fst_of_isPullback hsq
  haveI _hqc : AlgebraicGeometry.QuasiCompact γ := quasiCompact_of_isPullback hsq.flip
  have hc : ((t.center n).map γ).comap γ = t.center n :=
    comap_map_center_eq_center_of_isPullback g t n π γ hsq e hcenter hbase hgamma
  { total := Blowup.blowup ((t.center n).map γ)
    totalStruct := Blowup.blowup.proj ((t.center n).map γ) ≫ π
    down := Blowup.blowup.proj ((t.center n).map γ)
    totalCenter := (t.center n).map γ
    totalComparison := toBlowupOfMapCenter hn hfl hc
    center_comap := hc
    isBlowup_down := Blowup.blowup.isBlowupAlongIdealSheaf_proj ((t.center n).map γ)
    sq_comm := toBlowupOfMapCenter_comp_proj hn hfl hc
    isPullback_sq := isPullback_toBlowupOfMapCenter hn hfl hc
    isPullback_base := isPullback_toBlowupOfMapCenter_projectionToBase g t hn π hfl hc hsq
    hom_comparison := toBlowupOfMapCenter_cocycle g t hn π hfl hc hsq e e' hee hgamma
    structY_eq := rfl }

end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.BlowupFlatDescent =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.BlowupSequenceDescentDatum =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.BlowupSequenceDescentDatum", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.BlowupSequenceFlatBaseChange\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.BlowupFlatDescent\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.BlowupSequenceBasic\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.PullbackBlowupSequenceComposition\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\npublic import Mathlib.CategoryTheory.Functor.OfSequence\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry CategoryTheory.Limits

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

private theorem baseChange_projectionToBase_eq_fst {X X' : Scheme.{u}} (s : SequenceOfBlowups X)
    (φ : X' ⟶ X) [AlgebraicGeometry.Flat φ] (i : ℕ) :
    (s.baseChange φ).projectionToBase i = pullback.fst φ (s.projectionToBase i) := by
  induction i with
  | zero =>
    rw [SequenceOfBlowups.projectionToBase_zero, SequenceOfBlowups.baseChange_isoObjZero_hom]
  | succ n ih =>
    have hb : (s.baseChange φ).transitionMapSucc n ≫ (s.baseChange φ).projectionToBase n
        = (s.baseChange φ).projectionToBase (n + 1) := by
      rw [SequenceOfBlowups.blowupMorphism_eq_transitionMap]
      exact SequenceOfBlowups.transitionMap_comp_projectionToBase _ _
    rw [← hb, ih, SequenceOfBlowups.baseChange_blowupMorphism]
    exact SequenceOfBlowups.pullbackTransitionMap_comp_fst s φ _

structure SequenceOfBlowupsDescentDatum {W Y : Scheme.{u}} (g : W ⟶ Y) (t : SequenceOfBlowups W) where
  iso : ∀ i : ℕ, i ≤ t.length → (pullbackFstSchemeAt g t i ≅ pullbackSndSchemeAt g t i)
  comp_fst : ∀ (i : ℕ) (hi : i ≤ t.length),
    (iso i hi).hom ≫ pullback.fst (pullback.snd g g) (t.projectionToBase i)
      = pullback.fst (pullback.fst g g) (t.projectionToBase i)
  center_comap : ∀ (i : ℕ) (hi : i < t.length),
    ((t.center i).comap (pullback.snd (pullback.snd g g) (t.projectionToBase i))).comap
        (iso i hi.le).hom
      = (t.center i).comap (pullback.snd (pullback.fst g g) (t.projectionToBase i))
  comp_step : ∀ (i : ℕ) (hi : i < t.length),
    (iso (i + 1) (Nat.succ_le_of_lt hi)).hom ≫ t.pullbackTransitionMap (pullback.snd g g) (Nat.le_succ i)
      = t.pullbackTransitionMap (pullback.fst g g) (Nat.le_succ i) ≫ (iso i hi.le).hom

private structure DescendedSchemeData {W Y : Scheme.{u}} (g : W ⟶ Y) (t : SequenceOfBlowups W)
    (D : SequenceOfBlowupsDescentDatum g t) (n : ℕ) where
  X : Scheme.{u}
  str : X ⟶ Y
  gam : t.schemeAt n ⟶ X
  hsq : n ≤ t.length → IsPullback gam (t.projectionToBase n) str g
  hgam : ∀ hn : n ≤ t.length,
    (D.iso n hn).hom ≫ pullback.snd (pullback.snd g g) (t.projectionToBase n) ≫ gam
      = pullback.snd (pullback.fst g g) (t.projectionToBase n) ≫ gam

private structure DescendedBlowupOfSchemeData {W Y : Scheme.{u}} (g : W ⟶ Y) (t : SequenceOfBlowups W)
    (D : SequenceOfBlowupsDescentDatum g t) (n : ℕ) (P : DescendedSchemeData g t D n) where
  next : DescendedSchemeData g t D (n + 1)
  down : next.X ⟶ P.X
  cen : P.X.IdealSheafData
  hblow : n < t.length → Blowup.IsBlowupAlongIdealSheaf down cen
  hpb : n < t.length → IsPullback next.gam (t.transitionMapSucc n) down P.gam
  hcen : n < t.length → t.center n = cen.comap P.gam

private def descendedSchemeDataZero {W Y : Scheme.{u}} (g : W ⟶ Y) (t : SequenceOfBlowups W)
    (D : SequenceOfBlowupsDescentDatum g t) : DescendedSchemeData g t D 0 where
  X := Y
  str := 𝟙 Y
  gam := t.projectionToBase 0 ≫ g
  hsq := fun _ => (IsPullback.of_horiz_isIso ⟨by simp⟩).flip
  hgam := fun h0 => by
    have c1 : pullback.fst (pullback.fst g g) (t.projectionToBase 0) ≫ pullback.fst g g
        = pullback.snd (pullback.fst g g) (t.projectionToBase 0) ≫ t.projectionToBase 0 := pullback.condition
    have c2 : pullback.fst (pullback.snd g g) (t.projectionToBase 0) ≫ pullback.snd g g
        = pullback.snd (pullback.snd g g) (t.projectionToBase 0) ≫ t.projectionToBase 0 := pullback.condition
    have c3 : pullback.fst g g ≫ g = pullback.snd g g ≫ g := pullback.condition
    have hf := D.comp_fst 0 h0
    calc (D.iso 0 h0).hom ≫ pullback.snd (pullback.snd g g) (t.projectionToBase 0) ≫
          (t.projectionToBase 0 ≫ g)
        = ((D.iso 0 h0).hom ≫ pullback.snd (pullback.snd g g) (t.projectionToBase 0) ≫
            t.projectionToBase 0) ≫ g := by
          simp only [Category.assoc]
      _ = (pullback.fst (pullback.fst g g) (t.projectionToBase 0) ≫ pullback.snd g g) ≫ g := by
          rw [← c2, ← Category.assoc, hf]
      _ = (pullback.fst (pullback.fst g g) (t.projectionToBase 0) ≫ pullback.fst g g) ≫ g := by
          rw [Category.assoc, Category.assoc, c3]
      _ = pullback.snd (pullback.fst g g) (t.projectionToBase 0) ≫ (t.projectionToBase 0 ≫ g) := by
          rw [c1, Category.assoc]

private def descendedBlowupAt {W Y : Scheme.{u}} (g : W ⟶ Y) [AlgebraicGeometry.Flat g]
    [AlgebraicGeometry.QuasiCompact g] (t : SequenceOfBlowups W) (D : SequenceOfBlowupsDescentDatum g t)
    (n : ℕ) (P : DescendedSchemeData g t D n) : DescendedBlowupOfSchemeData g t D n P :=
  if hn : n < t.length then
    let S := descendedBlowupData g t hn P.str P.gam (P.hsq hn.le) (D.iso n hn.le)
      (D.iso (n + 1) (Nat.succ_le_of_lt hn)) (D.comp_step n hn) (D.center_comap n hn)
      (D.comp_fst n hn.le) (P.hgam hn.le)
    { next :=
        { X := S.total
          str := S.totalStruct
          gam := S.totalComparison
          hsq := fun _ => S.isPullback_base
          hgam := fun _ => S.hom_comparison }
      down := S.down
      cen := S.totalCenter
      hblow := fun _ => S.isBlowup_down
      hpb := fun _ => S.isPullback_sq
      hcen := fun _ => S.center_comap.symm }
  else
    { next :=
        { X := t.schemeAt (n + 1)
          str := t.projectionToBase (n + 1) ≫ g
          gam := 𝟙 (t.schemeAt (n + 1))
          hsq := fun hle => absurd (Nat.lt_of_succ_le hle) hn
          hgam := fun hle => absurd (Nat.lt_of_succ_le hle) hn }
      down := t.transitionMapSucc n ≫ P.gam
      cen := ⊤
      hblow := fun hlt => absurd hlt hn
      hpb := fun hlt => absurd hlt hn
      hcen := fun hlt => absurd hlt hn }

private def descendedSchemeDataAt {W Y : Scheme.{u}} (g : W ⟶ Y) [AlgebraicGeometry.Flat g]
    [AlgebraicGeometry.QuasiCompact g] (t : SequenceOfBlowups W) (D : SequenceOfBlowupsDescentDatum g t)
    (n : ℕ) : DescendedSchemeData g t D n :=
  Nat.rec (motive := fun m => DescendedSchemeData g t D m) (descendedSchemeDataZero g t D)
    (fun m P => (descendedBlowupAt g t D m P).next) n

private def descendedSchemeAt {W Y : Scheme.{u}} (g : W ⟶ Y) [AlgebraicGeometry.Flat g]
    [AlgebraicGeometry.QuasiCompact g] (t : SequenceOfBlowups W) (D : SequenceOfBlowupsDescentDatum g t)
    (n : ℕ) : Scheme.{u} :=
  (descendedSchemeDataAt g t D n).X

private def descendedBlowupMorphism {W Y : Scheme.{u}} (g : W ⟶ Y) [AlgebraicGeometry.Flat g]
    [AlgebraicGeometry.QuasiCompact g] (t : SequenceOfBlowups W) (D : SequenceOfBlowupsDescentDatum g t)
    (n : ℕ) : descendedSchemeAt g t D (n + 1) ⟶ descendedSchemeAt g t D n :=
  (descendedBlowupAt g t D n (descendedSchemeDataAt g t D n)).down

private def descendedTower {W Y : Scheme.{u}} (g : W ⟶ Y) [AlgebraicGeometry.Flat g]
    [AlgebraicGeometry.QuasiCompact g] (t : SequenceOfBlowups W) (D : SequenceOfBlowupsDescentDatum g t) :
    ℕᵒᵖ ⥤ Scheme.{u} :=
  Functor.ofOpSequence (descendedBlowupMorphism g t D)

private def descendedSequenceOfBlowups {W Y : Scheme.{u}} (g : W ⟶ Y) [AlgebraicGeometry.Flat g]
    [AlgebraicGeometry.QuasiCompact g] (t : SequenceOfBlowups W) (D : SequenceOfBlowupsDescentDatum g t) :
    SequenceOfBlowups Y where
  length := t.length
  tower := descendedTower g t D
  isoZero := Iso.refl Y
  center := fun i => (descendedBlowupAt g t D i (descendedSchemeDataAt g t D i)).cen
  isBlowup := fun i hi => by
    have hmap : (descendedTower g t D).map (homOfLE (Nat.le_succ i)).op = descendedBlowupMorphism g t D i :=
      Functor.ofOpSequence_map_homOfLE_succ (descendedBlowupMorphism g t D) i
    rw [hmap]
    exact (descendedBlowupAt g t D i (descendedSchemeDataAt g t D i)).hblow hi

private theorem exists_isStrictPullbackSequenceOfBlowups_of_descentDatum {W Y : Scheme.{u}} (g : W ⟶ Y)
    [AlgebraicGeometry.Flat g] [AlgebraicGeometry.QuasiCompact g] (t : SequenceOfBlowups W)
    (D : SequenceOfBlowupsDescentDatum g t) : ∃ s : SequenceOfBlowups Y, IsStrictPullbackBlowupSeq g t s := by
  refine ⟨descendedSequenceOfBlowups g t D, rfl, fun i _ => (descendedSchemeDataAt g t D i).gam, ?_, ?_, ?_⟩
  · show (descendedSchemeDataAt g t D 0).gam ≫ (descendedSequenceOfBlowups g t D).isoZero.hom = t.isoZero.hom ≫ g
    have h0 : (descendedSchemeDataAt g t D 0).gam = t.projectionToBase 0 ≫ g := rfl
    rw [h0, SequenceOfBlowups.projectionToBase_zero]
    exact Category.comp_id _
  · intro i hi
    have hmap : (descendedSequenceOfBlowups g t D).transitionMapSucc i = descendedBlowupMorphism g t D i := by
      rw [SequenceOfBlowups.blowupMorphism_eq_transitionMap, SequenceOfBlowups.transitionMap_def]
      exact Functor.ofOpSequence_map_homOfLE_succ (descendedBlowupMorphism g t D) i
    rw [hmap]
    exact (descendedBlowupAt g t D i (descendedSchemeDataAt g t D i)).hpb hi
  · intro i hi
    exact (descendedBlowupAt g t D i (descendedSchemeDataAt g t D i)).hcen hi

theorem exists_isStrictPullback_of_isomorphic_baseChange {W Y : Scheme.{u}}
    (g : W ⟶ Y) [AlgebraicGeometry.Flat g] [AlgebraicGeometry.QuasiCompact g] (t : SequenceOfBlowups W)
    (h : (t.baseChange (pullback.fst g g)).Isomorphic (t.baseChange (pullback.snd g g))) :
    ∃ s : SequenceOfBlowups Y, IsStrictPullbackBlowupSeq g t s := by
  obtain ⟨-, e, hzero, hstep, hcen⟩ := h
  have hlp : (t.baseChange (pullback.fst g g)).length = t.length :=
    t.baseChange_length (pullback.fst g g)
  refine exists_isStrictPullbackSequenceOfBlowups_of_descentDatum g t
    { iso := fun i hi => e i (by rw [hlp]; exact hi)
      comp_fst := ?_
      center_comap := ?_
      comp_step := ?_ }
  · intro i hi
    have key := SequenceOfBlowups.iso_hom_comp_projectionToBase (t.baseChange (pullback.fst g g))
      (t.baseChange (pullback.snd g g)) _ e hstep hzero i (by rw [hlp]; exact hi)
    rw [baseChange_projectionToBase_eq_fst, baseChange_projectionToBase_eq_fst] at key
    exact key
  · intro i hi
    have key := hcen i (by rw [hlp]; exact hi)
    rw [SequenceOfBlowups.baseChange_center, SequenceOfBlowups.baseChange_center] at key
    exact key
  · intro i hi
    have key := hstep i (by rw [hlp]; exact hi)
    rw [SequenceOfBlowups.baseChange_blowupMorphism, SequenceOfBlowups.baseChange_blowupMorphism] at key
    exact key

end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.ResolutionDescent.BlowupSequenceDescentDatum =====
