module

public import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.IdealSheafOrder
public import Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.MaxContactIdeal
public import Mathlib.AlgebraicGeometry.Morphisms.Smooth
public import Mathlib.RingTheory.RegularLocalRing.Defs
public import Mathlib.RingTheory.SimpleRing.Principal
public import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.BlowupDerivativeIdealBound
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.GoingUpInvariantOnOpens
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.GoingUpInvariantSucc
import Development.ResolutionOfSingularities.Foundations.Schemes.AffineOpens
import Mathlib.Tactic.Linter.Style
import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.LogDerivIdealEstimate
import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.StrictTransformRestriction
import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.MarkedSequenceTransforms
import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.StrictNormalCrossingsBlowup
import Development.ResolutionOfSingularities.Foundations.Schemes.SchemeMorphismProperties
import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.AmbientCenterImage
import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.ControlledTransformRestriction
import Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData
import Std.Tactic.BVDecide.Normalize.BitVec

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.DerivBalancedFactor, Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.GoingUpInvariantInduction, Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.LowerIdealAfterBlowup

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.DerivBalancedFactor =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.DerivBalancedFactor", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.IdealSheafOrder\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.MaxContactIdeal\npublic import Mathlib.AlgebraicGeometry.Morphisms.Smooth\npublic import Mathlib.RingTheory.RegularLocalRing.Defs\npublic import Mathlib.RingTheory.SimpleRing.Principal\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.BlowupDerivativeIdealBound\nimport Development.ResolutionOfSingularities.Foundations.Schemes.AffineOpens\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry TopologicalSpace

namespace FunctorialResolution.EmbeddedResolution

private theorem exists_affineOpen_ideal_eq_top_of_not_mem_support {X : Scheme.{u}}
    (I : X.IdealSheafData) (y : ↥X) (hy : y ∉ I.support) :
    ∃ V : X.affineOpens, y ∈ V.1 ∧ I.ideal V = ⊤ := by
  obtain ⟨U, hyU, -⟩ :=
    Scheme.exists_affineOpens_mem_le (X := X) (x := y) (U := ⊤) trivial
  have hny := hy
  rw [AlgebraicGeometry.Scheme.IdealSheafData.mem_support_iff_of_mem (I := I) (U := U) hyU,
    AlgebraicGeometry.Scheme.mem_zeroLocus_iff] at hny
  push Not at hny
  obtain ⟨s, hs, hys⟩ := hny
  refine ⟨X.affineBasicOpen s, hys, ?_⟩
  let _ : Algebra Γ(X, U.1) Γ(X, X.basicOpen s) :=
    (X.presheaf.map (homOfLE (X.basicOpen_le s)).op).hom.toAlgebra
  have hloc : IsLocalization.Away s Γ(X, X.basicOpen s) := U.2.isLocalization_basicOpen s
  have hunit : IsUnit (algebraMap Γ(X, U.1) Γ(X, X.basicOpen s) s) :=
    IsLocalization.map_units (M := Submonoid.powers s) Γ(X, X.basicOpen s)
      ⟨s, Submonoid.mem_powers s⟩
  have hmem : algebraMap Γ(X, U.1) Γ(X, X.basicOpen s) s ∈ I.ideal (X.affineBasicOpen s) := by
    rw [← I.map_ideal_basicOpen U s]
    exact Ideal.mem_map_of_mem _ hs
  exact Ideal.eq_top_of_isUnit_mem _ hmem hunit

theorem not_mem_support_of_mem_support_of_pow_mul {X : Scheme.{u}}
    (Z I I₀ : X.IdealSheafData) (m : ℕ) (hfac : I = Z ^ m * I₀)
    (hord : ∀ x : ↥X, orderAt I x ≤ (m : ℕ∞)) {x : ↥X} (hx : x ∈ Z.support) :
    x ∉ I₀.support := by
  intro hx0
  have hZ : stalkIdeal Z x ≤ IsLocalRing.maximalIdeal (X.presheaf.stalk x) :=
    (mem_support_iff_stalkIdeal_le_maximalIdeal Z x).mp hx
  have hI0 : stalkIdeal I₀ x ≤ IsLocalRing.maximalIdeal (X.presheaf.stalk x) :=
    (mem_support_iff_stalkIdeal_le_maximalIdeal I₀ x).mp hx0
  have hIle : stalkIdeal I x ≤ IsLocalRing.maximalIdeal (X.presheaf.stalk x) ^ (m + 1) := by
    rw [hfac, stalkIdeal_mul, stalkIdeal_pow, pow_succ]
    exact Ideal.mul_mono (Ideal.pow_right_mono hZ m) hI0
  have h1 := (le_orderAt_iff I x (m + 1)).mpr hIle
  have h3 : ((m + 1 : ℕ) : ℕ∞) ≤ (m : ℕ∞) := le_trans h1 (hord x)
  have h4 : m + 1 ≤ m := by exact_mod_cast h3
  omega

theorem isDerivBalanced_of_pow_mul (k : Type u) [Field k] {X : Scheme.{u}}
    (p : X ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.Smooth p]
    (Z I I₀ : X.IdealSheafData) (m : ℕ) (hfac : I = Z ^ m * I₀)
    (hord : ∀ x : ↥X, orderAt I x ≤ (m : ℕ∞)) (hbal : IsDerivBalanced k p I m) :
    IsDerivBalanced k p I₀ m := by
  refine (isDerivBalanced_iff k p I₀ m).mpr ?_
  intro i hi
  refine le_of_forall_exists_affineOpen ?_
  intro y
  by_cases hyZ : y ∈ Z.support
  · obtain ⟨V, hyV, hV⟩ := exists_affineOpen_ideal_eq_top_of_not_mem_support I₀ y
      (not_mem_support_of_mem_support_of_pow_mul Z I I₀ m hfac hord hyZ)
    refine ⟨V, hyV, ?_⟩
    have htop : (I₀ ^ (m - i)).ideal V = ⊤ := by
      rw [Scheme.IdealSheafData.ideal_pow]
      show I₀.ideal V ^ (m - i) = ⊤
      rw [hV, ← Ideal.one_eq_top, one_pow]
    rw [htop]
    exact le_top
  · obtain ⟨V, hyV, hV⟩ := exists_affineOpen_ideal_eq_top_of_not_mem_support Z y hyZ
    refine ⟨V, hyV, ?_⟩
    have hIV : I.ideal V = I₀.ideal V := by
      rw [hfac, Scheme.IdealSheafData.ideal_mul, Scheme.IdealSheafData.ideal_pow]
      show Z.ideal V ^ m * I₀.ideal V = I₀.ideal V
      rw [hV, ← Ideal.one_eq_top, one_pow, one_mul]
    have hder : (derivIdealSheafIterate k p i I).ideal V
        = (derivIdealSheafIterate k p i I₀).ideal V := by
      rw [derivIdealSheafIterate_ideal, derivIdealSheafIterate_ideal, hIV]
    have hb : ((derivIdealSheafIterate k p i I).ideal V) ^ m ≤ (I.ideal V) ^ (m - i) := by
      have hb0 := Scheme.IdealSheafData.le_def.mp ((isDerivBalanced_iff k p I m).mp hbal i hi) V
      rwa [Scheme.IdealSheafData.ideal_pow, Scheme.IdealSheafData.ideal_pow] at hb0
    rw [Scheme.IdealSheafData.ideal_pow, Scheme.IdealSheafData.ideal_pow]
    show ((derivIdealSheafIterate k p i I₀).ideal V) ^ m ≤ (I₀.ideal V) ^ (m - i)
    rw [← hIV, ← hder]
    exact hb

end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.DerivBalancedFactor =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.GoingUpInvariantInduction =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.GoingUpInvariantInduction", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.GoingUpInvariantOnOpens\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.GoingUpInvariantSucc\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.LogDerivIdealEstimate\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.StrictTransformRestriction\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.MarkedSequenceTransforms\nimport Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.StrictNormalCrossingsBlowup\nimport Development.ResolutionOfSingularities.Foundations.Schemes.SchemeMorphismProperties\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

namespace DivisorReduction

namespace GoingUpInvariantOnOpen

private theorem getElem_of_eq_map_append {α β : Type*} (f : α → β) (L : List α) (Lx : List β)
    (L' : List β) (hL : L' = L.map f ++ Lx) (i : ℕ) (hi : i < L.length) (hi' : i < L'.length) :
    L'[i]'hi' = f (L[i]'hi) := by
  subst hL
  have h1 : i < (L.map f).length := by simpa using hi
  rw [List.getElem_append_left h1, List.getElem_map]

