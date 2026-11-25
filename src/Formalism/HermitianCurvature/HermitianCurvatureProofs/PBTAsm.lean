module

public import Formalism.HermitianCurvature.HermitianCurvatureProofs.HcoSmulRight
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ContDiffAtSecondCoordinate
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.RightStabilizerMem
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SupportPhiZeroSubset
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.HermitianFormRankZeroApply
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.MeasurableCoordinateMap
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.HeisenbergLeviConjugationMeasure
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.UnipotentCoordinatesMeasurePreserving
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.MatExtMulVec
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.SubMulRight
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.OrbJConvCpt
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.ExistsHaarStabilizer
public import Formalism.HermitianCurvature.RealInputsClosedAdmissibleSettings
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.AutomorphicInSphericalLevel
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.VectorVanishesBigCell
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.DensityConstantOfParts
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.HermitianCurvature.HermitianCurvatureProofs.CompactGroupHaarExists
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Linter.HaveILetI
import Formalism.FormalDegreeBessel.FormalDegreeRatio.UnitaryWeylNormalHolds
import Formalism.HermitianCurvature.HermitianCurvatureProofs.ComponentFamilySettingOfSetting
import Formalism.HermitianCurvature.HermitianCurvatureProofs.HermitianFormFlagVector
import Formalism.HermitianCurvature.HermitianCurvatureProofs.OrbitalIntegralAeConvergenceContinuity
import Formalism.HermitianCurvature.HermitianCurvatureProofs.StabilizerFourthCondition
import Formalism.HermitianCurvature.HermitianCurvatureProofs.WittOrthonormalBasis
import Formalism.HermitianCurvature.HermitianCurvatureProofs.ZhatSectionExists

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.SqrtDivMulEqSqrtMul, Formalism.HermitianCurvature.HermitianCurvatureProofs.ExistsMeasurableSection, Formalism.HermitianCurvature.HermitianCurvatureProofs.RearrApply, Formalism.HermitianCurvature.HermitianCurvatureProofs.RearrSymm, Formalism.HermitianCurvature.HermitianCurvatureProofs.UnipotentCharacterOneOfProduct, Formalism.HermitianCurvature.HermitianCurvatureProofs.FibreIntegralCells, Formalism.HermitianCurvature.HermitianCurvatureProofs.PBTAsm

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.SqrtDivMulEqSqrtMul =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.SqrtDivMulEqSqrtMul", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.HcoSmulRight\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.PBI

open Finset Matrix Formalism.QuantumDeterminants Formalism.FourierDecayAlt
open scoped ComplexConjugate

noncomputable section

section xblock

variable {r : ℕ} (T T' : ℝ) (Zm : Matrix (Fin (r + 1)) (Fin (r + 1)) ℂ)

theorem mul_kap (a : Fin (r + 1)) : ∑ b, Zm a b * kap Zm b = if a = Fin.last r then Zm.det else 0 := by
  have h := congrFun (congrFun (Matrix.mul_adjugate Zm) a) (Fin.last r)
  simp only [Matrix.mul_apply, Matrix.smul_apply, Matrix.one_apply, smul_eq_mul] at h
  unfold kap
  rw [h]
  split_ifs <;> simp

theorem kap_last : kap Zm (Fin.last r) = (Zm.submatrix Fin.castSucc Fin.castSucc).det := by
  unfold kap
  rw [Matrix.adjugate_fin_succ_eq_det_submatrix, Fin.succAbove_last]
  simp [← two_mul, pow_mul]

theorem nk_pos (hdet : Zm.det ≠ 0) : 0 < nk Zm := by
  obtain ⟨b, hb⟩ : ∃ b, kap Zm b ≠ 0 := by
    by_contra h
    push_neg at h
    have h2 := mul_kap Zm (Fin.last r)
    simp [h] at h2
    first
      | exact hdet h2.symm
  exact Finset.sum_pos' (fun i _ => Complex.normSq_nonneg _)
    ⟨b, Finset.mem_univ _, Complex.normSq_pos.mpr hb⟩

theorem sum_kap_al (hT : 0 < T) (hT' : 0 < T') :
    ∑ b, kap Zm b * al T T' Zm b = -Zm.det / ((Real.sqrt (T * T') : ℝ) : ℂ) := by
  have h := mul_kap Zm (Fin.last r)
  rw [if_pos rfl] at h
  rw [neg_div, ← h, Finset.sum_div, ← Finset.sum_neg_distrib]
  refine Finset.sum_congr rfl (fun b _ => ?_)
  unfold al
  ring

