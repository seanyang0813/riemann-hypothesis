module

public import Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.MaxContactHypersurface
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.MaxContactCover
public import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.StrictTransform
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.MarkedSequenceOfBlowups
public import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.ControlledTransformOrderBound
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.MarkedSequenceTransforms
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.IrreducibleComponentsAlongSequence
public import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.BlowupDerivativeIdealBound
public import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.OrderAtGenericPoint
public import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.StrictNormalCrossingsAddHypersurface
public import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.StrictNormalCrossingsChartNormalization
public import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.CoordinateDivisorBlowup
public import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.Saturation
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.MaxContactCoverProperties
public import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.OrderUnderStalkIsomorphism
import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.DerivativeIdealSheafSmoothPullback
import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.OrderPullback
import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.CoordinateDivisorSmoothness
import Mathlib.Tactic.Linter.Style
import Development.ResolutionOfSingularities.Foundations.Blowup.BlowupCoproduct
import Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData
import Development.ResolutionOfSingularities.Foundations.Schemes.SchemeCoproduct
import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.PowerContainmentAndOrderLocus
import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.SmoothCenterChart
import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.BlowupChartComputations
import Development.ResolutionOfSingularities.Foundations.Blowup.BlowupBasic
import Development.ResolutionOfSingularities.Foundations.Blowup.BlowupOpenCover
import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.TunedMarkedBlowupSeq
import Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.TunedSheafBasic

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.CoverMaxContactIdeal, Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.MaxContactCoverPieces, Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.OrderBoundAlongSequence, Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.MaxContactStrictTransform, Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.SmoothPullbackMaxContactCover

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.CoverMaxContactIdeal =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.CoverMaxContactIdeal", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.MaxContactHypersurface\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.MaxContactCover\nimport Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.DerivativeIdealSheafSmoothPullback\nimport Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.OrderPullback\nimport Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.CoordinateDivisorSmoothness\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

private theorem local_chart_comp (T : MarkedIdealWithBoundary.{u}) (hv : T.IsAdmissible)
    (i : (MaxContactCoverData.chosenCoverData T hv).idx) {n : ℕ}
    (c : EtaleChart T.structMap ((MaxContactCoverData.chosenCoverData T hv).opens i) n) :
    ((MaxContactOpenCover.coverPieceIso T hv i).inv ≫ c.map) ≫ affineSpaceFinToSpec T.base n =
      (MaxContactOpenCover.coverTripleOpen T hv i).ι ≫ (MaxContactCoverData.coverMap T hv ≫ T.structMap) := by
  have h1 : c.map ≫ affineSpaceFinToSpec T.base n =
      ((MaxContactCoverData.chosenCoverData T hv).opens i).ι ≫ T.structMap := c.comp_struct
  have h2 := MaxContactOpenCover.coverTripleOpen_ι_comp_coverMap T hv i
  calc ((MaxContactOpenCover.coverPieceIso T hv i).inv ≫ c.map) ≫ affineSpaceFinToSpec T.base n
      = (MaxContactOpenCover.coverPieceIso T hv i).inv ≫ (c.map ≫ affineSpaceFinToSpec T.base n) := Category.assoc _ _ _
    _ = (MaxContactOpenCover.coverPieceIso T hv i).inv ≫ (((MaxContactCoverData.chosenCoverData T hv).opens i).ι ≫ T.structMap) := by
        rw [h1]
    _ = ((MaxContactOpenCover.coverPieceIso T hv i).inv ≫ ((MaxContactCoverData.chosenCoverData T hv).opens i).ι) ≫ T.structMap :=
        (Category.assoc _ _ _).symm
    _ = ((MaxContactOpenCover.coverTripleOpen T hv i).ι ≫ MaxContactCoverData.coverMap T hv) ≫ T.structMap := by rw [h2]
    _ = (MaxContactOpenCover.coverTripleOpen T hv i).ι ≫ (MaxContactCoverData.coverMap T hv ≫ T.structMap) :=
        Category.assoc _ _ _

private theorem local_chart_etale (T : MarkedIdealWithBoundary.{u}) (hv : T.IsAdmissible)
    (i : (MaxContactCoverData.chosenCoverData T hv).idx) {n : ℕ}
    (c : EtaleChart T.structMap ((MaxContactCoverData.chosenCoverData T hv).opens i) n) :
    AlgebraicGeometry.Etale ((MaxContactOpenCover.coverPieceIso T hv i).inv ≫ c.map) := by
  have : AlgebraicGeometry.Etale c.map := c.isEtale
  have : IsIso (MaxContactOpenCover.coverPieceIso T hv i).inv := inferInstance
  have : IsOpenImmersion (MaxContactOpenCover.coverPieceIso T hv i).inv := inferInstance
  have : AlgebraicGeometry.Etale (MaxContactOpenCover.coverPieceIso T hv i).inv := inferInstance
  infer_instance

private def localCoverEtaleChart (T : MarkedIdealWithBoundary.{u}) (hv : T.IsAdmissible)
    (i : (MaxContactCoverData.chosenCoverData T hv).idx) {n : ℕ}
    (c : EtaleChart T.structMap ((MaxContactCoverData.chosenCoverData T hv).opens i) n) :
    EtaleChart (MaxContactCoverData.coverMap T hv ≫ T.structMap) (MaxContactOpenCover.coverTripleOpen T hv i) n where
  map := (MaxContactOpenCover.coverPieceIso T hv i).inv ≫ c.map
  comp_struct := by
    exact local_chart_comp T hv i c
  isEtale := local_chart_etale T hv i c

private theorem localCoverEtaleChart_coordIdeal (T : MarkedIdealWithBoundary.{u}) (hv : T.IsAdmissible)
    (i : (MaxContactCoverData.chosenCoverData T hv).idx) {n : ℕ}
    (c : EtaleChart T.structMap ((MaxContactCoverData.chosenCoverData T hv).opens i) n)
    (S : Finset (Fin n)) :
    (localCoverEtaleChart T hv i c).coordIdeal S = (c.coordIdeal S).comap (MaxContactOpenCover.coverPieceIso T hv i).inv := by
  have key : (coordSubspaceIdeal T.base n S).comap ((MaxContactOpenCover.coverPieceIso T hv i).inv ≫ c.map)
      = ((coordSubspaceIdeal T.base n S).comap c.map).comap (MaxContactOpenCover.coverPieceIso T hv i).inv := by
    rw [Scheme.IdealSheafData.comap_comp]
  have h1 : (localCoverEtaleChart T hv i c).coordIdeal S
      = (coordSubspaceIdeal T.base n S).comap ((MaxContactOpenCover.coverPieceIso T hv i).inv ≫ c.map) :=
    EtaleChart.coordIdeal_eq_comap_coordSubspaceIdeal (localCoverEtaleChart T hv i c) S
  have h2 : (c.coordIdeal S).comap (MaxContactOpenCover.coverPieceIso T hv i).inv
      = ((coordSubspaceIdeal T.base n S).comap c.map).comap (MaxContactOpenCover.coverPieceIso T hv i).inv :=
    congrArg (fun J => J.comap (MaxContactOpenCover.coverPieceIso T hv i).inv) (EtaleChart.coordIdeal_eq_comap_coordSubspaceIdeal c S)
  exact h1.trans (key.trans h2.symm)

private theorem range_ι_base_subset {X : Scheme.{u}} (U : X.Opens) :
    Set.range U.ι.base ⊆ (U : Set ↥X) :=
  (Scheme.Opens.range_ι U).subset