theorem succ {hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u}}
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
    (ht : t < s.length) :
    GoingUpInvariantOnOpen hres hno T j hj I₀ E₀ s hpr U₀ (t + 1) := by
  have hsmT : AlgebraicGeometry.Smooth (ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t) :=
    hinv.smooth_structMap
  have hNt : AlgebraicGeometry.IsNoetherian ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).obj t) :=
    isNoetherian_ambientBlowupSeq_schemeAt hres hno T j hj I₀ E₀ s hpr t (by omega)
  have hNt1 : AlgebraicGeometry.IsNoetherian ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).obj (t + 1)) :=
    isNoetherian_ambientBlowupSeq_schemeAt hres hno T j hj I₀ E₀ s hpr (t + 1) (by omega)
  have hNs1 : AlgebraicGeometry.IsNoetherian (s.toSequenceOfBlowups.schemeAt (t + 1)) :=
    MarkedSequenceOfBlowups.isNoetherian_schemeAt effectiveCartierSupportContainsNoComponent hV s (t + 1) (by omega)
  have hNs : AlgebraicGeometry.IsNoetherian (s.toSequenceOfBlowups.schemeAt t) :=
    MarkedSequenceOfBlowups.isNoetherian_schemeAt effectiveCartierSupportContainsNoComponent hV s t (by omega)
  have hci : AlgebraicGeometry.IsClosedImmersion
      (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t) :=
    isClosedImmersion_restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ hU t
  have hci1 : AlgebraicGeometry.IsClosedImmersion
      (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ (t + 1)) :=
    isClosedImmersion_restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ hU (t + 1)
  have htd : t < (ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).length := by
    rw [ambientBlowupSeq_length]; exact ht
  have hπ := (ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).isBlowup t htd
  have hHZ := ker_restrictedEmbedding_le_center hres hno T j hj I₀ E₀ s hpr U₀ hU hm hsupp t ht
  have hsncC := hinv.hasStrictNormalCrossingsWith_center_cons hlift hm hV hU hsupp ht
  have hsncZ := hinv.hasStrictNormalCrossingsWith_center hlift hm hV hU hsupp ht
  have hsmT1 : AlgebraicGeometry.Smooth
      ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).map t ≫
        ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t) :=
    smooth_comp_of_isBlowupAlongIdealSheaf hsncC hπ
  have hps : ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr (t + 1) =
      (ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).map t ≫
        ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t :=
    structureMorphism_ambientBlowupSeq_succ hres hno T j hj I₀ E₀ s hpr t
  have hker1 : Scheme.Hom.ker (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ (t + 1)) =
      Blowup.strictTransform ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).map t)
        ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).center t)
        (Scheme.Hom.ker (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t)) :=
    ker_restrictedEmbedding_succ T j hj I₀ E₀ s hres hno hpr U₀ hU t ht
  have hidx : j < ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).boundaryFrom E₀ (t + 1)).length := by
    have h := hinv.idx_lt
    rw [BlowupSequenceData.boundary_length] at h ⊢
    omega
  refine ⟨?_, hidx, ?_, ?_, ?_, ?_, ?_⟩
  · intro l hl i hi
    rcases lt_or_eq_of_le (Nat.lt_succ_iff.mp hi) with h | h
    · exact hinv.divDeriv l hl i h
    · subst h
      exact hinv.exists_pow_mul_eq_comap_ambientDerivIdeal hbal hm hV hlift hU hsupp ht l hl
  · intro instFt n hn
    have hest : ∀ m, m < T.mult →
        derivIdealSheafIterate T.base (ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t) m
            (ambientDerivIdeal hres hno T j hj I₀ E₀ s hpr 0 t) ≤
          ⨆ l, ⨆ _ : l ≤ m, logDerivIdealSheafIterate T.base
            (ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t)
            (Scheme.Hom.ker (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t)) (m - l)
            (ambientDerivIdeal hres hno T j hj I₀ E₀ s hpr l t) := by
      intro m hmlt
      rw [ambientDerivIdeal_order_zero_eq_controlledTransform]
      exact hinv.deriv_le m hmlt
    have hK : ∀ l, l ≤ T.mult →
        ambientDerivIdeal hres hno T j hj I₀ E₀ s hpr l t ≤
          (ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).center t ^ (T.mult - l) := fun l hl =>
      hinv.ambientDerivIdeal_le_center_pow hbal hm hV hlift hU hsupp ht l hl
    have hK' : ∀ l, l ≤ T.mult →
        Blowup.exceptionalIdeal ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).map t)
              ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).center t) ^ (T.mult - l) *
            ambientDerivIdeal hres hno T j hj I₀ E₀ s hpr l (t + 1) =
          (ambientDerivIdeal hres hno T j hj I₀ E₀ s hpr l t).comap
            ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).map t) := by
      intro l hl
      exact BlowupSequenceData.pow_exceptionalIdeal_mul_controlledTransform_succ _ _ _ _
        (hinv.exists_pow_mul_eq_comap_ambientDerivIdeal hbal hm hV hlift hU hsupp ht l hl)
    have hqc : AlgebraicGeometry.QuasiCompact
        (strictTransformι ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).map t)
          ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).center t)
          (Scheme.Hom.ker (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t))) :=
      FunctorialResolution.EmbeddedResolution.quasiCompact_strictTransformι_of_isLocallyNoetherian _ _ _
    have key := derivIdealSheafIterate_le_biSup_logDerivIdealSheafIterate_of_blowup
      T.base (ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t)
      ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).map t)
      ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).center t)
      (Scheme.Hom.ker (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t))
      (((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).boundaryFrom E₀ t).eraseIdx j) hsncC hHZ hπ T.mult
      (fun l => ambientDerivIdeal hres hno T j hj I₀ E₀ s hpr l t) hK hest
      (fun l => ambientDerivIdeal hres hno T j hj I₀ E₀ s hpr l (t + 1)) hK' n hn
    have e1 : derivIdealSheafIterate T.base (ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr (t + 1)) n
          ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).controlledTransform I₀ T.mult (t + 1)) =
        derivIdealSheafIterate T.base
          ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).map t ≫
            ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t) n
          ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).controlledTransform I₀ T.mult (t + 1)) :=
      derivIdealSheafIterate_congr _ _ hps _ _
    have e2 : ∀ l : ℕ,
        logDerivIdealSheafIterate T.base (ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr (t + 1))
            (Scheme.Hom.ker (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ (t + 1))) (n - l)
            (ambientDerivIdeal hres hno T j hj I₀ E₀ s hpr l (t + 1)) =
          logDerivIdealSheafIterate T.base
            ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).map t ≫
              ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t)
            (Blowup.strictTransform ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).map t)
              ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).center t)
              (Scheme.Hom.ker (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t))) (n - l)
            (ambientDerivIdeal hres hno T j hj I₀ E₀ s hpr l (t + 1)) := by
      intro l
      rw [hker1]
      exact logDerivIdealSheafIterate_congr _ _ hps _ _ _
    rw [e1]
    simp only [e2]
    have h0 : (ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).controlledTransform I₀ T.mult (t + 1) =
        ambientDerivIdeal hres hno T j hj I₀ E₀ s hpr 0 (t + 1) :=
      (ambientDerivIdeal_order_zero_eq_controlledTransform hres hno T j hj I₀ E₀ s hpr (t + 1)).symm
    rw [h0]
    exact key
  · have hbs := BlowupSequenceData.boundary_succ (ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr) E₀ t
    have hlen : j < (List.map (Blowup.strictTransform ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).map t)
        ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).center t))
        ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).boundaryFrom E₀ t)).length := by
      simpa using hinv.idx_lt
    have hZι : ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).center t).comap
        (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t) =
        (s.center t).comap (iteratedPreimage T j hj I₀ E₀ s U₀ t).ι := by
      rw [center_ambientBlowupSeq_eq_imageIdealSheaf T j hj I₀ E₀ s hres hno hpr U₀ hU hm hsupp t ht]
      exact Blowup.comap_map_of_isClosedImmersion _ _
    rw [hbs, List.eraseIdx_append_of_lt_length hlen _, List.eraseIdx_map,
      map_comap_strictTransform_append_exceptionalIdeal (ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t)
        ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).map t)
        ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).center t)
        (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ t)
        (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ (t + 1))
        (restrictedBlowupMorphism T j hj I₀ E₀ s U₀ t)
        (restrictedEmbedding_comp_blowupMorphism T j hj I₀ E₀ s hres hno hpr U₀ t) hker1
        (((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).boundaryFrom E₀ t).eraseIdx j) hsncC hHZ hπ,
      boundary_comap_iteratedPreimage_succ T j hj I₀ E₀ s U₀ hV t ht, hZι]
    refine filterNeTop_map_append_congr _ ?_ _ _ _ hinv.comap_eraseIdx
    exact FunctorialResolution.EmbeddedResolution.strictTransform_top _ _
  · rw [hps, BlowupSequenceData.boundary_succ]
    exact inStrictNormalCrossingPosition_strictTransform_append _ _ _ _ hπ hinv.snc_bdry hsncZ
  · rw [hker1, ← hinv.bdry_getElem]
    exact getElem_of_eq_map_append
      (Blowup.strictTransform ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).map t)
        ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).center t))
      ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).boundaryFrom E₀ t)
      [Blowup.exceptionalIdeal ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).map t)
        ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).center t)]
      ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).boundaryFrom E₀ (t + 1))
      (BlowupSequenceData.boundary_succ _ E₀ t) j hinv.idx_lt hidx
  · rw [hps]
    exact hsmT1

