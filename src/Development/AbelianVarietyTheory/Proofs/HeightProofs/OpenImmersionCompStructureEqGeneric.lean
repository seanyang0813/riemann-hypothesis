module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.RigidArc
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AbProj
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
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
import Mathlib.CategoryTheory.Limits.Shapes.Countable
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.BlockTheory.HeightDefect.FractionGeneratorsArcs, Development.AbelianVarietyTheory.Proofs.HeightProofs.OpenImmersionCompStructureEqGeneric

-- ===== clump member: Development.AbelianVarietyTheory.BlockTheory.HeightDefect.FractionGeneratorsArcs =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.BlockTheory.HeightDefect.FractionGeneratorsArcs", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.RigidArc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.IndefiniteRowSideFullHecke.FractionGeneratorsArcs

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi
open scoped CategoryTheory.Obj Classical

def GeneratesFrac {O F : Type} [CommRing O] [Field F] (β : O →+* F) : Prop :=
  ∀ x : F, ∃ r s : O, β s ≠ 0 ∧ x * β s = β r

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E}
variable {D : Datum H} {l : Level H} {Xo : Moduli D l} {c : Coeff l}

end GlobalTheory.IndefiniteRowSideFullHecke.FractionGeneratorsArcs
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.BlockTheory.HeightDefect.FractionGeneratorsArcs =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.HeightProofs.OpenImmersionCompStructureEqGeneric =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.HeightProofs.OpenImmersionCompStructureEqGeneric", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.HeightDefect.FractionGeneratorsArcs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Limits.Shapes.Countable\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AbProj\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.OneArcCompare

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Semi GlobalTheory.IndefiniteRowSideFullHecke.FractionGeneratorsArcs

theorem mono_spMap_iff {O F : Type} [CommRing O] [Field F] [CharZero F] [FiniteDimensional ℚ F] (β : O →+* F) :
    Mono (spMap β) ↔ GeneratesFrac β := by
  have e : Mono (spMap β) ↔ Epi (CommRingCat.ofHom β) := by
    constructor
    · intro h
      have h' : Mono (Scheme.Spec.map (CommRingCat.ofHom β).op) := h
      have := Scheme.Spec.mono_of_mono_map h'
      exact (inferInstance : Epi (CommRingCat.ofHom β).op.unop)
    · intro h
      exact (inferInstance : Mono (Scheme.Spec.map (CommRingCat.ofHom β).op))
  rw [e]
  constructor
  · intro h x
    let K : Subfield F := Subfield.closure (Set.range β)
    let β₁ : O →+* K := β.codRestrict K fun r => Subfield.subset_closure ⟨r, rfl⟩
    have h₁ : Epi (CommRingCat.ofHom β₁ ≫ CommRingCat.ofHom K.subtype) := h
    have h₂ : Epi (CommRingCat.ofHom K.subtype) := epi_of_epi (CommRingCat.ofHom β₁) _
    have : IsScalarTower ℚ K F := IsScalarTower.of_algebraMap_eq' (Subsingleton.elim _ _)
    have h₃ : Module.Finite K F := Module.Finite.of_restrictScalars_finite ℚ K F
    obtain ⟨⟨x', hx'⟩, rfl⟩ := RingHom.surjective_of_epi_of_finite (CommRingCat.ofHom K.subtype) h₃ x
    obtain ⟨p, hp, q, hq, rfl⟩ := Subfield.mem_closure_iff.1 hx'
    have hc : Subring.closure (Set.range β) = β.range := Subring.closure_eq β.range
    rw [hc] at hp hq
    obtain ⟨r, rfl⟩ := hp
    obtain ⟨s, rfl⟩ := hq
    by_cases hs : β s = 0
    · exact ⟨0, 1, by simp, by simp [hs]⟩
    · exact ⟨r, s, hs, div_mul_cancel₀ _ hs⟩
  · intro h
    refine ⟨fun {A} f g hfg => ?_⟩
    ext x
    obtain ⟨r, s, hs, hx⟩ := h x
    have k : ∀ r, f.hom (β r) = g.hom (β r) := fun r => congrArg (fun q => q.hom r) hfg
    have hu : IsUnit (f.hom (β s)) := (IsUnit.mk0 _ hs).map f.hom
    refine hu.mul_right_cancel ?_
    rw [← map_mul, hx, k r, k s, ← map_mul, hx]

theorem mem_abLocus_pullback {S S' : Scheme.{0}} {G : Over S} {G' : Over S'} [GrpObj G]
    (hG : IsSemiAbelian G) {f : S' ⟶ S} {φ : G'.left ⟶ G.left} (h : IsPullback φ G'.hom G.hom f) (x : S') :
    f x ∈ abLocus G ↔ x ∈ abLocus G' := by
  have key : ∀ {T : Scheme.{0}} (t : T ⟶ S'),
      IsProper (pullback.snd G'.hom t) ↔ IsProper (pullback.snd G.hom (t ≫ f)) := by
    intro T t
    have hp := (IsPullback.of_hasPullback G'.hom t).paste_horiz h
    have e := hp.isoPullback_hom_snd
    constructor
    · intro _
      rw [← hp.isoPullback_inv_snd]; infer_instance
    · intro _
      rw [← e]; infer_instance
  constructor
  · intro hx K _ _ t ⟨p, hp⟩
    exact (key t).2 (hx K (t ≫ f) ⟨p, by rw [← hp]; simp⟩)
  · intro hx
    let K := AlgebraicClosure (S'.residueField x)
    let t : Sp K ⟶ S' := Spec.map (CommRingCat.ofHom (algebraMap (S'.residueField x) K)) ≫ S'.fromSpecResidueField x
    have p : Sp K := (default : PrimeSpectrum K)
    have ht : t p = x := Scheme.fromSpecResidueField_apply x _
    exact abLocusOne S G hG K (t ≫ f) ((key t).1 (hx K t ⟨p, ht⟩)) ⟨p, congrArg (fun z => f z) ht⟩

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E}
variable {D : Datum H} {l : Level H} {Xo : Moduli D l} {c : Coeff l}

end GlobalTheory.OneArcCompare
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.HeightProofs.OpenImmersionCompStructureEqGeneric =====
