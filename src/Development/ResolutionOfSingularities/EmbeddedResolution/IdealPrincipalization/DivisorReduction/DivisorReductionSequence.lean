module

public import Development.ResolutionOfSingularities.Foundations.Blowup.BlowupExistence
public import Development.ResolutionOfSingularities.Foundations.Blowup.BlowupProperties
public import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.BlowupSequenceRelations
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.BlowupSequenceData
public import Development.ResolutionOfSingularities.Foundations.Schemes.SchemeMorphismProperties
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReductionProperties
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.ControlledTransform
import Mathlib.Tactic.Linter.Style
import Development.ResolutionOfSingularities.Foundations.Blowup.BlowupBasic

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.AmbientEmbedding, Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.DivisorReductionSequence

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.AmbientEmbedding =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.AmbientEmbedding", "h": "module\n\npublic import Development.ResolutionOfSingularities.Foundations.Blowup.BlowupExistence\npublic import Development.ResolutionOfSingularities.Foundations.Blowup.BlowupProperties\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.BlowupSequenceRelations\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.BlowupSequenceData\npublic import Development.ResolutionOfSingularities.Foundations.Schemes.SchemeMorphismProperties\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry TopologicalSpace

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

def BlowupPreservesNoetherian : Prop :=
  ∀ (X X' : Scheme.{u}) [AlgebraicGeometry.IsNoetherian X] (π : X' ⟶ X)
    (Z : X.IdealSheafData), Blowup.IsBlowupAlongIdealSheaf π Z → AlgebraicGeometry.IsNoetherian X'

structure AmbientEmbedding {S : Scheme.{u}} (s : BlowupSequenceData S) (n : ℕ) : Type (u + 1) where
  ambient : Scheme.{u}
  emb : s.obj n ⟶ ambient
  emb_isClosedImmersion : AlgebraicGeometry.IsClosedImmersion emb
  isNoetherian_ambient_of_le_length : n ≤ s.length → AlgebraicGeometry.IsNoetherian ambient

private theorem isClosedImmersion_isoObjZero_hom_comp {S X : Scheme.{u}} (ι : S ⟶ X)
    [AlgebraicGeometry.IsClosedImmersion ι] (s : BlowupSequenceData S) :
    AlgebraicGeometry.IsClosedImmersion (s.isoZero.hom ≫ ι) := by
  have : AlgebraicGeometry.IsClosedImmersion s.isoZero.hom := inferInstance
  infer_instance

private theorem isNoetherian_blowup_of_isNoetherian (hno : BlowupPreservesNoetherian.{u})
    {A : Scheme.{u}} (hA : AlgebraicGeometry.IsNoetherian A) (Z : A.IdealSheafData) :
    AlgebraicGeometry.IsNoetherian (Blowup.blowup Z) := by
  have := hA
  exact hno A (Blowup.blowup Z) (Blowup.blowup.proj Z) Z (Blowup.blowup.isBlowupAlongIdealSheaf_proj Z)

private theorem comap_imageIdealSheaf_of_isClosedImmersion {S' A : Scheme.{u}} (σ : S' ⟶ A)
    [AlgebraicGeometry.IsClosedImmersion σ] (J : S'.IdealSheafData) :
    (_root_.FunctorialResolution.Blowup.schemeImageIdeal σ J).comap σ = J := by
  have h : _root_.FunctorialResolution.Blowup.schemeImageIdeal σ J = J.map σ := rfl
  rw [h]
  exact Blowup.comap_map_of_isClosedImmersion σ J

private theorem preimage_support_subset_support_comap {S' A : Scheme.{u}} (σ : S' ⟶ A) (Z : A.IdealSheafData) :
    σ.base ⁻¹' (Z.support : Set ↥A) ⊆ ((Z.comap σ).support : Set ↥S') := by
  simp [Scheme.IdealSheafData.support_comap]

