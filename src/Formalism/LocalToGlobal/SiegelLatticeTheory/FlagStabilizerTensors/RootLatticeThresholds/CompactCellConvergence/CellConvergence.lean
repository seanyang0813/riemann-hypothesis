module

public import Formalism.HermitianCurvature.BigCellVanishingOfCommute
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CompactCellConvergence.MsetOfClosed
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CompactCellConvergence.PairMeasBad
public import Formalism.SharpRestriction.CuspSpanNormBounds.FrobeniusCoefficientMemLp.AmpOrbOfAmpDD
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CompactCellConvergence.EtEquiv
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CompactCellConvergence.GrowthSide
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CompactCellConvergence.PairMajInv
public import Formalism.SharpRestriction.CuspSpanNormBounds.FrobeniusCoefficientMemLp.SigmaFiniteAmplitudes.RStabInv
public import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CompactCellConvergence.ClosedExistsOfCompact
import Mathlib.Tactic.Linter.Style
import Formalism.HermitianCurvature.HermitianCurvatureProofs.UnipotentCoordinatesMeasurePreserving
import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.BesselFrame
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CompactCellConvergence.OrbitIdentity, Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CompactCellConvergence.CellConvergence

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CompactCellConvergence.OrbitIdentity =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CompactCellConvergence.OrbitIdentity", "h": "module\n\npublic import Formalism.HermitianCurvature.BigCellVanishingOfCommute\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CompactCellConvergence.MsetOfClosed\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CompactCellConvergence.PairMeasBad\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Matrix
open scoped ENNReal

noncomputable section

namespace Formalism.MainNotions.S.Pv.AmpDDPf.CC

open Formalism.QuantumDeterminants Formalism.MainNotions.S

variable {k r : ℕ}

theorem rmulF_meas (ρ : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ) :
    Measurable (Formalism.FourierDecayAlt.B.rmulF (n := 2 * r + k + 1) ρ) := by
  refine Measurable.of_eval fun i => Measurable.of_eval fun j => ?_
  simp only [Formalism.FourierDecayAlt.B.rmulF, Matrix.mul_apply, Matrix.of_apply]
  refine Finset.measurable_sum _ fun l _ => ?_
  first
  | fun_prop