end GoingUpInvariantOnOpen

end DivisorReduction

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.GoingUpInvariantInduction =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.LowerIdealAfterBlowup =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.LowerIdealAfterBlowup", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.GoingUpInvariantOnOpens\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.AmbientCenterImage\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.ControlledTransformRestriction\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.DerivBalancedFactor\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.GoingUpInvariantInduction\nimport Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.StrictNormalCrossingsBlowup\nimport Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Std.Tactic.BVDecide.Normalize.BitVec\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

namespace DivisorReduction

private theorem filterNeTop_append_top {X : Scheme.{u}} (L : List X.IdealSheafData)
    (D : X.IdealSheafData) (hD : D = ⊤) : filterNeTop (L ++ [D]) = filterNeTop L := by
  subst hD
  unfold filterNeTop
  simp [List.filter_append]

private theorem comap_eq_self_of_eq_id {X : Scheme.{u}} (I : X.IdealSheafData) (g : X ⟶ X)
    (hg : g = CategoryTheory.CategoryStruct.id X) : I.comap g = I := by
  subst hg
  exact Scheme.IdealSheafData.comap_id I

private theorem list_map_comap_id {X : Scheme.{u}} (L : List X.IdealSheafData) :
    List.map (fun D => D.comap (CategoryTheory.CategoryStruct.id X)) L = L := by
  induction L with
  | nil => rfl
  | cons a l ih =>
      rw [List.map_cons, ih]
      exact congrArg (fun D => D :: l) (Scheme.IdealSheafData.comap_id a)

private theorem comap_comp_comp {A B C E : Scheme.{u}} (f : A ⟶ B) (g : B ⟶ C) (h : C ⟶ E)
    (D : E.IdealSheafData) :
    D.comap (CategoryTheory.CategoryStruct.comp f (CategoryTheory.CategoryStruct.comp g h))
      = ((D.comap h).comap g).comap f := by
  rw [Scheme.IdealSheafData.comap_comp, Scheme.IdealSheafData.comap_comp]

private theorem map_comap_comp_comp {A B C E : Scheme.{u}} (f : A ⟶ B) (g : B ⟶ C) (h : C ⟶ E)
    (L : List E.IdealSheafData) :
    List.map (fun D => D.comap f)
        (List.map (fun D => D.comap g) (List.map (fun D => D.comap h) L))
      = List.map (fun D => ((D.comap h).comap g).comap f) L := by
  induction L with
  | nil => rfl
  | cons _ _ ih => simp only [List.map_cons, ih]

private theorem ker_opensι_preimage_iso_comp {A B C : Scheme.{u}} (e : A ≅ B) (V : B.Opens)
    (g : B ⟶ C) :
    Scheme.Hom.ker (CategoryTheory.CategoryStruct.comp (Scheme.Opens.ι (e.hom ⁻¹ᵁ V))
        (CategoryTheory.CategoryStruct.comp e.hom g))
      = Scheme.Hom.ker (CategoryTheory.CategoryStruct.comp (Scheme.Opens.ι V) g) := by
  have : IsIso (e.hom ∣_ V) := inferInstance
  have h1 : CategoryTheory.CategoryStruct.comp (Scheme.Opens.ι (e.hom ⁻¹ᵁ V))
      (CategoryTheory.CategoryStruct.comp e.hom g)
      = CategoryTheory.CategoryStruct.comp (e.hom ∣_ V)
        (CategoryTheory.CategoryStruct.comp (Scheme.Opens.ι V) g) := by
    rw [← CategoryTheory.Category.assoc (e.hom ∣_ V) (Scheme.Opens.ι V) g, morphismRestrict_ι,
      CategoryTheory.Category.assoc]
  rw [h1]
  exact Scheme.Hom.ker_comp_of_isIso ..

