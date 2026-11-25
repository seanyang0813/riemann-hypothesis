module

import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.CardFinRange
public import Formalism.SharpRestriction.GrowthBounds.SegmentDegree.MemColRangeOfLeEntry

@[expose] public section

noncomputable section

open MvPolynomial

namespace Formalism.MainNotions.SelectionLemmas.Pf

open Formalism.MainNotions.G Formalism.MainNotions.SelectionLemmas Formalism.MainNotions.G.Joints.StandardMonomialSpace

section Dict

variable {n' r : ℕ} [NeZero n'] (F : Frames n' r) {L₁ N₁ : ℕ}

theorem kfr_le (hV : F.Valid L₁ N₁) (j : ℤ) {a b : ℕ} (hab : a ≤ b) (hb : b < r) : F.fr j a ≤ F.fr j b :=
  TE.fr_le hV j a b hab hb

theorem k_fr_mem_letters (hV : F.Valid L₁ N₁) (j : ℤ) {t : ℕ} (ht : t < r) : F.fr j t ∈ F.letters j :=
  letI : NeZero r := ⟨Nat.ne_of_gt (Nat.zero_lt_of_lt ht)⟩
  TE.frj_mem hV j t ht

theorem k_r_le_segN (hV : F.Valid L₁ N₁) (hr : 0 < r) (j : ℤ) : r ≤ segN F j :=
  letI : NeZero r := ⟨Nat.ne_of_gt hr⟩
  TE.r_le_segN hV j

theorem segE_eq_fr_iff (hV : F.Valid L₁ N₁) (j : ℤ) (i : Fin (segN F j)) {t : ℕ} (ht : t < r) :
    segE F j i = F.fr j t ↔ i.val = segN F j - r + t :=
  letI : NeZero r := ⟨Nat.ne_of_gt (Nat.zero_lt_of_lt ht)⟩
  TE.dict_tau hV i ⟨t, ht⟩

theorem segE_lt_fr_iff (hV : F.Valid L₁ N₁) (hr : 0 < r) (j : ℤ) (i : Fin (segN F j)) :
    segE F j i < F.fr j 0 ↔ i.val < segN F j - r :=
  letI : NeZero r := ⟨Nat.ne_of_gt hr⟩
  TE.dict_early hV i

end Dict

section Supp

variable {R : Type} [CommRing R] {N r : ℕ}

theorem Kcol_supported (ν : Fin (N + 1) → Fin r → ℤ) (c : ℤ) :
    ∀ j ≤ N, ∀ J, Kcol R ν c j J ∈ supported R {v : Fin N × Fin r | v.1.val < j} := by
  intro j
  induction j with
  | zero =>
    intro _ J
    rw [Kcol.eq_1]
    unfold extOne
    split_ifs
    · exact one_mem _
    · exact zero_mem _
  | succ j ih =>
    intro hj J
    have hS : ∀ J', Kcol R ν c j J' ∈ supported R {v : Fin N × Fin r | v.1.val < j + 1} := by
      intro J'
      refine supported_mono (fun v hv => ?_) (ih (by omega) J')
      simp only [Set.mem_setOf_eq] at hv ⊢
      omega
    have hx : ∀ m, letVec R ⟨j, by omega⟩ m ∈ supported R {v : Fin N × Fin r | v.1.val < j + 1} := by
      intro m
      show X ((⟨j, by omega⟩ : Fin N), m) ∈ Algebra.adjoin R (X '' _)
      exact Algebra.subset_adjoin ⟨((⟨j, by omega⟩ : Fin N), m), by simp, rfl⟩
    rw [Kcol_succ ν c j (by omega)]
    unfold colStep wedgeR contrR
    split_ifs <;> first
      | exact hS J
      | exact sum_mem (fun m _ => mul_mem (mul_mem (pow_mem (neg_mem (one_mem _)) _) (hx m)) (hS _))

theorem Psi_cut_supported (n0 : ℕ) (hn : n0 ≤ N) (ν : Fin (N + 1) → Fin r → ℤ) (I : ℤ → Finset (Fin r)) :
    Psi R (cutPath n0 ν) I ∈ supported R {v : Fin N × Fin r | v.1.val < n0} := by
  unfold Psi
  refine prod_mem (fun c _ => ?_)
  rw [Kcol_cut n0 ν c N le_rfl, min_eq_right hn]
  exact Kcol_supported ν c n0 hn (I c)

end Supp

end Formalism.MainNotions.SelectionLemmas.Pf
