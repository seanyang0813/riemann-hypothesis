module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.WavePacketL1L2
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.RepresentationContinuous
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.AeProductMemUnipotentAndNilradical
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.InstLocallyCompactSpace
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.Unfold
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.OpnContinuous
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.StarOfInv
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.DDMulApply
public import Mathlib.MeasureTheory.Group.ModularCharacter
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.NotMidCases
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.ProductDecompositionHolds
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.PsiGenNorm
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.DecayR
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.HaarWN
import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.NilradicalHalfSumNonneg
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.SubgroupHypothesisHolds
import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.RepresentationUnitary

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.AKindR, Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.ANonzeroOf, Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.L2SGWfEqOne, Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.NilradicalHaarUnique, Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.NilradicalUnimodularConjInvariant, Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.SigmaDecomposition, Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.UnipotentRightInvariance, Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.WavePacketL1L2OfHypotheses, Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.WavePacketL1L2OfNilpotentChart

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.AKindR =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.AKindR", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.WavePacketL1L2\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.NilradicalHalfSumNonneg\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.RepresentationContinuous\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Separation.CompletelyRegular\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.AeProductMemUnipotentAndNilradical\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Matrix Topology
open scoped InnerProductSpace ENNReal

namespace WlocSk.AK

open WlocSk WlocSk.PtD Formalism.QuantumDeterminants Formalism.MainNotions.S Formalism.MainNotions.CayleySignature Formalism.L2.SG.WuDecay Formalism.L2.SG.SplitPrimeNormLemmas

variable {k r : ℕ}

section Kernel

variable {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]
  {Vp : Type} [NormedAddCommGroup Vp] [InnerProductSpace ℂ Vp] [FiniteDimensional ℂ Vp]
  {σ : Mat k r → (H →L[ℂ] H)} {π : Mat k r → (Vp →L[ℂ] Vp)}

