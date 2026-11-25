module

public import Mathlib.RingTheory.DiscreteValuationRing.Basic
public import Mathlib.RingTheory.LocalRing.ResidueField.Defs
public import Mathlib.RingTheory.PowerSeries.Basic
public import Mathlib.RingTheory.PowerSeries.WeierstrassPreparation
import Mathlib.Tactic.Linter.HaveILetI
public import Mathlib.Algebra.CharP.Lemmas
public import Mathlib.RingTheory.LocalRing.ResidueField.Basic
public import Mathlib.RingTheory.PowerSeries.Order
public import Mathlib.RingTheory.RootsOfUnity.PrimitiveRoots

@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.FrobeniusPowerSeries.LTB

open PowerSeries

section Roots

variable {O : Type*} [CommRing O] [IsDomain O] [IsLocalRing O]

theorem root_eq (l : ℕ) [hp : Fact l.Prime] {x₀ y w : O} (hx : x₀ ≠ 0)
    (hrx : (1 + x₀) ^ l = 1) (hry : (1 + y) ^ l = 1)
    (hw : w ∈ IsLocalRing.maximalIdeal O) (hyw : y - x₀ = x₀ * w) : y = x₀ := by
  have hl0 : 0 < l := hp.out.pos
  have hζ1 : (1 + x₀) ≠ 1 := fun h => hx (by linear_combination h)
  have hprim : IsPrimitiveRoot (1 + x₀) l := by
    have h := IsPrimitiveRoot.orderOf (1 + x₀)
    rwa [orderOf_eq_prime hrx hζ1] at h
  have hζu : IsUnit (1 + x₀) := by
    first
    | exact hprim.isUnit hl0.ne'
  have hwu : ¬ IsUnit w := (IsLocalRing.mem_maximalIdeal w).1 hw
  obtain ⟨i, hil, hi⟩ : ∃ i < l, (1 + x₀) ^ i = 1 + y := by
    first
    | exact hprim.eq_pow_of_pow_eq_one hry
  rcases i with _ | j
  · exfalso
    have hy0 : y = 0 := by linear_combination -hi
    have hxw : x₀ * (1 + w) = 0 := by linear_combination -hyw + hy0
    rcases mul_eq_zero.1 hxw with h | h
    · exact hx h
    · apply hwu
      have hw1 : w = -1 := by linear_combination h
      rw [hw1]
      exact isUnit_one.neg
  · rcases j with _ | j
    · linear_combination -hi
    · exfalso
      have hk0 : 0 < j + 1 := Nat.succ_pos j
      have hkl : j + 1 < l := by omega
      have hcop : (j + 1).Coprime l :=
        Nat.Coprime.symm ((Nat.Prime.coprime_iff_not_dvd hp.out).2 (Nat.not_dvd_of_pos_of_lt hk0 hkl))
      have hprim' := hprim.pow_of_coprime (j + 1) hcop
      obtain ⟨m, -, hm⟩ : ∃ m < l, ((1 + x₀) ^ (j + 1)) ^ m = 1 + x₀ := by
        first
        | exact hprim'.eq_pow_of_pow_eq_one hrx
      have e1 := geom_sum_mul ((1 + x₀) ^ (j + 1)) m
      have e2 := geom_sum_mul (1 + x₀) (j + 1)
      rw [hm] at e1
      set S := ∑ i ∈ Finset.range m, ((1 + x₀) ^ (j + 1)) ^ i with hS
      set v := ∑ i ∈ Finset.range (j + 1), (1 + x₀) ^ i with hv
      have hSv0 : x₀ * (S * v - 1) = 0 := by linear_combination S * e2 + e1
      have hSv : S * v = 1 := by
        have := (mul_eq_zero.1 hSv0).resolve_left hx
        linear_combination this
      have hvu : IsUnit v := ⟨⟨v, S, by rw [mul_comm]; exact hSv, hSv⟩, rfl⟩
      have hwz : x₀ * (w - (1 + x₀) * v) = 0 := by
        linear_combination -hyw - hi - (1 + x₀) * e2
      have hw' : w = (1 + x₀) * v := by
        have := (mul_eq_zero.1 hwz).resolve_left hx
        linear_combination this
      exact hwu (hw' ▸ hζu.mul hvu)

end Roots

section Main

variable {O : Type*} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [CharZero O]
  [IsAdicComplete (IsLocalRing.maximalIdeal O) O]

theorem mem_max (l : ℕ) [hp : Fact l.Prime] (hl : ((l : ℕ) : O) ∈ IsLocalRing.maximalIdeal O)
    {x₀ : O} (hroot : (1 + x₀) ^ l = 1) : x₀ ∈ IsLocalRing.maximalIdeal O := by
  have hk : ((l : ℕ) : IsLocalRing.ResidueField O) = 0 := by
    rw [← map_natCast (IsLocalRing.residue O)]
    exact (IsLocalRing.residue_eq_zero_iff _).2 hl
  haveI : CharP (IsLocalRing.ResidueField O) l := by
    first
    | exact (CharP.charP_iff_prime_eq_zero hp.out).2 hk
  have h := congrArg (IsLocalRing.residue O) hroot
  simp only [map_pow, map_add (f := _), map_one] at h
  rw [add_pow_char, one_pow] at h
  have h2 : (IsLocalRing.residue O x₀) ^ l = 0 := by linear_combination h
  exact (IsLocalRing.residue_eq_zero_iff _).1 (pow_eq_zero_iff hp.out.ne_zero |>.1 h2)

theorem map_res {x₀ : O} (hx : x₀ ∈ IsLocalRing.maximalIdeal O) :
    PowerSeries.map (IsLocalRing.residue O) (X - C x₀) = X := by
  have h : IsLocalRing.residue O x₀ = 0 := (IsLocalRing.residue_eq_zero_iff x₀).2 hx
  rw [map_sub, PowerSeries.map_X, PowerSeries.map_C, h, map_zero, sub_zero]

theorem map_mk {x₀ : O} (hx : x₀ ∈ IsLocalRing.maximalIdeal O) :
    PowerSeries.map (Ideal.Quotient.mk (IsLocalRing.maximalIdeal O)) (X - C x₀) = X := by
  have h : Ideal.Quotient.mk (IsLocalRing.maximalIdeal O) x₀ = 0 :=
    Ideal.Quotient.eq_zero_iff_mem.2 hx
  rw [map_sub, PowerSeries.map_X, PowerSeries.map_C, h, map_zero, sub_zero]

theorem decomp {x₀ : O} (hx : x₀ ∈ IsLocalRing.maximalIdeal O) (p : O⟦X⟧) :
    ∃ c : O, ∃ q : O⟦X⟧, p = (X - C x₀) * q + C c := by
  have hord : PowerSeries.map (IsLocalRing.residue O) (X - C x₀) ≠ 0 := by
    rw [map_res hx]; exact PowerSeries.X_ne_zero
  obtain ⟨q, r, hqr⟩ := PowerSeries.exists_isWeierstrassDivision (f := p) (g := X - C x₀) hord
  have hdeg := hqr.1
  first
  | rw [map_mk hx, PowerSeries.order_X] at hdeg
  simp at hdeg
  have hrc : (r : O⟦X⟧) = C (r.coeff 0) := by
    first
    | (have hr0 : r.degree ≤ 0 := by
          first
          | exact Nat.WithBot.lt_one_iff_le_zero.1 hdeg
       conv_lhs => rw [Polynomial.eq_C_of_degree_le_zero hr0]
       exact Polynomial.coe_C _)
  refine ⟨r.coeff 0, q, ?_⟩
  rw [← hrc]
  exact hqr.2

theorem uniq {x₀ : O} (hx : x₀ ∈ IsLocalRing.maximalIdeal O) {c : O}
    (hc : C c ∈ Ideal.span {X - C x₀}) : c = 0 := by
  obtain ⟨f, hf⟩ := Ideal.mem_span_singleton'.1 hc
  have hrec : ∀ n, coeff n f = x₀ * coeff (n + 1) f := by
    intro n
    have h := congrArg (fun g => coeff (n + 1) g) hf
    simp only [mul_sub, map_sub, PowerSeries.coeff_succ_mul_X, PowerSeries.coeff_mul_C,
      PowerSeries.coeff_C, Nat.succ_ne_zero, if_false] at h
    linear_combination h
  have hpow : ∀ n, coeff 0 f = x₀ ^ n * coeff n f := by
    intro n
    induction n with
    | zero => simp
    | succ n ih => rw [ih, hrec n]; ring
  have hall : ∀ n : ℕ, coeff 0 f ≡ 0 [SMOD ((IsLocalRing.maximalIdeal O) ^ n • ⊤ : Submodule O O)] := by
    intro n
    rw [SModEq.zero]
    have hmem := Submodule.smul_mem_smul
      (Ideal.mul_mem_right (coeff n f) _ (Ideal.pow_mem_pow hx n)) (Submodule.mem_top : (1 : O) ∈ ⊤)
    rw [hpow n]
    simpa using hmem
  have hcoef0 : coeff 0 f = 0 := by
    first
    | exact IsHausdorff.haus inferInstance _ hall
  have h0 := congrArg (fun g => coeff 0 g) hf
  simp only [mul_sub, map_sub, PowerSeries.coeff_zero_mul_X, PowerSeries.coeff_mul_C, hcoef0,
    PowerSeries.coeff_zero_C] at h0
  linear_combination -h0

def Fs (l : ℕ) (x₀ : O) (a : O⟦X⟧) : O⟦X⟧ :=
  ∑ i ∈ Finset.range l, (1 + a) ^ i * (1 + C x₀) ^ (l - 1 - i)

theorem Fs_mul (l : ℕ) {x₀ : O} (hroot : (1 + x₀) ^ l = 1) (a : O⟦X⟧) :
    (1 + a) ^ l - 1 = Fs l x₀ a * (a - C x₀) := by
  have hy : (1 + C x₀ : O⟦X⟧) ^ l = 1 := by
    simpa [map_pow, map_add (f := _), map_one] using congrArg (C : O →+* O⟦X⟧) hroot
  have h := geom_sum₂_mul (1 + a) (1 + C x₀) l
  rw [hy] at h
  unfold Fs
  rw [← h]
  congr 1
  ring

end Main

end Formalism.MainNotions.N.FrobeniusPowerSeries.LTB
