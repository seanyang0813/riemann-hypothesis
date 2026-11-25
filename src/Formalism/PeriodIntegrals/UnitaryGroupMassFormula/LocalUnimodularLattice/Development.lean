module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.UnipotentRadicalContracting
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.ExistsModularFunction
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.IsClosedS
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.IsCompactInterUnitBox
public import Formalism.PeriodIntegrals.NUnimodLoc
public import Formalism.PeriodIntegrals.QuotSetU
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.NilpotentSubgroup

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnimodularLattice.NonstandardUnimodularLattice, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnimodularLattice.Development

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnimodularLattice.NonstandardUnimodularLattice =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnimodularLattice.NonstandardUnimodularLattice", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.UnipotentRadicalContracting\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.ExistsModularFunction\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.IsClosedS\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.IsCompactInterUnitBox\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnitaryQuotientCompactness.NilpotentSubgroup\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Matrix

noncomputable section

namespace PI.NUnimodLoc.UnitaryGroupMassFormula

open PI PI.QuotSetU PI.QuotSetU.UnitaryGroupMassFormula PI.QuotSetU.UnitaryGroupMassFormula.SW

def NStdUnimod : Prop :=
  ∀ k r : ℕ, ∀ μ : Measure (MtM (2 * r + k + 1)), IsHaarOnM (Nset k r) μ → IsRightInvM (Nset k r) μ

theorem nset_isMatGroup (k r : ℕ) : IsMatGroup (Nset k r) :=
  ⟨isClosed_N, (nilpotent_subgroup k r).1, (nilpotent_subgroup k r).2.1,
    fun a ha => ⟨(nilpotent_subgroup k r).2.2 a ha, mul_inv_UH ha.1⟩⟩

theorem dS_conj_N_iff {k r : ℕ} {s : ℝ} (hs : s ≠ 0)
    (g : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ) :
    dS k r s * g * (dS k r s)⁻¹ ∈ Nset k r ↔ g ∈ Nset k r := by
  constructor
  · intro h
    rw [dS_inv_eq hs] at h
    have h2 := dS_conj_N (inv_ne_zero hs) h
    rw [inv_inv] at h2
    have h1' := dS_mul_dS_inv (k := k) (r := r) (inv_ne_zero hs)
    rw [inv_inv] at h1'
    have e : dS k r s⁻¹ * (dS k r s * g * dS k r s⁻¹) * dS k r s = g := by
      simp only [Matrix.mul_assoc]
      rw [h1', Matrix.mul_one, ← Matrix.mul_assoc, h1', Matrix.one_mul]
    rwa [e] at h2
  · intro h
    rw [dS_inv_eq hs]
    exact dS_conj_N hs h

theorem exists_conj_box {k r : ℕ} {n : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ}
    (hn : n ∈ Nset k r) :
    ∃ s : ℝ, 0 < s ∧ ∀ i j, ‖(dS k r s * n * (dS k r s)⁻¹ - 1) i j‖ ≤ 1 := by
  set M : ℝ := ∑ i, ∑ j, ‖n i j‖ + 1 with hM
  have h0 : 0 ≤ ∑ i, ∑ j, ‖n i j‖ := by positivity
  have hM1 : 1 ≤ M := by linarith
  have hMp : 0 < M := by linarith
  refine ⟨1 / M, div_pos one_pos hMp, fun i j => ?_⟩
  have hs1 : 1 / M ≤ 1 := by rw [div_le_one hMp]; exact hM1
  refine (norm_dS_conj_le (div_pos one_pos hMp) hs1 hn i j).trans ?_
  have h1 : ‖n i j‖ ≤ ∑ j', ‖n i j'‖ :=
    Finset.single_le_sum (f := fun j' => ‖n i j'‖) (fun _ _ => norm_nonneg _) (Finset.mem_univ j)
  have h2 : ∑ j', ‖n i j'‖ ≤ ∑ i', ∑ j', ‖n i' j'‖ :=
    Finset.single_le_sum (f := fun i' => ∑ j', ‖n i' j'‖) (fun _ _ => by positivity) (Finset.mem_univ i)
  have hle : ‖n i j‖ ≤ M := by linarith
  rw [one_div, inv_mul_le_iff₀ hMp, mul_one]
  exact hle

