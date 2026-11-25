module

public import GroundTheory.HeightsAndTheta.Heights.ChowForms.StatementsNormOfDividedForm
public import GroundTheory.HeightsAndTheta.Heights.ChowForms.StatementsNormForm
public import Mathlib.Algebra.Module.StablyFree.Basic
public import Mathlib.LinearAlgebra.FreeModule.PID
public import Mathlib.RingTheory.Flat.FaithfullyFlat.Algebra
public import Mathlib.RingTheory.Flat.TorsionFree
public import Mathlib.RingTheory.Henselian
public import Mathlib.RingTheory.RegularLocalRing.Defs
public import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.RingTheory.LocalProperties.Reduced
public import Mathlib.Algebra.MvPolynomial.Nilpotent
public import Mathlib.RingTheory.Localization.Finiteness
public import Mathlib.RingTheory.Localization.NormTrace

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open MvPolynomial
open scoped nonZeroDivisors

noncomputable section

namespace NormOfDividedForm

variable {O B K L : Type} [CommRing O] [IsDomain O] [CommRing B] [Algebra O B] [Field K] [Field L] [Algebra O K]
  [IsFractionRing O K] [Algebra B L] [Algebra K L] [Algebra O L] [IsScalarTower O K L] [IsScalarTower O B L]
  [IsLocalization (Algebra.algebraMapSubmonoid B O⁰) L]


omit [IsDomain O] [IsFractionRing O K] [IsLocalization (Algebra.algebraMapSubmonoid B O⁰) L] in
theorem algebraMap_sum_smul {n : ℕ} (η : Fin n → B) (v : Fin n → O) :
    algebraMap B L (∑ m, v m • η m) = ∑ m, algebraMap O K (v m) • algebraMap B L (η m) := by

  simp only [map_sum, Algebra.smul_def, map_mul]
  refine Finset.sum_congr rfl fun m _ => ?_
  rw [← IsScalarTower.algebraMap_apply O B L, IsScalarTower.algebraMap_apply O K L]

