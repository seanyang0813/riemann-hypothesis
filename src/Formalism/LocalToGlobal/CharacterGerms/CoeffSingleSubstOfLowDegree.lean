module

public import Formalism.LocalToGlobal.CharacterGerms.IntSubst
public import Formalism.LocalToGlobal.CharacterGerms.RowTieDefs
public import Mathlib.RingTheory.PowerSeries.Substitution
public import Formalism.FormalGroupWitt.FormalGroupWittProofs.SolveV
public import Formalism.LocalToGlobal.CharacterGerms.AbstractGermZeroCondition
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd

@[expose] public section

noncomputable section

open scoped BigOperators
open Classical

namespace Formalism.L2.FormalSeriesBounds
namespace FormalGermZero

open Formalism.IncomingBounds ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ

variable {C : Type} [Field C]

private theorem deg_single_lemma_0 {τ : Type} (c : τ) (n : ℕ) : Finsupp.degree (Finsupp.single c n) = n := by
  first
  | exact Finsupp.degree_single c n

private theorem deg_zero_lemma_0 {τ : Type} (d : τ →₀ ℕ) (h : Finsupp.degree d = 0) : d = 0 := by
  first
  | exact (Finsupp.degree_eq_zero_iff d).mp h

private theorem cs_mul_lemma {τ : Type} (A B : MvPowerSeries τ C) (hA : MvPowerSeries.constantCoeff A = 0)
    (hB : MvPowerSeries.constantCoeff B = 0) (c : τ) :
    MvPowerSeries.coeff (Finsupp.single c 1) (A * B) = 0 := by
  classical
  rw [MvPowerSeries.coeff_mul]
  refine Finset.sum_eq_zero (fun p hp => ?_)
  rw [Finset.HasAntidiagonal.mem_antidiagonal] at hp
  have hdeg := congrArg Finsupp.degree hp
  rw [map_add (f := _), deg_single_lemma_0] at hdeg
  rcases Nat.eq_zero_or_pos p.1.degree with h0 | h0
  · rw [deg_zero_lemma_0 p.1 h0, MvPowerSeries.coeff_zero_eq_constantCoeff_apply, hA, zero_mul]
  · have h1 : p.2.degree = 0 := by omega
    rw [deg_zero_lemma_0 p.2 h1, MvPowerSeries.coeff_zero_eq_constantCoeff_apply, hB, mul_zero]

private theorem cs_prod_lemma_2 {σ τ : Type} (a : σ → MvPowerSeries τ C)
    (ha0 : ∀ s, MvPowerSeries.constantCoeff (a s) = 0) (e : σ →₀ ℕ) (he : e ≠ 0) :
    MvPowerSeries.constantCoeff (e.prod fun s n => a s ^ n) = 0 := by
  obtain ⟨s, hs⟩ : ∃ s, e s ≠ 0 := by
    by_contra h
    push_neg at h
    exact he (Finsupp.ext h)
  rw [map_finsuppProd]
  simp only [map_pow, ha0, Finsupp.prod]
  exact Finset.prod_eq_zero (Finsupp.mem_support_iff.mpr hs) (zero_pow hs)