theorem nonstandard_unimodular_lattice : NStdUnimod := by
  intro k r μ hμ
  have hG := nset_isMatGroup k r
  obtain ⟨D, hD, hR⟩ := exists_modular_function _ (Nset k r) hG
  have hle : ∀ n ∈ Nset k r, D n ≤ 1 := by
    intro n hn
    obtain ⟨M, hM⟩ := hD.2.2.2 (Nset k r ∩ box1 _) Set.inter_subset_left (isCompact_inter_unit_box hG.1)
    apply le_one_of_pow_le (M := M)
    intro p
    have hnp : n ^ p ∈ Nset k r := pow_mem hG hn p
    obtain ⟨s, hs0, hbox⟩ := exists_conj_box hnp
    have hc : IsUnit (dS k r s) :=
      (Matrix.isUnit_iff_isUnit_det _).2 (Matrix.isUnit_det_of_right_inverse (dS_mul_dS_inv hs0.ne'))
    have hcG : ∀ g, dS k r s * g * (dS k r s)⁻¹ ∈ Nset k r ↔ g ∈ Nset k r :=
      fun g => dS_conj_N_iff hs0.ne' g
    rw [← modPow hG hD hn p, ← hD.2.2.1 _ hc hcG _ hnp]
    exact hM _ ⟨(hcG _).2 hnp, hbox⟩
  exact hR (fun n hn => modEqOne hG hD hn (hle n hn) (hle _ ((nilpotent_subgroup k r).2.2 _ hn))) μ hμ

end PI.NUnimodLoc.UnitaryGroupMassFormula
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnimodularLattice.NonstandardUnimodularLattice =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnimodularLattice.Development =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnimodularLattice.Development", "h": "module\n\npublic import Formalism.PeriodIntegrals.NUnimodLoc\npublic import Formalism.PeriodIntegrals.QuotSetU\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnimodularLattice.NonstandardUnimodularLattice\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Matrix

noncomputable section

namespace PI.NUnimodLoc.UnitaryGroupMassFormula

open PI PI.QuotSetU

def FrameConj : Prop :=
  ∀ (k r : ℕ) (ε : Fin (2 * r + k + 1) → Bool) (e f : Fin r → Fin (2 * r + k + 1) → ℂ)
    (wf : Fin k → Fin (2 * r + k + 1) → ℂ) (z0 z : Fin (2 * r + k + 1) → ℂ) (c : ℂ),
    IsFrameJ ε e f wf z0 → c ≠ 0 → z0 = c • z →
    ∃ P Q : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ, Q * P = 1 ∧ P * Q = 1 ∧
      ∀ g, (Formalism.REAL.inUJ ε g ∧ InN ε e z g) ↔ Q * g * P ∈ Nset k r

def Transfer : Prop :=
  ∀ (m : ℕ) (ε : Fin m → Bool) (T S : Set (Matrix (Fin m) (Fin m) ℂ))
    (P Q : Matrix (Fin m) (Fin m) ℂ), Q * P = 1 → P * Q = 1 →
    (∀ g, (Formalism.REAL.inUJ ε g ∧ g ∈ T) ↔ Q * g * P ∈ S) →
    (∀ μ : Measure (MtM m), IsHaarOnM S μ → IsRightInvM S μ) →
    ∀ μ : Measure (Formalism.REAL.UJ ε), SigmaFinite μ → μ ≠ 0 → μ {g : Formalism.REAL.UJ ε | uMat g ∈ T}ᶜ = 0 →
      (∀ s ∈ {g : Formalism.REAL.UJ ε | uMat g ∈ T}, μ.map (fun x => s * x) = μ) →
      ∀ s ∈ {g : Formalism.REAL.UJ ε | uMat g ∈ T}, μ.map (fun x => x * s) = μ

theorem nUnimodLoc_of (hF : FrameConj) (hT : Transfer) : NUnimodLoc := by
  intro k r ε e f wf z0 z c hfr hc hz μ hμ hne hsupp hleft
  obtain ⟨P, Q, hQP, hPQ, hiff⟩ := hF k r ε e f wf z0 z c hfr hc hz
  exact hT (2 * r + k + 1) ε {g | InN ε e z g} (Nset k r) P Q hQP hPQ (fun g => hiff g)
    (nonstandard_unimodular_lattice k r) μ hμ hne hsupp hleft

end PI.NUnimodLoc.UnitaryGroupMassFormula
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnimodularLattice.Development =====