private theorem exists_closedImmersion_blowup_of_isBlowupAlongIdealSheaf (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    {S' A : Scheme.{u}} [AlgebraicGeometry.IsLocallyNoetherian A] (σ : S' ⟶ A)
    [AlgebraicGeometry.IsClosedImmersion σ] (J : S'.IdealSheafData) {S'' : Scheme.{u}}
    (f : S'' ⟶ S') (hf : Blowup.IsBlowupAlongIdealSheaf f J)
    (hc : ∀ T ∈ irreducibleComponents ↥S', ¬ T ⊆ (J.support : Set ↥S')) :
    ∃ τ : S'' ⟶ Blowup.blowup (_root_.FunctorialResolution.Blowup.schemeImageIdeal σ J),
      AlgebraicGeometry.IsClosedImmersion τ ∧
      τ ≫ Blowup.blowup.proj (_root_.FunctorialResolution.Blowup.schemeImageIdeal σ J) = f ≫ σ ∧
      τ.ker = Blowup.strictTransform (Blowup.blowup.proj (_root_.FunctorialResolution.Blowup.schemeImageIdeal σ J)) (_root_.FunctorialResolution.Blowup.schemeImageIdeal σ J) σ.ker := by
  have hπ : Blowup.IsBlowupAlongIdealSheaf (Blowup.blowup.proj (_root_.FunctorialResolution.Blowup.schemeImageIdeal σ J)) (_root_.FunctorialResolution.Blowup.schemeImageIdeal σ J) :=
    Blowup.blowup.isBlowupAlongIdealSheaf_proj _
  have hcomap : (_root_.FunctorialResolution.Blowup.schemeImageIdeal σ J).comap σ = J := comap_imageIdealSheaf_of_isClosedImmersion σ J
  have hsupp : ∀ T ∈ irreducibleComponents ↥S',
      ¬ (σ.base '' T) ⊆ ((_root_.FunctorialResolution.Blowup.schemeImageIdeal σ J).support : Set ↥A) := by
    intro T hT hsub
    refine hc T hT ?_
    have h2 := (Set.image_subset_iff.mp hsub).trans (preimage_support_subset_support_comap σ (_root_.FunctorialResolution.Blowup.schemeImageIdeal σ J))
    rwa [hcomap] at h2
  obtain ⟨ψ, hψ1, hψ2⟩ := hres A (Blowup.blowup (_root_.FunctorialResolution.Blowup.schemeImageIdeal σ J)) S' σ
    (Blowup.blowup.proj (_root_.FunctorialResolution.Blowup.schemeImageIdeal σ J)) (_root_.FunctorialResolution.Blowup.schemeImageIdeal σ J) hπ hsupp
  rw [hcomap] at hψ2
  have hab : hψ2.lift f hf.1 ≫ ψ = f := hψ2.lift_comp f hf.1
  have hba : hf.lift ψ hψ2.1 ≫ f = ψ := hf.lift_comp ψ hψ2.1
  have hid1 : hψ2.lift f hf.1 ≫ hf.lift ψ hψ2.1 = 𝟙 S'' := by
    refine hf.hom_ext hf.1 ?_ (Category.id_comp f)
    rw [Category.assoc, hba, hab]
  have hid2 : hf.lift ψ hψ2.1 ≫ hψ2.lift f hf.1 = 𝟙 _ := by
    refine hψ2.hom_ext hψ2.1 ?_ (Category.id_comp ψ)
    rw [Category.assoc, hab, hba]
  have : IsIso (hψ2.lift f hf.1) := ⟨⟨hf.lift ψ hψ2.1, hid1, hid2⟩⟩
  refine ⟨hψ2.lift f hf.1 ≫
      (Blowup.strictTransform (Blowup.blowup.proj (_root_.FunctorialResolution.Blowup.schemeImageIdeal σ J)) (_root_.FunctorialResolution.Blowup.schemeImageIdeal σ J) σ.ker).subschemeι,
    inferInstance, ?_, ?_⟩
  · rw [Category.assoc, ← hψ1, ← Category.assoc, hab]
  · rw [Scheme.Hom.ker_comp_of_isIso]
    exact Scheme.IdealSheafData.ker_subschemeι _

private theorem exists_closedImmersion_blowup_imageIdealSheaf_of_lt_length (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (_hno : BlowupPreservesNoetherian.{u}) {S : Scheme.{u}} (s : BlowupSequenceData S)
    (n : ℕ) (hn : n < s.length) (A : Scheme.{u}) (σ : s.obj n ⟶ A)
    (hσ : AlgebraicGeometry.IsClosedImmersion σ) (hA : AlgebraicGeometry.IsNoetherian A)
    (hc : ∀ T ∈ irreducibleComponents ↥(s.obj n),
        ¬ T ⊆ ((s.center n).support : Set ↥(s.obj n))) :
    ∃ τ : s.obj (n + 1) ⟶ Blowup.blowup (_root_.FunctorialResolution.Blowup.schemeImageIdeal σ (s.center n)),
      AlgebraicGeometry.IsClosedImmersion τ ∧
      τ ≫ Blowup.blowup.proj (_root_.FunctorialResolution.Blowup.schemeImageIdeal σ (s.center n)) = s.map n ≫ σ ∧
      τ.ker = Blowup.strictTransform (Blowup.blowup.proj (_root_.FunctorialResolution.Blowup.schemeImageIdeal σ (s.center n)))
          (_root_.FunctorialResolution.Blowup.schemeImageIdeal σ (s.center n)) σ.ker := by
  have := hσ
  have := hA
  have : AlgebraicGeometry.IsLocallyNoetherian A := inferInstance
  exact exists_closedImmersion_blowup_of_isBlowupAlongIdealSheaf hres σ (s.center n) (s.map n) (s.isBlowup n hn) hc

@[no_expose]
def embeddingIntoAmbientBlowup (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) {S : Scheme.{u}} (s : BlowupSequenceData S)
    (n : ℕ) (hn : n < s.length) (A : Scheme.{u}) (σ : s.obj n ⟶ A)
    (hσ : AlgebraicGeometry.IsClosedImmersion σ) (hA : AlgebraicGeometry.IsNoetherian A)
    (hc : ∀ T ∈ irreducibleComponents ↥(s.obj n),
        ¬ T ⊆ ((s.center n).support : Set ↥(s.obj n))) :
    s.obj (n + 1) ⟶ Blowup.blowup (_root_.FunctorialResolution.Blowup.schemeImageIdeal σ (s.center n)) :=
  (exists_closedImmersion_blowup_imageIdealSheaf_of_lt_length hres hno s n hn A σ hσ hA hc).choose

private theorem isClosedImmersion_embeddingIntoBlowupImageIdealSheaf (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) {S : Scheme.{u}} (s : BlowupSequenceData S)
    (n : ℕ) (hn : n < s.length) (A : Scheme.{u}) (σ : s.obj n ⟶ A)
    (hσ : AlgebraicGeometry.IsClosedImmersion σ) (hA : AlgebraicGeometry.IsNoetherian A)
    (hc : ∀ T ∈ irreducibleComponents ↥(s.obj n),
        ¬ T ⊆ ((s.center n).support : Set ↥(s.obj n))) :
    AlgebraicGeometry.IsClosedImmersion (embeddingIntoAmbientBlowup hres hno s n hn A σ hσ hA hc) :=
  (exists_closedImmersion_blowup_imageIdealSheaf_of_lt_length hres hno s n hn A σ hσ hA hc).choose_spec.1

private theorem embeddingIntoBlowupImageIdealSheaf_comp_proj (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) {S : Scheme.{u}} (s : BlowupSequenceData S)
    (n : ℕ) (hn : n < s.length) (A : Scheme.{u}) (σ : s.obj n ⟶ A)
    (hσ : AlgebraicGeometry.IsClosedImmersion σ) (hA : AlgebraicGeometry.IsNoetherian A)
    (hc : ∀ T ∈ irreducibleComponents ↥(s.obj n),
        ¬ T ⊆ ((s.center n).support : Set ↥(s.obj n))) :
    embeddingIntoAmbientBlowup hres hno s n hn A σ hσ hA hc ≫ Blowup.blowup.proj (_root_.FunctorialResolution.Blowup.schemeImageIdeal σ (s.center n)) =
      s.map n ≫ σ :=
  (exists_closedImmersion_blowup_imageIdealSheaf_of_lt_length hres hno s n hn A σ hσ hA hc).choose_spec.2.1

private theorem ker_embeddingIntoBlowupImageIdealSheaf (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) {S : Scheme.{u}} (s : BlowupSequenceData S)
    (n : ℕ) (hn : n < s.length) (A : Scheme.{u}) (σ : s.obj n ⟶ A)
    (hσ : AlgebraicGeometry.IsClosedImmersion σ) (hA : AlgebraicGeometry.IsNoetherian A)
    (hc : ∀ T ∈ irreducibleComponents ↥(s.obj n),
        ¬ T ⊆ ((s.center n).support : Set ↥(s.obj n))) :
    (embeddingIntoAmbientBlowup hres hno s n hn A σ hσ hA hc).ker =
      Blowup.strictTransform (Blowup.blowup.proj (_root_.FunctorialResolution.Blowup.schemeImageIdeal σ (s.center n)))
        (_root_.FunctorialResolution.Blowup.schemeImageIdeal σ (s.center n)) σ.ker :=
  (exists_closedImmersion_blowup_imageIdealSheaf_of_lt_length hres hno s n hn A σ hσ hA hc).choose_spec.2.2

def ambientEmbeddingZero {S X : Scheme.{u}} (ι : S ⟶ X)
    [AlgebraicGeometry.IsClosedImmersion ι] [AlgebraicGeometry.IsNoetherian X]
    (s : BlowupSequenceData S) : AmbientEmbedding s 0 where
  ambient := X
  emb := s.isoZero.hom ≫ ι
  emb_isClosedImmersion := by exact isClosedImmersion_isoObjZero_hom_comp ι s
  isNoetherian_ambient_of_le_length := fun _ => inferInstance

def ambientEmbeddingSucc (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) {S : Scheme.{u}} (s : BlowupSequenceData S)
    (hcen : ∀ i, i < s.length → ∀ T ∈ irreducibleComponents ↥(s.obj i),
        ¬ T ⊆ ((s.center i).support : Set ↥(s.obj i)))
    (n : ℕ) (st : AmbientEmbedding s n) :
    Σ t : AmbientEmbedding s (n + 1), (t.ambient ⟶ st.ambient) :=
  if h : n < s.length then
    ⟨{ ambient := Blowup.blowup (_root_.FunctorialResolution.Blowup.schemeImageIdeal st.emb (s.center n))
       emb := embeddingIntoAmbientBlowup hres hno s n h st.ambient st.emb st.emb_isClosedImmersion
         (st.isNoetherian_ambient_of_le_length (Nat.le_of_lt h)) (hcen n h)
       emb_isClosedImmersion := by
         exact isClosedImmersion_embeddingIntoBlowupImageIdealSheaf hres hno s n h st.ambient st.emb
           st.emb_isClosedImmersion (st.isNoetherian_ambient_of_le_length (Nat.le_of_lt h)) (hcen n h)
       isNoetherian_ambient_of_le_length := by
         intro _
         exact isNoetherian_blowup_of_isNoetherian hno (st.isNoetherian_ambient_of_le_length (Nat.le_of_lt h))
           (_root_.FunctorialResolution.Blowup.schemeImageIdeal st.emb (s.center n)) },
     Blowup.blowup.proj (_root_.FunctorialResolution.Blowup.schemeImageIdeal st.emb (s.center n))⟩
  else
    ⟨{ ambient := s.obj (n + 1)
       emb := 𝟙 (s.obj (n + 1))
       emb_isClosedImmersion := inferInstance
       isNoetherian_ambient_of_le_length := fun hle => absurd (Nat.lt_of_succ_le hle) h },
     s.map n ≫ st.emb⟩

private theorem isBlowupAlongIdealSheaf_succAmbientEmbeddingMorphism (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) {S : Scheme.{u}} (s : BlowupSequenceData S)
    (hcen : ∀ i, i < s.length → ∀ T ∈ irreducibleComponents ↥(s.obj i),
        ¬ T ⊆ ((s.center i).support : Set ↥(s.obj i)))
    (n : ℕ) (st : AmbientEmbedding s n) (h : n < s.length) :
    Blowup.IsBlowupAlongIdealSheaf (ambientEmbeddingSucc hres hno s hcen n st).2 (_root_.FunctorialResolution.Blowup.schemeImageIdeal st.emb (s.center n)) := by
  unfold ambientEmbeddingSucc
  rw [dite_eq_left h]
  exact Blowup.blowup.isBlowupAlongIdealSheaf_proj _

private theorem succAmbientEmbedding_comp_blowupMorphism (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) {S : Scheme.{u}} (s : BlowupSequenceData S)
    (hcen : ∀ i, i < s.length → ∀ T ∈ irreducibleComponents ↥(s.obj i),
        ¬ T ⊆ ((s.center i).support : Set ↥(s.obj i)))
    (n : ℕ) (st : AmbientEmbedding s n) :
    (ambientEmbeddingSucc hres hno s hcen n st).1.emb ≫ (ambientEmbeddingSucc hres hno s hcen n st).2 =
      s.map n ≫ st.emb := by
  unfold ambientEmbeddingSucc
  by_cases h : n < s.length
  · rw [dite_eq_left h]
    exact embeddingIntoBlowupImageIdealSheaf_comp_proj hres hno s n h st.ambient st.emb st.emb_isClosedImmersion
      (st.isNoetherian_ambient_of_le_length (Nat.le_of_lt h)) (hcen n h)
  · rw [dite_eq_right h]
    exact Category.id_comp _

private theorem ker_succAmbientEmbedding_eq_strictTransform (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) {S : Scheme.{u}} (s : BlowupSequenceData S)
    (hcen : ∀ i, i < s.length → ∀ T ∈ irreducibleComponents ↥(s.obj i),
        ¬ T ⊆ ((s.center i).support : Set ↥(s.obj i)))
    (n : ℕ) (st : AmbientEmbedding s n) (h : n < s.length) :
    (ambientEmbeddingSucc hres hno s hcen n st).1.emb.ker =
      Blowup.strictTransform (ambientEmbeddingSucc hres hno s hcen n st).2
        (_root_.FunctorialResolution.Blowup.schemeImageIdeal st.emb (s.center n)) st.emb.ker := by
  unfold ambientEmbeddingSucc
  rw [dite_eq_left h]
  exact ker_embeddingIntoBlowupImageIdealSheaf hres hno s n h st.ambient st.emb st.emb_isClosedImmersion
    (st.isNoetherian_ambient_of_le_length (Nat.le_of_lt h)) (hcen n h)

def ambientEmbedding {S X : Scheme.{u}} (ι : S ⟶ X)
    [AlgebraicGeometry.IsClosedImmersion ι] [AlgebraicGeometry.IsNoetherian X]
    (s : BlowupSequenceData S) (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u})
    (hcen : ∀ i, i < s.length → ∀ T ∈ irreducibleComponents ↥(s.obj i),
        ¬ T ⊆ ((s.center i).support : Set ↥(s.obj i))) :
    ∀ n : ℕ, AmbientEmbedding s n := fun n =>
  Nat.rec (motive := fun n => AmbientEmbedding s n) (ambientEmbeddingZero ι s)
    (fun m st => (ambientEmbeddingSucc hres hno s hcen m st).1) n

def ambientEmbeddingSuccMap {S X : Scheme.{u}} (ι : S ⟶ X)
    [AlgebraicGeometry.IsClosedImmersion ι] [AlgebraicGeometry.IsNoetherian X]
    (s : BlowupSequenceData S) (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u})
    (hcen : ∀ i, i < s.length → ∀ T ∈ irreducibleComponents ↥(s.obj i),
        ¬ T ⊆ ((s.center i).support : Set ↥(s.obj i))) (n : ℕ) :
    (ambientEmbedding ι s hres hno hcen (n + 1)).ambient ⟶ (ambientEmbedding ι s hres hno hcen n).ambient :=
  (ambientEmbeddingSucc hres hno s hcen n (ambientEmbedding ι s hres hno hcen n)).2

theorem isBlowupAlongIdealSheaf_ambientBlowupMorphism {S X : Scheme.{u}} (ι : S ⟶ X)
    [AlgebraicGeometry.IsClosedImmersion ι] [AlgebraicGeometry.IsNoetherian X]
    (s : BlowupSequenceData S) (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u})
    (hcen : ∀ i, i < s.length → ∀ T ∈ irreducibleComponents ↥(s.obj i),
        ¬ T ⊆ ((s.center i).support : Set ↥(s.obj i))) (n : ℕ) (hn : n < s.length) :
    Blowup.IsBlowupAlongIdealSheaf (ambientEmbeddingSuccMap ι s hres hno hcen n)
      (_root_.FunctorialResolution.Blowup.schemeImageIdeal (ambientEmbedding ι s hres hno hcen n).emb (s.center n)) :=
  isBlowupAlongIdealSheaf_succAmbientEmbeddingMorphism hres hno s hcen n (ambientEmbedding ι s hres hno hcen n) hn

