module

public import Development.AbelianVarietyTheory.Definitions.Divisors.GalMapMul
public import Mathlib.Order.CompletePartialOrder
import Development.EtaleCohomology.EtaleSheaves.LeafVanVPf
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.EtaleSheaves.LeafAffCoverVanishPf, Development.EtaleCohomology.EtaleSheaves.LeafAffCoverVanishPfEmpty

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LeafAffCoverVanishPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LeafAffCoverVanishPf", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.GalMapMul\npublic import Mathlib.Order.CompletePartialOrder\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex GlobalTheory.EtC

namespace LateralTheory.E.E8

def LeafEmptyVanish : Prop := ∀ (R : Type) [CommRing R] {X : Scheme.{0}} (F : Shv R) (n : ℤ),
  Subsingleton (H R (sch.obj (⊥ : X.Opens)) F n)

end LateralTheory.E.E8

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LeafAffCoverVanishPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LeafAffCoverVanishPfEmpty =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LeafAffCoverVanishPfEmpty", "h": "module\n\nimport Development.EtaleCohomology.EtaleSheaves.LeafVanVPf\npublic import Development.EtaleCohomology.EtaleSheaves.LeafAffCoverVanishPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex CochainComplex.HomComplex GlobalTheory.EtC

namespace LateralTheory.E.E8

theorem etaleFreeSheafOfRepresentable_isZero_of_isEmpty_scheme (R : Type) [CommRing R] (E : Scheme.{0}) [IsEmpty E] :
    IsZero ((free R).obj (yoneda.obj E)) := by
  apply LateralTheory.E.LeafVanVPf.free_empty

theorem leafEmptyVanish : LeafEmptyVanish := by
  intro R _ X F n
  have hE : IsEmpty (((⊥ : X.Opens) : Scheme.{0}) : Type) := by
    change IsEmpty ((⊥ : X.Opens) : Set X); simp
  have hfree := etaleFreeSheafOfRepresentable_isZero_of_isEmpty_scheme R ((⊥ : X.Opens) : Scheme.{0})
  have hN : IsZero ((chainsN R).obj (sch.obj ((⊥ : X.Opens) : Scheme.{0}))) := by
    rw [IsZero.iff_id_eq_zero]
    apply HomologicalComplex.hom_ext
    intro j
    refine IsZero.eq_of_src ?_ _ _
    exact hfree
  have hC : IsZero ((chains R).obj (sch.obj ((⊥ : X.Opens) : Scheme.{0}))) :=
    Functor.map_isZero (ComplexShape.embeddingDownNat.extendFunctor (Shv R)) hN
  have hX : ∀ p, IsZero (((chains R).obj (sch.obj ((⊥ : X.Opens) : Scheme.{0}))).X p) := fun p =>
    Functor.map_isZero (HomologicalComplex.eval _ _ p) hC
  have : Subsingleton (Cochain ((chains R).obj (sch.obj ((⊥ : X.Opens) : Scheme.{0}))) (res R F) n) :=
    ⟨fun a b => Cochain.ext _ _ fun p q hpq => (hX p).eq_of_src _ _⟩
  have : Subsingleton (Cocycle ((chains R).obj (sch.obj ((⊥ : X.Opens) : Scheme.{0}))) (res R F) n) :=
    ⟨fun a b => Subtype.ext (Subsingleton.elim _ _)⟩
  change Subsingleton (CohomologyClass _ _ n)
  unfold CohomologyClass
  refine ⟨fun a b => ?_⟩
  obtain ⟨a, rfl⟩ := QuotientAddGroup.mk_surjective a
  obtain ⟨b, rfl⟩ := QuotientAddGroup.mk_surjective b
  rw [Subsingleton.elim a b]

end LateralTheory.E.E8

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LeafAffCoverVanishPfEmpty =====
