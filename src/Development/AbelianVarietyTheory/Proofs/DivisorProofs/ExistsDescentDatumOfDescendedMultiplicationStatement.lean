module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDescentDatumOfDescendedMultiplicationImpor
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsMonHomOfSumMapCompFixingNearOpen
public import Mathlib.AlgebraicGeometry.Geometrically.Irreducible
public import Mathlib.Combinatorics.Quiver.ReflQuiver
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PairUOver
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.SabPull
public import Mathlib.AlgebraicGeometry.Morphisms.Smooth
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens
public import Mathlib.AlgebraicGeometry.Morphisms.UniversallyOpen
public import Mathlib.AlgebraicGeometry.Morphisms.Separated
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HomExtOfAgreeOnFibreDenseOpenSmooth
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IrreducibleSpaceOfSmoothFieldOfConnectedSpace
public import Mathlib.AlgebraicGeometry.Morphisms.Flat
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FlatOpenPartGroupSchemeProductMap
public import Mathlib.AlgebraicGeometry.Morphisms.UnderlyingMap
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SurjectiveOpenPartProductMapIrreducibleFibres
public import Development.AbelianVarietyTheory.Definitions.Divisors.QuasiCompact
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
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
import Mathlib.RingTheory.Radical.NatInt
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
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SymplecticGenerators.StTransl
import Mathlib.Tactic.Linter.Style
import Mathlib.AlgebraicGeometry.Sites.Fpqc
import Mathlib.CategoryTheory.ExtremalEpi

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GeometricallyIrreducibleCompOfIsOpenImmersion, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullbackDescentSquarePairToOpenSquare, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullbackDescentSquarePairToOpenSquareStatement, Development.AbelianVarietyTheory.Proofs.DivisorProofs.NearOpenSumEqEmbeddingDescendedMultiplication, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SurjectiveOpenContainingClosedFibreSmoothSquare, Development.AbelianVarietyTheory.Proofs.DivisorProofs.KernelPairSumEqOfSumEqOtherPullback, Development.AbelianVarietyTheory.Proofs.DivisorProofs.NearOpenEmbeddingCompOfSumMapComp, Development.AbelianVarietyTheory.Proofs.DivisorProofs.NearOpenPullbackToSelfProductSurjective, Development.AbelianVarietyTheory.Proofs.DivisorProofs.NearOpenSumMapFlatSurjectiveQuasiCompact, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDescentDatumOfDescendedMultiplication, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDescentDatumOfDescendedMultiplicationStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GeometricallyIrreducibleCompOfIsOpenImmersion =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.GeometricallyIrreducibleCompOfIsOpenImmersion", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Geometrically.Irreducible\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SymplecticGenerators.StTransl\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.OpenGeomIrr

theorem geometricallyIrreducible_comp_of_isOpenImmersion : ∀ (T W X : Scheme.{0}) (j : W ⟶ X), IsOpenImmersion j →
    ∀ (f : X ⟶ T), GeometricallyIrreducible f → Surjective (j ≫ f) → GeometricallyIrreducible (j ≫ f) := by
  intro T W X j hj f hf hs
  refine ⟨geometrically_iff_of_isClosedUnderIsomorphisms.mpr fun K _ x => ?_⟩
  have h₁ : IrreducibleSpace ↥(Limits.pullback f x) :=
    GeometricallyIrreducible.geometrically_irreducibleSpace _ _ _ (.of_hasPullback _ _)
  have hne : Nonempty ↥(Limits.pullback (j ≫ f) x) := by
    obtain ⟨p⟩ : Nonempty ↥(Spec (.of K)) := inferInstance
    obtain ⟨z, -⟩ := (Limits.pullback.snd (j ≫ f) x).surjective p
    exact ⟨z⟩
  let e := pullbackRightPullbackFstIso f x j
  have hne' : Nonempty ↥(Limits.pullback j (Limits.pullback.fst f x)) := ⟨e.inv hne.some⟩
  have h₂ : IrreducibleSpace ↥(Limits.pullback j (Limits.pullback.fst f x)) :=
    (Limits.pullback.snd j (Limits.pullback.fst f x)).isOpenEmbedding.irreducibleSpace
  exact e.hom.homeomorph.irreducibleSpace_iff.1 h₂

end GlobalTheory.OpenGeomIrr
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.GeometricallyIrreducibleCompOfIsOpenImmersion =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullbackDescentSquarePairToOpenSquare =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullbackDescentSquarePairToOpenSquare", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PairUOver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum.DescKP

variable {R : Type} [CommRing R] [IsLocalRing R] {S : Scheme.{0}} {π : S ⟶ Sp R} {G : Over S}

abbrev prU (N : Near π G) : (Desc.UT N).left ⟶ N.U.left := pullback.fst _ _

def liftU (N : Near π G) {Y : Scheme.{0}} (x : Y ⟶ N.U.left) (t : Y ⟶ pullback π π)
    (h : x ≫ N.U.hom = t ≫ pullback.fst π π ≫ π) : Y ⟶ (Desc.UT N).left :=
  pullback.lift x t h

theorem liftU_prU (N : Near π G) {Y : Scheme.{0}} (x : Y ⟶ N.U.left) (t : Y ⟶ pullback π π)
    (h : x ≫ N.U.hom = t ≫ pullback.fst π π ≫ π) : liftU N x t h ≫ prU N = x :=
  pullback.lift_fst _ _ _

theorem liftU_hom (N : Near π G) {Y : Scheme.{0}} (x : Y ⟶ N.U.left) (t : Y ⟶ pullback π π)
    (h : x ≫ N.U.hom = t ≫ pullback.fst π π ≫ π) : liftU N x t h ≫ (Desc.UT N).hom = t :=
  pullback.lift_snd _ _ _

theorem UT_ext (N : Near π G) {Y : Scheme.{0}} (f g : Y ⟶ (Desc.UT N).left) (h1 : f ≫ prU N = g ≫ prU N)
    (h2 : f ≫ (Desc.UT N).hom = g ≫ (Desc.UT N).hom) : f = g :=
  pullback.hom_ext h1 h2

theorem pairU_fst (N : Near π G) :
    pairU N ≫ (fst N.U N.U).left = (fst (Desc.UT N) (Desc.UT N)).left ≫ prU N :=
  congrArg Over.Hom.left (lift_fst (fstU N) (sndU N))

theorem pairU_snd (N : Near π G) :
    pairU N ≫ (snd N.U N.U).left = (snd (Desc.UT N) (Desc.UT N)).left ≫ prU N :=
  congrArg Over.Hom.left (lift_snd (fstU N) (sndU N))

