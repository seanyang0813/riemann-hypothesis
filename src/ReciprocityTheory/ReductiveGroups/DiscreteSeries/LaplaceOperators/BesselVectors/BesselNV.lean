module

public import Mathlib.Analysis.CStarAlgebra.Classes
public import Mathlib.Analysis.InnerProductSpace.Defs
public import Mathlib.MeasureTheory.Integral.Bochner.Basic
public import Mathlib.MeasureTheory.Function.StronglyMeasurable.Inner
public import Mathlib.Analysis.InnerProductSpace.Basic
public import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.EquivariantL2Space
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.SpectralGap.ContinuousBlkWConj
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.SpectralGap.NonvanishingHypotheses
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.DiscreteSeriesExistence.EquivSigLamOfIsDS
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.SpectralGap.BesselIntegralSquareIntegrable
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.DiscreteSeriesExistence.SigZeroCayley
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.SpectralGap.CayleyIndep
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.SpectralGap.GapBigLap
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.UHMulInv
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.ReproducingKernels.ProductBoundOfFactorBounds
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.HpkMulVecMulVec
import ReciprocityTheory.ReductiveGroups.DiscreteSeries.HighestWeights.WeylBridge

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.BesselVectors.ClmInt, ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.BesselVectors.IsClosedUWset, ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.ReproducingKernels.HpkMulVecMulVec, ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.SpectralGap.DSUniv, ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.SpectralGap.FamilyGapImplicationHolds, ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.SpectralGap.SIntShiftEqSmul, ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.BesselVectors.BesselNV

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.BesselVectors.ClmInt =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.BesselVectors.ClmInt", "h": "module\n\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.InnerProductSpace.Defs\npublic import Mathlib.MeasureTheory.Integral.Bochner.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.ContinuousLinearMap\nimport Mathlib.Analysis.CStarAlgebra.Module.Constructions\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.MeasureTheory.Function.StronglyMeasurable.Inner\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.InnerProductSpace.Basic\npublic import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory
open scoped InnerProductSpace

namespace ReciprocityTheory.ChartRestriction.DS.Lap.TopClm

variable {α : Type*} [MeasurableSpace α] {μ : Measure α}
  {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℂ V] [FiniteDimensional ℂ V]

theorem opNorm_le_one_of_isometry (A : V →L[ℂ] V) (hA : ∀ v, ‖A v‖ = ‖v‖) : ‖A‖ ≤ 1 := A.opNorm_le_bound zero_le_one fun v => by rw [hA, one_mul]

theorem integral_ne_zero_of_apply (s : α → ℂ) (A : α → V →L[ℂ] V) (hA : AEStronglyMeasurable A μ)
    (hu : ∀ᵐ p ∂μ, ∀ v, ‖A p v‖ = ‖v‖) (ξ : V) (h : ∫ p, s p • A p ξ ∂μ ≠ 0) :
    ∫ p, s p • A p ∂μ ≠ 0 := by
  intro h0
  apply h
  have hξ : ξ ≠ 0 := by
    rintro rfl
    simp at h
  have hξn : ‖ξ‖ ≠ 0 := norm_ne_zero_iff.2 hξ
  by_cases hint : Integrable (fun p => s p • A p) μ
  · have h1 := ContinuousLinearMap.integral_apply hint ξ
    rw [h0] at h1
    simpa using h1.symm
  · apply integral_undef
    intro hint2
    apply hint
    have hAξ : AEStronglyMeasurable (fun p => A p ξ) μ :=
      (ContinuousLinearMap.apply ℂ V ξ).continuous.comp_aestronglyMeasurable hA
    have hnC : ((‖ξ‖ : ℝ) : ℂ) ≠ 0 := by exact_mod_cast hξn
    have hs : AEStronglyMeasurable s μ := by
      have h1 : AEStronglyMeasurable
          (fun p => ⟪A p ξ, s p • A p ξ⟫_ℂ / (((‖ξ‖ : ℝ) : ℂ) ^ 2)) μ :=
        (continuous_id.div_const (((‖ξ‖ : ℝ) : ℂ) ^ 2)).comp_aestronglyMeasurable
          (hAξ.inner hint2.aestronglyMeasurable)
      refine h1.congr ?_
      filter_upwards [hu] with p hp
      rw [inner_smul_right, inner_self_eq_norm_sq_to_K, hp ξ]
      first
      | (field_simp; done)
      | (field_simp; rfl)
    refine Integrable.mono' (g := fun p => ‖ξ‖⁻¹ * ‖s p • A p ξ‖) (hint2.norm.const_mul _)
      (hs.smul hA) ?_
    filter_upwards [hu] with p hp
    calc ‖s p • A p‖ ≤ ‖s p‖ * ‖A p‖ := norm_smul_le _ _
      _ ≤ ‖s p‖ * 1 := mul_le_mul_of_nonneg_left (opNorm_le_one_of_isometry _ hp) (norm_nonneg _)
      _ = ‖ξ‖⁻¹ * ‖s p • A p ξ‖ := by
        rw [norm_smul, hp ξ]
        field_simp

end ReciprocityTheory.ChartRestriction.DS.Lap.TopClm
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.BesselVectors.ClmInt =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.BesselVectors.IsClosedUWset =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.BesselVectors.IsClosedUWset", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.EquivariantL2Space\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.SpectralGap.ContinuousBlkWConj\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.TailIntegrals.UHMulInv\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.ReproducingKernels.ProductBoundOfFactorBounds\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Matrix

namespace ReciprocityTheory.ChartRestriction.DS.Lap.TopPi

open ReciprocityTheory.ChartRestriction.DS.Lap

variable {k r : ℕ}