private theorem ker_opensι_comp_subschemeι_congr {X : Scheme.{u}} (Z J Z' J' : X.IdealSheafData)
    (hZ : Z' = Z) (hJ : J' = J) :
    Scheme.Hom.ker (CategoryTheory.CategoryStruct.comp
        (Scheme.Opens.ι ((TopologicalSpace.Opens.map J'.subschemeι.base).obj Z'.support.compl))
        J'.subschemeι)
      = Scheme.Hom.ker (CategoryTheory.CategoryStruct.comp
        (Scheme.Opens.ι ((TopologicalSpace.Opens.map J.subschemeι.base).obj Z.support.compl))
        J.subschemeι) := by
  subst hZ
  subst hJ
  rfl

private def boundaryDivisorEmbedding (T : MarkedIdealWithBoundary.{u}) (j : ℕ) (hj : j < T.boundary.length) :
    (restrictTwistedToDivisor T j hj).scheme ⟶ T.scheme :=
  (T.boundary.get ⟨j, hj⟩).subschemeι

private theorem lowerIdealAfterBlowup_eq_residualByPow_exceptionalIdeal (T : MarkedIdealWithBoundary.{u}) (j : ℕ)
    (hj : j < T.boundary.length) :
    lowerIdealAfterBlowup T j hj =
      residualByPow ((T.ideal.comap (CategoryTheory.CategoryStruct.id T.scheme)).comap
          (CategoryTheory.CategoryStruct.id T.scheme))
        (Blowup.exceptionalIdeal (CategoryTheory.CategoryStruct.id T.scheme) (containedComponentsIdeal T j hj)) T.mult :=
  rfl

private theorem lowerBoundaryAfterBlowup_eq_map_comap_id_append (T : MarkedIdealWithBoundary.{u}) (j : ℕ)
    (hj : j < T.boundary.length) :
    lowerBoundaryAfterBlowup T j hj =
      List.map (Blowup.strictTransform (CategoryTheory.CategoryStruct.id T.scheme) (containedComponentsIdeal T j hj))
          (List.map (fun D => D.comap (CategoryTheory.CategoryStruct.id T.scheme)) T.boundary) ++
        [Blowup.exceptionalIdeal (CategoryTheory.CategoryStruct.id T.scheme) (containedComponentsIdeal T j hj)] :=
  rfl

private theorem restrictTwistedToDivisor_boundary (T : MarkedIdealWithBoundary.{u}) (j : ℕ) (hj : j < T.boundary.length) :
    (restrictTwistedToDivisor T j hj).boundary =
      List.map (fun D => D.comap (boundaryDivisorEmbedding T j hj))
        (List.take (T.boundary.length - 1) ((lowerBoundaryAfterBlowup T j hj).eraseIdx j)) :=
  rfl

private theorem exceptionalIdeal_pow_mul_eq_comap_of_eq_id {X : Scheme.{u}} (I Z J : X.IdealSheafData)
    (m : ℕ) (hJ : Z ^ m * J = I) (f g : X ⟶ X)
    (hf : f = CategoryTheory.CategoryStruct.id X)
    (hg : g = CategoryTheory.CategoryStruct.id X) :
    Blowup.exceptionalIdeal f Z ^ m * J = (I.comap g).comap f := by
  have h1 : Blowup.exceptionalIdeal f Z = Z := by
    rw [Blowup.exceptionalIdeal_eq_comap]
    exact comap_eq_self_of_eq_id Z f hf
  have h2 : (I.comap g).comap f = I := by
    rw [comap_eq_self_of_eq_id I g hg]
    exact comap_eq_self_of_eq_id I f hf
  rw [h1, h2]
  exact hJ

private theorem support_subset_orderAtLeastLocus_comap_of_eq_id {X : Scheme.{u}} (I Z : X.IdealSheafData)
    (m : ℕ) (h : ((Z.support : Set ↥X)) ⊆ orderAtLeastLocus I m) (g : X ⟶ X)
    (hg : g = CategoryTheory.CategoryStruct.id X) :
    ((Z.support : Set ↥X)) ⊆ orderAtLeastLocus (I.comap g) m := by
  rw [comap_eq_self_of_eq_id I g hg]
  exact h

private theorem lowerIdealAfterBlowup_eq_residualByPow (T : MarkedIdealWithBoundary.{u}) (j : ℕ)
    (hj : j < T.boundary.length) :
    lowerIdealAfterBlowup T j hj = residualByPow T.ideal (containedComponentsIdeal T j hj) T.mult := by
  have h1 : (T.ideal.comap (CategoryTheory.CategoryStruct.id T.scheme)).comap
      (CategoryTheory.CategoryStruct.id T.scheme) = T.ideal := by
    rw [comap_eq_self_of_eq_id T.ideal (CategoryTheory.CategoryStruct.id T.scheme) rfl]
    exact comap_eq_self_of_eq_id T.ideal (CategoryTheory.CategoryStruct.id T.scheme) rfl
  have h2 : Blowup.exceptionalIdeal (CategoryTheory.CategoryStruct.id T.scheme) (containedComponentsIdeal T j hj)
      = containedComponentsIdeal T j hj := by
    rw [Blowup.exceptionalIdeal_eq_comap]
    exact comap_eq_self_of_eq_id (containedComponentsIdeal T j hj) (CategoryTheory.CategoryStruct.id T.scheme) rfl
  rw [lowerIdealAfterBlowup_eq_residualByPow_exceptionalIdeal, h1, h2]

private theorem pow_mul_lowerIdealAfterBlowup_eq_ideal (T : MarkedIdealWithBoundary.{u}) (j : ℕ) (hj : j < T.boundary.length)
    (hfac : ∃ J, containedComponentsIdeal T j hj ^ T.mult * J = T.ideal) :
    containedComponentsIdeal T j hj ^ T.mult * lowerIdealAfterBlowup T j hj = T.ideal := by
  rw [lowerIdealAfterBlowup_eq_residualByPow]
  exact pow_mul_residualByPow T.ideal (containedComponentsIdeal T j hj) T.mult hfac

private theorem isDerivBalanced_lowerIdealAfterBlowup (T : MarkedIdealWithBoundary.{u})
    [AlgebraicGeometry.Smooth T.structMap] [AlgebraicGeometry.LocallyOfFiniteType T.structMap]
    (hord : ∀ x : ↥T.scheme, orderAt T.ideal x ≤ (T.mult : ℕ∞))
    (hbal : IsDerivBalanced T.base T.structMap T.ideal T.mult)
    (j : ℕ) (hj : j < T.boundary.length)
    (hfac : ∃ J, containedComponentsIdeal T j hj ^ T.mult * J = T.ideal) :
    IsDerivBalanced T.base T.structMap (lowerIdealAfterBlowup T j hj) T.mult :=
  isDerivBalanced_of_pow_mul T.base T.structMap (containedComponentsIdeal T j hj) T.ideal (lowerIdealAfterBlowup T j hj) T.mult
    (pow_mul_lowerIdealAfterBlowup_eq_ideal T j hj hfac).symm hord hbal

private theorem structureMorphism_ambientBlowupSeq_eq_projectionToBase_comp (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) (T : MarkedIdealWithBoundary.{u})
    [AlgebraicGeometry.IsNoetherian T.scheme] (j : ℕ) (hj : j < T.boundary.length)
    (I₀ : T.scheme.IdealSheafData) (E₀ : List T.scheme.IdealSheafData)
    (s : (restrictToBoundaryDivisor T j hj I₀ E₀).SequenceOfBlowups)
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent) (t : ℕ) :
    ambientBlowupSeqStructureMorphism hres hno T j hj I₀ E₀ s hpr t =
      CategoryTheory.CategoryStruct.comp ((ambientBlowupSeq hres hno T j hj I₀ E₀ s hpr).projectionToBase t)
        T.structMap :=
  rfl

private def complContainedComponentsOnDivisor (T : MarkedIdealWithBoundary.{u}) (j : ℕ) (hj : j < T.boundary.length) :
    ((restrictTwistedToDivisor T j hj).scheme).Opens :=
  (TopologicalSpace.Opens.map (boundaryDivisorEmbedding T j hj).base).obj (containedComponentsIdeal T j hj).support.compl

private def complContainedComponentsAtSchemeZero (T : MarkedIdealWithBoundary.{u}) (j : ℕ) (hj : j < T.boundary.length)
    (s : (restrictTwistedToDivisor T j hj).SequenceOfBlowups) : (s.toSequenceOfBlowups.schemeAt 0).Opens :=
  s.isoZero.hom ⁻¹ᵁ complContainedComponentsOnDivisor T j hj

private theorem mem_complOpens_iff (T : MarkedIdealWithBoundary.{u}) (j : ℕ) (hj : j < T.boundary.length)
    (s : (restrictTwistedToDivisor T j hj).SequenceOfBlowups) (x : ↥(s.toSequenceOfBlowups.schemeAt 0)) :
    x ∈ (complContainedComponentsAtSchemeZero T j hj s : Set ↥(s.toSequenceOfBlowups.schemeAt 0)) ↔
      (boundaryDivisorEmbedding T j hj (s.isoZero.hom x)) ∉ ((containedComponentsIdeal T j hj).support : Set ↥T.scheme) :=
  Iff.rfl

private theorem isClosed_complOpens_of_isOpen (T : MarkedIdealWithBoundary.{u}) (j : ℕ)
    (hj : j < T.boundary.length) (s : (restrictTwistedToDivisor T j hj).SequenceOfBlowups)
    (hopen : IsOpen (⇑(T.boundary.get ⟨j, hj⟩).subschemeι ⁻¹'
      ((containedComponentsIdeal T j hj).support : Set ↥T.scheme))) :
    IsClosed ((complContainedComponentsAtSchemeZero T j hj s : Set ↥(s.toSequenceOfBlowups.schemeAt 0))) := by
  have h1 : ((complContainedComponentsAtSchemeZero T j hj s : Set ↥(s.toSequenceOfBlowups.schemeAt 0)))
      = (⇑s.isoZero.hom ⁻¹' (⇑(boundaryDivisorEmbedding T j hj) ⁻¹'
          ((containedComponentsIdeal T j hj).support : Set ↥T.scheme)))ᶜ := rfl
  rw [h1]
  exact (hopen.preimage (Scheme.Hom.continuous s.isoZero.hom)).isClosed_compl

private theorem support_ideal_zero_subset_complOpens (T : MarkedIdealWithBoundary.{u}) (j : ℕ)
    (hj : j < T.boundary.length) (s : (restrictTwistedToDivisor T j hj).SequenceOfBlowups)
    (hord : ∀ x : ↥T.scheme, orderAt T.ideal x ≤ (T.mult : ℕ∞))
    (hfac : ∃ J, containedComponentsIdeal T j hj ^ T.mult * J = T.ideal) :
    (((s.ideal 0).support : Set ↥(s.toSequenceOfBlowups.schemeAt 0))) ⊆
      ((complContainedComponentsAtSchemeZero T j hj s : Set ↥(s.toSequenceOfBlowups.schemeAt 0))) := by
  intro x hx
  have hfacEq : T.ideal = containedComponentsIdeal T j hj ^ T.mult * lowerIdealAfterBlowup T j hj :=
    (pow_mul_lowerIdealAfterBlowup_eq_ideal T j hj hfac).symm
  have h1 : s.ideal 0 = ((restrictTwistedToDivisor T j hj).ideal).comap s.isoZero.hom := s.ideal_zero
  rw [h1] at hx
  have h2 : s.isoZero.hom x ∈ (((restrictTwistedToDivisor T j hj).ideal).support : Set _) :=
    (Scheme.IdealSheafData.mem_support_comap ..).1 hx
  have h3 : boundaryDivisorEmbedding T j hj (s.isoZero.hom x) ∈ ((lowerIdealAfterBlowup T j hj).support : Set _) :=
    (Scheme.IdealSheafData.mem_support_comap ..).1 h2
  have hfin : (boundaryDivisorEmbedding T j hj (s.isoZero.hom x))
      ∉ ((containedComponentsIdeal T j hj).support : Set ↥T.scheme) := by
    intro hmem
    exact not_mem_support_of_mem_support_of_pow_mul (containedComponentsIdeal T j hj) T.ideal
      (lowerIdealAfterBlowup T j hj) T.mult hfacEq hord hmem h3
  exact (mem_complOpens_iff T j hj s x).mpr hfin

private theorem inStrictNormalCrossingPosition_lowerBoundaryAfterBlowup (T : MarkedIdealWithBoundary.{u}) [AlgebraicGeometry.IsNoetherian T.scheme]
    (j : ℕ) (hj : j < T.boundary.length)
    (hb : Blowup.IsBlowupAlongIdealSheaf (CategoryTheory.CategoryStruct.id T.scheme) (containedComponentsIdeal T j hj))
    (hsncT : InStrictNormalCrossingPosition T.structMap T.boundary)
    (hsnc : HasStrictNormalCrossingsWith T.structMap (containedComponentsIdeal T j hj) T.boundary) :
    InStrictNormalCrossingPosition T.structMap (lowerBoundaryAfterBlowup T j hj) := by
  have hE : InStrictNormalCrossingPosition T.structMap
      (List.map (fun D => D.comap (CategoryTheory.CategoryStruct.id T.scheme)) T.boundary) := by
    rw [list_map_comap_id]
    exact hsncT
  have hZE : HasStrictNormalCrossingsWith T.structMap (containedComponentsIdeal T j hj)
      (List.map (fun D => D.comap (CategoryTheory.CategoryStruct.id T.scheme)) T.boundary) := by
    rw [list_map_comap_id]
    exact hsnc
  have h := inStrictNormalCrossingPosition_strictTransform_append T.structMap
    (CategoryTheory.CategoryStruct.id T.scheme) (containedComponentsIdeal T j hj)
    (List.map (fun D => D.comap (CategoryTheory.CategoryStruct.id T.scheme)) T.boundary) hb hE hZE
  rw [CategoryTheory.Category.id_comp] at h
  rw [lowerBoundaryAfterBlowup_eq_map_comap_id_append]
  exact h

