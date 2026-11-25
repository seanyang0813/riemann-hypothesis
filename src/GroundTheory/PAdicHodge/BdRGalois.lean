module

public import GroundTheory.PAdicHodge.ThetaPlus
public import GroundTheory.PAdicHodge.AInfGalois
import Mathlib.Tactic.TypeStar

@[expose] public section

set_option maxSynthPendingDepth 1

noncomputable section

open Ideal WittVector IsLocalRing

namespace GroundTheory.PAdicHodge

section AdicCompletion

variable {A : Type*} [CommRing A] (I : Ideal A)

theorem factorPow_evalₐ {m n : ℕ} (hle : m ≤ n) (x : AdicCompletion I A) :
    Ideal.Quotient.factorPow I hle (AdicCompletion.evalₐ I n x) = AdicCompletion.evalₐ I m x := by
  obtain ⟨c, rfl⟩ := AdicCompletion.mk_surjective I A x
  rw [AdicCompletion.evalₐ_mk, AdicCompletion.evalₐ_mk]
  simp only [Ideal.Quotient.factorPow, Ideal.Quotient.factor_mk]
  rw [Ideal.Quotient.eq]
  have h := AdicCompletion.AdicCauchySequence.mk_eq_mk hle c
  rw [Submodule.Quotient.eq, smul_eq_mul, Ideal.mul_top] at h
  exact h

end AdicCompletion

namespace IsPerfectoidField

variable {K : Type*} [NontriviallyNormedField K] [IsUltrametricDist K]
variable {p : ℕ} [Fact p.Prime] [IsPerfectoidField K p] [CharZero K]

local notation "𝒪" => normInteger K
local notation "𝔸" => Localization.Away (p : WittVector p (PreTilt 𝒪 p))
local notation "𝔹" => BDeRhamPlus 𝒪 p
local notation "J" => RingHom.ker (fontaineThetaInvertP 𝒪 p)

variable (K p) in
def evalB (n : ℕ) : 𝔹 →+* 𝔸 ⧸ J ^ n := (AdicCompletion.evalₐ J n).toRingHom

omit [CharZero K] in
theorem evalB_toBDeRhamPlus (n : ℕ) (a : 𝔸) :
    evalB K p n (toBDeRhamPlus 𝒪 p a) = Ideal.Quotient.mk (J ^ n) a := by
  change AdicCompletion.evalₐ J n (algebraMap 𝔸 (AdicCompletion J 𝔸) a) = _
  rw [AdicCompletion.algebraMap_apply, Algebra.algebraMap_self, RingHom.id_apply,
    AdicCompletion.evalₐ_of]

omit [CharZero K] in
theorem evalB_ext {x y : 𝔹} (h : ∀ n, evalB K p n x = evalB K p n y) : x = y :=
  AdicCompletion.ext_evalₐ h

variable (K p) in
theorem map_ker_fontaineThetaInvertP :
    Ideal.map (toBDeRhamPlus 𝒪 p) J = maximalIdeal 𝔹 := by
  rw [ker_fontaineThetaInvertP (ker_fontaineTheta_eq_span_kerThetaGenerator K p), Ideal.map_span,
    Set.image_singleton, maximalIdeal_bDeRhamPlus_eq_span (ker_fontaineTheta_eq_span_kerThetaGenerator K p)]
  rfl

theorem ker_evalB (n : ℕ) : RingHom.ker (evalB K p n) = maximalIdeal 𝔹 ^ n := by
  have h := ker_adicCompletion_evalₐ (fg_ker_fontaineThetaInvertP
    (ker_fontaineTheta_eq_span_kerThetaGenerator K p)) n
  rw [Ideal.map_pow] at h
  rw [← map_ker_fontaineThetaInvertP K p]
  exact h

theorem eq_zero_of_forall_mem_maximalIdeal_pow {x : 𝔹} (h : ∀ n : ℕ, x ∈ maximalIdeal 𝔹 ^ n) :
    x = 0 := by
  have hc := isAdicComplete_maximalIdeal_bDeRhamPlus (K := K) (p := p)
  refine hc.toIsHausdorff.haus x fun n => ?_
  rw [SModEq.zero, smul_eq_mul, Ideal.mul_top]
  exact h n

