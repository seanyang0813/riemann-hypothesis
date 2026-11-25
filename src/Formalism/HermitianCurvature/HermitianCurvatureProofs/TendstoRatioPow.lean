module

public import Formalism.HermitianCurvature.HermitianCurvatureProofs.TendstoSmulCocompact
public import Mathlib.MeasureTheory.Integral.IntegrableOn
public import Mathlib.Order.CompletePartialOrder
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.AestronglyMeasurableMainD
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.GermFibreKernels
public import Mathlib.MeasureTheory.Function.L2Space
public import Mathlib.Analysis.CStarAlgebra.Module.Constructions
public import Mathlib.MeasureTheory.Integral.Bochner.Basic
public import Mathlib.MeasureTheory.Integral.DominatedConvergence
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.GermRealisation
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.IntegralNormCvecSq
import Aesop.Main
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.ZeroNotMemPreimagePow, Formalism.HermitianCurvature.HermitianCurvatureProofs.MemLpBzOfSup, Formalism.HermitianCurvature.HermitianCurvatureProofs.TendstoIntegralInnerGermMoving, Formalism.HermitianCurvature.HermitianCurvatureProofs.TendstoRatioPow

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.ZeroNotMemPreimagePow =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.ZeroNotMemPreimagePow", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.TendstoSmulCocompact\npublic import Mathlib.MeasureTheory.Integral.IntegrableOn\npublic import Mathlib.Order.CompletePartialOrder\nimport Aesop.Main\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.AestronglyMeasurableMainD\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.GermFibreKernels\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.MeasureTheory.Function.L2Space\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.PBK

open Formalism.FourierDecayAlt Finset Filter Topology MeasureTheory
open scoped ComplexConjugate InnerProductSpace

noncomputable section

open Classical

def ann (n : ℕ) : Set ℂ := {D | ((n : ℝ) + 1)⁻¹ ≤ ‖D‖ ∧ ‖D‖ ≤ (n : ℝ) + 1}

theorem isCompact_ann (n : ℕ) : IsCompact (ann n) := by
  refine Metric.isCompact_of_isClosed_isBounded ?_ ?_
  · exact (isClosed_le continuous_const continuous_norm).inter (isClosed_le continuous_norm continuous_const)
  · exact (Metric.isBounded_closedBall (x := (0 : ℂ)) (r := (n : ℝ) + 1)).subset fun D hD => by
      rw [Metric.mem_closedBall, dist_zero_right]
      exact hD.2

theorem zero_notMem_ann (n : ℕ) : (0 : ℂ) ∉ ann n := by
  intro h
  have h1 := h.1
  rw [norm_zero] at h1
  exact absurd h1 (not_le.mpr (by positivity))

theorem ann_mono : Monotone ann := by
  intro m n hmn D hD
  have hmn' : (m : ℝ) ≤ n := by exact_mod_cast hmn
  have h : (m : ℝ) + 1 ≤ (n : ℝ) + 1 := by linarith
  exact ⟨le_trans (inv_anti₀ (by positivity) h) hD.1, hD.2.trans h⟩

theorem exists_mem_ann {D : ℂ} (hD : D ≠ 0) : ∃ n, D ∈ ann n := by
  obtain ⟨n, hn⟩ := exists_nat_ge (max ‖D‖ ‖D‖⁻¹)
  have hpos : 0 < ‖D‖ := norm_pos_iff.mpr hD
  refine ⟨n, ?_, ?_⟩
  · have h1 : ‖D‖⁻¹ ≤ (n : ℝ) + 1 :=
      (le_max_right _ _).trans (hn.trans (le_add_of_nonneg_right zero_le_one))
    exact inv_le_of_inv_le₀ hpos h1
  · exact (le_max_left _ _).trans (hn.trans (le_add_of_nonneg_right zero_le_one))

theorem isCompact_preimage_pow {s : ℕ} (hs : s ≠ 0) {ε : ℂ} (hε : ‖ε‖ = 1) {Q : Set ℂ} (hQ : IsCompact Q) :
    IsCompact {z : ℂ | ε⁻¹ * z ^ s ∈ Q} := by
  have hcont : Continuous fun z : ℂ => ε⁻¹ * z ^ s := by fun_prop
  refine Metric.isCompact_of_isClosed_isBounded (hQ.isClosed.preimage hcont) ?_
  obtain ⟨M, hM⟩ := hQ.isBounded.exists_norm_le
  refine (Metric.isBounded_closedBall (x := (0 : ℂ)) (r := max 1 M)).subset fun z hz => ?_
  have h1 : ‖z‖ ^ s ≤ M := by
    have := hM _ hz
    rwa [norm_mul, norm_inv, hε, inv_one, one_mul, norm_pow] at this
  rw [Metric.mem_closedBall, dist_zero_right]
  by_contra hcon
  push_neg at hcon
  have h2 : 1 < ‖z‖ := lt_of_le_of_lt (le_max_left _ _) hcon
  have h3 : ‖z‖ ≤ ‖z‖ ^ s := le_self_pow₀ h2.le hs
  linarith [le_max_right 1 M]

theorem zero_notMem_preimage_pow {s : ℕ} (hs : s ≠ 0) (ε : ℂ) {Q : Set ℂ} (h0 : (0 : ℂ) ∉ Q) :
    (0 : ℂ) ∉ {z : ℂ | ε⁻¹ * z ^ s ∈ Q} := by
  intro h
  apply h0
  simpa [zero_pow hs] using h

section ss

variable {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]

theorem norm_sq_le_eta (a u : H) (η : ℝ) (hη : 0 < η) :
    ‖a‖ ^ 2 ≤ (1 + η) * ‖u‖ ^ 2 + (1 + η⁻¹) * ‖u - a‖ ^ 2 := by
  have h1 : ‖a‖ ≤ ‖u‖ + ‖u - a‖ := by
    calc ‖a‖ = ‖u - (u - a)‖ := by rw [sub_sub_cancel]
      _ ≤ ‖u‖ + ‖u - a‖ := norm_sub_le _ _
  have h2 : ‖a‖ ^ 2 ≤ (‖u‖ + ‖u - a‖) ^ 2 := pow_le_pow_left₀ (norm_nonneg _) h1 2
  have e : η * ‖u‖ ^ 2 + η⁻¹ * ‖u - a‖ ^ 2 - 2 * ‖u‖ * ‖u - a‖ = η⁻¹ * (η * ‖u‖ - ‖u - a‖) ^ 2 := by
    field_simp
    ring
  have : 0 ≤ η⁻¹ * (η * ‖u‖ - ‖u - a‖) ^ 2 := by positivity
  nlinarith

theorem stronglyMeasurable_bz (s : ℕ) {bt : ℂ → H} (hbt : StronglyMeasurable bt) :
    StronglyMeasurable (bz s bt) := by
  unfold bz
  have hc : Continuous fun z : ℂ => (((s : ℝ) * ‖z‖ ^ (s - 1) : ℝ) : ℂ) := by fun_prop
  exact hc.stronglyMeasurable.smul hbt

theorem sq_norm_indicator (Qz : Set ℂ) (f : ℂ → H) :
    (fun z => ‖Qz.indicator f z‖ ^ 2) = Qz.indicator (fun z => ‖f z‖ ^ 2) := by
  funext z
  by_cases hz : z ∈ Qz <;> simp [Set.indicator, hz]

