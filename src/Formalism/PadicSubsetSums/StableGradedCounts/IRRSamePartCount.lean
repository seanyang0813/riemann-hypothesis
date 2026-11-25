module

public import Mathlib.Data.Nat.PadicValNat
import Mathlib.Tactic.TypeStar
public import Mathlib.Data.Int.GCD
public import Mathlib.Data.Nat.Prime.Basic

@[expose] public section

namespace Formalism.IrreducibleCountingLemmas.GaloisIrreducibility

theorem lpow_order_iff {G : Type*} [Monoid G] {l n : ℕ} (hl : l.Prime) (hn : n ≠ 0) (z : G)
    (hz : z ^ n = 1) : (∃ a : ℕ, z ^ (l ^ a) = 1) ↔ z ^ (l ^ padicValNat l n) = 1 := by
  rw [Nat.padicValNat_def]
  constructor
  · rintro ⟨a, ha⟩
    have hg : z ^ (l ^ a).gcd n = 1 := pow_gcd_eq_one.2 ⟨ha, hz⟩
    obtain ⟨k, -, hk'⟩ := (Nat.dvd_prime_pow hl).1 (Nat.gcd_dvd_left (l ^ a) n)
    have hkn : l ^ k ∣ n := by
      rw [← hk']
      exact Nat.gcd_dvd_right _ _
    have hkv := (Nat.pow_dvd_iff_le_multiplicity hl.ne_one hn).mp hkn
    obtain ⟨c, hc⟩ := pow_dvd_pow l hkv
    rw [hc, pow_mul, ← hk', hg, one_pow]
  · intro h
    exact ⟨_, h⟩

end Formalism.IrreducibleCountingLemmas.GaloisIrreducibility