private theorem lt_length_lowerBoundaryAfterBlowup (T : MarkedIdealWithBoundary.{u}) (j : ℕ) (hj : j < T.boundary.length) :
    j < (lowerBoundaryAfterBlowup T j hj).length := by
  rw [lowerBoundaryAfterBlowup_eq_map_comap_id_append, List.length_append, List.length_map, List.length_map,
    List.length_singleton]
  omega

private theorem lowerBoundaryAfterBlowup_eq_map_strictTransform_append (T : MarkedIdealWithBoundary.{u}) (j : ℕ)
    (hj : j < T.boundary.length) :
    lowerBoundaryAfterBlowup T j hj =
      List.map (Blowup.strictTransform (CategoryTheory.CategoryStruct.id T.scheme) (containedComponentsIdeal T j hj))
          T.boundary ++
        [Blowup.exceptionalIdeal (CategoryTheory.CategoryStruct.id T.scheme) (containedComponentsIdeal T j hj)] := by
  rw [lowerBoundaryAfterBlowup_eq_map_comap_id_append, list_map_comap_id]

private theorem lt_length_map_strictTransform_boundary (T : MarkedIdealWithBoundary.{u}) (j : ℕ) (hj : j < T.boundary.length) :
    j < (List.map (Blowup.strictTransform (CategoryTheory.CategoryStruct.id T.scheme)
      (containedComponentsIdeal T j hj)) T.boundary).length := by
  rw [List.length_map]
  exact hj

private theorem restrictedEmbedding_zero_eq (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) (T : MarkedIdealWithBoundary.{u})
    [AlgebraicGeometry.IsNoetherian T.scheme] (j : ℕ) (hj : j < T.boundary.length)
    (s : (restrictTwistedToDivisor T j hj).SequenceOfBlowups)
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent) :
    restrictedEmbedding T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hres hno hpr
        (complContainedComponentsAtSchemeZero T j hj s) 0 =
      CategoryTheory.CategoryStruct.comp (Scheme.Opens.ι (complContainedComponentsAtSchemeZero T j hj s))
        (CategoryTheory.CategoryStruct.comp s.isoZero.hom (boundaryDivisorEmbedding T j hj)) := by
  have e0 := embeddingIntoAmbient_zero hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr
  rw [restrictedEmbedding_eq_ι_comp_embeddingIntoAmbient]
  exact congrArg (fun g => CategoryTheory.CategoryStruct.comp
    (Scheme.Opens.ι (complContainedComponentsAtSchemeZero T j hj s)) g) e0

private theorem comap_restrictedEmbedding_zero (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) (T : MarkedIdealWithBoundary.{u})
    [AlgebraicGeometry.IsNoetherian T.scheme] (j : ℕ) (hj : j < T.boundary.length)
    (s : (restrictTwistedToDivisor T j hj).SequenceOfBlowups)
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent)
    (D : T.scheme.IdealSheafData) :
    D.comap (restrictedEmbedding T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hres hno hpr
        (complContainedComponentsAtSchemeZero T j hj s) 0) =
      ((D.comap (boundaryDivisorEmbedding T j hj)).comap s.isoZero.hom).comap
        (Scheme.Opens.ι (complContainedComponentsAtSchemeZero T j hj s)) := by
  refine Eq.trans (congrArg (fun f => D.comap f)
    (restrictedEmbedding_zero_eq hres hno T j hj s hpr)) ?_
  exact comap_comp_comp (Scheme.Opens.ι (complContainedComponentsAtSchemeZero T j hj s)) s.isoZero.hom (boundaryDivisorEmbedding T j hj) D

private theorem lowerBoundaryAfterBlowup_getElem_eq_ker_restrictedEmbedding (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) (T : MarkedIdealWithBoundary.{u})
    [AlgebraicGeometry.IsNoetherian T.scheme] (j : ℕ) (hj : j < T.boundary.length)
    (s : (restrictTwistedToDivisor T j hj).SequenceOfBlowups)
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent) :
    (lowerBoundaryAfterBlowup T j hj)[j]'(lt_length_lowerBoundaryAfterBlowup T j hj) =
      Scheme.Hom.ker (restrictedEmbedding T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hres hno
        hpr (complContainedComponentsAtSchemeZero T j hj s) 0) := by
  have hL : (lowerBoundaryAfterBlowup T j hj)[j]'(lt_length_lowerBoundaryAfterBlowup T j hj)
      = Blowup.strictTransform (CategoryTheory.CategoryStruct.id T.scheme) (containedComponentsIdeal T j hj)
          (T.boundary.get ⟨j, hj⟩) := by
    simp only [lowerBoundaryAfterBlowup_eq_map_strictTransform_append T j hj, List.get_eq_getElem]
    rw [List.getElem_append_left (lt_length_map_strictTransform_boundary T j hj), List.getElem_map]
  have hA : Blowup.strictTransform (CategoryTheory.CategoryStruct.id T.scheme) (containedComponentsIdeal T j hj)
        (T.boundary.get ⟨j, hj⟩)
      = Scheme.Hom.ker (CategoryTheory.CategoryStruct.comp
          (Scheme.Opens.ι (complContainedComponentsOnDivisor T j hj)) (boundaryDivisorEmbedding T j hj)) := by
    rw [Blowup.strictTransform_eq_ker, Blowup.strictTransformImmersion_eq, Blowup.strictTransformOpens_eq]
    exact ker_opensι_comp_subschemeι_congr (containedComponentsIdeal T j hj) (T.boundary.get ⟨j, hj⟩)
      ((containedComponentsIdeal T j hj).comap (CategoryTheory.CategoryStruct.id T.scheme))
      ((T.boundary.get ⟨j, hj⟩).comap (CategoryTheory.CategoryStruct.id T.scheme))
      (Scheme.IdealSheafData.comap_id _) (Scheme.IdealSheafData.comap_id _)
  have hker : Scheme.Hom.ker (restrictedEmbedding T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s
        hres hno hpr (complContainedComponentsAtSchemeZero T j hj s) 0)
      = Scheme.Hom.ker (CategoryTheory.CategoryStruct.comp
          (Scheme.Opens.ι (complContainedComponentsOnDivisor T j hj)) (boundaryDivisorEmbedding T j hj)) := by
    refine Eq.trans (congrArg (fun f => Scheme.Hom.ker f)
      (restrictedEmbedding_zero_eq hres hno T j hj s hpr)) ?_
    exact ker_opensι_preimage_iso_comp s.isoZero (complContainedComponentsOnDivisor T j hj) (boundaryDivisorEmbedding T j hj)
  rw [hL, hA]
  exact hker.symm

