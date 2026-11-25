module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstGEB
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.OppositeWeylSubgroupClosed
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.RegularisedPairingViaPhase
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SettingConstruction
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.TwoByOneBlock
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstBHGlue
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.BesselFrame
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ConjugationContinuousOnInvertible
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstBHR
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstBHVolS
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstBHDim
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstBHModel
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstBHVolP
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CircleGaugeAction.DglApplyOff
public import Mathlib.Analysis.Matrix.Normed
public import Mathlib.Analysis.Normed.Algebra.MatrixExponential
public import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
public import Mathlib.Analysis.Calculus.Deriv.Basic
public import Mathlib.Analysis.Calculus.Deriv.Comp
public import Mathlib.Analysis.Calculus.FDeriv.Linear
public import Mathlib.Analysis.SpecialFunctions.Exponential
public import Mathlib.Analysis.SpecialFunctions.Complex.Circle
public import Mathlib.MeasureTheory.Integral.IntervalIntegral.Periodic
public import Mathlib.MeasureTheory.Measure.Lebesgue.VolumeOfBalls
public import Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral
public import Formalism.PeriodIntegrals.ExistsGaugeMeasureForEachRank
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstWbB
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstSandwich
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SGaugeDensB
public import Formalism.SharpRestriction.CuspSpanNormBounds.SGauge
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SGaugeDensL
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.NcRealXPS
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.BlockGrp
public import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.MassDataXLeaves
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AprimeInf
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstGE
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstPf
import Formalism.SharpRestriction.CuspSpanNormBounds.BridgeLemma3
import Mathlib.Tactic.Linter.Style
import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstBHRA
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstWbGlue, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstAll, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstBHVolLim, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.BruhatHaarOfSandwich, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CircleGaugeAction.OfRealCoordsSmulCenterCoord, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CircleGaugeAction.ContinuousLmulM, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ExistsGaugeNormalizedStabilizer, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ExistsGaugeNormalizedStabilizer, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacGaugeOfSandwichRhsWLim, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.BruhatHaarProved, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstFinal, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SGaugeDensD, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SGaugeDensG, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SGaugeDensJ, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SGaugeDensV, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SGaugeDensPf, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.RealBracketHolds

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstWbGlue =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstWbGlue", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstGEB\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.OppositeWeylSubgroupClosed\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.RegularisedPairingViaPhase\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SettingConstruction\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.TwoByOneBlock\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstBHGlue\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstGE\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstPf\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.BesselFrame\nimport Formalism.SharpRestriction.CuspSpanNormBounds.BridgeLemma3\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ConjugationContinuousOnInvertible\n\n"}
section -- clump:auto
@[expose] public section

set_option linter.unusedVariables false

noncomputable section

open MeasureTheory Filter Topology
open scoped ENNReal

namespace Formalism.L2.SG.Pf.GE

open Formalism.QuantumDeterminants Formalism.L2.SG.Pf Formalism.L2.SG.Pf.BH Formalism.L2.SG.Pf.WB Formalism.L2.SG.Pf.Jac

variable {k r : ℕ}

def gA (E : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ) (a b : Mt k r) : Mt k r :=
  fun i j => ((Matrix.of a)⁻¹ * E * Matrix.of b) i j

def gB (E : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ) (a b : Mt k r) : Mt k r :=
  fun i j => (Matrix.of a * E * (Matrix.of b)⁻¹) i j

theorem meas_gA (E : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ) {f : Mt k r → ℝ≥0∞} (hf : Measurable f) :
    Measurable fun p : Mt k r × Mt k r => f (gA E p.1 p.2) := by
  have e : (fun p : Mt k r × Mt k r => gA E p.1 p.2) = fun p =>
      (fun i j => (Matrix.of (fun i j => (Matrix.of (fun i j => ((Matrix.of p.1)⁻¹) i j : Mt k r) *
        Matrix.of (E : Mt k r)) i j : Mt k r) * Matrix.of p.2) i j : Mt k r) := by
    funext p; rfl
  have : Measurable fun p : Mt k r × Mt k r => gA E p.1 p.2 := by
    rw [e]
    exact mulMt_meas (mulMt_meas (invMt_meas measurable_fst) measurable_const) measurable_snd
  exact hf.comp this

theorem measurable_comp_group_action (E : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ) (a0 : Mt k r) {f : Mt k r → ℝ≥0∞}
    (hf : Measurable f) : Measurable fun b : Mt k r => f (gA E a0 b) := by
  let P : Mt k r → Mt k r := fun b =>
    ((Matrix.of a0)⁻¹ * E * Matrix.of b : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ)
  have hP : Continuous P := by
    show Continuous fun b : Mt k r =>
      ((Matrix.of a0)⁻¹ * E * Matrix.of b : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ)
    fun_prop
  exact hf.comp hP.measurable

theorem gA_inv (E : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ) (a b : Mt k r)
    (ha : IsUnit (Matrix.of a : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ).det) :
    gA E (Formalism.FourierDecayAlt.B2.invM a) (Formalism.FourierDecayAlt.B2.invM b) = gB E a b := by
  have h1 : ((Matrix.of a : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ)⁻¹)⁻¹ = Matrix.of a :=
    Matrix.nonsing_inv_nonsing_inv _ ha
  show (fun i j => (((Matrix.of a : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ)⁻¹)⁻¹ * E *
      (Matrix.of b)⁻¹) i j : Mt k r) = fun i j => (Matrix.of a * E * (Matrix.of b)⁻¹) i j
  rw [h1]

