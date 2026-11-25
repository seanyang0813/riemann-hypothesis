module

public import Mathlib.RingTheory.PowerSeries.Substitution

@[expose] public section

namespace DualFramesAlt.EigenUniformiser

open PowerSeries

variable {O : Type*} [CommRing O]

private theorem powerSeries_algHom_C_eq (α : PowerSeries O →ₐ[O] PowerSeries O) (c : O) : α (C c) = C c := by
  have h : (C c : PowerSeries O) = algebraMap O (PowerSeries O) c := by
    rw [Algebra.algebraMap_eq_smul_one, smul_eq_C_mul, mul_one]
  rw [h, AlgHom.commutes]

private theorem X_pow_dvd_algHom_sub_of_X_eq (α β : PowerSeries O →ₐ[O] PowerSeries O) (hX : α X = β X)
    (h0 : constantCoeff (α X) = 0) (n : ℕ) (f : PowerSeries O) :
    (X : PowerSeries O) ^ n ∣ α f - β f := by
  induction n generalizing f with
  | zero => simp
  | succ n ih =>
    obtain ⟨g, c, hf⟩ : ∃ (g : PowerSeries O) (c : O), f = X * g + C c :=
      ⟨_, _, eq_X_mul_shift_add_const f⟩
    subst hf
    have key : α (X * g + C c) - β (X * g + C c) = α X * (α g - β g) := by
      rw [map_add (f := _), map_add (f := _), map_mul, map_mul, powerSeries_algHom_C_eq α, powerSeries_algHom_C_eq β, ← hX]; ring
    rw [key, pow_succ']
    exact mul_dvd_mul (X_dvd_iff.mpr h0) (ih g)

private theorem algHom_apply_eq_of_X_eq (α β : PowerSeries O →ₐ[O] PowerSeries O) (hX : α X = β X)
    (h0 : constantCoeff (α X) = 0) (f : PowerSeries O) : α f = β f := by
  rw [← sub_eq_zero]
  ext n
  have h := (X_pow_dvd_iff.mp (X_pow_dvd_algHom_sub_of_X_eq α β hX h0 (n + 1) f)) n (Nat.lt_succ_self n)
  rw [h, map_zero]

theorem algHom_subst (φ : PowerSeries O →ₐ[O] PowerSeries O)
    (hφ : constantCoeff (φ X) = 0) {p : PowerSeries O} (hp : constantCoeff p = 0)
    (g : PowerSeries O) :
    φ (PowerSeries.subst p g) = PowerSeries.subst (φ p) g := by
  have h0 : constantCoeff (φ p) = 0 := by
    obtain ⟨q, hq⟩ := X_dvd_iff.mpr hp
    rw [hq, map_mul, map_mul, hφ, zero_mul]
  have hps : HasSubst p := HasSubst.of_constantCoeff_zero' hp
  have hb : HasSubst (φ p) := HasSubst.of_constantCoeff_zero' h0
  let α : PowerSeries O →ₐ[O] PowerSeries O := φ.comp (substAlgHom (R := O) hps)
  let β : PowerSeries O →ₐ[O] PowerSeries O := substAlgHom (R := O) hb
  have hα : ∀ f : PowerSeries O, α f = φ (PowerSeries.subst p f) :=
    fun f => congrArg φ (congrFun (coe_substAlgHom (R := O) hps) f)
  have hβ : ∀ f : PowerSeries O, β f = PowerSeries.subst (φ p) f :=
    fun f => congrFun (coe_substAlgHom (R := O) hb) f
  have hX : α X = β X := by rw [hα, hβ, subst_X (R := O) hps, subst_X (R := O) hb]
  have h0' : constantCoeff (α X) = 0 := by rw [hα, subst_X (R := O) hps]; exact h0
  rw [← hα, ← hβ]
  exact algHom_apply_eq_of_X_eq α β hX h0' g

section Coordinate

variable {p : PowerSeries O} (hp0 : constantCoeff p = 0) (hp1 : IsUnit (coeff 1 p))
include hp0 hp1

end Coordinate

private theorem algHom_eq_C_constantCoeff_add_X_mul (α : PowerSeries O →ₐ[O] PowerSeries O) (f : PowerSeries O) :
    α f = C (constantCoeff f) + α X * α (mk fun n => coeff (n + 1) f) := by
  conv_lhs => rw [eq_X_mul_shift_add_const f]
  rw [map_add (f := _), map_mul, powerSeries_algHom_C_eq, add_comm]

theorem subst_eq_C_add {a : PowerSeries O} (ha : constantCoeff a = 0) (f : PowerSeries O) :
    PowerSeries.subst a f = C (constantCoeff f) +
      a * PowerSeries.subst a (mk fun n => coeff (n + 1) f) := by
  have ha' : HasSubst a := HasSubst.of_constantCoeff_zero' ha
  let α : PowerSeries O →ₐ[O] PowerSeries O := substAlgHom (R := O) ha'
  have hα : ∀ g : PowerSeries O, α g = PowerSeries.subst a g :=
    fun g => congrFun (coe_substAlgHom (R := O) ha') g
  rw [← hα, ← hα, algHom_eq_C_constantCoeff_add_X_mul α f, hα X, subst_X (R := O) ha']

end DualFramesAlt.EigenUniformiser
