module

public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SliceIntCut
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.YGSlice
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.FormModel
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.AdditiveCharacterPsi
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.BetaCongrRight
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CompactlySupportedBanachModel
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ComponentFamilySettingOfSetting
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.DerivativeBoundInBanachSpace
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.JfBetaAdjCOfLemmaBNorm
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.OpApplyZeroNear
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SlicesFiniteRegularityBuilt
public import Mathlib.MeasureTheory.SpecificCodomains.Pi
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SliceOmBlock
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SymmetricScalarBlockMatrixOneZero
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelsOfBuiltSetting
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.OpApplySub
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.GermRateSplit
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.PtSizePtG
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.GermConstant
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.PbGermRateLowBOfParts
import Formalism.HermitianCurvature.HermitianCurvatureProofs.PhiBoundPartsOfRadicalParametrisation
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SeminormCompletion
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SymmetricScalarBlockMatrixMul
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.HermitianCurvature.HermitianCurvatureProofs.OrbitTailEstimates
import Formalism.HermitianCurvature.HermitianCurvatureProofs.OrbitalIntegralConvergesAbs
import Formalism.HermitianCurvature.HermitianCurvatureProofs.WirtingerIntegrationByParts
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SliceAppend
import Formalism.HermitianCurvature.HermitianCurvatureProofs.PosCoreQ

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.SliceAtApply, Formalism.HermitianCurvature.HermitianCurvatureProofs.IntegrableBlockIntegrand, Formalism.HermitianCurvature.HermitianCurvatureProofs.SliceOrbitalBlock, Formalism.HermitianCurvature.HermitianCurvatureProofs.SliceGermPoints, Formalism.HermitianCurvature.HermitianCurvatureProofs.SliceIntegralCutoff, Formalism.HermitianCurvature.HermitianCurvatureProofs.GermRateLowerBound

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.SliceAtApply =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.SliceAtApply", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SliceIntCut\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.YGSlice\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.FormModel\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.AdditiveCharacterPsi\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.BetaCongrRight\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CompactlySupportedBanachModel\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.ComponentFamilySettingOfSetting\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.DerivativeBoundInBanachSpace\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.JfBetaAdjCOfLemmaBNorm\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.OpApplyZeroNear\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.PhiBoundPartsOfRadicalParametrisation\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.SeminormCompletion\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.SlicesFiniteRegularityBuilt\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.SymmetricScalarBlockMatrixMul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.MeasureTheory.SpecificCodomains.Pi\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.FormNormSumIdentities

open Formalism.FourierDecayAlt MeasureTheory Filter

noncomputable section

theorem bump_annulus {r₁ r₂ : ℝ} (h1 : 0 < r₁) (h12 : r₁ ≤ r₂) :
    ∃ χD : ℂ → ℂ, U.IsCutC χD ∧ (∀ w : ℂ, r₁ ≤ ‖w‖ → ‖w‖ ≤ r₂ → χD w = 1) ∧
      (∀ w ∈ tsupport χD, ‖w‖ ≤ 2 * r₂) := by
  let bo : ContDiffBump (0 : ℂ) := ⟨r₂, 2 * r₂, by linarith, by linarith⟩
  let bi : ContDiffBump (0 : ℂ) := ⟨r₁ / 4, r₁ / 2, by linarith, by linarith⟩
  have hsupp : tsupport (fun w : ℂ => (((1 - bi w) * bo w : ℝ) : ℂ)) ⊆ Metric.closedBall 0 (2 * r₂) := by
    refine (tsupport_comp_subset (g := Complex.ofReal) Complex.ofReal_zero _).trans ?_
    refine (tsupport_mul_subset_right).trans ?_
    rw [bo.tsupport_eq]
  refine ⟨fun w => (((1 - bi w) * bo w : ℝ) : ℂ), ⟨?_, ?_, ?_⟩, ?_, ?_⟩
  · exact Complex.ofRealCLM.contDiff.comp ((contDiff_const.sub bi.contDiff).mul bo.contDiff)
  · have h := (bo.hasCompactSupport.mul_left (f := fun w : ℂ => 1 - bi w)).comp_left Complex.ofReal_zero
    exact h
  · intro h0
    have hnb : ∀ᶠ w in nhds (0 : ℂ), (((1 - bi w) * bo w : ℝ) : ℂ) = 0 := by
      filter_upwards [Metric.ball_mem_nhds (0 : ℂ) (by linarith : (0 : ℝ) < r₁ / 4)] with w hw
      have : bi w = 1 := bi.one_of_mem_closedBall (Metric.ball_subset_closedBall hw)
      simp [this]
    exact (notMem_tsupport_iff_eventuallyEq.2 hnb) h0
  · intro w hw1 hw2
    have ho : bo w = 1 := bo.one_of_mem_closedBall (by simpa [Metric.mem_closedBall, dist_zero_right] using hw2)
    have hi : bi w = 0 := bi.zero_of_le_dist (by
      show r₁ / 2 ≤ dist w 0
      rw [dist_zero_right]; linarith)
    simp [ho, hi]
  · intro w hw
    have := hsupp hw
    simpa [Metric.mem_closedBall, dist_zero_right] using this

theorem isLocPt_ptG {h' : C.LPt} (hh' : D.IsLocPt h' (D.ptSize h')) {m : ℕ} {Kc : Set ℂ} (hK0 : (0 : ℂ) ∉ Kc)
    {q : (ℂ × ℂ) ⊕ ℂ} (hq : okG m Kc q) : D.IsLocPt (ptG h' m q) (D.ptSize h' + (m + 2)) := by
  refine ⟨?_, ptSize_ptG h' m q⟩
  rcases q with ⟨t, c⟩ | z
  · obtain ⟨ht, hc⟩ := hq
    have hc0 : c ≠ 0 := by
      rintro rfl; simp at hc; exact hK0 hc
    intro b hb
    simp only [ptG, List.mem_append, List.mem_cons, List.not_mem_nil, or_false] at hb
    rcases hb with hb | rfl | rfl
    · exact hh'.1 b hb
    · exact ⟨by omega, ht⟩
    · exact ⟨le_rfl, hc0⟩
  · obtain ⟨D, hD, hz⟩ := hq
    have hz0 : z ≠ 0 := by
      rintro rfl
      have h0 : ((-1 : ℂ) ^ (m + 3)) * D = 0 := by rw [← hz]; simp
      have : D = 0 := (mul_eq_zero.1 h0).resolve_left (pow_ne_zero _ (by norm_num))
      exact hK0 (this ▸ hD)
    intro b hb
    simp only [ptG, List.mem_append, List.mem_cons, List.not_mem_nil, or_false] at hb
    rcases hb with hb | rfl
    · exact hh'.1 b hb
    · exact ⟨by omega, hz0⟩

theorem arith_ma (m RR As a : ℝ) (hm : 0 ≤ m) (hR : m + 3 ≤ RR) (hAs : 1 ≤ As)
    (ha : 128 * RR ^ 3 * As ≤ a) : (m + 1) * (m + 4) < a := by
  have hR1 : 1 ≤ RR := by linarith
  have h1 : (m + 1) * (m + 4) < (m + 3) ^ 2 := by nlinarith
  have h2 : (m + 3) ^ 2 ≤ RR ^ 2 := pow_le_pow_left₀ (by linarith) hR 2
  have h3 : RR ^ 2 ≤ RR ^ 3 := pow_le_pow_right₀ hR1 (by norm_num)
  have h4 : RR ^ 3 ≤ 128 * RR ^ 3 * As := by
    have : 0 ≤ RR ^ 3 := by positivity
    nlinarith
  linarith

theorem cccoef_congr {k ρ : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp]
    [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] {Bs : B.RealPlaceData k ρ Wp Wq} {A : ℝ} {mm : ℕ} {ε : ℝ}
    {F F' : B.Mat k ρ → (Wq →L[ℂ] Wp)} (h : ∀ g ∈ B.GV k ρ, F g = F' g) (hF : JC.CCCoefM Bs A mm ε F) :
    JC.CCCoefM Bs A mm ε F' := by
  obtain ⟨h1, ⟨c, hc⟩, h3⟩ := hF
  exact ⟨Formalism.FourierDecayAlt.P.Ux1.ckOn_congr h h1, ⟨c, Formalism.FourierDecayAlt.P.Ux1.cc_congr h hc⟩,
    fun g hg hne => h3 g hg (by rwa [h g hg])⟩

