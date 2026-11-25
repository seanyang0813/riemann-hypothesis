module

public import Development.AbelianVarietyTheory.Definitions.Jets.SideFam
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.DiscreteSeriesParameterUnique
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.DiscreteSeriesUnitarySmoothBasicStatement
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.SmoothMapsClosureStatement
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.TensorDecompositionParameters
public import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.OnePlaceKF
public import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.DegVand
public import Formalism.LocalRingCardinality.DataTies
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.TorusNormaliserBessel
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.AmplitudeSizeConsequencesOfWordIndependentHyps
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.AmplitudesRelevantCellMonomialRepStatement
public import Development.AbelianVarietyTheory.Definitions.Jets.SumIoPrAlt
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.FlagWedgeFixedAndLengthEqProdDistances
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.PairingEqLeadingMinor
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Algebra.Ring.IsFormallyReal
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsUnitaryTorusScaleBesselCharacter
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.FormalDegreeProportional
import Formalism.SharpRestriction.CuspSpanNormBounds.RelevantZeroGramTerms
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.HaarLieIsHaarOnUnipotentRadical
import Development.AbelianVarietyTheory.Proofs.FlagMeasures.MomentPieriNumericsOfSizeHyps
import Development.AbelianVarietyTheory.Proofs.JetHarmonics.AbsCoordLeOfLOneNormLe
import Development.AbelianVarietyTheory.Proofs.JetHarmonics.DiscreteSeriesUnitarySmoothBasic
import Development.AbelianVarietyTheory.Proofs.JetHarmonics.HaarEqSmul
import Development.AbelianVarietyTheory.Proofs.JetHarmonics.IsFRepExteriorPowerStandardRep
import Development.AbelianVarietyTheory.Proofs.JetHarmonics.LenEqOfUnitriangular
import Development.AbelianVarietyTheory.Proofs.JetHarmonics.NumericalFamilyShapeGaps
import Development.AbelianVarietyTheory.Proofs.JetHarmonics.PieriTensorDecomposition
import Development.AbelianVarietyTheory.Proofs.JetHarmonics.QuotientMeasureAeMemAndMeasurableBesselModel
import Development.AbelianVarietyTheory.Proofs.JetHarmonics.TensorMomentEstimate
import Formalism.HermitianCurvature.HermitianCurvatureProofs.BesselNeZeroOfCyclicOrbit
import Formalism.HermitianCurvature.HermitianCurvatureProofs.ContinuousMulMt
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SigmaContOn
import Formalism.HermitianCurvature.HermitianCurvatureProofs.SmoothAdd
import Mathlib.Algebra.Order.Star.Int
import Mathlib.Analysis.Real.Pi.Bounds
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.JetHarmonics.TensorDecompositionInjectiveParameters, Development.AbelianVarietyTheory.Proofs.FlagMeasures.FirstNormAddSubsetIndicatorLe

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.JetHarmonics.TensorDecompositionInjectiveParameters =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.JetHarmonics.TensorDecompositionInjectiveParameters", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Jets.SideFam\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.DiscreteSeriesParameterUnique\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.DiscreteSeriesUnitarySmoothBasicStatement\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.SmoothMapsClosureStatement\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.TensorDecompositionParameters\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open BranchingSupport Formalism.FourierDecayAlt Formalism.FourierDecayAlt.ThreeDimData Matrix MeasureTheory Finset
open scoped InnerProductSpace ENNReal

noncomputable section

namespace GlobalTheory.TensOrth

variable {k r : ℕ} {ι κ : Type} [Fintype ι] [DecidableEq ι] [Fintype κ] [DecidableEq κ]