theorem sum_kap_be (hdet : Zm.det ≠ 0) :
    ∑ b, kap Zm b * be T T' Zm b = ((sGT T T' Zm : ℝ) : ℂ) * ph Zm := by
  have hnk : ((nk Zm : ℝ) : ℂ) ≠ 0 := by exact_mod_cast (nk_pos Zm hdet).ne'
  unfold be
  calc ∑ b, kap Zm b * (conj (kap Zm b) / ((nk Zm : ℝ) : ℂ) * ((sGT T T' Zm : ℝ) : ℂ) * ph Zm)
      = (∑ b, kap Zm b * conj (kap Zm b)) / ((nk Zm : ℝ) : ℂ) * ((sGT T T' Zm : ℝ) : ℂ) * ph Zm := by
        rw [Finset.sum_div, Finset.sum_mul, Finset.sum_mul]
        refine Finset.sum_congr rfl (fun b _ => ?_)
        ring
    _ = ((nk Zm : ℝ) : ℂ) / ((nk Zm : ℝ) : ℂ) * ((sGT T T' Zm : ℝ) : ℂ) * ph Zm := by
        simp only [Complex.mul_conj]
        rw [← Complex.ofReal_sum]
        rfl
    _ = ((sGT T T' Zm : ℝ) : ℂ) * ph Zm := by rw [div_self hnk, one_mul]

theorem sqrt_div_mul_eq_sqrt_mul (hT : 0 < T) (hT' : 0 < T') : Real.sqrt (T / T') * T' = Real.sqrt (T * T') := by
  have h1 : T * T' = (T / T') * T' ^ 2 := by
    field_simp
  rw [h1, Real.sqrt_mul (div_nonneg hT.le hT'.le), Real.sqrt_sq hT'.le]

theorem xco_fco (hT : 0 < T) (hT' : 0 < T') (hdet : Zm.det ≠ 0) (a b : Fin (r + 1)) :
    hco T' (xco T T' Zm b) (fco T T' a) = Zm a b := by
  induction a using Fin.lastCases with
  | last =>
    have hne : ∀ a : Fin r, ¬ (Fin.last r = a.castSucc) := fun a h => (Fin.castSucc_lt_last a).ne' h
    have hs : ((Real.sqrt (T * T') : ℝ) : ℂ) ≠ 0 := by
      exact_mod_cast (Real.sqrt_pos.mpr (mul_pos hT hT')).ne'
    have key : (T' : ℂ) * ((Real.sqrt (T / T') : ℝ) : ℂ) = ((Real.sqrt (T * T') : ℝ) : ℂ) := by
      rw [mul_comm]
      exact_mod_cast sqrt_div_mul_eq_sqrt_mul T T' hT hT'
    simp [hco, xco, fco, al, hne]
    rw [show -((T' : ℂ) * (-Zm (Fin.last r) b / ((Real.sqrt (T * T') : ℝ) : ℂ)) *
        ((Real.sqrt (T / T') : ℝ) : ℂ)) = Zm (Fin.last r) b * ((T' : ℂ) * ((Real.sqrt (T / T') : ℝ) : ℂ)) /
        ((Real.sqrt (T * T') : ℝ) : ℂ) by ring, key, mul_div_assoc, div_self hs, mul_one]
  | cast a0 =>
    simp [hco, xco, fco, al]

end xblock

section gram

variable {r : ℕ} (T T' : ℝ) (Zm : Matrix (Fin (r + 1)) (Fin (r + 1)) ℂ)

theorem Rm_herm : (Rm T T' Zm)ᴴ = Rm T T' Zm := by
  have hAp : ∀ b c : Fin (r + 1), star (Ap T' c b) = Ap T' b c := by
    intro b c
    unfold Ap
    by_cases h : b = Fin.last r ∧ c = Fin.last r
    · rw [if_pos ⟨h.2, h.1⟩, if_pos h]
      simp
    · rw [if_neg (fun h' => h ⟨h'.2, h'.1⟩), if_neg h, star_zero]
  have hH : ∀ b c : Fin (r + 1), star (Heta T T' Zm c b) = Heta T T' Zm b c := by
    intro b c
    unfold Heta
    simp only [star_add, star_mul', star_neg, Complex.star_def, Complex.conj_conj, Complex.conj_ofReal]
    ring
  ext c b
  simp only [Matrix.conjTranspose_apply, Rm, Matrix.of_apply, star_sub, hAp, hH]

theorem Qm_herm : (Qm Zm)ᴴ = Qm Zm := by
  ext c b
  simp only [Matrix.conjTranspose_apply, Qm, Matrix.of_apply, star_div₀, star_mul', Complex.star_def,
    Complex.conj_conj, Complex.conj_ofReal]
  ring

theorem Pm_herm : (Pm Zm)ᴴ = Pm Zm := by
  rw [Pm, Matrix.conjTranspose_sub, Matrix.conjTranspose_one, Qm_herm]

theorem Km_add : Km T T' Zm + (Km T T' Zm)ᴴ = Rm T T' Zm - Qm Zm * Rm T T' Zm * Qm Zm := by
  have hs : star (1 / 2 : ℂ) = 1 / 2 := by simp
  unfold Km
  rw [Matrix.conjTranspose_add, Matrix.conjTranspose_smul, Matrix.conjTranspose_mul,
    Matrix.conjTranspose_mul, Matrix.conjTranspose_mul, Matrix.conjTranspose_mul, Pm_herm, Rm_herm,
    Qm_herm, hs]
  rw [← Matrix.mul_assoc (Pm Zm) (Rm T T' Zm) (Pm Zm), ← Matrix.mul_assoc (Qm Zm) (Rm T T' Zm) (Pm Zm)]
  have e : (1 / 2 : ℂ) • (Pm Zm * Rm T T' Zm * Pm Zm) + Pm Zm * Rm T T' Zm * Qm Zm +
      ((1 / 2 : ℂ) • (Pm Zm * Rm T T' Zm * Pm Zm) + Qm Zm * Rm T T' Zm * Pm Zm) =
      Pm Zm * Rm T T' Zm * Pm Zm + Pm Zm * Rm T T' Zm * Qm Zm + Qm Zm * Rm T T' Zm * Pm Zm := by
    module
  rw [e, Pm]
  noncomm_ring

theorem kap_Pm (hdet : Zm.det ≠ 0) (e : Fin (r + 1)) : ∑ d, conj (kap Zm d) * Pm Zm d e = 0 := by
  have hnk : ((nk Zm : ℝ) : ℂ) ≠ 0 := by exact_mod_cast (nk_pos Zm hdet).ne'
  have hsum : ∑ d, conj (kap Zm d) * kap Zm d = ((nk Zm : ℝ) : ℂ) := by
    simp only [← Complex.normSq_eq_conj_mul_self]
    rw [← Complex.ofReal_sum]
    rfl
  simp only [Pm, Matrix.sub_apply, Matrix.one_apply, Qm, Matrix.of_apply, mul_sub, Finset.sum_sub_distrib,
    mul_ite, mul_one, mul_zero, Finset.sum_ite_eq', Finset.mem_univ, if_true]
  have h2 : ∑ d, conj (kap Zm d) * (kap Zm d * conj (kap Zm e) / ((nk Zm : ℝ) : ℂ)) =
      (∑ d, conj (kap Zm d) * kap Zm d) * conj (kap Zm e) / ((nk Zm : ℝ) : ℂ) := by
    rw [Finset.sum_mul, Finset.sum_div]
    refine Finset.sum_congr rfl (fun d _ => ?_)
    ring
  rw [h2, hsum, mul_comm ((nk Zm : ℝ) : ℂ), mul_div_assoc, div_self hnk, mul_one, sub_self]

theorem kap_Pm_mul (hdet : Zm.det ≠ 0) (X : Matrix (Fin (r + 1)) (Fin (r + 1)) ℂ) (b : Fin (r + 1)) :
    ∑ d, conj (kap Zm d) * (Pm Zm * X) d b = 0 := by
  simp only [Matrix.mul_apply, Finset.mul_sum]
  rw [Finset.sum_comm]
  refine Finset.sum_eq_zero (fun e _ => ?_)
  simp_rw [← mul_assoc]
  rw [← Finset.sum_mul, kap_Pm Zm hdet e, zero_mul]

theorem kap_Km (hdet : Zm.det ≠ 0) (b : Fin (r + 1)) : ∑ d, conj (kap Zm d) * Km T T' Zm d b = 0 := by
  have h : Km T T' Zm = Pm Zm * ((1 / 2 : ℂ) • (Rm T T' Zm * Pm Zm) + Rm T T' Zm * Qm Zm) := by
    simp only [Km, Matrix.mul_add, Matrix.mul_smul, Matrix.mul_assoc]
  rw [h]
  exact kap_Pm_mul Zm hdet _ b

theorem ph_conj (hdet : Zm.det ≠ 0) : ph Zm * conj (ph Zm) = 1 := by
  have hn : ((‖Zm.det‖ : ℝ) : ℂ) ≠ 0 := by exact_mod_cast norm_ne_zero_iff.mpr hdet
  unfold ph
  rw [map_div₀, Complex.conj_ofReal, div_mul_div_comm, Complex.mul_conj, Complex.normSq_eq_norm_sq]
  push_cast
  rw [sq, div_self (mul_ne_zero hn hn)]

theorem quad_zero (hT : 0 < T) (hT' : 0 < T') (hdet : Zm.det ≠ 0) (hG : 0 < gPoly (T * T') Zm) :
    ∑ d, ∑ e, conj (kap Zm d) * Rm T T' Zm d e * kap Zm e = 0 := by
  set k := kap Zm with hkdef
  have key : ∀ u : Fin (r + 1) → ℂ, ∑ d, ∑ e, conj (k d) * (u e * conj (u d)) * k e =
      (∑ e, k e * u e) * conj (∑ d, k d * u d) := by
    intro u

    rw [map_sum, Finset.sum_mul_sum, Finset.sum_comm]
    refine Finset.sum_congr rfl (fun d _ => Finset.sum_congr rfl (fun e _ => ?_))
    rw [map_mul]
    ring
  have hA : ∑ d, ∑ e, conj (k d) * Ap T' e d * k e = -((T' : ℝ) : ℂ) * (conj (k (Fin.last r)) * k (Fin.last r)) := by
    rw [Fintype.sum_eq_single (Fin.last r)]
    · rw [Fintype.sum_eq_single (Fin.last r)]
      · simp only [Ap, and_self, if_true]
        ring
      · intro e he
        simp [Ap, he]
    · intro d hd
      refine Finset.sum_eq_zero (fun e _ => ?_)
      simp [Ap, hd]
  have hB : ∑ d, ∑ e, conj (k d) * Heta T T' Zm e d * k e =
      -((T' : ℝ) : ℂ) * ((∑ e, k e * al T T' Zm e) * conj (∑ d, k d * al T T' Zm d)) +
        (∑ e, k e * be T T' Zm e) * conj (∑ d, k d * be T T' Zm d) := by
    rw [← key, ← key, Finset.mul_sum, ← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl (fun d _ => ?_)
    rw [Finset.mul_sum, ← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl (fun e _ => ?_)
    unfold Heta
    ring
  have hsplit : ∑ d, ∑ e, conj (k d) * Rm T T' Zm d e * k e =
      ∑ d, ∑ e, conj (k d) * Ap T' e d * k e - ∑ d, ∑ e, conj (k d) * Heta T T' Zm e d * k e := by
    rw [← Finset.sum_sub_distrib]
    refine Finset.sum_congr rfl (fun d _ => ?_)
    rw [← Finset.sum_sub_distrib]
    refine Finset.sum_congr rfl (fun e _ => ?_)
    simp only [Rm, Matrix.of_apply]
    ring
  have hal := sum_kap_al T T' Zm hT hT'
  have hbe := sum_kap_be T T' Zm hdet
  have hph := ph_conj Zm hdet
  have hkl : k (Fin.last r) = (Zm.submatrix Fin.castSucc Fin.castSucc).det := kap_last Zm
  have hsq : ((Real.sqrt (T * T') : ℝ) : ℂ) * ((Real.sqrt (T * T') : ℝ) : ℂ) = ((T * T' : ℝ) : ℂ) := by
    rw [← Complex.ofReal_mul, Real.mul_self_sqrt (mul_pos hT hT').le]
  have hg : ((sGT T T' Zm : ℝ) : ℂ) * ((sGT T T' Zm : ℝ) : ℂ) = ((gPoly (T * T') Zm / T : ℝ) : ℂ) := by
    rw [← Complex.ofReal_mul, sGT, Real.mul_self_sqrt (div_pos hG hT).le]
  have hT0 : ((T : ℝ) : ℂ) ≠ 0 := by exact_mod_cast hT.ne'
  have hT'0 : ((T' : ℝ) : ℂ) ≠ 0 := by exact_mod_cast hT'.ne'
  rw [hsplit, hA, hB, hal, hbe, hkl]
  simp only [map_mul, map_div₀, map_neg, Complex.conj_ofReal]
  have e1 : (Zm.submatrix Fin.castSucc Fin.castSucc).det * conj (Zm.submatrix Fin.castSucc Fin.castSucc).det =
      ((Complex.normSq (Zm.submatrix Fin.castSucc Fin.castSucc).det : ℝ) : ℂ) := Complex.mul_conj _
  have e2 : Zm.det * conj Zm.det = ((Complex.normSq Zm.det : ℝ) : ℂ) := Complex.mul_conj _
  have e3 : conj (Zm.submatrix Fin.castSucc Fin.castSucc).det * (Zm.submatrix Fin.castSucc Fin.castSucc).det =
      ((Complex.normSq (Zm.submatrix Fin.castSucc Fin.castSucc).det : ℝ) : ℂ) := by
    rw [mul_comm]; exact e1
  unfold gPoly at hg
  push_cast at hg hsq e1 e2 e3
  rw [e3]
  have eA : -Zm.det / ((Real.sqrt (T * T') : ℝ) : ℂ) * (-conj Zm.det / ((Real.sqrt (T * T') : ℝ) : ℂ)) =
      ((Complex.normSq Zm.det : ℝ) : ℂ) / ((T : ℂ) * (T' : ℂ)) := by
    rw [show -Zm.det / ((Real.sqrt (T * T') : ℝ) : ℂ) * (-conj Zm.det / ((Real.sqrt (T * T') : ℝ) : ℂ)) =
      (Zm.det * conj Zm.det) / (((Real.sqrt (T * T') : ℝ) : ℂ) * ((Real.sqrt (T * T') : ℝ) : ℂ)) by ring,
      e2, hsq]
  have eB : ((sGT T T' Zm : ℝ) : ℂ) * ph Zm * (((sGT T T' Zm : ℝ) : ℂ) * conj (ph Zm)) =
      (((sGT T T' Zm : ℝ) : ℂ) * ((sGT T T' Zm : ℝ) : ℂ)) * (ph Zm * conj (ph Zm)) := by ring
  rw [eA, eB, hph, hg, mul_one]
  field_simp
  ring

theorem QRQ_zero (hT : 0 < T) (hT' : 0 < T') (hdet : Zm.det ≠ 0) (hG : 0 < gPoly (T * T') Zm) :
    Qm Zm * Rm T T' Zm * Qm Zm = 0 := by
  ext c b
  have h : (Qm Zm * Rm T T' Zm * Qm Zm) c b = kap Zm c * conj (kap Zm b) / (((nk Zm : ℝ) : ℂ) * ((nk Zm : ℝ) : ℂ)) *
      ∑ d, ∑ e, conj (kap Zm d) * Rm T T' Zm d e * kap Zm e := by
    simp only [Matrix.mul_apply, Qm, Matrix.of_apply, Finset.sum_mul, Finset.mul_sum]
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl (fun d _ => Finset.sum_congr rfl (fun e _ => ?_))
    ring
  rw [h, quad_zero T T' Zm hT hT' hdet hG, mul_zero, Matrix.zero_apply]

theorem Mf_last (hdet : Zm.det ≠ 0) (b : Fin (r + 1)) : Mf T T' Zm (Fin.last r) b = 0 := by
  have h := kap_Km T T' Zm hdet b
  unfold Mf
  rw [Matrix.mul_apply]
  calc ∑ d, (Zm⁻¹)ᴴ (Fin.last r) d * Km T T' Zm d b
      = ∑ d, star (Zm.det⁻¹) * (conj (kap Zm d) * Km T T' Zm d b) := by
        refine Finset.sum_congr rfl (fun d _ => ?_)
        rw [Matrix.conjTranspose_apply, Matrix.inv_def, Matrix.smul_apply, smul_eq_mul,
          Ring.inverse_eq_inv', star_mul']
        unfold kap
        simp only [Complex.star_def]
        ring
    _ = 0 := by rw [← Finset.mul_sum, h, mul_zero]

theorem Mf_Z (hdet : Zm.det ≠ 0) (b c : Fin (r + 1)) :
    ∑ a : Fin r, Mf T T' Zm a.castSucc b * conj (Zm a.castSucc c) = Km T T' Zm c b := by
  have hdetU : IsUnit Zm.det := isUnit_iff_ne_zero.mpr hdet
  have hfull : ∑ a : Fin (r + 1), Mf T T' Zm a b * conj (Zm a c) = Km T T' Zm c b := by
    have h1 : (Zmᴴ * Mf T T' Zm) c b = Km T T' Zm c b := by
      unfold Mf
      rw [← Matrix.mul_assoc, ← Matrix.conjTranspose_mul, Matrix.nonsing_inv_mul _ hdetU,
        Matrix.conjTranspose_one, Matrix.one_mul]
    rw [← h1, Matrix.mul_apply]
    refine Finset.sum_congr rfl (fun a _ => ?_)
    rw [Matrix.conjTranspose_apply, Complex.star_def]
    ring
  rw [← hfull, Fin.sum_univ_castSucc, Mf_last T T' Zm hdet b, zero_mul, add_zero]

theorem xco_gram (hT : 0 < T) (hT' : 0 < T') (hdet : Zm.det ≠ 0) (hG : 0 < gPoly (T * T') Zm)
    (b c : Fin (r + 1)) : hco T' (xco T T' Zm b) (xco T T' Zm c) = Ap T' b c := by
  have h1 := Mf_Z T T' Zm hdet b c
  have h2 := Mf_Z T T' Zm hdet c b
  have h3 : Km T T' Zm + (Km T T' Zm)ᴴ = Rm T T' Zm := by
    rw [Km_add, QRQ_zero T T' Zm hT hT' hdet hG, sub_zero]
  have h4 := congrFun (congrFun h3 c) b
  simp only [Matrix.add_apply, Matrix.conjTranspose_apply, Rm, Matrix.of_apply, Complex.star_def] at h4
  have h5 : ∑ a : Fin r, Zm a.castSucc b * conj (Mf T T' Zm a.castSucc c) = conj (Km T T' Zm b c) := by

    rw [← h2, map_sum]
    refine Finset.sum_congr rfl (fun a _ => ?_)
    rw [map_mul, Complex.conj_conj]
    ring
  simp only [hco, xco]
  rw [h1, h5]
  unfold Heta at h4
  linear_combination h4

end gram

end

end Formalism.FourierDecayAlt.P.PBI
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.SqrtDivMulEqSqrtMul =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.ExistsMeasurableSection =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.ExistsMeasurableSection", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.HcoSmulRight\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CompactGroupHaarExists\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ContDiffAtSecondCoordinate\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SqrtDivMulEqSqrtMul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.PBI

open Finset Matrix Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.P.Dx2.DF
open scoped ComplexConjugate

noncomputable section

section coef

variable {r : ℕ} (T T' : ℝ) (Zm : Matrix (Fin (r + 1)) (Fin (r + 1)) ℂ)

theorem fco_gram (hT : 0 < T) (hT' : 0 < T') (a a' : Fin (r + 1)) :
    hco T' (fco T T' a) (fco T T' a') = if a = Fin.last r ∧ a' = Fin.last r then -((T : ℝ) : ℂ) else 0 := by
  have hs : ((Real.sqrt (T / T') : ℝ) : ℂ) * conj ((Real.sqrt (T / T') : ℝ) : ℂ) = ((T / T' : ℝ) : ℂ) := by
    rw [Complex.conj_ofReal, ← Complex.ofReal_mul, Real.mul_self_sqrt (div_pos hT hT').le]
  simp only [hco, fco, Pi.zero_apply, map_zero, mul_zero, zero_mul, Finset.sum_const_zero, add_zero]
  by_cases ha : a = Fin.last r <;> by_cases ha' : a' = Fin.last r
  · subst ha ha'
    simp only [if_true, and_self]
    have hT0 : ((T' : ℝ) : ℂ) ≠ 0 := by exact_mod_cast hT'.ne'
    rw [mul_assoc, hs]; push_cast; field_simp; ring
  · simp [ha, ha']
  · simp [ha, ha']
  · simp [ha, ha']

theorem fco_xco (hT : 0 < T) (hT' : 0 < T') (hdet : Zm.det ≠ 0) (a b : Fin (r + 1)) :
    hco T' (fco T T' a) (xco T T' Zm b) = conj (Zm a b) := by
  rw [hco_symm, xco_fco T T' Zm hT hT' hdet]

theorem Ap_cs (c : Fin r) (d : Fin (r + 1)) : Ap T' c.castSucc d = 0 := by
  simp [Ap, Fin.castSucc_ne_last]

theorem Ap_cs' (d : Fin (r + 1)) (c : Fin r) : Ap T' d c.castSucc = 0 := by
  simp [Ap, Fin.castSucc_ne_last]

theorem Ap_last : Ap T' (Fin.last r) (Fin.last r) = -((T' : ℝ) : ℂ) := by simp [Ap]

theorem dual_coordinates_kronecker (hT : 0 < T) (hT' : 0 < T') (hdet : Zm.det ≠ 0) (b : Fin r) (c : Fin (r + 1)) :
    hco T' (y0 T T' Zm b) (xco T T' Zm c) = if c = b.castSucc then 1 else 0 := by
  simp only [y0, hco_sum_left, hco_smul_left, fco_xco T T' Zm hT hT' hdet, Matrix.conjTranspose_apply]
  have hu : IsUnit Zm.det := isUnit_iff_ne_zero.mpr hdet
  have h := congrArg (fun M => conj (M b.castSucc c)) (Matrix.nonsing_inv_mul Zm hu)

  simp only [Matrix.mul_apply, map_sum, map_mul, Matrix.one_apply] at h
  simp only [Complex.star_def]
  rw [h]
  by_cases hc : c = b.castSucc
  · subst hc; simp
  · rw [if_neg hc, if_neg (Ne.symm hc)]; simp

theorem ysco_xco (hT : 0 < T) (hT' : 0 < T') (hdet : Zm.det ≠ 0) (hG : 0 < gPoly (T * T') Zm) (b : Fin r)
    (d : Fin (r + 1)) : hco T' (ysco T T' Zm b) (xco T T' Zm d) = if d = b.castSucc then 1 else 0 := by
  simp only [ysco, hco_sub_left, hco_smul_left, hco_sum_left, xco_gram T T' Zm hT hT' hdet hG, Ap_cs, mul_zero,
    Finset.sum_const_zero, sub_zero, dual_coordinates_kronecker T T' Zm hT hT' hdet]

theorem xco_ysco (hT : 0 < T) (hT' : 0 < T') (hdet : Zm.det ≠ 0) (hG : 0 < gPoly (T * T') Zm) (b : Fin r)
    (d : Fin (r + 1)) : hco T' (xco T T' Zm d) (ysco T T' Zm b) = if d = b.castSucc then 1 else 0 := by
  rw [hco_symm, ysco_xco T T' Zm hT hT' hdet hG]; split_ifs <;> simp

theorem ysco_ysco (hT : 0 < T) (hT' : 0 < T') (hdet : Zm.det ≠ 0) (hG : 0 < gPoly (T * T') Zm) (b e : Fin r) :
    hco T' (ysco T T' Zm b) (ysco T T' Zm e) = 0 := by
  have hx : ∀ (c : Fin r) (d : Fin r), hco T' (xco T T' Zm c.castSucc) (y0 T T' Zm d) = if c = d then 1 else 0 := by
    intro c d; rw [hco_symm, dual_coordinates_kronecker T T' Zm hT hT' hdet]; simp [Fin.castSucc_inj]
  have hy : ∀ (c : Fin r) (d : Fin r), hco T' (y0 T T' Zm d) (xco T T' Zm c.castSucc) = if c = d then 1 else 0 := by
    intro c d; rw [dual_coordinates_kronecker T T' Zm hT hT' hdet]; simp [Fin.castSucc_inj]
  have hxx : ∀ (c d : Fin r), hco T' (xco T T' Zm c.castSucc) (xco T T' Zm d.castSucc) = 0 := by
    intro c d; rw [xco_gram T T' Zm hT hT' hdet hG, Ap_cs]
  simp only [ysco, hco_sub_left, hco_sub_right, hco_smul_left, hco_smul_right, hco_sum_left, hco_sum_right, hx, hy,
    hxx, mul_zero, Finset.sum_const_zero, mul_ite, mul_one, Finset.sum_ite_eq', Finset.mem_univ, if_true]
  simp only [sub_zero, mul_ite, mul_one, mul_zero, Finset.sum_ite_eq', Finset.mem_univ, if_true]
  rw [← hco_symm T' (y0 T T' Zm e) (y0 T T' Zm b)]
  simp only [map_div₀, map_one, map_ofNat]
  ring

theorem cofco_xco (hT : 0 < T) (hT' : 0 < T') (hdet : Zm.det ≠ 0) (b : Fin (r + 1)) :
    hco T' (cofco T T' Zm) (xco T T' Zm b) = if b = Fin.last r then conj Zm.det else 0 := by
  simp only [cofco, hco_sum_left, hco_smul_left, fco_xco T T' Zm hT hT' hdet]
  have h := congrArg (fun M => conj (M (Fin.last r) b)) (Matrix.adjugate_mul Zm)

  simp only [Matrix.mul_apply, map_sum, map_mul, Matrix.smul_apply, Matrix.one_apply, smul_eq_mul] at h
  rw [h]
  by_cases hb : b = Fin.last r
  · subst hb; simp
  · rw [if_neg (Ne.symm hb), if_neg hb]; simp

theorem cofco_self (hT : 0 < T) (hT' : 0 < T') :
    hco T' (cofco T T' Zm) (cofco T T' Zm) = -((T : ℝ) : ℂ) * ((Complex.normSq (kap Zm (Fin.last r)) : ℝ) : ℂ) := by
  simp only [cofco, hco_sum_left, hco_sum_right, hco_smul_left, hco_smul_right, fco_gram T T' hT hT']
  simp only [mul_ite, mul_zero]
  rw [Finset.sum_eq_single (Fin.last r), Finset.sum_eq_single (Fin.last r)]
  · simp only [and_self, if_true, kap, Complex.conj_conj, Complex.normSq_eq_conj_mul_self]; ring
  · intro a _ ha; simp [ha]
  · simp
  · intro a _ ha; simp [ha]
  · simp

theorem pco_xco (hT : 0 < T) (hT' : 0 < T') (hdet : Zm.det ≠ 0) (hG : 0 < gPoly (T * T') Zm) (d : Fin (r + 1)) :
    hco T' (pco T T' Zm) (xco T T' Zm d) = 0 := by
  have hT0 : ((T' : ℝ) : ℂ) ≠ 0 := by exact_mod_cast hT'.ne'
  simp only [pco, hco_add_left, hco_sub_left, hco_smul_left, hco_sum_left, xco_gram T T' Zm hT hT' hdet hG, Ap_cs,
    mul_zero, Finset.sum_const_zero, sub_zero, ysco_xco T T' Zm hT hT' hdet hG]
  induction d using Fin.lastCases with
  | last =>
    simp only [Ap_last]
    simp only [mul_ite, mul_one, mul_zero]
    have : ∀ b : Fin r, ¬ (Fin.last r = b.castSucc) := fun b h => Fin.castSucc_ne_last b h.symm
    simp only [this, if_false, Finset.sum_const_zero, sub_zero]
    field_simp; ring
  | cast d =>
    simp only [Ap_cs', mul_zero, add_zero, mul_ite, mul_one, Fin.castSucc_inj, Finset.sum_ite_eq, Finset.mem_univ, if_true, sub_self]

theorem pco_ysco (hT : 0 < T) (hT' : 0 < T') (hdet : Zm.det ≠ 0) (hG : 0 < gPoly (T * T') Zm) (e : Fin r) :
    hco T' (pco T T' Zm) (ysco T T' Zm e) = 0 := by
  simp only [pco, hco_add_left, hco_sub_left, hco_smul_left, hco_sum_left, xco_ysco T T' Zm hT hT' hdet hG,
    ysco_ysco T T' Zm hT hT' hdet hG, mul_zero, Finset.sum_const_zero, sub_zero, mul_ite, mul_one,
    Fin.castSucc_inj]
  simp [Fin.castSucc_ne_last, eq_comm]

theorem pco_self (hT : 0 < T) (hT' : 0 < T') (hdet : Zm.det ≠ 0) (hG : 0 < gPoly (T * T') Zm) :
    hco T' (pco T T' Zm) (pco T T' Zm) = ((gPoly (T * T') Zm / T' : ℝ) : ℂ) := by
  have hT0 : ((T' : ℝ) : ℂ) ≠ 0 := by exact_mod_cast hT'.ne'
  have h1 : hco T' (pco T T' Zm) (pco T T' Zm) = hco T' (pco T T' Zm) (cofco T T' Zm) := by
    conv_lhs => arg 3; rw [pco]
    simp only [hco_add_right, hco_sub_right, hco_smul_right, hco_sum_right, pco_xco T T' Zm hT hT' hdet hG,
      pco_ysco T T' Zm hT hT' hdet hG, mul_zero, Finset.sum_const_zero, sub_zero, add_zero]
  have hxc : ∀ d, hco T' (xco T T' Zm d) (cofco T T' Zm) = if d = Fin.last r then Zm.det else 0 := by
    intro d; rw [hco_symm, cofco_xco T T' Zm hT hT' hdet]; split_ifs <;> simp
  rw [h1]
  simp only [pco, hco_add_left, hco_sub_left, hco_smul_left, hco_sum_left, hxc, cofco_xco T T' Zm hT hT' hdet,
    cofco_self T T' Zm hT hT', Fin.castSucc_ne_last, if_false, mul_zero, zero_mul, Finset.sum_const_zero,
    sub_zero, if_true]
  rw [kap_last]
  simp only [gPoly]
  push_cast
  rw [Complex.normSq_eq_conj_mul_self (z := Zm.det)]
  field_simp
  ring

theorem ph_ne (hdet : Zm.det ≠ 0) : ph Zm ≠ 0 := by
  intro h; have := ph_conj Zm hdet; rw [h, zero_mul] at this; exact zero_ne_one this

theorem nco_xco (hT : 0 < T) (hT' : 0 < T') (hdet : Zm.det ≠ 0) (hG : 0 < gPoly (T * T') Zm) (d : Fin (r + 1)) :
    hco T' (nco T T' Zm) (xco T T' Zm d) = 0 := by
  rw [nco, hco_smul_left, pco_xco T T' Zm hT hT' hdet hG, mul_zero]

theorem nco_ysco (hT : 0 < T) (hT' : 0 < T') (hdet : Zm.det ≠ 0) (hG : 0 < gPoly (T * T') Zm) (e : Fin r) :
    hco T' (nco T T' Zm) (ysco T T' Zm e) = 0 := by
  rw [nco, hco_smul_left, pco_ysco T T' Zm hT hT' hdet hG, mul_zero]

theorem nco_self (hT : 0 < T) (hT' : 0 < T') (hdet : Zm.det ≠ 0) (hG : 0 < gPoly (T * T') Zm) :
    hco T' (nco T T' Zm) (nco T T' Zm) = 1 := by
  have hq : 0 < gPoly (T * T') Zm / T' := div_pos hG hT'
  have hs : sGT' T T' Zm ^ 2 = gPoly (T * T') Zm / T' := Real.sq_sqrt hq.le
  have hs0 : sGT' T T' Zm ≠ 0 := (Real.sqrt_pos.2 hq).ne'
  have hs0' : ((sGT' T T' Zm : ℝ) : ℂ) ≠ 0 := by exact_mod_cast hs0
  rw [nco, hco_smul_left, hco_smul_right, pco_self T T' Zm hT hT' hdet hG, ← hs]
  have hpc := ph_conj Zm hdet
  simp only [map_div₀, Complex.conj_ofReal]
  push_cast
  field_simp
  linear_combination hpc

end coef
section vecs

variable {k r : ℕ} {z' ν' : Fin (2 * r + k + 1) → ℂ}

theorem herm_x_cvec (x : Fin (2 * r + k + 1) → ℂ) (c : Co r) :
    herm (Hpk k r) x (cvec k z' ν' c) = (∑ a, conj (c.1 a) * herm (Hpk k r) x (ee k r a)) +
      (∑ a, conj (c.2.1 a) * herm (Hpk k r) x (es k r a)) + conj c.2.2.1 * herm (Hpk k r) x z' +
      conj c.2.2.2 * herm (Hpk k r) x ν' := by
  simp only [cvec, B2x4.herm_add_right, herm_sum_right, B2x4.herm_smul_right, Complex.star_def]

theorem prW_zero (z : Fin (2 * r + k + 1) → ℂ) : D.prW k r z 0 = 0 := by
  have := prW_smul (k := k) (r := r) z 0 0
  simpa using this

theorem prW_sum (z : Fin (2 * r + k + 1) → ℂ) {ι : Type*} (s : Finset ι) (f : ι → Fin (2 * r + k + 1) → ℂ) :
    D.prW k r z (∑ i ∈ s, f i) = ∑ i ∈ s, D.prW k r z (f i) := by
  classical
  induction s using Finset.induction_on with
  | empty => simp [prW_zero]
  | insert i s hi ih => rw [Finset.sum_insert hi, Finset.sum_insert hi, prW_add, ih]

theorem prW_ee (z : Fin (2 * r + k + 1) → ℂ) (a : Fin r) : D.prW k r z (ee k r a) = 0 := by
  rw [prW_eq, Wb_ee]; simp [herm]

theorem prW_es (z : Fin (2 * r + k + 1) → ℂ) (a : Fin r) : D.prW k r z (es k r a) = 0 := by
  rw [prW_eq, Wb_es]; simp [herm]

theorem prW_cvec (hz' : inWb k r z') (hν : inWb k r ν') (hνz : herm (Hpk k r) ν' z' = 0)
    (hzz0 : herm (Hpk k r) z' z' ≠ 0) (c : Co r) : D.prW k r z' (cvec k z' ν' c) = c.2.2.2 • ν' := by
  simp only [cvec, prW_add, prW_smul, prW_sum, prW_ee, prW_es, smul_zero, Finset.sum_const_zero, zero_add,
    prW_self hz' hzz0, prW_perp hν hνz]

end vecs

section main

variable {k r : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq]

theorem secM_spec (S : B.RealPlaceData k r Wp Wq) (ν' : Fin (2 * r + k + 1) → ℂ) (m₀ : B.Mat k r)
    (hbase : D.IsBaseFrame S ν' m₀) (Zm : Matrix (Fin (r + 1)) (Fin (r + 1)) ℂ)
    (hG : 0 < gPoly (Tz k r S.z * Tz k r S.z') Zm) :
    secM S.z' ν' m₀ (Tz k r S.z) (Tz k r S.z') Zm ∈ B.GV k r ∧
      Zhat k r S.z S.z' (secM S.z' ν' m₀ (Tz k r S.z) (Tz k r S.z') Zm) = Zm ∧
      D.IsDFrame S ν' m₀ (secM S.z' ν' m₀ (Tz k r S.z) (Tz k r S.z') Zm) := by
  obtain ⟨hν, hνz, hνν, ⟨hmU, hmfix⟩, hmz⟩ := hbase
  have hme : ∀ a : Fin r, m₀ *ᵥ ee k r a = ee k r a := fun a => (hmfix a a.isLt).1
  have hms : ∀ a : Fin r, m₀ *ᵥ es k r a = es k r a := fun a => (hmfix a a.isLt).2
  have hz := S.z_mem
  have hz' := S.z'_mem
  have hT := S.T_pos
  have hT' := S.T'_pos
  set T := Tz k r S.z with hTdef
  set T' := Tz k r S.z' with hT'def
  set s := Real.sqrt T' with hsdef
  have hs : 0 < s := Real.sqrt_pos.2 hT'
  have hs' : (s : ℂ) ≠ 0 := by exact_mod_cast hs.ne'
  have hs2 : s ^ 2 = T' := Real.sq_sqrt hT'.le
  have hzz : herm (Hpk k r) S.z' S.z' = -((s : ℂ) ^ 2) := by
    rw [herm_self_alt]; congr 1; exact_mod_cast hs2.symm
  have hzz0 : herm (Hpk k r) S.z' S.z' ≠ 0 := by rw [hzz]; simpa using hs'
  have hzν : herm (Hpk k r) S.z' ν' = 0 := herm_zν hνz
  set μ := Real.sqrt (T' / T) with hμdef
  have hμ : 0 < μ := Real.sqrt_pos.2 (div_pos hT' hT)
  have hμ' : (μ : ℂ) ≠ 0 := by exact_mod_cast hμ.ne'
  have hprW := orthoProj_m0_intertwine m₀ (hmU := hmU) (hme := hme) (hms := hms)
    hz hz' μ hμ.ne' hmz hzz0
  have hdet : Zm.det ≠ 0 := Sm.det_ne_of_gPoly (T := T) (T' := T') hT hT' hG
  have hdn : (‖Zm.det‖ : ℝ) ≠ 0 := norm_ne_zero_iff.mpr hdet
  have hdn' : 0 < ‖Zm.det‖ := norm_pos_iff.mpr hdet
  set Y := Yv S.z' ν' T T' Zm with hYdef
  set σ := smat (Hpk k r) (uB S.z' ν') (wB S.z' ν' s) Y with hσdef
  have hcv : ∀ c d : Co r, herm (Hpk k r) (cvec k S.z' ν' c) (cvec k S.z' ν' d) = hco T' c d :=
    herm_cvec hz' hν hνz hνν
  show m₀ * σ ∈ B.GV k r ∧ Zhat k r S.z S.z' (m₀ * σ) = Zm ∧ D.IsDFrame S ν' m₀ (m₀ * σ)

  have hxx := xco_gram T T' Zm hT hT' hdet hG
  have hxy := xco_ysco T T' Zm hT hT' hdet hG
  have hyx := ysco_xco T T' Zm hT hT' hdet hG
  have hyy := ysco_ysco T T' Zm hT hT' hdet hG
  have hnx := nco_xco T T' Zm hT hT' hdet hG
  have hny := nco_ysco T T' Zm hT hT' hdet hG
  have hnn := nco_self T T' Zm hT hT' hdet hG
  have hxn : ∀ d, hco T' (xco T T' Zm d) (nco T T' Zm) = 0 := fun d => by rw [hco_symm, hnx]; simp
  have hyn : ∀ e, hco T' (ysco T T' Zm e) (nco T T' Zm) = 0 := fun e => by rw [hco_symm, hny]; simp
  have h3 : ∀ i j, herm (Hpk k r) (Y i) (Y j) = herm (Hpk k r) (uB S.z' ν' i) (uB S.z' ν' j) := by
    intro i j
    rcases i with ((b | b) | i) <;> rcases j with ((c | c) | j)
    all_goals try fin_cases i
    all_goals try fin_cases j
    all_goals simp only [hYdef, Yv, uB, Fin.zero_eta, Fin.mk_one, Matrix.cons_val_zero, Matrix.cons_val_one,
      hcv]
    all_goals simp [hxx, hxy, hyx, hyy, hnx, hny, hnn, hxn, hyn, Ap, Fin.castSucc_inj, Fin.castSucc_ne_last,
      h_w_ee hz', h_w_ee hν, h_w_es hz', h_w_es hν, h_ee_w hz', h_ee_w hν, h_es_w hz', h_es_w hν, hzz, hνz,
      hνν, hzν]
    all_goals first
      | (intro h; exact Fin.castSucc_ne_last _ h.symm)
      | (split_ifs <;> simp_all)
      | (exact_mod_cast hs2.symm)
  have h4 : ∀ x, (∀ j, herm (Hpk k r) x (uB S.z' ν' j) = 0) → ∀ i, herm (Hpk k r) x (Y i) = 0 := by
    intro x hx i
    have he : ∀ a, herm (Hpk k r) x (ee k r a) = 0 := fun a => hx (Sum.inl (Sum.inl a))
    have hs0 : ∀ a, herm (Hpk k r) x (es k r a) = 0 := fun a => hx (Sum.inl (Sum.inr a))
    have hz0 : herm (Hpk k r) x S.z' = 0 := by simpa [uB] using hx (Sum.inr 0)
    have hn0 : herm (Hpk k r) x ν' = 0 := by simpa [uB] using hx (Sum.inr 1)
    obtain ⟨c, hc⟩ : ∃ c, Y i = cvec k S.z' ν' c := by
      rcases i with ((b | b) | j)
      · exact ⟨_, rfl⟩
      · exact ⟨_, rfl⟩
      · fin_cases j
        · exact ⟨xco T T' Zm (Fin.last r), rfl⟩
        · exact ⟨nco T T' Zm, rfl⟩
    rw [hc, herm_x_cvec]
    simp [he, hs0, hz0, hn0]
  have hσU : σ ∈ UH (Hpk k r) := sig_UH Y hz' hν hs hzz hνz hνν h3 h4
  have hσu : ∀ i, σ *ᵥ uB S.z' ν' i = Y i := sig_u Y hz' hν hs hzz hνz hνν
  have hγ : m₀ * σ ∈ UH (Hpk k r) := mul_UH hmU hσU
  have hγu : IsUnit (m₀ * σ).det := (Formalism.FourierDecayAlt.P.unitary_group_closed k r).unit _ hγ
  have hm0u : IsUnit m₀.det := (Formalism.FourierDecayAlt.P.unitary_group_closed k r).unit _ hmU
  have hσf : ∀ b, σ *ᵥ fvec k r S.z' b = cvec k S.z' ν' (xco T T' Zm b) := by
    intro b
    rcases cast_or_last b with hb | ⟨b', rfl⟩
    · subst hb; rw [fvec_lastI]; exact hσu (Sum.inr 0)
    · rw [fvec_cs]; exact hσu (Sum.inl (Sum.inl b'))
  have hσc : ∀ d : Co r, σ *ᵥ cvec k S.z' ν' d = cvec k S.z' ν' ((∑ a, d.1 a • xco T T' Zm a.castSucc) +
      (∑ b, d.2.1 b • ysco T T' Zm b) + d.2.2.1 • xco T T' Zm (Fin.last r) + d.2.2.2 • nco T T' Zm) := by
    intro d
    simp only [cvec_add, cvec_sum, cvec_smul]
    simp only [cvec, Matrix.mulVec_add, Matrix.mulVec_sum, Matrix.mulVec_smul]
    have e1 : ∀ a, σ *ᵥ ee k r a = cvec k S.z' ν' (xco T T' Zm a.castSucc) := fun a => hσu (Sum.inl (Sum.inl a))
    have e2 : ∀ a, σ *ᵥ es k r a = cvec k S.z' ν' (ysco T T' Zm a) := fun a => hσu (Sum.inl (Sum.inr a))
    have e3 : σ *ᵥ S.z' = cvec k S.z' ν' (xco T T' Zm (Fin.last r)) := hσu (Sum.inr 0)
    have e4 : σ *ᵥ ν' = cvec k S.z' ν' (nco T T' Zm) := hσu (Sum.inr 1)
    simp only [e1, e2, e3, e4, cvec]

  have hsq : (μ : ℂ)⁻¹ = ((Real.sqrt (T / T') : ℝ) : ℂ) := by
    rw [hμdef, ← Complex.ofReal_inv, ← Real.sqrt_inv, inv_div]
  have hff : ∀ a, fvec k r ((μ : ℂ)⁻¹ • S.z') a = cvec k S.z' ν' (fco T T' a) := by
    intro a
    rcases cast_or_last a with ha | ⟨a', rfl⟩
    · subst ha
      rw [fvec_lastI, hsq]
      simp [cvec, fco, (Fin.castSucc_ne_last _).symm]
    · rw [fvec_cs]
      simp [cvec, fco, Fin.castSucc_ne_last, Fin.castSucc_inj, ite_smul]
  have hZ : Zhat k r S.z S.z' (m₀ * σ) = Zm := by
    ext a b
    rw [reduced_matrix_of_stabilizer m₀ σ hmU hme μ hμ.ne' hmz a b, hσf, hff, hcv, xco_fco T T' Zm hT hT' hdet]
  refine ⟨hγ, hZ, ?_, ?_, ?_⟩
  ·
    have hsG : 0 < sGT T T' Zm := Real.sqrt_pos.2 (div_pos hG hT)
    refine ⟨sGT T T' Zm / ‖Zm.det‖, div_pos hsG hdn', ?_⟩
    have hcof : D.cofR S (m₀ * σ) = m₀ *ᵥ cvec k S.z' ν' (∑ b, kap Zm b • xco T T' Zm b) := by
      unfold D.cofR
      rw [hZ, cvec_sum, Matrix.mulVec_sum]
      refine Finset.sum_congr rfl (fun b _ => ?_)
      rw [← Matrix.mulVec_mulVec, hσf, cvec_smul, Matrix.mulVec_smul, kap]
    rw [hcof, hprW, prW_cvec hz' hν hνz hzz0, Matrix.mulVec_smul, hZ]
    congr 1
    have hsum : (∑ b, kap Zm b • xco T T' Zm b).2.2.2 = ∑ b, kap Zm b * be T T' Zm b := by
      simp [Prod.snd_sum, xco]
    rw [hsum, sum_kap_be T T' Zm hdet, ph]
    push_cast
    field_simp
  ·
    have hsG : 0 < sGT' T T' Zm := Real.sqrt_pos.2 (div_pos hG hT')
    have hsG0 : ((sGT' T T' Zm : ℝ) : ℂ) ≠ 0 := by exact_mod_cast hsG.ne'
    have hph := ph_ne Zm hdet
    refine ⟨sGT' T T' Zm / ‖Zm.det‖, div_pos hsG hdn', ?_⟩
    have hfz : ∀ a, fvec k r S.z a = m₀ *ᵥ cvec k S.z' ν' (fco T T' a) := by
      intro a
      rw [← hff]
      rcases cast_or_last a with ha | ⟨a', rfl⟩
      · subst ha
        rw [fvec_lastI, fvec_lastI, Matrix.mulVec_smul, hmz, smul_smul, inv_mul_cancel₀ hμ', one_smul]
      · rw [fvec_cs, fvec_cs, hme]
    have hcofL : D.cofL S (m₀ * σ) = m₀ *ᵥ cvec k S.z' ν' (cofco T T' Zm) := by
      unfold D.cofL
      rw [hZ, cofco, cvec_sum, Matrix.mulVec_sum]
      refine Finset.sum_congr rfl (fun a _ => ?_)
      rw [hfz, cvec_smul, Matrix.mulVec_smul]
    set d : Co r := (fun c => hco T' (cofco T T' Zm) (ysco T T' Zm c),
      fun b => hco T' (cofco T T' Zm) (xco T T' Zm b.castSucc),
      -(hco T' (cofco T T' Zm) (xco T T' Zm (Fin.last r)) / ((T' : ℝ) : ℂ)),
      ((sGT' T T' Zm : ℝ) : ℂ) / ph Zm) with hddef
    have hσd : σ *ᵥ cvec k S.z' ν' d = cvec k S.z' ν' (cofco T T' Zm) := by
      rw [hσc]
      congr 1
      have hn : (((sGT' T T' Zm : ℝ) : ℂ) / ph Zm) • nco T T' Zm = pco T T' Zm := by
        rw [nco, smul_smul, div_mul_div_comm, mul_comm (ph Zm), div_self (mul_ne_zero hsG0 hph), one_smul]
      simp only [hddef]
      rw [hn, pco]
      simp only [neg_smul]
      abel
    have hinv : (m₀ * σ)⁻¹ *ᵥ D.cofL S (m₀ * σ) = cvec k S.z' ν' d := by
      have : (m₀ * σ) *ᵥ cvec k S.z' ν' d = D.cofL S (m₀ * σ) := by
        rw [← Matrix.mulVec_mulVec, hσd, hcofL]
      rw [← this, Matrix.mulVec_mulVec, Matrix.nonsing_inv_mul _ hγu, Matrix.one_mulVec]
    rw [hinv, prW_cvec hz' hν hνz hzz0, hZ]
    congr 1
    simp only [hddef]
    have hph' : ph Zm = Zm.det / ((‖Zm.det‖ : ℝ) : ℂ) := rfl
    have hnorm : Zm.det * conj Zm.det = ((‖Zm.det‖ : ℝ) : ℂ) ^ 2 := by
      rw [Complex.mul_conj, Complex.normSq_eq_norm_sq]; push_cast; ring
    have hdn'' : ((‖Zm.det‖ : ℝ) : ℂ) ≠ 0 := by exact_mod_cast hdn
    rw [hph']
    push_cast
    field_simp
    first | exact hnorm.symm
  ·
    intro u hu
    set v := m₀⁻¹ *ᵥ u with hvdef
    have hmv : m₀ *ᵥ v = u := by
      rw [hvdef, Matrix.mulVec_mulVec, Matrix.mul_nonsing_inv _ hm0u, Matrix.one_mulVec]
    have hv1 : ∀ a : Fin r, herm (Hpk k r) v (ee k r a) = 0 := by
      intro a; have := (hu a.castSucc).1; rw [fvec_cs, ← hmv, ← hme a, herm_m0_mulVec_invariant m₀ hmU] at this; exact this
    have hzeq : S.z = (μ : ℂ)⁻¹ • (m₀ *ᵥ S.z') := by rw [hmz, smul_smul, inv_mul_cancel₀ hμ', one_smul]
    have hv2 : herm (Hpk k r) v S.z' = 0 := by
      have := (hu (Fin.last r)).1
      rw [fvec_lastI, ← hmv, hzeq, B2x4.herm_smul_right, herm_m0_mulVec_invariant m₀ hmU] at this
      simpa [hμ'] using this
    have hvY : ∀ b, herm (Hpk k r) v (cvec k S.z' ν' (xco T T' Zm b)) = 0 := by
      intro b; have := (hu b).2; rw [← hmv, ← Matrix.mulVec_mulVec, herm_m0_mulVec_invariant m₀ hmU, hσf] at this; exact this
    set t : Fin r → ℂ := fun a => herm (Hpk k r) v (es k r a) with htdef
    set tn : ℂ := herm (Hpk k r) v ν' with htndef
    have hlin : ∀ b, (∑ a, Zm a.castSucc b * conj (t a)) + be T T' Zm b * conj tn = 0 := by
      intro b
      have h := hvY b
      rw [herm_x_cvec] at h
      simp only [hv1, hv2, mul_zero, Finset.sum_const_zero, zero_add, add_zero, xco] at h
      have h' := congrArg conj h

      simp only [map_add (f := _), map_sum, map_mul, Complex.conj_conj, map_zero] at h'
      rw [← h']
    have htn : tn = 0 := by
      have hsum : ∑ b, kap Zm b * ((∑ a, Zm a.castSucc b * conj (t a)) + be T T' Zm b * conj tn) = 0 := by
        simp [hlin]
      have hsplit : ∑ b, kap Zm b * ((∑ a, Zm a.castSucc b * conj (t a)) + be T T' Zm b * conj tn) =
          (∑ a, conj (t a) * ∑ b, Zm a.castSucc b * kap Zm b) + conj tn * ∑ b, kap Zm b * be T T' Zm b := by
        simp only [mul_add, Finset.sum_add_distrib, Finset.mul_sum]
        congr 1
        · rw [Finset.sum_comm]
          exact Finset.sum_congr rfl (fun a _ => Finset.sum_congr rfl (fun b _ => by ring))
        · exact Finset.sum_congr rfl (fun b _ => by ring)
      rw [hsplit] at hsum
      simp only [mul_kap, Fin.castSucc_ne_last, if_false, mul_zero, Finset.sum_const_zero, zero_add,
        sum_kap_be T T' Zm hdet] at hsum
      have hsG : 0 < sGT T T' Zm := Real.sqrt_pos.2 (div_pos hG hT)
      have hsG0 : ((sGT T T' Zm : ℝ) : ℂ) ≠ 0 := by exact_mod_cast hsG.ne'
      have := mul_eq_zero.1 hsum
      rcases this with h | h
      · simpa using h
      · exfalso; exact mul_ne_zero hsG0 (ph_ne Zm hdet) h
    have ht : ∀ a, t a = 0 := by
      set w : Fin (r + 1) → ℂ := Fin.lastCases 0 (fun a => conj (t a)) with hwdef
      have hw : Matrix.vecMul w Zm = 0 := by
        ext b
        simp only [Matrix.vecMul, dotProduct, Fin.sum_univ_castSucc, hwdef, Fin.lastCases_castSucc,
          Fin.lastCases_last, zero_mul, add_zero, Pi.zero_apply]
        have := hlin b
        rw [htn] at this
        simpa [mul_comm] using this
      have hw0 : w = 0 := by
        have hu' : IsUnit Zm.det := isUnit_iff_ne_zero.mpr hdet
        have : w = Matrix.vecMul (Matrix.vecMul w Zm) Zm⁻¹ := by
          rw [Matrix.vecMul_vecMul, Matrix.mul_nonsing_inv _ hu', Matrix.vecMul_one]
        rw [this, hw, Matrix.zero_vecMul]
      intro a
      have := congrFun hw0 a.castSucc
      simp only [hwdef, Fin.lastCases_castSucc, Pi.zero_apply, map_eq_zero] at this
      exact this
    have hfix : σ *ᵥ v = v := by
      apply sig_fix Y v
      intro i
      rcases i with ((b | b) | i)
      · exact ht b
      · exact hv1 b
      · fin_cases i
        · simp [wB, B2x4.herm_smul_right, herm_neg_right, hv2]
        · simpa [wB] using htn
    have hinv : (m₀ * σ)⁻¹ *ᵥ u = v := by
      have : (m₀ * σ) *ᵥ v = u := by rw [← Matrix.mulVec_mulVec, hfix, hmv]
      rw [← this, Matrix.mulVec_mulVec, Matrix.nonsing_inv_mul _ hγu, Matrix.one_mulVec]
    rw [hinv, ← hmv, hprW]

end main

end

end Formalism.FourierDecayAlt.P.PBI

namespace Formalism.FourierDecayAlt.P

open Formalism.QuantumDeterminants Formalism.FourierDecayAlt

theorem pbi_sectionExists_proof : PBI.SectionExists := by
  intro k r Wp Wq _ _ _ _ Bs ν' m₀ hbase
  refine ⟨fun Z => Matrix.of.symm (PBI.secM Bs.z' ν' m₀ (Tz k r Bs.z) (Tz k r Bs.z') (Matrix.of Z)),
    PBI.secM_contDiffOn Bs.z' ν' m₀ _ _ Bs.T_pos Bs.T'_pos, fun Z hZ => ?_⟩
  simpa only [Equiv.apply_symm_apply] using PBI.secM_spec Bs ν' m₀ hbase (Matrix.of Z) hZ

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.ExistsMeasurableSection =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.RearrApply =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.RearrApply", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.RightStabilizerMem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.StabilizerDisintegration.RE

open MeasureTheory Matrix Formalism.QuantumDeterminants Formalism.FourierDecayAlt

noncomputable section

section gen

variable {α β γ : Type} [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

def inE : α × (β × γ) ≃ᵐ β × (α × γ) :=
  MeasurableEquiv.prodAssoc.symm.trans
    ((MeasurableEquiv.prodCongr MeasurableEquiv.prodComm (MeasurableEquiv.refl γ)).trans MeasurableEquiv.prodAssoc)

theorem inE_mp (μa : Measure α) (μb : Measure β) (μc : Measure γ) [SFinite μa] [SFinite μb] [SFinite μc] :
    MeasurePreserving (inE : α × (β × γ) ≃ᵐ β × (α × γ)) (μa.prod (μb.prod μc)) (μb.prod (μa.prod μc)) := by
  have e1 := MeasurePreserving.symm _ (measurePreserving_prodAssoc μa μb μc)
  have e2 := (Measure.measurePreserving_swap (μ := μa) (ν := μb)).prod (MeasurePreserving.id μc)
  have e3 := measurePreserving_prodAssoc μb μa μc
  exact e3.comp (e2.comp e1)

end gen

variable {k r : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq]

def rearr (k r : ℕ) (w : Equiv.Perm (Fin (r + 1))) :
    OD.RR k r w ≃ᵐ ((C2.LPidx w → ℂ) × (G.UT (r + 1) → ℂ)) × B.SS k r :=
  (MeasurableEquiv.prodCongr inE inE).trans Dx2.SL.swap4

@[simp] theorem rearr_apply (w : Equiv.Perm (Fin (r + 1))) (q : OD.RR k r w) :
    rearr k r w q = ((q.1.2.1, q.2.2.1), ((q.1.1, q.1.2.2), (q.2.1, q.2.2.2))) := rfl

theorem mp_rearr (S : B.RealPlaceData k r Wp Wq) (w : Equiv.Perm (Fin (r + 1))) {μ0 μ0' : Measure (Mt k r)}
    (hμ0 : B.IsHaarOn (C2.N0set k r S.z) μ0) (hμ0' : B.IsHaarOn (C2.N0set k r S.z') μ0') :
    MeasurePreserving (rearr k r w) (OD.nuR S w μ0 μ0')
      (((volume : Measure (C2.LPidx w → ℂ)).prod (volume : Measure (G.UT (r + 1) → ℂ))).prod
        ((S.μW.prod μ0).prod (S.μW'.prod μ0'))) := by
  haveI : IsFiniteMeasureOnCompacts S.μW := ⟨fun K hK => S.haarW.finite_compact K hK⟩
  haveI : IsFiniteMeasureOnCompacts S.μW' := ⟨fun K hK => S.haarW'.finite_compact K hK⟩
  haveI : IsFiniteMeasureOnCompacts μ0 := ⟨fun K hK => hμ0.finite_compact K hK⟩
  haveI : IsFiniteMeasureOnCompacts μ0' := ⟨fun K hK => hμ0'.finite_compact K hK⟩
  haveI t1 : SFinite S.μW := inferInstance
  haveI t2 : SFinite μ0 := inferInstance
  haveI t5 : SFinite S.μW' := inferInstance
  haveI t6 : SFinite μ0' := inferInstance
  haveI t3 : SFinite (volume : Measure (C2.LPidx w → ℂ)) := inferInstance
  haveI t4 : SFinite (volume : Measure (G.UT (r + 1) → ℂ)) := inferInstance
  have h1 := (inE_mp S.μW (volume : Measure (C2.LPidx w → ℂ)) μ0).prod
    (inE_mp S.μW' (volume : Measure (G.UT (r + 1) → ℂ)) μ0')
  have h2 := _root_.Formalism.FourierDecayAlt.P.Dx2.SL.measurePreserving_prod_middle_swap (volume : Measure (C2.LPidx w → ℂ)) (S.μW.prod μ0)
    (volume : Measure (G.UT (r + 1) → ℂ)) (S.μW'.prod μ0')
  exact h2.comp h1

end

end Formalism.FourierDecayAlt.P.StabilizerDisintegration.RE
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.RearrApply =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.RearrSymm =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.RearrSymm", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.RightStabilizerMem\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SupportPhiZeroSubset\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.HermitianFormRankZeroApply\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.MeasurableCoordinateMap\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.RearrApply\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.StabilizerDisintegration.OJ

open MeasureTheory Matrix Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.P.StabilizerDisintegration.OD
open scoped ComplexConjugate

noncomputable section

variable {k r : ℕ} {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq]

theorem ell_eq (z : Fin (2 * r + k + 1) → ℂ) (g : B.Mat k r) : ell k r z g = C2.simpleUp (C2.uMap k r z g) := by
  unfold ell C2.simpleUp
  rw [Fin.sum_univ_castSucc]
  simp only [Fin.val_last, lt_self_iff_false, dite_false, add_zero, Fin.val_castSucc]
  refine Finset.sum_congr rfl fun a _ => ?_
  have ha : a.val + 1 < r + 1 := by omega
  rw [dite_eq_left ha]
  simp only [C2.uMap, Fin.val_castSucc, a.isLt, dite_true]
  rw [_root_.PI.StabPairsW.herm_es]
  simp only [fvec]
  by_cases h1 : a.val + 1 < r
  · simp [h1, bvec, Matrix.mulVec_single]
  · simp [h1]

theorem psi_prod (a b : ℂ) :
    Complex.exp (Complex.I * (((1 : ℝ) * (cStd * a).re - (1 : ℝ) * (cStd * b).re : ℝ) : ℂ)) =
      C2.psiC cStd a * star (C2.psiC cStd b) := by
  simp only [C2.psiC, Complex.star_def, ← Complex.exp_conj, ← Complex.exp_add]
  congr 1
  simp only [map_mul, Complex.conj_I, Complex.conj_ofReal]
  push_cast
  ring

theorem xi_at (S : B.RealPlaceData k r Wp Wq) {v u' : Matrix (Fin (r + 1)) (Fin (r + 1)) ℂ} (hv : v ∈ C2.UTset (r + 1))
    (hu' : u' ∈ C2.UTset (r + 1)) {n0 n0' : Mt k r} (hn0 : Matrix.of n0 ∈ C2.N0set k r S.z)
    (hn0' : Matrix.of n0' ∈ C2.N0set k r S.z') (h h' : Mt k r) :
    B.xiTau S (1, 1) ((h, Matrix.of.symm (C2.tauM k r S.z v * Matrix.of n0)),
      (h', Matrix.of.symm (C2.tauM k r S.z' u' * Matrix.of n0'))) =
      C2.psiC cStd (C2.simpleUp v) * star (C2.psiC cStd (C2.simpleUp u')) := by
  have key : ∀ {z : Fin (2 * r + k + 1) → ℂ}, C2.StdZ k r z → ∀ {v : Matrix (Fin (r + 1)) (Fin (r + 1)) ℂ},
      v ∈ C2.UTset (r + 1) → ∀ {n0 : Mt k r}, Matrix.of n0 ∈ C2.N0set k r z →
      ell k r z (C2.tauM k r z v * Matrix.of n0) = C2.simpleUp v := by
    intro z hz v hv n0 hn0
    rw [ell_eq, HC.uMap_mul hz (HC.tau_N hz hv) hn0.1, HC.tau_u hz hv, hn0.2, mul_one]
  unfold B.xiTau B.lam
  simp only [Equiv.apply_symm_apply]
  rw [key ⟨S.z_mem, S.T_pos⟩ hv hn0, key ⟨S.z'_mem, S.T'_pos⟩ hu' hn0']
  exact psi_prod _ _

theorem pt_eq (S : B.RealPlaceData k r Wp Wq) (γ : B.Mat k r) (w : Equiv.Perm (Fin (r + 1)))
    (F : B.Mat k r → (Wq →L[ℂ] Wp)) (Y : (C2.LPidx w → ℂ) × (G.UT (r + 1) → ℂ)) (p : B.SS k r)
    (hp1 : Matrix.of p.1.2 ∈ C2.N0set k r S.z) (hp2 : Matrix.of p.2.2 ∈ C2.N0set k r S.z') :
    D.orbIntegrand S γ F (Xi0 S w ((p.1.1, (Y.1, p.1.2)), (p.2.1, (Y.2, p.2.2)))) =
      (C2.psiC cStd (C2.simpleUp (lowP w Y.1)ᴴ) * star (C2.psiC cStd (C2.simpleUp (G.upper Y.2)))) •
        B.rho S p F ((C2.tauM k r S.z (lowP w Y.1)ᴴ)⁻¹ * γ * C2.tauM k r S.z' (G.upper Y.2)) := by
  have hv := OD.lowPH_UT Y.1
  have hu := HC.upper_mem Y.2
  have hr : B.rho S ((p.1.1, Matrix.of.symm (C2.tauM k r S.z (lowP w Y.1)ᴴ * Matrix.of p.1.2)),
        (p.2.1, Matrix.of.symm (C2.tauM k r S.z' (G.upper Y.2) * Matrix.of p.2.2))) F γ =
      B.rho S p F ((C2.tauM k r S.z (lowP w Y.1)ᴴ)⁻¹ * γ * C2.tauM k r S.z' (G.upper Y.2)) := by
    unfold B.rho B.sgs
    simp only [Equiv.apply_symm_apply, Matrix.mul_inv_rev, Matrix.mul_assoc]
  unfold D.orbIntegrand
  rw [show Xi0 S w ((p.1.1, (Y.1, p.1.2)), (p.2.1, (Y.2, p.2.2))) =
      ((p.1.1, Matrix.of.symm (C2.tauM k r S.z (lowP w Y.1)ᴴ * Matrix.of p.1.2)),
        (p.2.1, Matrix.of.symm (C2.tauM k r S.z' (G.upper Y.2) * Matrix.of p.2.2))) from rfl,
    xi_at S hv hu hp1 hp2 p.1.1 p.2.1, hr]

theorem cell_int [CompleteSpace Wp] (S : B.RealPlaceData k r Wp Wq) (γ : B.Mat k r) (w : Equiv.Perm (Fin (r + 1)))
    {μ0 μ0' : Measure (Mt k r)} (hμ0 : B.IsHaarOn (C2.N0set k r S.z) μ0)
    (hμ0' : B.IsHaarOn (C2.N0set k r S.z') μ0') (F : B.Mat k r → (Wq →L[ℂ] Wp))
    (hI : Integrable (fun q => D.orbIntegrand S γ F (Xi0 S w q)) (nuR S w μ0 μ0')) :
    ∫ q, D.orbIntegrand S γ F (Xi0 S w q) ∂(nuR S w μ0 μ0') =
      ∫ Y : (C2.LPidx w → ℂ) × (G.UT (r + 1) → ℂ),
        (C2.psiC cStd (C2.simpleUp (lowP w Y.1)ᴴ) * star (C2.psiC cStd (C2.simpleUp (G.upper Y.2)))) •
          PBI.fibInt S μ0 μ0' F ((C2.tauM k r S.z (lowP w Y.1)ᴴ)⁻¹ * γ * C2.tauM k r S.z' (G.upper Y.2)) := by
  have := Dx2.OrbJ.sigmaF hμ0
  have := Dx2.OrbJ.sigmaF hμ0'
  have := Dx2.OrbJ.sigmaF S.haarW
  have := Dx2.OrbJ.sigmaF S.haarW'
  have hmp := RE.mp_rearr S w hμ0 hμ0'
  let Φ : ((C2.LPidx w → ℂ) × (G.UT (r + 1) → ℂ)) × B.SS k r → (Wq →L[ℂ] Wp) := fun x =>
    (C2.psiC cStd (C2.simpleUp (lowP w x.1.1)ᴴ) * star (C2.psiC cStd (C2.simpleUp (G.upper x.1.2)))) •
      B.rho S x.2 F ((C2.tauM k r S.z (lowP w x.1.1)ᴴ)⁻¹ * γ * C2.tauM k r S.z' (G.upper x.1.2))
  have hae : (fun q => D.orbIntegrand S γ F (Xi0 S w q)) =ᵐ[nuR S w μ0 μ0'] fun q => Φ (RE.rearr k r w q) := by
    filter_upwards [OG.ae_good S w hμ0 hμ0'] with q hq
    rw [RE.rearr_apply]
    exact pt_eq S γ w F (q.1.2.1, q.2.2.1) ((q.1.1, q.1.2.2), (q.2.1, q.2.2.2)) hq.2.1 hq.2.2.2
  have hIp : Integrable Φ (((volume : Measure (C2.LPidx w → ℂ)).prod (volume : Measure (G.UT (r + 1) → ℂ))).prod
      ((S.μW.prod μ0).prod (S.μW'.prod μ0'))) :=
    (hmp.integrable_comp_emb (RE.rearr k r w).measurableEmbedding).mp (hI.congr hae)
  rw [integral_congr_ae hae, hmp.integral_comp' Φ, integral_prod Φ hIp]
  refine integral_congr_ae (Filter.Eventually.of_forall fun Y => ?_)
  simp only [Φ]
  rw [integral_smul]
  rfl

end

end Formalism.FourierDecayAlt.P.StabilizerDisintegration.OJ
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.RearrSymm =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.UnipotentCharacterOneOfProduct =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.UnipotentCharacterOneOfProduct", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.HeisenbergLeviConjugationMeasure\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SupportPhiZeroSubset\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.UnipotentCoordinatesMeasurePreserving\nimport Formalism.FormalDegreeBessel.FormalDegreeRatio.UnitaryWeylNormalHolds\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.CompactGroupHaarExists\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.ComponentFamilySettingOfSetting\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.HermitianFormFlagVector\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.MatExtMulVec\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.OrbitalIntegralAeConvergenceContinuity\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.StabilizerFourthCondition\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SubMulRight\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.WittOrthonormalBasis\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.ZhatSectionExists\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.StabilizerDisintegration.FB

open MeasureTheory Matrix Formalism.QuantumDeterminants Formalism.FourierDecayAlt
open scoped ComplexConjugate

noncomputable section

variable {k r : ℕ}

def lmulE (a : B.Mat k r) (ha : IsUnit a.det) : Mt k r ≃ᵐ Mt k r where
  toFun := lmulM a
  invFun := lmulM a⁻¹
  left_inv x := by
    have : a⁻¹ * (a * Matrix.of x) = Matrix.of x := by
      rw [← Matrix.mul_assoc, Matrix.nonsing_inv_mul _ ha, Matrix.one_mul]
    exact this
  right_inv x := by
    have : a * (a⁻¹ * Matrix.of x) = Matrix.of x := by
      rw [← Matrix.mul_assoc, Matrix.mul_nonsing_inv _ ha, Matrix.one_mul]
    exact this
  measurable_toFun := B2x5.measurable_lmulM a
  measurable_invFun := B2x5.measurable_lmulM a⁻¹

variable {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
  [InnerProductSpace ℂ Wq]

private theorem measurePreserving_lmulE_of_isHaarOn {U : Set (B.Mat k r)} {μ : Measure (Mt k r)} (h : B.IsHaarOn U μ)
    {a : B.Mat k r} (ha : a ∈ U) (hdet : IsUnit a.det) : MeasurePreserving (lmulE a hdet) μ μ :=
  ⟨(lmulE a hdet).measurable, h.left a ha⟩

theorem fibInt_left (Bs : B.RealPlaceData k r Wp Wq) {μ0 μ0' : Measure (Mt k r)}
    (hμ0 : B.IsHaarOn (C2.N0set k r Bs.z) μ0) (hμ0' : B.IsHaarOn (C2.N0set k r Bs.z') μ0')
    (F : B.Mat k r → (Wq →L[ℂ] Wp)) (g : B.Mat k r) {n1 : B.Mat k r} (hn1 : n1 ∈ C2.N0set k r Bs.z) :
    PBI.fibInt Bs μ0 μ0' F (n1⁻¹ * g) = PBI.fibInt Bs μ0 μ0' F g := by
  have hdet : IsUnit n1.det := _root_.Formalism.FourierDecayAlt.P.Dx2.OrbJ.isUnit_of_N hn1.1
  haveI := Formalism.FourierDecayAlt.P.B7.sf Bs.haarW
  haveI := Formalism.FourierDecayAlt.P.B7.sf Bs.haarW'
  haveI := Formalism.FourierDecayAlt.P.B7.sf hμ0
  haveI := Formalism.FourierDecayAlt.P.B7.sf hμ0'
  let e : B.SS k r ≃ᵐ B.SS k r :=
    MeasurableEquiv.prodCongr (MeasurableEquiv.prodCongr (MeasurableEquiv.refl _) (lmulE n1 hdet))
      (MeasurableEquiv.refl _)
  have he : MeasurePreserving e ((Bs.μW.prod μ0).prod (Bs.μW'.prod μ0'))
      ((Bs.μW.prod μ0).prod (Bs.μW'.prod μ0')) :=
    ((MeasurePreserving.id Bs.μW).prod (measurePreserving_lmulE_of_isHaarOn hμ0 hn1 hdet)).prod
      (MeasurePreserving.id (Bs.μW'.prod μ0'))
  have key : ∀ p : B.SS k r, B.rho Bs (e p) F g = B.rho Bs p F (n1⁻¹ * g) := by
    intro p
    have hs : B.sgs (e p) g = B.sgs p (n1⁻¹ * g) := by
      show (Matrix.of p.1.1)⁻¹ * (n1 * Matrix.of p.1.2)⁻¹ * g * Matrix.of p.2.2 * Matrix.of p.2.1 = _
      simp only [B.sgs, Matrix.mul_inv_rev, Matrix.mul_assoc]
    show (Bs.π (Matrix.of p.1.1)).comp ((F (B.sgs (e p) g)).comp (Bs.π' (Matrix.of p.2.1)⁻¹)) = _
    rw [hs]
    rfl
  unfold PBI.fibInt
  calc ∫ p, B.rho Bs p F (n1⁻¹ * g) ∂((Bs.μW.prod μ0).prod (Bs.μW'.prod μ0'))
      = ∫ p, B.rho Bs (e p) F g ∂((Bs.μW.prod μ0).prod (Bs.μW'.prod μ0')) := by
        exact MeasureTheory.integral_congr_ae (Filter.Eventually.of_forall fun p => (key p).symm)
    _ = _ := he.integral_comp' (fun p => B.rho Bs p F g)

theorem fibInt_right (Bs : B.RealPlaceData k r Wp Wq) {μ0 μ0' : Measure (Mt k r)}
    (hμ0 : B.IsHaarOn (C2.N0set k r Bs.z) μ0) (hμ0' : B.IsHaarOn (C2.N0set k r Bs.z') μ0')
    (F : B.Mat k r → (Wq →L[ℂ] Wp)) (g : B.Mat k r) {n1 : B.Mat k r} (hn1 : n1 ∈ C2.N0set k r Bs.z') :
    PBI.fibInt Bs μ0 μ0' F (g * n1) = PBI.fibInt Bs μ0 μ0' F g := by
  have hdet : IsUnit n1.det := _root_.Formalism.FourierDecayAlt.P.Dx2.OrbJ.isUnit_of_N hn1.1
  haveI := Formalism.FourierDecayAlt.P.B7.sf Bs.haarW
  haveI := Formalism.FourierDecayAlt.P.B7.sf Bs.haarW'
  haveI := Formalism.FourierDecayAlt.P.B7.sf hμ0
  haveI := Formalism.FourierDecayAlt.P.B7.sf hμ0'
  let e : B.SS k r ≃ᵐ B.SS k r :=
    MeasurableEquiv.prodCongr (MeasurableEquiv.refl _)
      (MeasurableEquiv.prodCongr (MeasurableEquiv.refl _) (lmulE n1 hdet))
  have he : MeasurePreserving e ((Bs.μW.prod μ0).prod (Bs.μW'.prod μ0'))
      ((Bs.μW.prod μ0).prod (Bs.μW'.prod μ0')) :=
    (MeasurePreserving.id (Bs.μW.prod μ0)).prod
      ((MeasurePreserving.id Bs.μW').prod (measurePreserving_lmulE_of_isHaarOn hμ0' hn1 hdet))
  have key : ∀ p : B.SS k r, B.rho Bs (e p) F g = B.rho Bs p F (g * n1) := by
    intro p
    have hs : B.sgs (e p) g = B.sgs p (g * n1) := by
      show (Matrix.of p.1.1)⁻¹ * (Matrix.of p.1.2)⁻¹ * g * (n1 * Matrix.of p.2.2) * Matrix.of p.2.1 = _
      simp only [B.sgs, Matrix.mul_assoc]
    show (Bs.π (Matrix.of p.1.1)).comp ((F (B.sgs (e p) g)).comp (Bs.π' (Matrix.of p.2.1)⁻¹)) = _
    rw [hs]
    rfl
  unfold PBI.fibInt
  calc ∫ p, B.rho Bs p F (g * n1) ∂((Bs.μW.prod μ0).prod (Bs.μW'.prod μ0'))
      = ∫ p, B.rho Bs (e p) F g ∂((Bs.μW.prod μ0).prod (Bs.μW'.prod μ0')) := by
        exact MeasureTheory.integral_congr_ae (Filter.Eventually.of_forall fun p => (key p).symm)
    _ = _ := he.integral_comp' (fun p => B.rho Bs p F g)

theorem unipotent_character_one_of_product {z : Fin (2 * r + k + 1) → ℂ} (hz : C2.StdZ k r z) {hA nA : B.Mat k r}
    (hhA : hA ∈ UWset k r z) (hnA : nA ∈ Nset k r) (hs : C2.uMap k r z (hA * nA) = 1) : C2.uMap k r z nA = 1 := by
  have key : C2.uMap k r z (hA * nA) = C2.uMap k r z nA := by
    funext a b
    simp only [C2.uMap]
    split_ifs with h
    · have e := Formalism.FourierDecayAlt.P.Qx2.herm_uh hhA.1 (nA *ᵥ fvec k r z b) (bvec (esI k r ⟨a.val, h⟩))
      rw [(hhA.2.1 ⟨a.val, h⟩).2, Matrix.mulVec_mulVec] at e
      exact e
    · have e := Formalism.FourierDecayAlt.P.Qx2.herm_uh hhA.1 (nA *ᵥ fvec k r z b) z
      rw [hhA.2.2, Matrix.mulVec_mulVec] at e
      rw [e]
  rw [← key]
  exact hs

theorem conj_fix {z : Fin (2 * r + k + 1) → ℂ} (hz : C2.StdZ k r z) {v : Matrix (Fin (r + 1)) (Fin (r + 1)) ℂ}
    (hv : v ∈ C2.UTset (r + 1)) {n : B.Mat k r} (hn : n ∈ Nset k r) (hu : C2.uMap k r z n = 1) :
    C2.tauM k r z v * n * (C2.tauM k r z v)⁻¹ ∈ Nset k r ∧
      ∀ b, (C2.tauM k r z v * n * (C2.tauM k r z v)⁻¹) *ᵥ fvec k r z b = fvec k r z b := by
  set τ := C2.tauM k r z v with hτdef
  have hτN : τ ∈ Nset k r := Formalism.FourierDecayAlt.P.StabilizerDisintegration.A.tau_N hz hv
  have hτdet : IsUnit τ.det := _root_.Formalism.FourierDecayAlt.P.Dx2.OrbJ.isUnit_of_N hτN
  refine ⟨Formalism.QuantumDeterminants.WeylGroupFacts.mem_n_mul (Formalism.QuantumDeterminants.WeylGroupFacts.mem_n_mul hτN hn) (Formalism.QuantumDeterminants.WeylGroupFacts.mem_n_inv hτN), ?_⟩

  have h1W : (1 : B.Mat k r) ∈ UWset k r z := by
    refine ⟨?_, fun a => ⟨?_, ?_⟩, ?_⟩
    · show (1 : B.Mat k r)ᴴ * Hpk k r * 1 = Hpk k r
      simp
    all_goals simp
  have hS : ∀ s ∈ Nset k r, s ∈ Sset k r z := fun s hs => ⟨1, h1W, s, hs, (Matrix.one_mul s).symm⟩

  obtain ⟨Un, -, -, hUn⟩ := Formalism.QuantumDeterminants.S_F hz.1 (hS n hn)
  have hUn1 : Un = 1 := by
    rw [← hu]
    exact (Formalism.FourierDecayAlt.P.C2x5.uMap_eq hz n Un (Formalism.FourierDecayAlt.P.C2x5.colEq hUn)).symm
  rw [hUn1, Matrix.mul_one] at hUn

  obtain ⟨Ut, hlow, hdiag, hUt⟩ := Formalism.QuantumDeterminants.S_F hz.1 (hS τ hτN)
  have hUdet : IsUnit Ut.det := by
    rw [Matrix.det_of_upperTriangular (fun i j hij => hlow i j hij)]
    simp [hdiag]
  have hinv : τ⁻¹ * Fm k r z = Fm k r z * Ut⁻¹ := by
    calc τ⁻¹ * Fm k r z = τ⁻¹ * (Fm k r z * Ut * Ut⁻¹) := by
          rw [Matrix.mul_assoc (Fm k r z), Matrix.mul_nonsing_inv _ hUdet, Matrix.mul_one]
      _ = τ⁻¹ * (τ * Fm k r z) * Ut⁻¹ := by rw [← hUt]; simp only [Matrix.mul_assoc]
      _ = Fm k r z * Ut⁻¹ := by
          rw [← Matrix.mul_assoc τ⁻¹, Matrix.nonsing_inv_mul _ hτdet, Matrix.one_mul]
  have hM : τ * n * τ⁻¹ * Fm k r z = Fm k r z * (1 : Matrix (Fin (r + 1)) (Fin (r + 1)) ℂ) := by
    calc τ * n * τ⁻¹ * Fm k r z = τ * (n * Fm k r z) * Ut⁻¹ := by
          rw [Matrix.mul_assoc (τ * n), hinv]; simp only [Matrix.mul_assoc]
      _ = Fm k r z * (Ut * Ut⁻¹) := by rw [hUn, hUt, Matrix.mul_assoc]
      _ = Fm k r z * (1 : Matrix (Fin (r + 1)) (Fin (r + 1)) ℂ) := by rw [Matrix.mul_nonsing_inv _ hUdet]
  intro b
  rw [Formalism.FourierDecayAlt.P.C2x5.colEq hM b]
  simp [Matrix.one_apply]

variable (S : B.RealPlaceData k r Wp Wq)

theorem fib_indep (ν' : Fin (2 * r + k + 1) → ℂ) (m₀ : B.Mat k r) (hbase : D.IsBaseFrame S ν' m₀) (pt : C.LPt)
    (hp : D.IsLocPt pt (r + 1)) (hG : 0 < D.ptG (Tz k r S.z * Tz k r S.z') r pt) {σ : B.Mat k r}
    (hE : m₀ * σ ∈ B.GV k r ∧ Zhat k r S.z S.z' (m₀ * σ) = D.ptMatN pt (r + 1) ∧
      D.IsDFrame S ν' m₀ (m₀ * σ) ∧ σ ∈ UH (Hpk k r) ∧
      (∀ x, inWb k r x → herm (Hpk k r) x S.z' = 0 → herm (Hpk k r) x ν' = 0 → σ *ᵥ x = x) ∧
      (∀ g ∈ UH (Hpk k r), (∀ a : Fin r, g *ᵥ Dx2.DF.ee k r a = Dx2.DF.ee k r a ∧
        g *ᵥ Dx2.DF.es k r a = Dx2.DF.es k r a) → g *ᵥ S.z' = S.z' → g *ᵥ ν' = ν' → σ * g = g * σ))
    {μ0 μ0' : Measure (Mt k r)} (hμ0 : B.IsHaarOn (C2.N0set k r S.z) μ0)
    (hμ0' : B.IsHaarOn (C2.N0set k r S.z') μ0') (F : B.Mat k r → (Wq →L[ℂ] Wp))
    {v u' : Matrix (Fin (r + 1)) (Fin (r + 1)) ℂ} (hv : v ∈ C2.UTset (r + 1)) (hu' : u' ∈ C2.UTset (r + 1))
    {g2 : B.Mat k r} (hg2 : g2 ∈ B.GV k r)
    (hZ2 : Zhat k r S.z S.z' g2 = Zhat k r S.z S.z' ((C2.tauM k r S.z v)⁻¹ * (m₀ * σ) * C2.tauM k r S.z' u'))
    (hD2 : D.IsDFrame S ν' m₀ g2) :
    PBI.fibInt S μ0 μ0' F g2 = PBI.fibInt S μ0 μ0' F ((C2.tauM k r S.z v)⁻¹ * (m₀ * σ) * C2.tauM k r S.z' u') := by
  obtain ⟨hγe, hZe, hDe, hσU, hE3, hE2⟩ := hE
  have hz : C2.StdZ k r S.z := ⟨S.z_mem, S.T_pos⟩
  have hz' : C2.StdZ k r S.z' := ⟨S.z'_mem, S.T'_pos⟩
  set γ0 := m₀ * σ with hγ0
  set τ := C2.tauM k r S.z v with hτ_def
  set τ' := C2.tauM k r S.z' u' with hτ'_def
  have hτN : τ ∈ Nset k r := A.tau_N hz hv
  have hτN' : τ' ∈ Nset k r := A.tau_N hz' hu'
  have uτ := _root_.Formalism.FourierDecayAlt.P.Dx2.OrbJ.isUnit_of_N hτN
  have hGG := Formalism.FourierDecayAlt.P.unitary_group_closed k r
  have hg1 : τ⁻¹ * γ0 * τ' ∈ B.GV k r :=
    hGG.mul_mem _ (hGG.mul_mem _ (hGG.inv_mem _ hτN.1) _ hγe) _ hτN'.1
  have hpos0 : 0 < Gf k r S.z S.z' γ0 := by
    rw [← Formalism.FourierDecayAlt.P.ptG_spec k r S.z S.z' pt _ hp hZe]; exact hG
  have hdet := Formalism.FourierDecayAlt.P.determinant_nonzero k r S.z S.z' hz hz' _ hpos0
  have hZ1 : Zhat k r S.z S.z' (τ⁻¹ * γ0 * τ') = vᴴ * Zhat k r S.z S.z' γ0 * u' := by
    rw [Formalism.FourierDecayAlt.P.zhat_equivalence k r S.z S.z' hz hz' τ (A.n_in_S hτN) τ' (A.n_in_S hτN') γ0,
      (Formalism.FourierDecayAlt.P.c2_tau_mem k r S.z hz v hv).2.2, (Formalism.FourierDecayAlt.P.c2_tau_mem k r S.z' hz' u' hu').2.2]
  have hpos1 : 0 < Gf k r S.z S.z' (τ⁻¹ * γ0 * τ') := by
    rw [PBI.gf_eq_gPoly, hZ1]
    rw [PBI.gf_eq_gPoly] at hpos0
    obtain ⟨h1, h2⟩ := Formalism.FourierDecayAlt.P.StabilizerDisintegration.minorsLU r vᴴ (Zhat k r S.z S.z' γ0) u' (_root_.Formalism.FourierDecayAlt.P.C2x2.ut_conjT hv) hu'
    unfold PBI.gPoly at hpos0 ⊢
    rw [h1, h2]; exact hpos0
  obtain ⟨s, hs, s', hs', hgs⟩ := Formalism.FourierDecayAlt.P.fibre_orbit_description k r S.z S.z' ⟨S.k_pos, hz, hz'⟩ _ hg1 g2 hg2
    hpos1 hZ2.symm
  obtain ⟨hA, hhA, nA, hnA, hfA, rfl⟩ := Dx2.VV.stabilizer_decomp_unitary_mul_unipotent hz hs
  obtain ⟨hB, hhB, nB, hnB, hfB, rfl⟩ := Dx2.VV.stabilizer_decomp_unitary_mul_unipotent hz' hs'
  have huA : C2.uMap k r S.z nA = 1 := unipotent_character_one_of_product hz hhA hnA hs.2
  have huB : C2.uMap k r S.z' nB = 1 := unipotent_character_one_of_product hz' hhB hnB hs'.2
  obtain ⟨hnA'', hfA''⟩ := conj_fix hz hv hnA huA
  obtain ⟨hnB'', hfB''⟩ := conj_fix hz' hu' hnB huB
  have uhA : IsUnit hA.det := Dx2.OrbJ.isUnit_of_G hhA.1
  have uhB : IsUnit hB.det := Dx2.OrbJ.isUnit_of_G hhB.1

  have cA : hA⁻¹ * τ⁻¹ = τ⁻¹ * hA⁻¹ := by
    have := A.tau_comm hhA v
    rw [← Matrix.mul_inv_rev, ← Matrix.mul_inv_rev]
    exact congrArg _ this.symm
  have cB : τ' * hB = hB * τ' := (A.tau_comm hhB u').symm

  have hX := A.dframe_tau_inv S ν' m₀ hg2 hD2 hv hu'
  have hXeq : τ * g2 * τ'⁻¹ = (hA * (τ * nA * τ⁻¹))⁻¹ * γ0 * (hB * (τ' * nB * τ'⁻¹)) := by
    rw [hgs]
    have e1 : (hA * (τ * nA * τ⁻¹))⁻¹ = τ * nA⁻¹ * τ⁻¹ * hA⁻¹ := by
      rw [Matrix.mul_inv_rev, Matrix.mul_inv_rev, Matrix.mul_inv_rev, Matrix.nonsing_inv_nonsing_inv _ uτ]
      simp only [Matrix.mul_assoc]
    rw [e1, Matrix.mul_inv_rev]
    calc τ * (nA⁻¹ * hA⁻¹ * (τ⁻¹ * γ0 * τ') * (hB * nB)) * τ'⁻¹
        = τ * nA⁻¹ * (hA⁻¹ * τ⁻¹) * γ0 * (τ' * hB) * nB * τ'⁻¹ := by simp only [Matrix.mul_assoc]
      _ = τ * nA⁻¹ * (τ⁻¹ * hA⁻¹) * γ0 * (hB * τ') * nB * τ'⁻¹ := by rw [cA, cB]
      _ = τ * nA⁻¹ * τ⁻¹ * hA⁻¹ * γ0 * (hB * (τ' * nB * τ'⁻¹)) := by simp only [Matrix.mul_assoc]
  rw [hXeq] at hX
  have hfix := Dx2.VV.frame_fix S ν' m₀ hbase hσU hE3 hE2 hγe hDe hdet hhA hnA'' hfA'' hhB hnB'' hfB'' hX

  have hg2eq : (hA * nA)⁻¹ * (τ⁻¹ * γ0 * τ') * (hB * nB) = nA⁻¹ * (τ⁻¹ * γ0 * τ') * nB := by
    rw [Matrix.mul_inv_rev]
    calc nA⁻¹ * hA⁻¹ * (τ⁻¹ * γ0 * τ') * (hB * nB) = nA⁻¹ * (hA⁻¹ * τ⁻¹) * γ0 * (τ' * hB) * nB := by
          simp only [Matrix.mul_assoc]
      _ = nA⁻¹ * τ⁻¹ * (hA⁻¹ * γ0 * hB) * τ' * nB := by rw [cA, cB]; simp only [Matrix.mul_assoc]
      _ = nA⁻¹ * (τ⁻¹ * γ0 * τ') * nB := by rw [hfix]; simp only [Matrix.mul_assoc, hγ0]
  rw [hgs, hg2eq, fibInt_right S hμ0 hμ0' F _ ⟨hnB, huB⟩, fibInt_left S hμ0 hμ0' F _ ⟨hnA, huA⟩]

end

end Formalism.FourierDecayAlt.P.StabilizerDisintegration.FB
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.UnipotentCharacterOneOfProduct =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.FibreIntegralCells =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.FibreIntegralCells", "h": "module\n\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.SupportPhiZeroSubset\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.ComponentFamilySettingOfSetting\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.HermitianFormFlagVector\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.HermitianFormRankZeroApply\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.MatExtMulVec\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.MeasurableCoordinateMap\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.OrbJConvCpt\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.RearrSymm\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.SubMulRight\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.UnipotentCharacterOneOfProduct\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.ZhatSectionExists\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ExistsHaarStabilizer\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P.StabilizerDisintegration.FK

open MeasureTheory Matrix Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.P.StabilizerDisintegration.OD
open scoped ComplexConjugate

noncomputable section

variable {k r : ℕ}

theorem gPoly_of (TT : ℝ) (M : Matrix (Fin (r + 1)) (Fin (r + 1)) ℂ) :
    PBI.gPoly TT (Matrix.of (Matrix.of.symm M : G.Mat (r + 1))) = PBI.gPoly TT M := rfl

private theorem det_eq_one_of_lower_unitriangular' {m : ℕ} {L : Matrix (Fin m) (Fin m) ℂ} (h0 : ∀ i j, i < j → L i j = 0)
    (h1 : ∀ i, L i i = 1) : L.det = 1 := by
  rw [Matrix.det_of_lowerTriangular L (fun i j hij => h0 i j hij)]
  simp [h1]

private theorem det_eq_one_of_upper_unitriangular {m : ℕ} {U : Matrix (Fin m) (Fin m) ℂ} (h0 : ∀ i j, j < i → U i j = 0)
    (h1 : ∀ i, U i i = 1) : U.det = 1 := by
  rw [Matrix.det_of_upperTriangular (fun i j hij => h0 i j hij)]
  simp [h1]

theorem gPoly_LU (TT : ℝ) {L M U : Matrix (Fin (r + 1)) (Fin (r + 1)) ℂ} (hL : L ∈ C2.LTset (r + 1))
    (hU : U ∈ C2.UTset (r + 1)) : PBI.gPoly TT (L * M * U) = PBI.gPoly TT M := by
  obtain ⟨hL0, hL1⟩ := hL
  obtain ⟨hU0, hU1⟩ := hU

  have hsub : (L * M * U).submatrix Fin.castSucc Fin.castSucc =
      L.submatrix Fin.castSucc Fin.castSucc * M.submatrix Fin.castSucc Fin.castSucc *
        U.submatrix Fin.castSucc Fin.castSucc := by
    ext i j
    simp only [Matrix.submatrix_apply, Matrix.mul_apply, Fin.sum_univ_castSucc,
      hL0 (Fin.castSucc i) (Fin.last r) (Fin.castSucc_lt_last i),
      hU0 (Fin.last r) (Fin.castSucc j) (Fin.castSucc_lt_last j), zero_mul, mul_zero, add_zero]
  have hL' : (L.submatrix Fin.castSucc Fin.castSucc).det = 1 :=
    det_eq_one_of_lower_unitriangular' (fun i j h => hL0 _ _ (Fin.castSucc_lt_castSucc_iff.mpr h)) (fun i => hL1 _)
  have hU' : (U.submatrix Fin.castSucc Fin.castSucc).det = 1 :=
    det_eq_one_of_upper_unitriangular (fun i j h => hU0 _ _ (Fin.castSucc_lt_castSucc_iff.mpr h)) (fun i => hU1 _)
  unfold PBI.gPoly
  rw [hsub, Matrix.det_mul, Matrix.det_mul, Matrix.det_mul, Matrix.det_mul, det_eq_one_of_lower_unitriangular' hL0 hL1,
    det_eq_one_of_upper_unitriangular hU0 hU1, hL', hU']
  simp

theorem gPoly_pt (TT : ℝ) (a : C.LPt) : PBI.gPoly TT (D.ptMatN a (r + 1)) = D.ptG TT r a := by
  have h : (D.ptMatN a (r + 1)).submatrix Fin.castSucc Fin.castSucc = D.ptMatN a r := by
    ext i j
    rfl
  unfold PBI.gPoly D.ptG
  rw [h]

end

end Formalism.FourierDecayAlt.P.StabilizerDisintegration.FK

namespace Formalism.FourierDecayAlt.P

open MeasureTheory Matrix Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.P.StabilizerDisintegration Formalism.FourierDecayAlt.P.StabilizerDisintegration.OD

theorem fibre_integral_cells : PBI.FibIntCells := by
  intro Wp Wq _ _ _ _ _ _ P p
  set S := p.T.base with hS
  have hz : C2.StdZ P.k P.r S.z := ⟨S.z_mem, S.T_pos⟩
  have hz' : C2.StdZ P.k P.r S.z' := ⟨S.z'_mem, S.T'_pos⟩
  obtain ⟨μ0, hμ0⟩ := exists_haar_stabilizer P.k P.r S.z hz
  obtain ⟨μ0', hμ0'⟩ := exists_haar_stabilizer P.k P.r S.z' hz'
  obtain ⟨c1, hc1, hN1⟩ := disintN P.k P.r S.z hz μ0 S.μN hμ0 S.haarN
  obtain ⟨c2, hc2, hN2⟩ := disintN P.k P.r S.z' hz' μ0' S.μN hμ0' S.haarN
  refine ⟨μ0, μ0', (((c1 * c2 : NNReal) : ℝ) : ℂ), hμ0, hμ0', ?_⟩
  intro sec hsec F hF a σ d ha hm
  obtain ⟨hw, hd0⟩ := Dx2.VV.ptMatN_monoP' a (P.r + 1) ha.2 ha.1
  set w := ha.2 ▸ D.ptPerm a with hwdef
  set d0 := ha.2 ▸ D.ptDiag a with hd0def
  obtain ⟨e, hemp, he⟩ := splitUT (P.r + 1) w
  have hPT := phiTopCoords (P.r + 1) σ w d d0 (Wq →L[ℂ] Wp)
    ((((c1 * c2 : NNReal) : ℝ) : ℂ) • PBI.phi0 S μ0 μ0' sec F) hd0 (hm.trans hw)
  rw [hPT]
  set TT := Tz P.k P.r S.z * Tz P.k P.r S.z' with hTT
  have hgP : ∀ Y : (C2.LPidx w → ℂ) × (G.UT (P.r + 1) → ℂ),
      PBI.gPoly TT (lowP w Y.1 * C2.monoP w d0 * G.upper Y.2) = D.ptG TT P.r a := by
    intro Y
    rw [FK.gPoly_LU TT (UC.lowerUnipotent_mem w Y.1).1 (UC.upper_mem Y.2), ← hw, FK.gPoly_pt]
  show D.vecV S p.ν' p.m₀ F a = _
  by_cases hG : 0 < D.ptG TT P.r a
  · obtain ⟨σ0, hE⟩ := Dx2.VV.exE S p.ν' p.m₀ p.hF a ha hG
    have hγe := hE.1
    have hZe := hE.2.1
    have hDe := hE.2.2.1
    set γ0 := p.m₀ * σ0 with hγ0
    have hV := isotropic_vectors_linear_indep P.k P.r Wp Wq S p.ν' p.m₀ F a ha γ0 p.hF hG hγe hZe hDe
    rw [hV]
    have hZw : Zhat P.k P.r S.z S.z' γ0 = C2.monoP w d0 := hZe.trans hw
    have hpos : 0 < Gf P.k P.r S.z S.z' γ0 := by
      rw [← ptG_spec P.k P.r S.z S.z' a _ ha hZe]; exact hG
    have hrel := relevant_points_holds P.k P.r Wp Wq S a γ0 ha hγe hZe
    obtain ⟨θ1, hθ1, hint1⟩ := CV.orbJConv_cpt S γ0 w d0 F hγe hrel hd0 hZw hpos hF
    have hex : ∃ θ, D.IsNormCut S γ0 (D.muR S γ0 w) θ ∧
        Integrable (fun q => θ q • D.orbIntegrand S γ0 F q) S.μSS := ⟨θ1, hθ1, hint1⟩
    unfold D.orbJ
    rw [dite_eq_left hex]
    obtain ⟨hθ, hint⟩ := hex.choose_spec
    obtain ⟨hI, hEq⟩ := OG.orb_int S hγe hd0 hZw hpos hrel e hemp he hμ0 hμ0' hc1 hc2 hN1 hN2 F _ hθ hint
    rw [hEq, OJ.cell_int S γ0 w hμ0 hμ0' F hI, RCLike.real_smul_eq_coe_smul (K := ℂ), ← integral_smul]
    refine integral_congr_ae (Filter.Eventually.of_forall fun Y => ?_)
    simp only [Pi.smul_apply]
    rw [smul_comm]
    congr 2
    have hZp : 0 < PBI.gPoly TT (Matrix.of (Matrix.of.symm (lowP w Y.1 * C2.monoP w d0 * G.upper Y.2) :
        G.Mat (P.r + 1))) := by
      rw [FK.gPoly_of, hgP Y]; exact hG
    unfold PBI.phi0
    rw [if_pos hZp]
    obtain ⟨hsG, hsZ, hsD⟩ := hsec.2 _ hZp
    have hv := lowPH_UT (w := w) Y.1
    have hu := UC.upper_mem Y.2
    have hZ1 : Zhat P.k P.r S.z S.z' ((C2.tauM P.k P.r S.z (lowP w Y.1)ᴴ)⁻¹ * γ0 *
        C2.tauM P.k P.r S.z' (G.upper Y.2)) = lowP w Y.1 * C2.monoP w d0 * G.upper Y.2 := by
      rw [Formalism.FourierDecayAlt.P.zhat_equivalence P.k P.r S.z S.z' hz hz' _ (A.n_in_S (A.tau_N hz hv)) _
          (A.n_in_S (A.tau_N hz' hu)) γ0,
        (Formalism.FourierDecayAlt.P.c2_tau_mem P.k P.r S.z hz _ hv).2.2, (Formalism.FourierDecayAlt.P.c2_tau_mem P.k P.r S.z' hz' _ hu).2.2,
        Matrix.conjTranspose_conjTranspose, hZw]
    symm
    exact FB.fib_indep S p.ν' p.m₀ p.hF a ha hG hE hμ0 hμ0' F hv hu hsG (hsZ.trans hZ1.symm) hsD
  · have h0 : D.vecV S p.ν' p.m₀ F a = 0 := by
      unfold D.vecV; rw [dite_eq_right (fun h => hG h.2)]
    rw [h0]
    symm
    refine integral_eq_zero_of_ae (Filter.Eventually.of_forall fun Y => ?_)
    simp only [Pi.smul_apply, Pi.zero_apply]
    unfold PBI.phi0
    rw [if_neg (by rw [FK.gPoly_of, hgP Y]; exact hG), smul_zero, smul_zero]

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.FibreIntegralCells =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.PBTAsm =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.PBTAsm", "h": "module\n\npublic import Formalism.HermitianCurvature.RealInputsClosedAdmissibleSettings\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.AutomorphicInSphericalLevel\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ExistsMeasurableSection\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.FibreIntegralCells\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.VectorVanishesBigCell\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.DensityConstantOfParts\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P

theorem phi_zero_hermitian_curvature : Formalism.FourierDecayAlt.KB.PhiZero :=
  phi_zero_of_parts pbi_sectionExists_proof _root_.Formalism.FourierDecayAlt.P.SmoothExtensionClosedSet.fibIntSmooth fibre_integral_cells

theorem density_constant : Formalism.FourierDecayAlt.KB.DensC :=
  pb_densC_of phi_zero_hermitian_curvature _root_.Formalism.FourierDecayAlt.P.PBM.bigCellVan

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.PBTAsm =====