end IsPerfectoidField

section Galois

variable {p : ℕ} [hp : Fact p.Prime] {K : IntermediateField ℚ_[p] (PadicAlgCl p)}

local notation "𝒪" => normInteger ℂ_[p]
local notation "𝕎𝒪♭" => WittVector p (PreTilt 𝒪 p)
local notation "𝔸" => Localization.Away (p : 𝕎𝒪♭)
local notation "𝔹" => BDeRhamPlus 𝒪 p
local notation "θ" => fontaineTheta 𝒪 p
local notation "J" => RingHom.ker (fontaineThetaInvertP 𝒪 p)

omit hp in
theorem isUnit_algebraMap_p_away [Fact p.Prime] :
    IsUnit ((algebraMap 𝕎𝒪♭ 𝔸) (p : 𝕎𝒪♭)) :=
  IsLocalization.Away.algebraMap_isUnit (S := 𝔸) (p : 𝕎𝒪♭)

theorem gal_smul_mem_ker_fontaineTheta (σ : Gal(PadicAlgCl p/K)) {w : 𝕎𝒪♭}
    (hw : w ∈ RingHom.ker θ) : σ • w ∈ RingHom.ker θ := by
  rw [RingHom.mem_ker] at hw ⊢
  have h := AInf.fontaineTheta_gal_smul σ w
  rw [hw, ZeroMemClass.coe_zero, smul_zero] at h
  exact Subtype.ext h

def galAway (σ : Gal(PadicAlgCl p/K)) : 𝔸 →+* 𝔸 :=
  Localization.awayLift ((algebraMap 𝕎𝒪♭ 𝔸).comp (AInf.galMap σ)) (p : 𝕎𝒪♭)
    (by simpa using isUnit_algebraMap_p_away (p := p))

@[simp]
theorem galAway_algebraMap (σ : Gal(PadicAlgCl p/K)) (w : 𝕎𝒪♭) :
    galAway σ (algebraMap 𝕎𝒪♭ 𝔸 w) = algebraMap 𝕎𝒪♭ 𝔸 (σ • w) :=
  IsLocalization.Away.lift_eq (S := 𝔸) (p : 𝕎𝒪♭)
    (by simpa using isUnit_algebraMap_p_away (p := p)) w

theorem galAway_one : galAway (1 : Gal(PadicAlgCl p/K)) = RingHom.id 𝔸 :=
  IsLocalization.ringHom_ext (Submonoid.powers (p : 𝕎𝒪♭)) (RingHom.ext fun w => by
    simp only [RingHom.comp_apply, galAway_algebraMap, one_smul, RingHom.id_apply])

theorem galAway_mul (σ τ : Gal(PadicAlgCl p/K)) :
    galAway (σ * τ) = (galAway σ).comp (galAway τ) :=
  IsLocalization.ringHom_ext (Submonoid.powers (p : 𝕎𝒪♭)) (RingHom.ext fun w => by
    simp only [RingHom.comp_apply, galAway_algebraMap, mul_smul])

theorem map_galAway_le (σ : Gal(PadicAlgCl p/K)) : Ideal.map (galAway σ) J ≤ J := by
  have hξ := IsPerfectoidField.ker_fontaineTheta_eq_span_kerThetaGenerator ℂ_[p] p
  rw [ker_fontaineThetaInvertP hξ, Ideal.map_span, Set.image_singleton, Ideal.span_le,
    Set.singleton_subset_iff, galAway_algebraMap, SetLike.mem_coe]
  have h : σ • IsPerfectoidField.kerThetaGenerator ℂ_[p] p ∈ RingHom.ker θ :=
    gal_smul_mem_ker_fontaineTheta σ (hξ ▸ Ideal.mem_span_singleton_self _)
  rw [hξ, Ideal.mem_span_singleton] at h
  obtain ⟨c, hc⟩ := h
  rw [hc, map_mul, Ideal.mem_span_singleton]
  exact dvd_mul_right _ _

