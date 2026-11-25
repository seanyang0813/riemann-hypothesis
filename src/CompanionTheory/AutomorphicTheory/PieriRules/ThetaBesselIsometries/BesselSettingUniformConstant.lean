module

public import CompanionTheory.AutomorphicTheory.PieriRules.ThetaBesselIsometries.IsDSOfIsDG
public import CompanionTheory.AutomorphicTheory.PieriRules.ThetaBesselIsometries.BesselFormalDegreeIdentity
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.BesselCharacterUnipotentRadicalPropertiesStatement
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.BesselSubgroupParameterMeasurePreservingStatement
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.IsHaarOnIffGroupsUnitaryUnipotentStatement
public import CompanionTheory.AutomorphicTheory.PieriRules.ThetaBesselIsometries.BesselPeriodAdjointPair
public import Formalism.HermitianCurvature.BesselNonvanishingReduction
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.BesselNormSqEqConstMulArchPairing
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.BetaInfEqIntegralOfIntegrableCoefficient
public import Development.AbelianVarietyTheory.Proofs.JetHarmonics.DecayThresholdsOfSpectralGapCondition
import CompanionTheory.AutomorphicTheory.PieriRules.ThetaBesselIsometries.DiscreteSeriesUnitarySmoothBasic
import Formalism.HermitianCurvature.HermitianCurvatureProofs.NormDiagonalEntryDilationGeneratorLeOne
import Formalism.HermitianCurvature.HermitianCurvatureProofs.UnipotentCoordinatesMeasurePreserving

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: CompanionTheory.AutomorphicTheory.PieriRules.ThetaBesselIsometries.BesselFormalDegreePairing, CompanionTheory.AutomorphicTheory.PieriRules.ThetaBesselIsometries.BesselSettingUniformConstant

