module

public import Mathlib.RingTheory.DedekindDomain.AdicValuation.Completion
import GroundTheory.GlobalFields.Adele.WeakApprox
import Mathlib.Tactic.Linter.HaveILetI
public import Mathlib.Basic.Complex.Basic
public import Mathlib.RingTheory.Ideal.Norm.AbsNorm

@[expose] public section

noncomputable section

open NumberField IsDedekindDomain IsDedekindDomain.HeightOneSpectrum WithZero

namespace PI.FinOrdValD.WA

variable {L : Type*} [Field L] [NumberField L]

lemma val_alg (v : HeightOneSpectrum (𝓞 L)) (a : L) :
    Valued.v (algebraMap L (v.adicCompletion L) a) = v.valuation L a := by
  first
  | exact IsDedekindDomain.HeightOneSpectrum.valuedAdicCompletion_eq_valuation' v a

private lemma isOpen_valuation_ball (v : HeightOneSpectrum (𝓞 L)) (x : v.adicCompletion L) (γ : ℤᵐ⁰) :
    IsOpen {y : v.adicCompletion L | Valued.v (y - x) < γ} := by
  obtain ⟨r, rfl⟩ := v.valuedAdicCompletion_surjective L γ
  have h := Valued.isOpen_ball (v.adicCompletion L) (Valued.v.restrict r)
  simpa only [Set.preimage_ofPred_eq, Pi.sub_apply, id_eq, Valuation.restrict_lt_iff] using
    h.preimage (continuous_id.sub (continuous_const (y := x)))

theorem weakApprox (T : Finset (HeightOneSpectrum (𝓞 L)))
    (x : (v : HeightOneSpectrum (𝓞 L)) → v.adicCompletion L)
    (γ : HeightOneSpectrum (𝓞 L) → ℤᵐ⁰) (hγ : ∀ v ∈ T, γ v ≠ 0) :
    ∃ a : L, a ≠ 0 ∧ (∀ v ∈ T, Valued.v (algebraMap L (v.adicCompletion L) a - x v) < γ v) ∧
      ∀ σ : L →+* ℝ, 0 < σ a := by
  classical
  let arch := (Finset.univ : Finset (InfinitePlace L))
  let finiteBall (v : T) := {y : v.1.adicCompletion L | Valued.v (y - x v) < γ v}
  -- The open unit ball around 1 excludes zero and meets the real axis in (0, 2).
  let archBall (w : arch) := Metric.ball (1 : w.1.Completion) 1
  have hopen : IsOpen (Set.univ.pi finiteBall ×ˢ Set.univ.pi archBall) :=
    (isOpen_set_pi Set.finite_univ (fun (v : T) _ ↦ isOpen_valuation_ball v.1 (x v) (γ v))).prod
      (isOpen_set_pi Set.finite_univ (fun (w : arch) _ ↦ (Metric.isOpen_ball : IsOpen (archBall w))))
  have hmem : ((fun v : T ↦ x v), fun w : arch ↦ (1 : w.1.Completion)) ∈
      Set.univ.pi finiteBall ×ˢ Set.univ.pi archBall :=
    ⟨fun v _ ↦ by simpa [finiteBall] using (pos_iff_ne_zero.2 (hγ v v.2)),
      fun _ _ ↦ Metric.mem_ball_self one_pos⟩
  obtain ⟨a, ha⟩ :=
    (GroundTheory.Global.denseRange_algebraMap_prod_pi T arch).exists_mem_open hopen ⟨_, hmem⟩
  have harch (w : InfinitePlace L) : w (a - 1) < 1 := by
    have hw := ha.2 (⟨w, Finset.mem_univ _⟩ : arch) trivial
    change dist (algebraMap L w.Completion a) 1 < 1 at hw
    rw [dist_eq_norm, ← map_one (algebraMap L w.Completion), ← map_sub] at hw
    rw [AbsoluteValue.Completion.algebraMap_def, WithAbs.algebraMap_right_apply,
      AbsoluteValue.Completion.norm_coe] at hw
    exact hw
  refine ⟨a, ?_, fun v hv ↦ ha.1 ⟨v, hv⟩ trivial, fun σ ↦ ?_⟩
  · rintro rfl
    let w := Classical.arbitrary (InfinitePlace L)
    have h : w.val (0 - 1) < 1 := harch w
    simp at h
  · have h := harch (InfinitePlace.mk (Complex.ofRealHom.comp σ))
    rw [InfinitePlace.apply] at h
    have h' : |σ a - 1| < 1 := by
      simpa [RingHom.comp_apply, ← Complex.ofReal_sub] using h
    linarith [(abs_lt.mp h').1]

theorem weakApprox_units (T : Finset (HeightOneSpectrum (𝓞 L)))
    (x : (v : HeightOneSpectrum (𝓞 L)) → (v.adicCompletion L)ˣ) (e : HeightOneSpectrum (𝓞 L) → ℤ) :
    ∃ a : Lˣ, (∀ v ∈ T, Valued.v (algebraMap L (v.adicCompletion L) (a : L) * ((x v)⁻¹ : (v.adicCompletion L)ˣ) - 1) <
        exp (-e v)) ∧ ∀ σ : L →+* ℝ, 0 < σ (a : L) := by
  classical
  have hx0 : ∀ w : HeightOneSpectrum (𝓞 L), Valued.v (x w : w.adicCompletion L) ≠ 0 := fun w =>
    (Valuation.ne_zero_iff _).mpr (x w).ne_zero
  obtain ⟨a, ha0, hT, hpos⟩ := weakApprox T (fun w => (x w : w.adicCompletion L))
    (fun w => exp (-e w) * Valued.v (x w : w.adicCompletion L))
    (fun w _ => mul_ne_zero (exp_ne_zero) (hx0 w))
  refine ⟨Units.mk0 a ha0, fun w hw => ?_, fun σ => hpos σ⟩
  have h := hT w hw
  have key : algebraMap L (w.adicCompletion L) a * (((x w)⁻¹ : (w.adicCompletion L)ˣ) : w.adicCompletion L) - 1 =
      (algebraMap L (w.adicCompletion L) a - x w) * (((x w)⁻¹ : (w.adicCompletion L)ˣ) : w.adicCompletion L) := by
    rw [sub_mul, Units.mul_inv]
  have hinv : Valued.v (((x w)⁻¹ : (w.adicCompletion L)ˣ) : w.adicCompletion L) *
      Valued.v (x w : w.adicCompletion L) = 1 := by
    rw [← Valuation.map_mul, Units.inv_mul, Valuation.map_one]
  rw [Units.val_mk0, key, Valuation.map_mul]
  by_contra hle
  push_neg at hle
  have h2 := mul_le_mul_of_nonneg_right hle (zero_le' : 0 ≤ Valued.v (x w : w.adicCompletion L))
  rw [mul_assoc, hinv, mul_one] at h2
  exact absurd h (not_lt.mpr h2)

end PI.FinOrdValD.WA