end GlobalTheory.TensOrth
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.JetHarmonics.TensorDecompositionInjectiveParameters =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.FirstNormAddSubsetIndicatorLe =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FlagMeasures.FirstNormAddSubsetIndicatorLe", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.OnePlaceKF\npublic import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.DegVand\npublic import Formalism.LocalRingCardinality.DataTies\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.TorusNormaliserBessel\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.AmplitudeSizeConsequencesOfWordIndependentHyps\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.AmplitudesRelevantCellMonomialRepStatement\npublic import Development.AbelianVarietyTheory.Definitions.Jets.SumIoPrAlt\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.FlagWedgeFixedAndLengthEqProdDistances\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.PairingEqLeadingMinor\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.TensorDecompositionInjectiveParameters\nimport Development.AbelianVarietyTheory.Proofs.FlagMeasures.ExistsUnitaryTorusScaleBesselCharacter\nimport Development.AbelianVarietyTheory.Proofs.FlagMeasures.FormalDegreeProportional\nimport Development.AbelianVarietyTheory.Proofs.FlagMeasures.HaarLieIsHaarOnUnipotentRadicalStatement\nimport Development.AbelianVarietyTheory.Proofs.FlagMeasures.MomentPieriNumericsOfSizeHyps\nimport Development.AbelianVarietyTheory.Proofs.JetHarmonics.AbsCoordLeOfLOneNormLe\nimport Development.AbelianVarietyTheory.Proofs.JetHarmonics.DiscreteSeriesUnitarySmoothBasic\nimport Development.AbelianVarietyTheory.Proofs.JetHarmonics.FamilySetupBesselGrowth\nimport Development.AbelianVarietyTheory.Proofs.JetHarmonics.HaarEqSmul\nimport Development.AbelianVarietyTheory.Proofs.JetHarmonics.IsFRepExteriorPowerStandardRep\nimport Development.AbelianVarietyTheory.Proofs.JetHarmonics.LenEqOfUnitriangular\nimport Development.AbelianVarietyTheory.Proofs.JetHarmonics.NumericalFamilyShapeGaps\nimport Development.AbelianVarietyTheory.Proofs.JetHarmonics.PieriTensorDecomposition\nimport Development.AbelianVarietyTheory.Proofs.JetHarmonics.QuotientMeasureAeMemAndMeasurableBesselModel\nimport Development.AbelianVarietyTheory.Proofs.JetHarmonics.TensorMomentEstimate\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.BesselNeZeroOfCyclicOrbit\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.ContinuousMulMt\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.SigmaContOn\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.SmoothAdd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.Real.Pi.Bounds\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open BranchingSupport GlobalTheory.CellAmp GlobalTheory.Amp Formalism.BasicNotions Formalism.MainNotions.S Formalism.QuantumDeterminants Matrix MeasureTheory Finset
open scoped InnerProductSpace ENNReal

namespace GlobalTheory.CellMinorLine

open GlobalTheory.BesselMove

variable {k r q0 : ℕ}

theorem urep_of_isDS {R : Rep k r} {ε mu} (h : R.IsDS ε mu) : IsURepOn (GG k r) R.σ :=
  ⟨⟨(Formalism.FourierDecayAlt.P.MatrixMultiplicationContinuity.sigma_facts h.2).1, fun _ ha _ hb => Formalism.FourierDecayAlt.P.TranslationBesselVanishing.sigma_mul h.2 ha hb⟩,
    (Formalism.FourierDecayAlt.P.MatrixMultiplicationContinuity.sigma_facts h.2).2, fun v => Formalism.FourierDecayAlt.P.S3dx4.sigma_contOn h.2 v⟩

theorem cmp_wedge_eigen {n l : ℕ} (g : Matrix (Fin n) (Fin n) ℂ) (f : Fin l → Fin n → ℂ) (s : Fin l → ℂ)
    (h : ∀ a, g *ᵥ f a = s a • f a) : cmp l g *ᵥ wedge f = (∏ a, s a) • wedge f := by
  rw [GlobalTheory.TensLen.cmp_mulVec_wedge]
  funext I
  simp only [h, wedge, Pi.smul_apply, smul_eq_mul]
  exact Matrix.det_mul_row s (Matrix.of fun a b : Fin l => f b (I.1.orderEmbOfFin I.2 a))

