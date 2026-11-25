module

public import Mathlib.NumberTheory.NumberField.Basic
public import Formalism.HermitianLattices.HermitianLatticesProofs.DualLattice
public import Lemmata.GeneralBFactThirdTail.Imports
public import Formalism.HermitianLattices.StatementLat
public import Formalism.HermitianLattices.HermitianLatticesProofs.DualBasic
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.FourParts
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RelevantCarrierNonempty.InSCarrierNonempty
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BetaModuloX.IotaSurjectiveHolds
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.HermitianLattices.HermitianLatticesProofs.UnimodularSpan

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IdentityCellTrace.AlgIdentity, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IdentityCellTrace.TermIdIffInSOf

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IdentityCellTrace.AlgIdentity =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IdentityCellTrace.AlgIdentity", "h": "module\n\npublic import Formalism.HermitianLattices.StatementLat\npublic import Formalism.HermitianLattices.HermitianLatticesProofs.DualBasic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField

namespace PI.UnitaryGroupMassFormula.IdCellInSW

variable {E : Type} [Field E]

theorem one_mul_mem {a b : E} (ha : a ∈ (1 : Submodule (𝓞 E) E)) (hb : b ∈ (1 : Submodule (𝓞 E) E)) :
    a * b ∈ (1 : Submodule (𝓞 E) E) := by
  simpa using Submodule.mul_mem_mul ha hb

end PI.UnitaryGroupMassFormula.IdCellInSW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IdentityCellTrace.AlgIdentity =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IdentityCellTrace.TermIdIffInSOf =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IdentityCellTrace.TermIdIffInSOf", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.FourParts\npublic import Formalism.HermitianLattices.HermitianLatticesProofs.DualLattice\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IdentityCellTrace.AlgIdentity\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RelevantCarrierNonempty.InSCarrierNonempty\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Formalism.HermitianLattices.HermitianLatticesProofs.UnimodularSpan\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.L2.SG.TermDef Formalism.L2.SG.FourParts

namespace PI.UnitaryGroupMassFormula.IdCellInSW

section Flag

variable {E : Type} [Field E] [NumberField E] [StarRing E] {S : HSpace E} {r : ℕ} {T : E}

theorem e_mem_X (G : FlagG S r T) (a : Fin r) : G.e a ∈ G.X := Submodule.subset_span ⟨a, rfl⟩

end Flag

attribute [local instance] Formalism.BasicNotions.Host.cmStar

def TraceOne (D : D7) : Prop := ∃ θ : 𝓞 D.host.E, (θ : D.host.E) + star (θ : D.host.E) = 1

end PI.UnitaryGroupMassFormula.IdCellInSW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IdentityCellTrace.TermIdIffInSOf =====