private theorem comap_comap_eq_of_comp_eq {W X Y Z : Scheme.{u}} (a : W ⟶ X) (b : X ⟶ Z) (a' : W ⟶ Y)
    (b' : Y ⟶ Z) (hsq : a ≫ b = a' ≫ b') (I : Z.IdealSheafData) :
    (I.comap b).comap a = (I.comap b').comap a' := by
  have h1 : (I.comap b).comap a = I.comap (a ≫ b) := by
    simp [Scheme.IdealSheafData.comap_comp]
  have h2 : (I.comap b').comap a' = I.comap (a' ≫ b') := by
    simp [Scheme.IdealSheafData.comap_comp]
  rw [h1, h2, hsq]

private theorem restrictIdeal_coverTripleOpen_coverMaxContactIdeal (T : MarkedIdealWithBoundary.{u}) (hv : T.IsAdmissible)
    (hres : ∀ i : (MaxContactCoverData.chosenCoverData T hv).idx,
      (MaxContactCoverData.coverMaxContactIdeal T hv).comap (MaxContactOpenCover.coverPieceι T hv i) =
        (MaxContactCoverData.chosenCoverData T hv).localIdeal i)
    (i : (MaxContactCoverData.chosenCoverData T hv).idx) :
    @restrictIdeal (MaxContactCoverData.coverTriple T hv).scheme
        (MaxContactCoverData.coverMaxContactIdeal T hv) (MaxContactOpenCover.coverTripleOpen T hv i) =
      ((MaxContactCoverData.chosenCoverData T hv).localIdeal i).comap (MaxContactOpenCover.coverPieceIso T hv i).inv :=
  (MaxContactOpenCover.restrictIdeal_coverTripleOpen T hv i (MaxContactCoverData.coverMaxContactIdeal T hv)).trans
    (congrArg (fun J : (MaxContactOpenCover.coverPiece T hv i).IdealSheafData =>
      J.comap (MaxContactOpenCover.coverPieceIso T hv i).inv) (hres i))

theorem isMaxContactHypersurface_coverMaxContactIdeal_of_comap_eq (T : MarkedIdealWithBoundary.{u}) (hv : T.IsAdmissible)
    [AlgebraicGeometry.LocallyOfFiniteType (MaxContactCoverData.coverTriple T hv).structMap]
    (hgood : MaxContactReduction.IsMaxContactCover T (MaxContactCoverData.chosenCoverData T hv) hv.locallyOfFiniteType
      (MaxContactCoverData.balancedTunedIdeal T hv) (MaxContactCoverData.tunedMult T))
    (hres : ∀ i : (MaxContactCoverData.chosenCoverData T hv).idx,
      (MaxContactCoverData.coverMaxContactIdeal T hv).comap (MaxContactOpenCover.coverPieceι T hv i) =
        (MaxContactCoverData.chosenCoverData T hv).localIdeal i) :
    IsMaxContactHypersurface (MaxContactCoverData.coverTriple T hv).base
      (MaxContactCoverData.coverTriple T hv).structMap (MaxContactCoverData.coverTriple T hv).ideal
      (MaxContactCoverData.tunedMult T) (MaxContactCoverData.coverMaxContactIdeal T hv) := by
  have := hv.charZero
  have := hv.smooth
  have := hv.locallyOfFiniteType
  have hftc : AlgebraicGeometry.LocallyOfFiniteType
      (MaxContactCoverData.coverMap T hv ≫ T.structMap) :=
    (inferInstance : AlgebraicGeometry.LocallyOfFiniteType
      (MaxContactCoverData.coverTriple T hv).structMap)
  intro x
  obtain ⟨i, hxi⟩ := MaxContactOpenCover.exists_mem_coverTripleOpen T hv x
  have hAff0 : AlgebraicGeometry.IsAffine (MaxContactOpenCover.coverPiece T hv i) := hgood.isAffine i
  have haffineOpen : IsAffineOpen (MaxContactOpenCover.coverTripleOpen T hv i) :=
    isAffineOpen_opensRange (MaxContactOpenCover.coverPieceι T hv i)
  refine ⟨MaxContactOpenCover.coverTripleOpen T hv i, haffineOpen, hxi, ?_⟩
  have hcompι : MaxContactOpenCover.coverPieceι T hv i ≫ MaxContactCoverData.coverMap T hv =
      ((MaxContactCoverData.chosenCoverData T hv).opens i).ι :=
    sigma_ι_sigmaOpensDesc T.scheme (MaxContactCoverData.chosenCoverData T hv).opens i
  have hsub : ∀ y : ↥(MaxContactCoverData.coverTriple T hv).scheme,
      y ∈ (↑(MaxContactOpenCover.coverTripleOpen T hv i) :
        Set ↥(MaxContactCoverData.coverTriple T hv).scheme) →
      (MaxContactCoverData.coverMap T hv).base y ∈
        (↑((MaxContactCoverData.chosenCoverData T hv).opens i) : Set ↥T.scheme) := by
    intro y hy
    have hy' : y ∈ Set.range (MaxContactOpenCover.coverPieceι T hv i).base := hy
    obtain ⟨z, rfl⟩ := hy'
    have hz : (MaxContactCoverData.coverMap T hv).base ((MaxContactOpenCover.coverPieceι T hv i).base z) =
        ((MaxContactCoverData.chosenCoverData T hv).opens i).ι.base z := by
      rw [← hcompι]
      rfl
    rw [hz]
    exact range_ι_base_subset _ ⟨z, rfl⟩
  rcases hgood.dichotomy i with ⟨hdisj, htop⟩ | ⟨n, c, j, hloc, hmc⟩
  · left
    refine ⟨?_, ?_⟩
    · rw [Set.disjoint_left]
      intro y hy hy2
      have hy3 : y ∈ orderAtLeastLocus
          ((MaxContactCoverData.balancedTunedIdeal T hv).comap (MaxContactCoverData.coverMap T hv))
          (MaxContactCoverData.tunedMult T) := hy
      rw [orderAtLeastLocus_comap T.base T.structMap (MaxContactCoverData.coverMap T hv)
        (MaxContactCoverData.balancedTunedIdeal T hv) (MaxContactCoverData.tunedMult T)] at hy3
      have hy4 : (MaxContactCoverData.coverMap T hv).base y ∈
          orderAtLeastLocus (MaxContactCoverData.balancedTunedIdeal T hv) (MaxContactCoverData.tunedMult T) := hy3
      exact (Set.disjoint_left.mp hdisj) hy4 (hsub y hy2)
    · rw [restrictIdeal_coverTripleOpen_coverMaxContactIdeal T hv hres i, htop]
      exact Scheme.IdealSheafData.comap_top _
  · right
    refine ⟨n, localCoverEtaleChart T hv i c, j, ?_, ?_⟩
    · rw [restrictIdeal_coverTripleOpen_coverMaxContactIdeal T hv hres i, hloc]
      exact (localCoverEtaleChart_coordIdeal T hv i c {j}).symm
    · have hmc' : c.coordIdeal {j} ≤
          (maxContactIdeal T.base T.structMap (MaxContactCoverData.balancedTunedIdeal T hv)
            (MaxContactCoverData.tunedMult T)).comap
            ((MaxContactCoverData.chosenCoverData T hv).opens i).ι := hmc
      have hmax : maxContactIdeal (MaxContactCoverData.coverTriple T hv).base
            (MaxContactCoverData.coverTriple T hv).structMap
            (MaxContactCoverData.coverTriple T hv).ideal (MaxContactCoverData.tunedMult T) =
          (maxContactIdeal T.base T.structMap (MaxContactCoverData.balancedTunedIdeal T hv)
            (MaxContactCoverData.tunedMult T)).comap (MaxContactCoverData.coverMap T hv) :=
        derivIdealSheafIterate_comap T.base T.structMap (MaxContactCoverData.coverMap T hv)
          (MaxContactCoverData.tunedMult T - 1) (MaxContactCoverData.balancedTunedIdeal T hv)
      have h1 : (localCoverEtaleChart T hv i c).coordIdeal {j}
          = (c.coordIdeal {j}).comap (MaxContactOpenCover.coverPieceIso T hv i).inv :=
        localCoverEtaleChart_coordIdeal T hv i c {j}
      have h2 := comap_comap_eq_of_comp_eq (MaxContactOpenCover.coverTripleOpen T hv i).ι
        (MaxContactCoverData.coverMap T hv)
        (MaxContactOpenCover.coverPieceIso T hv i).inv ((MaxContactCoverData.chosenCoverData T hv).opens i).ι
        (MaxContactOpenCover.coverTripleOpen_ι_comp_coverMap T hv i)
        (maxContactIdeal T.base T.structMap (MaxContactCoverData.balancedTunedIdeal T hv)
          (MaxContactCoverData.tunedMult T))
      have h3 : (c.coordIdeal {j}).comap (MaxContactOpenCover.coverPieceIso T hv i).inv ≤
          ((maxContactIdeal T.base T.structMap (MaxContactCoverData.balancedTunedIdeal T hv)
            (MaxContactCoverData.tunedMult T)).comap
              ((MaxContactCoverData.chosenCoverData T hv).opens i).ι).comap
            (MaxContactOpenCover.coverPieceIso T hv i).inv :=
        Scheme.IdealSheafData.comap_mono _ hmc'
      show (localCoverEtaleChart T hv i c).coordIdeal {j} ≤
        restrictIdeal (maxContactIdeal (MaxContactCoverData.coverTriple T hv).base
          (MaxContactCoverData.coverTriple T hv).structMap
          (MaxContactCoverData.coverTriple T hv).ideal (MaxContactCoverData.tunedMult T))
          (MaxContactOpenCover.coverTripleOpen T hv i)
      rw [hmax]
      exact (le_of_eq h1).trans (le_of_le_of_eq h3 h2.symm)

theorem inStrictNormalCrossingPositionAt_coverMaxContactIdeal (T : MarkedIdealWithBoundary.{u}) (hv : T.IsAdmissible)
    (hgood : MaxContactReduction.IsMaxContactCover T (MaxContactCoverData.chosenCoverData T hv) hv.locallyOfFiniteType
      (MaxContactCoverData.balancedTunedIdeal T hv) (MaxContactCoverData.tunedMult T))
    (hres : ∀ i : (MaxContactCoverData.chosenCoverData T hv).idx,
      (MaxContactCoverData.coverMaxContactIdeal T hv).comap (MaxContactOpenCover.coverPieceι T hv i) =
        (MaxContactCoverData.chosenCoverData T hv).localIdeal i)
    (x : ↥(MaxContactCoverData.coverTriple T hv).scheme) :
    InStrictNormalCrossingPositionAt (MaxContactCoverData.coverTriple T hv).structMap
      [MaxContactCoverData.coverMaxContactIdeal T hv] x := by
  obtain ⟨i, hxi⟩ := MaxContactOpenCover.exists_mem_coverTripleOpen T hv x
  have h1 := MaxContactOpenCover.restrictIdeal_coverTripleOpen T hv i (MaxContactCoverData.coverMaxContactIdeal T hv)
  rcases hgood.dichotomy i with ⟨_hdisj, htop⟩ | ⟨n, c, j, hlocal, _hmc⟩
  · have h2 : ((MaxContactCoverData.coverMaxContactIdeal T hv).comap (MaxContactOpenCover.coverPieceι T hv i)).comap
        (MaxContactOpenCover.coverPieceIso T hv i).inv = ⊤ := by
      rw [hres i, htop]
      exact Scheme.IdealSheafData.comap_top _
    have key := h1.trans h2
    have hsm : AlgebraicGeometry.Smooth (MaxContactCoverData.coverTriple T hv).structMap := by
      have := MaxContactCoverData.smooth_coverMap_of_isAdmissible T hv
      have := hv.smooth
      exact (inferInstance : AlgebraicGeometry.Smooth
        (MaxContactCoverData.coverMap T hv ≫ T.structMap))
    obtain ⟨U, m, hxU, hUle, -, ⟨ch⟩⟩ :=
      exists_etaleChart_le (MaxContactCoverData.coverTriple T hv).structMap x
        (MaxContactOpenCover.coverTripleOpen T hv i) hxi
    have keyU : restrictIdeal (MaxContactCoverData.coverMaxContactIdeal T hv) U = ⊤ := by
      apply restrictIdeal_eq_top_of_le <;> assumption
    refine inStrictNormalCrossingPositionAt_of_exists_etaleChart ⟨U, hxU, m, ch, fun _ => none, ?_, ?_, ?_⟩
    · intro r _hr s _hs t hrt _hst
      simp at hrt
    · intro r hr _hnone
      have hr1 : r < 1 := hr
      have hr0 : r = 0 := by omega
      subst hr0
      exact keyU
    · intro r _hr t hrt
      simp at hrt
  · have h2 : ((MaxContactCoverData.coverMaxContactIdeal T hv).comap (MaxContactOpenCover.coverPieceι T hv i)).comap
        (MaxContactOpenCover.coverPieceIso T hv i).inv = (localCoverEtaleChart T hv i c).coordIdeal {j} := by
      rw [hres i, hlocal, localCoverEtaleChart_coordIdeal]
    have key := h1.trans h2
    refine inStrictNormalCrossingPositionAt_of_exists_etaleChart
      ⟨MaxContactOpenCover.coverTripleOpen T hv i, hxi, n, localCoverEtaleChart T hv i c, fun _ => some j,
        ?_, ?_, ?_⟩
    · intro r hr s hs t _hrt _hst
      have hr1 : r < 1 := hr
      have hs1 : s < 1 := hs
      omega
    · intro r _hr hnone
      simp at hnone
    · intro r hr t hrt
      have hr1 : r < 1 := hr
      have hr0 : r = 0 := by omega
      subst hr0
      obtain rfl : j = t := Option.some.inj hrt
      exact key

theorem inStrictNormalCrossingPosition_coverMaxContactIdeal (T : MarkedIdealWithBoundary.{u}) (hv : T.IsAdmissible)
    (hgood : MaxContactReduction.IsMaxContactCover T (MaxContactCoverData.chosenCoverData T hv) hv.locallyOfFiniteType
      (MaxContactCoverData.balancedTunedIdeal T hv) (MaxContactCoverData.tunedMult T))
    (hres : ∀ i : (MaxContactCoverData.chosenCoverData T hv).idx,
      (MaxContactCoverData.coverMaxContactIdeal T hv).comap (MaxContactOpenCover.coverPieceι T hv i) =
        (MaxContactCoverData.chosenCoverData T hv).localIdeal i)
    (hsm : IsSmoothDivisor (MaxContactCoverData.coverTriple T hv).structMap
      (MaxContactCoverData.coverMaxContactIdeal T hv)) :
    InStrictNormalCrossingPosition (MaxContactCoverData.coverTriple T hv).structMap
      [MaxContactCoverData.coverMaxContactIdeal T hv] := by
  refine (inStrictNormalCrossingPosition_iff _ _).mpr
    ⟨?_, fun x => inStrictNormalCrossingPositionAt_coverMaxContactIdeal T hv hgood hres x⟩
  intro D hD
  have hD' : D = MaxContactCoverData.coverMaxContactIdeal T hv := List.mem_singleton.mp hD
  subst hD'
  exact hsm

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.CoverMaxContactIdeal =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.MaxContactCoverPieces =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.MaxContactCoverPieces", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.MaxContactHypersurface\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.MaxContactCover\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.CoverMaxContactIdeal\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.StrictTransform\nimport Development.ResolutionOfSingularities.Foundations.Blowup.BlowupCoproduct\nimport Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData\nimport Development.ResolutionOfSingularities.Foundations.Schemes.SchemeCoproduct\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

universe u v

open CategoryTheory CategoryTheory.Limits AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution.MaxContactCoverGeometry

private theorem map_iInf_of_bijective {A B : Type*} [CommRing A] [CommRing B]
    (φ : A →+* B) (hφ : Function.Bijective φ) {ι : Type*} (K : ι → Ideal A) :
    Ideal.map φ (⨅ i, K i) = ⨅ i, Ideal.map φ (K i) :=
  (Ideal.relIsoOfBijective φ hφ).symm.map_iInf K

private theorem bijective_appLE_image {A B : Scheme.{u}} (g : A ⟶ B) [IsOpenImmersion g]
    (S : A.Opens) (e : S ≤ g ⁻¹ᵁ (g ''ᵁ S)) :
    Function.Bijective (CommRingCat.Hom.hom (Scheme.Hom.appLE g (g ''ᵁ S) S e)) := by
  have : IsIso (Scheme.Hom.appLE g (g ''ᵁ S) S e) := by
    rw [← Scheme.Hom.appIso_hom' g S]
    infer_instance
  exact ConcreteCategory.bijective_of_isIso _

private theorem ideal_iInf {X : Scheme.{u}} {ι : Type v} [Finite ι]
    (I : ι → X.IdealSheafData) (U : X.affineOpens) :
    (⨅ i, I i).ideal U = ⨅ i, (I i).ideal U := by
  simp only [AlgebraicGeometry.Scheme.IdealSheafData.ideal_iInf, iInf_apply]

theorem comap_iInf {X Y : Scheme.{u}} (f : X ⟶ Y) [IsOpenImmersion f]
    {ι : Type v} [Finite ι] (J : ι → Y.IdealSheafData) :
    (⨅ i, J i).comap f = ⨅ i, (J i).comap f := by
  refine Scheme.IdealSheafData.ext ?_
  funext V
  have hU : IsAffineOpen (f ''ᵁ (V : X.Opens)) := V.2.image_of_isOpenImmersion f
  have e : (V : X.Opens) ≤ f ⁻¹ᵁ (f ''ᵁ (V : X.Opens)) :=
    (f.preimage_image_eq (V : X.Opens)).ge
  have hbij : Function.Bijective
      (f.appLE (f ''ᵁ (V : X.Opens)) (V : X.Opens) e).hom :=
    bijective_appLE_image f (V : X.Opens) e
  have key : ∀ I : Y.IdealSheafData, (I.comap f).ideal V =
      (I.ideal ⟨f ''ᵁ (V : X.Opens), hU⟩).map
        (f.appLE (f ''ᵁ (V : X.Opens)) (V : X.Opens) e).hom := fun I =>
    Scheme.IdealSheafData.comap_ideal_eq_map_appLE I f ⟨f ''ᵁ (V : X.Opens), hU⟩ V e
  have h1 : (⨅ i, J i).ideal ⟨f ''ᵁ (V : X.Opens), hU⟩
      = ⨅ i, (J i).ideal ⟨f ''ᵁ (V : X.Opens), hU⟩ :=
    ideal_iInf J ⟨f ''ᵁ (V : X.Opens), hU⟩
  have h2 : (⨅ i, (J i).comap f).ideal V = ⨅ i, ((J i).comap f).ideal V :=
    ideal_iInf (fun i => (J i).comap f) V
  rw [h2, key (⨅ i, J i), h1, map_iInf_of_bijective _ hbij]
  exact iInf_congr fun i => (key (J i)).symm

theorem ker_subschemeι_comp_comap_self {X Y : Scheme.{u}} (f : X ⟶ Y) [IsOpenImmersion f] [QuasiCompact f]
    (I : X.IdealSheafData) :
    ((I.subschemeι ≫ f).ker).comap f = I :=
  FunctorialResolution.EmbeddedResolution.comap_ker_subschemeι_comp I f

theorem ker_subschemeι_comp_comap_eq_top_of_disjoint {X X' Y : Scheme.{u}} (f : X ⟶ Y) [IsOpenImmersion f]
    (g : X' ⟶ Y) [QuasiCompact g]
    (hdisj : ∀ (x : ↥X) (x' : ↥X'), f.base x ≠ g.base x') (J : X'.IdealSheafData) :
    ((J.subschemeι ≫ g).ker).comap f = ⊤ := by
  refine FunctorialResolution.Blowup.comap_eq_top_of_notMem_support f ((J.subschemeι ≫ g).ker) ?_
  intro x hx
  have hx' : f.base x ∈ (((J.subschemeι ≫ g).ker).support : Set ↥Y) := hx
  rw [Scheme.Hom.support_ker] at hx'
  have hopen : IsOpen (Set.range ⇑f.base) := f.isOpenEmbedding.isOpen_range
  obtain ⟨y, hy1, hy2⟩ :=
    mem_closure_iff.mp hx' (Set.range ⇑f.base) hopen (Set.mem_range_self x)
  obtain ⟨x₀, hx₀⟩ := hy1
  obtain ⟨w, hw⟩ := hy2
  have hwe : g.base (J.subschemeι.base w) = y := by
    rw [← hw]
    simp
  exact hdisj x₀ (J.subschemeι.base w) (hx₀.trans hwe.symm)

variable (T : MarkedIdealWithBoundary.{u}) (hv : T.IsAdmissible)

theorem quasiCompact_coverPieceι (i : (MaxContactCoverData.chosenCoverData T hv).idx) :
    QuasiCompact (MaxContactOpenCover.coverPieceι T hv i) :=
  FunctorialResolution.Blowup.quasiCompact_sigmaι
    (fun j : (MaxContactCoverData.chosenCoverData T hv).idx => MaxContactOpenCover.coverPiece T hv j) i

instance instQuasiCompactStarι (i : (MaxContactCoverData.chosenCoverData T hv).idx) :
    QuasiCompact (MaxContactOpenCover.coverPieceι T hv i) :=
  quasiCompact_coverPieceι T hv i

theorem coverPieceι_base_ne_of_ne {i j : (MaxContactCoverData.chosenCoverData T hv).idx} (hij : i ≠ j)
    (x : ↥(MaxContactOpenCover.coverPiece T hv i)) (y : ↥(MaxContactOpenCover.coverPiece T hv j)) :
    (MaxContactOpenCover.coverPieceι T hv i).base x ≠ (MaxContactOpenCover.coverPieceι T hv j).base y :=
  FunctorialResolution.Blowup.sigmaι_base_ne
    (fun k : (MaxContactCoverData.chosenCoverData T hv).idx => MaxContactOpenCover.coverPiece T hv k) hij x y

theorem ker_subschemeι_comp_coverPieceι_comap_self (i : (MaxContactCoverData.chosenCoverData T hv).idx) :
    ((((MaxContactCoverData.chosenCoverData T hv).localIdeal i).subschemeι ≫
        MaxContactOpenCover.coverPieceι T hv i).ker).comap (MaxContactOpenCover.coverPieceι T hv i) =
      (MaxContactCoverData.chosenCoverData T hv).localIdeal i :=
  ker_subschemeι_comp_comap_self (MaxContactOpenCover.coverPieceι T hv i) _

theorem ker_subschemeι_comp_coverPieceι_comap_of_ne {i j : (MaxContactCoverData.chosenCoverData T hv).idx} (hij : i ≠ j) :
    ((((MaxContactCoverData.chosenCoverData T hv).localIdeal j).subschemeι ≫
        MaxContactOpenCover.coverPieceι T hv j).ker).comap (MaxContactOpenCover.coverPieceι T hv i) = ⊤ :=
  ker_subschemeι_comp_comap_eq_top_of_disjoint (MaxContactOpenCover.coverPieceι T hv i) (MaxContactOpenCover.coverPieceι T hv j)
    (coverPieceι_base_ne_of_ne T hv hij) _

theorem comap_coverMaxContactIdeal_coverPieceι (i : (MaxContactCoverData.chosenCoverData T hv).idx) :
    (MaxContactCoverData.coverMaxContactIdeal T hv).comap (MaxContactOpenCover.coverPieceι T hv i) =
      (MaxContactCoverData.chosenCoverData T hv).localIdeal i := by
  have key : (⨅ j : (MaxContactCoverData.chosenCoverData T hv).idx,
      (((MaxContactCoverData.chosenCoverData T hv).localIdeal j).subschemeι ≫
        MaxContactOpenCover.coverPieceι T hv j).ker).comap (MaxContactOpenCover.coverPieceι T hv i) =
      (MaxContactCoverData.chosenCoverData T hv).localIdeal i := by
    rw [comap_iInf]
    refine le_antisymm (le_trans (iInf_le _ i) (le_of_eq (ker_subschemeι_comp_coverPieceι_comap_self T hv i)))
      (le_iInf fun j => ?_)
    rcases eq_or_ne j i with rfl | h
    · exact le_of_eq (ker_subschemeι_comp_coverPieceι_comap_self T hv _).symm
    · rw [ker_subschemeι_comp_coverPieceι_comap_of_ne T hv h.symm]
      exact le_top
  exact key

theorem isMaxContactHypersurface_coverMaxContactIdeal
    [AlgebraicGeometry.LocallyOfFiniteType (MaxContactCoverData.coverTriple T hv).structMap]
    (hgood : MaxContactReduction.IsMaxContactCover T (MaxContactCoverData.chosenCoverData T hv) hv.locallyOfFiniteType
      (MaxContactCoverData.balancedTunedIdeal T hv) (MaxContactCoverData.tunedMult T)) :
    IsMaxContactHypersurface (MaxContactCoverData.coverTriple T hv).base
      (MaxContactCoverData.coverTriple T hv).structMap (MaxContactCoverData.coverTriple T hv).ideal
      (MaxContactCoverData.tunedMult T) (MaxContactCoverData.coverMaxContactIdeal T hv) :=
  FunctorialResolution.EmbeddedResolution.isMaxContactHypersurface_coverMaxContactIdeal_of_comap_eq T hv hgood (comap_coverMaxContactIdeal_coverPieceι T hv)

theorem inStrictNormalCrossingPositionAt_of_isMaxContactCover
    (hgood : MaxContactReduction.IsMaxContactCover T (MaxContactCoverData.chosenCoverData T hv) hv.locallyOfFiniteType
      (MaxContactCoverData.balancedTunedIdeal T hv) (MaxContactCoverData.tunedMult T))
    (x : ↥(MaxContactCoverData.coverTriple T hv).scheme) :
    InStrictNormalCrossingPositionAt (MaxContactCoverData.coverTriple T hv).structMap
      [MaxContactCoverData.coverMaxContactIdeal T hv] x :=
  FunctorialResolution.EmbeddedResolution.inStrictNormalCrossingPositionAt_coverMaxContactIdeal T hv hgood (comap_coverMaxContactIdeal_coverPieceι T hv) x

theorem inStrictNormalCrossingPosition_of_isMaxContactCover
    (hgood : MaxContactReduction.IsMaxContactCover T (MaxContactCoverData.chosenCoverData T hv) hv.locallyOfFiniteType
      (MaxContactCoverData.balancedTunedIdeal T hv) (MaxContactCoverData.tunedMult T))
    (hsm : IsSmoothDivisor (MaxContactCoverData.coverTriple T hv).structMap
      (MaxContactCoverData.coverMaxContactIdeal T hv)) :
    InStrictNormalCrossingPosition (MaxContactCoverData.coverTriple T hv).structMap
      [MaxContactCoverData.coverMaxContactIdeal T hv] :=
  FunctorialResolution.EmbeddedResolution.inStrictNormalCrossingPosition_coverMaxContactIdeal T hv hgood (comap_coverMaxContactIdeal_coverPieceι T hv) hsm

end FunctorialResolution.EmbeddedResolution.MaxContactCoverGeometry

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.MaxContactCoverPieces =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.OrderBoundAlongSequence =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.OrderBoundAlongSequence", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.MarkedSequenceOfBlowups\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.ControlledTransformOrderBound\nimport Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.PowerContainmentAndOrderLocus\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.MarkedSequenceTransforms\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.MarkedBlowupSequence.IrreducibleComponentsAlongSequence\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

namespace FunctorialResolution.EmbeddedResolution

theorem orderAt_ideal_le_mult_along_sequence (T : MarkedIdealWithBoundary.{u}) (hT : T.IsAdmissible)
    (hord : ∀ x : ↥T.scheme, orderAt T.ideal x ≤ (T.mult : ℕ∞)) (s : T.SequenceOfBlowups) :
    ∀ (i : ℕ), i ≤ s.toSequenceOfBlowups.length →
      ∀ x : ↥(s.toSequenceOfBlowups.schemeAt i), orderAt (s.ideal i) x ≤ (T.mult : ℕ∞) := by
  have : CharZero T.base := hT.charZero
  intro i
  induction i with
  | zero =>
      intro _ x
      have : AlgebraicGeometry.IsOpenImmersion s.toSequenceOfBlowups.isoZero.hom := inferInstance
      rw [s.ideal_zero, orderAt_comap_of_isOpenImmersion]
      exact hord _
  | succ k ih =>
      intro hk x
      have hlt : k < s.toSequenceOfBlowups.length := hk
      have hprev := ih (le_of_lt hlt)
      have hnoeth : AlgebraicGeometry.IsNoetherian (s.toSequenceOfBlowups.schemeAt (k + 1)) :=
        MarkedSequenceOfBlowups.isNoetherian_schemeAt effectiveCartierSupportContainsNoComponent hT s (k + 1) hk
      have : AlgebraicGeometry.IsLocallyNoetherian (s.toSequenceOfBlowups.schemeAt (k + 1)) := inferInstance
      have hsmooth : AlgebraicGeometry.Smooth (s.projectionToSpec k) :=
        MarkedSequenceOfBlowups.smooth_projectionToSpec effectiveCartierSupportContainsNoComponent hT s k (le_of_lt hlt)
      have hS : HasStrictNormalCrossingsWith (s.projectionToSpec k) (s.toSequenceOfBlowups.center k) (s.boundary k) := by
        rw [MarkedSequenceOfBlowups.projectionToSpec_eq]
        exact s.center_snc k hlt
      have hI : s.ideal k ≤ s.toSequenceOfBlowups.center k ^ T.mult :=
        le_pow_of_hasStrictNormalCrossingsWith (s.projectionToSpec k) (s.toSequenceOfBlowups.center k) (s.ideal k)
          (s.boundary k) hS T.mult (s.center_order k hlt)
      have hEq : s.ideal (k + 1) =
          controlledTransform (s.toSequenceOfBlowups.transitionMapSucc k) (s.toSequenceOfBlowups.center k)
            (s.ideal k) T.mult (s.toSequenceOfBlowups.isBlowupAlongIdealSheaf_blowupMorphism k hlt) hI :=
        eq_controlledTransform_of_mul_eq_comap (s.toSequenceOfBlowups.transitionMapSucc k) (s.toSequenceOfBlowups.center k)
          (s.ideal k) T.mult (s.toSequenceOfBlowups.isBlowupAlongIdealSheaf_blowupMorphism k hlt) hI
          (s.ideal (k + 1)) (s.ideal_succ k hlt)
      rw [hEq]
      exact orderAt_controlledTransform_le_of_forall_le T.base (s.projectionToSpec k)
        (s.toSequenceOfBlowups.transitionMapSucc k) (s.toSequenceOfBlowups.center k) (s.boundary k) hS
        (s.toSequenceOfBlowups.isBlowupAlongIdealSheaf_blowupMorphism k hlt) (s.ideal k) T.mult hI hprev x

end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.OrderBoundAlongSequence =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.MaxContactStrictTransform =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.MaxContactStrictTransform", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.StrictTransform\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.MaxContactHypersurface\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.BlowupDerivativeIdealBound\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.ControlledTransformOrderBound\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.OrderAtGenericPoint\nimport Development.ResolutionOfSingularities.EmbeddedResolution.DerivativeIdeal.PowerContainmentAndOrderLocus\nimport Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.CoordinateDivisorSmoothness\nimport Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.SmoothCenterChart\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.StrictNormalCrossingsAddHypersurface\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.StrictNormalCrossingsChartNormalization\nimport Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.BlowupChartComputations\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.StrictTransformCharts.CoordinateDivisorBlowup\nimport Development.ResolutionOfSingularities.Foundations.Blowup.BlowupBasic\nimport Development.ResolutionOfSingularities.Foundations.Blowup.BlowupCoproduct\nimport Development.ResolutionOfSingularities.Foundations.Blowup.BlowupOpenCover\nimport Development.ResolutionOfSingularities.Foundations.Schemes.IdealSheafData\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IteratedBlowups.Saturation\n\n"}
section -- clump:auto
@[expose] public section

universe u

open AlgebraicGeometry CategoryTheory TopologicalSpace

namespace FunctorialResolution.EmbeddedResolution

section

variable (k : Type u) [Field k] {P₁ : Scheme.{u}} (q : P₁ ⟶ Spec (CommRingCat.of k))
  [LocallyOfFiniteType q]

def IsMaxContactHypersurfaceAt (A₁ : P₁.IdealSheafData) (m : ℕ) (H₁ : P₁.IdealSheafData) (x : P₁) : Prop :=
  ∃ U : P₁.Opens, IsAffineOpen U ∧ x ∈ U ∧
    ((Disjoint (orderAtLeastLocus A₁ m) (U : Set ↥P₁) ∧ restrictIdeal H₁ U = ⊤) ∨
      (∃ (n : ℕ) (c : EtaleChart q U n) (j : Fin n),
        restrictIdeal H₁ U = c.coordIdeal {j} ∧ IsMaxContactCoord k q A₁ m c j))

end

section

private theorem idealSheafData_eq_of_forall_ideal_eq {Y : Scheme.{u}} {A B : Y.IdealSheafData}
    (h : ∀ V : Y.affineOpens, A.ideal V = B.ideal V) : A = B :=
  Scheme.IdealSheafData.ext (funext h)

private theorem mul_le_right_idealSheafData {X : Scheme.{u}} (I J : X.IdealSheafData) :
    I * J ≤ J := by
  rw [le_iff_forall_stalkIdeal_le]
  intro x
  rw [stalkIdeal_mul]
  exact Ideal.mul_le.2 fun r _ s hs => Ideal.mul_mem_left _ _ hs

private theorem mul_le_left_idealSheafData {X : Scheme.{u}} (I J : X.IdealSheafData) :
    I * J ≤ I := by
  rw [le_iff_forall_stalkIdeal_le]
  intro x
  rw [stalkIdeal_mul]
  exact Ideal.mul_le.2 fun r hr s _ => Ideal.mul_mem_right _ _ hr

private theorem restrictIdeal_le_of_le_opens {X : Scheme.{u}} {I J : X.IdealSheafData}
    {U V : X.Opens} (hVU : V ≤ U) (h : restrictIdeal I U ≤ restrictIdeal J U) :
    restrictIdeal I V ≤ restrictIdeal J V := by
  have hI : ∀ K : X.IdealSheafData,
      restrictIdeal K V = (restrictIdeal K U).comap (X.homOfLE hVU) := by
    intro K
    rw [restrictIdeal_eq_comap_ι, restrictIdeal_eq_comap_ι, ← Scheme.IdealSheafData.comap_comp,
      Scheme.homOfLE_ι]
  rw [hI I, hI J]
  exact Scheme.IdealSheafData.comap_mono _ h

private theorem saturation_of_eq_top {Y : Scheme.{u}} (F T : Y.IdealSheafData)
    (hqc : QuasiCompact (saturationι F T)) (hF : F = ⊤) :
    saturation F T = T := by
  have := hqc
  refine idealSheafData_eq_of_forall_ideal_eq (fun V => ?_)
  refine saturation_ideal_eq_of_isUnit F T V 1 ?_ isUnit_one
  rw [hF]
  simp

private theorem restrictIdeal_strictTransform_eq_of_comap_eq_top {P P₁ : Scheme.{u}} (π : P₁ ⟶ P)
    (Z H : P.IdealSheafData) [QuasiCompact (strictTransformι π Z H)] (V : P.Opens)
    (hZtop : Z.comap ((π ⁻¹ᵁ V).ι ≫ π) = ⊤) :
    restrictIdeal (Blowup.strictTransform π Z H) (π ⁻¹ᵁ V) = restrictIdeal (H.comap π) (π ⁻¹ᵁ V) := by
  have hqc : QuasiCompact (saturationι (Z.comap ((π ⁻¹ᵁ V).ι ≫ π))
      (H.comap ((π ⁻¹ᵁ V).ι ≫ π))) := by
    rw [← strictTransformι_eq_saturationι]
    exact quasiCompact_strictTransformι_comp_ι π Z H (π ⁻¹ᵁ V)
  have hsat : Blowup.strictTransform ((π ⁻¹ᵁ V).ι ≫ π) Z H = H.comap ((π ⁻¹ᵁ V).ι ≫ π) := by
    rw [strictTransform_eq_saturation]
    exact saturation_of_eq_top _ _ hqc hZtop
  rw [restrictIdeal_strictTransform π Z H (π ⁻¹ᵁ V), hsat, restrictIdeal_eq_comap_ι,
    Scheme.IdealSheafData.comap_comp]

private noncomputable def etaleChartPullbackOfIsIso {P P₁ : Scheme.{u}} {k : Type u} [Field k]
    {p : P ⟶ Spec (CommRingCat.of k)} (π : P₁ ⟶ P) {V : P.Opens} {n : ℕ}
    (c : EtaleChart p V n) [IsIso (π ∣_ V)] : EtaleChart (π ≫ p) (π ⁻¹ᵁ V) n where
  map := (π ∣_ V) ≫ c.map
  comp_struct := by
    rw [Category.assoc, c.comp_struct, ← Category.assoc, morphismRestrict_ι, Category.assoc]
  isEtale := by
    have := c.isEtale
    infer_instance

private theorem pullbackChartIso_coordIdeal {P P₁ : Scheme.{u}} {k : Type u} [Field k]
    {p : P ⟶ Spec (CommRingCat.of k)} (π : P₁ ⟶ P) {V : P.Opens} {n : ℕ}
    (c : EtaleChart p V n) [IsIso (π ∣_ V)] (T : Finset (Fin n)) :
    (etaleChartPullbackOfIsIso π c).coordIdeal T = (c.coordIdeal T).comap (π ∣_ V) := by
  rw [EtaleChart.coordIdeal_eq_comap_coordSubspaceIdeal, EtaleChart.coordIdeal_eq_comap_coordSubspaceIdeal]
  show (coordSubspaceIdeal k n T).comap ((π ∣_ V) ≫ c.map) = _
  rw [Scheme.IdealSheafData.comap_comp]

private theorem exists_etaleChart_of_isMaxContactHypersurface {k : Type u} [Field k]
    {X : Scheme.{u}} (p : X ⟶ Spec (CommRingCat.of k)) [LocallyOfFiniteType p]
    [AlgebraicGeometry.Smooth p] (A : X.IdealSheafData) (μ : ℕ) (H : X.IdealSheafData)
    (hH : IsMaxContactHypersurface k p A μ H) (x : X) :
    ∃ (U : X.Opens) (_ : x ∈ U) (n : ℕ) (c : EtaleChart p U n),
      restrictIdeal H U = ⊤ ∨ ∃ j, restrictIdeal H U = c.coordIdeal {j} := by
  obtain ⟨U, hU, hxU, hcase⟩ := hH x
  rcases hcase with ⟨-, htop⟩ | ⟨n, c, j, hHU, -⟩
  · obtain ⟨V, nV, hxV, hVU, hVaff, ⟨cV⟩⟩ := exists_etaleChart_le p x U hxU
    exact ⟨V, hxV, nV, cV, Or.inl (restrictIdeal_eq_top_of_le H hVU htop)⟩
  · exact ⟨U, hxU, n, c, Or.inr ⟨j, hHU⟩⟩

private theorem inStrictNormalCrossingPosition_singleton_of_isMaxContactHypersurface {k : Type u} [Field k] {X : Scheme.{u}}
    (p : X ⟶ Spec (CommRingCat.of k)) [LocallyOfFiniteType p] [AlgebraicGeometry.Smooth p]
    (A : X.IdealSheafData) (μ : ℕ) (H : X.IdealSheafData)
    (hH : IsMaxContactHypersurface k p A μ H) :
    InStrictNormalCrossingPosition p [H] := by
  rw [inStrictNormalCrossingPosition_iff]
  constructor
  · intro D hD
    simp only [List.mem_singleton] at hD
    subst hD
    exact isSmoothDivisor_of_locally_coordIdeal D
      (fun x => exists_etaleChart_of_isMaxContactHypersurface p A μ D hH x)
  · intro x
    refine inStrictNormalCrossingPositionAt_of_exists_etaleChart ?_
    obtain ⟨U, hxU, n, c, hcase⟩ := exists_etaleChart_of_isMaxContactHypersurface p A μ H hH x
    rcases hcase with htop | ⟨j, hj⟩
    · refine ⟨U, hxU, n, c, (fun _ => none), ?_, ?_, ?_⟩
      · intro i _ i' _ t h1 _
        simp at h1
      · intro i hi _
        have hi0 : i = 0 := Nat.lt_one_iff.mp hi
        subst hi0
        simpa using htop
      · intro i _ t h
        simp at h
    · refine ⟨U, hxU, n, c, (fun i => match i with | 0 => some j | _ => none), ?_, ?_, ?_⟩
      · intro i hi i' hi' t _ _
        have e1 : i = 0 := Nat.lt_one_iff.mp hi
        have e2 : i' = 0 := Nat.lt_one_iff.mp hi'
        omega
      · intro i hi h
        have hi0 : i = 0 := Nat.lt_one_iff.mp hi
        subst hi0
        exact absurd (show (some j : Option (Fin n)) = none from h) (by simp)
      · intro i hi t h
        have hi0 : i = 0 := Nat.lt_one_iff.mp hi
        subst hi0
        have hjt : j = t := Option.some.inj (show (some j : Option (Fin n)) = some t from h)
        subst hjt
        simpa using hj

theorem comap_maxContactIdeal_le_exceptionalIdeal_mul (k : Type u) [Field k] [CharZero k] {P P₁ : Scheme.{u}}
    (p : P ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.Smooth p] [LocallyOfFiniteType p]
    (π : P₁ ⟶ P) [IsLocallyNoetherian P₁] [AlgebraicGeometry.Smooth (π ≫ p)]
    [LocallyOfFiniteType (π ≫ p)] (Z : P.IdealSheafData) (E : List P.IdealSheafData)
    (hZ : HasStrictNormalCrossingsWith p Z E) (hπ : Blowup.IsBlowupAlongIdealSheaf π Z) (A : P.IdealSheafData) (A₁ : P₁.IdealSheafData)
    (μ : ℕ) (hμ : 1 ≤ μ) (hA : A ≤ Z ^ μ)
    (htr : Blowup.exceptionalIdeal π Z ^ μ * A₁ = A.comap π) :
    (maxContactIdeal k p A μ).comap π ≤
      Blowup.exceptionalIdeal π Z * maxContactIdeal k (π ≫ p) A₁ μ := by
  have hA1 : controlledTransform π Z A μ hπ hA = A₁ :=
    (eq_controlledTransform_of_mul_eq_comap π Z A μ hπ hA A₁ htr).symm
  have h : (derivIdealSheafIterate k p (μ - 1) A).comap π ≤
      Blowup.exceptionalIdeal π Z ^ (μ - (μ - 1)) *
        derivIdealSheafIterate k (π ≫ p) (μ - 1) (controlledTransform π Z A μ hπ hA) :=
    comap_derivIdealSheafIterate_le_exceptionalIdeal_pow_mul k p π Z E hZ hπ A μ hA (μ - 1)
      (Nat.sub_le μ 1)
  rw [hA1] at h
  have hμ1 : μ - (μ - 1) = 1 := by omega
  rw [hμ1, pow_one] at h
  rw [maxContactIdeal_eq_derivIdealSheafIterate, maxContactIdeal_eq_derivIdealSheafIterate]
  exact h

theorem mem_orderAtLeastLocus_base_of_mem_orderAtLeastLocus_transform (k : Type u) [Field k] [CharZero k]
    {P P₁ : Scheme.{u}} (p : P ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.Smooth p]
    [LocallyOfFiniteType p] (π : P₁ ⟶ P) [IsLocallyNoetherian P₁]
    [AlgebraicGeometry.Smooth (π ≫ p)] [LocallyOfFiniteType (π ≫ p)] (Z : P.IdealSheafData)
    (E : List P.IdealSheafData) (hZ : HasStrictNormalCrossingsWith p Z E) (hπ : Blowup.IsBlowupAlongIdealSheaf π Z)
    (A : P.IdealSheafData) (A₁ : P₁.IdealSheafData) (μ : ℕ) (hμ : 1 ≤ μ) (hA : A ≤ Z ^ μ)
    (htr : Blowup.exceptionalIdeal π Z ^ μ * A₁ = A.comap π) (y : P₁) (hy : y ∈ orderAtLeastLocus A₁ μ) :
    π.base y ∈ orderAtLeastLocus A μ := by
  by_contra hcon
  have hsucc : μ - 1 + 1 = μ := by omega
  have hz : orderAt A (π.base y) ≤ ((μ - 1 : ℕ) : ℕ∞) := by
    rw [orderAt_le_iff_notMem_orderAtLeastLocus, hsucc]
    exact hcon
  have hA' : A ≤ Z ^ (μ - 1) := by
    refine le_trans hA ?_
    have hpow : Z ^ μ = Z ^ (μ - 1) * Z := by
      rw [← pow_succ]
      congr 1
      omega
    rw [hpow]
    exact mul_le_left_idealSheafData _ _
  have hEA : Blowup.exceptionalIdeal π Z * A₁ = controlledTransform π Z A (μ - 1) hπ hA' := by
    refine eq_controlledTransform_of_mul_eq_comap π Z A (μ - 1) hπ hA' _ ?_
    calc Blowup.exceptionalIdeal π Z ^ (μ - 1) * (Blowup.exceptionalIdeal π Z * A₁)
        = Blowup.exceptionalIdeal π Z ^ (μ - 1 + 1) * A₁ := by rw [pow_succ, mul_assoc]
      _ = A.comap π := by rw [hsucc]; exact htr
  have h1 := orderAt_controlledTransform_le k p π Z E hZ hπ A (μ - 1) hA' (π.base y) hz y rfl
  rw [← hEA] at h1
  have hle : Blowup.exceptionalIdeal π Z * A₁ ≤ A₁ := mul_le_right_idealSheafData _ _
  have h2 : orderAt A₁ y ≤ ((μ - 1 : ℕ) : ℕ∞) := le_trans (orderAt_le_of_le hle y) h1
  rw [orderAt_le_iff_notMem_orderAtLeastLocus, hsucc] at h2
  exact h2 hy

theorem le_center_of_isMaxContactHypersurface (k : Type u) [Field k] [CharZero k]
    {P : Scheme.{u}} (p : P ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.Smooth p]
    [LocallyOfFiniteType p] (Z : P.IdealSheafData) (E : List P.IdealSheafData)
    (hZ : HasStrictNormalCrossingsWith p Z E) (A : P.IdealSheafData) (μ : ℕ) (hμ : 1 ≤ μ)
    (hsupp : (Z.support : Set ↥P) ⊆ orderAtLeastLocus A μ) (H : P.IdealSheafData)
    (hH : IsMaxContactHypersurface k p A μ H) :
    H ≤ Z := by
  have h1 : (Z.support : Set ↥P) ⊆ (H.support : Set ↥P) :=
    hsupp.trans (hH.orderAtLeastLocus_subset_support hμ)
  have h2 : (Z.support : Set ↥P) ⊆ orderAtLeastLocus H 1 := by
    intro x hx
    rw [mem_orderAtLeastLocus_one_iff]
    exact h1 hx
  have h3 := le_pow_of_hasStrictNormalCrossingsWith p Z H E hZ 1 h2
  rwa [pow_one] at h3

theorem isMaxContactHypersurfaceAt_strictTransform_of_etaleChart (k : Type u) [Field k] [CharZero k]
    {P P₁ : Scheme.{u}} (p : P ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.Smooth p]
    [LocallyOfFiniteType p] (π : P₁ ⟶ P) [IsLocallyNoetherian P₁]
    [AlgebraicGeometry.Smooth (π ≫ p)] [LocallyOfFiniteType (π ≫ p)] (Z : P.IdealSheafData)
    (E : List P.IdealSheafData) (hZ : HasStrictNormalCrossingsWith p Z E) (hπ : Blowup.IsBlowupAlongIdealSheaf π Z)
    (A : P.IdealSheafData) (A₁ : P₁.IdealSheafData) (μ : ℕ) (hμ : 1 ≤ μ) (hA : A ≤ Z ^ μ)
    (htr : Blowup.exceptionalIdeal π Z ^ μ * A₁ = A.comap π) (H : P.IdealSheafData)
    [QuasiCompact (strictTransformι π Z H)] {U' : P.Opens} (hU' : IsAffineOpen U')
    {m : ℕ} (c : EtaleChart p U' m) (S : Finset (Fin m)) (j₀ : Fin m) (hj₀ : j₀ ∈ S)
    (hZU : restrictIdeal Z U' = c.coordIdeal S)
    (hHU : restrictIdeal H U' = c.coordIdeal {j₀})
    (hcoord : c.coord j₀ ∈ (maxContactIdeal k p A μ).ideal ⟨U', hU'⟩)
    (x₁ : P₁) (hx₁ : x₁ ∈ π ⁻¹ᵁ U') :
    IsMaxContactHypersurfaceAt k (π ≫ p) A₁ μ (Blowup.strictTransform π Z H) x₁ := by
  classical
  obtain ⟨s, hs, hx₁D⟩ := exists_mem_domain_blowupChart_of_isBlowupAlongIdealSheaf π c S hπ hZU x₁ hx₁
  set B := blowupChartOfIsBlowup π c S hπ hZU s hs with hBdef
  obtain ⟨V, _, hxV, hVD, hVaff, -⟩ :=
    exists_etaleChart_le (π ≫ p) x₁ B.domain hx₁D
  have hE : restrictIdeal (Blowup.exceptionalIdeal π Z) B.domain = B.chart.coordIdeal {s} :=
    B.restrictIdeal_exceptionalIdeal Z hs hZU
  have hcart : Blowup.IsLocallyGeneratedByNonZeroDivisor (B.chart.coordIdeal {s}) := by
    refine isLocallyGeneratedByNonZeroDivisor_of_locally_coordIdeal (p := B.domain.ι ≫ (π ≫ p)) _ (fun x => ?_)
    exact ⟨⊤, trivial, m, B.chart.restrictOpens ⊤,
      Or.inr ⟨s, B.chart.restrictIdeal_coordIdeal ⊤ {s}⟩⟩
  have key : restrictIdeal (H.comap π) B.domain ≤
      B.chart.coordIdeal {s} * restrictIdeal (maxContactIdeal k (π ≫ p) A₁ μ) B.domain := by
    have h1 : restrictIdeal (H.comap π) B.domain
        ≤ restrictIdeal ((maxContactIdeal k p A μ).comap π) B.domain := by
      rw [B.restrictIdeal_comap H, B.restrictIdeal_comap (maxContactIdeal k p A μ)]
      refine Scheme.IdealSheafData.comap_mono _ ?_
      rw [hHU]
      exact (coordIdeal_singleton_le_restrictIdeal_iff k p hU' c j₀
        (maxContactIdeal k p A μ)).2 hcoord
    have h2 : restrictIdeal ((maxContactIdeal k p A μ).comap π) B.domain ≤
        restrictIdeal (Blowup.exceptionalIdeal π Z * maxContactIdeal k (π ≫ p) A₁ μ) B.domain :=
      Scheme.IdealSheafData.comap_mono _
        (comap_maxContactIdeal_le_exceptionalIdeal_mul k p π Z E hZ hπ A A₁ μ hμ hA htr)
    have hmul : restrictIdeal (Blowup.exceptionalIdeal π Z * maxContactIdeal k (π ≫ p) A₁ μ) B.domain =
        restrictIdeal (Blowup.exceptionalIdeal π Z) B.domain *
          restrictIdeal (maxContactIdeal k (π ≫ p) A₁ μ) B.domain :=
      Scheme.IdealSheafData.comap_mul _ _ _
    rw [hmul, hE] at h2
    exact h1.trans h2
  by_cases hj : j₀ = s
  · have hHU' : restrictIdeal H U' = c.coordIdeal {s} := by rw [hHU, hj]
    have hcomap : restrictIdeal (H.comap π) B.domain = B.chart.coordIdeal {s} :=
      B.restrictIdeal_comap_coordIdeal_self H hHU'
    have hST : restrictIdeal (Blowup.strictTransform π Z H) B.domain = ⊤ :=
      B.restrictIdeal_strictTransform_coordIdeal_self Z H hs hZU hHU'
    have htop : restrictIdeal (maxContactIdeal k (π ≫ p) A₁ μ) B.domain = ⊤ := by
      refine top_le_iff.1 (hcart.le_of_mul_le_mul ?_)
      rw [Scheme.IdealSheafData.mul_top]
      exact le_trans (le_of_eq hcomap.symm) key
    have hdisj : Disjoint (orderAtLeastLocus A₁ μ) ((V : Set ↥P₁)) := by
      rw [Set.disjoint_left]
      intro x hxc hxV
      have hx1 : x ∈ (maxContactIdeal k (π ≫ p) A₁ μ).support :=
        mem_support_maxContactIdeal_of_mem_orderAtLeastLocus k (π ≫ p) A₁ hμ hxc
      exact notMem_support_of_mem_opens_of_restrictIdeal_eq_top _ B.domain htop x (hVD hxV) hx1
    exact ⟨V, hVaff, hxV, Or.inl ⟨hdisj, restrictIdeal_eq_top_of_le _ hVD hST⟩⟩
  · have hcomap : restrictIdeal (H.comap π) B.domain =
        B.chart.coordIdeal {j₀} * B.chart.coordIdeal {s} :=
      B.restrictIdeal_comap_coordIdeal_of_mem H j₀ hj₀ hj hHU
    have hST : restrictIdeal (Blowup.strictTransform π Z H) B.domain = B.chart.coordIdeal {j₀} :=
      B.restrictIdeal_strictTransform_of_mem_of_ne Z H hs hZU j₀ hj₀ hj hHU
    have hmc : B.chart.coordIdeal {j₀} ≤
        restrictIdeal (maxContactIdeal k (π ≫ p) A₁ μ) B.domain := by
      refine hcart.le_of_mul_le_mul ?_
      rw [mul_comm (B.chart.coordIdeal {s}) (B.chart.coordIdeal {j₀})]
      exact le_trans (le_of_eq hcomap.symm) key
    have hSTV : restrictIdeal (Blowup.strictTransform π Z H) V =
        (B.chart.restrict hVD).coordIdeal {j₀} :=
      restrictIdeal_eq_restrict_coordIdeal_of_le hVD B.chart (Blowup.strictTransform π Z H) {j₀} hST
    refine ⟨V, hVaff, hxV, Or.inr ⟨m, B.chart.restrict hVD, j₀, hSTV, ?_⟩⟩
    show (B.chart.restrict hVD).coordIdeal {j₀} ≤
      restrictIdeal (maxContactIdeal k (π ≫ p) A₁ μ) V
    have h4 : restrictIdeal (Blowup.strictTransform π Z H) B.domain ≤
        restrictIdeal (maxContactIdeal k (π ≫ p) A₁ μ) B.domain := by
      rw [hST]; exact hmc
    have h5 := restrictIdeal_le_of_le_opens hVD h4
    rw [← hSTV]
    exact h5

theorem isMaxContactHypersurfaceAt_strictTransform_of_mem_support (k : Type u) [Field k] [CharZero k]
    {P P₁ : Scheme.{u}} (p : P ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.Smooth p]
    [LocallyOfFiniteType p] (π : P₁ ⟶ P) [IsLocallyNoetherian P₁]
    [AlgebraicGeometry.Smooth (π ≫ p)] [LocallyOfFiniteType (π ≫ p)] (Z : P.IdealSheafData)
    (E : List P.IdealSheafData) (hZ : HasStrictNormalCrossingsWith p Z E) (hπ : Blowup.IsBlowupAlongIdealSheaf π Z)
    (A : P.IdealSheafData) (A₁ : P₁.IdealSheafData) (μ : ℕ) (hμ : 1 ≤ μ)
    (hsupp : (Z.support : Set ↥P) ⊆ orderAtLeastLocus A μ) (hA : A ≤ Z ^ μ)
    (htr : Blowup.exceptionalIdeal π Z ^ μ * A₁ = A.comap π) (H : P.IdealSheafData)
    [QuasiCompact (strictTransformι π Z H)]
    (hH : IsMaxContactHypersurface k p A μ H) (x₁ : P₁) (hx₁ : π.base x₁ ∈ Z.support) :
    IsMaxContactHypersurfaceAt k (π ≫ p) A₁ μ (Blowup.strictTransform π Z H) x₁ := by
  classical
  have hzA : π.base x₁ ∈ orderAtLeastLocus A μ := hsupp hx₁
  have hsm : AlgebraicGeometry.Smooth (Z.subschemeι ≫ p) :=
    smooth_subschemeι_comp_of_hasStrictNormalCrossingsWith Z E hZ
  have hZnil : HasStrictNormalCrossingsWith p Z ([] : List P.IdealSheafData) := hasStrictNormalCrossingsWith_nil_of_smooth p Z
  have hHZ : H ≤ Z := le_center_of_isMaxContactHypersurface k p Z E hZ A μ hμ hsupp H hH
  have hsnc : InStrictNormalCrossingPosition p (H :: ([] : List P.IdealSheafData)) :=
    inStrictNormalCrossingPosition_singleton_of_isMaxContactHypersurface p A μ H hH
  obtain ⟨U, hU, hzU, m, c, lab, S, m', c', j0, lab', hZU, hHU, hlab, _, hlab', hj0⟩ :=
    exists_etaleCharts_of_inStrictNormalCrossingPosition_cons p Z H [] hsnc hZnil hHZ (π.base x₁) hx₁
  have hSprime : ∀ i ∈ S, c.coord i ∈ (hU.primeIdealOf ⟨π.base x₁, hzU⟩).asIdeal := by
    intro i hi
    have h1 : Z.ideal ⟨U, hU⟩ = Ideal.span (c.coord '' (S : Set (Fin m))) :=
      c.ideal_eq_span_coord hU Z S hZU
    have h2 : c.coord i ∈ Z.ideal ⟨U, hU⟩ := by
      rw [h1]
      exact Ideal.subset_span ⟨i, hi, rfl⟩
    exact ideal_le_primeIdealOf Z hU hzU hx₁ h2
  obtain ⟨a, hcoeff, j, hjS, haj, -⟩ :=
    exists_coord_eq_sum_coeff_not_mem_of_le p hU hzU c lab S c' j0 lab' Z H [] hx₁ hlab hZU hHU hlab'
      hj0 hHZ
  obtain ⟨V, hV, hVU, hzV, cV, hcne, hcj, huj⟩ :=
    exists_etaleChart_update_coord p hU c hzU S a j hjS hSprime haj
  have hZV : restrictIdeal Z V = cV.coordIdeal S := by
    refine restrictIdeal_eq_coordIdeal_of_ideal_eq_span hV cV Z S ?_
    have h1 : Z.ideal ⟨U, hU⟩ = Ideal.span (c.coord '' (S : Set (Fin m))) :=
      c.ideal_eq_span_coord hU Z S hZU
    have h2 := ideal_eq_span_image_map_of_le Z hU hV hVU (c.coord '' (S : Set (Fin m))) h1
    rw [h2, Set.image_image]
    rw [← span_image_update_sum_eq
      (fun i => (P.presheaf.map (homOfLE hVU).op).hom (c.coord i)) S
      (fun i => (P.presheaf.map (homOfLE hVU).op).hom (a i)) j hjS huj]
    congr 1
    refine Set.image_congr ?_
    intro i hi
    by_cases hij : i = j
    · subst hij

      rw [Function.update_self, hcj, map_sum]
      exact Finset.sum_congr rfl (fun t _ => (map_mul _ _ _).symm)
    · rw [Function.update_of_ne hij, hcne i hij]
  have hHV : restrictIdeal H V = cV.coordIdeal {j} := by
    refine restrictIdeal_eq_coordIdeal_of_ideal_eq_span hV cV H {j} ?_
    have h1 : H.ideal ⟨U, hU⟩ =
        Ideal.span (c'.coord '' ((({j0} : Finset (Fin m')) : Set (Fin m')))) :=
      c'.ideal_eq_span_coord hU H {j0} hHU
    have h2 := ideal_eq_span_image_map_of_le H hU hV hVU _ h1
    have hone : (P.presheaf.map (homOfLE hVU).op).hom (c'.coord j0) = cV.coord j := by
      rw [hcoeff, hcj]
    rw [h2]
    simp only [Finset.coe_singleton, Set.image_singleton, hone]
  obtain ⟨W, hW, hzW, hcase⟩ := hH (π.base x₁)
  have hHmc : restrictIdeal H W ≤ restrictIdeal (maxContactIdeal k p A μ) W := by
    rcases hcase with ⟨hdisj, -⟩ | ⟨nW, cW, jW, hHW, hmcW⟩
    · exact absurd hzW (Set.disjoint_left.mp hdisj hzA)
    · rw [hHW]
      exact hmcW
  obtain ⟨V', _, hzV', hV'le, hV'aff, -⟩ :=
    exists_etaleChart_le p (π.base x₁) (V ⊓ W) ⟨hzV, hzW⟩
  have hV'V : V' ≤ V := fun y hy => (hV'le hy).1
  have hV'W : V' ≤ W := fun y hy => (hV'le hy).2
  have hZV' : restrictIdeal Z V' = (cV.restrict hV'V).coordIdeal S :=
    restrictIdeal_eq_restrict_coordIdeal_of_le hV'V cV Z S hZV
  have hHV' : restrictIdeal H V' = (cV.restrict hV'V).coordIdeal {j} :=
    restrictIdeal_eq_restrict_coordIdeal_of_le hV'V cV H {j} hHV
  have hcoordmem : (cV.restrict hV'V).coord j ∈ (maxContactIdeal k p A μ).ideal ⟨V', hV'aff⟩ := by
    refine (coordIdeal_singleton_le_restrictIdeal_iff k p hV'aff (cV.restrict hV'V) j
      (maxContactIdeal k p A μ)).1 ?_
    rw [← hHV']
    exact restrictIdeal_le_of_le_opens hV'W hHmc
  exact isMaxContactHypersurfaceAt_strictTransform_of_etaleChart k p π Z E hZ hπ A A₁ μ hμ hA htr H
    hV'aff (cV.restrict hV'V) S j hjS hZV' hHV' hcoordmem x₁ hzV'

theorem isMaxContactHypersurfaceAt_strictTransform_of_notMem_support (k : Type u) [Field k] [CharZero k]
    {P P₁ : Scheme.{u}} (p : P ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.Smooth p]
    [LocallyOfFiniteType p] (π : P₁ ⟶ P) [IsLocallyNoetherian P₁]
    [AlgebraicGeometry.Smooth (π ≫ p)] [LocallyOfFiniteType (π ≫ p)] (Z : P.IdealSheafData)
    (E : List P.IdealSheafData) (hZ : HasStrictNormalCrossingsWith p Z E) (hπ : Blowup.IsBlowupAlongIdealSheaf π Z)
    (A : P.IdealSheafData) (A₁ : P₁.IdealSheafData) (μ : ℕ) (hμ : 1 ≤ μ) (hA : A ≤ Z ^ μ)
    (htr : Blowup.exceptionalIdeal π Z ^ μ * A₁ = A.comap π) (H : P.IdealSheafData)
    [QuasiCompact (strictTransformι π Z H)]
    (hH : IsMaxContactHypersurface k p A μ H) (x₁ : P₁) (hx₁ : π.base x₁ ∉ Z.support) :
    IsMaxContactHypersurfaceAt k (π ≫ p) A₁ μ (Blowup.strictTransform π Z H) x₁ := by
  classical
  obtain ⟨U, hU, hxU, hcase⟩ := hH (π.base x₁)
  have hxc : π.base x₁ ∈ Z.support.compl := hx₁
  obtain ⟨V, _, hxV, hVle, hVaff, -⟩ :=
    exists_etaleChart_le p (π.base x₁) (U ⊓ Z.support.compl) ⟨hxU, hxc⟩
  have hVU : V ≤ U := fun y hy => (hVle hy).1
  have hx₁V : x₁ ∈ π ⁻¹ᵁ V := hxV
  have hrestrict : ∀ K : P.IdealSheafData,
      restrictIdeal (K.comap π) (π ⁻¹ᵁ V) = (restrictIdeal K V).comap (π ∣_ V) := by
    intro K
    rw [restrictIdeal_eq_comap_ι, restrictIdeal_eq_comap_ι, ← Scheme.IdealSheafData.comap_comp,
      ← Scheme.IdealSheafData.comap_comp, morphismRestrict_ι]
  have hZtop : Z.comap ((π ⁻¹ᵁ V).ι ≫ π) = ⊤ := by
    rw [Scheme.IdealSheafData.comap_comp]
    refine Blowup.comap_eq_top_of_notMem_support _ (Z.comap π) (fun y => ?_)
    show (y.1 : ↥P₁) ∉ (Z.comap π).support
    have hy : π.base y.1 ∈ V := y.2
    rw [Scheme.IdealSheafData.support_comap]
    exact (hVle hy).2
  have hST : restrictIdeal (Blowup.strictTransform π Z H) (π ⁻¹ᵁ V) =
      restrictIdeal (H.comap π) (π ⁻¹ᵁ V) :=
    restrictIdeal_strictTransform_eq_of_comap_eq_top π Z H V hZtop
  rcases hcase with ⟨hdisj, hHtop⟩ | ⟨n, c, j₀, hHU, hmc⟩
  · obtain ⟨V₁, _, hx₁V₁, hV₁le, hV₁aff, -⟩ :=
      exists_etaleChart_le (π ≫ p) x₁ (π ⁻¹ᵁ V) hx₁V
    refine ⟨V₁, hV₁aff, hx₁V₁, Or.inl ⟨?_, ?_⟩⟩
    · rw [Set.disjoint_left]
      intro y hy hyV
      have h1 : π.base y ∈ orderAtLeastLocus A μ :=
        mem_orderAtLeastLocus_base_of_mem_orderAtLeastLocus_transform k p π Z E hZ hπ A A₁ μ hμ hA htr y hy
      have h2 : π.base y ∈ V := hV₁le hyV
      exact (Set.disjoint_left.mp hdisj h1) (hVU h2)
    · have h3 : restrictIdeal (H.comap π) (π ⁻¹ᵁ V) = ⊤ :=
        restrictIdeal_comap_preimage_eq_top π V H (restrictIdeal_eq_top_of_le H hVU hHtop)
      have h4 : restrictIdeal (Blowup.strictTransform π Z H) (π ⁻¹ᵁ V) = ⊤ := by rw [hST, h3]
      exact restrictIdeal_eq_top_of_le _ hV₁le h4
  · have hHV : restrictIdeal H V = (c.restrict hVU).coordIdeal {j₀} :=
      restrictIdeal_eq_restrict_coordIdeal_of_le hVU c H {j₀} hHU
    have hZV : Z.comap V.ι = ⊤ := by
      refine Blowup.comap_eq_top_of_notMem_support V.ι Z (fun y => ?_)
      show (y.1 : ↥P) ∉ Z.support
      exact (hVle y.2).2
    have hbiso : IsIso (π ∣_ V) := by
      have hb := hπ.restrict V
      rw [hZV] at hb
      exact hb.isIso_of_top
    have hSTV : restrictIdeal (Blowup.strictTransform π Z H) (π ⁻¹ᵁ V) =
        (etaleChartPullbackOfIsIso π (c.restrict hVU)).coordIdeal {j₀} := by
      rw [hST, hrestrict H, hHV, pullbackChartIso_coordIdeal]
    have hmcV : (etaleChartPullbackOfIsIso π (c.restrict hVU)).coordIdeal {j₀} ≤
        restrictIdeal (maxContactIdeal k (π ≫ p) A₁ μ) (π ⁻¹ᵁ V) := by
      have h1 : restrictIdeal H V ≤ restrictIdeal (maxContactIdeal k p A μ) V := by
        refine restrictIdeal_le_of_le_opens hVU ?_
        rw [hHU]
        exact hmc
      have h2 : (etaleChartPullbackOfIsIso π (c.restrict hVU)).coordIdeal {j₀} ≤
          restrictIdeal ((maxContactIdeal k p A μ).comap π) (π ⁻¹ᵁ V) := by
        rw [pullbackChartIso_coordIdeal, hrestrict (maxContactIdeal k p A μ), ← hHV]
        exact Scheme.IdealSheafData.comap_mono _ h1
      refine h2.trans ?_
      refine Scheme.IdealSheafData.comap_mono _ ?_
      refine le_trans (comap_maxContactIdeal_le_exceptionalIdeal_mul k p π Z E hZ hπ A A₁ μ hμ hA htr) ?_
      exact mul_le_right_idealSheafData _ _
    obtain ⟨V₁, _, hx₁V₁, hV₁le, hV₁aff, -⟩ :=
      exists_etaleChart_le (π ≫ p) x₁ (π ⁻¹ᵁ V) hx₁V
    have hSTV₁ : restrictIdeal (Blowup.strictTransform π Z H) V₁ =
        ((etaleChartPullbackOfIsIso π (c.restrict hVU)).restrict hV₁le).coordIdeal {j₀} :=
      restrictIdeal_eq_restrict_coordIdeal_of_le hV₁le (etaleChartPullbackOfIsIso π (c.restrict hVU))
        (Blowup.strictTransform π Z H) {j₀} hSTV
    refine ⟨V₁, hV₁aff, hx₁V₁,
      Or.inr ⟨n, (etaleChartPullbackOfIsIso π (c.restrict hVU)).restrict hV₁le, j₀, hSTV₁, ?_⟩⟩
    show ((etaleChartPullbackOfIsIso π (c.restrict hVU)).restrict hV₁le).coordIdeal {j₀} ≤
      restrictIdeal (maxContactIdeal k (π ≫ p) A₁ μ) V₁
    have h4 : restrictIdeal (Blowup.strictTransform π Z H) (π ⁻¹ᵁ V) ≤
        restrictIdeal (maxContactIdeal k (π ≫ p) A₁ μ) (π ⁻¹ᵁ V) := by
      rw [hSTV]
      exact hmcV
    have h5 := restrictIdeal_le_of_le_opens hV₁le h4
    rw [← hSTV₁]
    exact h5

theorem isMaxContactHypersurface_strictTransform_of_quasiCompact (k : Type u) [Field k]
    [CharZero k] {P P₁ : Scheme.{u}} (p : P ⟶ Spec (CommRingCat.of k))
    [AlgebraicGeometry.Smooth p] [LocallyOfFiniteType p] (π : P₁ ⟶ P) [IsLocallyNoetherian P₁]
    [LocallyOfFiniteType (π ≫ p)] (Z : P.IdealSheafData) (E : List P.IdealSheafData)
    (hZ : HasStrictNormalCrossingsWith p Z E) (hπ : Blowup.IsBlowupAlongIdealSheaf π Z) (A : P.IdealSheafData)
    (A₁ : P₁.IdealSheafData) (μ : ℕ) (hμ : 1 ≤ μ)
    (hsupp : (Z.support : Set ↥P) ⊆ orderAtLeastLocus A μ)
    (htr : Blowup.exceptionalIdeal π Z ^ μ * A₁ = A.comap π) (H : P.IdealSheafData)
    [QuasiCompact (strictTransformι π Z H)]
    (hH : IsMaxContactHypersurface k p A μ H) :
    IsMaxContactHypersurface k (π ≫ p) A₁ μ (Blowup.strictTransform π Z H) := by
  have : AlgebraicGeometry.Smooth (π ≫ p) := smooth_comp_of_isBlowupAlongIdealSheaf hZ hπ
  have hA : A ≤ Z ^ μ := le_pow_of_hasStrictNormalCrossingsWith p Z A E hZ μ hsupp
  intro x₁
  by_cases hx : π.base x₁ ∈ Z.support
  · exact isMaxContactHypersurfaceAt_strictTransform_of_mem_support k p π Z E hZ hπ A A₁ μ hμ hsupp hA
      htr H hH x₁ hx
  · exact isMaxContactHypersurfaceAt_strictTransform_of_notMem_support k p π Z E hZ hπ A A₁ μ hμ hA
      htr H hH x₁ hx

theorem isMaxContactHypersurface_strictTransform_of_orderAt_le (k : Type u) [Field k] [CharZero k]
    {P P₁ : Scheme.{u}} (p : P ⟶ Spec (CommRingCat.of k)) [AlgebraicGeometry.Smooth p]
    [LocallyOfFiniteType p] (π : P₁ ⟶ P) [IsLocallyNoetherian P₁] [LocallyOfFiniteType (π ≫ p)]
    (Z : P.IdealSheafData) (E : List P.IdealSheafData) (hZ : HasStrictNormalCrossingsWith p Z E)
    (hπ : Blowup.IsBlowupAlongIdealSheaf π Z) (A : P.IdealSheafData) (A₁ : P₁.IdealSheafData) (μ : ℕ) (hμ : 1 ≤ μ)
    (_hord : ∀ x : P, orderAt A x ≤ (μ : ℕ∞))
    (hsupp : (Z.support : Set ↥P) ⊆ orderAtLeastLocus A μ)
    (htr : Blowup.exceptionalIdeal π Z ^ μ * A₁ = A.comap π) (H : P.IdealSheafData) :
    IsMaxContactHypersurface k p A μ H →
      IsMaxContactHypersurface k (π ≫ p) A₁ μ (Blowup.strictTransform π Z H) := by
  intro hH
  exact isMaxContactHypersurface_strictTransform_of_quasiCompact k p π Z E hZ hπ A A₁ μ hμ
    hsupp htr H hH

end

end FunctorialResolution.EmbeddedResolution
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.MaxContactStrictTransform =====

-- ===== clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.SmoothPullbackMaxContactCover =====
-- clump-header: {"m": "Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.SmoothPullbackMaxContactCover", "h": "module\n\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.MaxContactCoverProperties\nimport Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.CoordinateDivisorSmoothness\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.EtaleCoordinates.StrictNormalCrossingsAddHypersurface\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.MaxContactCoverPieces\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.OrderBoundAlongSequence\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.OrderUnderStalkIsomorphism\nimport Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.TunedMarkedBlowupSeq\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.MaxContactStrictTransform\nimport Development.ResolutionOfSingularities.EmbeddedResolution.MaximalContactHypersurfaces.TunedSheafBasic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\npublic import Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.MaxContactCover\n\n"}
section -- clump:auto
@[expose] public section

universe u

open CategoryTheory AlgebraicGeometry

noncomputable section

namespace FunctorialResolution.EmbeddedResolution

namespace OrderReduction

def ValidPullbackAlongSmooth : Prop :=
  ∀ (T : MarkedIdealWithBoundary.{u}), T.IsAdmissible → ∀ (Y : Scheme.{u})
      (q : Y ⟶ Spec (CommRingCat.of T.base)) (h : Y ⟶ T.scheme)
      [AlgebraicGeometry.Smooth h] [AlgebraicGeometry.QuasiCompact q],
      h ≫ T.structMap = q → (T.pullbackAlong Y q h).IsAdmissible

theorem validPullbackAlongSmooth_iff :
    ValidPullbackAlongSmooth.{u} ↔
      ∀ (T : MarkedIdealWithBoundary.{u}), T.IsAdmissible → ∀ (Y : Scheme.{u})
        (q : Y ⟶ Spec (CommRingCat.of T.base)) (h : Y ⟶ T.scheme)
        [AlgebraicGeometry.Smooth h] [AlgebraicGeometry.QuasiCompact q],
        h ≫ T.structMap = q → (T.pullbackAlong Y q h).IsAdmissible :=
  Iff.rfl

end OrderReduction

namespace MaxContactCoverData

private theorem support_pow_subset {X : Scheme.{u}} (I : X.IdealSheafData) (s : ℕ) :
    ((I ^ s).support : Set ↥X) ⊆ (I.support : Set ↥X) := by
  intro x hx
  simp only [SetLike.mem_coe] at hx ⊢
  rw [mem_support_iff_stalkIdeal_ne_top] at hx ⊢
  intro hI
  apply hx
  rw [stalkIdeal_pow, hI, Ideal.top_pow]

private theorem prod_map_range_pow_ite_eq_pow {X : Scheme.{u}} (A : ℕ → X.IdealSheafData) (n s : ℕ) :
    (List.map (fun j => A j ^ (if j = n then s else 0)) (List.range (n + 1))).prod = A n ^ s := by
  have h1 : (List.map (fun j => A j ^ (if j = n then s else 0)) (List.range n)).prod = 1 := by
    apply List.prod_eq_one
    intro y hy
    simp only [List.mem_map, List.mem_range] at hy
    obtain ⟨j, hj, rfl⟩ := hy
    rw [if_neg (Nat.ne_of_lt hj), pow_zero]
  rw [List.range_succ, List.map_append, List.prod_append, h1, one_mul]
  simp

private theorem exists_le_and_pow_le_tunedSheaf (k : Type u) [Field k] [IsNoetherianRing k]
    {X : Scheme.{u}} (p : X ⟶ Spec (CommRingCat.of k))
    [AlgebraicGeometry.LocallyOfFiniteType p] (I : X.IdealSheafData) (m s : ℕ) (hm : 1 ≤ m) :
    ∃ J : X.IdealSheafData, I ≤ J ∧ J ^ s ≤ tunedSheaf k p I m s := by
  obtain ⟨n, rfl⟩ : ∃ n, m = n + 1 := ⟨m - 1, by omega⟩
  refine ⟨derivIdealSheafIterate k p n I, le_derivIdealSheafIterate k p n I, ?_⟩
  have h0 : (∑ j ∈ Finset.range (n + 1), (n + 1 - j) * (if j = n then s else 0))
      = (n + 1 - n) * (if n = n then s else 0) := by
    refine Finset.sum_eq_single n (fun b _ hb => by simp [hb]) (fun h => ?_)
    exact absurd (Finset.mem_range.2 (Nat.lt_succ_self n)) h
  have hsum : (∑ j ∈ Finset.range (n + 1), (n + 1 - j) * (if j = n then s else 0)) = s := by
    rw [h0, if_pos rfl, Nat.add_sub_cancel_left, one_mul]
  have h := prod_pow_derivIdealSheafIterate_le_tunedSheaf k p I (n + 1) s
    (fun j => if j = n then s else 0) hsum.ge
  rw [prod_map_range_pow_ite_eq_pow] at h
  exact h

theorem balancedTunedIdeal_eq_balancedTunedSheaf (T : MarkedIdealWithBoundary.{u}) (hv : T.IsAdmissible)
    [AlgebraicGeometry.LocallyOfFiniteType T.structMap] :
    balancedTunedIdeal T hv = FunctorialResolution.EmbeddedResolution.balancedTunedSheaf T.base T.structMap T.ideal T.mult :=
  rfl

theorem nonzeroOnComponents_balancedTunedIdeal (T : MarkedIdealWithBoundary.{u}) (hv : T.IsAdmissible) :
    NonzeroOnComponents (balancedTunedIdeal T hv) := by
  have := hv.locallyOfFiniteType
  obtain ⟨J, hIJ, hJ⟩ :=
    exists_le_and_pow_le_tunedSheaf T.base T.structMap T.ideal T.mult (tuningExponent T.mult) hv.one_le_mult
  have hle : J ^ tuningExponent T.mult ≤ balancedTunedIdeal T hv := by
    rw [balancedTunedIdeal_eq_balancedTunedSheaf T hv, balancedTunedSheaf_eq]
    exact hJ
  have hnz := hv.nonzeroOnComponents
  rw [nonzeroOnComponents_iff] at hnz ⊢
  intro C hC hsub
  refine hnz C hC ?_
  intro x hx
  have h1 := hsub hx
  have h2 := SetLike.coe_subset_coe.2 (Scheme.IdealSheafData.support_antitone hle) h1
  have h3 := support_pow_subset J (tuningExponent T.mult) h2
  exact SetLike.coe_subset_coe.2 (Scheme.IdealSheafData.support_antitone hIJ) h3

theorem orderAt_balancedTunedIdeal_le_tunedMult (htf : TunedSheafProperties.{u}) (T : MarkedIdealWithBoundary.{u}) (hv : T.IsAdmissible)
    (hord : ∀ x : ↥T.scheme, orderAt T.ideal x ≤ (T.mult : ℕ∞)) (x : ↥T.scheme) :
    orderAt (balancedTunedIdeal T hv) x ≤ ((tunedMult T : ℕ) : ℕ∞) := by
  have := hv.locallyOfFiniteType
  have := hv.charZero
  have := hv.smooth
  by_cases hemp : orderAtLeastLocus T.ideal T.mult = ∅
  · have htop : balancedTunedIdeal T hv = ⊤ := by
      rw [balancedTunedIdeal_eq_balancedTunedSheaf T hv]
      exact balancedTunedSheaf_eq_top_of_orderAtLeastLocus_eq_empty T.base T.structMap T.ideal hv.one_le_mult hemp
    rw [htop, orderAt_top]
    simp
  · have hmax : MaxOrderEq T.ideal T.mult :=
      ⟨(orderLE_iff T.ideal T.mult).2 hord, Set.nonempty_iff_ne_empty.2 hemp⟩
    have hLE := htf.coSupport_tunedSheaf_eq_and_orderLE.orderLE T.base T.scheme T.structMap
      T.ideal T.mult hv.one_le_mult hmax (tuningExponent T.mult) (one_le_tuningExponent T.mult)
    rw [orderLE_iff] at hLE
    have h2 : balancedTunedIdeal T hv = tunedSheaf T.base T.structMap T.ideal T.mult (tuningExponent T.mult) := by
      rw [balancedTunedIdeal_eq_balancedTunedSheaf T hv, balancedTunedSheaf_eq]
    rw [h2]
    exact hLE x

theorem isAdmissible_coverTriple_of_validPullbackAlongSmooth (hpb : OrderReduction.ValidPullbackAlongSmooth.{u})
    (T : MarkedIdealWithBoundary.{u}) (hv : T.IsAdmissible)
    (hgood : MaxContactReduction.IsMaxContactCover T (chosenCoverData T hv) hv.locallyOfFiniteType
      (balancedTunedIdeal T hv) (tunedMult T)) :
    (coverTriple T hv).IsAdmissible := by
  have hvt := MaxContactOpenCover.isAdmissible_tunedTriple T hv (nonzeroOnComponents_balancedTunedIdeal T hv)
  have hqc := MaxContactOpenCover.quasiCompact_coverMap_comp_structureMorphism T hv hgood
  rw [MaxContactOpenCover.coverTriple_eq_tunedTriple_pullbackAlong T hv]
  exact @hpb (MaxContactOpenCover.tunedTriple T hv) hvt (chosenCoverData T hv).disjointUnion
    (coverMap T hv ≫ T.structMap) (coverMap T hv) (MaxContactCoverData.instSmoothCoverMap T hv) hqc rfl

theorem isSmoothDivisor_coverMaxContactIdeal (_hpb : OrderReduction.ValidPullbackAlongSmooth.{u})
    (T : MarkedIdealWithBoundary.{u}) (hv : T.IsAdmissible)
    (hgood : MaxContactReduction.IsMaxContactCover T (chosenCoverData T hv) hv.locallyOfFiniteType
      (balancedTunedIdeal T hv) (tunedMult T)) :
    IsSmoothDivisor (coverTriple T hv).structMap (coverMaxContactIdeal T hv) := by
  refine FunctorialResolution.EmbeddedResolution.isSmoothDivisor_of_locally_coordIdeal (coverMaxContactIdeal T hv) ?_
  intro x
  obtain ⟨U, hxU, m, c, a, _hinj, hnone, hsome⟩ :=
    (MaxContactCoverGeometry.inStrictNormalCrossingPositionAt_of_isMaxContactCover T hv hgood x).exists_etaleChart
  refine ⟨U, hxU, m, c, ?_⟩
  rcases ha : a 0 with _ | t
  · exact Or.inl (hnone 0 (Nat.zero_lt_succ _) ha)
  · exact Or.inr ⟨t, hsome 0 (Nat.zero_lt_succ _) t ha⟩

end MaxContactCoverData

namespace OrderReduction

theorem maxContactCoverProperties_of_tunedSheafProperties (htf : TunedSheafProperties.{u}) (hdim : DimensionNonincreasingAlongBlowups.{u})
    (hpb : ValidPullbackAlongSmooth.{u}) : MaxContactCoverProperties.{u} := by
  refine
    { strictTransform_admissible := ?_
      coSupport_le_preimage := ?_
      schemeDim_level_le := ?_
      exists_goodCover := ?_
      hasSNCWith_cons := ?_
      valid_level := ?_
      orderAt_level_le := ?_
      coverTriple_dim_le := ?_
      coverTriple_valid := ?_
      coverContact_admissible := ?_
      coverContact_snc := ?_
      tuning := htf }
  · intro k _ _ P P₁ p _ _ _ π _ Z E hZ hπ A A₁ μ hμ hordA hsupp htr H hH
    exact FunctorialResolution.EmbeddedResolution.isMaxContactHypersurface_strictTransform_of_orderAt_le k p π Z E hZ hπ A A₁ μ hμ hordA
      hsupp htr H hH
  · intro X X₁ π Z hπ A A₁ μ htr hsupp
    exact FunctorialResolution.EmbeddedResolution.OrderLocusBlowup.orderAtLeastLocus_subset_preimage_of_isBlowupAlongIdealSheaf π Z hπ A A₁ μ htr hsupp
  · intro T hT s i hi
    exact hdim T hT s i hi
  · intro T hv hord
    exact MaxContactOpenCover.exists_isMaxContactCover T hv (MaxContactCoverData.orderAt_balancedTunedIdeal_le_tunedMult htf T hv hord)
  · intro k _ P p _ Z H N _hsmZ hsnc hZN hHZ
    exact FunctorialResolution.EmbeddedResolution.hasStrictNormalCrossingsWith_cons_of_le p Z H N hsnc hZN hHZ
  · intro T hT s i hi
    exact MarkedIdealWithBoundary.IsAdmissible.transformAt effectiveCartierSupportContainsNoComponent hT s i hi
  · intro T hT hord s i hi x
    exact FunctorialResolution.EmbeddedResolution.orderAt_ideal_le_mult_along_sequence T hT hord s i hi x
  · intro T hv
    exact MaxContactOpenCover.krullDimSucc_coverTriple_scheme_le_dim T hv
  · intro T hv _hord hgood
    exact MaxContactCoverData.isAdmissible_coverTriple_of_validPullbackAlongSmooth hpb T hv hgood
  · intro T hv hgood _
    exact MaxContactCoverGeometry.isMaxContactHypersurface_coverMaxContactIdeal T hv hgood
  · intro T hv hgood
    exact MaxContactCoverGeometry.inStrictNormalCrossingPosition_of_isMaxContactCover T hv hgood
      (MaxContactCoverData.isSmoothDivisor_coverMaxContactIdeal hpb T hv hgood)

end OrderReduction

end FunctorialResolution.EmbeddedResolution

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.ResolutionOfSingularities.EmbeddedResolution.IdealPrincipalization.OrderReduction.SmoothPullbackMaxContactCover =====
