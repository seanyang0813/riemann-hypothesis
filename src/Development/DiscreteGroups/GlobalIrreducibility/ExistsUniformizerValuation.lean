module

public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.PadicIsNonarchimedeanLocalField
public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.IsSubquotientDetRepParInd
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.AdditiveCharConductorExists
import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HasExponentZeroIff

@[expose] public section

noncomputable section

open ValuativeRel GlobalTheory.SplitWeil GlobalTheory.SmGL GlobalTheory.LocLanglands

namespace DiscreteGroups.sglob.DzType

variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]

theorem valuation_le_iff_ord_le (x y : kˣ) :
    valuation k (x : k) ≤ valuation k (y : k) ↔ ord k y ≤ ord k x := by
  set φ := IsNonarchimedeanLocalField.valueGroupWithZeroIsoInt k
  have hx : φ (valuation k (x : k)) ≠ 0 := by simp
  have hy : φ (valuation k (y : k)) ≠ 0 := by simp
  have ho : ∀ z : kˣ, ord k z = -WithZero.log (φ (valuation k (z : k))) := fun _ => rfl
  rw [← φ.strictMono.le_iff_le, ← WithZero.exp_log hx, ← WithZero.exp_log hy, WithZero.exp_le_exp, ho x, ho y]
  omega

theorem ord_inv_eq_neg_ord (x : kˣ) : ord k x⁻¹ = -ord k x := by
  have h := ord_mul k x⁻¹ x
  rw [inv_mul_cancel, ord_eq_zero (k := k) (x := 1) (by simp)] at h
  omega

theorem ord_pow_bis (x : kˣ) (n : ℕ) : ord k (x ^ n) = n * ord k x := by
  induction n with
  | zero => simp [ord_eq_zero]
  | succ n ih => rw [pow_succ, ord_mul, ih]; push_cast; ring

theorem exists_uniformizer_valuation : ∃ t : kˣ, valuation k (t : k) = uniformizer k := by
  obtain ⟨t, ht⟩ := ValuativeRel.valuation_surjective (uniformizer k)
  have h0 : t ≠ 0 := by
    rintro rfl
    rw [map_zero] at ht
    exact absurd ht.symm (by simp)
  exact ⟨Units.mk0 t h0, ht⟩

theorem exists_ball_char_trivial (ψ : AddChar k Circle) (hψ : Continuous ψ) :
    ∃ s : kˣ, ∀ y ∈ cball s, ψ y = 1 := by
  have hU : {x : k | ‖(ψ x : ℂ) - 1‖ < 1 / 2} ∈ nhds (0 : k) := by
    have hc : Continuous fun x : k => ‖(ψ x : ℂ) - 1‖ :=
      ((continuous_subtype_val.comp hψ).sub continuous_const).norm
    exact (isOpen_lt hc continuous_const).mem_nhds (by simp)
  obtain ⟨s, hs⟩ := exists_cball_subset hU
  refine ⟨s, fun y hy => ?_⟩
  have hn : ∀ n : ℕ, n • y ∈ cball s := by
    intro n
    induction n with
    | zero => simp [cball]
    | succ n ih => rw [succ_nsmul]; exact add_mem_cball ih hy
  have h := _root_.GlobalTheory.IterationConvergence.main (z := (ψ y : ℂ)) fun n => by
    have := hs (hn n)
    simp only [Set.mem_ofPred_eq, AddChar.map_nsmul_eq_pow] at this
    simpa using this
  exact Circle.ext (by rw [h, Circle.coe_one])

theorem exists_hasConductor_of_continuous_ne_one (ψ : AddChar k Circle) (hψ : Continuous ψ) (hψ1 : ψ ≠ 1) :
    ∃ c : kˣ, HasConductor ψ c := by
  obtain ⟨s, hs⟩ := exists_ball_char_trivial ψ hψ
  obtain ⟨t, ht⟩ := exists_uniformizer_valuation (k := k)
  have hot : ord k t = 1 := ord_eq_one (k := k) ht
  let b : ℕ → kˣ := fun n => s * t⁻¹ ^ n
  have hb : ∀ n : ℕ, ord k (b n) = ord k s - n := fun n => by
    simp only [b]
    rw [ord_mul, ord_pow_bis, ord_inv_eq_neg_ord, hot]
    ring
  have hex : ∃ n : ℕ, ¬ ∀ y : k, valuation k y ≤ valuation k (b n : k) → ψ y = 1 := by
    obtain ⟨x, hx⟩ : ∃ x, ψ x ≠ 1 := by
      by_contra h
      simp only [not_exists, ne_eq, not_not] at h
      exact hψ1 (by ext x; rw [h x, AddChar.one_apply])
    have hx0 : x ≠ 0 := by rintro rfl; exact hx (AddChar.map_zero_eq_one ψ)
    refine ⟨(ord k s - ord k (Units.mk0 x hx0)).toNat, fun h => hx (h x ?_)⟩
    have := (valuation_le_iff_ord_le (Units.mk0 x hx0) (b (ord k s - ord k (Units.mk0 x hx0)).toNat)).2
      (by rw [hb]; omega)
    simpa using this
  classical
  set N := Nat.find hex with hNdef
  have hN : ¬ ∀ y : k, valuation k y ≤ valuation k (b N : k) → ψ y = 1 := Nat.find_spec hex
  have hN0 : N ≠ 0 := by
    intro h0
    apply hN
    intro y hy
    rw [h0] at hy
    exact hs y (by simpa [b, cball] using hy)
  have hP : ∀ y : k, valuation k y ≤ valuation k (b (N - 1) : k) → ψ y = 1 :=
    Classical.not_not.1 (Nat.find_min hex (show N - 1 < Nat.find hex by omega))
  refine ⟨b (N - 1), fun x => ⟨fun h => ?_, fun h y hy => hP y (hy.trans h)⟩⟩
  by_contra hlt
  apply hN
  intro y hy
  apply h y
  refine hy.trans ?_
  have hx0 : x ≠ 0 := by rintro rfl; exact hlt (by simp)
  have h2 : ¬ ord k (b (N - 1)) ≤ ord k (Units.mk0 x hx0) := fun h3 =>
    hlt (by simpa using (valuation_le_iff_ord_le (Units.mk0 x hx0) (b (N - 1))).2 h3)
  have e1 := hb N
  have e2 := hb (N - 1)
  have := (valuation_le_iff_ord_le (b N) (Units.mk0 x hx0)).2 (by omega)
  simpa using this


theorem residue_eq_iff_valuation_lt (a b : 𝒪[k]) :
    IsLocalRing.residue 𝒪[k] a = IsLocalRing.residue 𝒪[k] b ↔ valuation k ((a : k) - b) < 1 := by
  have hv := Valuation.integer.integers (valuation k)
  have h1 : valuation k (((a - b : 𝒪[k])) : k) ≤ 1 := (Valuation.mem_integer_iff _ _).1 (a - b).2
  have e : ∀ x : 𝒪[k], algebraMap 𝒪[k] k x = (x : k) := fun _ => rfl
  rw [← sub_eq_zero, ← map_sub, IsLocalRing.residue_eq_zero_iff, IsLocalRing.mem_maximalIdeal,
    mem_nonunits_iff, hv.isUnit_iff_valuation_eq_one, e]
  push_cast at h1 ⊢
  exact ⟨fun h => lt_of_le_of_ne h1 h, fun h => h.ne⟩


end DiscreteGroups.sglob.DzType
