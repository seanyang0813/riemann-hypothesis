module

public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.GoodOrigin
public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.NumberField
public import Mathlib.NumberTheory.Harmonic.EulerMascheroni
public import Mathlib.NumberTheory.NumberField.Discriminant.Basic

@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Flat

open AlgebraicGeometry CategoryTheory NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CompanionTheory.Ar.Top

def RootFlatOnHodge : Prop :=
  ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] [IsAbelianGalois ℚ E] (H : Host E) (D : Datum H)
    (Xo : ∀ l : Level H, Moduli D l) (l : Level H) (c : Coeff l) (Y : Model (Xo l) c (algebraMap (𝓞 c.F) c.F))
    (bad : Finset ℕ) (M : RootModel (CMType H) (D.p + D.q))
    (Sys : PB.AnSys (dimFl (CMType H) (D.p + D.q)) (Option (RootIx D))) (Fx : FixedData Y Sys)
    (o : RootOrigin Y bad M Fx),
    IsGlobal Xo l c Y → 1 ≤ D.p → 1 ≤ D.q → (∀ r : ℕ, r ∈ bad ↔ r.Prime ∧ (r : ℤ) ∣ 2 * discr E * l.M') →
      o.𝔐.OmVB → ∀ τ, ∃ R : RootFlat M τ, NearRecord (D.p + D.q) bad (hostRd E) (hostLval H) R.ht

namespace OnHodge

section Tower

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {D : Datum H}
  {Xo : ∀ l : Level H, Moduli D l} {l : Level H} {c : Coeff l} {Y : Model (Xo l) c (algebraMap (𝓞 c.F) c.F)}

theorem hostRd_eq (E : Type) [Field E] [NumberField E] : hostRd E = rootDiscr E := by
  simp [hostRd, rootDiscr_def]

theorem S_two {T : RootTower (CMType H) (D.p + D.q)} (o : TowerOrigin Y T) : o.S 2 = T.bad := by
  ext r
  rw [o.S_iff, RootTower.InS]
  refine ⟨fun h => h.2.elim (fun h2 => ?_) id, fun h => ⟨((o.bad_iff r).1 h).1, Or.inr h⟩⟩
  obtain rfl : r = 2 := le_antisymm h2 h.1.two_le
  exact T.two_mem

theorem tower (h : RootFlatOnHodge) [IsAbelianGalois ℚ E] (hY : IsGlobal Xo l c Y)
    {T : RootTower (CMType H) (D.p + D.q)} (hT : IsTowerOf Y T) (a : T.Comp) (τ : CMType H) :
    ∃ R : RootFlat (T.M 2 a) τ, NearRecord (D.p + D.q) T.bad (hostRd E) (hostLval H) R.ht := by
  obtain ⟨o, ho⟩ := hT
  have h1 := T.j_pos
  have h2 := T.j_lt
  have h3 := o.j_eq
  rw [← S_two o]
  exact h E H D Xo l c Y (o.S 2) (T.M 2 a) (o.Sys a) (o.Fx a) (o.Or 2 a) hY (by omega) (by omega)
    (fun r => by rw [S_two o]; exact o.bad_iff r) (ho 2 a) τ

end Tower

theorem const_le : Real.eulerMascheroniConstant + Real.log (2 * Real.pi) + 2 * Real.log 2 ≤ 2 * Real.log 7 := by
  have hγ := Real.eulerMascheroniConstant_lt_two_thirds
  have hπ := Real.pi_lt_d4
  have hπ0 := Real.pi_pos
  have he : Real.exp (2 / 3) ≤ 1.9496 := by
    have h3 : Real.exp (2 / 3) ^ 3 = Real.exp 1 ^ 2 := by
      rw [← Real.exp_nat_mul, ← Real.exp_nat_mul]; norm_num
    have h1 := Real.exp_one_lt_d9
    have h0 := Real.exp_pos 1
    refine le_of_pow_le_pow_left₀ three_ne_zero (by norm_num) ?_
    rw [h3]; nlinarith
  have h : Real.log (Real.exp (2 / 3) * (2 * Real.pi) * 2 ^ 2) ≤ Real.log (7 ^ 2) :=
    Real.log_le_log (by positivity) (by nlinarith [Real.exp_pos (2 / 3)])
  rw [Real.log_mul (by positivity) (by positivity), Real.log_mul (by positivity) (by positivity), Real.log_exp,
    Real.log_pow, Real.log_pow] at h
  push_cast at h
  linarith

end OnHodge

end GlobalTheory.CompanionTheory.Ar.Flat
