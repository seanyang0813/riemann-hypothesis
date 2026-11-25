module

public import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.ThmSUniform
public import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FirstDeriv
public import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.LocalComponentGL
public import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.TopsChoicePartA
public import Formalism.FormalGroupLog.FormalGroupLogProofs.ConstantCoeffSubstOfZero
public import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FinalS
public import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.PartialCoboundaryLinear
public import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.ScalingSwapLemmas
public import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.StatementN
public import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.StatementC
public import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.StatementK
public import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KurComplete
public import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.TransportFirstLevel
public import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.SecondLevelOfNormHolds
import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.ConstantCoeffFirstTwoOfThree
import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.LogarithmEquivalence
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.OmegaOfTraceDuality
import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.TraceDualExists

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.FrobeniusPartialCoboundaryBound, Formalism.ThetaLogCoordinates.UniformThetaSubstitution.KernelFromKOne, Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.NonVac, Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.SecondLevelOfNorm

-- ===== clump member: Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.FrobeniusPartialCoboundaryBound =====
-- clump-header: {"m": "Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.FrobeniusPartialCoboundaryBound", "h": "module\n\npublic import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.ThmSUniform\npublic import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FirstDeriv\npublic import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.LocalComponentGL\npublic import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.TopsChoicePartA\npublic import Formalism.FormalGroupLog.FormalGroupLogProofs.ConstantCoeffSubstOfZero\npublic import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FinalS\nimport Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.ConstantCoeffFirstTwoOfThree\nimport Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.LogarithmEquivalence\npublic import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.PartialCoboundaryLinear\npublic import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.ScalingSwapLemmas\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped BigOperators
open Finset

namespace Formalism.InvariantFactorPaths.G7

open Formalism.DworkPowerSeriesWeights (Integral mvExp)
open DworkIntegrality (Bd bd_add bd_sub bd_neg bd_mul bd_C int_mul int_pow frob_congr PhiH PhiH_apply)

namespace CoefficientSupportCongruences

open FrobeniusSubstitution

section Supp

variable {K : Type} [Field K]

private theorem exists_pow_of_coeff_AA_ne_zero {p : ℕ} {x y : Fin 2} {n : Fin 2 →₀ ℕ}
    (h : MvPowerSeries.coeff n (AA K p x y) ≠ 0) :
    ∃ i j : ℕ, n x = (p ^ 2) ^ i ∧ n y = p * (p ^ 2) ^ j := by
  have h' : AA K p x y n ≠ 0 := h
  simp only [AA] at h'
  obtain ⟨i, -, hi⟩ := Finset.exists_ne_zero_of_sum_ne_zero h'
  obtain ⟨j, -, hj⟩ := Finset.exists_ne_zero_of_sum_ne_zero hi
  split_ifs at hj with hc
  · exact ⟨i, j, hc.2.1, hc.2.2⟩
  · exact absurd rfl hj

theorem support_ok_a_zero_one {p : ℕ} (hp : 2 ≤ p) : SuppOK p (AA K p 0 1) := by
  intro n hn
  obtain ⟨i, j, hi, hj⟩ := exists_pow_of_coeff_AA_ne_zero hn
  have hp0 : 0 < p := by omega
  rw [hi, hj]
  refine ⟨pow_pos (pow_pos hp0 2) i, Nat.mul_pos hp0 (pow_pos (pow_pos hp0 2) j), ?_⟩
  have h2 : p * (p * (p ^ 2) ^ j) = (p ^ 2) ^ (j + 1) := by ring
  rw [h2]
  exact (_root_.Formalism.InvariantFactorPaths.G7.CoboundarySeries.powq_modEq_one hp i).trans (_root_.Formalism.InvariantFactorPaths.G7.CoboundarySeries.powq_modEq_one hp (j + 1)).symm

theorem support_ok_a_one_zero {p : ℕ} (hp : 2 ≤ p) : SuppOK p (AA K p 1 0) := by
  intro n hn
  obtain ⟨i, j, hi, hj⟩ := exists_pow_of_coeff_AA_ne_zero hn
  have hp0 : 0 < p := by omega
  rw [hi, hj]
  refine ⟨Nat.mul_pos hp0 (pow_pos (pow_pos hp0 2) j), pow_pos (pow_pos hp0 2) i, ?_⟩
  exact ((_root_.Formalism.InvariantFactorPaths.G7.CoboundarySeries.powq_modEq_one hp j).mul_left p).trans ((_root_.Formalism.InvariantFactorPaths.G7.CoboundarySeries.powq_modEq_one hp i).mul_left p).symm

private theorem suppOK_C_mul_sub_C_mul {p : ℕ} {G H : MvPowerSeries (Fin 2) K} (hG : SuppOK p G)
    (hH : SuppOK p H) (a b : K) :
    SuppOK p (MvPowerSeries.C a * G - MvPowerSeries.C b * H) := by
  intro n hn
  by_cases h1 : MvPowerSeries.coeff n G = 0
  · by_cases h2 : MvPowerSeries.coeff n H = 0
    · exact absurd (by simp [h1, h2]) hn
    · exact hH n h2
  · exact hG n h1

theorem suppOK_Gser {p : ℕ} (hp : 2 ≤ p) (c c' : K) : SuppOK p (Gser p c c') := by
  exact suppOK_C_mul_sub_C_mul (support_ok_a_zero_one hp) (support_ok_a_one_zero hp) c c'

theorem swap_two_a_series (p : ℕ) (x y : Fin 2) (hx : Equiv.swap (0 : Fin 2) 1 x = y)
    (hy : Equiv.swap (0 : Fin 2) 1 y = x) : swap2 (AA K p x y) = AA K p y x := by
  ext n
  rw [Formalism.InvariantFactorPaths.G7.TwoVariableSwapLemmas.coeff_swap2]
  have h1 : (Formalism.InvariantFactorPaths.G7.TwoVariableSwapLemmas.sw n) x = n y := by
    show n ((Equiv.swap (0 : Fin 2) 1).symm x) = n y
    rw [Equiv.symm_swap, hx]
  have h2 : (Formalism.InvariantFactorPaths.G7.TwoVariableSwapLemmas.sw n) y = n x := by
    show n ((Equiv.swap (0 : Fin 2) 1).symm y) = n x
    rw [Equiv.symm_swap, hy]
  show AA K p x y (Formalism.InvariantFactorPaths.G7.TwoVariableSwapLemmas.sw n) = AA K p y x n
  simp only [AA, h1, h2]

theorem swap_two_g_series (p : ℕ) (c c' : K) : swap2 (Gser p c c') = Gser p (-c') (-c) := by
  have hA : swap2 (AA K p 0 1) = AA K p 1 0 := swap_two_a_series p 0 1 (by simp) (by simp)
  have hB : swap2 (AA K p 1 0) = AA K p 0 1 := swap_two_a_series p 1 0 (by simp) (by simp)
  have eA : Aser K p = AA K p 0 1 := rfl
  have eB : Aser' K p = AA K p 1 0 := rfl
  ext n
  rw [Formalism.InvariantFactorPaths.G7.TwoVariableSwapLemmas.coeff_swap2]
  simp only [Gser, eA, eB, map_sub, MvPowerSeries.coeff_C_mul]
  rw [← Formalism.InvariantFactorPaths.G7.TwoVariableSwapLemmas.coeff_swap2, ← Formalism.InvariantFactorPaths.G7.TwoVariableSwapLemmas.coeff_swap2, hA, hB]
  ring

private theorem coeff_subst_C_mul_X_eq_mul_coeff (a : Fin 2 → K) (G : MvPowerSeries (Fin 2) K)
    (n : Fin 2 →₀ ℕ) :
    MvPowerSeries.coeff n
        (MvPowerSeries.subst (fun s => MvPowerSeries.C (a s) * MvPowerSeries.X s) G) =
      (a 0 ^ n 0 * a 1 ^ n 1) * MvPowerSeries.coeff n G := by
  have e : (fun s => MvPowerSeries.C (a s) * (MvPowerSeries.X s : MvPowerSeries (Fin 2) K)) =
      a • MvPowerSeries.X := by
    funext s
    simp [MvPowerSeries.smul_eq_C_mul]
  rw [e, ← MvPowerSeries.rescale_eq_subst, MvPowerSeries.coeff_rescale,
    Finsupp.prod_fintype _ _ (by simp), Fin.prod_univ_two]

theorem scale_of_suppOK {p : ℕ} {G : MvPowerSeries (Fin 2) K} (hG : SuppOK p G) {ζ : K}
    (hζ : ζ ^ (p ^ 2 - 1) = 1) :
    MvPowerSeries.subst ![MvPowerSeries.C ζ * (MvPowerSeries.X 0 :
        MvPowerSeries (Fin 2) K), MvPowerSeries.X 1] G =
      MvPowerSeries.subst ![(MvPowerSeries.X 0 : MvPowerSeries (Fin 2) K),
        MvPowerSeries.C (ζ ^ p) * MvPowerSeries.X 1] G := by
  have eL : ![MvPowerSeries.C ζ * (MvPowerSeries.X 0 : MvPowerSeries (Fin 2) K),
      MvPowerSeries.X 1] = fun s => MvPowerSeries.C (![ζ, 1] s) * MvPowerSeries.X s := by
    funext s; fin_cases s <;> simp
  have eR : ![(MvPowerSeries.X 0 : MvPowerSeries (Fin 2) K),
      MvPowerSeries.C (ζ ^ p) * MvPowerSeries.X 1] =
      fun s => MvPowerSeries.C (![1, ζ ^ p] s) * MvPowerSeries.X s := by
    funext s; fin_cases s <;> simp
  rw [eL, eR]
  ext n
  rw [coeff_subst_C_mul_X_eq_mul_coeff, coeff_subst_C_mul_X_eq_mul_coeff]
  by_cases h : MvPowerSeries.coeff n G = 0
  · simp [h]
  · obtain ⟨-, -, hmod⟩ := hG n h
    have hmod' : n 0 % (p ^ 2 - 1) = (p * n 1) % (p ^ 2 - 1) := hmod
    have key : ζ ^ n 0 = (ζ ^ p) ^ n 1 := by
      rw [← pow_mul, pow_eq_pow_mod (n 0) hζ, pow_eq_pow_mod (p * n 1) hζ, hmod']
    simp [key]

theorem constant_coeff_partial_coboundary {F G : MvPowerSeries (Fin 2) K}
    (hF0 : MvPowerSeries.constantCoeff F = 0) (hG0 : MvPowerSeries.constantCoeff G = 0) :
    MvPowerSeries.constantCoeff (d1 F G) = 0 := by
  have hin : MvPowerSeries.constantCoeff (in3 F) = 0 := by
    show MvPowerSeries.constantCoeff (MvPowerSeries.subst
      ![(MvPowerSeries.X 0 : MvPowerSeries (Fin 3) K), MvPowerSeries.X 1] F) = 0
    rw [Formalism.G.LogP.constantCoeff_subst_of_zero F, hF0]
    intro i; fin_cases i <;> simp
  have e1 : MvPowerSeries.constantCoeff (MvPowerSeries.subst
      ![in3 F, (MvPowerSeries.X 2 : MvPowerSeries (Fin 3) K)] G) = 0 := by
    rw [Formalism.G.LogP.constantCoeff_subst_of_zero G, hG0]
    intro i; fin_cases i <;> simp [hin]
  have e2 : MvPowerSeries.constantCoeff (MvPowerSeries.subst
      ![(MvPowerSeries.X 0 : MvPowerSeries (Fin 3) K), MvPowerSeries.X 2] G) = 0 := by
    rw [Formalism.G.LogP.constantCoeff_subst_of_zero G, hG0]
    intro i; fin_cases i <;> simp
  have e3 : MvPowerSeries.constantCoeff (MvPowerSeries.subst
      ![(MvPowerSeries.X 1 : MvPowerSeries (Fin 3) K), MvPowerSeries.X 2] G) = 0 := by
    rw [Formalism.G.LogP.constantCoeff_subst_of_zero G, hG0]
    intro i; fin_cases i <;> simp
  show MvPowerSeries.constantCoeff (MvPowerSeries.subst
      ![in3 F, (MvPowerSeries.X 2 : MvPowerSeries (Fin 3) K)] G -
    MvPowerSeries.subst ![(MvPowerSeries.X 0 : MvPowerSeries (Fin 3) K), MvPowerSeries.X 2] G -
    MvPowerSeries.subst ![(MvPowerSeries.X 1 : MvPowerSeries (Fin 3) K), MvPowerSeries.X 2] G) = 0
  rw [map_sub, map_sub, e1, e2, e3]
  simp

theorem DeS_Gser {p : ℕ} (hp : 2 ≤ p) (hpK : (p : K) ≠ 0) (σ : K →+* K) {c : K}
    (hσσ : σ (σ c) = c) :
    DeS p σ (Gser p c (σ c)) =
      MvPowerSeries.C (σ c) * (at1 0 (g0F K p) * at1 1 (lgF K p)) -
        MvPowerSeries.C c * (at1 0 (lgF K p) * at1 1 (g0F K p)) := by
  unfold DeS
  rw [Formalism.InvariantFactorPaths.G7.CoboundarySeries.map_Gser σ p c (σ c), hσσ, _root_.Formalism.InvariantFactorPaths.G7.frobenius_expression_g K p c (σ c) hp hpK,
    ← mul_assoc, ← map_mul, inv_mul_cancel₀ hpK, map_one, one_mul]

theorem partial_coboundary_de_s_g_series {p : ℕ} (hp : 2 ≤ p) (hpK : (p : K) ≠ 0) (σ : K →+* K) {c : K}
    (hσσ : σ (σ c) = c) {F : MvPowerSeries (Fin 2) K}
    (hF0 : MvPowerSeries.constantCoeff F = 0) (hl : cob F (lgF K p) = 0) :
    d1 F (DeS p σ (Gser p c (σ c))) =
      MvPowerSeries.C (σ c) * (in3 (cob F (g0F K p)) * at1 2 (lgF K p)) := by
  have hH : Hser p σ (Gser p c (σ c)) (σ c) (-c) = 0 := by
    unfold Hser
    rw [DeS_Gser hp hpK σ hσσ, map_neg]
    ring
  have h0 : d1 F (0 : MvPowerSeries (Fin 2) K) = 0 := by
    have h := Formalism.InvariantFactorPaths.G7.TwoVariableSwapLemmas.partial_coboundary_C_mul hF0 (0 : K) 0
    simpa using h
  have h := Formalism.InvariantFactorPaths.G7.CoboundarySeries.partial_coboundary_h_series (p := p) σ hF0 hl (Gser p c (σ c)) (σ c) (-c)
  rw [hH, h0] at h
  exact sub_eq_zero.mp h.symm

end Supp

theorem derivIs_Gser {K : Type} [NormedField K] [IsUltrametricDist K] [CharZero K] {p : ℕ}
    (hp : p.Prime) (hnp : ‖(p : K)‖ = (p : ℝ)⁻¹) {c c' : K} (hc : ‖c‖ ≤ 1) (hc' : ‖c'‖ ≤ 1) :
    DerivIs p (Gser p c c') c := by
  obtain ⟨h1, h2⟩ := _root_.Formalism.InvariantFactorPaths.G7.derivative_a K p hp hnp
  have e : MvPowerSeries.pderiv (R := K) 0 (Gser p c c') -
      MvPowerSeries.C c * (at1 0 (PowerSeries.derivative (R := K) (lgF K p)) * at1 1 (g0F K p)) =
      c • (MvPowerSeries.pderiv (R := K) 0 (Aser K p) -
        at1 0 (PowerSeries.derivative (R := K) (lgF K p)) * at1 1 (g0F K p)) -
      c' • MvPowerSeries.pderiv (R := K) 0 (Aser' K p) := by
    unfold Gser
    rw [← MvPowerSeries.smul_eq_C_mul, ← MvPowerSeries.smul_eq_C_mul, ← MvPowerSeries.smul_eq_C_mul,
      map_sub, Derivation.map_smul, Derivation.map_smul, smul_sub]
    abel
  unfold DerivIs
  rw [e]
  intro n
  rw [map_sub, map_smul, map_smul, smul_eq_mul, smul_eq_mul, sub_eq_add_neg]
  refine (IsUltrametricDist.norm_add_le_max _ _).trans (max_le ?_ ?_)
  · rw [norm_mul]
    exact mul_le_one₀ hc (norm_nonneg _) (h1 n)
  · rw [norm_neg, norm_mul]
    exact mul_le_one₀ hc' (norm_nonneg _) (h2 n)

theorem frobenius_partial_coboundary_bound {K : Type} [NormedField K] [IsUltrametricDist K] [CharZero K] {p : ℕ}
    {σ : K →+* K} (hU : UnrOK K p σ) {F : MvPowerSeries (Fin 2) K} (hF : IsLawOfLog p F)
    {G : MvPowerSeries (Fin 2) K} {c : K} (hc : ‖c‖ ≤ 1) (hDer : DerivIs p G c)
    (hΔ : d1 F (DeS p σ G) =
      MvPowerSeries.C (σ c) * (in3 (cob F (g0F K p)) * at1 2 (lgF K p))) :
    Bd (p : ℝ)⁻¹ (frobVar p (MvPowerSeries.map σ (d1 F G)) -
      MvPowerSeries.C (p : K) * d1 F G) := by
  have herror := frobenius_coboundary_error_bound _root_.Formalism.InvariantFactorPaths.G7.divided_derivative Top.deIntegral _root_.Formalism.InvariantFactorPaths.G7.formal_law_symmetric hU hF hc hDer
  rw [hΔ, sub_self, mul_zero, zero_sub] at herror
  simpa only [neg_neg] using bd_neg herror

theorem partial_coboundary_g_series_equiv {K : Type} [NormedField K] [IsUltrametricDist K] [CharZero K] {p : ℕ}
    {σ : K →+* K} (hU : UnrOK K p σ) {F : MvPowerSeries (Fin 2) K} (hF : IsLawOfLog p F)
    {c : K} (hc : ‖c‖ ≤ 1) (hσσ : σ (σ c) = c) : Simeq (d1 F (Gser p c (σ c))) 0 := by
  have hp2 : 2 ≤ p := le_of_lt hU.2.1
  have hpK : (p : K) ≠ 0 := by exact_mod_cast (show p ≠ 0 by omega)
  have hσc : ‖σ c‖ ≤ 1 := by
    have h1 : ‖σ c - c ^ p‖ ≤ (p : ℝ)⁻¹ := hU.2.2.2.2 c hc
    have h2 : ‖c ^ p‖ ≤ 1 := by rw [norm_pow]; exact pow_le_one₀ (norm_nonneg _) hc
    have h3 : (p : ℝ)⁻¹ ≤ 1 := inv_le_one_of_one_le₀ (by exact_mod_cast (by omega : 1 ≤ p))
    calc ‖σ c‖ = ‖(σ c - c ^ p) + c ^ p‖ := by rw [sub_add_cancel]
      _ ≤ max ‖σ c - c ^ p‖ ‖c ^ p‖ := IsUltrametricDist.norm_add_le_max _ _
      _ ≤ 1 := max_le (h1.trans h3) h2
  have hG0 : MvPowerSeries.constantCoeff (Gser p c (σ c)) = 0 := by
    by_contra h
    have h' : MvPowerSeries.coeff 0 (Gser p c (σ c)) ≠ 0 := by
      rwa [MvPowerSeries.coeff_zero_eq_constantCoeff_apply]
    obtain ⟨h1, -, -⟩ := suppOK_Gser hp2 c (σ c) 0 h'
    simp at h1
  have hd0 : MvPowerSeries.constantCoeff (d1 F (Gser p c (σ c))) = 0 := constant_coeff_partial_coboundary hF.1 hG0
  refine ⟨by rw [sub_zero]; exact hd0, ?_⟩
  rw [sub_zero]
  have hDer := derivIs_Gser (K := K) hU.1 hU.2.2.1 hc hσc
  have hΔ := partial_coboundary_de_s_g_series hp2 hpK σ hσσ hF.1 hF.2.2
  have hB := frobenius_partial_coboundary_bound hU hF hc hDer hΔ
  exact (_root_.Formalism.InvariantFactorPaths.G7.dwork_multivariable K (Fin 3) p σ hU.1 hU.2.2.1 hU.2.2.2.2 _ hd0).mpr hB

end CoefficientSupportCongruences

open CoefficientSupportCongruences in
theorem g_c_is_beta : GcIsBeta := by
  intro K _ _ _ p σ hU F hF c hc hσσ
  have hp2 : 2 ≤ p := le_of_lt hU.2.1
  have hσc : ‖σ c‖ ≤ 1 := by
    have h1 : ‖σ c - c ^ p‖ ≤ (p : ℝ)⁻¹ := hU.2.2.2.2 c hc
    have h2 : ‖c ^ p‖ ≤ 1 := by rw [norm_pow]; exact pow_le_one₀ (norm_nonneg _) hc
    have h3 : (p : ℝ)⁻¹ ≤ 1 := inv_le_one_of_one_le₀ (by exact_mod_cast (by omega : 1 ≤ p))
    calc ‖σ c‖ = ‖(σ c - c ^ p) + c ^ p‖ := by rw [sub_add_cancel]
      _ ≤ max ‖σ c - c ^ p‖ ‖c ^ p‖ := IsUltrametricDist.norm_add_le_max _ _
      _ ≤ 1 := max_le (h1.trans h3) h2
  have hS := (Formalism.InvariantFactorPaths.G7.Top.simeqRules K (Fin 2)).1
  refine ⟨?_, partial_coboundary_g_series_equiv hU hF hc hσσ, ?_, ?_⟩
  · intro n hn
    by_contra h
    obtain ⟨h0, h1, -⟩ := suppOK_Gser (K := K) hp2 c (σ c) n h
    omega
  · rw [swap_two_g_series]
    have h := partial_coboundary_g_series_equiv hU hF (c := -σ c) (by rwa [norm_neg]) (by simp [hσσ])
    simpa [hσσ] using h
  · intro ζ hζ
    rw [scale_of_suppOK (suppOK_Gser hp2 c (σ c)) hζ]
    exact hS _

end Formalism.InvariantFactorPaths.G7
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.FrobeniusPartialCoboundaryBound =====

-- ===== clump member: Formalism.ThetaLogCoordinates.UniformThetaSubstitution.KernelFromKOne =====
-- clump-header: {"m": "Formalism.ThetaLogCoordinates.UniformThetaSubstitution.KernelFromKOne", "h": "module\n\npublic import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.ThmSUniform\npublic import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.FrobeniusPartialCoboundaryBound\nimport Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FrobeniusLiftNorms.OmegaOfTraceDuality\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.InvariantFactorPaths.G7.Top

end Formalism.InvariantFactorPaths.G7.Top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.ThetaLogCoordinates.UniformThetaSubstitution.KernelFromKOne =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.NonVac =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.NonVac", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.StatementN\npublic import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.StatementC\npublic import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.StatementK\npublic import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KurComplete\npublic import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.TransportFirstLevel\nimport Formalism.ThetaLogCoordinates.UniformThetaSubstitution.FinalS\npublic import Formalism.ThetaLogCoordinates.UniformThetaSubstitution.KernelFromKOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KurComplete\nimport Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.TraceDualExists\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open scoped BigOperators

namespace Formalism.L2.Th1.D.ChainWitness

open Formalism.L2.Th1.D
open Formalism.L2.Th1.CM (MaximalUnramifiedExtension)
open Formalism.DworkPowerSeriesWeights (Integral Unram)
open Formalism.InvariantFactorPaths.G7 (UnrOK IsLawOfLog Simeq Gser BetaHyp)

theorem fieldWitness (hF : KurFrob) (hR : KurRoots) (hC : KurComplete) (hT : TrDualExists)
    (hB : FOfBetaHyp) (l : ℕ) [Fact l.Prime] (hl : 2 < l) (ν : ℕ) [NeZero ν] :
    ∃ σ : MaximalUnramifiedExtension l →+* MaximalUnramifiedExtension l, UnrOK (MaximalUnramifiedExtension l) l σ ∧ CompleteSpace (MaximalUnramifiedExtension l) ∧
      (∀ a, ‖(MaximalUnramifiedExtension l).subtype a‖ = ‖a‖) ∧
      (∃ ζ : MaximalUnramifiedExtension l, IsPrimitiveRoot ζ (l ^ 2 - 1)) ∧
      (∃ ζ : MaximalUnramifiedExtension l, IsPrimitiveRoot ζ (l ^ (2 * ν) - 1)) ∧
      2 ≤ 2 * ν ∧ Even (2 * ν) ∧
      (∃ ϖ : ℂ_[l], ϖ ^ (l ^ 2 - 1) = (l : ℂ_[l])) ∧
      (∃ om oms : Fin ν → MaximalUnramifiedExtension l, OwOK (2 * ν) σ om oms ∧ TrDual (2 * ν) σ om oms) ∧
      ∃ F : MvPowerSeries (Fin 2) (MaximalUnramifiedExtension l), IsLawOfLog l F ∧
        ∃ be : MvPowerSeries (Fin 2) (MaximalUnramifiedExtension l), F1 F be ∧ F2 l σ be ∧ ¬ Simeq be 0 := by
  obtain ⟨σ, hσ, -⟩ := hF l hl
  have hl1 : 1 < l := by omega
  have hnd : ∀ k : ℕ, 0 < k → 0 < l ^ k - 1 ∧ ¬ l ∣ l ^ k - 1 := by
    intro k hk
    have h1 : 1 < l ^ k := Nat.one_lt_pow hk.ne' hl1
    refine ⟨by omega, fun hdv => ?_⟩
    have h2 : l ∣ l ^ k := dvd_pow_self l hk.ne'
    have h3 : l ∣ 1 := by
      have := (Nat.dvd_sub h2 hdv)
      rwa [Nat.sub_sub_self h1.le] at this
    exact absurd (Nat.le_of_dvd one_pos h3) (by omega)
  have hν : 0 < ν := Nat.pos_of_ne_zero (NeZero.ne ν)
  obtain ⟨ζ2, hζ2⟩ := hR l (l ^ 2 - 1) (hnd 2 (by norm_num)).1 (hnd 2 (by norm_num)).2
  obtain ⟨ζd, hζd⟩ := hR l (l ^ (2 * ν) - 1) (hnd _ (by omega)).1 (hnd _ (by omega)).2
  have hdual := hT (MaximalUnramifiedExtension l) l (2 * ν) σ hσ (even_two_mul ν) ζd hζd
  rw [Nat.mul_div_cancel_left ν two_pos] at hdual
  obtain ⟨F, hFl⟩ := (_root_.Formalism.InvariantFactorPaths.G7.formal_law_exists (MaximalUnramifiedExtension l) l hσ.1 hσ.2.2.1).1
  have h1 : σ (σ (1 : MaximalUnramifiedExtension l)) = 1 := by simp
  have hbeta := _root_.Formalism.InvariantFactorPaths.G7.g_c_is_beta (MaximalUnramifiedExtension l) l σ hσ F hFl 1 (by simp) h1
  have hFF := hB (MaximalUnramifiedExtension l) l σ hσ ⟨ζ2, hζ2⟩ F hFl _ hbeta
  refine ⟨σ, hσ, hC l, fun _ => rfl, ⟨ζ2, hζ2⟩, ⟨ζd, hζd⟩, by omega, even_two_mul ν, ?_, hdual,
    F, hFl, _, hFF.1, hFF.2, ?_⟩
  · exact IsAlgClosed.exists_pow_nat_eq _ (hnd 2 (by norm_num)).1
  · intro h0
    have hz : (Gser l (0 : MaximalUnramifiedExtension l) (σ 0)) = 0 := by simp [Gser]
    have := _root_.Formalism.InvariantFactorPaths.G7.g_c_unique (MaximalUnramifiedExtension l) l σ hσ 1 0 h1 (by simp) (by rw [hz]; exact h0)
    exact one_ne_zero this

theorem fullWitness (hF : KurFrob) (hR : KurRoots) (hC : KurComplete) (hT : TrDualExists)
    (hB : FOfBetaHyp) (l : ℕ) [Fact l.Prime] (hl : 2 < l) (ν r0 r1 : ℕ) [NeZero ν] :
    ∃ (σ : MaximalUnramifiedExtension l →+* MaximalUnramifiedExtension l) (F be : MvPowerSeries (Fin 2) (MaximalUnramifiedExtension l)) (om oms : Fin ν → MaximalUnramifiedExtension l)
      (U0 Φ : MvPowerSeries (Bool × Fin ν × Fin r0 × Fin r1) ℂ_[l]) (ph : PowerSeries (MaximalUnramifiedExtension l)),
      UnrOK (MaximalUnramifiedExtension l) l σ ∧ CompleteSpace (MaximalUnramifiedExtension l) ∧ (∀ a, ‖(MaximalUnramifiedExtension l).subtype a‖ = ‖a‖) ∧
      (∃ ζ : MaximalUnramifiedExtension l, IsPrimitiveRoot ζ (l ^ 2 - 1)) ∧
      (∃ ζ : MaximalUnramifiedExtension l, IsPrimitiveRoot ζ (l ^ (2 * ν) - 1)) ∧ 2 ≤ 2 * ν ∧ Even (2 * ν) ∧
      (∃ ϖ : ℂ_[l], ϖ ^ (l ^ 2 - 1) = (l : ℂ_[l])) ∧
      OwOK (2 * ν) σ om oms ∧ TrDual (2 * ν) σ om oms ∧ IsLawOfLog l F ∧ F1 F be ∧ F2 l σ be ∧
      ¬ Simeq be 0 ∧ Integral U0 ∧ MvPowerSeries.constantCoeff Φ = 0 ∧
      Simeq Φ (sumE (MvPowerSeries.map (MaximalUnramifiedExtension l).subtype be)) ∧
      Simeq (MvPowerSeries.C (2 : MaximalUnramifiedExtension l) * ph)
        (MvPowerSeries.subst (fun _ : Fin 2 => (PowerSeries.X : PowerSeries (MaximalUnramifiedExtension l))) be) := by
  obtain ⟨σ, h1, h2, h3, h4, h5, h6, h7, h8, ⟨om, oms, h9, h10⟩, F, h11, be, h12, h13, h14⟩ :=
    fieldWitness hF hR hC hT hB l hl ν
  have hbe0 : MvPowerSeries.constantCoeff be = 0 := by
    have := h12.1 0 (Or.inl rfl)
    simpa using this
  refine ⟨σ, F, be, om, oms, 1, sumE (MvPowerSeries.map (MaximalUnramifiedExtension l).subtype be),
    PowerSeries.C ((2 : MaximalUnramifiedExtension l)⁻¹) *
      MvPowerSeries.subst (fun _ : Fin 2 => (PowerSeries.X : PowerSeries (MaximalUnramifiedExtension l))) be,
    h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14, ?_, ?_, ?_, ?_⟩
  · intro n
    rw [MvPowerSeries.coeff_one]
    split_ifs <;> simp
  · unfold sumE

    rw [map_sum]
    apply Finset.sum_eq_zero
    intro e _
    exact MvPowerSeries.constantCoeff_subst_eq_zero
      (MvPowerSeries.hasSubst_of_constantCoeff_zero (by intro i; simp)) (by intro i; simp)
      (by rw [MvPowerSeries.constantCoeff_map, hbe0, map_zero])
  · exact (Formalism.InvariantFactorPaths.G7.Top.simeqRules ℂ_[l] _).1 _
  · have : MvPowerSeries.C (2 : MaximalUnramifiedExtension l) * (PowerSeries.C ((2 : MaximalUnramifiedExtension l)⁻¹) *
        MvPowerSeries.subst (fun _ : Fin 2 => (PowerSeries.X : PowerSeries (MaximalUnramifiedExtension l))) be) =
        MvPowerSeries.subst (fun _ : Fin 2 => (PowerSeries.X : PowerSeries (MaximalUnramifiedExtension l))) be := by
      rw [← mul_assoc]
      have h2 : (MvPowerSeries.C (2 : MaximalUnramifiedExtension l) : MvPowerSeries Unit (MaximalUnramifiedExtension l)) *
          PowerSeries.C ((2 : MaximalUnramifiedExtension l)⁻¹) = 1 := by
        change (MvPowerSeries.C (2 : MaximalUnramifiedExtension l) : MvPowerSeries Unit (MaximalUnramifiedExtension l)) *
          MvPowerSeries.C ((2 : MaximalUnramifiedExtension l)⁻¹) = 1
        rw [← map_mul, mul_inv_cancel₀ two_ne_zero, map_one]
      rw [h2, one_mul]
    rw [this]
    exact (Formalism.InvariantFactorPaths.G7.Top.simeqRules (MaximalUnramifiedExtension l) _).1 _

end Formalism.L2.Th1.D.ChainWitness

namespace Formalism.L2.Th1.D

theorem chain_nonvacuous : ChainNonVacuous := fun l _ hl ν r0 r1 _ =>
  ChainWitness.fullWitness kurFrob kurRoots kurComplete _root_.Formalism.L2.Th1.D.trace_dual_exists _root_.Formalism.L2.Th1.D.f_of_beta_hypotheses l hl ν r0 r1

end Formalism.L2.Th1.D
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.NonVac =====

-- ===== clump member: Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.SecondLevelOfNorm =====
-- clump-header: {"m": "Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.SecondLevelOfNorm", "h": "module\n\npublic import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.StatementC\npublic import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.StatementN\npublic import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.NonVac\npublic import Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.KummerThetaLogarithms.SecondLevelOfNormHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.Th1.D

alias chainNonVacuous := _root_.Formalism.L2.Th1.D.chain_nonvacuous
alias normUnits := _root_.Formalism.L2.Th1.D.norm_units_alt

end Formalism.L2.Th1.D
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.TorsionIntegrality.GaussSumParity.SecondLevelOfNorm =====
