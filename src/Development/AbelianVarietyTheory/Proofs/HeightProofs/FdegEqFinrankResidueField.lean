module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.AlgebraMapOLInjective
public import Formalism.SharpRestriction.GenusPolyhedralBounds.RelativeIndexClassSets.ExistsPowSmulMemBall
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.TypeStar
import Mathlib.Topology.Sheaves.Init
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.IsUnitOfValEqZero

@[expose] public section

open ReciprocityTheory.ChartRestriction.G.T0 Formalism.MainNotions.Gaps.EtaleWeightGaps
open scoped TensorProduct

namespace GlobalTheory.ResDegPlace

open IsLocalRing

theorem finrank_eq_of_surjective {S₀ S k K k' K' : Type*} [CommRing S₀] [CommRing S] [Field k]
    [Field K] [Field k'] [Field K'] [Algebra k K] [Algebra k' K'] (j : S₀ →+* S)
    (p₀ : S₀ →+* k) (q₀ : S₀ →+* k') (p : S →+* K) (q : S →+* K')
    (hp₀ : Function.Surjective p₀) (hq₀ : Function.Surjective q₀)
    (hp : Function.Surjective p) (hq : Function.Surjective q)
    (hker : ∀ x, p x = 0 ↔ q x = 0)
    (h₁ : ∀ r, algebraMap k K (p₀ r) = p (j r)) (h₂ : ∀ r, algebraMap k' K' (q₀ r) = q (j r)) :
    Module.finrank k K = Module.finrank k' K' := by
  have hk : RingHom.ker p = RingHom.ker q := by
    ext x; simp only [RingHom.mem_ker]; exact hker x
  have hk₀ : RingHom.ker p₀ = RingHom.ker q₀ := by
    ext x
    simp only [RingHom.mem_ker]
    rw [← map_eq_zero_iff _ (algebraMap k K).injective, h₁, hker, ← h₂,
      map_eq_zero_iff _ (algebraMap k' K').injective]
  let e : K ≃+* K' := (RingHom.quotientKerEquivOfSurjective hp).symm.trans
    ((Ideal.quotEquivOfEq hk).trans (RingHom.quotientKerEquivOfSurjective hq))
  let e₀ : k ≃+* k' := (RingHom.quotientKerEquivOfSurjective hp₀).symm.trans
    ((Ideal.quotEquivOfEq hk₀).trans (RingHom.quotientKerEquivOfSurjective hq₀))
  have he : ∀ x, e (p x) = q x := fun x => by
    have : (RingHom.quotientKerEquivOfSurjective hp).symm (p x) = Ideal.Quotient.mk _ x := by
      rw [RingEquiv.symm_apply_eq]; rfl
    simp only [e, RingEquiv.trans_apply, this]; rfl
  have he₀ : ∀ x, e₀ (p₀ x) = q₀ x := fun x => by
    have : (RingHom.quotientKerEquivOfSurjective hp₀).symm (p₀ x) = Ideal.Quotient.mk _ x := by
      rw [RingEquiv.symm_apply_eq]; rfl
    simp only [e₀, RingEquiv.trans_apply, this]; rfl
  refine Algebra.finrank_eq_of_equiv_equiv e₀ e ?_
  ext y
  obtain ⟨r, rfl⟩ := hp₀ y
  change algebraMap k' K' (e₀ (p₀ r)) = e (algebraMap k K (p₀ r))
  rw [he₀, h₂, h₁, he]

theorem mem_maximalIdeal_vRing {L : Type*} [Field L] (w : AddValuation L (WithTop ℤ))
    (x : vRing w) : x ∈ maximalIdeal (vRing w) ↔ 0 < w (x : L) := by
  have hunit : IsUnit x ↔ w (x : L) = 0 :=
    (Valuation.valuationSubring.integers (w : Valuation L _)).isUnit_iff_valuation_eq_one
  rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff, hunit]
  exact ⟨fun h => lt_of_le_of_ne x.2 (Ne.symm h), fun h => h.ne'⟩

theorem exists_eq_of_nonneg {R F L : Type*} [CommRing R] [IsDomain R] [IsDiscreteValuationRing R]
    [Field F] [Algebra R F] [IsFractionRing R F] [Field L] [Algebra F L] [Algebra R L]
    [IsScalarTower R F L] {w : AddValuation L (WithTop ℤ)} (hw : w ∈ ValPl.PlacesOver R L)
    (x : F) (hx : 0 ≤ w (algebraMap F L x)) : ∃ a : R, algebraMap R F a = x := by
  by_cases hx0 : x = 0
  · exact ⟨0, by rw [map_zero, hx0]⟩
  rcases ValuationRing.isInteger_or_isInteger R x with ⟨a, ha⟩ | ⟨a, ha⟩
  · exact ⟨a, ha⟩
  · by_cases hau : IsUnit a
    · obtain ⟨u, rfl⟩ := hau
      refine ⟨↑u⁻¹, ?_⟩
      rw [map_units_inv, ha, inv_inv]
    · exfalso
      have hpos := ((hw.2 a).2).2 hau
      rw [IsScalarTower.algebraMap_apply R F L, ha, map_inv₀] at hpos
      have hxL : algebraMap F L x ≠ 0 := by
        rw [Ne, map_eq_zero_iff _ (algebraMap F L).injective]; exact hx0
      have hs : w (algebraMap F L x) + w (algebraMap F L x)⁻¹ = 0 := by
        rw [← AddValuation.map_mul, mul_inv_cancel₀ hxL, AddValuation.map_one]
      have := ValPl.wt_add_eq_zero hx hpos.le hs
      rw [this, zero_add] at hs
      rw [hs] at hpos
      exact lt_irrefl _ hpos

section
variable {O A : Type*} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [CommRing A]
  [Algebra O A] {ϖ : O}

theorem ord_pos_iff (h : IsUnif (A := A) ϖ) (ζ : Pts O A) [IsDVRAt ζ] (a : As O A) :
    0 < ord ϖ ζ (a : A) ↔ a ∈ ζ.asIdeal := by
  rw [ord_of_mem ζ h a.2, ← not_not (a := a ∈ ζ.asIdeal), ← vL_eq_zero_iff ζ a]
  change 0 < (vL ζ a).map (Nat.cast : ℕ → ℤ) ↔ _
  generalize vL ζ a = v
  cases v with
  | top => simp
  | coe n =>
    rw [ENat.map_natCast, WithTop.coe_pos]
    simp [Nat.pos_iff_ne_zero]

end

theorem pos_of_sub_pos {S : Type*} [CommRing S] (u : AddValuation S (WithTop ℤ)) {x y : S}
    (h : 0 < u (x - y)) (hy : 0 < u y) : 0 < u x := by
  have := u.map_lt_add h hy
  rwa [sub_add_cancel] at this

end GlobalTheory.ResDegPlace