theorem pow_le_comap_galAway (σ : Gal(PadicAlgCl p/K)) (n : ℕ) :
    J ^ n ≤ (J ^ n).comap (galAway σ) := by
  rw [← Ideal.map_le_iff_le_comap, Ideal.map_pow]
  exact Ideal.pow_right_mono (map_galAway_le σ) n

def galQuot (σ : Gal(PadicAlgCl p/K)) (n : ℕ) : 𝔸 ⧸ J ^ n →+* 𝔸 ⧸ J ^ n :=
  Ideal.quotientMap (J ^ n) (galAway σ) (pow_le_comap_galAway σ n)

@[simp]
theorem galQuot_mk (σ : Gal(PadicAlgCl p/K)) (n : ℕ) (a : 𝔸) :
    galQuot σ n (Ideal.Quotient.mk (J ^ n) a) = Ideal.Quotient.mk (J ^ n) (galAway σ a) :=
  Ideal.quotientMap_mk

theorem galQuot_one (n : ℕ) : galQuot (1 : Gal(PadicAlgCl p/K)) n = RingHom.id _ :=
  Ideal.Quotient.ringHom_ext (RingHom.ext fun a => by
    simp only [RingHom.comp_apply, galQuot_mk, galAway_one, RingHom.id_apply])

theorem galQuot_mul (σ τ : Gal(PadicAlgCl p/K)) (n : ℕ) :
    galQuot (σ * τ) n = (galQuot σ n).comp (galQuot τ n) :=
  Ideal.Quotient.ringHom_ext (RingHom.ext fun a => by
    simp only [RingHom.comp_apply, galQuot_mk, galAway_mul])

theorem factorPow_galQuot (σ : Gal(PadicAlgCl p/K)) {m n : ℕ} (hle : m ≤ n) (y : 𝔸 ⧸ J ^ n) :
    Ideal.Quotient.factorPow J hle (galQuot σ n y) = galQuot σ m (Ideal.Quotient.factorPow J hle y) := by
  obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective y
  simp only [galQuot_mk, Ideal.Quotient.factorPow, Ideal.Quotient.factor_mk]

theorem galQuot_evalB_compat (σ : Gal(PadicAlgCl p/K)) {m n : ℕ} (hle : m ≤ n) :
    (Ideal.Quotient.factorPow J hle).comp ((galQuot σ n).comp (IsPerfectoidField.evalB ℂ_[p] p n)) =
      (galQuot σ m).comp (IsPerfectoidField.evalB ℂ_[p] p m) :=
  RingHom.ext fun x => by
    simp only [RingHom.comp_apply]
    rw [factorPow_galQuot]
    exact congrArg (galQuot σ m) (factorPow_evalₐ J hle x)

def galBdRHom (σ : Gal(PadicAlgCl p/K)) : 𝔹 →+* 𝔹 :=
  AdicCompletion.liftRingHom J (fun n => (galQuot σ n).comp (IsPerfectoidField.evalB ℂ_[p] p n))
    (galQuot_evalB_compat σ)

theorem evalB_galBdRHom (σ : Gal(PadicAlgCl p/K)) (n : ℕ) (x : 𝔹) :
    IsPerfectoidField.evalB ℂ_[p] p n (galBdRHom σ x) =
      galQuot σ n (IsPerfectoidField.evalB ℂ_[p] p n x) :=
  AdicCompletion.evalₐ_liftRingHom J _ (galQuot_evalB_compat σ) n x

theorem galBdRHom_toBDeRhamPlus (σ : Gal(PadicAlgCl p/K)) (a : 𝔸) :
    galBdRHom σ (toBDeRhamPlus 𝒪 p a) = toBDeRhamPlus 𝒪 p (galAway σ a) := by
  refine IsPerfectoidField.evalB_ext fun n => ?_
  rw [evalB_galBdRHom, IsPerfectoidField.evalB_toBDeRhamPlus,
    IsPerfectoidField.evalB_toBDeRhamPlus, galQuot_mk]

