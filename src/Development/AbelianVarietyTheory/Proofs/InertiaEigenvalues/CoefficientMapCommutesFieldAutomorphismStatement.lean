module

public import Mathlib.NumberTheory.NumberField.CMField
public import Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic
public import Mathlib.RingTheory.SimpleRing.Principal
public import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.FiniteNotIsUnitOneAddSmul
public import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.GeneralLinearGroupCharEqOneOfDetEqOne
public import Formalism.LocalToGlobal.ProjectiveLattices.ThClassPinsRec
public import Development.AbelianVarietyTheory.BlockTheory.ExistenceTori.CoefficientSpaceWeights
public import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ThetaLetterEquivConjugate
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ConjTupRefl
public import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.NormalFam
public import Formalism.LocalToGlobal.IndefiniteReal.FWTie
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCcIsEquivAtSerOfOneMapRowOfFive
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.VectorValuedLiftFieldChange
public import Development.AbelianVarietyTheory.Definitions.Divisors.MarkAd
import Mathlib.Algebra.AffineMonoid.UniqueSums
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Order.Star.Rat
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
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
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
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
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.GradedWeylDivisibility.DualWeylDominanceOf
import Formalism.GradedWeylDivisibility.FinalD
import Mathlib.Algebra.GroupWithZero.Submonoid.CancelMulZero
import Mathlib.Algebra.Module.StablyFree.Basic
import Mathlib.RingTheory.Etale.Weakly
import Mathlib.RingTheory.TotallySplit
import Mathlib.Tactic.Linter.HaveILetI
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OscillatorModelExtensionFirst
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RationalPointsGenerate
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.TensorMapDescent
import Development.AbelianVarietyTheory.Proofs.HeightProofs.AdelicUnitaryRealPointsStructureRealPlaces
import Development.AbelianVarietyTheory.Proofs.JetHarmonics.WeightExponentsEmbeddingsDegree
import Formalism.LocalToGlobal.Divisibility.CoefModLemmas
import Mathlib.Tactic.Linter.Style
import Development.AbelianVarietyTheory.Definitions.ThetaValues.ExistsRootNotMem

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.UnitaryExistence.EqZeroOfMul, Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsIoLFRecIff, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoefficientMapCommutesFieldAutomorphism, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoefficientMapCommutesFieldAutomorphismStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.UnitaryExistence.EqZeroOfMul =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.UnitaryExistence.EqZeroOfMul", "h": "module\n\npublic import Mathlib.NumberTheory.NumberField.CMField\npublic import Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic\npublic import Mathlib.RingTheory.SimpleRing.Principal\npublic import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.FiniteNotIsUnitOneAddSmul\npublic import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.GeneralLinearGroupCharEqOneOfDetEqOne\nimport Mathlib.Algebra.AffineMonoid.UniqueSums\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Rat\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
namespace GlobalTheory.LFCompare
open Polynomial

section Rat
variable (K : Type) [Field K] [CharZero K]