theorem orbit_identity (L : LocBessel k r) {γ : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ}
    {μR : Measure (Mt k r)} (hR : Formalism.FourierDecayAlt.B.IsHaarOn (Formalism.FourierDecayAlt.C6.Rset γ) μR)
    (hRc : μR {x | Matrix.of x ∉ RStab k r γ} = 0) (hR0 : μR ≠ 0)
    {ν : Measure (PairSp k r)} (hQ : IsOrbQuot L γ μR ν)
    (F : PairSp k r → ℝ≥0∞) (hF : Measurable F)
    (hFinv : ∀ x, Good L x → ∀ a ∈ RStab k r γ, F (stabAct γ a x) = F x)
    (E : Set (Mt k r)) (hE : MeasurableSet E) (A : Set (Mt k r)) (hA : MeasurableSet A)
    (ρh : Mt k r → Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ)
    (hρ : ∀ n : Mt k r, Matrix.of n ∈ Nset k r → ρh n ∈ RStab k r γ ∧
      ∀ a : Mt k r, Matrix.of a ∈ RStab k r γ →
        ((fun i j => (Matrix.of a * Matrix.of n) i j : Mt k r) ∈ E ↔ Formalism.FourierDecayAlt.B.rmulF (ρh n) a ∈ A)) :
    ∫⁻ x, F x * E.indicator (1 : Mt k r → ℝ≥0∞) x.1.2 ∂(pairMeas L) = μR A * ∫⁻ x, F x ∂ν := by
  have hfst : Measurable (fun x : PairSp k r => x.1.2) := measurable_snd.comp measurable_fst
  have hf : Measurable (fun x : PairSp k r => F x * E.indicator (1 : Mt k r → ℝ≥0∞) x.1.2) :=
    hF.mul ((measurable_one.indicator hE).comp hfst)
  rw [hQ _ hf, ← lintegral_const_mul _ hF]
  have hgood : ∀ᵐ x ∂ν, Good L x := by
    rw [ae_iff]
    exact nu_bad L hR0 hRc hQ
  have hstab : ∀ᵐ a ∂μR, Matrix.of a ∈ RStab k r γ := by
    rw [ae_iff]
    simpa using hRc
  refine lintegral_congr_ae ?_
  filter_upwards [hgood] with x hx
  obtain ⟨hρn, hiff⟩ := hρ x.1.2 hx.1
  have hmr : Measurable (Formalism.FourierDecayAlt.B.rmulF (n := 2 * r + k + 1) (ρh x.1.2)) := rmulF_meas _
  have hin : ∀ᵐ a ∂μR, F (stabAct γ (Matrix.of a) x) *
      E.indicator (1 : Mt k r → ℝ≥0∞) (stabAct γ (Matrix.of a) x).1.2 =
      F x * ((Formalism.FourierDecayAlt.B.rmulF (n := 2 * r + k + 1) (ρh x.1.2)) ⁻¹' A).indicator 1 a := by
    filter_upwards [hstab] with a ha
    rw [hFinv x hx _ ha]
    congr 1
    have h1 := hiff a ha
    show E.indicator (1 : Mt k r → ℝ≥0∞) (fun i j => (Matrix.of a * Matrix.of x.1.2) i j) = _
    by_cases hA' : Formalism.FourierDecayAlt.B.rmulF (n := 2 * r + k + 1) (ρh x.1.2) a ∈ A
    · simp only [Set.indicator_of_mem (h1.mpr hA'), Set.indicator_of_mem (show a ∈ _ ⁻¹' A from hA'),
        Pi.one_apply]
    · simp only [Set.indicator_of_notMem (fun h => hA' (h1.mp h)),
        Set.indicator_of_notMem (show a ∉ _ ⁻¹' A from hA')]
  rw [lintegral_congr_ae hin, lintegral_const_mul _ ((measurable_one.indicator (hmr hA))),
    lintegral_indicator_one (hmr hA), ← Measure.map_apply hmr hA, hR.right _ hρn, mul_comm]

end Formalism.MainNotions.S.Pv.AmpDDPf.CC
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CompactCellConvergence.OrbitIdentity =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CompactCellConvergence.CellConvergence =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CompactCellConvergence.CellConvergence", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CompactCellConvergence.MsetOfClosed\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.FrobeniusCoefficientMemLp.AmpOrbOfAmpDD\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.UnipotentCoordinatesMeasurePreserving\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CompactCellConvergence.EtEquiv\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CompactCellConvergence.GrowthSide\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CompactCellConvergence.OrbitIdentity\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CompactCellConvergence.PairMajInv\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CompactCellConvergence.PairMeasBad\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.BesselFrame\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.FrobeniusCoefficientMemLp.SigmaFiniteAmplitudes.RStabInv\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CompactCellConvergence.ClosedExistsOfCompact\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Matrix
open scoped ENNReal

noncomputable section

namespace Formalism.MainNotions.S.Pv.AmpDDPf.CC

open Formalism.QuantumDeterminants Formalism.MainNotions.S

variable {k r : ℕ}

def gProxy (γ : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ) (b : ℝ) (x : PairSp k r) : ℝ :=
  Formalism.FourierDecayAlt.B.gN (Hpk k r * (Matrix.of x.1.1)ᴴ * Hpk k r * (Hpk k r * (Matrix.of x.1.2)ᴴ * Hpk k r) * γ *
    Matrix.of x.2.2 * Matrix.of x.2.1) ^ (-b)

theorem gProxy_meas (γ : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ) (b : ℝ) :
    Measurable (gProxy (k := k) (r := r) γ b) := by
  unfold gProxy
  apply Measurable.pow_const
  apply Continuous.measurable
  unfold Formalism.FourierDecayAlt.B.gN
  fun_prop

theorem gProxy_eq (L : LocBessel k r) (γ : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ) (b : ℝ)
    {x : PairSp k r} (hx : Good L x) : gProxy γ b x = Formalism.MainNotions.S.Pv.AmpDD.pairMaj γ b x := by
  obtain ⟨h12, h22, h11, h21⟩ := hx
  have e11 := uh_inv_eq (Formalism.L2.SG.Pf.WFL.Sset_sub_UH (uw_in_sset _ h11))
  have e12 := uh_inv_eq (Formalism.L2.SG.Pf.WFL.Sset_sub_UH (_root_.Formalism.FourierDecayAlt.P.Ux3.nset_sset L.z h12))
  simp only [gProxy, Formalism.MainNotions.S.Pv.AmpDD.pairMaj, e11, e12]

private theorem gProxy_nonneg (γ : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ) (b : ℝ) (x : PairSp k r) :
    0 ≤ gProxy γ b x := by
  unfold gProxy
  exact Real.rpow_nonneg (Formalism.FourierDecayAlt.P.gN_nonneg_bessel_integrability _) _

theorem cell_convergence : Formalism.MainNotions.S.Pv.AmpDD.CellConv := by
  intro k r L h μG γ μR νR ν hκ hgap hcell hdata hmono
  obtain ⟨hUH, hGf, -, -, hHaar, hOrb, -⟩ := hdata
  have hk : 1 ≤ k := hgap.1
  have hStd : FourierDecayAlt.C2.Std k r L.z L.z' := ⟨hk, L.hz, L.hz'⟩
  have hPos : FourierDecayAlt.C2.PosPt k r L.z L.z' γ := ⟨hUH, hGf⟩
  have hAG : 0 ≤ FourierDecayAlt.ThreeDimData.AG k r := by unfold FourierDecayAlt.ThreeDimData.AG; positivity
  have hAS : 0 ≤ FourierDecayAlt.ThreeDimData.AS k r := by
    unfold FourierDecayAlt.ThreeDimData.AS FourierDecayAlt.ThreeDimData.dN
    have e : (r:ℝ) * ((r:ℝ) - 1) + 2 * r * (k + 1) + r ^ 2 = 2 * r ^ 2 + r + 2 * r * k := by ring
    rw [e]
    positivity
  have hR : (0:ℝ) < 10 * ((r:ℝ) + 1) ^ 2 := by positivity
  set b : ℝ := 10 * ((r:ℝ) + 1) ^ 2 * FourierDecayAlt.ThreeDimData.AG k r + 1 with hb
  have hb0 : 0 ≤ b := by positivity
  set β : ℝ := b / (2 * ((5 * (r + 1) ^ 2 : ℕ) : ℝ)) with hβdef
  have hβ : FourierDecayAlt.ThreeDimData.AG k r < β := by
    have e : (2 * ((5 * (r + 1) ^ 2 : ℕ) : ℝ)) = 10 * ((r:ℝ) + 1) ^ 2 := by push_cast; ring
    rw [hβdef, e, lt_div_iff₀ hR, hb]
    linarith
  refine ⟨b, hb0, ?_, ?_⟩
  · unfold Formalism.MainNotions.S.Pv.AmpDD.GapCell at hcell
    have h1 : 0 ≤ ((r:ℝ) + 1) ^ 2 * FourierDecayAlt.ThreeDimData.AS k r := by positivity
    nlinarith
  have hgN : ∀ M : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ, 0 ≤ FourierDecayAlt.B.gN M := by
    intro M
    unfold FourierDecayAlt.B.gN
    exact Real.sqrt_nonneg _
  have hHaarC := Formalism.MainNotions.S.Pv.AmpDDPf.haarR_bi k r hk L γ μR hUH hmono hHaar
  obtain ⟨hσ, hne, hconc, -⟩ := hHaar
  obtain ⟨T, hT⟩ := at_pos (γ := γ) hne hconc
  set T' : ℝ := (T:ℝ) + 1 with hT'
  have hT1 : 1 ≤ T' := by
    have := (Nat.cast_nonneg T : (0:ℝ) ≤ T)
    linarith
  have hsub : AT γ (T:ℝ) ⊆ AT γ T' := by
    intro y hy
    exact ⟨hy.1, by linarith [hy.2]⟩
  have hAT : μR (AT γ T') ≠ 0 := fun h0 => hT (measure_mono_null hsub h0)
  obtain ⟨K, hK, hKb⟩ := pair_bound L hStd hPos hmono T' hT1 b hb0
  obtain ⟨ρh, hρh⟩ := et_equiv L hStd hPos hmono T'
  set F : PairSp k r → ℝ≥0∞ := fun x => ENNReal.ofReal (gProxy γ b x) with hFdef
  have hFm : Measurable F := ENNReal.measurable_ofReal.comp (gProxy_meas γ b)
  have hFinv : ∀ x, Good L x → ∀ a ∈ RStab k r γ, F (stabAct γ a x) = F x := by
    intro x hx a ha
    simp only [hFdef]
    rw [gProxy_eq L γ b ((good_stabAct L ha x).2 hx), gProxy_eq L γ b hx, pairMaj_inv L hUH b hx ha]
  have hETm : MeasurableSet (ET L.z L.z' γ T') := (et_closed L.z L.z' hStd.2.1 hUH T').measurableSet
  have hid := orbit_identity L hHaarC hconc hne hOrb F hFm hFinv _ hETm _ (at_mset hUH T') ρh hρh
  set f1 : Mt k r × Mt k r → ℝ≥0∞ := fun p => ENNReal.ofReal (FourierDecayAlt.B.gN (of p.2 * of p.1) ^ (-β)) with hf1
  have hf1m : Measurable f1 := by
    apply Measurable.ennreal_ofReal
    apply Measurable.pow_const
    apply Continuous.measurable
    unfold FourierDecayAlt.B.gN
    fun_prop
  have hGood : ∀ᵐ x ∂pairMeas L, Good L x := ae_iff.2 (pairMeas_bad L)
  have hle : ∀ᵐ x ∂pairMeas L, F x * (ET L.z L.z' γ T').indicator 1 x.1.2 ≤ ENNReal.ofReal K * (f1 x.1 * f1 x.2) := by
    filter_upwards [hGood] with x hx
    by_cases hm : x.1.2 ∈ ET L.z L.z' γ T'
    · rw [Set.indicator_of_mem hm, Pi.one_apply, mul_one]
      simp only [hFdef, hf1]
      rw [gProxy_eq L γ b hx, ← ENNReal.ofReal_mul (Real.rpow_nonneg (hgN _) _), ← ENNReal.ofReal_mul hK.le]
      exact ENNReal.ofReal_le_ofReal (hKb x hx hm)
    · simp [hm]
  haveI := sfin_muN L
  haveI : SigmaFinite L.μW := L.hμW.1.1
  haveI : SigmaFinite L.μW' := L.hμW'.1.1
  have hfin : ∀ {z : Fin (2 * r + k + 1) → ℂ} {μW : Measure (Mt k r)}, inWb k r z → 0 < Tz k r z →
      IsHaarOn (UWset k r z) μW → μW Set.univ = 1 → ∫⁻ p, f1 p ∂(μW.prod L.μN) < ∞ := by
    intro z μW h1 h2 h3 h4
    by_cases hκ0 : L.κN = 0
    · simp [LocBessel.μN, haarLie, hκ0]
    · exact growth_side h1 h2 h3 h4 hκ0 hκ hβ
  have hLHS : ∫⁻ x, F x * (ET L.z L.z' γ T').indicator 1 x.1.2 ∂pairMeas L < ∞ := by
    refine (lintegral_mono_ae hle).trans_lt ?_
    rw [lintegral_const_mul' _ _ ENNReal.ofReal_ne_top]
    unfold pairMeas
    rw [lintegral_prod_mul hf1m.aemeasurable hf1m.aemeasurable]
    exact ENNReal.mul_lt_top ENNReal.ofReal_lt_top (ENNReal.mul_lt_top (hfin L.hz.1 L.hz.2 L.hμW.1 L.hμW.2) (hfin L.hz'.1 L.hz'.2 L.hμW'.1 L.hμW'.2))
  have hFν : ∫⁻ x, F x ∂ν < ∞ := by
    rw [hid] at hLHS
    by_contra hc
    rw [not_lt, top_le_iff] at hc
    rw [hc, ENNReal.mul_top hAT] at hLHS
    exact lt_irrefl _ hLHS
  have hae : gProxy γ b =ᵐ[ν] Formalism.MainNotions.S.Pv.AmpDD.pairMaj γ b := by
    filter_upwards [ae_iff.2 (nu_bad L hne hconc hOrb)] with x hx
    exact gProxy_eq L γ b hx
  have hint : Integrable (gProxy γ b) ν := by
    refine ⟨(gProxy_meas γ b).aestronglyMeasurable, ?_⟩
    rw [hasFiniteIntegral_iff_ofReal (ae_of_all _ (gProxy_nonneg γ b))]
    exact hFν
  exact hint.congr hae

end Formalism.MainNotions.S.Pv.AmpDDPf.CC

alias Formalism.MainNotions.S.Pv.AmpDDPf.cell_convergence := _root_.Formalism.MainNotions.S.Pv.AmpDDPf.CC.cell_convergence
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.FlagStabilizerTensors.RootLatticeThresholds.CompactCellConvergence.CellConvergence =====