theorem memLp_indicator_bz {s : ℕ} {bt : ℂ → H} (hbt : StronglyMeasurable bt) {Qz : Set ℂ}
    (hQz : MeasurableSet Qz) (hloc : IntegrableOn (fun z => ‖bz s bt z‖ ^ 2) Qz) :
    MemLp (Qz.indicator (bz s bt)) 2 volume := by
  have hm : AEStronglyMeasurable (Qz.indicator (bz s bt)) volume :=
    ((stronglyMeasurable_bz s hbt).indicator hQz).aestronglyMeasurable
  rw [memLp_two_iff_integrable_sq_norm hm, sq_norm_indicator]
  exact (integrable_indicator_iff hQz).2 hloc

theorem integral_bz_Q_le {s : ℕ} (hs : s ≠ 0) {β : ℂ} (hβ : β ≠ 0) {ε : ℂ} (hε : ‖ε‖ = 1)
    (ut : ℂ → ℂ → H) (bt : ℂ → H) (SS : ℝ) (memU : ∀ x : ℂ, x ≠ 0 → MemLp (ut x) 2 volume)
    (sup : ∀ x : ℂ, x ≠ 0 → ∫ D, ‖ut x D‖ ^ 2 ≤ SS) (hbt : StronglyMeasurable bt) (Q : Set ℂ)
    (hQ : IsCompact Q) (hloc : IntegrableOn (fun z => ‖bz s bt z‖ ^ 2) {z | ε⁻¹ * z ^ s ∈ Q}) (C : ℝ)
    (hC : ∀ x : ℂ, x ≠ 0 → ∀ᵐ D, D ∈ Q → ‖ut x D - mainD s β ε bt x D‖ ≤ C * ‖x‖⁻¹) :
    ∫ z, ‖({z | ε⁻¹ * z ^ s ∈ Q}.indicator (bz s bt)) z‖ ^ 2 ≤ SS := by
  have hε0 : ε ≠ 0 := by rintro rfl; simp at hε
  set Qz : Set ℂ := {z | ε⁻¹ * z ^ s ∈ Q} with hQzdef
  have hQzm : MeasurableSet Qz := (isCompact_preimage_pow hs hε hQ).isClosed.measurableSet
  have hbtQ : StronglyMeasurable (Qz.indicator bt) := hbt.indicator hQzm
  have hbQ : MemLp (bz s (Qz.indicator bt)) 2 volume := by
    rw [bz_indicator]; exact memLp_indicator_bz hbt hQzm hloc
  have hSS0 : 0 ≤ SS := le_trans (integral_nonneg fun _ => sq_nonneg _) (sup 1 one_ne_zero)

  have hsh : Tendsto (fun a : ℂ => (s : ℂ) * ((fun _ : ℂ => (1 : ℂ)) a * id a - id a)) (cocompact ℂ) (𝓝 0) := by
    simpa using (tendsto_const_nhds : Tendsto (fun _ : ℂ => (0 : ℂ)) (cocompact ℂ) (𝓝 0))
  have hne : ∀ ζ ∈ G.rootSet s 1, ζ ≠ 1 →
      Tendsto (fun a : ℂ => ζ * (fun _ : ℂ => (1 : ℂ)) a * id a - id a) (cocompact ℂ) (cocompact ℂ) := by
    intro ζ _ h1
    refine (tendsto_smul_cocompact (ζ - 1) (sub_ne_zero.2 h1) id tendsto_id).congr fun a => ?_
    simp only [id]
    ring
  have hT := tendsto_pairD hs hβ hε hbQ hbQ id id (fun _ => (1 : ℂ)) 0
    (Eventually.of_forall fun _ => one_ne_zero) tendsto_const_nhds hsh hne
  set L : ℝ := ∫ z, ‖bz s (Qz.indicator bt) z‖ ^ 2 with hL
  have hinner : ∀ v : H, ⟪v, v⟫_ℂ = ((‖v‖ ^ 2 : ℝ) : ℂ) := fun v => by
    rw [inner_self_eq_norm_sq_to_K]; push_cast; rfl
  have hval : ∫ z, G.psi β (0 * z) • ⟪bz s (Qz.indicator bt) z, bz s (Qz.indicator bt) z⟫_ℂ = (L : ℂ) := by
    have hψ0 : ∀ z, G.psi β (0 * z) = 1 := fun z => by simp [G.psi]
    simp_rw [hψ0, one_smul, hinner]
    rw [hL, integral_complex_ofReal]
  rw [hval] at hT

  set f : ℂ → ℝ := fun x => ∫ D, ‖mainD s β ε (Qz.indicator bt) x D‖ ^ 2 with hf
  have hpair : ∀ x, pairD s β ε (Qz.indicator bt) (Qz.indicator bt) x x 1 = (f x : ℂ) := by
    intro x
    simp only [pairD, norm_one, one_pow, Complex.ofReal_one, one_smul, one_mul, hinner, hf]
    rw [integral_complex_ofReal]
  have hfT : Tendsto f (cocompact ℂ) (𝓝 L) := by
    have := (Complex.continuous_re.tendsto _).comp hT
    simpa [Function.comp_def, hpair] using this

  have hbound : ∀ η : ℝ, 0 < η → L ≤ (1 + η) * SS := by
    intro η hη
    obtain ⟨vQ, hvQ⟩ : ∃ v : ℝ, v = (volume Q).toReal := ⟨_, rfl⟩
    have hg : Tendsto (fun x : ℂ => (1 + η) * SS + (1 + η⁻¹) * (C * ‖x‖⁻¹) ^ 2 * vQ) (cocompact ℂ)
        (𝓝 ((1 + η) * SS)) := by
      have h0 : Tendsto (fun x : ℂ => ‖x‖⁻¹) (cocompact ℂ) (𝓝 0) :=
        tendsto_inv_atTop_zero.comp tendsto_norm_cocompact_atTop
      have h1 : Tendsto (fun x : ℂ => (1 + η) * SS + (1 + η⁻¹) * (C * ‖x‖⁻¹) ^ 2 * vQ) (cocompact ℂ)
          (𝓝 ((1 + η) * SS + (1 + η⁻¹) * (C * 0) ^ 2 * vQ)) :=
        tendsto_const_nhds.add ((tendsto_const_nhds.mul ((tendsto_const_nhds.mul h0).pow 2)).mul tendsto_const_nhds)
      simpa using h1
    refine le_of_tendsto_of_tendsto hfT hg ?_
    filter_upwards [eventually_ne_cocompact 0] with x hx
    have hmD : MemLp (mainD s β ε (Qz.indicator bt) x) 2 volume := memLp_mainD hs β hε hbtQ hbQ x
    have i1 : Integrable (fun D => ‖mainD s β ε (Qz.indicator bt) x D‖ ^ 2) :=
      (memLp_two_iff_integrable_sq_norm hmD.aestronglyMeasurable).1 hmD
    have i2 : Integrable (fun D => ‖ut x D‖ ^ 2) := (memLp_two_iff_integrable_sq_norm (memU x hx).aestronglyMeasurable).1 (memU x hx)
    have hQm : MeasurableSet Q := hQ.isClosed.measurableSet
    have i3 : Integrable (Q.indicator fun _ => (1 + η⁻¹) * (C * ‖x‖⁻¹) ^ 2) :=
      (integrableOn_const hQ.measure_lt_top.ne).integrable_indicator hQm
    have hpt : ∀ᵐ D, ‖mainD s β ε (Qz.indicator bt) x D‖ ^ 2 ≤
        (1 + η) * ‖ut x D‖ ^ 2 + Q.indicator (fun _ => (1 + η⁻¹) * (C * ‖x‖⁻¹) ^ 2) D := by
      filter_upwards [hC x hx] with D hD
      rw [mainD_indicator hs β hε0 bt Q x D]
      by_cases hDQ : D ∈ Q
      · rw [Set.indicator_of_mem hDQ, Set.indicator_of_mem hDQ]
        have hr := hD hDQ
        have hr2 : ‖ut x D - mainD s β ε bt x D‖ ^ 2 ≤ (C * ‖x‖⁻¹) ^ 2 :=
          pow_le_pow_left₀ (norm_nonneg _) hr 2
        have := norm_sq_le_eta (mainD s β ε bt x D) (ut x D) η hη
        have hc : 0 ≤ 1 + η⁻¹ := by positivity
        nlinarith
      · rw [Set.indicator_of_notMem hDQ, Set.indicator_of_notMem hDQ, norm_zero]
        have : 0 ≤ (1 + η) * ‖ut x D‖ ^ 2 := by positivity
        simpa using this
    calc f x ≤ ∫ D, ((1 + η) * ‖ut x D‖ ^ 2 + Q.indicator (fun _ => (1 + η⁻¹) * (C * ‖x‖⁻¹) ^ 2) D) :=
          integral_mono_ae i1 ((i2.const_mul _).add i3) hpt
      _ = (1 + η) * (∫ D, ‖ut x D‖ ^ 2) + (1 + η⁻¹) * (C * ‖x‖⁻¹) ^ 2 * vQ := by
          have e1 : ∫ D, ((1 + η) * ‖ut x D‖ ^ 2 + Q.indicator (fun _ => (1 + η⁻¹) * (C * ‖x‖⁻¹) ^ 2) D) =
              (1 + η) * (∫ D, ‖ut x D‖ ^ 2) + ∫ D, Q.indicator (fun _ => (1 + η⁻¹) * (C * ‖x‖⁻¹) ^ 2) D := by
            rw [integral_add (i2.const_mul _) i3, integral_const_mul]
          have e2 : ∫ D, Q.indicator (fun _ => (1 + η⁻¹) * (C * ‖x‖⁻¹) ^ 2) D =
              (1 + η⁻¹) * (C * ‖x‖⁻¹) ^ 2 * vQ := by
            rw [integral_indicator hQm, setIntegral_const, smul_eq_mul, hvQ, Measure.real, mul_comm]
          rw [e1, e2]
      _ ≤ (1 + η) * SS + (1 + η⁻¹) * (C * ‖x‖⁻¹) ^ 2 * vQ := by
          have := mul_le_mul_of_nonneg_left (sup x hx) (by positivity : (0 : ℝ) ≤ 1 + η)
          linarith

  rw [← bz_indicator]
  refine le_of_forall_pos_lt_add fun δ hδ => ?_
  have hη : 0 < δ / (SS + 1) := by positivity
  have h1 := hbound _ hη
  have h2 : (1 + δ / (SS + 1)) * SS < SS + δ := by
    have : δ / (SS + 1) * SS < δ := by
      rw [div_mul_eq_mul_div, div_lt_iff₀ (by positivity)]
      nlinarith
    nlinarith
  linarith