-- ===== clump member: CompanionTheory.AutomorphicTheory.PieriRules.ThetaBesselIsometries.BesselFormalDegreePairing =====
-- clump-header: {"m": "CompanionTheory.AutomorphicTheory.PieriRules.ThetaBesselIsometries.BesselFormalDegreePairing", "h": "module\n\npublic import CompanionTheory.AutomorphicTheory.PieriRules.ThetaBesselIsometries.IsDSOfIsDG\npublic import CompanionTheory.AutomorphicTheory.PieriRules.ThetaBesselIsometries.BesselFormalDegreeIdentity\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.BesselCharacterUnipotentRadicalPropertiesStatement\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.BesselSubgroupParameterMeasurePreservingStatement\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.IsHaarOnIffGroupsUnitaryUnipotentStatement\nimport CompanionTheory.AutomorphicTheory.PieriRules.ThetaBesselIsometries.DiscreteSeriesUnitarySmoothBasic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.ContinuousLinearMap\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory
end GlobalTheory

open GlobalTheory

namespace Gp91
open BranchingSupport Formalism.FourierDecayAlt Formalism.FourierDecayAlt.ThreeDimData Matrix MeasureTheory Finset
open scoped InnerProductSpace ENNReal

namespace GlobalTheory

theorem besPhInt_bilin {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [FiniteDimensional ℂ Wp]
    [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wq] (X X' : Wq →L[ℂ] Wp) :
    ∃ T : (Wp →L[ℂ] Wp) →L[ℂ] (Wq →L[ℂ] Wq) →L[ℂ] ℂ, ∀ P Q, T P Q = B.hsInner (P.comp (X.comp Q)) X' := by
  refine ⟨∑ i, ((ContinuousLinearMap.compL ℂ (Wq →L[ℂ] Wq) Wp ℂ (innerSL ℂ (X' (stdOrthonormalBasis ℂ Wq i)))).comp
    ((ContinuousLinearMap.compL ℂ (Wq →L[ℂ] Wq) Wp Wp).flip
      (X.comp (ContinuousLinearMap.apply ℂ Wq (stdOrthonormalBasis ℂ Wq i))))), fun P Q => ?_⟩
  simp [B.hsInner, B.hsVec, PiLp.inner_apply]

theorem besPhInt_rank {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [FiniteDimensional ℂ Wp]
    [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wq] (X X' : Wq →L[ℂ] Wp)
    (a a' : Wp) (b b' : Wq) :
    B.hsInner (((innerSL ℂ a).smulRight a').comp (X.comp ((innerSL ℂ b').smulRight b))) X' =
      ⟪a, X b⟫_ℂ * star ⟪a', X' b'⟫_ℂ := by
  have hb : X' b' = ∑ i, ⟪stdOrthonormalBasis ℂ Wq i, b'⟫_ℂ • X' (stdOrthonormalBasis ℂ Wq i) := by
    conv_lhs => rw [← (stdOrthonormalBasis ℂ Wq).sum_repr' b']
    simp [map_sum]
  rw [show star ⟪a', X' b'⟫_ℂ = ⟪X' b', a'⟫_ℂ from inner_conj_symm _ _, hb, sum_inner, Finset.mul_sum]
  simp only [B.hsInner, B.hsVec, PiLp.inner_apply]
  refine Finset.sum_congr rfl fun i _ => ?_
  simp only [ContinuousLinearMap.comp_apply, ContinuousLinearMap.smulRight_apply, innerSL_apply_apply, map_smul,
    inner_smul_right, inner_smul_left, inner_conj_symm]
  ring

theorem besPhInt_xi {k r : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp]
    [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] (D : B.RealPlaceData k r Wp Wq) (p : B.SS k r) :
    B.xiTau D (1, 1) p = Formalism.QuantumDeterminants.psi k r D.z Formalism.QuantumDeterminants.cStd (Matrix.of p.1.2) *
      star (Formalism.QuantumDeterminants.psi k r D.z' Formalism.QuantumDeterminants.cStd (Matrix.of p.2.2)) := by
  unfold Formalism.FourierDecayAlt.B.xiTau Formalism.FourierDecayAlt.B.lam Formalism.QuantumDeterminants.psi
  rw [Complex.star_def, ← Complex.exp_conj, ← Complex.exp_add]
  congr 1
  simp only [map_mul, Complex.conj_I, Complex.conj_ofReal]
  push_cast
  ring

private theorem continuous_ell_matrix_of {k r : ℕ} (z : Fin (2 * r + k + 1) → ℂ) :
    Continuous (fun q : Formalism.QuantumDeterminants.Mt k r => Formalism.QuantumDeterminants.ell k r z (Matrix.of q)) := by
  unfold Formalism.QuantumDeterminants.ell
  refine continuous_finsetSum _ (fun a _ => ?_)
  by_cases h : (a : ℕ) + 1 < r
  · simp only [dif_pos h, Matrix.of_apply]
    fun_prop
  · simp only [dif_neg h, Matrix.mulVec, dotProduct, Matrix.of_apply]
    exact continuous_finsetSum _ (fun j _ => by fun_prop)

theorem besPhInt_xi_cont {k r : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp]
    [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] (D : B.RealPlaceData k r Wp Wq) :
    Continuous (B.xiTau D (1, 1)) := by
  have h1 : Continuous (fun p : B.SS k r => Formalism.QuantumDeterminants.ell k r D.z (Matrix.of p.1.2)) :=
    (continuous_ell_matrix_of D.z).comp (continuous_snd.comp continuous_fst)
  have h2 : Continuous (fun p : B.SS k r => Formalism.QuantumDeterminants.ell k r D.z' (Matrix.of p.2.2)) :=
    (continuous_ell_matrix_of D.z').comp (continuous_snd.comp continuous_snd)
  unfold Formalism.FourierDecayAlt.B.xiTau Formalism.FourierDecayAlt.B.lam
  exact Complex.continuous_exp.comp (continuous_const.mul (Complex.continuous_ofReal.comp
    ((continuous_const.mul (Complex.continuous_re.comp (continuous_const.mul h1))).sub
      (continuous_const.mul (Complex.continuous_re.comp (continuous_const.mul h2))))))

private theorem isUnit_det_of_mem_UH_Hpk_of_inv_mem {k r : ℕ} (hk : 1 ≤ k)
    {g : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ}
    (hg : g ∈ Formalism.QuantumDeterminants.UH (Formalism.QuantumDeterminants.Hpk k r)) (hg' : g⁻¹ ∈ Formalism.QuantumDeterminants.UH (Formalism.QuantumDeterminants.Hpk k r)) :
    IsUnit g.det := by
  by_contra hu
  rw [Matrix.nonsing_inv_apply_not_isUnit g hu] at hg'
  have h0 : Formalism.QuantumDeterminants.Hpk k r = 0 := by
    have h1 := hg'
    simp only [Formalism.QuantumDeterminants.UH, Set.mem_setOf_eq, Matrix.conjTranspose_zero, Matrix.zero_mul] at h1
    exact h1.symm
  have hr : r < 2 * r + k + 1 := by omega
  have hk0 : k ≠ 0 := by omega
  have h2 := congrFun (congrFun h0 ⟨r, hr⟩) ⟨r, hr⟩
  simp [Formalism.QuantumDeterminants.Hpk, hk0] at h2

theorem integral_xi_mul_Ph : HypsG → ∀ (k r : ℕ) (ε : Fin (2 * r + k + 1) → Bool) (mu : Fin (2 * r + k + 1) → ℝ) (h : ℝ) (R : Rep k r) (Wp : Type) [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [CompleteSpace Wp] [FiniteDimensional ℂ Wp] (Wq : Type) [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [CompleteSpace Wq] [FiniteDimensional ℂ Wq] (D : B.RealPlaceData k r Wp Wq) (l : R.H → Wp) (l' : R.H → Wq) (dd : ℝ), R.IsDG ε mu → Formalism.QuantumDeterminants.GapAtLeast ε mu h → GapOK k r h → IsBeL R D.z D.π D.μW D.μN l → IsBeL R D.z' D.π' D.μW' D.μN l' → (∀ w, w ≠ 0 → PI.BesselPeriodGGP.fdegH D.μG R.σ w = dd) → ∀ x ∈ R.TK, ∀ y ∈ R.TK, ∀ x' ∈ R.TK, ∀ y' ∈ R.TK, ∀ X X' : Wq →L[ℂ] Wp, Integrable (B.Ph D (fun g => ⟪x, R.σ g y⟫_ℂ • X) (fun g => ⟪x', R.σ g y'⟫_ℂ • X')) D.μSS ∧ ∫ p, B.xiTau D (1, 1) p * B.Ph D (fun g => ⟪x, R.σ g y⟫_ℂ • X) (fun g => ⟪x', R.σ g y'⟫_ℂ • X') p ∂D.μSS = ⟪l x, X (l' y)⟫_ℂ * star ⟪l x', X' (l' y')⟫_ℂ / (dd : ℂ) := by
  intro hH k r ε mu h R Wp _ _ _ _ Wq _ _ _ _ D l l' dd hDG _ _ hl hl' hdd x hx y hy x' hx' y' hy' X X'
  classical
  have hrep := rep_basic_of_isDS hH.1.2.2.1 k r ε mu R hDG
  have hmul := hrep.1
  have hone := hrep.2.1
  have hunit := hrep.2.2.1
  have hTKsm := hrep.2.2.2.2.1
  have hWpi : PI.BesselPeriodGGP.IsHaarOn (Formalism.QuantumDeterminants.UWset k r D.z) D.μW :=
    ((_root_.GlobalTheory.T.isHaarOn_iff_groups_unitary_unipotent k r D.μW).2.2 D.z D.z_mem D.T_pos D.k_pos).2 D.haarW
  have hNpi : PI.BesselPeriodGGP.IsHaarOn (Formalism.QuantumDeterminants.Nset k r) D.μN :=
    (_root_.GlobalTheory.T.isHaarOn_iff_groups_unitary_unipotent k r D.μN).2.1.2 D.haarN
  have hW'pi : PI.BesselPeriodGGP.IsHaarOn (Formalism.QuantumDeterminants.UWset k r D.z') D.μW' :=
    ((_root_.GlobalTheory.T.isHaarOn_iff_groups_unitary_unipotent k r D.μW').2.2 D.z' D.z'_mem D.T'_pos D.k_pos).2 D.haarW'
  haveI : SigmaFinite D.μW := hWpi.1
  haveI : SigmaFinite D.μN := hNpi.1
  haveI : SigmaFinite D.μW' := hW'pi.1
  have h55 := _root_.GlobalTheory.T.besselSubgroup_parameter_measurePreserving k r D.z D.μW D.μN D.k_pos D.z_mem D.T_pos hWpi hNpi
  have h55' := _root_.GlobalTheory.T.besselSubgroup_parameter_measurePreserving k r D.z' D.μW' D.μN D.k_pos D.z'_mem D.T'_pos hW'pi hNpi
  have h54 := _root_.GlobalTheory.T.besselCharacter_unipotentRadical_properties k r D.z Formalism.QuantumDeterminants.cStd D.z_mem
  have h54' := _root_.GlobalTheory.T.besselCharacter_unipotentRadical_properties k r D.z' Formalism.QuantumDeterminants.cStd D.z'_mem
  obtain ⟨Φ, hΦ, hΦd⟩ : ∃ Φ : Formalism.QuantumDeterminants.Mt k r × Formalism.QuantumDeterminants.Mt k r → Formalism.QuantumDeterminants.Mt k r × Formalism.QuantumDeterminants.Mt k r,
      MeasurePreserving Φ (D.μW.prod D.μN) (D.μW.prod D.μN) ∧
        ∀ q, Φ q = ((fun i j => (Matrix.of q.1)⁻¹ i j), (fun i j => (Matrix.of q.2)⁻¹ i j)) :=
    ⟨_, h55.2.2.2.2.1, fun q => rfl⟩
  obtain ⟨Ψ, hΨ, hΨd⟩ : ∃ Ψ : Formalism.QuantumDeterminants.Mt k r × Formalism.QuantumDeterminants.Mt k r → Formalism.QuantumDeterminants.Mt k r × Formalism.QuantumDeterminants.Mt k r,
      MeasurePreserving Ψ (D.μW'.prod D.μN) (D.μW'.prod D.μN) ∧
        ∀ q, Ψ q = ((fun i j => Matrix.of q.1 i j),
          (fun i j => ((Matrix.of q.1)⁻¹ * Matrix.of q.2 * Matrix.of q.1) i j)) :=
    ⟨_, h55'.2.2.2.1, fun q => rfl⟩
  obtain ⟨U, hUd⟩ : ∃ U : Formalism.QuantumDeterminants.Mt k r × Formalism.QuantumDeterminants.Mt k r → Wp →L[ℂ] Wp, ∀ q, U q =
      (Formalism.QuantumDeterminants.psi k r D.z Formalism.QuantumDeterminants.cStd (Matrix.of q.2) *
        ⟪(R.σ (Matrix.of q.2 * Matrix.of q.1)) x, x'⟫_ℂ) • D.π (Matrix.of q.1) := ⟨_, fun q => rfl⟩
  obtain ⟨V, hVd⟩ : ∃ V : Formalism.QuantumDeterminants.Mt k r × Formalism.QuantumDeterminants.Mt k r → Wq →L[ℂ] Wq, ∀ q, V q =
      (star (Formalism.QuantumDeterminants.psi k r D.z' Formalism.QuantumDeterminants.cStd (Matrix.of q.2)) *
        ⟪y', (R.σ (Matrix.of q.2 * Matrix.of q.1)) y⟫_ℂ) • D.π' (Matrix.of q.1)⁻¹ := ⟨_, fun q => rfl⟩
  have hUeq : ∀ q : Formalism.QuantumDeterminants.Mt k r × Formalism.QuantumDeterminants.Mt k r, Matrix.of q.1 ∈ Formalism.QuantumDeterminants.UWset k r D.z →
      Matrix.of q.2 ∈ Formalism.QuantumDeterminants.Nset k r →
      Formalism.FourierDecayAlt.ThreeDimData.beInt D.z Formalism.QuantumDeterminants.cStd D.π R.σ x' x (Φ q) = U q := by
    intro q hH hN
    obtain ⟨hNinv, hψinv⟩ := h54.2.2.1 _ hN
    have hHinv := (h54.2.2.2.2.1 _ hH _ hH).2.1
    have hHG := (h54.2.2.2.2.1 _ hH _ hH).2.2
    have hHinvG := (h54.2.2.2.2.1 _ hHinv _ hHinv).2.2
    have hNG := h54.2.2.2.2.2 _ hN
    have hNinvG := h54.2.2.2.2.2 _ hNinv
    have huH := isUnit_det_of_mem_UH_Hpk_of_inv_mem D.k_pos hH.1 hHinv.1
    have huN := isUnit_det_of_mem_UH_Hpk_of_inv_mem D.k_pos hN.1 hNinv.1
    have hin : ⟪x, (R.σ ((Matrix.of q.1)⁻¹ * (Matrix.of q.2)⁻¹)) x'⟫_ℂ =
        ⟪(R.σ (Matrix.of q.2 * Matrix.of q.1)) x, x'⟫_ℂ := by
      rw [hmul _ hNG _ hHG, hmul _ hHinvG _ hNinvG]
      calc ⟪x, (R.σ (Matrix.of q.1)⁻¹) ((R.σ (Matrix.of q.2)⁻¹) x')⟫_ℂ
          = ⟪(R.σ (Matrix.of q.1)) x,
              (R.σ (Matrix.of q.1)) ((R.σ (Matrix.of q.1)⁻¹) ((R.σ (Matrix.of q.2)⁻¹) x'))⟫_ℂ :=
            (hunit _ hHG _ _).symm
        _ = ⟪(R.σ (Matrix.of q.1)) x, (R.σ (Matrix.of q.2)⁻¹) x'⟫_ℂ := by
            rw [← hmul _ hHG _ hHinvG, Matrix.mul_nonsing_inv _ huH, hone]
        _ = ⟪(R.σ (Matrix.of q.2)) ((R.σ (Matrix.of q.1)) x),
              (R.σ (Matrix.of q.2)) ((R.σ (Matrix.of q.2)⁻¹) x')⟫_ℂ :=
            (hunit _ hNG _ _).symm
        _ = ⟪(R.σ (Matrix.of q.2)) ((R.σ (Matrix.of q.1)) x), x'⟫_ℂ := by
            rw [← hmul _ hNG _ hNinvG, Matrix.mul_nonsing_inv _ huN, hone]
    rw [hΦd, hUd]
    show (⟪x, (R.σ ((Matrix.of q.1)⁻¹ * (Matrix.of q.2)⁻¹)) x'⟫_ℂ *
        star (Formalism.QuantumDeterminants.psi k r D.z Formalism.QuantumDeterminants.cStd (Matrix.of q.2)⁻¹)) • D.π ((Matrix.of q.1)⁻¹)⁻¹ = _
    rw [hψinv, star_star, Matrix.nonsing_inv_nonsing_inv _ huH, hin]
    congr 1
    ring
  have hVeq : ∀ q : Formalism.QuantumDeterminants.Mt k r × Formalism.QuantumDeterminants.Mt k r, Matrix.of q.1 ∈ Formalism.QuantumDeterminants.UWset k r D.z' →
      Matrix.of q.2 ∈ Formalism.QuantumDeterminants.Nset k r →
      Formalism.FourierDecayAlt.ThreeDimData.beInt D.z' Formalism.QuantumDeterminants.cStd D.π' R.σ y y' (Ψ q) = V q := by
    intro q hH hN
    have hHinv := (h54'.2.2.2.2.1 _ hH _ hH).2.1
    have huH := isUnit_det_of_mem_UH_Hpk_of_inv_mem D.k_pos hH.1 hHinv.1
    have hψc := (h54'.2.2.2.1 _ hH _ hN).2.2.2
    have hm : Matrix.of q.1 * ((Matrix.of q.1)⁻¹ * Matrix.of q.2 * Matrix.of q.1) =
        Matrix.of q.2 * Matrix.of q.1 := by
      rw [← mul_assoc, ← mul_assoc, Matrix.mul_nonsing_inv _ huH, one_mul]
    rw [hΨd, hVd]
    show (⟪y', (R.σ (Matrix.of q.1 * ((Matrix.of q.1)⁻¹ * Matrix.of q.2 * Matrix.of q.1))) y⟫_ℂ *
        star (Formalism.QuantumDeterminants.psi k r D.z' Formalism.QuantumDeterminants.cStd ((Matrix.of q.1)⁻¹ * Matrix.of q.2 * Matrix.of q.1))) •
        D.π' (Matrix.of q.1)⁻¹ = _
    rw [hm, hψc]
    congr 1
    ring
  have hbe := hl.2 x' (hTKsm x' hx') x hx
  have hbe' := hl'.2 y (hTKsm y hy) y' hy'
  have hUi : Integrable U (D.μW.prod D.μN) ∧
      ∫ q, U q ∂(D.μW.prod D.μN) = (innerSL ℂ (l x)).smulRight (l x') := by
    have hcomp : (fun q => Formalism.FourierDecayAlt.ThreeDimData.beInt D.z Formalism.QuantumDeterminants.cStd D.π R.σ x' x (Φ q))
        =ᵐ[D.μW.prod D.μN] U :=
      h55.2.2.2.2.2.mono (fun q hq => hUeq q hq.1 hq.2)
    have hint1 : Integrable (fun q => Formalism.FourierDecayAlt.ThreeDimData.beInt D.z Formalism.QuantumDeterminants.cStd D.π R.σ x' x (Φ q))
        (D.μW.prod D.μN) :=
      (hΦ.integrable_comp hbe.1.aestronglyMeasurable).mpr hbe.1
    refine ⟨hint1.congr hcomp, ?_⟩
    rw [← integral_congr_ae hcomp, ← integral_map hΦ.measurable.aemeasurable
      (by rw [hΦ.map_eq]; exact hbe.1.aestronglyMeasurable), hΦ.map_eq]
    exact hbe.2
  have hVi : Integrable V (D.μW'.prod D.μN) ∧
      ∫ q, V q ∂(D.μW'.prod D.μN) = (innerSL ℂ (l' y')).smulRight (l' y) := by
    have hcomp : (fun q => Formalism.FourierDecayAlt.ThreeDimData.beInt D.z' Formalism.QuantumDeterminants.cStd D.π' R.σ y y' (Ψ q))
        =ᵐ[D.μW'.prod D.μN] V :=
      h55'.2.2.2.2.2.mono (fun q hq => hVeq q hq.1 hq.2)
    have hint1 : Integrable (fun q => Formalism.FourierDecayAlt.ThreeDimData.beInt D.z' Formalism.QuantumDeterminants.cStd D.π' R.σ y y' (Ψ q))
        (D.μW'.prod D.μN) :=
      (hΨ.integrable_comp hbe'.1.aestronglyMeasurable).mpr hbe'.1
    refine ⟨hint1.congr hcomp, ?_⟩
    rw [← integral_congr_ae hcomp, ← integral_map hΨ.measurable.aemeasurable
      (by rw [hΨ.map_eq]; exact hbe'.1.aestronglyMeasurable), hΨ.map_eq]
    exact hbe'.2
  have haeSS : ∀ᵐ p ∂((D.μW.prod D.μN).prod (D.μW'.prod D.μN)), D.inSS p := by
    have h1 := (Measure.quasiMeasurePreserving_fst (μ := D.μW.prod D.μN)
      (ν := D.μW'.prod D.μN)).ae h55.2.2.2.2.2
    have h2 := (Measure.quasiMeasurePreserving_snd (μ := D.μW.prod D.μN)
      (ν := D.μW'.prod D.μN)).ae h55'.2.2.2.2.2
    filter_upwards [h1, h2] with p hp1 hp2
    exact ⟨hp1.1, hp1.2, hp2.1, hp2.2⟩
  obtain ⟨T, hT⟩ := besPhInt_bilin X X'
  have hpt : ∀ p : B.SS k r, D.inSS p →
      B.xiTau D (1, 1) p * B.Ph D (fun g => ⟪x, R.σ g y⟫_ℂ • X) (fun g => ⟪x', R.σ g y'⟫_ℂ • X') p =
        (1 / (dd : ℂ)) * T (U p.1) (V p.2) := by
    intro p hp
    rw [(_root_.Gp91.GlobalTheory.BesselPhi.Ph_coeff hH k r ε mu R Wp Wq D dd hDG hdd x y x' y' X X' p hp).2, besPhInt_xi,
      hUd, hVd, map_smul, map_smul, _root_.smul_apply, hT, smul_eq_mul, smul_eq_mul]
    simp only [Formalism.FourierDecayAlt.JF.sL, Formalism.FourierDecayAlt.JF.sR]
    ring
  have hae : (fun p => B.xiTau D (1, 1) p *
      B.Ph D (fun g => ⟪x, R.σ g y⟫_ℂ • X) (fun g => ⟪x', R.σ g y'⟫_ℂ • X') p)
      =ᵐ[D.μSS] fun p => (1 / (dd : ℂ)) * T (U p.1) (V p.2) :=
    haeSS.mono (fun p hp => hpt p hp)
  have hF1 : Integrable (fun p => T (U p.1) (V p.2)) D.μSS :=
    hUi.1.op_fst_snd (op := fun P Q => T P Q) (by fun_prop) ⟨‖T‖, T.le_opNorm₂⟩ hVi.1
  have hF2 : ∫ p, T (U p.1) (V p.2) ∂D.μSS =
      T (∫ q, U q ∂(D.μW.prod D.μN)) (∫ q, V q ∂(D.μW'.prod D.μN)) := integral_prod_bilin T hUi.1 hVi.1
  have hint2 : Integrable (fun p => B.xiTau D (1, 1) p *
      B.Ph D (fun g => ⟪x, R.σ g y⟫_ℂ • X) (fun g => ⟪x', R.σ g y'⟫_ℂ • X') p) D.μSS :=
    (hF1.const_mul (1 / (dd : ℂ))).congr hae.symm
  have hxi := besPhInt_xi_cont D
  have hnorm : ∀ p, ‖B.xiTau D (1, 1) p‖ = 1 := by
    intro p
    unfold Formalism.FourierDecayAlt.B.xiTau
    exact Complex.norm_exp_I_mul_ofReal _
  refine ⟨?_, ?_⟩
  · have hint3 : Integrable (fun p => star (B.xiTau D (1, 1) p) * (B.xiTau D (1, 1) p *
        B.Ph D (fun g => ⟪x, R.σ g y⟫_ℂ • X) (fun g => ⟪x', R.σ g y'⟫_ℂ • X') p)) D.μSS :=
      hint2.congr' ((hxi.star.aestronglyMeasurable).mul hint2.aestronglyMeasurable)
        (Filter.Eventually.of_forall (fun p => by simp [hnorm]))
    refine hint3.congr (Filter.Eventually.of_forall (fun p => ?_))
    beta_reduce
    rw [← mul_assoc, Complex.star_def, Complex.conj_mul', hnorm]
    simp
  · rw [integral_congr_ae hae, integral_const_mul, hF2, hUi.2, hVi.2, hT,
      besPhInt_rank X X' (l x) (l x') (l' y) (l' y')]
    ring

end GlobalTheory
end Gp91 -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.AutomorphicTheory.PieriRules.ThetaBesselIsometries.BesselFormalDegreePairing =====

-- ===== clump member: CompanionTheory.AutomorphicTheory.PieriRules.ThetaBesselIsometries.BesselSettingUniformConstant =====
-- clump-header: {"m": "CompanionTheory.AutomorphicTheory.PieriRules.ThetaBesselIsometries.BesselSettingUniformConstant", "h": "module\n\npublic import CompanionTheory.AutomorphicTheory.PieriRules.ThetaBesselIsometries.IsDSOfIsDG\npublic import CompanionTheory.AutomorphicTheory.PieriRules.ThetaBesselIsometries.BesselFormalDegreeIdentity\npublic import CompanionTheory.AutomorphicTheory.PieriRules.ThetaBesselIsometries.BesselFormalDegreePairing\npublic import CompanionTheory.AutomorphicTheory.PieriRules.ThetaBesselIsometries.BesselPeriodAdjointPair\npublic import Formalism.HermitianCurvature.BesselNonvanishingReduction\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.BesselNormSqEqConstMulArchPairing\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.BetaInfEqIntegralOfIntegrableCoefficient\npublic import Development.AbelianVarietyTheory.Proofs.JetHarmonics.DecayThresholdsOfSpectralGapCondition\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.NormDiagonalEntryDilationGeneratorLeOne\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.UnipotentCoordinatesMeasurePreserving\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory
end GlobalTheory

open GlobalTheory

namespace Gp91

open BranchingSupport Formalism.FourierDecayAlt Formalism.FourierDecayAlt.ThreeDimData Matrix MeasureTheory Finset
open scoped InnerProductSpace ENNReal

noncomputable section

namespace GlobalTheory.BesselNormSq

variable {k r : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp]
  [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wq]

theorem hsInner_sum_sum {m : ℕ} (A C : Fin m → (Wq →L[ℂ] Wp)) :
    B.hsInner (∑ i, A i) (∑ j, C j) = ∑ i, ∑ j, B.hsInner (A i) (C j) := by
  have h : ∀ A : Fin m → (Wq →L[ℂ] Wp), B.hsVec (∑ i, A i) = ∑ i, B.hsVec (A i) := by
    intro A
    ext t
    simp [B.hsVec]
  unfold B.hsInner
  rw [h, h, inner_sum]
  exact Finset.sum_congr rfl fun i _ => sum_inner _ _ _

theorem Ph_sum [FiniteDimensional ℂ Wp] (D : B.RealPlaceData k r Wp Wq) {m : ℕ} (F : B.Mat k r → (Wq →L[ℂ] Wp))
    (f : Fin m → B.Mat k r → (Wq →L[ℂ] Wp)) (hF : ∀ g ∈ B.GV k r, F g = ∑ i, f i g) (p : B.SS k r)
    (hp : D.inSS p)
    (hint : ∀ i j, Integrable (fun g : Formalism.QuantumDeterminants.Mt k r =>
      B.hsInner (B.rho D p (f i) (Matrix.of g)) (f j (Matrix.of g))) D.μG) :
    B.Ph D F F p = ∑ i, ∑ j, B.Ph D (f i) (f j) p := by
  have hae : ∀ᵐ g ∂D.μG, Matrix.of g ∈ B.GV k r := D.haarG.conc
  unfold B.Ph
  have e1 : ∀ i, ∑ j, ∫ g, B.hsInner (B.rho D p (f i) (Matrix.of g)) (f j (Matrix.of g)) ∂D.μG =
      ∫ g, ∑ j, B.hsInner (B.rho D p (f i) (Matrix.of g)) (f j (Matrix.of g)) ∂D.μG :=
    fun i => (integral_finsetSum _ fun j _ => hint i j).symm
  simp only [e1]
  rw [← integral_finsetSum _ fun i _ => integrable_finsetSum _ fun j _ => hint i j]
  refine integral_congr_ae (hae.mono fun g hg => ?_)
  have h1 : B.rho D p F (Matrix.of g) = ∑ i, B.rho D p (f i) (Matrix.of g) := by
    unfold B.rho
    rw [hF _ (Formalism.FourierDecayAlt.P.B6.conj_product_mem_unitary_group D hp hg)]
    ext v
    simp
  simp only
  rw [h1, hF _ hg, hsInner_sum_sum]

theorem normSq_coef : HypsG → ∀ (k r : ℕ) (Wp : Type) [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [CompleteSpace Wp] [FiniteDimensional ℂ Wp] (Wq : Type) [NormedAddCommGroup Wq] [InnerProductSpace ℂ Wq] [CompleteSpace Wq] [FiniteDimensional ℂ Wq] (D : B.RealPlaceData k r Wp Wq), ∃ c : ℝ, 0 < c ∧ ∀ (ε : Fin (2 * r + k + 1) → Bool) (mu : Fin (2 * r + k + 1) → ℝ) (h : ℝ) (R : Rep k r) (l : R.H → Wp) (l' : R.H → Wq) (dd : ℝ), R.IsDG ε mu → Formalism.QuantumDeterminants.GapAtLeast ε mu h → GapOK k r h → IsBeL R D.z D.π D.μW D.μN l → IsBeL R D.z' D.π' D.μW' D.μN l' → (∀ w, w ≠ 0 → PI.BesselPeriodGGP.fdegH D.μG R.σ w = dd) → ∀ F s, IsCoef R l l' F s → B.normSq D F = ENNReal.ofReal (c * ‖s‖ ^ 2 / dd) := by
  intro H k r Wp _ _ _ _ Wq _ _ _ _ D
  obtain ⟨c, hc, hnb⟩ := _root_.GlobalTheory.BesselNorm.normSq_eq_betaInf k r Wp Wq D
  refine ⟨c, hc, ?_⟩
  intro ε mu h R l l' dd hDS hgap hok hl hl' hdd F s hF
  have hA := (_root_.GlobalTheory.thresholds_of_gapOK k r h hok).2.1
  have hcc := (_root_.Gp91.GlobalTheory.isCoef_ckOn_inCC H k r ε mu h R Wp Wq l l' F s hDS hgap hok hF).2
  obtain ⟨m, x, y, X, hxy, hFg, hs⟩ := hF
  set f : Fin m → B.Mat k r → (Wq →L[ℂ] Wp) := fun i g => ⟪x i, R.σ g (y i)⟫_ℂ • X i with hf
  have hI := fun i j => _root_.Gp91.GlobalTheory.integral_xi_mul_Ph H k r ε mu h R Wp Wq D l l' dd hDS hgap hok hl hl' hdd
    (x i) (hxy i).1 (y i) (hxy i).2 (x j) (hxy j).1 (y j) (hxy j).2 (X i) (X j)
  have hPh : B.Ph D F F =ᵐ[D.μSS] fun p => ∑ i, ∑ j, B.Ph D (f i) (f j) p :=
    (Formalism.FourierDecayAlt.P.B6.ae_inSS D).mono fun p hp => Ph_sum D F f hFg p hp fun i j =>
      (_root_.Gp91.GlobalTheory.BesselPhi.Ph_coeff H k r ε mu R Wp Wq D dd hDS hdd (x i) (y i) (x j) (y j) (X i) (X j) p hp).1
  have hint : Integrable (B.Ph D F F) D.μSS :=
    (integrable_finsetSum _ fun i _ => integrable_finsetSum _ fun j _ => (hI i j).1).congr hPh.symm
  have hxi : ∀ i j, Integrable (fun p => B.xiTau D (1, 1) p * B.Ph D (f i) (f j) p) D.μSS := by
    intro i j
    refine Integrable.bdd_mul (c := 1) (hI i j).1 ?_ (Filter.Eventually.of_forall fun p => ?_)
    · refine Continuous.aestronglyMeasurable ?_
      have c1 : Continuous fun p : B.SS k r => B.lam k r D.z (Matrix.of p.1.2) :=
        (Formalism.FourierDecayAlt.P.B6.lam_continuous k r D.z).comp (continuous_snd.comp continuous_fst)
      have c2 : Continuous fun p : B.SS k r => B.lam k r D.z' (Matrix.of p.2.2) :=
        (Formalism.FourierDecayAlt.P.B6.lam_continuous k r D.z').comp (continuous_snd.comp continuous_snd)
      unfold B.xiTau
      exact Complex.continuous_exp.comp (continuous_const.mul (Complex.continuous_ofReal.comp
        ((continuous_const.mul c1).sub (continuous_const.mul c2))))
    · unfold B.xiTau
      rw [mul_comm, Complex.norm_exp_ofReal_mul_I]
  have hb : B.betaInf D F F = ((‖s‖ ^ 2 / dd : ℝ) : ℂ) := by
    rw [_root_.GlobalTheory.RegularisedIntegral.betaInf_eq_integral k r Wp Wq D _ F hA (hcc 4) hint]
    have e0 : ∫ p, B.xiTau D (1, 1) p * B.Ph D F F p ∂D.μSS =
        ∫ p, ∑ i, ∑ j, B.xiTau D (1, 1) p * B.Ph D (f i) (f j) p ∂D.μSS := by
      refine integral_congr_ae (hPh.mono fun p hp => ?_)
      simp only [hp, Finset.mul_sum]
    rw [e0, integral_finsetSum _ fun i _ => integrable_finsetSum _ fun j _ => hxi i j]
    have e1 : ∀ i, ∫ p, ∑ j, B.xiTau D (1, 1) p * B.Ph D (f i) (f j) p ∂D.μSS =
        ∑ j, ⟪l (x i), X i (l' (y i))⟫_ℂ * star ⟪l (x j), X j (l' (y j))⟫_ℂ / (dd : ℂ) := by
      intro i
      rw [integral_finsetSum _ fun j _ => hxi i j]
      exact Finset.sum_congr rfl fun j _ => (hI i j).2
    simp only [e1]
    have e2 : ((‖s‖ ^ 2 / dd : ℝ) : ℂ) = s * star s / (dd : ℂ) := by
      rw [Complex.star_def, Complex.mul_conj, Complex.normSq_eq_norm_sq]
      push_cast
      ring
    rw [e2, hs, star_sum, Finset.sum_mul_sum, Finset.sum_div]
    exact Finset.sum_congr rfl fun i _ => by rw [Finset.sum_div]
  rw [hnb _ F hA (hcc 5), hb, ← Complex.ofReal_mul, Complex.ofReal_re, mul_div_assoc]

end GlobalTheory.BesselNormSq
end -- clump:auto
end Gp91 -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: CompanionTheory.AutomorphicTheory.PieriRules.ThetaBesselIsometries.BesselSettingUniformConstant =====
