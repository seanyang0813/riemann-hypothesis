module

public import Development.AbelianVarietyTheory.Definitions.Divisors.LocallyCompactUnipFlag
public import Development.AbelianVarietyTheory.Definitions.Divisors.IsSquareIntegrableIffMemL2
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GoodConstOfAniso
public import Development.WeilBound.ThetaLifts.Reductions.SiegelCore
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AutomorphicConstantTermParabolic
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DifferentiableOfIsSm
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ModerateGrowthOfHasCompactSupport
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.RderMemAutFormsCuspForms
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsCompactIwasawa
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSiegelDomainReduction
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SiegelSetArchimedeanNormBound
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusElementArchimedeanMatrixForm
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SiegelDomainOpenSubgroupBound
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SiegelSetUniformSmoothBound
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EvIInfScaleMul
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsSmoothModerateOfIsAutFunSm
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusElementActsOnFrameColumns
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SiegelWeilLagrangianTermsAbsTsumLeHeightPoly
public import Development.WeilBound.ThetaLifts.Reductions.SiegelPar
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ProjArchOfInfEmbArchPi
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnitaryAdelicIwasawaCompact
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnitarySiegelDomainExists
public import Development.WeilBound.ThetaLifts.Reductions.SiegelOfCore
import Development.AbelianVarietyTheory.Definitions.Foundations.ExistsUniqueIsProdMeasureFinAway
import Mathlib.Tactic.Linter.HaveILetI
import Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.ExistsQuotHeightMulExpInfLe
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.ExistsHeightLeTwoMulQuotHeight
import Aesop.Frontend.Tactic
import Aesop.Main
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.LcscAdelicUnitaryGroup
import Development.WeilBound.ThetaLifts.FrameEstimates.LeHeightOfIsTorusElt
import Development.WeilBound.ThetaLifts.Reductions.SiegelAbs
import Development.WeilBound.ThetaLifts.Reductions.SiegelGood

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CuspidalConstantTermSmall, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GoodFunctionLineDerivative, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HeightBoundSiegelTorus, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CuspFormRapidDecay, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CuspFormSiegelBound, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SingleMulSingle, Development.AutomorphicSpectrum.Proofs.GlobalProofs.SiegelSetUnitary

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CuspidalConstantTermSmall =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CuspidalConstantTermSmall", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.LocallyCompactUnipFlag\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsSquareIntegrableIffMemL2\nimport Development.AbelianVarietyTheory.Definitions.Foundations.ExistsUniqueIsProdMeasureFinAway\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GoodConstOfAniso\nimport Development.WeilBound.ThetaLifts.Reductions.SiegelCore\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField MeasureTheory Matrix Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.AdelicU GlobalTheory.SiegelSet PositivityTheory.ThKR GlobalTheory.CompanionTheory.RapidDecay
open Formalism.UG (cT)
open GlobalTheory.Orb (archMat)
open scoped TensorProduct NNReal ENNReal Topology

namespace GlobalTheory.CompanionTheory.RapidDecay

