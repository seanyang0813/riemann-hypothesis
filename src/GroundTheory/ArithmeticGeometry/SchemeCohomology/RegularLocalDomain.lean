module

import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RegularLocalRegularSequence.RingKrullDimQuotientSpanSingletonAddOne
public import Mathlib.RingTheory.RegularLocalRing.Defs
public import Mathlib.Algebra.Module.SpanRankOperations
import Mathlib.Order.CompletePartialOrder
import Mathlib.RingTheory.Henselian
public import Mathlib.RingTheory.Ideal.KrullsHeightTheorem
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.Lemma
import Mathlib.Tactic.NormNum.LegendreSymbol
public import Mathlib.RingTheory.Ideal.Height

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Arith.SchemeCoh

open IsLocalRing Ideal

universe u

variable {R : Type u} [CommRing R]

theorem spanFinrank_maximalIdeal_quotient_add_one_le [IsLocalRing R] [IsNoetherianRing R]
    {x : R} (hx : x ∈ maximalIdeal R) (hx2 : x ∉ maximalIdeal R ^ 2)
    [IsLocalRing (R ⧸ span {x})] :
    (maximalIdeal (R ⧸ span {x})).spanFinrank + 1 ≤ (maximalIdeal R).spanFinrank := by
  classical
  set m := maximalIdeal R with hm
  let x' : m := ⟨x, hx⟩
  let v0 : CotangentSpace R := m.toCotangent x'
  have hx0 : v0 ≠ 0 := by
    rw [Ne, Ideal.toCotangent_eq_zero]
    simpa [pow_two] using hx2
  let L : Submodule (ResidueField R) (CotangentSpace R) := Submodule.span _ {v0}
  have hL : Module.finrank (ResidueField R) L = 1 := finrank_span_singleton hx0
  set q := Module.finrank (ResidueField R) (CotangentSpace R ⧸ L) with hq
  have hdim : q + 1 = Module.finrank (ResidueField R) (CotangentSpace R) := by
    rw [hq, ← hL, L.finrank_quotient_add_finrank]
  let bW := Module.finBasis (ResidueField R) (CotangentSpace R ⧸ L)
  have hlift : ∀ i : Fin q, ∃ y : m, L.mkQ (m.toCotangent y) = bW i := by
    intro i
    obtain ⟨v, hv⟩ := L.mkQ_surjective (bW i)
    obtain ⟨y, rfl⟩ := m.toCotangent_surjective v
    exact ⟨y, hv⟩
  choose t ht using hlift
  let s : Set m := insert x' (Set.range t)
  have hspan : Submodule.span (ResidueField R) (m.toCotangent '' s) = ⊤ := by
    set S := Submodule.span (ResidueField R) (m.toCotangent '' s)
    have hLS : L ≤ S := Submodule.span_le.mpr (by
      rintro _ rfl
      exact Submodule.subset_span ⟨x', Set.mem_insert _ _, rfl⟩)
    have hmap : S.map L.mkQ = ⊤ := by
      rw [eq_top_iff, ← bW.span_eq, Submodule.span_le]
      rintro _ ⟨i, rfl⟩
      exact ⟨m.toCotangent (t i), Submodule.subset_span ⟨t i, Set.mem_insert_of_mem _ ⟨i, rfl⟩, rfl⟩,
        ht i⟩
    rw [Submodule.map_mkQ_eq_top] at hmap
    rwa [sup_eq_right.mpr hLS] at hmap
  have hspanR : Submodule.span R s = ⊤ := CotangentSpace.span_image_eq_top_iff.mp hspan
  have hmspan : m = Ideal.span (Subtype.val '' s) := by
    have := Submodule.map_span m.subtype s
    rw [hspanR, Submodule.map_subtype_top] at this
    exact this
  have hmax : maximalIdeal (R ⧸ span {x}) =
      Ideal.span (Set.range (fun i ↦ Ideal.Quotient.mk (span {x}) (t i : R))) := by
    rw [← map_maximalIdeal_of_surjective _ Ideal.Quotient.mk_surjective, ← hm,
      congrArg (Ideal.map (Ideal.Quotient.mk (span {x}))) hmspan, Ideal.map_span]
    have : (Ideal.Quotient.mk (span {x})) '' (Subtype.val '' s) =
        insert 0 (Set.range (fun i ↦ Ideal.Quotient.mk (span {x}) (t i : R))) := by
      simp only [s, Set.image_insert_eq, ← Set.range_comp]
      congr 1
      exact Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.mem_span_singleton_self x)
    rw [this, Ideal.span_insert_zero]
  have hle : (maximalIdeal (R ⧸ span {x})).spanFinrank ≤ q := by
    rw [hmax]
    have hfin : (Set.range (fun i ↦ Ideal.Quotient.mk (span {x}) (t i : R))) =
        ((Finset.univ.image (fun i ↦ Ideal.Quotient.mk (span {x}) (t i : R)) :
          Finset (R ⧸ span {x})) : Set (R ⧸ span {x})) := by simp
    refine (Submodule.spanFinrank_span_le_ncard_of_finite (Set.finite_range _)).trans ?_
    rw [hfin, Set.ncard_coe_finset]
    exact (Finset.card_image_le).trans (by simp)
  have hmr : m.spanFinrank = q + 1 := by
    rw [hm, spanFinrank_maximalIdeal_eq_finrank_cotangentSpace (R := R)]
    exact hdim.symm
  omega

