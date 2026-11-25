module

public import Formalism.PeriodIntegrals.OrbJetBase
public import Mathlib.RingTheory.MvPowerSeries.Rename
import Mathlib.Tactic.Linter.Style

@[expose] public section

noncomputable section

open Classical

namespace PI.OrbJet.OrbW

open Formalism.BasicNotions Formalism.MainNotions.G MvPowerSeries Finsupp PI.OrbJet

theorem orbMap_inj (D : D7) (p : ℕ) (z : Pl D) : Function.Injective (orbMap D p z) := by
  intro s t h
  exact ZMod.val_injective _ (posPl_inj D p z s.val t.val (ZMod.val_lt s) (ZMod.val_lt t) h)

theorem natCast_val_add_mul (n : ℕ) [NeZero n] (s : ZMod n) (e : ℕ) :
    ((s.val + e * (n - 1) : ℕ) : ZMod n) = s - e := by
  have hn : 1 ≤ n := Nat.one_le_iff_ne_zero.mpr (NeZero.ne n)
  rw [Nat.cast_add, Nat.cast_mul, Nat.cast_sub hn, ZMod.natCast_self, Nat.cast_one,
    ZMod.natCast_zmod_val]
  ring

theorem posPl_eq_orbMap (D : D7) (p : ℕ) (z : Pl D) (k : ℕ) :
    posPl D p z k = orbMap D p z (k : ZMod (nP D p)) := by
  show posPl D p z k = posPl D p z ((k : ZMod (nP D p)).val)
  rw [ZMod.val_natCast, posPl_mod]

theorem backPl_orbMap (D : D7) (p : ℕ) (z : Pl D) (s : ZMod (nP D p)) (e : ℕ) :
    backPl D p (orbMap D p z s) e = orbMap D p z (s - e) := by
  have h := posPl_eq_orbMap D p z (s.val + e * (nP D p - 1))
  rw [natCast_val_add_mul] at h
  show posPl D p (posPl D p z s.val) (e * (nP D p - 1)) = orbMap D p z (s - e)
  rw [posPl_add]
  exact h

end PI.OrbJet.OrbW