private theorem cs_prod_lemma_3 {σ τ : Type} (a : σ → MvPowerSeries τ C)
    (ha0 : ∀ s, MvPowerSeries.constantCoeff (a s) = 0) (e : σ →₀ ℕ) (he : 2 ≤ e.degree) (c : τ) :
    MvPowerSeries.coeff (Finsupp.single c 1) (e.prod fun s n => a s ^ n) = 0 := by
  classical
  have hne : e ≠ 0 := by
    rintro rfl
    simp at he
  obtain ⟨s, hs⟩ : ∃ s, e s ≠ 0 := by
    by_contra h
    push_neg at h
    exact hne (Finsupp.ext h)
  have hle : Finsupp.single s 1 ≤ e := by
    rw [Finsupp.single_le_iff]
    omega
  have hsplit : e = Finsupp.single s 1 + (e - Finsupp.single s 1) := (add_tsub_cancel_of_le hle).symm
  have hdeg : 1 ≤ (e - Finsupp.single s 1).degree := by
    have h2 := congrArg Finsupp.degree hsplit
    rw [map_add (f := _), deg_single_lemma_0] at h2
    omega
  have hne' : e - Finsupp.single s 1 ≠ 0 := by
    intro h
    rw [h] at hdeg
    simp at hdeg
  rw [hsplit, Finsupp.prod_add_index' (fun _ => pow_zero _) (fun _ _ _ => pow_add _ _ _),
    Finsupp.prod_single_index (h := fun s n => a s ^ n) (pow_zero _), pow_one]
  exact cs_mul_lemma _ _ (ha0 s) (cs_prod_lemma_2 a ha0 _ hne') c

theorem coeff_single_subst_of_low_degree {σ τ : Type} [Finite σ] (a : σ → MvPowerSeries τ C)
    (ha0 : ∀ s, MvPowerSeries.constantCoeff (a s) = 0) (r : MvPowerSeries σ C)
    (hr : ∀ e : σ →₀ ℕ, e.degree < 2 → MvPowerSeries.coeff e r = 0) (c : τ) :
    MvPowerSeries.coeff (Finsupp.single c 1) (MvPowerSeries.subst a r) = 0 := by
  classical
  have ha : MvPowerSeries.HasSubst a := MvPowerSeries.hasSubst_of_constantCoeff_zero ha0
  rw [MvPowerSeries.coeff_subst ha]
  apply finsum_eq_zero_of_forall_eq_zero
  intro e
  by_cases he : e.degree < 2
  · rw [hr e he, zero_smul]
  · rw [cs_prod_lemma_3 a ha0 e (by omega) c, smul_zero]

theorem coeff_single_subst_lin {σ τ : Type} [Finite σ] (a : σ → MvPowerSeries τ C)
    (ha0 : ∀ s, MvPowerSeries.constantCoeff (a s) = 0) (f : MvPowerSeries σ C) (i : σ)
    (hf : ∀ μ : σ →₀ ℕ, μ.degree ≤ 1 → MvPowerSeries.coeff μ f = MvPowerSeries.coeff μ (MvPowerSeries.X i))
    (c : τ) :
    MvPowerSeries.coeff (Finsupp.single c 1) (MvPowerSeries.subst a f) =
      MvPowerSeries.coeff (Finsupp.single c 1) (a i) := by
  have ha : MvPowerSeries.HasSubst a := MvPowerSeries.hasSubst_of_constantCoeff_zero ha0
  have hr : ∀ e : σ →₀ ℕ, e.degree < 2 → MvPowerSeries.coeff e (f - MvPowerSeries.X i) = 0 := by
    intro e he
    rw [map_sub, hf e (by omega), sub_self]
  have hsplit : f = MvPowerSeries.X i + (f - MvPowerSeries.X i) := by ring
  rw [hsplit, MvPowerSeries.subst_add ha, MvPowerSeries.subst_X ha, map_add (f := _),
    coeff_single_subst_of_low_degree a ha0 _ hr c, add_zero]

theorem subst_zero_of_const {σ τ : Type} [Finite σ] (f : MvPowerSeries σ C)
    (hf : MvPowerSeries.constantCoeff f = 0) :
    MvPowerSeries.subst (0 : σ → MvPowerSeries τ C) f = 0 := by
  ext μ
  rw [MvPowerSeries.coeff_subst (MvPowerSeries.hasSubst_of_constantCoeff_zero (fun _ => by simp)), map_zero]
  rw [finsum_eq_single _ 0]
  · simp [hf]
  · intro e he
    obtain ⟨s, hs⟩ : ∃ s, e s ≠ 0 := by
      by_contra h
      push_neg at h
      exact he (Finsupp.ext h)
    simp only [Pi.zero_apply, Finsupp.prod]
    rw [Finset.prod_eq_zero (Finsupp.mem_support_iff.mpr hs) (zero_pow hs)]
    simp

theorem intS_X {V : VF C} {τ : Type} (c : τ) : IntS V (MvPowerSeries.X c : MvPowerSeries τ C) := by
  rw [AbstractGermZero.intS_iff_alt]
  intro μ
  rw [MvPowerSeries.coeff_X]
  split_ifs
  · exact AltInv.intC_one (v := V.v)
  · exact AltInv.intC_zero (v := V.v)

private theorem prod_X_lemma_8 {σ τ A : Type} [CommRing A] (e : σ → τ) (d : σ →₀ ℕ) :
    (d.prod fun s n => (MvPowerSeries.X (e s) : MvPowerSeries τ A) ^ n) =
      MvPowerSeries.monomial (d.mapDomain e) 1 := by
  classical
  refine Finsupp.induction d ?_ ?_
  · simp only [Finsupp.prod_zero_index, Finsupp.mapDomain_zero]
    rfl
  · intro a b f _ _ ih
    rw [Finsupp.prod_add_index' (fun _ => pow_zero _) (fun _ _ _ => pow_add _ _ _),
      Finsupp.prod_single_index (h := fun s n => (MvPowerSeries.X (e s) : MvPowerSeries τ A) ^ n) (pow_zero _), ih, Finsupp.mapDomain_add, Finsupp.mapDomain_single,
      MvPowerSeries.X_pow_eq, MvPowerSeries.monomial_mul_monomial, mul_one]

theorem coeff_single_substX_tyS {τ : Type} {l : ℕ} (hl : 2 ≤ l) (a : ℕ → C) (c c'' : τ) :
    MvPowerSeries.coeff (Finsupp.single c 1)
        (PowerSeries.subst (MvPowerSeries.X c'' : MvPowerSeries τ C) (tyS l a)) =
      if c'' = c then a 0 else 0 := by
  classical
  have ha : MvPowerSeries.HasSubst (fun _ : Unit => (MvPowerSeries.X c'' : MvPowerSeries τ C)) :=
    MvPowerSeries.hasSubst_of_constantCoeff_zero (fun _ => by simp)
  have hcoef : MvPowerSeries.coeff (Finsupp.single () 1) (tyS l a) = a 0 := by
    have hl1 : l ≠ 1 := by omega
    unfold tyS
    first
    | (rw [show MvPowerSeries.coeff (Finsupp.single () 1) = PowerSeries.coeff (R := C) 1 from rfl,
        PowerSeries.coeff_mk]
       simp [hl1])
  show MvPowerSeries.coeff (Finsupp.single c 1)
      (MvPowerSeries.subst (fun _ : Unit => (MvPowerSeries.X c'' : MvPowerSeries τ C)) (tyS l a)) = _
  rw [MvPowerSeries.coeff_subst ha]
  simp only [prod_X_lemma_8 (fun _ : Unit => c''), MvPowerSeries.coeff_monomial, smul_eq_mul, mul_ite, mul_one,
    mul_zero]
  rw [finsum_eq_single _ (Finsupp.single () 1)]
  · rw [Finsupp.mapDomain_single]
    by_cases h : c'' = c
    · subst h
      rw [if_pos rfl, if_pos rfl, hcoef]
    · rw [if_neg (fun h' => h ((Finsupp.single_left_injective one_ne_zero h').symm)), if_neg h]
  · intro d hd
    rw [if_neg]
    intro h'
    apply hd
    rw [Finsupp.unique_single d, Finsupp.mapDomain_single] at h'
    rw [Finsupp.unique_single d]
    rcases (Finsupp.single_eq_single_iff _ _ _ _).mp h' with ⟨_, h2⟩ | ⟨h1, _⟩
    · rw [← h2]
    · exact absurd h1 one_ne_zero