def ratFn : Subalgebra K (ℚ → K) where
  carrier := {f | ∃ p q : K[X], (∀ s : ℚ, q.eval (s : K) ≠ 0) ∧ ∀ s : ℚ, f s * q.eval (s : K) = p.eval (s : K)}
  mul_mem' := by
    rintro f g ⟨p, q, hq, h⟩ ⟨p', q', hq', h'⟩
    refine ⟨p * p', q * q', fun s => by rw [eval_mul]; exact mul_ne_zero (hq s) (hq' s), fun s => ?_⟩
    rw [eval_mul, eval_mul, ← h, ← h', Pi.mul_apply]; ring
  add_mem' := by
    rintro f g ⟨p, q, hq, h⟩ ⟨p', q', hq', h'⟩
    refine ⟨p * q' + p' * q, q * q', fun s => by rw [eval_mul]; exact mul_ne_zero (hq s) (hq' s), fun s => ?_⟩
    rw [eval_add, eval_mul, eval_mul, eval_mul, ← h, ← h', Pi.add_apply]; ring
  algebraMap_mem' a := ⟨C a, 1, fun s => by simp, fun s => by simp⟩

variable {K}

theorem const_mem (a : K) : (fun _ : ℚ => a) ∈ ratFn K := (ratFn K).algebraMap_mem a

theorem cast_mem : (fun s : ℚ => (s : K)) ∈ ratFn K := ⟨X, 1, fun s => by simp, fun s => by simp⟩

theorem inv_mem {f : ℚ → K} (hf : f ∈ ratFn K) (h0 : ∀ s, f s ≠ 0) : (fun s => (f s)⁻¹) ∈ ratFn K := by
  obtain ⟨p, q, hq, h⟩ := hf
  refine ⟨q, p, fun s => by rw [← h]; exact mul_ne_zero (h0 s) (hq s), fun s => ?_⟩
  rw [← h, ← mul_assoc, inv_mul_cancel₀ (h0 s), one_mul]

theorem zpow_mem {f : ℚ → K} (hf : f ∈ ratFn K) (h0 : ∀ s, f s ≠ 0) (e : ℤ) : (fun s => f s ^ e) ∈ ratFn K := by
  obtain ⟨m, rfl | rfl⟩ := e.eq_nat_or_neg
  · simp only [zpow_natCast]
    exact pow_mem hf m
  · simp only [zpow_neg, zpow_natCast, ← inv_pow]
    exact pow_mem (inv_mem hf h0) m

theorem eq_zero_of_mul {f g : ℚ → K} (hf : f ∈ ratFn K) (hg : g ∈ ratFn K) (h : ∀ s, f s * g s = 0) {s₀ : ℚ}
    (h0 : g s₀ ≠ 0) (s : ℚ) : f s = 0 := by
  obtain ⟨p, q, hq, hp⟩ := hf
  obtain ⟨p', q', hq', hp'⟩ := hg
  have hpp : p * p' = 0 := by
    refine Polynomial.eq_zero_of_infinite_isRoot _
      ((Set.infinite_range_of_injective (Rat.cast_injective (α := K))).mono ?_)
    rintro _ ⟨t, rfl⟩
    change eval _ _ = 0
    rw [eval_mul, ← hp, ← hp']
    linear_combination (eval (t : K) q * eval (t : K) q') * h t
  have hp0 : p' ≠ 0 := by
    rintro rfl
    exact mul_ne_zero h0 (hq' s₀) (by simpa using hp' s₀)
  have : p = 0 := (mul_eq_zero.1 hpp).resolve_right hp0
  subst this
  exact (mul_eq_zero.1 (by simpa using hp s)).resolve_right (hq s)

theorem scalar_eq {c v f₀ g₀ f₁ g₁ : ℚ → K} {N : ℕ} (hN : N ≠ 0) (hv : v ∈ ratFn K) (hf₀ : f₀ ∈ ratFn K)
    (hg₀ : g₀ ∈ ratFn K) (hf₁ : f₁ ∈ ratFn K) (hg₁ : g₁ ∈ ratFn K) (e₀ : ∀ s, f₀ s = c s * g₀ s)
    (e₁ : ∀ s, f₁ s = c s * g₁ s) (hpow : ∀ s, c s ^ N = v s ^ N) (h0 : c 0 = v 0) (hv0 : v 0 ≠ 0)
    (hg0 : g₀ 0 ≠ 0) (hg1 : g₁ 1 ≠ 0) : c 1 = v 1 := by
  have hvg : (fun s => v s * g₀ s) ∈ ratFn K := mul_mem hv hg₀
  have hS : (fun s => ∑ i ∈ Finset.range N, f₀ s ^ i * (v s * g₀ s) ^ (N - 1 - i)) ∈ ratFn K := by
    have := Subalgebra.sum_mem (ratFn K) (t := Finset.range N)
      (f := fun i => f₀ ^ i * (fun s => v s * g₀ s) ^ (N - 1 - i))
      fun i _ => mul_mem (pow_mem hf₀ i) (pow_mem hvg _)
    convert this using 1
    funext s
    simp only [Finset.sum_apply, Pi.mul_apply, Pi.pow_apply]
  have a₀ : ∀ s, f₀ s - v s * g₀ s = 0 := by
    refine eq_zero_of_mul (s₀ := 0) (sub_mem hf₀ hvg) hS (fun s => ?_) ?_
    · rw [mul_comm]
      refine (geom_sum₂_mul _ _ _).trans ?_
      rw [e₀, mul_pow, mul_pow, hpow, sub_self]
    · have : f₀ 0 = v 0 * g₀ 0 := by rw [e₀, h0]
      simp only [this]
      rw [geom_sum₂_self]
      exact mul_ne_zero (Nat.cast_ne_zero.2 hN) (pow_ne_zero _ (mul_ne_zero hv0 hg0))
  have a₁ : f₁ 1 - v 1 * g₁ 1 = 0 := by
    refine eq_zero_of_mul (s₀ := 0) (f := fun s => f₁ s - v s * g₁ s) (sub_mem hf₁ (mul_mem hv hg₁)) hg₀
      (fun s => ?_) hg0 1
    have := a₀ s
    rw [e₀] at this
    rw [e₁]
    linear_combination g₁ s * this
  rw [e₁] at a₁
  exact mul_right_cancel₀ hg1 (sub_eq_zero.1 a₁)

theorem det_mem {n : Type} [Fintype n] [DecidableEq n] {M : ℚ → Matrix n n K}
    (h : ∀ i j, (fun s => M s i j) ∈ ratFn K) : (fun s => (M s).det) ∈ ratFn K := by
  have := Subalgebra.sum_mem (ratFn K) (t := Finset.univ)
    (f := fun σ : Equiv.Perm n => (fun _ : ℚ => ((Equiv.Perm.sign σ : ℤ) : K)) * ∏ i, fun s => M s (σ i) i)
    fun σ _ => mul_mem (const_mem _) (Subalgebra.prod_mem _ fun i _ => h _ _)
  convert this using 1
  funext s
  simp [Matrix.det_apply']

theorem matInv_mem {n : Type} [Fintype n] [DecidableEq n] {M : ℚ → Matrix n n K}
    (h : ∀ i j, (fun s => M s i j) ∈ ratFn K) (h0 : ∀ s, (M s).det ≠ 0) (i j : n) :
    (fun s => (M s)⁻¹ i j) ∈ ratFn K := by
  have h1 : (fun s => (M s).adjugate i j) ∈ ratFn K := by
    simp only [Matrix.adjugate_apply]
    refine det_mem fun a b => ?_
    by_cases hab : a = j
    · subst hab
      simpa using const_mem _
    · simpa [Matrix.updateRow_ne hab] using h a b
  have := mul_mem (inv_mem (det_mem h) h0) h1
  convert this using 1
  funext s
  simp [Matrix.inv_def]

theorem aeval_mem {σ σ' ι : Type} [Fintype ι] (r : ℚ → σ → ι → K) (y : σ → ι → σ')
    (hr : ∀ x j, (fun s => r s x j) ∈ ratFn K) (P : MvPolynomial σ K) (ℓ : MvPolynomial σ' K →ₗ[K] K) :
    (fun s => ℓ (MvPolynomial.aeval (fun x => ∑ j, MvPolynomial.C (r s x j) * MvPolynomial.X (y x j)) P)) ∈
      ratFn K := by
  induction P using MvPolynomial.induction_on generalizing ℓ with
  | C a => simpa using const_mem _
  | add p q hp hq =>
    simp only [map_add (f := _)]
    exact add_mem (hp ℓ) (hq ℓ)
  | mul_X p x hp =>
    have := Subalgebra.sum_mem (ratFn K) (t := Finset.univ) fun j _ =>
      mul_mem (hr x j) (hp (ℓ ∘ₗ LinearMap.mulRight K (MvPolynomial.X (y x j))))
    convert this using 1
    funext s
    simp only [Finset.sum_apply, Pi.mul_apply, map_mul, MvPolynomial.aeval_X, LinearMap.comp_apply, LinearMap.mulRight_apply]
    rw [Finset.mul_sum, map_sum]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [mul_left_comm, ← MvPolynomial.smul_eq_C_mul, map_smul, smul_eq_mul]

end Rat

theorem tele {M : Type} [CommMonoid M] (x : ℕ → M) (ν : ℕ → ℕ) (hν : Antitone ν) (m : ℕ) :
    (∏ i ∈ Finset.range m, (∏ b ∈ Finset.range (i + 1), x b) ^ (ν i - ν (i + 1))) *
      (∏ b ∈ Finset.range m, x b) ^ ν m = ∏ b ∈ Finset.range m, x b ^ ν b := by
  induction m with
  | zero => simp
  | succ m ih =>
    rw [Finset.prod_range_succ, mul_assoc, ← pow_add, Nat.sub_add_cancel (hν (Nat.le_succ m)),
      Finset.prod_range_succ x, mul_pow, ← mul_assoc, ih, Finset.prod_range_succ]

theorem char_eq_one {F A n : Type} [Field F] [CharZero F] [CommGroup A] [Fintype n] [DecidableEq n]
    (ψ : GL n F →* A) (g : GL n F) (hg : (g : Matrix n n F).det = 1) : ψ g = 1 := by
  obtain ⟨L, L', D, hD, hM⟩ :=
    Matrix.SpecialLinearGroup.exists_list_transvec_mul_diagonal_mul_list_transvec ⟨(g : Matrix n n F), hg⟩
  let χ := ψ.comp (Matrix.SpecialLinearGroup.toGL (n := n) (R := F))
  have ht : ∀ t : Matrix.TransvectionStruct n F, χ t.toSpecialLinearGroup = 1 := by
    rintro ⟨i, j, hij, a⟩
    have hN : Matrix.single i j a * Matrix.single i j a = 0 := Matrix.single_mul_single_of_ne _ _ _ _ hij.symm _
    have := ddChar_unip_eq_one ψ _ hN (ddCharDiag (Pi.mulSingle i (Units.mk0 2 two_ne_zero))) 2 1
      (by
        ext a b
        by_cases h : i = a
        · subst h; simp [ddCharDiag_val]
        · simp [ddCharDiag_val, Matrix.single_apply, h])
      (by
        ext a b
        by_cases h : j = b
        · subst h; simp [ddCharDiag_val, Pi.mulSingle_eq_of_ne hij.symm]
        · simp [ddCharDiag_val, Matrix.single_apply, h])
      (by norm_num)
    rw [← this]
    exact congrArg ψ (Units.ext rfl)
  have hl : ∀ L : List (Matrix.TransvectionStruct n F),
      χ (L.map Matrix.TransvectionStruct.toSpecialLinearGroup).prod = 1 := fun L => by
    induction L with
    | nil => simp
    | cons t L ih => rw [List.map_cons, List.prod_cons, map_mul, ht, ih, one_mul]
  have hd : χ ⟨Matrix.diagonal D, hD⟩ = 1 :=
    ddChar_diag ψ _ (fun i j h => Matrix.diagonal_apply_ne D h) hD
  have := (congrArg χ hM).trans ((map_mul χ _ _).trans (congrArg₂ (· * ·) ((map_mul χ _ _).trans
    (congrArg₂ (· * ·) (hl L) hd)) (hl L')))
  have e : ψ g = χ ⟨(g : Matrix n n F), hg⟩ := congrArg ψ (Units.ext rfl)
  exact e.trans (this.trans (by simp))

section Cayley

open scoped Matrix

variable {E : Type} [Field E] [NumberField E] [NumberField.IsCMField E] {n : ℕ}

theorem exists_curve (K : Type) [Field K] [CharZero K] (γ : Matrix (Fin n) (Fin n) E) (hγ : γᴴ * γ = 1)
    (h1 : IsUnit (1 + γ)) :
    ∃ Γ : ℚ → Matrix (Fin n) (Fin n) E, (∀ s, (Γ s)ᴴ * Γ s = 1) ∧ Γ 0 = 1 ∧ Γ 1 = γ ∧
      ∀ (σ : E →+* K) i j, (fun s => σ (Γ s i j)) ∈ ratFn K := by
  obtain ⟨w, hw⟩ := h1.exists_right_inv
  obtain ⟨hS, hS2⟩ := GenusSelfDual.cayley_skew (u := γ) hγ hw (mul_eq_one_comm.1 hw)
  generalize (1 - γ) * w = S at hS hS2
  have hs : ∀ s : ℚ, star (s • S) = -(s • S) := fun s => by rw [star_smul, hS, smul_neg]; rfl
  have hu : ∀ s : ℚ, IsUnit (1 + s • S).det := fun s =>
    (Matrix.isUnit_iff_isUnit_det _).1 (GenusSelfDual.isUnit_one_add_of_skew _ (hs s))
  refine ⟨fun s => 2 * (1 + s • S)⁻¹ - 1,
    fun s => GenusSelfDual.cayley_unitary (hs s) (Matrix.mul_nonsing_inv _ (hu s)), ?_, ?_, fun σ i j => ?_⟩
  · simp only [zero_smul, add_zero, inv_one]; norm_num
  · have h := Matrix.nonsing_inv_mul _ (hu 1)
    simp only [one_smul] at h ⊢
    have : (1 + S)⁻¹ * 2 = 1 + γ := by rw [← hS2, ← mul_assoc, h, one_mul]
    rw [two_mul, ← mul_two, this, add_sub_cancel_left]
  · have e : ∀ s : ℚ, σ.mapMatrix (1 + s • S)⁻¹ = (σ.mapMatrix (1 + s • S))⁻¹ := fun s =>
      (Matrix.inv_eq_right_inv (by rw [← map_mul, Matrix.mul_nonsing_inv _ (hu s), map_one])).symm
    have hm := matInv_mem (M := fun s : ℚ => σ.mapMatrix (1 + s • S)) (fun a b => by
      have := add_mem (const_mem (σ ((1 : Matrix (Fin n) (Fin n) E) a b))) (mul_mem cast_mem (const_mem (σ (S a b))))
      convert this using 1
      funext s
      simp [Rat.smul_def]) (fun s => by
        rw [← RingHom.map_det]; exact (_root_.map_ne_zero σ).2 (hu s).ne_zero) i j
    have := sub_mem (add_mem hm hm) (const_mem (σ ((1 : Matrix (Fin n) (Fin n) E) i j)))
    convert this using 1
    funext s
    simp only [two_mul, Matrix.sub_apply, Matrix.add_apply, map_sub, map_add (f := _),
      Pi.sub_apply, Pi.add_apply]
    have he := congrArg (fun M : Matrix (Fin n) (Fin n) K => M i j) (e s)
    change σ ((1 + s • S)⁻¹ i j) = (σ.mapMatrix (1 + s • S))⁻¹ i j at he
    simpa only [map_add (f := σ.mapMatrix)] using congrArg (fun x : K => x + x - σ ((1 : Matrix (Fin n) (Fin n) E) i j)) he

theorem exists_scalar (γ : Matrix (Fin n) (Fin n) E) : ∃ z : E, star z * z = 1 ∧ IsUnit (1 + z • γ) := by
  obtain ⟨θ', h0, hθ⟩ := GenusSelfDual.exists_imaginary_integer E
  generalize (θ' : E) = θ at h0 hθ
  replace hθ : star θ = -θ := hθ
  have hc : ∀ k : ℤ, star (1 + k * θ) = 1 - k * θ := fun k => by
    rw [star_add, star_one, star_mul', star_intCast, hθ]; ring
  have hne : ∀ k : ℤ, 1 + k * θ ≠ 0 := fun k hk => by
    have := hc k
    rw [hk, star_zero] at this
    exact two_ne_zero (α := E) (by linear_combination hk - this)
  have hne' : ∀ k : ℤ, 1 - k * θ ≠ 0 := fun k => by
    rw [← hc]; exact star_ne_zero.2 (hne k)
  let f : ℤ → E := fun k => (1 - k * θ) / (1 + k * θ)
  have hf : Function.Injective f := fun a b hab => by
    rw [div_eq_div_iff (hne a) (hne b)] at hab
    have : (2 * θ : E) * (a - b) = 0 := by linear_combination -hab
    exact_mod_cast sub_eq_zero.1 ((mul_eq_zero.1 this).resolve_left (mul_ne_zero two_ne_zero h0))
  obtain ⟨_, ⟨k, rfl⟩, hk⟩ := (Set.infinite_range_of_injective hf).exists_notMem_finite
    (GenusSelfDual.finite_not_isUnit_one_add_smul (RingHom.id E) γ)
  refine ⟨f k, ?_, not_not.1 hk⟩
  have := hc (-k)
  simp only [Int.cast_neg, neg_mul, ← sub_eq_add_neg, sub_neg_eq_add] at this
  simp only [f, star_div₀, hc, this]
  rw [div_mul_div_comm, mul_comm, div_self (mul_ne_zero (hne' k) (hne k))]

end Cayley

end GlobalTheory.LFCompare
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.UnitaryExistence.EqZeroOfMul =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsIoLFRecIff =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsIoLFRecIff", "h": "module\n\npublic import Formalism.LocalToGlobal.ProjectiveLattices.ThClassPinsRec\npublic import Development.AbelianVarietyTheory.BlockTheory.ExistenceTori.CoefficientSpaceWeights\npublic import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ThetaLetterEquivConjugate\npublic import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.EqZeroOfMul\nimport Formalism.GradedWeylDivisibility.DualWeylDominanceOf\nimport Formalism.GradedWeylDivisibility.FinalD\nimport Mathlib.Algebra.GroupWithZero.Submonoid.CancelMulZero\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.LFCompare

open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor NumberField MvPolynomial Formalism.BasicNotions Formalism.L2.Pj Formalism.L2.DIV
open GlobalTheory.IndefiniteRowSideFullHecke.CoefficientSpaceWeights
open scoped Matrix

theorem exists_rep {G K V W : Type} [Monoid G] [Field K] [AddCommGroup V] [Module K V] [AddCommGroup W] [Module K W]
    (io : V →ₗ[K] W) (hio : Function.Injective io) (R : G →* Module.End K W)
    (hst : ∀ g v, R g (io v) ∈ LinearMap.range io) :
    ∃ φ : G →* Module.End K V, ∀ g v, io (φ g v) = R g (io v) := by
  let f : G → Module.End K V := fun g => (LinearEquiv.ofInjective io hio).symm.toLinearMap ∘ₗ
    LinearMap.codRestrict (LinearMap.range io) (R g ∘ₗ io) (hst g)
  have hf : ∀ g v, io (f g v) = R g (io v) := fun g v => LinearEquiv.ofInjective_symm_apply (h := hio) io _
  refine ⟨⟨⟨f, ?_⟩, fun g h => ?_⟩, hf⟩
  · ext v
    exact hio (by rw [hf, map_one]; rfl)
  · ext v
    exact hio (by rw [hf, map_mul, Module.End.mul_apply, Module.End.mul_apply, hf, hf])

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {n : ℕ}

def uGL (γ : Matrix (Fin n) (Fin n) E) (h : γᴴ * γ = 1) : GL (Fin n) E := ⟨γ, γᴴ, mul_eq_one_comm.1 h, h⟩

theorem diag_unitary {t : Fin n → E} (ht : ∀ i, star (t i) * t i = 1) :
    (Matrix.diagonal t)ᴴ * Matrix.diagonal t = 1 := by
  rw [Matrix.diagonal_conjTranspose, Matrix.diagonal_mul_diagonal, ← Matrix.diagonal_one]
  congr 1
  funext i
  exact ht i

theorem det_norm_one {γ : Matrix (Fin n) (Fin n) E} (h : γᴴ * γ = 1) : star γ.det * γ.det = 1 := by
  rw [← Matrix.det_conjTranspose, ← Matrix.det_mul, h, Matrix.det_one]

theorem exists_diag_det {γ : Matrix (Fin n) (Fin n) E} (h : γᴴ * γ = 1) :
    ∃ t : Fin n → E, (∀ i, star (t i) * t i = 1) ∧ (Matrix.diagonal t).det = γ.det := by
  cases n with
  | zero => exact ⟨fun _ => 1, fun i => i.elim0, by simp⟩
  | succ m =>
    refine ⟨Fin.cons γ.det fun _ => 1, fun i => ?_, by simp [Fin.prod_univ_succ]⟩
    refine Fin.cases ?_ (fun j => ?_) i
    · simpa using det_norm_one h
    · simp

section Rho

variable {K ι : Type} [Field K] [NumberField K] [Fintype ι] (emb : ι → E →+* K) (lam : ι → DomWeight n)

theorem rhoVr_unitary (γ : Matrix (Fin n) (Fin n) E) (h : γᴴ * γ = 1) (v : VV K lam) :
    ((rhoVr emb lam (uGL γ h) v : VV K lam) : Pol K ι n) =
      (∏ τ, emb τ γ.det ^ (-(lam τ).detShift)) • Formalism.GradedWeylDivisibility.blockAct K (fun τ => γᴴ.map (emb τ)) (v : Pol K ι n) := by
  change detTwK lam (invTrK (embGL emb (uGL γ h))) • trAct (invTrK (embGL emb (uGL γ h))) (v : Pol K ι n) = _
  congr 1
  refine Finset.prod_congr rfl fun τ _ => ?_
  rw [detPow, Units.val_zpow_eq_zpow_val, zpow_neg, ← inv_zpow]
  congr 1
  change (γᴴ.map (emb τ))ᵀ.det = _
  rw [Matrix.det_transpose, ← RingHom.mapMatrix_apply, ← RingHom.map_det, Matrix.det_conjTranspose, ← map_inv₀,
    eq_inv_of_mul_eq_one_left (det_norm_one h)]

theorem natW_cast (μ : DomWeight n) (i : Fin n) : (μ.natW i : ℤ) = μ.w i - μ.detShift := by
  have : μ.detShift ≤ μ.w i := by
    rw [DomWeight.detShift, dif_pos i.pos]
    exact μ.anti (by rw [Fin.le_def]; have := i.isLt; simp only; omega)
  rw [DomWeight.natW, Int.toNat_of_nonneg (by omega)]

theorem rhoVr_diag {t : Fin n → E} (ht : ∀ i, star (t i) * t i = 1) (v : VV K lam)
    (hv : (v : Pol K ι n) = ten fun τ => extremal K n (lam τ)) :
    rhoVr emb lam (uGL _ (diag_unitary ht)) v = (∏ τ, ∏ i, emb τ (t i) ^ (-(lam τ).w i)) • v := by
  apply Subtype.ext
  rw [rhoVr_unitary, Submodule.coe_smul, hv, ten, map_prod]
  have e : ∀ τ, Formalism.GradedWeylDivisibility.blockAct K (fun τ => (Matrix.diagonal t)ᴴ.map (emb τ))
      (Formalism.GradedWeylDivisibility.blockEmb K τ (extremal K n (lam τ))) =
      (∏ i, (emb τ (t i))⁻¹ ^ (lam τ).natW i) • Formalism.GradedWeylDivisibility.blockEmb K τ (extremal K n (lam τ)) := fun τ => by
    rw [(Formalism.GradedWeylDivisibility.blockActTensor K K ι n n _).1, Matrix.diagonal_conjTranspose, Matrix.diagonal_map (map_zero _),
      extremal, Formalism.GradedWeylDivisibility.rowActDiagWeight K n n _ _ _
        (Formalism.GradedWeylDivisibility.hwRowWeight K n n le_rfl _ (natW_anti (lam τ))), map_smul]
    congr 1
    refine Finset.prod_congr rfl fun i _ => ?_
    rw [Pi.star_apply, eq_inv_of_mul_eq_one_left (ht i), map_inv₀]
    simp [Formalism.GradedWeylDivisibility.rowNu]
  simp only [e]
  rw [Finset.prod_smul, smul_smul, ← Finset.prod_mul_distrib]
  congr 1
  refine Finset.prod_congr rfl fun τ _ => ?_
  rw [Matrix.det_diagonal, map_prod, ← Finset.prod_zpow, ← Finset.prod_mul_distrib]
  refine Finset.prod_congr rfl fun i _ => ?_
  have h0 : emb τ (t i) ≠ 0 := (_root_.map_ne_zero _).2 (right_ne_zero_of_mul_eq_one (ht i))
  rw [← zpow_natCast, natW_cast, inv_zpow', ← zpow_add₀ h0]
  congr 1
  ring

theorem rhoVr_mem (Γ : ℚ → Matrix (Fin n) (Fin n) E) (hΓ : ∀ s, (Γ s)ᴴ * Γ s = 1)
    (hr : ∀ (σ : E →+* K) i j, (fun s => σ (Γ s i j)) ∈ ratFn K) (v : VV K lam) (ℓ : VV K lam →ₗ[K] K) :
    (fun s => ℓ (rhoVr emb lam (uGL _ (hΓ s)) v)) ∈ ratFn K := by
  obtain ⟨ℓ', hℓ⟩ := LinearMap.exists_extend ℓ
  have hd : ∀ (τ : ι) (e : ℤ), (fun s => emb τ (Γ s).det ^ e) ∈ ratFn K := fun τ e => by
    refine zpow_mem (f := fun s => emb τ (Γ s).det) ?_
      (fun s => (_root_.map_ne_zero _).2 (right_ne_zero_of_mul_eq_one (det_norm_one (hΓ s)))) e
    simp only [RingHom.map_det]
    exact det_mem fun i j => hr _ i j
  have h1 := aeval_mem (σ := ι × Fin n × Fin n) (fun s x b => ((Γ s)ᴴ.map (emb x.1)) x.2.1 b)
    (fun x b => (x.1, b, x.2.2)) (fun x b => hr ((emb x.1).comp (starRingEnd E)) b x.2.1) (v : Pol K ι n) ℓ'
  have := mul_mem (Subalgebra.prod_mem (ratFn K) (t := Finset.univ) fun τ _ => hd τ (-(lam τ).detShift)) h1
  convert this using 1
  funext s
  rw [← hℓ, LinearMap.comp_apply, Submodule.subtype_apply, rhoVr_unitary, map_smul, Pi.mul_apply, Finset.prod_apply]
  rfl

end Rho

section Letters

variable {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {l : Level H} (Dw : Datum H) (c : Coeff l)

theorem embF_conjugate (τ : E →+* ℂ) (x : E) : embF c (ComplexEmbedding.conjugate τ) x = embF c τ (star x) :=
  Subtype.ext (IsCMField.complexEmbedding_complexConj E τ x).symm


variable (n) in
def letRep : GL (Fin n) E →* Module.End c.F (MvPolynomial (LtN Dw n) c.F) :=
  ((renameEquiv c.F (Harm.thetaLetterEquiv Dw n)).toLinearEquiv.symm.conjRingEquiv : _ →* _).comp
    ((Harm.colRep c.F (Psi H) Dw.p Dw.q (Fin n)).comp (embGL (embPsi c)))

theorem rename_letRep (g : GL (Fin n) E) (P : MvPolynomial (LtN Dw n) c.F) :
    rename (Harm.thetaLetterEquiv Dw n) (letRep n Dw c g P) =
      Harm.colAct c.F (Psi H) Dw.p Dw.q (Fin n) (embGL (embPsi c) g) (rename (Harm.thetaLetterEquiv Dw n) P) :=
  (renameEquiv c.F (Harm.thetaLetterEquiv Dw n)).apply_symm_apply _

theorem letRep_unitary (γ : Matrix (Fin n) (Fin n) E) (h : γᴴ * γ = 1) (P : MvPolynomial (LtN Dw n) c.F) :
    letRep n Dw c (uGL γ h) P = gaStar c (γ.map (IsCMField.complexConj E)) P := by
  apply rename_injective _ (Harm.thetaLetterEquiv Dw n).injective
  rw [rename_letRep, Harm.colAct_apply]
  rw [← AlgHom.comp_apply, ← AlgHom.comp_apply]
  refine DFunLike.congr_fun ?_ P
  refine MvPolynomial.algHom_ext fun ⟨τ, i, b⟩ => ?_
  rw [AlgHom.comp_apply, AlgHom.comp_apply, rename_X, Formalism.L2.Pj.gaStar, aeval_X]
  rcases Harm.half_cases (Ψ := InPsi H) (ComplexEmbedding.involutive_conjugate E)
    (Harm.not_mem_hostType_iff H) τ with hτ | ⟨τ, hτ, rfl⟩
  · rw [Harm.thetaLetterEquiv_of_mem Dw hτ, Harm.colSubst_X_xVar, Harm.rename_letB_of_mem Dw c hτ]
    rfl
  · rw [Harm.thetaLetterEquiv_conjugate Dw hτ, Harm.colSubst_X_yVar, Harm.rename_letB_conjugate Dw c hτ]
    congr 1
    funext k
    exact congrArg (embF c τ) (star_star (γ k b)).symm

theorem letRep_mem (a : (E →+* ℂ) × ℕ → ℕ) (g : GL (Fin n) E) {P : MvPolynomial (LtN Dw n) c.F}
    (hP : P ∈ Submodule.span c.F (HHa Dw.mult n c.F ComplexEmbedding.conjugate (InPsi H) (fun τ i => a (τ, i)))) :
    letRep n Dw c g P ∈
      Submodule.span c.F (HHa Dw.mult n c.F ComplexEmbedding.conjugate (InPsi H) (fun τ i => a (τ, i))) := by
  rw [← Submodule.mem_comap]
  refine Submodule.span_le.2 (fun Q hQ => ?_) hP
  rcases Harm.HHa_eq_zero_or_rowHighest (n := n) (K := c.F) (Ψ := InPsi H) (ComplexEmbedding.involutive_conjugate E)
    (Harm.not_mem_hostType_iff H) (fun _ => Harm.mult_of_mem Dw) (fun _ => Harm.mult_conjEmb_of_mem Dw)
    (fun τ i => a (τ, i)) with h0 | ⟨k, k', -, hk⟩
  · rw [h0 Q hQ]
    exact zero_mem _
  · refine Submodule.subset_span ((hk _).2 ?_)
    exact (rename_letRep Dw c g Q).symm ▸ Harm.colAct_mem_rowHighest _ ((hk Q).1 hQ)

theorem gaStar_mem (Γ : ℚ → Matrix (Fin n) (Fin n) E)
    (hr : ∀ (σ : E →+* c.F) i j, (fun s => σ (Γ s i j)) ∈ ratFn c.F) (P : MvPolynomial (LtN Dw n) c.F)
    (ℓ : MvPolynomial (LtN Dw n) c.F →ₗ[c.F] c.F) :
    (fun s => ℓ (gaStar c ((Γ s).map (IsCMField.complexConj E)) P)) ∈ ratFn c.F := by
  have := aeval_mem (σ := LtN Dw n) (σ' := LtN Dw n)
    (fun s x j => embF c x.1 (IsCMField.complexConj E (Γ s j x.2.2))) (fun x j => ⟨x.1, x.2.1, j⟩)
    (fun x j => hr ((embF c x.1).comp (starRingEnd E)) j x.2.2) P ℓ
  simpa only [Formalism.L2.Pj.gaStar, letB, Matrix.map_apply] using this

theorem gaStar_minorP (u : Fin n → E) (σ : E →+* ℂ) (i : ℕ) (hi : i < Dw.mult σ) (col : Fin (i + 1) → Fin n) :
    gaStar c (Matrix.diagonal u) (minorPolynomial c σ i hi col) = (∏ b, embF c σ (u (col b))) • minorPolynomial c σ i hi col := by
  rw [minorPolynomial, AlgHom.map_det, smul_eq_C_mul, map_prod, ← Matrix.det_mul_row]
  congr 1
  ext s b : 2
  simp only [AlgHom.mapMatrix_apply, Matrix.map_apply, Matrix.of_apply, Formalism.L2.Pj.gaStar, aeval_X, letB]
  rw [Finset.sum_eq_single (col b) (fun j _ hj => by rw [Matrix.diagonal_apply_ne _ hj, map_zero, map_zero, zero_mul])
    (by simp), Matrix.diagonal_apply_eq]

theorem mult_le (σ : E →+* ℂ) : Dw.mult σ ≤ Dw.p + Dw.q := by
  unfold Datum.mult
  split_ifs <;> omega


open Classical in
theorem gaStar_pG {a : (E →+* ℂ) × ℕ → ℕ} (ha : IsPartFam Dw a) (hn : Dw.p + Dw.q ≤ n) (u : Fin n → E) :
    gaStar c (Matrix.diagonal u) (pG (Dw := Dw) c a n) =
      (∏ σ : E →+* ℂ, ∏ b : Fin n, embF c σ (u (if InPsi H σ then b else b.rev)) ^ part Dw a σ b) •
        pG (Dw := Dw) c a n := by
  rw [pG, map_prod, ← Finset.prod_smul]
  refine Finset.prod_congr rfl fun σ _ => ?_
  have hm : Dw.mult σ ≤ n := (mult_le Dw σ).trans hn
  let x : ℕ → c.F := fun b => if h : b < n then embF c σ (u (if InPsi H σ then ⟨b, h⟩ else Fin.rev ⟨b, h⟩)) else 1
  have e : ∏ b : Fin n, embF c σ (u (if InPsi H σ then b else b.rev)) ^ part Dw a σ b =
      ∏ i : Fin (Dw.mult σ), (∏ b ∈ Finset.range (i + 1), x b) ^ aStep Dw a σ i := by
    have t := tele x (part Dw a σ) (part_anti ha σ) (Dw.mult σ)
    rw [show part Dw a σ (Dw.mult σ) = 0 from if_neg (lt_irrefl _), pow_zero, mul_one,
      Finset.prod_subset (Finset.range_mono hm) (f := fun b => x b ^ part Dw a σ b) (fun b _ hb => by
        rw [show part Dw a σ b = 0 from if_neg (by simpa using hb), pow_zero]),
      Finset.prod_range, Finset.prod_range] at t
    refine Eq.trans ?_ (t.symm.trans ?_)
    · refine Finset.prod_congr rfl fun b _ => ?_
      simp only [x, dif_pos b.isLt]
    · refine Finset.prod_congr rfl fun i _ => ?_
      rw [aStep, part, part, if_pos i.isLt]
  rw [e, map_prod, ← Finset.prod_smul]
  refine Finset.prod_congr rfl fun i _ => ?_
  have hi : i.val + 1 ≤ n := lt_of_lt_of_le i.isLt hm
  rw [dif_pos hi, map_pow, ← smul_pow]
  congr 1
  by_cases hσ : InPsi H σ
  · rw [if_pos hσ, gaStar_minorP, Finset.prod_range]
    congr 1
    refine Finset.prod_congr rfl fun b _ => ?_
    simp only [x, dif_pos (lt_of_lt_of_le b.isLt hi), if_pos hσ]
    rfl
  · rw [if_neg hσ, gaStar_minorP, Finset.prod_range, ← Equiv.prod_comp Fin.revPerm]
    congr 1
    refine Finset.prod_congr rfl fun b _ => ?_
    simp only [x, dif_pos (lt_of_lt_of_le b.isLt hi), if_neg hσ]
    congr 2
    apply Fin.ext
    have := b.isLt
    simp
    omega

theorem prod_emb {M : Type} [CommMonoid M] (F : (E →+* ℂ) → M) :
    ∏ σ, F σ = ∏ τ : Psi H, F τ.1 * F (ComplexEmbedding.conjugate τ.1) := by
  classical
  rw [← Fintype.prod_subtype_mul_prod_subtype (InPsi H), Finset.prod_mul_distrib]
  congr 1
  · convert rfl
  · refine (Fintype.prod_equiv (Equiv.subtypeEquiv (ComplexEmbedding.involutive_conjugate E).toPerm fun τ => ?_)
      _ _ fun τ => rfl).symm
    have := Harm.not_mem_hostType_iff H (ComplexEmbedding.conjugate τ)
    rw [show conjEmb (ComplexEmbedding.conjugate τ) = τ from ComplexEmbedding.involutive_conjugate E τ] at this
    exact this.symm

theorem gaStar_pG_vac {a : (E →+* ℂ) × ℕ → ℕ} (ha : IsPartFam Dw a) (hn : Dw.p + Dw.q ≤ n) (d : Psi H → ℤ)
    {t : Fin n → E} (ht : ∀ i, star (t i) * t i = 1) :
    vacChar c n d (Matrix.diagonal t) • gaStar c ((Matrix.diagonal t).map (IsCMField.complexConj E))
      (pG (Dw := Dw) c a n) =
      (∏ τ, ∏ i, embPsi c τ (t i) ^ (-(lamP Dw n ha d τ).w i)) • pG (Dw := Dw) c a n := by
  rw [Matrix.diagonal_map (map_zero _), gaStar_pG Dw c ha hn, smul_smul, prod_emb (H := H), vacChar,
    ← Finset.prod_mul_distrib]
  congr 1
  refine Finset.prod_congr rfl fun τ _ => ?_
  have h1 : ¬ InPsi H (ComplexEmbedding.conjugate τ.1) := by
    have := Harm.not_mem_hostType_iff H τ.1
    exact fun h => this.2 h τ.2
  simp only [if_pos τ.2, if_neg h1]
  rw [Matrix.det_diagonal, map_prod, ← Finset.prod_zpow, ← Equiv.prod_comp Fin.revPerm
    (fun b => embF c (ComplexEmbedding.conjugate τ.1) (IsCMField.complexConj E (t b.rev)) ^
      part Dw a (ComplexEmbedding.conjugate τ.1) b), ← Finset.prod_mul_distrib, ← Finset.prod_mul_distrib]
  refine Finset.prod_congr rfl fun i _ => ?_
  have h0 : embF c τ.1 (t i) ≠ 0 := (_root_.map_ne_zero _).2 (right_ne_zero_of_mul_eq_one (ht i))
  have e1 : embF c τ.1 (IsCMField.complexConj E (t i)) = (embF c τ.1 (t i))⁻¹ := by
    rw [← map_inv₀, ← eq_inv_of_mul_eq_one_left (ht i)]; rfl
  have e2 : embF c (ComplexEmbedding.conjugate τ.1) (IsCMField.complexConj E (t i)) = embF c τ.1 (t i) := by
    rw [embF_conjugate]; exact congrArg _ (star_star _)
  simp only [Fin.revPerm_apply, Fin.rev_rev, e1, e2, embPsi, lamP]
  rw [← zpow_natCast, ← zpow_natCast, inv_zpow', ← zpow_add₀ h0, ← zpow_add₀ h0]
  congr 1
  ring

end Letters

theorem pow_eq_one_of_det {K V : Type} [Field K] [AddCommGroup V] [Module K V] [Module.Finite K V]
    (ρ φ : GL (Fin n) E →* Module.End K V) (g : GL (Fin n) E) (hg : (g : Matrix (Fin n) (Fin n) E).det = 1) (s : K)
    (h : ∀ v, ρ g v = s • φ g v) : s ^ Module.finrank K V = 1 := by
  have e1 : LinearMap.det (ρ g) = 1 := congrArg Units.val (char_eq_one (LinearMap.det.comp ρ).toHomUnits g hg)
  have e2 : LinearMap.det (φ g) = 1 := congrArg Units.val (char_eq_one (LinearMap.det.comp φ).toHomUnits g hg)
  rwa [show ρ g = s • φ g from LinearMap.ext h, LinearMap.det_smul, e2, mul_one] at e1

theorem scalar_eq_of_diag {K V : Type} [Field K] [CharZero K] [AddCommGroup V] [Module K V] [Module.Finite K V]
    (ρ φ : GL (Fin n) E →* Module.End K V) (w : V) (hw0 : w ≠ 0) (cga vac : Matrix (Fin n) (Fin n) E → K)
    (hsm' : ∀ γ (h : γᴴ * γ = 1) v, ρ (uGL γ h) v = cga γ • φ (uGL γ h) v)
    (hdiag : ∀ t : Fin n → E, (∀ i, star (t i) * t i = 1) → cga (Matrix.diagonal t) = vac (Matrix.diagonal t))
    (hdet : ∀ γ δ, γ.det = δ.det → vac γ = vac δ) (hvm : ∀ γ δ, vac (γ * δ) = vac γ * vac δ) (hv1 : vac 1 ≠ 0)
    (hrat : ∀ (Γ : ℚ → Matrix (Fin n) (Fin n) E) (hΓ : ∀ s, (Γ s)ᴴ * Γ s = 1),
      (∀ (σ : E →+* K) i j, (fun s => σ (Γ s i j)) ∈ ratFn K) → (fun s => vac (Γ s)) ∈ ratFn K ∧
        ∀ ℓ : V →ₗ[K] K, (fun s => ℓ (ρ (uGL _ (hΓ s)) w)) ∈ ratFn K ∧ (fun s => ℓ (φ (uGL _ (hΓ s)) w)) ∈ ratFn K)
    (γ : Matrix (Fin n) (Fin n) E) (hγ : γᴴ * γ = 1) : cga γ = vac γ := by
  have hφ0 : ∀ g, φ g w ≠ 0 := fun g h0 => hw0 (by
    rw [← Module.End.one_apply (R := K) w, ← map_one φ, ← inv_mul_cancel g, map_mul, Module.End.mul_apply, h0,
      map_zero])
  have hsm : ∀ γ (h : γᴴ * γ = 1), ρ (uGL γ h) = cga γ • φ (uGL γ h) := fun γ h => LinearMap.ext (hsm' γ h)
  have hun : ∀ {γ δ : Matrix (Fin n) (Fin n) E}, γᴴ * γ = 1 → δᴴ * δ = 1 → (γ * δ)ᴴ * (γ * δ) = 1 :=
    fun {γ δ} h h' => by
      rw [Matrix.conjTranspose_mul, Matrix.mul_assoc, ← Matrix.mul_assoc γᴴ, h, Matrix.one_mul, h']
  have hmul : ∀ γ δ (h : γᴴ * γ = 1) (h' : δᴴ * δ = 1), cga (γ * δ) = cga γ * cga δ := fun γ δ h h' => by
    have e : uGL _ (hun h h') = uGL γ h * uGL δ h' := Units.ext rfl
    have e1 := hsm _ (hun h h')
    rw [e, map_mul ρ, hsm, hsm, smul_mul_smul_comm, ← map_mul] at e1
    exact (smul_left_injective K (hφ0 _) (LinearMap.congr_fun e1 w)).symm
  haveI : Nontrivial V := nontrivial_of_ne _ _ hw0
  have hN : Module.finrank K V ≠ 0 := Module.finrank_pos.ne'
  have hpow : ∀ γ (h : γᴴ * γ = 1), cga γ ^ Module.finrank K V = vac γ ^ Module.finrank K V := fun γ h => by
    obtain ⟨t, ht, hd⟩ := exists_diag_det h
    have hD := diag_unitary ht
    have hD' : (Matrix.diagonal t)ᴴᴴ * (Matrix.diagonal t)ᴴ = 1 := by
      rw [Matrix.conjTranspose_conjTranspose, mul_eq_one_comm.1 hD]
    have hd1 : (γ * (Matrix.diagonal t)ᴴ).det = 1 := by
      rw [Matrix.det_mul, Matrix.det_conjTranspose, hd, mul_comm, det_norm_one h]
    have e1 := pow_eq_one_of_det ρ φ (uGL _ (hun h hD')) hd1 _ (hsm' _ (hun h hD'))
    have e3 : γ = γ * (Matrix.diagonal t)ᴴ * Matrix.diagonal t := by rw [Matrix.mul_assoc, hD, Matrix.mul_one]
    rw [← hdet _ _ hd, ← hdiag t ht, congrArg cga e3, hmul _ _ (hun h hD') hD, mul_pow, e1, one_mul]
  have hone : cga 1 = vac 1 := by simpa using hdiag 1 (by simp)
  have hcay : ∀ γ, γᴴ * γ = 1 → IsUnit (1 + γ) → cga γ = vac γ := fun γ h h1 => by
    obtain ⟨Γ, hΓ, hΓ0, rfl, hr⟩ := exists_curve K γ h h1
    obtain ⟨ℓ₀, h₀⟩ := not_forall.1 (mt (Module.forall_dual_apply_eq_zero_iff K _).1 (hφ0 (uGL _ (hΓ 0))))
    obtain ⟨ℓ₁, h₁⟩ := not_forall.1 (mt (Module.forall_dual_apply_eq_zero_iff K _).1 (hφ0 (uGL _ (hΓ 1))))
    obtain ⟨hv, hℓ⟩ := hrat Γ hΓ hr
    have he : ∀ (ℓ : V →ₗ[K] K) (s : ℚ), ℓ (ρ (uGL _ (hΓ s)) w) = cga (Γ s) * ℓ (φ (uGL _ (hΓ s)) w) :=
      fun ℓ s => by rw [hsm', map_smul, smul_eq_mul]
    exact scalar_eq (c := fun s => cga (Γ s)) hN hv (hℓ ℓ₀).1 (hℓ ℓ₀).2 (hℓ ℓ₁).1 (hℓ ℓ₁).2
      (he ℓ₀) (he ℓ₁) (fun s => hpow _ (hΓ s)) (by rw [hΓ0, hone]) (by rwa [hΓ0]) h₀ h₁
  obtain ⟨z, hz, hz1⟩ := exists_scalar γ
  have hz' : ∀ _ : Fin n, star (star z) * star z = 1 := fun _ => by rw [star_star, mul_comm, hz]
  have hzγ : (z • γ)ᴴ * (z • γ) = 1 := by
    rw [Matrix.conjTranspose_smul, smul_mul_smul_comm, hz, hγ, one_smul]
  have e : γ = Matrix.diagonal (fun _ => star z) * (z • γ) := by
    rw [← Matrix.smul_eq_diagonal_mul, smul_smul, hz, one_smul]
  rw [e, hmul _ _ (diag_unitary hz') hzγ, hvm, hdiag _ hz', hcay _ hzγ hz1]

theorem exponents_eq_zero {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} (m : Psi H → ℤ)
    (h : ∀ ζ : E, star ζ * ζ = 1 → ∏ τ : Psi H, τ.1 ζ ^ m τ = 1) : m = 0 := by
  classical
  have key : ∀ θ : E, star θ = -θ → ∑ τ : Psi H, (m τ : ℂ) * τ.1 θ = 0 := fun θ hθ => by
    have hd : ∀ τ : Psi H, HasDerivAt (fun s : ℂ => ((1 + s * τ.1 θ) / (1 - s * τ.1 θ)) ^ m τ)
        ((m τ : ℂ) * (2 * τ.1 θ)) 0 := fun τ => by
      have h1 : HasDerivAt (fun s : ℂ => (1 + s * τ.1 θ) / (1 - s * τ.1 θ)) (2 * τ.1 θ) 0 := by
        refine HasDerivAt.congr_deriv ((((hasDerivAt_id (0 : ℂ)).mul_const (τ.1 θ)).const_add 1).fun_div
          (((hasDerivAt_id (0 : ℂ)).mul_const (τ.1 θ)).const_sub 1) (by simp)) ?_
        simp; ring
      have h2 := (hasDerivAt_zpow (m τ) (1 : ℂ) (Or.inl one_ne_zero)).comp_of_eq 0 h1 (by simp)
      simpa [Function.comp_def] using h2
    have hp := HasDerivAt.fun_finsetProd (u := Finset.univ) fun τ _ => hd τ
    simp only [zero_mul, add_zero, sub_zero, div_one, one_zpow, Finset.prod_const_one, one_smul] at hp
    have hq : ∀ s : ℚ, ∏ τ : Psi H, ((1 + (s : ℂ) * τ.1 θ) / (1 - (s : ℂ) * τ.1 θ)) ^ m τ = 1 := fun s => by
      have hc : ∀ s : ℚ, star (1 + (s : E) * θ) = 1 - s * θ := fun s => by
        rw [star_add, star_one, star_mul', star_ratCast, hθ]; ring
      have hne : 1 + (s : E) * θ ≠ 0 := fun hk => by
        have := hc s
        rw [hk, star_zero] at this
        exact two_ne_zero (α := E) (by linear_combination hk - this)
      have hne' : 1 - (s : E) * θ ≠ 0 := by rw [← hc]; exact star_ne_zero.2 hne
      have h' := hc (-s)
      simp only [Rat.cast_neg, neg_mul, ← sub_eq_add_neg, sub_neg_eq_add] at h'
      have := h ((1 + s * θ) / (1 - s * θ)) (by
        rw [star_div₀, hc, h', div_mul_div_comm, mul_comm, div_self (mul_ne_zero hne hne')])
      simpa using this
    have hs : Filter.Tendsto (fun k : ℕ => (1 / ((k : ℂ) + 1))) Filter.atTop (nhdsWithin 0 {0}ᶜ) :=
      tendsto_nhdsWithin_iff.2 ⟨tendsto_one_div_add_atTop_nhds_zero_nat, Filter.Eventually.of_forall fun k =>
        one_div_ne_zero (Nat.cast_add_one_ne_zero k)⟩
    have ht := (hasDerivAt_iff_tendsto_slope_zero.1 hp).comp hs
    have h0 : ∑ τ : Psi H, (m τ : ℂ) * (2 * τ.1 θ) = 0 := by
      refine tendsto_nhds_unique ht (tendsto_const_nhds.congr fun k => ?_)
      have := hq (1 / (k + 1))
      push_cast at this
      simp only [Function.comp_apply, zero_add, this]
      simp
    have : 2 * ∑ τ : Psi H, (m τ : ℂ) * τ.1 θ = 0 := by
      rw [← h0, Finset.mul_sum]
      exact Finset.sum_congr rfl fun _ _ => by ring
    simpa using this
  have hli : LinearIndependent ℂ (fun σ : E →+* ℂ => (σ : E → ℂ)) :=
    (linearIndependent_monoidHom E ℂ).comp (fun σ : E →+* ℂ => (σ : E →* ℂ)) RingHom.coe_monoidHom_injective
  let μ : (E →+* ℂ) → ℂ := fun σ => if h : InPsi H σ then (m ⟨σ, h⟩ : ℂ) else
    -(m ⟨ComplexEmbedding.conjugate σ, (Harm.not_mem_hostType_iff H σ).1 h⟩ : ℂ)
  have hμ := Fintype.linearIndependent_iff.1 hli μ (by
    funext z
    have := prod_emb (H := H) (M := Multiplicative ℂ) fun σ => Multiplicative.ofAdd (μ σ * σ z)
    replace this : ∑ σ, μ σ * σ z = ∑ τ : Psi H, (μ τ.1 * τ.1 z +
      μ (ComplexEmbedding.conjugate τ.1) * ComplexEmbedding.conjugate τ.1 z) := this
    rw [Finset.sum_apply, Pi.zero_apply, ← key (z - star z) (by simp)]
    refine this.trans (Finset.sum_congr rfl fun τ _ => ?_)
    have h1 : ¬ InPsi H (ComplexEmbedding.conjugate τ.1) := fun h => (Harm.not_mem_hostType_iff H τ.1).2 h τ.2
    have h2 : τ.1 (star z) = ComplexEmbedding.conjugate τ.1 z := IsCMField.complexEmbedding_complexConj E τ.1 z
    simp only [μ, dif_pos τ.2, dif_neg h1, ComplexEmbedding.involutive_conjugate E τ.1, map_sub, h2]
    ring)
  funext τ
  have := hμ τ.1
  simp only [μ, dif_pos τ.2] at this
  exact_mod_cast this

section Scalar

variable {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {l : Level H} (c : Coeff l) (d : Psi H → ℤ)

theorem vacChar_congr {γ δ : Matrix (Fin n) (Fin n) E} (h : γ.det = δ.det) : vacChar c n d γ = vacChar c n d δ := by
  rw [vacChar, vacChar, h]

theorem vacChar_mul (γ δ : Matrix (Fin n) (Fin n) E) :
    vacChar c n d (γ * δ) = vacChar c n d γ * vacChar c n d δ := by
  simp only [vacChar, Matrix.det_mul, map_mul, mul_zpow, Finset.prod_mul_distrib]

theorem vacChar_mem (Γ : ℚ → Matrix (Fin n) (Fin n) E) (hΓ : ∀ s, (Γ s)ᴴ * Γ s = 1)
    (hr : ∀ (σ : E →+* c.F) i j, (fun s => σ (Γ s i j)) ∈ ratFn c.F) :
    (fun s => vacChar c n d (Γ s)) ∈ ratFn c.F := by
  have := Subalgebra.prod_mem (ratFn c.F) (t := Finset.univ) fun (τ : Psi H) _ =>
    zpow_mem (f := fun s => embPsi c τ (Γ s).det) (by
      simp only [RingHom.map_det]
      exact det_mem fun i j => hr (embPsi c τ) i j)
    (fun s => (_root_.map_ne_zero _).2 (right_ne_zero_of_mul_eq_one (det_norm_one (hΓ s)))) (-(d τ))
  convert this using 1
  funext s
  rw [Finset.prod_apply, vacChar]

end Scalar

section Comparison₂

variable {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {l : Level H} {Dw : Datum H} {c : Coeff l}
  {a : (E →+* ℂ) × ℕ → ℕ} {Ix : Type} [Fintype Ix]

theorem rhoM_coe (emb : Ix → E →+* c.F) (lam : Ix → DomWeight n) (g : GL (Fin n) E) :
    rhoM c emb lam (g : Matrix (Fin n) (Fin n) E) = rhoVr emb lam g := by
  rw [rhoM, dif_pos ((Matrix.isUnit_iff_isUnit_det _).1 g.isUnit)]
  exact congrArg _ (Units.ext rfl)

theorem ne_zero_of_hwOK {lam : Ix → DomWeight n} {hw : VVc c lam} (h : hwOK c lam hw) : hw ≠ 0 := fun h0 => by
  have : ten (fun τ => extremal c.F n (lam τ)) = 0 := h.symm.trans (congrArg Subtype.val h0)
  obtain ⟨τ, -, hτ⟩ := Finset.prod_eq_zero_iff.1 this
  exact Formalism.GradedWeylDivisibility.hwNe c.F n n le_rfl _
    (rename_injective _ (Prod.mk_right_injective τ) (hτ.trans (map_zero _).symm))

variable {lam : Ix → DomWeight n} {io : VVc c lam →ₗ[c.F] MvPolynomial (LtN Dw n) c.F} {hw : VVc c lam}
  {cga : Matrix (Fin n) (Fin n) E → c.F} {nab0 : Submodule (𝓞 c.F) (VVc c lam)}

theorem isPartFam_of_tie {emb : Ix → E →+* c.F} (hok : hwOK c lam hw)
    (h : IoLF (Dw := Dw) c a io (rhoM c emb lam) cga nab0 hw (pG (Dw := Dw) c a n)) : IsPartFam Dw a := by
  obtain ⟨-, hinj, hrange, -⟩ := h
  obtain ⟨Q, hQ, hQ0⟩ : ∃ Q ∈ HHa Dw.mult n c.F ComplexEmbedding.conjugate (InPsi H) (fun τ i => a (τ, i)),
      Q ≠ 0 := by
    by_contra hne
    push Not at hne
    have := LinearMap.mem_range_self io hw
    rw [hrange, Submodule.span_eq_bot.2 hne, Submodule.mem_bot] at this
    exact ne_zero_of_hwOK hok (hinj (this.trans (map_zero io).symm))
  obtain ⟨-, h₂, h₃⟩ := (Harm.mem_HHa_iff_rename (Ψ := InPsi H) (ComplexEmbedding.involutive_conjugate E)
    (Harm.not_mem_hostType_iff H) (fun _ => Harm.mult_of_mem Dw) (fun _ => Harm.mult_conjEmb_of_mem Dw) _ Q).1 hQ
  have key (t : Psi H) (r r' : Fin Dw.p ⊕ Fin Dw.q) (hr : Harm.RowLT r r') :=
    Harm.rowDegree_le_of_rowAdd_eq hr.ne (fun e => hQ0 (rename_injective _ (Equiv.injective _)
      (e.trans (map_zero _).symm))) (h₂ t r) (h₂ t r') (h₃ t r r' hr)
  intro σ i j hij hj
  rcases hij.eq_or_lt with rfl | hlt
  · exact le_rfl
  rcases Harm.half_cases (Ψ := InPsi H) (ComplexEmbedding.involutive_conjugate E)
    (Harm.not_mem_hostType_iff H) σ with hσ | ⟨τ, hτ, rfl⟩
  · rw [Harm.mult_of_mem Dw hσ] at hj
    exact key ⟨σ, hσ⟩ (Sum.inl ⟨i, hlt.trans hj⟩) (Sum.inl ⟨j, hj⟩) hlt
  · replace hj : j < Dw.q := Harm.mult_conjEmb_of_mem Dw hτ ▸ hj
    exact key ⟨τ, hτ⟩ (Sum.inr ⟨i, hlt.trans hj⟩) (Sum.inr ⟨j, hj⟩) hlt

set_option synthInstance.maxHeartbeats 100000 in
theorem exists_lift {emb : Ix → E →+* c.F}
    (h : IoLF (Dw := Dw) c a io (rhoM c emb lam) cga nab0 hw (pG (Dw := Dw) c a n)) :
    ∃ φ : GL (Fin n) E →* Module.End c.F (VVc c lam), (∀ g v, io (φ g v) = letRep n Dw c g (io v)) ∧
      ∀ γ (hγ : γᴴ * γ = 1) v, rhoVr emb lam (uGL γ hγ) v = cga γ • φ (uGL γ hγ) v := by
  obtain ⟨-, hinj, hrange, heq, -⟩ := h
  obtain ⟨φ, hφ⟩ := exists_rep io hinj (letRep n Dw c) fun g v => by
    rw [hrange]
    exact letRep_mem Dw c a g (hrange ▸ LinearMap.mem_range_self io v)
  refine ⟨φ, hφ, fun γ hγ v => hinj ?_⟩
  rw [map_smul io, hφ, letRep_unitary, ← heq γ hγ v]
  exact congrArg (fun f => io (f v)) (rhoM_coe emb lam (uGL γ hγ)).symm

set_option synthInstance.maxHeartbeats 100000 in
theorem scalar_diag (e : Ix ≃ Psi H) (ha : IsPartFam Dw a) (d : Psi H → ℤ) (hok : hwOK c lam hw)
    (h : IoLF (Dw := Dw) c a io (rhoM c (fun x => embF c (e x).1) lam) cga nab0 hw (pG (Dw := Dw) c a n))
    {t : Fin n → E} (ht : ∀ i, star (t i) * t i = 1) :
    cga (Matrix.diagonal t) = vacChar c n d (Matrix.diagonal t) *
      ∏ x, ∏ i, embF c (e x).1 (t i) ^ ((lamP Dw n ha d (e x)).w i - (lam x).w i) := by
  obtain ⟨hn, hinj, -, heq, -, -, hhw, -⟩ := h
  have hD := diag_unitary ht
  have e1 := heq _ hD hw
  rw [show rhoM c _ lam (Matrix.diagonal t) = _ from rhoM_coe _ lam (uGL _ hD), rhoVr_diag _ _ ht hw hok,
    map_smul io, hhw] at e1
  have e2 := gaStar_pG_vac Dw c ha hn d ht
  have e3 := congrArg (vacChar c n d (Matrix.diagonal t) • ·) e1
  rw [smul_comm _ (cga _), e2, smul_smul, smul_smul] at e3
  have hp : pG (Dw := Dw) c a n ≠ 0 := fun h0 =>
    ne_zero_of_hwOK hok (hinj (hhw.trans (h0.trans (map_zero io).symm)))
  have e4 := smul_left_injective c.F hp e3
  have h0 : ∀ (σ : E →+* c.F) i, σ (t i) ≠ 0 := fun σ i =>
    (_root_.map_ne_zero _).2 (right_ne_zero_of_mul_eq_one (ht i))
  rw [← e.prod_comp] at e4
  refine mul_right_cancel₀ (Finset.prod_ne_zero_iff.2 fun x _ => Finset.prod_ne_zero_iff.2 fun i _ =>
    zpow_ne_zero _ (h0 _ i)) (e4.symm.trans ?_)
  rw [mul_assoc, ← Finset.prod_mul_distrib]
  congr 1
  refine Finset.prod_congr rfl fun x _ => ?_
  rw [← Finset.prod_mul_distrib]
  refine Finset.prod_congr rfl fun i _ => ?_
  rw [embPsi, ← zpow_add₀ (h0 _ i)]
  congr 1
  ring

theorem weight_eq_of_tie (e : Ix ≃ Psi H) (ha : IsPartFam Dw a) (hok : hwOK c lam hw)
    (h : IoLF (Dw := Dw) c a io (rhoM c (fun x => embF c (e x).1) lam) cga nab0 hw (pG (Dw := Dw) c a n)) :
    ∃ d : Psi H → ℤ, lam = fun x => lamP Dw n ha d (e x) := by
  obtain ⟨φ, -, hφ⟩ := exists_lift h
  haveI : Module.Finite c.F (VVc c lam) := Module.Finite.of_basis (bVV c.F lam)
  haveI : Nontrivial (VVc c lam) := nontrivial_of_ne _ _ (ne_zero_of_hwOK hok)
  have hN : Module.finrank c.F (VVc c lam) ≠ 0 := Module.finrank_pos.ne'
  generalize hNN : Module.finrank c.F (VVc c lam) = N at hN
  let κ : Ix → Fin n → ℤ := fun x i => (lamP Dw n ha 0 (e x)).w i - (lam x).w i
  have hκ : ∀ x i j, κ x i = κ x j := fun x i j => by
    have := exponents_eq_zero (fun τ => (κ (e.symm τ) i - κ (e.symm τ) j) * N) fun ζ hζ => by
      have hζ0 : ζ ≠ 0 := right_ne_zero_of_mul_eq_one hζ
      let t : Fin n → E := Pi.mulSingle i ζ * Pi.mulSingle j ζ⁻¹
      have ht : ∀ k, star (t k) * t k = 1 := fun k => by
        have h1 : star ζ⁻¹ * ζ⁻¹ = 1 := by rw [star_inv₀, ← mul_inv, hζ, inv_one]
        simp only [t, Pi.mul_apply, Pi.mulSingle_apply, star_mul']
        split_ifs <;> simp_all
      have hd : (Matrix.diagonal t).det = 1 := by
        simp [t, Finset.prod_mul_distrib, hζ0]
      have e1 := pow_eq_one_of_det _ φ (uGL _ (diag_unitary ht)) hd _ (hφ _ _)
      rw [hNN, scalar_diag e ha 0 hok h ht, vacChar, ← e.symm.prod_comp] at e1
      simp only [Pi.zero_apply, neg_zero, zpow_zero, Finset.prod_const_one, one_mul, Equiv.apply_symm_apply,
        ← Finset.prod_pow] at e1
      have e2 : ∏ τ : Psi H, embF c τ.1 ζ ^ ((κ (e.symm τ) i - κ (e.symm τ) j) * N) = 1 := by
        rw [← e1]
        refine Finset.prod_congr rfl fun τ _ => ?_
        have h0 : embF c τ.1 ζ ≠ 0 := (_root_.map_ne_zero _).2 hζ0
        rw [Finset.prod_pow, zpow_mul, zpow_natCast]
        congr 1
        simp only [t, Pi.mul_apply, map_mul, mul_zpow, Finset.prod_mul_distrib]
        rw [Finset.prod_eq_single i (fun k _ hk => by simp [hk]) (by simp),
          Finset.prod_eq_single j (fun k _ hk => by simp [hk]) (by simp), zpow_sub₀ h0]
        simp only [κ, div_eq_mul_inv, Pi.mulSingle_eq_same, map_inv₀, inv_zpow, Equiv.apply_symm_apply]
      have e3 := congrArg c.F.subtype e2
      rw [map_prod, map_one] at e3
      exact (Finset.prod_congr rfl fun τ _ => (map_zpow₀ (c.F.subtype : c.F →+* ℂ) (embF c τ.1 ζ) _).symm).trans e3
    have h1 := congrFun this (e x)
    simp only [Equiv.symm_apply_apply, Pi.zero_apply, mul_eq_zero, Nat.cast_eq_zero, hN, or_false] at h1
    exact sub_eq_zero.1 h1
  refine ⟨fun τ => if hn : 0 < n then -κ (e.symm τ) ⟨0, hn⟩ else 0, funext fun x => ?_⟩
  have : (lam x).w = (lamP Dw n ha (fun τ => if hn : 0 < n then -κ (e.symm τ) ⟨0, hn⟩ else 0) (e x)).w := by
    funext i
    have := hκ x ⟨0, i.pos⟩ i
    simp only [lamP, dif_pos i.pos, Equiv.symm_apply_apply, this]
    simp [κ, lamP]
  generalize lam x = μ, lamP Dw n ha _ (e x) = ν at this
  cases μ
  cases ν
  simpa using this

theorem scalar_eq_vacChar (e : Ix ≃ Psi H) (ha : IsPartFam Dw a) (d : Psi H → ℤ)
    (hl : lam = fun x => lamP Dw n ha d (e x)) (hok : hwOK c lam hw)
    (h : IoLF (Dw := Dw) c a io (rhoM c (fun x => embF c (e x).1) lam) cga nab0 hw (pG (Dw := Dw) c a n))
    (γ : Matrix (Fin n) (Fin n) E) (hγ : γᴴ * γ = 1) : cga γ = vacChar c n d γ := by
  obtain ⟨φ, hφ, hsm⟩ := exists_lift h
  haveI : Module.Finite c.F (VVc c lam) := Module.Finite.of_basis (bVV c.F lam)
  refine scalar_eq_of_diag (rhoVr (fun x => embF c (e x).1) lam) φ _ (ne_zero_of_hwOK hok) cga _
    hsm (fun t ht => ?_) (fun _ _ => vacChar_congr c d) (vacChar_mul c d) (by simp [vacChar])
    (fun Γ hΓ hr => ⟨vacChar_mem c d Γ hΓ hr, fun ℓ => ⟨rhoVr_mem _ _ Γ hΓ hr _ ℓ, ?_⟩⟩) γ hγ
  · rw [scalar_diag e ha d hok h ht, hl]
    simp
  · obtain ⟨r, hr'⟩ := io.exists_leftInverse_of_injective (LinearMap.ker_eq_bot.2 h.2.1)
    convert gaStar_mem Dw c Γ hr (io hw) (ℓ ∘ₗ r) using 2 with s
    rw [← letRep_unitary Dw c _ (hΓ s), ← hφ, LinearMap.comp_apply, ← LinearMap.comp_apply r, hr', LinearMap.id_apply]

end Comparison₂

section Compare

variable {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {l : Level H} (Dw : Datum H) (c : Coeff l) (n : ℕ)
  {a : (E →+* ℂ) × ℕ → ℕ}

theorem pins_of_ioLF {Ix : Type} [Fintype Ix] (e : Ix ≃ Psi H) (a : (E →+* ℂ) × ℕ → ℕ) (lam : Ix → DomWeight n)
    (io : VVc c lam →ₗ[c.F] MvPolynomial (LtN Dw n) c.F) (hw : VVc c lam) (cga : Matrix (Fin n) (Fin n) E → c.F)
    (hok : hwOK c lam hw) (h : IoLF (Dw := Dw) c a io (rhoM c (fun x => embF c (e x).1) lam) cga
      (nab0M c (fun x => embF c (e x).1) lam) hw (pG (Dw := Dw) c a n)) :
    ∃ (ha : IsPartFam Dw a) (d : Psi H → ℤ), (lam = fun x => lamP Dw n ha d (e x)) ∧
      ∀ γ : Matrix (Fin n) (Fin n) E, γᴴ * γ = 1 → cga γ = vacChar c n d γ := by
  have ha := isPartFam_of_tie hok h
  obtain ⟨d, hd⟩ := weight_eq_of_tie e ha hok h
  exact ⟨ha, d, hd, scalar_eq_vacChar e ha d hd hok h⟩

end Compare

end GlobalTheory.LFCompare
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsIoLFRecIff =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoefficientMapCommutesFieldAutomorphism =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoefficientMapCommutesFieldAutomorphism", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ConjTupRefl\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.NormalFam\npublic import Formalism.LocalToGlobal.IndefiniteReal.FWTie\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCcIsEquivAtSerOfOneMapRowOfCore\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.OscillatorModelExtensionFirst\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.RationalPointsGenerate\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.VectorValuedLiftFieldChange\nimport Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.TensorMapDescent\nimport Development.AbelianVarietyTheory.Proofs.HeightProofs.AdelicUnitaryRealPointsStructureRealPlaces\nimport Development.AbelianVarietyTheory.Proofs.JetHarmonics.WeightExponentsEmbeddingsDegree\npublic import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsIoLFRecIff\nimport Formalism.LocalToGlobal.Divisibility.CoefModLemmas\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.BlockTheory.ExistenceTori.CoefficientSpaceWeights\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.MarkAd\nimport Development.AbelianVarietyTheory.Definitions.ThetaValues.ExistsRootNotMem\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.IoConj

section General

open NumberField MvPolynomial ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj Formalism.BasicNotions Formalism.L2.DIV
open scoped Matrix

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {Dw : Datum H} {l : Level H}
  {c : Coeff l} (j : c.F →+* c.F) {n : ℕ}

theorem gaStar_map (hj : ∀ σ x, j (embF c σ x) = embF c σ x) (ga : Matrix (Fin n) (Fin n) E)
    (P : MvPolynomial (LtN Dw n) c.F) :
    Formalism.L2.Pj.gaStar c ga (map j P) = map j (Formalism.L2.Pj.gaStar c ga P) := by
  induction P using MvPolynomial.induction_on with
  | C x => rw [map_C, Formalism.L2.Pj.gaStar, aeval_C, aeval_C, algebraMap_eq, map_C]
  | add p q hp hq => simp only [map_add (f := _), hp, hq]
  | mul_X p v hp =>
    simp only [map_mul, hp, map_X]
    congr 1

    simp only [Formalism.L2.Pj.gaStar, aeval_X, letB, map_sum, map_mul, map_C, map_X, hj]

theorem pG_map (a : (E →+* ℂ) × ℕ → ℕ) : map j (pG (Dw := Dw) c a n) = pG (Dw := Dw) c a n := by
  have h : ∀ s i hi col, minorPolynomial (Dw := Dw) (n := n) c s i hi col = map j (minorPolynomial c s i hi col) := by
    intro s i hi col
    unfold minorPolynomial
    rw [RingHom.map_det]
    congr 1
    ext p q : 2
    simp
  symm
  unfold pG
  simp only [map_prod, map_pow]
  refine Finset.prod_congr rfl fun s _ => Finset.prod_congr rfl fun i _ => ?_
  congr 1
  split_ifs
  · exact h _ _ _ _
  · exact h _ _ _ _
  · rw [map_zero]

theorem rhoM_map (hj : ∀ σ x, j (embF c σ x) = embF c σ x) {Ix : Type} [Fintype Ix] (pl : Ix → (E →+* ℂ))
    (lam : Ix → DomWeight n) (ga : Matrix (Fin n) (Fin n) E) (v v' : VVc c lam)
    (h : (v' : Pol c.F Ix n) = map j (v : Pol c.F Ix n)) :
    (rhoM c (fun t => embF c (pl t)) lam ga v' : Pol c.F Ix n) =
      map j (rhoM c (fun t => embF c (pl t)) lam ga v : Pol c.F Ix n) := by
  unfold rhoM
  split_ifs with hg
  · show actP lam _ (v' : Pol c.F Ix n) = map _ (actP lam _ (v : Pol c.F Ix n))
    rw [h]
    refine GlobalTheory.IoExtend.polyAction_map _ lam _ _ (fun t => ?_) _
    refine Matrix.ext fun a b => ?_
    exact (hj (pl t) _).symm
  · simp

theorem exists_stable (hj : ∀ σ x, j (embF c σ x) = embF c σ x) {Ix : Type} [Fintype Ix] (pl : Ix → (E →+* ℂ))
    (hpl : Function.Injective pl) (hin : ∀ σ, InPsi H σ ↔ ∃ t, σ = pl t)
    (lam : Ix → DomWeight n) (a : (E →+* ℂ) × ℕ → ℕ) (io : VVc c lam →ₗ[c.F] MvPolynomial (LtN Dw n) c.F) (hw : VVc c lam)
    (h : IoLFRec c (fun t => embF c (pl t)) lam a io hw) :
    ∃ N : Submodule c.F (VVc c lam), hw ∈ N ∧
      (∀ ga : Matrix (Fin n) (Fin n) E, gaᴴ * ga = 1 → ∀ v ∈ N, rhoM c (fun t => embF c (pl t)) lam ga v ∈ N) ∧
      ∀ v ∈ N, ∀ v' : VVc c lam, (v' : Pol c.F Ix n) = map j (v : Pol c.F Ix n) → io v' = map j (io v) := by
  obtain ⟨hok, cga, h⟩ := h
  let e : Ix ≃ GlobalTheory.IndefiniteRowSideFullHecke.CoefficientSpaceWeights.Psi H := Equiv.ofBijective (fun t => ⟨pl t, (hin _).2 ⟨t, rfl⟩⟩)
    ⟨fun s t hst => hpl (congrArg Subtype.val hst), fun σ => by
      obtain ⟨t, ht⟩ := (hin σ.1).1 σ.2
      exact ⟨t, Subtype.ext ht.symm⟩⟩
  obtain ⟨ha, d, -, hd⟩ := GlobalTheory.LFCompare.pins_of_ioLF Dw c n e a lam io hw cga hok h
  have hcga : ∀ ga : Matrix (Fin n) (Fin n) E, gaᴴ * ga = 1 → j (cga ga) = cga ga := fun ga hga => by
    rw [hd ga hga, GlobalTheory.IndefiniteRowSideFullHecke.CoefficientSpaceWeights.vacChar, map_prod]
    refine Finset.prod_congr rfl fun t _ => ?_
    rw [map_zpow₀]
    exact congrArg (· ^ _) (hj _ _)
  obtain ⟨-, -, -, h4, -, -, h7, -⟩ := h
  let up : VVc c lam → VVc c lam := fun v => ⟨_, GlobalTheory.Proof.TensorMapDescent.map_mem_VV j lam _ v.2⟩
  refine ⟨
    { carrier := {v | io (up v) = map j (io v)}
      add_mem' := fun {v w} hv hw' => ?_
      zero_mem' := ?_
      smul_mem' := fun s v hv => ?_ }, ?_, fun ga hga v hv => ?_, fun v hv v' hv' => ?_⟩
  · have e1 : up (v + w) = up v + up w := Subtype.ext (map_add (map j) _ _)
    show io (up (v + w)) = _
    rw [e1, map_add (f := _), map_add (f := _), map_add (f := _), show io (up v) = _ from hv, show io (up w) = _ from hw']
  · have e1 : up 0 = 0 := Subtype.ext (map_zero (map j))
    show io (up 0) = _
    rw [e1, map_zero, map_zero]
  · set_option synthInstance.maxHeartbeats 200000 in
    have e1 : up (s • v) = j s • up v := Subtype.ext (GlobalTheory.IoExtend.map_smul' j s _)
    show io (up (s • v)) = _
    rw [e1, map_smul, map_smul, GlobalTheory.IoExtend.map_smul', show io (up v) = _ from hv]
  · have e1 : up hw = hw := by
      apply Subtype.ext
      show map j (hw : Pol c.F Ix n) = _
      rw [show (hw : Pol c.F Ix n) = _ from hok, GlobalTheory.Proof.TensorMapDescent.map_ten]
      simp only [Formalism.L2.DIV.map_extremal]
    show io (up hw) = _
    rw [e1, h7, pG_map]
  · have e1 : up (rhoM c (fun t => embF c (pl t)) lam ga v) = rhoM c (fun t => embF c (pl t)) lam ga (up v) :=
      Subtype.ext (rhoM_map j hj pl lam ga v (up v) rfl).symm
    show io (up _) = _
    rw [e1, h4 ga hga, h4 ga hga, GlobalTheory.IoExtend.map_smul', hcga ga hga, show io (up v) = _ from hv, gaStar_map j hj]
  · rw [show v' = up v from Subtype.ext hv']
    exact hv

theorem eq_top_of_span {K X M : Type} [Field K] [AddCommGroup X] [Module K X] [FiniteDimensional K X] [AddCommGroup M] [Module ℂ M]
    {σ : K →+* ℂ} (c0 : X →ₛₗ[σ] M)
    (hli : ∀ (m : ℕ) (b : Fin m → X), LinearIndependent K b → LinearIndependent ℂ (fun k => c0 (b k)))
    (N : Submodule K X) (hN : Submodule.span ℂ (c0 '' (N : Set X)) = ⊤) : N = ⊤ := by
  by_contra hne
  obtain ⟨f, hf0, hf⟩ := N.exists_le_ker_of_lt_top (lt_top_iff_ne_top.2 hne)
  obtain ⟨B, hB⟩ := GlobalTheory.AdTh.PhaseMap.exists_ext (N := ℂ) c0 hli
    { toFun := fun v => σ (f v)
      map_add' := fun v w => by rw [map_add (f := _), map_add (f := _)]
      map_smul' := fun s v => by rw [map_smul, smul_eq_mul, map_mul, smul_eq_mul] }
  replace hB : ∀ v, B (c0 v) = σ (f v) := hB
  have h1 : Submodule.span ℂ (c0 '' (N : Set X)) ≤ LinearMap.ker B := by
    rw [Submodule.span_le]
    rintro _ ⟨v, hv, rfl⟩
    show B (c0 v) = 0
    rw [hB, show f v = 0 from hf hv, map_zero]
  refine hf0 (LinearMap.ext fun v => ?_)
  have h2 : B (c0 v) = 0 := h1 (hN ▸ Submodule.mem_top)
  rw [hB] at h2
  exact (map_eq_zero σ).1 h2

end General

section Main

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice IsDedekindDomain NumberField Matrix Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.L2.Pj
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.ConjTwist GlobalTheory.GalTw ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Classical



theorem io_map_conj : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 T0 : Type) (A : FamIn D.what₂.LL G Pl0 T0 D.R.m) (T : CoreJ D) [Algebra T.Q.c.F D.what₂.LL] (R : RealDat D A T.Q.c.F) (F : Face D A) (κ : ∀ i : Fin D.R.m, WeightFamilies.Wt D ((i : ℕ) + 1)) (v₀ : ∀ (i : Fin D.R.m) (σ : D.what₂.LL →+* ℂ), (R.MW i σ).Vec), GlobalTheory.Hk3.Core R F → Nonempty (FWTie T R κ v₀) → ∀ (i : Fin D.R.m) (Tp : Type) (tup : Tp → T0) (M : OMDat T.toCore R i Tp tup), M.Pins (κ i) (v₀ i (sg0 D A)) (iotaW T i) (T.x₀ ((i : ℕ) + 1) M.s0) → ∀ (τ : ℂ ≃+* ℂ) (ta : M.c'.F ≃+* M.c'.F), (∀ a : M.c'.F, ((ta a : M.c'.F) : ℂ) = τ (a : ℂ)) → FixBase T R i τ → ∀ x x' : VsV D i M.c'.F, (x' : Pol M.c'.F D.what₂.Tau (Vc D i).rank) = MvPolynomial.map (ta : M.c'.F →+* M.c'.F) (x : Pol M.c'.F D.what₂.Tau (Vc D i).rank) → M.io x' = MvPolynomial.map (ta : M.c'.F →+* M.c'.F) (M.io x) := by
  intro D G _ _ Pl0 T0 A T _ R F κ v₀ hR hfw i Tp tup O hO τ ta hta hfix x x' hx
  obtain ⟨fw⟩ := hfw
  have hT : TieIn T R κ v₀ := ⟨fw.laws, fw.alg_eq, fw.kap, fw.hv₀, fw.chiR, fw.x0⟩
  have hθ : IsInfFam R.θ := hR.models.inf
  have hc : (R.cV i).Is := hR.models.cV i
  have hP := (GlobalTheory.AdTh.RecPair.isPair_record_ofFive D G Pl0 T0 A _ R F (GlobalTheory.Core5.of_core hR) i A.μ0 hO.lift.std).1
  obtain ⟨n1, n2, -, n4⟩ := GlobalTheory.AdTh.coefMap_norm_equivariant_basis_ofFive D G Pl0 T0 A T R F κ v₀ (GlobalTheory.Core5.of_core hR) hT i Tp tup O hO
  obtain ⟨-, r2, -⟩ := GlobalTheory.RatGen.rational_points_generate D (Vc D i) (R.cV i) (hR.models.vpos i) hP.sigV hc
  obtain ⟨-, -, w1, -, -⟩ := GlobalTheory.WeightExponents.weight_exponents D T.Q hT.laws.pins _ (inR i) (κ i)
  have hj : ∀ σ y, (ta : O.c'.F →+* O.c'.F) (embF O.c' σ y) = embF O.c' σ y := fun σ y =>
    Subtype.ext ((hta _).trans (hfix.host σ y))
  obtain ⟨N, hN1, hN2, hN3⟩ := exists_stable (ta : O.c'.F →+* O.c'.F) hj (tauE D) (GlobalTheory.SmoothForms.RealPts.tauE_injective D) w1
    (lamV D i) (wtA (κ i)) O.io O.hw hO.io
  haveI : FiniteDimensional O.c'.F (VsV D i O.c'.F) := Module.Finite.of_basis (Formalism.L2.DIV.bVV O.c'.F (lamV D i))
  have htop : N = ⊤ := by
    refine eq_top_of_span O.c0' n4 N ((r2 _ fun γ => ?_).resolve_left fun h0 => ?_)
    · obtain ⟨γE, -, -, h1, -, -, -, h5, -⟩ := GlobalTheory.AdTh.PhaseMap.rat_parts hθ hP.std γ
      rw [Submodule.map_span, Submodule.span_le]
      rintro _ ⟨_, ⟨v, hv, rfl⟩, rfl⟩
      exact Submodule.subset_span ⟨_, hN2 _ h5 v hv, n2 γ γE h1 v⟩
    · have h1 : O.c0' O.hw ∈ Submodule.span ℂ (O.c0' '' (N : Set _)) := Submodule.subset_span ⟨_, hN1, rfl⟩
      rw [h0, Submodule.mem_bot] at h1
      rw [h1, norm_zero] at n1
      exact zero_ne_one n1
  exact hN3 x (htop ▸ Submodule.mem_top) x' hx

end Main

end GlobalTheory.IoConj
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoefficientMapCommutesFieldAutomorphism =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoefficientMapCommutesFieldAutomorphismStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoefficientMapCommutesFieldAutomorphismStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ConjTupRefl\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.NormalFam\npublic import Formalism.LocalToGlobal.IndefiniteReal.FWTie\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoefficientMapCommutesFieldAutomorphism\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.ThetaValues.ExistsRootNotMem\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice IsDedekindDomain NumberField Matrix Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.L2.Pj
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.ConjTwist GlobalTheory.GalTw ReciprocityTheory.ChartRestriction.G.Geo.Tor
open Classical

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoefficientMapCommutesFieldAutomorphismStatement =====
