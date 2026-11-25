module

public import Development.AbelianVarietyTheory.Definitions.Divisors.GalMapMul
public import Development.EtaleCohomology.EtaleSheaves.LCBijPf
public import Development.AbelianVarietyTheory.Definitions.Divisors.SecClass

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.EtaleSheaves.LSecGluePf, Development.EtaleCohomology.EtaleSheaves.LCSurjPf

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LSecGluePf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LSecGluePf", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.GalMapMul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.E.L_sec_gluePf

theorem typeSheaf {R : Type} [CommRing R] (F : Shv R) :
    Presieve.IsSheaf Scheme.etaleTopology (F.obj ⋙ forget (ModuleCat.{1} (ULift.{1} R))) :=
  (isSheaf_iff_isSheaf_of_type _ _).1 ((sheafCompose Scheme.etaleTopology (forget (ModuleCat.{1} (ULift.{1} R)))).obj F).property

end LateralTheory.E.L_sec_gluePf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LSecGluePf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LCSurjPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LCSurjPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LCBijPf\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SecClass\npublic import Development.EtaleCohomology.EtaleSheaves.LSecGluePf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC LateralTheory.E.t_E1Cut LateralTheory.E.LocallyConstantH0

namespace LateralTheory.E.LCSurjPf

def LocForm : Prop := ∀ (q : ℕ) [NeZero q] (i : ℤ) (B : Type) [CommRing B] (ζ : Prim q B) (y : Sec (tw q i) (Spec (CommRingCat.of B))),
  Loc (Spec (CommRingCat.of B)) fun _ g => ∃ c : ZMod q, Sec.res g y = c.val • twGen i ((gam ζ).map g.appTop.hom)

def Descent : Prop := ∀ (q : ℕ) [NeZero q] (i : ℤ) m, IsLCMap q i m →
  ∀ (B : Type) [CommRing B] (ζ : Prim q B) (y : Sec (tw q i) (Spec (CommRingCat.of B))),
    (Loc (Spec (CommRingCat.of B)) fun _ g => ∃ c : ZMod q, Sec.res g y = c.val • twGen i ((gam ζ).map g.appTop.hom)) →
    ∃ ψ : LocallyConstant (PrimeSpectrum B) (ZMod q),
      Loc (Spec (CommRingCat.of B)) fun _ g => Sec.res g y = Sec.res g (m B ζ ψ)

theorem sec_sep {R : Type} [CommRing R] (F : Shv R) (U : Scheme.{0}) (a b : Sec F U)
    (h : Loc U fun _ g => Sec.res g a = Sec.res g b) : a = b := by
  obtain ⟨S, hS, hab⟩ := h
  exact (LateralTheory.E.L_sec_gluePf.typeSheaf F S hS).isSeparatedFor.ext fun V g hg => hab V g hg

theorem LCSurj_of (hL : LocForm) (hD : Descent) : LateralTheory.E.LCBijPf.LCSurj := by
  intro q _ i m hm B _ ζ y
  obtain ⟨ψ, hψ⟩ := hD q i m hm B ζ y (hL q i B ζ y)
  exact ⟨ψ, (sec_sep _ _ _ _ hψ).symm⟩

end LateralTheory.E.LCSurjPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LCSurjPf =====
