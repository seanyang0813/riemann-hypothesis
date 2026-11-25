module

public import Mathlib.Basic.Real.Basic
import Mathlib.Algebra.Order.Star.Real

@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.T0

theorem heights_arith
    (D δ L lr lw1 hN sF laW nuS c g0 i DF PP0' PN tableLineDegreeFive tableLineDegreeTwo PI4 Prw G Pet
      aL ade aG1 aF aG2 HMM HL Hde HF SI SN Ssum δlogδ : ℝ)
    (hD : 3 ≤ D) (hδ : 0 ≤ δ) (hL : 1 ≤ L) (hc0 : 0 ≤ c) (hc1 : c ≤ 1) (hcg : c * g0 ≤ 1 / 2)
    (hg0 : 0 ≤ g0) (hi : 1 ≤ i)
    (hP : 1 ≤ PP0' ∧ 1 ≤ PN ∧ 1 ≤ tableLineDegreeFive ∧ 1 ≤ tableLineDegreeTwo ∧ 1 ≤ PI4 ∧ 1 ≤ Prw ∧ 1 ≤ G ∧ 1 ≤ Pet)
    (hlr0 : 0 ≤ lr) (hlr : lr ≤ Prw * L) (hlw1 : lw1 ≤ Prw * L) (hhN : hN / 2 ≤ Prw * L)
    (hDF : DF ≤ L) (hlaW : laW ≤ G * L) (hnu : nuS ≤ PN * L)

    (hUP : sF ≤ (D + 2) * δ * (PP0' * L + max 0 laW + lw1))
    (hb1 : HMM = sF + δ * hN / 2)

    (haL : aL ≤ 4 / 3 * δ) (hade0 : 0 ≤ ade) (hade : ade ≤ aL) (haG10 : 0 ≤ aG1) (haG1 : aG1 ≤ aL)
    (haF0 : 0 ≤ aF) (haF : aF ≤ (D + 4) * aL) (haG20 : 0 ≤ aG2) (haG2 : aG2 ≤ (D + 4) * aL)

    (h7a : HL ≤ HMM + δ * (nuS + tableLineDegreeFive * DF + c * tableLineDegreeTwo) + D * c * g0 * ade * lr + c * g0 * Hde)
    (h7b : Hde ≤ HL + (δ * PI4 * D * L + D * aG1 * lr))
    (h7c : HF ≤ (D + 4) * HL + δ * PI4 * D * L + D * aG2 * lr)

    (hdi : 2 * SI ≤ δlogδ + 2 * Ssum + 2 * D * aF * lr + 2 * HF)
    (hdn : SN / i ≤ g0 * (Hde + D * ade * lr) + δ * Pet) :
    2 * SI ≤ δlogδ + 2 * Ssum + 8 / 3 * D * (D + 4) * δ * Prw * L +
        2 * (D + 4) * (D + 1) * δ *
          (2 * G + 6 * (2 * (PP0' + PN + tableLineDegreeFive + tableLineDegreeTwo + PI4 + Prw) + G)) * L ∧
      SN / i ≤ g0 * ((D + 1) * δ *
        (2 * G + 6 * (2 * (PP0' + PN + tableLineDegreeFive + tableLineDegreeTwo + PI4 + Prw) + G)) * L +
        4 / 3 * D * δ * Prw * L) + δ * Pet := by
  obtain ⟨hP1, hP2, hP3, hP4, hP5, hP6, hP7, _⟩ := hP
  have hD0 : 0 ≤ D := by linarith
  have hL0 : 0 ≤ L := by linarith
  have hPP0 : 0 ≤ PP0' := by linarith
  have hPN : 0 ≤ PN := by linarith
  have hFive : 0 ≤ tableLineDegreeFive := by linarith
  have hTwo : 0 ≤ tableLineDegreeTwo := by linarith
  have hPI0 : 0 ≤ PI4 := by linarith
  have hPrw : 0 ≤ Prw := by linarith
  have hG : 0 ≤ G := by linarith
  have hsF : sF ≤ (D + 2) * δ * ((PP0' + G + Prw) * L) :=
    hUP.trans <| mul_le_mul_of_nonneg_left (by linarith [max_le (mul_nonneg hG hL0) hlaW]) (by positivity)
  have hN2 : δ * hN / 2 ≤ δ * (Prw * L) := by
    rw [mul_div_assoc]; exact mul_le_mul_of_nonneg_left hhN hδ
  have hnu2 : δ * (nuS + tableLineDegreeFive * DF + c * tableLineDegreeTwo) ≤
      δ * ((PN + tableLineDegreeFive + tableLineDegreeTwo) * L) :=
    mul_le_mul_of_nonneg_left (by nlinarith) hδ
  have hadlr : ade * lr ≤ 4 / 3 * δ * (Prw * L) :=
    mul_le_mul (hade.trans haL) hlr hlr0 (by positivity)
  have hcross : D * c * g0 * ade * lr ≤ D * (1 / 2 * (4 / 3 * δ * (Prw * L))) := by
    simpa only [mul_assoc] using mul_le_mul_of_nonneg_left
      (mul_le_mul hcg hadlr (by positivity) (by norm_num)) hD0
  have hadl : D * ade * lr ≤ D * (4 / 3 * δ * (Prw * L)) := by
    simpa only [mul_assoc] using mul_le_mul_of_nonneg_left hadlr hD0
  have hY1 : D * aG1 * lr ≤ D * (4 / 3 * δ * (Prw * L)) := by
    simpa only [mul_assoc] using mul_le_mul_of_nonneg_left
      (mul_le_mul (haG1.trans haL) hlr hlr0 (by positivity)) hD0
  have hA4 : (D + 4) * aL ≤ (D + 4) * (4 / 3 * δ) := mul_le_mul_of_nonneg_left haL (by positivity)
  have hY2 : D * aG2 * lr ≤ D * ((D + 4) * (4 / 3 * δ) * (Prw * L)) := by
    simpa only [mul_assoc] using mul_le_mul_of_nonneg_left
      (mul_le_mul (haG2.trans hA4) hlr hlr0 (by positivity)) hD0
  have hYF : D * aF * lr ≤ D * ((D + 4) * (4 / 3 * δ) * (Prw * L)) := by
    simpa only [mul_assoc] using mul_le_mul_of_nonneg_left
      (mul_le_mul (haF.trans hA4) hlr hlr0 (by positivity)) hD0
  let Xb := (D + 2) * δ * ((PP0' + G + Prw) * L) + δ * (Prw * L) +
    δ * ((PN + tableLineDegreeFive + tableLineDegreeTwo) * L) + D * (1 / 2 * (4 / 3 * δ * (Prw * L)))
  let Yb := δ * PI4 * D * L + D * (4 / 3 * δ * (Prw * L))
  have hHde : Hde ≤ HL + Yb := by dsimp only [Yb]; linarith only [h7b, hY1]
  have hHL1 : HL ≤ Xb + c * g0 * (HL + Yb) := by
    have h := mul_le_mul_of_nonneg_left hHde (by positivity : 0 ≤ c * g0)
    dsimp only [Xb, Yb] at h ⊢
    linarith only [h7a, hb1, hsF, hN2, hnu2, hcross, h]
  have hHL : HL ≤ 2 * Xb + Yb := by
    by_cases hHL0 : 0 ≤ HL
    · have a1 := mul_le_mul_of_nonneg_right hcg hHL0
      have a2 := mul_le_mul_of_nonneg_right hcg (by positivity : 0 ≤ Yb)
      linarith only [hHL1, a1, a2]
    · have hXb0 : 0 ≤ Xb := by positivity
      have hYb0 : 0 ≤ Yb := by positivity
      linarith only [lt_of_not_ge hHL0, hXb0, hYb0]
  have hHF := mul_le_mul_of_nonneg_left hHL (by positivity : 0 ≤ D + 4)
  dsimp only [Xb, Yb] at hHde hHL hHF
  have hE : 0 ≤ δ * L * ((D + 4) * (6 * D + 4) * G + (D + 4) * (10 * D + 8) * PP0' +
      (D + 4) * (6 * D + 6) * Prw + (D + 4) * (12 * D + 10) * (PN + tableLineDegreeFive + tableLineDegreeTwo) +
      (11 * D * D + 55 * D + 48) * PI4) := by positivity
  have hE2 : 0 ≤ δ * L * ((6 * D + 4) * G + (10 * D + 8) * PP0' +
      (12 * D + 10) * (PN + tableLineDegreeFive + tableLineDegreeTwo) +
      (10 * D + 12) * PI4 + (6 * D + 6) * Prw) := by positivity
  constructor
  · linarith only [hdi, h7c, hHF, hY2, hYF, hE]
  · have hb : Hde + D * ade * lr ≤ (D + 1) * δ *
        (2 * G + 6 * (2 * (PP0' + PN + tableLineDegreeFive + tableLineDegreeTwo + PI4 + Prw) + G)) * L +
        4 / 3 * D * δ * Prw * L := by linarith only [hHde, hHL, hadl, hE2]
    exact hdn.trans (add_le_add (mul_le_mul_of_nonneg_left hb hg0) le_rfl)

end ReciprocityTheory.ChartRestriction.G.T0
