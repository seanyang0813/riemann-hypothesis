module

public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.IsFieldSubalgebraSelf
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.Objects
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.EqZeroOrIsHomogeneousOfMemPolyPiece
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.CoordIdealIsMultiProjPrime

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Kleiman.SectionsOverLocalization

open MvPolynomial
open ReciprocityTheory.ChartRestriction.G.ArakelovGeometry.KH (chartRingOver secOver)

noncomputable section

variable {S : Type} [CommRing S] {Ω : Type} [Field Ω] [Algebra S Ω]

section Frac

theorem coe_ne_zero_of_not_mem {A : Subalgebra S Ω} {p : Ideal A} {b : A} (hb : b ∉ p) : (b : Ω) ≠ 0 := by
  intro h
  apply hb
  have : b = 0 := Subtype.ext h
  rw [this]
  exact p.zero_mem

theorem one_not_mem_of_prime {A : Subalgebra S Ω} {p : Ideal A} (hp : p.IsPrime) : (1 : A) ∉ p :=
  fun h => hp.ne_top ((Ideal.eq_top_iff_one _).mpr h)

def fracSub (A : Subalgebra S Ω) (p : Ideal A) [hp : p.IsPrime] : Subalgebra S Ω where
  carrier := {u | ∃ a b : A, b ∉ p ∧ u = (a : Ω) / b}
  mul_mem' := by
    rintro _ _ ⟨a, b, hb, rfl⟩ ⟨a', b', hb', rfl⟩
    refine ⟨a * a', b * b', fun h => (hp.mem_or_mem h).elim hb hb', ?_⟩
    push_cast
    rw [div_mul_div_comm]
  add_mem' := by
    rintro _ _ ⟨a, b, hb, rfl⟩ ⟨a', b', hb', rfl⟩
    refine ⟨a * b' + b * a', b * b', fun h => (hp.mem_or_mem h).elim hb hb', ?_⟩
    push_cast
    rw [div_add_div _ _ (coe_ne_zero_of_not_mem hb) (coe_ne_zero_of_not_mem hb')]
  algebraMap_mem' r := ⟨algebraMap S A r, 1, one_not_mem_of_prime hp, by simp⟩

theorem mem_locIn {A : Subalgebra S Ω} {p : Ideal A} [p.IsPrime] {u : Ω} :
    u ∈ IndefiniteRowSideFullHecke.Kleiman2.locIn A p ↔ ∃ a b : A, b ∉ p ∧ u = (a : Ω) / b := by
  constructor
  · intro h
    exact (Subring.closure_le (t := (fracSub A p).toSubring)).mpr (fun v hv => hv) h
  · intro h
    exact Subring.subset_closure h

theorem span_subset_span {A B : Subalgebra S Ω} (hAB : A ≤ B) (s : Set Ω) :
    (Submodule.span A s : Set Ω) ⊆ Submodule.span B s := by
  intro z (hz : z ∈ Submodule.span A s)
  induction hz using Submodule.span_induction with
  | mem z hz => exact Submodule.subset_span hz
  | zero => exact Submodule.zero_mem _
  | add a b _ _ ha hb => exact Submodule.add_mem _ ha hb
  | smul a z _ hz =>
    have e : a • z = (⟨a, hAB a.2⟩ : B) • z := by
      rw [Subalgebra.smul_def, Subalgebra.smul_def]
    rw [SetLike.mem_coe, e]
    exact Submodule.smul_mem _ _ hz

theorem exists_sum_eq_one {A : Subalgebra S Ω} {m : ℕ} (g : Fin m → Ω) (Q' : Submodule A Ω)
    (hQQ : Submodule.span A (Set.range g) * Q' = 1) :
    ∃ w : Fin m → Ω, (∀ b, w b ∈ Q') ∧ (∀ a b, g a * w b ∈ A) ∧ ∑ b, g b * w b = 1 := by
  classical
  have hone : (1 : Ω) ∈ Submodule.span A (Set.range g) * Q' := by
    rw [hQQ]; exact Submodule.mem_one.mpr ⟨1, map_one _⟩
  obtain ⟨w, hwQ, hsum⟩ : ∃ w : Fin m → Ω, (∀ b, w b ∈ Q') ∧ ∑ b, g b * w b = 1 := by
    refine Submodule.mul_induction_on
      (C := fun z => ∃ w : Fin m → Ω, (∀ b, w b ∈ Q') ∧ ∑ b, g b * w b = z) hone ?_ ?_
    · intro q hq q' hq'
      obtain ⟨a, rfl⟩ := (Submodule.mem_span_range_iff_exists_fun A).mp hq
      refine ⟨fun b => (a b : Ω) * q', fun b => Q'.smul_mem (a b) hq', ?_⟩
      rw [Finset.sum_mul]
      refine Finset.sum_congr rfl fun b _ => ?_
      rw [Subalgebra.smul_def, smul_eq_mul]
      ring
    · rintro _ _ ⟨w, hw, rfl⟩ ⟨w', hw', rfl⟩
      refine ⟨w + w', fun b => Q'.add_mem (hw b) (hw' b), ?_⟩
      rw [← Finset.sum_add_distrib]
      exact Finset.sum_congr rfl fun b _ => by simp [mul_add]
  refine ⟨w, hwQ, fun a b => ?_, hsum⟩
  have h := Submodule.mul_mem_mul (Submodule.subset_span ⟨a, rfl⟩ : g a ∈ Submodule.span A (Set.range g))
    (hwQ b)
  rw [hQQ, Submodule.mem_one] at h
  obtain ⟨y, hy⟩ := h
  rw [← hy]
  exact y.2

theorem chartRingOver_oneBlock_eq_chartRing {N : ℕ} (x : Fin (N + 1) → Ω) (c : Unit → Fin (N + 1)) (h : x (c ()) ≠ 0) :
    chartRingOver S (IndefiniteRowSideFullHecke.Kleiman2.oneBlock x) c =
      Kleiman.chartRing (S := S) (x := x) (Kleiman.singleChart h) := by
  have hChart : ReciprocityTheory.ChartRestriction.G.Geo.chartRing S x (c ()) =
      Kleiman.chartRing (S := S) (x := x) (Kleiman.singleChart h) := by
    apply le_antisymm
    · rw [ReciprocityTheory.ChartRestriction.G.Geo.chartRing, Algebra.adjoin_le_iff]
      rintro _ ⟨j, rfl⟩
      exact ⟨X j, X (c ()), 1, Kleiman.X_mem_monos (Finset.mem_singleton_self _),
        isHomogeneous_X S j, isHomogeneous_X S (c ()), by simp⟩
    · rintro _ ⟨f, s, e, hs, hf, hse, rfl⟩
      have hs₀ := Kleiman.eval_ne_zero_of_mem_monos (Kleiman.singleChart h) hs
      have hsne : s ≠ 0 := fun he => hs₀ (by rw [he, map_zero])
      obtain ⟨e', hse', hden⟩ := TranslateEq.pow_div_mem_chartRingI S x
        (Kleiman.singleChart h) (c ()) hs
      have he : e = e' := hse.inj_right hse' hsne
      subst e'
      change x (c ()) ^ e / aeval x s ∈
        IndefiniteRowSideFullHecke.Kleiman.chartRingI S x {c ()} at hden
      rw [IndefiniteRowSideFullHecke.Kleiman.chartRingI_singleton] at hden
      have hnum : aeval x f / x (c ()) ^ e ∈
          ReciprocityTheory.ChartRestriction.G.Geo.chartRing S x (c ()) := by
        rw [← Kleiman.aeval_div_of_isHomogeneous hf, ReciprocityTheory.ChartRestriction.G.Geo.chartRing,
          ← MvPolynomial.aeval_range]
        exact ⟨f, rfl⟩
      have hquot : aeval x f / aeval x s = (aeval x f / x (c ()) ^ e) * (x (c ()) ^ e / aeval x s) := by
        field_simp
      rw [hquot]
      exact mul_mem hnum hden
  rw [← hChart]
  unfold chartRingOver ReciprocityTheory.ChartRestriction.G.Geo.chartRing
  congr 1
  ext z
  constructor
  · rintro ⟨⟨⟨⟩, a⟩, rfl⟩
    exact ⟨a, rfl⟩
  · rintro ⟨a, rfl⟩
    exact ⟨⟨(), a⟩, rfl⟩

end Frac

section Dom

variable {N N' : ℕ}


end Dom

section Join

variable {N N' m : ℕ}



variable {x' : Fin (N' + 1) → Ω} {x : Fin (N + 1) → Ω}


end Join

end

end GroundTheory.Heights₂.Heights.Kleiman.SectionsOverLocalization
