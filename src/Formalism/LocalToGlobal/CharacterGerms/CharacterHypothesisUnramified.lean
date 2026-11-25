module

public import Formalism.LocalToGlobal.CharacterGerms.HostTraceIdentity
public import Formalism.LocalToGlobal.CharacterGerms.RowTiePEmbIntSt
import Formalism.LocalToGlobal.CharacterGerms.CharacteristicFromRanks
import Formalism.LocalToGlobal.CharacterGerms.PlugUP
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PlaceDivisors.StAvDefs
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PlaceDivisors.StChartF

@[expose] public section

noncomputable section

open scoped BigOperators
open Classical

namespace Formalism.L2.FormalSeriesBounds

namespace UpFBr

open Formalism.IncomingBounds CharacteristicFromRanks ValuationFitting
open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ ReciprocityTheory.ChartRestriction.G.Pdiv.AvDefs
open ReciprocityTheory.ChartRestriction.G.Pdiv.ChartF IsLocalRing

attribute [local instance] Over.cartesianMonoidalCategory

section RR

variable {C : Type} [Field C] [CharZero C] {V : VF C} {OE : Type} [CommRing OE] [StarRing OE] {dd : ℕ} {d : ℕ} [NeZero d]
  {I : Fin 2 → Type} [∀ g, Fintype (I g)]

theorem isUnit_RR {x : V.RR} (hx : V.v (x : C) = 0) : IsUnit x := by
  have hx0 : (x : C) ≠ 0 := by
    intro h
    rw [h, V.v.map_zero] at hx
    exact WithTop.top_ne_zero hx
  have hi : V.Ge 0 ((x : C)⁻¹) := by
    have h1 : V.v ((x : C) * (x : C)⁻¹) = 0 := by rw [mul_inv_cancel₀ hx0, V.v.map_one]
    rw [V.v.map_mul, hx, zero_add] at h1
    unfold VF.Ge
    rw [h1]
    rfl
  exact IsUnit.of_mul_eq_one (⟨(x : C)⁻¹, hi⟩ : V.RR) (Subtype.ext (mul_inv_cancel₀ hx0))

theorem v_of_isUnit_RR {x : V.RR} (hx : IsUnit x) : V.v (x : C) = 0 := by
  obtain ⟨y, hy⟩ := hx.exists_right_inv
  have h1 : V.v ((x : C) * (y : C)) = 0 := by
    have : (x : C) * (y : C) = 1 := congrArg Subtype.val hy
    rw [this, V.v.map_one]
  rw [V.v.map_mul] at h1
  have hx0 : (0 : WithTop ℝ) ≤ V.v (x : C) := x.2
  have hy0 : (0 : WithTop ℝ) ≤ V.v (y : C) := y.2
  exact le_antisymm (by calc V.v (x : C) ≤ V.v (x : C) + V.v (y : C) := le_add_of_nonneg_right hy0
                          _ = 0 := h1) hx0

theorem not_isUnit_l {T : Type} [CommRing T] (i0 : T →+* C) (hint : ∀ t, V.Ge 0 (i0 t)) :
    ¬ IsUnit ((V.l : ℕ) : T) := by
  intro h
  have h1 := v_of_isUnit_RR (h.map (i0.codRestrict V.RR hint))
  have h2 : (((i0.codRestrict V.RR hint) ((V.l : ℕ) : T) : V.RR) : C) = (V.l : C) := map_natCast i0 _
  rw [h2, V.v_l] at h1
  exact one_ne_zero h1

end RR

section Chart

open Formalism.L2.Pj NumberField

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {Dw : Datum H} {l : Level H}
variable (Xo : Moduli Dw l) (c : Coeff l) [StarRing (𝓞 E)]