def ambientBlowupSequence {S X : Scheme.{u}} (ι : S ⟶ X)
    [AlgebraicGeometry.IsClosedImmersion ι] [AlgebraicGeometry.IsNoetherian X]
    (s : BlowupSequenceData S) (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u})
    (hcen : ∀ i, i < s.length → ∀ T ∈ irreducibleComponents ↥(s.obj i),
        ¬ T ⊆ ((s.center i).support : Set ↥(s.obj i))) : BlowupSequenceData X where
  length := s.length
  obj := fun n => (ambientEmbedding ι s hres hno hcen n).ambient
  map := fun n => ambientEmbeddingSuccMap ι s hres hno hcen n
  isoZero := Iso.refl X
  center := fun n => _root_.FunctorialResolution.Blowup.schemeImageIdeal (ambientEmbedding ι s hres hno hcen n).emb (s.center n)
  isBlowup := fun n hn => isBlowupAlongIdealSheaf_ambientBlowupMorphism ι s hres hno hcen n hn

def embeddingIntoAmbientBlowupSequence {S X : Scheme.{u}} (ι : S ⟶ X)
    [AlgebraicGeometry.IsClosedImmersion ι] [AlgebraicGeometry.IsNoetherian X]
    (s : BlowupSequenceData S) (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u})
    (hcen : ∀ i, i < s.length → ∀ T ∈ irreducibleComponents ↥(s.obj i),
        ¬ T ⊆ ((s.center i).support : Set ↥(s.obj i))) (n : ℕ) :
    s.obj n ⟶ (ambientBlowupSequence ι s hres hno hcen).obj n :=
  (ambientEmbedding ι s hres hno hcen n).emb

