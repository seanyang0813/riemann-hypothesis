module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.PolarCut
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.PushSupp
public import Mathlib.Analysis.Calculus.FDeriv.Defs
public import Mathlib.MeasureTheory.Group.Measure
public import Mathlib.Topology.Algebra.Module.Determinant
public import Mathlib.Analysis.Calculus.FDeriv.Basic
public import Mathlib.MeasureTheory.Function.Jacobian
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.T2SpaceTensorProductFiniteExtension
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.PushInv
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.ProperOne

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.JacCut, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.ImgLim, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.JacGlue

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.JacCut =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.JacCut", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.PolarCut\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.PushSupp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.AprimeInfW

open MeasureTheory Topology Filter Formalism.BasicNotions Formalism.L2.SG.HidaSetting Formalism.L2.SG.RealObj Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.Sub
  Formalism.L2.SG.TypedSets Formalism.L2.SG.Pf.NcReal
open scoped TensorProduct

def BoxT {D : D7} (X : HidaSetting D) (u' : D.what₂.Word) (a : HmI X → MfI X)
    (V : Set (HA (Ainf X.B.I.F) X.B.I.cm.sig X.B.I.J)) (W : Set (HmI X)) : Set (TupI X) :=
  {y | ∃ T ∈ W, ∃ g ∈ V, y = g • rmulT X (a T) (Y0 X u')}

def TubeG {D : D7} (X : HidaSetting D) (u' : D.what₂.Word) (V : Set (HA (Ainf X.B.I.F) X.B.I.cm.sig X.B.I.J)) :
    Set (HA (Ainf X.B.I.F) X.B.I.cm.sig X.B.I.J) :=
  {g | ∃ g' ∈ V, g • Y0 X u' = g' • Y0 X u'}

def ChartPred : Type 1 := ∀ {D : D7} (X : HidaSetting D) (u' : D.what₂.Word),
    (∀ i j, X.B.I.cm.sig (gramE X.B.I.cm.sig X.B.I.J (tupH (frameOf X u')) j i) =
      gramE X.B.I.cm.sig X.B.I.J (tupH (frameOf X u')) i j) →
    Measure (TupI X) → Measure (HmI X) → (HmI X → MfI X) → Prop

def JacOneFor (Pr : ChartPred) : Prop := ∀ {D : D7} (X : HidaSetting D) (u' : D.what₂.Word) (ψ : AddChar (AF X.B.I.F) ℂ) hT μinf νinf fibInf,
    PushHyp X u' ψ hT μinf νinf fibInf → ∀ Ω a, IsChart X u' hT Ω a → Pr X u' hT μinf νinf a →
    ∀ J : HmI X → ℝ, J (TI X u' hT) = 1 → ContinuousAt J (TI X u' hT) →
    ∀ Ω₂ ⊆ Ω, Ω₂ ∈ 𝓝 (TI X u' hT) → ∀ c₀ : ENNReal,
      PolId X u' μinf νinf a Ω₂ (fun T => c₀ * ENNReal.ofReal (J T)) → c₀ = (ENNReal.ofReal (KVal X u'))⁻¹

def LocRatioFor (Pr : ChartPred) : Prop := ∀ {D : D7} (X : HidaSetting D) (u' : D.what₂.Word) (ψ : AddChar (AF X.B.I.F) ℂ) hT μinf νinf fibInf,
    PushHyp X u' ψ hT μinf νinf fibInf → ∀ Ω a, IsChart X u' hT Ω a → Pr X u' hT μinf νinf a → ∀ Ω₂ ⊆ Ω, Ω₂ ∈ 𝓝 (TI X u' hT) →
    ∃ (V : ℕ → Set (HA (Ainf X.B.I.F) X.B.I.cm.sig X.B.I.J)) (W : ℕ → Set (HmI X)),
      (∀ n, MeasurableSet (W n) ∧ W n ⊆ Ω₂ ∧ 0 < νinf (W n) ∧ νinf (W n) < ⊤ ∧ (∀ T ∈ W n, IsUnit (a T)) ∧
        MeasurableSet (BoxT X u' a (V n) (W n)) ∧ BoxT X u' a (V n) (W n) ⊆ IndI X ∧
        μinf (BoxT X u' a (V n) (W n)) < ⊤ ∧
        MeasurableSet (TubeG X u' (V n)) ∧ 0 < X.measG.μGinf (TubeG X u' (V n)) ∧
        X.measG.μGinf (TubeG X u' (V n)) < ⊤) ∧
      (∀ U ∈ 𝓝 (TI X u' hT), ∀ᶠ n in atTop, W n ⊆ U) ∧
      Tendsto (fun n => (μinf (BoxT X u' a (V n) (W n))).toReal /
        ((νinf (W n)).toReal * (X.measG.μGinf (TubeG X u' (V n))).toReal)) atTop (𝓝 (KVal X u')⁻¹)

theorem pre_box {D : D7} (X : HidaSetting D) (u' : D.what₂.Word)
    (hT : ∀ i j, X.B.I.cm.sig (gramE X.B.I.cm.sig X.B.I.J (tupH (frameOf X u')) j i) =
      gramE X.B.I.cm.sig X.B.I.J (tupH (frameOf X u')) i j)
    {Ω : Set (HmI X)} {a : HmI X → MfI X} (hC : IsChart X u' hT Ω a)
    (V : Set (HA (Ainf X.B.I.F) X.B.I.cm.sig X.B.I.J)) {W : Set (HmI X)} (hW : W ⊆ Ω)
    (hU : ∀ T ∈ W, IsUnit (a T)) (T : HmI X) (hTW : T ∈ W) :
    {g : HA (Ainf X.B.I.F) X.B.I.cm.sig X.B.I.J | g • rmulT X (a T) (Y0 X u') ∈ BoxT X u' a V W} =
      TubeG X u' V := by
  ext g
  constructor
  · rintro ⟨T₁, hT₁, g', hg', e⟩
    have hG : T = T₁ := by
      apply Subtype.ext
      have h2 := congrArg (gramR (Ainf X.B.I.F) X.B.I.cm.sig X.B.I.J) e
      rw [gramR_smul, gramR_smul, hC.2.2.2 T (hW hTW), hC.2.2.2 T₁ (hW hT₁)] at h2
      exact h2
    subst hG
    refine ⟨g', hg', ?_⟩
    obtain ⟨w, hw⟩ := hU T hTW
    rw [smul_rmulT, smul_rmulT] at e
    have h3 := congrArg (rmulT X (↑w⁻¹ : MfI X)) e
    rwa [rmulT_rmulT, rmulT_rmulT, ← hw, Units.mul_inv, rmulT_one, rmulT_one] at h3
  · rintro ⟨g', hg', e⟩
    refine ⟨T, hTW, g', hg', ?_⟩
    rw [smul_rmulT, smul_rmulT, e]

def SplitAsymFor (Pr : ChartPred) : Prop := ∀ {D : D7} (X : HidaSetting D) (u' : D.what₂.Word) (ψ : AddChar (AF X.B.I.F) ℂ) hT μinf νinf fibInf,
    PushHyp X u' ψ hT μinf νinf fibInf → ∀ Ω a, IsChart X u' hT Ω a → Pr X u' hT μinf νinf a → ∀ Ω₂ ⊆ Ω, Ω₂ ∈ 𝓝 (TI X u' hT) →
    ∃ (V : ℕ → Set (HA (Ainf X.B.I.F) X.B.I.cm.sig X.B.I.J)) (W : ℕ → Set (HmI X)) (p : ℕ → ℝ),
      (∀ n, MeasurableSet (W n) ∧ W n ⊆ Ω₂ ∧ 0 < νinf (W n) ∧ νinf (W n) < ⊤ ∧ (∀ T ∈ W n, IsUnit (a T)) ∧
        MeasurableSet (BoxT X u' a (V n) (W n)) ∧ BoxT X u' a (V n) (W n) ⊆ IndI X ∧
        μinf (BoxT X u' a (V n) (W n)) < ⊤ ∧
        MeasurableSet (TubeG X u' (V n)) ∧ 0 < X.measG.μGinf (TubeG X u' (V n)) ∧
        X.measG.μGinf (TubeG X u' (V n)) < ⊤ ∧ 0 < p n) ∧
      (∀ U ∈ 𝓝 (TI X u' hT), ∀ᶠ n in atTop, W n ⊆ U) ∧
      Tendsto (fun n => (X.measG.μGinf (TubeG X u' (V n))).toReal / p n) atTop
        (𝓝 (Formalism.MainNotions.S.AutInst.gaugeU X.B.I * Formalism.MainNotions.S.UnitaryVolumeMass.volU D.R.k ^ Fintype.card (NumberField.InfinitePlace X.B.I.F))) ∧
      Tendsto (fun n => (μinf (BoxT X u' a (V n) (W n))).toReal / (p n * (νinf (W n)).toReal)) atTop
        (𝓝 (Tw u' ^ (D.R.k * Fintype.card (NumberField.InfinitePlace X.B.I.F))))

theorem locRatioFor_of {Pr : ChartPred} (hK : KPos) (hS : SplitAsymFor Pr) : LocRatioFor Pr := by
  intro D X u' ψ hT μinf νinf fibInf hP Ω a hC hPr Ω₂ hΩ₂ hΩ₂n
  obtain ⟨V, W, p, hVW, hsh, hG, hTup⟩ := hS X u' ψ hT μinf νinf fibInf hP Ω a hC hPr Ω₂ hΩ₂ hΩ₂n
  have hK0 : 0 < KVal X u' := hK X u' ψ hT μinf νinf fibInf hP
  refine ⟨V, W, fun n => ?_, hsh, ?_⟩
  · obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, -⟩ := hVW n
    exact ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11⟩
  set g0 : ℝ := Formalism.MainNotions.S.AutInst.gaugeU X.B.I * Formalism.MainNotions.S.UnitaryVolumeMass.volU D.R.k ^ Fintype.card (NumberField.InfinitePlace X.B.I.F)
    with hg0
  set t0 : ℝ := Tw u' ^ (D.R.k * Fintype.card (NumberField.InfinitePlace X.B.I.F)) with ht0
  have hKe : KVal X u' = g0 * t0⁻¹ := by
    simp only [KVal, hg0, ht0, zpow_neg, zpow_natCast]
  have hg0ne : g0 ≠ 0 := by
    intro h; rw [hKe, h, zero_mul] at hK0; exact lt_irrefl _ hK0
  have ht0ne : t0 ≠ 0 := by
    intro h; rw [hKe, h, inv_zero, mul_zero] at hK0; exact lt_irrefl _ hK0
  have hlim := hTup.div hG hg0ne
  have hval : t0 / g0 = (KVal X u')⁻¹ := by
    rw [hKe, mul_inv, inv_inv, div_eq_mul_inv, mul_comm]
  rw [hval] at hlim
  refine hlim.congr fun n => ?_
  obtain ⟨-, -, hB0, hBt, -, -, -, -, -, hM0, hMt, hp⟩ := hVW n
  have hBr : 0 < (νinf (W n)).toReal := ENNReal.toReal_pos hB0.ne' hBt.ne
  have hMr : 0 < (X.measG.μGinf (TubeG X u' (V n))).toReal := ENNReal.toReal_pos hM0.ne' hMt.ne
  simp only [Pi.div_apply]
  field_simp

end PI.AprimeInfW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.JacCut =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.ImgLim =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.ImgLim", "h": "module\n\npublic import Mathlib.Analysis.Calculus.FDeriv.Defs\npublic import Mathlib.MeasureTheory.Group.Measure\npublic import Mathlib.Topology.Algebra.Module.Determinant\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Analysis.Calculus.FDeriv.Basic\npublic import Mathlib.MeasureTheory.Function.Jacobian\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.AprimeInfW

open MeasureTheory Topology Filter

theorem img_ratio {E : Type} [NormedAddCommGroup E] [NormedSpace ℝ E] [FiniteDimensional ℝ E]
    [MeasurableSpace E] [BorelSpace E] (μ : Measure E) [μ.IsAddHaarMeasure]
    {f : E → E} {f' : E → (E →L[ℝ] E)} {U : Set E} {x₀ : E}
    (hf' : ∀ x ∈ U, HasFDerivWithinAt f (f' x) U x) (hinj : Set.InjOn f U)
    (hc : ContinuousAt (fun x => |(f' x).det|) x₀)
    (A : ℕ → Set E) (hAm : ∀ n, MeasurableSet (A n)) (hAU : ∀ n, A n ⊆ U) (hA0 : ∀ n, 0 < μ (A n))
    (hAt : ∀ n, μ (A n) < ⊤) (hsh : ∀ V ∈ 𝓝 x₀, ∀ᶠ n in atTop, A n ⊆ V) :
    Tendsto (fun n => (μ (f '' A n)).toReal / (μ (A n)).toReal) atTop (𝓝 |(f' x₀).det|) := by
  have key : ∀ n, μ (f '' A n) = ∫⁻ x in A n, ENNReal.ofReal |(f' x).det| ∂μ := fun n =>
    (lintegral_abs_det_fderiv_eq_addHaar_image μ (hAm n)
      (fun x hx => (hf' x (hAU n hx)).mono (hAU n)) (hinj.mono (hAU n))).symm
  rw [Metric.tendsto_nhds]
  intro ε hε
  set d := |(f' x₀).det| with hd
  have hV : (fun x => |(f' x).det|) ⁻¹' Set.Ioo (d - ε / 2) (d + ε / 2) ∈ 𝓝 x₀ :=
    hc (Ioo_mem_nhds (by linarith) (by linarith))
  filter_upwards [hsh _ hV] with n hn
  have hm0 := hA0 n
  have hmt := hAt n
  have hmr : 0 < (μ (A n)).toReal := ENNReal.toReal_pos hm0.ne' hmt.ne
  have up : ∫⁻ x in A n, ENNReal.ofReal |(f' x).det| ∂μ ≤ ENNReal.ofReal (d + ε / 2) * μ (A n) := by
    calc _ ≤ ∫⁻ _ in A n, ENNReal.ofReal (d + ε / 2) ∂μ :=
          lintegral_mono_ae ((ae_restrict_iff' (hAm n)).2 (Eventually.of_forall fun x hx =>
            ENNReal.ofReal_le_ofReal (hn hx).2.le))
      _ = _ := setLIntegral_const _ _
  have lo : ENNReal.ofReal (d - ε / 2) * μ (A n) ≤ ∫⁻ x in A n, ENNReal.ofReal |(f' x).det| ∂μ := by
    calc _ = ∫⁻ _ in A n, ENNReal.ofReal (d - ε / 2) ∂μ := (setLIntegral_const _ _).symm
      _ ≤ _ := lintegral_mono_ae ((ae_restrict_iff' (hAm n)).2 (Eventually.of_forall fun x hx =>
            ENNReal.ofReal_le_ofReal (hn hx).1.le))
  have hupt : ENNReal.ofReal (d + ε / 2) * μ (A n) ≠ ⊤ := ENNReal.mul_ne_top ENNReal.ofReal_ne_top hmt.ne
  have hIt : ∫⁻ x in A n, ENNReal.ofReal |(f' x).det| ∂μ ≠ ⊤ := ne_top_of_le_ne_top hupt up
  have u1 : (∫⁻ x in A n, ENNReal.ofReal |(f' x).det| ∂μ).toReal ≤ (d + ε / 2) * (μ (A n)).toReal := by
    have := ENNReal.toReal_mono hupt up
    rwa [ENNReal.toReal_mul, ENNReal.toReal_ofReal (by positivity)] at this
  have l1 : (d - ε / 2) * (μ (A n)).toReal ≤ (∫⁻ x in A n, ENNReal.ofReal |(f' x).det| ∂μ).toReal := by
    have := ENNReal.toReal_mono hIt lo
    rw [ENNReal.toReal_mul, ENNReal.toReal_ofReal'] at this
    exact le_trans (mul_le_mul_of_nonneg_right (le_max_left _ _) hmr.le) this
  rw [key n, Real.dist_eq, abs_sub_lt_iff]
  constructor
  · rw [sub_lt_iff_lt_add, div_lt_iff₀ hmr]; nlinarith
  · rw [sub_lt_comm, lt_div_iff₀ hmr]; nlinarith

end PI.AprimeInfW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.ImgLim =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.JacGlue =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.JacGlue", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.JacCut\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.ImgLim\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.PushInv\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.T2SpaceTensorProductFiniteExtension\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Separation.CompletelyRegular\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.AprimeInfW

open MeasureTheory Topology Filter Metric Formalism.BasicNotions Formalism.L2.SG.HidaSetting Formalism.L2.SG.RealObj Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
  Formalism.L2.SG.Sub Formalism.L2.SG.TypedSets Formalism.L2.SG.Pf.NcReal
open scoped TensorProduct

def gVal {D : D7} (X : HidaSetting D) : ℝ :=
  Formalism.MainNotions.S.AutInst.gaugeU X.B.I * Formalism.MainNotions.S.UnitaryVolumeMass.volU D.R.k ^ Fintype.card (NumberField.InfinitePlace X.B.I.F)

def tVal {D : D7} (X : HidaSetting D) (u' : D.what₂.Word) : ℝ :=
  Tw u' ^ (D.R.k * Fintype.card (NumberField.InfinitePlace X.B.I.F))

def GrpLim {D : D7} (X : HidaSetting D) (u' : D.what₂.Word) {ι : Type} [Fintype ι]
    (κ : EuclideanSpace ℝ ι → HA (Ainf X.B.I.F) X.B.I.cm.sig X.B.I.J) : Prop :=
  (∃ ρ0 : ℝ, 0 < ρ0 ∧ ∀ ρ : ℝ, 0 < ρ → ρ < ρ0 → MeasurableSet (TubeG X u' (κ '' ball 0 ρ)) ∧
      0 < X.measG.μGinf (TubeG X u' (κ '' ball 0 ρ)) ∧ X.measG.μGinf (TubeG X u' (κ '' ball 0 ρ)) < ⊤) ∧
  ∀ ρ : ℕ → ℝ, (∀ n, 0 < ρ n) → Tendsto ρ atTop (𝓝 0) →
    Tendsto (fun n => (X.measG.μGinf (TubeG X u' (κ '' ball 0 (ρ n)))).toReal /
      (volume (ball (0 : EuclideanSpace ℝ ι) (ρ n))).toReal) atTop (𝓝 (gVal X))

def PsiM {D : D7} (X : HidaSetting D) (u' : D.what₂.Word) (a : HmI X → MfI X) {ι η : Type}
    (κ : EuclideanSpace ℝ ι → HA (Ainf X.B.I.F) X.B.I.cm.sig X.B.I.J)
    (eT : TupI X ≃ₜ (EuclideanSpace ℝ ι × EuclideanSpace ℝ η)) (eH : HmI X ≃ₜ EuclideanSpace ℝ η)
    (z : EuclideanSpace ℝ ι × EuclideanSpace ℝ η) : EuclideanSpace ℝ ι × EuclideanSpace ℝ η :=
  eT (κ z.1 • rmulT X (a (eH.symm z.2)) (Y0 X u'))

def TupJac {D : D7} (X : HidaSetting D) (u' : D.what₂.Word)
    (hT : ∀ i j, X.B.I.cm.sig (gramE X.B.I.cm.sig X.B.I.J (tupH (frameOf X u')) j i) =
      gramE X.B.I.cm.sig X.B.I.J (tupH (frameOf X u')) i j)
    (μinf : Measure (TupI X)) (νinf : Measure (HmI X)) (a : HmI X → MfI X) {ι : Type} [Fintype ι]
    (κ : EuclideanSpace ℝ ι → HA (Ainf X.B.I.F) X.B.I.cm.sig X.B.I.J) : Prop :=
  ∃ (η : Type) (_ : Fintype η) (eT : TupI X ≃ₜ (EuclideanSpace ℝ ι × EuclideanSpace ℝ η))
    (eH : HmI X ≃ₜ EuclideanSpace ℝ η) (cμ cν : ℝ)
    (Ψ' : EuclideanSpace ℝ ι × EuclideanSpace ℝ η →
      (EuclideanSpace ℝ ι × EuclideanSpace ℝ η →L[ℝ] EuclideanSpace ℝ ι × EuclideanSpace ℝ η))
    (U : Set (EuclideanSpace ℝ ι × EuclideanSpace ℝ η)),
    0 < cμ ∧ 0 < cν ∧ μinf.map eT = ENNReal.ofReal cμ • volume ∧ νinf.map eH = ENNReal.ofReal cν • volume ∧
    U ∈ 𝓝 ((0 : EuclideanSpace ℝ ι), eH (TI X u' hT)) ∧
    (∀ z ∈ U, HasFDerivWithinAt (PsiM X u' a κ eT eH) (Ψ' z) U z) ∧ Set.InjOn (PsiM X u' a κ eT eH) U ∧
    ContinuousAt (fun z => |(Ψ' z).det|) ((0 : EuclideanSpace ℝ ι), eH (TI X u' hT)) ∧
    (∀ᶠ T in 𝓝 (TI X u' hT), IsUnit (a T) ∧ rmulT X (a T) (Y0 X u') ∈ IndI X) ∧
    cμ * |(Ψ' ((0 : EuclideanSpace ℝ ι), eH (TI X u' hT))).det| / cν = tVal X u'

def GoodP : ChartPred := fun X u' hT μinf νinf a =>
  ∃ (ι : Type) (_ : Fintype ι) (κ : EuclideanSpace ℝ ι → HA (Ainf X.B.I.F) X.B.I.cm.sig X.B.I.J),
    GrpLim X u' κ ∧ TupJac X u' hT μinf νinf a κ

theorem splitAsym_good : SplitAsymFor GoodP := by
  intro D X u' ψ hT μinf νinf fibInf hP Ω a hC hPr Ω₂ hΩ₂ hΩ₂n
  obtain ⟨ι, hι, κ, ⟨⟨ρ0, hρ0, hG0⟩, hGl⟩, η, hη, eT, eH, cμ, cν, Ψ', U, hcμ, hcν, hμ, hν, hU, hΨ', hinj,
    hdet, hev, harith⟩ := hPr
  haveI : FiniteDimensional X.B.I.F X.B.I.E := fd_of X
  haveI : BorelSpace (TupI X) :=
    PI.AprimeInfT.borelSpace_tup (F := X.B.I.F) (E := X.B.I.E) (Ainf X.B.I.F) (D.R.rS + 1 + D.R.rS)
  haveI : BorelSpace (HmI X) := ⟨rfl⟩
  haveI hHaar : (volume : Measure (EuclideanSpace ℝ ι × EuclideanSpace ℝ η)).IsAddHaarMeasure := by
    rw [Measure.volume_eq_prod]; infer_instance
  set T0 := TI X u' hT with hT0
  set z0 : EuclideanSpace ℝ ι × EuclideanSpace ℝ η := (0, eH T0) with hz0
  set Ψ := PsiM X u' a κ eT eH with hΨ
  set d := |(Ψ' z0).det| with hd

  have hdet1 : (fun z => |(Ψ' z).det|) ⁻¹' Set.Iio (d + 1) ∈ 𝓝 z0 := hdet (Iio_mem_nhds (by linarith))
  have hHn : eH.symm ⁻¹' (Ω₂ ∩ {T | IsUnit (a T) ∧ rmulT X (a T) (Y0 X u') ∈ IndI X}) ∈ 𝓝 (eH T0) := by
    apply eH.symm.continuous.continuousAt.preimage_mem_nhds
    rw [eH.symm_apply_apply]
    exact inter_mem hΩ₂n hev
  have hS : U ∩ (fun z => |(Ψ' z).det|) ⁻¹' Set.Iio (d + 1) ∩
      Prod.snd ⁻¹' (eH.symm ⁻¹' (Ω₂ ∩ {T | IsUnit (a T) ∧ rmulT X (a T) (Y0 X u') ∈ IndI X})) ∈ 𝓝 z0 :=
    inter_mem (inter_mem hU hdet1) (continuous_snd.continuousAt.preimage_mem_nhds hHn)
  obtain ⟨r, hr, hrS⟩ := Metric.mem_nhds_iff.1 hS
  set m0 := min r ρ0 with hm0
  have hm0p : 0 < m0 := lt_min hr hρ0
  set ρ : ℕ → ℝ := fun n => m0 / ((n : ℝ) + 2) with hρ
  have hρp : ∀ n, 0 < ρ n := fun n => div_pos hm0p (by positivity)
  have hρle : ∀ n, ρ n < m0 := fun n => by
    show m0 / ((n : ℝ) + 2) < m0
    rw [div_lt_iff₀ (by positivity)]
    have : (0 : ℝ) ≤ n := Nat.cast_nonneg n
    nlinarith
  have hρr : ∀ n, ρ n < r := fun n => (hρle n).trans_le (min_le_left _ _)
  have hρ0' : ∀ n, ρ n < ρ0 := fun n => (hρle n).trans_le (min_le_right _ _)
  have hρlim : Tendsto ρ atTop (𝓝 0) := by
    have h1 := (tendsto_const_div_atTop_nhds_zero_nat m0).comp (tendsto_add_atTop_nat 2)
    refine h1.congr fun n => ?_
    simp only [Function.comp, hρ, Nat.cast_add, Nat.cast_ofNat]

  set A : ℕ → Set (EuclideanSpace ℝ ι × EuclideanSpace ℝ η) := fun n => ball 0 (ρ n) ×ˢ ball (eH T0) (ρ n) with hA
  have hAb : ∀ n, A n = ball z0 (ρ n) := fun n => ball_prod_same _ _ _
  have hAS : ∀ n, A n ⊆ U ∩ (fun z => |(Ψ' z).det|) ⁻¹' Set.Iio (d + 1) ∩
      Prod.snd ⁻¹' (eH.symm ⁻¹' (Ω₂ ∩ {T | IsUnit (a T) ∧ rmulT X (a T) (Y0 X u') ∈ IndI X})) := fun n => by
    rw [hAb n]; exact (ball_subset_ball (hρr n).le).trans hrS
  have hAU : ∀ n, A n ⊆ U := fun n z hz => (hAS n hz).1.1
  have hAm : ∀ n, MeasurableSet (A n) := fun n => by rw [hAb n]; exact measurableSet_ball
  set V : ℕ → Set (HA (Ainf X.B.I.F) X.B.I.cm.sig X.B.I.J) := fun n => κ '' ball 0 (ρ n) with hV
  set W : ℕ → Set (HmI X) := fun n => eH ⁻¹' ball (eH T0) (ρ n) with hW
  have hWp : ∀ n, ∀ T ∈ W n, T ∈ Ω₂ ∧ IsUnit (a T) ∧ rmulT X (a T) (Y0 X u') ∈ IndI X := by
    intro n T hTW
    have h1 := (hAS n (show ((0 : EuclideanSpace ℝ ι), eH T) ∈ A n from ⟨by exact Set.mem_preimage.mpr (mem_ball_self (hρp n)), hTW⟩)).2
    simpa [eH.symm_apply_apply] using h1
  set_option synthInstance.maxHeartbeats 100000 in
  have hΨc : ∀ n, ContinuousOn Ψ (A n) := fun n z hz =>
    ((hΨ' z (hAU n hz)).mono (hAU n)).continuousWithinAt
  have hΨm : ∀ n, MeasurableSet (Ψ '' A n) := fun n =>
    (hAm n).image_of_continuousOn_injOn (hΨc n) (hinj.mono (hAU n))
  have hBox : ∀ n, BoxT X u' a (V n) (W n) = eT ⁻¹' (Ψ '' A n) := by
    intro n
    ext y
    constructor
    · rintro ⟨T, hTW, g, ⟨x, hx, rfl⟩, rfl⟩
      refine ⟨(x, eH T), ⟨hx, hTW⟩, ?_⟩
      simp [hΨ, PsiM, eH.symm_apply_apply]
    · rintro ⟨⟨x, t⟩, ⟨hx, ht⟩, hy⟩
      refine ⟨eH.symm t, ?_, κ x, ⟨x, hx, rfl⟩, ?_⟩
      · show eH (eH.symm t) ∈ ball (eH T0) (ρ n)
        rw [eH.apply_symm_apply]; exact ht
      · apply eT.injective
        rw [← hy]
        rfl
  have hvolΨ : ∀ n, volume (Ψ '' A n) = ∫⁻ z in A n, ENNReal.ofReal |(Ψ' z).det| := fun n =>
    (lintegral_abs_det_fderiv_eq_addHaar_image volume (hAm n)
      (fun z hz => (hΨ' z (hAU n hz)).mono (hAU n)) (hinj.mono (hAU n))).symm
  have hvolA : ∀ n, volume (A n) = volume (ball (0 : EuclideanSpace ℝ ι) (ρ n)) * volume (ball (eH T0) (ρ n)) :=
    fun n => by rw [Measure.volume_eq_prod, Measure.prod_prod]
  have hAt : ∀ n, volume (A n) < ⊤ := fun n => by rw [hAb n]; exact measure_ball_lt_top
  have hA0 : ∀ n, 0 < volume (A n) := fun n => by rw [hAb n]; exact measure_ball_pos _ _ (hρp n)
  have hΨt : ∀ n, volume (Ψ '' A n) < ⊤ := by
    intro n
    rw [hvolΨ n]
    calc ∫⁻ z in A n, ENNReal.ofReal |(Ψ' z).det| ≤ ∫⁻ _ in A n, ENNReal.ofReal (d + 1) :=
          lintegral_mono_ae ((ae_restrict_iff' (hAm n)).2 (Eventually.of_forall fun z hz =>
            ENNReal.ofReal_le_ofReal (le_of_lt (hAS n hz).1.2)))
      _ = ENNReal.ofReal (d + 1) * volume (A n) := setLIntegral_const _ _
      _ < ⊤ := ENNReal.mul_lt_top ENNReal.ofReal_lt_top (hAt n)
  have hμB : ∀ n, μinf (BoxT X u' a (V n) (W n)) = ENNReal.ofReal cμ * volume (Ψ '' A n) := fun n => by
    rw [hBox n, ← Measure.map_apply eT.continuous.measurable (hΨm n), hμ, Measure.smul_apply, smul_eq_mul]
  have hνW : ∀ n, νinf (W n) = ENNReal.ofReal cν * volume (ball (eH T0) (ρ n)) := fun n => by
    rw [hW, ← Measure.map_apply eH.continuous.measurable measurableSet_ball, hν, Measure.smul_apply, smul_eq_mul]
  have hBy0 : ∀ n, 0 < volume (ball (eH T0) (ρ n)) := fun n => measure_ball_pos _ _ (hρp n)
  have hBx0 : ∀ n, 0 < volume (ball (0 : EuclideanSpace ℝ ι) (ρ n)) := fun n => measure_ball_pos _ _ (hρp n)
  refine ⟨V, W, fun n => (volume (ball (0 : EuclideanSpace ℝ ι) (ρ n))).toReal, fun n => ?_, ?_, ?_, ?_⟩
  · obtain ⟨g1, g2, g3⟩ := hG0 (ρ n) (hρp n) (hρ0' n)
    refine ⟨measurableSet_ball.preimage eH.continuous.measurable, fun T hT' => (hWp n T hT').1, ?_, ?_,
      fun T hT' => (hWp n T hT').2.1, ?_, ?_, ?_, g1, g2, g3, ENNReal.toReal_pos (hBx0 n).ne' measure_ball_lt_top.ne⟩
    · rw [hνW n]; exact ENNReal.mul_pos (ENNReal.ofReal_pos.2 hcν).ne' (hBy0 n).ne'
    · rw [hνW n]; exact ENNReal.mul_lt_top ENNReal.ofReal_lt_top measure_ball_lt_top
    · rw [hBox n]; exact eT.continuous.measurable (hΨm n)
    · rintro y ⟨T, hTW, g, -, rfl⟩
      have hinj : Function.Injective (Matrix.mulVecLin
          ((HA.mat (Ainf X.B.I.F) X.B.I.cm.sig X.B.I.J g : GL (Fin X.B.I.n) (Ainf X.B.I.F ⊗[X.B.I.F] X.B.I.E)) : Matrix (Fin X.B.I.n) (Fin X.B.I.n) (Ainf X.B.I.F ⊗[X.B.I.F] X.B.I.E))) := by
        intro x x' h
        have h2 := congrArg (fun v => Matrix.mulVec (((HA.mat (Ainf X.B.I.F) X.B.I.cm.sig X.B.I.J g)⁻¹ : GL (Fin X.B.I.n) (Ainf X.B.I.F ⊗[X.B.I.F] X.B.I.E)) : Matrix (Fin X.B.I.n) (Fin X.B.I.n) (Ainf X.B.I.F ⊗[X.B.I.F] X.B.I.E)) v) h
        simpa [Matrix.mulVecLin_apply, Matrix.mulVec_mulVec] using h2
      exact LinearIndependent.map' (hWp n T hTW).2.2 _ (LinearMap.ker_eq_bot.2 hinj)
    · rw [hμB n]; exact ENNReal.mul_lt_top ENNReal.ofReal_lt_top (hΨt n)
  · intro U' hU'
    have h1 : eH.symm ⁻¹' U' ∈ 𝓝 (eH T0) := by
      apply eH.symm.continuous.continuousAt.preimage_mem_nhds
      rw [eH.symm_apply_apply]; exact hU'
    obtain ⟨ε, hε, hεs⟩ := Metric.mem_nhds_iff.1 h1
    filter_upwards [hρlim.eventually (gt_mem_nhds hε)] with n hn
    intro T hTW
    have h2 : eH T ∈ ball (eH T0) ε := ball_subset_ball hn.le hTW
    have h3 := hεs h2
    simpa [eH.symm_apply_apply] using h3
  · exact hGl ρ hρp hρlim
  · have hi := img_ratio (volume : Measure (EuclideanSpace ℝ ι × EuclideanSpace ℝ η)) hΨ' hinj hdet A hAm hAU
      hA0 hAt (fun V' hV' => by
        obtain ⟨ε, hε, hεs⟩ := Metric.mem_nhds_iff.1 hV'
        filter_upwards [hρlim.eventually (gt_mem_nhds hε)] with n hn
        rw [hAb n]; exact (ball_subset_ball hn.le).trans hεs)
    have hval : cμ / cν * d = tVal X u' := by rw [← harith]; ring
    change Tendsto _ atTop (𝓝 (tVal X u'))
    rw [← hval]
    refine (hi.const_mul (cμ / cν)).congr fun n => ?_
    have hx : 0 < (volume (ball (0 : EuclideanSpace ℝ ι) (ρ n))).toReal :=
      ENNReal.toReal_pos (hBx0 n).ne' measure_ball_lt_top.ne
    have hy : 0 < (volume (ball (eH T0) (ρ n))).toReal := ENNReal.toReal_pos (hBy0 n).ne' measure_ball_lt_top.ne
    rw [hμB n, hνW n, hvolA n, ENNReal.toReal_mul, ENNReal.toReal_mul, ENNReal.toReal_mul,
      ENNReal.toReal_ofReal hcμ.le, ENNReal.toReal_ofReal hcν.le]
    field_simp

end PI.AprimeInfW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.JacGlue =====