theorem norm_le_of_unipRad_variation : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E →ₐ[F] E), IsCMExt F E σ → ∀ (n : ℕ) (J : Matrix (Fin n) (Fin n) E), IsHermND σ J → ∀ φ : GAd σ J → ℂ, (∀ γ ∈ ratPts σ J, ∀ g, φ (γ * g) = φ g) → Continuous φ → IsCuspidal σ J φ → ∀ (k : ℕ) (Cc : Matrix (Fin n) (Fin k) E), 0 < k → GlobalTheory.UAut.IsIsoCols σ J Cc → ∀ (g : GAd σ J) (e : ℝ), (∀ m ∈ unipRad σ J Cc, ‖φ (m * g) - φ g‖ ≤ e) → ‖φ g‖ ≤ e := by
  intro F E _ _ _ _ _ σ hCM n J hJ φ hleft hcont hcusp k Cc hk hC g e he
  haveI := GlobalTheory.UAut.locallyCompact_unipRad hCM hJ hC
  have hc : GlobalTheory.Cusp.Cocompact (ratPts σ J) (unipRad σ J Cc) := GlobalTheory.UAut.cocompact_unipRad hCM hJ hC
  haveI hP := hc.isProbabilityMeasure
  have hL : GlobalTheory.AutomorphicL2Unitary.LeftInv (ratPts σ J) φ := hleft
  have h0 : GlobalTheory.Cusp.constTermOn (ratPts σ J) (unipRad σ J Cc) φ g = 0 :=
    (hc.constTermOn_eq_zero_iff (GlobalTheory.AutomorphicL2Unitary.isFundamentalDomain_stdDom _ Measure.haar) hL g).2
      (hcusp k Cc ⟨hk, hC.1, hC.2⟩ _ _ inferInstance (GlobalTheory.AutomorphicL2Unitary.isFundamentalDomain_stdDom _ _) g)
  have hI := hc.integrable hL hcont g
  have key : φ g = ∫ q, (φ g - φ ((q.out : unipRad σ J Cc) * g))
      ∂GlobalTheory.Cusp.probMeasure (ratPts σ J) (unipRad σ J Cc) := by
    rw [integral_sub (integrable_const _) hI]
    have h0' : ∫ q, φ ((q.out : unipRad σ J Cc) * g)
        ∂GlobalTheory.Cusp.probMeasure (ratPts σ J) (unipRad σ J Cc) = 0 := h0
    rw [h0', integral_const]
    simp
  rw [key]
  have hb := norm_integral_le_of_norm_le_const (μ := GlobalTheory.Cusp.probMeasure (ratPts σ J) (unipRad σ J Cc))
    (f := fun q => φ g - φ ((q.out : unipRad σ J Cc) * g)) (C := e)
    (.of_forall fun q => by rw [norm_sub_rev]; exact he _ (q.out : unipRad σ J Cc).2)
  simpa using hb

end GlobalTheory.CompanionTheory.RapidDecay

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CuspidalConstantTermSmall =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GoodFunctionLineDerivative =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GoodFunctionLineDerivative", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GoodConstOfAniso\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AutomorphicConstantTermParabolic\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DifferentiableOfIsSm\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ModerateGrowthOfHasCompactSupport\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.RderMemAutFormsCuspForms\nimport Development.AbelianVarietyTheory.PublishedTheorems.TwistedTraceFormula.ExistsQuotHeightMulExpInfLe\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsCompactIwasawa\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField MeasureTheory Matrix Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.AdelicU GlobalTheory.SiegelSet PositivityTheory.ThKR GlobalTheory.CompanionTheory.RapidDecay
open Formalism.UG (cT)
open GlobalTheory.Orb (archMat)
open scoped TensorProduct NNReal ENNReal Topology

namespace GlobalTheory.CompanionTheory.RapidDecay

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
  {σ : E →ₐ[F] E} {n : ℕ} {J : Matrix (Fin n) (Fin n) E}

theorem continuous_lineDer_of_growth (h : IsCMExt F E σ) {φ : GAd σ J → ℂ} (hs : GlobalTheory.UAut.IsSm σ J φ) (hc : Continuous φ)
    {γ : ℝ → GAd σ J} (hγ : IsRealLine σ J γ) {A : ℕ} {B : ℝ}
    (hB : ∀ g, ‖lineDer γ (lineDer γ φ) g‖ ≤ B * (height σ J g : ℝ) ^ A) : Continuous (lineDer γ φ) := by
  have hpos : ∀ g, 0 < (height σ J g : ℝ) := fun g =>
    zero_lt_one.trans_le (by exact_mod_cast GlobalTheory.AdelicU.one_le_height σ J g)
  have hB0 : 0 ≤ B := (mul_nonneg_iff_of_pos_right (pow_pos (hpos 1) A)).1 ((norm_nonneg _).trans (hB 1))
  have hγc : Continuous γ := by
    obtain ⟨w, τ, Z, _, hy⟩ := hγ
    choose y hγ' hy using hy
    have hc : Continuous y := by
      rw [(GlobalTheory.Orb.isEmbedding_archMat J h τ).continuous_iff]
      have e : (GlobalTheory.Orb.matCoord (GlobalTheory.Orb.archMat σ J τ) ∘ y) = fun t i j => NormedSpace.exp (t • Z) i j := by
        funext t i j; simp only [Function.comp_apply, GlobalTheory.Orb.matCoord, hy t]
      rw [e]
      have hexp : Continuous fun t : ℝ => NormedSpace.exp (t • Z) := by
        letI : NormedRing (Matrix (Fin n) (Fin n) ℂ) := Matrix.linftyOpNormedRing
        letI : NormedAlgebra ℂ (Matrix (Fin n) (Fin n) ℂ) := Matrix.linftyOpNormedAlgebra
        letI : NormedAlgebra ℚ (Matrix (Fin n) (Fin n) ℂ) := NormedAlgebra.restrictScalars ℚ ℂ _
        exact NormedSpace.exp_continuous.comp (continuous_id.smul continuous_const)
      exact continuous_pi fun i => continuous_pi fun j => (continuous_apply j).comp ((continuous_apply i).comp hexp)
    have : γ = fun t => embArch σ J w (y t) := funext hγ'
    rw [this]
    exact (continuous_embArch σ J w).comp hc
  have hht : Continuous fun g : GAd σ J => (height σ J g : ℝ) :=
    NNReal.continuous_coe.comp (GlobalTheory.AdelicU.continuous_height_GAd σ J)
  obtain ⟨c, hc'⟩ := ((isCompact_Icc (a := (0 : ℝ)) (b := 1)).image (hht.comp hγc)).bddAbove
  have key : ∀ t : ℝ, 0 < t → t ≤ 1 → ∀ g, ‖lineDer γ φ g - t⁻¹ • (φ (g * γ t) - φ g)‖ ≤
      B * ((height σ J g : ℝ) * c) ^ A * t := fun t t0 t1 g => by
    set q := t⁻¹ • (φ (g * γ t) - φ g) with hq
    have d1 := GlobalTheory.UAut.ConstAut.hasDerivAt_foldr h hs (l := []) (by simp) hγ g
    have d2 := GlobalTheory.UAut.ConstAut.hasDerivAt_foldr h hs (l := [γ]) (by simpa using hγ) hγ g
    simp only [List.foldr_cons, List.foldr_nil] at d1 d2
    have := GlobalTheory.CuspDecay.mul_norm_deriv_le (f := fun s => φ (g * γ s) - φ g - s • q)
      (f₁ := fun s => lineDer γ φ (g * γ s) - q) (f₂ := fun s => lineDer γ (lineDer γ φ) (g * γ s))
      (fun s => by simpa using ((d1 s).sub_const (φ g)).fun_sub ((hasDerivAt_id s).smul_const q))
      (fun s => (d2 s).sub_const q) t0.le (B := B * ((height σ J g : ℝ) * c) ^ A) fun s hs' => (hB _).trans
        (mul_le_mul_of_nonneg_left (pow_le_pow_left₀ (hpos _).le
          ((NNReal.coe_le_coe.2 (GlobalTheory.AdelicU.height_mul_le σ J _ _)).trans (by
            rw [NNReal.coe_mul]
            exact mul_le_mul_of_nonneg_left (hc' ⟨s, ⟨hs'.1, hs'.2.trans t1⟩, rfl⟩) (hpos g).le)) A) hB0)
    rw [GlobalTheory.UAut.ConstAut.realLine_zero h hγ, mul_one, hq, smul_inv_smul₀ t0.ne', sub_self, sub_self, zero_smul, sub_self,
      norm_zero, zero_add, zero_add, mul_comm _ t] at this
    exact le_of_mul_le_mul_left this t0
  refine continuous_of_locally_uniform_approx_of_continuousAt fun x u hu => ?_
  obtain ⟨ε, hε, hu⟩ := Metric.mem_uniformity_dist.1 hu
  have hb : Continuous fun g : GAd σ J => B * ((height σ J g : ℝ) * c) ^ A :=
    continuous_const.mul ((hht.mul continuous_const).pow A)
  obtain ⟨t, t0, t1, t2⟩ : ∃ t : ℝ, 0 < t ∧ t ≤ 1 ∧ B * ((height σ J x : ℝ) * c) ^ A * t < ε := by
    have : ∀ᶠ t in 𝓝[>] (0 : ℝ), 0 < t ∧ t ≤ 1 ∧ B * ((height σ J x : ℝ) * c) ^ A * t < ε :=
      eventually_mem_nhdsWithin.and (Filter.Eventually.filter_mono nhdsWithin_le_nhds
        ((eventually_le_nhds zero_lt_one).and
          ((continuous_const.mul continuous_id).continuousAt.eventually_lt continuousAt_const (by simpa using hε))))
    exact this.exists
  refine ⟨_, (isOpen_lt (hb.mul (continuous_const (y := t))) (continuous_const (y := ε))).mem_nhds t2,
    fun g => t⁻¹ • (φ (g * γ t) - φ g),
    (((hc.comp (continuous_mul_const _)).sub hc).const_smul t⁻¹).continuousAt, fun y hy => hu ?_⟩
  rw [dist_eq_norm]
  exact (key t t0 t1 y).trans_lt hy

theorem lineDer_mul_fin {φ : GAd σ J → ℂ} {γ : ℝ → GAd σ J} (hγ : IsRealLine σ J γ) {k : GAd σ J} (hk : k ∈ finPts σ J)
    (e : ∀ g, φ (g * k) = φ g) (g : GAd σ J) : lineDer γ φ (g * k) = lineDer γ φ g := by
  have : (fun t => φ (g * k * γ t)) = fun t => φ (g * γ t) := funext fun t => by
    have hmem : γ t ∈ infPts σ J := by
      obtain ⟨w, τ, Z, -, ht⟩ := hγ
      obtain ⟨y, hy, -⟩ := ht t
      rw [hy]
      exact mem_infPts.2 (projFin_embArch σ J w y)
    have hc := GlobalTheory.CompanionTheory.SiegelAssemble.commute_of_mem hmem hk
    calc
      φ (g * k * γ t) = φ ((g * γ t) * k) := by rw [mul_assoc, ← hc.eq, ← mul_assoc]
      _ = φ (g * γ t) := e _
  simp only [lineDer, this]

theorem isCuspidal_lineDer (h : IsCMExt F E σ) (hJ : IsHermND σ J) {φ : GAd σ J → ℂ} (hl : GlobalTheory.AutomorphicL2Unitary.LeftInv (ratPts σ J) φ)
    (hc : Continuous φ) (hs : GlobalTheory.UAut.IsSm σ J φ) (hcu : IsCuspidal σ J φ) {γ : ℝ → GAd σ J} (hγ : IsRealLine σ J γ)
    (hc' : Continuous (lineDer γ φ)) : IsCuspidal σ J (lineDer γ φ) := by
  intro r C hC μ 𝓕 hμ h𝓕 x
  have hI : GlobalTheory.UAut.IsIsoCols σ J C := hC.2
  haveI := GlobalTheory.UAut.locallyCompact_unipRad h hJ hI
  have hco := GlobalTheory.UAut.cocompact_unipRad h hJ hI
  have hl' : GlobalTheory.AutomorphicL2Unitary.LeftInv (ratPts σ J) (lineDer γ φ) := GlobalTheory.UAut.ConstAut.leftInv_foldr hl [γ]
  have h0 : ∀ y, GlobalTheory.Cusp.constTermOn (ratPts σ J) (unipRad σ J C) φ y = 0 := fun y =>
    (hco.constTermOn_eq_zero_iff h𝓕 hl y).2 (hcu r C hC μ 𝓕 hμ h𝓕 y)
  have hd := GlobalTheory.CuspLie.hasDerivAt_constTermOn hco hl hc hl' hc'
    (by
      obtain ⟨w, τ, Z, _, hy⟩ := hγ
      choose y hγ' hy using hy
      have hc : Continuous y := by
        rw [(GlobalTheory.Orb.isEmbedding_archMat J h τ).continuous_iff]
        have e : (GlobalTheory.Orb.matCoord (GlobalTheory.Orb.archMat σ J τ) ∘ y) = fun t i j => NormedSpace.exp (t • Z) i j := by
          funext t i j; simp only [Function.comp_apply, GlobalTheory.Orb.matCoord, hy t]
        rw [e]
        have hexp : Continuous fun t : ℝ => NormedSpace.exp (t • Z) := by
          letI : NormedRing (Matrix (Fin n) (Fin n) ℂ) := Matrix.linftyOpNormedRing
          letI : NormedAlgebra ℂ (Matrix (Fin n) (Fin n) ℂ) := Matrix.linftyOpNormedAlgebra
          letI : NormedAlgebra ℚ (Matrix (Fin n) (Fin n) ℂ) := NormedAlgebra.restrictScalars ℚ ℂ _
          exact NormedSpace.exp_continuous.comp (continuous_id.smul continuous_const)
        exact continuous_pi fun i => continuous_pi fun j => (continuous_apply j).comp ((continuous_apply i).comp hexp)
      have : γ = fun t => embArch σ J w (y t) := funext hγ'
      rw [this]
      exact (continuous_embArch σ J w).comp hc)
    (GlobalTheory.UAut.ConstAut.hasDerivAt_foldr h hs (l := []) (by simp) hγ) x
  simp only [h0] at hd
  rw [GlobalTheory.UAut.ConstAut.realLine_zero h hγ, mul_one] at hd
  exact (hco.constTermOn_eq_zero_iff h𝓕 hl' x).1 (hd.unique (hasDerivAt_const (0 : ℝ) (0 : ℂ)))

theorem good_lineDer : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E →ₐ[F] E), IsCMExt F E σ → ∀ (n : ℕ) (J : Matrix (Fin n) (Fin n) E), IsHermND σ J → ∀ (U : Subgroup (GAd σ J)) (A : ℕ) (φ : GAd σ J → ℂ) (γ : ℝ → GAd σ J), Good σ J U A φ → IsRealLine σ J γ → Good σ J U A (lineDer γ φ) := by
  intro F E _ _ _ _ _ σ h n J hJ U A φ γ hφ hγ
  obtain ⟨B, hB⟩ := hφ.growth [γ, γ] (by simpa using hγ)
  have hcont : Continuous (lineDer γ φ) :=
    continuous_lineDer_of_growth h hφ.smooth hφ.cont hγ (A := A) (B := B) (by simpa using hB)
  refine ⟨GlobalTheory.UAut.ConstAut.leftInv_foldr hφ.left [γ], fun k hk hf => lineDer_mul_fin hγ hf (hφ.level k hk hf), hcont,
    GlobalTheory.UAut.isSm_lineDer hφ.smooth hγ, fun l hl => ?_,
    isCuspidal_lineDer h hJ hφ.left hφ.cont hφ.smooth hφ.cusp hγ hcont⟩
  have := hφ.growth (l ++ [γ]) (by
    intro δ hδ
    rcases List.mem_append.1 hδ with e | e
    · exact hl δ e
    · rw [List.mem_singleton.1 e]; exact hγ)
  simpa only [List.foldr_append, List.foldr_cons, List.foldr_nil] using this

end GlobalTheory.CompanionTheory.RapidDecay

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GoodFunctionLineDerivative =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HeightBoundSiegelTorus =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HeightBoundSiegelTorus", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GoodConstOfAniso\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.ExistsHeightLeTwoMulQuotHeight\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSiegelDomainReduction\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SiegelSetArchimedeanNormBound\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusElementArchimedeanMatrixForm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.WeilBound.ThetaLifts.Reductions.SiegelCore\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField MeasureTheory Matrix Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.AdelicU GlobalTheory.SiegelSet PositivityTheory.ThKR GlobalTheory.CompanionTheory.RapidDecay
open Formalism.UG (cT)
open GlobalTheory.Orb (archMat)
open scoped TensorProduct NNReal ENNReal Topology

namespace GlobalTheory.CompanionTheory.RapidDecay

theorem param_le_rbar_pow {r : ℕ} {t : Fin r → ℝ} (ht : ∀ i, 0 < t i) :
    ∀ (k m : ℕ) (h : m < r), m + k + 1 = r → t ⟨m, h⟩ ≤ rbar t ^ (k + 1) := by
  intro k
  induction k with
  | zero =>
    intro m h e
    have h1 := ratio_le_rbar t ⟨m, h⟩
    have h2 : ¬ m + 1 < r := by omega
    simpa [ratio, h2] using h1
  | succ k ih =>
    intro m h e
    have hm : m + 1 < r := by omega
    have h1 := ih (m + 1) hm (by omega)
    have h2 := ratio_le_rbar t ⟨m, h⟩
    have h3 : t ⟨m, h⟩ / t ⟨m + 1, hm⟩ ≤ rbar t := by simpa [ratio, hm] using h2
    have h4 : t ⟨m, h⟩ ≤ rbar t * t ⟨m + 1, hm⟩ := (div_le_iff₀ (ht _)).1 h3
    have h5 : 0 ≤ rbar t := zero_le_one.trans (one_le_rbar t)
    calc t ⟨m, h⟩ ≤ rbar t * t ⟨m + 1, hm⟩ := h4
      _ ≤ rbar t * rbar t ^ (k + 1) := mul_le_mul_of_nonneg_left h1 h5
      _ = rbar t ^ (k + 1 + 1) := by ring

theorem param_le_rbar_pow_rank {r : ℕ} {t : Fin r → ℝ} (ht : ∀ i, 0 < t i) (i : Fin r) : t i ≤ rbar t ^ r := by
  have h1 := param_le_rbar_pow ht (r - i.val - 1) i.val i.2 (by omega)
  exact h1.trans (pow_le_pow_right₀ (one_le_rbar t) (by omega))

theorem one_add_prod_le_rbar_pow {r : ℕ} {t : Fin r → ℝ} (ht : ∀ i, 0 < t i) :
    1 + ∏ i, t i ≤ 2 * rbar t ^ (r * r) := by
  have h1 : ∏ i, t i ≤ rbar t ^ (r * r) := by
    have := Finset.prod_le_prod₀ (s := (Finset.univ : Finset (Fin r))) (fun i _ => (ht i).le)
      fun i _ => param_le_rbar_pow_rank ht i
    simpa [pow_mul] using this
  have h2 : 1 ≤ rbar t ^ (r * r) := one_le_pow₀ (one_le_rbar t)
  linarith

theorem height_le_rbar_pow : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E →ₐ[F] E), IsCMExt F E σ → ∀ (n : ℕ) (J : Matrix (Fin n) (Fin n) E), IsHermND σ J → ∀ (r : ℕ) (X Y : Matrix (Fin n) (Fin r) E), IsWittFrame σ J X Y → ∀ c : ℝ, 0 < c → ∃ b : ℕ, ∀ Ω Cm : Set (GAd σ J), IsCompact Ω → IsCompact Cm → ∃ H : ℝ, 0 ≤ H ∧ ∀ p ∈ Ω, ∀ t ∈ cone r c, ∀ a, IsTorusElt σ J X Y t a → ∀ k ∈ Cm, (height σ J (p * a * k) : ℝ) ≤ H * rbar t ^ b := by
  intro F E _ _ _ _ _ σ hσ n J hJ r X Y hW c hc
  have hc' : 0 < min 1 c ^ r := pow_pos (lt_min one_pos hc) _
  obtain ⟨Ch, Ah, hCh⟩ := @GlobalTheory.TorusHeight.height_torus_le F E _ _ _ _ _ σ hσ n J r X Y _ hc'
  refine ⟨r * r * Ah, fun Ω Cm hΩ hCm => ?_⟩
  have hcont : Continuous fun g : GAd σ J => (height σ J g : ℝ) :=
    NNReal.continuous_coe.comp ((GlobalTheory.Grow.continuous_heightGL F).comp continuous_subtype_val)
  obtain ⟨R₁, hR₁⟩ := (hΩ.image hcont).bddAbove
  obtain ⟨R₂, hR₂⟩ := (hCm.image hcont).bddAbove
  set R₁' := max R₁ 0 with hR₁'
  set R₂' := max R₂ 0 with hR₂'
  set Ch' := max Ch 0 with hCh'
  have hR₁0 : 0 ≤ R₁' := le_max_right _ _
  have hR₂0 : 0 ≤ R₂' := le_max_right _ _
  have hCh0 : 0 ≤ Ch' := le_max_right _ _
  refine ⟨R₁' * (Ch' * 2 ^ Ah) * R₂', by positivity, fun p hp t ht a ha k hk => ?_⟩
  have h1 : (height σ J a : ℝ) ≤ Ch * (1 + ∏ i, t i) ^ Ah :=
    hCh t (GlobalTheory.SiegelHt.cone_low hc ht) a ha.1
      (@GlobalTheory.SiegelTorusMat.archMat_torus F E _ _ _ _ _ σ hσ n J hJ r X Y hW t
        (fun i => hc'.trans_le (GlobalTheory.SiegelHt.cone_low hc ht i)) a ha)
  have hprod0 : 0 ≤ 1 + ∏ i, t i := add_nonneg zero_le_one (Finset.prod_nonneg fun i _ => (ht.1 i).le)
  have h2 := one_add_prod_le_rbar_pow (r := r) ht.1
  have h3 : (height σ J a : ℝ) ≤ Ch' * (2 * rbar t ^ (r * r)) ^ Ah :=
    h1.trans (mul_le_mul (le_max_left _ _) (pow_le_pow_left₀ hprod0 h2 _) (pow_nonneg hprod0 _) hCh0)
  have hpb : (height σ J p : ℝ) ≤ R₁' := (hR₁ ⟨p, hp, rfl⟩).trans (le_max_left _ _)
  have hkb : (height σ J k : ℝ) ≤ R₂' := (hR₂ ⟨k, hk, rfl⟩).trans (le_max_left _ _)
  have h5 : (height σ J (p * a * k) : ℝ) ≤ (height σ J p : ℝ) * height σ J a * height σ J k := by
    exact_mod_cast (height_mul_le σ J _ _).trans (mul_le_mul' (height_mul_le σ J _ _) le_rfl)
  calc (height σ J (p * a * k) : ℝ) ≤ (height σ J p : ℝ) * height σ J a * height σ J k := h5
    _ ≤ R₁' * (Ch' * (2 * rbar t ^ (r * r)) ^ Ah) * R₂' :=
        mul_le_mul (mul_le_mul hpb h3 (NNReal.coe_nonneg _) hR₁0) hkb (NNReal.coe_nonneg _)
          (mul_nonneg hR₁0 ((NNReal.coe_nonneg _).trans h3))
    _ = R₁' * (Ch' * 2 ^ Ah) * R₂' * rbar t ^ (r * r * Ah) := by
      rw [mul_pow, ← pow_mul]; ring

end GlobalTheory.CompanionTheory.RapidDecay

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HeightBoundSiegelTorus =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CuspFormRapidDecay =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CuspFormRapidDecay", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GoodConstOfAniso\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.LocallyCompactUnipFlag\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CuspidalConstantTermSmall\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GoodFunctionLineDerivative\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HeightBoundSiegelTorus\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SiegelDomainOpenSubgroupBound\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SiegelSetUniformSmoothBound\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open NumberField MeasureTheory Matrix Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.AdelicU GlobalTheory.SiegelSet PositivityTheory.ThKR GlobalTheory.CompanionTheory.RapidDecay
open Formalism.UG (cT)
open GlobalTheory.Orb (archMat)
open scoped TensorProduct NNReal ENNReal Topology
noncomputable section

namespace GlobalTheory.CompanionTheory.RapidDecay

theorem decay_step {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}
    (h : IsCMExt F E σ) {n : ℕ} {J : Matrix (Fin n) (Fin n) E} (hJ : IsHermND σ J) {r : ℕ}
    {X Y : Matrix (Fin n) (Fin r) E} (hW : IsWittFrame σ J X Y) {Ω : Set (GAd σ J)} (hΩ : IsCompact Ω)
    (hΩP : Ω ⊆ minParOne σ J X) {c : ℝ} (hc : 0 < c) {U : Subgroup (GAd σ J)} (hU : IsOpen (U : Set (GAd σ J))) (A e m : ℕ)
    (hm : ∀ ψ, Good σ J U A ψ → ∀ Cm : Set (GAd σ J), IsCompact Cm → ∃ B : ℝ, ∀ p ∈ Ω, ∀ t ∈ cone r c, ∀ a,
      IsTorusElt σ J X Y t a → ∀ k ∈ Cm, ‖ψ (p * a * k)‖ * rbar t ^ m ≤ B * rbar t ^ e)
    (ψ : GAd σ J → ℂ) (hψ : Good σ J U A ψ) (Cm : Set (GAd σ J)) (hCm : IsCompact Cm) :
    ∃ B : ℝ, ∀ p ∈ Ω, ∀ t ∈ cone r c, ∀ a, IsTorusElt σ J X Y t a → ∀ k ∈ Cm,
      ‖ψ (p * a * k)‖ * rbar t ^ (m + 1) ≤ B * rbar t ^ e := by
  obtain ⟨q, b, Ω₀, Cv, δ₁, hb, hΩ₀, hδ₁, hCv, hmv⟩ := _root_.GlobalTheory.CompanionTheory.RapidDecay.Mean.mean_value F E σ h n J hJ
  have hCm' : IsCompact ((fun x : GAd σ J × GAd σ J => x.1 * x.2) '' (Cm ×ˢ Ω₀)) :=
    (hCm.prod hΩ₀).image (by fun_prop)
  choose B hB using fun i => hm _ (_root_.GlobalTheory.CompanionTheory.RapidDecay.good_lineDer F E σ h n J hJ U A ψ (b i) hψ (hb i)) _ hCm'
  obtain ⟨B₀, hB₀⟩ := hm ψ hψ Cm hCm
  obtain ⟨M, hM0, hM⟩ := _root_.GlobalTheory.CompanionTheory.RapidDecay.near_cusp F E σ h n J hJ r X Y hW Ω Cm c U hΩ hΩP hCm hc hU
  set R₀ := max 1 (M / δ₁) with hR₀
  have hR1 : 1 ≤ R₀ := le_max_left _ _
  have hSum : 0 ≤ ∑ i, |B i| := Finset.sum_nonneg fun _ _ => abs_nonneg _
  refine ⟨R₀ * |B₀| + Cv * M * ∑ i, |B i|, fun p hp t ht a ha k hk => ?_⟩
  have hR := one_le_rbar t
  have hRpos : 0 < rbar t := by linarith
  have hRe : 0 < rbar t ^ e := pow_pos hRpos e
  have hRm : 0 < rbar t ^ m := pow_pos hRpos m
  have hT : 0 ≤ Cv * M * ∑ i, |B i| := mul_nonneg (mul_nonneg hCv hM0) hSum
  by_cases hcase : rbar t ≤ R₀
  · calc ‖ψ (p * a * k)‖ * rbar t ^ (m + 1) = rbar t * (‖ψ (p * a * k)‖ * rbar t ^ m) := by ring
      _ ≤ R₀ * (|B₀| * rbar t ^ e) := by
          refine mul_le_mul hcase ((hB₀ p hp t ht a ha k hk).trans ?_) (by positivity) (by linarith)
          exact mul_le_mul_of_nonneg_right (le_abs_self _) hRe.le
      _ ≤ _ := by
          rw [← mul_assoc, add_mul]
          exact le_add_of_nonneg_right (mul_nonneg hT hRe.le)
  · push Not at hcase
    have hne : rbar t ≠ 1 := fun e' => by
      rw [e'] at hcase; linarith
    obtain ⟨s, hs⟩ := (rbar_eq t).resolve_left hne
    have hδ : M / rbar t ≤ δ₁ := by
      rw [div_le_iff₀ hRpos]
      have h1 : M / δ₁ ≤ R₀ := le_max_right _ _
      rw [div_le_iff₀ hδ₁] at h1
      nlinarith
    set g := p * a * k with hg
    set cc : Fin q → ℝ := fun i => |B i| * rbar t ^ e / rbar t ^ m with hcc
    have hcc' : ∀ i, ∀ x ∈ Ω₀, ‖lineDer (b i) ψ (g * x)‖ ≤ cc i := fun i x hx => by
      have := hB i p hp t ht a ha (k * x) ⟨(k, x), ⟨hk, hx⟩, rfl⟩
      rw [show p * a * (k * x) = g * x by rw [hg, mul_assoc (p * a)]] at this
      rw [hcc, le_div_iff₀ hRm]
      exact this.trans (mul_le_mul_of_nonneg_right (le_abs_self _) hRe.le)
    have hvar : ‖ψ g‖ ≤ Cv * (M / rbar t) * ∑ i, cc i := by
      refine _root_.GlobalTheory.CompanionTheory.RapidDecay.norm_le_of_unipRad_variation F E σ h n J hJ ψ hψ.left hψ.cont hψ.cusp _ (pre X s) (Nat.succ_pos _)
        (GlobalTheory.UAut.isIsoCols_of_isWittFrame hW (sigma_sigma h) hJ _) g _ fun m' hm' => ?_
      obtain ⟨γ, hγ, u, κ, hu, hκU, hκf, e'⟩ := hM p hp t ht a ha k hk s m' hm'
      rw [← hs] at hu
      have : ψ (m' * g) = ψ (g * u) := by
        rw [hg, e', hψ.level κ hκU hκf, mul_assoc γ, hψ.left γ hγ]
      rw [this]
      exact hmv ψ hψ.smooth g u _ (div_nonneg hM0 hRpos.le) hδ hu cc hcc'
    have hsum : ∑ i, cc i = (∑ i, |B i|) * rbar t ^ e / rbar t ^ m := by
      rw [hcc, Finset.sum_mul, Finset.sum_div]
    calc ‖ψ g‖ * rbar t ^ (m + 1) ≤ (Cv * (M / rbar t) * ∑ i, cc i) * rbar t ^ (m + 1) :=
          mul_le_mul_of_nonneg_right hvar (pow_pos hRpos _).le
      _ = (Cv * M * ∑ i, |B i|) * rbar t ^ e := by
          rw [hsum, pow_succ]
          field_simp
      _ ≤ _ := by
          refine mul_le_mul_of_nonneg_right ?_ hRe.le
          exact le_add_of_nonneg_left (by positivity)

theorem rapid_decrease : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E →ₐ[F] E), IsCMExt F E σ → ∀ (n : ℕ) (J : Matrix (Fin n) (Fin n) E), IsHermND σ J → ∀ (r : ℕ) (X Y : Matrix (Fin n) (Fin r) E), IsWittFrame σ J X Y → ∀ (K : Subgroup (GAd σ J)) (Ω : Set (GAd σ J)) (c : ℝ), IsCompact (K : Set (GAd σ J)) → IsCompact Ω → Ω ⊆ minParOne σ J X → 0 < c → ∀ φ : GAd σ J → ℂ, IsSmoothModerate σ J φ → IsCuspidal σ J φ → ∀ N : ℕ, ∃ C : ℝ, ∀ g ∈ siegelSet σ J X Y Ω c K, ‖φ g‖ * (height σ J g : ℝ) ^ N ≤ C := by
  intro F E _ _ _ _ _ σ h n J hJ r X Y hW K Ω c hK hΩ hΩP hc φ hs hcu N
  obtain ⟨U, hU, hlev⟩ := hs.level
  obtain ⟨A, hA⟩ := hs.growth
  have hG : Good σ J U A φ := ⟨hs.left, hlev, hs.cont, hs.smooth, hA, hcu⟩
  obtain ⟨b, hb⟩ := _root_.GlobalTheory.CompanionTheory.RapidDecay.height_le_rbar_pow F E σ h n J hJ r X Y hW c hc
  set e := b * A with he
  have hbase : ∀ ψ, Good σ J U A ψ → ∀ Cm : Set (GAd σ J), IsCompact Cm → ∃ B : ℝ, ∀ p ∈ Ω, ∀ t ∈ cone r c, ∀ a,
      IsTorusElt σ J X Y t a → ∀ k ∈ Cm, ‖ψ (p * a * k)‖ * rbar t ^ 0 ≤ B * rbar t ^ e := fun ψ hψ Cm hCm => by
    obtain ⟨H, hH0, hH⟩ := hb Ω Cm hΩ hCm
    obtain ⟨C, hC⟩ := hψ.growth [] (by simp)
    refine ⟨|C| * H ^ A, fun p hp t ht a ha k hk => ?_⟩
    have h1 := hC (p * a * k)
    have h2 := hH p hp t ht a ha k hk
    have h3 : (0 : ℝ) ≤ (height σ J (p * a * k) : ℝ) := NNReal.coe_nonneg _
    simp only [List.foldr_nil] at h1
    rw [pow_zero, mul_one, he, pow_mul, mul_assoc |C|, ← mul_pow]
    exact h1.trans ((mul_le_mul_of_nonneg_right (le_abs_self _) (pow_nonneg h3 _)).trans
      (mul_le_mul_of_nonneg_left (pow_le_pow_left₀ h3 h2 A) (abs_nonneg _)))
  have hall : ∀ m : ℕ, ∀ ψ, Good σ J U A ψ → ∀ Cm : Set (GAd σ J), IsCompact Cm → ∃ B : ℝ, ∀ p ∈ Ω, ∀ t ∈ cone r c, ∀ a,
      IsTorusElt σ J X Y t a → ∀ k ∈ Cm, ‖ψ (p * a * k)‖ * rbar t ^ m ≤ B * rbar t ^ e := fun m => by
    induction m with
    | zero => exact hbase
    | succ m ih => exact fun ψ hψ Cm hCm => decay_step h hJ hW hΩ hΩP hc hU A e m ih ψ hψ Cm hCm
  obtain ⟨B, hB⟩ := hall (b * N + e) φ hG _ hK
  obtain ⟨H, hH0, hH⟩ := hb Ω K hΩ hK
  refine ⟨|B| * H ^ N, ?_⟩
  rintro _ ⟨p, hp, t, ht, a, ha, k, hk, rfl⟩
  have hR := one_le_rbar t
  have hRpos : 0 < rbar t := by linarith
  have h1 := hB p hp t ht a ha k hk
  have h2 := hH p hp t ht a ha k hk
  have h3 : (0 : ℝ) ≤ (height σ J (p * a * k) : ℝ) := NNReal.coe_nonneg _
  have h4 : ‖φ (p * a * k)‖ * rbar t ^ (b * N) ≤ |B| := by
    rw [pow_add, ← mul_assoc] at h1
    have h5 := h1.trans (mul_le_mul_of_nonneg_right (le_abs_self _) (pow_pos hRpos e).le)
    exact le_of_mul_le_mul_right h5 (pow_pos hRpos e)
  calc ‖φ (p * a * k)‖ * (height σ J (p * a * k) : ℝ) ^ N ≤ ‖φ (p * a * k)‖ * (H * rbar t ^ b) ^ N :=
        mul_le_mul_of_nonneg_left (pow_le_pow_left₀ h3 h2 N) (norm_nonneg _)
    _ = (‖φ (p * a * k)‖ * rbar t ^ (b * N)) * H ^ N := by rw [mul_pow, pow_mul]; ring
    _ ≤ _ := mul_le_mul_of_nonneg_right h4 (pow_nonneg hH0 _)

end GlobalTheory.CompanionTheory.RapidDecay

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CuspFormRapidDecay =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CuspFormSiegelBound =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CuspFormSiegelBound", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EvIInfScaleMul\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsSmoothModerateOfIsAutFunSm\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSiegelDomainReduction\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SiegelSetArchimedeanNormBound\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusElementActsOnFrameColumns\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusElementArchimedeanMatrixForm\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SiegelWeilLagrangianTermsAbsTsumLeHeightPoly\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.WeilBound.ThetaLifts.Reductions.SiegelCore\n\n"}
section -- clump:auto
@[expose] public section

open NumberField MeasureTheory Matrix Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.AdelicU GlobalTheory.SiegelSet PositivityTheory.ThKR
open Formalism.UG (cT bc)
open IsDedekindDomain
open scoped TensorProduct NNReal ENNReal

set_option linter.unusedSectionVars false

noncomputable section

namespace GlobalTheory.CompanionTheory.SiegelHt

open GlobalTheory.Doubling (absE absE_apply absEw_eq_sq absEv_apply absE_inclR unitInf unitFin finite_mulSupport_absEv)

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

theorem absE_entry_le {σ : E →ₐ[F] E} (hσ : IsCMExt F E σ) {n : ℕ} (x : GL (Fin n) (AF F ⊗[F] E))
    (u : (AF F ⊗[F] E)ˣ) (i j : Fin n) (hu : u.1 = x.1 i j) : absE F E u ≤ heightGL F x ^ 2 := by
  rw [absE_apply, heightGL, mul_pow, ← Finset.prod_pow, finprod_pow (finite_mulSupport_htFin F x)]
  refine mul_le_mul' (Finset.prod_le_prod' fun w _ => ?_)
    (finprod_le_finprod' (finite_mulSupport_absEv u) ?_ fun v => ?_)
  · obtain ⟨τ⟩ : Nonempty (EmbOver E w) := inferInstance
    rw [absEw_eq_sq hσ τ]
    refine pow_le_pow_left' ?_ 2
    have e : infEmb τ (unitInf F E w u).1 = ((x.1.map (compInf F E w)).map (infEmb τ)) i j := by
      change infEmb τ (compInf F E w u.1) = _
      rw [hu]; rfl
    rw [e]
    exact (GlobalTheory.SWAbsGrowth.entry_le_opNorm _ i j).trans
      (((normInf_le_iff F w).1 le_rfl τ).trans (le_htOf (normInf F w) (bc (compInf F E w) x)))
  · exact (finite_mulSupport_htFin F x).subset fun v hv h => hv (by simp only [h, one_pow])
  · have e : (unitFin F E v u).1 = (x.1.map (compFin F E v)) i j := by
      change compFin F E v u.1 = _
      rw [hu]; rfl
    rw [absEv_apply, e]
    exact (GlobalTheory.SWAbsGrowth.absNorm_le_sq hσ v _).trans (pow_le_pow_left' ((absFin_le_normFin F v _ i j).trans
      (le_htOf (normFin F v) (bc (compFin F E v) x))) 2)

theorem exists_scale {σ : E →ₐ[F] E} (hσ : IsCMExt F E σ) {s : ℝ} (hs : 0 < s) :
    ∃ u : (AF F ⊗[F] E)ˣ, u.1 = algebraMap (AF F) (AF F ⊗[F] E) (GlobalTheory.TorusTheta.infScale F s) ∧
      (absE F E u : ℝ) = (s ^ 2) ^ Fintype.card (InfinitePlace F) := by
  have h1 : GlobalTheory.TorusTheta.infScale F s * GlobalTheory.TorusTheta.infScale F s⁻¹ = 1 := by
    refine Prod.ext ?_ (mul_one _)
    change (InfiniteAdeleRing.ringEquiv_mixedSpace F).symm _ * (InfiniteAdeleRing.ringEquiv_mixedSpace F).symm _ = 1
    rw [← map_mul, ← map_mul, mul_inv_cancel₀ hs.ne', map_one, map_one]
  let v : (AF F)ˣ := ⟨_, _, h1, (mul_comm _ _).trans h1⟩
  refine ⟨Units.map (algebraMap (AF F) (AF F ⊗[F] E) : AF F →* AF F ⊗[F] E) v, rfl, ?_⟩
  set u := Units.map (algebraMap (AF F) (AF F ⊗[F] E) : AF F →* AF F ⊗[F] E) v with hu
  have hf : ∀ p, GlobalTheory.Doubling.absEv F E p (unitFin F E p u) = 1 := fun p => by
    have : unitFin F E p u = 1 := Units.ext (by
      change compFin F E p (algebraMap (AF F) (AF F ⊗[F] E) (GlobalTheory.TorusTheta.infScale F s)) = 1
      rw [Algebra.TensorProduct.algebraMap_apply]
      change (evFin F p (GlobalTheory.TorusTheta.infScale F s)) ⊗ₜ[F] (1 : E) = 1
      rw [show evFin F p (GlobalTheory.TorusTheta.infScale F s) = 1 from map_one (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.evalV F p)]
      rfl)
    rw [this, map_one]
  have hi : ∀ w, GlobalTheory.Doubling.absEw F E w (unitInf F E w u) = s.toNNReal ^ 2 := fun w => by
    obtain ⟨τ⟩ : Nonempty (EmbOver E w) := inferInstance
    rw [absEw_eq_sq hσ τ]
    have e : infEmb τ (unitInf F E w u).1 = (s : ℂ) := GlobalTheory.TorusMat.piInf_infScale hσ τ s
    rw [e]
    congr 1
    exact NNReal.eq (by simp [abs_of_pos hs, Real.coe_toNNReal _ hs.le])
  rw [absE_apply, finprod_eq_one_of_forall_eq_one hf, mul_one, Finset.prod_congr rfl fun w _ => hi w]
  rw [Finset.prod_const, Finset.card_univ, NNReal.coe_pow, NNReal.coe_pow, Real.coe_toNNReal _ hs.le]

theorem exists_gl_col {n : ℕ} {x : Fin n → E} (hx : x ≠ 0) :
    ∃ (M : GL (Fin n) E) (k : Fin n), ∀ j, M.1 j k = x j := by
  obtain ⟨k, hk⟩ := Function.ne_iff.1 hx
  have hd : (Matrix.updateCol (1 : Matrix (Fin n) (Fin n) E) k x).det = x k := by
    rw [← Matrix.cramer_apply, Matrix.cramer_one]; rfl
  refine ⟨Matrix.GeneralLinearGroup.mkOfDetNeZero _ (hd.symm ▸ hk), k, fun j => ?_⟩
  change Matrix.updateCol (1 : Matrix (Fin n) (Fin n) E) k x j k = x j
  simp

theorem exists_scale_le {σ : E →ₐ[F] E} (hσ : IsCMExt F E σ) {n : ℕ} {J : Matrix (Fin n) (Fin n) E} {r : ℕ}
    {X Y : Matrix (Fin n) (Fin r) E} (hW : IsWittFrame σ J X Y) (i₀ : Fin r) (h0 : i₀.val = 0) :
    ∃ H : ℝ≥0, 1 ≤ H ∧ ∀ p ∈ minParOne σ J X, ∀ t : Fin r → ℝ, (∀ i, 0 < t i) → ∀ a, IsTorusElt σ J X Y t a →
      ∀ γ ∈ ratPts σ J, ((t i₀ ^ 2) ^ Fintype.card (InfinitePlace F) : ℝ) ≤ ((H * height σ J (γ * p * a) : ℝ≥0) : ℝ) ^ 2 := by
  set x : Fin n → E := fun j => X j i₀ with hxdef
  have hx : x ≠ 0 := by
    intro e
    have h1 := congrFun (congrFun hW.xy i₀) i₀
    have hrow : ∀ j, cT (σ : E →+* E) X i₀ j = 0 := fun j => by
      change σ (X j i₀) = 0
      rw [show X j i₀ = 0 from congrFun e j, map_zero]
    rw [Matrix.mul_assoc, Matrix.mul_apply, Finset.sum_eq_zero fun j _ => by rw [hrow j, zero_mul],
      Matrix.one_apply_eq] at h1
    exact zero_ne_one h1
  obtain ⟨M, k, hM⟩ := exists_gl_col hx
  refine ⟨heightGL F (bc (inclR (F := F) (AF F)) M), one_le_heightGL F _, ?_⟩
  rintro p ⟨B, hB, hpB, hu⟩ t ht a ha γ hγ
  obtain ⟨s, hs1, hs2⟩ := exists_scale (F := F) (E := E) hσ (ht i₀)
  obtain ⟨b, hb1, hb2⟩ := hu i₀
  obtain ⟨γ₀, rfl⟩ : ∃ γ₀, ratEmb σ J γ₀ = γ := by
    have : γ ∈ (ratEmb σ J).range := (range_ratEmb σ J).symm ▸ hγ
    exact this
  let ξ : Fin n → AF F ⊗[F] E := fun j => inclR (F := F) (AF F) (x j)
  have hl' : ∀ l, l ≠ i₀ → B l i₀ = 0 := fun l hl => hB (show id i₀ < id l from Fin.lt_def.2 (by
    have : l.val ≠ i₀.val := fun e => hl (Fin.ext e)
    simp only [id]; omega))
  have hP : (matHom _ σ J p).1 *ᵥ ξ = b.1 • ξ := funext fun j => by
    have h1 := congrFun (congrFun hpB j) i₀
    rw [Matrix.mul_apply (M := adMat F X), Finset.sum_eq_single i₀ (fun l _ hl => by
      rw [hl' l hl, mul_zero]) (by simp), hb1] at h1
    exact h1.trans (mul_comm _ _)
  have hA : (matHom _ σ J a).1 *ᵥ ξ = s.1 • ξ := funext fun j => by
    have h1 := congrFun (congrFun (GlobalTheory.TorusMat.isTorusElt_mat F E σ hσ n J r X Y t ht a ha).1 j) i₀
    rw [Matrix.mul_diagonal, ← hs1] at h1
    exact h1.trans (mul_comm _ _)
  have hG : (matHom _ σ J (ratEmb σ J γ₀)).1 *ᵥ ξ = fun j => inclR (F := F) (AF F) ((γ₀.1.1 *ᵥ x) j) := funext fun j =>
    (RingHom.map_mulVec (inclR (F := F) (AF F)) γ₀.1.1 x j).symm
  have hv : γ₀.1.1 *ᵥ x ≠ 0 := fun e => hx (by
    have := congrArg (fun y => ((γ₀.1)⁻¹).1 *ᵥ y) e
    simpa [Matrix.mulVec_mulVec] using this)
  obtain ⟨i, hi⟩ := Function.ne_iff.1 hv
  let e : Eˣ := Units.mk0 _ hi
  let u : (AF F ⊗[F] E)ˣ := s * b * Units.map (inclR (F := F) (AF F)).toMonoidHom e
  have hz : u.1 = (matHom _ σ J (ratEmb σ J γ₀ * p * a) * bc (inclR (F := F) (AF F)) M).1 i k := by
    have h1 : (matHom _ σ J (ratEmb σ J γ₀ * p * a) * bc (inclR (F := F) (AF F)) M).1 i k =
        ((matHom _ σ J (ratEmb σ J γ₀ * p * a)).1 *ᵥ ξ) i := by
      rw [Units.val_mul, Matrix.mul_apply]
      refine Finset.sum_congr rfl fun j _ => congrArg _ ?_
      exact congrArg (inclR (F := F) (AF F)) (hM j)
    have h2 : (matHom _ σ J (ratEmb σ J γ₀ * p * a)).1 *ᵥ ξ =
        (s.1 * b.1) • fun j => inclR (F := F) (AF F) ((γ₀.1.1 *ᵥ x) j) := by
      rw [map_mul, map_mul, Units.val_mul, Units.val_mul, ← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, hA,
        Matrix.mulVec_smul, hP, Matrix.mulVec_smul, Matrix.mulVec_smul, hG, smul_smul]
    rw [h1, h2]
    rfl
  have habs : (absE F E u : ℝ) = (t i₀ ^ 2) ^ Fintype.card (InfinitePlace F) := by
    rw [map_mul, map_mul, absE_inclR, hb2, mul_one, mul_one, hs2]
  rw [← habs]
  have h2 := absE_entry_le hσ _ u i k hz
  have h3 := heightGL_mul_le F (matHom _ σ J (ratEmb σ J γ₀ * p * a)) (bc (inclR (F := F) (AF F)) M)
  have h4 : absE F E u ≤ (heightGL F (bc (inclR (F := F) (AF F)) M) * height σ J (ratEmb σ J γ₀ * p * a)) ^ 2 :=
    h2.trans (pow_le_pow_left' (h3.trans_eq (mul_comm _ _)) 2)
  exact_mod_cast h4

theorem cone_up {r : ℕ} {c : ℝ} (hc : 0 < c) {t : Fin r → ℝ} (ht : t ∈ cone r c) (i₀ : Fin r) (h0 : i₀.val = 0)
    (m : ℕ) (hm : m < r) : t ⟨m, hm⟩ ≤ max 1 c⁻¹ ^ m * t i₀ := by
  induction m with
  | zero =>
    have : (⟨0, hm⟩ : Fin r) = i₀ := Fin.ext h0.symm
    rw [this]; simp
  | succ m ih =>
    have h1 := ht.2.1 ⟨m, by omega⟩ ⟨m + 1, hm⟩ rfl
    have h2 := ih (by omega)
    have h3 : t ⟨m + 1, hm⟩ ≤ c⁻¹ * t ⟨m, by omega⟩ := by
      rw [inv_mul_eq_div, le_div_iff₀ hc]; linarith
    have h4 := ht.1 ⟨m, by omega⟩
    calc t ⟨m + 1, hm⟩ ≤ c⁻¹ * t ⟨m, by omega⟩ := h3
      _ ≤ max 1 c⁻¹ * t ⟨m, by omega⟩ := by gcongr; exact le_max_right _ _
      _ ≤ max 1 c⁻¹ * (max 1 c⁻¹ ^ m * t i₀) := by gcongr
      _ = _ := by ring

theorem exists_prod_le {σ : E →ₐ[F] E} (hσ : IsCMExt F E σ) {n : ℕ} {J : Matrix (Fin n) (Fin n) E} {r : ℕ}
    {X Y : Matrix (Fin n) (Fin r) E} (hW : IsWittFrame σ J X Y) {c : ℝ} (hc : 0 < c) :
    ∃ B : ℝ, 0 ≤ B ∧ ∀ p ∈ minParOne σ J X, ∀ t ∈ cone r c, ∀ a, IsTorusElt σ J X Y t a →
      ∀ γ ∈ ratPts σ J, 1 + ∏ i, t i ≤ B * (height σ J (γ * p * a) : ℝ) ^ r := by
  rcases Nat.eq_zero_or_pos r with rfl | hr
  · exact ⟨2, by norm_num, fun p _ t _ a _ γ _ => by norm_num⟩
  let i₀ : Fin r := ⟨0, hr⟩
  obtain ⟨H, hH1, hH⟩ := exists_scale_le (F := F) hσ hW i₀ rfl
  set L : ℝ := max 1 c⁻¹ ^ r with hL
  have hL1 : 1 ≤ L := one_le_pow₀ (le_max_left _ _)
  refine ⟨2 * (L * H) ^ r, by positivity, fun p hp t ht a ha γ hγ => ?_⟩
  set Q : ℝ := (height σ J (γ * p * a) : ℝ) with hQ
  have hQ1 : 1 ≤ Q := by exact_mod_cast one_le_height σ J _
  have hH1' : (1 : ℝ) ≤ H := by exact_mod_cast hH1
  have hHQ : 1 ≤ (H : ℝ) * Q := one_le_mul_of_one_le_of_one_le hH1' hQ1
  have hd : Fintype.card (InfinitePlace F) ≠ 0 := Fintype.card_ne_zero
  have h0 : t i₀ ≤ H * Q := by
    by_contra hlt
    push Not at hlt
    have h1 := hH p hp t ht.1 a ha γ hγ
    rw [NNReal.coe_mul] at h1
    have h2 : ((H : ℝ) * Q) ^ 2 < t i₀ ^ 2 := pow_lt_pow_left₀ hlt (by positivity) two_ne_zero
    have h3 : 1 ≤ t i₀ ^ 2 := one_le_pow₀ (hHQ.trans hlt.le)
    have h4 : t i₀ ^ 2 ≤ (t i₀ ^ 2) ^ Fintype.card (InfinitePlace F) := le_self_pow₀ h3 hd
    exact absurd (h4.trans h1) (not_le.2 h2)
  have hb : ∀ i, t i ≤ L * (H * Q) := fun i => by
    have h1 := cone_up hc ht i₀ rfl i.val i.2
    have h2 : max 1 c⁻¹ ^ i.val ≤ L := pow_le_pow_right₀ (le_max_left _ _) i.2.le
    calc t i ≤ max 1 c⁻¹ ^ i.val * t i₀ := h1
      _ ≤ L * (H * Q) := mul_le_mul h2 h0 (ht.1 i₀).le (by positivity)
  have hprod : ∏ i, t i ≤ (L * (H * Q)) ^ r := by
    have := Finset.prod_le_prod₀ (s := (Finset.univ : Finset (Fin r))) (fun i _ => (ht.1 i).le) fun i _ => hb i
    simpa using this
  have h5 : 1 ≤ (L * (H * Q)) ^ r := one_le_pow₀ (one_le_mul_of_one_le_of_one_le hL1 hHQ)
  calc 1 + ∏ i, t i ≤ (L * (H * Q)) ^ r + (L * (H * Q)) ^ r := add_le_add h5 hprod
    _ = 2 * (L * H) ^ r * Q ^ r := by rw [mul_pow, mul_pow, mul_pow]; ring



theorem height_le_pow : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E →ₐ[F] E), IsCMExt F E σ → ∀ (n : ℕ) (J : Matrix (Fin n) (Fin n) E), IsHermND σ J → ∀ (r : ℕ) (X Y : Matrix (Fin n) (Fin r) E), IsWittFrame σ J X Y → ∀ (K : Subgroup (GAd σ J)) (Ω : Set (GAd σ J)) (c : ℝ), IsCompact (K : Set (GAd σ J)) → IsCompact Ω → Ω ⊆ minParOne σ J X → 0 < c → ∃ (C : ℝ≥0) (A : ℕ), ∀ g ∈ siegelSet σ J X Y Ω c K, ∀ γ ∈ ratPts σ J, height σ J g ≤ C * height σ J (γ * g) ^ A := by
  intro F E _ _ _ _ _ σ hσ n J hJ r X Y hW K Ω c hK hΩ hΩ' hc
  have hcont : Continuous fun g : GAd σ J => (height σ J g : ℝ) :=
    NNReal.continuous_coe.comp ((GlobalTheory.Grow.continuous_heightGL F).comp continuous_subtype_val)
  obtain ⟨R₁, hR₁⟩ := (hΩ.image hcont).bddAbove
  obtain ⟨R₂, hR₂⟩ := (hK.image hcont).bddAbove
  obtain ⟨B, hB0, hB⟩ := exists_prod_le hσ hW hc
  have hc' : 0 < min 1 c ^ r := pow_pos (lt_min one_pos hc) _
  obtain ⟨Ch, Ah, hCh⟩ := @GlobalTheory.TorusHeight.height_torus_le F E _ _ _ _ _ σ hσ n J r X Y _ hc'
  have hR₂0 : 0 ≤ R₂ := by
    have h1 := hR₂ ⟨1, one_mem K, rfl⟩
    exact (NNReal.coe_nonneg _).trans h1
  set R₁' := max R₁ 0 with hR₁'
  set Ch' := max Ch 0 with hCh'
  have hR₁0 : 0 ≤ R₁' := le_max_right _ _
  have hCh0 : 0 ≤ Ch' := le_max_right _ _
  have hC0 : 0 ≤ R₁' * Ch' * B ^ Ah * R₂ ^ (r * Ah) * R₂ := by positivity
  refine ⟨(R₁' * Ch' * B ^ Ah * R₂ ^ (r * Ah) * R₂).toNNReal, r * Ah, ?_⟩
  rintro _ ⟨p, hp, t, ht, a, ha, k, hk, rfl⟩ γ hγ
  rw [← NNReal.coe_le_coe, NNReal.coe_mul, NNReal.coe_pow, Real.coe_toNNReal _ hC0]
  set S : ℝ := (height σ J (γ * (p * a * k)) : ℝ) with hS
  have hS0 : 0 ≤ S := NNReal.coe_nonneg _
  have h1 : (height σ J a : ℝ) ≤ Ch * (1 + ∏ i, t i) ^ Ah :=
    hCh t (GlobalTheory.SiegelHt.cone_low hc ht) a ha.1
      (@GlobalTheory.SiegelTorusMat.archMat_torus F E _ _ _ _ _ σ hσ n J hJ r X Y hW t
        (fun i => hc'.trans_le (GlobalTheory.SiegelHt.cone_low hc ht i)) a ha)
  have hprod0 : 0 ≤ 1 + ∏ i, t i := add_nonneg zero_le_one (Finset.prod_nonneg fun i _ => (ht.1 i).le)
  have hpa : γ * p * a = γ * (p * a * k) * k⁻¹ := by group
  have hkb : (height σ J k : ℝ) ≤ R₂ := hR₂ ⟨k, hk, rfl⟩
  have hkib : (height σ J k⁻¹ : ℝ) ≤ R₂ := by rw [height_inv]; exact hkb
  have hpb : (height σ J p : ℝ) ≤ R₁' := (hR₁ ⟨p, hp, rfl⟩).trans (le_max_left _ _)
  have hQ : (height σ J (γ * p * a) : ℝ) ≤ S * R₂ := by
    rw [hpa]
    calc (height σ J (γ * (p * a * k) * k⁻¹) : ℝ) ≤ ((height σ J (γ * (p * a * k)) * height σ J k⁻¹ : ℝ≥0) : ℝ) := by
          exact_mod_cast height_mul_le σ J _ _
      _ ≤ S * R₂ := by rw [NNReal.coe_mul]; exact mul_le_mul_of_nonneg_left hkib hS0
  have h2 := hB p (hΩ' hp) t ht a ha γ hγ
  have h3 : 1 + ∏ i, t i ≤ B * (S * R₂) ^ r := h2.trans (mul_le_mul_of_nonneg_left (pow_le_pow_left₀ (NNReal.coe_nonneg _) hQ r) hB0)
  have h4 : (height σ J a : ℝ) ≤ Ch' * (B * (S * R₂) ^ r) ^ Ah :=
    h1.trans (mul_le_mul (le_max_left _ _) (pow_le_pow_left₀ hprod0 h3 _) (pow_nonneg hprod0 _) hCh0)
  have h5 : (height σ J (p * a * k) : ℝ) ≤ (height σ J p : ℝ) * height σ J a * height σ J k := by
    exact_mod_cast (height_mul_le σ J _ _).trans (mul_le_mul' (height_mul_le σ J _ _) le_rfl)
  calc (height σ J (p * a * k) : ℝ) ≤ (height σ J p : ℝ) * height σ J a * height σ J k := h5
    _ ≤ R₁' * (Ch' * (B * (S * R₂) ^ r) ^ Ah) * R₂ :=
        mul_le_mul (mul_le_mul hpb h4 (NNReal.coe_nonneg _) hR₁0) hkb (NNReal.coe_nonneg _)
          (mul_nonneg hR₁0 ((NNReal.coe_nonneg _).trans h4))
    _ = R₁' * Ch' * B ^ Ah * R₂ ^ (r * Ah) * R₂ * S ^ (r * Ah) := by
      rw [mul_pow B, ← pow_mul, mul_pow S]; ring

end GlobalTheory.CompanionTheory.SiegelHt

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CuspFormSiegelBound =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SingleMulSingle =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SingleMulSingle", "h": "module\n\npublic import Development.WeilBound.ThetaLifts.Reductions.SiegelPar\nimport Aesop.Frontend.Tactic\nimport Aesop.Main\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ModerateGrowthOfHasCompactSupport\nimport Development.AbelianVarietyTheory.Proofs.UnitaryExistence.LcscAdelicUnitaryGroup\nimport Development.WeilBound.ThetaLifts.FrameEstimates.LeHeightOfIsTorusElt\nimport Development.WeilBound.ThetaLifts.Reductions.SiegelAbs\nimport Development.WeilBound.ThetaLifts.Reductions.SiegelGood\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open NumberField MeasureTheory Matrix Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.AdelicU GlobalTheory.SiegelSet PositivityTheory.ThKR
open Formalism.UG (cT)
open scoped TensorProduct NNReal ENNReal Pointwise

set_option linter.unusedSectionVars false

noncomputable section

namespace GlobalTheory.CompanionTheory.SiegelConj

section Alg

variable {R : Type} [CommRing R] {n r : ℕ}

abbrev Idx (r : ℕ) : Type := Fin r ⊕ (Unit ⊕ Fin r)

def rk : Idx r → ℕ
  | .inl i => i.val
  | .inr (.inl _) => r
  | .inr (.inr i) => 2 * r - i.val

def dl (s : Fin r → ℝ) : Idx r → ℝ
  | .inl i => s i
  | .inr (.inl _) => 0
  | .inr (.inr i) => - s i

def pr (X Y : Matrix (Fin n) (Fin r) R) (X' Y' : Matrix (Fin r) (Fin n) R) : Idx r → Matrix (Fin n) (Fin n) R
  | .inl i => X * Matrix.single i i (1 : R) * Y'
  | .inr (.inl _) => 1 - X * Y' - Y * X'
  | .inr (.inr i) => Y * Matrix.single i i (1 : R) * X'

theorem sum_single (r : ℕ) : ∑ i : Fin r, (Matrix.single i i 1 : Matrix (Fin r) (Fin r) R) = 1 := by
  ext a b
  rw [Matrix.sum_apply, Finset.sum_eq_single a]
  · by_cases h : a = b
    · subst h; simp
    · simp [h]
  · intro k _ hk
    simp only [Matrix.single_apply]
    rw [if_neg (fun e => hk e.1)]
  · simp

theorem sum_pr (X Y : Matrix (Fin n) (Fin r) R) (X' Y' : Matrix (Fin r) (Fin n) R) :
    ∑ α, pr X Y X' Y' α = 1 := by
  have e1 : ∑ i : Fin r, X * Matrix.single i i (1 : R) * Y' = X * Y' := by
    simp only [← Matrix.sum_mul, ← Matrix.mul_sum, sum_single, Matrix.mul_one]
  have e2 : ∑ i : Fin r, Y * Matrix.single i i (1 : R) * X' = Y * X' := by
    simp only [← Matrix.sum_mul, ← Matrix.mul_sum, sum_single, Matrix.mul_one]
  simp only [Fintype.sum_sum_type, pr, Finset.univ_unique, Finset.sum_singleton, e1, e2]
  abel

theorem diag_single (d : Fin r → R) (i : Fin r) :
    diagonal d * Matrix.single i i (1 : R) = d i • Matrix.single i i (1 : R) := by
  ext a b
  simp [Matrix.single_apply, Matrix.diagonal_mul]
  aesop

theorem eq_sum_pr {X Y : Matrix (Fin n) (Fin r) R} {X' Y' : Matrix (Fin r) (Fin n) R} {a : Matrix (Fin n) (Fin n) R}
    {d d' : Fin r → R} (hX : a * X = X * diagonal d) (hY : a * Y = Y * diagonal d')
    (hZ : a * (1 - X * Y' - Y * X') = 1 - X * Y' - Y * X') (f : Idx r → R)
    (f1 : ∀ i, f (.inl i) = d i) (f2 : ∀ u, f (.inr (.inl u)) = 1) (f3 : ∀ i, f (.inr (.inr i)) = d' i) :
    a = ∑ α, f α • pr X Y X' Y' α := by
  have key : ∀ α, a * pr X Y X' Y' α = f α • pr X Y X' Y' α := by
    rintro (i | u | i)
    · simp only [pr, f1, ← Matrix.mul_assoc, hX]
      rw [Matrix.mul_assoc X, diag_single, Matrix.mul_smul, Matrix.smul_mul]
    · simp only [pr, f2, hZ, one_smul]
    · simp only [pr, f3, ← Matrix.mul_assoc, hY]
      rw [Matrix.mul_assoc Y, diag_single, Matrix.mul_smul, Matrix.smul_mul]
  rw [← Finset.sum_congr rfl fun α _ => key α, ← Finset.mul_sum, sum_pr, Matrix.mul_one]

theorem single_mul_single {M : Matrix (Fin r) (Fin r) R} {i j : Fin r} (h : M i j = 0) :
    (Matrix.single i i (1 : R)) * M * Matrix.single j j (1 : R) = 0 := by
  rw [Matrix.single_mul_mul_single, h]
  simp

theorem pr_mul_pr_eq_zero {X Y : Matrix (Fin n) (Fin r) R} {X' Y' : Matrix (Fin r) (Fin n) R}
    (hxx : X' * X = 0) (hyx : Y' * X = 1) (hxy : X' * Y = 1) {g : Matrix (Fin n) (Fin n) R}
    {B L : Matrix (Fin r) (Fin r) R} (hB : g * X = X * B) (hBt : B.BlockTriangular id) (hL : X' * g = L * X')
    (hLt : ∀ i j : Fin r, i < j → L i j = 0) {α β : Idx r} (h : rk β < rk α) :
    pr X Y X' Y' α * g * pr X Y X' Y' β = 0 := by
  have hZX : (1 - X * Y' - Y * X') * X = 0 := by
    simp only [Matrix.sub_mul, Matrix.one_mul, Matrix.mul_assoc, hyx, hxx]; simp
  have hXZ : X' * (1 - X * Y' - Y * X') = 0 := by
    simp only [Matrix.mul_sub, Matrix.mul_one, ← Matrix.mul_assoc, hxx, hxy]; simp
  rcases α with i | u | i <;> rcases β with j | v | j
  · have h' : j < i := h
    have e : Matrix.single i i (1 : R) * B * Matrix.single j j (1 : R) = 0 := single_mul_single (hBt h')
    calc _ = X * (Matrix.single i i (1 : R) * (Y' * (g * X)) * Matrix.single j j (1 : R)) * Y' := by
          simp only [pr, Matrix.mul_assoc]
      _ = 0 := by rw [hB, ← Matrix.mul_assoc Y', hyx, Matrix.one_mul, e]; simp
  · exact absurd h (by simp only [rk]; omega)
  · exact absurd h (by simp only [rk]; omega)
  · calc _ = (1 - X * Y' - Y * X') * (g * X) * Matrix.single j j (1 : R) * Y' := by
          simp only [pr, Matrix.mul_assoc]
      _ = 0 := by rw [hB, ← Matrix.mul_assoc, hZX]; simp
  · exact absurd h (by simp only [rk]; omega)
  · exact absurd h (by simp only [rk]; omega)
  · calc _ = Y * Matrix.single i i (1 : R) * (X' * g) * X * Matrix.single j j (1 : R) * Y' := by
          simp only [pr, Matrix.mul_assoc]
      _ = 0 := by rw [hL]; simp only [Matrix.mul_assoc, hxx]; simp
  · calc _ = Y * Matrix.single i i (1 : R) * (X' * g) * (1 - X * Y' - Y * X') := by
          simp only [pr, Matrix.mul_assoc]
      _ = 0 := by rw [hL, Matrix.mul_assoc _ (L * X'), Matrix.mul_assoc L, hXZ]; simp
  · have h' : i < j := by
      have h1 := i.2
      have h2 := j.2
      have : 2 * r - j.val < 2 * r - i.val := h
      exact Fin.lt_def.2 (by omega)
    have e : Matrix.single i i (1 : R) * L * Matrix.single j j (1 : R) = 0 := single_mul_single (hLt i j h')
    calc _ = Y * (Matrix.single i i (1 : R) * ((X' * g) * Y) * Matrix.single j j (1 : R)) * X' := by
          simp only [pr, Matrix.mul_assoc]
      _ = 0 := by rw [hL, Matrix.mul_assoc L, hxy, Matrix.mul_one, e]; simp

end Alg

section Cone

theorem cone_chain {r : ℕ} {c : ℝ} (hc : 0 < c) {t : Fin r → ℝ} (ht : t ∈ cone r c) (k : ℕ) :
    ∀ i j : Fin r, j.val = i.val + k → t j ≤ max 1 c⁻¹ ^ k * t i := by
  have hb : 1 ≤ max 1 c⁻¹ := le_max_left _ _
  induction k with
  | zero =>
    intro i j e
    have : j = i := Fin.ext (by simpa using e)
    simp [this]
  | succ k ih =>
    intro i j e
    let l : Fin r := ⟨i.val + k, by have := j.2; omega⟩
    have h1 := ih i l rfl
    have h2 : c * t j ≤ t l := ht.2.1 l j (by simp only [l]; omega)
    have h3 : t j ≤ c⁻¹ * t l := by
      rw [inv_mul_eq_div, le_div_iff₀ hc]
      linarith
    have h4 : 0 < t l := ht.1 l
    calc t j ≤ c⁻¹ * t l := h3
      _ ≤ max 1 c⁻¹ * t l := mul_le_mul_of_nonneg_right (le_max_right _ _) h4.le
      _ ≤ max 1 c⁻¹ * (max 1 c⁻¹ ^ k * t i) := mul_le_mul_of_nonneg_left h1 (by linarith)
      _ = max 1 c⁻¹ ^ (k + 1) * t i := by ring

theorem cone_inv_le {r : ℕ} {c : ℝ} (hc : 0 < c) {t : Fin r → ℝ} (ht : t ∈ cone r c) (i : Fin r) :
    (t i)⁻¹ ≤ max 1 c⁻¹ ^ r := by
  have hb : 1 ≤ max 1 c⁻¹ := le_max_left _ _
  have hi := i.2
  let l : Fin r := ⟨r - 1, by omega⟩
  have h1 : t l ≤ max 1 c⁻¹ ^ (r - 1 - i.val) * t i := cone_chain hc ht _ i l (by simp only [l]; omega)
  have h2 : c ≤ t l := ht.2.2 l (by simp only [l]; omega)
  have h3 : 0 < t i := ht.1 i
  have h4 : c ≤ max 1 c⁻¹ ^ (r - 1 - i.val) * t i := h2.trans h1
  have h5 : 1 ≤ max 1 c⁻¹ * (max 1 c⁻¹ ^ (r - 1 - i.val) * t i) := by
    calc (1 : ℝ) = c⁻¹ * c := (inv_mul_cancel₀ hc.ne').symm
      _ ≤ max 1 c⁻¹ * c := mul_le_mul_of_nonneg_right (le_max_right _ _) hc.le
      _ ≤ _ := mul_le_mul_of_nonneg_left h4 (by linarith)
  have h6 : max 1 c⁻¹ ^ (r - 1 - i.val + 1) ≤ max 1 c⁻¹ ^ r := pow_le_pow_right₀ hb (by omega)
  rw [inv_le_iff_one_le_mul₀ h3]
  calc (1 : ℝ) ≤ max 1 c⁻¹ * (max 1 c⁻¹ ^ (r - 1 - i.val) * t i) := h5
    _ = max 1 c⁻¹ ^ (r - 1 - i.val + 1) * t i := by ring
    _ ≤ max 1 c⁻¹ ^ r * t i := mul_le_mul_of_nonneg_right h6 h3.le

theorem cone_bound (r : ℕ) {c : ℝ} (hc : 0 < c) : ∃ M : ℝ, ∀ s : Fin r → ℝ, (fun i => Real.exp (s i)) ∈ cone r c →
    ∀ α β : Idx r, rk α ≤ rk β → Real.exp (dl s β - dl s α) ≤ M := by
  have hb : 1 ≤ max 1 c⁻¹ := le_max_left _ _
  refine ⟨max 1 c⁻¹ ^ r * max 1 c⁻¹ ^ r, fun s hs α β hr => ?_⟩
  have hb1 : 1 ≤ max 1 c⁻¹ ^ r := one_le_pow₀ hb
  have hbr : max 1 c⁻¹ ^ r ≤ max 1 c⁻¹ ^ r * max 1 c⁻¹ ^ r := le_mul_of_one_le_left (by linarith) hb1
  have h1 : ∀ i j : Fin r, i.val ≤ j.val → Real.exp (s j - s i) ≤ max 1 c⁻¹ ^ r := fun i j hij => by
    have e := cone_chain hc hs (j.val - i.val) i j (by omega)
    have hj := j.2
    have e2 : max 1 c⁻¹ ^ (j.val - i.val) ≤ max 1 c⁻¹ ^ r := pow_le_pow_right₀ hb (by omega)
    rw [Real.exp_sub, div_le_iff₀ (Real.exp_pos _)]
    exact e.trans (mul_le_mul_of_nonneg_right e2 (Real.exp_pos _).le)
  have h2 : ∀ i : Fin r, Real.exp (- s i) ≤ max 1 c⁻¹ ^ r := fun i => by
    rw [Real.exp_neg]
    exact cone_inv_le hc hs i
  rcases α with i | u | i <;> rcases β with j | v | j <;> simp only [rk] at hr <;> simp only [dl]
  · exact (h1 i j hr).trans hbr
  · rw [zero_sub]
    exact (h2 i).trans hbr
  · have e : Real.exp (- s j - s i) = Real.exp (- s j) * Real.exp (- s i) := by
      rw [← Real.exp_add]; congr 1
    rw [e]
    exact mul_le_mul (h2 j) (h2 i) (Real.exp_pos _).le (by linarith)
  · have := j.2; omega
  · simp only [sub_self, Real.exp_zero]
    nlinarith
  · rw [sub_zero]
    exact (h2 j).trans hbr
  · have := j.2; have := i.2; omega
  · have := i.2; omega
  · have hi := i.2
    have hj := j.2
    have e : - s j - - s i = s i - s j := by ring
    rw [e]
    exact (h1 j i (by omega)).trans hbr

end Cone

section Ad

open GlobalTheory.Orb (archMat archMat_apply archMat_eq_archEquiv)
open PositivityTheory.ThKEst (rId)
open PositivityTheory.ThKEst.Sieg (rId_add rId_zero' realAd_inf realAd_snd)
open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels (realAd)

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}
  {n r : ℕ} {J : Matrix (Fin n) (Fin n) E} {X Y : Matrix (Fin n) (Fin r) E}


variable (σ J X Y) in
def Pj : Idx r → Matrix (Fin n) (Fin n) (AF F ⊗[F] E) :=
  pr (adMat F X) (adMat F Y) (cT (sigR (AF F) σ) (adMat F X) * JR (F := F) (AF F) J)
    (cT (sigR (AF F) σ) (adMat F Y) * JR (F := F) (AF F) J)


variable (F E) in
def eA (x : ℝ) : AF F ⊗[F] E := algebraMap (AF F) (AF F ⊗[F] E) (1 + realAd F (x - 1))

theorem eA_exp (u : ℝ) : eA F E (Real.exp u) = algebraMap (AF F) (AF F ⊗[F] E) (rId F u) := rfl

theorem eA_exp_mul [IsTotallyReal F] (u v : ℝ) :
    eA F E (Real.exp (-u)) * eA F E (Real.exp v) = eA F E (Real.exp (v - u)) := by
  rw [eA_exp, eA_exp, eA_exp, ← map_mul, ← rId_add]
  congr 2
  ring

theorem continuous_eA [IsTotallyReal F] : Continuous (eA F E) := by
  have := GlobalTheory.Doubling.isTopologicalRing_tens (F := F) (E := E) (R := AF F)
  have : IsModuleTopology (AF F) (AF F ⊗[F] E) := ⟨rfl⟩
  have : ContinuousSMul (AF F) (AF F ⊗[F] E) := IsModuleTopology.toContinuousSMul (AF F) _
  have h1 : Continuous fun x : ℝ => (1 + realAd F (x - 1) : AF F) := by
    refine Continuous.prodMk (f := fun t => (1 + realAd F (t - 1) : AF F).1) (g := fun t => (1 + realAd F (t - 1) : AF F).2)
      (continuous_pi fun w => ?_) ?_
    · refine (InfinitePlace.Completion.isometry_extensionEmbedding w).isEmbedding.continuous_iff.2 ?_
      have : (InfinitePlace.Completion.extensionEmbedding w) ∘ (fun t => (1 + realAd F (t - 1) : AF F).1 w) =
          fun t : ℝ => (t : ℂ) := funext fun t => by
        change InfinitePlace.Completion.extensionEmbedding w (1 + (realAd F (t - 1)).1 w) = _
        rw [map_add (f := _), map_one, realAd_inf]
        push_cast
        ring
      rw [this]
      fun_prop
    · have : (fun t => (1 + realAd F (t - 1) : AF F).2) = fun _ => (1 : Af F) := funext fun t => add_zero _
      rw [this]
      exact continuous_const
  exact (continuous_algebraMap (AF F) (AF F ⊗[F] E)).comp h1

theorem torus_mat (h : IsCMExt F E σ) (hJ : IsHermND σ J) (hW : IsWittFrame σ J X Y) {a : (Fin r → ℝ) → GAd σ J}
    (ha : IsTorus σ J X Y a) (s : Fin r → ℝ) :
    (matHom _ σ J (a s)).1 = ∑ α, eA F E (Real.exp (dl s α)) • Pj σ J X Y α := by
  haveI := h.1
  let P : Matrix (Fin n) (Fin n) E := 1 - X * (cT (σ : E →+* E) Y * J) - Y * (cT (σ : E →+* E) X * J)
  have yx : cT (σ : E →+* E) Y * J * X = 1 :=
    (show Sieg.Fr (σ : E →+* E) J X Y from ⟨sigma_sigma h, Matrix.ext fun i j => hJ.1 i j, hW.xx, hW.yy, hW.xy⟩).yx
  have hPX : cT (σ : E →+* E) X * J * P = 0 := by
    simp only [P]
    rw [Matrix.mul_sub, Matrix.mul_sub, Matrix.mul_one, ← Matrix.mul_assoc, ← Matrix.mul_assoc _ Y, hW.xx, hW.xy,
      Matrix.zero_mul, Matrix.one_mul, sub_zero, sub_self]
  have hPY : cT (σ : E →+* E) Y * J * P = 0 := by
    simp only [P]
    rw [Matrix.mul_sub, Matrix.mul_sub, Matrix.mul_one, ← Matrix.mul_assoc, ← Matrix.mul_assoc _ Y, yx, hW.yy,
      Matrix.zero_mul, Matrix.one_mul, sub_zero, sub_self]
  have hbP : (matHom _ σ J (a s)).1 * P.map (inclR (F := F) (AF F)) = P.map (inclR (F := F) (AF F)) := by
    ext i j
    exact congrFun (ha.onV s (fun k => P k j) (funext fun k => congrFun (congrFun hPX k) j)
      (funext fun k => congrFun (congrFun hPY k) j)) i
  have hPad : P.map (inclR (F := F) (AF F)) = 1 - adMat F X * (cT (sigR (AF F) σ) (adMat F Y) * JR (F := F) (AF F) J) -
      adMat F Y * (cT (sigR (AF F) σ) (adMat F X) * JR (F := F) (AF F) J) := by
    simp only [P]
    rw [Matrix.map_sub _ (map_sub _), Matrix.map_sub _ (map_sub _), Matrix.map_one _ (map_zero _) (map_one _),
      Matrix.map_mul, Matrix.map_mul, Matrix.map_mul, Matrix.map_mul, map_cT_inclR, map_cT_inclR]
    rfl
  rw [hPad] at hbP
  exact eq_sum_pr (ha.onX s) (ha.onY s) hbP _ (fun i => rfl)
    (fun u => by simp only [dl]; rw [eA_exp, rId_zero', map_one]) (fun i => rfl)

theorem par_data (h : IsCMExt F E σ) (hJ : IsHermND σ J) (hW : IsWittFrame σ J X Y) {p : GAd σ J}
    (hp : p ∈ minPar σ J X) : ∃ B L : Matrix (Fin r) (Fin r) (AF F ⊗[F] E),
      (matHom _ σ J p).1 * adMat F X = adMat F X * B ∧ B.BlockTriangular id ∧
      cT (sigR (AF F) σ) (adMat F X) * JR (F := F) (AF F) J * (matHom _ σ J p).1 =
        L * (cT (sigR (AF F) σ) (adMat F X) * JR (F := F) (AF F) J) ∧ ∀ i j : Fin r, i < j → L i j = 0 := by
  obtain ⟨B, hB, e⟩ := hp
  obtain ⟨B', hB', e'⟩ := inv_mem_minPar h hJ hW ⟨B, hB, e⟩
  refine ⟨B, cT (sigR (AF F) σ) B', e, hB, ?_, fun i j hij => ?_⟩
  · have h1 : (matHom _ σ J p⁻¹).1 * (matHom _ σ J p).1 = 1 := by
      rw [← Units.val_mul, ← map_mul, inv_mul_cancel, map_one, Units.val_one]
    have h2 : cT (sigR (AF F) σ) (matHom _ σ J p⁻¹).1 * JR (F := F) (AF F) J = JR (F := F) (AF F) J * (matHom _ σ J p).1 := by
      conv_rhs => rw [← unitary_matHom p⁻¹]
      rw [Matrix.mul_assoc _ (matHom _ σ J p⁻¹).1, h1, Matrix.mul_one]
    rw [Matrix.mul_assoc, ← h2, ← Matrix.mul_assoc, ← Formalism.UG.cT_mul, e', Formalism.UG.cT_mul, Matrix.mul_assoc]
  · change sigR (AF F) σ (B' j i) = 0
    rw [hB' (show id i < id j from hij), map_zero]

theorem pj_mul_pj_eq_zero (h : IsCMExt F E σ) (hJ : IsHermND σ J) (hW : IsWittFrame σ J X Y) {p : GAd σ J}
    (hp : p ∈ minPar σ J X) {α β : Idx r} (hr : rk β < rk α) :
    Pj σ J X Y α * (matHom _ σ J p).1 * Pj σ J X Y β = 0 := by
  obtain ⟨B, L, h1, h2, h3, h4⟩ := par_data h hJ hW hp
  have hfr := fr_adMat h hJ hW
  exact pr_mul_pr_eq_zero hfr.xx hfr.yx hfr.xy h1 h2 h3 h4 hr

theorem dl_neg (s : Fin r → ℝ) (α : Idx r) : dl (-s) α = - dl s α := by
  rcases α with i | u | i <;> simp [dl]


variable (σ J X Y) in
def Psi (q : (Idx r → Idx r → ℝ) × GAd σ J) : Matrix (Fin n) (Fin n) (AF F ⊗[F] E) :=
  ∑ α, ∑ β, eA F E (q.1 α β) • (Pj σ J X Y α * (matHom _ σ J q.2).1 * Pj σ J X Y β)

theorem continuous_Psi [IsTotallyReal F] : Continuous (Psi σ J X Y) := by
  have := GlobalTheory.Doubling.isTopologicalRing_tens (F := F) (E := E) (R := AF F)
  refine continuous_finsetSum _ fun α _ => continuous_finsetSum _ fun β _ => ?_
  have h1 : Continuous fun q : (Idx r → Idx r → ℝ) × GAd σ J => eA F E (q.1 α β) :=
    continuous_eA.comp ((continuous_apply β).comp ((continuous_apply α).comp continuous_fst))
  have h2 : Continuous fun q : (Idx r → Idx r → ℝ) × GAd σ J =>
      Pj σ J X Y α * (matHom _ σ J q.2).1 * Pj σ J X Y β :=
    (continuous_const.matrix_mul (continuous_matHom_val.comp continuous_snd)).matrix_mul continuous_const
  exact h1.smul h2

theorem conj_eq (h : IsCMExt F E σ) (hJ : IsHermND σ J) (hW : IsWittFrame σ J X Y) {a : (Fin r → ℝ) → GAd σ J}
    (ha : IsTorus σ J X Y a) (s : Fin r → ℝ) {p : GAd σ J} (hp : p ∈ minPar σ J X) :
    (matHom _ σ J ((a s)⁻¹ * p * a s)).1 =
      Psi σ J X Y (fun α β => if rk α ≤ rk β then Real.exp (dl s β - dl s α) else 0, p) := by
  haveI := h.1
  have ha0 : a 0 = 1 := by
    have e := ha.add 0 0
    rw [add_zero] at e
    exact mul_left_cancel (e.symm.trans (mul_one _).symm)
  have hainv : (a s)⁻¹ = a (-s) := inv_eq_of_mul_eq_one_right (by rw [← ha.add, add_neg_cancel, ha0])
  rw [map_mul, map_mul, Units.val_mul, Units.val_mul, hainv, torus_mat h hJ hW ha (-s), torus_mat h hJ hW ha s,
    Finset.sum_mul, Finset.sum_mul]
  refine Finset.sum_congr rfl fun α _ => ?_
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun β _ => ?_
  dsimp only
  rw [Matrix.smul_mul, Matrix.smul_mul, Matrix.mul_smul, smul_smul, dl_neg]
  by_cases hr : rk α ≤ rk β
  · rw [if_pos hr, eA_exp_mul]
  · rw [pj_mul_pj_eq_zero h hJ hW hp (not_le.1 hr), smul_zero, smul_zero]

theorem isCompact_mat (K : Set (Matrix (Fin n) (Fin n) (AF F ⊗[F] E))) (hK : IsCompact K) :
    IsCompact {g : GAd σ J | (matHom _ σ J g).1 ∈ K ∧ (matHom _ σ J g⁻¹).1 ∈ K} := by
  have := GlobalTheory.Doubling.isTopologicalRing_tens (F := F) (E := E) (R := AF F)
  haveI : T2Space (AF F) := GlobalTheory.AdelicUnitaryTop.t2Space_adeleRing_numberField F
  haveI : T2Space (AF F ⊗[F] E) := GlobalTheory.Doubling.t2Space_tensorProduct_finiteExtension
  have h1 := (Units.isClosedEmbedding_embedProduct (α := Matrix (Fin n) (Fin n) (AF F ⊗[F] E))).comp
    (isClosedEmbedding_matHom_GAd σ J)
  have h2 := h1.isCompact_preimage (hK.prod (hK.image MulOpposite.continuous_op))
  have e : {g : GAd σ J | (matHom _ σ J g).1 ∈ K ∧ (matHom _ σ J g⁻¹).1 ∈ K} =
      (⇑(Units.embedProduct (Matrix (Fin n) (Fin n) (AF F ⊗[F] E))) ∘ ⇑(matHom (AF F) σ J)) ⁻¹'
        (K ×ˢ (MulOpposite.op '' K)) := by
    ext g
    constructor
    · rintro ⟨a, b⟩
      exact ⟨a, _, b, by rw [map_inv]; rfl⟩
    · rintro ⟨a, y, hy, e⟩
      refine ⟨a, ?_⟩
      have e' : y = (matHom _ σ J g⁻¹).1 := by
        rw [map_inv]
        exact MulOpposite.op_injective e
      exact e' ▸ hy
  rw [e]
  exact h2

end Ad

theorem conj_compact : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E →ₐ[F] E), IsCMExt F E σ → ∀ (n : ℕ) (J : Matrix (Fin n) (Fin n) E), IsHermND σ J → ∀ (r : ℕ) (X Y : Matrix (Fin n) (Fin r) E), IsWittFrame σ J X Y → ∀ (Ω : Set (GAd σ J)) (c : ℝ), IsCompact Ω → Ω ⊆ minParOne σ J X → 0 < c → ∃ C : Set (GAd σ J), IsCompact C ∧ ∀ p ∈ Ω, ∀ t ∈ cone r c, ∀ a, IsTorusElt σ J X Y t a → a⁻¹ * p * a ∈ C := by
  intro F E _ _ _ _ _ σ h n J hJ r X Y hW Ω c hΩ hsub hc
  haveI := h.1
  obtain ⟨a, ha⟩ := exists_isTorus h hJ hW
  obtain ⟨M, hM⟩ := cone_bound r hc
  have hΩ' : IsCompact (Ω ∪ Ω⁻¹) := hΩ.union hΩ.inv
  let S : Set (Idx r → Idx r → ℝ) := Set.Icc 0 (fun _ _ => max M 0)
  have hS : IsCompact S := isCompact_Icc
  let K := Psi σ J X Y '' (S ×ˢ (Ω ∪ Ω⁻¹))
  have hK : IsCompact K := (hS.prod hΩ').image continuous_Psi
  refine ⟨_, isCompact_mat K hK, fun p hp t ht b hb => ?_⟩
  have htpos := ht.1
  let s : Fin r → ℝ := fun i => Real.log (t i)
  have hst : (fun i => Real.exp (s i)) = t := funext fun i => Real.exp_log (htpos i)
  have hbs : b = a s := _root_.PositivityTheory.ThKEst.Sieg.isTorusElt_unique h hJ hW hb (by simpa only [hst] using ha.tor s)
  subst hbs
  have hsc : (fun i => Real.exp (s i)) ∈ cone r c := by rwa [hst]
  have mem : ∀ q ∈ Ω ∪ Ω⁻¹, q ∈ minPar σ J X → (matHom _ σ J ((a s)⁻¹ * q * a s)).1 ∈ K := fun q hq hq' => by
    rw [conj_eq h hJ hW ha s hq']
    refine ⟨_, ⟨?_, hq⟩, rfl⟩
    constructor
    · intro α β
      dsimp only
      split_ifs
      · exact (Real.exp_pos _).le
      · exact le_rfl
    · intro α β
      dsimp only
      split_ifs with hr
      · exact (hM s hsc α β hr).trans (le_max_left _ _)
      · exact le_max_right _ _
  have hpP : p ∈ minPar σ J X := minParOne_subset (hsub hp)
  refine ⟨mem p (Or.inl hp) hpP, ?_⟩
  have e : ((a s)⁻¹ * p * a s)⁻¹ = (a s)⁻¹ * p⁻¹ * a s := by group
  rw [e]
  exact mem p⁻¹ (Or.inr (by simpa using hp)) (inv_mem_minPar h hJ hW hpP)

end GlobalTheory.CompanionTheory.SiegelConj

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SingleMulSingle =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.SiegelSetUnitary =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.SiegelSetUnitary", "h": "module\n\npublic import Development.WeilBound.ThetaLifts.Reductions.SiegelCore\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.IsSmoothModerateOfIsAutFunSm\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CuspFormRapidDecay\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CuspFormSiegelBound\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ProjArchOfInfEmbArchPi\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SingleMulSingle\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnitaryAdelicIwasawaCompact\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnitarySiegelDomainExists\npublic import Development.WeilBound.ThetaLifts.Reductions.SiegelOfCore\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsCompactIwasawa\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField MeasureTheory Matrix Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.AdelicU GlobalTheory.SiegelSet PositivityTheory.ThKR
open Formalism.UG (cT)
open scoped TensorProduct NNReal ENNReal

namespace GlobalTheory.CompanionTheory.SiegelRed

theorem siegelCore : SiegelCore := by
  intro F E _ _ _ _ _ σ h n J hJ r X Y hW
  obtain ⟨K₁, h₁, c₁, i₁, g₁⟩ := GlobalTheory.CompanionTheory.SiegelArch.exists_kInf F E σ h n J hJ r X Y hW
  obtain ⟨K₂, h₂, c₂, i₂, g₂⟩ := _root_.GlobalTheory.CompanionTheory.KFin.exists_compact_iwasawa_good F E σ h n J hJ r X Y hW
  obtain ⟨K, hK, hI, hG⟩ := GlobalTheory.CompanionTheory.SiegelAssemble.exists_compact_iwasawa F E σ h n J hJ r X Y hW K₁ K₂ h₁ h₂ c₁ c₂
    i₁ i₂ g₁ g₂
  obtain ⟨Ω, c, hΩ, hΩP, hc, hcov⟩ := _root_.GlobalTheory.CompanionTheory.RedCov.cov_main F E σ h n J hJ r X Y hW K hK hI hG
  exact ⟨K, Ω, c, hK, hΩ, hΩP, hc, hI, hG, hcov,
    GlobalTheory.CompanionTheory.SiegelConj.conj_compact F E σ h n J hJ r X Y hW Ω c hΩ hΩP hc,
    _root_.GlobalTheory.CompanionTheory.SiegelHt.height_le_pow F E σ h n J hJ r X Y hW K Ω c hK hΩ hΩP hc,
    _root_.GlobalTheory.CompanionTheory.RapidDecay.rapid_decrease F E σ h n J hJ r X Y hW K Ω c hK hΩ hΩP hc⟩

theorem siegelSetUnitary : GlobalTheory.Published.SiegelSetUnitary :=
  siegel_of_core siegelCore

end GlobalTheory.CompanionTheory.SiegelRed
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.SiegelSetUnitary =====