theorem adjoin_range_eq_top {n : ℕ} (η : Fin n → B) (hgen : Algebra.adjoin O (Set.range η) = ⊤) :
    Algebra.adjoin K (Set.range fun m => algebraMap B L (η m)) = ⊤ := by
  rw [eq_top_iff]
  intro x _
  obtain ⟨⟨b, s⟩, rfl⟩ := IsLocalization.mk'_surjective (Algebra.algebraMapSubmonoid B O⁰) x
  obtain ⟨a, ha, has⟩ := s.2
  have hle : (Algebra.adjoin O (Set.range η)).map (IsScalarTower.toAlgHom O B L) ≤
      (Algebra.adjoin K (Set.range fun m => algebraMap B L (η m))).restrictScalars O := by
    rw [AlgHom.map_adjoin, Algebra.adjoin_le_iff]
    rintro _ ⟨_, ⟨m, rfl⟩, rfl⟩
    rw [SetLike.mem_coe, Subalgebra.mem_restrictScalars, IsScalarTower.coe_toAlgHom']
    exact Algebra.subset_adjoin ⟨m, rfl⟩
  have hb : algebraMap B L b ∈ Algebra.adjoin K (Set.range fun m => algebraMap B L (η m)) :=
    hle (Subalgebra.mem_map.2 ⟨b, by rw [hgen]; trivial, IsScalarTower.toAlgHom_apply O B L b⟩)
  have ha0 : algebraMap O K a ≠ 0 :=
    (map_ne_zero_iff _ (IsFractionRing.injective O K)).2 (nonZeroDivisors.ne_zero ha)
  have hs : IsLocalization.mk' L b s = (algebraMap O K a)⁻¹ • algebraMap B L b := by
    rw [eq_inv_smul_iff₀ ha0, Algebra.smul_def, ← IsScalarTower.algebraMap_apply O K L,
      IsScalarTower.algebraMap_apply O B L, has]
    exact IsLocalization.mk'_spec' L b s
  change IsLocalization.mk' L b s ∈ _
  rw [hs]
  exact Subalgebra.smul_mem _ hb _


omit [IsDomain O] in
theorem algebraMap_det_mulLeft [Module.Free O B] [Module.Finite O B] [FiniteDimensional K L]
    (hEval : NormFormEval.Statement) {n : ℕ} (η : Fin n → B) (v : Fin n → O) :
    algebraMap O K (LinearMap.det (LinearMap.mulLeft O (∑ m, v m • η m))) =
      eval (fun m => algebraMap O K (v m)) (normForm K L fun m => algebraMap B L (η m)) := by
  rw [hEval K L n _ _]
  change algebraMap O K (Algebra.norm O _) = _
  rw [← Algebra.norm_localization O O⁰ (Sₘ := L), algebraMap_sum_smul (K := K)]

theorem det_mulLeft_eq (hEval : NormFormEval.Statement) (hDvd : NormFormDvd.Statement)
    (hPrime : PrimeMapFractionRing.Statement)
    (O B : Type) [CommRing O] [IsDomain O] [Infinite O] [CommRing B] [IsDomain B]
    [Algebra O B] [Module.Free O B] [Module.Finite O B]
    (n : ℕ) (η : Fin n → B) (t : Fin n → O) (P : MvPolynomial (Fin n) O)
    (hsep : @Algebra.IsSeparable (FractionRing O) (FractionRing B) _ _ (FractionRing.liftAlgebra O _))
    (hgen : Algebra.adjoin O (Set.range η) = ⊤) (ht : ∑ m, t m • η m = 1) (hP : Prime P)
    (hdvd : (∑ m, X m * C (η m)) ∣ map (algebraMap O B) P) (u : Fin n → O) :
    eval u P = eval t P * LinearMap.det (LinearMap.mulLeft O (∑ m, u m • η m)) := by
  let K := FractionRing O
  let L := FractionRing B
  let _ : Algebra K L := FractionRing.liftAlgebra O L
  have : IsScalarTower O K L := FractionRing.isScalarTower_liftAlgebra O L
  have : FiniteDimensional K L := .of_isLocalization O B O⁰
  have : Algebra.IsSeparable K L := hsep
  have hOB : Function.Injective (algebraMap O B) := FaithfulSMul.algebraMap_injective O B
  have hOK : Function.Injective (algebraMap O K) := IsFractionRing.injective O K
  have : Infinite K := Infinite.of_injective _ hOK
  let ηL : Fin n → L := fun m => algebraMap B L (η m)
  let tK : Fin n → K := fun m => algebraMap O K (t m)
  have htL : ∑ m, tK m • ηL m = 1 := by
    rw [← algebraMap_sum_smul, ht, map_one]
  have hdvdL : (∑ m, X m * C (ηL m)) ∣ map (algebraMap K L) (map (algebraMap O K) P) := by
    have h := _root_.map_dvd (MvPolynomial.map (algebraMap B L)) hdvd
    rw [map_map, ← IsScalarTower.algebraMap_eq, IsScalarTower.algebraMap_eq O K L, ← map_map, map_sum] at h
    simpa only [map_mul, map_X, map_C] using h
  have hnc : ∀ a : O, P ≠ C a := by
    rintro a rfl
    obtain ⟨g, hg⟩ := hdvd
    have h := congrArg (eval 0) hg
    simp only [map_C, eval_C, map_mul, map_sum, eval_X, Pi.zero_apply, zero_mul, Finset.sum_const_zero] at h
    exact hP.ne_zero (by rw [(map_eq_zero_iff _ hOB).1 h, map_zero])
  obtain ⟨c, hc⟩ := hDvd K L n ηL tK _ (adjoin_range_eq_top η hgen) htL hdvdL
  have hNt : eval tK (normForm K L ηL) = 1 := by
    rw [hEval K L n ηL, htL, map_one]
  have hN0 : ¬ IsUnit (normForm K L ηL) := by
    intro h
    have h0 := h.map (eval (0 : Fin n → K))
    rw [hEval K L n ηL] at h0
    simp only [Pi.zero_apply, zero_smul, Finset.sum_const_zero, Algebra.norm_zero] at h0
    exact not_isUnit_zero h0
  have hcu : IsUnit c := ((hPrime O K n P hP hnc).irreducible.isUnit_or_isUnit hc).resolve_left hN0
  obtain ⟨c₀, -, rfl⟩ := (MvPolynomial.isUnit_iff_eq_C_of_isReduced).1 hcu
  have hev : ∀ v : Fin n → O, eval (fun m => algebraMap O K (v m)) (map (algebraMap O K) P) =
      algebraMap O K (eval v P) := fun v => by
    rw [eval_map]
    exact (eval₂_comp_left (algebraMap O K) (RingHom.id O) v P).symm
  have hct : c₀ = algebraMap O K (eval t P) := by
    have h := congrArg (eval tK) hc
    rw [map_mul, hNt, eval_C, one_mul] at h
    rw [← h, hev]
  apply hOK
  have h := congrArg (eval (fun m => algebraMap O K (u m))) hc
  rw [map_mul, eval_C, hct, hev] at h
  rw [map_mul, algebraMap_det_mulLeft (L := L) hEval η u, h, mul_comm]

end NormOfDividedForm


open NormOfDividedForm in
theorem NormOfDividedForm.proof (hEval : NormFormEval.Statement) (hDvd : NormFormDvd.Statement)
    (hPrime : PrimeMapFractionRing.Statement) : NormOfDividedForm.Statement := by
  intro O B _ _ _ _ _ _ _ _ n η t P hgen ht hP hdvd u
  let _ : Algebra (FractionRing O) (FractionRing B) := FractionRing.liftAlgebra O _
  have : IsScalarTower O (FractionRing O) (FractionRing B) := FractionRing.isScalarTower_liftAlgebra O _
  have : FiniteDimensional (FractionRing O) (FractionRing B) := .of_isLocalization O B O⁰
  exact det_mulLeft_eq hEval hDvd hPrime O B n η t P Algebra.IsAlgebraic.isSeparable_of_perfectField
    hgen ht hP hdvd u

end

end GroundTheory.Heights₂.Heights