theorem isClosed_UWset (z : Fin (2 * r + k + 1) → ℂ) : IsClosed (Formalism.QuantumDeterminants.UWset k r z) := by
  have hU : IsClosed {g : Mat k r | gᴴ * Formalism.QuantumDeterminants.Hpk k r * g = Formalism.QuantumDeterminants.Hpk k r} :=
    isClosed_eq ((continuous_id.matrix_conjTranspose.matrix_mul continuous_const).matrix_mul continuous_id)
      continuous_const
  have h1 : IsClosed {g : Mat k r | ∀ a : Fin r,
      g *ᵥ Formalism.QuantumDeterminants.bvec (Formalism.QuantumDeterminants.eI k r a) = Formalism.QuantumDeterminants.bvec (Formalism.QuantumDeterminants.eI k r a) ∧
        g *ᵥ Formalism.QuantumDeterminants.bvec (Formalism.QuantumDeterminants.esI k r a) = Formalism.QuantumDeterminants.bvec (Formalism.QuantumDeterminants.esI k r a)} := by
    simp only [Set.ofPred_forall, Set.ofPred_and]
    exact isClosed_iInter fun a =>
      (isClosed_eq (continuous_id.matrix_mulVec continuous_const) continuous_const).inter
        (isClosed_eq (continuous_id.matrix_mulVec continuous_const) continuous_const)
  have h2 : IsClosed {g : Mat k r | g *ᵥ z = z} :=
    isClosed_eq (continuous_id.matrix_mulVec continuous_const) continuous_const
  exact hU.inter (h1.inter h2)