@[simp]
theorem ambientBlowupSequence_length {S X : Scheme.{u}} (ι : S ⟶ X)
    [AlgebraicGeometry.IsClosedImmersion ι] [AlgebraicGeometry.IsNoetherian X]
    (s : BlowupSequenceData S) (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u})
    (hcen : ∀ i, i < s.length → ∀ T ∈ irreducibleComponents ↥(s.obj i),
        ¬ T ⊆ ((s.center i).support : Set ↥(s.obj i))) :
    (ambientBlowupSequence ι s hres hno hcen).length = s.length := rfl

theorem ambientBlowupSequence_isoObjZero {S X : Scheme.{u}} (ι : S ⟶ X)
    [AlgebraicGeometry.IsClosedImmersion ι] [AlgebraicGeometry.IsNoetherian X]
    (s : BlowupSequenceData S) (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u})
    (hcen : ∀ i, i < s.length → ∀ T ∈ irreducibleComponents ↥(s.obj i),
        ¬ T ⊆ ((s.center i).support : Set ↥(s.obj i))) :
    (ambientBlowupSequence ι s hres hno hcen).isoZero = Iso.refl X := rfl

@[simp]
theorem ambientBlowupSequence_center {S X : Scheme.{u}} (ι : S ⟶ X)
    [AlgebraicGeometry.IsClosedImmersion ι] [AlgebraicGeometry.IsNoetherian X]
    (s : BlowupSequenceData S) (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u})
    (hcen : ∀ i, i < s.length → ∀ T ∈ irreducibleComponents ↥(s.obj i),
        ¬ T ⊆ ((s.center i).support : Set ↥(s.obj i))) (n : ℕ) :
    (ambientBlowupSequence ι s hres hno hcen).center n =
      _root_.FunctorialResolution.Blowup.schemeImageIdeal (embeddingIntoAmbientBlowupSequence ι s hres hno hcen n) (s.center n) := rfl

