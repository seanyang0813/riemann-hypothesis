module

public import Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrPl
public import Mathlib.RingTheory.LocalRing.ResidueField.Defs
public import Mathlib.NumberTheory.Padics.RingHoms
public import Mathlib.RingTheory.LocalRing.ResidueField.Basic
public import Mathlib.RingTheory.AdicCompletion.Basic
public import Lemmata.MiscLemmasH.Imports
public import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
public import Mathlib.LinearAlgebra.Dimension.Finite
public import Mathlib.LinearAlgebra.Matrix.ToLinearEquiv
public import Mathlib.FieldTheory.Finite.Basic
public import Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrS
public import Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrR
public import Mathlib.RingTheory.AdicCompletion.RingHom
public import Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrSf
public import Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrI
public import Formalism.LocalToGlobal.CharacterGerms.SelfConjugateRowData
public import Formalism.LocalToGlobal.CharacterGerms.CharacterHypothesisUnramified
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Formalism.LocalToGlobal.CharacterGerms.RowTieTop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.CharacterGerms.NatCastMulTmul, Formalism.LocalToGlobal.CharacterGerms.CompleteOfBasis, Formalism.LocalToGlobal.CharacterGerms.DetNeZeroOfChars, Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrPlP, Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrEF, Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrPlB, Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrRP, Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrSfI, Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrFin

-- ===== clump member: Formalism.LocalToGlobal.CharacterGerms.NatCastMulTmul =====
-- clump-header: {"m": "Formalism.LocalToGlobal.CharacterGerms.NatCastMulTmul", "h": "module\n\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrPl\npublic import Mathlib.RingTheory.LocalRing.ResidueField.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\npublic import Mathlib.NumberTheory.Padics.RingHoms\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.RingTheory.LocalRing.ResidueField.Basic\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open TensorProduct IsLocalRing

namespace Formalism.L2.FormalSeriesBounds.UpFBr.Pl

section T

variable {l : ℕ} [Fact l.Prime] {OE : Type} [CommRing OE]

theorem tauX_tmul {R : Type} [CommRing R] [Algebra ℤ_[l] R] (τ : OE →+* R) (z : ℤ_[l]) (x : OE) :
    tauX τ (z ⊗ₜ x) = algebraMap ℤ_[l] R z * τ x := by
  simp [tauX]

theorem natCast_eq_tmul (k : ℕ) : ((k : ℕ) : ℤ_[l] ⊗[ℤ] OE) = (k : ℤ_[l]) ⊗ₜ (1 : OE) := by
  induction k with
  | zero => simp
  | succ k ih => rw [Nat.cast_succ, ih, Nat.cast_succ, TensorProduct.add_tmul, Algebra.TensorProduct.one_def]

theorem natCast_tmul (k : ℕ) (y : OE) : (k : ℤ_[l]) ⊗ₜ[ℤ] y = (1 : ℤ_[l]) ⊗ₜ[ℤ] ((k : OE) * y) := by
  have h1 : (k : ℤ_[l]) = (k : ℤ) • (1 : ℤ_[l]) := by simp
  have h2 : ((k : OE) * y) = (k : ℤ) • y := by simp
  rw [h1, h2, TensorProduct.smul_tmul]

theorem natCast_mul_tmul (k : ℕ) (z : ℤ_[l]) (y : OE) :
    ((k : ℕ) : ℤ_[l] ⊗[ℤ] OE) * (z ⊗ₜ y) = ((k : ℤ_[l]) * z) ⊗ₜ y := by
  rw [natCast_eq_tmul, Algebra.TensorProduct.tmul_mul_tmul, one_mul]

theorem decomp (s : ℤ_[l] ⊗[ℤ] OE) :
    ∃ (x : OE) (s' : ℤ_[l] ⊗[ℤ] OE), s = 1 ⊗ₜ x + ((l : ℕ) : ℤ_[l] ⊗[ℤ] OE) * s' := by
  induction s using TensorProduct.induction_on with
  | zero => exact ⟨0, 0, by simp⟩
  | tmul z y =>
    obtain ⟨n, -, hn⟩ := PadicInt.exists_mem_range (x := z)
    rw [PadicInt.maximalIdeal_eq_span_p, Ideal.mem_span_singleton'] at hn
    obtain ⟨z', hz'⟩ := hn
    refine ⟨(n : OE) * y, z' ⊗ₜ y, ?_⟩
    rw [natCast_mul_tmul, ← natCast_tmul, ← TensorProduct.add_tmul, mul_comm (l : ℤ_[l]) z', hz']
    congr 1
    ring
  | add a b ha hb =>
    obtain ⟨x, s', hs⟩ := ha
    obtain ⟨x', t', ht⟩ := hb
    refine ⟨x + x', s' + t', ?_⟩
    rw [hs, ht, TensorProduct.tmul_add]
    ring

theorem completeA [Module.Free ℤ OE] [Module.Finite ℤ OE] :
    IsAdicComplete (Ideal.span {((l : ℕ) : ℤ_[l] ⊗[ℤ] OE)}) (ℤ_[l] ⊗[ℤ] OE) := by
  classical
  have key : ∀ (A : Type) [CommRing A] (a x : A) (n : ℕ),
      x ∈ (Ideal.span {a} ^ n • ⊤ : Submodule A A) ↔ ∃ s, x = a ^ n * s := by
    intro A _ a x n
    rw [Ideal.span_singleton_pow, Submodule.ideal_span_singleton_smul,
      Submodule.mem_smul_pointwise_iff_exists]
    constructor
    · rintro ⟨s, -, hs⟩
      exact ⟨s, by rw [← hs, smul_eq_mul]⟩
    · rintro ⟨s, hs⟩
      exact ⟨s, Submodule.mem_top, by rw [hs, smul_eq_mul]⟩
  let bR := Algebra.TensorProduct.basis ℤ_[l] (Module.Free.chooseBasis ℤ OE)
  have hl : ∀ (n : ℕ) (s : ℤ_[l] ⊗[ℤ] OE),
      ((l : ℕ) : ℤ_[l] ⊗[ℤ] OE) ^ n * s = ((l : ℤ_[l]) ^ n) • s := by
    intro n s
    rw [Algebra.smul_def, map_pow, map_natCast]
  have hcoord : ∀ (n : ℕ) (x : ℤ_[l] ⊗[ℤ] OE),
      (∃ s, x = ((l : ℕ) : ℤ_[l] ⊗[ℤ] OE) ^ n * s) ↔ ∀ i, ∃ c, bR.repr x i = (l : ℤ_[l]) ^ n * c := by
    intro n x
    constructor
    · rintro ⟨s, rfl⟩ i
      refine ⟨bR.repr s i, ?_⟩
      rw [hl, LinearEquiv.map_smul, Finsupp.smul_apply, smul_eq_mul]
    · intro h
      choose c hc using h
      refine ⟨∑ i, c i • bR i, ?_⟩
      rw [hl]
      apply bR.repr.injective
      ext i
      rw [hc i, LinearEquiv.map_smul, Finsupp.smul_apply, bR.repr_sum_self, smul_eq_mul]
  have hZ : IsAdicComplete (Ideal.span {((l : ℕ) : ℤ_[l])}) ℤ_[l] := by
    rw [← PadicInt.maximalIdeal_eq_span_p]
    infer_instance
  have haus : ∀ x : ℤ_[l] ⊗[ℤ] OE, (∀ n : ℕ, x ≡ 0 [SMOD (Ideal.span {((l : ℕ) : ℤ_[l] ⊗[ℤ] OE)} ^ n • ⊤ :
      Submodule (ℤ_[l] ⊗[ℤ] OE) (ℤ_[l] ⊗[ℤ] OE))]) → x = 0 := by
    intro x hx
    apply bR.repr.injective
    apply Finsupp.ext
    intro i
    rw [map_zero, Finsupp.zero_apply]
    apply hZ.toIsHausdorff.haus
    intro n
    rw [SModEq.sub_mem, sub_zero, key]
    have h := hx n
    rw [SModEq.sub_mem, sub_zero, key, hcoord] at h
    exact h i
  have prec : ∀ f : ℕ → ℤ_[l] ⊗[ℤ] OE, (∀ {m n : ℕ}, m ≤ n → f m ≡ f n
      [SMOD (Ideal.span {((l : ℕ) : ℤ_[l] ⊗[ℤ] OE)} ^ m • ⊤ : Submodule (ℤ_[l] ⊗[ℤ] OE) (ℤ_[l] ⊗[ℤ] OE))]) →
      ∃ L, ∀ n, f n ≡ L [SMOD (Ideal.span {((l : ℕ) : ℤ_[l] ⊗[ℤ] OE)} ^ n • ⊤ :
        Submodule (ℤ_[l] ⊗[ℤ] OE) (ℤ_[l] ⊗[ℤ] OE))] := by
    intro f hf
    have hci : ∀ i, ∃ Li : ℤ_[l], ∀ n, bR.repr (f n) i ≡ Li
        [SMOD (Ideal.span {((l : ℕ) : ℤ_[l])} ^ n • ⊤ : Submodule ℤ_[l] ℤ_[l])] := by
      intro i
      apply hZ.toIsPrecomplete.prec
      intro m n hmn
      have h := hf hmn
      rw [SModEq.sub_mem, key, hcoord] at h
      rw [SModEq.sub_mem, key]
      obtain ⟨c, hc⟩ := h i
      exact ⟨c, by rw [← hc, map_sub, Finsupp.sub_apply]⟩
    choose L hL using hci
    refine ⟨∑ i, L i • bR i, fun n => ?_⟩
    rw [SModEq.sub_mem, key, hcoord]
    intro i
    have h := hL i n
    rw [SModEq.sub_mem, key] at h
    obtain ⟨c, hc⟩ := h
    exact ⟨c, by rw [map_sub, Finsupp.sub_apply, bR.repr_sum_self, hc]⟩
  haveI : IsHausdorff (Ideal.span {((l : ℕ) : ℤ_[l] ⊗[ℤ] OE)}) (ℤ_[l] ⊗[ℤ] OE) := ⟨haus⟩
  haveI : IsPrecomplete (Ideal.span {((l : ℕ) : ℤ_[l] ⊗[ℤ] OE)}) (ℤ_[l] ⊗[ℤ] OE) := ⟨fun f hf => prec f hf⟩
  exact IsAdicComplete.mk

variable {R : Type} [CommRing R] [IsLocalRing R] [Algebra ℤ_[l] R]

def chi (τ : OE →+* R) : (ℤ_[l] ⊗[ℤ] OE) →+* ResidueField R := (residue R).comp (tauX τ).toRingHom

theorem chi_apply (τ : OE →+* R) (s : ℤ_[l] ⊗[ℤ] OE) : chi τ s = residue R (tauX τ s) := rfl

theorem chi_one_tmul (τ : OE →+* R) (x : OE) : chi τ ((1 : ℤ_[l]) ⊗ₜ[ℤ] x) = residue R (τ x) := by
  rw [chi_apply, tauX_tmul, map_one, one_mul]

theorem chi_l (hl : ((l : ℕ) : R) ∈ maximalIdeal R) (τ : OE →+* R) (s : ℤ_[l] ⊗[ℤ] OE) :
    chi τ (((l : ℕ) : ℤ_[l] ⊗[ℤ] OE) * s) = 0 := by
  have hl0 : ((l : ℕ) : ResidueField R) = 0 := by
    rw [← map_natCast (residue R), residue_eq_zero_iff]
    exact hl
  rw [map_mul, map_natCast, hl0, zero_mul]

theorem chi_alg (τ : OE →+* R) (r : ℤ_[l]) :
    chi τ (algebraMap ℤ_[l] (ℤ_[l] ⊗[ℤ] OE) r) = ((residue R).comp (algebraMap ℤ_[l] R)) r := by
  rw [chi_apply, AlgHom.commutes]
  rfl

variable {d : ℕ} [NeZero d] (em : ZMod d → OE →+* R)

theorem res_frob (hfrob : ∀ a x, em (a + 1) x - em a x ^ l ∈ maximalIdeal R) (a : ZMod d) (x : OE) :
    residue R (em (a + 1) x) = residue R (em a x) ^ l := by
  have h := (residue_eq_zero_iff _).mpr (hfrob a x)
  rw [map_sub, map_pow, sub_eq_zero] at h
  exact h

theorem res_frob_pow (hfrob : ∀ a x, em (a + 1) x - em a x ^ l ∈ maximalIdeal R) (a : ZMod d) (x : OE) :
    ∀ k : ℕ, residue R (em (a + (k : ZMod d)) x) = residue R (em a x) ^ (l ^ k) := by
  intro k
  induction k with
  | zero => simp
  | succ k ih =>
    rw [Nat.cast_succ, ← add_assoc, res_frob em hfrob, ih, ← pow_mul, Nat.pow_succ l k]

theorem mem_all (hfrob : ∀ a x, em (a + 1) x - em a x ^ l ∈ maximalIdeal R) {x : OE}
    (h : em 0 x ∈ maximalIdeal R) (a : ZMod d) : em a x ∈ maximalIdeal R := by
  have hk := res_frob_pow em hfrob 0 x a.val
  rw [zero_add, ZMod.natCast_zmod_val] at hk
  rw [← residue_eq_zero_iff, hk, (residue_eq_zero_iff _).mpr h,
    zero_pow (pow_ne_zero _ (Fact.out : l.Prime).ne_zero)]

theorem key (hl : ((l : ℕ) : R) ∈ maximalIdeal R)
    (hfrob : ∀ a x, em (a + 1) x - em a x ^ l ∈ maximalIdeal R) {ε : OE}
    (hε : ∀ x : OE, (∀ a, em a x ∈ maximalIdeal R) → ∃ y, ε * x = (l : OE) * y)
    {e z : ℤ_[l] ⊗[ℤ] OE} (he : e - 1 ⊗ₜ ε = ((l : ℕ) : ℤ_[l] ⊗[ℤ] OE) * z) {s : ℤ_[l] ⊗[ℤ] OE}
    (hs : e * s = s) (h0 : chi (em 0) s = 0) : ∃ w, s = ((l : ℕ) : ℤ_[l] ⊗[ℤ] OE) * w := by
  obtain ⟨x, s', hs'⟩ := decomp s
  have hx0 : em 0 x ∈ maximalIdeal R := by
    rw [hs', map_add (f := _), chi_one_tmul, chi_l hl, add_zero, residue_eq_zero_iff] at h0
    exact h0
  obtain ⟨y, hy⟩ := hε x (mem_all em hfrob hx0)
  have hkey : (1 : ℤ_[l]) ⊗ₜ[ℤ] ε * (1 ⊗ₜ x) = ((l : ℕ) : ℤ_[l] ⊗[ℤ] OE) * (1 ⊗ₜ y) := by
    rw [Algebra.TensorProduct.tmul_mul_tmul, one_mul, hy, natCast_mul_tmul, mul_one, natCast_tmul]
  refine ⟨1 ⊗ₜ y + z * (1 ⊗ₜ x) + e * s', ?_⟩
  linear_combination (-1 : ℤ_[l] ⊗[ℤ] OE) * hs + e * hs' + (1 ⊗ₜ x) * he + hkey

end T

end Formalism.L2.FormalSeriesBounds.UpFBr.Pl
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.CharacterGerms.NatCastMulTmul =====

-- ===== clump member: Formalism.LocalToGlobal.CharacterGerms.CompleteOfBasis =====
-- clump-header: {"m": "Formalism.LocalToGlobal.CharacterGerms.CompleteOfBasis", "h": "module\n\npublic import Mathlib.RingTheory.AdicCompletion.Basic\npublic import Lemmata.MiscLemmasH.Imports\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open TensorProduct IsLocalRing Polynomial

namespace Formalism.L2.FormalSeriesBounds.UpFBr.Pl

section Lift

variable {A : Type} [CommRing A] (I : Ideal A)

theorem idem_zero [IsHausdorff I A] {f : A} (h : f * f = f) (hf : f ∈ I) : f = 0 := by
  refine IsHausdorff.haus (I := I) ‹_› f fun n => ?_
  rw [SModEq.zero, Ideal.smul_eq_mul, Ideal.mul_top]
  rcases n with _ | n
  · simp
  · have he : IsIdempotentElem f := h
    rw [← he.pow_succ_eq n]
    exact Ideal.pow_mem_pow hf _

end Lift

end Formalism.L2.FormalSeriesBounds.UpFBr.Pl
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.CharacterGerms.CompleteOfBasis =====

-- ===== clump member: Formalism.LocalToGlobal.CharacterGerms.DetNeZeroOfChars =====
-- clump-header: {"m": "Formalism.LocalToGlobal.CharacterGerms.DetNeZeroOfChars", "h": "module\n\npublic import Mathlib.LinearAlgebra.Matrix.Determinant.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.LinearAlgebra.Dimension.Finite\npublic import Mathlib.LinearAlgebra.Matrix.ToLinearEquiv\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.FormalSeriesBounds.UpFBr.Pl

section Chars

variable {F A L : Type} [CommRing F] [CommRing A] [Algebra F A] [Field L] {ι' ι : Type} [Fintype ι'] [Fintype ι]

theorem char_indep (χ : ι' → A →+* L) (hχ : Function.Injective χ) (φ : F →+* L)
    (hφ : ∀ j r, χ j (algebraMap F A r) = φ r) (e : A) (he : ∀ j, χ j e = 1) (b : ι → A)
    (hb : ∀ x : A, ∃ r : ι → F, e * x = ∑ i, r i • b i) (c : ι' → L) (hc : ∀ i, ∑ j, c j * χ j (b i) = 0) :
    c = 0 := by
  have key : ∀ x : A, ∑ j, c j * χ j x = 0 := by
    intro x
    obtain ⟨r, hr⟩ := hb x
    have hx : ∀ j, χ j x = ∑ i, φ (r i) * χ j (b i) := by
      intro j
      have h1 : χ j (e * x) = χ j x := by rw [map_mul, he, one_mul]

      rw [← h1, hr, map_sum]
      refine Finset.sum_congr rfl fun i _ => ?_
      rw [Algebra.smul_def, map_mul, hφ]
    calc ∑ j, c j * χ j x = ∑ j, ∑ i, c j * (φ (r i) * χ j (b i)) := by
          refine Finset.sum_congr rfl fun j _ => ?_
          rw [hx j, Finset.mul_sum]
      _ = ∑ i, φ (r i) * ∑ j, c j * χ j (b i) := by
          rw [Finset.sum_comm]
          refine Finset.sum_congr rfl fun i _ => ?_
          rw [Finset.mul_sum]
          refine Finset.sum_congr rfl fun j _ => ?_
          ring
      _ = 0 := by simp [hc]
  have hli : LinearIndependent L (fun j => ((χ j).toMonoidHom : A → L)) := by
    have h := (linearIndependent_monoidHom A L).comp (fun j => (χ j).toMonoidHom) (by
      intro j k hjk
      apply hχ
      ext x
      exact DFunLike.congr_fun hjk x)
    exact h
  funext j
  have h2 := Fintype.linearIndependent_iff.mp hli c (by
    funext x
    rw [Finset.sum_apply]
    exact key x)
  exact h2 j

theorem card_le_of_chars (χ : ι' → A →+* L) (hχ : Function.Injective χ) (φ : F →+* L)
    (hφ : ∀ j r, χ j (algebraMap F A r) = φ r) (e : A) (he : ∀ j, χ j e = 1) (b : ι → A)
    (hb : ∀ x : A, ∃ r : ι → F, e * x = ∑ i, r i • b i) : Fintype.card ι' ≤ Fintype.card ι := by
  have hli : LinearIndependent L (fun j : ι' => fun i : ι => χ j (b i)) := by
    rw [Fintype.linearIndependent_iff]
    intro g hg
    have h0 := char_indep χ hχ φ hφ e he b hb g (fun i => by
      have h3 := congrFun hg i
      rw [Finset.sum_apply] at h3
      exact h3)
    intro j
    simp [h0]
  simpa using hli.fintype_card_le_finrank

theorem det_ne_zero_of_chars [DecidableEq ι] (χ : ι → A →+* L) (hχ : Function.Injective χ) (φ : F →+* L)
    (hφ : ∀ j r, χ j (algebraMap F A r) = φ r) (e : A) (he : ∀ j, χ j e = 1) (b : ι → A)
    (hb : ∀ x : A, ∃ r : ι → F, e * x = ∑ i, r i • b i) : (Matrix.of fun i j => χ j (b i)).det ≠ 0 := by
  intro hdet
  obtain ⟨v, hv0, hv⟩ := Matrix.exists_mulVec_eq_zero_iff.mpr hdet
  apply hv0
  apply char_indep χ hχ φ hφ e he b hb v
  intro i
  have h := congrFun hv i
  calc ∑ j, v j * χ j (b i) = ∑ j, χ j (b i) * v j :=
        Finset.sum_congr rfl fun j _ => mul_comm _ _
    _ = 0 := by
        first
        | exact h

end Chars

section Label

end Label

end Formalism.L2.FormalSeriesBounds.UpFBr.Pl
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.CharacterGerms.DetNeZeroOfChars =====

-- ===== clump member: Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrPlP =====
-- clump-header: {"m": "Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrPlP", "h": "module\n\npublic import Formalism.LocalToGlobal.CharacterGerms.NatCastMulTmul\npublic import Formalism.LocalToGlobal.CharacterGerms.CompleteOfBasis\npublic import Formalism.LocalToGlobal.CharacterGerms.DetNeZeroOfChars\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.GroupTheory.Nilpotent\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.Padics.RingHoms\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.FieldTheory.Finite.Basic\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open TensorProduct IsLocalRing Polynomial

namespace Formalism.L2.FormalSeriesBounds.UpFBr.Pl

section Main

variable {l : ℕ} [Fact l.Prime] {OE : Type} [CommRing OE]

theorem exists_e [Module.Free ℤ OE] [Module.Finite ℤ OE] (ε : OE) (hε1 : ∃ y, ε * ε - ε = (l : OE) * y) :
    ∃ e z : ℤ_[l] ⊗[ℤ] OE, e * e = e ∧ e - 1 ⊗ₜ ε = ((l : ℕ) : ℤ_[l] ⊗[ℤ] OE) * z := by
  have := completeA (l := l) (OE := OE)
  obtain ⟨y, hy⟩ := hε1
  have h : ((1 : ℤ_[l]) ⊗ₜ[ℤ] ε) * ((1 : ℤ_[l]) ⊗ₜ[ℤ] ε) - (1 : ℤ_[l]) ⊗ₜ[ℤ] ε ∈
      Ideal.span {((l : ℕ) : ℤ_[l] ⊗[ℤ] OE)} := by
    rw [Ideal.mem_span_singleton']
    refine ⟨(1 : ℤ_[l]) ⊗ₜ[ℤ] y, ?_⟩
    rw [Algebra.TensorProduct.tmul_mul_tmul, one_mul, ← TensorProduct.tmul_sub, hy, mul_comm, natCast_mul_tmul,
      mul_one, natCast_tmul]
  obtain ⟨e, he, he'⟩ := _root_.Bl.SecondBlockLemmaI.goal1 _ _ h
  rw [Ideal.mem_span_singleton'] at he'
  obtain ⟨z, hz⟩ := he'
  exact ⟨e, z, he, by rw [← hz, mul_comm]⟩

variable {R : Type} [CommRing R] [IsDomain R] [IsLocalRing R] [Algebra ℤ_[l] R] {d : ℕ} [NeZero d]
  (em : ZMod d → OE →+* R)

theorem chi_e (hl : ((l : ℕ) : R) ∈ maximalIdeal R) {ε : OE} (hε2 : ∀ a, em a ε - 1 ∈ maximalIdeal R)
    {e z : ℤ_[l] ⊗[ℤ] OE} (he : e - 1 ⊗ₜ ε = ((l : ℕ) : ℤ_[l] ⊗[ℤ] OE) * z) (a : ZMod d) : chi (em a) e = 1 := by
  have ht : tauX (l := l) (em a) (1 ⊗ₜ ε) = em a ε := by
    simp [tauX, Algebra.TensorProduct.lift_tmul]
  have he' : e = 1 ⊗ₜ ε + ((l : ℕ) : ℤ_[l] ⊗[ℤ] OE) * z := sub_eq_iff_eq_add'.1 he
  change residue R (tauX (l := l) (em a) e) = 1
  have h1 : residue R ((l : ℕ) : R) = 0 := by
    rw [IsLocalRing.residue_eq_zero_iff]
    exact hl
  have h2 : residue R (em a ε) = 1 := by
    rw [← sub_eq_zero, ← map_one (residue R), ← map_sub, IsLocalRing.residue_eq_zero_iff]
    exact hε2 a
  rw [he', map_add (f := _), map_mul, map_natCast, ht, map_add (f := _), map_mul, h1, h2, zero_mul, add_zero]

theorem tau_e (hl : ((l : ℕ) : R) ∈ maximalIdeal R) {ε : OE} (hε2 : ∀ a, em a ε - 1 ∈ maximalIdeal R)
    {e z : ℤ_[l] ⊗[ℤ] OE} (hee : e * e = e) (he : e - 1 ⊗ₜ ε = ((l : ℕ) : ℤ_[l] ⊗[ℤ] OE) * z) (a : ZMod d) :
    tauX (em a) e = 1 := by
  have hc := chi_e em hl hε2 he a
  have hid : tauX (l := l) (em a) e * tauX (l := l) (em a) e = tauX (l := l) (em a) e := by
    rw [← map_mul, hee]
  have h2 : tauX (l := l) (em a) e * (tauX (l := l) (em a) e - 1) = 0 := by
    rw [mul_sub, hid, mul_one, sub_self]
  rcases mul_eq_zero.1 h2 with h0 | h1
  · exfalso
    have h3 : chi (l := l) (em a) e = 0 := by
      change residue R (tauX (l := l) (em a) e) = 0
      rw [h0, map_zero]
    rw [hc] at h3
    exact one_ne_zero h3
  · exact sub_eq_zero.1 h1

theorem prim_e [Module.Free ℤ OE] [Module.Finite ℤ OE] (hl : ((l : ℕ) : R) ∈ maximalIdeal R)
    (hfrob : ∀ a x, em (a + 1) x - em a x ^ l ∈ maximalIdeal R) {ε : OE}
    (hε2 : ∀ a, em a ε - 1 ∈ maximalIdeal R)
    (hε3 : ∀ x : OE, (∀ a, em a x ∈ maximalIdeal R) → ∃ y, ε * x = (l : OE) * y)
    {e z : ℤ_[l] ⊗[ℤ] OE} (hee : e * e = e) (he : e - 1 ⊗ₜ ε = ((l : ℕ) : ℤ_[l] ⊗[ℤ] OE) * z)
    (f : ℤ_[l] ⊗[ℤ] OE) (hf : f * f = f) (hfe : f * e = f) : f = 0 ∨ f = e := by
  have := completeA (l := l) (OE := OE)
  have hz : ∀ g : ℤ_[l] ⊗[ℤ] OE, g * g = g → e * g = g → chi (em 0) g = 0 → g = 0 := by
    intro g hg heg h0
    obtain ⟨w, hw⟩ := key em hl hfrob hε3 he heg h0
    exact idem_zero (Ideal.span {((l : ℕ) : ℤ_[l] ⊗[ℤ] OE)}) hg
      (by rw [hw]; exact Ideal.mul_mem_right _ _ (Ideal.mem_span_singleton_self _))
  have hu : chi (em 0) f * chi (em 0) f = chi (em 0) f := by rw [← map_mul, hf]
  have hu' : chi (em 0) f * (chi (em 0) f - 1) = 0 := by linear_combination hu
  rcases mul_eq_zero.1 hu' with h | h
  · left
    exact hz f hf (by rw [mul_comm]; exact hfe) h
  · right
    have := hz (e - f) (by linear_combination hee - 2 * hfe + hf) (by linear_combination hee - hfe)
      (by rw [map_sub, chi_e em hl hε2 he 0, sub_eq_zero.1 h, sub_self])
    exact (sub_eq_zero.1 this).symm

theorem hb_of {ι : Type} [Fintype ι] (e : ℤ_[l] ⊗[ℤ] OE)
    (b : Module.Basis ι ℤ_[l] (LinearMap.range (LinearMap.mulLeft ℤ_[l] e))) (x : ℤ_[l] ⊗[ℤ] OE) :
    ∃ r : ι → ℤ_[l], e * x = ∑ i, r i • (b i : ℤ_[l] ⊗[ℤ] OE) := by
  have hy : e * x ∈ LinearMap.range (LinearMap.mulLeft ℤ_[l] e) := ⟨x, by simp⟩
  refine ⟨b.repr ⟨e * x, hy⟩, ?_⟩
  have h := congrArg Subtype.val (b.sum_repr ⟨e * x, hy⟩)
  simp only [Submodule.coe_sum, Submodule.coe_smul] at h
  exact h.symm

theorem chi_inj (hsep : ∀ a a', a ≠ a' → ∃ x, em a x - em a' x ∉ maximalIdeal R) :
    Function.Injective fun a => chi (l := l) (em a) := by
  have ht : ∀ τ : OE →+* R, ∀ x : OE, tauX (l := l) τ (1 ⊗ₜ x) = τ x := by
    intro τ x
    simp [tauX, Algebra.TensorProduct.lift_tmul]
  intro a a' hchi
  by_contra hne
  obtain ⟨x, hx⟩ := hsep a a' hne
  apply hx
  have h1 : chi (l := l) (em a) (1 ⊗ₜ x) = chi (l := l) (em a') (1 ⊗ₜ x) := by
    rw [show chi (l := l) (em a) = chi (l := l) (em a') from hchi]
  change residue R (tauX (l := l) (em a) (1 ⊗ₜ x)) = residue R (tauX (l := l) (em a') (1 ⊗ₜ x)) at h1
  rw [ht, ht, ← sub_eq_zero, ← map_sub, IsLocalRing.residue_eq_zero_iff] at h1
  exact h1

theorem le_rank (hl : ((l : ℕ) : R) ∈ maximalIdeal R)
    (hsep : ∀ a a', a ≠ a' → ∃ x, em a x - em a' x ∉ maximalIdeal R) {ε : OE}
    (hε2 : ∀ a, em a ε - 1 ∈ maximalIdeal R)
    {e z : ℤ_[l] ⊗[ℤ] OE} (he : e - 1 ⊗ₜ ε = ((l : ℕ) : ℤ_[l] ⊗[ℤ] OE) * z) {n : ℕ}
    (b : Module.Basis (Fin n) ℤ_[l] (LinearMap.range (LinearMap.mulLeft ℤ_[l] e))) : d ≤ n := by
  have := card_le_of_chars (F := ℤ_[l]) (fun a => chi (l := l) (em a)) (chi_inj em hsep)
    ((residue R).comp (algebraMap ℤ_[l] R)) (fun a r => chi_alg (em a) r) e (chi_e em hl hε2 he)
    (fun i => (b i : ℤ_[l] ⊗[ℤ] OE)) (hb_of e b)
  simpa [ZMod.card] using this

theorem chi_pow (hl : ((l : ℕ) : R) ∈ maximalIdeal R)
    (hfrob : ∀ a x, em (a + 1) x - em a x ^ l ∈ maximalIdeal R) (s : ℤ_[l] ⊗[ℤ] OE) :
    chi (em 0) s ^ (l ^ d) = chi (em 0) s := by
  have hl0 : residue R ((l : ℕ) : R) = 0 := by
    rw [IsLocalRing.residue_eq_zero_iff]
    exact hl
  have hlk : ((l : ℕ) : IsLocalRing.ResidueField R) = 0 := by
    have h := map_natCast (residue R) l
    rw [← h]
    exact hl0
  haveI : CharP (IsLocalRing.ResidueField R) l := by
    exact (CharP.charP_iff_prime_eq_zero (Fact.out : l.Prime)).2 hlk
  have hstep : ∀ (a : ZMod d) (x : OE), residue R (em (a + 1) x) = residue R (em a x) ^ l := by
    intro a x
    rw [← map_pow, ← sub_eq_zero, ← map_sub, IsLocalRing.residue_eq_zero_iff]
    exact hfrob a x
  have hiter : ∀ (n : ℕ) (x : OE), residue R (em (n : ZMod d) x) = residue R (em 0 x) ^ (l ^ n) := by
    intro n x
    induction n with
    | zero => simp
    | succ n ih => rw [Nat.cast_succ, hstep, ih, ← pow_mul, pow_succ]
  have htx : ∀ x : OE, tauX (l := l) (em 0) (1 ⊗ₜ x) = em 0 x := by
    intro x
    simp [tauX, Algebra.TensorProduct.lift_tmul]
  have hx : ∀ x : OE, chi (l := l) (em 0) (1 ⊗ₜ x) ^ (l ^ d) = chi (l := l) (em 0) (1 ⊗ₜ x) := by
    intro x
    change residue R (tauX (l := l) (em 0) (1 ⊗ₜ x)) ^ (l ^ d) = residue R (tauX (l := l) (em 0) (1 ⊗ₜ x))
    rw [htx, ← hiter d x, ZMod.natCast_self]
  have hnat : ∀ a : ℕ, ((a : IsLocalRing.ResidueField R)) ^ (l ^ d) = (a : IsLocalRing.ResidueField R) := by
    intro a
    have h0 : ((a : ZMod l)) ^ (l ^ d) = (a : ZMod l) := ZMod.pow_card_pow _
    have h := congrArg (ZMod.castHom (dvd_refl l) (IsLocalRing.ResidueField R)) h0
    rwa [map_pow, map_natCast] at h
  have hc : ∀ c : ℤ_[l], chi (l := l) (em 0) (c ⊗ₜ (1 : OE)) ^ (l ^ d) = chi (l := l) (em 0) (c ⊗ₜ (1 : OE)) := by
    intro c
    have htc : tauX (l := l) (em 0) (c ⊗ₜ (1 : OE)) = algebraMap ℤ_[l] R c := by
      simp [tauX, Algebra.TensorProduct.lift_tmul]
    change residue R (tauX (l := l) (em 0) (c ⊗ₜ (1 : OE))) ^ (l ^ d) =
      residue R (tauX (l := l) (em 0) (c ⊗ₜ (1 : OE)))
    rw [htc]
    obtain ⟨y, hy⟩ := Ideal.mem_span_singleton'.1 (PadicInt.appr_spec 1 c)
    obtain ⟨a, ha⟩ : ∃ a, a = c.appr 1 := ⟨_, rfl⟩
    rw [← ha, pow_one] at hy
    have hc' : c = ((a : ℕ) : ℤ_[l]) + y * ((l : ℕ) : ℤ_[l]) := by
      rw [hy]
      ring
    have hr : residue R (algebraMap ℤ_[l] R c) = (a : IsLocalRing.ResidueField R) := by
      rw [hc', map_add (f := _), map_mul, map_natCast, map_natCast, map_add (f := _), map_mul, hl0, mul_zero, add_zero,
        map_natCast]
    rw [hr, hnat]
  induction s using TensorProduct.induction_on with
  | zero => rw [map_zero, zero_pow (pow_ne_zero _ (Fact.out : l.Prime).ne_zero)]
  | tmul c x =>
    have hsplit : c ⊗ₜ[ℤ] x = (c ⊗ₜ[ℤ] (1 : OE)) * ((1 : ℤ_[l]) ⊗ₜ[ℤ] x) := by
      rw [Algebra.TensorProduct.tmul_mul_tmul, mul_one, one_mul]
    rw [hsplit, map_mul, mul_pow, hc c, hx x]
  | add s t hs ht => rw [map_add (f := _), add_pow_char_pow, hs, ht]

theorem rank_le (hl : ((l : ℕ) : R) ∈ maximalIdeal R)
    (hfrob : ∀ a x, em (a + 1) x - em a x ^ l ∈ maximalIdeal R) {ε : OE}
    (hε3 : ∀ x : OE, (∀ a, em a x ∈ maximalIdeal R) → ∃ y, ε * x = (l : OE) * y)
    {e z : ℤ_[l] ⊗[ℤ] OE} (hee : e * e = e) (he : e - 1 ⊗ₜ ε = ((l : ℕ) : ℤ_[l] ⊗[ℤ] OE) * z) {n : ℕ}
    (b : Module.Basis (Fin n) ℤ_[l] (LinearMap.range (LinearMap.mulLeft ℤ_[l] e))) : n ≤ d := by
  classical
  have hl1 : 1 < l := (Fact.out : l.Prime).one_lt
  have hq : 1 < l ^ d := Nat.one_lt_pow (NeZero.ne d) hl1
  have hP0 : (X ^ (l ^ d) - X : (ResidueField R)[X]) ≠ 0 := Polynomial.X_pow_sub_X_ne_zero hq
  have hroot : ∀ s : ℤ_[l] ⊗[ℤ] OE, chi (em 0) s ∈ (X ^ (l ^ d) - X : (ResidueField R)[X]).roots.toFinset := by
    intro s
    rw [Multiset.mem_toFinset, mem_roots hP0, IsRoot.def, eval_sub, eval_pow, eval_X, chi_pow em hl hfrob, sub_self]
  have heb : ∀ i, e * (b i : ℤ_[l] ⊗[ℤ] OE) = b i := by
    intro i
    obtain ⟨x, hx⟩ := (b i).2
    rw [← hx]
    show e * (e * x) = e * x
    rw [← mul_assoc, hee]
  let S : (Fin n → Fin l) → ℤ_[l] ⊗[ℤ] OE := fun r => ∑ i, (((r i : ℕ) : ℤ_[l])) • (b i : ℤ_[l] ⊗[ℤ] OE)
  have heS : ∀ r, e * S r = S r := by
    intro r
    simp only [S, Finset.mul_sum, mul_smul_comm, heb]
  let Ψ : (Fin n → Fin l) → ResidueField R := fun r => chi (em 0) (S r)
  have hinj : Function.Injective Ψ := by
    intro r r' h
    have h0 : chi (em 0) (S r - S r') = 0 := by
      rw [map_sub, sub_eq_zero]
      exact h
    obtain ⟨w, hw⟩ := key em hl hfrob hε3 he (s := S r - S r') (by rw [mul_sub, heS, heS]) h0
    obtain ⟨c, hc⟩ := hb_of e b w
    have h1 : S r - S r' = ∑ i, (((l : ℕ) : ℤ_[l]) * c i) • (b i : ℤ_[l] ⊗[ℤ] OE) := by
      have h2 : S r - S r' = ((l : ℕ) : ℤ_[l] ⊗[ℤ] OE) * (e * w) := by
        have h3 : e * (S r - S r') = S r - S r' := by rw [mul_sub, heS, heS]
        rw [← h3, hw]
        ring
      rw [h2, hc, Finset.mul_sum]
      refine Finset.sum_congr rfl fun i _ => ?_
      rw [mul_smul, ← map_natCast (algebraMap ℤ_[l] (ℤ_[l] ⊗[ℤ] OE)), ← Algebra.smul_def]
    have h4 : ∑ i, ((((r i : ℕ) : ℤ_[l])) - (((r' i : ℕ) : ℤ_[l])) - ((l : ℕ) : ℤ_[l]) * c i) • b i = 0 := by
      apply Subtype.ext
      have : ∑ i, ((((r i : ℕ) : ℤ_[l])) - (((r' i : ℕ) : ℤ_[l])) - ((l : ℕ) : ℤ_[l]) * c i) •
          (b i : ℤ_[l] ⊗[ℤ] OE) = 0 := by
        simp only [sub_smul, Finset.sum_sub_distrib]
        rw [← h1]
        simp only [S]
        ring
      simpa using this
    have h5 := Fintype.linearIndependent_iff.1 b.linearIndependent _ h4
    funext i
    have h6 := congrArg (PadicInt.toZMod (p := l)) (h5 i)
    simp only [map_sub, map_mul, map_natCast, CharP.cast_eq_zero, zero_mul, sub_zero, map_zero] at h6
    have h7 : ((r i : ℕ) : ZMod l) = ((r' i : ℕ) : ZMod l) := sub_eq_zero.1 h6
    rw [ZMod.natCast_eq_natCast_iff', Nat.mod_eq_of_lt (r i).2, Nat.mod_eq_of_lt (r' i).2] at h7
    exact Fin.ext h7
  have h8 : (Finset.univ : Finset (Fin n → Fin l)).card ≤
      (X ^ (l ^ d) - X : (ResidueField R)[X]).roots.toFinset.card :=
    Finset.card_le_card_of_injOn Ψ (fun r _ => hroot _) (fun r _ r' _ h => hinj h)
  have h9 : (X ^ (l ^ d) - X : (ResidueField R)[X]).roots.toFinset.card ≤ l ^ d := by
    refine le_trans (Multiset.toFinset_card_le _) (le_trans (card_roots' _) ?_)
    rw [Polynomial.natDegree_X_pow_sub_X hq]
  have h10 : l ^ n ≤ l ^ d := by
    have : (Finset.univ : Finset (Fin n → Fin l)).card = l ^ n := by simp
    rw [← this]
    exact le_trans h8 h9
  exact (Nat.pow_le_pow_iff_right hl1).1 h10

theorem tauX_inj {τ τ' : OE →+* R} (h : ∀ s, tauX (l := l) τ s = tauX τ' s) : τ = τ' := by
  ext x
  have hx := h (1 ⊗ₜ x)
  simpa [tauX, Algebra.TensorProduct.lift_tmul] using hx

theorem em_inj (hsep : ∀ a a', a ≠ a' → ∃ x, em a x - em a' x ∉ maximalIdeal R) : Function.Injective em := by
  intro a a' h
  by_contra hne
  obtain ⟨x, hx⟩ := hsep a a' hne
  apply hx
  rw [h, sub_self]
  exact Ideal.zero_mem _

theorem emb_eq (hsep : ∀ a a', a ≠ a' → ∃ x, em a x - em a' x ∉ maximalIdeal R)
    {e : ℤ_[l] ⊗[ℤ] OE} (hte : ∀ a, tauX (em a) e = 1)
    (b : Module.Basis (Fin d) ℤ_[l] (LinearMap.range (LinearMap.mulLeft ℤ_[l] e)))
    (τ : OE →+* R) (hτ : tauX τ e = 1) : ∃ a, τ = em a := by
  by_contra hne
  push Not at hne
  let ff : Option (ZMod d) → OE →+* R := fun o => o.elim τ em
  have hff : Function.Injective ff := by
    intro o o' h
    cases o with
    | none =>
      cases o' with
      | none => rfl
      | some a' => exact absurd h (hne a')
    | some a =>
      cases o' with
      | none => exact absurd h.symm (hne a)
      | some a' => exact congrArg some (em_inj em hsep h)
  let χ : Option (ZMod d) → (ℤ_[l] ⊗[ℤ] OE) →+* FractionRing R :=
    fun o => (algebraMap R (FractionRing R)).comp (tauX (ff o)).toRingHom
  have hχ : Function.Injective χ := by
    intro o o' h
    apply hff
    apply tauX_inj (l := l)
    intro s
    exact IsFractionRing.injective R (FractionRing R) (DFunLike.congr_fun h s)
  have := card_le_of_chars (F := ℤ_[l]) χ hχ ((algebraMap R (FractionRing R)).comp (algebraMap ℤ_[l] R))
    (fun o r => by
      show algebraMap R (FractionRing R) (tauX (ff o) (algebraMap ℤ_[l] _ r)) = _
      rw [AlgHom.commutes]
      rfl) e
    (fun o => by
      show algebraMap R (FractionRing R) (tauX (ff o) e) = 1
      cases o with
      | none => show algebraMap R (FractionRing R) (tauX τ e) = 1; rw [hτ, map_one]
      | some a => show algebraMap R (FractionRing R) (tauX (em a) e) = 1; rw [hte, map_one])
    (fun i => (b i : ℤ_[l] ⊗[ℤ] OE)) (hb_of e b)
  simp [ZMod.card] at this

theorem unit_det (hsep : ∀ a a', a ≠ a' → ∃ x, em a x - em a' x ∉ maximalIdeal R)
    {e : ℤ_[l] ⊗[ℤ] OE} {n : ℕ} (b : Module.Basis (Fin n) ℤ_[l] (LinearMap.range (LinearMap.mulLeft ℤ_[l] e)))
    (t : Fin n ≃ EmbX (R := R) e) (jj : ZMod d ≃ Fin n)
    (ht : ∀ a, ((t (jj a) : EmbX (R := R) e) : OE →+* R) = em a) :
    IsUnit (Matrix.det (Matrix.of fun i j =>
      tauX ((t j : EmbX (R := R) e) : OE →+* R) (b i : ℤ_[l] ⊗[ℤ] OE))) := by
  have hdet := det_ne_zero_of_chars (F := ℤ_[l]) (fun j => chi (l := l) ((t j : EmbX (R := R) e) : OE →+* R))
    (by
      intro j j' h
      obtain ⟨a, rfl⟩ := jj.surjective j
      obtain ⟨a', rfl⟩ := jj.surjective j'
      simp only [ht] at h
      rw [chi_inj em hsep h])
    ((residue R).comp (algebraMap ℤ_[l] R)) (fun j r => chi_alg _ r) e
    (fun j => by rw [chi_apply, (t j).2, map_one])
    (fun i => (b i : ℤ_[l] ⊗[ℤ] OE)) (hb_of e b)
  by_contra hu
  apply hdet
  have h1 := (residue_eq_zero_iff _).2 ((mem_maximalIdeal _).2 hu)
  rw [RingHom.map_det] at h1
  exact h1

theorem placeX_of [Module.Free ℤ OE] [Module.Finite ℤ OE] (hl : ((l : ℕ) : R) ∈ maximalIdeal R)
    (hfrob : ∀ a x, em (a + 1) x - em a x ^ l ∈ maximalIdeal R)
    (hsep : ∀ a a', a ≠ a' → ∃ x, em a x - em a' x ∉ maximalIdeal R) (ε : OE)
    (hε1 : ∃ y, ε * ε - ε = (l : OE) * y) (hε2 : ∀ a, em a ε - 1 ∈ maximalIdeal R)
    (hε3 : ∀ x : OE, (∀ a, em a x ∈ maximalIdeal R) → ∃ y, ε * x = (l : OE) * y) : PlaceX l OE R d em := by
  classical
  obtain ⟨e, z, hee, he⟩ := exists_e ε hε1
  have hte : ∀ a, tauX (em a) e = 1 := tau_e em hl hε2 hee he
  have he0 : e ≠ 0 := by
    intro h0
    have h1 := hte 0
    rw [h0, map_zero] at h1
    exact zero_ne_one h1
  have hprim := prim_e em hl hfrob hε2 hε3 hee he
  haveI : Module.Free ℤ_[l] (ℤ_[l] ⊗[ℤ] OE) := inferInstance
  haveI : Module.Finite ℤ_[l] (ℤ_[l] ⊗[ℤ] OE) := inferInstance
  haveI : Module.Finite ℤ_[l] (LinearMap.range (LinearMap.mulLeft ℤ_[l] e)) := inferInstance
  haveI : Module.Free ℤ_[l] (LinearMap.range (LinearMap.mulLeft ℤ_[l] e)) := by
    first
    | infer_instance
  set n := Module.finrank ℤ_[l] (LinearMap.range (LinearMap.mulLeft ℤ_[l] e)) with hn
  let b := Module.finBasis ℤ_[l] (LinearMap.range (LinearMap.mulLeft ℤ_[l] e))

  have hdn : d = n := le_antisymm (le_rank em hl hsep hε2 he b) (rank_le em hl hfrob hε3 hee he b)
  haveI : NeZero n := ⟨by rw [← hdn]; exact NeZero.ne d⟩

  have hinj : Function.Injective (fun a : ZMod d => (⟨em a, hte a⟩ : EmbX (R := R) e)) :=
    fun a a' h => em_inj em hsep (congrArg Subtype.val h)
  have hsurj : Function.Surjective (fun a : ZMod d => (⟨em a, hte a⟩ : EmbX (R := R) e)) := by
    intro τ
    obtain ⟨a, ha⟩ := emb_eq em hsep hte (b.reindex (finCongr hdn.symm)) τ.1 τ.2
    exact ⟨a, Subtype.ext ha.symm⟩
  let jjr : ZMod d ≃+* Fin n := (ZMod.ringEquivCongr hdn).trans (ZMod.finEquiv n).symm
  let jj : ZMod d ≃ Fin n := jjr.toEquiv
  have hjj : ∀ a, jj (a + 1) = jj a + 1 := by
    intro a
    show jjr (a + 1) = jjr a + 1
    rw [map_add (f := _), map_one]
  let t : Fin n ≃ EmbX (R := R) e := jj.symm.trans (Equiv.ofBijective _ ⟨hinj, hsurj⟩)
  have ht : ∀ a, ((t (jj a) : EmbX (R := R) e) : OE →+* R) = em a := by
    intro a
    show (((Equiv.ofBijective _ ⟨hinj, hsurj⟩) (jj.symm (jj a)) : EmbX (R := R) e) : OE →+* R) = em a
    rw [Equiv.symm_apply_apply]
    rfl
  exact ⟨e, hee, he0, hprim, inferInstance, t, jj, hjj, ht, b, unit_det em hsep b t jj ht⟩

end Main

theorem place_doubling_condition : PlaceCriterionOfIdempotent := by
  unfold PlaceCriterionOfIdempotent
  intro l _ OE _ _ _ _ _ R _ _ _ _ _ hl _ d _ em hfrob hsep hε
  obtain ⟨ε, hε1, hε2, hε3⟩ := hε
  exact placeX_of em hl hfrob hsep ε hε1 hε2 hε3

end Formalism.L2.FormalSeriesBounds.UpFBr.Pl
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrPlP =====

-- ===== clump member: Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrEF =====
-- clump-header: {"m": "Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrEF", "h": "module\n\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrS\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open Classical

namespace Formalism.L2.FormalSeriesBounds

namespace UpFBr

theorem echelon {C : Type} [Field C] (vm : Valuation C NNReal) (n : ℕ) :
    ∀ (k : ℕ) (M : Submodule C (Fin n → C)), Module.finrank C M = k →
    ∃ (s : ℕ) (J : Fin s → Fin n) (B : Fin s → Fin n → C), (∀ i, B i ∈ M) ∧ (∀ i x, vm (B i x) ≤ 1) ∧
      (∀ i i', B i (J i') = if i = i' then 1 else 0) ∧ ∀ v ∈ M, v = ∑ i, v (J i) • B i := by
  intro k
  induction k using Nat.strong_induction_on with
  | _ k ih =>
  intro M hM
  by_cases h0 : ∃ v ∈ M, v ≠ 0
  swap
  · push_neg at h0
    refine ⟨0, Fin.elim0, Fin.elim0, fun i => i.elim0, fun i => i.elim0, fun i => i.elim0,
      fun v hv => ?_⟩
    simp [h0 v hv]
  obtain ⟨v, hvM, hv0⟩ := h0
  obtain ⟨x₀, hx₀⟩ := Function.ne_iff.1 hv0
  obtain ⟨j, -, hjmax⟩ := (Finset.univ : Finset (Fin n)).exists_max_image (fun x => vm (v x))
    ⟨x₀, Finset.mem_univ _⟩
  have hvj : v j ≠ 0 := by
    intro h
    have h1 : vm (v x₀) ≤ vm (v j) := hjmax x₀ (Finset.mem_univ _)
    rw [h, map_zero] at h1
    exact hx₀ ((Valuation.zero_iff vm).1 (le_antisymm h1 zero_le'))

  set v₀ : Fin n → C := (v j)⁻¹ • v with hv₀
  have hv₀j : v₀ j = 1 := by simp [hv₀, hvj]
  have hv₀M : v₀ ∈ M := M.smul_mem _ hvM
  have hv₀le : ∀ x, vm (v₀ x) ≤ 1 := by
    intro x
    have hpos : 0 < vm (v j) := pos_iff_ne_zero.2 ((Valuation.ne_zero_iff vm).2 hvj)
    simp only [hv₀, Pi.smul_apply, smul_eq_mul, map_mul, map_inv₀]
    rw [inv_mul_le_iff₀ hpos, mul_one]
    exact hjmax x (Finset.mem_univ _)
  set M' : Submodule C (Fin n → C) := M ⊓ LinearMap.ker (LinearMap.proj j) with hM'
  have hlt : M' < M := by
    refine lt_of_le_of_ne inf_le_left fun h => ?_
    have h1 : v₀ ∈ M' := h ▸ hv₀M
    have h2 : v₀ j = 0 := (Submodule.mem_inf.1 h1).2
    rw [hv₀j] at h2
    exact one_ne_zero h2
  have hfr : Module.finrank C M' < k := hM ▸ Submodule.finrank_lt_finrank_of_lt hlt
  obtain ⟨s, J', B', hB'M, hB'le, hB'δ, hB'span⟩ := ih _ hfr M' rfl
  have hB'j : ∀ i, B' i j = 0 := fun i => (Submodule.mem_inf.1 (hB'M i)).2
  have hB'M0 : ∀ i, B' i ∈ M := fun i => (Submodule.mem_inf.1 (hB'M i)).1
  set b : Fin n → C := v₀ - ∑ i, v₀ (J' i) • B' i with hb
  have hbM : b ∈ M := M.sub_mem hv₀M (M.sum_mem fun i _ => M.smul_mem _ (hB'M0 i))
  have hbj : b j = 1 := by simp [hb, Finset.sum_apply, hB'j, hv₀j]
  have hbJ : ∀ i', b (J' i') = 0 := by
    intro i'
    simp [hb, Finset.sum_apply, hB'δ]
  have hble : ∀ x, vm (b x) ≤ 1 := by
    intro x
    simp only [hb, Pi.sub_apply, Finset.sum_apply, Pi.smul_apply, smul_eq_mul]
    refine Valuation.map_sub_le _ (hv₀le x) (Valuation.map_sum_le _ fun i _ => ?_)
    rw [map_mul]
    exact mul_le_one' (hv₀le _) (hB'le i x)
  refine ⟨s + 1, (Fin.cons j J' : Fin (s + 1) → Fin n), (Fin.cons b B' : Fin (s + 1) → Fin n → C),
    ?_, ?_, ?_, ?_⟩
  · intro i
    induction i using Fin.cases with
    | zero => simpa using hbM
    | succ i => simpa using hB'M0 i
  · intro i x
    induction i using Fin.cases with
    | zero => simpa using hble x
    | succ i => simpa using hB'le i x
  · intro i i'
    induction i using Fin.cases with
    | zero =>
      induction i' using Fin.cases with
      | zero => simp [hbj]
      | succ i' => simp only [Fin.cons_zero, Fin.cons_succ, hbJ]; rw [if_neg (Fin.succ_ne_zero i').symm]
    | succ i =>
      induction i' using Fin.cases with
      | zero => simp only [Fin.cons_zero, Fin.cons_succ, hB'j]; rw [if_neg (Fin.succ_ne_zero i)]
      | succ i' => simp [hB'δ, Fin.succ_inj]
  · intro w hw
    rw [Fin.sum_univ_succ]
    simp only [Fin.cons_zero, Fin.cons_succ]
    have hw' : w - w j • b ∈ M' := by
      refine Submodule.mem_inf.2 ⟨M.sub_mem hw (M.smul_mem _ hbM), ?_⟩
      simp [LinearMap.mem_ker, hbj]
    have h1 := hB'span _ hw'
    have e : ∀ i, (w - w j • b) (J' i) = w (J' i) := by
      intro i
      simp [hbJ]
    simp only [e] at h1
    rw [← h1]
    abel

theorem eigFreeSt_holds : EigFreeSt := by
  intro C _ vm R _ _ hI n ι L χ
  set f := algebraMap R C
  let M : Submodule C (Fin n → C) :=
    { carrier := {w | ∀ a, ((L a).map f).mulVec w = f (χ a) • w}
      add_mem' := by
        intro w w' hw hw' a
        simp only [Set.mem_setOf_eq] at hw hw' ⊢
        rw [Matrix.mulVec_add, hw a, hw' a, smul_add]
      zero_mem' := by
        intro a
        simp
      smul_mem' := by
        intro c w hw a
        simp only [Set.mem_setOf_eq] at hw ⊢
        rw [Matrix.mulVec_smul, hw a, smul_comm] }
  obtain ⟨s, J, B, hBM, hBle, hBδ, hspan⟩ := echelon vm n _ M rfl
  have hlift : ∀ i x, ∃ r : R, f r = B i x := fun i x => hI.exists_of_le_one (hBle i x)
  choose W hW using hlift
  have hfW : ∀ i, f ∘ W i = B i := fun i => funext (hW i)
  have hmap : ∀ (A : Matrix (Fin n) (Fin n) R) (v : Fin n → R), f ∘ (A.mulVec v) = (A.map f).mulVec (f ∘ v) := by
    intro A v
    funext x

    simp [Matrix.mulVec, dotProduct, map_sum]
  have hinj : Function.Injective f := hI.hom_inj
  have hinjv : ∀ v w : Fin n → R, f ∘ v = f ∘ w → v = w :=
    fun v w h => funext fun x => hinj (congrFun h x)
  refine ⟨s, W, fun i a => ?_, fun v hv => ?_⟩
  · apply hinjv
    rw [hmap, hfW, hBM i a]
    funext x
    simp [hW]
  · have hvM : f ∘ v ∈ M := by
      intro a
      rw [← hmap, hv a]
      funext x
      simp
    refine ⟨fun i => v (J i), ?_, ?_⟩
    · apply hinjv
      have h1 := hspan _ hvM
      funext x
      have hx := congrFun h1 x
      simp only [Finset.sum_apply, Pi.smul_apply, smul_eq_mul, Function.comp_apply] at hx ⊢

      rw [map_sum]
      simp only [map_mul, hW]
      exact hx.symm
    · intro c hc
      funext i
      have h1 := congrFun hc (J i)
      apply hinj
      rw [← h1]

      simp [Finset.sum_apply, map_sum, hW, hBδ]

end UpFBr

end Formalism.L2.FormalSeriesBounds
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrEF =====

-- ===== clump member: Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrPlB =====
-- clump-header: {"m": "Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrPlB", "h": "module\n\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrS\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrPl\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.FormalSeriesBounds

namespace UpFBr

open ReciprocityTheory.ChartRestriction.G.Pdiv.AvDefs

theorem placeSt_of_X (h : Pl.PlaceCriterionOfIdempotent) : PlaceSt := by
  intro l _ OE _ _ _ _ _ R _ _ _ _ _ hl hd d _ em h1 h2 h3
  obtain ⟨e, he1, he2, he3, iN, t, jj, hj, ht, b, hb⟩ := h l OE R hl hd d em h1 h2 h3
  exact ⟨⟨e, he1, he2, he3⟩, iN, t, jj, hj, ht, b, hb⟩

end UpFBr

end Formalism.L2.FormalSeriesBounds
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrPlB =====

-- ===== clump member: Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrRP =====
-- clump-header: {"m": "Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrRP", "h": "module\n\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrR\npublic import Mathlib.RingTheory.AdicCompletion.RingHom\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Classical

namespace Formalism.L2.FormalSeriesBounds

namespace UpFBr

open ValuationFitting

section Val

variable {C : Type} [Field C] (V : VF C)

def bb : NNReal := ((V.l : ℕ) : NNReal)⁻¹

theorem bb_pos : 0 < bb V := by
  simp [bb, V.l_prime.pos]

theorem bb_lt : bb V < 1 := by
  have h : (1 : NNReal) < ((V.l : ℕ) : NNReal) := by exact_mod_cast V.l_prime.one_lt
  exact inv_lt_one_of_one_lt₀ h

variable {V}

theorem exists_real {x : C} (hx : x ≠ 0) : ∃ t : ℝ, V.v x = (t : WithTop ℝ) := by
  have h : V.v x ≠ ⊤ := by rwa [Ne, AddValuation.top_iff]
  obtain ⟨t, ht⟩ := WithTop.ne_top_iff_exists.mp h
  exact ⟨t, ht.symm⟩

variable (V)

def vmFun (x : C) : NNReal := if x = 0 then 0 else bb V ^ ((V.v x).untopD 0)

variable {V}

theorem vmFun_of {x : C} (hx : x ≠ 0) {t : ℝ} (ht : V.v x = (t : WithTop ℝ)) : vmFun V x = bb V ^ t := by
  simp [vmFun, hx, ht]

variable (V)

def vmOf : Valuation C NNReal where
  toFun := vmFun V
  map_zero' := by simp [vmFun]
  map_one' := by
    rw [vmFun_of one_ne_zero (t := 0) (by rw [V.v.map_one]; rfl), NNReal.rpow_zero]
  map_mul' := by
    intro x y
    by_cases hx : x = 0
    · simp [vmFun, hx]
    by_cases hy : y = 0
    · simp [vmFun, hy]
    obtain ⟨t, ht⟩ := exists_real (V := V) hx
    obtain ⟨s, hs⟩ := exists_real (V := V) hy
    rw [vmFun_of hx ht, vmFun_of hy hs, vmFun_of (mul_ne_zero hx hy) (t := t + s)
      (by rw [V.v.map_mul, ht, hs]; rfl), NNReal.rpow_add (bb_pos V).ne']
  map_add_le_max' := by
    intro x y
    by_cases hxy : x + y = 0
    · simp [vmFun, hxy]
    by_cases hx : x = 0
    · simp [hx]
    by_cases hy : y = 0
    · simp [hy]
    obtain ⟨t, ht⟩ := exists_real (V := V) hx
    obtain ⟨s, hs⟩ := exists_real (V := V) hy
    obtain ⟨r, hr⟩ := exists_real (V := V) hxy
    rw [vmFun_of hx ht, vmFun_of hy hs, vmFun_of hxy hr]
    rcases V.v.map_add' x y with h | h
    · rw [ht, hr] at h
      exact le_max_of_le_left (NNReal.rpow_le_rpow_of_exponent_ge (bb_pos V) (bb_lt V).le (WithTop.coe_le_coe.mp h))
    · rw [hs, hr] at h
      exact le_max_of_le_right (NNReal.rpow_le_rpow_of_exponent_ge (bb_pos V) (bb_lt V).le (WithTop.coe_le_coe.mp h))

variable {V}

theorem vmOf_of {x : C} (hx : x ≠ 0) {t : ℝ} (ht : V.v x = (t : WithTop ℝ)) : vmOf V x = bb V ^ t := by
  show vmFun V x = _
  exact vmFun_of hx ht

theorem vmOf_l : vmOf V (V.l : C) = bb V := by
  have hl : (V.l : C) ≠ 0 := by
    intro h
    have h1 := V.v_l
    rw [h, AddValuation.map_zero] at h1
    simp at h1
  rw [vmOf_of hl (t := 1) (by rw [V.v_l]; rfl), NNReal.rpow_one]

theorem valTie_vmOf : ValTie V (vmOf V) := by
  intro x hx
  obtain ⟨t, ht⟩ := exists_real (V := V) hx
  refine ⟨t, ht, ?_⟩
  rw [vmOf_of hx ht, vmOf_l, NNReal.coe_rpow]

theorem integers_vmOf : (vmOf V).Integers V.RR := by
  refine ⟨Subtype.coe_injective, ?_, ?_⟩
  · intro x
    show vmOf V (x : C) ≤ 1
    by_cases hx : (x : C) = 0
    · simp [hx]
    obtain ⟨t, ht⟩ := exists_real (V := V) hx
    rw [vmOf_of hx ht]
    have h0 : V.Ge 0 (x : C) := x.2
    unfold VF.Ge at h0
    rw [ht] at h0
    exact NNReal.rpow_le_one (bb_lt V).le (WithTop.coe_le_coe.mp h0)
  · intro r hr
    suffices h : V.Ge 0 r from ⟨⟨r, h⟩, rfl⟩
    by_cases hx : r = 0
    · rw [hx]; exact VF.Ge.zero 0
    obtain ⟨t, ht⟩ := exists_real (V := V) hx
    rw [vmOf_of hx ht] at hr
    unfold VF.Ge
    rw [ht]
    refine WithTop.coe_le_coe.mpr ?_
    by_contra hneg
    exact absurd hr (not_le.mpr (NNReal.one_lt_rpow_of_pos_of_lt_one_of_neg (bb_pos V) (bb_lt V) (not_le.mp hneg)))

theorem not_isUnit_of_mm {x : V.RR} (hx : V.MM (x : C)) : ¬ IsUnit x := by
  intro hu
  obtain ⟨y, hy⟩ := hu.exists_right_inv
  have h1 : (x : C) * (y : C) = 1 := by
    have := congrArg Subtype.val hy
    simpa using this
  have h2 := congrArg V.v h1
  rw [AddValuation.map_mul, AddValuation.map_one] at h2
  have hy0 : (0 : WithTop ℝ) ≤ V.v (y : C) := y.2
  have hx0 : (0 : WithTop ℝ) < V.v (x : C) := hx
  have h3 : (0 : WithTop ℝ) < V.v (x : C) + V.v (y : C) := lt_of_lt_of_le hx0 (le_add_of_nonneg_right hy0)
  rw [h2] at h3
  exact lt_irrefl _ h3

theorem v_l_pow (n : ℕ) : V.v ((V.l : C) ^ n) = ((n : ℝ) : WithTop ℝ) := by
  rw [AddValuation.map_pow, V.v_l]
  simp

theorem mem_pow_iff (n : ℕ) (x : V.RR) :
    x ∈ (Ideal.span {((V.l : ℕ) : V.RR)} ^ n • ⊤ : Submodule V.RR V.RR) ↔ V.Ge n (x : C) := by
  have hl : (V.l : C) ≠ 0 := by
    intro h
    have h1 := V.v_l
    rw [h, AddValuation.map_zero] at h1
    simp at h1
  have hln : (V.l : C) ^ n ≠ 0 := pow_ne_zero _ hl
  rw [Ideal.span_singleton_pow, Ideal.smul_eq_mul, Ideal.mul_top, Ideal.mem_span_singleton]
  constructor
  · rintro ⟨y, rfl⟩
    show ((n : ℝ) : WithTop ℝ) ≤ V.v ((((((V.l : ℕ) : V.RR) ^ n * y : V.RR)) : C))
    push_cast
    rw [AddValuation.map_mul, v_l_pow]
    have hy : (0 : WithTop ℝ) ≤ V.v (y : C) := y.2
    exact le_add_of_nonneg_right hy
  · intro hx
    have hxy : (x : C) = (V.l : C) ^ n * ((x : C) / (V.l : C) ^ n) := by
      field_simp
    have h2 : V.v (x : C) = ((n : ℝ) : WithTop ℝ) + V.v ((x : C) / (V.l : C) ^ n) := by
      conv_lhs => rw [hxy]
      rw [AddValuation.map_mul, v_l_pow]
    have h3 : ((n : ℝ) : WithTop ℝ) + 0 ≤ ((n : ℝ) : WithTop ℝ) + V.v ((x : C) / (V.l : C) ^ n) := by
      rw [add_zero, ← h2]
      exact hx
    have hy : V.Ge 0 ((x : C) / (V.l : C) ^ n) := (WithTop.add_le_add_iff_left WithTop.coe_ne_top).mp h3
    refine ⟨⟨(x : C) / (V.l : C) ^ n, hy⟩, ?_⟩
    apply Subtype.ext
    show (x : C) = ((((V.l : ℕ) : V.RR) ^ n : V.RR) : C) * ((x : C) / (V.l : C) ^ n)
    push_cast
    exact hxy

theorem hausdorff_RR : IsHausdorff (Ideal.span {((V.l : ℕ) : V.RR)}) V.RR where
  haus' := by
    intro x hx
    apply Subtype.ext
    show (x : C) = 0
    by_contra h0
    obtain ⟨t, ht⟩ := exists_real (V := V) h0
    obtain ⟨n, hn⟩ := exists_nat_gt t
    have h1 := hx n
    rw [SModEq.sub_mem, sub_zero, mem_pow_iff] at h1
    unfold VF.Ge at h1
    rw [ht] at h1
    exact absurd (WithTop.coe_le_coe.mp h1) (not_le.mpr hn)

theorem precomplete_RR
    (hc : ∀ s : ℕ → C, (∀ n : ℕ, V.Ge n (s (n + 1) - s n)) → ∃ x, ∀ n : ℕ, V.Ge n (x - s n)) :
    IsPrecomplete (Ideal.span {((V.l : ℕ) : V.RR)}) V.RR where
  prec' := by
    intro f hf
    obtain ⟨x, hx⟩ := hc (fun n => (f n : C)) (fun n => by
      have h1 := hf (Nat.le_succ n)
      rw [SModEq.sub_mem, mem_pow_iff] at h1
      have h2 := h1.neg
      have e : -(((f n - f (n + 1) : V.RR)) : C) = (f (n + 1) : C) - (f n : C) := by
        push_cast
        ring
      rw [e] at h2
      exact h2)
    have hx0 : V.Ge 0 x := by
      have h1 : V.Ge 0 (x - (f 0 : C)) := by simpa using hx 0
      have h2 : V.Ge 0 ((f 0 : V.RR) : C) := (f 0).2
      have := h1.add h2
      simpa using this
    refine ⟨⟨x, hx0⟩, fun n => ?_⟩
    rw [SModEq.sub_mem, mem_pow_iff]
    have h2 := (hx n).neg
    have e : -(x - (f n : C)) = (((f n - (⟨x, hx0⟩ : V.RR) : V.RR)) : C) := by
      push_cast
      ring
    rw [e] at h2
    exact h2

end Val

section Zl

variable (l : ℕ) [Fact l.Prime] (S : Type) [CommRing S]

theorem ringChar_dvd_pow (n : ℕ) : ringChar (S ⧸ Ideal.span {(l : S)} ^ n) ∣ l ^ n := by
  apply ringChar.dvd
  have h := Ideal.Quotient.eq_zero_iff_mem.mpr
    (Ideal.pow_mem_pow (Ideal.mem_span_singleton_self (l : S)) n : (l : S) ^ n ∈ Ideal.span {(l : S)} ^ n)
  simpa using h

def zlStep (n : ℕ) : ℤ_[l] →+* S ⧸ Ideal.span {(l : S)} ^ n :=
  (ZMod.castHom (ringChar_dvd_pow l S n) (S ⧸ Ideal.span {(l : S)} ^ n)).comp (PadicInt.toZModPow n)

theorem zlStep_compat {m n : ℕ} (hle : m ≤ n) :
    (Ideal.Quotient.factorPow (Ideal.span {(l : S)}) hle).comp (zlStep l S n) = zlStep l S m := by
  unfold zlStep
  rw [← PadicInt.zmod_cast_comp_toZModPow m n hle, ← RingHom.comp_assoc, ← RingHom.comp_assoc]
  congr 1
  exact Subsingleton.elim _ _

def zlHom [IsAdicComplete (Ideal.span {(l : S)}) S] : ℤ_[l] →+* S :=
  IsAdicComplete.liftRingHom (Ideal.span {(l : S)}) (zlStep l S) (fun hle => zlStep_compat l S hle)

end Zl

theorem ringPkSt_holds : RingPkSt := by
  intro C _ _ V hc
  haveI : Fact V.l.Prime := ⟨V.l_prime⟩
  have hl : (V.l : C) ≠ 0 := by
    intro h
    have h1 := V.v_l
    rw [h, AddValuation.map_zero] at h1
    simp at h1
  have hvl : V.MM ((((V.l : ℕ) : V.RR)) : C) := by
    show (0 : WithTop ℝ) < V.v ((((V.l : ℕ) : V.RR)) : C)
    push_cast
    rw [V.v_l]
    exact (WithTop.coe_lt_coe.mpr (zero_lt_one : (0 : ℝ) < 1))
  have hunit : ∀ x : V.RR, ¬ V.MM (x : C) → IsUnit x := by
    intro x hx
    have hx0 : (x : C) ≠ 0 := by
      intro h
      apply hx
      show (0 : WithTop ℝ) < V.v (x : C)
      rw [h, AddValuation.map_zero]
      exact WithTop.coe_lt_top 0
    have hv0 : V.v (x : C) = 0 := by
      have h1 : (0 : WithTop ℝ) ≤ V.v (x : C) := x.2
      have h2 : ¬ (0 : WithTop ℝ) < V.v (x : C) := hx
      exact le_antisymm (not_lt.mp h2) h1
    have hinv : V.Ge 0 ((x : C)⁻¹) := by
      show ((0 : ℝ) : WithTop ℝ) ≤ V.v ((x : C)⁻¹)
      have h3 : V.v ((x : C) * (x : C)⁻¹) = 0 := by
        rw [mul_inv_cancel₀ hx0, AddValuation.map_one]
      rw [AddValuation.map_mul, hv0, zero_add] at h3
      rw [h3]
      rfl
    refine isUnit_iff_exists_inv.mpr ⟨⟨(x : C)⁻¹, hinv⟩, ?_⟩
    apply Subtype.ext
    show (x : C) * (x : C)⁻¹ = 1
    exact mul_inv_cancel₀ hx0
  have hloc : IsLocalRing V.RR := IsLocalRing.of_nonunits_add (fun a b ha hb => by
    have ha' : V.MM (a : C) := by
      by_contra h
      exact (mem_nonunits_iff.mp ha) (hunit a h)
    have hb' : V.MM (b : C) := by
      by_contra h
      exact (mem_nonunits_iff.mp hb) (hunit b h)
    exact mem_nonunits_iff.mpr (not_isUnit_of_mm (V := V) (x := a + b)
      (lt_of_lt_of_le (lt_min ha' hb') (V.v.map_add _ _))))
  haveI hcpl : IsAdicComplete (Ideal.span {((V.l : ℕ) : V.RR)}) V.RR :=
    { haus' := (hausdorff_RR (V := V)).haus', prec' := (precomplete_RR (V := V) hc).prec' }
  haveI := hloc
  exact ⟨{ vm := vmOf V
           tie := valTie_vmOf
           int := integers_vmOf
           pos := by
             rw [vmOf_l]
             exact_mod_cast bb_pos V
           lt := by
             rw [vmOf_l]
             exact_mod_cast bb_lt V
           nonunit := not_isUnit_of_mm (V := V) hvl
           cpl := hcpl
           loc := hloc
           alg := (zlHom V.l V.RR).toAlgebra
           mm := fun x hx => (IsLocalRing.mem_maximalIdeal x).mpr (mem_nonunits_iff.mpr (not_isUnit_of_mm hx)) }⟩

end UpFBr

end Formalism.L2.FormalSeriesBounds
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrRP =====

-- ===== clump member: Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrSfI =====
-- clump-header: {"m": "Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrSfI", "h": "module\n\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrSf\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrI\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrPl\npublic import Formalism.LocalToGlobal.CharacterGerms.SelfConjugateRowData\npublic import Formalism.LocalToGlobal.CharacterGerms.CharacterHypothesisUnramified\nimport Formalism.LocalToGlobal.CharacterGerms.RowTieTop\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrEF\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrPlB\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrRP\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrR\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open Classical

namespace Formalism.L2.FormalSeriesBounds

namespace UpFBr

open Formalism.IncomingBounds CharacteristicFromRanks ValuationFitting
open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ ReciprocityTheory.ChartRestriction.G.Pdiv.AvDefs
open ReciprocityTheory.ChartRestriction.G.Pdiv.ChartF IsLocalRing

attribute [local instance] Over.cartesianMonoidalCategory

section Inst

variable {C : Type} [Field C] [CharZero C] {V : VF C} {OE : Type} [CommRing OE] [StarRing OE] {dd : ℕ} {d : ℕ} [NeZero d]
  {I0 : Type} [Fintype I0]

def EigInS {Y : FBChart C V OE dd} (p : SelfData Y d I0) (R : Type) [CommRing R] [Algebra R C]
    (actR : OE → Fin dd → PS R 1 dd) (emR : ZMod d → OE →+* R) : Prop :=
  ∃ (r : (OE →+* R) → ℕ) (W : ∀ τ : OE →+* R, Fin (r τ) → Fin dd → R), (∀ τ, IsEigBasis actR τ (W τ)) ∧
    ∀ a, ∃ e : Fin (r (emR a)) ≃ {x : I0 // p.ty0 x = a},
      ∀ c i, algebraMap R C (W (emR a) c i) = p.e (e c) i

section Eig

variable {R : Type} [CommRing R] [Algebra R C]

theorem eig_atS {Y : FBChart C V OE dd} (p : SelfData Y d I0) (hinj : Function.Injective (algebraMap R C))
    (hsurj : ∀ x : C, V.Ge 0 x → ∃ r : R, algebraMap R C r = x) (hR : ∀ x : R, V.Ge 0 (algebraMap R C x))
    (actR : OE → Fin dd → PS R 1 dd) (hact : ∀ a i, Y.B.A.act a i = toC (actR a i))
    (τ : OE →+* R) (a : ZMod d) (hτ : ∀ x, algebraMap R C (τ x) = p.em a x) :
    ∃ (s : ℕ) (W : Fin s → Fin dd → R) (e : Fin s ≃ {x : I0 // p.ty0 x = a}), IsEigBasis actR τ W ∧
      ∀ c i, algebraMap R C (W c i) = p.e (e c) i := by
  choose lift hlift using hsurj
  let S := {x : I0 // p.ty0 x = a}
  let e : Fin (Fintype.card S) ≃ S := (Fintype.equivFin S).symm
  let W : Fin (Fintype.card S) → Fin dd → R := fun c i => lift (p.e (e c) i) (p.e_int (e c) i)
  have hu : ∀ c i, algebraMap R C (W c i) = p.e (e c) i := fun c i => hlift _ _
  refine ⟨Fintype.card S, W, e, ?_, hu⟩
  unfold IsEigBasis
  refine ⟨fun c a' => ?_, fun v hv => ?_⟩
  · funext i
    apply hinj
    rw [linAct_toC actR hact a' (W c) i]
    have hW : (fun j => algebraMap R C (W c j)) = p.e (e c) := funext (hu c)
    rw [hW, p.e_eig (e c) a', (e c).2]
    simp [hτ, hu]
  · obtain ⟨vC, hvC⟩ : ∃ vC : Fin dd → C, ∀ j, vC j = algebraMap R C (v j) := ⟨_, fun _ => rfl⟩
    have heig : ∀ x, linAct (Y.B.A.act x) vC = p.em a x • vC := by
      intro x
      funext i
      have h1 : vC = fun j => algebraMap R C (v j) := funext hvC
      rw [h1, ← linAct_toC actR hact x v i, hv x]
      simp [hτ]
    obtain ⟨b, hbsupp, hvb⟩ := p.e_full a vC heig
    obtain ⟨w, hw1, hw2⟩ := p.e_sat
    have hvb' : ∀ j, vC j = ∑ c, b c * p.e c j := by
      intro j
      rw [hvb]
      simp [Finset.sum_apply]
    have hcoef : ∀ c', ∑ x, vC x * w x c' = b c' := by
      intro c'
      simp_rw [hvb', Finset.sum_mul]
      rw [Finset.sum_comm]
      simp_rw [_root_.mul_assoc, ← Finset.mul_sum, hw2]
      simp
    have hbint : ∀ c, V.Ge 0 (b c) := by
      intro c
      rw [← hcoef c]
      exact VF.Ge.sum (fun x _ => by rw [hvC x]; exact (hR (v x)).mul_int (hw1 x c))
    have hsum : ∀ F : I0 → C, (∀ c, p.ty0 c ≠ a → F c = 0) →
        ∑ c, F c = ∑ k : Fin (Fintype.card S), F (e k) := by
      intro F hF
      rw [← Fintype.sum_subtype_add_sum_subtype (fun c => p.ty0 c = a) F]
      rw [Fintype.sum_eq_zero (fun x : {c // ¬ p.ty0 c = a} => F x) (fun x => hF x x.2), add_zero]
      exact (Equiv.sum_comp e (fun x : S => F x)).symm
    refine ⟨fun k => lift (b (e k)) (hbint (e k)), ?_, ?_⟩
    · funext j
      apply hinj

      simp only [Finset.sum_apply, Pi.smul_apply, smul_eq_mul, map_sum, map_mul, hlift, hu]
      rw [← hsum (fun c => b c * p.e c j) (fun c hc => by rw [hbsupp c hc, zero_mul]), ← hvb', hvC]
    · intro c' hc'
      funext k
      apply hinj
      rw [hlift, ← hcoef (e k)]
      have h2 : ∀ j, vC j = ∑ m, algebraMap R C (c' m) * p.e (e m) j := by
        intro j
        rw [hvC, ← hc']

        simp [Finset.sum_apply, map_sum, hu]
      simp_rw [h2, Finset.sum_mul]
      rw [Finset.sum_comm]
      simp_rw [_root_.mul_assoc, ← Finset.mul_sum, hw2]
      simp only [mul_ite, mul_zero]
      rw [Finset.sum_eq_single k]
      · simp
      · intro m _ hm
        have hne : (↑(e m) : I0) ≠ ↑(e k) := fun h => hm (e.injective (Subtype.ext h))
        simp [hne]
      · intro h
        exact absurd (Finset.mem_univ k) h

theorem eigInS_of_integral_lifts {Y : FBChart C V OE dd} (p : SelfData Y d I0) (vm : Valuation C NNReal)
    (hv : vm.Integers R) (hsurj : ∀ x : C, V.Ge 0 x → ∃ r : R, algebraMap R C r = x)
    (hR : ∀ x : R, V.Ge 0 (algebraMap R C x))
    (actR : OE → Fin dd → PS R 1 dd) (hact : ∀ a i, Y.B.A.act a i = toC (actR a i))
    (emR : ZMod d → OE →+* R) (hem : ∀ a x, algebraMap R C (emR a x) = p.em a x) :
    EigInS p R actR emR := by
  have hsep : ∀ a a', emR a = emR a' → a = a' := by
    intro a a' h
    by_contra hne
    obtain ⟨x, hx⟩ := p.em_sep a a' hne
    have h1 : p.em a x = p.em a' x := by rw [← hem, ← hem, h]
    rw [h1, sub_self, AddValuation.map_zero] at hx
    simp at hx
  have key : ∀ τ : OE →+* R, ∃ (s : ℕ) (W : Fin s → Fin dd → R), IsEigBasis actR τ W ∧
      ∀ a, emR a = τ → ∃ e : Fin s ≃ {x : I0 // p.ty0 x = a},
        ∀ c i, algebraMap R C (W c i) = p.e (e c) i := by
    intro τ
    by_cases h : ∃ a, emR a = τ
    · obtain ⟨a, rfl⟩ := h
      obtain ⟨s, W, e, hb, hu⟩ := eig_atS p hv.hom_inj hsurj hR actR hact (emR a) a (hem a)
      refine ⟨s, W, hb, fun a' h' => ?_⟩
      obtain rfl := hsep a' a h'
      exact ⟨e, hu⟩
    · push_neg at h
      obtain ⟨s, W, h1, h2⟩ := eigFreeSt_holds C vm R hv dd OE (fun x => linPart (actR x)) τ
      refine ⟨s, W, ?_, fun a h' => absurd h' (h a)⟩
      unfold IsEigBasis
      exact ⟨h1, h2⟩
  choose r W hW using key
  unfold EigInS
  exact ⟨r, W, fun τ => (hW τ).1, fun a => (hW (emR a)).2 a rfl⟩

end Eig

theorem afBoundS_of_upFLaw (Y : FBChart C V OE dd) (p : SelfData Y d I0)
    (vm : Valuation C NNReal) (R : Type) [CommRing R] [Algebra R C] (hv : vm.Integers R)
    [Fact ¬IsUnit ((V.l : ℕ) : R)] [IsAdicComplete (Ideal.span {((V.l : ℕ) : R)}) R] [IsLocalRing R] [Algebra ℤ_[V.l] R]
    (hMM : ∀ x : R, V.MM (algebraMap R C x) → x ∈ maximalIdeal R)
    (T : Type) [CommRing T] (FT : Fin dd → PS T 2 dd)
    (actT : OE → Fin dd → PS T 1 dd) (hL : UpFLaw V.l T OE dd FT actT)
    (iota : T →+* R) (hloc : IsLocalHom iota)
    (emR : ZMod d → OE →+* R) (hem : ∀ a x, algebraMap R C (emR a x) = p.em a x)
    (hPl : PlaceIn V.l OE R d emR)
    (hEig : EigInS p R (fun a i => MvPowerSeries.map iota (actT a i)) emR) :
    AFBoundS Y p vm R (fun i => MvPowerSeries.map iota (FT i)) := by
  have := Y.algClosed
  intro a
  obtain ⟨w, iN, t, jj, hj1, hjt, hbas⟩ := hPl
  obtain ⟨r, W, hW, hWe⟩ := hEig
  have hinj : Function.Injective (algebraMap R C) := hv.hom_inj
  have hfrob : ∀ (j : Fin w.n) (x : OE), ((t (j + 1) : Emb (O := R) w.e) : OE →+* R) x -
      (((t j : Emb (O := R) w.e) : OE →+* R) x) ^ V.l ∈ maximalIdeal R := by
    intro j x
    obtain ⟨a', rfl⟩ := jj.surjective j
    rw [← hj1, hjt, hjt]
    apply hMM
    rw [map_sub, map_pow, hem, hem]
    exact p.em_frob a' x
  obtain ⟨xs, hAF, hle⟩ := hL C vm R hv iota hloc w t hbas hfrob r W hW (jj a)
  obtain ⟨e, he⟩ := hWe a
  have hconj : ∀ b, (emR b).comp ((starRingAut : RingAut OE) : OE ≃+* OE).toRingHom = emR (b + p.hd) := by
    intro b
    ext x
    apply hinj
    show algebraMap R C (emR b (star x)) = _
    rw [hem, hem]
    exact p.em_conj b x
  have hrk : ∀ b, r (emR b) = rk0 p b := by
    intro b
    obtain ⟨e', -⟩ := hWe b
    have := Fintype.card_congr e'
    rw [Fintype.card_fin, Fintype.card_subtype] at this
    exact this
  refine ⟨r (emR a), e, W (emR a), xs, he, ?_, ?_⟩
  · rw [hjt a] at hAF
    exact hAF
  · have hs : S4.frobSum V.l (fun b => rk0 p (b + p.hd)) a = ∑' n : ℕ, ((V.l : ℝ) ^ (-((n : ℝ) + 1))) *
          (r (((t (jj a + Fin.ofNat w.n (n + 1)) : Emb (O := R) w.e) : OE →+* R).comp
            ((starRingAut : RingAut OE) : OE ≃+* OE).toRingHom) : ℝ) := by
      unfold S4.frobSum
      refine tsum_congr fun n => ?_
      rw [← jj_add jj hj1 a (n + 1), hjt, hconj, hrk, rpow_neg_succ V.l_prime.pos]
    rw [hs]
    rw [map_natCast] at hle
    exact hle

theorem upCharS_of_upFLaw_RR [IsDedekindDomain OE] [CharZero OE] [Module.Free ℤ OE] [Module.Finite ℤ OE]
    (hPlace : Pl.PlaceCriterionOfIdempotent)
    (Y : FBChart C V OE dd) (p : SelfData Y d I0) (hr : (Y.rawSelf p).RankHyp)
    (Hc : ∀ g, (Y.rawSelf p).CartHyp V g)
    (T : Type) [CommRing T] (FT : Fin dd → PS T 2 dd)
    (actT : OE → Fin dd → PS T 1 dd) (hL : UpFLaw V.l T OE dd FT actT)
    (i0 : T →+* C) (hint : ∀ t, V.Ge 0 (i0 t)) (hloc : ∀ t, V.v (i0 t) = 0 → IsUnit t)
    (hF : ∀ i, Y.B.G.F i = MvPowerSeries.map i0 (FT i))
    (hact : ∀ a i, Y.B.A.act a i = MvPowerSeries.map i0 (actT a i))
    (hdisc : ¬ ((V.l : ℤ) ∣ Algebra.discr ℤ (Module.Free.chooseBasis ℤ OE))) : UPCharSelfSt Y p Hc := by
  obtain ⟨P⟩ := ringPkSt_holds C V Y.cpl
  let _ := P.loc
  let _ := P.alg
  have : Fact ¬IsUnit ((V.l : ℕ) : V.RR) := ⟨P.nonunit⟩
  have := P.cpl
  let iota : T →+* V.RR := i0.codRestrict V.RR hint
  have hcomp : ∀ {n : ℕ} (f : PS T n dd), toC (C := C) (MvPowerSeries.map iota f) = MvPowerSeries.map i0 f := by
    intro n f
    ext mu
    simp only [MvPowerSeries.coeff_map]
    rfl
  let emR : ZMod d → OE →+* V.RR := fun a => (p.em a).codRestrict V.RR (p.em_int a)
  have hem : ∀ a x, algebraMap V.RR C (emR a x) = p.em a x := fun _ _ => rfl
  have hlocI : IsLocalHom iota := ⟨fun t ht => hloc t (v_of_isUnit_RR ht)⟩
  have hlm : ((V.l : ℕ) : V.RR) ∈ maximalIdeal V.RR := (mem_maximalIdeal _).2 P.nonunit
  have hPl : PlaceIn V.l OE V.RR d emR := by
    refine placeSt_of_X hPlace V.l OE V.RR hlm hdisc d emR (fun a x => P.mm _ ?_) (fun a a' haa => ?_) ?_
    · exact p.em_frob a x
    · obtain ⟨x, hx⟩ := p.em_sep a a' haa
      exact ⟨x, fun hm => (mem_maximalIdeal _).1 hm (isUnit_RR hx)⟩
    · obtain ⟨ε, h1, h2, h3⟩ := p.em_unr
      refine ⟨ε, h1, fun a => P.mm _ (h2 a), fun x hx => h3 x fun a => ?_⟩
      have h4 : (0 : WithTop ℝ) ≤ V.v (p.em a x) := p.em_int a x
      exact lt_of_le_of_ne h4 fun h5 => (mem_maximalIdeal _).1 (hx a) (isUnit_RR (x := emR a x) h5.symm)
  have hEig : EigInS p V.RR (fun a i => MvPowerSeries.map iota (actT a i)) emR :=
    eigInS_of_integral_lifts p P.vm P.int (fun x hx => ⟨⟨x, hx⟩, rfl⟩) (fun x => x.2) _
      (fun a i => by rw [hcomp]; exact hact a i) emR hem
  refine upCharS_of_afBound Y p hr Hc P.vm V.RR P.tie P.int P.pos P.lt (fun i => MvPowerSeries.map iota (FT i))
    (fun i => by rw [hcomp]; exact hF i) ?_
    (afBoundS_of_upFLaw Y p P.vm V.RR P.int (fun x hx => P.mm x hx) T FT actT hL iota hlocI emR hem hPl hEig)
  intro i
  apply P.int.hom_inj
  have h5 := Y.B.G.const i
  rw [hF i, ← hcomp, MvPowerSeries.constantCoeff_map] at h5
  rw [h5, map_zero]

end Inst

section Chart

open Formalism.L2.Pj NumberField

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {Dw : Datum H} {l : Level H}
variable (Xo : Moduli Dw l) (c : Coeff l) [StarRing (𝓞 E)]


variable {Xo c} in
theorem upCharS_at_chartL {T : CDVR} {io : c.F →+* T.Fr} {y : IntFr Xo c T io} {C3 : IntChart T io y}
    {C : Type} [Field C] [CharZero C] {V : VF C} {ie : T.Fr →+* C} (hPlace : Pl.PlaceCriterionOfIdempotent)
    (hL : UpFLaw V.l T.V (𝓞 E) (chD C3.ch) C3.FT C3.actT)
    (hie : EmbOK T V ie) (hd : ¬ ((V.l : ℤ) ∣ Algebra.discr ℤ (Module.Free.chooseBasis ℤ (𝓞 E))))
    {k : ℕ} {Y : FBChart C V (𝓞 E) (chD C3.ch)} (hY : IsBC C3 ie k Y)
    {Orb : Type} {d : ℕ} [NeZero d] {lab : LabS E C Orb d} (ha : LabSArith V io ie lab) (hg : LabSGeo C3 ie Y lab)
    (hr : lab.RankOK Dw) (o : Orb) (Hc : ∀ g, (Y.rawSelf (selfOfLab ha hg o)).CartHyp V g) :
    UPCharSelfSt Y (selfOfLab ha hg o) Hc := by
  have h := chart_ties hie hY
  have hrank : (Y.rawSelf (selfOfLab ha hg o)).RankHyp := by
    refine { big_compl := (hr o).1, rk_big := ?_, rk_small := ?_ }
    · refine Fin.forall_fin_two.mpr ⟨?_, ?_⟩
      · intro a hb
        simp only [FBChart.rawSelf, selfOfLab]
        convert (card_sigma_fst (fun b => Dw.mult (lab.tau o b)) a).trans ((hr o).2.1 a hb) using 2
        exact Finset.filter_congr (fun _ _ => Iff.rfl)
      · intro a hb
        simp only [FBChart.rawSelf, selfOfLab, ite_eq_right (by decide : (1 : Fin 2) ≠ 0)]
        exact (card_sigma_shift (fun b => Dw.mult (lab.tau o b)) lab.hd a).trans ((hr o).2.2.2.1 a hb)
    · refine Fin.forall_fin_two.mpr ⟨?_, ?_⟩
      · intro a hb
        simp only [FBChart.rawSelf, selfOfLab]
        convert (card_sigma_fst (fun b => Dw.mult (lab.tau o b)) a).trans ((hr o).2.2.1 a hb) using 2
        exact Finset.filter_congr (fun _ _ => Iff.rfl)
      · intro a hb
        simp only [FBChart.rawSelf, selfOfLab, ite_eq_right (by decide : (1 : Fin 2) ≠ 0)]
        exact (card_sigma_shift (fun b => Dw.mult (lab.tau o b)) lab.hd a).trans ((hr o).2.2.2.2 a hb)
  exact upCharS_of_upFLaw_RR hPlace Y (selfOfLab ha hg o) hrank Hc T.V C3.FT C3.actT hL
    (ie.comp (algebraMap T.V T.Fr)) h.1 h.2.1 h.2.2.1 h.2.2.2 hd


end Chart

end UpFBr

end Formalism.L2.FormalSeriesBounds
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrSfI =====

-- ===== clump member: Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrFin =====
-- clump-header: {"m": "Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrFin", "h": "module\n\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrI\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrSf\npublic import Formalism.LocalToGlobal.CharacterGerms.SelfConjugateRowData\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrPlP\npublic import Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrSfI\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.FormalSeriesBounds

namespace UpFBr

open Formalism.IncomingBounds Formalism.L2.Pj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ ReciprocityTheory.ChartRestriction.G.Pdiv.ChartF

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {Dw : Datum H} {l : Level H}
variable {Xo : Moduli Dw l} {c : Coeff l} [StarRing (𝓞 E)]
variable {T : CDVR} {io : c.F →+* T.Fr} {y : IntFr Xo c T io} {C3 : IntChart T io y}
variable {C : Type} [Field C] [CharZero C] {V : VF C} {ie : T.Fr →+* C}

theorem upCharS_chartL (hL : UpFLaw V.l T.V (𝓞 E) (chD C3.ch) C3.FT C3.actT)
    (hie : EmbOK T V ie) (hd : ¬ ((V.l : ℤ) ∣ Algebra.discr ℤ (Module.Free.chooseBasis ℤ (𝓞 E))))
    {k : ℕ} {Y : FBChart C V (𝓞 E) (chD C3.ch)} (hY : IsBC C3 ie k Y)
    {Orb : Type} {d : ℕ} [NeZero d] {lab : LabS E C Orb d} (ha : LabSArith V io ie lab) (hg : LabSGeo C3 ie Y lab)
    (hr : lab.RankOK Dw) (o : Orb) (Hc : ∀ g, (Y.rawSelf (selfOfLab ha hg o)).CartHyp V g) :
    UPCharSelfSt Y (selfOfLab ha hg o) Hc :=
  upCharS_at_chartL Pl.place_doubling_condition hL hie hd hY ha hg hr o Hc

variable (Xo c)

end UpFBr

end Formalism.L2.FormalSeriesBounds
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.CharacterGerms.RowTieUpFBrFin =====