theorem pairU_isPullback (N : Near π G) :
    IsPullback (pairU N) (Desc.UT N ⊗ Desc.UT N).hom (N.U ⊗ N.U).hom (pullback.fst π π ≫ π) := by
  have hUU : (N.U ⊗ N.U).hom = (fst N.U N.U).left ≫ N.U.hom := rfl
  have cUU : (fst N.U N.U).left ≫ N.U.hom = (snd N.U N.U).left ≫ N.U.hom := pullback.condition
  have hTT : (Desc.UT N ⊗ Desc.UT N).hom = (fst (Desc.UT N) (Desc.UT N)).left ≫ (Desc.UT N).hom := rfl
  have cTT : (fst (Desc.UT N) (Desc.UT N)).left ≫ (Desc.UT N).hom =
      (snd (Desc.UT N) (Desc.UT N)).left ≫ (Desc.UT N).hom := pullback.condition
  have extUU : ∀ {Y : Scheme.{0}} (f g : Y ⟶ (N.U ⊗ N.U).left), f ≫ (fst N.U N.U).left = g ≫ (fst N.U N.U).left →
      f ≫ (snd N.U N.U).left = g ≫ (snd N.U N.U).left → f = g := fun f g h1 h2 => pullback.hom_ext h1 h2
  have extTT : ∀ {Y : Scheme.{0}} (f g : Y ⟶ (Desc.UT N ⊗ Desc.UT N).left),
      f ≫ (fst (Desc.UT N) (Desc.UT N)).left = g ≫ (fst (Desc.UT N) (Desc.UT N)).left →
      f ≫ (snd (Desc.UT N) (Desc.UT N)).left = g ≫ (snd (Desc.UT N) (Desc.UT N)).left → f = g :=
    fun f g h1 h2 => pullback.hom_ext h1 h2
  have liftTT : ∀ {Y : Scheme.{0}} (a b : Y ⟶ (Desc.UT N).left), a ≫ (Desc.UT N).hom = b ≫ (Desc.UT N).hom →
      ∃ f : Y ⟶ (Desc.UT N ⊗ Desc.UT N).left,
        f ≫ (fst (Desc.UT N) (Desc.UT N)).left = a ∧ f ≫ (snd (Desc.UT N) (Desc.UT N)).left = b :=
    fun a b h => ⟨pullback.lift a b h, pullback.lift_fst _ _ _, pullback.lift_snd _ _ _⟩
  have ha : ∀ s : PullbackCone (N.U ⊗ N.U).hom (pullback.fst π π ≫ π),
      (s.fst ≫ (fst N.U N.U).left) ≫ N.U.hom = s.snd ≫ pullback.fst π π ≫ π := fun s => by
    rw [Category.assoc, ← hUU]; exact s.condition
  have hb : ∀ s : PullbackCone (N.U ⊗ N.U).hom (pullback.fst π π ≫ π),
      (s.fst ≫ (snd N.U N.U).left) ≫ N.U.hom = s.snd ≫ pullback.fst π π ≫ π := fun s => by
    rw [Category.assoc, ← cUU, ← hUU]; exact s.condition
  have hab : ∀ s : PullbackCone (N.U ⊗ N.U).hom (pullback.fst π π ≫ π),
      liftU N _ _ (ha s) ≫ (Desc.UT N).hom = liftU N _ _ (hb s) ≫ (Desc.UT N).hom := fun s => by
    rw [liftU_hom, liftU_hom]
  refine IsPullback.of_isLimit (c := PullbackCone.mk _ _ (pairU_over N)) ?_
  refine PullbackCone.IsLimit.mk (pairU_over N) (fun s => (liftTT _ _ (hab s)).choose) ?_ ?_ ?_
  · intro s
    obtain ⟨h1, h2⟩ := (liftTT _ _ (hab s)).choose_spec
    apply extUU
    · rw [Category.assoc, pairU_fst, ← Category.assoc, h1, liftU_prU]
    · rw [Category.assoc, pairU_snd, ← Category.assoc, h2, liftU_prU]
  · intro s
    obtain ⟨h1, _⟩ := (liftTT _ _ (hab s)).choose_spec
    show _ ≫ (Desc.UT N ⊗ Desc.UT N).hom = _
    rw [hTT, ← Category.assoc, h1, liftU_hom]
  · intro s m m1 m2
    obtain ⟨h1, h2⟩ := (liftTT _ _ (hab s)).choose_spec
    have m2' : m ≫ (Desc.UT N ⊗ Desc.UT N).hom = s.snd := m2
    rw [hTT] at m2'
    apply extTT
    · rw [h1]
      apply UT_ext
      · rw [liftU_prU, Category.assoc, ← pairU_fst, ← Category.assoc, m1]
      · rw [liftU_hom, Category.assoc, m2']
    · rw [h2]
      apply UT_ext
      · rw [liftU_prU, Category.assoc, ← pairU_snd, ← Category.assoc, m1]
      · rw [liftU_hom, Category.assoc, ← cTT, m2']

end GlobalTheory.Mum.DescKP
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullbackDescentSquarePairToOpenSquare =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullbackDescentSquarePairToOpenSquareStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullbackDescentSquarePairToOpenSquareStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PairUOver\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullbackDescentSquarePairToOpenSquare\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullbackDescentSquarePairToOpenSquareStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NearOpenSumEqEmbeddingDescendedMultiplication =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.NearOpenSumEqEmbeddingDescendedMultiplication", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PairUOver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.SabPull\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum.DescKP

variable {R : Type} [CommRing R] [IsLocalRing R] {S : Scheme.{0}} {π : S ⟶ Sp R} {G : Over S}

theorem toS_fst' (N : Near π G) (p : pullback π π ⟶ S) (hp : p ≫ π = pullback.fst π π ≫ π) :
    Desc.toS N p hp ≫ pullback.fst _ _ = pullback.fst _ _ := pullback.lift_fst _ _ _

theorem toS_snd' (N : Near π G) (p : pullback π π ⟶ S) (hp : p ≫ π = pullback.fst π π ≫ π) :
    Desc.toS N p hp ≫ pullback.snd _ _ = pullback.snd _ _ ≫ p := pullback.lift_snd _ _ _

theorem embL_fst' (N : Near π G) (p : pullback π π ⟶ S) (hp : p ≫ π = pullback.fst π π ≫ π) :
    (Desc.emb N p hp).left ≫ pullback.fst G.hom p = Desc.toS N p hp ≫ N.u := pullback.lift_fst _ _ _

theorem embL_snd' (N : Near π G) (p : pullback π π ⟶ S) (hp : p ≫ π = pullback.fst π π ≫ π) :
    (Desc.emb N p hp).left ≫ pullback.snd G.hom p = pullback.snd _ _ := pullback.lift_snd _ _ _

theorem pairU_fst' (N : Near π G) :
    pairU N ≫ (fst N.U N.U).left = (fst (Desc.UT N) (Desc.UT N)).left ≫ pullback.fst _ _ := by
  show (lift (fstU N) (sndU N) ≫ fst _ _).left = _
  rw [lift_fst]; rfl

theorem pairU_snd' (N : Near π G) :
    pairU N ≫ (snd N.U N.U).left = (snd (Desc.UT N) (Desc.UT N)).left ≫ pullback.fst _ _ := by
  show (lift (fstU N) (sndU N) ≫ snd _ _).left = _
  rw [lift_snd]; rfl

theorem fst_hom' (N : Near π G) :
    (fst (Desc.UT N) (Desc.UT N)).left ≫ pullback.snd N.U.hom (pullback.fst π π ≫ π) = (Desc.UT N ⊗ Desc.UT N).hom :=
  Over.w (fst (Desc.UT N) (Desc.UT N))

theorem snd_hom' (N : Near π G) :
    (snd (Desc.UT N) (Desc.UT N)).left ≫ pullback.snd N.U.hom (pullback.fst π π ≫ π) = (Desc.UT N ⊗ Desc.UT N).hom :=
  Over.w (snd (Desc.UT N) (Desc.UT N))

theorem mT_fst' (N : Near π G) (V : (N.U ⊗ N.U).left.Opens) (m : V.toScheme ⟶ N.U.left)
    (hm : m ≫ N.U.hom = V.ι ≫ (N.U ⊗ N.U).hom) : mT N V m hm ≫ pullback.fst _ _ = (pairU N ∣_ V) ≫ m :=
  pullback.lift_fst _ _ _

theorem mT_snd' (N : Near π G) (V : (N.U ⊗ N.U).left.Opens) (m : V.toScheme ⟶ N.U.left)
    (hm : m ≫ N.U.hom = V.ι ≫ (N.U ⊗ N.U).hom) :
    mT N V m hm ≫ pullback.snd _ _ = (VT N V).ι ≫ (Desc.UT N ⊗ Desc.UT N).hom :=
  pullback.lift_snd _ _ _

end GlobalTheory.Mum.DescKP

namespace GlobalTheory.Mum.DescKP

variable {R : Type} [CommRing R] [IsLocalRing R] {S : Scheme.{0}} {π : S ⟶ Sp R} {G : Over S}

theorem fst_toS_fst' (N : Near π G) (p : pullback π π ⟶ S) (hp : p ≫ π = pullback.fst π π ≫ π) :
    ((fst (Desc.UT N) (Desc.UT N)).left ≫ Desc.toS N p hp) ≫ pullback.fst _ _ =
      (fst (Desc.UT N) (Desc.UT N)).left ≫ pullback.fst _ _ :=
  (Category.assoc _ _ _).trans (congrArg ((fst (Desc.UT N) (Desc.UT N)).left ≫ ·) (toS_fst' N p hp))

theorem snd_toS_fst' (N : Near π G) (p : pullback π π ⟶ S) (hp : p ≫ π = pullback.fst π π ≫ π) :
    ((snd (Desc.UT N) (Desc.UT N)).left ≫ Desc.toS N p hp) ≫ pullback.fst _ _ =
      (snd (Desc.UT N) (Desc.UT N)).left ≫ pullback.fst _ _ :=
  (Category.assoc _ _ _).trans (congrArg ((snd (Desc.UT N) (Desc.UT N)).left ≫ ·) (toS_fst' N p hp))

theorem fst_toS_snd' (N : Near π G) (p : pullback π π ⟶ S) (hp : p ≫ π = pullback.fst π π ≫ π) :
    ((fst (Desc.UT N) (Desc.UT N)).left ≫ Desc.toS N p hp) ≫ pullback.snd _ _ = (Desc.UT N ⊗ Desc.UT N).hom ≫ p :=
  (Category.assoc _ _ _).trans ((congrArg ((fst (Desc.UT N) (Desc.UT N)).left ≫ ·) (toS_snd' N p hp)).trans
    ((Category.assoc _ _ _).symm.trans (congrArg (· ≫ p) (fst_hom' N))))

theorem snd_toS_snd' (N : Near π G) (p : pullback π π ⟶ S) (hp : p ≫ π = pullback.fst π π ≫ π) :
    ((snd (Desc.UT N) (Desc.UT N)).left ≫ Desc.toS N p hp) ≫ pullback.snd _ _ = (Desc.UT N ⊗ Desc.UT N).hom ≫ p :=
  (Category.assoc _ _ _).trans ((congrArg ((snd (Desc.UT N) (Desc.UT N)).left ≫ ·) (toS_snd' N p hp)).trans
    ((Category.assoc _ _ _).symm.trans (congrArg (· ≫ p) (snd_hom' N))))

theorem fst_toS_u' (N : Near π G) (p : pullback π π ⟶ S) (hp : p ≫ π = pullback.fst π π ≫ π) :
    ((fst (Desc.UT N) (Desc.UT N)).left ≫ Desc.toS N p hp) ≫ N.u =
      (fst (Desc.UT N) (Desc.UT N)).left ≫ (Desc.emb N p hp).left ≫ pullback.fst G.hom p :=
  (Category.assoc _ _ _).trans (congrArg ((fst (Desc.UT N) (Desc.UT N)).left ≫ ·) (embL_fst' N p hp).symm)

theorem snd_toS_u' (N : Near π G) (p : pullback π π ⟶ S) (hp : p ≫ π = pullback.fst π π ≫ π) :
    ((snd (Desc.UT N) (Desc.UT N)).left ≫ Desc.toS N p hp) ≫ N.u =
      (snd (Desc.UT N) (Desc.UT N)).left ≫ (Desc.emb N p hp).left ≫ pullback.fst G.hom p :=
  (Category.assoc _ _ _).trans (congrArg ((snd (Desc.UT N) (Desc.UT N)).left ≫ ·) (embL_fst' N p hp).symm)

end GlobalTheory.Mum.DescKP

namespace GlobalTheory.Mum.DescKP

theorem sum_eq_mT_emb : ∀ {R : Type} [CommRing R] [IsLocalRing R] {S : Scheme.{0}} {π : S ⟶ Sp R} {G : Over S} [GrpObj G] (N : Near π G) (V : (N.U ⊗ N.U).left.Opens) (m : V.toScheme ⟶ N.U.left) (hm : m ≫ N.U.hom = V.ι ≫ (N.U ⊗ N.U).hom), (∀ (T : Scheme.{0}) (v : T ⟶ V.toScheme) (s : T ⟶ S) (x y : Over.mk s ⟶ G), N.Pt s (v ≫ V.ι ≫ (fst N.U N.U).left) x.left → N.Pt s (v ≫ V.ι ≫ (snd N.U N.U).left) y.left → N.Pt s (v ≫ m) (x * y).left) → ∀ (p : pullback π π ⟶ S) (hp : p ≫ π = pullback.fst π π ≫ π), (DescKP.VT N V).ι ≫ (Desc.sum N p hp).left = DescKP.mT N V m hm ≫ (Desc.emb N p hp).left := by
  intro R _ _ S π G _ N V m hm law p hp
  let T0 : Over (pullback π π) := Over.mk ((VT N V).ι ≫ (Desc.UT N ⊗ Desc.UT N).hom)
  let ι0 : T0 ⟶ Desc.UT N ⊗ Desc.UT N := Over.homMk (VT N V).ι rfl
  let a : T0 ⟶ (Over.pullback p).obj G := ι0 ≫ fst _ _ ≫ Desc.emb N p hp
  let b : T0 ⟶ (Over.pullback p).obj G := ι0 ≫ snd _ _ ≫ Desc.emb N p hp
  have hab : ι0 ≫ Desc.sum N p hp = a * b := by rw [Desc.sum, comp_mul]
  have wpt : ∀ c : T0 ⟶ (Over.pullback p).obj G, (c.left ≫ pullback.fst G.hom p) ≫ G.hom = T0.hom ≫ p := by
    intro c
    rw [Category.assoc, pullback.condition, ← Category.assoc]
    exact congrArg (· ≫ p) (Over.w c)
  let x : Over.mk (T0.hom ≫ p) ⟶ G := Over.homMk (a.left ≫ pullback.fst G.hom p) (wpt a)
  let y : Over.mk (T0.hom ≫ p) ⟶ G := Over.homMk (b.left ≫ pullback.fst G.hom p) (wpt b)
  have hxy : (x * y).left = (a * b).left ≫ pullback.fst G.hom p :=
    (isGrpPullback_pullback G p).2 T0 a b x y rfl rfl
  have e : (pairU N ∣_ V) ≫ V.ι = (VT N V).ι ≫ pairU N := morphismRestrict_ι _ _
  have e' : ∀ {Z : Scheme.{0}} (h : (N.U ⊗ N.U).left ⟶ Z), (pairU N ∣_ V) ≫ V.ι ≫ h = (VT N V).ι ≫ pairU N ≫ h :=
    fun h => by rw [← Category.assoc, e, Category.assoc]
  have ptx : N.Pt (T0.hom ≫ p) ((pairU N ∣_ V) ≫ V.ι ≫ (fst N.U N.U).left) x.left := by
    refine ⟨(VT N V).ι ≫ (fst (Desc.UT N) (Desc.UT N)).left ≫ Desc.toS N p hp, ?_, ?_, ?_⟩
    · exact (Category.assoc _ _ _).trans ((congrArg ((VT N V).ι ≫ ·) ((fst_toS_fst' N p hp).trans (pairU_fst' N).symm)).trans (e' _).symm)
    · exact (Category.assoc _ _ _).trans ((congrArg ((VT N V).ι ≫ ·) (fst_toS_snd' N p hp)).trans (Category.assoc _ _ _).symm)
    · exact (Category.assoc _ _ _).trans ((congrArg ((VT N V).ι ≫ ·) (fst_toS_u' N p hp)).trans (Category.assoc _ _ _).symm)
  have pty : N.Pt (T0.hom ≫ p) ((pairU N ∣_ V) ≫ V.ι ≫ (snd N.U N.U).left) y.left := by
    refine ⟨(VT N V).ι ≫ (snd (Desc.UT N) (Desc.UT N)).left ≫ Desc.toS N p hp, ?_, ?_, ?_⟩
    · exact (Category.assoc _ _ _).trans ((congrArg ((VT N V).ι ≫ ·) ((snd_toS_fst' N p hp).trans (pairU_snd' N).symm)).trans (e' _).symm)
    · exact (Category.assoc _ _ _).trans ((congrArg ((VT N V).ι ≫ ·) (snd_toS_snd' N p hp)).trans (Category.assoc _ _ _).symm)
    · exact (Category.assoc _ _ _).trans ((congrArg ((VT N V).ι ≫ ·) (snd_toS_u' N p hp)).trans (Category.assoc _ _ _).symm)
  obtain ⟨x₀, h₁, h₂, h₃⟩ := law (VT N V).toScheme (pairU N ∣_ V) (T0.hom ≫ p) x y ptx pty
  have hx₀ : x₀ = mT N V m hm ≫ Desc.toS N p hp := by
    apply pullback.hom_ext
    · exact h₁.trans (((Category.assoc _ _ _).trans ((congrArg (mT N V m hm ≫ ·) (toS_fst' N p hp)).trans (mT_fst' N V m hm))).symm)
    · exact h₂.trans (((Category.assoc _ _ _).trans ((congrArg (mT N V m hm ≫ ·) (toS_snd' N p hp)).trans ((Category.assoc _ _ _).symm.trans (congrArg (· ≫ p) (mT_snd' N V m hm))))).symm)
  apply pullback.hom_ext
  · rw [Category.assoc (mT N V m hm), embL_fst']
    refine (?_ : _ = (mT N V m hm ≫ Desc.toS N p hp) ≫ N.u).trans (Category.assoc _ _ _)
    rw [← hx₀, h₃, hxy, ← hab]
    rfl
  · have w : (Desc.sum N p hp).left ≫ pullback.snd G.hom p = (Desc.UT N ⊗ Desc.UT N).hom := Over.w _
    rw [Category.assoc, w, Category.assoc, embL_snd', mT_snd']

end GlobalTheory.Mum.DescKP
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NearOpenSumEqEmbeddingDescendedMultiplication =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SurjectiveOpenContainingClosedFibreSmoothSquare =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SurjectiveOpenContainingClosedFibreSmoothSquare", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Morphisms.Smooth\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\npublic import Mathlib.AlgebraicGeometry.Morphisms.UniversallyOpen\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.CanonGenIsGen\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum.NearSurj

theorem surjective_of_open_closedFibre : ∀ {R : Type} [CommRing R] [IsLocalRing R] (U : Over (Sp R)), Smooth U.hom → Surjective U.hom → ∀ (V : (U ⊗ U).left.Opens), (∀ z : (U ⊗ U).left, (U ⊗ U).hom z = closedPoint R → z ∈ V) → Surjective (V.ι ≫ (U ⊗ U).hom) := by
  intro R _ _ U hs hsu V hV
  have : Smooth (U ⊗ U).hom := inferInstanceAs (Smooth (pullback.fst U.hom U.hom ≫ U.hom))
  obtain ⟨u, hu⟩ := U.hom.surjective (closedPoint R)
  let d : U.left ⟶ (U ⊗ U).left := pullback.lift (𝟙 _) (𝟙 _) rfl
  have hd : (U ⊗ U).hom (d u) = closedPoint R := by
    rw [← hu, ← Scheme.Hom.comp_apply]
    change (pullback.lift (𝟙 U.left) (𝟙 U.left) rfl ≫ pullback.fst U.hom U.hom ≫ U.hom) u = _
    rw [pullback.lift_fst_assoc, Category.id_comp]
  have hmem : d u ∈ V := hV _ hd
  have ho : IsOpenMap (V.ι ≫ (U ⊗ U).hom) := (V.ι ≫ (U ⊗ U).hom).isOpenMap
  refine ⟨fun r => ?_⟩
  obtain ⟨y, hy⟩ : d u ∈ Set.range V.ι := by rw [Scheme.Opens.range_ι]; exact hmem
  have h₂ : (V.ι ≫ (U ⊗ U).hom) y = closedPoint R := by
    rw [Scheme.Hom.comp_apply, hy]; exact hd
  exact (IsLocalRing.specializes_closedPoint r).mem_open ho.isOpen_range ⟨_, h₂⟩

end GlobalTheory.Mum.NearSurj
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SurjectiveOpenContainingClosedFibreSmoothSquare =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.KernelPairSumEqOfSumEqOtherPullback =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.KernelPairSumEqOfSumEqOtherPullback", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PairUOver\npublic import Mathlib.AlgebraicGeometry.Geometrically.Irreducible\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GeometricallyIrreducibleCompOfIsOpenImmersion\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsMonHomOfSumMapCompFixingNearOpen\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsPullbackDescentSquarePairToOpenSquareStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NearOpenSumEqEmbeddingDescendedMultiplication\npublic import Mathlib.AlgebraicGeometry.Morphisms.Smooth\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SurjectiveOpenContainingClosedFibreSmoothSquare\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum.DescKP

variable {R : Type} [CommRing R] [IsLocalRing R] {S : Scheme.{0}} {π : S ⟶ Sp R} {G : Over S} [GrpObj G]

theorem ι_mem {X : Scheme.{0}} (U : X.Opens) (x : U.toScheme) : U.ι x ∈ U := x.2

theorem surjective_Wk (N : Near π G) (p : pullback π π ⟶ S) (hp : p ≫ π = pullback.fst π π ≫ π)
    (V : (N.U ⊗ N.U).left.Opens) (h : Surjective ((VT N V).ι ≫ (Desc.UT N ⊗ Desc.UT N).hom)) :
    Surjective ((Wk N p hp V).ι ≫ (Pk N p hp).hom) := by
  obtain ⟨z, h1, h2⟩ := exists_lift N p hp (VT N V).toScheme (VT N V).ι (VT N V).ι rfl
  have hr : Set.range z ⊆ Set.range (Wk N p hp V).ι := by
    rintro _ ⟨x, rfl⟩
    rw [Scheme.Opens.range_ι]
    refine ⟨?_, ?_⟩
    · show (abP N p hp).left (z x) ∈ VT N V
      rw [← Scheme.Hom.comp_apply, h1]; exact ι_mem _ x
    · show (cdP N p hp).left (z x) ∈ VT N V
      rw [← Scheme.Hom.comp_apply, h2]; exact ι_mem _ x
  let z' := IsOpenImmersion.lift (Wk N p hp V).ι z hr
  have e : z' ≫ (Wk N p hp V).ι ≫ (Pk N p hp).hom = (VT N V).ι ≫ (Desc.UT N ⊗ Desc.UT N).hom := by
    rw [← Category.assoc, IsOpenImmersion.lift_fac, ← h1, Category.assoc, Over.w (abP N p hp)]
  have : Surjective (z' ≫ (Wk N p hp V).ι ≫ (Pk N p hp).hom) := by rw [e]; exact h
  exact Surjective.of_comp z' _

theorem agree_Wk (N : Near π G) (V : (N.U ⊗ N.U).left.Opens) (m : V.toScheme ⟶ N.U.left)
    (hm : m ≫ N.U.hom = V.ι ≫ (N.U ⊗ N.U).hom) (p p' : pullback π π ⟶ S) (hp : p ≫ π = pullback.fst π π ≫ π)
    (hp' : p' ≫ π = pullback.fst π π ≫ π)
    (h : (VT N V).ι ≫ (Desc.sum N p hp).left = mT N V m hm ≫ (Desc.emb N p hp).left)
    (h' : (VT N V).ι ≫ (Desc.sum N p' hp').left = mT N V m hm ≫ (Desc.emb N p' hp').left) :
    (Wk N p hp V).ι ≫ (abP N p hp ≫ Desc.sum N p' hp').left =
      (Wk N p hp V).ι ≫ (cdP N p hp ≫ Desc.sum N p' hp').left := by
  let a' := IsOpenImmersion.lift (VT N V).ι ((Wk N p hp V).ι ≫ (abP N p hp).left) (by
    rintro _ ⟨x, rfl⟩; rw [Scheme.Opens.range_ι]; exact (ι_mem _ x).1)
  let c' := IsOpenImmersion.lift (VT N V).ι ((Wk N p hp V).ι ≫ (cdP N p hp).left) (by
    rintro _ ⟨x, rfl⟩; rw [Scheme.Opens.range_ι]; exact (ι_mem _ x).2)
  have ea : a' ≫ (VT N V).ι = (Wk N p hp V).ι ≫ (abP N p hp).left := IsOpenImmersion.lift_fac _ _ _
  have ec : c' ≫ (VT N V).ι = (Wk N p hp V).ι ≫ (cdP N p hp).left := IsOpenImmersion.lift_fac _ _ _
  have e0 := congrArg (fun f => (Wk N p hp V).ι ≫ Over.Hom.left f) (abP_sum N p hp)
  simp only [Over.comp_left] at e0
  have hemb := GlobalTheory.Mum.DescHom.isOpenImmersion_emb N p hp
  have e2 : a' ≫ mT N V m hm = c' ≫ mT N V m hm := by
    refine (cancel_mono (Desc.emb N p hp).left).1 ?_
    simp only [Category.assoc]
    rw [← h, ← Category.assoc, ea, ← Category.assoc, ec, Category.assoc, Category.assoc]
    exact e0
  simp only [Over.comp_left]
  rw [← Category.assoc, ← ea, Category.assoc, h', ← Category.assoc, e2, Category.assoc, ← h', ← Category.assoc, ec,
    Category.assoc]

end GlobalTheory.Mum.DescKP


open GlobalTheory.Mum.DescKP in
theorem GlobalTheory.Mum.DescKP.sum_eq_of_sum_eq : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (S : Scheme.{0}) (π : S ⟶ Sp R), IsProper π → Surjective π → IsIntegral S → ∀ (G' : Over S) [GrpObj G'] [IsCommMonObj G'], IsSemiAbelian G' → ∀ N : Near π G', N.Law → ∀ (p p' : pullback π π ⟶ S) (hp : p ≫ π = pullback.fst π π ≫ π) (hp' : p' ≫ π = pullback.fst π π ≫ π), ∀ (Z : Scheme.{0}) (g g' : Z ⟶ (Desc.UT N ⊗ Desc.UT N).left), g ≫ (Desc.sum N p hp).left = g' ≫ (Desc.sum N p hp).left → g ≫ (Desc.sum N p' hp').left = g' ≫ (Desc.sum N p' hp').left := by
  intro R _ _ _ _ S π _ _ _ G _ _ hG N hLaw p p' hp hp' Z g g' hgg
  obtain ⟨V, m, hV, hm, hL⟩ := hLaw
  have hlaw := fun (q : pullback π π ⟶ S) (hq : q ≫ π = pullback.fst π π ≫ π) => _root_.GlobalTheory.Mum.DescKP.sum_eq_mT_emb N V m hm hL q hq
  have : Smooth N.U.hom := N.smooth
  have : Surjective N.U.hom := DescHom.surjective_near N
  have : Smooth G.hom := hG.smooth
  have : IsSeparated G.hom := hG.separated
  have := DescHom.geometricallyIrreducible_of_semiAbelian G hG

  have sV := _root_.GlobalTheory.Mum.NearSurj.surjective_of_open_closedFibre N.U N.smooth inferInstance V hV
  have sq : IsPullback (DescKP.pairU N ∣_ V) ((VT N V).ι ≫ (Desc.UT N ⊗ Desc.UT N).hom)
      (V.ι ≫ (N.U ⊗ N.U).hom) (pullback.fst π π ≫ π) :=
    (isPullback_morphismRestrict (DescKP.pairU N) V).paste_vert (_root_.GlobalTheory.Mum.DescKP.pairU_isPullback N)
  have sVT : Surjective ((VT N V).ι ≫ (Desc.UT N ⊗ Desc.UT N).hom) :=
    MorphismProperty.of_isPullback (P := @Surjective) sq sV
  have sW := DescKP.surjective_Wk N p hp V sVT

  have : Smooth (Desc.UT N).hom := inferInstanceAs (Smooth (pullback.snd N.U.hom (pullback.fst π π ≫ π)))
  have : Surjective (Desc.UT N).hom := inferInstanceAs (Surjective (pullback.snd N.U.hom (pullback.fst π π ≫ π)))
  have hGp : GeometricallyIrreducible ((Over.pullback p).obj G).hom :=
    inferInstanceAs (GeometricallyIrreducible (pullback.snd G.hom p))
  have := DescHom.isOpenImmersion_emb N p hp
  have : GeometricallyIrreducible (Desc.UT N).hom := by
    have e : (Desc.emb N p hp).left ≫ ((Over.pullback p).obj G).hom = (Desc.UT N).hom := Over.w _
    have h := _root_.GlobalTheory.OpenGeomIrr.geometricallyIrreducible_comp_of_isOpenImmersion _ _ _ (Desc.emb N p hp).left inferInstance _ hGp (by rw [e]; infer_instance)
    rwa [e] at h
  have : Smooth (Desc.UT N ⊗ Desc.UT N).hom :=
    inferInstanceAs (Smooth (pullback.fst (Desc.UT N).hom (Desc.UT N).hom ≫ (Desc.UT N).hom))
  have : GeometricallyIrreducible (Desc.UT N ⊗ Desc.UT N).hom :=
    GeometricallyIrreducible.comp (pullback.fst (Desc.UT N).hom (Desc.UT N).hom) (Desc.UT N).hom
  have : Smooth ((Desc.UT N ⊗ Desc.UT N) ⊗ Desc.UT N).hom :=
    inferInstanceAs (Smooth (pullback.fst (Desc.UT N ⊗ Desc.UT N).hom (Desc.UT N).hom ≫ (Desc.UT N ⊗ Desc.UT N).hom))
  have h3 : GeometricallyIrreducible ((Desc.UT N ⊗ Desc.UT N) ⊗ Desc.UT N).hom :=
    GeometricallyIrreducible.comp (pullback.fst (Desc.UT N ⊗ Desc.UT N).hom (Desc.UT N).hom) (Desc.UT N ⊗ Desc.UT N).hom
  have : Surjective (DescKP.Pk N p hp).hom := Surjective.of_comp (DescKP.Wk N p hp V).ι _
  have : Smooth (DescKP.Pk N p hp).hom :=
    inferInstanceAs (Smooth (pullback.snd (Desc.emb N p hp).left (DescKP.trip N p hp).left ≫
      ((Desc.UT N ⊗ Desc.UT N) ⊗ Desc.UT N).hom))
  have : GeometricallyIrreducible (DescKP.Pk N p hp).hom :=
    _root_.GlobalTheory.OpenGeomIrr.geometricallyIrreducible_comp_of_isOpenImmersion _ _ _ (pullback.snd (Desc.emb N p hp).left (DescKP.trip N p hp).left) inferInstance _ h3
      (inferInstanceAs (Surjective (DescKP.Pk N p hp).hom))
  have : IsSeparated ((Over.pullback p').obj G).hom := inferInstanceAs (IsSeparated (pullback.snd G.hom p'))

  let j : Over.mk ((DescKP.Wk N p hp V).ι ≫ (DescKP.Pk N p hp).hom) ⟶ DescKP.Pk N p hp :=
    Over.homMk (DescKP.Wk N p hp V).ι rfl
  have : IsOpenImmersion j.left := inferInstanceAs (IsOpenImmersion (DescKP.Wk N p hp V).ι)
  have : Surjective (Over.mk ((DescKP.Wk N p hp V).ι ≫ (DescKP.Pk N p hp).hom)).hom := sW
  have hF : DescKP.abP N p hp ≫ Desc.sum N p' hp' = DescKP.cdP N p hp ≫ Desc.sum N p' hp' := by
    refine DescHom.ext_of_open j ?_
    ext1
    exact DescKP.agree_Wk N V m hm p p' hp hp' (hlaw p hp) (hlaw p' hp')
  obtain ⟨z, hz, hz'⟩ := DescKP.exists_lift N p hp Z g g' hgg
  rw [← hz, ← hz', Category.assoc, Category.assoc, ← Over.comp_left, ← Over.comp_left, hF]
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.KernelPairSumEqOfSumEqOtherPullback =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NearOpenEmbeddingCompOfSumMapComp =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.NearOpenEmbeddingCompOfSumMapComp", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDescentDatumOfDescendedMultiplicationImpor\npublic import Mathlib.AlgebraicGeometry.Morphisms.Separated\npublic import Mathlib.AlgebraicGeometry.Morphisms.Smooth\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HomExtOfAgreeOnFibreDenseOpenSmooth\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IrreducibleSpaceOfSmoothFieldOfConnectedSpace\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.SabPull\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum.DescFix

set_option backward.isDefEq.respectTransparency false

theorem smooth_of_comp_mono {W X G : Scheme.{0}} (m : W ⟶ X) (e : X ⟶ G) [Mono e] [hs : Smooth (m ≫ e)] : Smooth m := by
  have : IsPullback (𝟙 W) m (m ≫ e) e := IsPullback.of_horiz_isIso_mono ⟨by simp⟩
  exact MorphismProperty.of_isPullback (P := @Smooth) this hs

theorem smooth_mul {T : Scheme.{0}} (G : Over T) [GrpObj G] [Smooth G.hom] : Smooth (μ[G]).left := by
  let σ : G ⊗ G ≅ G ⊗ G :=
    { hom := lift (fst G G * snd G G) (snd G G)
      inv := lift (fst G G * (snd G G)⁻¹) (snd G G)
      hom_inv_id := by
        apply CartesianMonoidalCategory.hom_ext <;> simp [MonObj.comp_mul, GrpObj.comp_inv]
      inv_hom_id := by
        apply CartesianMonoidalCategory.hom_ext <;> simp [MonObj.comp_mul] }
  have h : μ[G] = σ.hom ≫ fst G G := by
    simp [σ, Hom.mul_def]
  have h₁ : Smooth (fst G G).left := inferInstanceAs (Smooth (pullback.fst G.hom G.hom))
  have h₂ : IsIso σ.hom.left := inferInstanceAs (IsIso ((Over.forget T).mapIso σ).hom)
  rw [h, Over.comp_left]
  infer_instance

theorem isPreirreducible_fibre {X T : Scheme.{0}} (f : X ⟶ T) [Smooth f] [GeometricallyConnected f] (t : T) :
    IsPreirreducible (f ⁻¹' {t}) := by
  have : IrreducibleSpace (f.fiber t) :=
    GlobalTheory.irreducibleSpace_of_smooth_field_of_connectedSpace (T.residueField t) (f.fiber t) (f.fiberToSpecResidueField t)
      (inferInstanceAs (Smooth (pullback.snd _ _))) inferInstance
  rw [← Scheme.Hom.range_fiberι, ← Set.image_univ]
  exact (PreirreducibleSpace.isPreirreducible_univ).image _ (f.fiberι t).continuous.continuousOn

theorem eq_of_smooth_comp {W X T Y : Scheme.{0}} (p : X ⟶ T) [Smooth p] (hp : ∀ t : T, IsPreirreducible (p ⁻¹' {t}))
    (m : W ⟶ X) [Smooth m] [Surjective (m ≫ p)] (q : Y ⟶ T) [IsSeparated q] (f g : X ⟶ Y) (hfg : f ≫ q = g ≫ q)
    (h : m ≫ f = m ≫ g) : f = g := by
  let P : X.Opens := ⟨Set.range m, m.isOpenMap.isOpen_range⟩
  refine _root_.GlobalTheory.FibreDense.main X T Y p q P (fun x => ?_) f g hfg ?_
  · obtain ⟨w, hw⟩ := (m ≫ p).surjective (p x)
    have := subset_closure_inter_of_isPreirreducible_of_isOpen (hp (p x)) P.2 ⟨m w, by simpa using hw, w, rfl⟩
    rw [Set.inter_comm] at this
    exact this rfl
  · let l : W ⟶ P.toScheme := IsOpenImmersion.lift P.ι m (by simp [P])
    have hl : l ≫ P.ι = m := IsOpenImmersion.lift_fac _ _ _
    have : Smooth (l ≫ P.ι) := by rw [hl]; infer_instance
    have : Smooth l := smooth_of_comp_mono l P.ι
    have : Surjective l := ⟨fun y => by
      obtain ⟨w, hw⟩ := y.2
      refine ⟨w, P.ι.isOpenEmbedding.injective ?_⟩
      rw [← Scheme.Hom.comp_apply, hl]
      exact hw⟩
    have : Epi l := Flat.epi_of_flat_of_surjective l
    rw [← cancel_epi l, ← Category.assoc, ← Category.assoc, hl, h]

variable {R : Type} [CommRing R] [IsLocalRing R] {S : Scheme.{0}} {π : S ⟶ Sp R} {G : Over S}

theorem isOpenImmersion_emb (N : Near π G) (p : pullback π π ⟶ S) (hp : p ≫ π = pullback.fst π π ≫ π) :
    IsOpenImmersion (Desc.emb N p hp).left := by
  apply _root_.GlobalTheory.Mum.DescHom.isOpenImmersion_emb <;> assumption

theorem surjective_of_closedFibre [GrpObj G] [Surjective π] (N : Near π G) (V : (N.U ⊗ N.U).left.Opens)
    (hV : ∀ z : (N.U ⊗ N.U).left, (N.U ⊗ N.U).hom z = closedPoint R → z ∈ V) :
    Surjective (V.ι ≫ (N.U ⊗ N.U).hom) := by
  have := N.smooth
  have : Smooth (N.U ⊗ N.U).hom := inferInstanceAs (Smooth (pullback.fst N.U.hom N.U.hom ≫ N.U.hom))
  obtain ⟨s, hs⟩ := π.surjective (closedPoint R)
  have he : (η[G]).left ≫ G.hom = 𝟙 S := Over.w η[G]
  have he' : G.hom ((η[G]).left s) = s := by
    rw [← Scheme.Hom.comp_apply, he]; rfl
  obtain ⟨x, hx⟩ := N.all ((η[G]).left s) (by rw [he', hs])
  have h₁ : N.U.hom (pullback.fst N.U.hom π x) = closedPoint R := by
    rw [← Scheme.Hom.comp_apply, pullback.condition, Scheme.Hom.comp_apply, ← N.u_over, Scheme.Hom.comp_apply, hx, he', hs]
  let z : (N.U ⊗ N.U).left := (lift (𝟙 N.U) (𝟙 N.U)).left (pullback.fst N.U.hom π x)
  have hz : (N.U ⊗ N.U).hom z = closedPoint R := by
    rw [← h₁, ← Scheme.Hom.comp_apply, Over.w]
  let O : TopologicalSpace.Opens (PrimeSpectrum R) :=
    ⟨Set.range (V.ι ≫ (N.U ⊗ N.U).hom), (V.ι ≫ (N.U ⊗ N.U).hom).isOpenMap.isOpen_range⟩
  have hO : O = ⊤ := (closedPoint_mem_iff O).1 ⟨⟨z, hV z hz⟩, hz⟩
  exact ⟨fun t => (hO.ge (Set.mem_univ t) : t ∈ O)⟩

def toSq (N : Near π G) : (Desc.UT N ⊗ Desc.UT N).left ⟶ (N.U ⊗ N.U).left :=
  pullback.lift ((fst (Desc.UT N) (Desc.UT N)).left ≫ pullback.fst N.U.hom (pullback.fst π π ≫ π))
    ((snd (Desc.UT N) (Desc.UT N)).left ≫ pullback.fst N.U.hom (pullback.fst π π ≫ π)) (by
      rw [Category.assoc, Category.assoc, pullback.condition, ← Category.assoc, ← Category.assoc _ _ (_ ≫ π)]
      exact congrArg (· ≫ _) ((Over.w (fst (Desc.UT N) (Desc.UT N))).trans (Over.w (snd (Desc.UT N) (Desc.UT N))).symm))

theorem toSq_fst (N : Near π G) : toSq N ≫ (fst N.U N.U).left =
    (fst (Desc.UT N) (Desc.UT N)).left ≫ pullback.fst N.U.hom (pullback.fst π π ≫ π) := pullback.lift_fst _ _ _

theorem toSq_snd (N : Near π G) : toSq N ≫ (snd N.U N.U).left =
    (snd (Desc.UT N) (Desc.UT N)).left ≫ pullback.fst N.U.hom (pullback.fst π π ≫ π) := pullback.lift_snd _ _ _

theorem toSq_hom (N : Near π G) : toSq N ≫ (N.U ⊗ N.U).hom =
    (Desc.UT N ⊗ Desc.UT N).hom ≫ pullback.fst π π ≫ π := by
  rw [← Over.w (fst N.U N.U), ← Category.assoc, toSq_fst, Category.assoc, pullback.condition, ← Category.assoc]
  exact congrArg (· ≫ _) (Over.w (fst (Desc.UT N) (Desc.UT N)))

theorem surjective_preimage (N : Near π G) (V : (N.U ⊗ N.U).left.Opens) [Surjective (V.ι ≫ (N.U ⊗ N.U).hom)] :
    Surjective ((toSq N ⁻¹ᵁ V).ι ≫ (Desc.UT N ⊗ Desc.UT N).hom) := by
  let a := V.ι ≫ (N.U ⊗ N.U).hom
  let b := pullback.fst π π ≫ π
  let Z : Over (pullback π π) := Over.mk (pullback.snd a b)
  let k₁ : Z ⟶ Desc.UT N := Over.homMk (pullback.lift (pullback.fst a b ≫ V.ι ≫ (fst N.U N.U).left) (pullback.snd a b) (by
    rw [Category.assoc, Category.assoc, Over.w]; exact pullback.condition)) (pullback.lift_snd _ _ _)
  let k₂ : Z ⟶ Desc.UT N := Over.homMk (pullback.lift (pullback.fst a b ≫ V.ι ≫ (snd N.U N.U).left) (pullback.snd a b) (by
    rw [Category.assoc, Category.assoc, Over.w]; exact pullback.condition)) (pullback.lift_snd _ _ _)
  let k : pullback a b ⟶ (Desc.UT N ⊗ Desc.UT N).left := (lift k₁ k₂).left
  have hk : k ≫ toSq N = pullback.fst a b ≫ V.ι := by
    apply pullback.hom_ext
    · refine (Category.assoc _ _ _).trans ((congrArg (k ≫ ·) (toSq_fst N)).trans ?_)
      have : k ≫ (fst (Desc.UT N) (Desc.UT N)).left = k₁.left := congrArg (·.left) (lift_fst k₁ k₂)
      rw [← Category.assoc, this]
      exact (pullback.lift_fst _ _ _).trans (Category.assoc _ _ _).symm
    · refine (Category.assoc _ _ _).trans ((congrArg (k ≫ ·) (toSq_snd N)).trans ?_)
      have : k ≫ (snd (Desc.UT N) (Desc.UT N)).left = k₂.left := congrArg (·.left) (lift_snd k₁ k₂)
      rw [← Category.assoc, this]
      exact (pullback.lift_fst _ _ _).trans (Category.assoc _ _ _).symm
  have hk' : k ≫ (Desc.UT N ⊗ Desc.UT N).hom = pullback.snd a b := Over.w (lift k₁ k₂)
  refine ⟨fun t => ?_⟩
  obtain ⟨z, hz⟩ := (pullback.snd a b).surjective t
  refine ⟨⟨k z, ?_⟩, ?_⟩
  · show toSq N (k z) ∈ V
    rw [← Scheme.Hom.comp_apply, hk]
    exact (pullback.fst a b z).2
  · rw [← hz, ← hk']
    rfl

theorem exists_factor [GrpObj G] [Surjective π] (N : Near π G) (hN : N.Law) :
    ∃ (W : (Desc.UT N ⊗ Desc.UT N).left.Opens) (m : W.toScheme ⟶ (Desc.UT N).left),
      Surjective (W.ι ≫ (Desc.UT N ⊗ Desc.UT N).hom) ∧
      ∀ (p : pullback π π ⟶ S) (hp : p ≫ π = pullback.fst π π ≫ π),
        m ≫ (Desc.emb N p hp).left = W.ι ≫ (Desc.sum N p hp).left := by
  obtain ⟨V, m, hV, hm, law⟩ := hN
  have := surjective_of_closedFibre N V hV
  let W := toSq N ⁻¹ᵁ V
  let v : W.toScheme ⟶ V.toScheme := toSq N ∣_ V
  have hv : v ≫ V.ι = W.ι ≫ toSq N := morphismRestrict_ι _ _
  let τ : W.toScheme ⟶ pullback π π := W.ι ≫ (Desc.UT N ⊗ Desc.UT N).hom
  let m' : W.toScheme ⟶ pullback N.U.hom (pullback.fst π π ≫ π) := pullback.lift (v ≫ m) τ (by
    rw [Category.assoc, hm, ← Category.assoc, hv, Category.assoc, toSq_hom, Category.assoc])
  refine ⟨W, m', surjective_preimage N V, fun p hp => ?_⟩
  let J : Over.mk τ ⟶ Desc.UT N ⊗ Desc.UT N := Over.homMk W.ι rfl
  have lift₀ : ∀ x : Over.mk τ ⟶ (Over.pullback p).obj G,
      ∃ x₀ : Over.mk (τ ≫ p) ⟶ G, x₀.left = x.left ≫ pullback.fst G.hom p := fun x =>
    ⟨Over.homMk (x.left ≫ pullback.fst G.hom p) ((Category.assoc _ _ _).trans
      ((congrArg (x.left ≫ ·) pullback.condition).trans
        ((Category.assoc _ _ _).symm.trans (congrArg (· ≫ p) (Over.w x))))), rfl⟩
  have pt : ∀ (c : Over.mk τ ⟶ Desc.UT N), N.Pt (τ ≫ p) (c.left ≫ pullback.fst N.U.hom (pullback.fst π π ≫ π))
      ((c ≫ Desc.emb N p hp).left ≫ pullback.fst G.hom p) := fun c =>
    ⟨c.left ≫ Desc.toS N p hp,
      (Category.assoc _ _ _).trans (congrArg (c.left ≫ ·) (pullback.lift_fst _ _ _)),
      (Category.assoc _ _ _).trans ((congrArg (c.left ≫ ·) (pullback.lift_snd _ _ _)).trans
        ((Category.assoc _ _ _).symm.trans (congrArg (· ≫ p) (Over.w c)))),
      (Category.assoc _ _ _).trans (((Category.assoc _ _ _).trans
        (congrArg (c.left ≫ ·) (pullback.lift_fst _ _ _))).symm)⟩
  obtain ⟨x₀, hx₀⟩ := lift₀ ((J ≫ fst _ _) ≫ Desc.emb N p hp)
  obtain ⟨y₀, hy₀⟩ := lift₀ ((J ≫ snd _ _) ≫ Desc.emb N p hp)
  have hx := pt (J ≫ fst _ _)
  have hy := pt (J ≫ snd _ _)
  rw [← hx₀] at hx
  rw [← hy₀] at hy
  have ex : v ≫ V.ι ≫ (fst N.U N.U).left = (J ≫ fst _ _).left ≫ pullback.fst N.U.hom (pullback.fst π π ≫ π) := by
    rw [← Category.assoc, hv, Category.assoc, toSq_fst]
    exact (Category.assoc _ _ _).symm
  have ey : v ≫ V.ι ≫ (snd N.U N.U).left = (J ≫ snd _ _).left ≫ pullback.fst N.U.hom (pullback.fst π π ≫ π) := by
    rw [← Category.assoc, hv, Category.assoc, toSq_snd]
    exact (Category.assoc _ _ _).symm
  rw [← ex] at hx
  rw [← ey] at hy
  obtain ⟨x₁, h₁, h₂, h₃⟩ := law _ v (τ ≫ p) x₀ y₀ hx hy
  have hmul := (isGrpPullback_pullback G p).2 (Over.mk τ) _ _ x₀ y₀ hx₀ hy₀
  have hsum : ((J ≫ fst _ _) ≫ Desc.emb N p hp) * ((J ≫ snd _ _) ≫ Desc.emb N p hp) = J ≫ Desc.sum N p hp := by
    rw [Desc.sum, MonObj.comp_mul, Category.assoc, Category.assoc]
  rw [hsum] at hmul
  have e₁ : x₁ = m' ≫ Desc.toS N p hp := by
    apply pullback.hom_ext
    · rw [h₁, Category.assoc, Desc.toS, pullback.lift_fst, pullback.lift_fst]
    · rw [h₂, Category.assoc m', Desc.toS, pullback.lift_snd, ← Category.assoc m', pullback.lift_snd]
  apply pullback.hom_ext
  · refine (Category.assoc _ _ _).trans ((congrArg (m' ≫ ·) (pullback.lift_fst _ _ _)).trans ?_)
    rw [← Category.assoc, ← e₁, h₃]
    exact hmul
  · refine (Category.assoc _ _ _).trans ((congrArg (m' ≫ ·) (pullback.lift_snd _ _ _)).trans ?_)
    refine (pullback.lift_snd _ _ _).trans ?_
    exact ((Category.assoc _ _ _).trans (congrArg (W.ι ≫ ·) (Over.w (Desc.sum N p hp)))).symm

theorem emb_comp_of_sum_comp : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (S : Scheme.{0}) (π : S ⟶ Sp R), IsProper π → Surjective π → IsIntegral S → ∀ (G' : Over S) [GrpObj G'] [IsCommMonObj G'], IsSemiAbelian G' → ∀ N : Near π G', N.Law → ∀ (p p' : pullback π π ⟶ S) (hp : p ≫ π = pullback.fst π π ≫ π) (hp' : p' ≫ π = pullback.fst π π ≫ π), ∀ φ : (Over.pullback p).obj G' ⟶ (Over.pullback p').obj G', Desc.sum N p hp ≫ φ = Desc.sum N p' hp' → Desc.emb N p hp ≫ φ = Desc.emb N p' hp' := by
  intro R _ _ _ _ S π _ hπ _ G _ _ hG N hN p p' hp hp' φ hφ
  obtain ⟨W, m, hW, hm⟩ := exists_factor N hN
  have := hG.smooth
  have := hG.separated
  have := hG.geomConnected
  have := N.smooth
  have he := isOpenImmersion_emb N p hp
  have s₁ : Smooth ((Over.pullback p).obj G).hom := inferInstanceAs (Smooth (pullback.snd G.hom p))
  have c₁ : GeometricallyConnected ((Over.pullback p).obj G).hom :=
    inferInstanceAs (GeometricallyConnected (pullback.snd G.hom p))
  have s₂ : IsSeparated ((Over.pullback p').obj G).hom := inferInstanceAs (IsSeparated (pullback.snd G.hom p'))
  have s₃ : Smooth (Desc.UT N).hom := inferInstanceAs (Smooth (pullback.snd _ _))
  have s₄ : Smooth (Desc.sum N p hp).left := by
    have h : Desc.sum N p hp = (Desc.emb N p hp ⊗ₘ Desc.emb N p hp) ≫ μ[(Over.pullback p).obj G] := by
      rw [Desc.sum, Hom.mul_def, lift_fst_comp_snd_comp]
    have := smooth_mul ((Over.pullback p).obj G)
    have : IsOpenImmersion (Desc.emb N p hp ⊗ₘ Desc.emb N p hp).left := by
      rw [Over.tensorHom_left]
      infer_instance
    rw [h, Over.comp_left]
    infer_instance
  have s₅ : Smooth (m ≫ (Desc.emb N p hp).left) := by
    rw [hm]; infer_instance
  have s₆ : Smooth m := smooth_of_comp_mono m (Desc.emb N p hp).left
  have s₇ : Surjective (m ≫ (Desc.UT N).hom) := by
    rw [← Over.w (Desc.emb N p hp), ← Category.assoc, hm, Category.assoc, Over.w]
    exact hW
  have hirr : ∀ t, IsPreirreducible ((Desc.UT N).hom ⁻¹' {t}) := fun t => by
    have := (isPreirreducible_fibre ((Over.pullback p).obj G).hom t).preimage
      (Desc.emb N p hp).left.isOpenEmbedding
    rw [← Over.w (Desc.emb N p hp)]
    exact this
  ext1
  refine eq_of_smooth_comp (Desc.UT N).hom hirr m ((Over.pullback p').obj G).hom _ _
    ((Over.w _).trans (Over.w _).symm) ?_
  rw [Over.comp_left, ← Category.assoc, hm, hm, Category.assoc, ← Over.comp_left, hφ]

end GlobalTheory.Mum.DescFix
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NearOpenEmbeddingCompOfSumMapComp =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NearOpenPullbackToSelfProductSurjective =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.NearOpenPullbackToSelfProductSurjective", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDescentDatumOfDescendedMultiplicationImpor\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum.Desc

theorem surjective_U_hom {R : Type} [CommRing R] [IsLocalRing R] {S : Scheme.{0}} {π : S ⟶ Sp R} (hπ : Surjective π)
    {G' : Over S} [GrpObj G'] (N : Near π G') : Surjective N.U.hom := by
  intros
  apply _root_.GlobalTheory.Mum.DescHom.surjective_near <;> assumption

theorem surjective_UT_hom : ∀ (R : Type) [CommRing R] [IsLocalRing R] (S : Scheme.{0}) (π : S ⟶ Sp R), Surjective π →
    ∀ (G' : Over S) [GrpObj G'] (N : Near π G'), Surjective (Desc.UT N).hom := by
  intro R _ _ S π hπ G' _ N
  have := surjective_U_hom hπ N
  exact inferInstanceAs (Surjective (pullback.snd N.U.hom (pullback.fst π π ≫ π)))

end GlobalTheory.Mum.Desc
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NearOpenPullbackToSelfProductSurjective =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NearOpenSumMapFlatSurjectiveQuasiCompact =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.NearOpenSumMapFlatSurjectiveQuasiCompact", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDescentDatumOfDescendedMultiplicationImpor\npublic import Mathlib.AlgebraicGeometry.Morphisms.Flat\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FlatOpenPartGroupSchemeProductMap\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IrreducibleSpaceOfSmoothFieldOfConnectedSpace\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NearOpenPullbackToSelfProductSurjective\npublic import Mathlib.AlgebraicGeometry.Morphisms.UnderlyingMap\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SurjectiveOpenPartProductMapIrreducibleFibres\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.Mum.Desc

theorem irreducibleSpace_fibre_pullback (S : Scheme.{0}) (G' : Over S) [GrpObj G'] (hG : IsSemiAbelian G') {T : Scheme.{0}} (p : T ⟶ S)
    (K : Type) [Field K] (t : Spec (CommRingCat.of K) ⟶ T) :
    IrreducibleSpace (pullback ((Over.pullback p).obj G').hom t : Scheme.{0}) := by
  have : Smooth G'.hom := hG.smooth
  have : GeometricallyConnected G'.hom := hG.geomConnected
  have hc : ConnectedSpace (pullback (pullback.snd G'.hom p) t : Scheme.{0}) :=
    GeometricallyConnected.geometrically_connectedSpace (f := G'.hom) (t ≫ p) _ _
      ((IsPullback.of_hasPullback (pullback.snd G'.hom p) t).paste_horiz (IsPullback.of_hasPullback G'.hom p))
  have hs : Smooth (pullback.snd (pullback.snd G'.hom p) t) := inferInstance
  exact GlobalTheory.irreducibleSpace_of_smooth_field_of_connectedSpace K _ (pullback.snd (pullback.snd G'.hom p) t) hs hc

theorem isPullback_embL {R : Type} [CommRing R] [IsLocalRing R] {S : Scheme.{0}} {π : S ⟶ Sp R} {G : Over S}
    (N : Near π G) (p : pullback π π ⟶ S) (hp : p ≫ π = pullback.fst π π ≫ π) :
    IsPullback (embL N p hp) (toS N p hp) (pullback.fst G.hom p) N.u := by
  have t : IsPullback (pullback.snd N.U.hom (pullback.fst π π ≫ π)) (toS N p hp ≫ pullback.fst N.U.hom π) (p ≫ π) N.U.hom := by
    rw [toS, pullback.lift_fst, hp]; exact (IsPullback.of_hasPullback _ _).flip
  have s : IsPullback (pullback.snd N.U.hom (pullback.fst π π ≫ π)) (toS N p hp) p (pullback.snd N.U.hom π) :=
    IsPullback.of_bot t (by rw [toS, pullback.lift_snd]) (IsPullback.of_hasPullback N.U.hom π).flip
  refine IsPullback.of_right ?_ (by rw [embL, pullback.lift_fst]) (IsPullback.of_hasPullback G.hom p).flip
  rw [embL, pullback.lift_snd, N.u_over]; exact s

theorem isOpenImmersion_embL {R : Type} [CommRing R] [IsLocalRing R] {S : Scheme.{0}} {π : S ⟶ Sp R} {G : Over S}
    (N : Near π G) (p : pullback π π ⟶ S) (hp : p ≫ π = pullback.fst π π ≫ π) : IsOpenImmersion (embL N p hp) := by
  have := N.isOpen
  exact MorphismProperty.of_isPullback (P := @IsOpenImmersion) (isPullback_embL N p hp).flip this

theorem sum_flat_surjective_quasiCompact : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (S : Scheme.{0}) (π : S ⟶ Sp R), IsProper π → Surjective π → IsIntegral S → ∀ (G' : Over S) [GrpObj G'] [IsCommMonObj G'], IsSemiAbelian G' → ∀ N : Near π G', ∀ (p : pullback π π ⟶ S) (hp : p ≫ π = pullback.fst π π ≫ π), Flat (Desc.sum N p hp).left ∧ Surjective (Desc.sum N p hp).left ∧ QuasiCompact (Desc.sum N p hp).left := by
  intro R _ _ _ _ S π _ hπ _ G' _ _ hG N p hp
  have : Smooth G'.hom := hG.smooth
  have : IsSeparated G'.hom := hG.separated
  have : QuasiCompact N.U.hom := N.quasiCompact
  have ho : IsOpenImmersion (emb N p hp).left := isOpenImmersion_embL N p hp
  have hfl : Flat ((Over.pullback p).obj G').hom := by
    change Flat (pullback.snd G'.hom p); infer_instance
  refine ⟨_root_.GlobalTheory.Mum.FlatMul.main _ _ _ _ ho hfl, _root_.GlobalTheory.Mum.surjective_mul_of_open_of_irreducible_fibres _ _ _ _ ho (_root_.GlobalTheory.Mum.Desc.surjective_UT_hom R S π hπ G' N) (irreducibleSpace_fibre_pullback S G' hG p), ?_⟩
  have : QuasiCompact (UT N ⊗ UT N).hom := by
    change QuasiCompact (pullback.fst (UT N).hom (UT N).hom ≫ (UT N).hom)
    have h1 : QuasiCompact (UT N).hom := by
      change QuasiCompact (pullback.snd N.U.hom (pullback.fst π π ≫ π)); infer_instance
    have h2 : QuasiCompact (pullback.fst (UT N).hom (UT N).hom) := inferInstance
    infer_instance
  have : QuasiSeparated ((Over.pullback p).obj G').hom := by
    change QuasiSeparated (pullback.snd G'.hom p); infer_instance
  have hw : (Desc.sum N p hp).left ≫ ((Over.pullback p).obj G').hom = (UT N ⊗ UT N).hom := Over.w _
  have : QuasiCompact ((Desc.sum N p hp).left ≫ ((Over.pullback p).obj G').hom) := by rw [hw]; infer_instance
  exact QuasiCompact.of_comp _ (((Over.pullback p).obj G').hom)
end GlobalTheory.Mum.Desc
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.NearOpenSumMapFlatSurjectiveQuasiCompact =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDescentDatumOfDescendedMultiplication =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDescentDatumOfDescendedMultiplication", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDescentDatumOfDescendedMultiplicationImpor\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsMonHomOfSumMapCompFixingNearOpen\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.KernelPairSumEqOfSumEqOtherPullback\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NearOpenEmbeddingCompOfSumMapComp\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.NearOpenSumMapFlatSurjectiveQuasiCompact\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Sites.Fpqc\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.ExtremalEpi\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

noncomputable section

namespace GlobalTheory.Mum.Desc

theorem pt_of_fix {R : Type} [CommRing R] [IsLocalRing R] {S : Scheme.{0}} {π : S ⟶ Sp R} {G' : Over S}
    (N : Near π G') (φl : pullback G'.hom (pullback.fst π π) ⟶ pullback G'.hom (pullback.snd π π))
    (hfix : Desc.embL N _ (rfl : pullback.fst π π ≫ π = _) ≫ φl = Desc.embL N _ pullback.condition.symm)
    (T' : Scheme.{0}) (a : T' ⟶ N.U.left) (x : T' ⟶ pullback G'.hom (pullback.fst π π))
    (h : N.Pt (x ≫ pullback.snd G'.hom (pullback.fst π π) ≫ pullback.fst π π) a (x ≫ pullback.fst G'.hom (pullback.fst π π))) :
    N.Pt (x ≫ pullback.snd G'.hom (pullback.fst π π) ≫ pullback.snd π π) a (x ≫ φl ≫ pullback.fst G'.hom (pullback.snd π π)) := by
  obtain ⟨x₀, h1, h2, h3⟩ := h
  have hw : a ≫ N.U.hom = (x ≫ pullback.snd G'.hom (pullback.fst π π)) ≫ pullback.fst π π ≫ π := by
    calc a ≫ N.U.hom = x₀ ≫ pullback.snd N.U.hom π ≫ π := by
          rw [← h1, Category.assoc, pullback.condition]
      _ = (x ≫ pullback.snd G'.hom (pullback.fst π π)) ≫ pullback.fst π π ≫ π := by
          rw [reassoc_of% h2, Category.assoc]
  have hx₀ : pullback.lift a (x ≫ pullback.snd G'.hom (pullback.fst π π)) hw ≫
      Desc.toS N (pullback.fst π π) rfl = x₀ := by
    apply pullback.hom_ext
    · rw [Category.assoc, Desc.toS, pullback.lift_fst, pullback.lift_fst, h1]
    · rw [Category.assoc, Desc.toS, pullback.lift_snd, pullback.lift_snd_assoc, h2, Category.assoc]
  have hx : pullback.lift a (x ≫ pullback.snd G'.hom (pullback.fst π π)) hw ≫
      Desc.embL N (pullback.fst π π) rfl = x := by
    apply pullback.hom_ext
    · rw [Category.assoc, Desc.embL, pullback.lift_fst, reassoc_of% hx₀, h3]
    · rw [Category.assoc, Desc.embL, pullback.lift_snd, pullback.lift_snd]
  have hφ : x ≫ φl = pullback.lift a (x ≫ pullback.snd G'.hom (pullback.fst π π)) hw ≫
      Desc.embL N (pullback.snd π π) pullback.condition.symm := by
    rw [← hfix, ← Category.assoc, hx]
  refine ⟨pullback.lift a (x ≫ pullback.snd G'.hom (pullback.fst π π)) hw ≫
      Desc.toS N (pullback.snd π π) pullback.condition.symm, ?_, ?_, ?_⟩
  · rw [Category.assoc, Desc.toS, pullback.lift_fst, pullback.lift_fst]
  · rw [Category.assoc, Desc.toS, pullback.lift_snd, pullback.lift_snd_assoc, Category.assoc]
  · rw [reassoc_of% hφ, Desc.embL, pullback.lift_fst, Category.assoc]

theorem exists_datum : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (S : Scheme.{0}) (π : S ⟶ Sp R), IsProper π → Surjective π → IsIntegral S → ∀ (G' : Over S) [GrpObj G'] [IsCommMonObj G'], IsSemiAbelian G' → ∀ N : Near π G', N.Law → ∃ φ, N.Datum φ := by
  intro R _ _ _ hA S π hP hS hI G' _ _ hG N hL
  have h1 : pullback.fst π π ≫ π = pullback.fst π π ≫ π := rfl
  have h2 : pullback.snd π π ≫ π = pullback.fst π π ≫ π := pullback.condition.symm
  obtain ⟨fl1, su1, qc1⟩ := _root_.GlobalTheory.Mum.Desc.sum_flat_surjective_quasiCompact R hA S π hP hS hI G' hG N _ h1
  obtain ⟨fl2, su2, qc2⟩ := _root_.GlobalTheory.Mum.Desc.sum_flat_surjective_quasiCompact R hA S π hP hS hI G' hG N _ h2
  have e12 := _root_.GlobalTheory.Mum.DescKP.sum_eq_of_sum_eq R hA S π hP hS hI G' hG N hL _ _ h1 h2
  have e21 := _root_.GlobalTheory.Mum.DescKP.sum_eq_of_sum_eq R hA S π hP hS hI G' hG N hL _ _ h2 h1
  let f := EffectiveEpi.desc (Desc.sum N _ h1).left (Desc.sum N _ h2).left (fun g g' h => e12 _ g g' h)
  let g := EffectiveEpi.desc (Desc.sum N _ h2).left (Desc.sum N _ h1).left (fun g g' h => e21 _ g g' h)
  have hf : (Desc.sum N _ h1).left ≫ f = (Desc.sum N _ h2).left := EffectiveEpi.fac _ _ _
  have hg : (Desc.sum N _ h2).left ≫ g = (Desc.sum N _ h1).left := EffectiveEpi.fac _ _ _
  have wf : f ≫ ((Over.pullback (pullback.snd π π)).obj G').hom =
      ((Over.pullback (pullback.fst π π)).obj G').hom := by
    rw [← cancel_epi (Desc.sum N _ h1).left, reassoc_of% hf, Over.w, Over.w]
  have wg : g ≫ ((Over.pullback (pullback.fst π π)).obj G').hom =
      ((Over.pullback (pullback.snd π π)).obj G').hom := by
    rw [← cancel_epi (Desc.sum N _ h2).left, reassoc_of% hg, Over.w, Over.w]
  have hfg : f ≫ g = 𝟙 _ := by
    rw [← cancel_epi (Desc.sum N _ h1).left, reassoc_of% hf, hg, Category.comp_id]
  have hgf : g ≫ f = 𝟙 _ := by
    rw [← cancel_epi (Desc.sum N _ h2).left, reassoc_of% hg, hf, Category.comp_id]
  have hs : Desc.sum N _ h1 ≫ Over.homMk f wf = Desc.sum N _ h2 := by
    apply Over.OverMorphism.ext
    exact hf
  have he := _root_.GlobalTheory.Mum.DescFix.emb_comp_of_sum_comp R hA S π hP hS hI G' hG N hL _ _ h1 h2 (Over.homMk f wf) hs
  have hm := _root_.GlobalTheory.Mum.DescHom.isMonHom_of_sum_of_emb R hA S π hP hS hI G' hG N _ _ h1 h2 (Over.homMk f wf) hs he
  refine ⟨⟨Over.homMk f wf, Over.homMk g wg, ?_, ?_⟩, hm, ?_⟩
  · apply Over.OverMorphism.ext
    exact hfg
  · apply Over.OverMorphism.ext
    exact hgf
  · intro T a x hx
    have hfix : Desc.embL N _ h1 ≫ f = Desc.embL N _ h2 := congrArg (fun k => k.left) he
    exact pt_of_fix N f hfix T a x hx

end GlobalTheory.Mum.Desc
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDescentDatumOfDescendedMultiplication =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDescentDatumOfDescendedMultiplicationStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDescentDatumOfDescendedMultiplicationStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.QuasiCompact\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDescentDatumOfDescendedMultiplication\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDescentDatumOfDescendedMultiplicationStatement =====
