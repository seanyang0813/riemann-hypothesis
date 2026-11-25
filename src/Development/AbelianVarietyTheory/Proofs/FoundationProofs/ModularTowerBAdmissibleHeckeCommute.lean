module

public import Development.AbelianVarietyTheory.Definitions.Foundations.Letter
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeLetterPreservesBasisSet
public import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
public import Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Mathlib.Algebra.Order.Star.Int
import Mathlib.Tactic.Linter.HaveILetI
import Development.AbelianVarietyTheory.Definitions.Foundations.ExpUpper
import Mathlib.Algebra.Ring.IsFormallyReal
import Mathlib.RingTheory.TotallySplit
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.FoundationProofs.DiamondMatrixMulCommModGamma1CapGamma0, Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeStableCongruenceConjDiamondMatrix, Development.AbelianVarietyTheory.Proofs.FoundationProofs.HermiteRightFactorOfPrimeDvdDet, Development.AbelianVarietyTheory.Proofs.FoundationProofs.Sl2CoprimeFactorizationUnique, Development.AbelianVarietyTheory.Proofs.FoundationProofs.ModularTowerBAdmissibleHeckeCommute

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.DiamondMatrixMulCommModGamma1CapGamma0 =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.DiamondMatrixMulCommModGamma1CapGamma0", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.Letter\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeLetterPreservesBasisSet\n\n"}
section -- clump:auto
@[expose] public section

open scoped MatrixGroups TensorProduct
open Matrix GlobalTheory.KZ GlobalTheory.KZ.StabHecke

namespace GlobalTheory.KZ

theorem isDiam_mul_comm_mod_Gam (N l d d' : ℕ) (σ σ' : SL(2, ℤ)) (h : IsDiam N l d σ) (h' : IsDiam N l d' σ') :
    ∃ g : SL(2, ℤ), g ∈ Gam N l ∧ σ' * σ = g * (σ * σ') := by
  obtain ⟨⟨h0, h1⟩, -⟩ := h
  obtain ⟨⟨h0', h1'⟩, -⟩ := h'
  refine ⟨σ' * σ * (σ * σ')⁻¹, ⟨?_, ?_⟩, by group⟩
  · set a : CongruenceSubgroup.Gamma0 N := ⟨σ, h0⟩ with ha
    set b : CongruenceSubgroup.Gamma0 N := ⟨σ', h0'⟩ with hb
    have hu : (CongruenceSubgroup.Gamma0Map N).toHomUnits (b * a * (a * b)⁻¹) = 1 := by
      rw [map_mul, map_inv, map_mul, map_mul,
        mul_comm ((CongruenceSubgroup.Gamma0Map N).toHomUnits b), mul_inv_cancel]
    have h3 : b * a * (a * b)⁻¹ ∈ CongruenceSubgroup.Gamma1' N := by
      rw [CongruenceSubgroup.Gamma1_mem', ← MonoidHom.coe_toHomUnits, hu, Units.val_one]
    exact (CongruenceSubgroup.Gamma1_mem N _).2 ((CongruenceSubgroup.Gamma1_to_Gamma0_mem _).1 h3)
  · exact Subgroup.mul_mem _ (Subgroup.mul_mem _ h1' h1) (Subgroup.inv_mem _ (Subgroup.mul_mem _ h1 h1'))

end GlobalTheory.KZ
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.DiamondMatrixMulCommModGamma1CapGamma0 =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeStableCongruenceConjDiamondMatrix =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeStableCongruenceConjDiamondMatrix", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeLetterPreservesBasisSet\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped MatrixGroups TensorProduct
open Matrix GlobalTheory.KZ GlobalTheory.KZ.StabHecke

namespace GlobalTheory.KZ.StabHecke

theorem congruenceCondition_conj_diamond : ∀ (N l d : ℕ) (σ : SL(2, ℤ)) (r : Matrix (Fin 2) (Fin 2) ℤ), IsDiam N l d σ → PP N l r →
    PP N l ((σ : Matrix (Fin 2) (Fin 2) ℤ) * r * ((σ⁻¹ : SL(2, ℤ)) : Matrix (Fin 2) (Fin 2) ℤ)) := by
  intro N l d σ r hσ hr
  obtain ⟨h1, h2, -, h4⟩ := diam_facts hσ
  obtain ⟨r1, r2, r3, r4⟩ := hr
  have e00 : ((σ : Matrix (Fin 2) (Fin 2) ℤ) * r * ((σ⁻¹ : SL(2, ℤ)) : Matrix (Fin 2) (Fin 2) ℤ)) 0 0 =
      r 0 0 + σ 1 0 * (σ 0 1 * r 0 0 - σ 0 0 * r 0 1 - σ 0 1 * r 1 1) + σ 0 1 * σ 1 1 * r 1 0 := by
    rw [Matrix.SpecialLinearGroup.coe_inv, Matrix.adjugate_fin_two]
    simp [Matrix.mul_apply, Fin.sum_univ_two]
    linear_combination (r 0 0) * h4
  have e10 : ((σ : Matrix (Fin 2) (Fin 2) ℤ) * r * ((σ⁻¹ : SL(2, ℤ)) : Matrix (Fin 2) (Fin 2) ℤ)) 1 0 =
      σ 1 0 * (σ 1 1 * r 0 0 - σ 1 0 * r 0 1 - σ 1 1 * r 1 1) + σ 1 1 * σ 1 1 * r 1 0 := by
    rw [Matrix.SpecialLinearGroup.coe_inv, Matrix.adjugate_fin_two]
    simp [Matrix.mul_apply, Fin.sum_univ_two]
    ring
  refine ⟨?_, ?_, ?_, ?_⟩
  · rw [e00, show r 0 0 + σ 1 0 * (σ 0 1 * r 0 0 - σ 0 0 * r 0 1 - σ 0 1 * r 1 1) + σ 0 1 * σ 1 1 * r 1 0 - 1 =
        (r 0 0 - 1) + σ 1 0 * (σ 0 1 * r 0 0 - σ 0 0 * r 0 1 - σ 0 1 * r 1 1) + σ 0 1 * σ 1 1 * r 1 0 by ring]
    exact dvd_add (dvd_add r1 (dvd_mul_of_dvd_left h1 _)) (dvd_mul_of_dvd_right r2 _)
  · rw [e10]; exact dvd_add (dvd_mul_of_dvd_left h1 _) (dvd_mul_of_dvd_right r2 _)
  · rw [e10]; exact dvd_add (dvd_mul_of_dvd_left h2 _) (dvd_mul_of_dvd_right r3 _)
  · rw [e00]
    obtain ⟨s, hs⟩ := h2
    obtain ⟨t, ht⟩ := r3
    have e : r 0 0 + σ 1 0 * (σ 0 1 * r 0 0 - σ 0 0 * r 0 1 - σ 0 1 * r 1 1) + σ 0 1 * σ 1 1 * r 1 0 =
        r 0 0 + (l : ℤ) * (s * (σ 0 1 * r 0 0 - σ 0 0 * r 0 1 - σ 0 1 * r 1 1) + σ 0 1 * σ 1 1 * t) := by
      rw [hs, ht]; ring
    rw [e]
    exact r4.add_mul_left_left _