private theorem filterNeTop_comap_restrictedEmbedding_eraseIdx (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) (T : MarkedIdealWithBoundary.{u})
    [AlgebraicGeometry.IsNoetherian T.scheme] (j : ℕ) (hj : j < T.boundary.length)
    (s : (restrictTwistedToDivisor T j hj).SequenceOfBlowups)
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent) :
    filterNeTop (List.map (fun D => D.comap (restrictedEmbedding T j hj (lowerIdealAfterBlowup T j hj)
          (lowerBoundaryAfterBlowup T j hj) s hres hno hpr (complContainedComponentsAtSchemeZero T j hj s) 0))
        ((lowerBoundaryAfterBlowup T j hj).eraseIdx j)) =
      filterNeTop (List.map (fun D => D.comap (Scheme.Opens.ι (complContainedComponentsAtSchemeZero T j hj s)))
        (s.boundary 0)) := by
  have hsplit : (lowerBoundaryAfterBlowup T j hj).eraseIdx j
      = (List.map (Blowup.strictTransform (CategoryTheory.CategoryStruct.id T.scheme)
            (containedComponentsIdeal T j hj)) T.boundary).eraseIdx j ++
        [Blowup.exceptionalIdeal (CategoryTheory.CategoryStruct.id T.scheme) (containedComponentsIdeal T j hj)] := by
    rw [lowerBoundaryAfterBlowup_eq_map_strictTransform_append T j hj,
      List.eraseIdx_append_of_lt_length (lt_length_map_strictTransform_boundary T j hj)]
  have hlen : ((List.map (Blowup.strictTransform (CategoryTheory.CategoryStruct.id T.scheme)
      (containedComponentsIdeal T j hj)) T.boundary).eraseIdx j).length = T.boundary.length - 1 := by
    rw [List.length_eraseIdx_of_lt (lt_length_map_strictTransform_boundary T j hj), List.length_map]
  have htake : List.take (T.boundary.length - 1) ((lowerBoundaryAfterBlowup T j hj).eraseIdx j)
      = (List.map (Blowup.strictTransform (CategoryTheory.CategoryStruct.id T.scheme)
          (containedComponentsIdeal T j hj)) T.boundary).eraseIdx j := by
    rw [hsplit]
    exact List.take_left' hlen
  have hb : (restrictTwistedToDivisor T j hj).boundary =
      List.map (fun D => D.comap (boundaryDivisorEmbedding T j hj))
        ((List.map (Blowup.strictTransform (CategoryTheory.CategoryStruct.id T.scheme)
          (containedComponentsIdeal T j hj)) T.boundary).eraseIdx j) := by
    rw [restrictTwistedToDivisor_boundary, htake]
  have hB0 : s.boundary 0 = List.map (fun D => D.comap s.isoZero.hom)
      (List.map (fun D => D.comap (boundaryDivisorEmbedding T j hj))
        ((List.map (Blowup.strictTransform (CategoryTheory.CategoryStruct.id T.scheme)
          (containedComponentsIdeal T j hj)) T.boundary).eraseIdx j)) := by
    have h0 : s.boundary 0
        = List.map (fun D => D.comap s.isoZero.hom) (restrictTwistedToDivisor T j hj).boundary := s.boundary_zero
    rw [h0]
    exact congrArg (fun L => List.map (fun D => D.comap s.isoZero.hom) L) hb
  have hB0' : List.map (fun D => D.comap (Scheme.Opens.ι (complContainedComponentsAtSchemeZero T j hj s)))
        (s.boundary 0)
      = List.map (fun D : T.scheme.IdealSheafData =>
          ((D.comap (boundaryDivisorEmbedding T j hj)).comap s.isoZero.hom).comap
            (Scheme.Opens.ι (complContainedComponentsAtSchemeZero T j hj s)))
          ((List.map (Blowup.strictTransform (CategoryTheory.CategoryStruct.id T.scheme)
            (containedComponentsIdeal T j hj)) T.boundary).eraseIdx j) := by
    rw [hB0]
    exact map_comap_comp_comp (Scheme.Opens.ι (complContainedComponentsAtSchemeZero T j hj s)) s.isoZero.hom
      (boundaryDivisorEmbedding T j hj) _
  have htop' : (((Blowup.exceptionalIdeal (CategoryTheory.CategoryStruct.id T.scheme)
        (containedComponentsIdeal T j hj)).comap (boundaryDivisorEmbedding T j hj)).comap s.isoZero.hom).comap
        (Scheme.Opens.ι (complContainedComponentsAtSchemeZero T j hj s)) = ⊤ := by
    rw [Blowup.exceptionalIdeal_eq_comap, Scheme.IdealSheafData.comap_id]
    exact (FunctorialResolution.EmbeddedResolution.restrictIdeal_eq_top_iff_forall_notMem_support
      (((containedComponentsIdeal T j hj).comap (boundaryDivisorEmbedding T j hj)).comap s.isoZero.hom)
      (complContainedComponentsAtSchemeZero T j hj s)).mpr
      (fun x hx hmem => ((mem_complOpens_iff T j hj s x).mp hx)
        ((Scheme.IdealSheafData.mem_support_comap ..).1
          ((Scheme.IdealSheafData.mem_support_comap ..).1 hmem)))
  have hfun : (fun D : T.scheme.IdealSheafData =>
        D.comap (restrictedEmbedding T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hres hno hpr
          (complContainedComponentsAtSchemeZero T j hj s) 0))
      = (fun D : T.scheme.IdealSheafData =>
        ((D.comap (boundaryDivisorEmbedding T j hj)).comap s.isoZero.hom).comap
          (Scheme.Opens.ι (complContainedComponentsAtSchemeZero T j hj s))) :=
    funext (fun D => comap_restrictedEmbedding_zero hres hno T j hj s hpr D)
  have key : filterNeTop (List.map (fun D : T.scheme.IdealSheafData =>
        ((D.comap (boundaryDivisorEmbedding T j hj)).comap s.isoZero.hom).comap
          (Scheme.Opens.ι (complContainedComponentsAtSchemeZero T j hj s)))
        ((lowerBoundaryAfterBlowup T j hj).eraseIdx j))
      = filterNeTop (List.map (fun D => D.comap (Scheme.Opens.ι (complContainedComponentsAtSchemeZero T j hj s)))
          (s.boundary 0)) := by
    have h1 : List.map (fun D : T.scheme.IdealSheafData =>
          ((D.comap (boundaryDivisorEmbedding T j hj)).comap s.isoZero.hom).comap
            (Scheme.Opens.ι (complContainedComponentsAtSchemeZero T j hj s)))
          ((lowerBoundaryAfterBlowup T j hj).eraseIdx j)
        = List.map (fun D : T.scheme.IdealSheafData =>
            ((D.comap (boundaryDivisorEmbedding T j hj)).comap s.isoZero.hom).comap
              (Scheme.Opens.ι (complContainedComponentsAtSchemeZero T j hj s)))
            ((List.map (Blowup.strictTransform (CategoryTheory.CategoryStruct.id T.scheme)
              (containedComponentsIdeal T j hj)) T.boundary).eraseIdx j)
          ++ [(((Blowup.exceptionalIdeal (CategoryTheory.CategoryStruct.id T.scheme)
              (containedComponentsIdeal T j hj)).comap (boundaryDivisorEmbedding T j hj)).comap s.isoZero.hom).comap
              (Scheme.Opens.ι (complContainedComponentsAtSchemeZero T j hj s))] := by
      simp only [hsplit, List.map_append, List.map_cons, List.map_nil]
    rw [h1, filterNeTop_append_top _ _ htop']
    exact congrArg filterNeTop hB0'.symm
  refine Eq.trans (congrArg (fun f => filterNeTop
    (List.map f ((lowerBoundaryAfterBlowup T j hj).eraseIdx j))) hfun) ?_
  exact key

theorem goingUpInvariantOnOpen_of_le (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) (T : MarkedIdealWithBoundary.{u})
    [AlgebraicGeometry.IsNoetherian T.scheme] [AlgebraicGeometry.Smooth T.structMap]
    [AlgebraicGeometry.LocallyOfFiniteType T.structMap] [CharZero T.base]
    (j : ℕ) (hj : j < T.boundary.length)
    (I₀ : T.scheme.IdealSheafData) (E₀ : List T.scheme.IdealSheafData)
    (s : (restrictToBoundaryDivisor T j hj I₀ E₀).SequenceOfBlowups)
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent)
    (U₀ : (s.toSequenceOfBlowups.schemeAt 0).Opens)
    (hbal : IsDerivBalanced T.base T.structMap I₀ T.mult) (hm : 1 ≤ T.mult)
    (hV : (restrictToBoundaryDivisor T j hj I₀ E₀).IsAdmissible) (hlift : StrictNormalCrossingsLiftFromDivisor.{u})
    (hU : IsClosed ((U₀ : Set ↥(s.toSequenceOfBlowups.schemeAt 0))))
    (hsupp : (((s.ideal 0).support : Set ↥(s.toSequenceOfBlowups.schemeAt 0))) ⊆
      (U₀ : Set ↥(s.toSequenceOfBlowups.schemeAt 0)))
    (hE₀ : InStrictNormalCrossingPosition T.structMap E₀) (hjE : j < E₀.length)
    (hget : E₀[j] = Scheme.Hom.ker (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ 0))
    (hcmp : filterNeTop
        (List.map (fun D => D.comap (restrictedEmbedding T j hj I₀ E₀ s hres hno hpr U₀ 0))
          (E₀.eraseIdx j)) =
      filterNeTop (List.map (fun D => D.comap U₀.ι) (s.boundary 0)))
    (t : ℕ) (ht : t ≤ s.length) :
    GoingUpInvariantOnOpen hres hno T j hj I₀ E₀ s hpr U₀ t := by
  induction t with
  | zero => exact goingUpInvariantOnOpen_zero hres hno T j hj I₀ E₀ s hpr U₀ hE₀ hjE hget hcmp
  | succ n ih =>
      exact GoingUpInvariantOnOpen.succ (ih (Nat.le_of_succ_le ht)) hbal hm hV hlift hU hsupp
        (Nat.lt_of_succ_le ht)

