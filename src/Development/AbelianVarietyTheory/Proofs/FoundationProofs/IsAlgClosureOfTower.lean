module

public import Development.AbelianVarietyTheory.Definitions.Foundations.ExistsRootOfIsAlgClosed
public import Development.AbelianVarietyTheory.Definitions.Foundations.EeProd
public import Mathlib.RingTheory.Flat.FaithfullyFlat.Basic
public import Mathlib.RingTheory.Flat.TorsionFree
public import Mathlib.RingTheory.Henselian
public import Mathlib.RingTheory.RegularLocalRing.Defs
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsLogDerivQExpansionModPrimePowOfTranslation
public import Development.AbelianVarietyTheory.Definitions.Foundations.ApplyEqOfMemAdjoin
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsLogDerivQExpansionModPrimePowUnique
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.MulOfIsPrimitiveIntegralHahnGauss
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ThetaDerivationHahnSeriesLeibnizAddConst
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Order.Star.Rat
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
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
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
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
import Mathlib.Tactic.TypeStar
import Mathlib.Topology.Sheaves.Init

@[expose] public section

open scoped MatrixGroups
open GlobalTheory.KZ GlobalTheory.CyclotomicQExpansion GlobalTheory.Glue

noncomputable section
namespace GlobalTheory.UlCusp

variable {Ω : Type} [Field Ω]

theorem eOm_spec [IsAlgClosed Ω] (ε : Ω →+* ℂ) (x : ℚ) :
    ε (eOm ε x) = Complex.exp (2 * Real.pi * Complex.I * (x : ℂ)) := by
  haveI : CharZero Ω := ε.charZero
  obtain ⟨ζ, hζ⟩ := Api.exists_root_of_isAlgClosed ε x.den_pos
  have h : ∃ a, ε a = Complex.exp (2 * Real.pi * Complex.I * (x : ℂ)) := by
    refine ⟨ζ ^ x.num, ?_⟩
    rw [map_zpow₀, hζ, ← Complex.exp_int_mul]
    congr 1
    conv_rhs => rw [← Rat.num_div_den x]
    push_cast; ring
  exact Function.invFun_eq h

theorem eOm_add [IsAlgClosed Ω] (ε : Ω →+* ℂ) (x y : ℚ) : eOm ε (x + y) = eOm ε x * eOm ε y := by
  haveI : CharZero Ω := ε.charZero
  apply Api.eOm_eq_of
  rw [map_mul, eOm_spec, eOm_spec, ← Complex.exp_add]; congr 1; push_cast; ring

theorem eOm_intCast [IsAlgClosed Ω] (ε : Ω →+* ℂ) (m : ℤ) : eOm ε (m : ℚ) = 1 := by
  haveI : CharZero Ω := ε.charZero
  apply Api.eOm_eq_of
  rw [map_one]
  have := Complex.exp_int_mul_two_pi_mul_I m
  rw [← this]; congr 1; push_cast; ring

theorem eOm_zero [IsAlgClosed Ω] (ε : Ω →+* ℂ) : eOm ε 0 = 1 := by
  simpa using eOm_intCast ε 0

theorem eOm_nsmul [IsAlgClosed Ω] (ε : Ω →+* ℂ) (x : ℚ) (k : ℕ) : eOm ε (k * x) = eOm ε x ^ k := by
  induction k with
  | zero => simpa using eOm_zero ε
  | succ k ih => rw [Nat.cast_succ, add_mul, one_mul, eOm_add, ih, pow_succ]

theorem eOm_pow_den [IsAlgClosed Ω] (ε : Ω →+* ℂ) (x : ℚ) : eOm ε x ^ x.den = 1 := by
  rw [← eOm_nsmul]
  have : (x.den : ℚ) * x = (x.num : ℚ) := by
    have := Rat.mul_den_eq_num x; rw [mul_comm]; exact this
  rw [this, eOm_intCast]