theorem prod_to_iter {z z' : Fin (2 * r + k + 1) → ℂ} (hz : inWb k r z) (hT : 0 < Tz k r z) (hz' : inWb k r z')
    (hT' : 0 < Tz k r z') {μW μW' : Measure (Mt k r)} (hW : Formalism.FourierDecayAlt.B.IsHaarOn (UWset k r z) μW)
    (hW' : Formalism.FourierDecayAlt.B.IsHaarOn (UWset k r z') μW') (E : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ)
    {f : Mt k r → ℝ≥0∞} (hf : Measurable f) :
    ∫⁻ p : Mt k r × Mt k r, f ((Matrix.of p.1)⁻¹ * E * Matrix.of p.2) ∂(μW.prod μW') =
      ∫⁻ h, ∫⁻ h', f (fun i j => (Matrix.of h * E * (Matrix.of h')⁻¹) i j) ∂μW' ∂μW := by
  have sW := Formalism.FourierDecayAlt.P.B5.haar_sigmaFinite hW
  have sW' := Formalism.FourierDecayAlt.P.B5.haar_sigmaFinite hW'
  have hinv : μW.map Formalism.FourierDecayAlt.B2.invM = μW :=
    Formalism.FourierDecayAlt.P.haar_measure_inversion k r (UWset k r z) μW (Formalism.FourierDecayAlt.P.weyl_subgroup_closed k r z) hW
  have hinv' : μW'.map Formalism.FourierDecayAlt.B2.invM = μW' :=
    Formalism.FourierDecayAlt.P.haar_measure_inversion k r (UWset k r z') μW' (Formalism.FourierDecayAlt.P.weyl_subgroup_closed k r z') hW'
  have hA := meas_gA (k := k) (r := r) E hf
  have e0 : (fun p : Mt k r × Mt k r => f ((Matrix.of p.1)⁻¹ * E * Matrix.of p.2)) = fun p => f (gA E p.1 p.2) := by
    funext p; rfl
  rw [e0, lintegral_prod (fun p : Mt k r × Mt k r => f (gA E p.1 p.2)) hA.aemeasurable]
  have key : ∀ (ν : Measure (Mt k r)), ν.map Formalism.FourierDecayAlt.B2.invM = ν → ∀ F : Mt k r → ℝ≥0∞, Measurable F →
      ∫⁻ a, F a ∂ν = ∫⁻ a, F (Formalism.FourierDecayAlt.B2.invM a) ∂ν := by
    intro ν hν F hF
    conv_lhs => rw [← hν]
    exact lintegral_map hF Formalism.FourierDecayAlt.P.B2x1.invM_meas
  refine (key μW hinv _ hA.lintegral_prod_right').trans ?_
  have hae : ∀ᵐ a ∂μW, (Matrix.of a : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ) ∈ UWset k r z :=
    ae_iff.2 hW.conc
  refine lintegral_congr_ae ?_
  filter_upwards [hae] with a ha
  have hau : IsUnit (Matrix.of a : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ).det := unit_of_UH ha.1
  refine (key μW' hinv' _ (measurable_comp_group_action E (Formalism.FourierDecayAlt.B2.invM a) hf)).trans ?_
  refine lintegral_congr fun b => ?_
  rw [gA_inv E a b hau]
  rfl

theorem rhsWHaar : RhsWHaar := by
  intro k r z z' μW μW' a a' μsec D
  obtain ⟨μb0, hb0⟩ := Formalism.FourierDecayAlt.P.opposite_weyl_haar_exists k r
  have hW := Formalism.MainNotions.BridgeLemma₃.lbHaarUp_proved.1 k r z μW D.z_mem D.T_pos D.haarW
  have hW' := Formalism.MainNotions.BridgeLemma₃.lbHaarUp_proved.1 k r z' μW' D.z'_mem D.T'_pos D.haarW'
  obtain ⟨C, hC, hI⟩ := Formalism.FourierDecayAlt.P.rank_one_integration_formula k r z z' μsec μb0 μW μW' D.k_pos D.z_mem D.z'_mem
    D.T_pos D.T'_pos D.sec hb0 hW hW'
  refine ⟨C⁻¹ • μb0, isHaarOn_smul (skHaar_of_cs hb0) (inv_pos.2 hC), fun φ hφ => ?_⟩
  rw [lintegral_smul_measure, hI φ hφ]
  unfold rhsW
  simp_rw [prod_to_iter D.z_mem D.T_pos D.z'_mem D.T'_pos hW hW' _ hφ]
  rw [ENNReal.smul_def, smul_eq_mul, ← mul_assoc, ← ENNReal.coe_mul, inv_mul_cancel₀ hC.ne', ENNReal.coe_one, one_mul]

theorem mBase_mem {z z' : Fin (2 * r + k + 1) → ℂ} {μsec : ℂ → Matrix (Fin (k + 1)) (Fin (k + 1)) ℂ}
    (hT : 0 < Tz k r z) (hT' : 0 < Tz k r z') (hsec : IsSection k r z z' μsec) :
    mBase k r z z' μsec ∈ Formalism.FourierDecayAlt.B2.UWb k r := by
  have hlt : Tz k r z * Tz k r z' < Complex.normSq (zeta0 k r z z') := by
    have hp : 0 < Tz k r z * Tz k r z' := mul_pos hT hT'
    unfold zeta0
    rw [Complex.normSq_ofReal]
    have hs := Real.mul_self_sqrt hp.le
    have e : (2 * Real.sqrt (Tz k r z * Tz k r z')) * (2 * Real.sqrt (Tz k r z * Tz k r z')) =
        4 * (Real.sqrt (Tz k r z * Tz k r z') * Real.sqrt (Tz k r z * Tz k r z')) := by ring
    rw [e, hs]
    linarith
  exact (Formalism.FourierDecayAlt.P.unipotent_weyl_properties k r).1 ▸ ⟨_, (hsec.2 _ hlt).1, rfl⟩

theorem gaugeShiftW : GaugeShiftW := by
  intro k r z z' μb μW μW' a a' μsec D hμb ρ hρ
  have hg : MeasurableSet (bBall k r ρ) := measurableSet_expBall (k := k) (r := r) (Formalism.FourierDecayAlt.B2.UWb k r) ρ hρ
  have hmem : (mBase k r z z' μsec)⁻¹ ∈ Formalism.FourierDecayAlt.B2.UWb k r :=
    (Formalism.FourierDecayAlt.P.opposite_weyl_subgroup_closed k r).inv_mem _ (mBase_mem D.T_pos D.T'_pos D.sec)
  have hl : Measurable (lmulM (k := k) (r := r) (mBase k r z z' μsec)⁻¹) := by
    have : Continuous (lmulM (k := k) (r := r) (mBase k r z z' μsec)⁻¹) := by
      show Continuous fun x : Mt k r =>
        ((mBase k r z z' μsec)⁻¹ * Matrix.of x : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ)
      exact continuous_const.matrix_mul continuous_id
    exact this.measurable
  have e : mBall k r z z' μsec ρ = lmulM (mBase k r z z' μsec)⁻¹ ⁻¹' bBall k r ρ := rfl
  refine ⟨e ▸ hl hg, ?_⟩
  rw [e, ← Measure.map_apply hl hg, hμb.2.2.2 _ hmem]

theorem wbDataEx : WbDataEx := by
  intro k r hk
  set z : Fin (2 * r + k + 1) → ℂ := Formalism.L2.SG.Pf.WFL.zBv k r 1 with hz
  have hzW : inWb k r z := Formalism.L2.SG.Pf.WFL.inWb_zB 1
  have hzT : Tz k r z = 1 := Formalism.L2.SG.Pf.WFL.Tz_zB zero_le_one
  have hT : 0 < Tz k r z := by rw [hzT]; exact one_pos
  obtain ⟨μ, hμ⟩ := Formalism.FourierDecayAlt.P.weyl_haar_exists k r z hzW hT
  have hcpt := Formalism.FourierDecayAlt.P.weyl_subgroup_compact k r z hzW hT
  have hfin : μ Set.univ < ⊤ := by
    have h1 : μ Set.univ ≤ μ (UWset k r z : Set (Mt k r)) + μ (UWset k r z : Set (Mt k r))ᶜ := by
      have := measure_union_le (μ := μ) (UWset k r z : Set (Mt k r)) (UWset k r z : Set (Mt k r))ᶜ
      rwa [Set.union_compl_self] at this
    have h2 : μ (UWset k r z : Set (Mt k r))ᶜ = 0 := hμ.conc
    have h3 : μ (UWset k r z : Set (Mt k r)) < ⊤ := hμ.finite_compact _ hcpt
    rw [h2, add_zero] at h1
    exact lt_of_le_of_lt h1 h3
  have h0 : μ Set.univ ≠ 0 := fun h => hμ.ne_zero (Measure.measure_univ_eq_zero.1 h)
  obtain ⟨μsec, hsec⟩ := Formalism.FourierDecayAlt.P.SettingConstruction.sectionExists k r z z hk hzW hzW hT hT
  have ha : 0 < (μ Set.univ).toReal := ENNReal.toReal_pos h0 hfin.ne
  have hm : μ Set.univ = ENNReal.ofReal (μ Set.univ).toReal := (ENNReal.ofReal_toReal hfin.ne).symm
  exact ⟨z, z, μ, μ, _, _, μsec, ⟨hk, hzW, hzW, hT, hT, skHaar_of_cs hμ, skHaar_of_cs hμ, ha, ha, hm, hm, hsec⟩⟩

end Formalism.L2.SG.Pf.GE
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstWbGlue =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstAll =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstAll", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstBHR\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstGEB\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstBHGlue\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstBHRA\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstGE\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstPf\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstWbGlue\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.SG.Pf

open Formalism.L2.SG.Pf.BH Formalism.L2.SG.Pf.WB Formalism.L2.SG.Pf.GE

theorem bruhatHaar_of_sandwich_volLim (hS : Sandwich) (hV : VolLim) : BruhatHaar :=
  bruhatHaar_of_rhsHaar rhsHaar gaugeShift hS hV

theorem wbHaar_of_rhsWLim (hL : RhsWLim) : WbHaar :=
  wbHaar_of_rhsWHaar rhsWHaar gaugeShiftW hL

theorem gaugeExists_of_sandwich_rhsWLim (hS : Sandwich) (hV : VolLim) (hU : ExistsGaugeMeasureForEachRank) (hL : RhsWLim) : GaugeExists :=
  gaugeExists_of rhsHaar rhsWHaar wbDataEx hU gaugeShift gaugeShiftW (rhsLim_of hS hV) hL

theorem jacGauge_of_sandwich_gaugeMeasure (hS : Sandwich) (hV : VolLim) (hU : ExistsGaugeMeasureForEachRank) (hL : RhsWLim) : JacGauge :=
  jacGauge_of (bruhatHaar_of_sandwich_volLim hS hV) (wbHaar_of_rhsWLim hL) (gaugeExists_of_sandwich_rhsWLim hS hV hU hL)

end Formalism.L2.SG.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstAll =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstBHVolLim =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstBHVolLim", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstBHVolS\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstBHDim\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstBHGlue\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstBHModel\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstBHVolP\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory Filter Topology
open scoped ENNReal

namespace Formalism.L2.SG.Pf.BH.VL

open Formalism.QuantumDeterminants Formalism.L2.SG.Pf Formalism.L2.SG.Pf.BH

theorem sq_cond {R1 R2 s : ℝ} (hs : 0 < s) (h1 : 0 ≤ R1) (h2 : 0 ≤ R2) (x : ℝ≥0∞) :
    ENNReal.ofReal R1 + x ^ 2 + ENNReal.ofReal R2 < ENNReal.ofReal (s ^ 2) ↔
      x < ENNReal.ofReal (Real.sqrt (s ^ 2 - R1 - R2)) := by
  rcases eq_or_ne x ⊤ with rfl | hx
  · simp
  · lift x to NNReal using hx
    have hx2 : ((x : ℝ≥0∞)) ^ 2 = ENNReal.ofReal ((x : ℝ) ^ 2) := by
      rw [ENNReal.ofReal_pow (NNReal.coe_nonneg x), ENNReal.ofReal_coe_nnreal]
    rw [hx2, ← ENNReal.ofReal_add h1 (by positivity), ← ENNReal.ofReal_add (by positivity) h2,
      ENNReal.ofReal_lt_ofReal_iff (by positivity), ← ENNReal.ofReal_coe_nnreal, ENNReal.ofReal_lt_ofReal_iff']
    constructor
    · intro h
      have hpos : 0 < s ^ 2 - R1 - R2 := by nlinarith [sq_nonneg (x : ℝ)]
      exact ⟨Real.lt_sqrt (NNReal.coe_nonneg x) |>.2 (by linarith), Real.sqrt_pos.2 hpos⟩
    · rintro ⟨h, -⟩
      have := (Real.lt_sqrt (NNReal.coe_nonneg x)).1 h
      linarith

variable {k r : ℕ}

theorem rho_lt (S : Set (Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ)) (t : ℝ) :
    {m : Mt k r | rhoS k r S m < ENNReal.ofReal t} = expBall (k := k) (r := r) S t := by
  ext m
  simp only [Set.mem_setOf_eq, rhoS, iInf_lt_iff, expBall, Set.mem_image, Metric.mem_ball, dist_zero_right]
  constructor
  · rintro ⟨Y, hY, hlt⟩
    refine ⟨Y, ?_, hY⟩
    rw [← ENNReal.ofReal_coe_nnreal, coe_nnnorm, ENNReal.ofReal_lt_ofReal_iff'] at hlt
    exact hlt.1
  · rintro ⟨Y, hlt, hY⟩
    refine ⟨Y, hY, ?_⟩
    rw [← ENNReal.ofReal_coe_nnreal, coe_nnnorm, ENNReal.ofReal_lt_ofReal_iff']
    exact ⟨hlt, lt_of_le_of_lt (norm_nonneg _) hlt⟩

theorem norm_lt {E : Type*} [NormedAddCommGroup E] (t : ℝ) :
    {Z : E | (‖Z‖₊ : ℝ≥0∞) < ENNReal.ofReal t} = Metric.ball 0 t := by
  ext Z
  simp only [Set.mem_setOf_eq, Metric.mem_ball, dist_zero_right]
  rw [← ENNReal.ofReal_coe_nnreal, coe_nnnorm, ENNReal.ofReal_lt_ofReal_iff']
  constructor
  · exact fun h => h.1
  · exact fun h => ⟨h, lt_of_le_of_lt (norm_nonneg _) h⟩

theorem measurableSet_expBall' (S : Set (Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ)) (t : ℝ) :
    MeasurableSet (expBall (k := k) (r := r) S t) := by
  rcases lt_or_ge 0 t with ht | ht
  · exact measurableSet_expBall S t ht
  · have : Metric.ball (0 : Formalism.MainNotions.S.lieE S) t = ∅ := Metric.ball_eq_empty.2 ht
    unfold expBall; rw [this, Set.image_empty]; exact MeasurableSet.empty

theorem m_int (μb : Measure (Mt k r)) {R1 R2 s : ℝ} (hs : 0 < s) (h1 : 0 ≤ R1) (h2 : 0 ≤ R2) :
    ∫⁻ m, (if ENNReal.ofReal R1 + rhoS k r (Formalism.FourierDecayAlt.B2.UWb k r) m ^ 2 + ENNReal.ofReal R2 < ENNReal.ofReal (s ^ 2)
      then (1 : ℝ≥0∞) else 0) ∂μb =
      μb (expBall (k := k) (r := r) (Formalism.FourierDecayAlt.B2.UWb k r) (Real.sqrt (s ^ 2 - R1 - R2))) := by
  rw [← rho_lt, ← lintegral_indicator_one (by rw [rho_lt]; exact measurableSet_expBall' _ _)]
  refine lintegral_congr fun m => ?_
  simp only [Set.indicator, Set.mem_setOf_eq, Pi.one_apply, sq_cond hs h1 h2]

theorem z_int {E : Type*} [NormedAddCommGroup E] [MeasurableSpace E] [BorelSpace E] (ν : Measure E)
    {R1 R2 s : ℝ} (hs : 0 < s) (h1 : 0 ≤ R1) (h2 : 0 ≤ R2) :
    ∫⁻ Z, (if ENNReal.ofReal R1 + (‖Z‖₊ : ℝ≥0∞) ^ 2 + ENNReal.ofReal R2 < ENNReal.ofReal (s ^ 2)
      then (1 : ℝ≥0∞) else 0) ∂ν = ν (Metric.ball 0 (Real.sqrt (s ^ 2 - R1 - R2))) := by
  rw [← norm_lt, ← lintegral_indicator_one (by rw [norm_lt]; exact measurableSet_ball)]
  refine lintegral_congr fun Z => ?_
  simp only [Set.indicator, Set.mem_setOf_eq, Pi.one_apply, sq_cond hs h1 h2]

end Formalism.L2.SG.Pf.BH.VL

namespace Formalism.L2.SG.Pf.BH.VL

open Formalism.QuantumDeterminants Formalism.L2.SG.Pf Formalism.L2.SG.Pf.BH

variable {k r : ℕ}

theorem gauge_bound {S : Set (Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ)} {μ : Measure (Mt k r)}
    (hμ : IsGaugeOn S μ) {ε : ℝ} (hε : 0 < ε) (hε1 : ε < 1) :
    ∃ δ > 0, ∀ t : ℝ, 0 ≤ t → t < δ →
      μ (expBall (k := k) (r := r) S t) ≤ ENNReal.ofReal (1 + ε) * volume (Metric.ball (0 : Formalism.MainNotions.S.lieE S) t) ∧
      ENNReal.ofReal (1 - ε) * volume (Metric.ball (0 : Formalism.MainNotions.S.lieE S) t) ≤ μ (expBall (k := k) (r := r) S t) := by
  have hT := hμ.2
  have hev : ∀ᶠ ρ in 𝓝[>] (0 : ℝ), (μ (expBall (k := k) (r := r) S ρ)).toReal /
      (volume (Metric.ball (0 : Formalism.MainNotions.S.lieE S) ρ)).toReal ∈ Set.Ioo (1 - ε) (1 + ε) :=
    hT (Ioo_mem_nhds (by linarith) (by linarith))
  rw [eventually_nhdsWithin_iff, Metric.eventually_nhds_iff] at hev
  obtain ⟨δ, hδ, hb⟩ := hev
  refine ⟨δ, hδ, fun t ht0 htδ => ?_⟩
  rcases eq_or_lt_of_le ht0 with rfl | htpos
  · have h1 : Metric.ball (0 : Formalism.MainNotions.S.lieE S) 0 = ∅ := Metric.ball_zero
    have h2 : expBall (k := k) (r := r) S 0 = ∅ := by unfold expBall; rw [h1, Set.image_empty]
    simp [h1, h2]
  have hmem := hb (by rw [Real.dist_eq, sub_zero, abs_of_pos htpos]; exact htδ) htpos
  set V := volume (Metric.ball (0 : Formalism.MainNotions.S.lieE S) t) with hV
  have hV0 : V ≠ 0 := (Metric.measure_ball_pos _ _ htpos).ne'
  have hVt : V ≠ ⊤ := measure_ball_lt_top.ne
  have hVr : 0 < V.toReal := ENNReal.toReal_pos hV0 hVt
  set M := μ (expBall (k := k) (r := r) S t) with hM
  have hMt : M ≠ ⊤ := by
    intro h
    rw [h, ENNReal.toReal_top, zero_div] at hmem
    linarith [hmem.1]
  have hlo : (1 - ε) * V.toReal < M.toReal := by
    have := hmem.1; rwa [lt_div_iff₀ hVr] at this
  have hhi : M.toReal < (1 + ε) * V.toReal := by
    have := hmem.2; rwa [div_lt_iff₀ hVr] at this
  constructor
  · rw [← ENNReal.ofReal_toReal hMt, ← ENNReal.ofReal_toReal hVt, ← ENNReal.ofReal_mul (by linarith)]
    exact ENNReal.ofReal_le_ofReal hhi.le
  · rw [← ENNReal.ofReal_toReal hMt, ← ENNReal.ofReal_toReal hVt, ← ENNReal.ofReal_mul (by linarith)]
    exact ENNReal.ofReal_le_ofReal hlo.le

theorem cWeight_cont : Continuous (Formalism.FourierDecayAlt.B2.cWeight k r) := by
  unfold Formalism.FourierDecayAlt.B2.cWeight; fun_prop

theorem cWeight_one : Formalism.FourierDecayAlt.B2.cWeight k r 1 = 1 := by
  unfold Formalism.FourierDecayAlt.B2.cWeight; simp

theorem cw_bound {ε : ℝ} (hε : 0 < ε) : ∃ δ > 0, ∀ c : Fin r → ℂ, 2 * ∑ a, ‖c a - 1‖ ^ 2 < δ ^ 2 →
    |Formalism.FourierDecayAlt.B2.cWeight k r c - 1| < ε := by
  obtain ⟨η, hη, h⟩ := Metric.continuousAt_iff.1 (cWeight_cont (k := k) (r := r)).continuousAt ε hε
  refine ⟨η, hη, fun c hc => ?_⟩
  have hd : dist c 1 < η := by
    rw [dist_pi_lt_iff hη]
    intro a
    rw [dist_eq_norm, Pi.one_apply]
    have h1 : ‖c a - 1‖ ^ 2 ≤ ∑ b, ‖c b - 1‖ ^ 2 :=
      Finset.single_le_sum (f := fun b => ‖c b - 1‖ ^ 2) (fun b _ => sq_nonneg _) (Finset.mem_univ a)
    nlinarith [norm_nonneg (c a - 1)]
  have := h hd
  rwa [cWeight_one, Real.dist_eq] at this

end Formalism.L2.SG.Pf.BH.VL

namespace Formalism.L2.SG.Pf.BH.VL

open Formalism.QuantumDeterminants Formalism.L2.SG.Pf Formalism.L2.SG.Pf.BH

variable {k r : ℕ}

theorem lie_haar_nilradical_eq_map_exp : Formalism.MainNotions.S.haarLie (Nset k r) 1 = Measure.map (expL k r (Nset k r)) volume := by
  unfold Formalism.MainNotions.S.haarLie; rw [one_smul]; rfl

theorem meas_expL' : Measurable (expL k r (Nset k r)) :=
  (Formalism.MainNotions.BridgeCSB.continuous_expLie (k := k) (r := r) (Nset k r)).measurable

theorem lintegral_lie_haar_nilradical (G : Mt k r → ℝ≥0∞) (hG : Measurable G) :
    ∫⁻ n, G n ∂(Formalism.MainNotions.S.haarLie (Nset k r) 1) = ∫⁻ Y : Formalism.MainNotions.S.lieE (Nset k r), G (expL k r (Nset k r) Y) := by
  rw [lie_haar_nilradical_eq_map_exp]; exact lintegral_map hG meas_expL'

def ind (c : Fin r → ℂ) (s : ℝ) (n m n' : Mt k r) : ℝ≥0∞ :=
  if Qf k r n c m n' < ENNReal.ofReal (s ^ 2) then 1 else 0

theorem meas_ind_gen {α : Type*} [MeasurableSpace α] (c : Fin r → ℂ) (s : ℝ) {f g h : α → Mt k r}
    (hf : Measurable f) (hg : Measurable g) (hh : Measurable h) :
    Measurable fun a => ind (k := k) (r := r) c s (f a) (g a) (h a) := by
  have hN := rhoMeas k r (Nset k r)
  have hW := rhoMeas k r (Formalism.FourierDecayAlt.B2.UWb k r)
  have hQ : Measurable fun a => Qf k r (f a) c (g a) (h a) := by
    unfold Qf
    exact ((((hN.comp hf).pow_const 2).add measurable_const).add ((hW.comp hg).pow_const 2)).add
      ((hN.comp hh).pow_const 2)
  unfold ind
  exact Measurable.ite (measurableSet_lt hQ measurable_const) measurable_const measurable_const

theorem inner_eq (μb : Measure (Mt k r)) [SFinite μb] (c : Fin r → ℂ) {s : ℝ} (hs : 0 < s) :
    ∫⁻ n, ∫⁻ m, ∫⁻ n', ind c s n m n' ∂(Formalism.MainNotions.S.haarLie (Nset k r) 1) ∂μb ∂(Formalism.MainNotions.S.haarLie (Nset k r) 1) =
      ∫⁻ Y : Formalism.MainNotions.S.lieE (Nset k r), ∫⁻ Y' : Formalism.MainNotions.S.lieE (Nset k r),
        μb (expBall (k := k) (r := r) (Formalism.FourierDecayAlt.B2.UWb k r)
          (Real.sqrt (s ^ 2 - (‖Y‖ ^ 2 + 2 * ∑ a, ‖c a - 1‖ ^ 2) - ‖Y'‖ ^ 2))) := by
  have : SFinite (Formalism.MainNotions.S.haarLie (Nset k r) 1) := by rw [lie_haar_nilradical_eq_map_exp]; infer_instance

  have hswap : ∀ n : Mt k r, ∫⁻ m, ∫⁻ n', ind c s n m n' ∂(Formalism.MainNotions.S.haarLie (Nset k r) 1) ∂μb =
      ∫⁻ n', ∫⁻ m, ind c s n m n' ∂μb ∂(Formalism.MainNotions.S.haarLie (Nset k r) 1) := by
    intro n
    refine lintegral_lintegral_swap ?_
    exact (meas_ind_gen c s (f := fun _ : Mt k r × Mt k r => n) (g := fun p => p.1) (h := fun p => p.2)
      measurable_const measurable_fst measurable_snd).aemeasurable
  simp_rw [hswap]
  have hG : Measurable fun n : Mt k r => ∫⁻ n', ∫⁻ m, ind c s n m n' ∂μb ∂(Formalism.MainNotions.S.haarLie (Nset k r) 1) := by
    have h3 : Measurable fun p : (Mt k r × Mt k r) × Mt k r => ind (k := k) (r := r) c s p.1.1 p.2 p.1.2 :=
      meas_ind_gen c s (f := fun p : (Mt k r × Mt k r) × Mt k r => p.1.1) (g := fun p => p.2) (h := fun p => p.1.2)
        measurable_fst.fst measurable_snd measurable_fst.snd
    exact h3.lintegral_prod_right'.lintegral_prod_right'
  rw [lintegral_lie_haar_nilradical _ hG]
  refine lintegral_congr fun Y => ?_
  have hG' : Measurable fun n' : Mt k r => ∫⁻ m, ind c s (expL k r (Nset k r) Y) m n' ∂μb := by
    have h2 : Measurable fun p : Mt k r × Mt k r => ind (k := k) (r := r) c s (expL k r (Nset k r) Y) p.2 p.1 :=
      meas_ind_gen c s (f := fun _ : Mt k r × Mt k r => expL k r (Nset k r) Y) (g := fun p => p.2) (h := fun p => p.1)
        measurable_const measurable_snd measurable_fst
    exact h2.lintegral_prod_right'
  rw [lintegral_lie_haar_nilradical _ hG']
  refine lintegral_congr fun Y' => ?_
  have hB : 0 ≤ 2 * ∑ a, ‖c a - 1‖ ^ 2 := by positivity
  have e : ∀ m : Mt k r, ind c s (expL k r (Nset k r) Y) m (expL k r (Nset k r) Y') =
      if ENNReal.ofReal (‖Y‖ ^ 2 + 2 * ∑ a, ‖c a - 1‖ ^ 2) + rhoS k r (Formalism.FourierDecayAlt.B2.UWb k r) m ^ 2 +
        ENNReal.ofReal (‖Y'‖ ^ 2) < ENNReal.ofReal (s ^ 2) then 1 else 0 := by
    intro m
    unfold ind Qf
    rw [rhoN k r Y, rhoN k r Y', _root_.Formalism.L2.SG.Pf.BH.Model.enn_sq, _root_.Formalism.L2.SG.Pf.BH.Model.enn_sq, ← ENNReal.ofReal_add (by positivity) hB]
  simp_rw [e]
  exact m_int μb hs (by positivity) (by positivity)

end Formalism.L2.SG.Pf.BH.VL

namespace Formalism.L2.SG.Pf.BH.VL

open Formalism.QuantumDeterminants Formalism.L2.SG.Pf Formalism.L2.SG.Pf.BH

variable {k r : ℕ}

theorem model_inner (E1 E2 : Type) [NormedAddCommGroup E1] [InnerProductSpace ℝ E1] [FiniteDimensional ℝ E1]
    [MeasurableSpace E1] [BorelSpace E1] [NormedAddCommGroup E2] [InnerProductSpace ℝ E2] [FiniteDimensional ℝ E2]
    [MeasurableSpace E2] [BorelSpace E2] (B : ℝ) (hB : 0 ≤ B) {s : ℝ} (hs : 0 < s) :
    ∫⁻ y1 : E1, ∫⁻ y2 : E2, ∫⁻ y3 : E1,
      (if (‖y1‖₊ : ℝ≥0∞) ^ 2 + ENNReal.ofReal B + (‖y2‖₊ : ℝ≥0∞) ^ 2 + (‖y3‖₊ : ℝ≥0∞) ^ 2 <
          ENNReal.ofReal (s ^ 2) then (1 : ℝ≥0∞) else 0) =
      ∫⁻ y1 : E1, ∫⁻ y3 : E1, volume (Metric.ball (0 : E2) (Real.sqrt (s ^ 2 - (‖y1‖ ^ 2 + B) - ‖y3‖ ^ 2))) := by
  refine lintegral_congr fun y1 => ?_
  have hmeas : Measurable fun p : E2 × E1 =>
      (if (‖y1‖₊ : ℝ≥0∞) ^ 2 + ENNReal.ofReal B + (‖p.1‖₊ : ℝ≥0∞) ^ 2 + (‖p.2‖₊ : ℝ≥0∞) ^ 2 <
          ENNReal.ofReal (s ^ 2) then (1 : ℝ≥0∞) else 0) := by
    refine Measurable.ite (measurableSet_lt ?_ measurable_const) measurable_const measurable_const
    fun_prop
  rw [lintegral_lintegral_swap hmeas.aemeasurable]
  refine lintegral_congr fun y3 => ?_
  have e : ∀ y2 : E2, (if (‖y1‖₊ : ℝ≥0∞) ^ 2 + ENNReal.ofReal B + (‖y2‖₊ : ℝ≥0∞) ^ 2 + (‖y3‖₊ : ℝ≥0∞) ^ 2 <
      ENNReal.ofReal (s ^ 2) then (1 : ℝ≥0∞) else 0) =
      (if ENNReal.ofReal (‖y1‖ ^ 2 + B) + (‖y2‖₊ : ℝ≥0∞) ^ 2 + ENNReal.ofReal (‖y3‖ ^ 2) <
      ENNReal.ofReal (s ^ 2) then (1 : ℝ≥0∞) else 0) := by
    intro y2
    rw [_root_.Formalism.L2.SG.Pf.BH.Model.enn_sq y1, _root_.Formalism.L2.SG.Pf.BH.Model.enn_sq y3, ← ENNReal.ofReal_add (by positivity) hB]
  simp_rw [e]
  exact z_int volume hs (by positivity) (by positivity)

theorem ball_cast (a b : ℕ) (h : a = b) (s : ℝ) :
    volume (Metric.ball (0 : EuclideanSpace ℝ (Fin a)) s) = volume (Metric.ball (0 : EuclideanSpace ℝ (Fin b)) s) := by
  subst h; rfl

theorem sqrt_sq_sub_le_self {s R : ℝ} (hs : 0 < s) (hR : 0 ≤ R) : Real.sqrt (s ^ 2 - R) ≤ s := by
  calc Real.sqrt (s ^ 2 - R) ≤ Real.sqrt (s ^ 2) := Real.sqrt_le_sqrt (by linarith)
    _ = s := Real.sqrt_sq hs.le

end Formalism.L2.SG.Pf.BH.VL

namespace Formalism.L2.SG.Pf.BH.VL

open Formalism.QuantumDeterminants Formalism.L2.SG.Pf Formalism.L2.SG.Pf.BH

variable {k r : ℕ}

theorem pt_bound {μb : Measure (Mt k r)} {ε δg δc s : ℝ} (hε : 0 < ε) (hε1 : ε < 1)
    (hg : ∀ t : ℝ, 0 ≤ t → t < δg →
      μb (expBall (k := k) (r := r) (Formalism.FourierDecayAlt.B2.UWb k r) t) ≤
        ENNReal.ofReal (1 + ε) * volume (Metric.ball (0 : Formalism.MainNotions.S.lieE (Formalism.FourierDecayAlt.B2.UWb k r)) t) ∧
      ENNReal.ofReal (1 - ε) * volume (Metric.ball (0 : Formalism.MainNotions.S.lieE (Formalism.FourierDecayAlt.B2.UWb k r)) t) ≤
        μb (expBall (k := k) (r := r) (Formalism.FourierDecayAlt.B2.UWb k r) t))
    (hc : ∀ c : Fin r → ℂ, 2 * ∑ a, ‖c a - 1‖ ^ 2 < δc ^ 2 → |Formalism.FourierDecayAlt.B2.cWeight k r c - 1| < ε)
    (hs : 0 < s) (hsg : s < δg) (hsc : s < δc) (c : Fin r → ℂ) (u v : ℝ) (hu : 0 ≤ u) (hv : 0 ≤ v) :
    ENNReal.ofReal (Formalism.FourierDecayAlt.B2.cWeight k r c) *
        μb (expBall (k := k) (r := r) (Formalism.FourierDecayAlt.B2.UWb k r) (Real.sqrt (s ^ 2 - (u + 2 * ∑ a, ‖c a - 1‖ ^ 2) - v)))
      ≤ ENNReal.ofReal ((1 + ε) ^ 2) *
        volume (Metric.ball (0 : Formalism.MainNotions.S.lieE (Formalism.FourierDecayAlt.B2.UWb k r))
          (Real.sqrt (s ^ 2 - (u + 2 * ∑ a, ‖c a - 1‖ ^ 2) - v))) ∧
    ENNReal.ofReal ((1 - ε) ^ 2) *
        volume (Metric.ball (0 : Formalism.MainNotions.S.lieE (Formalism.FourierDecayAlt.B2.UWb k r))
          (Real.sqrt (s ^ 2 - (u + 2 * ∑ a, ‖c a - 1‖ ^ 2) - v)))
      ≤ ENNReal.ofReal (Formalism.FourierDecayAlt.B2.cWeight k r c) *
        μb (expBall (k := k) (r := r) (Formalism.FourierDecayAlt.B2.UWb k r) (Real.sqrt (s ^ 2 - (u + 2 * ∑ a, ‖c a - 1‖ ^ 2) - v))) := by
  set B := 2 * ∑ a, ‖c a - 1‖ ^ 2 with hBdef
  have hB : 0 ≤ B := by positivity
  set t := Real.sqrt (s ^ 2 - (u + B) - v) with htdef
  have ht0 : 0 ≤ t := Real.sqrt_nonneg _
  rcases eq_or_lt_of_le ht0 with ht | ht
  · rw [← ht]
    have h1 : Metric.ball (0 : Formalism.MainNotions.S.lieE (Formalism.FourierDecayAlt.B2.UWb k r)) 0 = ∅ := Metric.ball_zero
    have h2 : expBall (k := k) (r := r) (Formalism.FourierDecayAlt.B2.UWb k r) 0 = ∅ := by unfold expBall; rw [h1, Set.image_empty]
    simp [h1, h2]
  have hpos : 0 < s ^ 2 - (u + B) - v := Real.sqrt_pos.1 ht
  have hBs : B < δc ^ 2 := by nlinarith
  have hcw := hc c hBs
  have hts : t ≤ s := by
    have := sqrt_sq_sub_le_self (s := s) (R := u + B + v) hs (by positivity)
    rw [htdef]; convert this using 2; ring
  obtain ⟨hup, hlo⟩ := hg t ht0 (lt_of_le_of_lt hts hsg)
  rw [abs_lt] at hcw
  constructor
  · calc ENNReal.ofReal (Formalism.FourierDecayAlt.B2.cWeight k r c) * μb (expBall (Formalism.FourierDecayAlt.B2.UWb k r) t)
        ≤ ENNReal.ofReal (1 + ε) * (ENNReal.ofReal (1 + ε) *
            volume (Metric.ball (0 : Formalism.MainNotions.S.lieE (Formalism.FourierDecayAlt.B2.UWb k r)) t)) :=
          mul_le_mul' (ENNReal.ofReal_le_ofReal (by linarith)) hup
      _ = ENNReal.ofReal ((1 + ε) ^ 2) * volume (Metric.ball (0 : Formalism.MainNotions.S.lieE (Formalism.FourierDecayAlt.B2.UWb k r)) t) := by
          rw [← mul_assoc, ← ENNReal.ofReal_mul (by linarith), sq]
  · calc ENNReal.ofReal ((1 - ε) ^ 2) * volume (Metric.ball (0 : Formalism.MainNotions.S.lieE (Formalism.FourierDecayAlt.B2.UWb k r)) t)
        = ENNReal.ofReal (1 - ε) * (ENNReal.ofReal (1 - ε) *
            volume (Metric.ball (0 : Formalism.MainNotions.S.lieE (Formalism.FourierDecayAlt.B2.UWb k r)) t)) := by
          rw [← mul_assoc, ← ENNReal.ofReal_mul (by linarith), sq]
      _ ≤ ENNReal.ofReal (Formalism.FourierDecayAlt.B2.cWeight k r c) * μb (expBall (Formalism.FourierDecayAlt.B2.UWb k r) t) :=
          mul_le_mul' (ENNReal.ofReal_le_ofReal (by linarith)) hlo

end Formalism.L2.SG.Pf.BH.VL

namespace Formalism.L2.SG.Pf.BH.VL

open Formalism.QuantumDeterminants Formalism.L2.SG.Pf Formalism.L2.SG.Pf.BH

variable {k r : ℕ}

theorem const_mul_double_lintegral {X : Type*} [MeasurableSpace X] (μ : Measure X) (a : ℝ≥0∞) (ha : a ≠ ⊤) (f : X → X → ℝ≥0∞) :
    a * ∫⁻ Y, ∫⁻ Y', f Y Y' ∂μ ∂μ = ∫⁻ Y, ∫⁻ Y', a * f Y Y' ∂μ ∂μ := by
  rw [← lintegral_const_mul' _ _ ha]
  refine lintegral_congr fun Y => ?_
  rw [← lintegral_const_mul' _ _ ha]

theorem volLim : VolLim := by
  intro k r μb hμb
  have sμ : SigmaFinite μb := hμb.1.1
  set D := 2 * Module.finrank ℝ (Formalism.MainNotions.S.lieE (Nset k r)) + 2 * r +
    Module.finrank ℝ (Formalism.MainNotions.S.lieE (Formalism.FourierDecayAlt.B2.UWb k r)) with hD
  set L : ℝ := ((2 : ℝ) ^ r)⁻¹ with hLdef
  have hL : 0 < L := by positivity
  set W : ℝ → ℝ≥0∞ := fun s => volume (Metric.ball (0 : EuclideanSpace ℝ (Fin D)) s) with hWdef
  have hVol : ∀ s, 0 < s → Vol k r μb s = ∫⁻ c : Fin r → ℂ, ENNReal.ofReal (Formalism.FourierDecayAlt.B2.cWeight k r c) *
      ∫⁻ Y : Formalism.MainNotions.S.lieE (Nset k r), ∫⁻ Y' : Formalism.MainNotions.S.lieE (Nset k r),
        μb (expBall (k := k) (r := r) (Formalism.FourierDecayAlt.B2.UWb k r)
          (Real.sqrt (s ^ 2 - (‖Y‖ ^ 2 + 2 * ∑ a, ‖c a - 1‖ ^ 2) - ‖Y'‖ ^ 2))) := by
    intro s hs
    unfold Vol
    refine lintegral_congr fun c => ?_
    congr 1
    exact inner_eq μb c hs
  have hMod : ∀ s, 0 < s → ∫⁻ c : Fin r → ℂ, ∫⁻ Y : Formalism.MainNotions.S.lieE (Nset k r), ∫⁻ Y' : Formalism.MainNotions.S.lieE (Nset k r),
      volume (Metric.ball (0 : Formalism.MainNotions.S.lieE (Formalism.FourierDecayAlt.B2.UWb k r))
        (Real.sqrt (s ^ 2 - (‖Y‖ ^ 2 + 2 * ∑ a, ‖c a - 1‖ ^ 2) - ‖Y'‖ ^ 2))) = ENNReal.ofReal L * W s := by
    intro s hs
    rw [hWdef, hLdef, ← Model.modelVol _ _ r s hs]
    refine lintegral_congr fun c => ?_
    exact (model_inner _ _ _ (by positivity) hs).symm
  have hgV : ∀ s, gVol k r s = (W s).toReal := by
    intro s
    unfold gVol
    rw [ballDim, ball_cast _ D (Sw.dimG k r) s]
  have key : ∀ ε : ℝ, 0 < ε → ε < 1 → ∀ᶠ s in 𝓝[>] (0 : ℝ),
      ENNReal.ofReal ((1 - ε) ^ 2) * (ENNReal.ofReal L * W s) ≤ Vol k r μb s ∧
      Vol k r μb s ≤ ENNReal.ofReal ((1 + ε) ^ 2) * (ENNReal.ofReal L * W s) := by
    intro ε hε hε1
    obtain ⟨δg, hδg, hg⟩ := gauge_bound hμb hε hε1
    obtain ⟨δc, hδc, hc⟩ := cw_bound (k := k) (r := r) hε
    filter_upwards [Ioo_mem_nhdsGT (lt_min hδg hδc)] with s ⟨hs0, hsδ⟩
    have hsg : s < δg := lt_of_lt_of_le hsδ (min_le_left _ _)
    have hsc : s < δc := lt_of_lt_of_le hsδ (min_le_right _ _)
    rw [hVol s hs0, ← hMod s hs0]
    constructor
    · rw [← lintegral_const_mul' _ _ ENNReal.ofReal_ne_top]
      refine lintegral_mono fun c => ?_
      rw [const_mul_double_lintegral _ _ ENNReal.ofReal_ne_top, const_mul_double_lintegral _ _ ENNReal.ofReal_ne_top]
      refine lintegral_mono fun Y => lintegral_mono fun Y' => ?_
      exact (pt_bound hε hε1 hg hc hs0 hsg hsc c _ _ (by positivity) (by positivity)).2
    · rw [← lintegral_const_mul' _ _ ENNReal.ofReal_ne_top]
      refine lintegral_mono fun c => ?_
      rw [const_mul_double_lintegral _ _ ENNReal.ofReal_ne_top, const_mul_double_lintegral _ _ ENNReal.ofReal_ne_top]
      refine lintegral_mono fun Y => lintegral_mono fun Y' => ?_
      exact (pt_bound hε hε1 hg hc hs0 hsg hsc c _ _ (by positivity) (by positivity)).1
  have hWpos : ∀ s, 0 < s → 0 < (W s).toReal := fun s hs =>
    ENNReal.toReal_pos (Metric.measure_ball_pos _ _ hs).ne' measure_ball_lt_top.ne
  have hWt : ∀ s, W s ≠ ⊤ := fun s => measure_ball_lt_top.ne
  have toR : ∀ (a : ℝ) (ha : 0 ≤ a) (s : ℝ), (ENNReal.ofReal a * (ENNReal.ofReal L * W s)).toReal = a * L * (W s).toReal := by
    intro a ha s
    rw [ENNReal.toReal_mul, ENNReal.toReal_mul, ENNReal.toReal_ofReal ha, ENNReal.toReal_ofReal hL.le, mul_assoc]
  rw [tendsto_order]
  constructor
  · intro a ha
    set ε := min (1 / 2) ((L - a) / (4 * L)) with hε
    have hε0 : 0 < ε := lt_min (by norm_num) (div_pos (by linarith) (by positivity))
    have hε1 : ε < 1 := lt_of_le_of_lt (min_le_left _ _) (by norm_num)
    have hεa : ε ≤ (L - a) / (4 * L) := min_le_right _ _
    have hgt : a < (1 - ε) ^ 2 * L := by
      have h1 : 1 - 2 * ε ≤ (1 - ε) ^ 2 := by nlinarith
      have h2 : 2 * ε * L ≤ (L - a) / 2 := by
        have := mul_le_mul_of_nonneg_right hεa (by positivity : (0 : ℝ) ≤ 2 * L)
        rw [div_mul_eq_mul_div] at this
        have e : (L - a) * (2 * L) / (4 * L) = (L - a) / 2 := by field_simp; ring
        nlinarith
      nlinarith
    filter_upwards [key ε hε0 hε1, self_mem_nhdsWithin] with s ⟨hlo, hup⟩ hs
    have hVt : Vol k r μb s ≠ ⊤ := ne_top_of_le_ne_top (by simp [ENNReal.mul_eq_top, hWt]) hup
    rw [hgV s, lt_div_iff₀ (hWpos s hs)]
    have := ENNReal.toReal_mono hVt hlo
    rw [toR _ (sq_nonneg _) s] at this
    nlinarith [hWpos s hs]
  · intro b hb
    set ε := min (1 / 2) ((b - L) / (4 * L)) with hε
    have hε0 : 0 < ε := lt_min (by norm_num) (div_pos (by linarith) (by positivity))
    have hε1 : ε < 1 := lt_of_le_of_lt (min_le_left _ _) (by norm_num)
    have hεb : ε ≤ (b - L) / (4 * L) := min_le_right _ _
    have hεh : ε ≤ 1 / 2 := min_le_left _ _
    have hlt : (1 + ε) ^ 2 * L < b := by
      have h1 : (1 + ε) ^ 2 ≤ 1 + 3 * ε := by nlinarith
      have h2 : 3 * ε * L ≤ 3 * (b - L) / 4 := by
        have := mul_le_mul_of_nonneg_right hεb (by positivity : (0 : ℝ) ≤ 3 * L)
        have e : (b - L) / (4 * L) * (3 * L) = 3 * (b - L) / 4 := by field_simp
        nlinarith
      nlinarith
    filter_upwards [key ε hε0 hε1, self_mem_nhdsWithin] with s ⟨hlo, hup⟩ hs
    rw [hgV s, div_lt_iff₀ (hWpos s hs)]
    have := ENNReal.toReal_mono (by simp [ENNReal.mul_eq_top, hWt]) hup
    rw [toR _ (sq_nonneg _) s] at this
    nlinarith [hWpos s hs]

end Formalism.L2.SG.Pf.BH.VL
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstBHVolLim =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.BruhatHaarOfSandwich =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.BruhatHaarOfSandwich", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstBHR\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstGEB\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstAll\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstBHVolLim\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.SG.Pf

open Formalism.L2.SG.Pf.BH Formalism.L2.SG.Pf.WB Formalism.L2.SG.Pf.GE

theorem jacGauge_of_hearts3 (hS : Sandwich) (hU : ExistsGaugeMeasureForEachRank) (hL : RhsWLim) : JacGauge :=
  jacGauge_of_sandwich_gaugeMeasure hS VL.volLim hU hL

end Formalism.L2.SG.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.BruhatHaarOfSandwich =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CircleGaugeAction.OfRealCoordsSmulCenterCoord =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CircleGaugeAction.OfRealCoordsSmulCenterCoord", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CircleGaugeAction.DglApplyOff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\npublic import Mathlib.Analysis.Matrix.Normed\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\npublic import Mathlib.Analysis.Normed.Algebra.MatrixExponential\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Mathlib.Topology.UniformSpace.Matrix\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.Analysis.Calculus.Deriv.Basic\npublic import Mathlib.Analysis.Calculus.Deriv.Comp\npublic import Mathlib.Analysis.Calculus.FDeriv.Linear\npublic import Mathlib.Analysis.SpecialFunctions.Exponential\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix Filter Topology

namespace PI.ExistsGaugeMeasureForEachRank.W

variable {r : ℕ}

def dz (r : ℕ) (z : ℂ) : Mat 0 r := diagonal (Pi.single (cI r) z)

lemma exp_dz (z : ℂ) : NormedSpace.exp (dz r z) = dgl r (Complex.exp z) := by
  rw [dz, Matrix.exp_diagonal, dgl]
  congr 1
  funext i
  rw [Pi.coe_exp]
  by_cases h : i = cI r
  · subst h
    simp [← Complex.exp_eq_exp_ℂ]
  · simp [h]

lemma smul_dz (t z : ℂ) : t • dz r z = dz r (t * z) := by
  rw [dz, dz, ← Matrix.diagonal_smul, ← Pi.single_smul', smul_eq_mul]

lemma dz_mem_lie (s : ℝ) : dz r ((s : ℂ) * Complex.I) ∈ lieOf (UWb 0 r) := by
  intro t
  rw [smul_dz, exp_dz]
  apply dgl_mem
  rw [conj_mul_iff, Complex.norm_exp]
  simp

set_option backward.isDefEq.respectTransparency false in
open scoped Norms.Operator in
lemma entry_zero {X : Mat 0 r} (hX : X ∈ lieOf (UWb 0 r)) (i j : Fin (2 * r + 0 + 1))
    (hij : ¬ (i = cI r ∧ j = cI r)) : X i j = 0 := by
  letI : NormedRing (Mat 0 r) := Matrix.linftyOpNormedRing
  letI : NormedAlgebra ℝ (Mat 0 r) := Matrix.linftyOpNormedAlgebra
  have hconst : ∀ t : ℝ, (NormedSpace.exp (t • X)) i j = (1 : Mat 0 r) i j := by
    intro t
    have hm := hX t
    rw [Complex.coe_smul] at hm
    rw [eq_dgl hm, dgl_apply_off _ _ _ hij]
  let L : Mat 0 r →L[ℝ] ℂ :=
    LinearMap.toContinuousLinearMap (Matrix.entryLinearMap ℝ ℂ i j)
  have hd := (L.hasFDerivAt.comp_hasDerivAt (0 : ℝ) (hasDerivAt_exp_smul_const X (0 : ℝ)))
  have hfun : (L ∘ fun t : ℝ => NormedSpace.exp (t • X)) = fun _ => (1 : Mat 0 r) i j :=
    funext hconst
  rw [hfun] at hd
  have h0 := hd.unique (hasDerivAt_const (0 : ℝ) ((1 : Mat 0 r) i j))
  simpa [L] using h0

lemma eq_dz_of_lie {X : Mat 0 r} (hX : X ∈ lieOf (UWb 0 r)) : X = dz r (X (cI r) (cI r)) := by
  ext i j
  by_cases h : i = cI r ∧ j = cI r
  · obtain ⟨rfl, rfl⟩ := h
    simp [dz]
  · rw [entry_zero hX i j h, dz, diagonal_apply]
    split_ifs with hij
    · subst hij
      have hi : i ≠ cI r := fun hi => h ⟨hi, hi⟩
      simp [hi]
    · rfl

theorem lieOf_iff (X : Mat 0 r) :
    X ∈ lieOf (UWb 0 r) ↔ ∃ s : ℝ, X = dz r ((s : ℂ) * Complex.I) := by
  constructor
  · intro hX
    have hX' := eq_dz_of_lie hX
    set x := X (cI r) (cI r)
    have h1 := hX 1
    rw [hX', Complex.ofReal_one, one_smul, exp_dz] at h1
    have hn := (conj_mul_iff _).1 (dgl_norm h1)
    rw [Complex.norm_exp, Real.exp_eq_one_iff] at hn
    refine ⟨x.im, hX'.trans ?_⟩
    congr 1
    apply Complex.ext <;> simp [hn]
  · rintro ⟨s, rfl⟩
    exact dz_mem_lie s

def v0 (r : ℕ) : EuclideanSpace ℝ (Fin (2 * r + 0 + 1) × Fin (2 * r + 0 + 1) × Bool) :=
  EuclideanSpace.single (cI r, cI r, true) 1

lemma norm_v0_eq_one : ‖v0 r‖ = 1 := by
  simp [v0]

lemma v0_ne : v0 r ≠ 0 := by
  intro h
  have := norm_v0_eq_one (r := r)
  rw [h, norm_zero] at this
  exact zero_ne_one this

lemma realify_dz (s : ℝ) :
    (WithLp.equiv 2 _).symm (realifyFun (dz r ((s : ℂ) * Complex.I))) = s • v0 r := by
  ext ⟨i, j, b⟩
  simp only [WithLp.equiv_symm_apply, realifyFun, v0, dz, diagonal_apply, PiLp.smul_apply,
    PiLp.single_apply, smul_eq_mul]
  by_cases hij : i = j
  · subst hij
    by_cases hi : i = cI r
    · subst hi
      cases b <;> simp
    · cases b <;> simp [hi]
  · cases b <;> simp [hij] <;> intro hi hj <;> exact absurd (hi.trans hj.symm) hij

lemma ofRealCoords_smul_centerCoord (s : ℝ) : unrealify (s • v0 r) = dz r ((s : ℂ) * Complex.I) := by
  ext i j
  apply Complex.ext
  · simp only [unrealify, v0, dz, diagonal_apply, PiLp.smul_apply, PiLp.single_apply,
      smul_eq_mul]
    by_cases hij : i = j
    · subst hij
      by_cases hi : i = cI r
      · subst hi
        simp
      · simp [hi]
    · simp [hij]
  · simp only [unrealify, v0, dz, diagonal_apply, PiLp.smul_apply, PiLp.single_apply,
      smul_eq_mul]
    by_cases hij : i = j
    · subst hij
      by_cases hi : i = cI r
      · subst hi
        simp
      · simp [hi]
    · simp [hij]
      intro hi hj
      exact absurd (hi.trans hj.symm) hij

theorem lieE_eq : lieE (UWb 0 r) = Submodule.span ℝ {v0 r} := by
  apply le_antisymm
  · rw [lieE, Submodule.span_le]
    rintro _ ⟨X, hX, rfl⟩
    obtain ⟨s, rfl⟩ := (lieOf_iff X).1 hX
    beta_reduce
    rw [realify_dz]
    exact Submodule.smul_mem _ s (Submodule.subset_span rfl)
  · rw [Submodule.span_le, Set.singleton_subset_iff]
    apply Submodule.subset_span
    refine ⟨dz r ((1 : ℝ) * Complex.I), dz_mem_lie 1, ?_⟩
    beta_reduce
    rw [realify_dz, one_smul]

end PI.ExistsGaugeMeasureForEachRank.W
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CircleGaugeAction.OfRealCoordsSmulCenterCoord =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CircleGaugeAction.ContinuousLmulM =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CircleGaugeAction.ContinuousLmulM", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CircleGaugeAction.DglApplyOff\npublic import Mathlib.Analysis.SpecialFunctions.Complex.Circle\npublic import Mathlib.MeasureTheory.Integral.IntervalIntegral.Periodic\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CircleGaugeAction.OfRealCoordsSmulCenterCoord\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.MeasureTheory.Measure.Lebesgue.VolumeOfBalls\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Separation.CompletelyRegular\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.Analysis.SpecialFunctions.Gamma.Basic\npublic import Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix MeasureTheory Filter Topology Set Real
open scoped ENNReal

namespace PI.ExistsGaugeMeasureForEachRank.W

variable {r : ℕ}

instance fact_two_pi : Fact (0 < 2 * π) := ⟨by positivity⟩

def Gm (r : ℕ) (θ : AddCircle (2 * π)) : Mt 0 r :=
  fun i j => dgl r ((AddCircle.toCircle θ : Circle) : ℂ) i j

lemma toCircle_coe (s : ℝ) :
    ((AddCircle.toCircle (s : AddCircle (2 * π)) : Circle) : ℂ) = Complex.exp (s * Complex.I) := by
  rw [AddCircle.toCircle_apply_mk, div_self (ne_of_gt fact_two_pi.out), one_mul, Circle.coe_exp]

lemma continuous_Gm : Continuous (Gm r) := by
  have hc : Continuous fun θ : AddCircle (2 * π) => ((AddCircle.toCircle θ : Circle) : ℂ) :=
    continuous_subtype_val.comp AddCircle.continuous_toCircle
  refine continuous_pi fun i => continuous_pi fun j => ?_
  simp only [Gm, dgl_apply]
  split_ifs
  · exact hc
  · exact continuous_const
  · exact continuous_const

lemma Gm_injective : Function.Injective (Gm r) := by
  intro a b h
  have := congrFun (congrFun h (cI r)) (cI r)
  simp only [Gm, dgl_apply] at this
  exact AddCircle.injective_toCircle (ne_of_gt fact_two_pi.out) (Circle.ext this)

lemma me_Gm : MeasurableEmbedding (Gm r) :=
  (continuous_Gm.isClosedEmbedding Gm_injective).measurableEmbedding

lemma Gm_mem (θ : AddCircle (2 * π)) : Matrix.of (Gm r θ) ∈ UWb 0 r := by
  show dgl r _ ∈ UWb 0 r
  exact dgl_mem ((conj_mul_iff _).2 (Circle.norm_coe _))

lemma continuous_lmulM (a : Mat 0 r) : Continuous (lmulM (k := 0) (r := r) a) := by
  refine continuous_pi fun i => continuous_pi fun j => ?_
  change Continuous (fun x : Mt 0 r => ∑ l, a i l * x l j)
  refine continuous_finsetSum _ fun l _ => continuous_const.mul ?_
  have h : Continuous (fun x : Mt 0 r => x l) := continuous_apply l
  exact (continuous_apply j).comp h

lemma Gm_add (a b : AddCircle (2 * π)) :
    Gm r (a + b) = lmulM (dgl r ((AddCircle.toCircle a : Circle) : ℂ)) (Gm r b) := by
  have : lmulM (dgl r ((AddCircle.toCircle a : Circle) : ℂ)) (Gm r b) =
      dgl r ((AddCircle.toCircle a : Circle) : ℂ) * dgl r ((AddCircle.toCircle b : Circle) : ℂ) := rfl
  have h2 : ((AddCircle.toCircle (a + b) : Circle) : ℂ) =
      ((AddCircle.toCircle a : Circle) : ℂ) * ((AddCircle.toCircle b : Circle) : ℂ) := by
    rw [AddCircle.toCircle_add, Circle.coe_mul]
  rw [this, dgl_mul]
  unfold Gm
  rw [h2]

def μG (r : ℕ) : Measure (Mt 0 r) := Measure.map (Gm r) volume

lemma map_lmul (s : Mat 0 r) (hs : s ∈ UWb 0 r) : (μG r).map (lmulM s) = μG r := by
  obtain ⟨u, hu, rfl⟩ := (mem_UWb_iff s).1 hs
  rw [conj_mul_iff] at hu
  have hα : ((AddCircle.toCircle ((Complex.arg u : ℝ) : AddCircle (2 * π)) : Circle) : ℂ) = u := by
    rw [toCircle_coe]
    have := Complex.norm_mul_exp_arg_mul_I u
    rw [hu] at this
    simpa using this
  unfold μG
  rw [Measure.map_map (continuous_lmulM _).measurable continuous_Gm.measurable]
  have hcomp : lmulM (dgl r u) ∘ Gm r =
      Gm r ∘ (fun θ => ((Complex.arg u : ℝ) : AddCircle (2 * π)) + θ) := by
    funext θ
    simp only [Function.comp_apply]
    rw [Gm_add, hα]
  rw [hcomp, ← Measure.map_map continuous_Gm.measurable (measurable_const_add _),
    map_add_left_eq_self]

lemma isHaar : IsHaarOn (UWb 0 r) (μG r) := by
  refine ⟨?_, ?_, ?_, fun s hs => map_lmul s hs⟩
  · unfold μG; infer_instance
  · unfold μG
    rw [Ne, Measure.map_eq_zero_iff continuous_Gm.measurable.aemeasurable]
    intro h
    have h1 := AddCircle.measure_univ (2 * π)
    rw [h, Measure.coe_zero, Pi.zero_apply, eq_comm, ENNReal.ofReal_eq_zero] at h1
    linarith [Real.pi_pos]
  · unfold μG
    rw [me_Gm.map_apply]
    have : Gm r ⁻¹' {x | Matrix.of x ∉ UWb 0 r} = ∅ := by
      ext θ
      simp only [Set.mem_preimage, Set.mem_ofPred_eq, Set.mem_empty_iff_false, iff_false, not_not]
      exact Gm_mem θ
    rw [this, measure_empty]

lemma expBall_eq (ρ : ℝ) :
    expBall (UWb 0 r) ρ = Gm r '' (((↑) : ℝ → AddCircle (2 * π)) '' Ioo (-ρ) ρ) := by
  ext y
  constructor
  · rintro ⟨x, hx, rfl⟩
    have hx' : x.1 ∈ Submodule.span ℝ {v0 r} := by
      rw [← lieE_eq]; exact x.2
    obtain ⟨s, hs⟩ := Submodule.mem_span_singleton.1 hx'
    have hn : ‖x.1‖ = |s| := by
      rw [← hs, norm_smul, norm_v0_eq_one, mul_one, Real.norm_eq_abs]
    have hlt : |s| < ρ := by
      rw [← hn]; exact mem_ball_zero_iff.1 hx
    refine ⟨(s : AddCircle (2 * π)), ⟨s, abs_lt.1 hlt, rfl⟩, ?_⟩
    show Gm r s = fun i j => NormedSpace.exp (unrealify x.1) i j
    rw [← hs, ofRealCoords_smul_centerCoord, exp_dz]
    unfold Gm
    rw [toCircle_coe]
  · rintro ⟨_, ⟨s, hs, rfl⟩, rfl⟩
    have hmem : s • v0 r ∈ lieE (UWb 0 r) := by
      rw [lieE_eq]; exact Submodule.smul_mem _ _ (Submodule.mem_span_singleton_self _)
    refine ⟨⟨s • v0 r, hmem⟩, ?_, ?_⟩
    · rw [mem_ball_zero_iff]
      show ‖s • v0 r‖ < ρ
      rw [norm_smul, norm_v0_eq_one, mul_one, Real.norm_eq_abs, abs_lt]
      exact hs
    · show (fun i j => NormedSpace.exp (unrealify (s • v0 r)) i j) = Gm r s
      rw [ofRealCoords_smul_centerCoord, exp_dz]
      unfold Gm
      rw [toCircle_coe]

lemma vol_arc {ρ : ℝ} (hρ : ρ ≤ π) :
    volume (((↑) : ℝ → AddCircle (2 * π)) '' Ioo (-ρ) ρ) = ENNReal.ofReal (2 * ρ) := by
  have hopen : IsOpen (((↑) : ℝ → AddCircle (2 * π)) '' Ioo (-ρ) ρ) :=
    QuotientAddGroup.isOpenMap_coe _ isOpen_Ioo
  rw [AddCircle.add_projection_respects_measure (2 * π) (-π) hopen.measurableSet]
  have hsub : Ioo (-ρ) ρ ⊆ Ioc (-π) (-π + 2 * π) := by
    intro θ hθ; constructor <;> linarith [hθ.1, hθ.2]
  have : ((↑) : ℝ → AddCircle (2 * π)) ⁻¹' (((↑) : ℝ → AddCircle (2 * π)) '' Ioo (-ρ) ρ) ∩
      Ioc (-π) (-π + 2 * π) = Ioo (-ρ) ρ := by
    ext θ
    constructor
    · rintro ⟨⟨θ', h1, he⟩, h3⟩
      rw [AddCircle.coe_eq_coe_iff_of_mem_Ioc (hsub h1) h3] at he
      exact he ▸ h1
    · intro h
      exact ⟨⟨θ, h, rfl⟩, hsub h⟩
  rw [this, Real.volume_Ioo]
  congr 1; ring

lemma finrank_lie : Module.finrank ℝ (lieE (UWb 0 r)) = 1 := by
  rw [lieE_eq]; exact finrank_span_singleton v0_ne

lemma vol_ball {ρ : ℝ} (h0 : 0 ≤ ρ) :
    volume (Metric.ball (0 : lieE (UWb 0 r)) ρ) = ENNReal.ofReal (2 * ρ) := by
  have : Nontrivial (lieE (UWb 0 r)) := Module.nontrivial_of_finrank_eq_succ finrank_lie
  rw [InnerProductSpace.volume_ball, finrank_lie]
  simp only [pow_one, Nat.cast_one]
  have hg : Real.Gamma (1 / 2 + 1) = √π / 2 := by
    rw [Real.Gamma_add_one (by norm_num), Real.Gamma_one_half_eq]; ring
  have hs : √π / (√π / 2) = 2 := by
    have : √π ≠ 0 := Real.sqrt_ne_zero'.2 Real.pi_pos
    field_simp
  rw [hg, hs, ← ENNReal.ofReal_mul h0, mul_comm]

theorem gauge (r : ℕ) : IsGaugeOn (UWb 0 r) (μG r) := by
  refine ⟨isHaar, ?_⟩
  refine Tendsto.congr' ?_ tendsto_const_nhds
  filter_upwards [Ioo_mem_nhdsGT Real.pi_pos] with ρ hρ
  rw [μG, me_Gm.map_apply, expBall_eq, Gm_injective.preimage_image, vol_arc hρ.2.le,
    vol_ball hρ.1.le, div_self]
  rw [ENNReal.toReal_ofReal (by linarith [hρ.1])]
  linarith [hρ.1]

end PI.ExistsGaugeMeasureForEachRank.W
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CircleGaugeAction.ContinuousLmulM =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ExistsGaugeNormalizedStabilizer =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ExistsGaugeNormalizedStabilizer", "h": "module\n\npublic import Formalism.PeriodIntegrals.ExistsGaugeMeasureForEachRank\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CircleGaugeAction.ContinuousLmulM\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem exists_gaugeNormalizedStabilizer : PI.ExistsGaugeMeasureForEachRank.ExistsGaugeMeasureForEachRank := fun r => ⟨PI.ExistsGaugeMeasureForEachRank.W.μG r, PI.ExistsGaugeMeasureForEachRank.W.gauge r⟩
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ExistsGaugeNormalizedStabilizer =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ExistsGaugeNormalizedStabilizer =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ExistsGaugeNormalizedStabilizer", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstGEB\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ExistsGaugeNormalizedStabilizer\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.PeriodIntegrals.ExistsGaugeMeasureForEachRank\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.SG.Pf.GE

theorem existsGaugeNormalizedStabilizer : ExistsGaugeMeasureForEachRank := (show PI.ExistsGaugeMeasureForEachRank.ExistsGaugeMeasureForEachRank ↔ ExistsGaugeMeasureForEachRank from Iff.rfl).mp _root_.exists_gaugeNormalizedStabilizer

end Formalism.L2.SG.Pf.GE
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ExistsGaugeNormalizedStabilizer =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacGaugeOfSandwichRhsWLim =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacGaugeOfSandwichRhsWLim", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstBHR\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstWbB\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.BruhatHaarOfSandwich\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ExistsGaugeNormalizedStabilizer\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.SG.Pf

theorem jacGauge_of_sandwich_rhsWLim (hS : BH.Sandwich) (hL : WB.RhsWLim) : JacGauge :=
  jacGauge_of_hearts3 hS GE.existsGaugeNormalizedStabilizer hL

end Formalism.L2.SG.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacGaugeOfSandwichRhsWLim =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.BruhatHaarProved =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.BruhatHaarProved", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstWbB\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstSandwich\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacGaugeOfSandwichRhsWLim\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.SG.Pf

theorem jacGauge_of_rhsW (hL : WB.RhsWLim) : JacGauge := jacGauge_of_sandwich_rhsWLim BH.sandwich' hL

end Formalism.L2.SG.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.BruhatHaarProved =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstFinal =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstFinal", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstWbB\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.BruhatHaarProved\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.SG.Pf

theorem WB.rhsWLim' [Fact Formalism.L2.SG.Pf.WB.RhsWLim] : WB.RhsWLim := Fact.out


variable [Fact Formalism.L2.SG.Pf.WB.RhsWLim] in
theorem jacGauge : JacGauge := jacGauge_of_rhsW WB.rhsWLim'

end Formalism.L2.SG.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstFinal =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SGaugeDensD =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SGaugeDensD", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SGaugeDensB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Filter Topology
open scoped ENNReal

noncomputable section

namespace Formalism.MainNotions.S.Gauge

variable {n : ℕ}

theorem tendsto_ratioAt_of_ball {ε : Fin n → Bool} {c s : ℝ} (hc : 0 < c) (hs : 0 < s)
    (hb : ∀ ρ : ℝ, 0 < ρ → ρ ≤ s →
      Formalism.REAL.muG ε (expSet ε (Metric.ball (0 : gLie ε) ρ)) = ENNReal.ofReal c * ∫⁻ t in Metric.ball (0 : EL ε) ρ, jd ε t) :
    Tendsto (ratioAt ε) (𝓝[>] (0 : ℝ)) (𝓝 c) := by
  rw [Metric.tendsto_nhdsWithin_nhds]
  intro e he
  set δ : ℝ := min (1 / 2) (e / (2 * c)) with hδ
  have hδpos : 0 < δ := lt_min (by norm_num) (div_pos he (by linarith))
  have hδ1 : δ ≤ 1 / 2 := min_le_left _ _
  have hδe : c * δ < e := by
    have : δ ≤ e / (2 * c) := min_le_right _ _
    calc c * δ ≤ c * (e / (2 * c)) := mul_le_mul_of_nonneg_left this hc.le
      _ = e / 2 := by field_simp
      _ < e := by linarith
  have hJc := (continuous_chartJac_thetaExp ε).continuousAt (x := 0)
  obtain ⟨η, hη, hcont⟩ := Metric.continuousAt_iff.1 hJc δ hδpos
  refine ⟨min η s, lt_min hη hs, fun ρ hρpos hρd => ?_⟩
  have hρ0 : 0 < ρ := hρpos
  have hρd' : ρ < min η s := by
    have : dist ρ 0 < min η s := hρd
    rwa [Real.dist_eq, sub_zero, abs_of_pos hρ0] at this
  have hρη : ρ ≤ η := (lt_of_lt_of_le hρd' (min_le_left _ _)).le
  have hρr : ρ ≤ s := (lt_of_lt_of_le hρd' (min_le_right _ _)).le
  have hbound : ∀ t ∈ Metric.ball (0 : EuclideanSpace ℝ (Fin (dimL ε))) ρ, |chartJac (thetaExp ε) t - 1| < δ := by
    intro t ht
    have := hcont (lt_of_lt_of_le ht hρη)
    rw [chartJac_thetaExp_zero, Real.dist_eq] at this
    exact this
  set V := volume (Metric.ball (0 : EuclideanSpace ℝ (Fin (dimL ε))) ρ) with hV
  have hVpos : 0 < V := Metric.measure_ball_pos volume 0 hρ0
  have hVfin : V ≠ ⊤ := measure_ball_lt_top.ne
  set I := ∫⁻ t in Metric.ball (0 : EuclideanSpace ℝ (Fin (dimL ε))) ρ, ENNReal.ofReal (chartJac (thetaExp ε) t) with hI
  have hup : I ≤ ENNReal.ofReal (1 + δ) * V := by
    calc I ≤ ∫⁻ _ in Metric.ball (0 : EuclideanSpace ℝ (Fin (dimL ε))) ρ, ENNReal.ofReal (1 + δ) := by
          refine lintegral_mono_ae ?_
          filter_upwards [ae_restrict_mem measurableSet_ball] with x hx
          exact ENNReal.ofReal_le_ofReal (by linarith [(abs_lt.1 (hbound x hx)).2])
      _ = ENNReal.ofReal (1 + δ) * V := setLIntegral_const _ _
  have hlo : ENNReal.ofReal (1 - δ) * V ≤ I := by
    calc ENNReal.ofReal (1 - δ) * V = ∫⁻ _ in Metric.ball (0 : EuclideanSpace ℝ (Fin (dimL ε))) ρ, ENNReal.ofReal (1 - δ) :=
          (setLIntegral_const _ _).symm
      _ ≤ I := by
          refine lintegral_mono_ae ?_
          filter_upwards [ae_restrict_mem measurableSet_ball] with x hx
          exact ENNReal.ofReal_le_ofReal (by linarith [(abs_lt.1 (hbound x hx)).1])
  have hIfin : I ≠ ⊤ := ne_top_of_le_ne_top (ENNReal.mul_ne_top ENNReal.ofReal_ne_top hVfin) hup
  have hVr : 0 < V.toReal := ENNReal.toReal_pos hVpos.ne' hVfin
  have hupR : I.toReal ≤ (1 + δ) * V.toReal := by
    have := ENNReal.toReal_mono (ENNReal.mul_ne_top ENNReal.ofReal_ne_top hVfin) hup
    rwa [ENNReal.toReal_mul, ENNReal.toReal_ofReal (by linarith)] at this
  have hloR : (1 - δ) * V.toReal ≤ I.toReal := by
    have := ENNReal.toReal_mono hIfin hlo
    rwa [ENNReal.toReal_mul, ENNReal.toReal_ofReal (by linarith)] at this
  have hratio : ratioAt ε ρ = c * I.toReal / V.toReal := by
    unfold ratioAt
    rw [hb ρ hρ0 hρr, volume_ball_gLie, ENNReal.toReal_mul, ENNReal.toReal_ofReal hc.le]
    rfl
  rw [Real.dist_eq, hratio]
  have key : |c * I.toReal / V.toReal - c| ≤ c * δ := by
    rw [abs_le]
    constructor
    · have : c * ((1 - δ) * V.toReal) ≤ c * I.toReal := mul_le_mul_of_nonneg_left hloR hc.le
      rw [le_sub_iff_add_le, le_div_iff₀ hVr]
      nlinarith
    · have : c * I.toReal ≤ c * ((1 + δ) * V.toReal) := mul_le_mul_of_nonneg_left hupR hc.le
      rw [sub_le_iff_le_add, div_le_iff₀ hVr]
      nlinarith
  exact lt_of_le_of_lt key hδe

theorem densOfBall (ε : Fin n → Bool) : DensOfBall ε := by
  rintro ⟨c, hc, s, hs, hb⟩
  have ht := tendsto_ratioAt_of_ball hc hs hb
  have he := gaugeU_eq ht
  exact ⟨he ▸ ht, he ▸ hc⟩

end Formalism.MainNotions.S.Gauge
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SGaugeDensD =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SGaugeDensG =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SGaugeDensG", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SGaugeDensB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Algebra.Group.Units\nimport Mathlib.Topology.Separation.CompletelyRegular\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Filter Topology Set Function
open scoped ENNReal

noncomputable section

namespace Formalism.MainNotions.S.Gauge

variable {n : ℕ}

section Glue

variable {ε : Fin n → Bool}

theorem continuous_expCG (ε : Fin n → Bool) : Continuous (expC ε) :=
  (continuous_expG ε).comp (obG ε).repr.symm.continuous

theorem measurable_expCG (ε : Fin n → Bool) : Measurable (expC ε) := (continuous_expCG ε).measurable

def nuG (ε : Fin n → Bool) (s : ℝ) (xs : ℕ → Formalism.REAL.UJ ε) (D : ℕ → Set (Formalism.REAL.UJ ε)) : Measure (Formalism.REAL.UJ ε) :=
  Measure.sum fun i => ((lamM ε s).map (fun h => xs i * h)).restrict (D i)

theorem lamM_map_agree {s : ℝ} (hL : LocInv ε s) (x y : Formalism.REAL.UJ ε) {B : Set (Formalism.REAL.UJ ε)} (hB : MeasurableSet B)
    (hBx : B ⊆ (fun h => x * h) '' (expC ε '' Metric.ball 0 s)) (hBy : B ⊆ (fun h => y * h) '' (expC ε '' Metric.ball 0 s)) :
    (lamM ε s).map (fun h => x * h) B = (lamM ε s).map (fun h => y * h) B := by
  rw [Measure.map_apply (measurable_const_mul x) hB, Measure.map_apply (measurable_const_mul y) hB]
  set A' := (fun h => x * h) ⁻¹' B with hA'
  have himg : (fun h => (y⁻¹ * x) * h) '' A' = (fun h => y * h) ⁻¹' B := by
    ext g
    constructor
    · rintro ⟨a, ha, rfl⟩
      show y * (y⁻¹ * x * a) ∈ B
      rw [← mul_assoc, ← mul_assoc, mul_inv_cancel, one_mul]; exact ha
    · intro hg
      refine ⟨x⁻¹ * y * g, ?_, ?_⟩
      · show x * (x⁻¹ * y * g) ∈ B
        rw [← mul_assoc, ← mul_assoc, mul_inv_cancel, one_mul]; exact hg
      · show y⁻¹ * x * (x⁻¹ * y * g) = g
        simp [mul_assoc]
  rw [← himg]
  refine (hL (y⁻¹ * x) A' (hB.preimage (measurable_const_mul x)) ?_ ?_).symm
  · intro a ha
    obtain ⟨w, hw, hwa⟩ := hBx ha
    have : w = a := mul_left_cancel hwa
    rw [← this]; exact hw
  · rw [himg]
    intro g hg
    obtain ⟨w, hw, hwg⟩ := hBy hg
    have : w = g := mul_left_cancel hwg
    rw [← this]; exact hw

section Cover

variable {s : ℝ} {xs : ℕ → Formalism.REAL.UJ ε} {D : ℕ → Set (Formalism.REAL.UJ ε)} {V : Set (Formalism.REAL.UJ ε)}

theorem nuG_eq (hL : LocInv ε s) (hVW : V ⊆ expC ε '' Metric.ball 0 s)
    (hD : ∀ i, MeasurableSet (D i)) (hdisj : Pairwise (Disjoint on D)) (hcov : ⋃ i, D i = univ)
    (hDV : ∀ i, D i ⊆ (fun h => xs i * h) '' V) (y : Formalism.REAL.UJ ε) {A : Set (Formalism.REAL.UJ ε)} (hA : MeasurableSet A)
    (hAy : A ⊆ (fun h => y * h) '' (expC ε '' Metric.ball 0 s)) :
    nuG ε s xs D A = (lamM ε s).map (fun h => y * h) A := by
  rw [nuG, Measure.sum_apply _ hA]
  simp only [Measure.restrict_apply hA]
  have e : ∀ i, (lamM ε s).map (fun h => xs i * h) (A ∩ D i) = (lamM ε s).map (fun h => y * h) (A ∩ D i) := fun i =>
    lamM_map_agree hL (xs i) y (hA.inter (hD i)) ((inter_subset_right.trans (hDV i)).trans (image_mono hVW))
      (inter_subset_left.trans hAy)
  rw [tsum_congr e, ← measure_iUnion (fun i j hij => (hdisj hij).mono inter_subset_right inter_subset_right)
    (fun i => hA.inter (hD i)), ← inter_iUnion, hcov, inter_univ]

theorem nuG_leftInv (hL : LocInv ε s) (hVW : V ⊆ expC ε '' Metric.ball 0 s)
    (hD : ∀ i, MeasurableSet (D i)) (hdisj : Pairwise (Disjoint on D)) (hcov : ⋃ i, D i = univ)
    (hDV : ∀ i, D i ⊆ (fun h => xs i * h) '' V) (g : Formalism.REAL.UJ ε) :
    (nuG ε s xs D).map (fun h => g * h) = nuG ε s xs D := by
  ext A hA
  rw [Measure.map_apply (measurable_const_mul g) hA]
  set B := (fun h => g * h) ⁻¹' A with hBdef
  have hB : MeasurableSet B := hA.preimage (measurable_const_mul g)
  have hmB : ∀ i, MeasurableSet (B ∩ D i) := fun i => hB.inter (hD i)
  have hUB : ⋃ i, B ∩ D i = B := by rw [← inter_iUnion, hcov, inter_univ]
  have hUA : ⋃ i, (fun h => g⁻¹ * h) ⁻¹' (B ∩ D i) = A := by
    rw [← preimage_iUnion, hUB, hBdef, ← preimage_comp]
    ext h; simp
  have hWsub : ∀ i, B ∩ D i ⊆ (fun h => xs i * h) '' (expC ε '' Metric.ball 0 s) := fun i =>
    (inter_subset_right.trans (hDV i)).trans (image_mono hVW)
  have e : ∀ i, nuG ε s xs D ((fun h => g⁻¹ * h) ⁻¹' (B ∩ D i)) = nuG ε s xs D (B ∩ D i) := by
    intro i
    have hm : MeasurableSet ((fun h => g⁻¹ * h) ⁻¹' (B ∩ D i)) := (hmB i).preimage (measurable_const_mul _)
    have hsub : (fun h => g⁻¹ * h) ⁻¹' (B ∩ D i) ⊆ (fun h => (g * xs i) * h) '' (expC ε '' Metric.ball 0 s) := by
      intro h hh
      obtain ⟨w, hw, hwe⟩ := hWsub i hh
      refine ⟨w, hw, ?_⟩
      show g * xs i * w = h
      have hwe' : xs i * w = g⁻¹ * h := hwe
      rw [mul_assoc, hwe']; simp
    rw [nuG_eq hL hVW hD hdisj hcov hDV (g * xs i) hm hsub, nuG_eq hL hVW hD hdisj hcov hDV (xs i) (hmB i) (hWsub i),
      Measure.map_apply (measurable_const_mul _) hm, Measure.map_apply (measurable_const_mul _) (hmB i), ← preimage_comp]
    congr 1
    ext h; simp [mul_assoc]
  calc nuG ε s xs D B = nuG ε s xs D (⋃ i, B ∩ D i) := by rw [hUB]
    _ = ∑' i, nuG ε s xs D (B ∩ D i) :=
        measure_iUnion (fun i j hij => (hdisj hij).mono inter_subset_right inter_subset_right) hmB
    _ = ∑' i, nuG ε s xs D ((fun h => g⁻¹ * h) ⁻¹' (B ∩ D i)) := (tsum_congr e).symm
    _ = nuG ε s xs D (⋃ i, (fun h => g⁻¹ * h) ⁻¹' (B ∩ D i)) :=
        (measure_iUnion (fun i j hij => ((hdisj hij).mono inter_subset_right inter_subset_right).preimage _)
          (fun i => (hmB i).preimage (measurable_const_mul _))).symm
    _ = nuG ε s xs D A := by rw [hUA]

end Cover

theorem lamM_applyG (ε : Fin n → Bool) (s : ℝ) {A : Set (Formalism.REAL.UJ ε)} (hA : MeasurableSet A) :
    lamM ε s A = ∫⁻ t in expC ε ⁻¹' A ∩ Metric.ball 0 s, jd ε t := by
  rw [lamM, Measure.map_apply (measurable_expCG ε) hA, withDensity_apply _ (hA.preimage (measurable_expCG ε)),
    Measure.restrict_restrict (hA.preimage (measurable_expCG ε))]

theorem lamM_univ_lt_top (ε : Fin n → Bool) (s : ℝ) : lamM ε s univ < ∞ := by
  rw [lamM_applyG ε s MeasurableSet.univ, preimage_univ, univ_inter]
  calc ∫⁻ t in Metric.ball (0 : EL ε) s, jd ε t ≤ ∫⁻ t in Metric.closedBall (0 : EL ε) s, jd ε t :=
        lintegral_mono_set Metric.ball_subset_closedBall
    _ = ∫⁻ t in Metric.closedBall (0 : EL ε) s, ((Real.toNNReal (chartJac (thetaExp ε) t) : NNReal) : ℝ≥0∞) := rfl
    _ < ∞ := setLIntegral_lt_top_of_isCompact (measure_closedBall_lt_top).ne (isCompact_closedBall 0 s)
        (continuous_real_toNNReal.comp (continuous_chartJac_thetaExp ε))

theorem expSet_ball_eq_image (ε : Fin n → Bool) (ρ : ℝ) :
    expSet ε (Metric.ball (0 : gLie ε) ρ) = expC ε '' Metric.ball 0 ρ := by
  rw [← expSet_ball_eq]
  ext g
  constructor
  · rintro ⟨t, ht, e⟩
    exact ⟨t, ht, uMat_inj (by rw [uMat_expC, e]; rfl)⟩
  · rintro ⟨t, ht, rfl⟩
    exact ⟨t, ht, (uMat_expC ε t).symm⟩

theorem ballFormOf (ε : Fin n → Bool) : BallFormOf ε := by
  rintro hN ⟨s₀, hs₀, hL⟩
  obtain ⟨ρ₀, hρ₀, hinj⟩ := injOn_thetaExp ε
  have hs : 0 < min s₀ ρ₀ := lt_min hs₀ hρ₀
  set s := min s₀ ρ₀ with hsdef
  have hLs : LocInv ε s := hL s hs (min_le_left _ _)
  have hinjs : Set.InjOn (expC ε) (Metric.ball 0 s) := by
    intro a ha b hb e
    apply hinj (Metric.ball_subset_ball (min_le_right _ _) ha) (Metric.ball_subset_ball (min_le_right _ _) hb)
    have := congrArg uMat e
    rw [uMat_expC, uMat_expC] at this
    exact Matrix.of.injective this
  have hVo : IsOpen (interior (expC ε '' Metric.ball (0 : EL ε) s)) := isOpen_interior
  have hVW : interior (expC ε '' Metric.ball (0 : EL ε) s) ⊆ expC ε '' Metric.ball (0 : EL ε) s := interior_subset
  have hV1 : (1 : Formalism.REAL.UJ ε) ∈ interior (expC ε '' Metric.ball (0 : EL ε) s) :=
    mem_interior_iff_mem_nhds.2 (hN s hs)
  set V := interior (expC ε '' Metric.ball (0 : EL ε) s) with hVdef
  have hcovN : ∀ x : Formalism.REAL.UJ ε, (fun h => x * h) '' V ∈ 𝓝 x := fun x =>
    ((isOpenMap_mul_left x) V hVo).mem_nhds ⟨1, hV1, mul_one x⟩
  have hOm' : ∀ y : Formalism.REAL.UJ ε, MeasurableSet ((fun h => y * h) '' V) := fun y =>
    ((isOpenMap_mul_left y) V hVo).measurableSet
  obtain ⟨S, hSc, hSU⟩ := TopologicalSpace.countable_cover_nhds hcovN
  have hSne : S.Nonempty := by
    by_contra h
    rw [Set.not_nonempty_iff_eq_empty] at h
    have : (1 : Formalism.REAL.UJ ε) ∈ ⋃ x ∈ S, (fun h => x * h) '' V := by rw [hSU]; trivial
    rw [h] at this; simp at this
  obtain ⟨xs, hxs⟩ := hSc.exists_eq_range hSne
  let O : ℕ → Set (Formalism.REAL.UJ ε) := fun i => (fun h => xs i * h) '' V
  have hOU : ⋃ i, O i = univ := by rw [← hSU, hxs, Set.biUnion_range]
  have hD : ∀ i, MeasurableSet (disjointed O i) := MeasurableSet.disjointed fun i => hOm' (xs i)
  have hdisj : Pairwise (Disjoint on disjointed O) := disjoint_disjointed O
  have hcov : ⋃ i, disjointed O i = univ := by rw [iUnion_disjointed, hOU]
  have hDV : ∀ i, disjointed O i ⊆ (fun h => xs i * h) '' V := fun i => disjointed_subset O i
  haveI : Measure.IsMulLeftInvariant (nuG ε s xs (disjointed O)) := ⟨fun g => nuG_leftInv hLs hVW hD hdisj hcov hDV g⟩
  haveI : IsLocallyFiniteMeasure (nuG ε s xs (disjointed O)) := ⟨fun y => ⟨(fun h => y * h) '' V, hcovN y, by
      rw [nuG_eq hLs hVW hD hdisj hcov hDV y (hOm' y) (image_mono hVW)]
      calc (lamM ε s).map (fun h => y * h) ((fun h => y * h) '' V) ≤ (lamM ε s).map (fun h => y * h) univ :=
            measure_mono (subset_univ _)
        _ = lamM ε s univ := by rw [Measure.map_apply (measurable_const_mul y) MeasurableSet.univ, preimage_univ]
        _ < ∞ := lamM_univ_lt_top ε s⟩⟩
  haveI : Measure.IsHaarMeasure (Formalism.REAL.muG ε) := by unfold Formalism.REAL.muG; infer_instance
  have hνμ := Measure.isMulLeftInvariant_eq_smul (nuG ε s xs (disjointed O)) (Formalism.REAL.muG ε)
  set κ := Measure.haarScalarFactor (nuG ε s xs (disjointed O)) (Formalism.REAL.muG ε) with hκdef
  have hform : ∀ ρ, 0 < ρ → ρ ≤ s →
      nuG ε s xs (disjointed O) (expC ε '' Metric.ball 0 ρ) = ∫⁻ t in Metric.ball (0 : EL ε) ρ, jd ε t := by
    intro ρ hρ hρs
    have hsub : Metric.ball (0 : EL ε) ρ ⊆ Metric.ball 0 s := Metric.ball_subset_ball hρs
    have hm : MeasurableSet (expC ε '' Metric.ball 0 ρ) :=
      measurableSet_ball.image_of_continuousOn_injOn (continuous_expCG ε).continuousOn (hinjs.mono hsub)
    have hsubW : expC ε '' Metric.ball 0 ρ ⊆ (fun h => (1 : Formalism.REAL.UJ ε) * h) '' (expC ε '' Metric.ball 0 s) := by
      simp only [one_mul, image_id']; exact image_mono hsub
    rw [nuG_eq hLs hVW hD hdisj hcov hDV 1 hm hsubW]
    have hmap : (lamM ε s).map (fun h => (1 : Formalism.REAL.UJ ε) * h) = lamM ε s := by
      simp only [one_mul]; exact Measure.map_id
    rw [hmap, lamM_applyG ε s hm]
    rw [show expC ε ⁻¹' (expC ε '' Metric.ball 0 ρ) ∩ Metric.ball 0 s = Metric.ball 0 ρ from ?_]
    ext t
    constructor
    · rintro ⟨⟨t', ht', e⟩, ht⟩
      rw [← hinjs (hsub ht') ht e]; exact ht'
    · intro ht; exact ⟨⟨t, ht, rfl⟩, hsub ht⟩
  obtain ⟨η, hη, hcont⟩ := Metric.continuousAt_iff.1 ((continuous_chartJac_thetaExp ε).continuousAt (x := 0)) (1 / 2)
    (by norm_num)
  have hρ1 : 0 < min s η := lt_min hs hη
  have hpos : ∫⁻ t in Metric.ball (0 : EL ε) (min s η), jd ε t ≠ 0 := by
    have hle : ENNReal.ofReal (1 / 2) * volume (Metric.ball (0 : EL ε) (min s η)) ≤
        ∫⁻ t in Metric.ball (0 : EL ε) (min s η), jd ε t := by
      rw [← setLIntegral_const]
      refine lintegral_mono_ae ?_
      filter_upwards [ae_restrict_mem measurableSet_ball] with t ht
      have := hcont (lt_of_lt_of_le ht (min_le_right _ _))
      rw [chartJac_thetaExp_zero, Real.dist_eq] at this
      exact ENNReal.ofReal_le_ofReal (by linarith [(abs_lt.1 this).1])
    refine (lt_of_lt_of_le ?_ hle).ne'
    exact ENNReal.mul_pos (by simp) (Metric.measure_ball_pos _ _ hρ1).ne'
  have hκ : κ ≠ 0 := by
    intro h0
    apply hpos
    rw [← hform _ hρ1 (min_le_left _ _), hνμ, h0, zero_smul]
    rfl
  have hκpos : (0 : ℝ) < (κ : ℝ) := NNReal.coe_pos.2 (pos_iff_ne_zero.2 hκ)
  refine ⟨((κ : ℝ))⁻¹, inv_pos.2 hκpos, s, hs, fun ρ hρ hρs => ?_⟩
  rw [expSet_ball_eq_image]
  have h1 := hform ρ hρ hρs
  rw [hνμ] at h1
  simp only [Measure.smul_apply, ENNReal.smul_def, smul_eq_mul] at h1
  rw [← h1, ← mul_assoc, ENNReal.ofReal_inv_of_pos hκpos, ENNReal.ofReal_coe_nnreal,
    ENNReal.inv_mul_cancel (ENNReal.coe_ne_zero.2 hκ) ENNReal.coe_ne_top, one_mul]

end Glue

end Formalism.MainNotions.S.Gauge
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SGaugeDensG =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SGaugeDensJ =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SGaugeDensJ", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SGaugeDensB\nimport Mathlib.Algebra.Order.Archimedean.Real.Hom\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.Normed.Algebra.MatrixExponential\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Filter Topology
open scoped ENNReal

noncomputable section

namespace Formalism.MainNotions.S.Gauge

variable {n : ℕ}

section JacInvSec

variable {N : ℕ}

def lmulP (Z : Matrix (Fin n) (Fin n) ℂ) : MP n →L[ℝ] MP n :=
  LinearMap.toContinuousLinearMap
    { toFun := fun X => Matrix.of.symm (Z * Matrix.of X)
      map_add' := fun X Y => by
        funext i j
        simp [Matrix.mul_apply, Finset.sum_add_distrib, mul_add]
      map_smul' := fun c X => by
        funext i j
        simp [Matrix.mul_apply, Finset.smul_sum, mul_left_comm] }

theorem lmulP_apply (Z : Matrix (Fin n) (Fin n) ℂ) (X : MP n) : lmulP Z X = Matrix.of.symm (Z * Matrix.of X) := rfl

theorem of_sum_smul (c : Fin N → ℝ) (X : Fin N → MP n) :
    Matrix.of (∑ k, c k • X k) = ∑ k, c k • Matrix.of (X k) := by
  ext i j
  simp [Matrix.sum_apply, Finset.sum_apply]

theorem sum_single (v : EuclideanSpace ℝ (Fin N)) : v = ∑ k, v k • EuclideanSpace.single k (1 : ℝ) := by
  conv_lhs => rw [← (EuclideanSpace.basisFun (Fin N) ℝ).sum_repr v]
  simp [EuclideanSpace.basisFun_apply]

theorem mul_dPart {Θ : EuclideanSpace ℝ (Fin N) → MP n} {U : Set (EuclideanSpace ℝ (Fin N))}
    {φ : EuclideanSpace ℝ (Fin N) → EuclideanSpace ℝ (Fin N)} {Z : Matrix (Fin n) (Fin n) ℂ}
    (hΘ : Differentiable ℝ Θ) (hU : IsOpen U) (hφ : DifferentiableOn ℝ φ U)
    (h : ∀ t ∈ U, Matrix.of (Θ (φ t)) = Z * Matrix.of (Θ t)) {t : EuclideanSpace ℝ (Fin N)} (ht : t ∈ U) (i : Fin N) :
    Z * Matrix.of (dPart Θ t i) =
      ∑ k, (fderiv ℝ φ t (EuclideanSpace.single i 1) k) • Matrix.of (dPart Θ (φ t) k) := by
  have hφt : DifferentiableAt ℝ φ t := hφ.differentiableAt (hU.mem_nhds ht)
  have heq : (Θ ∘ φ) =ᶠ[𝓝 t] (lmulP Z ∘ Θ) := by
    filter_upwards [hU.mem_nhds ht] with s hs
    simp only [Function.comp_apply, lmulP_apply, ← h s hs, Equiv.symm_apply_apply]
  have h1 : fderiv ℝ (Θ ∘ φ) t = (fderiv ℝ Θ (φ t)).comp (fderiv ℝ φ t) := fderiv_comp t (hΘ _) hφt
  have h2 : fderiv ℝ (lmulP Z ∘ Θ) t = (lmulP Z).comp (fderiv ℝ Θ t) := by
    rw [fderiv_comp t (lmulP Z).differentiableAt (hΘ t), ContinuousLinearMap.fderiv]
  have h3 := heq.fderiv_eq (𝕜 := ℝ)
  rw [h1, h2] at h3
  have h4 := congrArg (fun L => L (EuclideanSpace.single i 1)) h3
  simp only [ContinuousLinearMap.comp_apply, lmulP_apply] at h4

  rw [sum_single (fderiv ℝ φ t (EuclideanSpace.single i 1)), map_sum] at h4
  simp only [map_smul] at h4
  have h5 := congrArg Matrix.of h4
  rw [Equiv.apply_symm_apply] at h5
  simp only [dPart]
  exact h5.symm.trans (of_sum_smul _ _)

theorem chartJac_mul_det {Θ : EuclideanSpace ℝ (Fin N) → MP n} {U : Set (EuclideanSpace ℝ (Fin N))}
    {φ : EuclideanSpace ℝ (Fin N) → EuclideanSpace ℝ (Fin N)} {Z : Matrix (Fin n) (Fin n) ℂ}
    (hΘ : Differentiable ℝ Θ) (hinv : ∀ s, IsUnit (Matrix.of (Θ s)).det) (hU : IsOpen U) (hφ : DifferentiableOn ℝ φ U)
    (h : ∀ t ∈ U, Matrix.of (Θ (φ t)) = Z * Matrix.of (Θ t)) {t : EuclideanSpace ℝ (Fin N)} (ht : t ∈ U) :
    chartJac Θ (φ t) * |(fderiv ℝ φ t).det| = chartJac Θ t := by
  set D : Matrix (Fin N) (Fin N) ℝ := Matrix.of fun k i => fderiv ℝ φ t (EuclideanSpace.single i 1) k with hDdef
  set M := Matrix.of (Θ t)
  set M' := Matrix.of (Θ (φ t))
  have hM' : M' = Z * M := h t ht
  have hZ : IsUnit Z.det := by
    have := hinv (φ t)
    change IsUnit M'.det at this
    rw [hM', Matrix.det_mul] at this
    exact isUnit_of_mul_isUnit_left this
  have hMinv : M⁻¹ = M'⁻¹ * Z := by
    rw [hM', Matrix.mul_inv_rev, Matrix.mul_assoc, Matrix.nonsing_inv_mul _ hZ, Matrix.mul_one]
  set w : EuclideanSpace ℝ (Fin N) → Fin N → EuclideanSpace ℝ (Fin n × Fin n × Bool) :=
    fun s i => realV ((Matrix.of (Θ s))⁻¹ * Matrix.of (dPart Θ s i)) with hwdef
  have hw : ∀ i, w t i = ∑ k, D k i • w (φ t) k := by
    intro i
    have e1 : w t i = realV (M'⁻¹ * (Z * Matrix.of (dPart Θ t i))) := by
      simp only [hwdef]
      change realV (M⁻¹ * _) = _
      rw [hMinv, Matrix.mul_assoc]
    rw [e1, mul_dPart hΘ hU hφ h ht i, Matrix.mul_sum]
    simp only [Matrix.mul_smul]
    change realL n (∑ k, _) = _

    rw [map_sum]
    simp only [map_smul]
    rfl
  have hG : (Matrix.of fun i j : Fin N => @inner ℝ _ _ (w t i) (w t j)) =
      D.transpose * (Matrix.of fun k l : Fin N => @inner ℝ _ _ (w (φ t) k) (w (φ t) l)) * D := by
    ext i j
    rw [Matrix.of_apply, hw i, hw j]
    simp only [sum_inner, inner_sum, real_inner_smul_left, real_inner_smul_right, Matrix.mul_apply,
      Matrix.transpose_apply, Matrix.of_apply, Finset.sum_mul]
    refine Finset.sum_congr rfl fun k _ => Finset.sum_congr rfl fun l _ => ?_
    ring
  have hdet : (fderiv ℝ φ t).det = D.det := by
    rw [ContinuousLinearMap.det, ← LinearMap.det_toMatrix (EuclideanSpace.basisFun (Fin N) ℝ).toBasis]
    congr 1
  have hJ : chartJac Θ t = Real.sqrt (Matrix.det (Matrix.of fun i j : Fin N => @inner ℝ _ _ (w t i) (w t j))) := rfl
  have hJ' : chartJac Θ (φ t) =
      Real.sqrt (Matrix.det (Matrix.of fun i j : Fin N => @inner ℝ _ _ (w (φ t) i) (w (φ t) j))) := rfl
  rw [hJ, hJ', hG, Matrix.det_mul, Matrix.det_mul, Matrix.det_transpose, hdet,
    show D.det * Matrix.det (Matrix.of fun k l : Fin N => @inner ℝ _ _ (w (φ t) k) (w (φ t) l)) * D.det =
      (D.det * D.det) * Matrix.det (Matrix.of fun k l : Fin N => @inner ℝ _ _ (w (φ t) k) (w (φ t) l)) by ring,
    Real.sqrt_mul (mul_self_nonneg _), Real.sqrt_mul_self_eq_abs, mul_comm]

end JacInvSec

theorem jacInv (ε : Fin n → Bool) : JacInv ε := by
  intro U φ Z hU hφ h t ht
  refine chartJac_mul_det ((contDiff_thetaExp ε).differentiable (by simp)) (fun s => ?_) hU hφ h ht
  rw [of_thetaExp]
  exact (Matrix.isUnit_iff_isUnit_det _).1 (Matrix.isUnit_exp _)

end Formalism.MainNotions.S.Gauge
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SGaugeDensJ =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SGaugeDensV =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SGaugeDensV", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SGaugeDensB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Algebra.Group.Units\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Filter Topology
open scoped ENNReal

noncomputable section

namespace Formalism.MainNotions.S.Gauge

variable {n : ℕ}

theorem continuous_expC (ε : Fin n → Bool) : Continuous (expC ε) :=
  (continuous_expG ε).comp (obG ε).repr.symm.continuous

theorem expC_injOn (ε : Fin n → Bool) : ∃ ρ₀ > 0, Set.InjOn (expC ε) (Metric.ball 0 ρ₀) := by
  obtain ⟨ρ₀, hρ, hinj⟩ := injOn_thetaExp ε
  refine ⟨ρ₀, hρ, fun a ha b hb e => hinj ha hb ?_⟩
  have e2 := congrArg uMat e
  rw [uMat_expC, uMat_expC] at e2
  exact Matrix.of.injective e2

theorem lamM_apply (ε : Fin n → Bool) (s : ℝ) {B : Set (Formalism.REAL.UJ ε)} (hB : MeasurableSet B) :
    lamM ε s B = ∫⁻ t in expC ε ⁻¹' B ∩ Metric.ball 0 s, jd ε t := by
  have hm : MeasurableSet (expC ε ⁻¹' B) := (continuous_expC ε).measurable hB
  rw [lamM, Measure.map_apply (continuous_expC ε).measurable hB, withDensity_apply _ hm,
    Measure.restrict_restrict hm]

theorem locInvOf (ε : Fin n → Bool) : LocInvOf ε := by
  intro hT hJ
  obtain ⟨s₁, hs₁, hTs⟩ := hT
  obtain ⟨ρ₀, hρ₀, hinj⟩ := expC_injOn ε
  refine ⟨min s₁ ρ₀, lt_min hs₁ hρ₀, fun s hs hss z A hA hAs hzA => ?_⟩
  have hinjs : Set.InjOn (expC ε) (Metric.ball 0 s) :=
    hinj.mono (Metric.ball_subset_ball (hss.trans (min_le_right _ _)))
  obtain ⟨U, hU, φ, hφ, hΘ, hsub⟩ := hTs s hs (hss.trans (min_le_left _ _)) z
  have hexp : ∀ t ∈ U, expC ε (φ t) = z * expC ε t := by
    intro t ht
    apply uMat_inj
    show _ = uMat z * uMat (expC ε t)
    simp only [uMat_expC]
    exact hΘ t ht
  set T := expC ε ⁻¹' A ∩ Metric.ball 0 s with hTdef
  have hTU : ∀ t ∈ T, t ∈ U ∧ φ t ∈ Metric.ball (0 : EL ε) s := fun t ht =>
    hsub t ht.2 (hzA ⟨expC ε t, ht.1, rfl⟩)
  have himage : φ '' T = expC ε ⁻¹' ((fun g => z * g) '' A) ∩ Metric.ball 0 s := by
    ext t'
    constructor
    · rintro ⟨t, ht, rfl⟩
      refine ⟨?_, (hTU t ht).2⟩
      show expC ε (φ t) ∈ (fun g => z * g) '' A
      rw [hexp t (hTU t ht).1]
      exact ⟨expC ε t, ht.1, rfl⟩
    · rintro ⟨⟨a, ha, hza⟩, ht'⟩
      obtain ⟨t, htb, rfl⟩ := hAs ha
      have htT : t ∈ T := ⟨ha, htb⟩
      refine ⟨t, htT, hinjs (hTU t htT).2 ht' ?_⟩
      rw [hexp t (hTU t htT).1]
      exact hza
  have hinjT : Set.InjOn φ T := by
    intro a ha b hb e
    apply hinjs ha.2 hb.2
    have e2 := congrArg (expC ε) e
    rw [hexp a (hTU a ha).1, hexp b (hTU b hb).1] at e2
    exact mul_left_cancel e2
  have hzAm : MeasurableSet ((fun g => z * g) '' A) := by
    have : (fun g => z * g) '' A = (fun g => z⁻¹ * g) ⁻¹' A := by
      ext g
      constructor
      · rintro ⟨a, ha, rfl⟩
        simpa using ha
      · intro hg
        exact ⟨z⁻¹ * g, hg, by simp⟩
    rw [this]
    exact (continuous_const_mul z⁻¹).measurable hA
  have hTm : MeasurableSet T := ((continuous_expC ε).measurable hA).inter measurableSet_ball
  rw [lamM_apply ε s hzAm, lamM_apply ε s hA, ← himage,
    lintegral_image_eq_lintegral_abs_det_fderiv_mul volume hTm
      (fun t ht => ((hφ.differentiableAt (hU.mem_nhds (hTU t ht).1)).hasFDerivAt).hasFDerivWithinAt) hinjT]
  refine setLIntegral_congr_fun hTm (fun t ht => ?_)
  simp only [jd]
  rw [← ENNReal.ofReal_mul (abs_nonneg _), mul_comm, hJ U φ (uMat z) hU hφ hΘ t (hTU t ht).1]

end Formalism.MainNotions.S.Gauge
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SGaugeDensV =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SGaugeDensPf =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SGaugeDensPf", "h": "module\n\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.SGauge\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SGaugeDensD\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SGaugeDensG\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SGaugeDensJ\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SGaugeDensL\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SGaugeDensV\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SGaugeDensB\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.MainNotions.S.Gauge

theorem gauge_density_exists : ∀ (n : ℕ) (ε : Fin n → Bool), GaugeDens ε := fun _ ε =>
  gaugeDens_of_parts ε (chartNhd ε) (transC ε) (jacInv ε) (locInvOf ε) (ballFormOf ε) (densOfBall ε)

end Formalism.MainNotions.S.Gauge
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SGaugeDensPf =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.RealBracketHolds =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.RealBracketHolds", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.DualFamilyCounting.NcRealXPS\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstWbB\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.BlockGrp\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.JacConstFinal\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.SGaugeDensPf\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.CokernelGLCounts.RankPointCounts.MassDataXLeaves\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AprimeInf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.SG.Closed

theorem AprimeInf_holds [hG : Fact PI.AprimeInfW.GaugeVolUD] : Formalism.L2.SG.Pf.NcReal.AprimeInf :=
  _root_.PI.AprimeInfAsm.aprimeInf_of_hinfCompact Formalism.L2.SG.Pf.MassDataX.hinfCompact_holds hG.out

open Formalism.L2.SG.Pf Formalism.L2.SG.Pf.NcReal in
variable [Fact PI.AprimeInfW.GaugeVolUD] [Fact Formalism.L2.SG.Pf.WB.RhsWLim] in
theorem RealBracket_holds (hC : Formalism.L2.SG.Pf.NcReal.JX.CovolRef) : Formalism.L2.SG.Pf.NcReal.RealBracket :=
  Formalism.L2.SG.Pf.NcReal.JX.realBracket_of_jac _root_.Formalism.L2.SG.Pf.jacGauge hC AprimeInf_holds
    (fun n ε => Formalism.MainNotions.S.Gauge.gauge_density_exists n ε)

end Formalism.L2.SG.Closed
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.RealBracketHolds =====