theorem exists_isClosed_opens_goingUpInvariantOnOpen (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) (hlift : StrictNormalCrossingsLiftFromDivisor.{u})
    (T : MarkedIdealWithBoundary.{u}) [AlgebraicGeometry.IsNoetherian T.scheme] (hV : T.IsAdmissible)
    (hord : ∀ x : ↥T.scheme, orderAt T.ideal x ≤ (T.mult : ℕ∞))
    (hbal : ∀ [_inst : AlgebraicGeometry.LocallyOfFiniteType T.structMap],
      IsDerivBalanced T.base T.structMap T.ideal T.mult)
    (j : ℕ) (hj : j < T.boundary.length)
    (_hZ : containedComponentsIdeal T j hj ≠ ⊤)
    (hb : Blowup.IsBlowupAlongIdealSheaf (CategoryTheory.CategoryStruct.id T.scheme) (containedComponentsIdeal T j hj))
    (hVlow : (restrictTwistedToDivisor T j hj).IsAdmissible)
    (s : (restrictTwistedToDivisor T j hj).SequenceOfBlowups)
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent)
    (_hsm : AlgebraicGeometry.Smooth
      (CategoryTheory.CategoryStruct.comp (containedComponentsIdeal T j hj).subschemeι T.structMap))
    (hsnc : HasStrictNormalCrossingsWith T.structMap (containedComponentsIdeal T j hj) T.boundary)
    (_hsup : ((containedComponentsIdeal T j hj).support : Set ↥T.scheme) ⊆ orderAtLeastLocus T.ideal T.mult)
    (hfac : ∃ J, containedComponentsIdeal T j hj ^ T.mult * J = T.ideal)
    (hopen : IsOpen (⇑(T.boundary.get ⟨j, hj⟩).subschemeι ⁻¹'
      ((containedComponentsIdeal T j hj).support : Set ↥T.scheme))) :
    ∃ U₀ : (s.toSequenceOfBlowups.schemeAt 0).Opens,
      IsClosed ((U₀ : Set ↥(s.toSequenceOfBlowups.schemeAt 0))) ∧
      (((s.ideal 0).support : Set ↥(s.toSequenceOfBlowups.schemeAt 0)) ⊆
        (U₀ : Set ↥(s.toSequenceOfBlowups.schemeAt 0))) ∧
      (∀ [_inst : AlgebraicGeometry.LocallyOfFiniteType T.structMap],
        IsDerivBalanced T.base T.structMap (lowerIdealAfterBlowup T j hj) T.mult) ∧
      (∀ [_hsmooth : AlgebraicGeometry.Smooth T.structMap]
         [_instFt : AlgebraicGeometry.LocallyOfFiniteType T.structMap]
         [_instCh : CharZero T.base],
        ∀ t ≤ s.length,
          GoingUpInvariantOnOpen hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr U₀ t) := by
  obtain ⟨_, _, _, hm, _, hsmT, hsncT⟩ := id hV
  refine ⟨complContainedComponentsAtSchemeZero T j hj s, isClosed_complOpens_of_isOpen T j hj s hopen,
    support_ideal_zero_subset_complOpens T j hj s hord hfac, ?_, ?_⟩
  · intro instFt
    have : AlgebraicGeometry.Smooth T.structMap := hsmT
    exact isDerivBalanced_lowerIdealAfterBlowup T hord hbal j hj hfac
  · intro hsmooth instFt instCh t ht
    have : AlgebraicGeometry.Smooth T.structMap := hsmooth
    have : AlgebraicGeometry.LocallyOfFiniteType T.structMap := instFt
    have : CharZero T.base := instCh
    exact goingUpInvariantOnOpen_of_le hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr
      (complContainedComponentsAtSchemeZero T j hj s) (isDerivBalanced_lowerIdealAfterBlowup T hord hbal j hj hfac) hm hVlow hlift
      (isClosed_complOpens_of_isOpen T j hj s hopen) (support_ideal_zero_subset_complOpens T j hj s hord hfac)
      (inStrictNormalCrossingPosition_lowerBoundaryAfterBlowup T j hj hb hsncT hsnc) (lt_length_lowerBoundaryAfterBlowup T j hj)
      (lowerBoundaryAfterBlowup_getElem_eq_ker_restrictedEmbedding hres hno T j hj s hpr)
      (filterNeTop_comap_restrictedEmbedding_eraseIdx hres hno T j hj s hpr) t ht

theorem controlledTransform_prepend_ambientBlowupSeq_one (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) (T : MarkedIdealWithBoundary.{u})
    [AlgebraicGeometry.IsNoetherian T.scheme] (j : ℕ) (hj : j < T.boundary.length)
    (hb : Blowup.IsBlowupAlongIdealSheaf (CategoryTheory.CategoryStruct.id T.scheme) (containedComponentsIdeal T j hj))
    (s : (restrictTwistedToDivisor T j hj).SequenceOfBlowups)
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent) :
    (BlowupSequenceData.prepend (containedComponentsIdeal T j hj) hb
          (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr)).controlledTransform
        T.ideal T.mult 1 =
      (lowerIdealAfterBlowup T j hj).comap
        (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj)
          s hpr).isoZero.hom := by
  rw [BlowupSequenceData.controlledTransform_succ, BlowupSequenceData.controlledTransform_zero, BlowupSequenceData.prepend_isoObjZero,
    BlowupSequenceData.prepend_blowupMorphism_zero, BlowupSequenceData.prepend_center_zero]
  exact (Scheme.IdealSheafData.comap_id (lowerIdealAfterBlowup T j hj)).symm

theorem boundary_prepend_ambientBlowupSeq_one (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) (T : MarkedIdealWithBoundary.{u})
    [AlgebraicGeometry.IsNoetherian T.scheme] (j : ℕ) (hj : j < T.boundary.length)
    (hb : Blowup.IsBlowupAlongIdealSheaf (CategoryTheory.CategoryStruct.id T.scheme) (containedComponentsIdeal T j hj))
    (s : (restrictTwistedToDivisor T j hj).SequenceOfBlowups)
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent) :
    (BlowupSequenceData.prepend (containedComponentsIdeal T j hj) hb
          (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr)).boundaryFrom
        T.boundary 1 =
      List.map
        (fun D => D.comap
          (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr).isoZero.hom)
        (lowerBoundaryAfterBlowup T j hj) := by
  rw [BlowupSequenceData.boundary_succ, BlowupSequenceData.boundary_zero, BlowupSequenceData.prepend_isoObjZero,
    BlowupSequenceData.prepend_blowupMorphism_zero, BlowupSequenceData.prepend_center_zero]
  exact (list_map_comap_id (lowerBoundaryAfterBlowup T j hj)).symm

