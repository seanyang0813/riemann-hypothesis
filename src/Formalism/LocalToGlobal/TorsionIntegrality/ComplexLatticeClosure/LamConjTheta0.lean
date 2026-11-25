module

public import Formalism.LocalToGlobal.TorsionIntegrality.ComplexLatticeClosure.LamConjLat0
public import Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.PeriodRelations.LeadingConstantNeZero
public import Formalism.LocalToGlobal.TorsionIntegrality.ComplexLatticeClosure.LatticeAreaPositivity.Bridge
public import Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.PeriodRelations.Bridge

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.TorsionIntegrality.ComplexLatticeClosure.LatticeAreaPositivity.LambdaConjLatticeUniform, Formalism.LocalToGlobal.TorsionIntegrality.ComplexLatticeClosure.LamConjTheta0

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.ComplexLatticeClosure.LatticeAreaPositivity.LambdaConjLatticeUniform =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.ComplexLatticeClosure.LatticeAreaPositivity.LambdaConjLatticeUniform", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.ComplexLatticeClosure.LamConjLat0\npublic import Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.PeriodRelations.LeadingConstantNeZero\npublic import Formalism.LocalToGlobal.TorsionIntegrality.ComplexLatticeClosure.LatticeAreaPositivity.Bridge\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalToGlobal.GlobalTheory.GL3.CubicFields.PeriodRelations.Bridge\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.Th1.F2

open NumberField
open scoped Pointwise
open Formalism.BasicNotions (D7)
open Formalism.L2.GlobalTheoryTheory Formalism.MainNotions
open Formalism.L2.GlobalTheoryTheory.IntegralLatticeDensity.B5

theorem lambda_of_lattice_holds : LamOfLat := by
  intro D cc δ hcc hδ
  exact lattice_ideal_lattice_holds D.host.K D.host.d (discriminant_mod_four D) ⟨D.host.sqrtMinusD, br_sqrt_mem D⟩
    (br_sqrt_sq D) (br_finrank_K D) (brPhi D) cc δ hcc hδ




end Formalism.L2.Th1.F2
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.ComplexLatticeClosure.LatticeAreaPositivity.LambdaConjLatticeUniform =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.ComplexLatticeClosure.LamConjTheta0 =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.ComplexLatticeClosure.LamConjTheta0", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.ComplexLatticeClosure.LamConjLat0\npublic import Formalism.LocalToGlobal.TorsionIntegrality.ComplexLatticeClosure.LatticeAreaPositivity.LambdaConjLatticeUniform\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.Th1.F2

end Formalism.L2.Th1.F2
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.ComplexLatticeClosure.LamConjTheta0 =====