theorem kappa_move {ι κ Wp : Type} [Fintype ι] [DecidableEq ι] [Fintype κ] [DecidableEq κ] [AddCommGroup Wp]
    [Module ℂ Wp] {ρ : MM k r → Matrix ι ι ℂ} {R : Rep k r} {RI : κ → Rep k r}
    {io : ∀ I, ι → (RI I).H → R.H} {pr : ∀ I, ι → R.H → (RI I).H} (hT : TensRaw ρ R RI io pr)
    (hR : IsURepOn (GG k r) R.σ) {g : MM k r} (hg : g ∈ GG k r) {om : ι → ℂ} {S : ℂ} (hS : ρ g *ᵥ om = S • om)
    {l : R.H → Wp} (hl : ∀ (a : ℂ), ∀ v ∈ R.sm, l (a • v) = a • l v) (I : κ) {lI : (RI I).H → Wp} {κ₀ : ℂ}
    (hκ : ∀ v ∈ R.sm, lI (∑ c, pr I c (tm R om v c)) = κ₀ • l v) :
    ∀ v ∈ R.sm, lI ((RI I).σ g (∑ c, pr I c (tm R om v c))) = (S * κ₀) • l (R.σ g v) := by
  intro v hv
  have hgv := sig_sm hR hg hv
  rw [← hT.pr_eq I g hg (tm R om v) (fun c => Formalism.FourierDecayAlt.P.DDSmoothness.smooth_smul _ hv)]
  have e : act ρ R g (tm R om v) = tm R om (S • R.σ g v) := by
    funext i
    have := congrFun hS i
    simp only [Matrix.mulVec, dotProduct, Pi.smul_apply, smul_eq_mul] at this
    simp only [act, tm, map_smul, smul_smul, ← Finset.sum_smul, this, mul_comm]
  rw [e, hκ _ (Formalism.FourierDecayAlt.P.DDSmoothness.smooth_smul _ hgv), hl _ _ hgv, smul_smul, mul_comm]