theorem isMarked_prepend_ambientBlowupSeq (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) (hlift : StrictNormalCrossingsLiftFromDivisor.{u})
    (T : MarkedIdealWithBoundary.{u}) [AlgebraicGeometry.IsNoetherian T.scheme] (hV : T.IsAdmissible)
    (hord : ∀ x : ↥T.scheme, orderAt T.ideal x ≤ (T.mult : ℕ∞))
    (hbal : ∀ [_inst : AlgebraicGeometry.LocallyOfFiniteType T.structMap],
      IsDerivBalanced T.base T.structMap T.ideal T.mult)
    (j : ℕ) (hj : j < T.boundary.length)
    (hZ : containedComponentsIdeal T j hj ≠ ⊤)
    (hb : Blowup.IsBlowupAlongIdealSheaf (CategoryTheory.CategoryStruct.id T.scheme) (containedComponentsIdeal T j hj))
    (hVlow : (restrictTwistedToDivisor T j hj).IsAdmissible)
    (s : (restrictTwistedToDivisor T j hj).SequenceOfBlowups)
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent)
    (hsm : AlgebraicGeometry.Smooth
      (CategoryTheory.CategoryStruct.comp (containedComponentsIdeal T j hj).subschemeι T.structMap))
    (hsnc : HasStrictNormalCrossingsWith T.structMap (containedComponentsIdeal T j hj) T.boundary)
    (hsup : ((containedComponentsIdeal T j hj).support : Set ↥T.scheme) ⊆ orderAtLeastLocus T.ideal T.mult)
    (hfac : ∃ J, containedComponentsIdeal T j hj ^ T.mult * J = T.ideal)
    (hopen : IsOpen (⇑(T.boundary.get ⟨j, hj⟩).subschemeι ⁻¹'
      ((containedComponentsIdeal T j hj).support : Set ↥T.scheme))) :
    (BlowupSequenceData.prepend (containedComponentsIdeal T j hj) hb
        (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj)
          (lowerBoundaryAfterBlowup T j hj) s hpr)).IsMarked T.structMap T.ideal T.mult T.boundary := by
  obtain ⟨U₀, hUcl, hUsupp, hbalLow, hinv⟩ :=
    exists_isClosed_opens_goingUpInvariantOnOpen hres hno hlift T hV hord hbal j hj hZ hb hVlow s hpr hsm hsnc
      hsup hfac hopen
  obtain ⟨hch, hft, _, hm, _, hsmT, _⟩ := id hV
  have : CharZero T.base := hch
  have : AlgebraicGeometry.LocallyOfFiniteType T.structMap := hft
  have : AlgebraicGeometry.Smooth T.structMap := hsmT
  obtain ⟨Jfac, hJfac⟩ := hfac
  have hctrl1 := controlledTransform_prepend_ambientBlowupSeq_one hres hno T j hj hb s hpr
  have hbdry1 := boundary_prepend_ambientBlowupSeq_one hres hno T j hj hb s hpr
  have h0 : CategoryTheory.CategoryStruct.comp
      ((BlowupSequenceData.prepend (containedComponentsIdeal T j hj) hb
        (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr)).projectionToBase 0)
      T.structMap = T.structMap := by
    rw [BlowupSequenceData.projectionToBase_prepend_zero]
    exact CategoryTheory.Category.id_comp T.structMap
  have hlen : (BlowupSequenceData.prepend (containedComponentsIdeal T j hj) hb
      (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr)).length
      = s.length + 1 := by
    rw [BlowupSequenceData.prepend_length, ambientBlowupSeq_length]
  refine ⟨?_, ?_, ?_, ?_⟩
  · intro i hi
    rw [hlen] at hi
    cases i with
    | zero =>
        refine ⟨Jfac, ?_⟩
        rw [BlowupSequenceData.prepend_blowupMorphism_zero, BlowupSequenceData.prepend_center_zero,
          BlowupSequenceData.controlledTransform_zero, BlowupSequenceData.prepend_isoObjZero]
        exact exceptionalIdeal_pow_mul_eq_comap_of_eq_id T.ideal (containedComponentsIdeal T j hj) Jfac T.mult hJfac _ _
          rfl rfl
    | succ n =>
        have hn : n < s.length := Nat.lt_of_succ_lt_succ hi
        rw [BlowupSequenceData.prepend_blowupMorphism_succ, BlowupSequenceData.prepend_center_succ,
          BlowupSequenceData.controlledTransform_prepend_succ (containedComponentsIdeal T j hj) hb
            (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr)
            T.ideal (lowerIdealAfterBlowup T j hj) T.mult hctrl1 n]
        exact (hinv (n + 1) hn).exists_pow_mul_eq_comap_controlledTransform n (Nat.lt_succ_self n)
  · intro i hi
    rw [hlen] at hi
    cases i with
    | zero =>
        rw [BlowupSequenceData.prepend_center_zero, BlowupSequenceData.controlledTransform_zero,
          BlowupSequenceData.prepend_isoObjZero]
        exact support_subset_orderAtLeastLocus_comap_of_eq_id T.ideal (containedComponentsIdeal T j hj) T.mult hsup _ rfl
    | succ n =>
        have hn : n < s.length := Nat.lt_of_succ_lt_succ hi
        rw [BlowupSequenceData.prepend_center_succ,
          BlowupSequenceData.controlledTransform_prepend_succ (containedComponentsIdeal T j hj) hb
            (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr)
            T.ideal (lowerIdealAfterBlowup T j hj) T.mult hctrl1 n]
        exact (hinv n (Nat.le_of_lt hn)).support_center_subset_orderAtLeastLocus hbalLow hm hVlow hUcl
          hUsupp hn
  · intro i hi
    rw [hlen] at hi
    cases i with
    | zero =>
        rw [h0]
        exact hsm
    | succ n =>
        have hn : n < s.length := Nat.lt_of_succ_lt_succ hi
        rw [BlowupSequenceData.prepend_center_succ, BlowupSequenceData.projectionToBase_prepend_succ]
        exact smooth_ambientBlowupSeq_center_comp hres hno T j hj (lowerIdealAfterBlowup T j hj)
          (lowerBoundaryAfterBlowup T j hj) s hpr n hn
  · intro i hi
    rw [hlen] at hi
    cases i with
    | zero =>
        have hb0 : (BlowupSequenceData.prepend (containedComponentsIdeal T j hj) hb
            (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr)).boundaryFrom
            T.boundary 0 = T.boundary := by
          rw [BlowupSequenceData.boundary_zero, BlowupSequenceData.prepend_isoObjZero]
          exact list_map_comap_id T.boundary
        rw [h0, hb0]
        exact hsnc
    | succ n =>
        have hn : n < s.length := Nat.lt_of_succ_lt_succ hi
        have h4 := (hinv n (Nat.le_of_lt hn)).hasStrictNormalCrossingsWith_center hlift hm hVlow hUcl hUsupp hn
        rw [structureMorphism_ambientBlowupSeq_eq_projectionToBase_comp] at h4
        rw [BlowupSequenceData.prepend_center_succ, BlowupSequenceData.projectionToBase_prepend_succ,
          BlowupSequenceData.boundary_prepend_succ (containedComponentsIdeal T j hj) hb
            (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr)
            T.boundary (lowerBoundaryAfterBlowup T j hj) hbdry1 n]
        exact h4

theorem comap_controlledTransform_prepend_ambientBlowupSeq (hres : FunctorialResolution.Blowup.StrictTransformIsBlowupOfClosedSubscheme.{u})
    (hno : BlowupPreservesNoetherian.{u}) (hlift : StrictNormalCrossingsLiftFromDivisor.{u})
    (T : MarkedIdealWithBoundary.{u}) [AlgebraicGeometry.IsNoetherian T.scheme] (hV : T.IsAdmissible)
    (hord : ∀ x : ↥T.scheme, orderAt T.ideal x ≤ (T.mult : ℕ∞))
    (hbal : ∀ [_inst : AlgebraicGeometry.LocallyOfFiniteType T.structMap],
      IsDerivBalanced T.base T.structMap T.ideal T.mult)
    (j : ℕ) (hj : j < T.boundary.length)
    (hZ : containedComponentsIdeal T j hj ≠ ⊤)
    (hb : Blowup.IsBlowupAlongIdealSheaf (CategoryTheory.CategoryStruct.id T.scheme) (containedComponentsIdeal T j hj))
    (hVlow : (restrictTwistedToDivisor T j hj).IsAdmissible)
    (s : (restrictTwistedToDivisor T j hj).SequenceOfBlowups)
    (hpr : (MarkedBlowupSequenceData.ofMarkedSequence s).toBlowupSequenceData.CentersContainNoComponent)
    (hsm : AlgebraicGeometry.Smooth
      (CategoryTheory.CategoryStruct.comp (containedComponentsIdeal T j hj).subschemeι T.structMap))
    (hsnc : HasStrictNormalCrossingsWith T.structMap (containedComponentsIdeal T j hj) T.boundary)
    (hsup : ((containedComponentsIdeal T j hj).support : Set ↥T.scheme) ⊆ orderAtLeastLocus T.ideal T.mult)
    (hfac : ∃ J, containedComponentsIdeal T j hj ^ T.mult * J = T.ideal)
    (hopen : IsOpen (⇑(T.boundary.get ⟨j, hj⟩).subschemeι ⁻¹'
      ((containedComponentsIdeal T j hj).support : Set ↥T.scheme)))
    (t : ℕ) (ht : t ≤ s.length) :
    ((BlowupSequenceData.prepend (containedComponentsIdeal T j hj) hb
            (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj)
              (lowerBoundaryAfterBlowup T j hj) s hpr)).controlledTransform T.ideal T.mult (t + 1)).comap
        (embeddingIntoAmbient hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr t) =
      s.ideal t := by
  obtain ⟨_, _, _, _, hinv⟩ :=
    exists_isClosed_opens_goingUpInvariantOnOpen hres hno hlift T hV hord hbal j hj hZ hb hVlow s hpr hsm hsnc
      hsup hfac hopen
  obtain ⟨hch, hft, _, _, _, hsmT, _⟩ := id hV
  have : CharZero T.base := hch
  have : AlgebraicGeometry.LocallyOfFiniteType T.structMap := hft
  have : AlgebraicGeometry.Smooth T.structMap := hsmT
  rw [BlowupSequenceData.controlledTransform_prepend_succ (containedComponentsIdeal T j hj) hb
      (ambientBlowupSeq hres hno T j hj (lowerIdealAfterBlowup T j hj) (lowerBoundaryAfterBlowup T j hj) s hpr)
      T.ideal (lowerIdealAfterBlowup T j hj) T.mult
      (controlledTransform_prepend_ambientBlowupSeq_one hres hno T j hj hb s hpr) t]
  exact (hinv t ht).comap_controlledTransform ht

end DivisorReduction

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.DivisorReduction.LowerIdealAfterBlowup =====
