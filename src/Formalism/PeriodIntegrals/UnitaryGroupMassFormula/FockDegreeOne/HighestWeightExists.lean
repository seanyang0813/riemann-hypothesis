module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockDegreeOne.OneDegOfHalves
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockDegreeOne.FockOperatorsKernel
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockDegreeOne.RedDefs
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockDegreeOne.CoeffXMulPderivSelf, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockDegreeOne.HighestWeightExists

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockDegreeOne.CoeffXMulPderivSelf =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockDegreeOne.CoeffXMulPderivSelf", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockDegreeOne.OneDegOfHalves\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockDegreeOne.FockOperatorsKernel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Rat\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix FockH1Action MvPolynomial

namespace PI.FockOneDegW.HwC

def sgnL {p q r s : ℕ} (l : Ln p q r s) : ℚ := if linePos l = true then 1 else -1

def wtv {p q r s : ℕ} (β : Ln p q r s →₀ ℕ) (c : Ix p q) : ℚ :=
  ∑ d : Ix r s, sgnL ((c, d) : Ln p q r s) * (β (c, d) : ℚ) + kShift r s c

theorem coeff_X_mul_pderiv_self {σ : Type*} (l : σ) (P : MvPolynomial σ ℂ) (β : σ →₀ ℕ) :
    AddMonoidAlgebra.coeff (X l * pderiv l P) β = (β l : ℂ) * AddMonoidAlgebra.coeff P β := by
  classical
  rw [coeff_X_mul']
  by_cases h : l ∈ β.support
  · rw [if_pos h, coeff_pderiv]
    have h1 : 1 ≤ β l := Nat.one_le_iff_ne_zero.mpr (Finsupp.mem_support_iff.mp h)
    have hle : Finsupp.single l 1 ≤ β := Finsupp.single_le_iff.mpr h1
    rw [tsub_add_cancel_of_le hle, Finsupp.tsub_apply, Finsupp.single_eq_same, mul_comm]
    congr 1
    rw [Nat.cast_sub h1]
    push_cast
    ring
  · rw [if_neg h]
    have h0 : β l = 0 := by simpa [Finsupp.mem_support_iff] using h
    simp [h0]

theorem coeff_X_mul_pderiv_ne {σ : Type*} (l l' : σ) (P : MvPolynomial σ ℂ) (γ : σ →₀ ℕ)
    (h : AddMonoidAlgebra.coeff (X l * pderiv l' P) γ ≠ 0) :
    ∃ β ∈ P.support, β + Finsupp.single l 1 = γ + Finsupp.single l' 1 := by
  classical
  rw [coeff_X_mul'] at h
  by_cases hs : l ∈ γ.support
  · rw [if_pos hs, coeff_pderiv] at h
    refine ⟨γ - Finsupp.single l 1 + Finsupp.single l' 1, ?_, ?_⟩
    · rw [mem_support_iff]
      exact left_ne_zero_of_mul h
    · have hle : Finsupp.single l 1 ≤ γ :=
        Finsupp.single_le_iff.mpr (Nat.one_le_iff_ne_zero.mpr (Finsupp.mem_support_iff.mp hs))
      rw [add_right_comm, tsub_add_cancel_of_le hle]
  · rw [if_neg hs] at h
    exact absurd rfl h

theorem wtv_add {p q r s : ℕ} (β γ : Ln p q r s →₀ ℕ) (c : Ix p q) :
    wtv (β + γ) c = wtv β c + wtv γ c - kShift r s c := by
  unfold wtv
  simp only [Finsupp.coe_add, Pi.add_apply, Nat.cast_add, mul_add, Finset.sum_add_distrib]
  ring

theorem wtv_single {p q r s : ℕ} (l : Ln p q r s) (c : Ix p q) :
    wtv (Finsupp.single l 1) c = (if l.1 = c then sgnL l else 0) + kShift r s c := by
  unfold wtv
  congr 1
  have key : ∀ d : Ix r s, sgnL ((c, d) : Ln p q r s) * ((Finsupp.single l 1 ((c, d) : Ln p q r s) : ℕ) : ℚ) =
      if d = l.2 ∧ l.1 = c then sgnL l else 0 := by
    intro d
    by_cases h1 : d = l.2 ∧ l.1 = c
    · obtain ⟨rfl, rfl⟩ := h1
      simp
    · rw [if_neg h1]
      have hne : l ≠ ((c, d) : Ln p q r s) := fun he => h1 ⟨by rw [he], by rw [he]⟩
      simp [hne]
  simp_rw [key]
  by_cases h : l.1 = c <;> simp [h]

theorem wtv_shift {p q r s : ℕ} (l l' : Ln p q r s) (β γ : Ln p q r s →₀ ℕ)
    (h : β + Finsupp.single l 1 = γ + Finsupp.single l' 1) (c : Ix p q) :
    wtv γ c = wtv β c + (if l.1 = c then sgnL l else 0) - (if l'.1 = c then sgnL l' else 0) := by
  have h1 := wtv_add β (Finsupp.single l 1) c
  have h2 := wtv_add γ (Finsupp.single l' 1) c
  rw [h] at h1
  rw [h2, wtv_single, wtv_single] at h1
  linarith

theorem sameBlock_refl' {p q : ℕ} (c : Ix p q) : sameBlock c c := by
  cases c <;> trivial

theorem coeff_Ecc {p q r s : ℕ} (c : Ix p q) (P : Pol p q r s) (β : Ln p q r s →₀ ℕ) :
    AddMonoidAlgebra.coeff (fockAct1 p q r s (Eab c c) P) β = ((wtv β c : ℚ) : ℂ) * AddMonoidAlgebra.coeff P β := by
  classical
  have hline : ∀ l : Ln p q r s, AddMonoidAlgebra.coeff (omE l l P) β =
      (((sgnL l * β l + sgnL l / 2 : ℚ)) : ℂ) * AddMonoidAlgebra.coeff P β := by
    intro l
    by_cases hl : linePos l = true
    · simp only [omE, raiB, lowB, hl, if_true, LinearMap.add_apply, Module.End.mul_apply,
        LinearMap.mulLeft_apply, Derivation.coeFn_coe, LinearMap.smul_apply,
        Module.End.one_apply, MvPolynomial.coeff_add, MvPolynomial.coeff_smul, smul_eq_mul, coeff_X_mul_pderiv_self, sgnL]
      push_cast
      ring
    · have hl' : linePos l = false := by simpa using hl
      have e : AddMonoidAlgebra.coeff (pderiv l (X l * P)) β = ((β l : ℂ) + 1) * AddMonoidAlgebra.coeff P β := by
        rw [coeff_pderiv, add_comm β, coeff_X_mul, mul_comm]
      simp only [omE, raiB, lowB, hl', Bool.false_eq_true, if_false, if_true, LinearMap.add_apply,
        Module.End.mul_apply, LinearMap.mulLeft_apply, LinearMap.neg_apply, Derivation.coeFn_coe,
        LinearMap.smul_apply, Module.End.one_apply, MvPolynomial.coeff_add, MvPolynomial.coeff_neg, MvPolynomial.coeff_smul, smul_eq_mul, e, sgnL]
      push_cast
      ring
  rw [fockAct1_Eab_apply, coeff_sum]
  simp_rw [hline]
  rw [← Finset.sum_mul]
  congr 1
  unfold wtv
  push_cast
  rw [Finset.sum_add_distrib]
  congr 1
  cases c with
  | inl i => simp [kShift, cPair, sgnL, linePos, Fintype.sum_sum_type]; ring
  | inr i => simp [kShift, cPair, sgnL, linePos, Fintype.sum_sum_type]; ring

theorem wt_Eab {p q r s : ℕ} (a b : Ix p q) (hab : sameBlock a b) (hne : a ≠ b)
    (P : Pol p q r s) (γ : Ln p q r s →₀ ℕ) (hγ : γ ∈ (fockAct1 p q r s (Eab a b) P).support) :
    ∃ β ∈ P.support, ∀ c, wtv γ c =
      wtv β c + (if a = c then 1 else 0) - (if b = c then 1 else 0) := by
  classical
  rw [fockAct1_Eab_apply, mem_support_iff, coeff_sum] at hγ
  obtain ⟨d, -, hd⟩ := Finset.exists_ne_zero_of_sum_ne_zero hγ
  have hne' : ((a, d) : Ln p q r s) ≠ (b, d) := fun h => hne (Prod.ext_iff.mp h).1
  have hpos : linePos ((a, d) : Ln p q r s) = linePos ((b, d) : Ln p q r s) := by
    cases a <;> cases b <;> cases d <;> simp_all [sameBlock, linePos]
  simp only [omE, if_neg hne', add_zero, Module.End.mul_apply] at hd
  by_cases hl : linePos ((a, d) : Ln p q r s) = true
  · have hl2 : linePos ((b, d) : Ln p q r s) = true := hpos ▸ hl
    simp only [raiB, lowB, hl, hl2, if_true, LinearMap.mulLeft_apply,
      Derivation.coeFn_coe] at hd
    obtain ⟨β, hβ, hsum⟩ := coeff_X_mul_pderiv_ne _ _ P γ hd
    refine ⟨β, hβ, fun c => ?_⟩
    rw [wtv_shift _ _ β γ hsum c]
    simp [sgnL, hl, hl2]
  · have hl1 : linePos ((a, d) : Ln p q r s) = false := by simpa using hl
    have hl2 : linePos ((b, d) : Ln p q r s) = false := hpos ▸ hl1
    have e : pderiv ((a, d) : Ln p q r s) (X ((b, d) : Ln p q r s) * P) =
        X ((b, d) : Ln p q r s) * pderiv ((a, d) : Ln p q r s) P := by
      rw [Derivation.leibniz, pderiv_X, Pi.single_apply, if_neg hne'.symm]
      simp
    simp only [raiB, lowB, hl1, hl2, Bool.false_eq_true, if_false, LinearMap.mulLeft_apply,
      LinearMap.neg_apply, Derivation.coeFn_coe, e, MvPolynomial.coeff_neg, ne_eq, neg_eq_zero] at hd
    obtain ⟨β, hβ, hsum⟩ := coeff_X_mul_pderiv_ne _ _ P γ hd
    refine ⟨β, hβ, fun c => ?_⟩
    rw [wtv_shift _ _ β γ hsum c]
    simp [sgnL, hl1, hl2]
    split_ifs <;> ring

def IsWt {p q r s : ℕ} (ν : Ix p q → ℚ) (P : Pol p q r s) : Prop :=
  ∀ β ∈ P.support, ∀ c, wtv β c = ν c

theorem Ecc_of_wt {p q r s : ℕ} {ν : Ix p q → ℚ} {P : Pol p q r s} (hP : IsWt ν P) (c : Ix p q) :
    fockAct1 p q r s (Eab c c) P = ((ν c : ℚ) : ℂ) • P := by
  ext β
  rw [coeff_Ecc, MvPolynomial.coeff_smul, smul_eq_mul]
  by_cases hβ : β ∈ P.support
  · rw [hP β hβ c]
  · have h0 : AddMonoidAlgebra.coeff P β = 0 := by simpa [mem_support_iff] using hβ
    rw [h0, mul_zero, mul_zero]

theorem wt_Eab_of {p q r s : ℕ} {ν : Ix p q → ℚ} {P : Pol p q r s} (hP : IsWt ν P)
    (a b : Ix p q) (hab : sameBlock a b) (hne : a ≠ b) :
    IsWt (fun c => ν c + (if a = c then 1 else 0) - (if b = c then 1 else 0))
      (fockAct1 p q r s (Eab a b) P) := by
  intro γ hγ c
  obtain ⟨β, hβ, h⟩ := wt_Eab a b hab hne P γ hγ
  rw [h c, hP β hβ c]

end PI.FockOneDegW.HwC
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockDegreeOne.CoeffXMulPderivSelf =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockDegreeOne.HighestWeightExists =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockDegreeOne.HighestWeightExists", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockDegreeOne.CoeffXMulPderivSelf\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockDegreeOne.RedDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Rat\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Finiteness.ModuleFinitePresentation\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix FockH1Action MvPolynomial

namespace PI.FockOneDegW.HwC


open Classical in
theorem exists_wtvec {p q r s : ℕ} (U : Submodule ℂ (Pol p q r s))
    (hU : ∀ c : Ix p q, ∀ u ∈ U, fockAct1 p q r s (Eab c c) u ∈ U) :
    ∀ (n : ℕ) (u : Pol p q r s), u ∈ U → u ≠ 0 → (u.support.image wtv).card ≤ n →
      ∃ (ν : Ix p q → ℚ) (v : Pol p q r s), v ∈ U ∧ v ≠ 0 ∧ IsWt ν v ∧ v.support ⊆ u.support := by
  intro n
  induction n with
  | zero =>
    intro u _ hu0 hcard
    exfalso
    apply hu0
    have h0 := Nat.le_zero.1 hcard
    rw [Finset.card_eq_zero, Finset.image_eq_empty] at h0
    exact MvPolynomial.support_eq_empty.1 h0
  | succ n ih =>
    intro u hu hu0 hcard
    by_cases hall : ∀ β₁ ∈ u.support, ∀ β₂ ∈ u.support, wtv β₁ = wtv β₂
    · obtain ⟨β₀, hβ₀⟩ := Finset.nonempty_iff_ne_empty.2 (fun h => hu0 (MvPolynomial.support_eq_empty.1 h))
      exact ⟨wtv β₀, u, hu, hu0, fun β hβ c => by rw [hall β hβ β₀ hβ₀], subset_rfl⟩
    · push_neg at hall
      obtain ⟨β₁, h₁, β₂, h₂, hne⟩ := hall
      obtain ⟨c, hc⟩ := Function.ne_iff.1 hne

      have hcoeff : ∀ β, AddMonoidAlgebra.coeff (fockAct1 p q r s (Eab c c) u - ((wtv β₁ c : ℚ) : ℂ) • u) β =
          (((wtv β c : ℚ) : ℂ) - ((wtv β₁ c : ℚ) : ℂ)) * AddMonoidAlgebra.coeff u β := by
        intro β
        rw [MvPolynomial.coeff_sub, coeff_Ecc, MvPolynomial.coeff_smul, smul_eq_mul]
        ring
      have hsub : (fockAct1 p q r s (Eab c c) u - ((wtv β₁ c : ℚ) : ℂ) • u).support ⊆ u.support := by
        intro β hβ
        rw [MvPolynomial.mem_support_iff] at hβ ⊢
        intro h0
        apply hβ
        rw [hcoeff, h0, mul_zero]
      have hmem : fockAct1 p q r s (Eab c c) u - ((wtv β₁ c : ℚ) : ℂ) • u ∈ U :=
        U.sub_mem (hU c u hu) (U.smul_mem _ hu)
      have hβ₂ : β₂ ∈ (fockAct1 p q r s (Eab c c) u - ((wtv β₁ c : ℚ) : ℂ) • u).support := by
        rw [MvPolynomial.mem_support_iff, hcoeff]
        refine mul_ne_zero ?_ (MvPolynomial.mem_support_iff.1 h₂)
        rw [sub_ne_zero]
        exact_mod_cast (Ne.symm hc)
      have hne0 : fockAct1 p q r s (Eab c c) u - ((wtv β₁ c : ℚ) : ℂ) • u ≠ 0 := by
        intro h
        rw [h, MvPolynomial.support_zero] at hβ₂
        simp at hβ₂
      have himg : (fockAct1 p q r s (Eab c c) u - ((wtv β₁ c : ℚ) : ℂ) • u).support.image wtv ⊆
          (u.support.image wtv).erase (wtv β₁) := by
        intro w hw
        obtain ⟨β, hβ, rfl⟩ := Finset.mem_image.1 hw
        refine Finset.mem_erase.2 ⟨fun heq => ?_, Finset.mem_image_of_mem _ (hsub hβ)⟩
        have h0 : AddMonoidAlgebra.coeff (fockAct1 p q r s (Eab c c) u - ((wtv β₁ c : ℚ) : ℂ) • u) β = 0 := by
          rw [hcoeff, heq, sub_self, zero_mul]
        exact (MvPolynomial.mem_support_iff.1 hβ) h0
      have hcard' : ((fockAct1 p q r s (Eab c c) u - ((wtv β₁ c : ℚ) : ℂ) • u).support.image wtv).card ≤ n := by
        have h1 := Finset.card_le_card himg
        have h2 := Finset.card_erase_of_mem (Finset.mem_image_of_mem wtv h₁)
        omega
      obtain ⟨ν, v, hv, hv0, hvw, hvs⟩ := ih _ hmem hne0 hcard'
      exact ⟨ν, v, hv, hv0, hvw, hvs.trans hsub⟩

theorem exists_cover {p q r s : ℕ} (U : Submodule ℂ (Pol p q r s)) [FiniteDimensional ℂ U] :
    ∃ S : Finset (Ln p q r s →₀ ℕ), ∀ u ∈ U, u.support ⊆ S := by
  classical
  let bs := Module.finBasis ℂ U
  refine ⟨Finset.univ.biUnion fun k => ((bs k : U) : Pol p q r s).support, fun u hu => ?_⟩
  have e : (⟨u, hu⟩ : U) = ∑ k, (bs.repr ⟨u, hu⟩ k) • bs k := (bs.sum_repr _).symm
  have e' : u = ∑ k, (bs.repr ⟨u, hu⟩ k) • ((bs k : U) : Pol p q r s) := by
    have h := congrArg Subtype.val e
    rw [Submodule.coe_sum] at h
    simp only [Submodule.coe_smul] at h
    exact h
  rw [e']
  exact MvPolynomial.support_sum.trans (Finset.biUnion_mono fun k _ => MvPolynomial.support_smul)

def tw {p q : ℕ} : Ix p q → ℚ
  | .inl i => -((i : ℕ) : ℚ)
  | .inr j => -((j : ℕ) : ℚ)

def fw {p q : ℕ} (ν : Ix p q → ℚ) : ℚ := ∑ c, tw c * ν c

theorem fw_shift {p q : ℕ} (ν : Ix p q → ℚ) (a b : Ix p q) :
    fw (fun c => ν c + (if a = c then 1 else 0) - (if b = c then 1 else 0)) =
      fw ν + tw a - tw b := by
  unfold fw
  simp only [mul_add, mul_sub, Finset.sum_add_distrib, Finset.sum_sub_distrib, mul_ite, mul_one,
    mul_zero, Finset.sum_ite_eq, Finset.mem_univ, if_true]

theorem posC_facts {p q : ℕ} {a b : Ix p q} (h : posC a b) :
    sameBlock a b ∧ a ≠ b ∧ tw b < tw a := by
  rcases a with i | i <;> rcases b with j | j <;> simp only [posC] at h
  · refine ⟨trivial, fun e => (ne_of_lt h) (Sum.inl.inj e), ?_⟩
    have h' : (i : ℕ) < j := h
    show -((j : ℕ) : ℚ) < -((i : ℕ) : ℚ)
    exact neg_lt_neg (by exact_mod_cast h')
  · refine ⟨trivial, fun e => (ne_of_lt h) (Sum.inr.inj e), ?_⟩
    have h' : (i : ℕ) < j := h
    show -((j : ℕ) : ℚ) < -((i : ℕ) : ℚ)
    exact neg_lt_neg (by exact_mod_cast h')

end PI.FockOneDegW.HwC

namespace PI.FockOneDegW

open HwC

open Classical in
theorem hwExist : HwExist := by
  intro p q r s U hfd hU0 hstab
  haveI := hfd
  obtain ⟨S, hS⟩ := exists_cover U
  have hdiag : ∀ c : Ix p q, ∀ u ∈ U, fockAct1 p q r s (Eab c c) u ∈ U :=
    fun c => hstab c c (by cases c <;> trivial)

  have hwtS : ∀ (ν : Ix p q → ℚ) (v : Pol p q r s), v ∈ U → v ≠ 0 → IsWt ν v → ν ∈ S.image wtv := by
    intro ν v hv hv0 hw
    obtain ⟨β, hβ⟩ := Finset.nonempty_iff_ne_empty.2 (fun h => hv0 (MvPolynomial.support_eq_empty.1 h))
    exact Finset.mem_image.2 ⟨β, hS v hv hβ, funext fun c => hw β hβ c⟩
  have hT : ((S.image wtv).filter (fun ν => ∃ v ∈ U, v ≠ 0 ∧ IsWt ν v)).Nonempty := by
    obtain ⟨u, hu, hu0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hU0
    obtain ⟨ν, v, hv, hv0, hvw, -⟩ := exists_wtvec U hdiag _ u hu hu0 le_rfl
    exact ⟨ν, Finset.mem_filter.2 ⟨hwtS ν v hv hv0 hvw, v, hv, hv0, hvw⟩⟩

  obtain ⟨ν₀, hν₀, hmax⟩ := Finset.exists_max_image _ fw hT
  obtain ⟨-, v, hv, hv0, hvw⟩ := Finset.mem_filter.1 hν₀
  refine ⟨ν₀, v, hv, ?_⟩
  unfold IsHW hwSub
  refine ⟨hv0, Submodule.mem_inf.2 ⟨?_, ?_⟩⟩
  · simp only [wtSub, Submodule.mem_iInf, LinearMap.mem_ker, LinearMap.sub_apply, LinearMap.smul_apply,
      LinearMap.id_apply]
    intro a
    rw [Ecc_of_wt hvw a, sub_self]
  · simp only [Submodule.mem_iInf, LinearMap.mem_ker]
    intro a b hab
    obtain ⟨hsame, hne, htw⟩ := posC_facts hab
    by_contra hw0
    have hwU := hstab a b hsame v hv
    have hw' := wt_Eab_of hvw a b hsame hne
    have hmemT : (fun c => ν₀ c + (if a = c then 1 else 0) - (if b = c then 1 else 0)) ∈
        (S.image wtv).filter (fun ν => ∃ v ∈ U, v ≠ 0 ∧ IsWt ν v) :=
      Finset.mem_filter.2 ⟨hwtS _ _ hwU hw0 hw', _, hwU, hw0, hw'⟩
    have h1 := hmax _ hmemT
    rw [fw_shift] at h1
    linarith

end PI.FockOneDegW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockDegreeOne.HighestWeightExists =====
