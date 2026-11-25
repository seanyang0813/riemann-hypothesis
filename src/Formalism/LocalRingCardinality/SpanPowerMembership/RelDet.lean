module

public import Mathlib.Algebra.Star.Unitary
public import Mathlib.Analysis.Complex.Norm
public import Mathlib.NumberTheory.NumberField.InfinitePlace.Embeddings
public import Mathlib.RingTheory.FractionalIdeal.Basic
public import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow
public import Development.AutomorphicArithmetic.WeightCongruences.IsRootOfIntegral
public import Formalism.LocalRingCardinality.SpanPowerMembership.ExampleLayerExistsGenerators

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalRingCardinality.SpanPowerMembership.RelDet

-- ===== clump member: Formalism.LocalRingCardinality.SpanPowerMembership.RelDet =====
-- clump-header: {"m": "Formalism.LocalRingCardinality.SpanPowerMembership.RelDet", "h": "module\n\npublic import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow\npublic import Development.AutomorphicArithmetic.WeightCongruences.IsRootOfIntegral\npublic import Formalism.LocalRingCardinality.SpanPowerMembership.ExampleLayerExistsGenerators\npublic import Mathlib.Algebra.Star.Unitary\npublic import Mathlib.Analysis.Complex.Norm\npublic import Mathlib.NumberTheory.NumberField.InfinitePlace.Embeddings\npublic import Mathlib.RingTheory.FractionalIdeal.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField

noncomputable section

namespace Formalism.BasicNotions.Examples₂

open Formalism.BasicNotions

section RelDet

variable {E : Type} [Field E] [NumberField E] [StarRing E]

theorem smulLat_one {N : ℕ} (L : Submodule (𝓞 E) (Fin N → E)) :
    SDLat.smulLat (1 : Matrix (Fin N) (Fin N) E) L = L := by
  unfold SDLat.smulLat
  rw [Matrix.toLin'_one]
  exact Submodule.map_id L

theorem smulLat_mul {N : ℕ} (A B : Matrix (Fin N) (Fin N) E) (L : Submodule (𝓞 E) (Fin N → E)) :
    SDLat.smulLat (A * B) L = SDLat.smulLat A (SDLat.smulLat B L) := by
  unfold SDLat.smulLat
  rw [← Submodule.map_comp, Matrix.toLin'_mul]
  rfl

variable {Tau : Type} [Fintype Tau] (emb : Tau → (E →+* ℂ))

end RelDet

end Formalism.BasicNotions.Examples₂
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalRingCardinality.SpanPowerMembership.RelDet =====