def bLin (z : Fin (2 * r + k + 1) → ℂ) (c : Fin r → ℂ) (σ : Mat k r → (H →L[ℂ] H))
    (π : Mat k r → (Vp →L[ℂ] Vp)) (w' : H) (ξ : Vp) (p : Mt k r × Mt k r) : H →L[ℂ] Vp :=
  star (psiGen k r z c (Matrix.of p.2)) •
    ((innerSL ℂ w').comp (σ (Matrix.of p.1 * Matrix.of p.2))).smulRight (π (Matrix.of p.1)⁻¹ ξ)

theorem bLin_apply (z : Fin (2 * r + k + 1) → ℂ) (c : Fin r → ℂ) (w' : H) (ξ : Vp)
    (p : Mt k r × Mt k r) (v : H) : bLin z c σ π w' ξ p v = bInt z c σ π w' ξ v p := by
  simp only [bLin, bInt, _root_.smul_apply, ContinuousLinearMap.smulRight_apply,
    ContinuousLinearMap.comp_apply, innerSL_apply_apply, smul_smul]
  rw [mul_comm]

theorem integrable_and_integral_smul_B0_eq (z : Fin (2 * r + k + 1) → ℂ) (c : Fin r → ℂ) (hσ : IsURepOn (Gr k r) σ)
    {μG μW μN : Measure (Mt k r)} [SFinite μG] [SFinite μW] [SFinite μN]
    (hGc : μG {x | Matrix.of x ∉ Gr k r} = 0)
    (hUWc : IsClosed (UWset k r z)) (hUWG : UWset k r z ⊆ Gr k r)
    (hUWinv : ∀ h ∈ UWset k r z, h⁻¹ ∈ UWset k r z)
    (hπc : ∀ ξ : Vp, ContinuousOn (fun h => π h ξ) (UWset k r z))
    (hae : ∀ᵐ p ∂(μW.prod μN), Matrix.of p.1 ∈ UWset k r z ∧ Matrix.of p.1 * Matrix.of p.2 ∈ Gr k r)
    (w' w : H) (ξ : Vp) {C : ℝ} (hC : 0 ≤ C)
    (hB : ∀ g ∈ Gr k r, ∫⁻ p, ‖bInt z c σ π w' ξ (σ g w) p‖ₑ ∂(μW.prod μN) ≤
      ENNReal.ofReal (C * opn g ^ N1H k r))
    {β : Mat k r → ℂ} (hβm : AEStronglyMeasurable (fun g : Mt k r => β (Matrix.of g)) μG)
    (hβw : ∫⁻ g, ‖β (Matrix.of g)‖ₑ * ENNReal.ofReal (opn (Matrix.of g) ^ N1H k r) ∂μG < ⊤)
    (hβi : Integrable (fun g : Mt k r => β (Matrix.of g) • σ (Matrix.of g) w) μG)
    (hβr : ∫ g, β (Matrix.of g) • σ (Matrix.of g) w ∂μG = w)
    {x : Mat k r} (hx : x ∈ Gr k r) :
    Integrable (fun g : Mt k r => β (Matrix.of g) • B0 z c σ π μW μN w' ξ (σ (x * Matrix.of g) w)) μG ∧
      ∫ g, β (Matrix.of g) • B0 z c σ π μW μN w' ξ (σ (x * Matrix.of g) w) ∂μG =
        B0 z c σ π μW μN w' ξ (σ x w) := by
  set F : Mt k r × (Mt k r × Mt k r) → Vp :=
    fun q => β (Matrix.of q.1) • bInt z c σ π w' ξ (σ (x * Matrix.of q.1) w) q.2 with hFdef
  have hG : ∀ᵐ g ∂μG, Matrix.of g ∈ Gr k r := ae_gr hGc

  have hq1 : ∀ᵐ q ∂(μG.prod (μW.prod μN)), Matrix.of q.1 ∈ Gr k r :=
    Measure.quasiMeasurePreserving_fst.ae hG
  have hq2 : ∀ᵐ q ∂(μG.prod (μW.prod μN)),
      Matrix.of q.2.1 ∈ UWset k r z ∧ Matrix.of q.2.1 * Matrix.of q.2.2 ∈ Gr k r :=
    Measure.quasiMeasurePreserving_snd.ae hae
  set T : Set (Mt k r × (Mt k r × Mt k r)) := {q | Matrix.of q.1 ∈ Gr k r ∧
    Matrix.of q.2.1 ∈ UWset k r z ∧ Matrix.of q.2.1 * Matrix.of q.2.2 ∈ Gr k r} with hTdef
  have hc1 : Continuous fun q : Mt k r × (Mt k r × Mt k r) => (Matrix.of q.1 : Mat k r) := continuous_fst
  have hc21 : Continuous fun q : Mt k r × (Mt k r × Mt k r) => (Matrix.of q.2.1 : Mat k r) :=
    continuous_fst.comp continuous_snd
  have hc22 : Continuous fun q : Mt k r × (Mt k r × Mt k r) => (Matrix.of q.2.2 : Mat k r) :=
    continuous_snd.comp continuous_snd
  have hcm : Continuous fun q : Mt k r × (Mt k r × Mt k r) =>
      (Matrix.of q.2.1 * Matrix.of q.2.2 : Mat k r) := hc21.matrix_mul hc22
  have hcy : Continuous fun q : Mt k r × (Mt k r × Mt k r) =>
      (Matrix.of q.2.1 * Matrix.of q.2.2 * (x * Matrix.of q.1) : Mat k r) :=
    hcm.matrix_mul (continuous_const.matrix_mul hc1)
  have hTc : IsClosed T :=
    (gr_isClosed.preimage hc1).inter ((hUWc.preimage hc21).inter (gr_isClosed.preimage hcm))
  have hTae : ∀ᵐ q ∂(μG.prod (μW.prod μN)), q ∈ T := by
    filter_upwards [hq1, hq2] with q h1 h2
    exact ⟨h1, h2⟩
  set F' : Mt k r × (Mt k r × Mt k r) → Vp := fun q =>
    (⟪w', σ (Matrix.of q.2.1 * Matrix.of q.2.2 * (x * Matrix.of q.1)) w⟫_ℂ *
      star (psiGen k r z c (Matrix.of q.2.2))) • π (Matrix.of q.2.1)⁻¹ ξ with hF'def
  have hF'c : ContinuousOn F' T := by
    have h1 : ContinuousOn (fun q : Mt k r × (Mt k r × Mt k r) =>
        σ (Matrix.of q.2.1 * Matrix.of q.2.2 * (x * Matrix.of q.1)) w) T :=
      (hσ.2.2 w).comp hcy.continuousOn (fun q hq => gr_mul hq.2.2 (gr_mul hx hq.1))
    have hi : ContinuousOn (fun q : Mt k r × (Mt k r × Mt k r) => (Matrix.of q.2.1)⁻¹) T :=
      inv_contOn.comp hc21.continuousOn (fun q hq => hUWG hq.2.1)
    have h2 : ContinuousOn (fun q : Mt k r × (Mt k r × Mt k r) => π (Matrix.of q.2.1)⁻¹ ξ) T :=
      (hπc ξ).comp hi (fun q hq => hUWinv _ hq.2.1)
    have h3 : Continuous fun q : Mt k r × (Mt k r × Mt k r) => star (psiGen k r z c (Matrix.of q.2.2)) :=
      continuous_star.comp ((psiGen_cont z c).comp hc22)
    exact ((continuousOn_const.inner h1).mul h3.continuousOn).smul h2
  have hF'm : AEStronglyMeasurable F' (μG.prod (μW.prod μN)) := by
    have := hF'c.aestronglyMeasurable (μ := μG.prod (μW.prod μN)) hTc.measurableSet
    rwa [Measure.restrict_eq_self_of_ae_mem hTae] at this
  have hFm : AEStronglyMeasurable F (μG.prod (μW.prod μN)) := by
    refine ((hβm.comp_quasiMeasurePreserving Measure.quasiMeasurePreserving_fst).smul hF'm).congr ?_
    filter_upwards [hTae] with q hq
    show β (Matrix.of q.1) • F' q = β (Matrix.of q.1) • bInt z c σ π w' ξ (σ (x * Matrix.of q.1) w) q.2
    congr 1
    simp only [hF'def, bInt]
    rw [← sigma_mul hσ hq.2.2 (gr_mul hx hq.1)]

  have hlin : ∫⁻ q, ‖F q‖ₑ ∂(μG.prod (μW.prod μN)) < ⊤ := by
    rw [lintegral_prod _ hFm.enorm]
    calc ∫⁻ g, ∫⁻ p, ‖F (g, p)‖ₑ ∂(μW.prod μN) ∂μG
        = ∫⁻ g, ‖β (Matrix.of g)‖ₑ *
            ∫⁻ p, ‖bInt z c σ π w' ξ (σ (x * Matrix.of g) w) p‖ₑ ∂(μW.prod μN) ∂μG := by
          refine lintegral_congr fun g => ?_
          simp only [hFdef, enorm_smul]
          exact lintegral_const_mul' _ _ enorm_ne_top
      _ ≤ ∫⁻ g, ENNReal.ofReal (C * opn x ^ N1H k r) *
            (‖β (Matrix.of g)‖ₑ * ENNReal.ofReal (opn (Matrix.of g) ^ N1H k r)) ∂μG := by
          apply lintegral_mono_ae
          filter_upwards [hG] with g hg
          have hb := hB _ (gr_mul hx hg)
          have hN := nilradical_half_sum_nonneg (k := k) (r := r)
          have h1 : C * opn (x * Matrix.of g) ^ N1H k r ≤
              C * opn x ^ N1H k r * opn (Matrix.of g) ^ N1H k r := by
            rw [mul_assoc, ← Real.mul_rpow (opn_nonneg _) (opn_nonneg _)]
            exact mul_le_mul_of_nonneg_left
              (Real.rpow_le_rpow (opn_nonneg _) (opn_mul _ _) hN) hC
          calc ‖β (Matrix.of g)‖ₑ * ∫⁻ p, ‖bInt z c σ π w' ξ (σ (x * Matrix.of g) w) p‖ₑ ∂(μW.prod μN)
              ≤ ‖β (Matrix.of g)‖ₑ * ENNReal.ofReal (C * opn x ^ N1H k r * opn (Matrix.of g) ^ N1H k r) := by
                gcongr
                exact hb.trans (ENNReal.ofReal_le_ofReal h1)
            _ = _ := by
                rw [ENNReal.ofReal_mul (mul_nonneg hC (Real.rpow_nonneg (opn_nonneg _) _))]
                ring
      _ = ENNReal.ofReal (C * opn x ^ N1H k r) *
            ∫⁻ g, ‖β (Matrix.of g)‖ₑ * ENNReal.ofReal (opn (Matrix.of g) ^ N1H k r) ∂μG :=
          lintegral_const_mul' _ _ ENNReal.ofReal_ne_top
      _ < ⊤ := ENNReal.mul_lt_top ENNReal.ofReal_lt_top hβw
  have hint : Integrable F (μG.prod (μW.prod μN)) := ⟨hFm, hlin⟩
  have hsl : ∀ g : Mt k r, ∫ p, F (g, p) ∂(μW.prod μN) =
      β (Matrix.of g) • B0 z c σ π μW μN w' ξ (σ (x * Matrix.of g) w) := fun g => by
    simp only [hFdef, B0]
    exact integral_smul _ _
  refine ⟨?_, ?_⟩
  · have := hint.integral_prod_left
    simp only [hsl] at this
    exact this
  · have hsw := integral_integral_swap (f := fun g p => F (g, p)) hint
    simp only [hsl] at hsw
    rw [hsw]
    simp only [B0]
    refine integral_congr_ae (Filter.Eventually.of_forall fun p => ?_)
    show ∫ g, F (g, p) ∂μG = bInt z c σ π w' ξ (σ x w) p
    have hcomp : ∀ᵐ g ∂μG, F (g, p) = ((bLin z c σ π w' ξ p).comp (σ x))
        (β (Matrix.of g) • σ (Matrix.of g) w) := by
      filter_upwards [hG] with g hg
      simp only [hFdef, ContinuousLinearMap.comp_apply, map_smul, bLin_apply]
      rw [sigma_mul hσ hx hg]
    rw [integral_congr_ae hcomp, ContinuousLinearMap.integral_comp_comm _ hβi, hβr,
      ContinuousLinearMap.comp_apply, bLin_apply]

end Kernel

theorem uw_isClosed (z : Fin (2 * r + k + 1) → ℂ) : IsClosed (UWset k r z) := by
  have h1 : IsClosed {g : Mat k r | gᴴ * Hpk k r * g = Hpk k r} :=
    isClosed_eq ((continuous_id.matrix_conjTranspose.matrix_mul continuous_const).matrix_mul continuous_id)
      continuous_const
  have h2 : ∀ v : Fin (2 * r + k + 1) → ℂ, IsClosed {g : Mat k r | g *ᵥ v = v} := fun v =>
    isClosed_eq (continuous_id.matrix_mulVec continuous_const) continuous_const
  have e : UWset k r z = {g : Mat k r | gᴴ * Hpk k r * g = Hpk k r} ∩
      ((⋂ a : Fin r, ({g : Mat k r | g *ᵥ bvec (eI k r a) = bvec (eI k r a)} ∩
        {g : Mat k r | g *ᵥ bvec (esI k r a) = bvec (esI k r a)})) ∩ {g : Mat k r | g *ᵥ z = z}) := by
    ext g
    constructor
    · rintro ⟨ha, hb, hc⟩
      exact ⟨ha, Set.mem_iInter.2 fun a => ⟨(hb a).1, (hb a).2⟩, hc⟩
    · rintro ⟨ha, hb, hc⟩
      exact ⟨ha, fun a => ⟨(Set.mem_iInter.1 hb a).1, (Set.mem_iInter.1 hb a).2⟩, hc⟩
  rw [e]
  exact h1.inter ((isClosed_iInter fun a => (h2 _).inter (h2 _)).inter (h2 z))

theorem ak_one_le {g : Mat k r} (hg : g ∈ Gr k r) :
    1 ≤ opn (Hpk k r) ^ N1H k r * opn g ^ N1H k r := by
  have h1 : opn (1 : Mat k r) ≤ opn g⁻¹ * opn g := by
    rw [← Matrix.nonsing_inv_mul _ (gr_isUnit hg)]; exact opn_mul _ _
  have h2 := opn_inv_le hg
  have hone : opn (1 : Mat k r) = 1 := by unfold opn; rw [map_one]; exact norm_one
  rw [hone] at h1
  have h0 := opn_nonneg g
  have hH := opn_nonneg (Hpk k r)
  have h4 : 1 ≤ (opn (Hpk k r) * opn g) ^ 2 := by
    have := mul_le_mul_of_nonneg_right h2 h0
    nlinarith
  have h3 : 1 ≤ opn (Hpk k r) * opn g := by
    by_contra hlt
    push Not at hlt
    have := pow_lt_one₀ (mul_nonneg hH h0) hlt two_ne_zero
    linarith
  rw [← Real.mul_rpow hH h0]
  exact Real.one_le_rpow h3 nilradical_half_sum_nonneg

theorem conv_of (hSG : SigmaG) (hS : SGrp) (hAB : ABound)
    {z : Fin (2 * r + k + 1) → ℂ} {c : Fin r → ℂ} {u : Fin k → ℝ} {v : Fin (k - 1) → ℝ}
    {b : Fin (2 * r + 2) → ℝ} {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]
    {σ : Mat k r → (H →L[ℂ] H)} {Vp : Type} [NormedAddCommGroup Vp] [InnerProductSpace ℂ Vp]
    [FiniteDimensional ℂ Vp] {π : Mat k r → (Vp →L[ℂ] Vp)} {w : H}
    {μG μS ν μW μN : Measure (Mt k r)} (hH : Hyp k r z c u v b σ π w μG μS ν μW μN)
    (hR : Formalism.L2.SG.HCReprodM.HCReprodDSm) (hCW : CoefWeightedLoc) {x₀ : Mat k r} (hx₀ : x₀ ∈ Gr k r)
    (ξ : Vp) {β : Mat k r → ℂ} (hβm : AEStronglyMeasurable (fun g : Mt k r => β (Matrix.of g)) μG)
    (hβw : ∫⁻ g, ‖β (Matrix.of g)‖ₑ * ENNReal.ofReal (opn (Matrix.of g) ^ N1H k r) ∂μG < ⊤)
    (hβi : Integrable (fun g : Mt k r => β (Matrix.of g) • σ (Matrix.of g) w) μG)
    (hβr : ∫ g, β (Matrix.of g) • σ (Matrix.of g) w ∂μG = w) {x : Mat k r} (hx : x ∈ Gr k r) :
    Integrable (fun g : Mt k r => β (Matrix.of g) • (Af z c σ π μW μN w x₀ ξ) (x * Matrix.of g)) μG ∧
      rconv μG β (Af z c σ π μW μN w x₀ ξ) x = (Af z c σ π μW μN w x₀ ξ) x := by
  obtain ⟨C, hC0, hC⟩ := hAB k r z c u v b H σ Vp π w μG μS ν μW μN hH hR hCW x₀ hx₀ ξ
  obtain ⟨hSet, hDS, hHC, _, hμG, _, _, hμW, hμN, _, _⟩ := hH
  have hz := hSet.2.2.1
  have hT := hSet.2.2.2.1
  have hσ : IsURepOn (Gr k r) σ := hSG k r _ _ H σ hDS
  obtain ⟨hUWG, hNG, hUW, _, _⟩ := hS k r z c hz hT
  have hπc := representation_continuous k r z u Vp π hz hT hHC
  have := hμG.1
  have := hμW.1
  have := hμN.1
  have hae : ∀ᵐ p ∂(μW.prod μN), Matrix.of p.1 ∈ UWset k r z ∧ Matrix.of p.1 * Matrix.of p.2 ∈ Gr k r := by
    have h1 : ∀ᵐ p ∂(μW.prod μN), Matrix.of p.1 ∈ UWset k r z :=
      Measure.quasiMeasurePreserving_fst.ae (ae_iff.mpr hμW.2.2.1)
    have h2 : ∀ᵐ p ∂(μW.prod μN), Matrix.of p.2 ∈ Nset k r :=
      Measure.quasiMeasurePreserving_snd.ae (ae_iff.mpr hμN.2.2.1)
    filter_upwards [h1, h2] with p hp1 hp2
    exact ⟨hp1, gr_mul (hUWG hp1) (hNG hp2)⟩
  exact integrable_and_integral_smul_B0_eq z c hσ hμG.2.2.1 (uw_isClosed z) hUWG (fun h hh => (hUW h hh h hh).2.1) hπc hae
    (σ x₀ w) w ξ hC0 hC hβm hβw hβi hβr hx

theorem smul_int {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]
    {σ : Mat k r → (H →L[ℂ] H)} (hσ : IsURepOn (Gr k r) σ) {μG : Measure (Mt k r)}
    (hGc : μG {x | Matrix.of x ∉ Gr k r} = 0) {w : H} (hw1 : ‖w‖ = 1) {β : Mat k r → ℂ}
    (hβm : AEStronglyMeasurable (fun g : Mt k r => β (Matrix.of g)) μG)
    (hβw : ∫⁻ g, ‖β (Matrix.of g)‖ₑ * ENNReal.ofReal (opn (Matrix.of g) ^ N1H k r) ∂μG < ⊤) :
    Integrable (fun g : Mt k r => β (Matrix.of g) • σ (Matrix.of g) w) μG := by
  have hGae := ae_gr hGc
  have hof : Continuous (fun x : Mt k r => (Matrix.of x : Mat k r)) := continuous_id
  have hsm : AEStronglyMeasurable (fun g : Mt k r => σ (Matrix.of g) w) μG := by
    have hcl : IsClosed {g : Mt k r | Matrix.of g ∈ Gr k r} := gr_isClosed.preimage hof
    have := ((hσ.2.2 w).comp hof.continuousOn (fun g hg => hg)).aestronglyMeasurable (μ := μG)
      hcl.measurableSet
    rw [Measure.restrict_eq_self_of_ae_mem hGae] at this
    exact this
  refine ⟨hβm.smul hsm, ?_⟩
  show ∫⁻ g, ‖β (Matrix.of g) • σ (Matrix.of g) w‖ₑ ∂μG < ⊤
  calc ∫⁻ g, ‖β (Matrix.of g) • σ (Matrix.of g) w‖ₑ ∂μG
      ≤ ∫⁻ g, ENNReal.ofReal (opn (Hpk k r) ^ N1H k r) *
          (‖β (Matrix.of g)‖ₑ * ENNReal.ofReal (opn (Matrix.of g) ^ N1H k r)) ∂μG := by
        apply lintegral_mono_ae
        filter_upwards [hGae] with g hg
        rw [enorm_smul, ← ofReal_norm (σ _ w), hσ.2.1 _ hg, hw1, ENNReal.ofReal_one, mul_one]
        calc ‖β (Matrix.of g)‖ₑ = ‖β (Matrix.of g)‖ₑ * ENNReal.ofReal 1 := by simp
          _ ≤ ‖β (Matrix.of g)‖ₑ *
              ENNReal.ofReal (opn (Hpk k r) ^ N1H k r * opn (Matrix.of g) ^ N1H k r) := by
            gcongr; exact ak_one_le hg
          _ = _ := by rw [ENNReal.ofReal_mul (Real.rpow_nonneg (opn_nonneg _) _)]; ring
    _ = ENNReal.ofReal (opn (Hpk k r) ^ N1H k r) *
          ∫⁻ g, ‖β (Matrix.of g)‖ₑ * ENNReal.ofReal (opn (Matrix.of g) ^ N1H k r) ∂μG :=
        lintegral_const_mul' _ _ ENNReal.ofReal_ne_top
    _ < ⊤ := ENNReal.mul_lt_top ENNReal.ofReal_lt_top hβw

theorem aKind_of (hSG : SigmaG) (hS : SGrp) (hAB : ABound) (hD : Decay)
    (hSch : SchurG) : AKind := by
  intro k r z c u v b H _ _ _ σ Vp _ _ _ π w μG μS ν μW μN hH hR hCW x₀ hx₀ ξ x hx
  have hdec := hD hCW k r z c u v b H σ Vp π w μG μS ν μW μN hH
  obtain ⟨d, hd, hSc⟩ := hSch k r z c u v b H σ Vp π w μG μS ν μW μN hH
  have hH' := hH
  obtain ⟨_, hDS, _, hLow, hμG, _⟩ := hH'
  have hσ : IsURepOn (Gr k r) σ := hSG k r _ _ H σ hDS
  obtain ⟨_, _, hw1, _⟩ := hLow
  have hGae := ae_gr hμG.2.2.1
  have hww : ⟪w, w⟫_ℂ = 1 := by rw [inner_self_eq_norm_sq_to_K, hw1]; simp
  have hd' : (d : ℂ) ≠ 0 := by exact_mod_cast hd.ne'
  have hfd : fdegH μG σ w = d := by
    have h := (hSc w w w w).2
    rw [hww] at h
    have h2 : ∀ g : Mt k r, ⟪w, σ (Matrix.of g) w⟫_ℂ * star ⟪w, σ (Matrix.of g) w⟫_ℂ =
        ((‖⟪w, σ (Matrix.of g) w⟫_ℂ‖ ^ 2 : ℝ) : ℂ) := fun g => by
      rw [Complex.ofReal_pow]; exact RCLike.mul_conj _
    simp_rw [h2] at h
    rw [integral_complex_ofReal] at h
    have h3 : ((∫ g, ‖⟪w, σ (Matrix.of g) w⟫_ℂ‖ ^ 2 ∂μG : ℝ) : ℂ) = ((1 / d : ℝ) : ℂ) := by
      rw [h]; push_cast; ring
    have h4 : ∫ g, ‖⟪w, σ (Matrix.of g) w⟫_ℂ‖ ^ 2 ∂μG = 1 / d := by exact_mod_cast h3
    unfold fdegH
    rw [h4, hw1]
    field_simp
  have hof : Continuous (fun x : Mt k r => (Matrix.of x : Mat k r)) := continuous_id
  have hcl : IsClosed {g : Mt k r | Matrix.of g ∈ Gr k r} := gr_isClosed.preimage hof
  have hβm : AEStronglyMeasurable (fun g : Mt k r => eFun μG σ w (Matrix.of g)) μG := by
    have hc : ContinuousOn (fun g : Mt k r => eFun μG σ w (Matrix.of g)) {g | Matrix.of g ∈ Gr k r} :=
      continuousOn_const.mul (continuous_star.comp_continuousOn (continuousOn_const.inner
        ((hσ.2.2 w).comp hof.continuousOn (fun g hg => hg))))
    have := hc.aestronglyMeasurable (μ := μG) hcl.measurableSet
    rw [Measure.restrict_eq_self_of_ae_mem (s := {g : Mt k r | Matrix.of g ∈ Gr k r}) hGae] at this
    exact this
  have hnorm : ∀ g : Mt k r, ‖eFun μG σ w (Matrix.of g)‖ₑ = ‖(d : ℂ)‖ₑ * ‖⟪w, σ (Matrix.of g) w⟫_ℂ‖ₑ := by
    intro g
    unfold eFun
    rw [hfd, enorm_mul, ← ofReal_norm (star _), norm_star, ofReal_norm]
  have hβw : ∫⁻ g, ‖eFun μG σ w (Matrix.of g)‖ₑ * ENNReal.ofReal (opn (Matrix.of g) ^ N1H k r) ∂μG < ⊤ := by
    calc ∫⁻ g, ‖eFun μG σ w (Matrix.of g)‖ₑ * ENNReal.ofReal (opn (Matrix.of g) ^ N1H k r) ∂μG
        = ∫⁻ g, ‖(d : ℂ)‖ₑ * (‖⟪w, σ (Matrix.of g) w⟫_ℂ‖ₑ *
            ENNReal.ofReal (opn (Matrix.of g) ^ N1H k r)) ∂μG := by
          refine lintegral_congr fun g => ?_
          rw [hnorm, mul_assoc]
      _ = ‖(d : ℂ)‖ₑ * ∫⁻ g, ‖⟪w, σ (Matrix.of g) w⟫_ℂ‖ₑ *
            ENNReal.ofReal (opn (Matrix.of g) ^ N1H k r) ∂μG :=
          lintegral_const_mul' _ _ enorm_ne_top
      _ < ⊤ := ENNReal.mul_lt_top enorm_lt_top hdec
  have hβi := smul_int hσ hμG.2.2.1 hw1 hβm hβw
  have hβr : ∫ g, eFun μG σ w (Matrix.of g) • σ (Matrix.of g) w ∂μG = w := by
    apply ext_inner_left ℂ
    intro v'
    rw [← integral_inner hβi v']
    simp_rw [inner_smul_right]
    have he : ∀ g : Mt k r, eFun μG σ w (Matrix.of g) * ⟪v', σ (Matrix.of g) w⟫_ℂ =
        (d : ℂ) * (⟪v', σ (Matrix.of g) w⟫_ℂ * star ⟪w, σ (Matrix.of g) w⟫_ℂ) := by
      intro g; unfold eFun; rw [hfd]; ring
    simp_rw [he]
    rw [integral_const_mul, (hSc w v' w w).2, hww]
    field_simp
  exact conv_of hSG hS hAB hH hR hCW hx₀ ξ hβm hβw hβi hβr hx

theorem aReprod_of (hSG : SigmaG) (hS : SGrp) (hAB : ABound) (hRG : ReprodG) :
    AReprod := by
  intro k r z c u v b H _ _ _ σ Vp _ _ _ π w μG μS ν μW μN hH hR hCW x₀ hx₀ ξ
  obtain ⟨α, Ω, a, hΩ, hΩG, hαm, hsupp, hbd, hint, hrep⟩ :=
    hRG hR k r z c u v b H σ Vp π w μG μS ν μW μN hH
  have hH' := hH
  obtain ⟨_, hDS, _, hLow, hμG, _⟩ := hH'
  have hσ : IsURepOn (Gr k r) σ := hSG k r _ _ H σ hDS
  obtain ⟨_, _, hw1, _⟩ := hLow
  have hGae := ae_gr hμG.2.2.1
  obtain ⟨K, hK⟩ := hΩ.exists_bound_of_continuousOn (opn_continuous (k := k) (r := r)).continuousOn
  have hw : ∫⁻ g, ‖α (Matrix.of g)‖ₑ * ENNReal.ofReal (opn (Matrix.of g) ^ N1H k r) ∂μG < ⊤ := by
    calc ∫⁻ g, ‖α (Matrix.of g)‖ₑ * ENNReal.ofReal (opn (Matrix.of g) ^ N1H k r) ∂μG
        ≤ ∫⁻ g, ENNReal.ofReal (max K 0 ^ N1H k r) * ‖α (Matrix.of g) • σ (Matrix.of g) w‖ₑ ∂μG := by
          apply lintegral_mono_ae
          filter_upwards [hGae] with g hg
          rw [enorm_smul, ← ofReal_norm (σ _ w), hσ.2.1 _ hg, hw1, ENNReal.ofReal_one, mul_one]
          by_cases h0 : α (Matrix.of g) = 0
          · simp [h0]
          · exact (mul_comm _ _).trans_le (mul_le_mul' (ENNReal.ofReal_le_ofReal
              (Real.rpow_le_rpow (opn_nonneg _)
                (((Real.le_norm_self _).trans (hK _ (hsupp _ h0))).trans (le_max_left _ _)) nilradical_half_sum_nonneg)) le_rfl)
      _ = ENNReal.ofReal (max K 0 ^ N1H k r) * ∫⁻ g, ‖α (Matrix.of g) • σ (Matrix.of g) w‖ₑ ∂μG :=
          lintegral_const_mul' _ _ ENNReal.ofReal_ne_top
      _ < ⊤ := ENNReal.mul_lt_top ENNReal.ofReal_lt_top hint.2
  refine ⟨α, Ω ∪ {1}, a, hΩ.union isCompact_singleton, Set.mem_union_right _ rfl,
    Set.union_subset hΩG (Set.singleton_subset_iff.2 gr_one), hαm, fun y hy => Or.inl (hsupp y hy),
    hbd, fun x hx => ?_⟩
  exact conv_of hSG hS hAB hH hR hCW hx₀ ξ hαm.aestronglyMeasurable hw hint hrep hx

end WlocSk.AK
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.AKindR =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.ANonzeroOf =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.ANonzeroOf", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.WavePacketL1L2\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.InstLocallyCompactSpace\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.Unfold\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Matrix Formalism.MainNotions.S Formalism.MainNotions.CayleySignature Formalism.L2.SG.SplitPrimeNormLemmas
open scoped ENNReal InnerProductSpace

namespace WlocSk.ANz

variable {k r : ℕ}

theorem haarG_pos {μG : Measure (Formalism.QuantumDeterminants.Mt k r)} (hμ : IsHaarOn (Gr k r) μG) {U : Set (Mat k r)}
    (hU : IsOpen U) {x : Mat k r} (hxU : x ∈ U) (hxG : x ∈ Gr k r) :
    0 < μG {y : Formalism.QuantumDeterminants.Mt k r | Matrix.of y ∈ U ∩ Gr k r} := by
  obtain ⟨c, hc0, -, hμeq⟩ := WlocSk.HM.haar_unique (Gr k r) WlocSk.HM.uh_clsub μG hμ
  have hVm : MeasurableSet {y : Formalism.QuantumDeterminants.Mt k r | Matrix.of y ∈ U ∩ Gr k r} :=
    (hU.preimage WlocSk.Grp.continuous_of).measurableSet.inter
      (WlocSk.Grp.isClosed_Gr.preimage WlocSk.Grp.continuous_of).measurableSet
  have hvt : Continuous (WlocSk.HM.Grp.vt :
      WlocSk.HM.Grp (Gr k r) WlocSk.HM.uh_clsub → Formalism.QuantumDeterminants.Mt k r) := WlocSk.HM.Grp.embt.continuous
  have hO : IsOpen ((fun a => Matrix.of (WlocSk.HM.Grp.vt a)) ⁻¹' U :
      Set (WlocSk.HM.Grp (Gr k r) WlocSk.HM.uh_clsub)) :=
    hU.preimage (WlocSk.Grp.continuous_of.comp hvt)
  have hne : ((fun a => Matrix.of (WlocSk.HM.Grp.vt a)) ⁻¹' U :
      Set (WlocSk.HM.Grp (Gr k r) WlocSk.HM.uh_clsub)).Nonempty :=
    ⟨WlocSk.HM.Grp.mk x hxG, hxU⟩
  have hpos := hO.measure_pos (Measure.haar : Measure (WlocSk.HM.Grp (Gr k r) WlocSk.HM.uh_clsub)) hne
  rw [hμeq, Measure.smul_apply, smul_eq_mul, WlocSk.HM.hmeas, Measure.map_apply hvt.measurable hVm]
  refine ENNReal.mul_pos hc0 (ne_of_gt (lt_of_lt_of_le hpos (measure_mono ?_)))
  intro a ha
  exact ⟨ha, WlocSk.HM.Grp.mem a⟩

theorem aNonzero_of (hSG : SGrp) (hPU : PiUnit) (hSP : SProd) (hAE : AEquiv) (hAC : ACont) :
    ANonzero := by
  intro hNV k r z c u v b H _ _ _ σ Vp _ _ _ π w μG μS ν μW μN hyp hR hCW
  obtain ⟨hset, hDS, hHC, hLU, hG, -, -, hW, hN, -, -⟩ := id hyp
  obtain ⟨hk1, hev, hz, hT, hc, hu, hl, hI, hH2, hGB⟩ := hset
  have hk2 : 2 ≤ k := by obtain ⟨m, hm⟩ := hev; omega
  obtain ⟨x, x₀, hx, hx₀, hne⟩ :=
    hNV k r z c u v b hk2 hev hz hT hc hu hl hI hH2 hGB H σ hDS Vp π hHC w hLU μW μN hW hN
  have hFi : Integrable (fun p : Formalism.QuantumDeterminants.Mt k r × Formalism.QuantumDeterminants.Mt k r =>
      (⟪σ x₀ w, σ (Matrix.of p.1 * Matrix.of p.2) (σ x w)⟫_ℂ * star (psiGen k r z c (Matrix.of p.2))) •
        π (Matrix.of p.1)⁻¹) (μW.prod μN) := by
    by_contra hni
    exact hne (integral_undef hni)
  obtain ⟨ξ, hξ⟩ : ∃ ξ : Vp, (∫ p : Formalism.QuantumDeterminants.Mt k r × Formalism.QuantumDeterminants.Mt k r,
      (⟪σ x₀ w, σ (Matrix.of p.1 * Matrix.of p.2) (σ x w)⟫_ℂ * star (psiGen k r z c (Matrix.of p.2))) •
        π (Matrix.of p.1)⁻¹ ∂(μW.prod μN)) ξ ≠ 0 := by
    by_contra hall
    push Not at hall
    exact hne (ContinuousLinearMap.ext hall)
  rw [ContinuousLinearMap.integral_apply hFi] at hξ
  set A := Af z c σ π μW μN w x₀ ξ with hAdef
  have hAx : A x ≠ 0 := hξ
  have hcont : ContinuousOn A (Gr k r) :=
    hAC k r z c u v b H σ Vp π w μG μS ν μW μN hyp hR hCW x₀ hx₀ ξ
  have hequiv : IsSPsiEquiv z (psiGen k r z c) π A :=
    hAE k r z c u v b H σ Vp π w μG μS ν μW μN hyp hR hCW x₀ hx₀ ξ
  obtain ⟨hWG, hNG, -, hNg, -⟩ := hSG k r z c hz hT
  have hπ := (hPU k r z u Vp π hz hT hHC).2

  have hApos : 0 < ‖A x‖ := norm_pos_iff.mpr hAx
  obtain ⟨ε, hε, hεlt⟩ : ∃ ε : ℝ, 0 < ε ∧ ε < ‖A x‖ := ⟨‖A x‖ / 2, half_pos hApos, half_lt_self hApos⟩
  have hevn : ∀ᶠ y in nhdsWithin x (Gr k r), ε < ‖A y‖ :=
    (hcont x hx).norm.eventually (lt_mem_nhds hεlt)
  obtain ⟨U, hUo, hxU, hUsub⟩ := mem_nhdsWithin.mp hevn

  set V : Set (Formalism.QuantumDeterminants.Mt k r) := {y | Matrix.of y ∈ U ∩ Gr k r} with hVdef
  have hVm : MeasurableSet V :=
    (hUo.preimage WlocSk.Grp.continuous_of).measurableSet.inter
      (WlocSk.Grp.isClosed_Gr.preimage WlocSk.Grp.continuous_of).measurableSet
  have hμV : 0 < μG V := haarG_pos hG hUo hxU hx

  obtain ⟨cS, hcS0, -, hunf⟩ := unfold_of hSP hyp
  have hfm : Measurable (V.indicator (1 : Formalism.QuantumDeterminants.Mt k r → ℝ≥0∞)) := measurable_one.indicator hVm
  have := hW.1
  have := hN.1
  set g : Formalism.QuantumDeterminants.Mt k r → ℝ≥0∞ := fun x => ∫⁻ p, V.indicator (1 : Formalism.QuantumDeterminants.Mt k r → ℝ≥0∞)
      (fun i j => (Matrix.of (mulP p) * Matrix.of x) i j) ∂(μW.prod μN) with hgdef
  have hU' : ∫⁻ x, g x ∂ν = cS * μG V := by
    have h := hunf _ hfm
    rw [lintegral_indicator_one hVm] at h
    exact h
  have hjoint : Measurable (fun q : Formalism.QuantumDeterminants.Mt k r × (Formalism.QuantumDeterminants.Mt k r × Formalism.QuantumDeterminants.Mt k r) =>
      V.indicator (1 : Formalism.QuantumDeterminants.Mt k r → ℝ≥0∞) (fun i j => (Matrix.of (mulP q.2) * Matrix.of q.1) i j)) := by
    refine hfm.comp (Continuous.measurable ?_)
    exact (WlocSk.Grp.continuous_of.comp (continuous_mulP.comp continuous_snd)).matrix_mul
      (WlocSk.Grp.continuous_of.comp continuous_fst)
  have hgm : Measurable g := hjoint.lintegral_prod_right'
  set P : Set (Formalism.QuantumDeterminants.Mt k r) := {x | 0 < g x} with hPdef
  have hPm : MeasurableSet P := measurableSet_lt measurable_const hgm
  have hPpos : ν P ≠ 0 := by
    intro h0
    have hae : ∀ᵐ x ∂ν, g x = 0 := by
      refine ae_iff.mpr (measure_mono_null (fun x hx => ?_) h0)
      exact pos_iff_ne_zero.mpr hx
    have h1 : ∫⁻ x, g x ∂ν = 0 := by rw [lintegral_congr_ae hae, lintegral_zero]
    rw [h1] at hU'
    exact (ENNReal.mul_pos hcS0 hμV.ne').ne' hU'.symm

  have hTae : ∀ᵐ p ∂(μW.prod μN),
      Matrix.of p.1 ∈ Formalism.QuantumDeterminants.UWset k r z ∧ Matrix.of p.2 ∈ Formalism.QuantumDeterminants.Nset k r := by
    have h1 : ∀ᵐ p ∂(μW.prod μN), Matrix.of p.1 ∈ Formalism.QuantumDeterminants.UWset k r z :=
      Measure.quasiMeasurePreserving_fst.ae (ae_iff.mpr hW.2.2.1)
    have h2 : ∀ᵐ p ∂(μW.prod μN), Matrix.of p.2 ∈ Formalism.QuantumDeterminants.Nset k r :=
      Measure.quasiMeasurePreserving_snd.ae (ae_iff.mpr hN.2.2.1)
    filter_upwards [h1, h2] with p hp1 hp2
    exact ⟨hp1, hp2⟩

  have key : ∀ x : Formalism.QuantumDeterminants.Mt k r, Matrix.of x ∈ Gr k r → 0 < g x → ε < ‖A (Matrix.of x)‖ := by
    intro x hxG hgx
    by_contra hle
    apply hgx.ne'
    have hae : ∀ᵐ p ∂(μW.prod μN), V.indicator (1 : Formalism.QuantumDeterminants.Mt k r → ℝ≥0∞)
        (fun i j => (Matrix.of (mulP p) * Matrix.of x) i j) = 0 := by
      filter_upwards [hTae] with p hp
      apply Set.indicator_of_notMem
      intro hpV
      have h1 : ε < ‖A (Matrix.of p.1 * Matrix.of p.2 * Matrix.of x)‖ := hUsub hpV
      have h2 : ‖A (Matrix.of p.1 * Matrix.of p.2 * Matrix.of x)‖ = ‖A (Matrix.of x)‖ := by
        rw [hequiv _ hp.1 _ hp.2 _ hxG, norm_smul, (hNg _ hp.2 _ hp.2).2.2.2.2, hπ _ hp.1, one_mul]
      exact hle (h2 ▸ h1)
    show ∫⁻ p, V.indicator (1 : Formalism.QuantumDeterminants.Mt k r → ℝ≥0∞)
        (fun i j => (Matrix.of (mulP p) * Matrix.of x) i j) ∂(μW.prod μN) = 0
    rw [lintegral_congr_ae hae, lintegral_zero]
  have hνG : ∀ᵐ x ∂ν, Matrix.of x ∈ Gr k r := ae_iff.mpr (nu_conc_of hSG hyp)
  have hlow : ∀ᵐ x ∂ν, P.indicator (fun _ => ENNReal.ofReal ε ^ 2) x ≤
      (‖A (Matrix.of x)‖₊ : ℝ≥0∞) ^ 2 := by
    filter_upwards [hνG] with x hxG
    by_cases hxP : x ∈ P
    · rw [Set.indicator_of_mem hxP]
      have hb : ENNReal.ofReal ε ≤ (‖A (Matrix.of x)‖₊ : ℝ≥0∞) := by
        refine ENNReal.ofReal_le_of_le_toReal ?_
        rw [ENNReal.coe_toReal, coe_nnnorm]
        exact (key x hxG hxP).le
      gcongr
    · rw [Set.indicator_of_notMem hxP]
      exact bot_le
  refine ⟨x₀, hx₀, ξ, fun hzero => ?_⟩
  have hmono : ∫⁻ x, P.indicator (fun _ => ENNReal.ofReal ε ^ 2) x ∂ν ≤
      ∫⁻ x, (‖A (Matrix.of x)‖₊ : ℝ≥0∞) ^ 2 ∂ν := lintegral_mono_ae hlow
  have hz' : ∫⁻ x, (‖A (Matrix.of x)‖₊ : ℝ≥0∞) ^ 2 ∂ν = 0 := hzero
  rw [lintegral_indicator_const hPm, hz'] at hmono
  have hne0 : ENNReal.ofReal ε ^ 2 * ν P ≠ 0 :=
    mul_ne_zero (pow_ne_zero _ (ENNReal.ofReal_pos.mpr hε).ne') hPpos
  exact hne0 (le_zero_iff.mp hmono)

end WlocSk.ANz
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.ANonzeroOf =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.L2SGWfEqOne =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.L2SGWfEqOne", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.WavePacketL1L2\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Formalism.MainNotions.S Formalism.MainNotions.CayleySignature Formalism.L2.SG.SplitPrimeNormLemmas Matrix
open scoped InnerProductSpace ENNReal

namespace WlocSk

section Scale

variable {k r : ℕ} {Vp : Type} [NormedAddCommGroup Vp] [InnerProductSpace ℂ Vp]

lemma rconv_smul (μ : Measure (Formalism.QuantumDeterminants.Mt k r)) (e : Mat k r → ℂ) (A : Mat k r → Vp) (cc : ℂ)
    (x : Mat k r) : rconv μ e (fun g => cc • A g) x = cc • rconv μ e A x := by
  unfold rconv
  simp_rw [smul_comm (e _) cc]
  exact integral_smul cc _

lemma integrable_smul_fun (μ : Measure (Formalism.QuantumDeterminants.Mt k r)) (e : Mat k r → ℂ) (A : Mat k r → Vp) (cc : ℂ)
    (x : Mat k r) (h : Integrable (fun g : Formalism.QuantumDeterminants.Mt k r => e (Matrix.of g) • A (x * Matrix.of g)) μ) :
    Integrable (fun g : Formalism.QuantumDeterminants.Mt k r => e (Matrix.of g) • (fun y => cc • A y) (x * Matrix.of g)) μ := by
  simp_rw [smul_comm (e _) cc]
  exact h.smul cc

lemma l2SG_const_smul (ν : Measure (Formalism.QuantumDeterminants.Mt k r)) (A : Mat k r → Vp) (cc : ℂ) :
    l2SG ν (fun g => cc • A g) = (‖cc‖₊ : ℝ≥0∞) ^ 2 * l2SG ν A := by
  unfold l2SG
  rw [← lintegral_const_mul' _ _ (by simp)]
  congr 1
  funext x
  rw [nnnorm_smul, ENNReal.coe_mul, mul_pow]

lemma l2SG_Wf_eq_one (ν : Measure (Formalism.QuantumDeterminants.Mt k r)) (A : Mat k r → Vp) (h0 : l2SG ν A ≠ 0)
    (h1 : l2SG ν A < ⊤) : l2SG ν (Wf ν A) = 1 := by
  have hW : Wf ν A = fun g => (((Real.sqrt (l2SG ν A).toReal)⁻¹ : ℝ) : ℂ) • A g := by
    funext g; unfold Wf; congr 1; push_cast; rfl
  rw [hW, l2SG_const_smul]
  set t := (l2SG ν A).toReal with ht_def
  have ht : 0 < t := ENNReal.toReal_pos h0 h1.ne
  have hA : l2SG ν A = ENNReal.ofReal t := (ENNReal.ofReal_toReal h1.ne).symm
  have hn : (‖(((Real.sqrt t)⁻¹ : ℝ) : ℂ)‖₊ : ℝ≥0∞) ^ 2 = ENNReal.ofReal t⁻¹ := by
    rw [ENNReal.ofReal, ← ENNReal.coe_pow]
    congr 1
    apply NNReal.coe_injective
    rw [NNReal.coe_pow, coe_nnnorm, Real.coe_toNNReal _ (inv_nonneg.mpr ht.le), Complex.norm_real,
      Real.norm_eq_abs, sq_abs, inv_pow, Real.sq_sqrt ht.le]
  rw [hn, hA, ← ENNReal.ofReal_mul (inv_nonneg.mpr ht.le), inv_mul_cancel₀ ht.ne', ENNReal.ofReal_one]

lemma lint_smul (ν : Measure (Formalism.QuantumDeterminants.Mt k r)) (A : Mat k r → Vp) (cc : ℂ) (f : Formalism.QuantumDeterminants.Mt k r → ℝ≥0∞)
    (h : ∫⁻ x, ‖A (Matrix.of x)‖ₑ * f x ∂ν < ⊤) :
    ∫⁻ x, ‖(fun g => cc • A g) (Matrix.of x)‖ₑ * f x ∂ν < ⊤ := by
  simp_rw [enorm_smul, mul_assoc]
  rw [lintegral_const_mul' _ _ enorm_ne_top]
  exact ENNReal.mul_lt_top enorm_lt_top h

end Scale

def WlocShape : Prop :=
  BesselNVGap → CoefWeightedLoc → ∀ (k r : ℕ) (z : Fin (2 * r + k + 1) → ℂ) (c : Fin r → ℂ) (u : Fin k → ℝ)
    (v : Fin (k - 1) → ℝ) (b : Fin (2 * r + 2) → ℝ), RealPlaceNumericalSetting k r z c u v b →
  ∀ (H : Type) [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H] (σ : Mat k r → (H →L[ℂ] H)),
    IsDSHpk k r (eps48 k r) (lam48 k r v b) σ →
  ∀ (Vp : Type) [NormedAddCommGroup Vp] [InnerProductSpace ℂ Vp] [FiniteDimensional ℂ Vp]
    (π : Mat k r → (Vp →L[ℂ] Vp)), IsHCTypeW k r z u π →
  ∀ w : H, IsLowUnitH k r (eps48 k r) (lam48 k r v b) σ w →
  ∀ μG μS ν : MeasureTheory.Measure (Formalism.QuantumDeterminants.Mt k r),
    IsHaarOn (Formalism.QuantumDeterminants.UH (Formalism.QuantumDeterminants.Hpk k r)) μG → IsHaarOn (Formalism.QuantumDeterminants.Sset k r z) μS →
    IsQuotMeas μG μS ν →
  ∃ W : Mat k r → Vp, (ContinuousOn W (Formalism.QuantumDeterminants.UH (Formalism.QuantumDeterminants.Hpk k r)) ∧ IsSPsiEquiv z (psiGen k r z c) π W ∧
    (∀ x ∈ Formalism.QuantumDeterminants.UH (Formalism.QuantumDeterminants.Hpk k r),
      MeasureTheory.Integrable (fun g : Formalism.QuantumDeterminants.Mt k r => eFun μG σ w (Matrix.of g) • W (x * Matrix.of g)) μG ∧
      rconv μG (eFun μG σ w) W x = W x) ∧
    ∫⁻ x, ‖W (Matrix.of x)‖ₑ ∂ν < ⊤ ∧ l2SG ν W = 1 ∧
    ∫⁻ x, ‖W (Matrix.of x)‖ₑ * ENNReal.ofReal (nuH k r z (Matrix.of x) ^ N1H k r) ∂ν < ⊤ ∧
    ∃ (α : Mat k r → ℂ) (Ω : Set (Mat k r)) (a : ℝ), IsCompact Ω ∧ (1 : Mat k r) ∈ Ω ∧
      Ω ⊆ Formalism.QuantumDeterminants.UH (Formalism.QuantumDeterminants.Hpk k r) ∧
      Measurable (fun g : Formalism.QuantumDeterminants.Mt k r => α (Matrix.of g)) ∧ (∀ y, α y ≠ 0 → y ∈ Ω) ∧ (∀ y, ‖α y‖ ≤ a) ∧
      ∀ x ∈ Formalism.QuantumDeterminants.UH (Formalism.QuantumDeterminants.Hpk k r),
        MeasureTheory.Integrable (fun g : Formalism.QuantumDeterminants.Mt k r => α (Matrix.of g) • W (x * Matrix.of g)) μG ∧
        rconv μG α W x = W x) ∧
  ∃ (μW μN : Measure (Formalism.QuantumDeterminants.Mt k r)) (cc : ℂ) (x₀ : Mat k r) (ξ : Vp),
    IsHaarOn (Formalism.QuantumDeterminants.UWset k r z) μW ∧ IsHaarOn (Formalism.QuantumDeterminants.Nset k r) μN ∧
    x₀ ∈ Formalism.QuantumDeterminants.UH (Formalism.QuantumDeterminants.Hpk k r) ∧
    ∀ x, W x = cc • B0 z c σ π μW μN (σ x₀ w) ξ (σ x w)

theorem scWlocShape_of (hWN : HaarWN) (hEq : AEquiv) (hC : ACont) (hK : AKind) (hRp : AReprod)
    (hL : WavePacketL1L2) (hWt : AWeighted) (hNz : ANonzero) (hR : Formalism.L2.SG.HCReprodM.HCReprodDSm) :
    WlocShape := by
  intro hBNV hCW k r z c u v b hS H _ _ _ σ hσ Vp _ _ _ π hπ w hw μG μS ν hG hSμ hQ
  obtain ⟨μW, μN, hW, hN, hWf, hNc⟩ := hWN k r z hS.2.2.1 hS.2.2.2.1
  have hyp : Hyp k r z c u v b σ π w μG μS ν μW μN :=
    ⟨hS, hσ, hπ, hw, hG, hSμ, hQ, hW, hN, hWf, hNc⟩
  obtain ⟨x₀, hx₀, ξ, hne⟩ := hNz hBNV k r z c u v b H σ Vp π w μG μS ν μW μN hyp hR hCW
  have hL' := hL k r z c u v b H σ Vp π w μG μS ν μW μN hyp hR hCW x₀ hx₀ ξ
  set A := Af z c σ π μW μN w x₀ ξ with hA_def
  set cc : ℂ := (((Real.sqrt (l2SG ν A).toReal)⁻¹ : ℝ) : ℂ) with hcc
  have hW' : Wf ν A = fun g => cc • A g := by
    funext g; unfold Wf; congr 1; rw [hcc]; push_cast; rfl
  refine ⟨Wf ν A, ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_⟩, μW, μN, cc, x₀, ξ, hW, hN, hx₀, fun x => by rw [hW']; rfl⟩
  · rw [hW']
    exact (hC k r z c u v b H σ Vp π w μG μS ν μW μN hyp hR hCW x₀ hx₀ ξ).const_smul cc
  · intro h hh m hm g hg
    rw [hW']
    have := hEq k r z c u v b H σ Vp π w μG μS ν μW μN hyp hR hCW x₀ hx₀ ξ h hh m hm g hg
    change cc • Af z c σ π μW μN w x₀ ξ (h * m * g) =
      psiGen k r z c m • (π h) (cc • Af z c σ π μW μN w x₀ ξ g)
    rw [this, smul_comm cc (psiGen k r z c m), map_smul]
  · intro x hx
    obtain ⟨hi, he⟩ := hK k r z c u v b H σ Vp π w μG μS ν μW μN hyp hR hCW x₀ hx₀ ξ x hx
    rw [hW']
    exact ⟨integrable_smul_fun μG _ A cc x hi, by rw [rconv_smul, he]⟩
  · rw [hW']
    have := lint_smul ν A cc (fun _ => 1) (by simpa using hL'.1)
    simpa using this
  · exact l2SG_Wf_eq_one ν A hne hL'.2
  · rw [hW']
    exact lint_smul ν A cc _ (hWt k r z c u v b H σ Vp π w μG μS ν μW μN hyp hR hCW x₀ hx₀ ξ)
  · obtain ⟨α, Ω, a, hΩ, h1, hΩG, hαm, hα0, hαa, hα⟩ :=
      hRp k r z c u v b H σ Vp π w μG μS ν μW μN hyp hR hCW x₀ hx₀ ξ
    refine ⟨α, Ω, a, hΩ, h1, hΩG, hαm, hα0, hαa, fun x hx => ?_⟩
    obtain ⟨hi, he⟩ := hα x hx
    rw [hW']
    exact ⟨integrable_smul_fun μG _ A cc x hi, by rw [rconv_smul, he]⟩

theorem scWlocExists_of (hWN : HaarWN) (hEq : AEquiv) (hC : ACont) (hK : AKind) (hRp : AReprod)
    (hL : WavePacketL1L2) (hWt : AWeighted) (hNz : ANonzero) (hR : Formalism.L2.SG.HCReprodM.HCReprodDSm) :
    WlocExists := by
  intro hBNV hCW k r z c u v b hS H _ _ _ σ hσ Vp _ _ _ π hπ w hw μG μS ν hG hSμ hQ
  obtain ⟨W, hWc, _⟩ := scWlocShape_of hWN hEq hC hK hRp hL hWt hNz hR hBNV hCW k r z c u v b hS H σ hσ
    Vp π hπ w hw μG μS ν hG hSμ hQ
  exact ⟨W, hWc⟩

end WlocSk
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.L2SGWfEqOne =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.NilradicalHaarUnique =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.NilradicalHaarUnique", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.OpnContinuous\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.InstLocallyCompactSpace\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Formalism.MainNotions.S
open scoped ENNReal

namespace WlocSk

theorem nilradical_haar_unique : NUniq := by
  intro k r μ μ' hμ hμ'
  obtain ⟨c, hc0, hct, hc⟩ := HM.n_unique μ hμ
  obtain ⟨c', hc0', hct', hc'⟩ := HM.n_unique μ' hμ'
  refine ⟨c / c', ENNReal.div_ne_top hct hc0', ?_⟩
  rw [hc, hc', smul_smul, ENNReal.div_mul_cancel hc0' hct']

end WlocSk
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.NilradicalHaarUnique =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.NilradicalUnimodularConjInvariant =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.NilradicalUnimodularConjInvariant", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.StarOfInv\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.DDMulApply\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.InstLocallyCompactSpace\npublic import Mathlib.MeasureTheory.Group.ModularCharacter\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.NotMidCases\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.ProductDecompositionHolds\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.SubgroupHypothesisHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Matrix Topology Filter
open scoped ENNReal NNReal Pointwise

namespace WlocSk.HM

open Formalism.QuantumDeterminants Formalism.MainNotions.S

variable {k r : ℕ}

abbrev GN (k r : ℕ) := Grp (Nset k r : Set (Mx k r)) n_clsub

def conjE (a : Mx k r) (ha : IsUnit a.det) (h1 : ∀ g ∈ Nset k r, a⁻¹ * g * a ∈ Nset k r)
    (h2 : ∀ g ∈ Nset k r, a * g * a⁻¹ ∈ Nset k r) : GN k r ≃* GN k r where
  toFun g := Grp.mk (a⁻¹ * g.val * a) (h1 _ g.mem)
  invFun g := Grp.mk (a * g.val * a⁻¹) (h2 _ g.mem)
  left_inv g := Grp.ext' (by
    show a * (a⁻¹ * g.val * a) * a⁻¹ = g.val
    calc a * (a⁻¹ * g.val * a) * a⁻¹ = (a * a⁻¹) * g.val * (a * a⁻¹) := by simp only [Matrix.mul_assoc]
      _ = g.val := by rw [Matrix.mul_nonsing_inv a ha, Matrix.one_mul, Matrix.mul_one])
  right_inv g := Grp.ext' (by
    show a⁻¹ * (a * g.val * a⁻¹) * a = g.val
    calc a⁻¹ * (a * g.val * a⁻¹) * a = (a⁻¹ * a) * g.val * (a⁻¹ * a) := by simp only [Matrix.mul_assoc]
      _ = g.val := by rw [Matrix.nonsing_inv_mul a ha, Matrix.one_mul, Matrix.mul_one])
  map_mul' g g' := Grp.ext' (by
    show a⁻¹ * (g.val * g'.val) * a = (a⁻¹ * g.val * a) * (a⁻¹ * g'.val * a)
    calc a⁻¹ * (g.val * g'.val) * a = a⁻¹ * g.val * (a * a⁻¹) * g'.val * a := by
          rw [Matrix.mul_nonsing_inv a ha, Matrix.mul_one]; simp only [Matrix.mul_assoc]
      _ = (a⁻¹ * g.val * a) * (a⁻¹ * g'.val * a) := by simp only [Matrix.mul_assoc])

lemma conjE_val (a : Mx k r) (ha : IsUnit a.det) (h1 : ∀ g ∈ Nset k r, a⁻¹ * g * a ∈ Nset k r)
    (h2 : ∀ g ∈ Nset k r, a * g * a⁻¹ ∈ Nset k r) (g : GN k r) :
    (conjE a ha h1 h2 g).val = a⁻¹ * g.val * a := rfl

lemma conjE_cont (a : Mx k r) (ha : IsUnit a.det) (h1 : ∀ g ∈ Nset k r, a⁻¹ * g * a ∈ Nset k r)
    (h2 : ∀ g ∈ Nset k r, a * g * a⁻¹ ∈ Nset k r) : Continuous (conjE a ha h1 h2) := by
  rw [Grp.emb.isInducing.continuous_iff]
  show Continuous fun g : GN k r => a⁻¹ * g.val * a
  exact (continuous_const.matrix_mul Grp.emb.continuous).matrix_mul continuous_const

lemma conjE_symm_cont (a : Mx k r) (ha : IsUnit a.det) (h1 : ∀ g ∈ Nset k r, a⁻¹ * g * a ∈ Nset k r)
    (h2 : ∀ g ∈ Nset k r, a * g * a⁻¹ ∈ Nset k r) : Continuous (conjE a ha h1 h2).symm := by
  rw [Grp.emb.isInducing.continuous_iff]
  show Continuous fun g : GN k r => a * g.val * a⁻¹
  exact (continuous_const.matrix_mul Grp.emb.continuous).matrix_mul continuous_const

lemma smul_cancel {a b : ℝ≥0} (h : a • (Measure.haar : Measure (GN k r)) = b • Measure.haar) : a = b := by
  obtain ⟨K, hK, hKn⟩ := exists_compact_mem_nhds (1 : GN k r)
  have hK0 : (Measure.haar : Measure (GN k r)) K ≠ 0 := (Measure.measure_pos_of_mem_nhds _ hKn).ne'
  have hKt : (Measure.haar : Measure (GN k r)) K ≠ ∞ := hK.measure_lt_top.ne
  have e := congrArg (fun ν : Measure (GN k r) => ν K) h
  simp only [Measure.smul_apply, ENNReal.smul_def, smul_eq_mul] at e
  exact ENNReal.coe_injective ((ENNReal.mul_left_inj hK0 hKt).mp e)

lemma map_rmul (g : GN k r) :
    Measure.map (· * g) (Measure.haar : Measure (GN k r)) =
      Measure.modularCharacter g • (Measure.haar : Measure (GN k r)) := by
  have e := Measure.modularCharacterFun_eq_haarScalarFactor (Measure.haar : Measure (GN k r)) g
  change _ = Measure.modularCharacterFun g • _
  rw [e]
  exact Measure.isMulLeftInvariant_eq_smul _ _

lemma auto_scalar (e : GN k r ≃* GN k r) (he : Continuous e) (hs : Continuous e.symm) :
    ∃ s : ℝ≥0, 0 < s ∧ Measure.map e (Measure.haar : Measure (GN k r)) = s • (Measure.haar : Measure (GN k r)) := by
  have : (Measure.map e (Measure.haar : Measure (GN k r))).IsHaarMeasure :=
    MulEquiv.isHaarMeasure_map _ e he hs
  exact ⟨_, Measure.haarScalarFactor_pos_of_isHaarMeasure _ _, Measure.isMulLeftInvariant_eq_smul _ _⟩

lemma mod_auto (e : GN k r ≃* GN k r) (he : Continuous e) (hs : Continuous e.symm) (g : GN k r) :
    Measure.modularCharacter (e g) = Measure.modularCharacter g := by
  obtain ⟨s, hsp, hE⟩ := auto_scalar e he hs
  have hs0 : s ≠ 0 := hsp.ne'
  have key : Measure.map (· * e g) (Measure.map e (Measure.haar : Measure (GN k r))) =
      Measure.map e (Measure.map (· * g) (Measure.haar : Measure (GN k r))) := by
    rw [Measure.map_map (measurable_mul_const _) he.measurable,
      Measure.map_map he.measurable (measurable_mul_const _)]
    congr 1
    funext x
    exact (map_mul e x g).symm
  rw [hE, Measure.map_smul s (measurable_mul_const (e g)).aemeasurable,
    map_rmul, map_rmul, Measure.map_smul _ he.measurable.aemeasurable, hE, smul_smul, smul_smul] at key
  have := smul_cancel key
  rw [mul_comm] at this
  exact mul_right_cancel₀ hs0 this

lemma mod_bound : ∃ K : Set (GN k r), K ∈ 𝓝 (1 : GN k r) ∧ ∃ B : ℝ≥0, ∀ g ∈ K, Measure.modularCharacter g ≤ B := by
  obtain ⟨K, hK, hKn⟩ := exists_compact_mem_nhds (1 : GN k r)
  have hK0 : (Measure.haar : Measure (GN k r)) K ≠ 0 := (Measure.measure_pos_of_mem_nhds _ hKn).ne'
  have hKt : (Measure.haar : Measure (GN k r)) K ≠ ∞ := hK.measure_lt_top.ne
  have hC : IsCompact (K * K⁻¹) := hK.mul hK.inv
  have hCt : (Measure.haar : Measure (GN k r)) (K * K⁻¹) ≠ ∞ := hC.measure_lt_top.ne
  refine ⟨K, hKn, ((Measure.haar : Measure (GN k r)) (K * K⁻¹)).toNNReal /
    ((Measure.haar : Measure (GN k r)) K).toNNReal, fun g hg => ?_⟩
  have e := congrArg (fun ν : Measure (GN k r) => ν K) (map_rmul g)
  simp only [Measure.smul_apply, ENNReal.smul_def, smul_eq_mul] at e
  rw [Measure.map_apply (measurable_mul_const g) hK.isClosed.measurableSet] at e
  have hsub : (· * g) ⁻¹' K ⊆ K * K⁻¹ := by
    intro x hx
    exact ⟨x * g, hx, g⁻¹, Set.inv_mem_inv.mpr hg, by simp⟩
  have hle : (Measure.modularCharacter g : ℝ≥0∞) * (Measure.haar : Measure (GN k r)) K ≤
      (Measure.haar : Measure (GN k r)) (K * K⁻¹) := e ▸ measure_mono hsub
  rw [← ENNReal.coe_toNNReal hKt, ← ENNReal.coe_toNNReal hCt, ← ENNReal.coe_mul, ENNReal.coe_le_coe] at hle
  have hpos : 0 < ((Measure.haar : Measure (GN k r)) K).toNNReal := ENNReal.toNNReal_pos hK0 hKt
  rw [le_div_iff₀ hpos]
  exact hle

def wt (k r : ℕ) (i : Fin (2 * r + k + 1)) : ℤ :=
  if i.val < r then (r : ℤ) - i.val else if i.val ≤ r + k then 0 else (r : ℤ) + k - i.val

def NWtUpper : Prop :=
  ∀ (k r : ℕ) (m : Mx k r), m ∈ Nset k r → ∀ i j : Fin (2 * r + k + 1),
    wt k r i ≤ wt k r j → m i j = if i = j then 1 else 0

lemma wt_tau (i : Fin (2 * r + k + 1)) : wt k r (tau k r i) = - wt k r i := by
  unfold wt tau
  simp only
  split_ifs <;> omega

lemma diag_uh (a : Fin (2 * r + k + 1) → ℂ) (ha : ∀ i, star (a i) * a (tau k r i) = 1) :
    (diagonal a)ᴴ * Hpk k r * diagonal a = Hpk k r := by
  ext i j
  rw [Matrix.mul_diagonal, Matrix.diagonal_conjTranspose, Matrix.diagonal_mul, hpk_row]
  by_cases hj : j = tau k r i
  · subst hj
    simp only [Pi.star_apply, ite_true]
    linear_combination (sgn k r i) * ha i
  · simp [hj]

lemma diag_conj_n (a b : Fin (2 * r + k + 1) → ℂ) (hab : ∀ i, a i * b i = 1)
    (ha : ∀ i, star (a i) * a (tau k r i) = 1) (hb : ∀ i, star (b i) * b (tau k r i) = 1)
    {g : Mx k r} (hg : g ∈ Nset k r) : diagonal a * g * diagonal b ∈ Nset k r := by
  rw [nset_iff] at hg ⊢
  obtain ⟨hU, hc⟩ := hg
  have hU' : gᴴ * Hpk k r * g = Hpk k r := hU
  refine ⟨?_, fun i j hj hi => ?_⟩
  · show (diagonal a * g * diagonal b)ᴴ * Hpk k r * (diagonal a * g * diagonal b) = Hpk k r
    calc (diagonal a * g * diagonal b)ᴴ * Hpk k r * (diagonal a * g * diagonal b)
        = (diagonal b)ᴴ * (gᴴ * ((diagonal a)ᴴ * Hpk k r * diagonal a) * g) * diagonal b := by
          simp only [Matrix.conjTranspose_mul, Matrix.mul_assoc]
      _ = Hpk k r := by rw [diag_uh a ha, hU', diag_uh b hb]
  · rw [Matrix.mul_diagonal, Matrix.diagonal_mul, hc i j hj hi]
    by_cases h : i = j
    · subst h; simp [hab]
    · simp [h]

def dv (k r : ℕ) (t : ℝ) (i : Fin (2 * r + k + 1)) : ℂ := ((t ^ wt k r i : ℝ) : ℂ)

def dvi (k r : ℕ) (t : ℝ) (i : Fin (2 * r + k + 1)) : ℂ := ((t ^ (- wt k r i) : ℝ) : ℂ)

lemma dvi_dv {t : ℝ} (ht : t ≠ 0) (i : Fin (2 * r + k + 1)) : dvi k r t i * dv k r t i = 1 := by
  unfold dv dvi
  rw [← Complex.ofReal_mul, ← zpow_add₀ ht, neg_add_cancel, zpow_zero, Complex.ofReal_one]

lemma dv_dvi {t : ℝ} (ht : t ≠ 0) (i : Fin (2 * r + k + 1)) : dv k r t i * dvi k r t i = 1 := by
  rw [mul_comm]; exact dvi_dv ht i

lemma star_ofReal' (x : ℝ) : star (x : ℂ) = x := Complex.conj_ofReal x

lemma dv_form {t : ℝ} (ht : t ≠ 0) (i : Fin (2 * r + k + 1)) :
    star (dv k r t i) * dv k r t (tau k r i) = 1 := by
  unfold dv
  rw [star_ofReal', wt_tau, ← Complex.ofReal_mul, ← zpow_add₀ ht, add_neg_cancel, zpow_zero, Complex.ofReal_one]

lemma dvi_form {t : ℝ} (ht : t ≠ 0) (i : Fin (2 * r + k + 1)) :
    star (dvi k r t i) * dvi k r t (tau k r i) = 1 := by
  unfold dvi
  rw [star_ofReal', wt_tau, neg_neg, ← Complex.ofReal_mul, ← zpow_add₀ ht, neg_add_cancel, zpow_zero,
    Complex.ofReal_one]

lemma dg_left_inv {t : ℝ} (ht : t ≠ 0) : diagonal (dvi k r t) * diagonal (dv k r t) = 1 := by
  rw [Matrix.diagonal_mul_diagonal, ← Matrix.diagonal_one]
  congr 1
  funext i
  exact dvi_dv ht i

lemma dg_inv {t : ℝ} (ht : t ≠ 0) : (diagonal (dv k r t))⁻¹ = diagonal (dvi k r t) :=
  Matrix.inv_eq_left_inv (dg_left_inv ht)

lemma dg_unit {t : ℝ} (ht : t ≠ 0) : IsUnit (diagonal (dv k r t)).det :=
  Matrix.isUnit_det_of_left_inverse (dg_left_inv ht)

def tn (n : ℕ) : ℝ := (n : ℝ) + 1

lemma tn_ne (n : ℕ) : tn n ≠ 0 := by unfold tn; positivity

lemma tn_top : Tendsto tn atTop atTop :=
  tendsto_atTop_add_const_right _ 1 tendsto_natCast_atTop_atTop

def dE (k r : ℕ) (n : ℕ) : GN k r ≃* GN k r :=
  conjE (diagonal (dv k r (tn n))) (dg_unit (tn_ne n))
    (fun g hg => by
      rw [dg_inv (tn_ne n)]
      exact diag_conj_n _ _ (dvi_dv (tn_ne n)) (dvi_form (tn_ne n)) (dv_form (tn_ne n)) hg)
    (fun g hg => by
      rw [dg_inv (tn_ne n)]
      exact diag_conj_n _ _ (dv_dvi (tn_ne n)) (dv_form (tn_ne n)) (dvi_form (tn_ne n)) hg)

lemma dE_val (n : ℕ) (g : GN k r) :
    (dE k r n g).val = diagonal (dvi k r (tn n)) * g.val * diagonal (dv k r (tn n)) := by
  rw [dE, conjE_val, dg_inv (tn_ne n)]

lemma dE_cont (n : ℕ) : Continuous (dE k r n) := conjE_cont _ _ _ _

lemma dE_symm_cont (n : ℕ) : Continuous (dE k r n).symm := conjE_symm_cont _ _ _ _

lemma dE_tendsto (hB : NWtUpper) (g : GN k r) : Tendsto (fun n => dE k r n g) atTop (𝓝 1) := by
  rw [Grp.emb.isInducing.tendsto_nhds_iff]
  have hv : (Grp.val ∘ fun n => dE k r n g) =
      fun n => diagonal (dvi k r (tn n)) * g.val * diagonal (dv k r (tn n)) := by
    funext n
    exact dE_val n g
  rw [hv, Grp.val_one]
  refine tendsto_pi_nhds.2 fun i => tendsto_pi_nhds.2 fun j => ?_
  have hent : ∀ n, (diagonal (dvi k r (tn n)) * g.val * diagonal (dv k r (tn n))) i j =
      g.val i j * ((tn n ^ (wt k r j - wt k r i) : ℝ) : ℂ) := by
    intro n
    rw [Matrix.mul_diagonal, Matrix.diagonal_mul]
    unfold dv dvi
    rw [← neg_add_eq_sub, zpow_add₀ (tn_ne n)]
    push_cast
    ring
  simp only [hent]
  by_cases hw : wt k r i ≤ wt k r j
  · rw [hB k r g.val g.mem i j hw]
    by_cases h : i = j
    · subst h
      simp only [sub_self, zpow_zero, Complex.ofReal_one, mul_one, Matrix.one_apply_eq]
      exact tendsto_const_nhds
    · simp only [if_neg h, zero_mul, Matrix.one_apply_ne h]
      exact tendsto_const_nhds
  · have h : i ≠ j := by
      intro e; subst e; exact hw le_rfl
    rw [Matrix.one_apply_ne h]
    have hlim : Tendsto (fun n => ((tn n ^ (wt k r j - wt k r i) : ℝ) : ℂ)) atTop (𝓝 0) := by
      have h1 := (tendsto_zpow_atTop_zero (by omega : wt k r j - wt k r i < 0)).comp tn_top
      have h2 := (Complex.continuous_ofReal.tendsto 0).comp h1
      rw [Complex.ofReal_zero] at h2
      exact h2
    have h3 := hlim.const_mul (g.val i j)
    rw [mul_zero] at h3
    exact h3

theorem mod_one (hB : NWtUpper) (g : GN k r) : Measure.modularCharacter g = 1 := by
  obtain ⟨K, hK, B, hBd⟩ := mod_bound (k := k) (r := r)
  have hpow : ∀ x : GN k r, ∀ p : ℕ, Measure.modularCharacter x ^ p ≤ B := by
    intro x p
    obtain ⟨n, hn⟩ := ((dE_tendsto hB (x ^ p)).eventually hK).exists
    have h1 := hBd _ hn
    rw [mod_auto (dE k r n) (dE_cont n) (dE_symm_cont n), map_pow] at h1
    exact h1
  have hle : ∀ x : GN k r, Measure.modularCharacter x ≤ 1 := by
    intro x
    by_contra hx
    push Not at hx
    obtain ⟨p, hp⟩ := pow_unbounded_of_one_lt B hx
    exact absurd (hpow x p) (not_le.mpr hp)
  have hprod : Measure.modularCharacter g * Measure.modularCharacter g⁻¹ = 1 := by
    rw [← map_mul, mul_inv_cancel, map_one]
  apply le_antisymm (hle g)
  calc (1 : ℝ≥0) = Measure.modularCharacter g * Measure.modularCharacter g⁻¹ := hprod.symm
    _ ≤ Measure.modularCharacter g * 1 := mul_le_mul_of_nonneg_left (hle g⁻¹) zero_le
    _ = Measure.modularCharacter g := mul_one _

theorem haar_right (hB : NWtUpper) (g : GN k r) :
    Measure.map (· * g) (Measure.haar : Measure (GN k r)) = Measure.haar := by
  rw [map_rmul, mod_one hB, one_smul]

def conjW (z : Fin (2 * r + k + 1) → ℂ) (hz : inWb k r z) (hT : 0 < Tz k r z) (h : Mx k r)
    (hh : h ∈ UWset k r z) : GN k r ≃* GN k r :=
  conjE h (isUnit_of_uh hh.1) (fun g hg => ((subgroup_hypothesis_holds k r z 0 hz hT).2.2.2.2 h hh g hg).1)
    (fun g hg => by
      have := ((subgroup_hypothesis_holds k r z 0 hz hT).2.2.2.2 h⁻¹ ((uw_clsub z).inv_mem h hh) g hg).1
      rwa [Matrix.nonsing_inv_nonsing_inv h (isUnit_of_uh hh.1)] at this)

lemma conjW_cont (z : Fin (2 * r + k + 1) → ℂ) (hz : inWb k r z) (hT : 0 < Tz k r z) (h : Mx k r)
    (hh : h ∈ UWset k r z) : Continuous (conjW z hz hT h hh) := conjE_cont _ _ _ _

lemma conjW_symm_cont (z : Fin (2 * r + k + 1) → ℂ) (hz : inWb k r z) (hT : 0 < Tz k r z) (h : Mx k r)
    (hh : h ∈ UWset k r z) : Continuous (conjW z hz hT h hh).symm := conjE_symm_cont _ _ _ _

theorem haar_conj (z : Fin (2 * r + k + 1) → ℂ) (hz : inWb k r z) (hT : 0 < Tz k r z) (h : Mx k r)
    (hh : h ∈ UWset k r z) :
    Measure.map (conjW z hz hT h hh) (Measure.haar : Measure (GN k r)) = Measure.haar := by
  have he := conjW_cont z hz hT h hh
  have hs := conjW_symm_cont z hz hT h hh
  obtain ⟨s, -, hEq⟩ := auto_scalar (conjW z hz hT h hh) he hs
  have hu := isUnit_of_uh hh.1
  have hW := uw_clsub (k := k) (r := r) z
  obtain ⟨K, hK, hKn⟩ := exists_compact_mem_nhds (1 : GN k r)
  let F : Mx k r × Mx k r → Mx k r := fun p => p.1 * p.2 * jinv p.1
  have hF : Continuous F := (continuous_fst.matrix_mul continuous_snd).matrix_mul (jinv_cont.comp continuous_fst)
  let K' : Set (GN k r) := Grp.val ⁻¹' (F '' ((UWset k r z : Set (Mx k r)) ×ˢ (Grp.val '' K)))
  have hK' : IsCompact K' :=
    Grp.emb.isCompact_preimage (((compactW z hz hT).prod (hK.image Grp.emb.continuous)).image hF)
  have memK' : ∀ y : GN k r, y ∈ K' ↔ ∃ h' ∈ UWset k r z, ∃ x ∈ K, y.val = h' * x.val * h'⁻¹ := by
    intro y
    constructor
    · rintro ⟨⟨h', v⟩, ⟨hh', x, hx, rfl⟩, hy⟩
      refine ⟨h', hh', x, hx, ?_⟩
      rw [jinv_eq hh'.1]
      exact hy.symm
    · rintro ⟨h', hh', x, hx, hy⟩
      refine ⟨(h', x.val), ⟨hh', x, hx, rfl⟩, ?_⟩
      show h' * x.val * jinv h' = y.val
      rw [← jinv_eq hh'.1, hy]
  have hKK : K ⊆ K' := by
    intro x hx
    rw [memK']
    refine ⟨1, hW.one_mem, x, hx, ?_⟩
    rw [inv_one, Matrix.one_mul, Matrix.mul_one]
  have hpre : (conjW z hz hT h hh) ⁻¹' K' = K' := by
    ext g
    rw [Set.mem_preimage, memK', memK']
    have e1 : h * h⁻¹ = 1 := Matrix.mul_nonsing_inv h hu
    constructor
    · rintro ⟨h', hh', x, hx, hy⟩
      have hy' : h⁻¹ * g.val * h = h' * x.val * h'⁻¹ := hy
      refine ⟨h * h', hW.mul_mem _ hh _ hh', x, hx, ?_⟩
      rw [Matrix.mul_inv_rev]
      calc g.val = (h * h⁻¹) * g.val * (h * h⁻¹) := by rw [e1, Matrix.one_mul, Matrix.mul_one]
        _ = h * (h⁻¹ * g.val * h) * h⁻¹ := by simp only [Matrix.mul_assoc]
        _ = h * (h' * x.val * h'⁻¹) * h⁻¹ := by rw [hy']
        _ = h * h' * x.val * (h'⁻¹ * h⁻¹) := by simp only [Matrix.mul_assoc]
    · rintro ⟨h', hh', x, hx, hy⟩
      refine ⟨h⁻¹ * h', hW.mul_mem _ (hW.inv_mem h hh) _ hh', x, hx, ?_⟩
      show h⁻¹ * g.val * h = h⁻¹ * h' * x.val * (h⁻¹ * h')⁻¹
      rw [Matrix.mul_inv_rev, Matrix.nonsing_inv_nonsing_inv h hu, hy]
      simp only [Matrix.mul_assoc]
  have hK0 : (Measure.haar : Measure (GN k r)) K' ≠ 0 :=
    (lt_of_lt_of_le (Measure.measure_pos_of_mem_nhds _ hKn) (measure_mono hKK)).ne'
  have hKt : (Measure.haar : Measure (GN k r)) K' ≠ ∞ := hK'.measure_lt_top.ne
  have ev := congrArg (fun ν : Measure (GN k r) => ν K') hEq
  simp only [Measure.smul_apply, ENNReal.smul_def, smul_eq_mul] at ev
  rw [Measure.map_apply he.measurable hK'.isClosed.measurableSet, hpre] at ev
  have hs1 : s = 1 := by
    have h2 : (s : ℝ≥0∞) * (Measure.haar : Measure (GN k r)) K' = 1 * (Measure.haar : Measure (GN k r)) K' := by
      rw [one_mul]; exact ev.symm
    exact ENNReal.coe_eq_one.mp ((ENNReal.mul_left_inj hK0 hKt).mp h2)
  rw [hEq, hs1, one_smul]

theorem nUnimod_core (hB : NWtUpper) (k r : ℕ) (z : Fin (2 * r + k + 1) → ℂ) (μN : Measure (Mt k r))
    (hz : inWb k r z) (hT : 0 < Tz k r z) (hN : IsHaarOn (Nset k r) μN)
    (_hNc : ∀ K : Set (Mt k r), IsCompact K → μN K < ⊤) (h : Mx k r) (hh : h ∈ UWset k r z)
    (m₀ : Mx k r) (hm₀ : m₀ ∈ Nset k r) :
    μN.map (fun x : Mt k r => fun i j => (h⁻¹ * Matrix.of x * h * m₀) i j) = μN := by
  obtain ⟨c, -, -, hμ⟩ := n_unique μN hN
  have hΦ : Measurable (fun x : Mt k r => fun i j => (h⁻¹ * Matrix.of x * h * m₀) i j) := by
    have : Continuous (fun x : Mt k r => fun i j => (h⁻¹ * Matrix.of x * h * m₀) i j) := by
      show Continuous fun x : Mt k r => (h⁻¹ * Matrix.of x * h * m₀ : Mx k r)
      exact ((continuous_const.matrix_mul continuous_id).matrix_mul continuous_const).matrix_mul continuous_const
    exact this.measurable
  have he := conjW_cont z hz hT h hh
  have hcomp : (fun x : Mt k r => fun i j => (h⁻¹ * Matrix.of x * h * m₀) i j) ∘ Grp.vt =
      Grp.vt ∘ (fun g : GN k r => conjW z hz hT h hh g * Grp.mk m₀ hm₀) := by
    funext g
    rfl
  have hψ : Measurable (fun g : GN k r => conjW z hz hT h hh g * Grp.mk m₀ hm₀) :=
    he.measurable.mul_const _
  have hsplit : (fun g : GN k r => conjW z hz hT h hh g * Grp.mk m₀ hm₀) =
      (· * Grp.mk m₀ hm₀) ∘ conjW z hz hT h hh := rfl
  rw [hμ, haarNm_eq, Measure.map_smul c hΦ.aemeasurable,
    Measure.map_map hΦ Grp.embt.continuous.measurable, hcomp,
    ← Measure.map_map Grp.embt.continuous.measurable hψ, hsplit,
    ← Measure.map_map (measurable_mul_const _) he.measurable, haar_conj z hz hT h hh, haar_right hB]

lemma wt_eq (i : Fin (2 * r + k + 1)) : wt k r i = NB.wt k r i := by
  unfold wt NB.wt
  split_ifs <;> push_cast <;> ring

theorem nilradical_weight_upper_block : NWtUpper := by
  intro k r m hm i j hw
  have h := NB.nset_upper hm i j (by rw [← wt_eq, ← wt_eq]; omega)
  rw [Matrix.sub_apply, Matrix.one_apply, sub_eq_zero] at h
  exact h

end WlocSk.HM

namespace WlocSk

theorem nilradical_unimodular_conj_invariant : NUnimod := fun k r z μN hz hT hN hNc h hh m₀ hm₀ =>
  HM.nUnimod_core HM.nilradical_weight_upper_block k r z μN hz hT hN hNc h hh m₀ hm₀

end WlocSk
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.NilradicalUnimodularConjInvariant =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.SigmaDecomposition =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.SigmaDecomposition", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.WavePacketL1L2\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Formalism.MainNotions.S Formalism.MainNotions.CayleySignature Matrix
open scoped InnerProductSpace

namespace WlocSk

section Cayley

variable {k r : ℕ} {ε : Fin (2 * r + k + 1) → Bool}

lemma cay_inv_mul {P : Mat k r} (hP : IsUnit P) : P⁻¹ * P = 1 :=
  Matrix.nonsing_inv_mul P ((Matrix.isUnit_iff_isUnit_det P).mp hP)

lemma cay_mul_inv {P : Mat k r} (hP : IsUnit P) : P * P⁻¹ = 1 :=
  Matrix.mul_nonsing_inv P ((Matrix.isUnit_iff_isUnit_det P).mp hP)

lemma cay_mem {P : Mat k r} (hP : IsCayley k r ε P) {g : Mat k r} (hg : g ∈ Gr k r) :
    P * g * P⁻¹ ∈ UJset ε := by
  have h2 := cay_mul_inv hP.1
  have hg' : gᴴ * Formalism.QuantumDeterminants.Hpk k r * g = Formalism.QuantumDeterminants.Hpk k r := hg
  show (P * g * P⁻¹)ᴴ * Formalism.REAL.Jm ε * (P * g * P⁻¹) = Formalism.REAL.Jm ε
  rw [← hP.2] at hg'
  calc (P * g * P⁻¹)ᴴ * Formalism.REAL.Jm ε * (P * g * P⁻¹)
      = (P⁻¹)ᴴ * (gᴴ * (Pᴴ * Formalism.REAL.Jm ε * P) * g) * P⁻¹ := by
        simp only [Matrix.conjTranspose_mul, Matrix.mul_assoc]
    _ = (P⁻¹)ᴴ * (Pᴴ * Formalism.REAL.Jm ε * P) * P⁻¹ := by rw [hg']
    _ = (P * P⁻¹)ᴴ * Formalism.REAL.Jm ε * (P * P⁻¹) := by
        simp only [Matrix.conjTranspose_mul, Matrix.mul_assoc]
    _ = Formalism.REAL.Jm ε := by rw [h2]; simp

lemma cay_back {P : Mat k r} (hP : IsUnit P) (g : Mat k r) : P⁻¹ * (P * g * P⁻¹) * P = g := by
  have h1 := cay_inv_mul hP
  have h2 := cay_mul_inv hP
  calc P⁻¹ * (P * g * P⁻¹) * P = (P⁻¹ * P) * g * (P⁻¹ * P) := by simp only [Matrix.mul_assoc]
    _ = g := by rw [h1]; simp

end Cayley

theorem sigma_decomposition : SigmaG := by
  intro k r ε lam H _ _ σ hσ
  obtain ⟨P, hP, hDS⟩ := hσ
  obtain ⟨⟨h1, hmul⟩, hiso, hcont⟩ := hDS.2.2.1
  have hPu := hP.1.1
  have hσ' : ∀ g, σ g = σ (P⁻¹ * (P * g * P⁻¹) * P) := fun g => by rw [cay_back hPu]
  refine ⟨⟨?_, ?_⟩, ?_, ?_⟩
  · have := h1
    simp only [Matrix.mul_one, cay_inv_mul hPu] at this
    exact this
  · intro a ha b hb
    have hab : P * (a * b) * P⁻¹ = P * a * P⁻¹ * (P * b * P⁻¹) := by
      calc P * (a * b) * P⁻¹ = P * a * (P⁻¹ * P) * b * P⁻¹ := by
            rw [cay_inv_mul hPu]; simp only [Matrix.mul_one, Matrix.mul_assoc]
        _ = P * a * P⁻¹ * (P * b * P⁻¹) := by simp only [Matrix.mul_assoc]
    rw [hσ' (a * b), hab]
    have := hmul _ (cay_mem hP.1 ha) _ (cay_mem hP.1 hb)
    simp only at this
    rw [this, cay_back hPu, cay_back hPu]
  · intro g hg v
    rw [hσ' g]
    exact hiso _ (cay_mem hP.1 hg) v
  · intro v
    have hc : Continuous fun g : Mat k r => P * g * P⁻¹ :=
      (continuous_const.matrix_mul continuous_id).matrix_mul continuous_const
    have := (hcont v).comp hc.continuousOn (fun g hg => cay_mem hP.1 hg)
    refine this.congr (fun g _ => ?_)
    simp only [Function.comp]
    rw [cay_back hPu]

end WlocSk
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.SigmaDecomposition =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.UnipotentRightInvariance =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.UnipotentRightInvariance", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.StarOfInv\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.InstLocallyCompactSpace\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.NotMidCases\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Matrix
open scoped ENNReal NNReal

namespace WlocSk.WRI

open Formalism.QuantumDeterminants WlocSk.HM

variable {k r : ℕ}

theorem haar_right_compact {G : Type*} [Group G] [TopologicalSpace G] [IsTopologicalGroup G]
    [MeasurableSpace G] [BorelSpace G] [LocallyCompactSpace G] [SecondCountableTopology G]
    [T2Space G] [CompactSpace G] (g : G) :
    (Measure.haar : Measure G).map (· * g) = Measure.haar := by
  set μ : Measure G := Measure.haar
  set ν : Measure G := μ.map (· * g)
  have hν : ν = Measure.haarScalarFactor ν μ • μ := Measure.isMulLeftInvariant_eq_smul ν μ
  have hmass : ν Set.univ = μ Set.univ := by
    simp only [ν]
    rw [Measure.map_apply (measurable_mul_const g) MeasurableSet.univ, Set.preimage_univ]
  have h0 : μ Set.univ ≠ 0 := by
    intro h; exact (NeZero.ne μ) (Measure.measure_univ_eq_zero.mp h)
  have htop : μ Set.univ ≠ ∞ := measure_ne_top μ _
  have hc : ((Measure.haarScalarFactor ν μ : ℝ≥0) : ℝ≥0∞) = 1 := by
    have e := hmass
    rw [hν, Measure.smul_apply, ENNReal.smul_def, smul_eq_mul] at e
    have e2 : ((Measure.haarScalarFactor ν μ : ℝ≥0) : ℝ≥0∞) * μ Set.univ = 1 * μ Set.univ := by
      rw [one_mul]; exact e
    exact (ENNReal.mul_left_inj h0 htop).mp e2
  rw [hν]
  have : Measure.haarScalarFactor ν μ = 1 := by exact_mod_cast hc
  rw [this, one_smul]

theorem hmeas_right (U : Set (Mx k r)) (hU : ClSub U) (hc : IsCompact U) (g : Mx k r) (hg : g ∈ U) :
    (hmeas U hU).map (fun x : Mt k r => fun i j => (Matrix.of x * g) i j) = hmeas U hU := by
  have : CompactSpace (Grp U hU) := isCompact_iff_compactSpace.mp hc
  have hvt : Measurable (Grp.vt : Grp U hU → Mt k r) := (val_cemb U hU).continuous.measurable
  have hR : Measurable (fun x : Mt k r => fun i j => (Matrix.of x * g) i j) := by
    have : Continuous (fun x : Mt k r => fun i j => (Matrix.of x * g) i j) :=
      Continuous.matrix_mul continuous_id continuous_const
    exact this.measurable
  unfold hmeas
  rw [Measure.map_map hR hvt]
  have : (fun x : Mt k r => fun i j => (Matrix.of x * g) i j) ∘ (Grp.vt : Grp U hU → Mt k r) =
      (Grp.vt : Grp U hU → Mt k r) ∘ (fun a => a * Grp.mk g hg) := by
    funext a; rfl
  rw [this, ← Measure.map_map hvt (measurable_mul_const _), haar_right_compact]

end WlocSk.WRI

open WlocSk.HM WlocSk.WRI in
theorem unipotent_right_invariance : WlocSk.WRightInv := by
  intro k r z μW hz hT hH _ h hh
  obtain ⟨c, -, -, hμ⟩ := haar_unique _ (uw_clsub z) μW hH
  have hR : Continuous (fun x : Formalism.QuantumDeterminants.Mt k r =>
      fun i j => (Matrix.of x * h) i j) :=
    Continuous.matrix_mul continuous_id continuous_const
  rw [hμ, Measure.map_smul c hR.measurable.aemeasurable,
    hmeas_right _ _ (compactW z hz hT) h hh]
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.UnipotentRightInvariance =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.WavePacketL1L2OfHypotheses =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.WavePacketL1L2OfHypotheses", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.StarOfInv\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.Unfold\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.CStarAlgebra.ContinuousLinearMap\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Separation.CompletelyRegular\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Matrix Formalism.MainNotions.S Formalism.MainNotions.CayleySignature Formalism.L2.SG.SplitPrimeNormLemmas Formalism.L2.SG.WuDecay
open scoped InnerProductSpace ENNReal Classical

namespace WlocSk

namespace AQ

variable {k r : ℕ}

theorem opn_nonneg (M : Mat k r) : 0 ≤ opn M := norm_nonneg _

theorem opn_mul (A B : Mat k r) : opn (A * B) ≤ opn A * opn B := by
  unfold opn
  simpa only [map_mul] using norm_mul_le _ _

theorem opn_conjTranspose (A : Mat k r) : opn Aᴴ = opn A := by
  unfold opn
  rw [← Matrix.star_eq_conjTranspose, map_star, norm_star]

theorem opn_one : opn (1 : Mat k r) = 1 := by
  unfold opn; rw [map_one]; exact norm_one

local instance instAlgCLM (n : ℕ) :
    Algebra ℂ (EuclideanSpace ℂ (Fin n) →L[ℂ] EuclideanSpace ℂ (Fin n)) := ContinuousLinearMap.algebra

theorem opn_continuous : Continuous (fun M : Mat k r => opn M) := by
  exact open scoped Matrix.Norms.L2Operator in continuous_norm (E := Mat k r)

theorem nilradical_half_sum_nonneg : 0 ≤ N1H k r := by unfold N1H; positivity

theorem one_le_opn {g : Mat k r} (hg : g ∈ Gr k r) : 1 ≤ opn (Formalism.QuantumDeterminants.Hpk k r) * opn g := by
  have h1 : opn (1 : Mat k r) ≤ opn g⁻¹ * opn g := by rw [← Grp.inv_mul hg]; exact opn_mul _ _
  have h2 : opn g⁻¹ ≤ opn (Formalism.QuantumDeterminants.Hpk k r) * opn g * opn (Formalism.QuantumDeterminants.Hpk k r) := by
    rw [Grp.inv_eq hg]
    calc opn (Formalism.QuantumDeterminants.Hpk k r * gᴴ * Formalism.QuantumDeterminants.Hpk k r)
        ≤ opn (Formalism.QuantumDeterminants.Hpk k r * gᴴ) * opn (Formalism.QuantumDeterminants.Hpk k r) := opn_mul _ _
      _ ≤ opn (Formalism.QuantumDeterminants.Hpk k r) * opn gᴴ * opn (Formalism.QuantumDeterminants.Hpk k r) :=
          mul_le_mul_of_nonneg_right (opn_mul _ _) (opn_nonneg _)
      _ = _ := by rw [opn_conjTranspose]
  rw [opn_one] at h1
  have h0 := opn_nonneg g
  have hH := opn_nonneg (Formalism.QuantumDeterminants.Hpk k r)
  have h3 : (1 : ℝ) ^ 2 ≤ (opn (Formalism.QuantumDeterminants.Hpk k r) * opn g) ^ 2 := by nlinarith
  have hx := sq_le_sq.mp h3
  rwa [abs_one, abs_of_nonneg (mul_nonneg hH h0)] at hx

theorem one_le_opn_Hpk_rpow_mul_opn_rpow {g : Mat k r} (hg : g ∈ Gr k r) :
    1 ≤ opn (Formalism.QuantumDeterminants.Hpk k r) ^ N1H k r * opn g ^ N1H k r := by
  rw [← Real.mul_rpow (opn_nonneg _) (opn_nonneg _)]
  exact Real.one_le_rpow (one_le_opn hg) nilradical_half_sum_nonneg

theorem opn_rpow_mul (a b : Mat k r) : opn (a * b) ^ N1H k r ≤ opn a ^ N1H k r * opn b ^ N1H k r := by
  rw [← Real.mul_rpow (opn_nonneg _) (opn_nonneg _)]
  exact Real.rpow_le_rpow (opn_nonneg _) (opn_mul _ _) nilradical_half_sum_nonneg

theorem ae_fst {μW μN : Measure (Formalism.QuantumDeterminants.Mt k r)} [SFinite μN] {U : Set (Mat k r)}
    (hU : μW {x | Matrix.of x ∉ U} = 0) : ∀ᵐ p ∂(μW.prod μN), Matrix.of p.1 ∈ U := by
  rw [ae_iff]
  have : {p : Formalism.QuantumDeterminants.Mt k r × Formalism.QuantumDeterminants.Mt k r | ¬ Matrix.of p.1 ∈ U} =
      {x | Matrix.of x ∉ U} ×ˢ Set.univ := by ext p; simp
  rw [this, Measure.prod_prod, hU, zero_mul]

theorem ae_snd {μW μN : Measure (Formalism.QuantumDeterminants.Mt k r)} [SFinite μN] {U : Set (Mat k r)}
    (hU : μN {x | Matrix.of x ∉ U} = 0) : ∀ᵐ p ∂(μW.prod μN), Matrix.of p.2 ∈ U := by
  rw [ae_iff]
  have : {p : Formalism.QuantumDeterminants.Mt k r × Formalism.QuantumDeterminants.Mt k r | ¬ Matrix.of p.2 ∈ U} =
      Set.univ ×ˢ {x | Matrix.of x ∉ U} := by ext p; simp
  rw [this, Measure.prod_prod, hU, mul_zero]

section Int

variable {z : Fin (2 * r + k + 1) → ℂ} {c : Fin r → ℂ} {H : Type} [NormedAddCommGroup H]
  [InnerProductSpace ℂ H] {σ : Mat k r → (H →L[ℂ] H)} {Vp : Type} [NormedAddCommGroup Vp]
  [InnerProductSpace ℂ Vp] {π : Mat k r → (Vp →L[ℂ] Vp)}

theorem inner_iso {T : H →L[ℂ] H} (hT : ∀ v, ‖T v‖ = ‖v‖) (u v : H) : ⟪T u, T v⟫_ℂ = ⟪u, v⟫_ℂ := by
  let L : H →ₗᵢ[ℂ] H := { toLinearMap := (T : H →ₗ[ℂ] H), norm_map' := hT }
  exact L.inner_map_map u v

theorem bInt_enorm (hσ : IsURepOn (Gr k r) σ) {x : Mat k r} (hx : x ∈ Gr k r) (w' w : H) (ξ : Vp)
    (p : Formalism.QuantumDeterminants.Mt k r × Formalism.QuantumDeterminants.Mt k r) (hpG : Matrix.of p.1 * Matrix.of p.2 ∈ Gr k r)
    (hψ : ‖psiGen k r z c (Matrix.of p.2)‖ = 1) (hπ : ‖π (Matrix.of p.1)⁻¹ ξ‖ = ‖ξ‖) :
    ‖bInt z c σ π w' ξ (σ x w) p‖ₑ = ‖ξ‖ₑ * ‖⟪w', σ (Matrix.of (mulP p) * x) w⟫_ℂ‖ₑ := by
  have hm : σ (Matrix.of p.1 * Matrix.of p.2 * x) = (σ (Matrix.of p.1 * Matrix.of p.2)).comp (σ x) :=
    hσ.1.2 _ hpG _ hx
  have hmP : Matrix.of (mulP p) = Matrix.of p.1 * Matrix.of p.2 := rfl
  have hr : ‖bInt z c σ π w' ξ (σ x w) p‖ = ‖ξ‖ * ‖⟪w', σ (Matrix.of (mulP p) * x) w⟫_ℂ‖ := by
    unfold bInt
    rw [norm_smul, norm_mul, norm_star, hψ, hπ, hmP, hm, ContinuousLinearMap.comp_apply]
    ring
  rw [← ofReal_norm, hr, ENNReal.ofReal_mul (norm_nonneg _), ofReal_norm,
    ofReal_norm]

end Int

section Main

variable {z : Fin (2 * r + k + 1) → ℂ} {c : Fin r → ℂ} {u : Fin k → ℝ} {v : Fin (k - 1) → ℝ}
  {b : Fin (2 * r + 2) → ℝ} {H : Type} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]
  {σ : Mat k r → (H →L[ℂ] H)} {Vp : Type} [NormedAddCommGroup Vp] [InnerProductSpace ℂ Vp]
  [FiniteDimensional ℂ Vp] {π : Mat k r → (Vp →L[ℂ] Vp)} {w : H}
  {μG μS ν μW μN : Measure (Formalism.QuantumDeterminants.Mt k r)}

theorem facts (hSG : SGrp) (hPU : PiUnit) (hSig : SigmaG) (hyp : Hyp k r z c u v b σ π w μG μS ν μW μN) :
    IsURepOn (Gr k r) σ ∧ Formalism.QuantumDeterminants.UWset k r z ⊆ Gr k r ∧ Formalism.QuantumDeterminants.Nset k r ⊆ Gr k r ∧
      (∀ h ∈ Formalism.QuantumDeterminants.UWset k r z, h⁻¹ ∈ Formalism.QuantumDeterminants.UWset k r z) ∧
      (∀ m ∈ Formalism.QuantumDeterminants.Nset k r, ‖psiGen k r z c m‖ = 1) ∧
      (∀ h ∈ Formalism.QuantumDeterminants.UWset k r z, ∀ ξ : Vp, ‖π h ξ‖ = ‖ξ‖) := by
  obtain ⟨hset, hDS, hHC, -⟩ := hyp
  obtain ⟨-, -, hz, hT, -⟩ := hset
  obtain ⟨hW, hN, hWg, hNg, -⟩ := hSG k r z c hz hT
  refine ⟨hSig k r _ _ H σ hDS, hW, hN, fun h hh => (hWg h hh h hh).2.1,
    fun m hm => (hNg m hm m hm).2.2.2.2, (hPU k r z u Vp π hz hT hHC).2⟩

def wcoef (σ : Mat k r → (H →L[ℂ] H)) (w' w : H) (e : ℝ) (y : Formalism.QuantumDeterminants.Mt k r) : ℝ≥0∞ :=
  {y : Formalism.QuantumDeterminants.Mt k r | Matrix.of y ∈ Gr k r}.indicator
    (fun y => ENNReal.ofReal (‖⟪w', σ (Matrix.of y) w⟫_ℂ‖ * opn (Matrix.of y) ^ e)) y

theorem wcoef_meas (hσ : IsURepOn (Gr k r) σ) (w' w : H) {e : ℝ} (he : 0 ≤ e) :
    Measurable (wcoef σ w' w e) := by
  have h1 : ContinuousOn (fun y : Formalism.QuantumDeterminants.Mt k r => σ (Matrix.of y) w) {y | Matrix.of y ∈ Gr k r} :=
    (hσ.2.2 w).comp Grp.continuous_of.continuousOn (fun y hy => hy)
  have h2 := ContinuousOn.inner (𝕜 := ℂ) (continuousOn_const (c := w')) h1
  have h3 : ContinuousOn (fun y : Formalism.QuantumDeterminants.Mt k r => opn (Matrix.of y) ^ e) {y | Matrix.of y ∈ Gr k r} :=
    ((opn_continuous.comp Grp.continuous_of).continuousOn).rpow_const (fun _ _ => Or.inr he)
  have hc := ENNReal.continuous_ofReal.comp_continuousOn (h2.norm.mul h3)
  have hm := ContinuousOn.measurable_piecewise hc (continuous_const (y := (0 : ℝ≥0∞))).continuousOn
    Grp.measurableSet_Gr
  have heq : wcoef σ w' w e = {y : Formalism.QuantumDeterminants.Mt k r | Matrix.of y ∈ Gr k r}.piecewise
      (ENNReal.ofReal ∘ ((fun x => ‖⟪w', σ (Matrix.of x) w⟫_ℂ‖) * fun y => opn (Matrix.of y) ^ e))
      (fun _ => 0) := by
    funext y
    by_cases hy : y ∈ {y : Formalism.QuantumDeterminants.Mt k r | Matrix.of y ∈ Gr k r}
    · rw [Set.piecewise_eq_of_mem _ _ _ hy]; unfold wcoef; rw [Set.indicator_of_mem hy]; rfl
    · rw [Set.piecewise_eq_of_notMem _ _ _ hy]; unfold wcoef; rw [Set.indicator_of_notMem hy]
  rw [heq]
  exact hm

theorem G_int (hDec : Decay) (hCW : CoefWeightedLoc) (hσ : IsURepOn (Gr k r) σ)
    (hyp : Hyp k r z c u v b σ π w μG μS ν μW μN) {x₀ : Mat k r} (hx₀ : x₀ ∈ Gr k r) :
    ∫⁻ y, wcoef σ (σ x₀ w) w (N1H k r) y ∂μG < ⊤ := by
  have hDecI := hDec hCW k r z c u v b H σ Vp π w μG μS ν μW μN hyp
  obtain ⟨-, -, -, -, hG, -⟩ := hyp
  have hGinv := hG.2.2.2 x₀ hx₀
  have hlm : Measurable (Formalism.QuantumDeterminants.lmulM (k := k) (r := r) x₀) := by
    have : Continuous (Formalism.QuantumDeterminants.lmulM (k := k) (r := r) x₀) :=
      continuous_const.matrix_mul Grp.continuous_of
    exact this.measurable
  rw [← hGinv, lintegral_map
    (wcoef_meas hσ (σ x₀ w) w (nilradical_half_sum_nonneg (k := k) (r := r))) hlm]
  have hbound : ∀ᵐ y ∂μG, wcoef σ (σ x₀ w) w (N1H k r) (Formalism.QuantumDeterminants.lmulM x₀ y) ≤
      ENNReal.ofReal (opn x₀ ^ N1H k r) *
        (‖⟪w, σ (Matrix.of y) w⟫_ℂ‖ₑ * ENNReal.ofReal (opn (Matrix.of y) ^ N1H k r)) := by
    filter_upwards [ae_iff.mpr hG.2.2.1] with y hy
    have hxy : Matrix.of (Formalism.QuantumDeterminants.lmulM x₀ y) ∈ Gr k r := Grp.mul_mem hx₀ hy
    unfold wcoef
    rw [Set.indicator_of_mem (show Formalism.QuantumDeterminants.lmulM x₀ y ∈ {y : Formalism.QuantumDeterminants.Mt k r | Matrix.of y ∈ Gr k r} from hxy)]
    show ENNReal.ofReal (‖⟪σ x₀ w, σ (x₀ * Matrix.of y) w⟫_ℂ‖ * opn (x₀ * Matrix.of y) ^ N1H k r) ≤ _
    have hm : σ (x₀ * Matrix.of y) w = σ x₀ (σ (Matrix.of y) w) := by
      rw [hσ.1.2 x₀ hx₀ _ hy]; rfl
    rw [hm, inner_iso (hσ.2.1 x₀ hx₀), ← ofReal_norm,
      ← ENNReal.ofReal_mul (norm_nonneg _),
      ← ENNReal.ofReal_mul (Real.rpow_nonneg (opn_nonneg _) _)]
    apply ENNReal.ofReal_le_ofReal
    have := opn_rpow_mul x₀ (Matrix.of y)
    calc ‖⟪w, σ (Matrix.of y) w⟫_ℂ‖ * opn (x₀ * Matrix.of y) ^ N1H k r
        ≤ ‖⟪w, σ (Matrix.of y) w⟫_ℂ‖ * (opn x₀ ^ N1H k r * opn (Matrix.of y) ^ N1H k r) :=
          mul_le_mul_of_nonneg_left this (norm_nonneg _)
      _ = _ := by ring
  calc ∫⁻ y, wcoef σ (σ x₀ w) w (N1H k r) (Formalism.QuantumDeterminants.lmulM x₀ y) ∂μG
      ≤ ∫⁻ y, ENNReal.ofReal (opn x₀ ^ N1H k r) *
        (‖⟪w, σ (Matrix.of y) w⟫_ℂ‖ₑ * ENNReal.ofReal (opn (Matrix.of y) ^ N1H k r)) ∂μG :=
        lintegral_mono_ae hbound
    _ = ENNReal.ofReal (opn x₀ ^ N1H k r) * ∫⁻ y, ‖⟪w, σ (Matrix.of y) w⟫_ℂ‖ₑ *
        ENNReal.ofReal (opn (Matrix.of y) ^ N1H k r) ∂μG :=
        lintegral_const_mul' _ _ ENNReal.ofReal_ne_top
    _ < ⊤ := ENNReal.mul_lt_top ENNReal.ofReal_lt_top hDecI

theorem wcoef_zero_le (w' w : H) (y : Formalism.QuantumDeterminants.Mt k r) :
    wcoef σ w' w 0 y ≤ ENNReal.ofReal (opn (Formalism.QuantumDeterminants.Hpk k r) ^ N1H k r) * wcoef σ w' w (N1H k r) y := by
  unfold wcoef
  by_cases hy : Matrix.of y ∈ Gr k r
  · have hy' : y ∈ {y : Formalism.QuantumDeterminants.Mt k r | Matrix.of y ∈ Gr k r} := hy
    rw [Set.indicator_of_mem hy', Set.indicator_of_mem hy', Real.rpow_zero, mul_one,
      ← ENNReal.ofReal_mul (Real.rpow_nonneg (opn_nonneg _) _)]
    apply ENNReal.ofReal_le_ofReal
    nlinarith [one_le_opn_Hpk_rpow_mul_opn_rpow hy,
      norm_nonneg (⟪w', σ (Matrix.of y) w⟫_ℂ)]
  · have hy' : y ∉ {y : Formalism.QuantumDeterminants.Mt k r | Matrix.of y ∈ Gr k r} := hy
    rw [Set.indicator_of_notMem hy']
    exact zero_le

theorem A_bound (hSG : SGrp) (hPU : PiUnit) (hSig : SigmaG) (hyp : Hyp k r z c u v b σ π w μG μS ν μW μN)
    (x₀ : Mat k r) (ξ : Vp) (x : Formalism.QuantumDeterminants.Mt k r) (hx : Matrix.of x ∈ Gr k r) (e q : ℝ)
    (hqle : ∀ s ∈ Formalism.QuantumDeterminants.Sset k r z, q ≤ opn (s * Matrix.of x) ^ e) :
    ‖Af z c σ π μW μN w x₀ ξ (Matrix.of x)‖ₑ * ENNReal.ofReal q ≤
      ‖ξ‖ₑ * ∫⁻ p, wcoef σ (σ x₀ w) w e (fun i j => (Matrix.of (mulP p) * Matrix.of x) i j) ∂(μW.prod μN) := by
  obtain ⟨hσ, hWG, hNG, hWinv, hψ, hπ⟩ := facts hSG hPU hSig hyp
  obtain ⟨-, -, -, -, -, -, -, hW, hN, -⟩ := hyp
  have := hN.1
  show ‖∫ p, bInt z c σ π (σ x₀ w) ξ (σ (Matrix.of x) w) p ∂(μW.prod μN)‖ₑ * ENNReal.ofReal q ≤ _
  calc ‖∫ p, bInt z c σ π (σ x₀ w) ξ (σ (Matrix.of x) w) p ∂(μW.prod μN)‖ₑ * ENNReal.ofReal q
      ≤ (∫⁻ p, ‖bInt z c σ π (σ x₀ w) ξ (σ (Matrix.of x) w) p‖ₑ ∂(μW.prod μN)) * ENNReal.ofReal q := by
        gcongr; exact enorm_integral_le_lintegral_enorm _
    _ = ∫⁻ p, ‖bInt z c σ π (σ x₀ w) ξ (σ (Matrix.of x) w) p‖ₑ * ENNReal.ofReal q ∂(μW.prod μN) :=
        (lintegral_mul_const' _ _ ENNReal.ofReal_ne_top).symm
    _ ≤ ∫⁻ p, ‖ξ‖ₑ * wcoef σ (σ x₀ w) w e (fun i j => (Matrix.of (mulP p) * Matrix.of x) i j)
        ∂(μW.prod μN) := by
        apply lintegral_mono_ae
        filter_upwards [ae_fst (μN := μN) hW.2.2.1,
          ae_snd (μW := μW) hN.2.2.1] with p h1 h2
        have hpG : Matrix.of p.1 * Matrix.of p.2 ∈ Gr k r := Grp.mul_mem (hWG h1) (hNG h2)
        rw [bInt_enorm hσ hx (σ x₀ w) w ξ p hpG (hψ _ h2) (hπ _ (hWinv _ h1) ξ)]
        have hyG : Matrix.of (fun i j => (Matrix.of (mulP p) * Matrix.of x) i j) ∈ Gr k r :=
          Grp.mul_mem hpG hx
        unfold wcoef
        rw [Set.indicator_of_mem (show (fun i j => (Matrix.of (mulP p) * Matrix.of x) i j) ∈
          {y : Formalism.QuantumDeterminants.Mt k r | Matrix.of y ∈ Gr k r} from hyG),
          ENNReal.ofReal_mul (norm_nonneg _), ofReal_norm, mul_assoc]
        gcongr
        · exact le_rfl
        · exact hqle _ ⟨_, h1, _, h2, rfl⟩
    _ = ‖ξ‖ₑ * ∫⁻ p, wcoef σ (σ x₀ w) w e (fun i j => (Matrix.of (mulP p) * Matrix.of x) i j)
        ∂(μW.prod μN) := lintegral_const_mul' _ _ enorm_ne_top

theorem nu_bound (hSG : SGrp) (hPU : PiUnit) (hSig : SigmaG) (hSP : SProd)
    (hyp : Hyp k r z c u v b σ π w μG μS ν μW μN) (x₀ : Mat k r) (ξ : Vp) (e : ℝ) (he : 0 ≤ e)
    (hfin : ∫⁻ y, wcoef σ (σ x₀ w) w e y ∂μG < ⊤) (q : Formalism.QuantumDeterminants.Mt k r → ℝ)
    (hqle : ∀ x, Matrix.of x ∈ Gr k r → ∀ s ∈ Formalism.QuantumDeterminants.Sset k r z, q x ≤ opn (s * Matrix.of x) ^ e) :
    ∫⁻ x, ‖Af z c σ π μW μN w x₀ ξ (Matrix.of x)‖ₑ * ENNReal.ofReal (q x) ∂ν < ⊤ := by
  obtain ⟨cS, -, hcS, hU⟩ := unfold_of hSP hyp
  have hnu := nu_conc_of hSG hyp
  have hσ := (facts hSG hPU hSig hyp).1
  have hae : ∀ᵐ x ∂ν, Matrix.of x ∈ Gr k r := ae_iff.mpr hnu
  calc ∫⁻ x, ‖Af z c σ π μW μN w x₀ ξ (Matrix.of x)‖ₑ * ENNReal.ofReal (q x) ∂ν
      ≤ ∫⁻ x, ‖ξ‖ₑ * ∫⁻ p, wcoef σ (σ x₀ w) w e (fun i j => (Matrix.of (mulP p) * Matrix.of x) i j)
        ∂(μW.prod μN) ∂ν := by
        apply lintegral_mono_ae
        filter_upwards [hae] with x hx
        exact A_bound hSG hPU hSig hyp x₀ ξ x hx e (q x) (hqle x hx)
    _ = ‖ξ‖ₑ * (cS * ∫⁻ y, wcoef σ (σ x₀ w) w e y ∂μG) := by
        rw [lintegral_const_mul' _ _ enorm_ne_top, hU _ (wcoef_meas hσ _ _ he)]
    _ < ⊤ := ENNReal.mul_lt_top enorm_lt_top (ENNReal.mul_lt_top (lt_top_iff_ne_top.mpr hcS) hfin)

theorem wave_packet_l1_finite (hSG : SGrp) (hPU : PiUnit) (hSig : SigmaG) (hSP : SProd) (hDec : Decay)
    (hCW : CoefWeightedLoc) (hyp : Hyp k r z c u v b σ π w μG μS ν μW μN)
    {x₀ : Mat k r} (hx₀ : x₀ ∈ Gr k r) (ξ : Vp) :
    ∫⁻ x, ‖Af z c σ π μW μN w x₀ ξ (Matrix.of x)‖ₑ ∂ν < ⊤ := by
  have hσ := (facts hSG hPU hSig hyp).1
  have hfin : ∫⁻ y, wcoef σ (σ x₀ w) w 0 y ∂μG < ⊤ := by
    calc ∫⁻ y, wcoef σ (σ x₀ w) w 0 y ∂μG
        ≤ ∫⁻ y, ENNReal.ofReal (opn (Formalism.QuantumDeterminants.Hpk k r) ^ N1H k r) * wcoef σ (σ x₀ w) w (N1H k r) y ∂μG :=
          lintegral_mono (fun y => wcoef_zero_le _ _ y)
      _ = ENNReal.ofReal (opn (Formalism.QuantumDeterminants.Hpk k r) ^ N1H k r) * ∫⁻ y, wcoef σ (σ x₀ w) w (N1H k r) y ∂μG :=
          lintegral_const_mul' _ _ ENNReal.ofReal_ne_top
      _ < ⊤ := ENNReal.mul_lt_top ENNReal.ofReal_lt_top (G_int hDec hCW hσ hyp hx₀)
  have h := nu_bound hSG hPU hSig hSP hyp x₀ ξ 0 le_rfl hfin (fun _ => 1)
    (fun x _ s _ => by rw [Real.rpow_zero])
  simpa only [ENNReal.ofReal_one, mul_one] using h

theorem aWeighted_of (hSG : SGrp) (hPU : PiUnit) (hSig : SigmaG) (hSP : SProd) (hDec : Decay) :
    AWeighted := by
  intro k r z c u v b H _ _ _ σ Vp _ _ _ π w μG μS ν μW μN hyp _ hCW x₀ hx₀ ξ
  have hσ := (facts hSG hPU hSig hyp).1
  refine nu_bound hSG hPU hSig hSP hyp x₀ ξ (N1H k r) nilradical_half_sum_nonneg (G_int hDec hCW hσ hyp hx₀)
    (fun x => nuH k r z (Matrix.of x) ^ N1H k r) ?_
  intro x _ s hs
  have hbdd : BddBelow (Set.range fun t : Formalism.QuantumDeterminants.Sset k r z => opn ((t : Mat k r) * Matrix.of x)) :=
    ⟨0, by rintro _ ⟨t, rfl⟩; exact opn_nonneg _⟩
  have h1 : nuH k r z (Matrix.of x) ≤ opn (s * Matrix.of x) :=
    ciInf_le hbdd (⟨s, hs⟩ : Formalism.QuantumDeterminants.Sset k r z)
  have h0 : 0 ≤ nuH k r z (Matrix.of x) := Real.iInf_nonneg (fun t => opn_nonneg _)
  exact Real.rpow_le_rpow h0 h1 nilradical_half_sum_nonneg

theorem substE (hSG : SGrp) (hWR : WRightInv) (hNU : NUnimod) (hyp : Hyp k r z c u v b σ π w μG μS ν μW μN)
    {h m : Mat k r} (hh : h ∈ Formalism.QuantumDeterminants.UWset k r z) (hm : m ∈ Formalism.QuantumDeterminants.Nset k r) :
    ∃ E : (Formalism.QuantumDeterminants.Mt k r × Formalism.QuantumDeterminants.Mt k r) ≃ᵐ (Formalism.QuantumDeterminants.Mt k r × Formalism.QuantumDeterminants.Mt k r),
      (μW.prod μN).map E = μW.prod μN ∧
      ∀ p, Matrix.of (E p).1 * Matrix.of (E p).2 * (h * m) = Matrix.of p.1 * Matrix.of p.2 := by
  obtain ⟨hset, -, -, -, -, -, -, hW, hN, hWfin, hNK⟩ := hyp
  obtain ⟨-, -, hz, hT, -⟩ := hset
  obtain ⟨hWG, hNG, hWg, hNg, hconj⟩ := hSG k r z c hz hT
  have hhG := hWG hh
  have hmG := hNG hm
  have hhi : h⁻¹ ∈ Formalism.QuantumDeterminants.UWset k r z := (hWg h hh h hh).2.1
  have hih : h⁻¹ * h = 1 := Grp.inv_mul hhG
  have hhi' : h * h⁻¹ = 1 := Grp.mul_inv hhG
  have hinv2 : (h⁻¹)⁻¹ = h :=
    Matrix.nonsing_inv_nonsing_inv h (Matrix.isUnit_det_of_right_inverse hhi')
  have hmi : m⁻¹ ∈ Formalism.QuantumDeterminants.Nset k r := (hNg m hm m hm).2.1
  have hmim : m⁻¹ * m = 1 := Grp.inv_mul hmG
  obtain ⟨hm₀, -⟩ := hconj h⁻¹ hhi m⁻¹ hmi
  rw [hinv2] at hm₀
  obtain ⟨m₀, hm₀def⟩ : ∃ m₀ : Mat k r, m₀ = h * m⁻¹ * h⁻¹ := ⟨_, rfl⟩
  rw [← hm₀def] at hm₀
  have hm₀G := hNG hm₀
  have hW1 := hWR k r z μW hz hT hW hWfin h⁻¹ hhi
  have hN1 := hNU k r z μN hz hT hN hNK h⁻¹ hhi m₀ hm₀
  rw [hinv2] at hN1
  have h3 : h⁻¹ * m₀ * (m₀⁻¹ * h) = 1 := by
    rw [Matrix.mul_assoc, AE.cancel (Grp.mul_inv hm₀G), hih]
  have h4 : m₀⁻¹ * h * (h⁻¹ * m₀) = 1 := by
    rw [Matrix.mul_assoc, AE.cancel hhi', Grp.inv_mul hm₀G]
  let e₁ := AE.affE (k := k) (r := r) 1 1 h⁻¹ h (Matrix.one_mul 1) (Matrix.one_mul 1) hih hhi'
  let e₂ := AE.affE (k := k) (r := r) h h⁻¹ (h⁻¹ * m₀) (m₀⁻¹ * h) hih hhi' h3 h4
  have he₁ : μW.map e₁ = μW := by
    have : (e₁ : Formalism.QuantumDeterminants.Mt k r → Formalism.QuantumDeterminants.Mt k r) = fun x => fun i j => (Matrix.of x * h⁻¹) i j := by
      funext x i j
      show ((1 : Mat k r) * Matrix.of x * h⁻¹) i j = _
      rw [Matrix.one_mul]
    rw [this, hW1]
  have he₂ : μN.map e₂ = μN := by
    have : (e₂ : Formalism.QuantumDeterminants.Mt k r → Formalism.QuantumDeterminants.Mt k r) =
        fun x => fun i j => (h * Matrix.of x * h⁻¹ * m₀) i j := by
      funext x i j
      show (h * Matrix.of x * (h⁻¹ * m₀)) i j = _
      rw [← Matrix.mul_assoc (h * Matrix.of x)]
    rw [this, hN1]
  refine ⟨e₁.prodCongr e₂, ?_, ?_⟩
  · have := hW.1
    have := hN.1
    show (μW.prod μN).map (Prod.map e₁ e₂) = _
    rw [← Measure.map_prod_map μW μN e₁.measurable e₂.measurable, he₁, he₂]
  · intro p
    show (1 * Matrix.of p.1 * h⁻¹) * (h * Matrix.of p.2 * (h⁻¹ * m₀)) * (h * m) = _
    rw [hm₀def]
    simp only [Matrix.one_mul, Matrix.mul_assoc]
    rw [AE.cancel hih, AE.cancel hih, AE.cancel hih, hmim, Matrix.mul_one]

def aF (σ : Mat k r → (H →L[ℂ] H)) (w' w : H) (μW μN : Measure (Formalism.QuantumDeterminants.Mt k r)) (x : Mat k r) : ℝ≥0∞ :=
  ∫⁻ p, wcoef σ w' w 0 (fun i j => (Matrix.of (mulP p) * x) i j) ∂(μW.prod μN)

theorem aF_inv (hSG : SGrp) (hWR : WRightInv) (hNU : NUnimod) (hyp : Hyp k r z c u v b σ π w μG μS ν μW μN)
    (w' : H) {h m : Mat k r} (hh : h ∈ Formalism.QuantumDeterminants.UWset k r z) (hm : m ∈ Formalism.QuantumDeterminants.Nset k r) (x : Mat k r) :
    aF σ w' w μW μN (h * m * x) = aF σ w' w μW μN x := by
  obtain ⟨E, hE, hEp⟩ := substE hSG hWR hNU hyp hh hm
  unfold aF
  conv_lhs => rw [← hE]
  rw [lintegral_map_equiv]
  refine lintegral_congr (fun p => ?_)
  show wcoef σ w' w 0 (fun i j => (Matrix.of (E p).1 * Matrix.of (E p).2 * (h * m * x)) i j) =
    wcoef σ w' w 0 (fun i j => (Matrix.of p.1 * Matrix.of p.2 * x) i j)
  rw [show Matrix.of (E p).1 * Matrix.of (E p).2 * (h * m * x) = Matrix.of p.1 * Matrix.of p.2 * x by
    rw [← hEp p]; simp only [Matrix.mul_assoc]]

theorem aF_meas (hσ : IsURepOn (Gr k r) σ) (w' w : H) (μW μN : Measure (Formalism.QuantumDeterminants.Mt k r)) [SFinite μW]
    [SFinite μN] : Measurable (fun y : Formalism.QuantumDeterminants.Mt k r => aF σ w' w μW μN (Matrix.of y)) := by
  have hc : Continuous (fun q : Formalism.QuantumDeterminants.Mt k r × (Formalism.QuantumDeterminants.Mt k r × Formalism.QuantumDeterminants.Mt k r) =>
      (fun i j => (Matrix.of (mulP q.2) * Matrix.of q.1) i j : Formalism.QuantumDeterminants.Mt k r)) := by
    have h1 : Continuous fun q : Formalism.QuantumDeterminants.Mt k r × (Formalism.QuantumDeterminants.Mt k r × Formalism.QuantumDeterminants.Mt k r) =>
        (Matrix.of (mulP q.2) : Mat k r) := continuous_mulP.comp continuous_snd
    have h2 : Continuous fun q : Formalism.QuantumDeterminants.Mt k r × (Formalism.QuantumDeterminants.Mt k r × Formalism.QuantumDeterminants.Mt k r) =>
        (Matrix.of q.1 : Mat k r) := continuous_fst
    exact h1.matrix_mul h2
  exact ((wcoef_meas hσ w' w le_rfl).comp hc.measurable).lintegral_prod_right'

theorem aF_eq (hSG : SGrp) (hPU : PiUnit) (hSig : SigmaG) (hyp : Hyp k r z c u v b σ π w μG μS ν μW μN)
    (x₀ : Mat k r) (ξ : Vp) {y : Mat k r} (hy : y ∈ Gr k r) :
    ∫⁻ p, ‖bInt z c σ π (σ x₀ w) ξ (σ y w) p‖ₑ ∂(μW.prod μN) = ‖ξ‖ₑ * aF σ (σ x₀ w) w μW μN y := by
  obtain ⟨hσ, hWG, hNG, hWinv, hψ, hπ⟩ := facts hSG hPU hSig hyp
  obtain ⟨-, -, -, -, -, -, -, hW, hN, -⟩ := hyp
  have := hN.1
  unfold aF
  rw [← lintegral_const_mul' _ _ enorm_ne_top]
  apply lintegral_congr_ae
  filter_upwards [ae_fst (μN := μN) hW.2.2.1,
    ae_snd (μW := μW) hN.2.2.1] with p h1 h2
  have hpG : Matrix.of p.1 * Matrix.of p.2 ∈ Gr k r := Grp.mul_mem (hWG h1) (hNG h2)
  rw [bInt_enorm hσ hy (σ x₀ w) w ξ p hpG (hψ _ h2) (hπ _ (hWinv _ h1) ξ)]
  have hyG : (fun i j => (Matrix.of (mulP p) * y) i j : Formalism.QuantumDeterminants.Mt k r) ∈
      {y : Formalism.QuantumDeterminants.Mt k r | Matrix.of y ∈ Gr k r} := Grp.mul_mem hpG hy
  unfold wcoef
  rw [Set.indicator_of_mem hyG, Real.rpow_zero, mul_one, ofReal_norm]
  rfl

def Fq (σ : Mat k r → (H →L[ℂ] H)) (w' w : H) (μW μN : Measure (Formalism.QuantumDeterminants.Mt k r)) (ξ : Vp)
    (y : Formalism.QuantumDeterminants.Mt k r) : ℝ≥0∞ :=
  wcoef σ w' w 0 y * (‖ξ‖ₑ * aF σ w' w μW μN (Matrix.of y))

theorem wave_packet_l2_finite (hSG : SGrp) (hPU : PiUnit) (hSig : SigmaG) (hSP : SProd) (hDec : Decay) (hWR : WRightInv)
    (hNU : NUnimod) (hAB : ABound) (hR : Formalism.L2.SG.HCReprodM.HCReprodDSm) (hCW : CoefWeightedLoc)
    (hyp : Hyp k r z c u v b σ π w μG μS ν μW μN) {x₀ : Mat k r} (hx₀ : x₀ ∈ Gr k r) (ξ : Vp) :
    l2SG ν (Af z c σ π μW μN w x₀ ξ) < ⊤ := by
  obtain ⟨C, hC0, hC⟩ := hAB k r z c u v b H σ Vp π w μG μS ν μW μN hyp hR hCW x₀ hx₀ ξ
  obtain ⟨cS, -, hcS, hU⟩ := unfold_of hSP hyp
  have hnu := nu_conc_of hSG hyp
  have hσ := (facts hSG hPU hSig hyp).1
  have hGfin := G_int hDec hCW hσ hyp hx₀
  have hG := hyp.2.2.2.2.1
  have hW := hyp.2.2.2.2.2.2.2.1
  have hN := hyp.2.2.2.2.2.2.2.2.1
  have := hW.1
  have := hN.1
  have hWc := ae_fst (μN := μN) hW.2.2.1
  have hNc := ae_snd (μW := μW) hN.2.2.1
  have hf₀m : Measurable (wcoef σ (σ x₀ w) w 0) := wcoef_meas hσ _ _ le_rfl
  have hFm : Measurable (Fq σ (σ x₀ w) w μW μN ξ) :=
    hf₀m.mul ((aF_meas hσ _ _ μW μN).const_mul _)
  have hae : ∀ᵐ x ∂ν, Matrix.of x ∈ Gr k r := ae_iff.mpr hnu
  have hpt : ∀ x : Formalism.QuantumDeterminants.Mt k r, Matrix.of x ∈ Gr k r →
      (‖Af z c σ π μW μN w x₀ ξ (Matrix.of x)‖₊ : ℝ≥0∞) ^ 2 ≤
        ‖ξ‖ₑ * ∫⁻ p, Fq σ (σ x₀ w) w μW μN ξ (fun i j => (Matrix.of (mulP p) * Matrix.of x) i j)
          ∂(μW.prod μN) := by
    intro x hx
    have h1 := A_bound hSG hPU hSig hyp x₀ ξ x hx 0 1 (fun s _ => by rw [Real.rpow_zero])
    rw [ENNReal.ofReal_one, mul_one] at h1
    have h1' : ‖Af z c σ π μW μN w x₀ ξ (Matrix.of x)‖ₑ ≤ ‖ξ‖ₑ * aF σ (σ x₀ w) w μW μN (Matrix.of x) := h1
    have hmeasp : Measurable (fun p : Formalism.QuantumDeterminants.Mt k r × Formalism.QuantumDeterminants.Mt k r =>
        wcoef σ (σ x₀ w) w 0 (fun i j => (Matrix.of (mulP p) * Matrix.of x) i j)) := by
      have : Continuous (fun p : Formalism.QuantumDeterminants.Mt k r × Formalism.QuantumDeterminants.Mt k r =>
          (fun i j => (Matrix.of (mulP p) * Matrix.of x) i j : Formalism.QuantumDeterminants.Mt k r)) :=
        continuous_mulP.matrix_mul continuous_const
      exact hf₀m.comp this.measurable
    calc (‖Af z c σ π μW μN w x₀ ξ (Matrix.of x)‖₊ : ℝ≥0∞) ^ 2
        = ‖Af z c σ π μW μN w x₀ ξ (Matrix.of x)‖ₑ * ‖Af z c σ π μW μN w x₀ ξ (Matrix.of x)‖ₑ := by
          rw [sq, enorm_eq_nnnorm]
      _ ≤ (‖ξ‖ₑ * aF σ (σ x₀ w) w μW μN (Matrix.of x)) * (‖ξ‖ₑ * aF σ (σ x₀ w) w μW μN (Matrix.of x)) :=
          mul_le_mul' h1' h1'
      _ = ‖ξ‖ₑ * ∫⁻ p, wcoef σ (σ x₀ w) w 0 (fun i j => (Matrix.of (mulP p) * Matrix.of x) i j) *
            (‖ξ‖ₑ * aF σ (σ x₀ w) w μW μN (Matrix.of x)) ∂(μW.prod μN) := by
          rw [lintegral_mul_const _ hmeasp, mul_assoc]
          rfl
      _ = ‖ξ‖ₑ * ∫⁻ p, Fq σ (σ x₀ w) w μW μN ξ (fun i j => (Matrix.of (mulP p) * Matrix.of x) i j)
            ∂(μW.prod μN) := by
          refine congrArg (HMul.hMul ‖ξ‖ₑ) ?_
          apply lintegral_congr_ae
          filter_upwards [hWc, hNc] with p hp1 hp2
          show _ = wcoef σ (σ x₀ w) w 0 (fun i j => (Matrix.of (mulP p) * Matrix.of x) i j) *
            (‖ξ‖ₑ * aF σ (σ x₀ w) w μW μN (Matrix.of p.1 * Matrix.of p.2 * Matrix.of x))
          rw [aF_inv hSG hWR hNU hyp _ hp1 hp2]
  have hFb : ∀ᵐ y ∂μG, Fq σ (σ x₀ w) w μW μN ξ y ≤
      ENNReal.ofReal C * wcoef σ (σ x₀ w) w (N1H k r) y := by
    filter_upwards [ae_iff.mpr hG.2.2.1] with y hy
    have hb := hC (Matrix.of y) hy
    rw [aF_eq hSG hPU hSig hyp x₀ ξ hy] at hb
    have hy' : y ∈ {y : Formalism.QuantumDeterminants.Mt k r | Matrix.of y ∈ Gr k r} := hy
    unfold Fq
    calc wcoef σ (σ x₀ w) w 0 y * (‖ξ‖ₑ * aF σ (σ x₀ w) w μW μN (Matrix.of y))
        ≤ wcoef σ (σ x₀ w) w 0 y * ENNReal.ofReal (C * opn (Matrix.of y) ^ N1H k r) := by gcongr
      _ = ENNReal.ofReal C * wcoef σ (σ x₀ w) w (N1H k r) y := by
        unfold wcoef
        rw [Set.indicator_of_mem hy', Set.indicator_of_mem hy', Real.rpow_zero, mul_one,
          ← ENNReal.ofReal_mul (norm_nonneg _), ← ENNReal.ofReal_mul hC0]
        congr 1
        ring
  calc l2SG ν (Af z c σ π μW μN w x₀ ξ)
      = ∫⁻ x, (‖Af z c σ π μW μN w x₀ ξ (Matrix.of x)‖₊ : ℝ≥0∞) ^ 2 ∂ν := rfl
    _ ≤ ∫⁻ x, ‖ξ‖ₑ * ∫⁻ p, Fq σ (σ x₀ w) w μW μN ξ (fun i j => (Matrix.of (mulP p) * Matrix.of x) i j)
          ∂(μW.prod μN) ∂ν := by
        apply lintegral_mono_ae
        filter_upwards [hae] with x hx
        exact hpt x hx
    _ = ‖ξ‖ₑ * (cS * ∫⁻ y, Fq σ (σ x₀ w) w μW μN ξ y ∂μG) := by
        rw [lintegral_const_mul' _ _ enorm_ne_top, hU _ hFm]
    _ ≤ ‖ξ‖ₑ * (cS * ∫⁻ y, ENNReal.ofReal C * wcoef σ (σ x₀ w) w (N1H k r) y ∂μG) := by
        gcongr ‖ξ‖ₑ * (cS * ?_)
        exact lintegral_mono_ae hFb
    _ < ⊤ := by
        rw [lintegral_const_mul' _ _ ENNReal.ofReal_ne_top]
        exact ENNReal.mul_lt_top enorm_lt_top (ENNReal.mul_lt_top (lt_top_iff_ne_top.mpr hcS)
          (ENNReal.mul_lt_top ENNReal.ofReal_lt_top hGfin))

theorem wave_packet_l1_l2_of_hypotheses (hSG : SGrp) (hPU : PiUnit) (hSig : SigmaG) (hSP : SProd) (hDec : Decay)
    (hWR : WRightInv) (hNU : NUnimod) (hAB : ABound) : WavePacketL1L2 := by
  intro k r z c u v b H _ _ _ σ Vp _ _ _ π w μG μS ν μW μN hyp hR hCW x₀ hx₀ ξ
  exact ⟨wave_packet_l1_finite hSG hPU hSig hSP hDec hCW hyp hx₀ ξ,
    wave_packet_l2_finite hSG hPU hSig hSP hDec hWR hNU hAB hR hCW hyp hx₀ ξ⟩

end Main

end AQ

end WlocSk
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.WavePacketL1L2OfHypotheses =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.WavePacketL1L2OfNilpotentChart =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.WavePacketL1L2OfNilpotentChart", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.OpnContinuous\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.PsiGenNorm\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.StarOfInv\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.AKindR\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.ANonzeroOf\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.DecayR\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.HaarWN\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.L2SGWfEqOne\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.NilradicalHaarUnique\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.NilradicalUnimodularConjInvariant\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.ProductDecompositionHolds\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.RepresentationContinuous\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.RepresentationUnitary\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.SigmaDecomposition\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.SubgroupHypothesisHolds\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.UnipotentRightInvariance\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.WavePacketL1L2OfHypotheses\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.L2.SG.SplitPrimeNormLemmas

namespace WlocSk

theorem unipotent_set_compact : PtD.UWComp := fun _ _ z hz hT => HM.compactW z hz hT

theorem nIntDecay_of_chart (hNC : NChart) : NIntDecay := nIntDecay_of (nCoordHaar_of hNC nilradical_haar_unique)

theorem aInt_of_chart (hNC : NChart) : AInt :=
  PtD.wave_packet_integrable sigma_decomposition DecayR.decay_estimate DecayR.reproducing_formula_holds subgroup_hypothesis_holds representation_unitary
    (nIntDecay_of_chart hNC) unipotent_set_compact

theorem aCont_of_chart (hNC : NChart) : ACont :=
  PtD.wave_packet_continuous sigma_decomposition DecayR.decay_estimate DecayR.reproducing_formula_holds subgroup_hypothesis_holds representation_unitary
    (nIntDecay_of_chart hNC) unipotent_set_compact

theorem aBound_of_chart (hNC : NChart) : ABound :=
  PtD.aBound_of sigma_decomposition DecayR.decay_estimate DecayR.reproducing_formula_holds subgroup_hypothesis_holds representation_unitary
    (nIntDecay_of_chart hNC) unipotent_set_compact

theorem aEquiv_of_charts (hNC : NChart) (hWR : WRightInv) (hNU : NUnimod) : AEquiv :=
  aEquiv_of subgroup_hypothesis_holds representation_unitary sigma_decomposition hWR hNU (aInt_of_chart hNC)

theorem wave_packet_weighted_integrable : AWeighted :=
  AQ.aWeighted_of subgroup_hypothesis_holds representation_unitary sigma_decomposition product_decomposition_holds DecayR.decay_estimate

theorem aKind_of_chart (hNC : NChart) : AKind :=
  AK.aKind_of sigma_decomposition subgroup_hypothesis_holds (aBound_of_chart hNC) DecayR.decay_estimate Port.schur_orthogonality_relations

theorem aReprod_of_chart (hNC : NChart) : AReprod :=
  AK.aReprod_of sigma_decomposition subgroup_hypothesis_holds (aBound_of_chart hNC) DecayR.reproducing_formula_holds

theorem wave_packet_l1_l2_of_nilpotent_chart (hNC : NChart) (hWR : WRightInv) : WavePacketL1L2 :=
  AQ.wave_packet_l1_l2_of_hypotheses subgroup_hypothesis_holds representation_unitary sigma_decomposition product_decomposition_holds DecayR.decay_estimate hWR nilradical_unimodular_conj_invariant
    (aBound_of_chart hNC)

theorem aNonzero_of_charts (hNC : NChart) (hWR : WRightInv) : ANonzero :=
  ANz.aNonzero_of subgroup_hypothesis_holds representation_unitary product_decomposition_holds (aEquiv_of_charts hNC hWR nilradical_unimodular_conj_invariant)
    (aCont_of_chart hNC)

theorem wlocExists_of_charts (hNC : NChart) (hWR : WRightInv)
    (hR : Formalism.L2.SG.HCReprodM.HCReprodDSm) : WlocExists :=
  scWlocExists_of haar_measure_unipotent_nilradical (aEquiv_of_charts hNC hWR nilradical_unimodular_conj_invariant) (aCont_of_chart hNC)
    (aKind_of_chart hNC) (aReprod_of_chart hNC) (wave_packet_l1_l2_of_nilpotent_chart hNC hWR) wave_packet_weighted_integrable
    (aNonzero_of_charts hNC hWR) hR

theorem scWlocExists_of_chart (hNC : NChart) (hR : Formalism.L2.SG.HCReprodM.HCReprodDSm) : WlocExists :=
  wlocExists_of_charts hNC unipotent_right_invariance hR

end WlocSk
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LocalWeightCharts.WavePacketL1L2OfNilpotentChart =====