theorem isT_sum {V : VF C} {d : ℕ} {I₁ J₁ : Type} [Fintype I₁] [Fintype J₁] {X₁ : Cart V d I₁ J₁} (S : Sys X₁)
    {t : I₁ → MvPowerSeries I₁ C} (ht : S.IsT t) (x : I₁) :
    ∑ c, PowerSeries.subst (t c) (tyS V.l (fun s => S.al c s x)) = MvPowerSeries.X x := by
  have hl : 2 ≤ V.l := V.l_prime.two_le
  ext μ
  have key : ∀ c, MvPowerSeries.coeff μ (PowerSeries.subst (t c) (tyS V.l (fun s => S.al c s x))) =
      ∑ s ∈ Finset.range (μ.degree + 1), S.al c s x * MvPowerSeries.coeff μ (t c ^ (V.l ^ s)) := by
    intro c
    have hS : PowerSeries.HasSubst (t c) := PowerSeries.HasSubst.of_constantCoeff_zero (ht.1 c)
    have hlow : ∀ n, μ.degree < n → MvPowerSeries.coeff μ (t c ^ n) = 0 := fun n hn =>
      Formalism.FG.SolveVAux.low_pow ((Formalism.FG.SolveVAux.low_one_iff _).2 (ht.1 c)) n μ hn
    rw [PowerSeries.coeff_subst hS, finsum_eq_sum_of_support_subset (s := Finset.range (μ.degree + 1))]
    · have e1 : ∀ n ∈ Finset.range (μ.degree + 1),
          PowerSeries.coeff n (tyS V.l fun s => S.al c s x) • MvPowerSeries.coeff μ (t c ^ n) =
            ∑ s ∈ Finset.range (μ.degree + 1),
              if V.l ^ s = n then S.al c s x * MvPowerSeries.coeff μ (t c ^ n) else 0 := by
        intro n hn
        rw [Finset.mem_range] at hn
        unfold tyS
        rw [PowerSeries.coeff_mk, smul_eq_mul, Finset.sum_mul]
        simp only [ite_mul, zero_mul]
        apply Finset.sum_subset
        · intro s hs
          rw [Finset.mem_range] at hs ⊢
          omega
        · intro s _ hs
          rw [Finset.mem_range] at hs
          have : s < V.l ^ s := Nat.lt_pow_self (by omega)
          rw [if_neg (by omega)]
      rw [Finset.sum_congr rfl e1, Finset.sum_comm]
      refine Finset.sum_congr rfl fun s _ => ?_
      simp only [Finset.sum_ite_eq]
      split_ifs with h
      · rfl
      · rw [Finset.mem_range] at h
        rw [hlow _ (by omega), mul_zero]
    · intro n hn
      rw [Function.mem_support] at hn
      rw [Finset.coe_range, Set.mem_Iio]
      by_contra h
      exact hn (by rw [hlow n (by omega), smul_zero])

  rw [map_sum]
  simp only [key]
  rw [Finset.sum_comm, MvPowerSeries.coeff_X]
  exact ht.2 x μ

section Law

variable {dd : ℕ}

variable [CharZero C] {V : VF C} {O : Type} [CommRing O] [StarRing O]

end Law

section Sys1

variable [CharZero C] {V : VF C} {O : Type} [CommRing O] [StarRing O] {dd : ℕ} {d : ℕ} {I : Fin 2 → Type}
  [∀ g, Fintype (I g)]

end Sys1

end FormalGermZero

end Formalism.L2.FormalSeriesBounds