end GlobalTheory.KZ.StabHecke
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeStableCongruenceConjDiamondMatrix =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.HermiteRightFactorOfPrimeDvdDet =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.HermiteRightFactorOfPrimeDvdDet", "h": "module\n\npublic import Mathlib.LinearAlgebra.Matrix.Determinant.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Foundations.ExpUpper\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeLetterPreservesBasisSet\n\n"}
section -- clump:auto
@[expose] public section

open scoped MatrixGroups TensorProduct
open Matrix GlobalTheory.KZ GlobalTheory.KZ.StabHecke

namespace GlobalTheory

theorem hermite_right_factor_prime_det : ∀ (p : ℕ), p.Prime → ∀ (m : Matrix (Fin 2) (Fin 2) ℤ), (p : ℤ) ∣ m.det → (∃ y : Matrix (Fin 2) (Fin 2) ℤ, m = y * !![(p : ℤ), 0; 0, 1]) ∨ ∃ k : ℕ, k < p ∧ ∃ y : Matrix (Fin 2) (Fin 2) ℤ, m = y * !![1, (k : ℤ); 0, (p : ℤ)] := by
  intro p hp m hdet
  haveI := Fact.mk hp
  obtain ⟨a, b, c, d, rfl⟩ : ∃ a b c d : ℤ, m = !![a, b; c, d] :=
    ⟨m 0 0, m 0 1, m 1 0, m 1 1, by ext i j; fin_cases i <;> fin_cases j <;> rfl⟩
  rw [Matrix.det_fin_two_of] at hdet
  have hdetZ : (a : ZMod p) * d = b * c := by
    have := (ZMod.intCast_zmod_eq_zero_iff_dvd (a * d - b * c) p).2 hdet
    push_cast at this
    linear_combination this
  have fin : ∀ k : ℕ, k < p → (k : ZMod p) * a = b → (k : ZMod p) * c = d →
      ∃ k : ℕ, k < p ∧ ∃ y : Matrix (Fin 2) (Fin 2) ℤ, !![a, b; c, d] = y * !![1, (k : ℤ); 0, (p : ℤ)] := by
    intro k hk h1 h2
    obtain ⟨u, hu⟩ : (p : ℤ) ∣ b - k * a := by
      rw [← ZMod.intCast_zmod_eq_zero_iff_dvd]; push_cast; rw [h1]; ring
    obtain ⟨v, hv⟩ : (p : ℤ) ∣ d - k * c := by
      rw [← ZMod.intCast_zmod_eq_zero_iff_dvd]; push_cast; rw [h2]; ring
    refine ⟨k, hk, !![a, u; c, v], ?_⟩
    rw [Matrix.mul_fin_two]
    ext i j; fin_cases i <;> fin_cases j <;> simp <;> linarith
  by_cases ha : (a : ZMod p) = 0
  · by_cases hc : (c : ZMod p) = 0
    · left
      obtain ⟨a', rfl⟩ := (ZMod.intCast_zmod_eq_zero_iff_dvd a p).1 ha
      obtain ⟨c', rfl⟩ := (ZMod.intCast_zmod_eq_zero_iff_dvd c p).1 hc
      refine ⟨!![a', b; c', d], ?_⟩
      rw [Matrix.mul_fin_two]
      ext i j; fin_cases i <;> fin_cases j <;> simp <;> ring
    · right
      refine fin ((d : ZMod p) * (c : ZMod p)⁻¹).val (ZMod.val_lt _) ?_ ?_
      · rw [ZMod.natCast_zmod_val]
        calc (d : ZMod p) * (c : ZMod p)⁻¹ * a = (a * d) * (c : ZMod p)⁻¹ := by ring
          _ = b * c * (c : ZMod p)⁻¹ := by rw [hdetZ]
          _ = b := by rw [mul_assoc, mul_inv_cancel₀ hc, mul_one]
      · rw [ZMod.natCast_zmod_val, mul_assoc, inv_mul_cancel₀ hc, mul_one]
  · right
    refine fin ((b : ZMod p) * (a : ZMod p)⁻¹).val (ZMod.val_lt _) ?_ ?_
    · rw [ZMod.natCast_zmod_val, mul_assoc, inv_mul_cancel₀ ha, mul_one]
    · rw [ZMod.natCast_zmod_val]
      calc (b : ZMod p) * (a : ZMod p)⁻¹ * c = (b * c) * (a : ZMod p)⁻¹ := by ring
        _ = (a * d) * (a : ZMod p)⁻¹ := by rw [hdetZ]
        _ = d := by rw [mul_comm (a : ZMod p) d, mul_assoc, mul_inv_cancel₀ ha, mul_one]

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.HermiteRightFactorOfPrimeDvdDet =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.Sl2CoprimeFactorizationUnique =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.Sl2CoprimeFactorizationUnique", "h": "module\n\npublic import Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Foundations.ExpUpper\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeLetterPreservesBasisSet\n\n"}
section -- clump:auto
@[expose] public section