theorem galBdRHom_one : galBdRHom (1 : Gal(PadicAlgCl p/K)) = RingHom.id 𝔹 :=
  RingHom.ext fun x => IsPerfectoidField.evalB_ext fun n => by
    rw [evalB_galBdRHom, galQuot_one, RingHom.id_apply, RingHom.id_apply]

theorem galBdRHom_mul (σ τ : Gal(PadicAlgCl p/K)) :
    galBdRHom (σ * τ) = (galBdRHom σ).comp (galBdRHom τ) :=
  RingHom.ext fun x => IsPerfectoidField.evalB_ext fun n => by
    rw [RingHom.comp_apply, evalB_galBdRHom, evalB_galBdRHom, evalB_galBdRHom, galQuot_mul,
      RingHom.comp_apply]

instance instMulSemiringActionBdR : MulSemiringAction Gal(PadicAlgCl p/K) 𝔹 where
  smul σ x := galBdRHom σ x
  one_smul x := by
    change galBdRHom 1 x = x
    rw [galBdRHom_one, RingHom.id_apply]
  mul_smul σ τ x := by
    change galBdRHom (σ * τ) x = galBdRHom σ (galBdRHom τ x)
    rw [galBdRHom_mul, RingHom.comp_apply]
  smul_zero σ := map_zero (galBdRHom σ)
  smul_add σ := map_add (galBdRHom σ)
  smul_one σ := map_one (galBdRHom σ)
  smul_mul σ := map_mul (galBdRHom σ)

theorem gal_smul_bdR_def (σ : Gal(PadicAlgCl p/K)) (x : 𝔹) : σ • x = galBdRHom σ x := rfl

theorem gal_smul_toBDeRhamPlus (σ : Gal(PadicAlgCl p/K)) (a : 𝔸) :
    σ • toBDeRhamPlus 𝒪 p a = toBDeRhamPlus 𝒪 p (galAway σ a) :=
  galBdRHom_toBDeRhamPlus σ a

theorem gal_smul_wittToBDeRhamPlus (σ : Gal(PadicAlgCl p/K)) (w : 𝕎𝒪♭) :
    σ • wittToBDeRhamPlus 𝒪 p w = wittToBDeRhamPlus 𝒪 p (σ • w) := by
  change σ • toBDeRhamPlus 𝒪 p (algebraMap 𝕎𝒪♭ 𝔸 w) = toBDeRhamPlus 𝒪 p (algebraMap 𝕎𝒪♭ 𝔸 (σ • w))
  rw [gal_smul_toBDeRhamPlus, galAway_algebraMap]

def galBdR (σ : Gal(PadicAlgCl p/K)) : 𝔹 ≃+* 𝔹 :=
  MulSemiringAction.toRingEquiv Gal(PadicAlgCl p/K) 𝔹 σ

theorem galBdR_apply (σ : Gal(PadicAlgCl p/K)) (x : 𝔹) : galBdR σ x = σ • x := rfl

theorem thetaBDeRhamPlus_eq_zero_of_evalB_one_eq_zero {y : 𝔹}
    (hy : IsPerfectoidField.evalB ℂ_[p] p 1 y = 0) : thetaBDeRhamPlus 𝒪 p y = 0 := by
  have hmem : y ∈ maximalIdeal 𝔹 := by
    have h : y ∈ maximalIdeal 𝔹 ^ 1 := by
      rw [← IsPerfectoidField.ker_evalB (K := ℂ_[p]) (p := p) 1, RingHom.mem_ker]
      exact hy
    rwa [pow_one] at h
  rw [IsPerfectoidField.maximalIdeal_bDeRhamPlus, RingHom.mem_ker,
    IsPerfectoidField.thetaBDeRhamPlusField] at hmem
  simp only [RingHom.comp_apply] at hmem
  exact (map_eq_zero_iff _ (IsPerfectoidField.awayEquiv (K := ℂ_[p]) p).injective).1 hmem