end ss

end

end Formalism.FourierDecayAlt.P.PBK
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.ZeroNotMemPreimagePow =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.MemLpBzOfSup =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.MemLpBzOfSup", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.TendstoSmulCocompact\npublic import Mathlib.MeasureTheory.Integral.IntegrableOn\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ZeroNotMemPreimagePow\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.MeasureTheory.Function.L2Space\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.Monotonicity.Lemmas\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Presheaf\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.PBK

open Formalism.FourierDecayAlt Finset Filter Topology MeasureTheory
open scoped ComplexConjugate InnerProductSpace ENNReal

noncomputable section

open Classical

section ss2

variable {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]

theorem memLp_bz_of_sup {s : ℕ} (hs : s ≠ 0) {β : ℂ} (hβ : β ≠ 0) {ε : ℂ} (hε : ‖ε‖ = 1)
    (ut : ℂ → ℂ → H) (bt : ℂ → H) (SS : ℝ) (memU : ∀ x : ℂ, x ≠ 0 → MemLp (ut x) 2 volume)
    (sup : ∀ x : ℂ, x ≠ 0 → ∫ D, ‖ut x D‖ ^ 2 ≤ SS) (hbt : StronglyMeasurable bt)
    (hloc : ∀ K : Set ℂ, IsCompact K → (0 : ℂ) ∉ K → IntegrableOn (fun z => ‖bz s bt z‖ ^ 2) K)
    (germ : ∀ K : Set ℂ, IsCompact K → (0 : ℂ) ∉ K → ∃ C : ℝ, ∀ x : ℂ, x ≠ 0 →
      ∀ᵐ D, D ∈ K → ‖ut x D - mainD s β ε bt x D‖ ≤ C * ‖x‖⁻¹) :
    MemLp (bz s bt) 2 volume ∧ ∫ z, ‖bz s bt z‖ ^ 2 ≤ SS := by
  have hSS : 0 ≤ SS := (integral_nonneg fun D => sq_nonneg ‖ut 1 D‖).trans (sup 1 one_ne_zero)
  have hε0 : ε ≠ 0 := by
    intro h; rw [h, norm_zero] at hε; exact zero_ne_one hε
  let K : ℕ → Set ℂ := fun n => {z : ℂ | ε⁻¹ * z ^ s ∈ ann n}
  have hKc : ∀ n, IsCompact (K n) := fun n => isCompact_preimage_pow hs hε (isCompact_ann n)
  have hK0 : ∀ n, (0 : ℂ) ∉ K n := fun n => zero_notMem_preimage_pow hs ε (zero_notMem_ann n)
  have hKm : ∀ n, MeasurableSet (K n) := fun n => (hKc n).isClosed.measurableSet
  have hbm : StronglyMeasurable (bz s bt) := stronglyMeasurable_bz s hbt
  have hmem : ∀ n, MemLp ((K n).indicator (bz s bt)) 2 volume := fun n =>
    memLp_indicator_bz hbt (hKm n) (hloc _ (hKc n) (hK0 n))
  have hbound : ∀ n, ∫ z, ‖(K n).indicator (bz s bt) z‖ ^ 2 ≤ SS := fun n => by
    obtain ⟨C, hC⟩ := germ (ann n) (isCompact_ann n) (zero_notMem_ann n)
    exact integral_bz_Q_le hs hβ hε ut bt SS memU sup hbt (ann n) (isCompact_ann n)
      (hloc _ (hKc n) (hK0 n)) C hC
  let g : ℕ → ℂ → ℝ≥0∞ := fun n z => ENNReal.ofReal (‖(K n).indicator (bz s bt) z‖ ^ 2)
  have hgm : ∀ n, Measurable (g n) := fun n =>
    ENNReal.measurable_ofReal.comp (((hbm.indicator (hKm n)).norm.measurable).pow_const 2)
  have hKmono : Monotone K := fun m n hmn z hz => ann_mono hmn hz
  have hgmono : Monotone g := by
    intro m n hmn z
    apply ENNReal.ofReal_le_ofReal
    by_cases hz : z ∈ K m
    · simp only [Set.indicator_of_mem hz, Set.indicator_of_mem (hKmono hmn hz), le_refl]
    · rw [Set.indicator_of_notMem hz, norm_zero, zero_pow two_ne_zero]
      positivity
  have hgn : ∀ n, ∫⁻ z, g n z ≤ ENNReal.ofReal SS := fun n => by
    have hi : Integrable (fun z => ‖(K n).indicator (bz s bt) z‖ ^ 2) :=
      (memLp_two_iff_integrable_sq_norm (hmem n).aestronglyMeasurable).1 (hmem n)
    show ∫⁻ z, ENNReal.ofReal (‖(K n).indicator (bz s bt) z‖ ^ 2) ≤ _
    rw [← ofReal_integral_eq_lintegral_ofReal hi (ae_of_all _ fun z => sq_nonneg _)]
    exact ENNReal.ofReal_le_ofReal (hbound n)
  have hsup : (fun z => ENNReal.ofReal (‖bz s bt z‖ ^ 2)) =ᵐ[volume] fun z => ⨆ n, g n z := by
    have h0 : ∀ᵐ z : ℂ ∂volume, z ≠ 0 := by
      rw [ae_iff]; simp
    filter_upwards [h0] with z hz
    have hw : ε⁻¹ * z ^ s ≠ 0 := mul_ne_zero (inv_ne_zero hε0) (pow_ne_zero _ hz)
    obtain ⟨n, hn⟩ := exists_mem_ann hw
    apply le_antisymm
    · refine le_iSup_of_le n (le_of_eq ?_)
      show ENNReal.ofReal (‖bz s bt z‖ ^ 2) = ENNReal.ofReal (‖(K n).indicator (bz s bt) z‖ ^ 2)
      rw [Set.indicator_of_mem (show z ∈ K n from hn)]
    · refine iSup_le fun m => ENNReal.ofReal_le_ofReal ?_
      by_cases hzm : z ∈ K m
      · simp only [Set.indicator_of_mem hzm, le_refl]
      · rw [Set.indicator_of_notMem hzm, norm_zero, zero_pow two_ne_zero]
        positivity
  have hlin : ∫⁻ z, ENNReal.ofReal (‖bz s bt z‖ ^ 2) ≤ ENNReal.ofReal SS := by
    rw [lintegral_congr_ae hsup, lintegral_iSup hgm hgmono]
    exact iSup_le hgn
  have hint : Integrable (fun z => ‖bz s bt z‖ ^ 2) := by
    refine ⟨(hbm.norm.measurable.pow_const 2).aestronglyMeasurable, ?_⟩
    rw [hasFiniteIntegral_iff_ofReal (ae_of_all _ fun z => sq_nonneg _)]
    exact lt_of_le_of_lt hlin ENNReal.ofReal_lt_top
  refine ⟨(memLp_two_iff_integrable_sq_norm hbm.aestronglyMeasurable).2 hint, ?_⟩
  rw [integral_eq_lintegral_of_nonneg_ae (ae_of_all _ fun z => sq_nonneg _)
    (hbm.norm.measurable.pow_const 2).aestronglyMeasurable]
  exact ENNReal.toReal_le_of_le_ofReal hSS hlin

