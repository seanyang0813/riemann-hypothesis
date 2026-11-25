module

public import Development.EtaleCohomology.EtaleSheaves.LocSecPf
public import Mathlib.Algebra.Homology.Embedding.ExtendHomotopy

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.EtaleSheaves.LocSecPfA, Development.EtaleCohomology.EtaleSheaves.LocSecPfB

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LocSecPfA =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LocSecPfA", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LocSecPf\npublic import Mathlib.Algebra.Homology.Embedding.ExtendHomotopy\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC CochainComplex CochainComplex.HomComplex

namespace LateralTheory.E.LocSecPfA

variable (R : Type) [CommRing R]

def hEq (X : Scheme.{0}) : HomotopyEquiv ((chainsN R).obj (sch.obj X))
    ((ChainComplex.single₀ (Shv R)).obj ((free R).obj (yoneda.obj X))) :=
  ((SimplicialObject.Augmented.ExtraDegeneracy.const (yoneda.obj X)).map (free R)).homotopyEquiv

abbrev Q := HomotopyCategory.quotient (Shv R) (ComplexShape.up ℤ)

def isoQ (X : Scheme.{0}) : (Q R).obj ((chains R).obj (sch.obj X)) ≅ (Q R).obj (LateralTheory.E.LocSecPf.pt R X) :=
  ((ComplexShape.embeddingDownNat.extendHomotopyFunctorFactors (Shv R)).app _).symm ≪≫
  (ComplexShape.embeddingDownNat.extendHomotopyFunctor (Shv R)).mapIso (HomotopyCategory.isoOfHomotopyEquiv (hEq R X)) ≪≫
  (ComplexShape.embeddingDownNat.extendHomotopyFunctorFactors (Shv R)).app _ ≪≫
  (Q R).mapIso (HomologicalComplex.extendSingleIso ComplexShape.embeddingDownNat _ 0 0 rfl)

def transIso {K K' L : Cx R} (i : (Q R).obj K ≅ (Q R).obj K') (n : ℤ) :
    CohomologyClass K L n ≃+ CohomologyClass K' L n :=
  (CohomologyClass.homAddEquiv (K := K) (L := L) (n := n)).trans
    ({ toFun := fun f => i.inv ≫ f, invFun := fun g => i.hom ≫ g,
       left_inv := fun f => by simp, right_inv := fun g => by simp,
       map_add' := fun f g => Preadditive.comp_add _ _ _ _ _ _ } : _ ≃+ _) |>.trans
    (CohomologyClass.homAddEquiv (K := K') (L := L) (n := n)).symm

theorem locSecA : LateralTheory.E.LocSecPf.LocSecA := fun R _ X F n => ⟨transIso R (isoQ R X) n⟩

end LateralTheory.E.LocSecPfA
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LocSecPfA =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LocSecPfB =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LocSecPfB", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LocSecPf\npublic import Development.EtaleCohomology.EtaleSheaves.LocSecPfA\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC LateralTheory.E.E4 CochainComplex CochainComplex.HomComplex

namespace LateralTheory.E.LocSecPfB

def HomSec : Prop := ∀ (R : Type) [CommRing R] (X : Scheme.{0}),
  ∃ e : ∀ G : Shv R, ((free R).obj (yoneda.obj X) ⟶ G) ≃+ Sec G X,
    ∀ {G G' : Shv R} (φ : G ⟶ G') (f : (free R).obj (yoneda.obj X) ⟶ G), e G' (f ≫ φ) = Sec.map φ (e G f)

def ClassSec : Prop := ∀ (R : Type) [CommRing R] (X : Scheme.{0})
  (e : ∀ G : Shv R, ((free R).obj (yoneda.obj X) ⟶ G) ≃+ Sec G X),
  (∀ {G G' : Shv R} (φ : G ⟶ G') (f : (free R).obj (yoneda.obj X) ⟶ G), e G' (f ≫ φ) = Sec.map φ (e G f)) →
  ∀ (F : Shv R) (n : ℤ),
  Nonempty (CohomologyClass (LateralTheory.E.LocSecPf.pt R X) (res R F) n ≃+ (LateralTheory.E.LeafLocPf.secCx F X).homology n)

theorem locSecB_of (h1 : HomSec) (h2 : ClassSec) : LateralTheory.E.LocSecPf.LocSecB := by
  intro R _ X F n
  obtain ⟨e, he⟩ := h1 R X
  exact h2 R X e he F n

theorem LocSec_of (h1 : HomSec) (h2 : ClassSec) : LateralTheory.E.LeafLocPf.LocSec :=
  LateralTheory.E.LocSecPf.LocSec_of LateralTheory.E.LocSecPfA.locSecA (locSecB_of h1 h2)

end LateralTheory.E.LocSecPfB
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LocSecPfB =====