theorem isNoetherian_ambientBlowupSequence_schemeAt {S X : Scheme.{u}} (ι : S ⟶ X)
    [AlgebraicGeometry.IsClosedImmersion ι] [AlgebraicGeometry.IsNoetherian X]
    (s : BlowupSequenceData S) (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u})
    (hcen : ∀ i, i < s.length → ∀ T ∈ irreducibleComponents ↥(s.obj i),
        ¬ T ⊆ ((s.center i).support : Set ↥(s.obj i))) (n : ℕ) (hn : n ≤ s.length) :
    AlgebraicGeometry.IsNoetherian ((ambientBlowupSequence ι s hres hno hcen).obj n) :=
  (ambientEmbedding ι s hres hno hcen n).isNoetherian_ambient_of_le_length hn

theorem isClosedImmersion_embeddingIntoAmbientBlowupSequence {S X : Scheme.{u}} (ι : S ⟶ X)
    [AlgebraicGeometry.IsClosedImmersion ι] [AlgebraicGeometry.IsNoetherian X]
    (s : BlowupSequenceData S) (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u})
    (hcen : ∀ i, i < s.length → ∀ T ∈ irreducibleComponents ↥(s.obj i),
        ¬ T ⊆ ((s.center i).support : Set ↥(s.obj i))) (n : ℕ) :
    AlgebraicGeometry.IsClosedImmersion (embeddingIntoAmbientBlowupSequence ι s hres hno hcen n) :=
  (ambientEmbedding ι s hres hno hcen n).emb_isClosedImmersion

theorem embeddingIntoAmbientBlowupSequence_zero {S X : Scheme.{u}} (ι : S ⟶ X)
    [AlgebraicGeometry.IsClosedImmersion ι] [AlgebraicGeometry.IsNoetherian X]
    (s : BlowupSequenceData S) (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u})
    (hcen : ∀ i, i < s.length → ∀ T ∈ irreducibleComponents ↥(s.obj i),
        ¬ T ⊆ ((s.center i).support : Set ↥(s.obj i))) :
    embeddingIntoAmbientBlowupSequence ι s hres hno hcen 0 = s.isoZero.hom ≫ ι := rfl

theorem embeddingIntoAmbientBlowupSequence_succ_comp_map {S X : Scheme.{u}} (ι : S ⟶ X)
    [AlgebraicGeometry.IsClosedImmersion ι] [AlgebraicGeometry.IsNoetherian X]
    (s : BlowupSequenceData S) (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u})
    (hcen : ∀ i, i < s.length → ∀ T ∈ irreducibleComponents ↥(s.obj i),
        ¬ T ⊆ ((s.center i).support : Set ↥(s.obj i))) (n : ℕ) :
    embeddingIntoAmbientBlowupSequence ι s hres hno hcen (n + 1) ≫ (ambientBlowupSequence ι s hres hno hcen).map n =
      s.map n ≫ embeddingIntoAmbientBlowupSequence ι s hres hno hcen n :=
  succAmbientEmbedding_comp_blowupMorphism hres hno s hcen n (ambientEmbedding ι s hres hno hcen n)

theorem ker_embeddingIntoAmbientBlowupSequence_succ {S X : Scheme.{u}} (ι : S ⟶ X)
    [AlgebraicGeometry.IsClosedImmersion ι] [AlgebraicGeometry.IsNoetherian X]
    (s : BlowupSequenceData S) (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u})
    (hcen : ∀ i, i < s.length → ∀ T ∈ irreducibleComponents ↥(s.obj i),
        ¬ T ⊆ ((s.center i).support : Set ↥(s.obj i))) (n : ℕ) (hn : n < s.length) :
    (embeddingIntoAmbientBlowupSequence ι s hres hno hcen (n + 1)).ker =
      Blowup.strictTransform ((ambientBlowupSequence ι s hres hno hcen).map n)
        ((ambientBlowupSequence ι s hres hno hcen).center n)
        (embeddingIntoAmbientBlowupSequence ι s hres hno hcen n).ker :=
  ker_succAmbientEmbedding_eq_strictTransform hres hno s hcen n (ambientEmbedding ι s hres hno hcen n) hn

