module

public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.InClassOfExp
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.NatCastInvMemRp
import Mathlib.Tactic.Linter.Style

@[expose] public section

noncomputable section

namespace Formalism.MainNotions.FormalGroupSystem.Pf

open Formalism.MainNotions.G Formalism.BasicNotions Finset

attribute [local instance] Formalism.MainNotions.G.GAtP.ringO Formalism.MainNotions.G.GAtP.domO Formalism.MainNotions.G.GAtP.dvrO Formalism.MainNotions.G.GAtP.fieldK
  Formalism.MainNotions.G.GAtP.algOK

def RestSIntA {p : ℕ} [Fact p.Prime] (X : Sys p) : Prop :=
  ∀ (j : ℕ) (K1 : Type) [Field K1] [Algebra (K0 p) K1] (R1 : Subring K1)
    (U : MvPowerSeries (X.EA j ⊕ X.EA j) K1), IntR R1 (inParamK p K1 U) →
  ∀ (K' : Type) [Field K'] [Algebra (K0 p) K'] [Algebra K1 K'] [IsScalarTower (K0 p) K1 K'] (R' : Subring K')
    (vp : K'), vp ^ (p ^ 2 - 1) = (p : K') → Rp p K' vp ≤ R' → (∀ x ∈ R1, algebraMap K1 K' x ∈ R') →
    IntR R' (atPi vp (MvPowerSeries.map (algebraMap K1 K') (X.ThZA K1 j U)))

section Formal

variable {p : ℕ} [hp : Fact p.Prime]

theorem sSer_const {n' r0 r1 : ℕ} (K' : Type) [Field K'] (e : Fin n') (a : Fin r0) (b : Fin r1) :
    MvPowerSeries.constantCoeff (sSer p K' e a b) = 0 := by
  rw [← MvPowerSeries.coeff_zero_eq_constantCoeff_apply]
  show (∑ l ∈ range ((0 : Zidx n' r0 r1 →₀ ℕ).degree + 1),
    if (0 : Zidx n' r0 r1 →₀ ℕ) = Finsupp.single (posSub e (2 * l), a, b) (p ^ (2 * l)) then ((-1 : K') ^ l) else 0) = 0
  refine Finset.sum_eq_zero fun l _ => if_neg fun h => ?_
  exact pow_ne_zero (2 * l) hp.out.ne_zero (Finsupp.single_eq_zero.1 h.symm)

theorem hhS_const {n' r0 r1 : ℕ} (K' : Type) [Field K'] (u : Fin n' → K') :
    MvPowerSeries.constantCoeff (hhS (r0 := r0) (r1 := r1) p K' u) = 0 := by
  unfold hhS

  simp only [map_sum, map_mul, sSer_const, mul_zero, Finset.sum_const_zero]

theorem coordZ_const {n' r0 r1 : ℕ} (B : OmBasis p n') (K' : Type) [Field K'] [Algebra (K0 p) K'] (vp : K')
    (x : Eidx n' r0 r1 ⊕ Eidx n' r0 r1) : MvPowerSeries.constantCoeff (coordZ B K' vp x) = 0 := by
  rcases x with ⟨r, a, b⟩ | ⟨r, a, b⟩ <;>

  simp only [coordZ, map_sum, map_mul, MvPowerSeries.constantCoeff_X, mul_zero, Finset.sum_const_zero]

theorem map_map_tower {ι : Type} (K1 K' : Type) [Field K1] [Algebra (K0 p) K1] [Field K'] [Algebra (K0 p) K']
    [Algebra K1 K'] [IsScalarTower (K0 p) K1 K'] (f : MvPowerSeries ι (K0 p)) :
    MvPowerSeries.map (algebraMap K1 K') (MvPowerSeries.map (algebraMap (K0 p) K1) f) =
      MvPowerSeries.map (algebraMap (K0 p) K') f := by
  rw [IsScalarTower.algebraMap_eq (K0 p) K1 K', MvPowerSeries.map_comp]
  rfl

theorem atPi_mul {σ R : Type} [CommRing R] (vp : R) (f g : MvPowerSeries σ R) :
    atPi vp (f * g) = atPi vp f * atPi vp g := by
  classical
  ext n
  show vp ^ n.degree * MvPowerSeries.coeff n (f * g) = MvPowerSeries.coeff n (atPi vp f * atPi vp g)
  rw [MvPowerSeries.coeff_mul, MvPowerSeries.coeff_mul, Finset.mul_sum]
  refine Finset.sum_congr rfl fun x hx => ?_
  have hx' : x.1 + x.2 = n := Finset.HasAntidiagonal.mem_antidiagonal.1 hx
  show _ = (vp ^ x.1.degree * MvPowerSeries.coeff x.1 f) * (vp ^ x.2.degree * MvPowerSeries.coeff x.2 g)
  rw [← hx', map_add (f := _), pow_add]
  ring

end Formal

end Formalism.MainNotions.FormalGroupSystem.Pf