theorem thetaBDeRhamPlusField_toBDeRhamPlus_galAway (σ : Gal(PadicAlgCl p/K)) (a : 𝔸) :
    IsPerfectoidField.thetaBDeRhamPlusField p (toBDeRhamPlus 𝒪 p (galAway σ a)) =
      σ • IsPerfectoidField.thetaBDeRhamPlusField p (toBDeRhamPlus 𝒪 p a) := by
  have h : ((IsPerfectoidField.thetaBDeRhamPlusField p).comp ((toBDeRhamPlus 𝒪 p).comp (galAway σ))) =
      ((galCp σ : ℂ_[p] →+* ℂ_[p]).comp
        ((IsPerfectoidField.thetaBDeRhamPlusField p).comp (toBDeRhamPlus 𝒪 p))) := by
    refine IsLocalization.ringHom_ext (Submonoid.powers (p : 𝕎𝒪♭)) (RingHom.ext fun w => ?_)
    simp only [RingHom.comp_apply, galAway_algebraMap, RingHom.coe_coe, galCp_apply]
    change IsPerfectoidField.thetaBDeRhamPlusField p (wittToBDeRhamPlus 𝒪 p (σ • w)) =
      σ • IsPerfectoidField.thetaBDeRhamPlusField p (wittToBDeRhamPlus 𝒪 p w)
    rw [IsPerfectoidField.thetaBDeRhamPlusField_wittToBDeRhamPlus,
      IsPerfectoidField.thetaBDeRhamPlusField_wittToBDeRhamPlus, AInf.fontaineTheta_gal_smul]
  have h' := RingHom.congr_fun h a
  simp only [RingHom.comp_apply, RingHom.coe_coe, galCp_apply] at h'
  exact h'

theorem thetaBDeRhamPlusField_gal_smul (σ : Gal(PadicAlgCl p/K)) (x : 𝔹) :
    IsPerfectoidField.thetaBDeRhamPlusField p (σ • x) =
      σ • IsPerfectoidField.thetaBDeRhamPlusField p x := by
  obtain ⟨a, ha⟩ := Ideal.Quotient.mk_surjective (IsPerfectoidField.evalB ℂ_[p] p 1 x)
  have hx : IsPerfectoidField.evalB ℂ_[p] p 1 (x - toBDeRhamPlus 𝒪 p a) = 0 := by
    rw [map_sub, IsPerfectoidField.evalB_toBDeRhamPlus, ha, sub_self]
  have hσx : IsPerfectoidField.evalB ℂ_[p] p 1 (σ • (x - toBDeRhamPlus 𝒪 p a)) = 0 := by
    rw [gal_smul_bdR_def, evalB_galBdRHom, hx, map_zero]
  have e1 := thetaBDeRhamPlus_eq_zero_of_evalB_one_eq_zero hx
  have e2 := thetaBDeRhamPlus_eq_zero_of_evalB_one_eq_zero hσx
  have f1 : IsPerfectoidField.thetaBDeRhamPlusField p x =
      IsPerfectoidField.thetaBDeRhamPlusField p (toBDeRhamPlus 𝒪 p a) := by
    rw [← sub_eq_zero, ← map_sub, IsPerfectoidField.thetaBDeRhamPlusField, RingHom.comp_apply, e1,
      map_zero]
  have f2 : IsPerfectoidField.thetaBDeRhamPlusField p (σ • x) =
      IsPerfectoidField.thetaBDeRhamPlusField p (σ • toBDeRhamPlus 𝒪 p a) := by
    rw [← sub_eq_zero, ← map_sub, ← smul_sub, IsPerfectoidField.thetaBDeRhamPlusField,
      RingHom.comp_apply, e2, map_zero]
  rw [f2, f1, gal_smul_toBDeRhamPlus, thetaBDeRhamPlusField_toBDeRhamPlus_galAway]

theorem gal_smul_mem_maximalIdeal (σ : Gal(PadicAlgCl p/K)) {x : 𝔹} (hx : x ∈ maximalIdeal 𝔹) :
    σ • x ∈ maximalIdeal 𝔹 := by
  rw [IsPerfectoidField.maximalIdeal_bDeRhamPlus, RingHom.mem_ker] at hx ⊢
  rw [thetaBDeRhamPlusField_gal_smul, hx, smul_zero]

end Galois

end GroundTheory.PAdicHodge