private lemma exists_nat_of_le_add_one {d : WithBot ℕ∞} {n b : ℕ} (h2 : (n : WithBot ℕ∞) ≤ d + 1)
    (h3 : d ≤ b) : ∃ k : ℕ, d = k := by
  induction d using WithBot.recBotCoe with
  | bot => simp at h2
  | coe e =>
    induction e using ENat.recTopCoe with
    | top =>
      exfalso
      have h4 : ((⊤ : ℕ∞) : WithBot ℕ∞) ≤ ((b : ℕ∞) : WithBot ℕ∞) := h3
      rw [WithBot.coe_le_coe, top_le_iff] at h4
      exact ENat.natCast_ne_top b h4
    | coe k => exact ⟨k, rfl⟩

theorem isRegularLocalRing_quotient [IsRegularLocalRing R] {x : R} (hx : x ∈ maximalIdeal R)
    (hx2 : x ∉ maximalIdeal R ^ 2) [IsLocalRing (R ⧸ span {x})] :
    IsRegularLocalRing (R ⧸ span {x}) ∧ ringKrullDim (R ⧸ span {x}) + 1 = ringKrullDim R := by
  have h1 := spanFinrank_maximalIdeal_quotient_add_one_le hx hx2
  have hR : ringKrullDim R = ((maximalIdeal R).spanFinrank : WithBot ℕ∞) :=
    ((isRegularLocalRing_iff R).mp inferInstance).symm
  have h2 : ringKrullDim R ≤ ringKrullDim (R ⧸ span {x}) + 1 := by
    refine (ringKrullDim_le_ringKrullDim_quotient_add_spanFinrank (span {x}) ?_).trans ?_
    · rw [IsLocalRing.ringJacobson_eq_maximalIdeal]
      exact (span_singleton_le_iff_mem _).mpr hx
    · gcongr
      exact_mod_cast (Submodule.spanFinrank_span_le_ncard_of_finite (Set.finite_singleton x)).trans
        (by simp)
  have h3 := ringKrullDim_le_spanFinrank_maximalIdeal (R := R ⧸ span {x})
  rw [hR] at h2
  obtain ⟨k, hk⟩ := exists_nat_of_le_add_one h2 h3
  rw [hk] at h2 h3 ⊢
  have h2' : (maximalIdeal R).spanFinrank ≤ k + 1 := by exact_mod_cast h2
  have h3' : k ≤ (maximalIdeal (R ⧸ span {x})).spanFinrank := by exact_mod_cast h3
  have hk' : (maximalIdeal (R ⧸ span {x})).spanFinrank = k := by omega
  refine ⟨(isRegularLocalRing_iff _).mpr (by rw [hk, hk']), ?_⟩
  rw [hR]
  exact_mod_cast (by omega : k + 1 = (maximalIdeal R).spanFinrank)

theorem IsRegularLocalRing.isDomain [IsRegularLocalRing R] : IsDomain R := by
  apply PI.UnitaryGroupMassFormula.RLRS.IsRegularLocalRing.isDomain

end GroundTheory.Arith.SchemeCoh
