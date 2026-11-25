module

public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsHodgeGram
public import Mathlib.Algebra.AffineMonoid.Basic
public import Development.WeilBound.CoreStatements.SesquilinearFractions.SesqSesquilinearSkewHermitian

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.SesquilinearFractions.TraceIntegralOfCodifferent, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SesqUnimodularDual

-- ===== clump member: Development.WeilBound.CoreStatements.SesquilinearFractions.TraceIntegralOfCodifferent =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.SesquilinearFractions.TraceIntegralOfCodifferent", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsHodgeGram\npublic import Mathlib.Algebra.AffineMonoid.Basic\npublic import Development.WeilBound.CoreStatements.SesquilinearFractions.SesqSesquilinearSkewHermitian\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Matrix GlobalTheory GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Fl
open scoped ComplexOrder

namespace GlobalTheory.CompanionTheory.Ar.Fl

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E}

theorem trace_integral_of_codifferent {z : E} (hz : ∀ δ ∈ differentIdeal ℤ (𝓞 E), ∃ b : 𝓞 E, (δ : E) * z = b) (c : 𝓞 E) :
    ∃ n : ℤ, (n : ℚ) = Algebra.trace ℚ E (z * (c : E)) := by
  have hne : (differentIdeal ℤ (𝓞 E) : FractionalIdeal (nonZeroDivisors (𝓞 E)) E) ≠ 0 := by
    rw [coeIdeal_differentIdeal ℤ ℚ]
    exact inv_ne_zero (FractionalIdeal.dual_ne_zero ℤ ℚ (@one_ne_zero (FractionalIdeal (nonZeroDivisors (𝓞 E)) E) _ _ _))
  have hinv : z ∈ (differentIdeal ℤ (𝓞 E) : FractionalIdeal (nonZeroDivisors (𝓞 E)) E)⁻¹ := by
    rw [FractionalIdeal.mem_inv_iff hne]
    intro y hy
    obtain ⟨δ, hδ, rfl⟩ := (FractionalIdeal.mem_coeIdeal _).1 hy
    obtain ⟨b, hb⟩ := hz δ hδ
    rw [FractionalIdeal.mem_one_iff]
    exact ⟨b, by rw [mul_comm]; exact hb.symm⟩
  rw [coeIdeal_differentIdeal ℤ ℚ, inv_inv] at hinv
  rw [FractionalIdeal.mem_dual (@one_ne_zero (FractionalIdeal (nonZeroDivisors (𝓞 E)) E) _ _ _)] at hinv
  obtain ⟨n, hn⟩ := hinv (c : E) ((FractionalIdeal.mem_one_iff _).2 ⟨c, rfl⟩)
  exact ⟨n, by rw [← Algebra.traceForm_apply, ← hn]; simp⟩

theorem sesq_unimodular (D : Datum H) :
    (∀ y, (∀ x, sesq D x y = 0) → y = 0) ∧ ∀ f : D.La →ₗ[𝓞 E] E,
      (∀ δ ∈ differentIdeal ℤ (𝓞 E), ∀ x, ∃ b : 𝓞 E, (δ : E) * f x = b) → ∃ y, ∀ x, f x = sesq D x y := by
  refine ⟨fun y hy => ?_, fun f hf => ?_⟩
  · apply D.unimod.1
    ext x
    have h1 := trace_mul_sesq_eq_form D 1 x y
    rw [hy x, mul_zero, map_zero, one_smul] at h1
    rw [map_zero, LinearMap.zero_apply, Datum_EF_antisymm, neg_eq_zero]
    exact_mod_cast h1.symm
  · choose n hn using fun x => trace_integral_of_codifferent (hf · · x) 1
    have hadd : ∀ x x', n (x + x') = n x + n x' := by
      intro x x'
      have := hn (x + x')
      rw [map_add (f := _), add_mul, map_add (f := _), ← hn x, ← hn x'] at this
      exact_mod_cast this
    let φ : D.La →+ ℤ := AddMonoidHom.mk' n hadd
    obtain ⟨w, hw⟩ := D.unimod.2 φ.toIntLinearMap
    refine ⟨-w, fun x => eq_of_trace_pairing_eq fun c => ?_⟩
    rw [trace_mul_sesq_eq_form, map_neg, Datum_EF_antisymm, neg_neg]
    have hwx : D.EF w (c • x) = n (c • x) := by rw [hw]; rfl
    rw [hwx, hn, map_smul]
    simp [Algebra.smul_def]

end GlobalTheory.CompanionTheory.Ar.Fl

namespace PositivityTheory.Xgf

theorem sesq_unimodular_dual : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (D : Datum H), (∀ y, (∀ x, sesq D x y = 0) → y = 0) ∧ ∀ f : D.La →ₗ[𝓞 E] E, (∀ δ ∈ differentIdeal ℤ (𝓞 E), ∀ x, ∃ b : 𝓞 E, (δ : E) * f x = b) → ∃ y, ∀ x, f x = sesq D x y :=
  fun _ _ _ _ _ D => GlobalTheory.CompanionTheory.Ar.Fl.sesq_unimodular D

end PositivityTheory.Xgf
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.SesquilinearFractions.TraceIntegralOfCodifferent =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SesqUnimodularDual =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SesqUnimodularDual", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.IsHodgeGram\npublic import Mathlib.Algebra.AffineMonoid.Basic\npublic import Development.WeilBound.CoreStatements.SesquilinearFractions.TraceIntegralOfCodifferent\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Matrix GlobalTheory GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Fl
open scoped ComplexOrder

namespace GlobalTheory.CompanionTheory.Ar.Fl

theorem unimodularity_sesq : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (D : Datum H), (∀ y, (∀ x, sesq D x y = 0) → y = 0) ∧ ∀ f : D.La →ₗ[𝓞 E] E, (∀ δ ∈ differentIdeal ℤ (𝓞 E), ∀ x, ∃ b : 𝓞 E, (δ : E) * f x = b) → ∃ y, ∀ x, f x = sesq D x y :=
  PositivityTheory.Xgf.sesq_unimodular_dual

end GlobalTheory.CompanionTheory.Ar.Fl
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SesqUnimodularDual =====
