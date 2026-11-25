module

public import Development.AbelianVarietyTheory.Definitions.AdelicHermitianForms.IsHermForm
public import Formalism.PeriodIntegrals.UJClassFin
public import Mathlib.Analysis.CStarAlgebra.Classes
public import Mathlib.Analysis.Matrix.Order
public import Mathlib.Analysis.Matrix.Hermitian

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: CompanionTheory.RealGroups.UnitaryAdmissibility.ArchimedeanUnitaryDual.ArchimedeanDenseStabilizers.DenseRangeOfNotIsReal

-- ===== clump member: CompanionTheory.RealGroups.UnitaryAdmissibility.ArchimedeanUnitaryDual.ArchimedeanDenseStabilizers.DenseRangeOfNotIsReal =====
-- clump-header: {"m": "CompanionTheory.RealGroups.UnitaryAdmissibility.ArchimedeanUnitaryDual.ArchimedeanDenseStabilizers.DenseRangeOfNotIsReal", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AdelicHermitianForms.IsHermForm\npublic import Formalism.PeriodIntegrals.UJClassFin\npublic import Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.Matrix.Order\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Matrix.Hermitian\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain GlobalTheory.AdLat GlobalTheory.UnRep
open scoped TensorProduct Matrix ComplexOrder MatrixOrder

namespace CompanionTheory.Rg.FlCls

theorem denseRange_of_not_isReal {K : Type} [Field K] (σ : K →+* ℂ)
    (h : ¬ ComplexEmbedding.IsReal σ) : DenseRange σ := by
  have hc : IsClosed (σ.fieldRange.topologicalClosure : Set ℂ) :=
    Subfield.isClosed_topologicalClosure _
  rcases Complex.subfield_eq_of_closed hc with h1 | h1
  · exfalso
    apply h
    rw [ComplexEmbedding.isReal_iff]
    ext x
    have hx : σ x ∈ σ.fieldRange.topologicalClosure := Subfield.le_topologicalClosure _ ⟨x, rfl⟩
    rw [h1] at hx
    obtain ⟨r, hr⟩ := hx
    rw [ComplexEmbedding.conjugate_coe_eq, ← hr]
    exact Complex.conj_ofReal r
  · have : closure (Set.range σ) = Set.univ := by
      have := congrArg (fun S : Subfield ℂ => (S : Set ℂ)) h1
      exact this
    exact dense_iff_closure_eq.2 this

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {n : ℕ}

end CompanionTheory.Rg.FlCls
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.RealGroups.UnitaryAdmissibility.ArchimedeanUnitaryDual.ArchimedeanDenseStabilizers.DenseRangeOfNotIsReal =====
