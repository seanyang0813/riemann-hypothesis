module

public import Mathlib.RingTheory.PowerSeries.Substitution
public import Mathlib.RingTheory.AdicCompletion.Basic
public import Mathlib.RingTheory.LocalRing.MaximalIdeal.Defs
public import Formalism.SharpRestriction.LevelLetterCocycles.ArcLiftingSetup
public import Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.ConstantLeRpowOfThreeLe
public import Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.GammaPi0EqPi0MulUnit
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.ConstantCoeffSubstAlgHom, Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.ExistsPhiBridge

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.ConstantCoeffSubstAlgHom =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.ConstantCoeffSubstAlgHom", "h": "module\n\npublic import Mathlib.RingTheory.PowerSeries.Substitution\npublic import Mathlib.RingTheory.AdicCompletion.Basic\npublic import Mathlib.RingTheory.LocalRing.MaximalIdeal.Defs\nimport Mathlib.RingTheory.PowerSeries.NoZeroDivisors\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.FrobeniusPowerSeries.PB

open PowerSeries

section Ext

variable {R S : Type*} [CommRing R] [CommRing S]

theorem X_pow_dvd_pow_of_nil (a : S⟦X⟧) (ha : IsNilpotent (constantCoeff a)) (m : ℕ) :
    ∃ N, (X : S⟦X⟧) ^ m ∣ a ^ N := by
  obtain ⟨n, hn⟩ := ha
  refine ⟨n * m, ?_⟩
  rw [pow_mul]
  exact pow_dvd_pow_of_dvd (PowerSeries.X_dvd_iff.mpr (by rw [_root_.map_pow, hn])) m

theorem ringHom_ext_nil {h₁ h₂ : R⟦X⟧ →+* S⟦X⟧} (hC : ∀ r, h₁ (C r) = h₂ (C r)) (hX : h₁ X = h₂ X)
    (hnil : IsNilpotent (constantCoeff (h₁ X))) : h₁ = h₂ := by
  have hpoly : ∀ p : Polynomial R, h₁ (p : R⟦X⟧) = h₂ (p : R⟦X⟧) := by
    intro p
    refine Polynomial.induction_on p (fun a => ?_) (fun p q hp hq => ?_) (fun n a _ => ?_)
    · rw [Polynomial.coe_C]
      exact hC a
    · rw [Polynomial.coe_add, _root_.map_add (f := _), _root_.map_add (f := _), hp, hq]
    · rw [Polynomial.coe_mul, Polynomial.coe_pow, Polynomial.coe_C, Polynomial.coe_X,
        _root_.map_mul, _root_.map_mul, _root_.map_pow, _root_.map_pow, hC, hX]
  refine RingHom.ext fun F => sub_eq_zero.mp (PowerSeries.ext fun m => ?_)
  obtain ⟨N, hN⟩ := X_pow_dvd_pow_of_nil (h₁ X) hnil (m + 1)
  obtain ⟨G, hG⟩ : (X : R⟦X⟧) ^ N ∣ F - (PowerSeries.trunc N F : R⟦X⟧) := by
    rw [PowerSeries.X_pow_dvd_iff]
    intro i hi
    rw [_root_.map_sub, Polynomial.coeff_coe, PowerSeries.coeff_trunc, if_pos hi, sub_self]
  have hd : h₁ F - h₂ F = h₁ X ^ N * (h₁ G - h₂ G) := by
    have hF : F = (PowerSeries.trunc N F : R⟦X⟧) + X ^ N * G := by rw [← hG]; ring
    rw [hF]
    simp only [_root_.map_add (f := _), _root_.map_mul, _root_.map_pow, hpoly, ← hX]
    ring
  have hdvd : (X : S⟦X⟧) ^ (m + 1) ∣ h₁ F - h₂ F := by
    rw [hd]
    exact dvd_mul_of_dvd_left hN _
  rw [_root_.map_zero]
  exact PowerSeries.X_pow_dvd_iff.mp hdvd m (Nat.lt_succ_self m)

end Ext

section Inj

variable {R : Type*} [CommRing R] [IsDomain R]

private theorem powerSeries_algHom_C {R : Type*} [CommRing R] (ψ : R⟦X⟧ →ₐ[R] R⟦X⟧) (c : R) :
    ψ (C c) = C c := by
  have h := ψ.commutes c
  rwa [PowerSeries.algebraMap_apply, Algebra.algebraMap_self, RingHom.id_apply] at h

private theorem constantCoeff_algHom_apply_of_constantCoeff_X {R : Type*} [CommRing R] (ψ : R⟦X⟧ →ₐ[R] R⟦X⟧)
    (h0 : constantCoeff (ψ X) = 0) (F : R⟦X⟧) : constantCoeff (ψ F) = constantCoeff F := by
  obtain ⟨G, hG⟩ : (X : R⟦X⟧) ∣ F - C (constantCoeff F) := by
    rw [PowerSeries.X_dvd_iff, _root_.map_sub, PowerSeries.constantCoeff_C, sub_self]
  have hF : F = C (constantCoeff F) + X * G := by rw [← hG]; ring
  rw [hF]
  first
  | simp only [_root_.map_add (f := _), _root_.map_mul, powerSeries_algHom_C, h0, PowerSeries.constantCoeff_C,
      PowerSeries.constantCoeff_X, zero_mul, add_zero]