theorem isPushforwardBlowupSeq_ambientBlowupSequence {S X : Scheme.{u}} (ι : S ⟶ X)
    [AlgebraicGeometry.IsClosedImmersion ι] [AlgebraicGeometry.IsNoetherian X]
    (s : BlowupSequenceData S) (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u})
    (hcen : ∀ i, i < s.length → ∀ T ∈ irreducibleComponents ↥(s.obj i),
        ¬ T ⊆ ((s.center i).support : Set ↥(s.obj i))) :
    IsPushforwardBlowupSeq ι s.toSequenceOfBlowups (ambientBlowupSequence ι s hres hno hcen).toSequenceOfBlowups := by
  refine ⟨rfl, ⟨fun i _ => embeddingIntoAmbientBlowupSequence ι s hres hno hcen i,
    fun i _ => isClosedImmersion_embeddingIntoAmbientBlowupSequence ι s hres hno hcen i, ?_, ?_, ?_, ?_⟩⟩
  · show (s.isoZero.hom ≫ ι) ≫ 𝟙 X = s.isoZero.hom ≫ ι
    exact Category.comp_id _
  · intro i hi
    show embeddingIntoAmbientBlowupSequence ι s hres hno hcen (i + 1) ≫
        (ambientBlowupSequence ι s hres hno hcen).toSequenceOfBlowups.transitionMapSucc i =
      s.toSequenceOfBlowups.transitionMapSucc i ≫ embeddingIntoAmbientBlowupSequence ι s hres hno hcen i
    rw [BlowupSequenceData.toSequenceOfBlowups_blowupMorphism, BlowupSequenceData.toSequenceOfBlowups_blowupMorphism]
    exact embeddingIntoAmbientBlowupSequence_succ_comp_map ι s hres hno hcen i
  · intro i _
    rfl
  · intro i hi
    show (embeddingIntoAmbientBlowupSequence ι s hres hno hcen (i + 1)).ker =
      Blowup.strictTransform ((ambientBlowupSequence ι s hres hno hcen).toSequenceOfBlowups.transitionMapSucc i)
        ((ambientBlowupSequence ι s hres hno hcen).toSequenceOfBlowups.center i)
        (embeddingIntoAmbientBlowupSequence ι s hres hno hcen i).ker
    rw [BlowupSequenceData.toSequenceOfBlowups_blowupMorphism]
    exact ker_embeddingIntoAmbientBlowupSequence_succ ι s hres hno hcen i hi

end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.AmbientEmbedding =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.DivisorReductionSequence =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.DivisorReductionSequence", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReductionProperties\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.AmbientEmbedding\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.ControlledTransform\nimport Development.ResolutionOfSingularities.Foundations.Blowup.BlowupBasic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry TopologicalSpace

open scoped Classical

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

namespace BlowupSequenceData

def prependSchemeAt {X : Scheme.{u}} (d : BlowupSequenceData X) : ℕ → Scheme.{u}
  | 0 => X
  | (n + 1) => d.obj n

def prependMap {X : Scheme.{u}} (d : BlowupSequenceData X) :
    (i : ℕ) → d.prependSchemeAt (i + 1) ⟶ d.prependSchemeAt i
  | 0 => d.isoZero.hom
  | (n + 1) => d.map n

def prependCenter {X : Scheme.{u}} (d : BlowupSequenceData X) (Z : X.IdealSheafData) :
    (i : ℕ) → (d.prependSchemeAt i).IdealSheafData
  | 0 => Z
  | (n + 1) => d.center n

theorem isBlowupAlongIdealSheaf_prependMap {X : Scheme.{u}} (Z : X.IdealSheafData)
    (hZ : Blowup.IsBlowupAlongIdealSheaf (𝟙 X) Z) (d : BlowupSequenceData X) (i : ℕ) (hi : i < d.length + 1) :
    Blowup.IsBlowupAlongIdealSheaf (d.prependMap i) (d.prependCenter Z i) := by
  cases i with
  | zero =>
      have h := hZ.iso_hom_comp d.isoZero
      rw [Category.comp_id] at h
      exact h
  | succ n =>
      exact d.isBlowup n (by omega)

def prepend {X : Scheme.{u}} (Z : X.IdealSheafData) (hZ : Blowup.IsBlowupAlongIdealSheaf (𝟙 X) Z)
    (d : BlowupSequenceData X) : BlowupSequenceData X where
  length := d.length + 1
  obj := d.prependSchemeAt
  map := d.prependMap
  isoZero := Iso.refl X
  center := d.prependCenter Z
  isBlowup := fun i hi => isBlowupAlongIdealSheaf_prependMap Z hZ d i hi

section

variable {X : Scheme.{u}} (Z : X.IdealSheafData) (hZ : Blowup.IsBlowupAlongIdealSheaf (𝟙 X) Z) (d : BlowupSequenceData X)

@[simp] theorem prepend_length : (prepend Z hZ d).length = d.length + 1 := rfl

@[simp] theorem prepend_schemeAt_zero : (prepend Z hZ d).obj 0 = X := rfl

@[simp] theorem prepend_schemeAt_succ (n : ℕ) : (prepend Z hZ d).obj (n + 1) = d.obj n := rfl

@[simp] theorem prepend_blowupMorphism_zero : (prepend Z hZ d).map 0 = d.isoZero.hom := rfl

@[simp] theorem prepend_blowupMorphism_succ (n : ℕ) : (prepend Z hZ d).map (n + 1) = d.map n := rfl

@[simp] theorem prepend_isoObjZero : (prepend Z hZ d).isoZero = Iso.refl X := rfl

@[simp] theorem prepend_center_zero : (prepend Z hZ d).center 0 = Z := rfl

@[simp] theorem prepend_center_succ (n : ℕ) : (prepend Z hZ d).center (n + 1) = d.center n := rfl

end

def CentersContainNoComponent {S : Scheme.{u}} (d : BlowupSequenceData S) : Prop :=
  ∀ i, i < d.length → ∀ W ∈ irreducibleComponents ↥(d.obj i),
    ¬ W ⊆ ((d.center i).support : Set ↥(d.obj i))

end BlowupSequenceData

namespace DivisorReduction