end ss2

end

end Formalism.FourierDecayAlt.P.PBK
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.MemLpBzOfSup =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.TendstoIntegralInnerGermMoving =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.TendstoIntegralInnerGermMoving", "h": "module\n\npublic import Mathlib.Analysis.CStarAlgebra.Module.Constructions\npublic import Mathlib.MeasureTheory.Integral.Bochner.Basic\nimport Aesop.Main\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.MeasureTheory.Function.L2Space\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.MeasureTheory.Integral.DominatedConvergence\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.PBK

open Formalism.FourierDecayAlt Finset Filter Topology MeasureTheory
open scoped ComplexConjugate InnerProductSpace

noncomputable section

section L2m

variable {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H]

private lemma mul_le_young_bounds_of_le_add {nF nG g e t δ : ℝ} (ht : 0 < t) (hδ : 0 ≤ δ) (hnF : 0 ≤ nF)
    (hG : nG ≤ g + e) :
    (nF ≤ δ → nF * nG ≤ t * nF ^ 2 + (0 + e ^ 2) / (2 * t) + δ / 2 * (1 + g ^ 2)) ∧
      nF * nG ≤ t * nF ^ 2 + (g ^ 2 + e ^ 2) / (2 * t) + δ / 2 * (0 + g ^ 2) := by
  have h2t : 0 < 2 * t := by positivity
  have hGa : nF * nG ≤ nF * |g| + nF * |e| := by
    have : nG ≤ |g| + |e| := hG.trans (add_le_add (le_abs_self g) (le_abs_self e))
    nlinarith

  have hA : ∀ y : ℝ, nF * |y| ≤ t * nF ^ 2 / 2 + y ^ 2 / (2 * t) := by
    intro y
    rw [show t * nF ^ 2 / 2 + y ^ 2 / (2 * t) = (t ^ 2 * nF ^ 2 + y ^ 2) / (2 * t) by field_simp <;> ring,
      le_div_iff₀ h2t]
    nlinarith [sq_nonneg (t * nF - |y|), sq_abs y]
  have hg1 : |g| ≤ (1 + g ^ 2) / 2 := by nlinarith [sq_nonneg (|g| - 1), sq_abs g]
  refine ⟨fun hK => ?_, ?_⟩
  · have h1 : nF * |g| ≤ δ * |g| := mul_le_mul_of_nonneg_right hK (abs_nonneg g)
    have h2 : δ * |g| ≤ δ / 2 * (1 + g ^ 2) := by nlinarith
    have h3 := hA e
    have h4 : t * nF ^ 2 / 2 ≤ t * nF ^ 2 := by nlinarith [sq_nonneg nF]
    have h5 : (0 + e ^ 2) / (2 * t) = e ^ 2 / (2 * t) := by ring
    rw [h5]
    linarith
  · have h3 := hA e
    have h4 := hA g
    have h5 : (g ^ 2 + e ^ 2) / (2 * t) = g ^ 2 / (2 * t) + e ^ 2 / (2 * t) := by ring
    have h6 : 0 ≤ δ / 2 * (0 + g ^ 2) := by positivity
    rw [h5]
    linarith