private theorem powerSeries_algHom_injective_of_X_ne_zero {R : Type*} [CommRing R] [IsDomain R]
    (ψ : R⟦X⟧ →ₐ[R] R⟦X⟧) (h0 : constantCoeff (ψ X) = 0) (hne : ψ X ≠ 0) :
    Function.Injective ψ := by
  rw [injective_iff_map_eq_zero]
  intro F hF
  by_contra hF0
  have hex : ∃ n, coeff n F ≠ 0 := by
    by_contra h
    push_neg at h
    exact hF0 (PowerSeries.ext fun n => by rw [h n, _root_.map_zero])
  classical
  obtain ⟨n, hn, hmin⟩ : ∃ n, coeff n F ≠ 0 ∧ ∀ i < n, coeff i F = 0 :=
    ⟨Nat.find hex, Nat.find_spec hex, fun i hi => by
      by_contra h
      exact Nat.find_min hex hi h⟩
  obtain ⟨U, hU⟩ : (X : R⟦X⟧) ^ n ∣ F := PowerSeries.X_pow_dvd_iff.mpr hmin
  have hU0 : constantCoeff U ≠ 0 := by
    intro h
    apply hn
    rw [hU]
    first
    | rw [PowerSeries.coeff_X_pow_mul', if_pos le_rfl, Nat.sub_self,
        PowerSeries.coeff_zero_eq_constantCoeff_apply, h]
  have hψU : ψ U ≠ 0 := by
    intro h
    apply hU0
    rw [← constantCoeff_algHom_apply_of_constantCoeff_X ψ h0 U, h, _root_.map_zero]
  rw [hU, _root_.map_mul, _root_.map_pow] at hF
  exact mul_ne_zero (pow_ne_zero _ hne) hψU hF

private theorem substAlgHom_X_eq {R S : Type*} [CommRing R] [CommRing S] [Algebra R S]
    {a : S⟦X⟧} (ha : HasSubst a) : (substAlgHom ha : R⟦X⟧ →ₐ[R] S⟦X⟧) X = a := by
  first
  | exact substAlgHom_X ha