theorem eOm_mem [IsAlgClosed Ω] (ε : Ω →+* ℂ) (A : ValuationSubring Ω) (x : ℚ) : eOm ε x ∈ A := by
  rcases A.mem_or_inv_mem (eOm ε x) with h | h
  · exact h
  · have hd := eOm_pow_den ε x
    have h0 : eOm ε x ≠ 0 := by rintro h0; rw [h0, zero_pow x.den_pos.ne'] at hd; exact zero_ne_one hd
    have : eOm ε x = (eOm ε x)⁻¹ ^ (x.den - 1) := by
      rw [inv_pow]; exact eq_inv_of_mul_eq_one_left (by rw [← pow_succ', Nat.sub_add_cancel x.den_pos, hd])
    rw [this]; exact pow_mem h _

theorem eOm_inv_mem [IsAlgClosed Ω] (ε : Ω →+* ℂ) (A : ValuationSubring Ω) (x : ℚ) : (eOm ε x)⁻¹ ∈ A := by
  have : (eOm ε x)⁻¹ = eOm ε (-x) := by
    exact inv_eq_of_mul_eq_one_right (by rw [← eOm_add, add_neg_cancel, eOm_zero])
  rw [this]; exact eOm_mem ε A _

theorem eOm_ne_zero [IsAlgClosed Ω] (ε : Ω →+* ℂ) (x : ℚ) : eOm ε x ≠ 0 := by
  intro h; have := eOm_pow_den ε x; rw [h, zero_pow x.den_pos.ne'] at this; exact zero_ne_one this

theorem cm_mul_of_char {R : Type*} [CommRing R] (c : ℚ → R) (hc : ∀ x y, c (x + y) = c x * c y)
    (φ ψ : HahnSeries ℚ R) : cm c (φ * ψ) = cm c φ * cm c ψ := by
  ext r
  have h1 : (cm c φ).support ⊆ φ.support := fun s hs h => hs (by rw [Api.coeff_cm, h, mul_zero])
  have h2 : (cm c ψ).support ⊆ ψ.support := fun s hs h => hs (by rw [Api.coeff_cm, h, mul_zero])
  rw [Api.coeff_cm, HahnSeries.coeff_mul (x := φ), Finset.mul_sum, HahnSeries.coeff_mul_right' ψ.isPWO_support h2]
  rw [Finset.sum_subset (Finset.antidiagonal_mono_left (hs := φ.isPWO_support) h1)]
  · refine Finset.sum_congr rfl fun ij hij => ?_
    have := (Finset.mem_addAntidiagonal.1 hij).2.2
    rw [Api.coeff_cm, Api.coeff_cm, ← this, hc]; ring
  · intro ij hij hn
    have hm := Finset.mem_addAntidiagonal.1 hij
    have : (cm c φ).coeff ij.1 = 0 := by
      by_contra h0
      exact hn (Finset.mem_addAntidiagonal.2 ⟨h0, hm.2.1, hm.2.2⟩)
    rw [this, zero_mul]

end GlobalTheory.UlCusp

noncomputable section
namespace GlobalTheory.UlCusp

end GlobalTheory.UlCusp

noncomputable section
namespace GlobalTheory.UlCusp

variable {Ω : Type} [Field Ω]

end GlobalTheory.UlCusp

noncomputable section
namespace GlobalTheory.UlCusp

variable {Ω : Type} [Field Ω]

def Dv (A : ValuationSubring Ω) (l m : ℕ) (χ : HahnSeries ℚ Ω) : Prop := ∀ r, CgA A l m (χ.coeff r) 0

def Br [Algebra ℚ Ω] (x y : HahnSeries ℚ Ω) : HahnSeries ℚ Ω := theta 1 x * y - x * theta 1 y

end GlobalTheory.UlCusp

noncomputable section
namespace GlobalTheory.UlCusp

variable {Ω : Type} [Field Ω]

end GlobalTheory.UlCusp

noncomputable section
namespace GlobalTheory.UlCusp

variable {Ω : Type} [Field Ω]

theorem prim_one (A : ValuationSubring Ω) : Prim A (1 : HahnSeries ℚ Ω) := by
  refine ⟨fun r => ?_, 0, ?_, ?_⟩
  · rw [HahnSeries.coeff_one]; split_ifs <;> simp
  · simp
  · simp

theorem prim_prod (A : ValuationSubring Ω) (S : Finset ℕ) (F : ℕ → HahnSeries ℚ Ω) (h : ∀ j, Prim A (F j)) :
    Prim A (∏ j ∈ S, F j) := by
  induction S using Finset.induction_on with
  | empty => rw [Finset.prod_empty]; exact prim_one A
  | insert j S hj ih => rw [Finset.prod_insert hj]; exact GlobalTheory.Glue.Prim.mul A _ _ (h j) ih

theorem isAlgClosure_of_tower [Algebra ℚ Ω] [IsAlgClosed Ω] {ε : Ω →+* ℂ} (X : Tower Ω ε) : IsAlgClosure ℚ Ω := by
  refine ⟨inferInstance, ⟨fun c => ?_⟩⟩
  obtain ⟨D, hD, hk⟩ := X.bdd (algebraMap Ω X.K c)
  obtain ⟨k, hint⟩ := hk 0
  have hc : (X.exp (algebraMap Ω X.K c)).coeff 0 = c := by
    rw [X.exp.commutes, HahnSeries.algebraMap_apply', PowerSeries.algebraMap_apply, Algebra.algebraMap_self,
      RingHom.id_apply, HahnSeries.ofPowerSeries_C]
    simp [HahnSeries.C_apply]
  rw [hc] at hint
  have h1 : IsIntegral ℚ ((D : Ω) ^ k * c) := hint.tower_top
  have h2 : IsIntegral ℚ (algebraMap ℚ Ω (((D : ℚ) ^ k)⁻¹)) := isIntegral_algebraMap
  have hD' : (D : Ω) ^ k ≠ 0 := pow_ne_zero _ (by
    rw [← map_natCast (algebraMap ℚ Ω) D]
    exact (map_ne_zero_iff _ (algebraMap ℚ Ω).injective).2 (by exact_mod_cast hD.ne'))
  have : c = algebraMap ℚ Ω (((D : ℚ) ^ k)⁻¹) * ((D : Ω) ^ k * c) := by
    rw [map_inv₀, map_pow, map_natCast, ← mul_assoc, inv_mul_cancel₀ hD', one_mul]
  rw [this]
  exact (h2.mul h1).isAlgebraic

end GlobalTheory.UlCusp

namespace GlobalTheory.UlCusp

end GlobalTheory.UlCusp