theorem mass_move {Wp : Type} [NormedAddCommGroup Wp] {R : Rep k r} (hR : IsURepOn (GG k r) R.σ) {t : MM k r}
    (ht : t ∈ GG k r) {ν : Measure (Mt k r)} {l : R.H → Wp} {d : ℝ} (hd : 0 < d) {w : R.H}
    (hae : ∀ᵐ x ∂(ν.map fun x => fun i j => (t⁻¹ * Matrix.of x) i j), Matrix.of x ∈ GG k r)
    (h : ∫⁻ x, ENNReal.ofReal (1 * (d * ‖l (R.σ (Matrix.of x) w)‖ ^ 2))
      ∂(ν.map fun x => fun i j => (t⁻¹ * Matrix.of x) i j) = ENNReal.ofReal (‖w‖ ^ 2)) :
    l2SG ν (fun g => l (R.σ t⁻¹ (R.σ g w))) = ENNReal.ofReal (‖w‖ ^ 2 / d) := by
  change ∀ᵐ x ∂(ν.map (leftE ht)), _ at hae
  change ∫⁻ x, _ ∂(ν.map (leftE ht)) = _ at h
  rw [lintegral_map_equiv] at h
  have hae' : ∀ᵐ x ∂ν, Matrix.of x ∈ GG k r := by
    filter_upwards [ae_of_ae_map (leftE ht).measurable.aemeasurable hae] with x hx
    have := mul_mem' ht (h := t⁻¹ * Matrix.of x) hx
    rwa [mic ht] at this
  have h2 : ENNReal.ofReal d * l2SG ν (fun g => l (R.σ t⁻¹ (R.σ g w))) = ENNReal.ofReal (‖w‖ ^ 2) := by
    rw [← h, l2SG, ← lintegral_const_mul' _ _ ENNReal.ofReal_ne_top]
    refine lintegral_congr_ae (hae'.mono fun x hx => ?_)
    show _ = ENNReal.ofReal (1 * (d * ‖l (R.σ (t⁻¹ * Matrix.of x) w)‖ ^ 2))
    rw [one_mul, sig_mul hR (inv_mem ht) hx, ENNReal.ofReal_mul hd.le, ENNReal.ofReal_pow (norm_nonneg _),
      ofReal_norm_eq_enorm]
    rfl
  have h0 : ENNReal.ofReal d ≠ 0 := (ENNReal.ofReal_pos.2 hd).ne'
  rw [ENNReal.ofReal_div_of_pos hd, ← h2, mul_comm (ENNReal.ofReal d), ENNReal.mul_div_cancel_right h0 ENNReal.ofReal_ne_top]

theorem kappa_zero {Wp : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] {R : Rep k r}
    {RI : Sub (2 * r + k + 1) 0 → Rep k r} {io pr ep} (hT : TensH (cmp 0) (cmp 0 (Hpk k r)) R RI io pr ep)
    (f : Fin 0 → Fin (2 * r + k + 1) → ℂ) {l : R.H → Wp} (I : Sub (2 * r + k + 1) 0) {lI : (RI I).H → Wp} {κ₀ : ℂ}
    (hκ : ∀ v ∈ R.sm, lI (∑ c, pr I c (tm R (wedge f) v c)) = κ₀ • l v)
    (hd : ∀ y ∈ (RI I).sm, l (ev (cmp 0 (Hpk k r)) R (wedge f) (fun c => io I c y)) = ((ep I : ℂ) * star κ₀) • lI y)
    (hnz : NzOn (RI I) lI) : ‖κ₀‖ ^ 2 ≤ 1 := by
  obtain ⟨y, hy, hy0⟩ := hnz
  haveI : Unique (Sub (2 * r + k + 1) 0) :=
    ⟨⟨I⟩, fun J => Subtype.ext ((Finset.card_eq_zero.1 J.2).trans (Finset.card_eq_zero.1 I.2).symm)⟩
  have hw : ∀ c, wedge f c = 1 := fun c => Matrix.det_fin_zero
  have hc : ∀ c d, cmp 0 (Hpk k r) c d = 1 := fun c d => Matrix.det_fin_zero
  have h1 := hκ _ ((hT.raw.io_sm I default).mem y hy)
  have h2 := hd y hy
  have h3 := hT.raw.pr_io I y hy
  simp only [tm, ev, hw, hc, Fintype.sum_unique, one_smul, star_one, mul_one] at h1 h2 h3
  rw [h3, h2, smul_smul] at h1
  have h4 := congrArg norm h1
  have he : ‖(ep I : ℂ)‖ = 1 := by rcases hT.ep_sq I with h | h <;> simp [h]
  rw [norm_smul, norm_mul, norm_mul, he, norm_star, one_mul] at h4
  have h5 : 0 < ‖lI y‖ := norm_pos_iff.2 hy0
  nlinarith

theorem deg_eq {D : D7} {W : LocW D.R.k D.R.rS} {A : LocS W} {R : Rep D.R.k D.R.rS} (hR : R = ⟨A.H, A.σ⟩) {c d : ℝ}
    (h : ∀ v : A.H, v ≠ 0 → A.deg = c * PI.BesselPeriodGGP.fdegH W.μG A.σ v ∧ 0 < A.deg)
    (hd : ∀ v : R.H, v ≠ 0 → PI.BesselPeriodGGP.fdegH W.μG R.σ v = d) {v : R.H} (hv : v ≠ 0) : A.deg = c * d := by
  subst hR
  rw [← hd v hv]
  exact (h v hv).1

theorem ne_zero_of_low {R : Rep k r} {ε mu} {v : R.H} (h : PI.UpqRep.IsLowUnitH k r ε mu R.σ v) : v ≠ 0 := by
  obtain ⟨P, -, h1, -⟩ := h
  intro h0
  simp [h0] at h1

theorem rpow_ratio {K c d e : ℝ} (hK : 0 < K) (hc : 0 < c) (hd : 0 < d) (he : 0 < e) :
    (ENNReal.ofReal (K / (c * d))).toReal ^ (-(1 / 2 : ℝ)) =
      Real.sqrt (d / e) * (ENNReal.ofReal (K / (c * e))).toReal ^ (-(1 / 2 : ℝ)) := by
  rw [ENNReal.toReal_ofReal (by positivity), ENNReal.toReal_ofReal (by positivity), Real.rpow_neg (by positivity),
    Real.rpow_neg (by positivity), ← Real.sqrt_eq_rpow, ← Real.sqrt_eq_rpow, ← Real.sqrt_inv, ← Real.sqrt_inv,
    ← Real.sqrt_mul (by positivity)]
  congr 1
  field_simp

section side

variable {Wp : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [CompleteSpace Wp] [FiniteDimensional ℂ Wp]
  {z : Fin (2 * r + k + 1) → ℂ} {π : MM k r → (Wp →L[ℂ] Wp)} {μW μN μG νq : Measure (Mt k r)} {t : MM k r}

theorem firstNorm_add_subsetIndicator_le {n l : ℕ} {ν : Fin n → ℤ} {q : ℕ} (h : n1 ν + l ≤ q) (I : Sub n l) : n1 (ν + eZ I.1) ≤ q := by
  have := GlobalTheory.TensExists.l1_add_le ν (eZ I.1)
  rw [GlobalTheory.TensExists.n1_eZ_eq_card, I.2] at this
  omega

omit [FiniteDimensional ℂ Wp] in
theorem dg_eq {lam u b bv ga h R l dg} (hS : Setup (k := k) (r := r) lam u b bv ga h q0 z π μW μN μG νq R l dg) {c : ℝ}
    (hc : ∀ mu (R : Rep k r), R.IsDS (PI.BesselPeriodGGP.eps48 k r) mu → ∀ w, w ≠ 0 →
      PI.BesselPeriodGGP.fdegH μG R.σ w = c * fdegHC mu) {ν} (hν : n1 ν ≤ q0) :
    dg ν = c * fdegHC fun a => lam a + (ν a : ℝ) := by
  obtain ⟨w, -, hw⟩ := GlobalTheory.exists_isLowUnitH_of_isDSHpk (hS.2.1 ν hν).2
  rw [← (hS.2.2.2 ν hν).2.2 w (ne_zero_of_low hw), hc _ _ (hS.2.1 ν hν) w (ne_zero_of_low hw)]

end side

theorem pow_le_rpow {b x α β : ℝ} {j : ℕ} (hb : 1 ≤ b) (hx : 0 ≤ x) (h : x ≤ b ^ α) (hα : 0 ≤ α) (hj : (j : ℝ) ≤ β) :
    x ^ j ≤ b ^ (α * β) := by
  calc x ^ j ≤ (b ^ α) ^ j := pow_le_pow_left₀ hx h j
    _ = b ^ (α * j) := (Real.rpow_mul_natCast (by linarith) α j).symm
    _ ≤ _ := Real.rpow_le_rpow_of_exponent_le hb (mul_le_mul_of_nonneg_left hj hα)

theorem coef_le {a x y d e s p p' N : ℝ} (hd : 0 < d) (he : 0 < e) (hx : 0 ≤ x) (hy : 0 ≤ y)
    (ha : a ≤ Real.sqrt (d / e) * (x * y)) (h1 : x ^ 2 * d / e ≤ s ^ 2 * p) (h2 : y ^ 2 * d / e ≤ s ^ 2 * p')
    (h3 : e ≤ N * d) (hp : 1 ≤ p) (hp' : 1 ≤ p') (hN : 1 ≤ N) : a ≤ s ^ 2 * p * p' * N := by
  refine ha.trans ((pow_le_pow_iff_left₀ (by positivity) (by positivity) two_ne_zero).1 ?_)
  have h4 : e / d ≤ N := by rwa [div_le_iff₀ hd]
  have h5 : 1 ≤ p * p' * N := one_le_mul_of_one_le_of_one_le (one_le_mul_of_one_le_of_one_le hp hp') hN
  calc (Real.sqrt (d / e) * (x * y)) ^ 2 = (x ^ 2 * d / e) * (y ^ 2 * d / e) * (e / d) := by
        rw [mul_pow, Real.sq_sqrt (by positivity)]; field_simp
    _ ≤ (s ^ 2 * p) * (s ^ 2 * p') * N := by gcongr
    _ = (s ^ 2) ^ 2 * (p * p' * N) * 1 := by ring
    _ ≤ (s ^ 2) ^ 2 * (p * p' * N) * (p * p' * N) := by gcongr
    _ = _ := by ring

theorem hsq_le {b T CT M m : ℝ} {l : ℕ} (hb : 1 ≤ b) (hM : 0 ≤ M) (hr : (r : ℝ) + 1 ≤ m) (hl : (l : ℝ) ≤ m)
    (hT : T ≤ b ^ (CT * m)) :
    1 ≤ Hsq r T (b ^ M) ^ l ∧ Hsq r T (b ^ M) ^ l ≤ b ^ ((|CT| + 20 * M) * m ^ 2) := by
  have hm : 0 ≤ m := le_trans (by positivity) hr
  have h1 : 1 ≤ Hsq r T (b ^ M) :=
    one_le_mul_of_one_le_of_one_le (le_max_left _ _) (one_le_pow₀ (Real.one_le_rpow hb hM))
  refine ⟨one_le_pow₀ h1, ?_⟩
  have h2 : Hsq r T (b ^ M) ≤ b ^ ((|CT| + 20 * M) * m) := by
    have a1 : max 1 T ≤ b ^ (|CT| * m) := max_le (Real.one_le_rpow hb (by positivity))
      (hT.trans (Real.rpow_le_rpow_of_exponent_le hb (mul_le_mul_of_nonneg_right (le_abs_self _) hm)))
    have a2 : (b ^ M) ^ (20 * (r + 1)) ≤ b ^ (M * (20 * m)) :=
      pow_le_rpow hb (by positivity) le_rfl hM (by push_cast; linarith)
    calc Hsq r T (b ^ M) ≤ b ^ (|CT| * m) * b ^ (M * (20 * m)) := mul_le_mul a1 a2 (by positivity) (by positivity)
      _ = _ := by rw [← Real.rpow_add (by linarith)]; congr 1; ring
  refine (pow_le_rpow hb (by linarith) h2 (by positivity) hl).trans (le_of_eq ?_)
  congr 1; ring

theorem eZ_inj {n l : ℕ} (ν : Fin n → ℤ) : Function.Injective fun I : Sub n l => ν + eZ I.1 := by
  intro I J h
  apply Subtype.ext
  ext a
  have h := congrFun (add_left_cancel h) a
  simp only [eZ] at h
  by_cases h1 : a ∈ I.1 <;> by_cases h2 : a ∈ J.1 <;> simp_all

theorem scale_le {b v g Cg : ℝ} (hb : Real.exp 1 < b) (hv : 1 ≤ v) (hvb : 2 * v ≤ b) (hg : 1 ≤ g)
    (hgb : g ≤ b ^ (2 * Cg)) (hC : 8 ≤ Cg) :
    max (‖((2 * (Real.pi / v) / g : ℝ) : ℂ)‖ / 2) (2 / ‖((2 * (Real.pi / v) / g : ℝ) : ℂ)‖) ≤ b ^ (2 * Cg + 2) := by
  have h1 := Real.pi_gt_three
  have h2 := Real.pi_lt_four
  have h3 : 2 < b := lt_trans (by linarith [Real.exp_one_gt_d9]) hb
  have h4 : 1 ≤ b ^ (2 * Cg) := hg.trans hgb
  rw [Complex.norm_real, Real.norm_of_nonneg (by positivity), Real.rpow_add (by linarith), Real.rpow_two]
  refine max_le ?_ ?_
  · have : 2 * (Real.pi / v) / g / 2 = Real.pi / (v * g) := by field_simp
    rw [this]
    have : Real.pi / (v * g) ≤ Real.pi := div_le_self (by linarith) (by nlinarith)
    nlinarith
  · have : 2 / (2 * (Real.pi / v) / g) = g * v / Real.pi := by field_simp
    rw [this]
    have : g * v / Real.pi ≤ g * v := div_le_self (by positivity) (by linarith)
    exact this.trans (mul_le_mul hgb (by nlinarith) (by linarith) (by linarith))

end GlobalTheory.CellMinorLine
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FlagMeasures.FirstNormAddSubsetIndicatorLe =====
