module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InfiniteMeasureTransfer.MeasInfXferOf
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.MeasInfCut
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InfiniteMeasureTransfer.NilpotentMeasureRecursion
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InfiniteMeasureTransfer.MeasureIsomorphismAtInfinity

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InfiniteMeasureTransfer.Closed, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.MeasInfXfer

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InfiniteMeasureTransfer.Closed =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InfiniteMeasureTransfer.Closed", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InfiniteMeasureTransfer.MeasInfXferOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.L2.SG.HidaSetting Matrix

namespace Formalism.L2.SG.Pf.MeasInfW

theorem continuous_uMat_at (I : AutInst) (v : InfinitePlace I.F) :
    Continuous fun s : I.Ginf => uMat (s v) := by
  first
  | exact Units.continuous_val.comp (continuous_subtype_val.comp (continuous_apply v))

theorem isClosed_mulVec_mem {n : ℕ} (x : Fin n → ℂ) (W : Submodule ℂ (Fin n → ℂ)) :
    IsClosed {M : Matrix (Fin n) (Fin n) ℂ | (M - 1) *ᵥ x ∈ W} := by
  have hW : IsClosed (W : Set (Fin n → ℂ)) := W.closed_of_finiteDimensional
  exact hW.preimage ((continuous_id.sub continuous_const).matrix_mulVec continuous_const)

theorem isClosed_InN {n r : ℕ} (ε : Fin n → Bool) (e : Fin r → Fin n → ℂ) (z : Fin n → ℂ) :
    IsClosed {M : Matrix (Fin n) (Fin n) ℂ | InN ε e z M} := by
  have h1 : {M : Matrix (Fin n) (Fin n) ℂ | InN ε e z M} =
      ((⋂ a : Fin r, {M : Matrix (Fin n) (Fin n) ℂ | (M - 1) *ᵥ e a ∈ spanLt e a.1}) ∩
        {M : Matrix (Fin n) (Fin n) ℂ | (M - 1) *ᵥ z ∈ spanLt e r}) ∩
        ⋂ y : Fin n → ℂ, ⋂ (_ : ∀ a, hJ ε (e a) y = 0),
          {M : Matrix (Fin n) (Fin n) ℂ | (M - 1) *ᵥ y ∈ spanLt e r} := by
    ext M
    simp only [InN, InS, Set.mem_setOf_eq, Set.mem_inter_iff, Set.mem_iInter]
  rw [h1]
  exact ((isClosed_iInter fun a => isClosed_mulVec_mem _ _).inter (isClosed_mulVec_mem _ _)).inter
    (isClosed_iInter fun y => isClosed_iInter fun _ => isClosed_mulVec_mem _ _)

theorem nilpotent_measure_closed_form : NClosed := by
  intro I r e z
  have h1 : Ninf I e z = ⋂ v, (fun s : I.Ginf => uMat (s v)) ⁻¹'
      {M : Matrix (Fin I.n) (Fin I.n) ℂ | InN (I.ε v) (fun a => rv I v (e a)) (rv I v z) M} := by
    ext s
    simp only [Ninf, Set.mem_setOf_eq, Set.mem_iInter, Set.mem_preimage]
  rw [h1]
  exact isClosed_iInter fun v => (isClosed_InN _ _ _).preimage (continuous_uMat_at I v)

theorem hermitian_measure_closed_form : HClosed := by
  intro I S
  have h1 : Hset I S = ⋂ v, ⋂ x ∈ S, (fun s : I.Ginf => uMat (s v)) ⁻¹'
      {M : Matrix (Fin I.n) (Fin I.n) ℂ | M *ᵥ rv I v x = rv I v x} := by
    ext s
    simp only [Hset, Set.mem_setOf_eq, Set.mem_iInter, Set.mem_preimage]
  rw [h1]
  refine isClosed_iInter fun v => isClosed_biInter fun x _ =>
    IsClosed.preimage (continuous_uMat_at I v) ?_
  exact isClosed_eq (continuous_id.matrix_mulVec continuous_const) continuous_const

end Formalism.L2.SG.Pf.MeasInfW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InfiniteMeasureTransfer.Closed =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.MeasInfXfer =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.MeasInfXfer", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.MeasInfCut\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InfiniteMeasureTransfer.Closed\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InfiniteMeasureTransfer.NilpotentMeasureRecursion\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InfiniteMeasureTransfer.MeasureIsomorphismAtInfinity\n\n"}
section -- clump:auto
@[expose] public section

theorem infinite_measure_transfer : Formalism.L2.SG.Pf.MeasInf.InfTransfer :=
  Formalism.L2.SG.Pf.MeasInfW.measInfXfer_of Formalism.L2.SG.Pf.MeasInfW.measure_isomorphism_at_infinity
    Formalism.L2.SG.Pf.MeasInfW.nilpotent_measure_recursion Formalism.L2.SG.Pf.MeasInfW.hermitian_measure_recursion
    Formalism.L2.SG.Pf.MeasInfW.nilpotent_measure_closed_form Formalism.L2.SG.Pf.MeasInfW.hermitian_measure_closed_form
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.MeasInfXfer =====
