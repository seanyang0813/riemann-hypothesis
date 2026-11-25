module

public import Development.AbelianVarietyTheory.Definitions.Divisors.PullHlComp
public import Development.AbelianVarietyTheory.Definitions.Divisors.SecClass
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.TateTwists.EtaleSchemeGlobalSectionCohomologyClass, Development.EtaleCohomology.TateTwists.EtaleSimplicialCochainExistsFromNaturalSections

-- ===== clump member: Development.EtaleCohomology.TateTwists.EtaleSchemeGlobalSectionCohomologyClass =====
-- clump-header: {"m": "Development.EtaleCohomology.TateTwists.EtaleSchemeGlobalSectionCohomologyClass", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.PullHlComp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex CochainComplex.HomComplex GlobalTheory.EtC

def LateralTheory.EtaleFoundations.EtaleSchemeGlobalSectionCohomologyClass : Prop :=
  ∀ (R : Type) [CommRing R] (X : Scheme.{0}) (I : Cx R) (m n k : ℤ), m + 1 = n → n + 1 = k →
    (∀ z : Sec (I.X n) X, Sec.map (I.d n k) z = 0 → ∃ α : Cocycle ((chains R).obj (sch.obj X)) I n,
      (∀ (U : Scheme.{0}) (x : U ⟶ X), ev (R := R) α.1 0 n (by simp) U x = Sec.res x z) ∧
      ∀ (p : ℕ) s h U x, ev (R := R) α.1 (p + 1) s h U x = 0) ∧
    ∀ α : Cocycle ((chains R).obj (sch.obj X)) I n,
      Sec.map (I.d n k) (ev (R := R) α.1 0 n (by simp) X (𝟙 X)) = 0 ∧
      (CohomologyClass.mk α = 0 ↔ ∃ y : Sec (I.X m) X,
        Sec.map (I.d m n) y = ev (R := R) α.1 0 n (by simp) X (𝟙 X))
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.TateTwists.EtaleSchemeGlobalSectionCohomologyClass =====

-- ===== clump member: Development.EtaleCohomology.TateTwists.EtaleSimplicialCochainExistsFromNaturalSections =====
-- clump-header: {"m": "Development.EtaleCohomology.TateTwists.EtaleSimplicialCochainExistsFromNaturalSections", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SecClass\npublic import Development.EtaleCohomology.TateTwists.EtaleSchemeGlobalSectionCohomologyClass\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex CochainComplex.HomComplex GlobalTheory.EtC

namespace LateralTheory.EtaleFoundations

def EtaleSimplicialCochainExistsFromNaturalSections : Prop := ∀ (R : Type) [CommRing R] {E : Spc} {I : Cx R} {n : ℤ} (a : ∀ (p : ℕ) (s : ℤ), -(p : ℤ) + n = s → ∀ U : Scheme.{0}, Sx E p U → Sec (I.X s) U), (∀ p s h (V U : Scheme.{0}) (g : V ⟶ U) (x : Sx E p U), Sec.res g (a p s h U x) = a p s h V (x.res g)) → ∃ α : Cochain ((chains R).obj E) I n, ∀ p s h U x, ev α p s h U x = a p s h U x

def a0 {R : Type} [CommRing R] (X : Scheme.{0}) (I : Cx R) (n : ℤ) (z : Sec (I.X n) X) :
    ∀ (p : ℕ) (s : ℤ), -(p : ℤ) + n = s → ∀ U : Scheme.{0}, Sx (sch.obj X) p U → Sec (I.X s) U
  | 0, s, h, U, x => (show n = s by omega) ▸ Sec.res (x : U ⟶ X) z
  | _ + 1, _, _, _, _ => 0

lemma etaleSimplicialCochain_scheme_section_extension_degree_zero {R : Type} [CommRing R] (X : Scheme.{0}) (I : Cx R) (n : ℤ) (z : Sec (I.X n) X) (h : -((0:ℕ) : ℤ) + n = n)
    (U : Scheme.{0}) (x : Sx (sch.obj X) 0 U) : a0 X I n z 0 n h U x = Sec.res (x : U ⟶ X) z := rfl

lemma res_res {R : Type} [CommRing R] {F : Shv R} {W V U : Scheme.{0}} (g : W ⟶ V) (f : V ⟶ U) (z : Sec F U) :
    Sec.res g (Sec.res f z) = Sec.res (g ≫ f) z := by
  simp [Sec.res, op_comp, Functor.map_comp]

lemma map_res {R : Type} [CommRing R] {F G : Shv R} (φ : F ⟶ G) {V U : Scheme.{0}} (g : V ⟶ U) (z : Sec F U) :
    Sec.map φ (Sec.res g z) = Sec.res g (Sec.map φ z) := by
  simp only [Sec.map, Sec.res]
  exact congrArg (fun f => ModuleCat.Hom.hom f z) (φ.hom.naturality g.op)

lemma etaleSimplicialCochain_scheme_section_extension_naturality {R : Type} [CommRing R] (X : Scheme.{0}) (I : Cx R) (n : ℤ) (z : Sec (I.X n) X) :
    ∀ p s h (V U : Scheme.{0}) (g : V ⟶ U) (x : Sx (sch.obj X) p U),
      Sec.res g (a0 X I n z p s h U x) = a0 X I n z p s h V (x.res g) := by
  intro p s h V U g x
  cases p with
  | zero =>
    obtain rfl : s = n := by omega
    exact res_res g x z
  | succ q => simp [a0, Sec.res]

end LateralTheory.EtaleFoundations

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.TateTwists.EtaleSimplicialCochainExistsFromNaturalSections =====