theorem subst_injective {a : R⟦X⟧} (ha0 : constantCoeff a = 0) (hane : a ≠ 0) :
    Function.Injective (substAlgHom (HasSubst.of_constantCoeff_zero' ha0) : R⟦X⟧ →ₐ[R] R⟦X⟧) := by
  refine powerSeries_algHom_injective_of_X_ne_zero _ ?_ ?_
  · rw [substAlgHom_X_eq]
    exact ha0
  · rw [substAlgHom_X_eq]
    exact hane

end Inj

theorem constantCoeff_substAlgHom {R : Type*} [CommRing R] {a : R⟦X⟧} (ha0 : constantCoeff a = 0)
    (F : R⟦X⟧) :
    constantCoeff ((substAlgHom (HasSubst.of_constantCoeff_zero' ha0) : R⟦X⟧ →ₐ[R] R⟦X⟧) F) =
      constantCoeff F := by
  refine constantCoeff_algHom_apply_of_constantCoeff_X _ ?_ F
  rw [substAlgHom_X_eq]
  exact ha0

theorem algC {R : Type*} [CommRing R] (ψ : R⟦X⟧ →ₐ[R] R⟦X⟧) (c : R) : ψ (C c) = C c :=
  powerSeries_algHom_C ψ c

section Shift

variable {O : Type*} [CommRing O] [IsLocalRing O] [IsAdicComplete (IsLocalRing.maximalIdeal O) O]

abbrev Qk (O : Type*) [CommRing O] [IsLocalRing O] (k : ℕ) : Type _ :=
  O ⧸ (IsLocalRing.maximalIdeal O) ^ k

abbrev mkk (k : ℕ) : O →+* Qk O k := Ideal.Quotient.mk _

omit [IsAdicComplete (IsLocalRing.maximalIdeal O) O] in
theorem smod_iff {a : ℕ} {x y : O} :
    x ≡ y [SMOD ((IsLocalRing.maximalIdeal O) ^ a • ⊤ : Submodule O O)] ↔ mkk a x = mkk a y := by
  first
  | (rw [SModEq.sub_mem, Ideal.smul_eq_mul, Ideal.mul_top]; exact Ideal.Quotient.eq.symm)

theorem ext_k {G G' : O⟦X⟧} (h : ∀ k, map (mkk k) G = map (mkk k) G') : G = G' := by
  refine PowerSeries.ext fun m => ?_
  have hk : ∀ k, coeff m G ≡ coeff m G' [SMOD ((IsLocalRing.maximalIdeal O) ^ k • ⊤ : Submodule O O)] := by
    intro k
    rw [smod_iff, ← PowerSeries.coeff_map, ← PowerSeries.coeff_map, h k]
  first
  | exact (IsHausdorff.eq_iff_smodEq (I := IsLocalRing.maximalIdeal O)).mpr hk

variable (t : O) (ht : t ∈ IsLocalRing.maximalIdeal O)
include ht

omit [IsAdicComplete (IsLocalRing.maximalIdeal O) O] in
theorem nil_k (k : ℕ) : IsNilpotent (constantCoeff ((X : (Qk O k)⟦X⟧) + C (mkk k t))) := by
  rw [_root_.map_add (f := _), PowerSeries.constantCoeff_X, PowerSeries.constantCoeff_C, zero_add]
  refine ⟨k, ?_⟩
  rw [← _root_.map_pow]
  exact Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.pow_mem_pow ht k)

omit [IsAdicComplete (IsLocalRing.maximalIdeal O) O] in
theorem hasSubst_k (k : ℕ) : HasSubst ((X : (Qk O k)⟦X⟧) + C (mkk k t)) := by
  first
  | exact nil_k t ht k

def τk (k : ℕ) : O⟦X⟧ →ₐ[O] (Qk O k)⟦X⟧ := substAlgHom (hasSubst_k t ht k)

omit [IsAdicComplete (IsLocalRing.maximalIdeal O) O] in
theorem τk_X (k : ℕ) : τk t ht k X = X + C (mkk k t) := by
  show (substAlgHom (hasSubst_k t ht k) : O⟦X⟧ →ₐ[O] (Qk O k)⟦X⟧) X = _
  exact substAlgHom_X_eq _

omit [IsAdicComplete (IsLocalRing.maximalIdeal O) O] in
theorem τk_C (k : ℕ) (r : O) : τk t ht k (C r) = C (mkk k r) := by
  have h := (τk t ht k).commutes r
  rwa [PowerSeries.algebraMap_apply, PowerSeries.algebraMap_apply, Algebra.algebraMap_self,
    RingHom.id_apply, Ideal.Quotient.algebraMap_eq] at h

omit [IsAdicComplete (IsLocalRing.maximalIdeal O) O] in
theorem τk_compat {k k' : ℕ} (hkk : k ≤ k') :
    (map (Ideal.Quotient.factor (Ideal.pow_le_pow_right (I := IsLocalRing.maximalIdeal O) hkk))).comp
      (τk t ht k').toRingHom = (τk t ht k).toRingHom := by
  symm
  refine ringHom_ext_nil (fun r => ?_) ?_ ?_
  · show τk t ht k (C r) = map (Ideal.Quotient.factor (Ideal.pow_le_pow_right (I := IsLocalRing.maximalIdeal O) hkk)) (τk t ht k' (C r))
    rw [τk_C, τk_C, PowerSeries.map_C]
    first
    | exact congrArg C (Ideal.Quotient.factor_mk _ r).symm
  · show τk t ht k X = map (Ideal.Quotient.factor (Ideal.pow_le_pow_right (I := IsLocalRing.maximalIdeal O) hkk)) (τk t ht k' X)
    rw [τk_X, τk_X, _root_.map_add (f := _), PowerSeries.map_X, PowerSeries.map_C]
    first
    | rw [Ideal.Quotient.factor_mk]
  · show IsNilpotent (constantCoeff (τk t ht k X))
    rw [τk_X]
    exact nil_k t ht k

theorem exists_lim (F : O⟦X⟧) (m : ℕ) : ∃ L : O, ∀ k, mkk k L = coeff m (τk t ht k F) := by
  choose x hx using fun k => Ideal.Quotient.mk_surjective (coeff m (τk t ht k F))
  have hcompat : ∀ {a b : ℕ}, a ≤ b →
      x a ≡ x b [SMOD ((IsLocalRing.maximalIdeal O) ^ a • ⊤ : Submodule O O)] := by
    intro a b hab
    have h : coeff m (map (Ideal.Quotient.factor
        (Ideal.pow_le_pow_right (I := IsLocalRing.maximalIdeal O) hab))
        (τk t ht b F)) = coeff m (τk t ht a F) :=
      congrArg (coeff m) (RingHom.congr_fun (τk_compat t ht hab) F)
    rw [PowerSeries.coeff_map, ← hx b] at h
    rw [smod_iff]
    refine (hx a).trans (h.symm.trans ?_)
    first
    | exact Ideal.Quotient.factor_mk _ _
  obtain ⟨L, hL⟩ : ∃ L : O, ∀ n,
      x n ≡ L [SMOD ((IsLocalRing.maximalIdeal O) ^ n • ⊤ : Submodule O O)] := by
    first
    | exact IsPrecomplete.prec inferInstance hcompat
  exact ⟨L, fun k => ((smod_iff.mp (hL k)).symm).trans (hx k)⟩

def shiftFun (F : O⟦X⟧) : O⟦X⟧ := mk fun m => (exists_lim t ht F m).choose

theorem map_shiftFun (k : ℕ) (F : O⟦X⟧) : map (mkk k) (shiftFun t ht F) = τk t ht k F := by
  ext m
  rw [PowerSeries.coeff_map, shiftFun, PowerSeries.coeff_mk]
  exact (exists_lim t ht F m).choose_spec k

def shift : O⟦X⟧ →ₐ[O] O⟦X⟧ where
  toFun := shiftFun t ht
  map_one' := ext_k fun k => by rw [map_shiftFun, _root_.map_one, _root_.map_one]
  map_mul' F G := ext_k fun k => by
    rw [map_shiftFun, _root_.map_mul, _root_.map_mul, map_shiftFun, map_shiftFun]
  map_zero' := ext_k fun k => by rw [map_shiftFun, _root_.map_zero, _root_.map_zero]
  map_add' F G := ext_k fun k => by
    rw [map_shiftFun, _root_.map_add (f := _), _root_.map_add (f := _), map_shiftFun, map_shiftFun]
  commutes' r := ext_k fun k => by
    rw [map_shiftFun, AlgHom.commutes, PowerSeries.algebraMap_apply, PowerSeries.algebraMap_apply,
      Algebra.algebraMap_self, RingHom.id_apply, map_C, Ideal.Quotient.algebraMap_eq]

theorem map_shift (k : ℕ) (F : O⟦X⟧) : map (mkk k) (shift t ht F) = τk t ht k F := map_shiftFun t ht k F

theorem shift_X : shift t ht X = X + C t := ext_k fun k => by
  rw [map_shift, τk_X, _root_.map_add (f := _), PowerSeries.map_X, PowerSeries.map_C]

omit ht in
/-- Translation by zero fixes every formal power series. -/
theorem shift_zero (F : O⟦X⟧) : shift (0 : O) (zero_mem _) F = F := by
  have h : (shift (0 : O) (zero_mem _)).toRingHom = RingHom.id _ :=
    ringHom_ext_nil (fun r => algC _ r)
      (by simpa using shift_X (0 : O) (zero_mem _)) (by simp [shift_X])
  exact RingHom.congr_fun h F

omit ht in
/-- Successive translations add their parameters. -/
theorem shift_add (s t : O) (hs : s ∈ IsLocalRing.maximalIdeal O)
    (ht : t ∈ IsLocalRing.maximalIdeal O) (F : O⟦X⟧) :
    shift s hs (shift t ht F) = shift (s + t) (add_mem hs ht) F := by
  refine ext_k fun k => ?_
  rw [map_shift, map_shift]
  have key : (τk s hs k).toRingHom.comp (shift t ht).toRingHom =
      (τk (s + t) (add_mem hs ht) k).toRingHom := by
    symm
    refine ringHom_ext_nil (fun r => ?_) ?_ ?_
    · show τk (s + t) (add_mem hs ht) k (C r) = τk s hs k (shift t ht (C r))
      rw [algC, τk_C, τk_C]
    · show τk (s + t) (add_mem hs ht) k X = τk s hs k (shift t ht X)
      rw [shift_X, _root_.map_add (f := _), τk_X, τk_C, τk_X,
        _root_.map_add (f := _), _root_.map_add (f := _)]
      ring
    · show IsNilpotent (constantCoeff (τk (s + t) (add_mem hs ht) k X))
      rw [τk_X]
      exact nil_k (s + t) (add_mem hs ht) k
  exact RingHom.congr_fun key F

theorem shift_shift (F : O⟦X⟧) : shift (-t) (neg_mem ht) (shift t ht F) = F := by
  simpa only [neg_add_cancel, shift_zero] using shift_add (-t) t (neg_mem ht) ht F

omit ht in
theorem shift_congr {t t' : O} (h : t = t') (ht : t ∈ IsLocalRing.maximalIdeal O)
    (ht' : t' ∈ IsLocalRing.maximalIdeal O) : shift t ht = shift t' ht' := by
  subst h
  rfl

def shiftEquiv : O⟦X⟧ ≃ₐ[O] O⟦X⟧ :=
  AlgEquiv.ofAlgHom (shift t ht) (shift (-t) (neg_mem ht))
    (AlgHom.ext fun F => by
      have := shift_shift (-t) (neg_mem ht) F
      rw [shift_congr (neg_neg t) (neg_mem (neg_mem ht)) ht] at this
      exact this)
    (AlgHom.ext fun F => shift_shift t ht F)

theorem shiftEquiv_X : shiftEquiv t ht X = X + C t := by
  first
  | exact shift_X t ht

theorem shiftEquiv_symm_X : (shiftEquiv t ht).symm X = X - C t := by
  first
  | (show shift (-t) (neg_mem ht) X = X - C t
     rw [shift_X, _root_.map_neg, sub_eq_add_neg])

end Shift

end Formalism.MainNotions.N.FrobeniusPowerSeries.PB
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.ConstantCoeffSubstAlgHom =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.ExistsPhiBridge =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.ExistsPhiBridge", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ArcLiftingSetup\npublic import Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.ConstantLeRpowOfThreeLe\npublic import Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.ConstantCoeffSubstAlgHom\npublic import Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.GammaPi0EqPi0MulUnit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PowerSeries.Inverse\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.FrobeniusPowerSeries

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.ArcLiftingSetup PowerSeries

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL] [CommRing O] [Algebra O LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ}
    {PD : PeriodData G Qp K₀ K B BdR}
    [IsDomain O] [IsDiscreteValuationRing O]

structure PhiBridge (W : LocWach PD LL O v n) where
  P : PhiData O PD.p
  ι : PowerSeries O →ₐ[O] PowerSeries O
  inj : Function.Injective ι
  ι_X : ι X = W.π₀₁ + C ((PD.p : ℕ) : O)
  ι_φ : ∀ F, ι (P.φ F) = W.φ₀ (ι F)
  range : ∀ a ∈ W.AΔ, ∀ i, ∃ F, a i = ι F
  mem : ∀ F, (fun _ => ι F : LetA O n) ∈ W.AΔ

namespace PhiBridge

variable {W : LocWach PD LL O v n} (Br : PhiBridge W)

def cst (F : PowerSeries O) : LetA O n := fun _ => Br.ι F

theorem cst_mem (F : PowerSeries O) : Br.cst F ∈ W.AΔ := Br.mem F

theorem cst_one : Br.cst 1 = 1 := by
  funext i
  show Br.ι 1 = (1 : LetA O n) i
  rw [map_one]
  rfl
theorem cst_mul (F F' : PowerSeries O) : Br.cst (F * F') = Br.cst F * Br.cst F' := by
  funext i
  show Br.ι (F * F') = (Br.cst F * Br.cst F') i
  rw [map_mul]
  rfl
theorem cst_pow (F : PowerSeries O) (k : ℕ) : Br.cst (F ^ k) = Br.cst F ^ k := by
  induction k with
  | zero => rw [pow_zero, pow_zero, Br.cst_one]
  | succ k ih => rw [pow_succ, pow_succ, Br.cst_mul, ih]
theorem cst_C (x : O) : Br.cst (C x) = algebraMap O (LetA O n) x := by
  funext i
  show Br.ι (C x) = algebraMap O (LetA O n) x i
  rw [show (C x : PowerSeries O) = algebraMap O (PowerSeries O) x from rfl, AlgHom.commutes]
  rfl

theorem qA_eq : qA W = Br.cst X := by
  funext i
  show (W.π₀ + lA W) i = Br.ι X
  rw [Br.ι_X]
  show W.π₀ i + lA W i = W.π₀₁ + C ((PD.p : ℕ) : O)
  congr 1
theorem π₀_eq : W.π₀ = Br.cst (X - C ((PD.p : ℕ) : O)) := by
  funext i
  show W.π₀ i = Br.ι (X - C ((PD.p : ℕ) : O))
  rw [map_sub, Br.ι_X, show (C ((PD.p : ℕ) : O) : PowerSeries O) = algebraMap O (PowerSeries O) ((PD.p : ℕ) : O)
    from rfl, AlgHom.commutes, ← show (C ((PD.p : ℕ) : O) : PowerSeries O) = algebraMap O (PowerSeries O) ((PD.p : ℕ) : O)
    from rfl, add_sub_cancel_right]
  rfl
theorem lA_eq : lA W = Br.cst (C ((PD.p : ℕ) : O)) := by
  rw [Br.cst_C]
  simp [lA]
theorem φA_cst (F : PowerSeries O) : W.φA (Br.cst F) = Br.cst (Br.P.φ F) := by
  funext i
  show W.φA (fun _ => Br.ι F) i = Br.ι (Br.P.φ F)
  rw [Br.ι_φ]
  rfl
theorem ps_eq (s : ℕ) : ps W s = Br.cst (Br.P.p s) := by
  induction s with
  | zero =>
    show (W.φA ^ 0) (qA W) = Br.cst ((Br.P.φ : PowerSeries O → PowerSeries O)^[0] X)
    rw [pow_zero]
    exact Br.qA_eq
  | succ s ih =>
    have h : ps W (s + 1) = W.φA (ps W s) := by
      simp only [ps, pow_succ']
      rfl
    rw [h, ih, Br.φA_cst]
    show Br.cst (Br.P.φ ((Br.P.φ : PowerSeries O → PowerSeries O)^[s] X)) =
      Br.cst ((Br.P.φ : PowerSeries O → PowerSeries O)^[s + 1] X)
    rw [Function.iterate_succ_apply']

theorem inFr_const (c : ZMod n) {N₁ N₂ D : PowerSeries O} {f : W.EE} {κ : ℕ} {x : O}
    (hf : InFr W c (Br.cst N₁) (Br.cst D) f)
    (hx : InFr W c (Br.cst N₂) (Br.cst D)
      (lE W κ * f - algebraMap (LetA O n) W.EE (letE c) * algebraMap O W.EE x)) :
    ∃ U₁ U₂ : PowerSeries O, D * C x = C ((PD.p : ℕ) : O) ^ κ * N₁ * U₁ - N₂ * U₂ := by
  obtain ⟨u₁, hu₁, h₁⟩ := hf
  obtain ⟨u₂, hu₂, h₂⟩ := hx
  obtain ⟨U₁, hU₁⟩ := Br.range u₁ hu₁ c
  obtain ⟨U₂, hU₂⟩ := Br.range u₂ hu₂ c
  refine ⟨U₁, U₂, Br.inj ?_⟩
  have key : algebraMap (LetA O n) W.EE (((PD.p : ℕ) : LetA O n) ^ κ * (letE c * Br.cst N₁ * u₁) -
      Br.cst D * (letE c * algebraMap O (LetA O n) x)) =
      algebraMap (LetA O n) W.EE (letE c * Br.cst N₂ * u₂) := by
    rw [lE, IsScalarTower.algebraMap_apply O (LetA O n) W.EE x] at h₂
    simp only [_root_.map_mul, _root_.map_sub, _root_.map_pow, _root_.map_natCast] at h₁ h₂ ⊢
    linear_combination h₂ - ((PD.p : ℕ) : W.EE) ^ κ * h₁
  have h3 := congrFun (W.EE_inj key) c
  simp only [Pi.sub_apply, Pi.mul_apply, Pi.pow_apply, Pi.natCast_apply, letE, Pi.single_eq_same,
    one_mul, cst, hU₁, hU₂, Pi.algebraMap_apply, PowerSeries.algebraMap_apply, Algebra.algebraMap_self,
    RingHom.id_apply] at h3
  simp only [_root_.map_mul, _root_.map_sub, _root_.map_pow, PB.algC, _root_.map_natCast]
  linear_combination -h3

end PhiBridge

theorem exists_phiBridge [IsAdicComplete (IsLocalRing.maximalIdeal O) O] (W : LocWach PD LL O v n)
    (hcase : Formalism.MainNotions.LiftingTheory.CaseA W) (hP9 : Formalism.MainNotions.DeltaInvariantLattices.P9W W) (T : LocLat G Qp LL O) (hT : IsCrys PD T.ρ)
    (hO : ∀ x : O, 0 ≤ v (algebraMap O LL x)) (hinj : Function.Injective (algebraMap O LL)) :
    Nonempty (PhiBridge W) := by
  classical
  have hp1 : PD.p - 1 + 1 = PD.p := Nat.sub_add_cancel PD.hp.one_lt.le
  have hpos : PD.p - 1 ≠ 0 := by have := PD.hp.two_le; omega

  have hlO0 : ((PD.p : ℕ) : O) ≠ 0 := by
    intro h
    have h1 := W.v_l
    rw [← map_natCast (algebraMap O LL), h, _root_.map_zero, AddValuation.map_zero] at h1
    exact WithTop.top_ne_coe h1
  have hlm : ((PD.p : ℕ) : O) ∈ IsLocalRing.maximalIdeal O := by
    rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
    rintro ⟨u, hu⟩
    have h1 : ((PD.p : ℕ) : O) * ((u⁻¹ : Oˣ) : O) = 1 := by rw [← hu, Units.mul_inv]
    have h2 := congrArg (fun z => v (algebraMap O LL z)) h1
    simp only [_root_.map_mul, _root_.map_one, AddValuation.map_mul, AddValuation.map_one,
      map_natCast, W.v_l] at h2
    have h3 : (1 : WithTop ℚ) ≤ 0 := by
      calc (1 : WithTop ℚ) = 1 + 0 := (add_zero _).symm
        _ ≤ 1 + v (algebraMap O LL ((u⁻¹ : Oˣ) : O)) := add_le_add le_rfl (hO _)
        _ = 0 := h2
    have h4 : (0 : WithTop ℚ) < 1 := by exact_mod_cast (zero_lt_one : (0 : ℚ) < 1)
    exact absurd h3 (not_le.2 h4)
  have hres : IsLocalRing.residue O ((PD.p : ℕ) : O) = 0 := (IsLocalRing.residue_eq_zero_iff _).2 hlm

  obtain ⟨hK, hs, hp2⟩ := hcase
  have hfr : Module.finrank K₀ K = 1 := by
    rw [← (LinearEquiv.ofBijective (Algebra.linearMap K₀ K) hK).finrank_eq, Module.finrank_self]
  have hR : GS.RD W := GS.rd_of W ((hP9 T hT hs hp2).2.2 hfr).1
  obtain ⟨⟨w₁, hw₁⟩, ⟨w₂, hw₂⟩, -, hsub⟩ := id hR
  have hπ₁ : W.π₀₁ = (w₁ : LetA O n) 0 * X ^ (PD.p - 1) := congrFun hw₁ 0
  have hw₁u : IsUnit ((w₁ : LetA O n) 0) :=
    w₁.isUnit.map (Pi.evalMonoidHom (fun _ : ZMod n => PowerSeries O) 0)
  have hw₂u : IsUnit ((w₂ : LetA O n) 0) :=
    w₂.isUnit.map (Pi.evalMonoidHom (fun _ : ZMod n => PowerSeries O) 0)
  have h0 : constantCoeff W.π₀₁ = 0 := by
    rw [hπ₁, _root_.map_mul, _root_.map_pow, constantCoeff_X, zero_pow hpos, mul_zero]
  have hne : W.π₀₁ ≠ 0 := by
    rw [hπ₁]
    exact mul_ne_zero hw₁u.ne_zero (pow_ne_zero _ X_ne_zero)
  set σ : PowerSeries O →ₐ[O] PowerSeries O := substAlgHom (HasSubst.of_constantCoeff_zero' h0) with hσdef
  have hσX : σ X = W.π₀₁ := substAlgHom_X _
  have hσinj : Function.Injective σ := PB.subst_injective h0 hne
  have hσapp : ∀ F, σ F = PowerSeries.subst W.π₀₁ F := fun F => by
    rw [hσdef, coe_substAlgHom]

  have hw₂mem : (w₂ : LetA O n) ∈ W.AΔ := by
    have hc : W.π₀ * qA W ^ (PD.p - 1) ∈ W.AΔ :=
      W.AΔ.mul_mem (GS.π₀_mem W) (W.AΔ.pow_mem (GS.qA_mem W) _)
    have hcu : IsUnit (algebraMap (LetA O n) W.EE (W.π₀ * qA W ^ (PD.p - 1))) := by
      rw [_root_.map_mul, _root_.map_pow]
      exact (GS.isUnit_π₀ hR).mul ((GS.isUnit_qA hR).pow _)
    refine GS.quot_mem W hc hcu ?_
    have e : W.π₀ * qA W ^ (PD.p - 1) * (w₂ : LetA O n) = W.φA W.π₀ := by rw [hw₂]; ring
    rw [e]
    have := GS.φpow_mem W 1 (GS.π₀_mem W)
    rwa [pow_one] at this
  obtain ⟨Fw, hFw⟩ := hsub _ hw₂mem
  set W' := Fw 0
  have hσW' : σ W' = (w₂ : LetA O n) 0 := by rw [hσapp, hFw 0]; rfl
  have hW'u : IsUnit W' := by
    rw [isUnit_iff_constantCoeff]
    have := (isUnit_iff_constantCoeff.1 hw₂u)
    rwa [← hσW', hσdef, PB.constantCoeff_substAlgHom h0] at this

  have hφ0 : constantCoeff (W' * X * (X + C ((PD.p : ℕ) : O)) ^ (PD.p - 1)) = 0 := by
    rw [_root_.map_mul, _root_.map_mul, constantCoeff_X, mul_zero, zero_mul]
  set φY : PowerSeries O →ₐ[O] PowerSeries O := substAlgHom (HasSubst.of_constantCoeff_zero' hφ0)
  have hφYX : φY X = W' * X * (X + C ((PD.p : ℕ) : O)) ^ (PD.p - 1) := substAlgHom_X _
  have hφ₀π : W.φ₀ W.π₀₁ = (w₂ : LetA O n) 0 * W.π₀₁ * (W.π₀₁ + C ((PD.p : ℕ) : O)) ^ (PD.p - 1) := by
    have h := congrFun hw₂ 0
    have e1 : W.φA W.π₀ 0 = W.φ₀ W.π₀₁ := rfl
    rw [e1] at h
    rw [h]
    show (w₂ : LetA O n) 0 * W.π₀₁ * (W.π₀₁ + ((PD.p : ℕ) : LetA O n) 0) ^ (PD.p - 1) = _
    rw [Pi.natCast_apply, map_natCast]
  have hσφ : σ.toRingHom.comp φY.toRingHom = W.φ₀.toRingHom.comp σ.toRingHom := by
    have hX1 : (σ.toRingHom.comp φY.toRingHom) X =
        (w₂ : LetA O n) 0 * W.π₀₁ * (W.π₀₁ + C ((PD.p : ℕ) : O)) ^ (PD.p - 1) := by
      simp only [AlgHom.toRingHom_eq_coe, AlgHom.coe_toRingHom, RingHom.comp_apply, hφYX,
        _root_.map_mul, _root_.map_pow, _root_.map_add, hσX, hσW', PB.algC]
    apply PB.ringHom_ext_nil
    · intro r
      simp only [AlgHom.toRingHom_eq_coe, AlgHom.coe_toRingHom, RingHom.comp_apply, PB.algC]
    · rw [hX1, ← hφ₀π]
      simp only [AlgHom.toRingHom_eq_coe, AlgHom.coe_toRingHom, RingHom.comp_apply, hσX]
    · rw [hX1, _root_.map_mul, _root_.map_mul, h0, mul_zero, zero_mul]
      exact IsNilpotent.zero

  set τ := PB.shiftEquiv ((PD.p : ℕ) : O) hlm
  have hτX : τ X = X + C ((PD.p : ℕ) : O) := PB.shiftEquiv_X _ _
  have hτsX : τ.symm X = X - C ((PD.p : ℕ) : O) := PB.shiftEquiv_symm_X _ _
  have hτC : ∀ r, τ.symm (C r) = C r := fun r => PB.algC τ.symm.toAlgHom r
  have hτC' : ∀ r, τ (C r) = C r := fun r => PB.algC τ.toAlgHom r
  set φX : PowerSeries O →ₐ[O] PowerSeries O := τ.symm.toAlgHom.comp (φY.comp τ.toAlgHom)
  have hφXapp : ∀ F, φX F = τ.symm (φY (τ F)) := fun F => rfl
  have hτXl : τ (X - C ((PD.p : ℕ) : O)) = X := by
    rw [_root_.map_sub, hτX, hτC']; ring
  set u := τ.symm W'
  have hφX0 : φX (X - C ((PD.p : ℕ) : O)) = u * (X - C ((PD.p : ℕ) : O)) * X ^ (PD.p - 1) := by
    rw [hφXapp, hτXl, hφYX, _root_.map_mul, _root_.map_mul, _root_.map_pow, _root_.map_add (f := _), hτsX, hτC]
    ring
  have hφXX : φX X = u * (X - C ((PD.p : ℕ) : O)) * X ^ (PD.p - 1) + C ((PD.p : ℕ) : O) := by
    have : X = (X - C ((PD.p : ℕ) : O)) + C ((PD.p : ℕ) : O) := by ring
    conv_lhs => rw [this]
    rw [_root_.map_add (f := _), hφX0, PB.algC]
  have hφred : ∀ f : PowerSeries O, (φX f).map (IsLocalRing.residue O) =
      PowerSeries.subst ((u * X ^ PD.p).map (IsLocalRing.residue O)) (f.map (IsLocalRing.residue O)) := by
    have hc0 : constantCoeff ((u * X ^ PD.p).map (IsLocalRing.residue O)) = 0 := by
      rw [← coeff_zero_eq_constantCoeff_apply, coeff_map, coeff_zero_eq_constantCoeff_apply,
        _root_.map_mul, _root_.map_pow, constantCoeff_X, zero_pow (by have := PD.hp.two_le; omega),
        mul_zero, _root_.map_zero]
    let ψ : PowerSeries (IsLocalRing.ResidueField O) →ₐ[IsLocalRing.ResidueField O]
      PowerSeries (IsLocalRing.ResidueField O) := substAlgHom (HasSubst.of_constantCoeff_zero' hc0)
    have hψX : ψ X = (u * X ^ PD.p).map (IsLocalRing.residue O) := substAlgHom_X _
    have hX1 : ((map (IsLocalRing.residue O)).comp φX.toRingHom) X =
        (u * X ^ PD.p).map (IsLocalRing.residue O) := by
      simp only [AlgHom.toRingHom_eq_coe, AlgHom.coe_toRingHom, RingHom.comp_apply, hφXX,
        _root_.map_add, _root_.map_mul, _root_.map_sub, _root_.map_pow, map_X, map_C, hres,
        _root_.map_zero, sub_zero, add_zero]
      rw [mul_assoc, ← pow_succ', hp1]
    have h := PB.ringHom_ext_nil (h₁ := (map (IsLocalRing.residue O)).comp φX.toRingHom)
      (h₂ := ψ.toRingHom.comp (map (IsLocalRing.residue O)))
      (fun r => by simp only [AlgHom.toRingHom_eq_coe, AlgHom.coe_toRingHom, RingHom.comp_apply,
        PB.algC, map_C])
      (by rw [hX1]; simp only [AlgHom.toRingHom_eq_coe, AlgHom.coe_toRingHom, RingHom.comp_apply,
        map_X, hψX])
      (by rw [hX1, hc0]; exact IsNilpotent.zero)
    intro f
    have := RingHom.congr_fun h f
    simp only [AlgHom.toRingHom_eq_coe, AlgHom.coe_toRingHom, RingHom.comp_apply] at this
    rw [this]
    show ψ _ = _
    rw [coe_substAlgHom]
  let P : PhiData O PD.p :=
    { φ := φX
      u := u
      hu := hW'u.map τ.symm
      hl := hlm
      hl0 := hlO0
      hφ0 := hφX0
      hred := hφred }
  let ι : PowerSeries O →ₐ[O] PowerSeries O := σ.comp τ.toAlgHom
  have hιapp : ∀ F, ι F = σ (τ F) := fun F => rfl
  have hγ : ∀ δ ∈ W.DelF, (W.γ₀ δ).toRingHom.comp σ.toRingHom = σ.toRingHom := by
    intro δ hδ
    have hπ : W.γ₀ δ W.π₀₁ = W.π₀₁ := congrFun (GS.π₀_mem W δ hδ) 0
    apply PB.ringHom_ext_nil
    · intro r
      simp only [AlgHom.toRingHom_eq_coe, AlgHom.coe_toRingHom, RingHom.comp_apply, PB.algC]
    · simp only [AlgHom.toRingHom_eq_coe, AlgHom.coe_toRingHom, RingHom.comp_apply, hσX, hπ]
    · simp only [AlgHom.toRingHom_eq_coe, AlgHom.coe_toRingHom, RingHom.comp_apply, hσX, hπ, h0]
      exact IsNilpotent.zero
  exact ⟨{
    P := P
    ι := ι
    inj := hσinj.comp τ.injective
    ι_X := by rw [hιapp, hτX, _root_.map_add (f := _), hσX, PB.algC]
    ι_φ := fun F => by
      rw [hιapp, hιapp]
      show σ (τ (τ.symm (φY (τ F)))) = W.φ₀ (σ (τ F))
      rw [AlgEquiv.apply_symm_apply]
      exact RingHom.congr_fun hσφ (τ F)
    range := fun a ha i => by
      obtain ⟨F, hF⟩ := hsub a ha
      refine ⟨τ.symm (F i), ?_⟩
      rw [hιapp, AlgEquiv.apply_symm_apply, hσapp, hF i]
      rfl
    mem := fun F δ hδ => by
      funext i
      rw [GS.γA_apply]
      exact RingHom.congr_fun (hγ δ hδ) (τ F) }⟩

end Formalism.MainNotions.N.FrobeniusPowerSeries
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.RepresentationCongruences.ExistsPhiBridge =====
