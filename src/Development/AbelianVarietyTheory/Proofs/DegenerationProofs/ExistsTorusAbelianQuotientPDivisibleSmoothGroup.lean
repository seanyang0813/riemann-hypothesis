module

public import Development.AbelianVarietyTheory.Definitions.Degenerations.OfDerivationFnOn
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.IsIntegralOfSmoothFieldOfConnectedSpace
public import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.LocallyQuasiFiniteOfQuasiFiniteAt
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ThetaCore
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.ForallGeometricallyIntegralOfSmoothOfGeometrical
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsTorusQuotientNoCocharacter
public import Mathlib.RingTheory.PowerSeries.Basic
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.InfiniteTorsionOrCocharacterOfArcAtInfinity
public import Mathlib.AlgebraicGeometry.Morphisms.Proper
public import Mathlib.FieldTheory.IsAlgClosed.Basic
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.IsProperOfPowerSeriesArcsOverAlgClosed
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.AlgebraicGeometry.AlgClosed.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.CategoryTheory.Limits.Shapes.Connected
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.AlgebraicGeometry.Morphisms.LocalFlatDescent
import Mathlib.AlgebraicGeometry.QuasiAffine
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.DimSplitPf

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DegenerationProofs.QuasiFiniteAtGenericPointOfIsDominant, Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsTorusAbelianQuotientPDivisibleSmoothGroup

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DegenerationProofs.QuasiFiniteAtGenericPointOfIsDominant =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DegenerationProofs.QuasiFiniteAtGenericPointOfIsDominant", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Degenerations.OfDerivationFnOn\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.IsIntegralOfSmoothFieldOfConnectedSpace\npublic import Development.AbelianVarietyTheory.Proofs.CubicalLineBundles.LocallyQuasiFiniteOfQuasiFiniteAt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.AlgClosed.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Limits.Shapes.Connected\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ThetaCore\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry
open scoped CategoryTheory.Obj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.SS