theorem sliceAt_apply {k r : ℕ} {ι : Type} [Fintype ι] {E0 : Type} [NormedAddCommGroup E0] [NormedSpace ℂ E0]
    [CompleteSpace E0] (z z' : Fin (2 * r + k + 1) → ℂ) (F : B.Mat k r → (ι → E0)) (p : C.LPt)
    (hle : D.ptSize p ≤ r) (γ : B.Mat k (r - D.ptSize p)) (e : ι)
    (hint : Integrable (fun ξ : U.Xi k (D.ptSize p) 0 (r - D.ptSize p) (D.ptPerm p) =>
        U.psiStar k (r - D.ptSize p) (D.ptPerm p) (D.castV (by omega) z) (D.castV (by omega) z') ξ •
          D.castF (by omega) F (U.gaXi k (r - D.ptSize p) (D.ptPerm p) (D.ptDiag p) ξ (fun a => a.elim0) γ))
      (U.muXi k (D.ptSize p) 0 (r - D.ptSize p) (D.ptPerm p))) :
    D.sliceAt k r z z' F p γ e = D.sliceAt k r z z' (fun g => F g e) p γ := by
  unfold D.sliceAt
  rw [dite_eq_left hle, dite_eq_left hle]
  unfold U.PhiFun
  have := (ContinuousLinearMap.proj (R := ℂ) (φ := fun _ : ι => E0) e).integral_comp_comm hint
  exact this.symm ▸ rfl


theorem germPlace_of (hSI : SliceIntCut) (hYG : YGSlice) (hFM : FormModel) : GermPlace := by
  intro Wp Wq _ _ _ _ _ _ P0 T sg w f χ ε h' m i hi hsz hf hfR hχ hε hk2 hh' Kc hKc hK0
  classical

  set ph := D.ptSize h' with hph
  set ρ := P0.r - i with hρ
  have e1 : P0.r = ph + (m + 2) + ρ := by omega
  have e2 : ph + (m + 2) + ρ = P0.r := by omega
  have hj1 : 1 ≤ ph + (m + 2) := by omega
  have hi1 : 1 ≤ i := by omega
  set N := w.length with hN
  set z0 := D.castV e1 T.base.z with hz0
  set z0' := D.castV e1 T.base.z' with hz0'
  set f1 := D.castF e2 f with hf1

  have hLD := fun e : Wd.Ix (Fin N) =>
    Formalism.FourierDecayAlt.P.JCTx6.Let.lettersDD P0.k (ph + (m + 2)) ρ Wp Wq z0 z0' (by omega) w e hj1
  choose Θ hΘ hΘF using hLD
  have hFrel : ∀ e : Wd.Ix (Fin N), ∀ g ∈ B.GV P0.k (ph + (m + 2) + ρ), U.DjU P0.k (ph + (m + 2)) ρ g ≠ 0 →
      D.castF e2 (D.uwG P0.k P0.r T.base.z T.base.z' (D.cutF T.base χ f ε) i hi w e) g =
        B.opApply (Θ e) (fun x => ((χ (Formalism.QuantumDeterminants.Gf P0.k (ph + (m + 2) + ρ) z0 z0' x / ε) : ℝ) : ℂ) • f1 x) g := by
    intro e g hg hD
    have hFc : B.CkOn ⊤ (B.GV P0.k P0.r) (D.cutF T.base χ f ε) := Formalism.FourierDecayAlt.P.JCTx6.Link2.ckOn_cutF T.base hχ hf ε
    have h1 : D.castF e2 (D.uwG P0.k P0.r T.base.z T.base.z' (D.cutF T.base χ f ε) i hi w e) =
        D.uwG P0.k (ph + (m + 2) + ρ) z0 z0' (D.castF e2 (D.cutF T.base χ f ε)) (ph + (m + 2)) (by omega) w e := by
      rw [Formalism.FourierDecayAlt.P.JCTx6.Link2.castF_uwG e2 _ _ _ _ hi (by omega)]
      exact Formalism.FourierDecayAlt.P.JCTx6.Link2.uwG_level _ _ _ (by omega) _ _ w e
    rw [h1, hΘF e _ (Formalism.FourierDecayAlt.P.JCTx6.Link2.ckOn_castF e2 hFc) g hg hD, Formalism.FourierDecayAlt.P.JCTx6.Link2.castF_cutF e2]

  set σ := D.ptPerm h' with hσ
  set d := D.ptDiag h' with hd_def
  have hd : ∀ q, d q ≠ 0 := fun q => Formalism.FourierDecayAlt.P.JCTx6.Link2.ptScal_ne h' hh'.1 q q.2
  set dh := (U.hMat σ d).det with hdh_def
  have hdh : dh ≠ 0 := Formalism.FourierDecayAlt.P.Ux10.det_hMat_ne σ d hd
  set wd := (G.wMat (m + 1)).det with hwd_def
  have hwd : wd ≠ 0 := Formalism.FourierDecayAlt.P.G2.det_wMat_ne_zero (m + 1)

  obtain ⟨r1, hr1, hKr1⟩ : ∃ r1 : ℝ, 0 < r1 ∧ ∀ D ∈ Kc, r1 ≤ ‖D‖ := by
    rcases Kc.eq_empty_or_nonempty with hE | hne
    · exact ⟨1, one_pos, by simp [hE]⟩
    · obtain ⟨D0, hD0, hmin⟩ := hKc.exists_isMinOn hne continuous_norm.continuousOn
      refine ⟨‖D0‖, norm_pos_iff.2 (fun h0 => hK0 (h0 ▸ hD0)), fun D hD => hmin hD⟩
  obtain ⟨r2, hKr2⟩ : ∃ r2 : ℝ, ∀ D ∈ Kc, ‖D‖ ≤ r2 := hKc.isBounded.exists_norm_le
  set cdw : ℝ := ‖dh * wd‖ with hcdw
  have hcdw0 : 0 < cdw := norm_pos_iff.2 (mul_ne_zero hdh hwd)
  set A1 : ℝ := cdw * r1 / 2 with hA1
  set A2 : ℝ := cdw * max r1 r2 * 2 with hA2
  have hA1p : 0 < A1 := by positivity
  have hA12 : A1 ≤ A2 := by
    have : r1 ≤ max r1 r2 := le_max_left _ _
    have : cdw * r1 ≤ cdw * max r1 r2 := mul_le_mul_of_nonneg_left this hcdw0.le
    rw [hA1, hA2]; nlinarith
  obtain ⟨χD, hχD, hχD1, hχDs⟩ := bump_annulus hA1p hA12
  have hKj : ∀ D ∈ Kc, A1 < ‖dh * (wd * D)‖ ∧ ‖dh * (wd * D)‖ < A2 := by
    intro D hD
    have e : ‖dh * (wd * D)‖ = cdw * ‖D‖ := by rw [← mul_assoc, norm_mul]
    rw [e]
    have h1 := hKr1 D hD
    have h2 : ‖D‖ ≤ max r1 r2 := (hKr2 D hD).trans (le_max_right _ _)
    constructor
    · rw [hA1]; nlinarith
    · rw [hA2]
      have : 0 < max r1 r2 := lt_of_lt_of_le hr1 (le_max_left _ _)
      nlinarith
  have hA2p : 0 < A2 := lt_of_lt_of_le hA1p hA12
  obtain ⟨δ, hδ, hχε⟩ := Formalism.FourierDecayAlt.P.JCTx6.Pos.isCutG_scale hχ hε
  set ε'' : ℝ := δ * ε / (2 * A2) ^ 2 with hε''def
  have hε'' : 0 < ε'' := by positivity

  obtain ⟨C₂, CcG, hUG⟩ := Formalism.FourierDecayAlt.P.germ_expansion_applies
  obtain ⟨CcU, hCU⟩ := Formalism.FourierDecayAlt.P.corollary_u2_germ_hypothesis 127 C₂
  set nd : ℕ := 2 * P0.r + P0.k + 1 with hnd
  set X : ℕ := N * nd ^ 2 + nd ^ 3 with hX
  set o : ℕ := N * (ph + (m + 2)) with ho
  set κ : ℕ := N * (ph + (m + 2)) + N * (ph + (m + 2)) ^ 2 with hκ
  set mmB : ℕ := P5.mmUser P0 N + (5 + (2 * (P0.r - i) + P0.k + 1) * N) with hmmB
  set As : ℕ := (11 * X + 5) + o + (κ + (ph + (m + 1 + 1)) * o) + mmB +
    (2 * (ph + (m + 1 + 1) + ρ) + P0.k + 1) ^ 3 + (C₂ * (ph + (m + 1 + 1) + ρ + 1) ^ 2 + 1) with hAs
  let UD : U.UData P0.k ph (m + 1 + 1) ρ Wp Wq (Wd.Ix (Fin N)) :=
    ⟨σ, d, z0, z0', Θ, χD, fun x => χ (ε⁻¹ * x), δ * ε, ε'', o, κ, 0, mmB, As⟩
  have hOk : UD.Ok C₂ := by
    refine ⟨hd, by omega, Formalism.FourierDecayAlt.P.Dx1.SN.castV_inWb e1 _ T.base.z_mem,
      Formalism.FourierDecayAlt.P.Dx1.SN.castV_inWb e1 _ T.base.z'_mem, fun e => hΘ e, hχD, hχε, hε'', ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
    · intro x hx
      have h2 := hχDs x hx
      have h3 : ‖x‖ ^ 2 ≤ (2 * A2) ^ 2 := pow_le_pow_left₀ (norm_nonneg _) h2 2
      calc ε'' * ‖x‖ ^ 2 ≤ ε'' * (2 * A2) ^ 2 := mul_le_mul_of_nonneg_left h3 hε''.le
        _ = δ * ε := by
          have : (2 * A2) ^ 2 ≠ 0 := by positivity
          rw [hε''def, div_mul_cancel₀ _ this]
    · show o ≤ As; omega
    · show κ + (ph + (m + 1 + 1)) * o ≤ As; omega
    · show ((0 : ℝ)) ≤ (As : ℝ); positivity
    · show mmB ≤ As; omega
    · show (2 * (ph + (m + 1 + 1) + ρ) + P0.k + 1) ^ 3 ≤ As; omega
    · show C₂ * (ph + (m + 1 + 1) + ρ + 1) ^ 2 + 1 ≤ As; omega

  set RR : ℝ := ((ph + (m + 1 + 1) + ρ : ℕ) : ℝ) + 1 with hRR
  have hRR1 : 1 ≤ RR := by rw [hRR]; have : (0 : ℝ) ≤ ((ph + (m + 1 + 1) + ρ : ℕ) : ℝ) := Nat.cast_nonneg _; linarith
  set R4 : ℝ := RR ^ 4 * (As : ℝ) with hR4
  have hR40 : 0 ≤ R4 := by positivity
  set A₀ : ℝ := (|CcG| + |CcU|) * R4 with hA₀def
  have hA₀G : CcG * (((ph + (m + 1 + 1) + ρ : ℕ) : ℝ) + 1) ^ 4 * (UD.As : ℝ) ≤ A₀ := by
    have e : CcG * (((ph + (m + 1 + 1) + ρ : ℕ) : ℝ) + 1) ^ 4 * (UD.As : ℝ) = CcG * R4 := by
      show _ = CcG * (RR ^ 4 * (As : ℝ)); rw [hRR]; ring
    rw [e, hA₀def]
    calc CcG * R4 ≤ |CcG| * R4 := mul_le_mul_of_nonneg_right (le_abs_self _) hR40
      _ ≤ (|CcG| + |CcU|) * R4 := mul_le_mul_of_nonneg_right (by linarith [abs_nonneg CcU]) hR40
  have hA₀U : CcU * (((ph + (m + 1 + 1) + ρ : ℕ) : ℝ) + 1) ^ 4 * (UD.As : ℝ) ≤ A₀ := by
    have e : CcU * (((ph + (m + 1 + 1) + ρ : ℕ) : ℝ) + 1) ^ 4 * (UD.As : ℝ) = CcU * R4 := by
      show _ = CcU * (RR ^ 4 * (As : ℝ)); rw [hRR]; ring
    rw [e, hA₀def]
    calc CcU * R4 ≤ |CcU| * R4 := mul_le_mul_of_nonneg_right (le_abs_self _) hR40
      _ ≤ (|CcG| + |CcU|) * R4 := mul_le_mul_of_nonneg_right (by linarith [abs_nonneg CcG]) hR40
  obtain ⟨Rf, hRf⟩ := hfR
  have hf1s : B.CkOn ⊤ (B.GV P0.k (ph + (m + 1 + 1) + ρ)) f1 := Formalism.FourierDecayAlt.P.JCTx6.Link2.ckOn_castF e2 hf
  have hf1c : ∀ (A : ℝ) (mm : ℕ), B.InCC A mm f1 := by
    intro A mm
    refine Formalism.FourierDecayAlt.P.JFxG.cptInCC_G hf1s (Formalism.FourierDecayAlt.P.PBE.isCompact_gN_le P0.k _ Rf) (fun g hg hgC => ?_) A mm
    by_contra hne
    apply hgC
    have h1 := hRf _ (Formalism.FourierDecayAlt.P.PBE.castM_GV e2 hg) hne
    rwa [Formalism.FourierDecayAlt.P.PBE.gN_castM] at h1
  obtain ⟨c, hc⟩ := hf1c A₀ (3 * UD.As)

  obtain ⟨V, indexVFirst, indexVSecond, hVc, ⟨MM⟩⟩ :=
    Formalism.FourierDecayAlt.P.compactly_supported_banach_model P0.k ρ (Wd.Ix (Fin N) → (Wq →L[ℂ] Wp)) (UD.a C₂ A₀) UD.mmB UD.S
  letI := indexVFirst; letI := indexVSecond; haveI := hVc
  obtain ⟨-, hKg⟩ := hUG P0.k ph m ρ Wp Wq (Wd.Ix (Fin N)) UD hOk A₀ hA₀G
  obtain ⟨Cst, hCst⟩ := hKg Kc hKc hK0
  obtain ⟨Φ, hΦev, hΦg⟩ := hCst f1 c hc V MM
  obtain ⟨ha1, -, -, Cd, hCd⟩ := hCU P0.k ph (m + 1 + 1) ρ Wp Wq (Wd.Ix (Fin N)) UD hOk A₀ hA₀U
  obtain ⟨Φ', hΦ'ev, hΦ'reg⟩ := hCd f1 c hc V MM
  have hΦΦ' : ∀ Z : G.Mat (m + 1 + 1), G.detM Z ≠ 0 → Φ Z = Φ' Z := by
    intro Z hZ
    have h0 : ∀ γ ∈ B.GV P0.k ρ, (fun _ : B.Mat P0.k ρ => (0 : Wd.Ix (Fin N) → (Wq →L[ℂ] Wp))) γ =
        MM.ev (Φ Z - Φ' Z) γ := by
      intro γ hγ
      rw [map_sub, Pi.sub_apply, hΦev Z hZ γ hγ, hΦ'ev Z hZ γ hγ, sub_self]
    have hcc := Formalism.FourierDecayAlt.P.Ux1.cc_congr h0 (Formalism.FourierDecayAlt.P.BetaSesquilinearity.CCle_zero (A := UD.a C₂ A₀) (m := UD.mmB))
    have := MM.least _ 0 hcc
    exact sub_eq_zero.1 (norm_le_zero_iff.1 this)

  have hAs1 : (1 : ℝ) ≤ (As : ℝ) := by
    have : 1 ≤ As := by omega
    exact_mod_cast this
  have ha128 : 128 * RR ^ 3 * (As : ℝ) ≤ UD.a C₂ A₀ := by
    have h := ha1
    rw [hRR]; norm_num at h ⊢; exact h
  have hRm : (m : ℝ) + 3 ≤ RR := by
    rw [hRR]; push_cast
    have : (0 : ℝ) ≤ (ph : ℝ) := Nat.cast_nonneg _
    have : (0 : ℝ) ≤ (ρ : ℝ) := Nat.cast_nonneg _
    linarith
  have hma : ((m : ℝ) + 1) * ((m : ℝ) + 4) < UD.a C₂ A₀ := arith_ma _ _ _ _ (Nat.cast_nonneg m) hRm hAs1 ha128
  have hRr : RR = (P0.r : ℝ) + 1 := by rw [hRR, e2]
  have hAa : P5.Auser P0 N + 1 ≤ UD.a C₂ A₀ := by
    have hX1 : ((11 * X + 5 : ℕ) : ℝ) ≤ (As : ℝ) := by
      have : 11 * X + 5 ≤ As := by omega
      exact_mod_cast this
    have hXr : ((N : ℝ) * (P5.nV P0 : ℝ) ^ 2 + (P5.nV P0 : ℝ) ^ 3) = (X : ℝ) := by
      rw [hX, hnd]; simp [P5.nV]
    unfold P5.Auser
    rw [hXr, ← hRr]
    have hX0 : (0 : ℝ) ≤ X := Nat.cast_nonneg _
    push_cast at hX1
    have hR3 : 1 ≤ RR ^ 3 := one_le_pow₀ hRR1
    nlinarith
  have hdetc : IsOpen {Z : G.Mat (m + 1 + 1) | G.detM Z ≠ 0} := by
    refine isOpen_ne_fun ?_ continuous_const
    unfold G.detM
    exact Continuous.matrix_det (continuous_id (X := Matrix (Fin (m + 1 + 1)) (Fin (m + 1 + 1)) ℂ))
  have hdec : ∀ Z : G.Mat (m + 1 + 1), G.detM Z ≠ 0 → ContinuousAt Φ Z ∧ ‖Φ Z‖ ≤ (Cd * c) * (1 + ‖Z‖) ^ (-UD.a C₂ A₀) := by
    intro Z hZ
    have hev : Φ =ᶠ[nhds Z] Φ' := by
      filter_upwards [hdetc.mem_nhds hZ] with Z' hZ' using hΦΦ' Z' hZ'
    refine ⟨(hΦ'reg Z hZ).1.continuousAt.congr hev.symm, ?_⟩
    have h := (hΦ'reg Z hZ).2 0 (Nat.zero_le _)
    rw [norm_iteratedFDeriv_zero] at h
    rw [hΦΦ' Z hZ]
    exact h

  have hLex : ∀ γ ∈ B.GV P0.k ρ, ∃ L : V →L[ℂ] (Wd.Ix (Fin N) → (Wq →L[ℂ] Wp)), ∀ v, L v = MM.ev v γ := by
    intro γ hγ
    have hgN : 0 < B.gN γ ^ UD.a C₂ A₀ := Real.rpow_pos_of_pos (Formalism.FourierDecayAlt.P.Ux1.gN_pos hγ) _
    let L₀ : V →ₗ[ℂ] (Wd.Ix (Fin N) → (Wq →L[ℂ] Wp)) :=
      (LinearMap.proj (R := ℂ) (φ := fun _ : B.Mat P0.k ρ => Wd.Ix (Fin N) → (Wq →L[ℂ] Wp)) γ) ∘ₗ MM.ev
    have hbd : ∀ v, ‖L₀ v‖ ≤ (B.gN γ ^ UD.a C₂ A₀)⁻¹ * ‖v‖ := by
      intro v
      have h1 := (MM.mem v).2 [] [] (by simp) (by simp) (by simp) γ hγ
      rw [inv_mul_eq_div, le_div_iff₀' hgN]
      exact h1
    exact ⟨L₀.mkContinuous _ hbd, fun v => rfl⟩

  set Fι : B.Mat P0.k P0.r → (Wd.Ix (Fin N) → (Wq →L[ℂ] Wp)) :=
    fun g e => D.uwG P0.k P0.r T.base.z T.base.z' (D.cutF T.base χ f ε) i hi w e g with hFι
  have hO : IsOpen {x : B.Mat P0.k (ph + (m + 1 + 1) + ρ) |
      A1 < ‖U.DjU P0.k (ph + (m + 1 + 1)) ρ x‖ ∧ ‖U.DjU P0.k (ph + (m + 1 + 1)) ρ x‖ < A2} := by
    have hc := (Formalism.FourierDecayAlt.P.JCTx6.Pos.cont_DjU P0.k (ph + (m + 1 + 1)) ρ).norm
    exact (isOpen_lt continuous_const hc).inter (isOpen_lt hc continuous_const)
  have hread : ∀ γ ∈ B.GV P0.k ρ, ∀ Z : G.Mat (m + 1 + 1), G.detM Z ≠ 0 →
      G.detM Z ∈ (fun D => wd * D) '' Kc →
      MM.ev (Φ Z) γ = U.PhiFun P0.k ρ σ d (D.castV e1 T.base.z) (D.castV e1 T.base.z') (D.castF e1.symm Fι) Z γ := by
    intro γ hγ Z hZ hZK
    obtain ⟨D0, hD0, hZD⟩ := hZK
    rw [hΦev Z hZ γ hγ]
    unfold U.UData.Phi U.PhiFun
    refine integral_congr_ae (Eventually.of_forall fun ξ => ?_)
    simp only
    congr 1
    funext e
    have hg := Formalism.FourierDecayAlt.P.Ux10.gaXi_mem _root_.Formalism.FourierDecayAlt.P.Ux2.sliceMem _root_.Formalism.FourierDecayAlt.P.Ux2.radicalParam σ d hd ξ Z hZ hγ
    have hDj : U.DjU P0.k (ph + (m + 1 + 1)) ρ (U.gaXi P0.k ρ σ d ξ Z γ) = dh * (wd * D0) := by
      rw [Formalism.FourierDecayAlt.P.Ux10.DjU_gaXi _root_.Formalism.FourierDecayAlt.P.Ux3.zhSlice, ← hZD]
    have hb := hKj D0 hD0
    rw [← hDj] at hb
    have hDj0 : U.DjU P0.k (ph + (m + 1 + 1)) ρ (U.gaXi P0.k ρ σ d ξ Z γ) ≠ 0 := by
      intro h0; rw [h0, norm_zero] at hb; linarith [hb.1]
    have hF := hFrel e _ hg hDj0
    simp only [U.UData.F1]
    refine (Formalism.FourierDecayAlt.P.JCTx6.Pos.opApply_congr_open (Θ e) hO (fun x hx => ?_) _ hb).trans hF.symm
    show (χD (U.DjU P0.k (ph + (m + 1 + 1)) ρ x) *
      ((χ (ε⁻¹ * Formalism.QuantumDeterminants.Gf P0.k (ph + (m + 1 + 1) + ρ) z0 z0' x) : ℝ) : ℂ)) • f1 x = _
    rw [hχD1 _ hx.1.le hx.2.le, one_mul, div_eq_inv_mul]

  have hev_slv : ∀ q, okG m Kc q → ∀ γ ∈ B.GV P0.k ρ, ∀ e,
      MM.ev (yG U.betaU m Φ q) γ e =
        KB.slv T (D.cutF T.base χ f ε) i hi w (ptG h' m q) (by rw [ptSize_ptG, hsz]) e γ := by
    intro q hq γ hγ e
    obtain ⟨L, hL⟩ := hLex γ hγ
    have hloc : D.IsLocPt (ptG h' m q) i := hsz ▸ isLocPt_ptG hh' hK0 hq
    have hle : D.ptSize (ptG h' m q) ≤ P0.r := by rw [ptSize_ptG]; omega
    have hγ' : D.castM (by rw [ptSize_ptG]; omega : ρ = P0.r - D.ptSize (ptG h' m q)) γ ∈
        B.GV P0.k (P0.r - D.ptSize (ptG h' m q)) := Formalism.FourierDecayAlt.P.PBE.castM_GV _ hγ
    have hint : Integrable (fun ξ : U.Xi P0.k (D.ptSize (ptG h' m q)) 0 (P0.r - D.ptSize (ptG h' m q))
          (D.ptPerm (ptG h' m q)) =>
        U.psiStar P0.k (P0.r - D.ptSize (ptG h' m q)) (D.ptPerm (ptG h' m q))
          (D.castV (by rw [ptSize_ptG]; omega) T.base.z) (D.castV (by rw [ptSize_ptG]; omega) T.base.z') ξ •
          D.castF (by rw [ptSize_ptG]; omega) Fι
            (U.gaXi P0.k (P0.r - D.ptSize (ptG h' m q)) (D.ptPerm (ptG h' m q)) (D.ptDiag (ptG h' m q)) ξ
              (fun a => a.elim0) (D.castM (by rw [ptSize_ptG]; omega) γ)))
        (U.muXi P0.k (D.ptSize (ptG h' m q)) 0 (P0.r - D.ptSize (ptG h' m q)) (D.ptPerm (ptG h' m q))) := by
      refine integrable_pi_iff.2 fun e' => ?_
      exact hSI Wp Wq P0 T w f χ ε i hi hi1 hk2 hf ⟨Rf, hRf⟩ hχ hε _ hloc e' _ hγ'
    have hY := hYG P0.k P0.r (Wd.Ix (Fin N) → (Wq →L[ℂ] Wp)) T.base.z T.base.z' Fι h' m ρ e1 V Φ L γ Kc
      (Cd * c) (UD.a C₂ A₀) hh' hK0 hma hdec
      (fun Z hZ hZK => by rw [hL]; exact hread γ hγ Z hZ hZK) q hq hint
    rw [← hL, hY, sliceAt_apply _ _ _ _ hle _ e hint]
    rfl

  have hz1 : U.lowV P0.k (ph + (m + 1 + 1)) ρ z0 = (T.bs i).z := by
    have hzl : T.base.z = D.castV (by omega) (Formalism.QuantumDeterminants.liftVec P0.k i (P0.r - i) (T.bs i).z) := (T.z_lev i hi).symm
    rw [hz0, hzl, Formalism.FourierDecayAlt.P.Dx2.SL.castV_castV]
    exact Formalism.FourierDecayAlt.P.JCTx6.Link2.lowV_liftVec (by omega) _ _
  have hz1' : U.lowV P0.k (ph + (m + 1 + 1)) ρ z0' = (T.bs i).z' := by
    have hzl : T.base.z' = D.castV (by omega) (Formalism.QuantumDeterminants.liftVec P0.k i (P0.r - i) (T.bs i).z') := (T.z'_lev i hi).symm
    rw [hz0', hzl, Formalism.FourierDecayAlt.P.Dx2.SL.castV_castV]
    exact Formalism.FourierDecayAlt.P.JCTx6.Link2.lowV_liftVec (by omega) _ _
  have hSg : ∀ γ ∈ UD.S, ε'' ≤ Formalism.QuantumDeterminants.Gf P0.k (P0.r - i) (T.bs i).z (T.bs i).z' γ := by
    intro γ hγ
    have h := hγ
    simp only [U.UData.S, Set.mem_ofPred_eq] at h
    rw [← hz1, ← hz1']
    exact h
  obtain ⟨Bf, Cp, hCp0, hBf, hBfx⟩ := hFM Wp Wq P0 T sg ⟨i, by omega⟩ w (UD.a C₂ A₀) UD.mmB ε'' UD.S hε''
    hAa (by show P5.mmUser P0 N ≤ mmB; omega) (by show 5 + (2 * (P0.r - i) + P0.k + 1) * N ≤ mmB; omega) hSg V MM
  have hcls : ∀ (v : V) (e : Wd.Ix (Fin N)),
      JC.CCCoefM (T.bs i) (P5.Auser P0 w.length + 1) (P5.mmUser P0 w.length) ε'' (fun γ => MM.ev v γ e) := by
    intro v e
    have h1 : B.CCle (UD.a C₂ A₀) UD.mmB (fun γ => MM.ev v γ e) ‖v‖ := ccle_comp (MM.mem v) e
    have h2 : B.CCle (P5.Auser P0 N + 1) UD.mmB (fun γ => MM.ev v γ e) ‖v‖ :=
      _root_.Formalism.FourierDecayAlt.P.Ux8.ccMono P0.k ρ _ (UD.a C₂ A₀) _ ‖v‖ UD.mmB _ hAa h1
    have h3 : B.CCle (P5.Auser P0 N + 1) (P5.mmUser P0 N) (fun γ => MM.ev v γ e) ‖v‖ :=
      Formalism.FourierDecayAlt.P.BetaSesquilinearity.CCle_mono_m (by show P5.mmUser P0 N ≤ mmB; omega) h2
    refine ⟨h3.1, ⟨_, h3⟩, fun γ hγ hne => ?_⟩
    have hS : γ ∈ UD.S := by
      by_contra hn
      apply hne
      show MM.ev v γ e = 0
      rw [MM.off v γ hγ hn]
      rfl
    exact hSg γ hS
  have hform : ∀ q1 q2, okG m Kc q1 → okG m Kc q2 →
      D.formLev T sg ⟨i, by omega⟩ w
        (KB.slv T (D.cutF T.base χ f ε) i hi w (ptG h' m q1) (by rw [ptSize_ptG, hsz]))
        (KB.slv T (D.cutF T.base χ f ε) i hi w (ptG h' m q2) (by rw [ptSize_ptG, hsz])) =
      Bf (yG U.betaU m Φ q1) (yG U.betaU m Φ q2) := by
    intro q1 q2 hq1 hq2
    refine (hBfx _ _ _ _ ε'' hε'' (fun e => ?_) (fun e => ?_) (fun e γ hγ => hev_slv q1 hq1 γ hγ e)
      (fun e γ hγ => hev_slv q2 hq2 γ hγ e)).symm
    · exact cccoef_congr (fun γ hγ => hev_slv q1 hq1 γ hγ e) (hcls _ e)
    · exact cccoef_congr (fun γ hγ => hev_slv q2 hq2 γ hγ e) (hcls _ e)
  exact ⟨V, indexVFirst, indexVSecond, hVc, Bf, Φ, Cp, Cst * c, hCp0, hBf, hform, fun t D ht hD => hΦg t D ht hD⟩

end

end Formalism.FourierDecayAlt.P.FormNormSumIdentities
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.SliceAtApply =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.IntegrableBlockIntegrand =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.IntegrableBlockIntegrand", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SlicesFiniteRegularityBuilt\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.OrbitTailEstimates\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.OrbitalIntegralConvergesAbs\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.WirtingerIntegrationByParts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Countable\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Separation.CompletelyRegular\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.FormNormSumIdentities

open Formalism.FourierDecayAlt Formalism.FourierDecayAlt.G MeasureTheory Filter

noncomputable section

section om

variable {V W : Type} [NormedAddCommGroup V] [NormedSpace ℂ V] [NormedAddCommGroup W] [NormedSpace ℂ W]

theorem maxpow_le_onepow {x y a : ℝ} (hy : 0 ≤ y) (hxy : y ≤ x) (ha : 0 ≤ a) :
    (1 + x) ^ (-a) ≤ (max 1 y) ^ (-a) := by
  refine Real.rpow_le_rpow_of_nonpos (lt_of_lt_of_le one_pos (le_max_left _ _)) ?_ (by linarith)
  exact max_le (by linarith) (by linarith)

theorem continuous_lowRow (n : ℕ) : Continuous (fun a : Fin n → ℂ => lowRow a) := by
  unfold lowRow
  exact P.G7.continuous_blk continuous_const continuous_const continuous_id continuous_const

theorem continuous_blkU (n : ℕ) :
    Continuous (fun p : (UT n → ℂ) × (Fin n → ℂ) => blk (upper p.1) p.2 0 1) :=
  P.G7.continuous_blk (P.Dx2.SL.cont_upper.comp continuous_fst) continuous_snd continuous_const continuous_const

theorem continuous_orbM (n : ℕ) (t c : ℂ) : Continuous (orbM n t c) := by
  unfold orbM
  refine Continuous.matrix_mul (Continuous.matrix_mul ((continuous_lowRow n).comp continuous_fst) continuous_const) ?_
  exact (continuous_blkU n).comp (continuous_snd)

theorem integrable_blockIntegrand (β : ℂ) (m : ℕ) (Φ : Mat (m + 2) → V) (t c : ℂ) (ht : t ≠ 0) (K a : ℝ)
    (ha : ((m : ℝ) + 1) * ((m : ℝ) + 4) < a) (hc : ∀ p, ContinuousAt Φ (orbM (m + 1) t c p))
    (hb : ∀ p, ‖Φ (orbM (m + 1) t c p)‖ ≤ K * (1 + ‖orbM (m + 1) t c p‖) ^ (-a)) :
    Integrable (blockIntegrand β (m + 1) Φ t c) (muBlock β (m + 1)) := by
  have ha0 : 0 ≤ a := le_trans (by positivity) ha.le
  have hK : 0 ≤ K := by
    have h := hb 0
    by_contra hn
    have : K * (1 + ‖orbM (m + 1) t c 0‖) ^ (-a) < 0 :=
      mul_neg_of_neg_of_pos (lt_of_not_ge hn) (Real.rpow_pos_of_pos (by positivity) _)
    linarith [norm_nonneg (Φ (orbM (m + 1) t c 0))]
  have hpt : ∀ p : BlockCoord (m + 1),
      ‖blockIntegrand β (m + 1) Φ t c p‖ ≤ K * (max 1 ‖coordMap (m + 1) t p‖) ^ (-a) := by
    intro p
    rw [P.OrbitTailEstimates.norm_blockIntegrand]
    refine (hb p).trans (mul_le_mul_of_nonneg_left ?_ hK)
    exact maxpow_le_onepow (norm_nonneg _) (P.OrbitTailEstimates.norm_coordMap_le (m + 1) t c p) ha0
  obtain ⟨k, hk⟩ := P.G7.muBlock_eq β (m + 1)
  have i3 : BorelSpace (BlockCoord (m + 1)) := inferInstance
  have j1 : (volume : Measure ((UT (m + 1) → ℂ) × (Fin (m + 1) → ℂ))).IsAddHaarMeasure :=
    Measure.prod.instIsAddHaarMeasure _ _
  have j2 : (volume : Measure (BlockCoord (m + 1))).IsAddHaarMeasure :=
    Measure.prod.instIsAddHaarMeasure _ _
  have hfr : (Module.finrank ℝ (BlockCoord (m + 1)) : ℝ) < a := by
    rw [P.OrbitTailEstimates.finrank_block_cast]; exact ha
  have hI : Integrable (fun q : BlockCoord (m + 1) => (max 1 ‖q‖) ^ (-a)) (muBlock β (m + 1)) := by
    rw [hk]; exact (P.OrbitTailEstimates.integrable_maxpow volume a hfr).smul_measure_nnreal
  have hJ := P.G7.jacobian (m + 1) β t ht
  have hI' : Integrable (fun p : BlockCoord (m + 1) => (max 1 ‖coordMap (m + 1) t p‖) ^ (-a))
      (muBlock β (m + 1)) := by
    have h2 : Integrable (fun q : BlockCoord (m + 1) => (max 1 ‖q‖) ^ (-a))
        (Measure.map (coordMap (m + 1) t) (muBlock β (m + 1))) := hJ ▸ hI.smul_measure_nnreal
    exact (P.G7.embedding_coordMap _ t ht).integrable_map_iff.1 h2
  have hcont : Continuous (blockIntegrand β (m + 1) Φ t c) := by
    unfold blockIntegrand
    refine Continuous.smul ?_ ?_
    · have h1 : Continuous fun p : BlockCoord (m + 1) => G.subSum (lowRow p.1) := by
        unfold G.subSum
        exact continuous_finsetSum _ fun i _ =>
          (continuous_apply _).comp ((continuous_apply _).comp ((continuous_lowRow (m + 1)).comp continuous_fst))
      have h2 : Continuous fun p : BlockCoord (m + 1) => G.superSum (blk (upper p.2.1) p.2.2 0 1) := by
        unfold G.superSum
        exact continuous_finsetSum _ fun i _ =>
          (continuous_apply _).comp ((continuous_apply _).comp ((continuous_blkU (m + 1)).comp continuous_snd))
      exact ((P.G7.continuous_psi β).comp h1).mul ((P.G7.continuous_psi β).comp h2)
    · exact continuous_iff_continuousAt.2 fun p => (hc p).comp (continuous_orbM (m + 1) t c).continuousAt
  exact (hI'.const_mul K).mono' hcont.aestronglyMeasurable (Eventually.of_forall hpt)

theorem integrable_longIntegrand (n : ℕ) (Φ : Mat (n + 1) → V) (z : ℂ) (hz : z ≠ 0) (K a : ℝ)
    (ha : (Module.finrank ℝ (UT (n + 1) → ℂ) : ℝ) < a)
    (hc : ∀ v, ContinuousAt Φ (P.JCTx6.Pos.Zv n z v))
    (hb : ∀ v, ‖Φ (P.JCTx6.Pos.Zv n z v)‖ ≤ K * (1 + ‖P.JCTx6.Pos.Zv n z v‖) ^ (-a)) :
    Integrable (fun v : UT (n + 1) → ℂ => psi U.betaU (superSum (upper v)) • Φ (P.JCTx6.Pos.Zv n z v))
      (muPi U.betaU (UT (n + 1))) := by
  have ha0 : 0 ≤ a := le_trans (Nat.cast_nonneg _) ha.le
  have hK : 0 ≤ K := by
    have h := hb 0
    by_contra hn
    have : K * (1 + ‖P.JCTx6.Pos.Zv n z 0‖) ^ (-a) < 0 :=
      mul_neg_of_neg_of_pos (lt_of_not_ge hn) (Real.rpow_pos_of_pos (by positivity) _)
    linarith [norm_nonneg (Φ (P.JCTx6.Pos.Zv n z 0))]
  have hZc : Continuous (fun v : UT (n + 1) → ℂ => P.JCTx6.Pos.Zv n z v) := by
    show Continuous (fun v : UT (n + 1) → ℂ =>
      ((ptLong (n + 1) z * upper v : Matrix (Fin (n + 1)) (Fin (n + 1)) ℂ) : Mat (n + 1)))
    exact continuous_const.matrix_mul P.Dx2.SL.cont_upper
  have hΦc : Continuous (fun v : UT (n + 1) → ℂ => Φ (P.JCTx6.Pos.Zv n z v)) :=
    continuous_iff_continuousAt.2 fun v => (hc v).comp hZc.continuousAt
  have hψc : Continuous (fun v : UT (n + 1) → ℂ => psi U.betaU (superSum (upper v))) := by
    have h1 : Continuous fun v : UT (n + 1) → ℂ => superSum (upper v) := by
      unfold superSum
      exact continuous_finsetSum _ fun i _ =>
        (continuous_apply _).comp ((continuous_apply _).comp P.Dx2.SL.cont_upper)
    exact (P.G7.continuous_psi _).comp h1
  have hbound : ∀ v : UT (n + 1) → ℂ, ‖psi U.betaU (superSum (upper v)) • Φ (P.JCTx6.Pos.Zv n z v)‖ ≤
      K * (min 1 ‖z‖) ^ (-a) * (1 + ‖v‖) ^ (-a) := by
    intro v
    rw [norm_smul, P.WirtingerIntegrationByParts.norm_psi, one_mul]
    refine (hb v).trans ?_
    have := mul_le_mul_of_nonneg_left (P.JCTx6.Pos.Zv_decay n hz v ha0) hK
    rw [← mul_assoc] at this
    exact this
  rw [P.Dx2.SL.muPi_betaU]
  apply Integrable.smul_measure_nnreal
  exact ((integrable_one_add_norm ha).const_mul (K * (min 1 ‖z‖) ^ (-a))).mono'
    (hψc.smul hΦc).aestronglyMeasurable (Eventually.of_forall hbound)

theorem clm_omBlock [CompleteSpace V] [CompleteSpace W] (L : V →L[ℂ] W) (β : ℂ) (n : ℕ) (Φ : Mat (n + 1) → V)
    (t c : ℂ) (hI : Integrable (blockIntegrand β n Φ t c) (muBlock β n)) :
    L (OmBlock β n Φ t c) = OmBlock β n (fun Z => L (Φ Z)) t c := by
  unfold OmBlock
  rw [← L.integral_comp_comm hI]
  refine integral_congr_ae (Eventually.of_forall fun p => ?_)
  simp only [blockIntegrand, L.map_smul]

theorem clm_omLong [CompleteSpace V] [CompleteSpace W] (L : V →L[ℂ] W) (β : ℂ) (n : ℕ) (Φ : Mat (n + 1) → V)
    (z : ℂ) (hI : Integrable (fun v : UT (n + 1) → ℂ => psi β (superSum (upper v)) • Φ (ptLong (n + 1) z * upper v))
      (muPi β (UT (n + 1)))) :
    L (OmLong β n Φ z) = OmLong β n (fun Z => L (Φ Z)) z := by
  unfold OmLong
  rw [← L.integral_comp_comm hI]
  refine integral_congr_ae (Eventually.of_forall fun v => ?_)
  simp only [L.map_smul]

end om

end

end Formalism.FourierDecayAlt.P.FormNormSumIdentities
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.IntegrableBlockIntegrand =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.SliceOrbitalBlock =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.SliceOrbitalBlock", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SliceOmBlock\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SymmetricScalarBlockMatrixOneZero\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.ComponentFamilySettingOfSetting\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix MeasureTheory Formalism.QuantumDeterminants Formalism.FourierDecayAlt

noncomputable section

namespace Formalism.FourierDecayAlt.P.FormNormSumIdentities.GlobalTheory

open Formalism.FourierDecayAlt.P.PBJ

section core

variable {k ρ ph m : ℕ} {E : Type} [NormedAddCommGroup E] [NormedSpace ℂ E] [CompleteSpace E]

theorem coreQ (σh : Equiv.Perm (Fin ph)) (dh : Fin ph → ℂ) (σb : Equiv.Perm (Fin m)) (db : Fin m → ℂ)
    (z z' : Fin (2 * (ph + m + ρ) + k + 1) → ℂ) (F : B.Mat k (ph + m + ρ) → E) (γ : B.Mat k ρ)
    (hint : Integrable (fun ξ : U.Xi k (ph + m) 0 ρ (Fub.sigQ σh σb) =>
        U.psiStar (p := ph + m) (s := 0) k ρ (Fub.sigQ σh σb) z z' ξ •
          F (U.gaXi (p := ph + m) (s := 0) k ρ (Fub.sigQ σh σb) (Fub.dQ dh db) ξ (fun a => a.elim0) γ))
      (U.muXi k (ph + m) 0 ρ (Fub.sigQ σh σb))) :
    U.PhiFun (p := ph + m) (s := 0) k ρ (Fub.sigQ σh σb) (Fub.dQ dh db) z z' F (fun a => a.elim0) γ =
      U.PhiTop (p := m) (s := 0) U.betaU σb db
        (fun Z => U.PhiFun (p := ph) (s := m) k ρ σh dh z z' F Z γ) (fun x => x.elim0) := by
  set RR := U.RC k (ph + m) ρ × U.RC k (ph + m) ρ
  have sR := Dx2.SL.sigma_RC k (ph + m) ρ
  set μR : Measure RR := (U.muRC k (ph + m) ρ).prod (U.muRC k (ph + m) ρ)
  have s1 := Fub.sfXiH ph m σh
  have s2 := Fub.sfXiH m 0 σb
  have s3 : SFinite (U.muXiH (ph + m) 0 (Fub.sigQ σh σb)) := Fub.sfXiH (ph + m) 0 (Fub.sigQ σh σb)
  let g : RR × (U.XiH ph m σh × U.XiH m 0 σb) → E := fun y =>
    U.psiH U.betaU σb y.2.2 •
      (U.psiStar (p := ph) (s := m) k ρ σh z z' (y.1, y.2.1) • F (U.gaXi (p := ph) (s := m) k ρ σh dh (y.1, y.2.1)
        (Matrix.of.symm (U.ZjH (p := m) (s := 0) σb db y.2.2 (fun x => x.elim0))) γ))
  let Φ : U.Xi k (ph + m) 0 ρ (Fub.sigQ σh σb) ≃ᵐ RR × (U.XiH ph m σh × U.XiH m 0 σb) :=
    MeasurableEquiv.prodCongr (MeasurableEquiv.refl RR) (Fub.xiE σh σb)
  have hΦ : MeasurePreserving Φ (U.muXi k (ph + m) 0 ρ (Fub.sigQ σh σb)) (μR.prod (volume.prod volume)) :=
    (MeasurePreserving.id μR).prod (Fub.xiE_mp σh σb)
  have hfg : (fun ξ : U.Xi k (ph + m) 0 ρ (Fub.sigQ σh σb) =>
      U.psiStar (p := ph + m) (s := 0) k ρ (Fub.sigQ σh σb) z z' ξ •
        F (U.gaXi (p := ph + m) (s := 0) k ρ (Fub.sigQ σh σb) (Fub.dQ dh db) ξ (fun a => a.elim0) γ)) = g ∘ Φ := by
    funext ξ
    obtain ⟨x, ⟨a0, b0⟩, v, u⟩ := ξ
    rw [Function.comp_apply]
    rw [show Φ (x, ((a0, b0), v, u)) = (x, Fub.xiE σh σb ((a0, b0), v, u)) from rfl, Fub.xiE_apply]
    simp only [g, U.psiStar, U.gaXi, U.ZjH, Dx2.SL.zj_zero, Fub.zj_split, Equiv.apply_symm_apply]
    rw [Fub.psiH_split σh σb U.betaU a0 b0 (Dx2.SL.uniqueT m).toInhabited.default v u, smul_smul]
    congr 1
    have e1 : Formalism.QuantumDeterminants.psi k (ph + m + 0 + ρ) z cStd (U.Rn k (ph + m + 0) ρ x.1) =
        Formalism.QuantumDeterminants.psi k (ph + m + ρ) z cStd (U.Rn k (ph + m) ρ x.1) := rfl
    have e2 : Formalism.QuantumDeterminants.psi k (ph + m + 0 + ρ) z' cStd (U.Rn k (ph + m + 0) ρ x.2) =
        Formalism.QuantumDeterminants.psi k (ph + m + ρ) z' cStd (U.Rn k (ph + m) ρ x.2) := rfl
    rw [e1, e2]
    ring
  have hg : Integrable g (μR.prod (volume.prod volume)) := by
    have := hint; rw [hfg] at this
    exact (hΦ.integrable_comp_emb Φ.measurableEmbedding).mp this
  have hL : U.PhiFun (p := ph + m) (s := 0) k ρ (Fub.sigQ σh σb) (Fub.dQ dh db) z z' F (fun a => a.elim0) γ =
      ∫ y, g y ∂(μR.prod (volume.prod volume)) := by
    unfold U.PhiFun
    rw [hfg]
    exact hΦ.integral_comp' g
  have hA : MeasurePreserving (MeasurableEquiv.prodAssoc : (RR × U.XiH ph m σh) × U.XiH m 0 σb ≃ᵐ _)
      ((μR.prod volume).prod volume) (μR.prod (volume.prod volume)) := Dx2.SL.assoc_mp μR volume volume
  let g' : (RR × U.XiH ph m σh) × U.XiH m 0 σb → E := fun w => g (w.1.1, (w.1.2, w.2))
  have eg : g ∘ (MeasurableEquiv.prodAssoc : (RR × U.XiH ph m σh) × U.XiH m 0 σb ≃ᵐ _) = g' := rfl
  have hg' : Integrable g' ((μR.prod volume).prod volume) := by
    rw [← eg]; exact (hA.integrable_comp_emb MeasurableEquiv.prodAssoc.measurableEmbedding).mpr hg
  have hA' : ∫ y, g y ∂(μR.prod (volume.prod volume)) = ∫ w, g' w ∂((μR.prod volume).prod volume) :=
    (hA.integral_comp' g).symm
  rw [hL, hA', MeasureTheory.integral_prod_symm g' hg']
  unfold U.PhiTop
  rw [show U.muXiH m 0 σb = volume from rfl]
  congr 1
  funext η
  change (∫ x, U.psiH U.betaU σb η • _ ∂(μR.prod volume)) = _
  rw [integral_smul]
  rfl

end core

section wrap

theorem partner_two (h : C.LPt) (n : ℕ) (t c : ℂ) (a : ℕ) (ha : a < D.ptSize h + (n + 1 + 1)) :
    D.ptPartner (h ++ [(n + 1, t), (1, c)]) a =
      if a < D.ptSize h then D.ptPartner h a else if a < D.ptSize h + (n + 1) then D.ptSize h + (n - (a - D.ptSize h))
        else a := by
  rw [show h ++ [(n + 1, t), (1, c)] = (h ++ [(n + 1, t)]) ++ [(1, c)] by simp]
  rw [Dx2.SL.partner_append 1 c (h ++ [(n + 1, t)]) a (by rw [Dx2.SL.ptSize_append]; omega), Dx2.SL.ptSize_append]
  by_cases h1 : a < D.ptSize h + (n + 1)
  · rw [if_pos h1, Dx2.SL.partner_append (n + 1) t h a h1]
    by_cases h2 : a < D.ptSize h
    · rw [if_pos h2, if_pos h2]
    · rw [if_neg h2, if_neg h2, if_pos h1]; omega
  · rw [if_neg h1, if_neg (by omega), if_neg h1]; omega

theorem scal_two (h : C.LPt) (n : ℕ) (t c : ℂ) (a : ℕ) (ha : a < D.ptSize h + (n + 1 + 1)) :
    D.ptScal (h ++ [(n + 1, t), (1, c)]) a =
      if a < D.ptSize h then D.ptScal h a else if a < D.ptSize h + (n + 1) then t else c := by
  rw [show h ++ [(n + 1, t), (1, c)] = (h ++ [(n + 1, t)]) ++ [(1, c)] by simp]
  rw [Dx2.SL.scal_append 1 c (h ++ [(n + 1, t)]) a (by rw [Dx2.SL.ptSize_append]; omega), Dx2.SL.ptSize_append]
  by_cases h1 : a < D.ptSize h + (n + 1)
  · rw [if_pos h1, Dx2.SL.scal_append (n + 1) t h a h1]
    by_cases h2 : a < D.ptSize h
    · rw [if_pos h2, if_pos h2]
    · rw [if_neg h2, if_neg h2, if_pos h1]
  · rw [if_neg h1, if_neg (by omega), if_neg h1]

theorem kapB_mul (n : ℕ) :
    kapB n * ((Real.toNNReal (‖U.betaU‖ / (2 * Real.pi)) ^ (Fintype.card (Fin (n + 1)) +
        (Fintype.card (G.UT (n + 1)) + Fintype.card (Fin (n + 1)))) : NNReal) : ℝ) = 1 := by
  rw [Dx2.SL.norm_betaU, show (2 : ℝ) / (2 * Real.pi) = 1 / Real.pi by field_simp, Dx2.SL.card_UT' n,
    Fintype.card_fin]
  have hp : (0 : ℝ) < Real.pi := Real.pi_pos
  have hN : (n + 1) * (n + 4) / 2 = n + 1 + ((n + 1) * n / 2 + (n + 1)) := by
    have h2 : 2 ∣ (n + 1) * n := (Nat.even_mul_pred_self (n + 1)).two_dvd
    obtain ⟨q, hq⟩ := h2
    have e : (n + 1) * (n + 4) = 2 * (q + 2 * (n + 1)) := by nlinarith
    rw [e, hq]; omega
  unfold kapB
  rw [NNReal.coe_pow, Real.coe_toNNReal _ (by positivity), hN, ← mul_pow, mul_one_div_cancel hp.ne', one_pow]

end wrap

section final

theorem sliceOmBlock : SliceOmBlock := by
  intro k r E _ _ _ z z' F h p n t c hp hle γ hloc hint
  subst hp
  have hP : D.ptSize (h ++ [(n + 1, t), (1, c)]) = D.ptSize h + (n + 1 + 1) := ptSize_two h n t c
  have hlocH : D.IsLocPt h (D.ptSize h) := ⟨fun b hb => hloc.1 b (List.mem_append_left _ hb), rfl⟩
  have hspec := (_root_.Formalism.FourierDecayAlt.P.Dx1.d_ptPermSpec _ _ hloc).1
  have hspec' := (_root_.Formalism.FourierDecayAlt.P.Dx1.d_ptPermSpec _ _ hlocH).1
  set ph := D.ptSize h with hph
  have hσ : ∀ a : Fin (D.ptSize (h ++ [(n + 1, t), (1, c)])),
      ((Fub.sigQ (D.ptPerm h) (Om.σB (n + 1))) (Fin.cast hP a)).val =
        (D.ptPerm (h ++ [(n + 1, t), (1, c)]) a).val := by
    intro a
    have ha : a.val < ph + (n + 1 + 1) := by have := a.isLt; omega
    rw [hspec a, partner_two h n t c a.val ha]
    by_cases h1 : a.val < ph
    · rw [if_pos h1]
      have e : Fin.cast hP a = Fin.castAdd (n + 1 + 1) ⟨a.val, h1⟩ := Fin.ext rfl
      rw [e, Fub.sigQ_castAdd]
      exact hspec' ⟨a.val, h1⟩
    · rw [if_neg h1]
      have e : Fin.cast hP a = Fin.natAdd ph ⟨a.val - ph, by omega⟩ := Fin.ext (by simp; omega)
      rw [e, Fub.sigQ_natAdd, Fin.val_natAdd]
      by_cases h2 : a.val < ph + (n + 1)
      · rw [if_pos h2]
        have e2 : (⟨a.val - ph, by omega⟩ : Fin (n + 1 + 1)) = Fin.castAdd 1 ⟨a.val - ph, by omega⟩ := Fin.ext rfl
        rw [e2, Om.σB, Fub.sigQ_castAdd, Fin.val_castAdd]
        simp only [Fin.revPerm_apply, Fin.val_rev]
        omega
      · rw [if_neg h2]
        have e2 : (⟨a.val - ph, by omega⟩ : Fin (n + 1 + 1)) = Fin.natAdd (n + 1) (0 : Fin 1) :=
          Fin.ext (by simp; omega)
        rw [e2, Om.σB, Fub.sigQ_natAdd, Fin.val_natAdd]
        simp
        omega
  have hd : ∀ a : Fin (D.ptSize (h ++ [(n + 1, t), (1, c)])),
      Fub.dQ (D.ptDiag h) (Fub.dQ (fun _ : Fin (n + 1) => t) (fun _ : Fin 1 => c)) (Fin.cast hP a) =
        D.ptDiag (h ++ [(n + 1, t), (1, c)]) a := by
    intro a
    have ha : a.val < ph + (n + 1 + 1) := by have := a.isLt; omega
    simp only [D.ptDiag]
    rw [scal_two h n t c a.val ha]
    by_cases h1 : a.val < ph
    · rw [if_pos h1]
      have e : Fin.cast hP a = Fin.castAdd (n + 1 + 1) ⟨a.val, h1⟩ := Fin.ext rfl
      rw [e, Fub.dQ, Fin.addCases_left]; rfl
    · rw [if_neg h1]
      have e : Fin.cast hP a = Fin.natAdd ph ⟨a.val - ph, by omega⟩ := Fin.ext (by simp; omega)
      rw [e, Fub.dQ, Fin.addCases_right]
      by_cases h2 : a.val < ph + (n + 1)
      · rw [if_pos h2]
        have e2 : (⟨a.val - ph, by omega⟩ : Fin (n + 1 + 1)) = Fin.castAdd 1 ⟨a.val - ph, by omega⟩ := Fin.ext rfl
        rw [e2, Fub.dQ, Fin.addCases_left]
      · rw [if_neg h2]
        have e2 : (⟨a.val - ph, by omega⟩ : Fin (n + 1 + 1)) = Fin.natAdd (n + 1) (0 : Fin 1) :=
          Fin.ext (by simp; omega)
        rw [e2, Fub.dQ, Fin.addCases_right]
  obtain ⟨hT1, hT2⟩ := Dx2.SL.phi_transport (k := k) (ρ := r - D.ptSize (h ++ [(n + 1, t), (1, c)])) hP _ _ hσ _ _ hd
    (D.castV (by omega) z) (D.castV (by omega) z') (D.castF (by omega) F) γ
  have hc := coreQ (k := k) (ρ := r - D.ptSize (h ++ [(n + 1, t), (1, c)])) (D.ptPerm h) (D.ptDiag h) (Om.σB (n + 1))
    (Fub.dQ (fun _ : Fin (n + 1) => t) (fun _ : Fin 1 => c)) _ _ _ γ (hT1 hint)
  unfold D.sliceAt
  rw [dite_eq_left hle, hT2, hc, Om.omBlock_eq, smul_smul, ← Complex.ofReal_mul]
  rw [kapB_mul n, Complex.ofReal_one, one_smul]
  simp only [Dx2.SL.castV_castV, Dx2.SL.castF_castF]

end final

end Formalism.FourierDecayAlt.P.FormNormSumIdentities.GlobalTheory

end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.SliceOrbitalBlock =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.SliceGermPoints =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.SliceGermPoints", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.YGSlice\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.IntegrableBlockIntegrand\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.LevelsOfBuiltSetting\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.OrbitTailEstimates\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SliceOrbitalBlock\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.SymmetricScalarBlockMatrixMul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.FormNormSumIdentities

open Formalism.FourierDecayAlt Formalism.FourierDecayAlt.G MeasureTheory

noncomputable section

section tr

variable {E : Type} [NormedAddCommGroup E] [NormedSpace ℂ E]

theorem phiFun_tr {k p s ρ ρ' r : ℕ} (hρ : ρ = ρ') (σ : Equiv.Perm (Fin p)) (d : Fin p → ℂ)
    (z z' : Fin (2 * r + k + 1) → ℂ) (F : B.Mat k r → E) (e : r = p + s + ρ) (e' : r = p + s + ρ')
    (Z : G.Mat s) (γ : B.Mat k ρ) :
    U.PhiFun k ρ' σ d (D.castV e' z) (D.castV e' z') (D.castF e'.symm F) Z (D.castM hρ γ) =
      U.PhiFun k ρ σ d (D.castV e z) (D.castV e z') (D.castF e.symm F) Z γ := by
  subst hρ
  rw [Formalism.FourierDecayAlt.P.JCTx5.castM_rfl]

end tr

theorem finrank_UT_lt (m : ℕ) (a : ℝ) (ha : ((m : ℝ) + 1) * ((m : ℝ) + 4) < a) :
    (Module.finrank ℝ (UT (m + 1 + 1) → ℂ) : ℝ) < a := by
  have h1 : Module.finrank ℝ (UT (m + 1 + 1) → ℂ) = Fintype.card (UT (m + 1 + 1)) * 2 := by
    rw [Module.finrank_pi_fintype]
    simp [Complex.finrank_real_complex]
  have h2 := Formalism.FourierDecayAlt.P.Dx2.SL.card_UT (m + 1 + 1)
  have h3 : ((Fintype.card (UT (m + 1 + 1)) * 2 : ℕ) : ℝ) = ((m : ℝ) + 2) * ((m : ℝ) + 1) := by
    have : Fintype.card (UT (m + 1 + 1)) * 2 = (m + 2) * (m + 1) := by
      rw [mul_comm, h2, show m + 1 + 1 - 1 = m + 1 by omega]
    rw [this]; push_cast; ring
  rw [h1, h3]
  nlinarith

end

end Formalism.FourierDecayAlt.P.FormNormSumIdentities

namespace Formalism.FourierDecayAlt.P

open Formalism.FourierDecayAlt Formalism.FourierDecayAlt.G MeasureTheory Formalism.FourierDecayAlt.P.FormNormSumIdentities

theorem slice_germ_points : Formalism.FourierDecayAlt.P.FormNormSumIdentities.YGSlice := by
  intro k r E _ _ _ z z' F h' m ρ e1 V _ _ _ Φ L γ Kc K a hh' hKc ha hΦ hL q hq hint
  have hW : (G.wMat (m + 1)).det ≠ 0 := (Formalism.FourierDecayAlt.P.Ux3.wMat_det (m + 1)).ne_zero
  rcases q with ⟨t, c⟩ | w0
  · obtain ⟨ht, hcK⟩ := hq
    have hc0 : c ≠ 0 := by
      rintro rfl; apply hKc; simpa using hcK
    have hne : ∀ p, G.detM (G.orbM (m + 1) t c p) ≠ 0 := by
      intro p; rw [Formalism.FourierDecayAlt.P.OrbitTailEstimates.detM_orbM]
      exact mul_ne_zero hW (fun h0 => hKc (h0 ▸ hcK))
    have himg : ∀ p, G.detM (G.orbM (m + 1) t c p) ∈ (fun D => (G.wMat (m + 1)).det * D) '' Kc :=
      fun p => ⟨c * t ^ (m + 1), hcK, (Formalism.FourierDecayAlt.P.OrbitTailEstimates.detM_orbM _ _ _ _).symm⟩
    have hI := integrable_blockIntegrand U.betaU m Φ t c ht K a ha (fun p => (hΦ _ (hne p)).1)
      (fun p => (hΦ _ (hne p)).2)
    show L (((kapB m : ℝ) : ℂ) • G.OmBlock U.betaU (m + 1) Φ t c) = _
    rw [L.map_smul, clm_omBlock L U.betaU (m + 1) Φ t c hI]
    have hloc : D.IsLocPt (ptG h' m (Sum.inl (t, c))) (D.ptSize (ptG h' m (Sum.inl (t, c)))) := by
      refine ⟨fun b hb => ?_, rfl⟩
      simp only [ptG, List.mem_append, List.mem_cons, List.not_mem_nil, or_false] at hb
      rcases hb with hb | hb | hb
      · exact hh'.1 b hb
      · subst hb; exact ⟨by omega, ht⟩
      · subst hb; exact ⟨le_rfl, hc0⟩
    have hle : D.ptSize (ptG h' m (Sum.inl (t, c))) ≤ r := by rw [ptSize_ptG]; omega
    have hSB := _root_.Formalism.FourierDecayAlt.P.FormNormSumIdentities.GlobalTheory.sliceOmBlock k r E z z' F h' (ptG h' m (Sum.inl (t, c))) m t c rfl hle
      (D.castM (by rw [ptSize_ptG]; omega) γ) hloc hint
    rw [hSB]
    congr 1
    unfold G.OmBlock
    congr 1
    funext p
    unfold G.blockIntegrand
    congr 1
    have hp := hL _ (hne p) (himg p)
    simp only [G.orbM] at hp
    exact hp.trans (phiFun_tr (by rw [ptSize_ptG]; omega) _ _ z z' F _ _ _ γ).symm
  · obtain ⟨D0, hDK, hz⟩ := hq
    have hz0 : w0 ≠ 0 := by
      rintro rfl
      apply hKc
      have : (0 : ℂ) = (-1) ^ (m + 3) * D0 := by simpa using hz
      have h1 : D0 = 0 := by
        rcases mul_eq_zero.1 this.symm with h | h
        · exact absurd h (pow_ne_zero _ (by norm_num))
        · exact h
      exact h1 ▸ hDK
    have hne : ∀ v, G.detM (Formalism.FourierDecayAlt.P.JCTx6.Pos.Zv (m + 1) w0 v) ≠ 0 := by
      intro v
      have := Formalism.FourierDecayAlt.P.OrbitTailEstimates.detM_longM m w0 D0 hz v
      show G.detM (Formalism.FourierDecayAlt.P.OrbitTailEstimates.longM (m + 1 + 1) w0 v) ≠ 0
      rw [this]
      exact mul_ne_zero hW (fun h0 => hKc (h0 ▸ hDK))
    have himg : ∀ v, G.detM (Formalism.FourierDecayAlt.P.JCTx6.Pos.Zv (m + 1) w0 v) ∈ (fun D => (G.wMat (m + 1)).det * D) '' Kc :=
      fun v => ⟨D0, hDK, (Formalism.FourierDecayAlt.P.OrbitTailEstimates.detM_longM m w0 D0 hz v).symm⟩
    have hI := integrable_longIntegrand (m + 1) Φ w0 hz0 K a (finrank_UT_lt m a ha)
      (fun v => (hΦ _ (hne v)).1) (fun v => (hΦ _ (hne v)).2)
    show L (((Real.pi ^ ((m + 2) * (m + 1) / 2) : ℝ) : ℂ) • G.OmLong U.betaU (m + 1) Φ w0) = _
    rw [L.map_smul, clm_omLong L U.betaU (m + 1) Φ w0 hI]
    have hloc : D.IsLocPt (ptG h' m (Sum.inr w0)) (D.ptSize (ptG h' m (Sum.inr w0))) := by
      refine ⟨fun b hb => ?_, rfl⟩
      simp only [ptG, List.mem_append, List.mem_cons, List.not_mem_nil, or_false] at hb
      rcases hb with hb | hb
      · exact hh'.1 b hb
      · subst hb; exact ⟨by omega, hz0⟩
    have hle : D.ptSize (ptG h' m (Sum.inr w0)) ≤ r := by rw [ptSize_ptG]; omega
    have hSO := _root_.Formalism.FourierDecayAlt.P.Dx2.SL.sliceOm k r E z z' F h' (ptG h' m (Sum.inr w0)) (m + 1) w0 rfl hle
      (D.castM (by rw [ptSize_ptG]; omega) γ) hloc hint
    rw [hSO]
    congr 1
    unfold G.OmLong
    congr 1
    funext v
    congr 1
    have hp := hL _ (hne v) (himg v)
    exact hp.trans (phiFun_tr (by rw [ptSize_ptG]; omega) _ _ z z' F _ _ _ γ).symm

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.SliceGermPoints =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.SliceIntegralCutoff =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.SliceIntegralCutoff", "h": "module\n\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.SliceAppend\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SliceIntCut\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ComponentFamilySettingOfSetting\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.JfBetaAdjCOfLemmaBNorm\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.OpApplySub\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.OpApplyZeroNear\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.PosCoreQ\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.SlicesFiniteRegularityBuilt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Matrix MeasureTheory Filter Topology
open scoped ContDiff

noncomputable section

namespace Formalism.FourierDecayAlt.P.FormNormSumIdentities

open Formalism.FourierDecayAlt Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt.P.PBE

attribute [local instance] Matrix.normedAddCommGroup Matrix.normedSpace

theorem levQInt : ∃ Cp : ℝ, 0 ≤ Cp ∧ ∀ Cc : ℝ, 16 * Cp ≤ Cc →
    ∀ (k r : ℕ) (Wp Wq : Type) [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp]
    [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq]
    (T : D.LevTower k r Wp Wq) (χ : ℝ → ℝ) (A₀ : ℝ) (N : ℕ) (P0 : M.Par),
    P0.k = k → P0.r = r → 2 ≤ k → C6.IsCut0 χ →
    Cc * ((r : ℝ) + 1) ^ 4 * ((N : ℝ) * (2 * (r : ℝ) + k + 1) ^ 2 + (2 * (r : ℝ) + k + 1) ^ 3) ≤ A₀ →
    ∀ ε : ℝ, 0 < ε → ∀ (i : ℕ) (hi : i ≤ r), 1 ≤ i → ∀ (w : List C.Letter), w.length ≤ N →
      ∀ (p : C.LPt) (hc : r - i = r - D.ptSize p), D.IsLocPt p i → ∀ (hle : D.ptSize p ≤ r) (a : Wd.Ix (Fin w.length)),
      ∀ (hh : B.Mat k r → (Wq →L[ℂ] Wp)) (c : ℝ), B.CkOn ⊤ (B.GV k r) hh →
        B.CCle A₀ (3 * (11 * (N * (2 * r + k + 1) ^ 2 + (2 * r + k + 1) ^ 3) + 5)) hh c →
      ∀ γ ∈ B.GV k (r - D.ptSize p),
        Integrable (fun ξ : U.Xi k (D.ptSize p) 0 (r - D.ptSize p) (D.ptPerm p) =>
          U.psiStar k (r - D.ptSize p) (D.ptPerm p) (D.castV (by omega) T.base.z) (D.castV (by omega) T.base.z') ξ •
            D.castF (by omega) (D.uwG k r T.base.z T.base.z' (D.cutF T.base χ hh ε) i hi w a)
              (U.gaXi k (r - D.ptSize p) (D.ptPerm p) (D.ptDiag p) ξ (fun a => a.elim0) γ))
          (U.muXi k (D.ptSize p) 0 (r - D.ptSize p) (D.ptPerm p)) := by
  obtain ⟨Cp, hCp0, hCp⟩ := posCoreQ
  refine ⟨Cp, hCp0, ?_⟩
  intro Cc hCc k r Wp Wq _ _ _ _ _ _ T χ A₀ N P0 hPk hPr hk2 hχ hA₀ ε hε i hi hi1 w hw p hc hp hle a

  obtain ⟨h, n, t, rfl⟩ := Formalism.FourierDecayAlt.P.SliceAppend.exists_append_succ hi1 hp
  obtain ⟨hpb, hps⟩ := hp
  subst hps
  set ph := D.ptSize h with hph
  have hP : D.ptSize (h ++ [(n + 1, t)]) = ph + (n + 1) := Formalism.FourierDecayAlt.P.Dx2.SL.ptSize_append h (n + 1) t
  have ht : t ≠ 0 := (hpb (n + 1, t) (by simp)).2
  have hloc : D.IsLocPt (h ++ [(n + 1, t)]) (D.ptSize (h ++ [(n + 1, t)])) := ⟨hpb, rfl⟩
  have hlocH := Formalism.FourierDecayAlt.P.Dx2.SL.isLocPt_head hloc
  have hd0 : ∀ q, D.ptDiag h q ≠ 0 := fun q => Formalism.FourierDecayAlt.P.JCTx6.Link2.ptScal_ne h hlocH.1 q q.2
  set ρ := r - D.ptSize (h ++ [(n + 1, t)]) with hρ
  have hsum : ph + (n + 1) + ρ = r := by omega
  have hσ := Formalism.FourierDecayAlt.P.SliceAppend.perm_append hloc
  have hd := Formalism.FourierDecayAlt.P.SliceAppend.diag_append h n t
  have hdP := Formalism.FourierDecayAlt.P.SliceAppend.diag_append_ne_zero (n := n) hd0 ht
  have hS : ∀ (Gx : B.Mat k r → (Wq →L[ℂ] Wp)) (γ : B.Mat k ρ), D.sliceAt k r T.base.z T.base.z' Gx (h ++ [(n + 1, t)]) γ =
      U.PhiFun (p := ph + (n + 1)) (s := 0) k ρ (Formalism.FourierDecayAlt.P.Dx2.SL.sigP (D.ptPerm h))
        (Formalism.FourierDecayAlt.P.Dx2.SL.dP (D.ptDiag h) t) (D.castV (by omega) T.base.z) (D.castV (by omega) T.base.z')
        (D.castF (by omega) Gx) (fun a => a.elim0) γ := by
    intro Gx γ
    exact Formalism.FourierDecayAlt.P.SliceAppend.slice_append k r T.base.z T.base.z' Gx h n t hloc (by omega) γ
  have e1 : r = ph + (n + 1) + ρ := hsum.symm
  have e2 : ph + (n + 1) + ρ = r := hsum
  have hj1 : 1 ≤ ph + (n + 1) := by omega
  obtain ⟨Θ, hΘ, hΘF⟩ := Formalism.FourierDecayAlt.P.JCTx6.Let.lettersDD k (ph + (n + 1)) ρ Wp Wq (D.castV e1 T.base.z)
    (D.castV e1 T.base.z') (by omega) w a hj1
  have hU : ∀ hh : B.Mat k r → (Wq →L[ℂ] Wp), B.CkOn ⊤ (B.GV k r) hh →
      ∀ g ∈ B.GV k (ph + (n + 1) + ρ), U.DjU k (ph + (n + 1)) ρ g ≠ 0 →
      D.castF e2 (D.uwG k r T.base.z T.base.z' (D.cutF T.base χ hh ε) (D.ptSize (h ++ [(n + 1, t)])) hi w a) g =
        B.opApply Θ (D.castF e2 (D.cutF T.base χ hh ε)) g := by
    intro hh hsm g hg hD
    have hFc : B.CkOn ⊤ (B.GV k r) (D.cutF T.base χ hh ε) := Formalism.FourierDecayAlt.P.JCTx6.Link2.ckOn_cutF T.base hχ hsm ε
    have h1 : D.castF e2 (D.uwG k r T.base.z T.base.z' (D.cutF T.base χ hh ε) (D.ptSize (h ++ [(n + 1, t)])) hi w a) =
        D.uwG k (ph + (n + 1) + ρ) (D.castV e1 T.base.z) (D.castV e1 T.base.z')
          (D.castF e2 (D.cutF T.base χ hh ε)) (ph + (n + 1)) (by omega) w a := by
      rw [Formalism.FourierDecayAlt.P.JCTx6.Link2.castF_uwG e2 _ _ _ _ hi (by omega)]
      exact Formalism.FourierDecayAlt.P.JCTx6.Link2.uwG_level _ _ _ hP _ _ w a
    rw [h1, hΘF _ (Formalism.FourierDecayAlt.P.JCTx6.Link2.ckOn_castF e2 hFc) g hg hD]
  have hFrel : ∀ hh : B.Mat k r → (Wq →L[ℂ] Wp), B.CkOn ⊤ (B.GV k r) hh →
      ∀ g ∈ B.GV k (ph + (n + 1) + ρ), U.DjU k (ph + (n + 1)) ρ g ≠ 0 →
      D.castF e2 (D.uwG k r T.base.z T.base.z' (D.cutF T.base χ hh ε) (D.ptSize (h ++ [(n + 1, t)])) hi w a) g =
        B.opApply Θ (fun x => ((χ (Gf k (ph + (n + 1) + ρ) (D.castV e1 T.base.z)
          (D.castV e1 T.base.z') x / ε) : ℝ) : ℂ) • D.castF e2 hh x) g := by
    intro hh hsm g hg hD
    rw [hU hh hsm g hg hD, Formalism.FourierDecayAlt.P.JCTx6.Link2.castF_cutF e2]
  set nd := 2 * r + k + 1 with hnd
  set As := 11 * (N * nd ^ 2 + nd ^ 3) + 5 with hAs
  obtain ⟨b1, b2, b3, b4, b5⟩ := Formalism.FourierDecayAlt.P.JCTx6.Link2.budgetAs r k N w.length (ph + (n + 1)) hk2 hw (by omega)
  have hmmU : P5.mmUser P0 N = 5 + 3 * (r + 1) * (N + 2) * nd + N * r := by
    simp only [P5.mmUser, P5.nV, hPk, hPr, hnd]
  have hAU : P5.Auser P0 N = 127 * ((r : ℝ) + 1) ^ 3 * ((N : ℝ) * (nd : ℝ) ^ 2 + (nd : ℝ) ^ 3) := by
    simp only [P5.Auser, P5.nV, hPk, hPr, hnd]
  have hX1 : (1 : ℝ) ≤ (N : ℝ) * (nd : ℝ) ^ 2 + (nd : ℝ) ^ 3 := by exact_mod_cast b5
  have hAsR : (As : ℝ) = 11 * ((N : ℝ) * (nd : ℝ) ^ 2 + (nd : ℝ) ^ 3) + 5 := by
    rw [hAs]; push_cast; ring
  have hR1 : (1 : ℝ) ≤ (r : ℝ) + 1 := by have : (0 : ℝ) ≤ r := Nat.cast_nonneg r; linarith
  have hsumR : (((ph + (n + 1) + ρ : ℕ) : ℝ)) = (r : ℝ) := by exact_mod_cast hsum
  obtain ⟨ε', K, hε', hK0, hQ⟩ := hCp k ph n ρ Wp Wq (D.castV e1 T.base.z) (D.castV e1 T.base.z')
    (Formalism.FourierDecayAlt.P.Dx1.SN.castV_inWb e1 _ T.base.z_mem) (Formalism.FourierDecayAlt.P.Dx1.SN.castV_inWb e1 _ T.base.z'_mem)
    Θ _ _ hΘ χ A₀ ε hχ hε (D.ptPerm h) (D.ptDiag h) t hd0 ht As (P5.mmUser P0 N) (P5.Auser P0 N + 1)
    b1 b2 (by rw [hmmU]; exact b3) (by rw [hsum]; exact b4)
    (by
      rw [hsumR, hAU, hAsR]
      have hR3 : (1 : ℝ) ≤ ((r : ℝ) + 1) ^ 3 := one_le_pow₀ hR1
      have : 0 ≤ ((r : ℝ) + 1) ^ 3 * ((N : ℝ) * (nd : ℝ) ^ 2 + (nd : ℝ) ^ 3) := by positivity
      nlinarith)
    (by
      rw [hsumR, hAsR]
      have hR4 : 0 ≤ ((r : ℝ) + 1) ^ 4 := by positivity
      have hX0 : 0 ≤ (N : ℝ) * (nd : ℝ) ^ 2 + (nd : ℝ) ^ 3 := by linarith
      have s1 : Cp * ((r : ℝ) + 1) ^ 4 * (11 * ((N : ℝ) * (nd : ℝ) ^ 2 + (nd : ℝ) ^ 3) + 5) ≤
          Cp * ((r : ℝ) + 1) ^ 4 * (16 * ((N : ℝ) * (nd : ℝ) ^ 2 + (nd : ℝ) ^ 3)) := by
        apply mul_le_mul_of_nonneg_left _ (by positivity); linarith
      have s2 : 16 * Cp * (((r : ℝ) + 1) ^ 4 * ((N : ℝ) * (nd : ℝ) ^ 2 + (nd : ℝ) ^ 3)) ≤
          Cc * (((r : ℝ) + 1) ^ 4 * ((N : ℝ) * (nd : ℝ) ^ 2 + (nd : ℝ) ^ 3)) :=
        mul_le_mul_of_nonneg_right hCc (by positivity)
      have s3 : Cc * ((r : ℝ) + 1) ^ 4 * ((N : ℝ) * (nd : ℝ) ^ 2 + (nd : ℝ) ^ 3) ≤ A₀ := by
        have hndR : (nd : ℝ) = 2 * (r : ℝ) + k + 1 := by rw [hnd]; push_cast; ring
        rw [hndR]; exact hA₀
      nlinarith)
  have hfun : ∀ hh : B.Mat k r → (Wq →L[ℂ] Wp),
      D.castF hc (D.sliceAt k r T.base.z T.base.z'
        (D.uwG k r T.base.z T.base.z' (D.cutF T.base χ hh ε) (D.ptSize (h ++ [(n + 1, t)])) hi w a) (h ++ [(n + 1, t)])) =
      fun γ => U.PhiFun (p := ph + (n + 1)) (s := 0) k ρ (Formalism.FourierDecayAlt.P.Dx2.SL.sigP (D.ptPerm h))
        (Formalism.FourierDecayAlt.P.Dx2.SL.dP (D.ptDiag h) t) (D.castV e1 T.base.z) (D.castV e1 T.base.z')
        (D.castF e2 (D.uwG k r T.base.z T.base.z' (D.cutF T.base χ hh ε) (D.ptSize (h ++ [(n + 1, t)])) hi w a))
        (fun a => a.elim0) γ := by
    intro hh
    rw [Formalism.FourierDecayAlt.P.JCTx6.Link2.castF_self]
    funext γ
    exact hS _ γ
  have hz1 : U.lowV k (ph + (n + 1)) ρ (D.castV e1 T.base.z) = (T.bs (D.ptSize (h ++ [(n + 1, t)]))).z := by
    have hzl : T.base.z = D.castV (by omega)
        (liftVec k (D.ptSize (h ++ [(n + 1, t)])) ρ (T.bs (D.ptSize (h ++ [(n + 1, t)]))).z) :=
      (T.z_lev _ hi).symm
    rw [hzl, Formalism.FourierDecayAlt.P.Dx2.SL.castV_castV]
    exact Formalism.FourierDecayAlt.P.JCTx6.Link2.lowV_liftVec hP.symm _ _
  have hz1' : U.lowV k (ph + (n + 1)) ρ (D.castV e1 T.base.z') = (T.bs (D.ptSize (h ++ [(n + 1, t)]))).z' := by
    have hzl' : T.base.z' = D.castV (by omega)
        (liftVec k (D.ptSize (h ++ [(n + 1, t)])) ρ (T.bs (D.ptSize (h ++ [(n + 1, t)]))).z') :=
      (T.z'_lev _ hi).symm
    rw [hzl', Formalism.FourierDecayAlt.P.Dx2.SL.castV_castV]
    exact Formalism.FourierDecayAlt.P.JCTx6.Link2.lowV_liftVec hP.symm _ _
  have hZ0 : G.detM (fun a => a.elim0 : G.Mat 0) ≠ 0 := by
    unfold G.detM; rw [Matrix.det_isEmpty]; exact one_ne_zero
  intro hh c hsm hcl γ hγ
  have I := (hQ (D.castF e2 hh) c (ccle_castF e2 hcl) _ (hFrel hh hsm)).2.2 γ hγ
  have hσ' : ∀ q : Fin (ph + (n + 1)), (D.ptPerm (h ++ [(n + 1, t)]) (Fin.cast hP.symm q)).val =
      (Formalism.FourierDecayAlt.P.Dx2.SL.sigP (n := n) (D.ptPerm h) q).val := by
    intro q; have := hσ (Fin.cast hP.symm q); simpa using this.symm
  have hd' : ∀ q : Fin (ph + (n + 1)), D.ptDiag (h ++ [(n + 1, t)]) (Fin.cast hP.symm q) =
      Formalism.FourierDecayAlt.P.Dx2.SL.dP (n := n) (D.ptDiag h) t q := by
    intro q; have := hd (Fin.cast hP.symm q); simpa using this.symm
  have I2 := (Formalism.FourierDecayAlt.P.Dx2.SL.phi_transport (k := k) (ρ := ρ) hP.symm _ _ hσ' _ _ hd' (D.castV e1 T.base.z)
    (D.castV e1 T.base.z') (D.castF e2 (D.uwG k r T.base.z T.base.z' (D.cutF T.base χ hh ε)
      (D.ptSize (h ++ [(n + 1, t)])) hi w a)) γ).1 I
  simp only [Formalism.FourierDecayAlt.P.Dx2.SL.castV_castV, Formalism.FourierDecayAlt.P.Dx2.SL.castF_castF] at I2
  exact I2

end Formalism.FourierDecayAlt.P.FormNormSumIdentities

namespace Formalism.FourierDecayAlt.P

open Formalism.FourierDecayAlt

theorem slice_integral_cutoff : Formalism.FourierDecayAlt.P.FormNormSumIdentities.SliceIntCut := by
  obtain ⟨Cp, hCp0, hL⟩ := Formalism.FourierDecayAlt.P.FormNormSumIdentities.levQInt
  intro Wp Wq _ _ _ _ _ _ P0 T w f χ ε i hi hi1 hk2 hfs hR hχ hε p hp e γ hγ
  obtain ⟨R, hR⟩ := hR
  obtain ⟨c, hcl⟩ := Formalism.FourierDecayAlt.P.JFxG.cptInCC_G hfs (Formalism.FourierDecayAlt.P.PBE.isCompact_gN_le P0.k P0.r R)
    (fun g hg hgC => by
      by_contra hne
      exact hgC (hR g hg hne))
    ((16 * Cp) * ((P0.r : ℝ) + 1) ^ 4 * ((w.length : ℝ) * (2 * (P0.r : ℝ) + P0.k + 1) ^ 2 +
      (2 * (P0.r : ℝ) + P0.k + 1) ^ 3))
    (3 * (11 * (w.length * (2 * P0.r + P0.k + 1) ^ 2 + (2 * P0.r + P0.k + 1) ^ 3) + 5))
  have hle : D.ptSize p ≤ P0.r := hp.2 ▸ hi
  have hc : P0.r - i = P0.r - D.ptSize p := by rw [hp.2]
  exact hL (16 * Cp) le_rfl P0.k P0.r Wp Wq T χ _ w.length P0 rfl rfl hk2 hχ le_rfl ε hε i hi hi1 w le_rfl p hc hp
    hle e f c hfs hcl γ hγ

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.SliceIntegralCutoff =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.GermRateLowerBound =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.GermRateLowerBound", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.GermRateSplit\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.PtSizePtG\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.BetaCongrRight\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.GermConstant\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.PbGermRateLowBOfParts\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SliceAtApply\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SliceGermPoints\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SliceIntegralCutoff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P

theorem germ_at_place : FormNormSumIdentities.GermPlace :=
  FormNormSumIdentities.germPlace_of slice_integral_cutoff slice_germ_points form_model

theorem germ_rate_lower_bound : GermRateSplit.GermRateLowB :=
  FormNormSumIdentities.germRateLowB_of germ_at_place _root_.Formalism.FourierDecayAlt.P.FormNormSumIdentities.gNSetC _root_.Formalism.FourierDecayAlt.P.FormNormSumIdentities.germConst

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.GermRateLowerBound =====
