module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.SsetGroup
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.MaximalCompactIsCompact
public import Mathlib.Analysis.Matrix.Order
public import Formalism.PeriodIntegrals.QuotSetU
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.ExistsModularFunction
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.IsClosedS
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.IsCompactInterUnitBox
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.UnitaryWeylCompact
import Mathlib.Tactic.Linter.Style
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.NilpotentSubgroup
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.UnipotentRadicalContracting

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.GPolar, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.QuotSetUOf, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QuotSetU

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.GPolar =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.GPolar", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.SsetGroup\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.MaximalCompactIsCompact\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.Matrix.Order\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix
open scoped MatrixOrder ComplexOrder

noncomputable section

namespace PI.QuotSetU.UnitaryGroupMassFormula

open PI PI.QuotSetU

lemma uh_right {k r : ℕ} {g : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ}
    (hg : g ∈ UH (Hpk k r)) : g * Hpk k r * gᴴ = Hpk k r := by
  have hg' : gᴴ * Hpk k r * g = Hpk k r := hg
  have h1 : (Hpk k r * gᴴ * Hpk k r) * g = 1 := by
    calc (Hpk k r * gᴴ * Hpk k r) * g = Hpk k r * (gᴴ * Hpk k r * g) := by
          simp only [Matrix.mul_assoc]
      _ = 1 := by rw [hg', hpk_mul_self]
  have h2 : g * (Hpk k r * gᴴ * Hpk k r) = 1 := mul_eq_one_comm.mp h1
  calc g * Hpk k r * gᴴ = g * Hpk k r * gᴴ * (Hpk k r * Hpk k r) := by
        rw [hpk_mul_self, Matrix.mul_one]
    _ = g * (Hpk k r * gᴴ * Hpk k r) * Hpk k r := by simp only [Matrix.mul_assoc]
    _ = Hpk k r := by rw [h2, Matrix.one_mul]

lemma uh_conjTranspose {k r : ℕ} {g : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ}
    (hg : g ∈ UH (Hpk k r)) : gᴴ ∈ UH (Hpk k r) := by
  show gᴴᴴ * Hpk k r * gᴴ = Hpk k r
  rw [Matrix.conjTranspose_conjTranspose]
  exact uh_right hg

theorem unitary_group_polar_decomposition : PolarUH := by
  intro k r g hg
  have hHH : Hpk k r * Hpk k r = 1 := hpk_mul_self k r
  have hHt : (Hpk k r)ᴴ = Hpk k r := hpk_conjTranspose k r
  have hA0 : 0 ≤ gᴴ * g := (posSemidef_conjTranspose_mul_self g).nonneg
  have hAt : (gᴴ * g)ᴴ = gᴴ * g := (Matrix.nonneg_iff_posSemidef.mp hA0).isHermitian.eq
  have hAHA : (gᴴ * g) * Hpk k r * (gᴴ * g) = Hpk k r := by
    have h : (gᴴ * g)ᴴ * Hpk k r * (gᴴ * g) = Hpk k r := uh_mul (uh_conjTranspose hg) hg
    rwa [hAt] at h
  have hS0 : 0 ≤ CFC.sqrt (gᴴ * g) := CFC.sqrt_nonneg _
  have hSS : CFC.sqrt (gᴴ * g) * CFC.sqrt (gᴴ * g) = gᴴ * g := CFC.sqrt_mul_sqrt_self _ hA0
  set S := CFC.sqrt (gᴴ * g) with hS
  have hSt : Sᴴ = S := (Matrix.nonneg_iff_posSemidef.mp hS0).isHermitian.eq
  have hgdet : IsUnit g.det := uh_det hg
  have hAdet : IsUnit (gᴴ * g).det := by
    rw [Matrix.det_mul, Matrix.det_conjTranspose]
    exact hgdet.star.mul hgdet
  have hSdet : IsUnit S.det := by
    have h : IsUnit (S.det * S.det) := by rw [← Matrix.det_mul, hSS]; exact hAdet
    exact isUnit_of_mul_isUnit_left h
  have hT0 : 0 ≤ Hpk k r * S * Hpk k r := by
    have h := star_left_conjugate_nonneg hS0 (Hpk k r)
    rwa [Matrix.star_eq_conjTranspose, hHt] at h
  have hSinvt : (S⁻¹)ᴴ = S⁻¹ := by rw [Matrix.conjTranspose_nonsing_inv, hSt]
  have hSinv0 : 0 ≤ S⁻¹ := by
    have h := star_left_conjugate_nonneg hS0 S⁻¹
    rwa [Matrix.star_eq_conjTranspose, hSinvt, Matrix.mul_assoc, Matrix.mul_nonsing_inv S hSdet,
      Matrix.mul_one] at h
  have hsq : (Hpk k r * S * Hpk k r) * (Hpk k r * S * Hpk k r) = S⁻¹ * S⁻¹ := by
    have h1 : Hpk k r * S * Hpk k r * (Hpk k r * S * Hpk k r) = Hpk k r * (gᴴ * g) * Hpk k r := by
      calc Hpk k r * S * Hpk k r * (Hpk k r * S * Hpk k r)
          = Hpk k r * S * (Hpk k r * Hpk k r) * S * Hpk k r := by simp only [Matrix.mul_assoc]
        _ = Hpk k r * (S * S) * Hpk k r := by rw [hHH, Matrix.mul_one]; simp only [Matrix.mul_assoc]
        _ = Hpk k r * (gᴴ * g) * Hpk k r := by rw [hSS]
    have h2 : S⁻¹ * S⁻¹ = (gᴴ * g)⁻¹ := by rw [← Matrix.mul_inv_rev, hSS]
    have h3 : Hpk k r * (gᴴ * g) * Hpk k r * (gᴴ * g) = 1 := by
      calc Hpk k r * (gᴴ * g) * Hpk k r * (gᴴ * g)
          = Hpk k r * ((gᴴ * g) * Hpk k r * (gᴴ * g)) := by simp only [Matrix.mul_assoc]
        _ = 1 := by rw [hAHA, hHH]
    rw [h1, h2, (Matrix.inv_eq_left_inv h3).symm]
  have hTS : Hpk k r * S * Hpk k r = S⁻¹ := (CFC.mul_self_eq_mul_self_iff _ _ hT0 hSinv0).mp hsq
  have hSU : S ∈ UH (Hpk k r) := by
    show Sᴴ * Hpk k r * S = Hpk k r
    rw [hSt]
    have h5 : S * (Hpk k r * S * Hpk k r) = 1 := by rw [hTS, Matrix.mul_nonsing_inv S hSdet]
    calc S * Hpk k r * S = S * Hpk k r * S * (Hpk k r * Hpk k r) := by rw [hHH, Matrix.mul_one]
      _ = S * (Hpk k r * S * Hpk k r) * Hpk k r := by simp only [Matrix.mul_assoc]
      _ = Hpk k r := by rw [h5, Matrix.one_mul]
  refine ⟨g * S⁻¹, S, uh_mul hg (uh_inv hSU), ?_, hSU, hSt, ?_⟩
  · rw [Matrix.conjTranspose_mul, hSinvt]
    calc S⁻¹ * gᴴ * (g * S⁻¹) = S⁻¹ * (gᴴ * g) * S⁻¹ := by simp only [Matrix.mul_assoc]
      _ = S⁻¹ * S * (S * S⁻¹) := by rw [← hSS]; simp only [Matrix.mul_assoc]
      _ = 1 := by rw [Matrix.nonsing_inv_mul S hSdet, Matrix.mul_nonsing_inv S hSdet, Matrix.one_mul]
  · rw [Matrix.mul_assoc, Matrix.nonsing_inv_mul S hSdet, Matrix.mul_one]

theorem unitary_group_modular_function_trivial : TrivG := by
  exact trivG_of unitary_group_polar_decomposition maximal_compact_isCompact

end PI.QuotSetU.UnitaryGroupMassFormula

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.GPolar =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.QuotSetUOf =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.QuotSetUOf", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.SsetGroup\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Matrix

namespace PI.QuotSetU.UnitaryGroupMassFormula

open PI PI.QuotSetU

theorem quotSetU_of (hUH : UHGroup) (hSub : SsetSub) (hSG : SsetGroup) (hMod : ModExists)
    (hTG : TrivG) (hTS : TrivS) : PI.QuotSetU := by
  intro k r z hz hT
  refine ⟨hUH k r, hSG k r z hz hT, hSub k r z, ?_, ?_⟩
  · intro μG hμ
    obtain ⟨D, hD, hD1⟩ := hMod _ _ (hUH k r)
    exact hD1 (hTG k r D hD) μG hμ
  · intro μS hμ
    obtain ⟨D, hD, hD1⟩ := hMod _ _ (hSG k r z hz hT)
    exact hD1 (hTS k r z hz hT D hD) μS hμ

end PI.QuotSetU.UnitaryGroupMassFormula
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.QuotSetUOf =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QuotSetU =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QuotSetU", "h": "module\n\npublic import Formalism.PeriodIntegrals.QuotSetU\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.ExistsModularFunction\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.GPolar\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.IsClosedS\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.IsCompactInterUnitBox\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.MaximalCompactIsCompact\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.NilpotentSubgroup\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.QuotSetUOf\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.UnipotentRadicalContracting\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.UnitaryWeylCompact\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open PI.QuotSetU.UnitaryGroupMassFormula in
theorem quotient_measure_unitary_group : PI.QuotSetU :=
  quotSetU_of unitary_hermitian_group siegel_set_subset (SW.sGroup_of unitary_weyl_compact) exists_modular_function unitary_group_modular_function_trivial
    (SW.trivS_of (SW.sGroup_of unitary_weyl_compact) unitary_weyl_compact SW.nilpotent_subgroup SW.unipotent_radical_contracting)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.QuotSetU =====