private lemma exists_isCompact_integral_compl_sq_lt (μ : Measure ℂ) [NullSingletonClass μ] {g : ℂ → ℝ}
    (hg2 : Integrable (fun D => g D ^ 2) μ) {η : ℝ} (hη : 0 < η) :
    ∃ K : Set ℂ, IsCompact K ∧ (0 : ℂ) ∉ K ∧ ∫ D, Kᶜ.indicator (fun D => g D ^ 2) D ∂μ < η := by
  let Kn : ℕ → Set ℂ := fun n => Metric.closedBall (0 : ℂ) (n + 1) \ Metric.ball 0 (1 / (n + 1))
  have hKc : ∀ n, IsCompact (Kn n) := fun n => (isCompact_closedBall 0 _).diff Metric.isOpen_ball
  have h0K : ∀ n, (0 : ℂ) ∉ Kn n := by
    intro n h
    exact h.2 (Metric.mem_ball_self (by positivity))
  have hlim : Tendsto (fun n : ℕ => ∫ D, (Kn n)ᶜ.indicator (fun D => g D ^ 2) D ∂μ) atTop (𝓝 0) := by
    have h := tendsto_integral_of_dominated_convergence (μ := μ) (fun D => g D ^ 2)
      (F := fun n D => (Kn n)ᶜ.indicator (fun D => g D ^ 2) D) (f := fun _ => (0 : ℝ))
      (fun n => (hg2.indicator (hKc n).isClosed.measurableSet.compl).aestronglyMeasurable) hg2
      (fun n => Filter.Eventually.of_forall fun D => by
        rw [Real.norm_eq_abs, abs_of_nonneg (Set.indicator_nonneg (fun _ _ => sq_nonneg _) _)]
        exact Set.indicator_le_self' (fun _ _ => sq_nonneg _) D)
      (by
        have h0 : ∀ᵐ D ∂μ, D ≠ (0 : ℂ) := compl_mem_ae_iff.2 (measure_singleton 0)
        filter_upwards [h0] with D hD
        have hpos : 0 < ‖D‖ := norm_pos_iff.2 hD
        obtain ⟨N, hN⟩ := exists_nat_gt (max (1 / ‖D‖) ‖D‖)
        apply tendsto_const_nhds.congr'
        filter_upwards [eventually_ge_atTop N] with n hn
        have hn' : (N : ℝ) ≤ n := by exact_mod_cast hn
        have ha : 1 / ‖D‖ < n + 1 := by linarith [le_max_left (1 / ‖D‖) ‖D‖]
        have hb : ‖D‖ < n + 1 := by linarith [le_max_right (1 / ‖D‖) ‖D‖]
        have hmem : D ∈ Kn n := by
          refine ⟨?_, ?_⟩
          · rw [Metric.mem_closedBall, dist_zero_right]
            exact hb.le
          · rw [Metric.mem_ball, dist_zero_right, not_lt]
            rw [div_le_iff₀ (by positivity)]
            rw [div_lt_iff₀ hpos] at ha
            linarith
        simp [hmem])
    simpa using h
  obtain ⟨n, hn⟩ := (hlim.eventually (gt_mem_nhds hη)).exists
  exact ⟨Kn n, hKc n, h0K n, hn⟩

theorem tendsto_integral_inner_germ_moving {α : Type} {l : Filter α} (μ : Measure ℂ) [IsFiniteMeasureOnCompacts μ]
    [NullSingletonClass μ] (F G : α → ℂ → H) (g : ℂ → ℝ) (e : α → ℂ → ℝ) (hg : MemLp g 2 μ) (B : ℝ)
    (hF : ∀ᶠ x in l, MemLp (F x) 2 μ ∧ ∫ D, ‖F x D‖ ^ 2 ∂μ ≤ B)
    (he : ∀ᶠ x in l, MemLp (e x) 2 μ)
    (he0 : Tendsto (fun x => ∫ D, e x D ^ 2 ∂μ) l (𝓝 0))
    (hG : ∀ᶠ x in l, ∀ᵐ D ∂μ, ‖G x D‖ ≤ g D + e x D)
    (hloc : ∀ K : Set ℂ, IsCompact K → (0 : ℂ) ∉ K → ∀ δ : ℝ, 0 < δ →
      ∀ᶠ x in l, ∀ᵐ D ∂μ, D ∈ K → ‖F x D‖ ≤ δ) :
    Tendsto (fun x => ∫ D, ⟪F x D, G x D⟫_ℂ ∂μ) l (𝓝 0) := by
  rw [Metric.tendsto_nhds]
  intro ε hε
  set B' : ℝ := max B 0 + 1 with hB'
  have hB'pos : 0 < B' := by positivity
  set t : ℝ := ε / (4 * B') with ht_def
  have ht : 0 < t := by positivity
  have hg2 : Integrable (fun D => g D ^ 2) μ := hg.integrable_sq
  obtain ⟨K, hKc, h0K, hKint⟩ := exists_isCompact_integral_compl_sq_lt μ hg2 (η := ε * t / 2) (by positivity)
  have hKmeas : MeasurableSet K := hKc.isClosed.measurableSet
  have hKfin : μ K < ⊤ := hKc.measure_lt_top
  have hI1 : Integrable (K.indicator (fun _ => (1 : ℝ))) μ :=
    (integrable_indicator_iff hKmeas).2 (integrableOn_const hKfin.ne)
  set M : ℝ := ∫ D, K.indicator (fun _ => (1 : ℝ)) D ∂μ + ∫ D, g D ^ 2 ∂μ + 1 with hM_def
  have hM : 0 < M := by
    have h1 : 0 ≤ ∫ D, K.indicator (fun _ => (1 : ℝ)) D ∂μ :=
      integral_nonneg fun D => Set.indicator_nonneg (fun _ _ => zero_le_one) D
    have h2 : 0 ≤ ∫ D, g D ^ 2 ∂μ := integral_nonneg fun D => sq_nonneg _
    linarith
  set δ : ℝ := ε / (4 * M) with hδ_def
  have hδ : 0 < δ := by positivity
  have he' : ∀ᶠ x in l, ∫ D, e x D ^ 2 ∂μ < ε * t / 2 := he0.eventually (gt_mem_nhds (by positivity))
  filter_upwards [hF, he, he', hG, hloc K hKc h0K δ hδ] with x hFx hex he2 hGx hlx
  have hFmem : MemLp (F x) 2 μ := hFx.1
  rw [dist_zero_right]
  have hF2 : Integrable (fun D => ‖F x D‖ ^ 2) μ :=
    (memLp_two_iff_integrable_sq_norm hFmem.aestronglyMeasurable).1 hFmem
  have he2i : Integrable (fun D => e x D ^ 2) μ := hex.integrable_sq
  have hIc : Integrable (Kᶜ.indicator (fun D => g D ^ 2)) μ := hg2.indicator hKmeas.compl
  have i1 : Integrable (fun D => t * ‖F x D‖ ^ 2) μ := hF2.const_mul t
  have i2 : Integrable (fun D => (Kᶜ.indicator (fun D => g D ^ 2) D + e x D ^ 2) / (2 * t)) μ :=
    (hIc.add he2i).div_const _
  have i3 : Integrable (fun D => δ / 2 * (K.indicator (fun _ => (1 : ℝ)) D + g D ^ 2)) μ :=
    (hI1.add hg2).const_mul _
  have i12 : Integrable (fun D => t * ‖F x D‖ ^ 2 +
      (Kᶜ.indicator (fun D => g D ^ 2) D + e x D ^ 2) / (2 * t)) μ := i1.add i2
  have hbnd : ∀ᵐ D ∂μ, ‖⟪F x D, G x D⟫_ℂ‖ ≤
      t * ‖F x D‖ ^ 2 + (Kᶜ.indicator (fun D => g D ^ 2) D + e x D ^ 2) / (2 * t) +
        δ / 2 * (K.indicator (fun _ => (1 : ℝ)) D + g D ^ 2) := by
    filter_upwards [hGx, hlx] with D hGD hlD
    have h1 : ‖⟪F x D, G x D⟫_ℂ‖ ≤ ‖F x D‖ * ‖G x D‖ := norm_inner_le_norm _ _
    have hP := mul_le_young_bounds_of_le_add ht hδ.le (norm_nonneg (F x D)) hGD
    by_cases hD : D ∈ K
    · have hi1 : K.indicator (fun _ => (1 : ℝ)) D = 1 := by simp [hD]
      have hi2 : Kᶜ.indicator (fun D => g D ^ 2) D = 0 := by simp [hD]
      rw [hi1, hi2]
      exact h1.trans (hP.1 (hlD hD))
    · have hi1 : K.indicator (fun _ => (1 : ℝ)) D = 0 := by simp [hD]
      have hi2 : Kᶜ.indicator (fun D => g D ^ 2) D = g D ^ 2 := by simp [hD]
      rw [hi1, hi2]
      exact h1.trans hP.2
  have hsplit : ∫ D, (t * ‖F x D‖ ^ 2 + (Kᶜ.indicator (fun D => g D ^ 2) D + e x D ^ 2) / (2 * t) +
        δ / 2 * (K.indicator (fun _ => (1 : ℝ)) D + g D ^ 2)) ∂μ =
      t * ∫ D, ‖F x D‖ ^ 2 ∂μ + (∫ D, Kᶜ.indicator (fun D => g D ^ 2) D ∂μ + ∫ D, e x D ^ 2 ∂μ) / (2 * t) +
        δ / 2 * (M - 1) := by
    rw [integral_add i12 i3, integral_add i1 i2, integral_const_mul, integral_div,
      integral_add hIc he2i, integral_const_mul, integral_add hI1 hg2]
    simp only [hM_def]
    ring
  have hle : ‖∫ D, ⟪F x D, G x D⟫_ℂ ∂μ‖ ≤ t * ∫ D, ‖F x D‖ ^ 2 ∂μ +
      (∫ D, Kᶜ.indicator (fun D => g D ^ 2) D ∂μ + ∫ D, e x D ^ 2 ∂μ) / (2 * t) + δ / 2 * (M - 1) := by
    rw [← hsplit]
    exact (norm_integral_le_integral_norm _).trans
      (integral_mono_of_nonneg (Filter.Eventually.of_forall fun _ => norm_nonneg _) (i12.add i3) hbnd)
  have hb1 : t * ∫ D, ‖F x D‖ ^ 2 ∂μ ≤ ε / 4 := by
    have hFB' : ∫ D, ‖F x D‖ ^ 2 ∂μ ≤ B' := by linarith [le_max_left B 0]
    have : t * B' = ε / 4 := by rw [ht_def]; field_simp
    nlinarith
  have hb2 : (∫ D, Kᶜ.indicator (fun D => g D ^ 2) D ∂μ + ∫ D, e x D ^ 2 ∂μ) / (2 * t) ≤ ε / 2 := by
    rw [div_le_iff₀ (by positivity)]
    nlinarith
  have hb3 : δ / 2 * (M - 1) ≤ ε / 8 := by
    have : δ * M = ε / 4 := by rw [hδ_def]; field_simp
    nlinarith
  linarith

end L2m

end

end Formalism.FourierDecayAlt.P.PBK
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.TendstoIntegralInnerGermMoving =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.TendstoRatioPow =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.TendstoRatioPow", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.AestronglyMeasurableMainD\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.GermRealisation\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.IntegralNormCvecSq\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.GermFibreKernels\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.MemLpBzOfSup\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.TendstoIntegralInnerGermMoving\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.PBK

open Formalism.FourierDecayAlt Finset Filter Topology MeasureTheory
open scoped ComplexConjugate InnerProductSpace

noncomputable section

open Classical

section propGD

variable {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]

structure GermD {ι : Type} (s : ℕ) (β ε : ℂ) (Y : Finset ι) (ut : ι → ℂ → ℂ → H) (bt : ι → ℂ → H) (SS : ℝ) :
    Prop where
  hs : s ≠ 0
  hβ : β ≠ 0
  hε : ‖ε‖ = 1
  memU : ∀ h ∈ Y, ∀ x : ℂ, x ≠ 0 → MemLp (ut h x) 2 volume
  sup : ∀ h ∈ Y, ∀ x : ℂ, x ≠ 0 → ∫ D, ‖ut h x D‖ ^ 2 ≤ SS
  meas : ∀ h ∈ Y, StronglyMeasurable (bt h)
  loc : ∀ h ∈ Y, ∀ K : Set ℂ, IsCompact K → (0 : ℂ) ∉ K → IntegrableOn (fun z => ‖bz s (bt h) z‖ ^ 2) K
  germ : ∀ h ∈ Y, ∀ K : Set ℂ, IsCompact K → (0 : ℂ) ∉ K → ∃ C : ℝ, ∀ x : ℂ, x ≠ 0 →
    ∀ᵐ D, D ∈ K → ‖ut h x D - mainD s β ε (bt h) x D‖ ≤ C * ‖x‖⁻¹

def Uc {ι : Type} (s : ℕ) (ut : ι → ℂ → ℂ → H) : ι × ℂ → ℂ → H := fun p => cvec s (ut p.1) p.2

def Ac {ι : Type} (s : ℕ) (β ε : ℂ) (bt : ι → ℂ → H) : ι × ℂ → ℂ → H :=
  fun p => cvec s (fun x D => mainD s β ε (bt p.1) x D) p.2

def Nhat {ι : Type} (s : ℕ) (β : ℂ) (bt : ι → ℂ → H) (σ : ℂ) (h h' : ι) : ℂ :=
  ∫ z, G.psi β (σ * z) • ⟪bz s (bt h) z, bz s (bt h') z⟫_ℂ

theorem tendsto_ratio_pow (s : ℕ) (a b : ℂ) :
    Tendsto (fun x : ℂ => (x + a) ^ (s - 1) / (x + b) ^ (s - 1)) (cocompact ℂ) (𝓝 1) := by
  have hn : Tendsto (fun x : ℂ => ‖x + b‖) (cocompact ℂ) atTop := by
    have h0 : Tendsto (fun x : ℂ => ‖x‖) (cocompact ℂ) atTop := tendsto_norm_cocompact_atTop
    refine tendsto_atTop_mono (fun x => ?_) (tendsto_atTop_add_const_right _ (-‖b‖) h0)
    have := norm_sub_norm_le x (-b)
    rw [norm_neg, sub_neg_eq_add] at this
    linarith
  have hi : Tendsto (fun x : ℂ => (x + b)⁻¹) (cocompact ℂ) (𝓝 0) := by
    rw [tendsto_zero_iff_norm_tendsto_zero]
    exact (tendsto_inv_atTop_zero.comp hn).congr fun x => by simp [norm_inv]
  have hne : ∀ᶠ x in cocompact ℂ, x + b ≠ 0 :=
    (hn.eventually_gt_atTop 0).mono fun x hx => norm_pos_iff.mp hx
  have hq : Tendsto (fun x : ℂ => 1 + (a - b) * (x + b)⁻¹) (cocompact ℂ) (𝓝 1) := by
    simpa using (tendsto_const_nhds (x := (1 : ℂ))).add ((tendsto_const_nhds (x := a - b)).mul hi)
  have hp := hq.pow (s - 1)
  rw [one_pow] at hp
  refine hp.congr' ?_
  filter_upwards [hne] with x hx
  rw [← div_pow]
  congr 1
  first
  | (field_simp; ring)

variable {ι : Type} {s : ℕ} {β ε : ℂ} {Y : Finset ι} {ut : ι → ℂ → ℂ → H} {bt : ι → ℂ → H} {SS : ℝ}

theorem GermD.memLp_bz (hG : GermD s β ε Y ut bt SS) {h : ι} (hh : h ∈ Y) :
    MemLp (bz s (bt h)) 2 volume ∧ ∫ z, ‖bz s (bt h) z‖ ^ 2 ≤ SS := memLp_bz_of_sup hG.hs hG.hβ hG.hε (ut h) (bt h) SS (hG.memU h hh) (hG.sup h hh)
    (hG.meas h hh) (hG.loc h hh) (hG.germ h hh)

theorem GermD.memLp_abar (hG : GermD s β ε Y ut bt SS) {h : ι} (hh : h ∈ Y) :
    MemLp (abar s ε (bt h)) 2 volume ∧ ∫ D, abar s ε (bt h) D ^ 2 ≤ s * SS := by
  obtain ⟨hb, hbS⟩ := hG.memLp_bz hh
  obtain ⟨h1, h2⟩ := Formalism.FourierDecayAlt.P.PBK.memLp_abar hG.hs hG.hε (hG.meas h hh) hb
  exact ⟨h1, h2.trans (mul_le_mul_of_nonneg_left hbS (Nat.cast_nonneg s))⟩

theorem GermD.memLp_mainD (hG : GermD s β ε Y ut bt SS) {h : ι} (hh : h ∈ Y) (x : ℂ) :
    MemLp (mainD s β ε (bt h) x) 2 volume := Formalism.FourierDecayAlt.P.PBK.memLp_mainD hG.hs β hG.hε (hG.meas h hh) (hG.memLp_bz hh).1 x

theorem GermD.tendsto_cross (hG : GermD s β ε Y ut bt SS) {h h' : ι} (hh : h ∈ Y) (hh' : h' ∈ Y) (a b : ℂ) :
    Tendsto (fun x => ∫ c, ⟪cvec s (fun x D => ut h x D - mainD s β ε (bt h) x D) (x + a) c,
      cvec s (fun x D => mainD s β ε (bt h') x D) (x + b) c⟫_ℂ) (cocompact ℂ) (𝓝 0) := by
  obtain ⟨hab', habS'⟩ := hG.memLp_abar hh'
  obtain ⟨hab, habS⟩ := hG.memLp_abar hh
  obtain ⟨hdom1, hdom2, hdom3⟩ := dil_dominator (abar s ε (bt h')) hab'
    (fun x : ℂ => (x + a) ^ (s - 1) / (x + b) ^ (s - 1)) (tendsto_ratio_pow s a b)
  have hev : ∀ᶠ x in cocompact ℂ, x + a ≠ 0 ∧ x + b ≠ 0 := by
    filter_upwards [eventually_ne_cocompact (-a), eventually_ne_cocompact (-b)] with x ha hb
    exact ⟨fun h0 => ha (eq_neg_of_add_eq_zero_left h0), fun h0 => hb (eq_neg_of_add_eq_zero_left h0)⟩
  have key : ∀ᶠ x in cocompact ℂ,
      ∫ D, ⟪ut h (x + a) D - mainD s β ε (bt h) (x + a) D,
        ((‖(x + a) ^ (s - 1) / (x + b) ^ (s - 1)‖ : ℝ) : ℂ) •
          mainD s β ε (bt h') (x + b) ((x + a) ^ (s - 1) / (x + b) ^ (s - 1) * D)⟫_ℂ
      = ∫ c, ⟪cvec s (fun x D => ut h x D - mainD s β ε (bt h) x D) (x + a) c,
          cvec s (fun x D => mainD s β ε (bt h') x D) (x + b) c⟫_ℂ := by
    filter_upwards [hev] with x hx
    rw [cvec_inner s _ _ (x + a) (x + b) hx.1 hx.2]
  refine Tendsto.congr' key ?_
  refine tendsto_integral_inner_germ_moving volume
    (fun x D => ut h (x + a) D - mainD s β ε (bt h) (x + a) D)
    (fun x D => ((‖(x + a) ^ (s - 1) / (x + b) ^ (s - 1)‖ : ℝ) : ℂ) •
      mainD s β ε (bt h') (x + b) ((x + a) ^ (s - 1) / (x + b) ^ (s - 1) * D))
    (abar s ε (bt h'))
    (fun x D => |‖(x + a) ^ (s - 1) / (x + b) ^ (s - 1)‖ *
      abar s ε (bt h') ((x + a) ^ (s - 1) / (x + b) ^ (s - 1) * D) - abar s ε (bt h') D|)
    hab' (2 * SS + 2 * (s * SS)) ?_ hdom2 hdom3 ?_ ?_
  · filter_upwards [hev] with x hx
    have hu := hG.memU h hh _ hx.1
    have hm := hG.memLp_mainD hh (x + a)
    refine ⟨hu.sub hm, ?_⟩
    have h1 := integral_sq_sub_le hu hm hab (ae_of_all _ fun D => norm_mainD_le s β ε (bt h) (x + a) D)
    have hb := hG.sup h hh _ hx.1
    linarith
  · filter_upwards with x
    refine ae_of_all _ fun D => ?_
    rw [norm_smul, Complex.norm_real, Real.norm_of_nonneg (norm_nonneg _)]
    exact (mul_le_mul_of_nonneg_left (norm_mainD_le _ _ _ _ _ _) (norm_nonneg _)).trans (hdom1 x D)
  · intro K hK hK0 δ hδ
    obtain ⟨C, hC⟩ := hG.germ h hh K hK hK0
    filter_upwards [hev, eventually_rate_cocompact a C δ hδ] with x hx hr
    filter_upwards [hC _ hx.1] with D hD hDK
    exact (hD hDK).trans hr

theorem GermD.propG (hG : GermD s β ε Y ut bt SS) :
    (∀ h ∈ Y, MemLp (bz s (bt h)) 2 volume ∧ ∫ z, ‖bz s (bt h) z‖ ^ 2 ≤ SS) ∧
    (∀ Xs : Finset ℂ, (∀ x ∈ Xs, x ≠ 0) →
      KB.BlockPSD (Y ×ˢ Xs) (Y ×ˢ Xs) (gramL volume (Uc s ut) (Uc s ut)) (gramL volume (Uc s ut) (Ac s β ε bt))
        (gramL volume (Ac s β ε bt) (Ac s β ε bt))) ∧
    (∃ B' : ℝ, ∀ h ∈ Y, ∀ x : ℂ, x ≠ 0 → ‖gramL volume (Ac s β ε bt) (Ac s β ε bt) (h, x) (h, x)‖ ≤ B') ∧
    ∀ h ∈ Y, ∀ h' ∈ Y, ∀ σ : ℂ,
      Tendsto (fun x => gramL volume (Ac s β ε bt) (Ac s β ε bt) (h, x) (h', x + σ)) (cocompact ℂ)
        (𝓝 (Nhat s β bt σ h h')) ∧
      Tendsto (fun x => gramL volume (Uc s ut) (Ac s β ε bt) (h, x) (h', x + σ)) (cocompact ℂ)
        (𝓝 (Nhat s β bt σ h h')) ∧
      Tendsto (fun x => conj (gramL volume (Uc s ut) (Ac s β ε bt) (h', x + σ) (h, x))) (cocompact ℂ)
        (𝓝 (Nhat s β bt σ h h')) := by
  have hs1 : 1 ≤ s := Nat.one_le_iff_ne_zero.mpr hG.hs
  have memUc : ∀ h ∈ Y, ∀ x : ℂ, x ≠ 0 → MemLp (Uc s ut (h, x)) 2 volume := fun h hh x hx =>
    (memLp_cvec s (ut h) x hx).1 (hG.memU h hh x hx)
  have memAc : ∀ h ∈ Y, ∀ x : ℂ, x ≠ 0 → MemLp (Ac s β ε bt (h, x)) 2 volume := fun h hh x hx =>
    (memLp_cvec s (fun x D => mainD s β ε (bt h) x D) x hx).1 (hG.memLp_mainD hh x)
  refine ⟨fun h hh => hG.memLp_bz hh, fun Xs hXs => blockPSD_gramL volume Y _ _ memUc memAc Xs hXs, ?_, ?_⟩
  ·
    refine ⟨s * SS, fun h hh x hx => ?_⟩
    obtain ⟨hab, habS⟩ := hG.memLp_abar hh
    have hmD := hG.memLp_mainD hh x
    have i1 : Integrable (fun D => ‖mainD s β ε (bt h) x D‖ ^ 2) :=
      (memLp_two_iff_integrable_sq_norm hmD.aestronglyMeasurable).1 hmD
    have i2 : Integrable (fun D => abar s ε (bt h) D ^ 2) := hab.integrable_sq
    calc ‖gramL volume (Ac s β ε bt) (Ac s β ε bt) (h, x) (h, x)‖
        ≤ ∫ c, ‖⟪Ac s β ε bt (h, x) c, Ac s β ε bt (h, x) c⟫_ℂ‖ := norm_integral_le_integral_norm _
      _ = ∫ c, ‖Ac s β ε bt (h, x) c‖ ^ 2 := by
          refine integral_congr_ae (Eventually.of_forall fun c => ?_)
          simp only
          rw [inner_self_eq_norm_sq_to_K]
          norm_cast
          exact abs_of_nonneg (sq_nonneg _)
      _ = ∫ D, ‖mainD s β ε (bt h) x D‖ ^ 2 := integral_norm_cvec_sq s _ x hx
      _ ≤ ∫ D, abar s ε (bt h) D ^ 2 := by
          refine integral_mono i1 i2 fun D => ?_
          exact pow_le_pow_left₀ (norm_nonneg _) (norm_mainD_le s β ε (bt h) x D) 2
      _ ≤ s * SS := habS
  · intro h hh h' hh' σ

    have hAA : Tendsto (fun x => gramL volume (Ac s β ε bt) (Ac s β ε bt) (h, x) (h', x + σ)) (cocompact ℂ)
        (𝓝 (Nhat s β bt σ h h')) := by
      have hρ0 : ∀ᶠ x in cocompact ℂ, rhoR s σ x ≠ 0 :=
        (tendsto_rhoR s σ).eventually_ne one_ne_zero
      have hT := tendsto_pairD hG.hs hG.hβ hG.hε (hG.memLp_bz hh).1 (hG.memLp_bz hh').1 (l := cocompact ℂ)
        id (fun x => x + σ) (rhoR s σ) σ hρ0 (tendsto_rhoR s σ) (tendsto_shift s hs1 σ)
        (fun ζ _ hζ => tendsto_shift_ne s hs1 σ ζ hζ)
      refine hT.congr' ?_
      filter_upwards [eventually_ne_zero_add σ] with x hx
      exact (pairD_of_cvec hG.hs β ε (bt h) (bt h') σ x hx.1 hx.2).symm
    refine ⟨hAA, ?_, ?_⟩
    · have hR := hG.tendsto_cross hh hh' 0 σ
      simp only [add_zero] at hR
      have hsum := hAA.add hR
      rw [add_zero] at hsum
      refine hsum.congr' ?_
      filter_upwards [eventually_ne_zero_add σ] with x hx
      have iA := integrable_inner_of_memLp (memAc h hh x hx.1) (memAc h' hh' _ hx.2)
      have iR : Integrable (fun c => ⟪cvec s (fun x D => ut h x D - mainD s β ε (bt h) x D) x c,
          cvec s (fun x D => mainD s β ε (bt h') x D) (x + σ) c⟫_ℂ) := by
        refine integrable_inner_of_memLp ?_ (memAc h' hh' _ hx.2)
        exact (memLp_cvec s _ x hx.1).1 ((hG.memU h hh x hx.1).sub (hG.memLp_mainD hh x))
      simp only [gramL]
      rw [← integral_add iA iR]
      refine integral_congr_ae (Eventually.of_forall fun c => ?_)
      simp only [Uc, Ac]
      rw [← cvec_sub, inner_sub_left]
      ring
    · have hR := hG.tendsto_cross hh' hh σ 0
      simp only [add_zero] at hR
      have hRc := ((Complex.continuous_conj.tendsto 0).comp hR)
      simp only [map_zero] at hRc
      have hsum := hAA.add hRc
      rw [add_zero] at hsum
      refine hsum.congr' ?_
      filter_upwards [eventually_ne_zero_add σ] with x hx
      have iA := integrable_inner_of_memLp (memAc h hh x hx.1) (memAc h' hh' _ hx.2)
      have iR : Integrable (fun c => ⟪cvec s (fun x D => mainD s β ε (bt h) x D) x c,
          cvec s (fun x D => ut h' x D - mainD s β ε (bt h') x D) (x + σ) c⟫_ℂ) := by
        refine integrable_inner_of_memLp (memAc h hh x hx.1) ?_
        exact (memLp_cvec s _ _ hx.2).1 ((hG.memU h' hh' _ hx.2).sub (hG.memLp_mainD hh' _))
      simp only [gramL, Function.comp_apply]
      rw [← integral_conj, ← integral_conj]
      simp only [inner_conj_symm]
      rw [← integral_add iA iR]
      refine integral_congr_ae (Eventually.of_forall fun c => ?_)
      simp only [Uc, Ac]
      rw [← cvec_sub, inner_sub_right]
      ring

end propGD

end

end Formalism.FourierDecayAlt.P.PBK
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.TendstoRatioPow =====
