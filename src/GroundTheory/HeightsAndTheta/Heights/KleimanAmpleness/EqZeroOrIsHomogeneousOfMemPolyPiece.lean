module

public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.Objects
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.CoordIdealIsMultiProjPrime

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Kleiman.TranslateEq

open MvPolynomial

noncomputable section

section Charts

variable (S : Type) [CommRing S] {N : ℕ} {Ω : Type} [Field Ω] [Algebra S Ω]

theorem pow_div_mem_chartRingI (x : Fin (N + 1) → Ω) (I : Kleiman.Chart x) (i₀ : Fin (N + 1))
    {s : Poly S N} (hs : s ∈ Kleiman.monos I.1) :
    ∃ e : ℕ, s.IsHomogeneous e ∧ x i₀ ^ e / aeval x s ∈ IndefiniteRowSideFullHecke.Kleiman.chartRingI S x I.1 := by
  induction hs using Submonoid.closure_induction with
  | mem a ha =>
    obtain ⟨i, hi, rfl⟩ := ha
    refine ⟨1, isHomogeneous_X S i, ?_⟩
    rw [pow_one, aeval_X]
    exact Algebra.subset_adjoin ⟨i, hi, i₀, rfl⟩
  | one => exact ⟨0, isHomogeneous_one _ _, by simp⟩
  | mul a b _ _ ha hb =>
    obtain ⟨e, hae, hea⟩ := ha
    obtain ⟨e', hbe, heb⟩ := hb
    refine ⟨e + e', hae.mul hbe, ?_⟩
    have : x i₀ ^ (e + e') / aeval x (a * b) = (x i₀ ^ e / aeval x a) * (x i₀ ^ e' / aeval x b) := by
      rw [map_mul, pow_add, mul_div_mul_comm]
    rw [this]
    exact mul_mem hea heb

theorem chartRingI.equiv (x : Fin (N + 1) → Ω) (I : Kleiman.Chart x) :
    IndefiniteRowSideFullHecke.Kleiman.chartRingI S x I.1 = Kleiman.chartRing S x I := by
  apply le_antisymm
  · rw [IndefiniteRowSideFullHecke.Kleiman.chartRingI, Algebra.adjoin_le_iff]
    rintro _ ⟨i, hi, j, rfl⟩
    exact ⟨X j, X i, 1, Kleiman.X_mem_monos hi, isHomogeneous_X S j, isHomogeneous_X S i, by simp⟩
  · rintro _ ⟨f, s, e, hs, hf, hse, rfl⟩
    obtain ⟨i₀, hi₀⟩ := I.2.1
    have hx₀ : x i₀ ≠ 0 := (Kleiman.mem_support x).mp (I.2.2 hi₀)
    have hs0 : aeval x s ≠ 0 := Kleiman.eval_ne_zero_of_mem_monos I hs
    have hsne : s ≠ 0 := fun h => hs0 (by rw [h, map_zero])
    obtain ⟨e', hse', hmem⟩ := pow_div_mem_chartRingI S x I i₀ hs
    have hee : e = e' := hse.inj_right hse' hsne
    subst hee
    have hall : ∀ g : Poly S N, aeval (fun l => x l / x i₀) g ∈ IndefiniteRowSideFullHecke.Kleiman.chartRingI S x I.1 := by
      intro g
      induction g using MvPolynomial.induction_on with
      | C a => rw [aeval_C]; exact Subalgebra.algebraMap_mem _ a
      | add p q hp hq => rw [map_add]; exact add_mem hp hq
      | mul_X p i hp =>
        rw [map_mul, aeval_X]
        exact mul_mem hp (Algebra.subset_adjoin ⟨i₀, hi₀, i, rfl⟩)
    have hf' : aeval x f / x i₀ ^ e ∈ IndefiniteRowSideFullHecke.Kleiman.chartRingI S x I.1 := by
      rw [← Kleiman.aeval_div_of_isHomogeneous hf i₀]
      exact hall f
    have heq : aeval x f / aeval x s = (aeval x f / x i₀ ^ e) * (x i₀ ^ e / aeval x s) := by
      field_simp
    rw [heq]
    exact mul_mem hf' hmem

theorem chartRing.equiv (x : Fin (N + 1) → Ω) {i : Fin (N + 1)} (hi : x i ≠ 0) :
    ReciprocityTheory.ChartRestriction.G.Geo.chartRing S x i = Kleiman.chartRing S x (Kleiman.singleChart hi) := by
  rw [← IndefiniteRowSideFullHecke.Kleiman.chartRingI_singleton, ← chartRingI.equiv]
  rfl

end Charts

section Families

variable {S : Type} [CommRing S] {N : ℕ} {Ω : Type} [Field Ω] [Algebra S Ω] {x : Fin (N + 1) → Ω}
variable {E : Type} [AddCommGroup E] [Module Ω E] [Module S E] [IsScalarTower S Ω E]



omit [Module S E] [IsScalarTower S Ω E] in
theorem mem_twist_twistSys_iff (F : Kleiman.SubSystem S x E) (c : ℤ) (I : Kleiman.Chart x)
    {i : Fin (N + 1)} (hi : i ∈ I.1) (z : E) :
    z ∈ (F.twist (Kleiman.twistSys S x c)).sub I ↔ ∃ y ∈ F.sub I, z = x i ^ c • y := by
  constructor
  · intro hz
    induction hz using Submodule.span_induction with
    | mem z hz =>
      obtain ⟨q, hq, y, hy, rfl⟩ := hz
      change q ∈ Kleiman.twistMod S x c I at hq
      rw [Kleiman.twistMod_eq_span c I hi, Submodule.mem_span_singleton] at hq
      obtain ⟨a, rfl⟩ := hq
      refine ⟨a • y, Submodule.smul_mem _ a hy, ?_⟩
      rw [Kleiman.chartRing_smul_def, mul_smul]
      exact smul_comm _ _ _
    | zero => exact ⟨0, zero_mem _, (smul_zero _).symm⟩
    | add a b _ _ ha hb =>
      obtain ⟨y, hy, rfl⟩ := ha
      obtain ⟨y', hy', rfl⟩ := hb
      exact ⟨y + y', add_mem hy hy', (smul_add _ _ _).symm⟩
    | smul a w _ hw =>
      obtain ⟨y, hy, rfl⟩ := hw
      refine ⟨a • y, Submodule.smul_mem _ a hy, ?_⟩
      rw [Subalgebra.smul_def, Subalgebra.smul_def, smul_comm]
  · rintro ⟨y, hy, rfl⟩
    refine Submodule.subset_span ⟨x i ^ c, ?_, y, hy, rfl⟩
    change x i ^ c ∈ Kleiman.twistMod S x c I
    rw [Kleiman.twistMod_eq_span c I hi]
    exact Submodule.mem_span_singleton_self _

end Families

section Filtration

variable (S : Type) [CommRing S] (N : ℕ)
variable {M : Type} [AddCommGroup M] [Module (Poly S N) M] [Module S M] [IsScalarTower S (Poly S N) M]

end Filtration

end

end GroundTheory.Heights₂.Heights.Kleiman.TranslateEq