namespace GlobalTheory.SS

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry in
open scoped CategoryTheory.Obj in
theorem isFinite_pullback_unit_of_surjective_on_points (k : Type) [Field k] [IsAlgClosed k]
    (G G' : Over (_root_.ReciprocityTheory.ChartRestriction.G.Geo.Tor.Sp k)) [GrpObj G] [GrpObj G'] (g : ℕ) (hG : _root_.GlobalTheory.SS.SmConn G)
    (hG' : _root_.GlobalTheory.SS.SmConn G') (hgG : SmoothOfRelativeDimension g G.hom)
    (hgG' : SmoothOfRelativeDimension g G'.hom) (i : G ⟶ G') [IsMonHom i]
    (hpts : ∀ y : (𝟙_ (Over (_root_.ReciprocityTheory.ChartRestriction.G.Geo.Tor.Sp k)) ⟶ G'), ∃ x : (𝟙_ (Over (_root_.ReciprocityTheory.ChartRestriction.G.Geo.Tor.Sp k)) ⟶ G), x ≫ i = y) :
    IsFinite (pullback.snd i (η[G'] : 𝟙_ _ ⟶ G')).left := by
  unfold _root_.GlobalTheory.SS.SmConn at hG hG'
  obtain ⟨-, hsm, hsep, hqc, hgc⟩ := hG
  obtain ⟨-, hsm', hsep', hqc', hgc'⟩ := hG'
  have hw : i.left ≫ G'.hom = G.hom := Over.w i
  have : Subsingleton (_root_.ReciprocityTheory.ChartRestriction.G.Geo.Tor.Sp k) := inferInstanceAs (Subsingleton (Spec (CommRingCat.of k)))
  have : Nonempty (_root_.ReciprocityTheory.ChartRestriction.G.Geo.Tor.Sp k) := inferInstanceAs (Nonempty (Spec (CommRingCat.of k)))
  have : ConnectedSpace G.left := GeometricallyConnected.connectedSpace_of_subsingleton G.hom
  have : ConnectedSpace G'.left := GeometricallyConnected.connectedSpace_of_subsingleton G'.hom
  have : IsIntegral G.left := _root_.GlobalTheory.isIntegral_of_smooth_field_of_connectedSpace (K := k) G.hom
  have : IsIntegral G'.left := _root_.GlobalTheory.isIntegral_of_smooth_field_of_connectedSpace (K := k) G'.hom
  have : LocallyOfFiniteType (i.left ≫ G'.hom) := by rw [hw]; infer_instance
  have : LocallyOfFiniteType i.left := locallyOfFiniteType_of_comp i.left G'.hom
  have : JacobsonSpace G'.left := LocallyOfFiniteType.jacobsonSpace (Y := Spec _) G'.hom
  have hcl : closedPoints G'.left ⊆ Set.range i.left := by
    intro y hy
    obtain ⟨x, hx⟩ := hpts (Over.homMk (pointOfClosedPoint (K := k) G'.hom y hy)
      (pointOfClosedPoint_comp _ _ _))
    refine ⟨x.left (IsLocalRing.closedPoint k), ?_⟩
    have h := congrArg (fun φ : 𝟙_ (Over (_root_.ReciprocityTheory.ChartRestriction.G.Geo.Tor.Sp k)) ⟶ G' => φ.left (IsLocalRing.closedPoint k)) hx
    simp only [Over.comp_left] at h
    exact h.trans (pointOfClosedPoint_apply _ _ _ _)
  have hgen : i.left (genericPoint G.left) = genericPoint G'.left := by
    have hη : closure {genericPoint G.left} = Set.univ := genericPoint_spec G.left
    have h1 : closure (Set.range i.left) = Set.univ :=
      Set.eq_univ_of_univ_subset (closure_closedPoints (X := G'.left) ▸ closure_mono hcl)
    have h2 : Set.range i.left ⊆ closure {i.left (genericPoint G.left)} := by
      rintro _ ⟨x, rfl⟩
      exact map_mem_closure i.left.continuous (hη ▸ Set.mem_univ x) (by simp)
    have h3 : IsGenericPoint (i.left (genericPoint G.left)) Set.univ := by
      refine Set.eq_univ_of_univ_subset ?_
      rw [← h1]
      simpa using closure_mono h2
    exact h3.eq (genericPoint_spec G'.left)
  have hq : i.left.QuasiFiniteAt (genericPoint G.left) := by
    rw [Scheme.Hom.quasiFiniteAt_iff_isOpen_singleton_asFiber]
    have hfib : ∀ a : i.left.fiber (i.left (genericPoint G.left)),
        i.left.fiberι _ a = genericPoint G.left := by
      intro a
      have ha : i.left.fiberι _ a ∈ i.left ⁻¹' {i.left (genericPoint G.left)} := by
        rw [← Scheme.Hom.range_fiberι]; exact Set.mem_range_self a
      refine _root_.GlobalTheory.OntoFinite.eq_genericPoint (K := k) G'.hom i.left g (by rw [hw]; exact hgG)
        hgG' _ ?_
      rw [← hgen]; exact ha
    have : Subsingleton (i.left.fiber (i.left (genericPoint G.left))) :=
      ⟨fun a b => (i.left.fiberι _).isEmbedding.injective ((hfib a).trans (hfib b).symm)⟩
    convert isOpen_univ
    exact Set.eq_univ_of_forall fun b => Subsingleton.elim b _
  have : LocallyQuasiFinite i.left :=
    _root_.GlobalTheory.OntoFinite.locallyQuasiFinite_of_quasiFiniteAt (K := k) i _ hq
  have hpb : IsPullback (pullback.fst i (η[G'] : 𝟙_ _ ⟶ G')).left
      (pullback.snd i (η[G'] : 𝟙_ _ ⟶ G')).left i.left (η[G'] : 𝟙_ _ ⟶ G').left :=
    IsPullback.map (Over.forget _) (IsPullback.of_hasPullback _ _)
  have : LocallyQuasiFinite (pullback.snd i (η[G'] : 𝟙_ _ ⟶ G')).left :=
    MorphismProperty.of_isPullback hpb ‹_›
  have hsec : (η[G'] : 𝟙_ _ ⟶ G').left ≫ G'.hom = 𝟙 _ := Over.w _
  have : IsClosedImmersion ((η[G'] : 𝟙_ _ ⟶ G').left ≫ G'.hom) := by rw [hsec]; infer_instance
  have : IsClosedImmersion (η[G'] : 𝟙_ _ ⟶ G').left := IsClosedImmersion.of_comp _ G'.hom
  have : IsClosedImmersion (pullback.fst i (η[G'] : 𝟙_ _ ⟶ G')).left :=
    MorphismProperty.of_isPullback hpb.flip ‹_›
  have hw2 : (pullback.snd i (η[G'] : 𝟙_ _ ⟶ G')).left ≫ 𝟙 _ =
      (pullback.fst i (η[G'] : 𝟙_ _ ⟶ G')).left ≫ G.hom := by
    exact (Over.w (pullback.snd i (η[G'] : 𝟙_ _ ⟶ G'))).trans
      (Over.w (pullback.fst i (η[G'] : 𝟙_ _ ⟶ G'))).symm
  have : QuasiCompact (pullback.snd i (η[G'] : 𝟙_ _ ⟶ G')).left := by
    have h2 : QuasiCompact ((pullback.fst i (η[G'] : 𝟙_ _ ⟶ G')).left ≫ G.hom) := inferInstance
    rw [← hw2, Category.comp_id] at h2
    exact h2
  have : IsLocallyArtinian (𝟙_ (Over (_root_.ReciprocityTheory.ChartRestriction.G.Geo.Tor.Sp k))).left :=
    inferInstanceAs (IsLocallyArtinian (Spec (CommRingCat.of k)))
  exact IsFinite.of_locallyQuasiFinite _


open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry in
open scoped CategoryTheory.Obj in
theorem _root_.GlobalTheory.SS.finite_ker_of_surjective_points : ∀ (k : Type) [Field k] [IsAlgClosed k]
    (G : Over (_root_.ReciprocityTheory.ChartRestriction.G.Geo.Tor.Sp k)) [GrpObj G], _root_.GlobalTheory.SS.SmConn G → ∀ f : G ⟶ G, IsMonHom f →
    (∀ y : (𝟙_ (Over (_root_.ReciprocityTheory.ChartRestriction.G.Geo.Tor.Sp k)) ⟶ G), ∃ x : (𝟙_ (Over (_root_.ReciprocityTheory.ChartRestriction.G.Geo.Tor.Sp k)) ⟶ G), x ≫ f = y) →
    Finite {x : (𝟙_ (Over (_root_.ReciprocityTheory.ChartRestriction.G.Geo.Tor.Sp k)) ⟶ G) // x ≫ f = 1} := by
  intro k _ _ G _ hG f _ hpts
  have hG0 := hG
  unfold _root_.GlobalTheory.SS.SmConn at hG0
  obtain ⟨-, hsm, -, -, hgc⟩ := hG0
  have : Subsingleton (_root_.ReciprocityTheory.ChartRestriction.G.Geo.Tor.Sp k) := inferInstanceAs (Subsingleton (Spec (CommRingCat.of k)))
  have : Nonempty (_root_.ReciprocityTheory.ChartRestriction.G.Geo.Tor.Sp k) := inferInstanceAs (Nonempty (Spec (CommRingCat.of k)))
  have : ConnectedSpace G.left := GeometricallyConnected.connectedSpace_of_subsingleton G.hom
  obtain ⟨g, hg⟩ := _root_.ReciprocityTheory.ChartRestriction.G.Geo.Tor.exists_dim_of_preconnected G.hom ((η[G] : 𝟙_ _ ⟶ G).left (IsLocalRing.closedPoint k))
  have hK := isFinite_pullback_unit_of_surjective_on_points k G G g hG hG hg hg f hpts
  have hKhom : (pullback f (η[G] : 𝟙_ _ ⟶ G)).hom = (pullback.snd f (η[G] : 𝟙_ _ ⟶ G)).left := by
    rw [← Over.w (pullback.snd f (η[G] : 𝟙_ _ ⟶ G))]; rfl
  have : IsFinite (pullback f (η[G] : 𝟙_ _ ⟶ G)).hom := hKhom ▸ hK
  have hfin : Finite (pullback f (η[G] : 𝟙_ _ ⟶ G)).left := by
    have h := (pullback f (η[G] : 𝟙_ _ ⟶ G)).hom.finite_preimage_singleton
      (IsLocalRing.closedPoint k : Spec (CommRingCat.of k))
    exact Set.finite_univ_iff.mp
      (h.subset fun p _ => Set.mem_singleton_iff.mpr (Subsingleton.elim _ _))
  have hone : ∀ x : {x : (𝟙_ (Over (_root_.ReciprocityTheory.ChartRestriction.G.Geo.Tor.Sp k)) ⟶ G) // x ≫ f = 1},
      x.1 ≫ f = 𝟙 _ ≫ (η[G] : 𝟙_ _ ⟶ G) := fun x => by
    rw [x.2, Category.id_comp]; rfl
  refine Finite.of_injective (fun x => (pullback.lift x.1 (𝟙 _) (hone x)).left
    (IsLocalRing.closedPoint k : Spec (CommRingCat.of k))) ?_
  intro x y hxy
  have : LocallyOfFiniteType (𝟙_ (Over (_root_.ReciprocityTheory.ChartRestriction.G.Geo.Tor.Sp k))).hom :=
    inferInstanceAs (LocallyOfFiniteType (𝟙 (Spec (CommRingCat.of k))))
  have : Subsingleton (𝟙_ (Over (_root_.ReciprocityTheory.ChartRestriction.G.Geo.Tor.Sp k))).left :=
    inferInstanceAs (Subsingleton (Spec (CommRingCat.of k)))
  have : IsReduced (𝟙_ (Over (_root_.ReciprocityTheory.ChartRestriction.G.Geo.Tor.Sp k))).left := inferInstanceAs (IsReduced (Spec (CommRingCat.of k)))
  have hl : (pullback.lift x.1 (𝟙 _) (hone x)).left = (pullback.lift y.1 (𝟙 _) (hone y)).left := by
    have : LocallyOfFiniteType ((pullback.lift x.1 (𝟙 _) (hone x)).left ≫
        (pullback f (η[G] : 𝟙_ _ ⟶ G)).hom) := by rw [Over.w]; infer_instance
    refine ext_of_apply_eq (K := k) (pullback f (η[G] : 𝟙_ _ ⟶ G)).hom Set.univ
      isClosed_univ.isLocallyClosed dense_univ (fun p _ _ => ?_) ((Over.w _).trans (Over.w _).symm)
    obtain rfl := Subsingleton.elim p (IsLocalRing.closedPoint k : Spec (CommRingCat.of k))
    exact hxy
  have hl' : pullback.lift x.1 (𝟙 _) (hone x) = pullback.lift y.1 (𝟙 _) (hone y) := Over.OverMorphism.ext hl
  apply Subtype.ext
  have := congrArg (· ≫ pullback.fst f (η[G] : 𝟙_ _ ⟶ G)) hl'
  rw [pullback.lift_fst, pullback.lift_fst] at this
  exact this

end GlobalTheory.SS
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DegenerationProofs.QuasiFiniteAtGenericPointOfIsDominant =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsTorusAbelianQuotientPDivisibleSmoothGroup =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsTorusAbelianQuotientPDivisibleSmoothGroup", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Degenerations.OfDerivationFnOn\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.ForallGeometricallyIntegralOfSmoothOfGeometrical\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsTorusQuotientNoCocharacter\npublic import Mathlib.RingTheory.PowerSeries.Basic\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.InfiniteTorsionOrCocharacterOfArcAtInfinity\npublic import Mathlib.AlgebraicGeometry.Morphisms.Proper\npublic import Mathlib.FieldTheory.IsAlgClosed.Basic\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.IsProperOfPowerSeriesArcsOverAlgClosed\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.QuasiFiniteAtGenericPointOfIsDominant\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.AlgClosed.Basic\nimport Mathlib.AlgebraicGeometry.Morphisms.LocalFlatDescent\nimport Mathlib.AlgebraicGeometry.QuasiAffine\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Limits.Shapes.Connected\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.ThetaCore\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.DimSplitPf\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry
open scoped CategoryTheory.Obj
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.SS

namespace GlobalTheory.SS.DivSemi

theorem smooth_proj {S : Scheme.{0}} {X : Type} [AddCommGroup X] [Module.Free ℤ X] [Module.Finite ℤ X]
    {G B : Over S} [GrpObj G] [GrpObj B] {i : splitTorus S X ⟶ G} {q : G ⟶ B} (h : IsQuot i q) : Smooth q.left := by
  obtain ⟨hi, hq, hf, hs, ha, hk, -⟩ := h
  have := (H1.torus_dim S X).smooth
  refine MorphismProperty.of_isPullback_of_descendsAlong (P := @Smooth) (Q := @Surjective ⊓ @Flat ⊓ @QuasiCompact)
    ((H1.torsor_pullback i q hk).map (Over.forget _)).flip
    ⟨⟨‹_›, ‹_›⟩, inferInstanceAs (QuasiCompact q.left)⟩ ?_
  exact smooth_isStableUnderBaseChange.of_isPullback (IsPullback.of_hasPullback _ _) this

theorem dim_eq_add {S : Scheme.{0}} (y : S) {X : Type} [AddCommGroup X] [Module.Free ℤ X] [Module.Finite ℤ X]
    {G B : Over S} [GrpObj G] [GrpObj B] {i : splitTorus S X ⟶ G} {q : G ⟶ B} (h : IsQuot i q) {g g' : ℕ}
    (dG : SmoothOfRelativeDimension g G.hom) (dB : SmoothOfRelativeDimension g' B.hom) :
    g = g' + Module.finrank ℤ X := by
  have := smooth_proj h
  obtain ⟨hi, hq, hf, hs, ha, hk, -⟩ := h
  obtain ⟨m, W, hW, d₁⟩ := H1.exists_dim q.left (eSec G y)
  have g₂ : m = Module.finrank ℤ X := H1.dim_base (hk.map (Over.forget _)) d₁ (H1.torus_dim S X) (eSec _ y)
    ((congrArg (fun k => k.left y ∈ W) (IsMonHom.one_hom i)).mpr hW)
  have d₂ : SmoothOfRelativeDimension (m + g') (W.ι ≫ G.hom) := by
    rw [← Over.w q, ← Category.assoc]; infer_instance
  have d₃ : SmoothOfRelativeDimension (0 + g) (W.ι ≫ G.hom) := inferInstance
  have := H1.dim_unique _ d₂ d₃ ⟨_, hW⟩
  omega

theorem exists_lift_point {k : Type} [Field k] [IsAlgClosed k] {G B : Over (Sp k)} (q : G ⟶ B)
    [LocallyOfFiniteType q.left] [QuasiCompact q.left] [Surjective q.left] (y : 𝟙_ (Over (Sp k)) ⟶ B) :
    ∃ x : 𝟙_ (Over (Sp k)) ⟶ G, x ≫ q = y := by
  let x : Sp k ⟶ B.left := y.left
  have : CompactSpace ↥(pullback q.left x) := QuasiCompact.compactSpace_of_compactSpace (pullback.snd q.left x)
  obtain ⟨p, -⟩ := (pullback.snd q.left x).surjective (default : PrimeSpectrum k)
  obtain ⟨z, -, hz⟩ := isClosed_univ.exists_closed_singleton (X := ↥(pullback q.left x)) ⟨p, trivial⟩
  have e : (pointOfClosedPoint (pullback.snd q.left x) z hz ≫ pullback.fst q.left x) ≫ q.left = x := by
    rw [Category.assoc, pullback.condition, ← Category.assoc, pointOfClosedPoint_comp, Category.id_comp]
  refine ⟨Over.homMk (pointOfClosedPoint (pullback.snd q.left x) z hz ≫ pullback.fst q.left x) ?_, ?_⟩
  · rw [← Over.w q, ← Category.assoc]
    exact (congrArg (· ≫ B.hom) e).trans (Over.w y)
  · exact Over.OverMorphism.ext e

theorem isMonHom_id_pow {S : Scheme.{0}} (B : Over S) [GrpObj B] [IsCommMonObj B] (n : ℕ) :
    IsMonHom ((𝟙 B) ^ n : B ⟶ B) := by
  induction n with
  | zero => rw [pow_zero, Hom.one_def]; infer_instance
  | succ n ih => rw [pow_succ]; exact inferInstanceAs (IsMonHom (lift ((𝟙 B) ^ n) (𝟙 B) ≫ μ[B]))

theorem exists_torus_abelian_quotient :
    ∀ (k : Type) [Field k] [IsAlgClosed k] (p : ℕ) [Fact p.Prime] [CharP k p] (G : Over (Sp k)) [GrpObj G], SmConn G → (∀ y : (𝟙_ (Over (Sp k)) ⟶ G), ∃ x : (𝟙_ (Over (Sp k)) ⟶ G), x ^ p = y) → ∃ (X : Type) (_ : AddCommGroup X) (_ : Module.Free ℤ X) (_ : Module.Finite ℤ X) (B : Over (Sp k)) (_ : GrpObj B) (i : splitTorus (Sp k) X ⟶ G) (q : G ⟶ B), IsQuot i q ∧ IsAbelianScheme B ∧ ∀ g, SmoothOfRelativeDimension g G.hom → ∃ a, SmoothOfRelativeDimension a B.hom ∧ g = a + Module.finrank ℤ X := by
  intro k _ _ p _ _ G _ hG hp
  obtain ⟨X, _, _, _, B, _, i, q, hQ, hmax⟩ := _root_.GlobalTheory.SS.MaxTorus.exists_quot_no_cocharacter k G hG
  have hsm := smooth_proj hQ
  have hQ' := hQ
  obtain ⟨hi, hq, hf, hs, ha, hk, hB⟩ := hQ'
  have hB' := hB
  obtain ⟨hc, h₁, h₂, h₃, h₄⟩ := hB'
  have hgi := GlobalTheory.forall_geometricallyIntegral_of_smooth_of_geometricallyConnected _ _ B.hom h₁ h₄
  have hint : IsIntegral B.left := GeometricallyIntegral.isIntegral_of_subsingleton B.hom
  have hfin : Finite {x : (𝟙_ (Over (Sp k)) ⟶ B) // x ^ p = 1} := by
    have e : ∀ x : (𝟙_ (Over (Sp k)) ⟶ B), x ≫ ((𝟙 B) ^ p : B ⟶ B) = x ^ p := fun x => by
      rw [MonObj.comp_pow, Category.comp_id]
    have := GlobalTheory.SS.finite_ker_of_surjective_points k B hB ((𝟙 B) ^ p) (isMonHom_id_pow B p) fun y => by
      obtain ⟨y', rfl⟩ := exists_lift_point q y
      obtain ⟨x, rfl⟩ := hp y'
      exact ⟨x ≫ q, by rw [e, MonObj.pow_comp]⟩
    simpa only [e] using this
  have hpr : IsProper B.hom := by
    refine _root_.GlobalTheory.ArcProper.isProper_of_arcs k B h₂ inferInstance h₃ fun a ha => ?_
    by_contra hn
    rcases _root_.GlobalTheory.SS.infinite_torsion_or_cocharacter k p B hB a ha hn with h | ⟨f, hf, hf'⟩
    · exact not_finite {x : (𝟙_ (Over (Sp k)) ⟶ B) // x ^ p = 1}
    · exact hf' (hmax f hf)
  refine ⟨X, _, ‹_›, ‹_›, B, _, i, q, hQ, ⟨hc, h₁, hpr, h₄⟩, fun g hg => ?_⟩
  obtain ⟨x⟩ : Nonempty B.left := inferInstance
  obtain ⟨a, ha⟩ := exists_dim_of_preconnected B.hom x
  exact ⟨a, ha, dim_eq_add (default : PrimeSpectrum k) hQ hg ha⟩

end GlobalTheory.SS.DivSemi
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsTorusAbelianQuotientPDivisibleSmoothGroup =====