theorem vV_pos (T : CDVR) {t : T.V} (ht : ¬ IsUnit t) (h0 : t ≠ 0) : 0 < vV T.V (algebraMap T.V T.Fr t) := by
  unfold vV
  have hne : valV T.V (algebraMap T.V T.Fr t) ≠ 0 :=
    valV_ne_zero ((map_ne_zero_iff _ (IsFractionRing.injective T.V T.Fr)).2 h0)
  have h1 : valV T.V (algebraMap T.V T.Fr t) < 1 := by
    unfold valV
    exact (IsDedekindDomain.HeightOneSpectrum.valuation_lt_one_iff_mem _ t).2 ((mem_maximalIdeal t).2 ht)
  have h2 : WithZero.log (valV T.V (algebraMap T.V T.Fr t)) < 0 :=
    (WithZero.log_lt_iff_lt_exp hne).2 (by simpa using h1)
  omega


variable {Xo c} in
theorem chart_ties {T : CDVR} {io : c.F →+* T.Fr} {y : IntFr Xo c T io} {C3 : IntChart T io y}
    {C : Type} [Field C] [CharZero C] {V : VF C} {ie : T.Fr →+* C} (hie : EmbOK T V ie)
    {k : ℕ} {Y : FBChart C V (𝓞 E) (chD C3.ch)} (hY : IsBC C3 ie k Y) :
    (∀ t, V.Ge 0 ((ie.comp (algebraMap T.V T.Fr)) t)) ∧
    (∀ t, V.v ((ie.comp (algebraMap T.V T.Fr)) t) = 0 → IsUnit t) ∧
    (∀ i, Y.B.G.F i = MvPowerSeries.map (ie.comp (algebraMap T.V T.Fr)) (C3.FT i)) ∧
    (∀ a i, Y.B.A.act a i = MvPowerSeries.map (ie.comp (algebraMap T.V T.Fr)) (C3.actT a i)) := by
  have hl0 : ((V.l : ℕ) : T.Fr) ≠ 0 := by exact_mod_cast V.l_prime.ne_zero
  have hvl : (vV T.V ((V.l : ℕ) : T.Fr) : ℝ) ≠ 0 := by
    intro h0
    have := hie _ hl0
    rw [map_natCast, V.v_l, h0, div_zero] at this
    simp at this
  have hvl' : (0 : ℝ) < (vV T.V ((V.l : ℕ) : T.Fr) : ℝ) := by
    have := vV_algebraMap_nonneg T (V.l : T.V)
    rw [map_natCast] at this
    exact lt_of_le_of_ne (by exact_mod_cast this) (Ne.symm hvl)
  refine ⟨fun t => embIntSt_holds T C V ie hie t, fun t ht => ?_, fun i => ?_, fun a i => ?_⟩
  · by_contra hu
    have ht0 : t ≠ 0 := by
      rintro rfl
      rw [map_zero, V.v.map_zero] at ht
      exact WithTop.top_ne_zero ht
    have hne : algebraMap T.V T.Fr t ≠ 0 := (map_ne_zero_iff _ (IsFractionRing.injective T.V T.Fr)).2 ht0
    have h1 := hie _ hne
    rw [RingHom.comp_apply] at ht
    rw [ht] at h1
    have h2 : (0 : ℝ) = (vV T.V (algebraMap T.V T.Fr t) : ℝ) / (vV T.V ((V.l : ℕ) : T.Fr) : ℝ) :=
      WithTop.coe_injective (by simpa using h1)
    have h3 : (0 : ℝ) < (vV T.V (algebraMap T.V T.Fr t) : ℝ) := by exact_mod_cast vV_pos T hu ht0
    have := div_pos h3 hvl'
    linarith
  · rw [hY.F i]
    have e : (a3B C3).G.F i = MvPowerSeries.map (algebraMap T.V T.Fr) (C3.FT i) := C3.gen.1.1 i
    rw [e]
    ext mu
    simp only [MvPowerSeries.coeff_map, RingHom.comp_apply]
  · rw [hY.act a i]
    have e : (a3B C3).A.act a i = MvPowerSeries.map (algebraMap T.V T.Fr) (C3.actT a i) := C3.gen.1.2.1 a i
    rw [e]
    ext mu
    simp only [MvPowerSeries.coeff_map, RingHom.comp_apply]




end Chart

end UpFBr

end Formalism.L2.FormalSeriesBounds
