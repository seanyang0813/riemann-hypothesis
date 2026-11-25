module

public import GroundTheory.HeightsAndTheta.Heights.Regularisation.StatementsTruncPsh
public import GroundTheory.HeightsAndTheta.Heights.Regularisation.StatementsTruncTransfer
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Order.CompletePartialOrder
public import ReciprocityTheory.AnalyticForms.PlurisubharmonicFunctions.PshMoll

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Regular

open Metric
open ReciprocityTheory.AnForm.A (polyMax molli mollify_thm polyMax_le' polyMax_mono')

noncomputable section

theorem log_inv_facts {t a : ℝ} (ht : 0 < t) (ha : 0 ≤ a)
    (hta : t < Real.exp (-(Real.exp 1 + 2 * a))) :
    Real.exp 1 + 2 * a < Real.log t⁻¹ ∧ 1 < Real.log (Real.log t⁻¹) := by
  have h1 : Real.log t < -(Real.exp 1 + 2 * a) := by
    simpa [Real.log_exp] using Real.log_lt_log ht hta
  rw [Real.log_inv]
  have he := Real.exp_pos 1
  exact ⟨by linarith, (Real.lt_log_iff_exp_lt (by linarith)).2 (by linarith)⟩

theorem ChartComparison.proof (h0 : MollifiedLowerBound.Statement)
    (h1 : PolyMaxOscillation.Statement) (h2 : PolyMaxLowerBound.Statement)
    (h3 : TruncPsh.Statement) (h4 : TruncTransfer.Statement) : ChartComparison.Statement := by
  intro X _ _ _ D A R ρ
  obtain ⟨δ, B₀, hδ, hV⟩ := h3 X D A R
  choose V hVo _hVt hVball hVpsh using hV
  obtain ⟨δ₁, L, B₁, hδ₁, hL, hT⟩ := h4 X D A R
  obtain ⟨C₂, t₂, ht₂, hlow⟩ := h2 X D A R
  obtain ⟨b, hb⟩ := mollifier_exists_bound ρ
  have hb0 : 0 ≤ b := (ρ.nonneg 0).trans (hb 0)
  let c₀ : ℝ := Real.pi ^ D * (3 / 2 : ℝ) ^ (2 * D) * b
  let C₁ : ℝ := L + 2
  let a : ℝ := |Real.log (δ / C₁)|
  let B₀' : ℝ := max B₀ 0
  let C₂' : ℝ := max C₂ 0
  let E : ℝ := (1 + c₀) * (2 * Real.log (4 * C₁ ^ 2) * (B₀' + C₂'))
  let C : ℝ := max (max E L) (C₂' + |B₁| + 1)
  have hc₀0 : 0 ≤ c₀ := by positivity
  have hC₁3 : 3 ≤ C₁ := by dsimp only [C₁]; linarith
  have hB₀'0 : 0 ≤ B₀' := le_max_right _ _
  have hC₂'0 : 0 ≤ C₂' := le_max_right _ _
  have hC₂C₂' : C₂ ≤ C₂' := le_max_left _ _
  have hlog4 : 0 ≤ Real.log (4 * C₁ ^ 2) := Real.log_nonneg (by nlinarith)
  have hCE : E ≤ C := (le_max_left _ _).trans (le_max_left _ _)
  have hCL : L ≤ C := (le_max_right _ _).trans (le_max_left _ _)
  have hCB : C₂' + |B₁| + 1 ≤ C := le_max_right _ _
  have hC0 : 0 ≤ C := by linarith [abs_nonneg B₁]
  have hC₁2 : 0 < C₁ + 2 := by linarith
  refine ⟨C, min (min t₂ δ₁) (min (δ / (C₁ + 2)) (Real.exp (-(Real.exp 1 + 2 * a)))),
    lt_min (lt_min ht₂ hδ₁) (lt_min (div_pos hδ hC₁2) (Real.exp_pos _)), ?_⟩
  intro t ht ht₀ K hK
  simp only [lt_min_iff] at ht₀
  obtain ⟨⟨htt₂, htδ₁⟩, htδ, hte⟩ := ht₀
  have hCt : t * (C₁ + 2) < δ := (lt_div_iff₀ hC₁2).1 htδ
  have hC₁tlt : C₁ * t < δ := by linarith
  set ℓ : ℝ := Real.log t⁻¹
  set Lℓ : ℝ := Real.log ℓ
  obtain ⟨hℓa, hlogℓ⟩ : Real.exp 1 + 2 * a < ℓ ∧ 1 < Lℓ := log_inv_facts ht (abs_nonneg _) hte
  have hℓ0 : 0 < ℓ := by linarith [Real.exp_pos 1, show 0 ≤ a from abs_nonneg _]
  have hK0 : 0 ≤ K := by nlinarith
  have hKB : -K + B₁ ≤ -C₂ * Lℓ := by nlinarith [le_abs_self B₁, abs_nonneg B₁]
  have key : ∀ j k : Fin R.N, ∀ x ∈ R.mid j ∩ R.mid k,
      R.phReg ρ K t j x - R.phReg ρ K t k x ≤ E * (Lℓ / ℓ) + L * t := by
    intro j k x hx
    let M : ℝ → ℝ := polyMax (R.trunc K k) (R.chart k x)
    obtain ⟨hpj, -⟩ := hVpsh j K
    obtain ⟨hpk, hbk⟩ := hVpsh k K
    have hball : ∀ r, r ≤ δ → closedBall (R.chart k x) r ⊆ V k := fun r hr =>
      (closedBall_subset_closedBall hr).trans (hVball k x hx.2)
    have hi : molli ρ t (R.trunc K j) (R.chart j x) ≤ polyMax (R.trunc K j) (R.chart j x) t :=
      (((mollify_thm D ρ (V j) (R.trunc K j) (hVo j) hpj).1 t ht).2.2.2 (R.chart j x)
        ((closedBall_subset_closedBall (by nlinarith : t ≤ δ)).trans (hVball j x hx.1))).2
    have hii : polyMax (R.trunc K j) (R.chart j x) t ≤
        max (M (L * t)) (-K + B₁) + (R.q j (R.chart j x) - R.q k (R.chart k x)) + L * t :=
      polyMax_le' ht.le fun y hy => hT K j k x hx t ht htδ₁ y hy
    have mono : ∀ s s', 0 ≤ s → s ≤ s' → s' ≤ δ → M s ≤ M s' :=
      fun s s' hs hss' hs' => polyMax_mono' hpk.1 hs hss' (hball _ hs')
    have hlowk : -C₂ * Lℓ ≤ M t := hlow t ht htt₂ K k x hx.2
    have e0 : M t ≤ M (L * t) := mono t (L * t) ht.le (by nlinarith) (by dsimp only [C₁] at hC₁tlt; nlinarith)
    have e1 : M (L * t) ≤ M (C₁ * t) := mono (L * t) (C₁ * t) (by nlinarith) (by dsimp only [C₁]; nlinarith) hC₁tlt.le
    have hq : t / (4 * C₁) ≤ t / 4 := div_le_div_of_nonneg_left ht.le (by norm_num) (by linarith)
    have e2 : M (t / (4 * C₁)) ≤ M (t / 4) := mono (t / (4 * C₁)) (t / 4) (by positivity) hq (by nlinarith)
    have e3 : M (t / 4) ≤ M (2 * t) := mono (t / 4) (2 * t) (by positivity) (by linarith) (by nlinarith)
    have e4 : M (2 * t) ≤ M (C₁ * t) := mono (2 * t) (C₁ * t) (by positivity) (by nlinarith) hC₁tlt.le
    rw [max_eq_left (by linarith)] at hii
    have hiv : M (2 * t) - c₀ * (M (2 * t) - M (t / 4)) ≤ molli ρ t (R.trunc K k) (R.chart k x) :=
      h0 D ρ b (V k) (R.trunc K k) (R.chart k x) t (hVo k) hpk ht (hball _ (by nlinarith)) hb
    have hv : M (C₁ * t) - M (t / (4 * C₁)) ≤
        Real.log (4 * C₁ ^ 2) * (M δ - M (C₁ * t)) / Real.log (δ / (C₁ * t)) :=
      h1 D (V k) (R.trunc K k) (R.chart k x) δ t C₁ (hVo k) hpk (hball δ le_rfl) ht
        (by linarith) hC₁tlt
    have hMδ : M δ ≤ B₀' :=
      polyMax_le' hδ.le fun y hy => (hbk y (hVball k x hx.2 hy)).trans
        (max_le (le_max_left _ _) (by linarith))
    have hN : M δ - M (C₁ * t) ≤ (B₀' + C₂') * Lℓ := by nlinarith
    have hden : ℓ / 2 ≤ Real.log (δ / (C₁ * t)) := by
      rw [show δ / (C₁ * t) = (δ / C₁) * t⁻¹ by field_simp,
        Real.log_mul (div_pos hδ (by linarith)).ne' (inv_pos.2 ht).ne']
      linarith [neg_abs_le (Real.log (δ / C₁)), Real.exp_pos 1]
    have hO : M (C₁ * t) - M (t / (4 * C₁)) ≤
        2 * Real.log (4 * C₁ ^ 2) * (B₀' + C₂') * (Lℓ / ℓ) := by
      refine hv.trans ?_
      rw [div_le_iff₀ (by linarith)]
      calc Real.log (4 * C₁ ^ 2) * (M δ - M (C₁ * t))
          ≤ Real.log (4 * C₁ ^ 2) * ((B₀' + C₂') * Lℓ) := by gcongr
        _ = 2 * Real.log (4 * C₁ ^ 2) * (B₀' + C₂') * (Lℓ / ℓ) * (ℓ / 2) := by
            field_simp
        _ ≤ 2 * Real.log (4 * C₁ ^ 2) * (B₀' + C₂') * (Lℓ / ℓ) * Real.log (δ / (C₁ * t)) := by
            gcongr
    simp only [RegChartData.phReg, RegChartData.smoothed]
    dsimp only [E]
    nlinarith
  intro j k x hx
  have hEC : E * (Lℓ / ℓ) + L * t ≤ C * Lℓ / ℓ + C * t := by
    rw [mul_div_assoc]
    nlinarith [div_nonneg (by linarith : 0 ≤ Lℓ) hℓ0.le]
  exact abs_sub_le_iff.2 ⟨(key j k x hx).trans hEC, (key k j x ⟨hx.2, hx.1⟩).trans hEC⟩

end

end GroundTheory.Heights₂.Heights.Regular
