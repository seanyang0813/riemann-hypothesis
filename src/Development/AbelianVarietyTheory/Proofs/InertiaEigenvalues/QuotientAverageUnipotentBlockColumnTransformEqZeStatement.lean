module

public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnipotentBlockColumnIndex
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.QuotientAverageMapLatticeEquiv
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.QuotientAverageProdFubini
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ContinuousQuotientAveragePeriodicFamily
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.QuotientAverageTranslateInvariant
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
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
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
import Development.AutomorphicArithmetic.IntegralCasts.IsOpenStabOfMemNhds
import Mathlib.CategoryTheory.Countable

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PosMApplyNeZero, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.QuotientAverageAdelicRationalPointsComm, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.QuotientAverageSumIndexFubini, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.QuotientAverageUnipotentBlockColumnTransformEqZe, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.QuotientAverageUnipotentBlockColumnTransformEqZeStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PosMApplyNeZero =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PosMApplyNeZero", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnipotentBlockColumnIndex\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicArithmetic.IntegralCasts.IsOpenStabOfMemNhds\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain MeasureTheory Matrix GlobalTheory.CuspRep GlobalTheory.CuspGeneric

namespace GlobalTheory.CuspGeneric.ColSplit

abbrev HiIx (a r k : ℕ) : Type := {t : UnipotentBlockColumnIndex a k k // r ≤ (t.1.1 : ℕ)}

abbrev LoIx (a r k : ℕ) : Type := {t : UnipotentBlockColumnIndex a k k // ¬ r ≤ (t.1.1 : ℕ)}

def colEquiv (a r k : ℕ) : HiIx a r k ⊕ LoIx a r k ≃ UnipotentBlockColumnIndex a k k := Equiv.sumCompl _

def blkEquiv (a r m : ℕ) (hr : r ≤ m + 1) : UnipotentBlockColumnIndex a r m ⊕ LoIx a r (m + 1) ≃ UnipotentBlockColumnIndex a r (m + 1) where
  toFun := Sum.elim (fun s : UnipotentBlockColumnIndex a r m => ⟨s.1, s.2.1, s.2.2.1, by have := s.2.2.2; omega⟩)
    (fun l : LoIx a r (m + 1) => ⟨l.1.1, by have := l.2; omega, by have := l.1.2; omega, by have := l.1.2; omega⟩)
  invFun := fun t => if h : (t.1.2 : ℕ) ≤ m then Sum.inl ⟨t.1, t.2.1, t.2.2.1, h⟩
    else Sum.inr ⟨⟨t.1, by have := t.2; omega, by have := t.2; omega, by have := t.2; omega⟩,
      show ¬ r ≤ (t.1.1 : ℕ) by have := t.2; omega⟩
  left_inv := by
    rintro (s | l)
    · simp [s.2.2.2]
    · have h1 := l.1.2
      have h2 : ¬ ((l.1.1.2 : ℕ) ≤ m) := by omega
      simp [h2]
  right_inv := by
    intro t
    by_cases h : (t.1.2 : ℕ) ≤ m
    · simp [h]
    · simp [h]

section Mat

variable {R : Type} [CommRing R] {a : ℕ}

theorem posM_apply_ne_zero {ι : Type} [Fintype ι] {p : ι → Fin a × Fin a} {x : ι → R} {i k : Fin a}
    (h : posM p x i k ≠ 0) : ∃ t, p t = (i, k) := by
  simp only [posM, Matrix.sum_apply] at h
  obtain ⟨t, -, ht⟩ := Finset.exists_ne_zero_of_sum_ne_zero h
  refine ⟨t, ?_⟩
  rw [Matrix.single_apply] at ht
  split_ifs at ht with hc
  · exact Prod.ext hc.1 hc.2
  · exact absurd rfl ht

theorem posM_eq_of_support {ι : Type} [Fintype ι] {p : ι → Fin a × Fin a} (hp : Function.Injective p)
    (M : Matrix (Fin a) (Fin a) R) (hM : ∀ i k, M i k ≠ 0 → ∃ t, p t = (i, k)) :
    posM p (fun t => M (p t).1 (p t).2) = M := by
  ext i k
  simp only [posM, Matrix.sum_apply, Matrix.single_apply]
  by_cases h : ∃ t, p t = (i, k)
  · obtain ⟨t, ht⟩ := h
    rw [Finset.sum_eq_single t]
    · simp [ht]
    · intro t' _ ht'
      rw [if_neg]
      rintro ⟨e1, e2⟩
      exact ht' (hp (by rw [ht]; exact Prod.ext e1 e2))
    · simp
  · have h0 : M i k = 0 := by
      by_contra h1
      exact h (hM i k h1)
    rw [h0]
    refine Finset.sum_eq_zero fun t _ => ?_
    rw [if_neg]
    rintro ⟨e1, e2⟩
    exact h ⟨t, Prod.ext e1 e2⟩

theorem posM_comp_symm {ι κ : Type} [Fintype ι] [Fintype κ] (p : ι → Fin a × Fin a) (τ : κ ≃ ι) (w : κ → R) :
    posM p (w ∘ τ.symm) = posM (p ∘ τ) w := by
  simp only [posM]
  exact (Fintype.sum_equiv τ.symm _ _ (fun t => by simp)).trans rfl

theorem posM_sumElim {ι κ : Type} [Fintype ι] [Fintype κ] (p : ι ⊕ κ → Fin a × Fin a) (z : ι → R) (y : κ → R) :
    posM p (Sum.elim z y) = posM (p ∘ Sum.inl) z + posM (p ∘ Sum.inr) y := by
  simp only [posM, Fintype.sum_sum_type, Sum.elim_inl, Sum.elim_inr, Function.comp]

theorem posM_sub {ι : Type} [Fintype ι] (p : ι → Fin a × Fin a) (x y : ι → R) :
    posM p (x - y) = posM p x - posM p y := by
  rw [eq_sub_iff_add_eq, ← posM_add, sub_add_cancel]

theorem posM_zero' {ι : Type} [Fintype ι] (p : ι → Fin a × Fin a) : posM p (0 : ι → R) = 0 := by
  simp [posM]

theorem posM_mul_eq_zero {ι κ : Type} [Fintype ι] [Fintype κ] {p : ι → Fin a × Fin a} {q : κ → Fin a × Fin a}
    (h : ∀ s t, (p s).2 ≠ (q t).1) (x : ι → R) (y : κ → R) : posM p x * posM q y = 0 := by
  simp only [posM, Finset.sum_mul, Finset.mul_sum]
  refine Finset.sum_eq_zero fun s _ => Finset.sum_eq_zero fun t _ => ?_
  exact Matrix.single_mul_single_of_ne _ _ _ _ (h _ _) _

def corr {r m : ℕ} (n : UnipotentBlockColumnIndex a r m → R) (z : HiIx a r (m + 1) → R) : LoIx a r (m + 1) → R := fun l =>
  (posM Subtype.val n * posM (fun t : HiIx a r (m + 1) => t.1.1) z) l.1.1.1 l.1.1.2

theorem posM_corr {r m : ℕ} (n : UnipotentBlockColumnIndex a r m → R) (z : HiIx a r (m + 1) → R) :
    posM (fun l : LoIx a r (m + 1) => l.1.1) (corr n z) =
      posM Subtype.val n * posM (fun t : HiIx a r (m + 1) => t.1.1) z := by
  refine posM_eq_of_support (fun l l' e => Subtype.ext (Subtype.ext e)) _ fun i k hik => ?_
  obtain ⟨l, hl⟩ : ∃ l, posM Subtype.val n i l * posM (fun t : HiIx a r (m + 1) => t.1.1) z l k ≠ 0 := by
    rw [Matrix.mul_apply] at hik
    obtain ⟨l, -, hl⟩ := Finset.exists_ne_zero_of_sum_ne_zero hik
    exact ⟨l, hl⟩
  obtain ⟨s, hs⟩ := posM_apply_ne_zero (left_ne_zero_of_mul hl)
  obtain ⟨t, ht⟩ := posM_apply_ne_zero (right_ne_zero_of_mul hl)
  have s2 := s.2
  have t2 := t.1.2
  rw [hs] at s2
  rw [ht] at t2
  simp only at s2 t2
  exact ⟨⟨⟨(i, k), show (i : ℕ) < m + 1 by omega, show m + 1 ≤ (k : ℕ) by omega, show (k : ℕ) ≤ m + 1 by omega⟩,
    show ¬ r ≤ (i : ℕ) by omega⟩, rfl⟩

end Mat

section Id

variable {R : Type} [CommRing R] {a : ℕ}

theorem blkU_col_mul_blkU {r m : ℕ} (hr : r ≤ m + 1) (n : UnipotentBlockColumnIndex a r m → R) (z : HiIx a r (m + 1) → R)
    (y : LoIx a r (m + 1) → R) :
    blkU (Sum.elim z y ∘ (colEquiv a r (m + 1)).symm) * blkU n =
      blkU (Sum.elim n (y - corr n z) ∘ (blkEquiv a r m hr).symm) *
        blkU (Sum.elim z 0 ∘ (colEquiv a r (m + 1)).symm) := by
  apply Units.ext
  change (1 + posM Subtype.val (Sum.elim z y ∘ (colEquiv a r (m + 1)).symm)) * (1 + posM Subtype.val n) =
    (1 + posM Subtype.val (Sum.elim n (y - corr n z) ∘ (blkEquiv a r m hr).symm)) *
      (1 + posM Subtype.val (Sum.elim z 0 ∘ (colEquiv a r (m + 1)).symm))
  simp only [posM_comp_symm, posM_sumElim, posM_sub, posM_zero', add_zero]
  have e1 : ((Subtype.val ∘ colEquiv a r (m + 1)) ∘ Sum.inl) = fun t : HiIx a r (m + 1) => t.1.1 := rfl
  have e2 : ((Subtype.val ∘ colEquiv a r (m + 1)) ∘ Sum.inr) = fun t : LoIx a r (m + 1) => t.1.1 := rfl
  have e3 : ((Subtype.val ∘ blkEquiv a r m hr) ∘ Sum.inl) = (Subtype.val : UnipotentBlockColumnIndex a r m → Fin a × Fin a) := rfl
  have e4 : ((Subtype.val ∘ blkEquiv a r m hr) ∘ Sum.inr) = fun t : LoIx a r (m + 1) => t.1.1 := rfl
  rw [e1, e2, e3, e4, posM_corr]
  set P := posM (fun t : HiIx a r (m + 1) => t.1.1) z
  set Q := posM (fun t : LoIx a r (m + 1) => t.1.1) y
  set N := posM (Subtype.val : UnipotentBlockColumnIndex a r m → Fin a × Fin a) n
  have hPN : P * N = 0 := posM_mul_eq_zero (fun s t => by
    have := s.1.2; have := t.2; omega) _ _
  have hQN : Q * N = 0 := posM_mul_eq_zero (fun s t => by
    have := s.1.2; have := t.2; omega) _ _
  have hQP : Q * P = 0 := posM_mul_eq_zero (fun s t => by
    have := s.1.2; have := t.1.2; omega) _ _
  have hNPP : N * P * P = 0 := by
    rw [mul_assoc, posM_mul_eq_zero (fun s t => by have := s.1.2; have := t.1.2; omega) z z, mul_zero]
  simp only [mul_add, add_mul, mul_one, one_mul, sub_mul, hPN, hQN, hQP, hNPP]
  abel

end Id

end GlobalTheory.CuspGeneric.ColSplit
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PosMApplyNeZero =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.QuotientAverageAdelicRationalPointsComm =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.QuotientAverageAdelicRationalPointsComm", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnipotentBlockColumnIndex\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.QuotientAverageMapLatticeEquiv\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.QuotientAverageProdFubini\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicArithmetic.IntegralCasts.IsOpenStabOfMemNhds\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain MeasureTheory Matrix GlobalTheory.CuspRep GlobalTheory.CuspGeneric

namespace GlobalTheory.CuspGeneric

section General

variable {G₁ G₂ : Type} [AddCommGroup G₁] [TopologicalSpace G₁] [AddCommGroup G₂] [TopologicalSpace G₂]

variable [IsTopologicalAddGroup G₁] [LocallyCompactSpace G₁] [SecondCountableTopology G₁] [T2Space G₁]
  [IsTopologicalAddGroup G₂] [LocallyCompactSpace G₂] [SecondCountableTopology G₂] [T2Space G₂]

def swapEquiv (G₁ G₂ : Type) [AddCommGroup G₁] [TopologicalSpace G₁] [AddCommGroup G₂] [TopologicalSpace G₂] :
    (G₂ × G₁) ≃ₜ+ (G₁ × G₂) :=
  { AddEquiv.prodComm with
    continuous_toFun := continuous_swap
    continuous_invFun := continuous_swap }

theorem avg_comm_of_isCoLat {Γ₁ : AddSubgroup G₁} {Γ₂ : AddSubgroup G₂} (h₁ : IsCoLat Γ₁) (h₂ : IsCoLat Γ₂)
    (Φ : G₁ × G₂ → ℂ) (hΦ : Per (Γ₁.prod Γ₂) Φ) :
    avg Γ₁ (fun x => avg Γ₂ (fun y => Φ (x, y))) = avg Γ₂ (fun y => avg Γ₁ (fun x => Φ (x, y))) := by
  have hs : Per (Γ₂.prod Γ₁) (fun p : G₂ × G₁ => Φ (p.2, p.1)) := by
    refine ⟨hΦ.1.comp continuous_swap, fun γ hγ x => ?_⟩
    exact hΦ.2 (γ.2, γ.1) ⟨hγ.2, hγ.1⟩ (x.2, x.1)
  have a := _root_.GlobalTheory.CuspGeneric.avg_prod G₁ G₂ Γ₁ Γ₂ h₁ h₂ Φ hΦ
  have b := _root_.GlobalTheory.CuspGeneric.avg_prod G₂ G₁ Γ₂ Γ₁ h₂ h₁ _ hs
  have c := _root_.GlobalTheory.CuspGeneric.avg_equiv (G₂ × G₁) (G₁ × G₂) (Γ₂.prod Γ₁) (Γ₁.prod Γ₂) (isCoLat_prod h₂ h₁) (isCoLat_prod h₁ h₂) (swapEquiv G₁ G₂)
    (fun x => ⟨fun h => ⟨h.2, h.1⟩, fun h => ⟨h.2, h.1⟩⟩) Φ hΦ
  exact a.symm.trans (c.symm.trans b)

end General

theorem avg_comm (E : Type) [Field E] [NumberField E] (ι κ : Type) [Fintype ι] [Fintype κ]
    (Φ : (ι → Ad E) × (κ → Ad E) → ℂ) (hΦ : Per ((ratV E ι).prod (ratV E κ)) Φ) :
    avg (ratV E ι) (fun x => avg (ratV E κ) (fun y => Φ (x, y))) =
      avg (ratV E κ) (fun y => avg (ratV E ι) (fun x => Φ (x, y))) :=
  avg_comm_of_isCoLat (isCoLat_ratV E ι) (isCoLat_ratV E κ) Φ hΦ

end GlobalTheory.CuspGeneric
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.QuotientAverageAdelicRationalPointsComm =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.QuotientAverageSumIndexFubini =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.QuotientAverageSumIndexFubini", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnipotentBlockColumnIndex\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.QuotientAverageMapLatticeEquiv\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.QuotientAverageProdFubini\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicArithmetic.IntegralCasts.IsOpenStabOfMemNhds\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain MeasureTheory Matrix GlobalTheory.CuspRep GlobalTheory.CuspGeneric

namespace GlobalTheory.CuspGeneric

def sumArrowAddHomeo (A ι κ : Type) [AddCommGroup A] [TopologicalSpace A] :
    ((ι → A) × (κ → A)) ≃ₜ+ (ι ⊕ κ → A) where
  toFun p := Sum.elim p.1 p.2
  invFun f := (fun i => f (Sum.inl i), fun j => f (Sum.inr j))
  left_inv _ := rfl
  right_inv f := by ext (i | j) <;> rfl
  map_add' p q := by ext (i | j) <;> rfl
  continuous_toFun := by
    refine continuous_pi fun s => ?_
    rcases s with i | j
    · exact (continuous_apply i).comp continuous_fst
    · exact (continuous_apply j).comp continuous_snd
  continuous_invFun :=
    (continuous_pi fun i => continuous_apply _).prodMk (continuous_pi fun j => continuous_apply _)

theorem sum_elim_mem_ratV (E : Type) [Field E] [NumberField E] (ι κ : Type) (x : ι → Ad E) (y : κ → Ad E) :
    Sum.elim x y ∈ ratV E (ι ⊕ κ) ↔ x ∈ ratV E ι ∧ y ∈ ratV E κ := by
  constructor
  · rintro ⟨c, hc⟩
    exact ⟨⟨fun i => c (Sum.inl i), funext fun i => congrFun hc (Sum.inl i)⟩,
      ⟨fun j => c (Sum.inr j), funext fun j => congrFun hc (Sum.inr j)⟩⟩
  · rintro ⟨⟨c, rfl⟩, ⟨d, rfl⟩⟩
    refine ⟨Sum.elim c d, funext fun s => ?_⟩
    rcases s with i | j <;> rfl

theorem avg_sum_index : ∀ (E : Type) [Field E] [NumberField E] (ι κ : Type) [Fintype ι] [Fintype κ]
    (Φ : (ι ⊕ κ → Ad E) → ℂ), Per (ratV E (ι ⊕ κ)) Φ →
    avg (ratV E (ι ⊕ κ)) Φ = avg (ratV E ι) (fun x => avg (ratV E κ) (fun y => Φ (Sum.elim x y))) := by
  intro E _ _ ι κ _ _ Φ hΦ
  have hι := isCoLat_ratV E ι
  have hκ := isCoLat_ratV E κ
  have hs := isCoLat_ratV E (ι ⊕ κ)
  have hp : IsCoLat ((ratV E ι).prod (ratV E κ)) := by
    obtain ⟨d₁, K₁, hK₁, c₁⟩ := hι
    obtain ⟨d₂, K₂, hK₂, c₂⟩ := hκ
    refine ⟨?_, K₁ ×ˢ K₂, hK₁.prod hK₂, fun x => ?_⟩
    · let f : ↥((ratV E ι).prod (ratV E κ)) → ratV E ι × ratV E κ := fun p => (⟨p.1.1, p.2.1⟩, ⟨p.1.2, p.2.2⟩)
      have hf : Continuous f :=
        (continuous_subtype_val.fst.subtype_mk _).prodMk (continuous_subtype_val.snd.subtype_mk _)
      refine DiscreteTopology.of_continuous_injective hf fun p q h => ?_
      have e₁ := congrArg (fun r => (r.1 : ι → Ad E)) h
      have e₂ := congrArg (fun r => (r.2 : κ → Ad E)) h
      exact Subtype.ext (Prod.ext e₁ e₂)
    · obtain ⟨γ₁, m₁, k₁⟩ := c₁ x.1
      obtain ⟨γ₂, m₂, k₂⟩ := c₂ x.2
      exact ⟨(γ₁, γ₂), ⟨m₁, m₂⟩, k₁, k₂⟩
  let e := sumArrowAddHomeo (Ad E) ι κ
  have he : ∀ p, e p ∈ ratV E (ι ⊕ κ) ↔ p ∈ (ratV E ι).prod (ratV E κ) := fun p =>
    (sum_elim_mem_ratV E ι κ p.1 p.2).trans AddSubgroup.mem_prod.symm
  have hper : Per ((ratV E ι).prod (ratV E κ)) (fun p => Φ (e p)) := by
    refine ⟨hΦ.1.comp e.continuous_toFun, fun γ hγ x => ?_⟩
    have : e (γ + x) = e γ + e x := map_add e γ x
    simp only [this]
    exact hΦ.2 _ ((he γ).2 hγ) _
  have h1 := _root_.GlobalTheory.CuspGeneric.avg_equiv _ _ _ _ hp hs e he Φ hΦ
  have h2 := _root_.GlobalTheory.CuspGeneric.avg_prod _ _ _ _ hι hκ _ hper
  rw [← h1, h2]
  rfl

end GlobalTheory.CuspGeneric
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.QuotientAverageSumIndexFubini =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.QuotientAverageUnipotentBlockColumnTransformEqZe =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.QuotientAverageUnipotentBlockColumnTransformEqZe", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PosMApplyNeZero\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnipotentBlockColumnIndex\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ContinuousQuotientAveragePeriodicFamily\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.QuotientAverageAdelicRationalPointsComm\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.QuotientAverageSumIndexFubini\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.QuotientAverageTranslateInvariant\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.QuotientAverageMapLatticeEquiv\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Countable\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicArithmetic.IntegralCasts.IsOpenStabOfMemNhds\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain MeasureTheory Matrix GlobalTheory.CuspRep GlobalTheory.CuspGeneric

namespace GlobalTheory.CuspGeneric.ColSplit

section Gen

variable {E : Type} [Field E] [NumberField E]

theorem mem_ratV_iff {ι : Type} (x : ι → Ad E) : x ∈ ratV E ι ↔ ∀ t, ∃ c : E, algebraMap E (Ad E) c = x t := by
  constructor
  · rintro ⟨c, rfl⟩ t
    exact ⟨c t, rfl⟩
  · intro h
    choose c hc using h
    exact ⟨c, funext hc⟩


variable (E) in
def reix {ι κ : Type} (τ : κ ≃ ι) : (κ → Ad E) ≃ₜ+ (ι → Ad E) where
  toFun w := w ∘ τ.symm
  invFun x := x ∘ τ
  left_inv w := by funext t; simp
  right_inv x := by funext t; simp
  map_add' _ _ := rfl
  continuous_toFun := continuous_pi fun _ => continuous_apply _
  continuous_invFun := continuous_pi fun _ => continuous_apply _

theorem reix_mem {ι κ : Type} (τ : κ ≃ ι) (w : κ → Ad E) : reix E τ w ∈ ratV E ι ↔ w ∈ ratV E κ := by
  simp only [mem_ratV_iff]
  change (∀ t, ∃ c : E, algebraMap E (Ad E) c = w (τ.symm t)) ↔ _
  exact ⟨fun h s => by simpa using h (τ s), fun h t => h _⟩

theorem per_reix {ι κ : Type} (τ : κ ≃ ι) {Φ : (ι → Ad E) → ℂ} (h : Per (ratV E ι) Φ) :
    Per (ratV E κ) (fun w => Φ (w ∘ τ.symm)) := by
  refine ⟨h.1.comp (reix E τ).continuous, fun γ hγ w => ?_⟩
  have := h.2 (reix E τ γ) ((reix_mem τ γ).2 hγ) (reix E τ w)
  exact this

theorem avg_reix {ι κ : Type} [Fintype ι] [Fintype κ] (τ : κ ≃ ι) {Φ : (ι → Ad E) → ℂ} (h : Per (ratV E ι) Φ) :
    avg (ratV E ι) Φ = avg (ratV E κ) (fun w => Φ (w ∘ τ.symm)) :=
  (_root_.GlobalTheory.CuspGeneric.avg_equiv _ _ _ _ (isCoLat_ratV E κ) (isCoLat_ratV E ι) (reix E τ) (reix_mem τ) Φ h).symm

theorem avg_sum_reix {ι κ₁ κ₂ : Type} [Fintype ι] [Fintype κ₁] [Fintype κ₂] (τ : κ₁ ⊕ κ₂ ≃ ι)
    {Φ : (ι → Ad E) → ℂ} (h : Per (ratV E ι) Φ) :
    avg (ratV E ι) Φ = avg (ratV E κ₁) (fun z => avg (ratV E κ₂) (fun y => Φ (Sum.elim z y ∘ τ.symm))) := by
  rw [avg_reix τ h]
  exact _root_.GlobalTheory.CuspGeneric.avg_sum_index E κ₁ κ₂ _ (per_reix τ h)

end Gen

end GlobalTheory.CuspGeneric.ColSplit

namespace GlobalTheory.CuspGeneric.ColSplit

section Main

variable {E : Type} [Field E] [NumberField E] {a : ℕ} {ψ : AddChar (Ad E) ℂ}

theorem sumElim_add_left {κ₁ κ₂ : Type} (c : κ₁ → E) (n : κ₁ → Ad E) (w : κ₂ → Ad E) :
    Sum.elim ((fun t => algebraMap E (Ad E) (c t)) + n) w =
      (fun s => algebraMap E (Ad E) (Sum.elim c 0 s)) + Sum.elim n w := by
  funext s; cases s <;> simp

theorem sumElim_add_right {κ₁ κ₂ : Type} (c : κ₂ → E) (n : κ₁ → Ad E) (w : κ₂ → Ad E) :
    Sum.elim n ((fun t => algebraMap E (Ad E) (c t)) + w) =
      (fun s => algebraMap E (Ad E) (Sum.elim 0 c s)) + Sum.elim n w := by
  funext s; cases s <;> simp

theorem blk_rat {r' m' : ℕ} {κ : Type} [Fintype κ] (σ : κ ≃ UnipotentBlockColumnIndex a r' m') {f : GA E a → ℂ}
    (hl : ∀ (c : UnipotentBlockColumnIndex a r' m' → E) g, f (ratGL E a (blkU c) * g) = f g) (c : κ → E) (v : κ → Ad E) (h : GA E a) :
    f (blkU (((fun t => algebraMap E (Ad E) (c t)) + v) ∘ σ.symm) * h) = f (blkU (v ∘ σ.symm) * h) := by
  have e : blkU (((fun t => algebraMap E (Ad E) (c t)) + v) ∘ σ.symm) =
      ratGL E a (blkU (c ∘ σ.symm)) * blkU (v ∘ σ.symm) := by
    rw [ratGL_blkU]
    exact posU_add _ _ _
  rw [e, mul_assoc, hl]

theorem continuous_sumElim_right {κ₁ κ₂ : Type} (n : κ₁ → Ad E) :
    Continuous fun w : κ₂ → Ad E => Sum.elim n w :=
  continuous_pi fun s => match s with
    | Sum.inl _ => continuous_const
    | Sum.inr l => continuous_apply l

theorem continuous_sumElim {κ₁ κ₂ : Type} : Continuous fun p : (κ₁ → Ad E) × (κ₂ → Ad E) => Sum.elim p.1 p.2 :=
  continuous_pi fun s => match s with
    | Sum.inl l => (continuous_apply l).comp continuous_fst
    | Sum.inr l => (continuous_apply l).comp continuous_snd

theorem per_position {r' m' : ℕ} {κ₁ κ₂ : Type} [Fintype κ₁] [Fintype κ₂] (σ : κ₁ ⊕ κ₂ ≃ UnipotentBlockColumnIndex a r' m')
    {f : GA E a → ℂ} (hc : Continuous f) (hl : ∀ (c : UnipotentBlockColumnIndex a r' m' → E) g, f (ratGL E a (blkU c) * g) = f g)
    (n : κ₁ → Ad E) (h : GA E a) : Per (ratV E κ₂) (fun w => f (blkU (Sum.elim n w ∘ σ.symm) * h)) := by
  refine ⟨hc.comp (((continuous_posU _).comp ((reix E σ).continuous.comp (continuous_sumElim_right n))).mul
    continuous_const), ?_⟩
  rintro _ ⟨c, rfl⟩ w
  change f (blkU (Sum.elim n ((fun t => algebraMap E (Ad E) (c t)) + w) ∘ σ.symm) * h) = _
  rw [sumElim_add_right, blk_rat σ hl]

theorem dot_col {r m : ℕ} (hr : r ≤ m) (z : HiIx a r (m + 1) → Ad E) (y : LoIx a r (m + 1) → Ad E) :
    dot (eLast a (m + 1)) (Sum.elim z y ∘ (colEquiv a r (m + 1)).symm) =
      dot (eLast a (m + 1)) (Sum.elim z 0 ∘ (colEquiv a r (m + 1)).symm) := by
  refine Finset.sum_congr rfl fun t _ => ?_
  by_cases h : r ≤ (t.1.1 : ℕ)
  · have e : (colEquiv a r (m + 1)).symm t = Sum.inl ⟨t, h⟩ := Equiv.sumCompl_symm_apply_of_pos (p := fun t : UnipotentBlockColumnIndex a (m + 1) (m + 1) => r ≤ (t.1.1 : ℕ)) h
    simp only [Function.comp, e, Sum.elim_inl]
  · have : (eLast a (m + 1) t : E) = 0 := by
      simp only [eLast]
      rw [if_neg]
      omega
    simp [this]

theorem colT_avg_blk_eq_zero (hψ : StdPsi ψ) (m : ℕ) (f : GA E a → ℂ) (hf : Good ψ (m + 1) f)
    (r : ℕ) (h0 : 0 < r) (hr : r ≤ m) (g : GA E a) :
    avg (ratV E (UnipotentBlockColumnIndex a r m)) (fun n => colT ψ (m + 1) f (blkU n * g)) = 0 := by
  have hr1 : r ≤ m + 1 := by omega
  have hl : ∀ {r' : ℕ} (c : UnipotentBlockColumnIndex a r' (m + 1) → E) g, f (ratGL E a (blkU c) * g) = f g :=
    fun c g => hf.left _ (isMir_blkU c) g

  have hA : ∀ n : UnipotentBlockColumnIndex a r m → Ad E, colT ψ (m + 1) f (blkU n * g) =
      avg (ratV E (HiIx a r (m + 1))) (fun z => avg (ratV E (LoIx a r (m + 1))) (fun y =>
        ψ (-dot (eLast a (m + 1)) (Sum.elim z y ∘ (colEquiv a r (m + 1)).symm)) *
          f (blkU (Sum.elim z y ∘ (colEquiv a r (m + 1)).symm) * (blkU n * g)))) := by
    intro n
    unfold colT coefF
    exact avg_sum_reix (colEquiv a r (m + 1)) (per_coef hψ _ hf.cont hl _)
  have hB : ∀ (n : UnipotentBlockColumnIndex a r m → Ad E) (z : HiIx a r (m + 1) → Ad E),
      avg (ratV E (LoIx a r (m + 1))) (fun y =>
        ψ (-dot (eLast a (m + 1)) (Sum.elim z y ∘ (colEquiv a r (m + 1)).symm)) *
          f (blkU (Sum.elim z y ∘ (colEquiv a r (m + 1)).symm) * (blkU n * g))) =
      ψ (-dot (eLast a (m + 1)) (Sum.elim z 0 ∘ (colEquiv a r (m + 1)).symm)) *
        avg (ratV E (LoIx a r (m + 1))) (fun w => f (blkU (Sum.elim n w ∘ (blkEquiv a r m hr1).symm) *
          (blkU (Sum.elim z 0 ∘ (colEquiv a r (m + 1)).symm) * g))) := by
    intro n z
    have e : ∀ y : LoIx a r (m + 1) → Ad E,
        ψ (-dot (eLast a (m + 1)) (Sum.elim z y ∘ (colEquiv a r (m + 1)).symm)) *
          f (blkU (Sum.elim z y ∘ (colEquiv a r (m + 1)).symm) * (blkU n * g)) =
        ψ (-dot (eLast a (m + 1)) (Sum.elim z 0 ∘ (colEquiv a r (m + 1)).symm)) *
          f (blkU (Sum.elim n (y + -corr n z) ∘ (blkEquiv a r m hr1).symm) *
            (blkU (Sum.elim z 0 ∘ (colEquiv a r (m + 1)).symm) * g)) := by
      intro y
      rw [dot_col hr, ← mul_assoc, blkU_col_mul_blkU hr1, mul_assoc, sub_eq_add_neg]
    simp_rw [e]
    rw [avg_const_mul]
    exact congrArg _ (_root_.GlobalTheory.CuspGeneric.avg_add_right _ _ (isCoLat_ratV _ _)
      (fun w => f (blkU (Sum.elim n w ∘ (blkEquiv a r m hr1).symm) *
          (blkU (Sum.elim z 0 ∘ (colEquiv a r (m + 1)).symm) * g)))
      (per_position (blkEquiv a r m hr1) hf.cont hl n _) (-corr n z))

  obtain ⟨Φ₂, hΦ₂⟩ : ∃ Φ₂ : (UnipotentBlockColumnIndex a r m → Ad E) × (HiIx a r (m + 1) → Ad E) → ℂ, ∀ p, Φ₂ p =
      avg (ratV E (LoIx a r (m + 1))) (fun y =>
        ψ (-dot (eLast a (m + 1)) (Sum.elim p.2 y ∘ (colEquiv a r (m + 1)).symm)) *
          f (blkU (Sum.elim p.2 y ∘ (colEquiv a r (m + 1)).symm) * (blkU p.1 * g))) := ⟨_, fun _ => rfl⟩
  obtain ⟨H, hH⟩ : ∃ H : (UnipotentBlockColumnIndex a r m → Ad E) × (HiIx a r (m + 1) → Ad E) → ℂ, ∀ p, H p =
      avg (ratV E (LoIx a r (m + 1))) (fun w => f (blkU (Sum.elim p.1 w ∘ (blkEquiv a r m hr1).symm) *
          (blkU (Sum.elim p.2 0 ∘ (colEquiv a r (m + 1)).symm) * g))) := ⟨_, fun _ => rfl⟩
  have hΦH : ∀ p, Φ₂ p = ψ (-dot (eLast a (m + 1)) (Sum.elim p.2 0 ∘ (colEquiv a r (m + 1)).symm)) * H p := by
    intro p
    rw [hΦ₂, hH, hB]
  have hHc : Continuous H := by
    have e : H = fun p => avg (ratV E (LoIx a r (m + 1))) (fun w =>
        (fun q : ((UnipotentBlockColumnIndex a r m → Ad E) × (HiIx a r (m + 1) → Ad E)) × (LoIx a r (m + 1) → Ad E) =>
          f (blkU (Sum.elim q.1.1 q.2 ∘ (blkEquiv a r m hr1).symm) *
            (blkU (Sum.elim q.1.2 0 ∘ (colEquiv a r (m + 1)).symm) * g))) (p, w)) := funext hH
    rw [e]
    refine _root_.GlobalTheory.CuspGeneric.continuous_avg_of_periodic (LoIx a r (m + 1) → Ad E) (ratV E (LoIx a r (m + 1))) (isCoLat_ratV E _)
      ((UnipotentBlockColumnIndex a r m → Ad E) × (HiIx a r (m + 1) → Ad E))
      (fun q => f (blkU (Sum.elim q.1.1 q.2 ∘ (blkEquiv a r m hr1).symm) *
            (blkU (Sum.elim q.1.2 0 ∘ (colEquiv a r (m + 1)).symm) * g))) ?_ ?_
    · have c₁ : Continuous fun q : ((UnipotentBlockColumnIndex a r m → Ad E) × (HiIx a r (m + 1) → Ad E)) × (LoIx a r (m + 1) → Ad E) =>
          Sum.elim q.1.1 q.2 := continuous_sumElim.comp (continuous_fst.fst.prodMk continuous_snd)
      have c₂ : Continuous fun q : ((UnipotentBlockColumnIndex a r m → Ad E) × (HiIx a r (m + 1) → Ad E)) × (LoIx a r (m + 1) → Ad E) =>
          Sum.elim q.1.2 (0 : LoIx a r (m + 1) → Ad E) :=
        continuous_sumElim.comp (continuous_fst.snd.prodMk continuous_const)
      exact hf.cont.comp (((continuous_posU _).comp ((reix E (blkEquiv a r m hr1)).continuous.comp c₁)).mul
        (((continuous_posU _).comp ((reix E (colEquiv a r (m + 1))).continuous.comp c₂)).mul continuous_const))
    · intro x γ hγ y
      exact (per_position (blkEquiv a r m hr1) hf.cont hl x.1 _).2 γ hγ y
  have hψc : Continuous fun p : (UnipotentBlockColumnIndex a r m → Ad E) × (HiIx a r (m + 1) → Ad E) =>
      ψ (-dot (eLast a (m + 1)) (Sum.elim p.2 0 ∘ (colEquiv a r (m + 1)).symm)) :=
    hψ.cont.comp ((continuous_dot _).comp ((reix E (colEquiv a r (m + 1))).continuous.comp
      (continuous_sumElim.comp (continuous_snd.prodMk continuous_const)))).neg
  have hPer : Per ((ratV E (UnipotentBlockColumnIndex a r m)).prod (ratV E (HiIx a r (m + 1)))) Φ₂ := by
    refine ⟨?_, ?_⟩
    · rw [funext hΦH]
      exact hψc.mul hHc
    · intro γ hγ p
      rw [AddSubgroup.mem_prod] at hγ
      obtain ⟨⟨c₁, hc₁⟩, ⟨c₂, hc₂⟩⟩ := hγ
      have e₁ : γ.1 = fun t => algebraMap E (Ad E) (c₁ t) := hc₁.symm
      have e₂ : γ.2 = fun t => algebraMap E (Ad E) (c₂ t) := hc₂.symm
      have s₁ : Φ₂ (γ + p) = Φ₂ (p.1, γ.2 + p.2) := by
        rw [show γ + p = (γ.1 + p.1, γ.2 + p.2) from rfl, hΦH, hΦH]
        congr 1
        rw [hH, hH]
        congr 1
        funext w
        change f (blkU (Sum.elim (γ.1 + p.1) w ∘ _) * _) = _
        rw [e₁, sumElim_add_left, blk_rat _ hl]
      have s₂ : Φ₂ (p.1, γ.2 + p.2) = Φ₂ p := by
        rw [hΦ₂, hΦ₂]
        congr 1
        funext y
        change ψ (-dot _ (Sum.elim (γ.2 + p.2) y ∘ _)) * f (blkU (Sum.elim (γ.2 + p.2) y ∘ _) * _) = _
        have hm := hψ.map_dot (eLast a (m + 1)) (Sum.elim c₂ 0 ∘ (colEquiv a r (m + 1)).symm)
          (Sum.elim p.2 y ∘ (colEquiv a r (m + 1)).symm)
        rw [e₂, sumElim_add_left, blk_rat _ hl, AddChar.map_neg_eq_inv, AddChar.map_neg_eq_inv]
        congr 1
        exact congrArg _ hm
      rw [s₁, s₂]
  have hD : ∀ z : HiIx a r (m + 1) → Ad E, avg (ratV E (UnipotentBlockColumnIndex a r m)) (fun n => Φ₂ (n, z)) = 0 := by
    intro z
    simp_rw [hΦH]
    rw [avg_const_mul]
    have e : avg (ratV E (UnipotentBlockColumnIndex a r m)) (fun n => H (n, z)) =
        avg (ratV E (UnipotentBlockColumnIndex a r (m + 1))) (fun w => f (blkU w * (blkU (Sum.elim z 0 ∘ (colEquiv a r (m + 1)).symm) * g))) := by
      rw [avg_sum_reix (blkEquiv a r m hr1) (per_blk hf.cont hl _)]
      simp_rw [hH]
    rw [e, hf.van r h0 hr1, mul_zero]
  have hA' : (fun n => colT ψ (m + 1) f (blkU n * g)) = fun n => avg (ratV E (HiIx a r (m + 1))) (fun z => Φ₂ (n, z)) := by
    funext n
    rw [hA]
    simp_rw [hΦ₂]
  rw [hA', _root_.GlobalTheory.CuspGeneric.avg_comm E _ _ Φ₂ hPer]
  simp_rw [hD]
  simpa using avg_const_mul (ratV E (HiIx a r (m + 1))) 0 (fun _ => (1 : ℂ))

end Main

theorem _root_.GlobalTheory.CuspGeneric.avg_colT_blk_eq_zero : ∀ (E : Type) [Field E] [NumberField E] (a : ℕ) (ψ : AddChar (Ad E) ℂ),
    StdPsi ψ → ∀ (m : ℕ) (f : GA E a → ℂ), m + 1 < a → Good ψ (m + 1) f → ∀ r, 0 < r → r ≤ m → ∀ g : GA E a,
      avg (ratV E (UnipotentBlockColumnIndex a r m)) (fun n => colT ψ (m + 1) f (blkU n * g)) = 0 :=
  fun _ _ _ _ _ hψ m f _ hf r h0 hr g => colT_avg_blk_eq_zero hψ m f hf r h0 hr g

end GlobalTheory.CuspGeneric.ColSplit
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.QuotientAverageUnipotentBlockColumnTransformEqZe =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.QuotientAverageUnipotentBlockColumnTransformEqZeStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.QuotientAverageUnipotentBlockColumnTransformEqZeStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnipotentBlockColumnIndex\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.QuotientAverageUnipotentBlockColumnTransformEqZe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicArithmetic.IntegralCasts.IsOpenStabOfMemNhds\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain MeasureTheory Matrix GlobalTheory.CuspRep GlobalTheory.CuspGeneric

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.QuotientAverageUnipotentBlockColumnTransformEqZeStatement =====
