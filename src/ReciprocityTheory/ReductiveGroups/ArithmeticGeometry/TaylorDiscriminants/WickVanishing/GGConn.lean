module

import Development.AbelianVarietyTheory.Proofs.CuspFormEvaluations.ContinuousRmulPair
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.TaylorDiscriminants.WickVanishing.GGConnA
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovVolumes.ArakelovInstances.QuotientIsHausdorff
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.DetSubUpper
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.OrthonormalFlagTranslateHolds

@[expose] public section

namespace ReciprocityTheory.ChartRestriction.G.TB.WickVanishing

open NumberField Matrix ReciprocityTheory.ChartRestriction.G.FD ReciprocityTheory.ChartRestriction.G.AR.Inst ReciprocityTheory.ChartRestriction.G.TB.WickVanishing.GGC
open scoped ComplexConjugate ComplexOrder

noncomputable section

variable {E : Type} [Field E] [NumberField E] [IsCMField E]

lemma sgn_cast_eq (p0 r : ℕ) : (fun a : Fin r => ((sgn p0 (a : ℕ) : ℝ) : ℂ)) = sv p0 := by
  funext a
  unfold sgn sv
  split_ifs <;> simp

lemma pos_conj_mul {s : ℝ} {c d : ℂ} (hc : c ≠ 0) (h : 0 < s * d.re) : 0 < s * (c * d * conj c).re := by
  have hn := Complex.normSq_pos.mpr hc
  rw [mul_comm c d, mul_assoc, Complex.mul_conj]
  simp only [Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, mul_zero, sub_zero]
  have h2 : s * (d.re * Complex.normSq c) = (s * d.re) * Complex.normSq c := by ring
  rw [h2]
  exact mul_pos h hn

lemma mem_dom_of_ok {r : ℕ} (X : Data E r) (P : X.Ψ → Matrix (Fin r) (Fin r) ℂ)
    (hP : ∀ τ, (P τ).det ≠ 0 ∧ gram τ.1 X.Gm (P τ) = diagonal fun a : Fin r => ((sgn X.p0 (a : ℕ) : ℝ) : ℂ))
    (y : X.Ψ → Matrix (Fin r) (Fin r) ℂ) (hy : ∀ τ, Ok X.p0 (y τ)) :
    (fun τ => (P τ * y τ : Matrix (Fin r) (Fin r) ℂ) : Frame X.Ψ r) ∈ X.dom := by
  intro τ
  have hg : gram τ.1 X.Gm (P τ * y τ) = Gy X.p0 (y τ) := by
    rw [FrameDegreeData.gram_mul, (hP τ).2, sgn_cast_eq]
    rfl
  refine ⟨?_, fun i => ?_⟩
  · show (P τ * y τ).det ≠ 0
    rw [det_mul]
    exact mul_ne_zero (hP τ).1 (det_ne_of_ok (hy τ))
  · show 0 < psgn X.p0 i * (lminor (gram τ.1 X.Gm (P τ * y τ)) i).re
    rw [hg]
    unfold psgn sgn lminor
    exact lead_pos (hy τ) i (Nat.le_of_lt_succ i.isLt)

lemma rmul_mem {r : ℕ} (X : Data E r) {x : Frame X.Ψ r} (hx : x ∈ X.dom) {b : Frame X.Ψ r}
    (hb : b ∈ Bor X.Ψ r) : rmul x b ∈ X.dom := by
  intro τ
  refine ⟨?_, fun i => ?_⟩
  · show (mat x τ * mat b τ).det ≠ 0
    rw [det_mul]
    exact mul_ne_zero (hx τ).1 (hb τ).1
  · rw [FrameDegreeData.dmin_rmul X x hb τ i]
    exact pos_conj_mul (Finset.prod_ne_zero_iff.2 fun j _ => FrameDegreeData.bdiag_ne X hb τ _) ((hx τ).2 i)

theorem flag_domain_frames_connected : GGConnStatement (E := E) := by
  apply GlobalTheory.frames_isConnected

end

end ReciprocityTheory.ChartRestriction.G.TB.WickVanishing