theorem piInv_facts (z : Fin (2 * r + k + 1) → ℂ) (u : Fin k → ℝ) {Vp : Type} [NormedAddCommGroup Vp]
    [InnerProductSpace ℂ Vp] [FiniteDimensional ℂ Vp] (π : Mat k r → (Vp →L[ℂ] Vp))
    (μW μN : Measure (Formalism.QuantumDeterminants.Mt k r)) (hz : Formalism.QuantumDeterminants.inWb k r z) (hT : 0 < Formalism.QuantumDeterminants.Tz k r z)
    (hπ : Formalism.MainNotions.S.IsHCTypeW k r z u π) (hμW : Formalism.MainNotions.S.IsHaarOn (Formalism.QuantumDeterminants.UWset k r z) μW)
    (hμN : Formalism.MainNotions.S.IsHaarOn (Formalism.QuantumDeterminants.Nset k r) μN) :
    AEStronglyMeasurable (fun p : Formalism.QuantumDeterminants.Mt k r × Formalism.QuantumDeterminants.Mt k r => π (Matrix.of p.1)⁻¹) (μW.prod μN) ∧
      ∀ᵐ p ∂(μW.prod μN), ∀ v : Vp, ‖π (Matrix.of p.1)⁻¹ v‖ = ‖v‖ := by
  have hπU := hcTypeW_uRep k r z u Vp π hz hT hπ
  have := hμW.1
  have := hμN.1
  have hof : Continuous fun p : Formalism.QuantumDeterminants.Mt k r × Formalism.QuantumDeterminants.Mt k r => (Matrix.of p.1 : Mat k r) :=
    continuous_fst
  have hTae : ∀ᵐ p ∂(μW.prod μN), Matrix.of p.1 ∈ Formalism.QuantumDeterminants.UWset k r z :=
    Measure.quasiMeasurePreserving_fst.ae (ae_iff.2 hμW.2.2.1)
  have hTc : IsClosed {p : Formalism.QuantumDeterminants.Mt k r × Formalism.QuantumDeterminants.Mt k r | Matrix.of p.1 ∈ Formalism.QuantumDeterminants.UWset k r z} :=
    (isClosed_UWset z).preimage hof
  have hπc : ContinuousOn π (Formalism.QuantumDeterminants.UWset k r z) := continuousOn_clm_apply.2 hπU.2.2
  have hinv : ContinuousOn (fun g : Mat k r => g⁻¹) (Formalism.QuantumDeterminants.UWset k r z) := by
    intro g hg
    have hgi : g⁻¹ * g = 1 := ReciprocityTheory.ChartRestriction.DS.Xi.StepA.UH_inv_mul k r hg.1
    have hu : IsUnit g.det := Matrix.isUnit_det_of_left_inverse hgi
    have hc := NormedRing.inverse_continuousAt hu.unit
    rw [IsUnit.unit_spec] at hc
    exact (continuousAt_matrix_inv g hc).continuousWithinAt
  have hcont : ContinuousOn (fun p : Formalism.QuantumDeterminants.Mt k r × Formalism.QuantumDeterminants.Mt k r => π (Matrix.of p.1)⁻¹)
      {p | Matrix.of p.1 ∈ Formalism.QuantumDeterminants.UWset k r z} :=
    hπc.comp (hinv.comp hof.continuousOn fun p hp => hp) fun p hp => _root_.ReciprocityTheory.ChartRestriction.DS.Lap.S0.Dec.UW_inv_mem hp
  refine ⟨?_, ?_⟩
  · have h := hcont.aestronglyMeasurable (μ := μW.prod μN) hTc.measurableSet
    have hTae' : ∀ᵐ p ∂(μW.prod μN),
        p ∈ {p : Formalism.QuantumDeterminants.Mt k r × Formalism.QuantumDeterminants.Mt k r | Matrix.of p.1 ∈ Formalism.QuantumDeterminants.UWset k r z} := hTae
    rw [Measure.restrict_eq_self_of_ae_mem hTae'] at h
    exact h
  · filter_upwards [hTae] with p hp v
    exact hπU.2.1 _ (_root_.ReciprocityTheory.ChartRestriction.DS.Lap.S0.Dec.UW_inv_mem hp) v

end ReciprocityTheory.ChartRestriction.DS.Lap.TopPi
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.BesselVectors.IsClosedUWset =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.ReproducingKernels.HpkMulVecMulVec =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.ReproducingKernels.HpkMulVecMulVec", "h": "module\n\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.HpkMulVecMulVec\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.EquivariantL2Space\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Matrix
open scoped InnerProductSpace

namespace ReciprocityTheory.ChartRestriction.DS.Lap.S0.Core

open Formalism.QuantumDeterminants

section hpk

variable (k r : ℕ)

theorem hpk_mulVec (v : Fin (2 * r + k + 1) → ℂ) (i : Fin (2 * r + k + 1)) :
    (Hpk k r *ᵥ v) i = if i.val < r ∨ r + k < i.val then v ⟨2 * r + k - i.val, by omega⟩
      else if i.val = r + k then -v i else v i := by
  apply ReciprocityTheory.ChartRestriction.DS.Mult1.TopH.hpk_mulVec

theorem hpk_mulVec_mulVec (v : Fin (2 * r + k + 1) → ℂ) : Hpk k r *ᵥ (Hpk k r *ᵥ v) = v := by
  funext i
  have hi := i.isLt
  by_cases h : i.val < r ∨ r + k < i.val
  · have h' : (2 * r + k - i.val < r ∨ r + k < 2 * r + k - i.val) := by omega
    rw [hpk_mulVec, if_pos h, hpk_mulVec, if_pos h']
    congr 1
    ext
    simp only
    omega
  · rw [hpk_mulVec, if_neg h, hpk_mulVec, if_neg h]
    split_ifs <;> simp

theorem hpk_sq : Hpk k r * Hpk k r = 1 := by
  apply Matrix.ext_of_mulVec_single
  intro i
  rw [← Matrix.mulVec_mulVec, hpk_mulVec_mulVec, Matrix.one_mulVec]

end hpk

theorem inv_mul_UH (k r : ℕ) {g : Mat k r} (hg : g ∈ UH (Hpk k r)) :
    Hpk k r * gᴴ * Hpk k r * g = 1 := by
  have hg' : gᴴ * Hpk k r * g = Hpk k r := hg
  calc Hpk k r * gᴴ * Hpk k r * g = Hpk k r * (gᴴ * Hpk k r * g) := by
        simp only [Matrix.mul_assoc]
    _ = Hpk k r * Hpk k r := by rw [hg']
    _ = 1 := hpk_sq k r

theorem mul_inv_UH (k r : ℕ) {g : Mat k r} (hg : g ∈ UH (Hpk k r)) : g * g⁻¹ = 1 := by
  have h := inv_mul_UH k r hg
  exact Matrix.mul_nonsing_inv g (Matrix.isUnit_det_of_left_inverse h)

theorem mul_mem_UH (k r : ℕ) {g x : Mat k r} (hg : g ∈ UH (Hpk k r)) (hx : x ∈ UH (Hpk k r)) :
    g * x ∈ UH (Hpk k r) := by
  have hg' : gᴴ * Hpk k r * g = Hpk k r := hg
  have hx' : xᴴ * Hpk k r * x = Hpk k r := hx
  show (g * x)ᴴ * Hpk k r * (g * x) = Hpk k r
  rw [Matrix.conjTranspose_mul]
  calc xᴴ * gᴴ * Hpk k r * (g * x) = xᴴ * (gᴴ * Hpk k r * g) * x := by
        simp only [Matrix.mul_assoc]
    _ = Hpk k r := by rw [hg', hx']

theorem inv_mem_UH (k r : ℕ) (g : Mat k r) (hg : g ∈ UH (Hpk k r)) : g⁻¹ ∈ UH (Hpk k r) := by
  have hg' : gᴴ * Hpk k r * g = Hpk k r := hg
  have e := mul_inv_UH k r hg
  show (g⁻¹)ᴴ * Hpk k r * g⁻¹ = Hpk k r
  calc (g⁻¹)ᴴ * Hpk k r * g⁻¹ = (g⁻¹)ᴴ * (gᴴ * Hpk k r * g) * g⁻¹ := by rw [hg']
    _ = (g * g⁻¹)ᴴ * Hpk k r * (g * g⁻¹) := by
        rw [Matrix.conjTranspose_mul]
        simp only [Matrix.mul_assoc]
    _ = Hpk k r := by rw [e]; simp

end ReciprocityTheory.ChartRestriction.DS.Lap.S0.Core
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.ReproducingKernels.HpkMulVecMulVec =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.SpectralGap.DSUniv =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.SpectralGap.DSUniv", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.SpectralGap.NonvanishingHypotheses\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.DiscreteSeriesExistence.EquivSigLamOfIsDS\nimport ReciprocityTheory.ReductiveGroups.DiscreteSeries.HighestWeights.WeylBridge\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix
open scoped InnerProductSpace

namespace ReciprocityTheory.ChartRestriction.DS.Lap

open ReciprocityTheory.ChartRestriction.DS

variable {n : ℕ}

section Transport

variable {H₁ H₂ : Type*} [NormedAddCommGroup H₁] [InnerProductSpace ℂ H₁]
  [NormedAddCommGroup H₂] [InnerProductSpace ℂ H₂] {ε : Fin n → Bool}
  {σ₁ : Matrix (Fin n) (Fin n) ℂ → (H₁ →L[ℂ] H₁)} {σ₂ : Matrix (Fin n) (Fin n) ℂ → (H₂ →L[ℂ] H₂)}

abbrev dsuL (U : H₁ ≃ₗᵢ[ℂ] H₂) : H₁ →ₗ[ℂ] H₂ := (U.toLinearEquiv : H₁ →ₗ[ℂ] H₂)

theorem dsu_symm_intertwines (U : H₁ ≃ₗᵢ[ℂ] H₂)
    (hU : ∀ g ∈ Formalism.REAL.Kset ε, ∀ x, U (σ₁ g x) = σ₂ g (U x)) :
    ∀ g ∈ Formalism.REAL.Kset ε, ∀ y, U.symm (σ₂ g y) = σ₁ g (U.symm y) := by
  intro g hg y
  apply U.injective
  rw [hU g hg, LinearIsometryEquiv.apply_symm_apply, LinearIsometryEquiv.apply_symm_apply]

theorem dsu_kStable_map (U : H₁ ≃ₗᵢ[ℂ] H₂)
    (hU : ∀ g ∈ Formalism.REAL.Kset ε, ∀ x, U (σ₁ g x) = σ₂ g (U x)) {S : Submodule ℂ H₁}
    (hS : Formalism.MainNotions.S.IsKStableOn ε σ₁ S) : Formalism.MainNotions.S.IsKStableOn ε σ₂ (S.map (dsuL U)) := by
  rintro g hg _ ⟨x, hx, rfl⟩
  exact ⟨σ₁ g x, hS g hg x hx, hU g hg x⟩

theorem dsu_isWtOn_map (U : H₁ ≃ₗᵢ[ℂ] H₂)
    (hU : ∀ g ∈ Formalism.REAL.Kset ε, ∀ x, U (σ₁ g x) = σ₂ g (U x)) {μ : Fin n → ℝ} {v : H₁}
    (hv : Formalism.MainNotions.S.IsWtOn (Formalism.REAL.Kset ε) σ₁ μ v) : Formalism.MainNotions.S.IsWtOn (Formalism.REAL.Kset ε) σ₂ μ (U v) := by
  intro θ hθ
  rw [← hU _ hθ, hv θ hθ, map_smul]

theorem dsu_isKTypeOf_map (U : H₁ ≃ₗᵢ[ℂ] H₂)
    (hU : ∀ g ∈ Formalism.REAL.Kset ε, ∀ x, U (σ₁ g x) = σ₂ g (U x)) {Λ : Fin n → ℝ} {S : Submodule ℂ H₁}
    (hS : Formalism.MainNotions.S.IsKTypeOf ε σ₁ Λ S) : Formalism.MainNotions.S.IsKTypeOf ε σ₂ Λ (S.map (dsuL U)) := by
  have hU' := dsu_symm_intertwines U hU
  obtain ⟨hfd, hst, hirr, ⟨v, hvS, hv0, hvw⟩, hdom⟩ := hS
  refine ⟨inferInstance, dsu_kStable_map U hU hst, ?_, ⟨U v, ⟨v, hvS, rfl⟩, ?_, dsu_isWtOn_map U hU hvw⟩, ?_⟩
  · intro S' hle hst'
    have hst'' := dsu_kStable_map U.symm hU' hst'
    have hle' : S'.map (dsuL U.symm) ≤ S := by
      rintro _ ⟨y, hy, rfl⟩
      obtain ⟨x, hx, rfl⟩ := hle hy
      show U.symm (U x) ∈ S
      rw [LinearIsometryEquiv.symm_apply_apply]
      exact hx
    have hback : (S'.map (dsuL U.symm)).map (dsuL U) = S' := by
      ext y
      constructor
      · rintro ⟨_, ⟨z, hz, rfl⟩, rfl⟩
        show U (U.symm z) ∈ S'
        rw [LinearIsometryEquiv.apply_symm_apply]
        exact hz
      · intro hy
        exact ⟨U.symm y, ⟨y, hy, rfl⟩, U.apply_symm_apply y⟩
    rcases hirr _ hle' hst'' with h | h
    · left
      rw [← hback, h, Submodule.map_bot]
    · right
      rw [← hback, h]
  · intro h
    exact hv0 (U.injective (h.trans (map_zero U).symm))
  · rintro μ _ ⟨x, hx, rfl⟩ hx0 hw
    refine hdom μ x hx (fun h => hx0 (by simp [h])) ?_
    have := dsu_isWtOn_map U.symm hU' hw
    simpa using this

theorem dsu_lowKSub_map (U : H₁ ≃ₗᵢ[ℂ] H₂)
    (hU : ∀ g ∈ Formalism.REAL.Kset ε, ∀ x, U (σ₁ g x) = σ₂ g (U x)) (lam : Fin n → ℝ) {x : H₁}
    (hx : x ∈ Formalism.MainNotions.S.lowKSub ε lam σ₁) : U x ∈ Formalism.MainNotions.S.lowKSub ε lam σ₂ := by
  have hle : Formalism.MainNotions.S.lowKSub ε lam σ₁ ≤ (Formalism.MainNotions.S.lowKSub ε lam σ₂).comap (dsuL U) := by
    refine sSup_le fun S hS => ?_
    rw [← Submodule.map_le_iff_le_comap]
    exact le_sSup (dsu_isKTypeOf_map U hU hS)
  exact hle hx

end Transport

theorem dsUniv (n : ℕ) : DSUnivStatement n := by
  intro ε lam hlam h hgap H₁ _ _ _ σ₁ H₂ _ _ _ σ₂ hDS₁ hDS₂ w₁ hw₁
  have hh : (n : ℝ) * (pOf ε : ℝ) * (qOf ε : ℝ) + 1 < h := by
    have h1 : 2 + max (3 * (n : ℝ) / 2) (1 + (n : ℝ) * (pOf ε : ℝ) * (qOf ε : ℝ)) ≤ hNeed ε :=
      le_max_left _ _
    have h2 := le_max_right (3 * (n : ℝ) / 2) (1 + (n : ℝ) * (pOf ε : ℝ) * (qOf ε : ℝ))
    linarith [hgap.2.2]
  obtain ⟨U, hU⟩ := (isDS_props_of_gap n ε lam hlam h hgap.2.1 hh H₁ σ₁ hDS₁).2.2.2.2 H₂ σ₂ hDS₂
  have hUK : ∀ g ∈ Formalism.REAL.Kset ε, ∀ x, U (σ₁ g x) = σ₂ g (U x) :=
    fun g hg x => hU g (_root_.ReciprocityTheory.ChartRestriction.DS.HW.hw_kset_subset ε hg) x
  refine ⟨U w₁, ⟨by rw [LinearIsometryEquiv.norm_map]; exact hw₁.1, dsu_lowKSub_map U hUK lam hw₁.2⟩, ?_⟩
  intro g hg
  rw [← hU g hg, LinearIsometryEquiv.inner_map_map]

end ReciprocityTheory.ChartRestriction.DS.Lap
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.SpectralGap.DSUniv =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.SpectralGap.FamilyGapImplicationHolds =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.SpectralGap.FamilyGapImplicationHolds", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.EquivariantL2Space\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace ReciprocityTheory.ChartRestriction.DS.Lap

open ReciprocityTheory.ChartRestriction.DS
open scoped Matrix InnerProductSpace

theorem bridge_inv_mul (k r : ℕ) (ε : Fin (2 * r + k + 1) → Bool) (P : Mat k r)
    (hP : Formalism.MainNotions.S.IsCayleyU k r ε P) : P⁻¹ * P = 1 := by
  have hu : IsUnit P := hP.1.1
  exact Matrix.nonsing_inv_mul P ((Matrix.isUnit_iff_isUnit_det P).mp hu)

theorem bridge_conj (k r : ℕ) (ε : Fin (2 * r + k + 1) → Bool) (P : Mat k r)
    (hP : Formalism.MainNotions.S.IsCayleyU k r ε P) (g : Mat k r) (hg : g ∈ Formalism.QuantumDeterminants.UH (Formalism.QuantumDeterminants.Hpk k r)) :
    P * g * P⁻¹ ∈ Formalism.MainNotions.S.UJset ε ∧ P⁻¹ * (P * g * P⁻¹) * P = g := by
  have hPi : P⁻¹ * P = 1 := bridge_inv_mul k r ε P hP
  have hPu : P ∈ Matrix.unitaryGroup (Fin (2 * r + k + 1)) ℂ := hP.2
  have e1 : Pᴴ * P = 1 := by
    have := (Matrix.mem_unitaryGroup_iff' (A := P)).mp hPu
    simpa [Matrix.star_eq_conjTranspose] using this
  have e2 : P * Pᴴ = 1 := by
    have := (Matrix.mem_unitaryGroup_iff (A := P)).mp hPu
    simpa [Matrix.star_eq_conjTranspose] using this
  have hinv : P⁻¹ = Pᴴ := Matrix.inv_eq_left_inv e1
  have hc : Pᴴ * Formalism.REAL.Jm ε * P = Formalism.QuantumDeterminants.Hpk k r := hP.1.2
  have hg' : gᴴ * Formalism.QuantumDeterminants.Hpk k r * g = Formalism.QuantumDeterminants.Hpk k r := hg
  refine ⟨?_, ?_⟩
  · show (P * g * P⁻¹)ᴴ * Formalism.REAL.Jm ε * (P * g * P⁻¹) = Formalism.REAL.Jm ε
    rw [hinv]
    calc (P * g * Pᴴ)ᴴ * Formalism.REAL.Jm ε * (P * g * Pᴴ)
        = P * (gᴴ * (Pᴴ * Formalism.REAL.Jm ε * P) * g) * Pᴴ := by
          simp [Matrix.conjTranspose_mul, Matrix.mul_assoc]
      _ = P * Pᴴ * Formalism.REAL.Jm ε * (P * Pᴴ) := by
          rw [hc, hg', ← hc]; simp [Matrix.mul_assoc]
      _ = Formalism.REAL.Jm ε := by rw [e2]; simp
  · calc P⁻¹ * (P * g * P⁻¹) * P = (P⁻¹ * P) * g * (P⁻¹ * P) := by simp [Matrix.mul_assoc]
      _ = g := by rw [hPi]; simp

end ReciprocityTheory.ChartRestriction.DS.Lap
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.SpectralGap.FamilyGapImplicationHolds =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.SpectralGap.SIntShiftEqSmul =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.SpectralGap.SIntShiftEqSmul", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.EquivariantL2Space\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.SpectralGap.ContinuousBlkWConj\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Matrix
open scoped InnerProductSpace ENNReal

namespace ReciprocityTheory.ChartRestriction.DS.Lap

theorem sInt_shift_eq_smul {k r : ℕ} {Vp : Type*} [NormedAddCommGroup Vp] [InnerProductSpace ℂ Vp]
    [CompleteSpace Vp] (z : Fin (2 * r + k + 1) → ℂ) (μW μN : Measure (Formalism.QuantumDeterminants.Mt k r))
    (hW : Formalism.MainNotions.S.IsHaarOn (Formalism.QuantumDeterminants.UWset k r z) μW) (hN : Formalism.MainNotions.S.IsHaarOn (Formalism.QuantumDeterminants.Nset k r) μN)
    (ψ : Mat k r → ℂ) (π : Mat k r → (Vp →L[ℂ] Vp)) (f g : Mat k r → ℂ) (c₁ : ℂ)
    (hfg : ∀ y ∈ Formalism.QuantumDeterminants.UH (Formalism.QuantumDeterminants.Hpk k r), f y = c₁ * g y) (ξ : Vp) (x₀ x : Mat k r)
    (hx₀ : x₀ ∈ Formalism.QuantumDeterminants.UH (Formalism.QuantumDeterminants.Hpk k r)) (hx : x ∈ Formalism.QuantumDeterminants.UH (Formalism.QuantumDeterminants.Hpk k r)) :
    sInt μW μN ψ π (fun y => f (x₀⁻¹ * y)) ξ x = c₁ • sInt μW μN ψ π (fun y => g (x₀⁻¹ * y)) ξ x := by
  have := hW.1
  have := hN.1
  have h1 : ∀ᵐ p ∂(μW.prod μN), Matrix.of p.1 ∈ Formalism.QuantumDeterminants.UWset k r z :=
    Measure.quasiMeasurePreserving_fst.ae (ae_iff.2 hW.2.2.1)
  have h2 : ∀ᵐ p ∂(μW.prod μN), Matrix.of p.2 ∈ Formalism.QuantumDeterminants.Nset k r :=
    Measure.quasiMeasurePreserving_snd.ae (ae_iff.2 hN.2.2.1)
  unfold sInt
  rw [← integral_smul]
  refine integral_congr_ae ?_
  filter_upwards [h1, h2] with p hp1 hp2
  rw [hfg _ (mul_mem_UH' (inv_mem_UH' hx₀) (mul_mem_UH' (mul_mem_UH' hp1.1 hp2.1) hx)), mul_smul]

end ReciprocityTheory.ChartRestriction.DS.Lap
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.SpectralGap.SIntShiftEqSmul =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.BesselVectors.BesselNV =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.BesselVectors.BesselNV", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.SpectralGap.BesselIntegralSquareIntegrable\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.DiscreteSeriesExistence.SigZeroCayley\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.BesselVectors.ClmInt\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.BesselVectors.IsClosedUWset\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.ReproducingKernels.HpkMulVecMulVec\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.SpectralGap.CayleyIndep\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.SpectralGap.DSUniv\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.SpectralGap.FamilyGapImplicationHolds\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.SpectralGap.GapBigLap\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.SpectralGap.SIntShiftEqSmul\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Matrix
open scoped InnerProductSpace

namespace ReciprocityTheory.ChartRestriction.DS.Lap.TopNV

open ReciprocityTheory.ChartRestriction.DS ReciprocityTheory.ChartRestriction.DS.Lap

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

def BesselNVUnder (Gap : ℕ → ∀ r : ℕ, (Fin (2 * r + 2) → ℝ) → Prop) : Prop :=
  ∀ (k r : ℕ) (z : Fin (2 * r + k + 1) → ℂ) (c : Fin r → ℂ) (u : Fin k → ℝ) (v : Fin (k - 1) → ℝ)
    (b : Fin (2 * r + 2) → ℝ),
    2 ≤ k → Even k → Formalism.QuantumDeterminants.inWb k r z → 0 < Formalism.QuantumDeterminants.Tz k r z → (∀ a, c a ≠ 0) →
    Formalism.QuantumDeterminants.IsHCParam u → Formalism.QuantumDeterminants.IsHCParam (Formalism.MainNotions.CayleySignature.lam48 k r v b) → Formalism.MainNotions.CayleySignature.InterlacingCondition k r u v b →
    Formalism.MainNotions.CayleySignature.HalfIntegralDifference k r u v b → Gap k r b →
  ∀ (H : Type) [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]
    (σ : Formalism.MainNotions.CayleySignature.Mat k r → (H →L[ℂ] H)),
    Formalism.MainNotions.S.IsDSHpk k r (Formalism.MainNotions.CayleySignature.eps48 k r) (Formalism.MainNotions.CayleySignature.lam48 k r v b) σ →
  ∀ (Vp : Type) [NormedAddCommGroup Vp] [InnerProductSpace ℂ Vp] [FiniteDimensional ℂ Vp]
    (π : Formalism.MainNotions.CayleySignature.Mat k r → (Vp →L[ℂ] Vp)), Formalism.MainNotions.S.IsHCTypeW k r z u π →
  ∀ w : H, Formalism.MainNotions.S.IsLowUnitH k r (Formalism.MainNotions.CayleySignature.eps48 k r) (Formalism.MainNotions.CayleySignature.lam48 k r v b) σ w →
  ∀ μW μN : Measure (Formalism.QuantumDeterminants.Mt k r), Formalism.MainNotions.S.IsHaarOn (Formalism.QuantumDeterminants.UWset k r z) μW →
    Formalism.MainNotions.S.IsHaarOn (Formalism.QuantumDeterminants.Nset k r) μN →
  ∃ x x₀ : Formalism.MainNotions.CayleySignature.Mat k r, x ∈ Formalism.QuantumDeterminants.UH (Formalism.QuantumDeterminants.Hpk k r) ∧ x₀ ∈ Formalism.QuantumDeterminants.UH (Formalism.QuantumDeterminants.Hpk k r) ∧
    ∫ p : Formalism.QuantumDeterminants.Mt k r × Formalism.QuantumDeterminants.Mt k r,
      (⟪σ x₀ w, σ (Matrix.of p.1 * Matrix.of p.2) (σ x w)⟫_ℂ *
          star (Formalism.MainNotions.S.psiGen k r z c (Matrix.of p.2))) •
        π (Matrix.of p.1)⁻¹ ∂(μW.prod μN) ≠ 0

def BesselNVG : Prop :=
  ∀ (k r : ℕ) (z : Fin (2 * r + k + 1) → ℂ) (c : Fin r → ℂ) (u : Fin k → ℝ) (v : Fin (k - 1) → ℝ)
    (b : Fin (2 * r + 2) → ℝ),
    2 ≤ k → Even k → Formalism.QuantumDeterminants.inWb k r z → 0 < Formalism.QuantumDeterminants.Tz k r z → (∀ a, c a ≠ 0) →
    Formalism.QuantumDeterminants.IsHCParam u → Formalism.QuantumDeterminants.IsHCParam (Formalism.MainNotions.CayleySignature.lam48 k r v b) → Formalism.MainNotions.CayleySignature.InterlacingCondition k r u v b →
    Formalism.MainNotions.CayleySignature.HalfIntegralDifference k r u v b → Formalism.MainNotions.CayleySignature.GapBig k r b →
  ∀ (H : Type) [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]
    (σ : Formalism.MainNotions.CayleySignature.Mat k r → (H →L[ℂ] H)),
    Formalism.MainNotions.S.IsDSHpk k r (Formalism.MainNotions.CayleySignature.eps48 k r) (Formalism.MainNotions.CayleySignature.lam48 k r v b) σ →
  ∀ (Vp : Type) [NormedAddCommGroup Vp] [InnerProductSpace ℂ Vp] [FiniteDimensional ℂ Vp]
    (π : Formalism.MainNotions.CayleySignature.Mat k r → (Vp →L[ℂ] Vp)), Formalism.MainNotions.S.IsHCTypeW k r z u π →
  ∀ w : H, Formalism.MainNotions.S.IsLowUnitH k r (Formalism.MainNotions.CayleySignature.eps48 k r) (Formalism.MainNotions.CayleySignature.lam48 k r v b) σ w →
  ∀ μW μN : Measure (Formalism.QuantumDeterminants.Mt k r), Formalism.MainNotions.S.IsHaarOn (Formalism.QuantumDeterminants.UWset k r z) μW →
    Formalism.MainNotions.S.IsHaarOn (Formalism.QuantumDeterminants.Nset k r) μN →
  ∃ x x₀ : Formalism.MainNotions.CayleySignature.Mat k r, x ∈ Formalism.QuantumDeterminants.UH (Formalism.QuantumDeterminants.Hpk k r) ∧ x₀ ∈ Formalism.QuantumDeterminants.UH (Formalism.QuantumDeterminants.Hpk k r) ∧
    ∫ p : Formalism.QuantumDeterminants.Mt k r × Formalism.QuantumDeterminants.Mt k r,
      (⟪σ x₀ w, σ (Matrix.of p.1 * Matrix.of p.2) (σ x w)⟫_ℂ *
          star (Formalism.MainNotions.S.psiGen k r z c (Matrix.of p.2))) •
        π (Matrix.of p.1)⁻¹ ∂(μW.prod μN) ≠ 0

theorem urep_of_isDSHpk {k r : ℕ} {ε : Fin (2 * r + k + 1) → Bool} {lam : Fin (2 * r + k + 1) → ℝ}
    {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H] {σ : Mat k r → (H →L[ℂ] H)}
    (hd : Formalism.MainNotions.S.IsDSHpk k r ε lam σ) : Formalism.MainNotions.S.IsURepOn (Formalism.QuantumDeterminants.UH (Formalism.QuantumDeterminants.Hpk k r)) σ := by
  obtain ⟨P, hP, hDS⟩ := hd
  have h1 : P⁻¹ * P = 1 := bridge_inv_mul k r ε P hP
  have hback : (fun g => σ (P⁻¹ * (P * g * P⁻¹) * P)) = σ := by
    funext g
    have : P⁻¹ * (P * g * P⁻¹) * P = g := by
      calc P⁻¹ * (P * g * P⁻¹) * P = (P⁻¹ * P) * g * (P⁻¹ * P) := by
            simp only [Matrix.mul_assoc]
        _ = g := by rw [h1, Matrix.one_mul, Matrix.mul_one]
    rw [this]
  have := ReciprocityTheory.ChartRestriction.DS.isURepOn_UH_of hP hDS.2.2.1
  rwa [hback] at this

theorem inner_shift {k r : ℕ} {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
    {σ : Mat k r → (H →L[ℂ] H)} (hσ : Formalism.MainNotions.S.IsURepOn (Formalism.QuantumDeterminants.UH (Formalism.QuantumDeterminants.Hpk k r)) σ)
    {x₀ g x : Mat k r} (hx₀ : x₀ ∈ Formalism.QuantumDeterminants.UH (Formalism.QuantumDeterminants.Hpk k r)) (hg : g ∈ Formalism.QuantumDeterminants.UH (Formalism.QuantumDeterminants.Hpk k r))
    (hx : x ∈ Formalism.QuantumDeterminants.UH (Formalism.QuantumDeterminants.Hpk k r)) (w : H) :
    ⟪σ x₀ w, σ g (σ x w)⟫_ℂ = ⟪w, σ (x₀⁻¹ * (g * x)) w⟫_ℂ := by
  obtain ⟨⟨h1, hmul⟩, hnorm, -⟩ := hσ
  have hinv : x₀⁻¹ ∈ Formalism.QuantumDeterminants.UH (Formalism.QuantumDeterminants.Hpk k r) := S0.Core.inv_mem_UH k r x₀ hx₀
  have hgx : g * x ∈ Formalism.QuantumDeterminants.UH (Formalism.QuantumDeterminants.Hpk k r) := S0.Core.mul_mem_UH k r hg hx
  have hxx : x₀ * x₀⁻¹ = 1 := S0.Core.mul_inv_UH k r hx₀
  let f : H →ₗᵢ[ℂ] H := { toLinearMap := (σ x₀ : H →ₗ[ℂ] H), norm_map' := hnorm x₀ hx₀ }
  have key : σ x₀ (σ x₀⁻¹ (σ (g * x) w)) = σ (g * x) w := by
    have hc := hmul x₀ hx₀ x₀⁻¹ hinv
    rw [hxx, h1] at hc
    have := congrArg (fun A : H →L[ℂ] H => A (σ (g * x) w)) hc
    simpa using this.symm
  calc ⟪σ x₀ w, σ g (σ x w)⟫_ℂ = ⟪σ x₀ w, σ (g * x) w⟫_ℂ := by
        simp only [hmul g hg x hx, ContinuousLinearMap.comp_apply]
    _ = ⟪f w, f (σ x₀⁻¹ (σ (g * x) w))⟫_ℂ := by
        change _ = ⟪σ x₀ w, σ x₀ (σ x₀⁻¹ (σ (g * x) w))⟫_ℂ
        rw [key]
    _ = ⟪w, σ x₀⁻¹ (σ (g * x) w)⟫_ℂ := f.inner_map_map _ _
    _ = ⟪w, σ (x₀⁻¹ * (g * x)) w⟫_ℂ := by
        simp only [hmul x₀⁻¹ hinv (g * x) hgx, ContinuousLinearMap.comp_apply]

theorem besselNVG_of (hB : BAtTargetStatement) (hSZ : SigZeroStatement) : BesselNVG := by
  intro k r z c u v b hk2 hke hz hT hc hu hlam hint hhalf hgap H _ _ _ σ hd Vp _ _ _ π hπ w hw μW μN hμW hμN
  have : CompleteSpace Vp := FiniteDimensional.complete ℂ Vp
  have hset48 : Formalism.MainNotions.CayleySignature.RealPlaceNumericalSetting k r z c u v b :=
    ⟨by omega, hke, hz, hT, hc, hu, hlam, hint, hhalf, hgap⟩
  obtain ⟨h, hset⟩ := gapBig_gapLap k r z c u v b hset48
  have hgl := hset.2.2.2.2.2.2.2.2.2.2
  obtain ⟨H₀, i₁, i₂, i₃, σ₀, hd₀, -, hcoef⟩ := hSZ k r z c u v b h hset
  have hσU : Formalism.MainNotions.S.IsURepOn (Formalism.QuantumDeterminants.UH (Formalism.QuantumDeterminants.Hpk k r)) σ := urep_of_isDSHpk hd
  obtain ⟨P, hP, hDS⟩ := hd
  obtain ⟨P', hP', hlow⟩ := hw
  obtain ⟨P₀, hP₀, hDS₀⟩ := hd₀
  have hDS' := (cayleyIndep k r _ _ H σ P P' hP hP' hDS).1
  have hDS₀' := (cayleyIndep k r _ _ H₀ σ₀ P₀ P' hP₀ hP' hDS₀).1
  obtain ⟨w₀, hlow₀, hsame⟩ := dsUniv (2 * r + k + 1) _ _ hlam h hgl H (fun g => σ (P'⁻¹ * g * P'))
    H₀ (fun g => σ₀ (P'⁻¹ * g * P')) hDS' hDS₀' w hlow
  have hcoefUH : ∀ g ∈ Formalism.QuantumDeterminants.UH (Formalism.QuantumDeterminants.Hpk k r), ⟪w₀, σ₀ g w₀⟫_ℂ = ⟪w, σ g w⟫_ℂ := by
    intro g hg
    obtain ⟨hgJ, hback⟩ := bridge_conj k r _ P' hP' g hg
    have hg' := hsame _ hgJ
    rwa [hback] at hg'
  obtain ⟨-, -, T, μ, P₁, v₁, c₁, hv₁, hc₁, hμ, hP₁, hpsi⟩ := hcoef w₀ ⟨P', hP', hlow₀⟩
  have hBD : IsBData z c u π μW μN := ⟨hz, hT, hc, hπ, hμW, hμN⟩
  obtain ⟨ξ, x₀, x, hx₀, hx, hne⟩ := hB k r z c u v b h hset T μ P₁ z c Vp π μW μN hμ hP₁ hBD v₁ hv₁
  have hshift := sInt_shift_eq_smul z μW μN hμW hμN (Formalism.MainNotions.S.psiGen k r z c) π
    (fun y => ⟪w, σ y w⟫_ℂ) (psiCoef T μ P₁ v₁ v₁) c₁
    (fun y hy => by rw [← hcoefUH y hy]; exact hpsi y hy) ξ x₀ x hx₀ hx
  have hS : sInt μW μN (Formalism.MainNotions.S.psiGen k r z c) π (fun y => ⟪w, σ (x₀⁻¹ * y) w⟫_ℂ) ξ x ≠ 0 := by
    rw [hshift]
    exact smul_ne_zero hc₁ hne
  obtain ⟨hA, huA⟩ := TopPi.piInv_facts z u π μW μN hz hT hπ hμW hμN
  refine ⟨x, x₀, hx, hx₀, ?_⟩
  refine TopClm.integral_ne_zero_of_apply (μ := μW.prod μN)
    (fun p : Formalism.QuantumDeterminants.Mt k r × Formalism.QuantumDeterminants.Mt k r =>
      ⟪σ x₀ w, σ (Matrix.of p.1 * Matrix.of p.2) (σ x w)⟫_ℂ *
        star (Formalism.MainNotions.S.psiGen k r z c (Matrix.of p.2)))
    (fun p : Formalism.QuantumDeterminants.Mt k r × Formalism.QuantumDeterminants.Mt k r => π (Matrix.of p.1)⁻¹) hA huA ξ ?_
  have := hμW.1
  have := hμN.1
  have hae₁ : ∀ᵐ p ∂(μW.prod μN), Matrix.of p.1 ∈ Formalism.QuantumDeterminants.UWset k r z :=
    Measure.quasiMeasurePreserving_fst.ae (ae_iff.mpr hμW.2.2.1)
  have hae₂ : ∀ᵐ p ∂(μW.prod μN), Matrix.of p.2 ∈ Formalism.QuantumDeterminants.Nset k r :=
    Measure.quasiMeasurePreserving_snd.ae (ae_iff.mpr hμN.2.2.1)
  have heq : (∫ p, (⟪σ x₀ w, σ (Matrix.of p.1 * Matrix.of p.2) (σ x w)⟫_ℂ *
      star (Formalism.MainNotions.S.psiGen k r z c (Matrix.of p.2))) • π (Matrix.of p.1)⁻¹ ξ ∂(μW.prod μN)) =
      sInt μW μN (Formalism.MainNotions.S.psiGen k r z c) π (fun y => ⟪w, σ (x₀⁻¹ * y) w⟫_ℂ) ξ x := by
    unfold sInt chiInv
    refine integral_congr_ae ?_
    filter_upwards [hae₁, hae₂] with p h₁ h₂
    have hg : Matrix.of p.1 * Matrix.of p.2 ∈ Formalism.QuantumDeterminants.UH (Formalism.QuantumDeterminants.Hpk k r) :=
      S0.Core.mul_mem_UH k r h₁.1 h₂.1
    rw [inner_shift hσU hx₀ hg hx w, mul_smul]
  rw [heq]
  exact hS

end ReciprocityTheory.ChartRestriction.DS.Lap.TopNV
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.LaplaceOperators.BesselVectors.BesselNV =====