noncomputable def containedComponentsIdeal (T : MarkedIdealWithBoundary.{u}) (j : ℕ) (hj : j < T.boundary.length) :
    T.scheme.IdealSheafData :=
  if h : IsOpen {x : ↥(T.boundary.get ⟨j, hj⟩).subscheme |
      connectedComponent x ⊆
        ⇑(T.boundary.get ⟨j, hj⟩).subschemeι ⁻¹' orderAtLeastLocus T.ideal T.mult} then
    Scheme.Hom.ker
      (@AlgebraicGeometry.Scheme.Opens.ι (T.boundary.get ⟨j, hj⟩).subscheme
          ⟨{x : ↥(T.boundary.get ⟨j, hj⟩).subscheme |
              connectedComponent x ⊆
                ⇑(T.boundary.get ⟨j, hj⟩).subschemeι ⁻¹' orderAtLeastLocus T.ideal T.mult}, h⟩ ≫
        (T.boundary.get ⟨j, hj⟩).subschemeι)
  else ⊤

theorem containedComponentsIdeal_eq_ker (T : MarkedIdealWithBoundary.{u}) (j : ℕ) (hj : j < T.boundary.length)
    (h : IsOpen {x : ↥(T.boundary.get ⟨j, hj⟩).subscheme |
      connectedComponent x ⊆
        ⇑(T.boundary.get ⟨j, hj⟩).subschemeι ⁻¹' orderAtLeastLocus T.ideal T.mult}) :
    containedComponentsIdeal T j hj =
      Scheme.Hom.ker
        (@AlgebraicGeometry.Scheme.Opens.ι (T.boundary.get ⟨j, hj⟩).subscheme
            ⟨{x : ↥(T.boundary.get ⟨j, hj⟩).subscheme |
                connectedComponent x ⊆
                  ⇑(T.boundary.get ⟨j, hj⟩).subschemeι ⁻¹' orderAtLeastLocus T.ideal T.mult}, h⟩ ≫
          (T.boundary.get ⟨j, hj⟩).subschemeι) := dif_pos h

theorem containedComponentsIdeal_eq_top_of_not_isOpen (T : MarkedIdealWithBoundary.{u}) (j : ℕ) (hj : j < T.boundary.length)
    (h : ¬ IsOpen {x : ↥(T.boundary.get ⟨j, hj⟩).subscheme |
      connectedComponent x ⊆
        ⇑(T.boundary.get ⟨j, hj⟩).subschemeι ⁻¹' orderAtLeastLocus T.ideal T.mult}) :
    containedComponentsIdeal T j hj = ⊤ := by
  exact dif_neg h

noncomputable def restrictToBoundaryDivisor (T : MarkedIdealWithBoundary.{u}) (j : ℕ) (hj : j < T.boundary.length)
    (I₀ : T.scheme.IdealSheafData) (E₀ : List T.scheme.IdealSheafData) : MarkedIdealWithBoundary.{u} :=
  T.withSchemeIdealBoundary (T.boundary.get ⟨j, hj⟩).subscheme
    ((T.boundary.get ⟨j, hj⟩).subschemeι ≫ T.structMap)
    (I₀.comap (T.boundary.get ⟨j, hj⟩).subschemeι)
    (((E₀.eraseIdx j).take (T.boundary.length - 1)).map
      (fun D => D.comap (T.boundary.get ⟨j, hj⟩).subschemeι))

noncomputable def liftSeqFromDivisor (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) (T : MarkedIdealWithBoundary.{u})
    (alg : ∀ S : MarkedIdealWithBoundary.{u}, S.krullDimSucc < T.krullDimSucc → S.SequenceOfBlowups) (j : ℕ) (hj : j < T.boundary.length)
    (I₀ : T.scheme.IdealSheafData) (E₀ : List T.scheme.IdealSheafData)
    (pre : BlowupSequenceData T.scheme → BlowupSequenceData T.scheme) : T.SequenceOfBlowups :=
  if hdn : (restrictToBoundaryDivisor T j hj I₀ E₀).krullDimSucc < T.krullDimSucc ∧
      AlgebraicGeometry.IsNoetherian T.scheme then
    letI := hdn.2
    if hpr : (MarkedBlowupSequenceData.ofMarkedSequence
        (alg (restrictToBoundaryDivisor T j hj I₀ E₀) hdn.1)).toBlowupSequenceData.CentersContainNoComponent then
      if hmk : (pre (ambientBlowupSequence (T.boundary.get ⟨j, hj⟩).subschemeι
          (MarkedBlowupSequenceData.ofMarkedSequence (alg (restrictToBoundaryDivisor T j hj I₀ E₀) hdn.1)).toBlowupSequenceData
          hres hno hpr)).IsMarked T.structMap T.ideal T.mult T.boundary then
        ((pre (ambientBlowupSequence (T.boundary.get ⟨j, hj⟩).subschemeι
            (MarkedBlowupSequenceData.ofMarkedSequence (alg (restrictToBoundaryDivisor T j hj I₀ E₀) hdn.1)).toBlowupSequenceData
            hres hno hpr)).toMarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary hmk).toMarkedSequenceOfBlowups
      else emptyMarkedSequenceOfBlowups T.structMap T.ideal T.mult T.boundary
    else emptyMarkedSequenceOfBlowups T.structMap T.ideal T.mult T.boundary
  else emptyMarkedSequenceOfBlowups T.structMap T.ideal T.mult T.boundary

theorem liftSeqFromDivisor_eq_toMarkedSequence (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) (T : MarkedIdealWithBoundary.{u})
    (alg : ∀ S : MarkedIdealWithBoundary.{u}, S.krullDimSucc < T.krullDimSucc → S.SequenceOfBlowups) (j : ℕ) (hj : j < T.boundary.length)
    (I₀ : T.scheme.IdealSheafData) (E₀ : List T.scheme.IdealSheafData)
    (pre : BlowupSequenceData T.scheme → BlowupSequenceData T.scheme)
    [AlgebraicGeometry.IsNoetherian T.scheme]
    (hdim : (restrictToBoundaryDivisor T j hj I₀ E₀).krullDimSucc < T.krullDimSucc)
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence
      (alg (restrictToBoundaryDivisor T j hj I₀ E₀) hdim)).toBlowupSequenceData.CentersContainNoComponent)
    (hmk : (pre (ambientBlowupSequence (T.boundary.get ⟨j, hj⟩).subschemeι
        (MarkedBlowupSequenceData.ofMarkedSequence (alg (restrictToBoundaryDivisor T j hj I₀ E₀) hdim)).toBlowupSequenceData
        hres hno hpr)).IsMarked T.structMap T.ideal T.mult T.boundary) :
    liftSeqFromDivisor hres hno T alg j hj I₀ E₀ pre =
      ((pre (ambientBlowupSequence (T.boundary.get ⟨j, hj⟩).subschemeι
          (MarkedBlowupSequenceData.ofMarkedSequence (alg (restrictToBoundaryDivisor T j hj I₀ E₀) hdim)).toBlowupSequenceData
          hres hno hpr)).toMarkedBlowupSequenceData T.structMap T.ideal T.mult T.boundary hmk).toMarkedSequenceOfBlowups := by
  have h1 : (restrictToBoundaryDivisor T j hj I₀ E₀).krullDimSucc < T.krullDimSucc ∧
      AlgebraicGeometry.IsNoetherian T.scheme := ⟨hdim, inferInstance⟩
  exact (dif_pos h1).trans ((dif_pos hpr).trans (dif_pos hmk))

noncomputable def divisorReductionSeq (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) (T : MarkedIdealWithBoundary.{u})
    (alg : ∀ S : MarkedIdealWithBoundary.{u}, S.krullDimSucc < T.krullDimSucc → S.SequenceOfBlowups) (j : ℕ) : T.SequenceOfBlowups :=
  if hj : j < T.boundary.length then
    if orderAtLeastLocus T.ideal T.mult = (∅ : Set ↥T.scheme) then
      emptyMarkedSequenceOfBlowups T.structMap T.ideal T.mult T.boundary
    else
      if containedComponentsIdeal T j hj = ⊤ then
        liftSeqFromDivisor hres hno T alg j hj (T.ideal.comap (𝟙 T.scheme))
          (T.boundary.map (fun D => D.comap (𝟙 T.scheme))) id
      else
        if hb : Blowup.IsBlowupAlongIdealSheaf (𝟙 T.scheme) (containedComponentsIdeal T j hj) then
          liftSeqFromDivisor hres hno T alg j hj
            (residualByPow ((T.ideal.comap (𝟙 T.scheme)).comap (𝟙 T.scheme))
              (Blowup.exceptionalIdeal (𝟙 T.scheme) (containedComponentsIdeal T j hj)) T.mult)
            ((T.boundary.map (fun D => D.comap (𝟙 T.scheme))).map
                (Blowup.strictTransform (𝟙 T.scheme) (containedComponentsIdeal T j hj)) ++
              [Blowup.exceptionalIdeal (𝟙 T.scheme) (containedComponentsIdeal T j hj)])
            (BlowupSequenceData.prepend (containedComponentsIdeal T j hj) hb)
        else emptyMarkedSequenceOfBlowups T.structMap T.ideal T.mult T.boundary
  else emptyMarkedSequenceOfBlowups T.structMap T.ideal T.mult T.boundary

theorem divisorReductionSeq_eq_empty_of_orderAtLeastLocus_eq_empty (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) (T : MarkedIdealWithBoundary.{u})
    (alg : ∀ S : MarkedIdealWithBoundary.{u}, S.krullDimSucc < T.krullDimSucc → S.SequenceOfBlowups) (j : ℕ)
    (hj : j < T.boundary.length) (hcs : orderAtLeastLocus T.ideal T.mult = (∅ : Set ↥T.scheme)) :
    divisorReductionSeq hres hno T alg j = emptyMarkedSequenceOfBlowups T.structMap T.ideal T.mult T.boundary := by
  unfold divisorReductionSeq
  rw [dif_pos hj, if_pos hcs]

theorem divisorReductionSeq_eq_liftSeqFromDivisor_of_eq_top (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) (T : MarkedIdealWithBoundary.{u})
    (alg : ∀ S : MarkedIdealWithBoundary.{u}, S.krullDimSucc < T.krullDimSucc → S.SequenceOfBlowups) (j : ℕ)
    (hj : j < T.boundary.length) (hcs : orderAtLeastLocus T.ideal T.mult ≠ (∅ : Set ↥T.scheme))
    (hZ : containedComponentsIdeal T j hj = ⊤) :
    divisorReductionSeq hres hno T alg j =
      liftSeqFromDivisor hres hno T alg j hj (T.ideal.comap (𝟙 T.scheme))
        (T.boundary.map (fun D => D.comap (𝟙 T.scheme))) id := by
  unfold divisorReductionSeq
  rw [dif_pos hj, if_neg hcs, if_pos hZ]

theorem divisorReductionSeq_eq_liftSeqFromDivisor_prepend (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) (T : MarkedIdealWithBoundary.{u})
    (alg : ∀ S : MarkedIdealWithBoundary.{u}, S.krullDimSucc < T.krullDimSucc → S.SequenceOfBlowups) (j : ℕ)
    (hj : j < T.boundary.length) (hcs : orderAtLeastLocus T.ideal T.mult ≠ (∅ : Set ↥T.scheme))
    (hZ : containedComponentsIdeal T j hj ≠ ⊤) (hb : Blowup.IsBlowupAlongIdealSheaf (𝟙 T.scheme) (containedComponentsIdeal T j hj)) :
    divisorReductionSeq hres hno T alg j =
      liftSeqFromDivisor hres hno T alg j hj
        (residualByPow ((T.ideal.comap (𝟙 T.scheme)).comap (𝟙 T.scheme))
          (Blowup.exceptionalIdeal (𝟙 T.scheme) (containedComponentsIdeal T j hj)) T.mult)
        ((T.boundary.map (fun D => D.comap (𝟙 T.scheme))).map
            (Blowup.strictTransform (𝟙 T.scheme) (containedComponentsIdeal T j hj)) ++
          [Blowup.exceptionalIdeal (𝟙 T.scheme) (containedComponentsIdeal T j hj)])
        (BlowupSequenceData.prepend (containedComponentsIdeal T j hj) hb) := by
  unfold divisorReductionSeq
  rw [dif_pos hj, if_neg hcs, if_neg hZ, dif_pos hb]

end DivisorReduction

end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.DivisorReductionSequence =====