open scoped MatrixGroups TensorProduct
open Matrix GlobalTheory.KZ GlobalTheory.KZ.StabHecke

namespace GlobalTheory

theorem sl2_right_factor_of_coprime_factorizations :
    ∀ (a c : ℤ), IsCoprime a c → c ≠ 0 → ∀ (y y' β β' : Matrix (Fin 2) (Fin 2) ℤ),
      y.det = a → y'.det = a → β.det = c → β'.det = c → y * β = y' * β' →
      ∃ g : SL(2, ℤ), (g : Matrix (Fin 2) (Fin 2) ℤ) * β = β' := by
  intro a c hac hc y y' β β' hy hy' hβ hβ' hyβ
  set P : Matrix (Fin 2) (Fin 2) ℤ := β' * adjugate β with hP
  set Q : Matrix (Fin 2) (Fin 2) ℤ := adjugate y' * y with hQ
  have hPQ : a • P = c • Q := by
    have h1 : adjugate y' * y * β = a • β' := by
      rw [Matrix.mul_assoc, hyβ, ← Matrix.mul_assoc, adjugate_mul, hy', Matrix.smul_mul, Matrix.one_mul]
    have h2 : β * adjugate β = c • (1 : Matrix (Fin 2) (Fin 2) ℤ) := by
      rw [mul_adjugate, hβ]
    calc a • P = (a • β') * adjugate β := by rw [hP, Matrix.smul_mul]
      _ = adjugate y' * y * β * adjugate β := by rw [h1]
      _ = Q * (β * adjugate β) := by rw [hQ, Matrix.mul_assoc]
      _ = c • Q := by rw [h2, Matrix.mul_smul, Matrix.mul_one]
  have hdiv : ∀ i j, c ∣ P i j := by
    intro i j
    have := congrFun (congrFun hPQ i) j
    simp only [Matrix.smul_apply, smul_eq_mul] at this
    exact hac.symm.dvd_of_dvd_mul_left ⟨Q i j, this⟩
  choose M hM using hdiv
  set Mm : Matrix (Fin 2) (Fin 2) ℤ := Matrix.of M with hMm
  have hPM : P = c • Mm := by
    ext i j; simp [hMm, hM i j]
  have hMβ : Mm * β = β' := by
    have : c • (Mm * β) = c • β' := by
      rw [← Matrix.smul_mul, ← hPM, hP, Matrix.mul_assoc, adjugate_mul, hβ, Matrix.mul_smul, Matrix.mul_one]
    ext i j
    have := congrFun (congrFun this i) j
    simp only [Matrix.smul_apply, smul_eq_mul] at this
    exact mul_left_cancel₀ hc this
  have hdet : Mm.det = 1 := by
    have h1 : P.det = c * c := by
      rw [hP, det_mul, det_adjugate, hβ, hβ']
      simp
    rw [hPM, det_smul] at h1
    simp at h1
    have hc2 : c ^ 2 ≠ 0 := pow_ne_zero 2 hc
    have : c ^ 2 * Mm.det = c ^ 2 * 1 := by rw [h1]; ring
    exact mul_left_cancel₀ hc2 this
  exact ⟨⟨Mm, hdet⟩, hMβ⟩

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.Sl2CoprimeFactorizationUnique =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.ModularTowerBAdmissibleHeckeCommute =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.ModularTowerBAdmissibleHeckeCommute", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeLetterPreservesBasisSet\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.Letter\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.DiamondMatrixMulCommModGamma1CapGamma0\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.HeckeStableCongruenceConjDiamondMatrix\npublic import Mathlib.LinearAlgebra.Matrix.Determinant.Basic\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.HermiteRightFactorOfPrimeDvdDet\npublic import Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.Sl2CoprimeFactorizationUnique\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped MatrixGroups TensorProduct
open Matrix GlobalTheory.KZ

noncomputable section
namespace GlobalTheory.KZ.HeckeComm
open StabHecke

local notation "M₂" => Matrix (Fin 2) (Fin 2) ℤ

theorem PP_cancel {N l : ℕ} {y β : M₂} (h : PP N l (y * β)) (hβ : PP N l β) : PP N l y := by
  obtain ⟨a1, a2, a3, a4⟩ := h
  obtain ⟨b1, b2, b3, b4⟩ := hβ
  have e00 : (y * β) 0 0 = y 0 0 * β 0 0 + y 0 1 * β 1 0 := by simp [Matrix.mul_apply, Fin.sum_univ_two]
  have e10 : (y * β) 1 0 = y 1 0 * β 0 0 + y 1 1 * β 1 0 := by simp [Matrix.mul_apply, Fin.sum_univ_two]
  rw [e00] at a1 a4
  rw [e10] at a2 a3
  have cN : IsCoprime (β 0 0) (N : ℤ) := isCoprime_of_dvd_sub_one b1
  refine ⟨?_, ?_, ?_, ?_⟩
  · have e : y 0 0 - 1 = (y 0 0 * β 0 0 + y 0 1 * β 1 0 - 1) - y 0 0 * (β 0 0 - 1) - y 0 1 * β 1 0 := by ring
    rw [e]; exact dvd_sub (dvd_sub a1 (dvd_mul_of_dvd_right b1 _)) (dvd_mul_of_dvd_right b2 _)
  · have : (N : ℤ) ∣ y 1 0 * β 0 0 := by
      have e : y 1 0 * β 0 0 = (y 1 0 * β 0 0 + y 1 1 * β 1 0) - y 1 1 * β 1 0 := by ring
      rw [e]; exact dvd_sub a2 (dvd_mul_of_dvd_right b2 _)
    exact cN.symm.dvd_of_dvd_mul_right this
  · have : (l : ℤ) ∣ y 1 0 * β 0 0 := by
      have e : y 1 0 * β 0 0 = (y 1 0 * β 0 0 + y 1 1 * β 1 0) - y 1 1 * β 1 0 := by ring
      rw [e]; exact dvd_sub a3 (dvd_mul_of_dvd_right b3 _)
    exact b4.symm.dvd_of_dvd_mul_right this
  · obtain ⟨t, ht⟩ := b3
    have : IsCoprime (y 0 0 * β 0 0) (l : ℤ) := by
      have e : y 0 0 * β 0 0 = (y 0 0 * β 0 0 + y 0 1 * β 1 0) + (l : ℤ) * (-(y 0 1 * t)) := by rw [ht]; ring
      rw [e]; exact a4.add_mul_left_left _
    exact this.of_mul_left_left

theorem inv_mul_self (σ : SL(2, ℤ)) : ((σ⁻¹ : SL(2, ℤ)) : M₂) * (σ : M₂) = 1 := by
  rw [← Matrix.SpecialLinearGroup.coe_mul, inv_mul_cancel, Matrix.SpecialLinearGroup.coe_one]

theorem classT {N l q : ℕ} (hq : q.Prime) {σ : SL(2, ℤ)} (hσ : IsDiam N l q σ) (hql : IsCoprime (q : ℤ) (l : ℤ))
    (m : M₂) (hm : m.det = q) (hPm : PP N l m) :
    ∃ o, ∃ g : SL(2, ℤ), g ∈ Gam N l ∧ m = (g : M₂) * repT q σ o := by
  rcases coset q hq _ hm with ⟨g, hg⟩ | ⟨k, hk, g, hg⟩
  · have he : (g * ((σ⁻¹ : SL(2, ℤ)) : M₂)) * repT q σ none = m := by
      rw [← hg]
      show g * _ * ((σ : M₂) * !![(q : ℤ), 0; 0, 1]) = _
      rw [Matrix.mul_assoc, ← Matrix.mul_assoc _ (σ : M₂), inv_mul_self, Matrix.one_mul]
    have hd : (g * ((σ⁻¹ : SL(2, ℤ)) : M₂)).det = 1 := det_eq_one_of_mul hq.pos _ _ _ he (det_repT q σ none) hm
    exact ⟨none, ⟨_, hd⟩, mem_Gam_of_PP N l ⟨_, hd⟩ _ _ he (congruenceCondition_heckeRepresentative hσ hql none) hPm, he.symm⟩
  · have he : g * repT q σ (some ⟨k, hk⟩) = m := by simpa [repT] using hg
    have hd : g.det = 1 := det_eq_one_of_mul hq.pos g _ _ he (det_repT q σ _) hm
    exact ⟨some ⟨k, hk⟩, ⟨g, hd⟩, mem_Gam_of_PP N l ⟨g, hd⟩ _ _ he (congruenceCondition_heckeRepresentative hσ hql _) hPm, he.symm⟩

theorem det_repU (l : ℕ) (j : Fin l) : (repU l j).det = l := by simp [repU, Matrix.det_fin_two]

theorem classU {N l : ℕ} (hl : l.Prime) (m : M₂) (hm : m.det = l) (hPm : PP N l m) :
    ∃ k : Fin l, ∃ g : SL(2, ℤ), g ∈ Gam N l ∧ m = (g : M₂) * repU l k := by
  rcases coset l hl _ hm with ⟨g, hg⟩ | ⟨k, hk, g, hg⟩
  · exfalso
    have hdvd : (l : ℤ) ∣ m 0 0 := ⟨g 0 0, by rw [← hg]; simp [Matrix.mul_apply, Fin.sum_univ_two]; ring⟩
    have hc := hPm.2.2.2.of_isCoprime_of_dvd_left hdvd
    rw [isCoprime_self, Int.isUnit_iff] at hc
    rcases hc with hc | hc
    · exact hl.one_lt.ne' (by exact_mod_cast hc)
    · have : (0 : ℤ) ≤ l := by positivity
      omega
  · have he : g * repU l ⟨k, hk⟩ = m := by simpa [repU] using hg
    have hd : g.det = 1 := det_eq_one_of_mul hl.pos g _ _ he (det_repU l _) hm
    exact ⟨⟨k, hk⟩, ⟨g, hd⟩, mem_Gam_of_PP N l ⟨g, hd⟩ _ _ he (PP_A N l l k) hPm, he.symm⟩

theorem rfT {q : ℕ} (hq : q.Prime) (σ : SL(2, ℤ)) (m : M₂) (h : (q : ℤ) ∣ m.det) :
    ∃ o, ∃ y : M₂, m = y * repT q σ o := by
  rcases _root_.GlobalTheory.hermite_right_factor_prime_det q hq m h with ⟨y, hy⟩ | ⟨k, hk, y, hy⟩
  · refine ⟨none, y * ((σ⁻¹ : SL(2, ℤ)) : M₂), ?_⟩
    show m = _ * ((σ : M₂) * !![(q : ℤ), 0; 0, 1])
    rw [hy, Matrix.mul_assoc, ← Matrix.mul_assoc _ (σ : M₂), inv_mul_self, Matrix.one_mul]
  · exact ⟨some ⟨k, hk⟩, y, by simpa [repT] using hy⟩

theorem rfU {l : ℕ} (hl : l.Prime) (m : M₂) (h : (l : ℤ) ∣ m.det) (hc : IsCoprime (m 0 0) (l : ℤ)) :
    ∃ k : Fin l, ∃ y : M₂, m = y * repU l k := by
  rcases _root_.GlobalTheory.hermite_right_factor_prime_det l hl m h with ⟨y, hy⟩ | ⟨k, hk, y, hy⟩
  · exfalso
    have hdvd : (l : ℤ) ∣ m 0 0 := ⟨y 0 0, by rw [hy]; simp [Matrix.mul_apply, Fin.sum_univ_two]; ring⟩
    have h2 := hc.of_isCoprime_of_dvd_left hdvd
    rw [isCoprime_self, Int.isUnit_iff] at h2
    rcases h2 with h2 | h2
    · exact hl.one_lt.ne' (by exact_mod_cast h2)
    · have : (0 : ℤ) ≤ l := by positivity
      omega
  · exact ⟨⟨k, hk⟩, y, by simpa [repU] using hy⟩

theorem mul_right_cancel_det {x x' β : M₂} (hβ : β.det ≠ 0) (h : x * β = x' * β) : x = x' := by
  have := congrArg (· * β.adjugate) h
  simp only [Matrix.mul_assoc, Matrix.mul_adjugate, Matrix.mul_smul, Matrix.mul_one] at this
  exact smul_right_injective _ hβ this

variable {Ω : Type} [Field Ω] [Algebra ℚ Ω] {ε : Ω →+* ℂ}

theorem act_Gam (X : Tower Ω ε) (N l : ℕ) [Fact l.Prime] (b : X.Fn l)
    (hb : ∀ g ∈ Gam N l, X.act l (g : M₂) b = b) (g : SL(2, ℤ)) (hg : g ∈ Gam N l)
    (r : M₂) (hr : 0 < r.det) : X.act l ((g : M₂) * r) b = X.act l r b := by
  rw [← act_act X l r _ hr (by rw [Matrix.SpecialLinearGroup.det_coe]; exact one_pos), hb g hg]

theorem sum_match (X : Tower Ω ε) (N l : ℕ) [Fact l.Prime] {ι : Type} [Fintype ι]
    (L R : ι → M₂) (hR : ∀ i, 0 < (R i).det)
    (hdis : ∀ i j (h : SL(2, ℤ)), (h : M₂) * L i = L j → i = j)
    (hex : ∀ i, ∃ j, ∃ g : SL(2, ℤ), g ∈ Gam N l ∧ L i = (g : M₂) * R j)
    (b : X.Fn l) (hb : ∀ g ∈ Gam N l, X.act l (g : M₂) b = b) :
    ∑ i, X.act l (L i) b = ∑ i, X.act l (R i) b := by
  choose f g hg he using hex
  have hf : Function.Injective f := by
    intro i j hij
    apply hdis i j (g j * (g i)⁻¹)
    rw [he i, he j, hij, ← Matrix.mul_assoc, ← Matrix.SpecialLinearGroup.coe_mul, inv_mul_cancel_right]
  have hbij : Function.Bijective f := Finite.injective_iff_bijective.mp hf
  calc ∑ i, X.act l (L i) b = ∑ i, X.act l (R (f i)) b := by
        refine Finset.sum_congr rfl fun i _ => ?_
        rw [he i, act_Gam X N l b hb (g i) (hg i) _ (hR _)]
    _ = ∑ i, X.act l (R i) b := Equiv.sum_comp (Equiv.ofBijective f hbij) (fun i => X.act l (R i) b)

theorem sum_swap (X : Tower Ω ε) (N l : ℕ) [Fact l.Prime] {ι κ : Type} [Fintype ι] [Fintype κ]
    (p1 p2 : ℕ) (hp1 : 0 < p1) (hp2 : 0 < p2) (hcop : IsCoprime (p1 : ℤ) (p2 : ℤ))
    (r1 : ι → M₂) (r2 : κ → M₂) (hd1 : ∀ i, (r1 i).det = p1) (hd2 : ∀ k, (r2 k).det = p2)
    (hP1 : ∀ i, PP N l (r1 i)) (hP2 : ∀ k, PP N l (r2 k))
    (dis1 : ∀ i i' (h : SL(2, ℤ)), (h : M₂) * r1 i = r1 i' → i = i')
    (dis2 : ∀ k k' (h : SL(2, ℤ)), (h : M₂) * r2 k = r2 k' → k = k')
    (com1 : ∀ m : M₂, m.det = p1 → PP N l m → ∃ i, ∃ g : SL(2, ℤ), g ∈ Gam N l ∧ m = (g : M₂) * r1 i)
    (rf2 : ∀ m : M₂, (p2 : ℤ) ∣ m.det → PP N l m → ∃ k, ∃ y : M₂, m = y * r2 k)
    (b : X.Fn l) (hb : ∀ g ∈ Gam N l, X.act l (g : M₂) b = b) :
    ∑ i, ∑ k, X.act l (r2 k * r1 i) b = ∑ i, ∑ k, X.act l (r1 i * r2 k) b := by
  have hp1' : (p1 : ℤ) ≠ 0 := by exact_mod_cast hp1.ne'
  have hp2' : (p2 : ℤ) ≠ 0 := by exact_mod_cast hp2.ne'
  have ex : ∀ x : ι × κ, ∃ y : ι × κ, ∃ g : SL(2, ℤ), g ∈ Gam N l ∧
      r2 x.2 * r1 x.1 = (g : M₂) * (r1 y.1 * r2 y.2) := by
    rintro ⟨i, k⟩
    have hPm : PP N l (r2 k * r1 i) := congruenceCondition_mul (hP2 k) (hP1 i)
    obtain ⟨k', y, hy⟩ := rf2 (r2 k * r1 i) (by rw [det_mul, hd1, hd2]; exact dvd_mul_right _ _) hPm
    have hdy : y.det = p1 := by
      have := congrArg Matrix.det hy
      simp only [det_mul, hd1, hd2] at this
      exact mul_right_cancel₀ hp2' (by linarith)
    have hPy : PP N l y := PP_cancel (hy ▸ hPm) (hP2 k')
    obtain ⟨i', g, hg, hg'⟩ := com1 y hdy hPy
    exact ⟨(i', k'), g, hg, by rw [hy, hg', Matrix.mul_assoc]⟩
  have hdis : ∀ x x' : ι × κ, ∀ h : SL(2, ℤ), (h : M₂) * (r2 x.2 * r1 x.1) = r2 x'.2 * r1 x'.1 → x = x' := by
    rintro ⟨i, k⟩ ⟨i', k'⟩ h H
    rw [← Matrix.mul_assoc] at H
    obtain ⟨g, hg⟩ := _root_.GlobalTheory.sl2_right_factor_of_coprime_factorizations (p2 : ℤ) (p1 : ℤ) hcop.symm hp1' _ _ _ _
      (by rw [det_mul, Matrix.SpecialLinearGroup.det_coe, one_mul, hd2]) (hd2 k') (hd1 i) (hd1 i') H
    have hii : i = i' := dis1 i i' g hg
    subst hii
    have hkk : k = k' := dis2 k k' h (mul_right_cancel_det (by rw [hd1]; exact hp1') H)
    subst hkk; rfl
  have := sum_match X N l (fun x : ι × κ => r2 x.2 * r1 x.1) (fun x => r1 x.1 * r2 x.2)
    (fun x => by rw [det_mul, hd1, hd2]; positivity) hdis ex b hb
  simpa only [Fintype.sum_prod_type] using this

theorem sum_diam (X : Tower Ω ε) (N l : ℕ) [Fact l.Prime] {ι : Type} [Fintype ι] (p : ℕ) (hp : 0 < p)
    (r : ι → M₂) (hd : ∀ i, (r i).det = p) (hP : ∀ i, PP N l (r i))
    (dis : ∀ i i' (h : SL(2, ℤ)), (h : M₂) * r i = r i' → i = i')
    (com : ∀ m : M₂, m.det = p → PP N l m → ∃ i, ∃ g : SL(2, ℤ), g ∈ Gam N l ∧ m = (g : M₂) * r i)
    (d : ℕ) (σ : SL(2, ℤ)) (hσ : IsDiam N l d σ)
    (b : X.Fn l) (hb : ∀ g ∈ Gam N l, X.act l (g : M₂) b = b) :
    ∑ i, X.act l ((σ : M₂) * r i) b = ∑ i, X.act l (r i * σ) b := by
  have ex : ∀ i, ∃ j, ∃ g : SL(2, ℤ), g ∈ Gam N l ∧ (σ : M₂) * r i = (g : M₂) * (r j * σ) := by
    intro i
    have hdm : ((σ : M₂) * r i * ((σ⁻¹ : SL(2, ℤ)) : M₂)).det = p := by
      rw [det_mul, det_mul, Matrix.SpecialLinearGroup.det_coe, Matrix.SpecialLinearGroup.det_coe, hd]; ring
    obtain ⟨j, g, hg, he⟩ := com _ hdm (_root_.GlobalTheory.KZ.StabHecke.congruenceCondition_conj_diamond N l d σ (r i) hσ (hP i))
    refine ⟨j, g, hg, ?_⟩
    calc (σ : M₂) * r i = (σ : M₂) * r i * (((σ⁻¹ : SL(2, ℤ)) : M₂) * σ) := by rw [inv_mul_self, Matrix.mul_one]
      _ = ((g : M₂) * r j) * σ := by rw [← he]; simp only [Matrix.mul_assoc]
      _ = (g : M₂) * (r j * σ) := Matrix.mul_assoc _ _ _
  have hdis : ∀ i i' (h : SL(2, ℤ)), (h : M₂) * ((σ : M₂) * r i) = (σ : M₂) * r i' → i = i' := by
    intro i i' h H
    apply dis i i' (σ⁻¹ * h * σ)
    calc ((σ⁻¹ * h * σ : SL(2, ℤ)) : M₂) * r i = ((σ⁻¹ : SL(2, ℤ)) : M₂) * ((h : M₂) * ((σ : M₂) * r i)) := by
          simp only [Matrix.SpecialLinearGroup.coe_mul, Matrix.mul_assoc]
      _ = ((σ⁻¹ : SL(2, ℤ)) : M₂) * ((σ : M₂) * r i') := by rw [H]
      _ = r i' := by rw [← Matrix.mul_assoc, inv_mul_self, Matrix.one_mul]
  exact sum_match X N l _ _ (fun i => by
    rw [det_mul, hd, Matrix.SpecialLinearGroup.det_coe, mul_one]; exact_mod_cast hp) hdis ex b hb

theorem sum_act_sum (X : Tower Ω ε) (l : ℕ) [Fact l.Prime] {ι κ : Type} [Fintype ι] [Fintype κ]
    (r1 : ι → M₂) (r2 : κ → M₂) (h1 : ∀ i, 0 < (r1 i).det) (h2 : ∀ k, 0 < (r2 k).det) (b : X.Fn l) :
    ∑ i, X.act l (r1 i) (∑ k, X.act l (r2 k) b) = ∑ i, ∑ k, X.act l (r2 k * r1 i) b := by
  refine Finset.sum_congr rfl fun i _ => ?_

  rw [map_sum]
  exact Finset.sum_congr rfl fun k _ => act_act X l _ _ (h1 i) (h2 k) b

theorem B_inv (X : Tower Ω ε) (N l w : ℕ) [Fact l.Prime] (b : X.Fn l) (hb : b ∈ X.B N l w) :
    ∀ g ∈ Gam N l, X.act l (g : M₂) b = b := by
  intro g hg
  induction hb using Submodule.span_induction with
  | mem x hx => exact hx.2 g hg
  | zero => exact map_zero _
  | add x y _ _ hx hy => rw [map_add (f := _), hx, hy]
  | smul c x _ hx => rw [map_smul, hx]

theorem det1 (g : SL(2, ℤ)) : 0 < (g : M₂).det := by
  rw [Matrix.SpecialLinearGroup.det_coe]; exact one_pos

theorem isAdmissibleHeckeLetter_torusT_prime_coprime {N l q : ℕ} (hT : admitted N l (Letter.T q)) : q.Prime ∧ IsCoprime (q : ℤ) (l : ℤ) := by
  obtain ⟨hq, hd⟩ := hT
  have hql : Nat.Coprime q l := (Nat.Prime.coprime_iff_not_dvd hq).mpr (fun h => hd (Dvd.dvd.mul_left h N))
  exact ⟨hq, Nat.isCoprime_iff_coprime.mpr hql⟩

theorem pos_repT {p : ℕ} (hp : p.Prime) (σ : SL(2, ℤ)) (o : Option (Fin p)) : 0 < (repT p σ o).det := by
  rw [det_repT]; exact_mod_cast hp.pos

theorem pos_repU {l : ℕ} (hl : l.Prime) (j : Fin l) : 0 < (repU l j).det := by
  rw [det_repU]; exact_mod_cast hl.pos

theorem comm_TT (X : Tower Ω ε) (N l : ℕ) [Fact l.Prime] (q q' : ℕ) (hT : admitted N l (Letter.T q))
    (hT' : admitted N l (Letter.T q')) (hne : q ≠ q') (b : X.Fn l) (hb : ∀ g ∈ Gam N l, X.act l (g : M₂) b = b) :
    X.op N l (Letter.T q) (X.op N l (Letter.T q') b) = X.op N l (Letter.T q') (X.op N l (Letter.T q) b) := by
  obtain ⟨hq, hql⟩ := isAdmissibleHeckeLetter_torusT_prime_coprime hT
  obtain ⟨hq', hq'l⟩ := isAdmissibleHeckeLetter_torusT_prime_coprime hT'
  have hσ := Betti.isDiam_sgD_of_adm hT
  have hσ' := Betti.isDiam_sgD_of_adm hT'
  have hcop : IsCoprime (q : ℤ) (q' : ℤ) := Nat.isCoprime_iff_coprime.mpr ((Nat.coprime_primes hq hq').mpr hne)
  show X.heckeT N l q (X.heckeT N l q' b) = X.heckeT N l q' (X.heckeT N l q b)
  simp only [heckeT_eq]
  rw [sum_act_sum X l (repT q (sgD N l q)) (repT q' (sgD N l q')) (pos_repT hq _) (pos_repT hq' _),
    sum_act_sum X l (repT q' (sgD N l q')) (repT q (sgD N l q)) (pos_repT hq' _) (pos_repT hq _)]
  conv_rhs => rw [Finset.sum_comm]
  exact sum_swap X N l q q' hq.pos hq'.pos hcop _ _ (det_repT q _) (det_repT q' _) (congruenceCondition_heckeRepresentative hσ hql)
    (congruenceCondition_heckeRepresentative hσ' hq'l) (coset_representatives_hecke_disjoint hq _) (coset_representatives_hecke_disjoint hq' _) (classT hq hσ hql) (fun m hm _ => rfT hq' _ m hm) b hb

theorem comm_TU (X : Tower Ω ε) (N l : ℕ) [Fact l.Prime] (q : ℕ) (hT : admitted N l (Letter.T q))
    (b : X.Fn l) (hb : ∀ g ∈ Gam N l, X.act l (g : M₂) b = b) :
    X.op N l (Letter.T q) (X.op N l Letter.U b) = X.op N l Letter.U (X.op N l (Letter.T q) b) := by
  have hl : l.Prime := Fact.out
  obtain ⟨hq, hql⟩ := isAdmissibleHeckeLetter_torusT_prime_coprime hT
  have hσ := Betti.isDiam_sgD_of_adm hT
  show X.heckeT N l q (X.heckeU l b) = X.heckeU l (X.heckeT N l q b)
  simp only [heckeT_eq, heckeU_eq]
  rw [sum_act_sum X l (repT q (sgD N l q)) (repU l) (pos_repT hq _) (pos_repU hl),
    sum_act_sum X l (repU l) (repT q (sgD N l q)) (pos_repU hl) (pos_repT hq _)]
  conv_rhs => rw [Finset.sum_comm]
  exact sum_swap X N l q l hq.pos hl.pos hql _ _ (det_repT q _) (det_repU l) (congruenceCondition_heckeRepresentative hσ hql)
    (fun j => PP_A N l l j) (coset_representatives_hecke_disjoint hq _) (fun j j' h H => Fin.ext (dis_A j j' j.2 j'.2 _ H)) (classT hq hσ hql)
    (fun m hm hPm => rfU hl m hm hPm.2.2.2) b hb

theorem comm_TD (X : Tower Ω ε) (N l : ℕ) [Fact l.Prime] (hN : N ≠ 0) (q d : ℕ) (hT : admitted N l (Letter.T q))
    (hD : admitted N l (Letter.D d)) (b : X.Fn l) (hb : ∀ g ∈ Gam N l, X.act l (g : M₂) b = b) :
    X.op N l (Letter.T q) (X.op N l (Letter.D d) b) = X.op N l (Letter.D d) (X.op N l (Letter.T q) b) := by
  have hl : l.Prime := Fact.out
  obtain ⟨hq, hql⟩ := isAdmissibleHeckeLetter_torusT_prime_coprime hT
  have hσ := Betti.isDiam_sgD_of_adm hT
  have hσd : IsDiam N l d (sgD N l d) := Betti.isDiam_sgD hN hl.ne_zero hD
  show X.heckeT N l q (X.act l (sgD N l d : M₂) b) = X.act l (sgD N l d : M₂) (X.heckeT N l q b)
  simp only [heckeT_eq]

  rw [map_sum]
  have e1 : ∀ o, X.act l (repT q (sgD N l q) o) (X.act l (sgD N l d : M₂) b) =
      X.act l ((sgD N l d : M₂) * repT q (sgD N l q) o) b := fun o => act_act X l _ _ (pos_repT hq _ o) (det1 _) b
  have e2 : ∀ o, X.act l (sgD N l d : M₂) (X.act l (repT q (sgD N l q) o) b) =
      X.act l (repT q (sgD N l q) o * (sgD N l d : M₂)) b := fun o => act_act X l _ _ (det1 _) (pos_repT hq _ o) b
  simp only [e1, e2]
  exact sum_diam X N l q hq.pos _ (det_repT q _) (congruenceCondition_heckeRepresentative hσ hql) (coset_representatives_hecke_disjoint hq _) (classT hq hσ hql) d _ hσd b hb

theorem comm_UD (X : Tower Ω ε) (N l : ℕ) [Fact l.Prime] (hN : N ≠ 0) (d : ℕ)
    (hD : admitted N l (Letter.D d)) (b : X.Fn l) (hb : ∀ g ∈ Gam N l, X.act l (g : M₂) b = b) :
    X.op N l Letter.U (X.op N l (Letter.D d) b) = X.op N l (Letter.D d) (X.op N l Letter.U b) := by
  have hl : l.Prime := Fact.out
  have hσd : IsDiam N l d (sgD N l d) := Betti.isDiam_sgD hN hl.ne_zero hD
  show X.heckeU l (X.act l (sgD N l d : M₂) b) = X.act l (sgD N l d : M₂) (X.heckeU l b)
  simp only [heckeU_eq]

  rw [map_sum]
  have e1 : ∀ j, X.act l (repU l j) (X.act l (sgD N l d : M₂) b) =
      X.act l ((sgD N l d : M₂) * repU l j) b := fun j => act_act X l _ _ (pos_repU hl j) (det1 _) b
  have e2 : ∀ j, X.act l (sgD N l d : M₂) (X.act l (repU l j) b) =
      X.act l (repU l j * (sgD N l d : M₂)) b := fun j => act_act X l _ _ (det1 _) (pos_repU hl j) b
  simp only [e1, e2]
  exact sum_diam X N l l hl.pos _ (det_repU l) (fun j => PP_A N l l j)
    (fun j j' h H => Fin.ext (dis_A j j' j.2 j'.2 _ H)) (classU hl) d _ hσd b hb

theorem comm_DD (X : Tower Ω ε) (N l : ℕ) [Fact l.Prime] (hN : N ≠ 0) (d d' : ℕ)
    (hD : admitted N l (Letter.D d)) (hD' : admitted N l (Letter.D d')) (b : X.Fn l)
    (hb : ∀ g ∈ Gam N l, X.act l (g : M₂) b = b) :
    X.op N l (Letter.D d) (X.op N l (Letter.D d') b) = X.op N l (Letter.D d') (X.op N l (Letter.D d) b) := by
  have hl : l.Prime := Fact.out
  have hσ : IsDiam N l d (sgD N l d) := Betti.isDiam_sgD hN hl.ne_zero hD
  have hσ' : IsDiam N l d' (sgD N l d') := Betti.isDiam_sgD hN hl.ne_zero hD'
  show X.act l (sgD N l d : M₂) (X.act l (sgD N l d' : M₂) b) = X.act l (sgD N l d' : M₂) (X.act l (sgD N l d : M₂) b)
  rw [act_act X l _ _ (det1 _) (det1 _), act_act X l _ _ (det1 _) (det1 _)]
  obtain ⟨g, hg, he⟩ := _root_.GlobalTheory.KZ.isDiam_mul_comm_mod_Gam N l d d' _ _ hσ hσ'
  rw [← Matrix.SpecialLinearGroup.coe_mul, he, Matrix.SpecialLinearGroup.coe_mul, act_Gam X N l b hb g hg _ (det1 _),
    Matrix.SpecialLinearGroup.coe_mul]

theorem op_comm (X : Tower Ω ε) (N l : ℕ) [Fact l.Prime] (hN : N ≠ 0) (T T' : Letter) (hT : admitted N l T)
    (hT' : admitted N l T') (b : X.Fn l) (hb : ∀ g ∈ Gam N l, X.act l (g : M₂) b = b) :
    X.op N l T (X.op N l T' b) = X.op N l T' (X.op N l T b) := by
  cases T with
  | T q =>
    cases T' with
    | T q' =>
      by_cases h : q = q'
      · subst h; rfl
      · exact comm_TT X N l q q' hT hT' h b hb
    | U => exact comm_TU X N l q hT b hb
    | D d => exact comm_TD X N l hN q d hT hT' b hb
  | U =>
    cases T' with
    | T q' => exact (comm_TU X N l q' hT' b hb).symm
    | U => rfl
    | D d => exact comm_UD X N l hN d hT' b hb
  | D d =>
    cases T' with
    | T q' => exact (comm_TD X N l hN q' d hT' hT b hb).symm
    | U => exact (comm_UD X N l hN d hT b hb).symm
    | D d' => exact comm_DD X N l hN d d' hT hT' b hb

end GlobalTheory.KZ.HeckeComm

namespace GlobalTheory.KZ

theorem B_op_comm : ∀ {Ω : Type} [Field Ω] [Algebra ℚ Ω] [IsAlgClosure ℚ Ω] (ε : Ω →+* ℂ) (X : Tower Ω ε),
    Function.Injective ε → (∃ φ : ℂ → ℂ, DifferentiableOn ℂ φ Hs ∧ X.an X.jK = (φ : Mero)) →
    ∀ (N l w : ℕ) [Fact l.Prime], l ≠ 2 → 5 ≤ N → Nat.Coprime N l → Odd w → ∀ T T' : Letter, admitted N l T →
    admitted N l T' → ∀ b ∈ X.B N l w, X.op N l T (X.op N l T' b) = X.op N l T' (X.op N l T b) := by
  intro Ω _ _ _ ε X _ _ N l w _ _ hN _ _ T T' hT hT' b hb
  exact HeckeComm.op_comm X N l (by omega) T T' hT hT' b (HeckeComm.B_inv X N l w b hb)

end GlobalTheory.KZ
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.ModularTowerBAdmissibleHeckeCommute =====
