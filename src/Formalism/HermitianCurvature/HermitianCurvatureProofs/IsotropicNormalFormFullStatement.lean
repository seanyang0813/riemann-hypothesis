module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormFormOneUnitary.PRowWSColW
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.HermitianInsertionVectorOrthogonal
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.OneAddProjectionMemIsotropicSet
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.StrictMonoSnoc
public import Formalism.FormalDegreeBessel.FormalDegreeRatio.UnitaryWeylNormalHolds
public import Formalism.HermitianCurvature.OperatorsCommuteTranslations
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.RightDerivativeRulePsi
import Formalism.HermitianCurvature.HermitianCurvatureProofs.TriangularFactorMiddleRow
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormFormOneUnitary.HermitianOrthogonalProjectionVector
import Mathlib.RingTheory.Etale.Weakly
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.HermitianPerturbedVectorOrthogonal, Formalism.HermitianCurvature.HermitianCurvatureProofs.IsotropicNormalFormFullStatement

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.HermitianPerturbedVectorOrthogonal =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.HermitianPerturbedVectorOrthogonal", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormFormOneUnitary.PRowWSColW\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.HermitianInsertionVectorOrthogonal\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.OneAddProjectionMemIsotropicSet\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.StrictMonoSnoc\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.TriangularFactorMiddleRow\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.FormalDegreeBessel.FormalDegreeRatio.UnitaryWeylNormalHolds\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Finset

namespace Formalism.FourierDecayAlt.P.SignAntidiagonal

open Formalism.FourierDecayAlt.C3 Formalism.QuantumDeterminants

noncomputable section

section N2d

variable {k : ℕ} (m : ℕ) (i : Fin (m + 1)) (ν : Fin (2 * (m + 1) + k + 1) → ℂ)

def VpF : Fin (2 * (m + 1) + k + 1) → ℂ := fun p =>
  bvec (esI k (m + 1) i) p - ν p + (-(herm (Hpk k (m + 1)) ν ν) / 2) * bvec (eI k (m + 1) i) p

theorem eI_ne_esI (a b : Fin (m + 1)) : eI k (m + 1) a ≠ esI k (m + 1) b := by
  intro h; have := congrArg Fin.val h; simp [eI, esI] at this; have := a.isLt; have := b.isLt; omega

theorem VpF_star (hν : inWb k (m + 1) ν) (q : Fin (2 * (m + 1) + k + 1)) (hq : m + 1 + k < q.val) :
    VpF m i ν q = if (NFOne.sg k (m + 1) q).val = i.val then 1 else 0 := by
  unfold VpF
  rw [hν q (Or.inr hq)]
  have hq2 : q ≠ eI k (m + 1) i := by intro h; rw [h] at hq; simp [eI] at hq; omega
  by_cases h : q = esI k (m + 1) i
  · rw [if_pos (by rw [sg_val', h]; simp [esI]; omega)]; simp [bvec, h, Ne.symm (eI_ne_esI m i i)]
  · rw [if_neg]
    · simp [bvec, h, hq2]
    · intro h'; apply h; ext; rw [sg_val'] at h'; simp [esI]; omega

theorem VpF_iso (hν : inWb k (m + 1) ν) : herm (Hpk k (m + 1)) (VpF m i ν) (VpF m i ν) = 0 := by
  have hi := i.isLt
  set γ : ℂ := -(herm (Hpk k (m + 1)) ν ν) / 2 with hγ
  have hpt : ∀ l, star (VpF m i ν l) * (WeylGroupFacts.sgn k (m + 1) l * VpF m i ν (WeylGroupFacts.tau k (m + 1) l)) =
      (if l = eI k (m + 1) i then star γ else 0) + (if l = esI k (m + 1) i then γ else 0) +
        star (ν l) * (WeylGroupFacts.sgn k (m + 1) l * ν (WeylGroupFacts.tau k (m + 1) l)) := by
    intro l
    unfold VpF
    rw [← hγ]
    by_cases h1 : l = eI k (m + 1) i
    · subst h1
      rw [tau_eI, hν (eI k (m + 1) i) (Or.inl (by simp only [eI]; omega)), hν (esI k (m + 1) i) (Or.inr (by simp [esI]; omega)),
        sgn_one _ (by simp [eI]; omega)]
      simp [bvec, eI_ne_esI]
    by_cases h2 : l = esI k (m + 1) i
    · subst h2
      rw [tau_esI, hν (eI k (m + 1) i) (Or.inl (by simp only [eI]; omega)), hν (esI k (m + 1) i) (Or.inr (by simp [esI]; omega)),
        sgn_one _ (by simp [esI]; omega)]
      simp [bvec, Ne.symm (eI_ne_esI m i i)]
    by_cases hW : m + 1 ≤ l.val ∧ l.val ≤ m + 1 + k
    · have ht : WeylGroupFacts.tau k (m + 1) l = l := by ext; rw [tau_val]; split_ifs <;> omega
      rw [ht]
      simp [bvec, h1, h2]
    · rw [hν l (by omega)]
      have ha : bvec (esI k (m + 1) i) l = 0 := by simp [bvec, h2]
      have hb : bvec (eI k (m + 1) i) l = 0 := by simp [bvec, h1]
      rw [ha, hb]
      simp [h1, h2]
  rw [herm_expand, Finset.sum_congr rfl (fun l _ => hpt l), Finset.sum_add_distrib, Finset.sum_add_distrib,
    Finset.sum_ite_eq', Finset.sum_ite_eq', if_pos (Finset.mem_univ _), if_pos (Finset.mem_univ _), ← herm_expand]
  have hreal : star (herm (Hpk k (m + 1)) ν ν) = herm (Hpk k (m + 1)) ν ν := (herm_swap k (m + 1) ν ν).symm
  rw [hγ, star_div₀, star_neg, hreal]
  simp

theorem VpF_esI (hν : inWb k (m + 1) ν) (c : Fin (m + 1)) (hc : c ≠ i) :
    herm (Hpk k (m + 1)) (VpF m i ν) (bvec (esI k (m + 1) c)) = 0 := by
  rw [herm_bvec_esI]
  unfold VpF
  rw [hν _ (Or.inl (by simp only [eI]; omega))]
  have h1 : eI k (m + 1) c ≠ eI k (m + 1) i := by
    intro h; apply hc; ext; have := congrArg Fin.val h; simpa [eI] using this
  simp [bvec, h1, eI_ne_esI]

theorem hermitian_perturbed_vector_orthogonal (z' : Fin (2 * (m + 1) + k + 1) → ℂ) (hz : inWb k (m + 1) z') (hν : inWb k (m + 1) ν)
    (hzν : herm (Hpk k (m + 1)) z' ν = 0) : herm (Hpk k (m + 1)) z' (VpF m i ν) = 0 := by
  have : herm (Hpk k (m + 1)) z' (VpF m i ν) = -herm (Hpk k (m + 1)) z' ν := by
    rw [herm_expand, herm_expand, ← Finset.sum_neg_distrib]
    refine Finset.sum_congr rfl (fun l _ => ?_)
    by_cases hW : m + 1 ≤ l.val ∧ l.val ≤ m + 1 + k
    · unfold VpF
      have h1 : l ≠ eI k (m + 1) i := by intro h; rw [h] at hW; simp [eI] at hW; omega
      have h2 : l ≠ esI k (m + 1) i := by intro h; rw [h] at hW; simp [esI] at hW; omega
      simp [bvec, h1, h2]
    · rw [hz (WeylGroupFacts.tau k (m + 1) l) (by rw [tau_val]; split_ifs <;> omega)]; simp
  rw [this, hzν, neg_zero]

theorem bvec_esI_iso (b c : Fin (m + 1)) :
    herm (Hpk k (m + 1)) (bvec (esI k (m + 1) b)) (bvec (esI k (m + 1) c)) = 0 := by
  rw [herm_bvec_esI]; simp [bvec, Ne.symm (eI_ne_esI m c b)]

theorem bvec_esI_star (c : Fin (m + 1)) (q : Fin (2 * (m + 1) + k + 1)) :
    bvec (esI k (m + 1) c) q = if (NFOne.sg k (m + 1) q).val = c.val then 1 else 0 := by
  have := c.isLt
  simp only [bvec, Pi.single_apply]
  by_cases h : q = esI k (m + 1) c
  · rw [if_pos h, if_pos (by rw [sg_val', h]; simp [esI]; omega)]
  · rw [if_neg h, if_neg]; intro h'; apply h; ext; rw [sg_val'] at h'; simp [esI]; have := q.isLt; omega

end N2d

end

end Formalism.FourierDecayAlt.P.SignAntidiagonal
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.HermitianPerturbedVectorOrthogonal =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.IsotropicNormalFormFullStatement =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.IsotropicNormalFormFullStatement", "h": "module\n\npublic import Formalism.HermitianCurvature.OperatorsCommuteTranslations\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.HermitianInsertionVectorOrthogonal\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.HermitianPerturbedVectorOrthogonal\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.OneAddProjectionMemIsotropicSet\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.RightDerivativeRulePsi\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.StrictMonoSnoc\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.TriangularFactorMiddleRow\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormFormOneUnitary.HermitianOrthogonalProjectionVector\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Finiteness.ModuleFinitePresentation\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Formalism.FormalDegreeBessel.FormalDegreeRatio.UnitaryWeylNormalHolds\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Finset

namespace Formalism.FourierDecayAlt.P.SignAntidiagonal

open Formalism.FourierDecayAlt.C3 Formalism.QuantumDeterminants

noncomputable section

theorem isotropicNormalFormFull_statement : IsotropicNormalFormFull := by
  intro k m z' i y t hz hZ ht hyi hyi2 hdet hzy hzyi hiso
  have hiv := i.isLt

  set Y' : Matrix (Fin m) (Fin m) ℂ :=
    Matrix.of fun a b : Fin m => y (i.succAbove a) (esI k (m + 1) (i.succAbove b)) with hY'
  have hu : IsUnit Y'.det := isUnit_iff_ne_zero.mpr hdet
  obtain ⟨N, hN⟩ : ∃ N, N = Y'⁻¹ := ⟨_, rfl⟩
  have hNY : N * Y' = 1 := by rw [hN]; exact Matrix.nonsing_inv_mul _ hu
  have hYN : Y' * N = 1 := by rw [hN]; exact Matrix.mul_nonsing_inv _ hu
  set Vc : Fin m → Fin (2 * (m + 1) + k + 1) → ℂ := fun b => ∑ a, N b a • y (i.succAbove a) with hVcdef
  have hsne : ∀ b : Fin m, (i.succAbove b).val ≠ i.val := fun b h' => Fin.succAbove_ne i b (Fin.ext h')
  have hVs : ∀ (b : Fin m) (q : Fin (2 * (m + 1) + k + 1)), m + 1 + k < q.val →
      Vc b q = if (NFOne.sg k (m + 1) q).val = (i.succAbove b).val then 1 else 0 := by
    intro b q hq
    simp only [Vc, Finset.sum_apply, Pi.smul_apply, smul_eq_mul]
    by_cases hqi : (NFOne.sg k (m + 1) q).val = i.val
    · have hq' : q = esI k (m + 1) i := by ext; rw [sg_val'] at hqi; simp [esI]; omega
      rw [if_neg (by rw [hqi]; exact (hsne b).symm)]
      apply Finset.sum_eq_zero; intro a _
      rw [hq', hyi _ (Fin.succAbove_ne i a), mul_zero]
    · have hc : (NFOne.sg k (m + 1) q).val < m + 1 ∧ (NFOne.sg k (m + 1) q).val ≠ i.val := ⟨by rw [sg_val']; omega, hqi⟩
      set b'' := pidx m i _ hc with hb''
      have hq' : q = esI k (m + 1) (i.succAbove b'') := by
        ext; have := succAbove_pidx m i _ hc; rw [← hb''] at this; rw [sg_val'] at this; simp [esI]; omega
      have e := congrFun (congrFun hNY b) b''
      rw [Matrix.mul_apply, Matrix.one_apply] at e
      conv_lhs => rw [hq']
      simp only [hY', Matrix.of_apply] at e
      rw [e]
      have hsb := succAbove_pidx m i _ hc
      rw [← hb''] at hsb
      by_cases hbb : b = b''
      · rw [if_pos hbb, if_pos (by rw [hbb]; exact hsb.symm)]
      · rw [if_neg hbb, if_neg]
        intro h'; apply hbb
        have : i.succAbove b = i.succAbove b'' := by ext; rw [← h', hsb]
        exact Fin.succAbove_right_injective this
  set V1 : ℕ → Fin (2 * (m + 1) + k + 1) → ℂ := fun c =>
    if hc : c < m + 1 ∧ c ≠ i.val then Vc (pidx m i c hc) else if c = i.val then ViF m i Vc else 0 with hV1def
  have hV1c : ∀ b : Fin m, V1 (i.succAbove b).val = Vc b := by
    intro b
    simp only [V1]
    rw [dite_eq_left ⟨(i.succAbove b).isLt, hsne b⟩, pidx_succAbove]
  have hV1i : V1 i.val = ViF m i Vc := by
    simp [V1]
  have hyy' : ∀ a a' : Fin m, herm (Hpk k (m + 1)) (y (i.succAbove a)) (y (i.succAbove a')) = 0 :=
    fun a a' => hiso _ _
  have hVciso : ∀ b c : Fin m, herm (Hpk k (m + 1)) (Vc b) (Vc c) = 0 :=
    fun b c => NFOne.herm_comb k (m + 1) m (fun a => y (i.succAbove a)) hyy' _ _

  have V1_0 : ∀ c, m + 1 ≤ c → V1 c = 0 := by
    intro c hc; simp only [V1]; rw [dite_eq_right (by omega), if_neg (by omega)]
  have V1_cases : ∀ c, c < m + 1 → (c = i.val ∧ V1 c = ViF m i Vc) ∨
      (∃ b : Fin m, (i.succAbove b).val = c ∧ V1 c = Vc b) := by
    intro c hc
    by_cases hci : c = i.val
    · left; exact ⟨hci, by rw [hci, hV1i]⟩
    · right
      refine ⟨pidx m i c ⟨hc, hci⟩, succAbove_pidx m i c ⟨hc, hci⟩, ?_⟩
      simp only [V1]; rw [dite_eq_left ⟨hc, hci⟩]
  have V1_s : ∀ b, b < m + 1 → ∀ q : Fin (2 * (m + 1) + k + 1), m + 1 + k < q.val →
      V1 b q = if (NFOne.sg k (m + 1) q).val = b then 1 else 0 := by
    intro b hb q hq
    rcases V1_cases b hb with ⟨hbi, hv⟩ | ⟨b', hb', hv⟩
    · rw [hv, ViF_star m i Vc q hq, hbi]
    · rw [hv, hVs b' q hq, hb']
  have V1_iso : ∀ b c, b < m + 1 → c < m + 1 → herm (Hpk k (m + 1)) (V1 b) (V1 c) = 0 := by
    intro b c hb hc
    rcases V1_cases b hb with ⟨_, hv⟩ | ⟨b', _, hv⟩ <;> rcases V1_cases c hc with ⟨_, hw⟩ | ⟨c', _, hw⟩ <;> rw [hv, hw]
    · exact ViF_iso m i Vc
    · exact ViF_Vc m i Vc hVs c'
    · rw [herm_swap, ViF_Vc m i Vc hVs b', star_zero]
    · exact hVciso b' c'
  have V1_z : ∀ c, herm (Hpk k (m + 1)) z' (V1 c) = 0 := by
    intro c
    by_cases hc : c < m + 1
    · rcases V1_cases c hc with ⟨_, hv⟩ | ⟨b', _, hv⟩ <;> rw [hv]
      · exact hermitian_insertion_vector_orthogonal m i Vc z' hz
      · exact NFOne.herm_Hpk_of_inWb_eq_sum_wI k (m + 1) m (fun a => y (i.succAbove a)) z' (fun a => hzy _ (Fin.succAbove_ne i a)) _
    · rw [V1_0 c (by omega)]; simp [herm]
  have hn1 := one_add_projection_mem_isotropic_set (m + 1) z' hz V1 V1_0 V1_s V1_iso V1_z
  set n1 := 1 + NFOne.Pm k (m + 1) (m + 1) V1 with hn1def
  have hn1col : ∀ b : Fin (m + 1), n1 *ᵥ bvec (esI k (m + 1) b) = V1 b.val :=
    fun b => pm_col_star (m + 1) V1 V1_s b b.isLt

  have hU1 : IsUnit n1.det := WeylGroupFacts.isUnit_of_uh hn1.1
  set u := n1⁻¹ *ᵥ y i with hudef
  have hnu : n1 *ᵥ u = y i := by rw [hudef, Matrix.mulVec_mulVec, Matrix.mul_nonsing_inv _ hU1, Matrix.one_mulVec]
  have hpres := herm_unitary n1 hn1.1
  have u_star : ∀ p : Fin (2 * (m + 1) + k + 1), m + 1 + k < p.val → u p = 0 := by
    intro p hp
    have hpe : p = esI k (m + 1) ⟨2 * (m + 1) + k - p.val, by omega⟩ := by ext; simp [esI]; omega
    have e := herm_bvec_eI (k := k) u (⟨2 * (m + 1) + k - p.val, by omega⟩ : Fin (m + 1))
    rw [hpe, ← e, ← hpres, hnu, hn1.2.1, herm_bvec_eI]
    exact hyi2 _ (by simp [esI]; omega)
  have u_X : ∀ c : Fin (m + 1), c ≠ i → u (eI k (m + 1) c) = 0 := by
    intro c hc
    have e := herm_bvec_esI (k := k) u c
    rw [← e, ← hpres, hnu, hn1col c]
    rcases V1_cases c.val c.isLt with ⟨hci, _⟩ | ⟨b', _, hv⟩
    · exact absurd (Fin.ext hci) hc
    · rw [hv]; exact NFOne.herm_Hpk_of_inWb_eq_sum_wI k (m + 1) m (fun a => y (i.succAbove a)) (y i) (fun a => hiso _ _) _
  set β := u (eI k (m + 1) i) with hβ
  set yb : Fin (2 * (m + 1) + k + 1) → ℂ := fun p => if m + 1 ≤ p.val ∧ p.val ≤ m + 1 + k then u p else 0 with hybdef
  have hyb : inWb k (m + 1) yb := by intro p hp; simp only [yb]; rw [if_neg (by omega)]
  have u_dec : u = fun p => yb p + β * bvec (eI k (m + 1) i) p := by
    funext p
    simp only [yb]
    by_cases hW : m + 1 ≤ p.val ∧ p.val ≤ m + 1 + k
    · have : p ≠ eI k (m + 1) i := by intro h; rw [h] at hW; simp [eI] at hW; omega
      simp [hW, bvec, this]
    · rw [if_neg hW, zero_add]
      by_cases hX : p.val < m + 1
      · by_cases hpi : p.val = i.val
        · have : p = eI k (m + 1) i := by ext; simp [eI, hpi]
          rw [this]; simp [bvec, hβ]
        · have hpe : p = eI k (m + 1) ⟨p.val, hX⟩ := by ext; simp [eI]
          have hne : (⟨p.val, hX⟩ : Fin (m + 1)) ≠ i := by intro h; apply hpi; rw [← h]
          have hne2 : p ≠ eI k (m + 1) i := by intro h; apply hpi; rw [h]; simp [eI]
          rw [hpe, u_X _ hne]; simp [bvec, ← hpe, hne2]
      · have hne2 : p ≠ eI k (m + 1) i := by intro h; apply hX; rw [h]; simp only [eI]; omega
        rw [u_star p (by omega)]; simp [bvec, hne2]
  have tau_W : ∀ l : Fin (2 * (m + 1) + k + 1), m + 1 ≤ l.val ∧ l.val ≤ m + 1 + k → WeylGroupFacts.tau k (m + 1) l = l := by
    intro l hl; ext; rw [tau_val]; split_ifs <;> omega
  have tau_notW : ∀ l : Fin (2 * (m + 1) + k + 1), ¬ (m + 1 ≤ l.val ∧ l.val ≤ m + 1 + k) →
      (WeylGroupFacts.tau k (m + 1) l).val < m + 1 ∨ m + 1 + k < (WeylGroupFacts.tau k (m + 1) l).val := by
    intro l hl; rw [tau_val]; split_ifs <;> omega
  have yb_iso : herm (Hpk k (m + 1)) yb yb = 0 := by
    have : herm (Hpk k (m + 1)) yb yb = herm (Hpk k (m + 1)) u u := by
      rw [herm_expand, herm_expand]
      refine Finset.sum_congr rfl (fun l _ => ?_)
      by_cases hW : m + 1 ≤ l.val ∧ l.val ≤ m + 1 + k
      · rw [tau_W l hW]; simp only [yb, if_pos hW]
      · have h1 : yb l = 0 := by simp only [yb, if_neg hW]
        rw [h1]
        by_cases hX : l.val < m + 1
        · rw [u_star (WeylGroupFacts.tau k (m + 1) l) (by rw [tau_val]; split_ifs <;> omega)]; simp
        · rw [u_star l (by omega)]; simp
    rw [this, ← hpres, hnu, hiso]
  have yb_z : herm (Hpk k (m + 1)) z' yb = t := by
    have : herm (Hpk k (m + 1)) z' yb = herm (Hpk k (m + 1)) z' u := by
      rw [herm_expand, herm_expand]
      refine Finset.sum_congr rfl (fun l _ => ?_)
      by_cases hW : m + 1 ≤ l.val ∧ l.val ≤ m + 1 + k
      · simp only [yb, if_pos hW]
      · rw [hz (WeylGroupFacts.tau k (m + 1) l) (tau_notW l hW)]; simp
    rw [this, ← hpres, hnu, hn1.2.2.1, hzyi]

  set Z := herm (Hpk k (m + 1)) z' z' with hZdef
  set c2 : ℂ := star (β / star t) with hc2
  set c1 : ℂ := star (-(β / star t) * Z / t) with hc1
  set ν : Fin (2 * (m + 1) + k + 1) → ℂ := c1 • yb + c2 • z' with hνdef
  have hst : star t ≠ 0 := star_ne_zero.mpr ht
  have hν : inWb k (m + 1) ν := by
    intro p hp; simp only [ν, Pi.add_apply, Pi.smul_apply, hyb p hp, hz p hp, smul_zero, add_zero]
  have hzν : herm (Hpk k (m + 1)) z' ν = 0 := by
    rw [hνdef, herm_add_smul_right, yb_z, hc1, hc2, star_star, star_star]
    field_simp
    ring
  have hybν : herm (Hpk k (m + 1)) yb ν = β := by
    rw [hνdef, herm_add_smul_right, yb_iso, herm_swap k (m + 1) yb z', yb_z]
    simp only [hc2, star_star, mul_zero, zero_add]
    field_simp

  set V2 : ℕ → Fin (2 * (m + 1) + k + 1) → ℂ := fun c =>
    if hc : c < m + 1 then (if c = i.val then VpF m i ν else bvec (esI k (m + 1) ⟨c, hc⟩)) else 0 with hV2def
  have V2_cases : ∀ c (hc : c < m + 1), (c = i.val ∧ V2 c = VpF m i ν) ∨
      (c ≠ i.val ∧ V2 c = bvec (esI k (m + 1) ⟨c, hc⟩)) := by
    intro c hc
    by_cases hci : c = i.val
    · left; refine ⟨hci, ?_⟩; simp only [V2]; rw [dite_eq_left hc, if_pos hci]
    · right; refine ⟨hci, ?_⟩; simp only [V2]; rw [dite_eq_left hc, if_neg hci]
  have V2_0 : ∀ c, m + 1 ≤ c → V2 c = 0 := by intro c hc; simp only [V2]; rw [dite_eq_right (by omega)]
  have V2_s : ∀ b, b < m + 1 → ∀ q : Fin (2 * (m + 1) + k + 1), m + 1 + k < q.val →
      V2 b q = if (NFOne.sg k (m + 1) q).val = b then 1 else 0 := by
    intro b hb q hq
    rcases V2_cases b hb with ⟨hbi, hv⟩ | ⟨_, hv⟩
    · rw [hv, VpF_star m i ν hν q hq, hbi]
    · rw [hv, bvec_esI_star]
  have V2_iso : ∀ b c, b < m + 1 → c < m + 1 → herm (Hpk k (m + 1)) (V2 b) (V2 c) = 0 := by
    intro b c hb hc
    rcases V2_cases b hb with ⟨hbi, hv⟩ | ⟨hbi, hv⟩ <;> rcases V2_cases c hc with ⟨hci, hw⟩ | ⟨hci, hw⟩ <;> rw [hv, hw]
    · exact VpF_iso m i ν hν
    · exact VpF_esI m i ν hν _ (by intro h; apply hci; rw [← h])
    · rw [herm_swap, VpF_esI m i ν hν _ (by intro h; apply hbi; rw [← h]), star_zero]
    · exact bvec_esI_iso m _ _
  have V2_z : ∀ c, herm (Hpk k (m + 1)) z' (V2 c) = 0 := by
    intro c
    by_cases hc : c < m + 1
    · rcases V2_cases c hc with ⟨_, hv⟩ | ⟨_, hv⟩ <;> rw [hv]
      · exact hermitian_perturbed_vector_orthogonal m i ν z' hz hν hzν
      · rw [herm_bvec_esI]; exact hz _ (Or.inl (by simp only [eI]; omega))
    · rw [V2_0 c (by omega)]; simp [herm]
  have hn2 := one_add_projection_mem_isotropic_set (m + 1) z' hz V2 V2_0 V2_s V2_iso V2_z
  set n2 := 1 + NFOne.Pm k (m + 1) (m + 1) V2 with hn2def
  have hn2col : ∀ b : Fin (m + 1), n2 *ᵥ bvec (esI k (m + 1) b) = V2 b.val :=
    fun b => pm_col_star (m + 1) V2 V2_s b b.isLt

  have hn2yb : n2 *ᵥ yb = u := by
    rw [u_dec, hn2def, Matrix.add_mulVec, Matrix.one_mulVec]
    funext p
    rw [Pi.add_apply]
    congr 1
    simp only [Matrix.mulVec, dotProduct]
    by_cases hp : p.val < m + 1
    · have hterm : ∀ q, NFOne.Pm k (m + 1) (m + 1) V2 p q * yb q =
          if p.val = i.val then star (ν q) * (WeylGroupFacts.sgn k (m + 1) q * yb (WeylGroupFacts.tau k (m + 1) q)) else 0 := by
        intro q
        by_cases hW : m + 1 ≤ q.val ∧ q.val ≤ m + 1 + k
        · rw [NFOne.P_XW k (m + 1) (m + 1) V2 p q hp hW.1 hW.2, tau_W q hW]
          have hdW : NFOne.dW k (m + 1) q = WeylGroupFacts.sgn k (m + 1) q := rfl
          rcases V2_cases p.val hp with ⟨hpi, hv⟩ | ⟨hpi, hv⟩
          · rw [hv, if_pos hpi]
            unfold VpF
            have h1 : q ≠ esI k (m + 1) i := by intro h; rw [h] at hW; simp [esI] at hW; omega
            have h2 : q ≠ eI k (m + 1) i := by intro h; rw [h] at hW; simp [eI] at hW; omega
            simp only [bvec, Pi.single_apply, if_neg h1, if_neg h2, hdW]
            simp; ring
          · rw [hv, if_neg hpi]
            have h1 : q ≠ esI k (m + 1) ⟨p.val, hp⟩ := by intro h; rw [h] at hW; simp [esI] at hW; omega
            simp [bvec, h1]
        · have h0 : yb q = 0 := hyb q (by omega)
          rw [h0, mul_zero]
          split_ifs
          · rw [hyb (WeylGroupFacts.tau k (m + 1) q) (tau_notW q hW)]; simp
          · rfl
      rw [Finset.sum_congr rfl (fun q _ => hterm q)]
      by_cases hpi : p.val = i.val
      · simp only [if_pos hpi]
        rw [← herm_expand, hybν]
        have : p = eI k (m + 1) i := by ext; simp [eI, hpi]
        simp [bvec, this]
      · have : p ≠ eI k (m + 1) i := by intro h; apply hpi; rw [h]; simp [eI]
        simp [hpi, bvec, this]
    · have : p ≠ eI k (m + 1) i := by intro h; apply hp; rw [h]; simp only [eI]; omega
      rw [Finset.sum_eq_zero]
      · simp [bvec, this]
      · intro q _
        by_cases hW : m + 1 ≤ q.val ∧ q.val ≤ m + 1 + k
        · rw [NFOne.P_rowWS_colW k (m + 1) (m + 1) V2 p q (by omega) hW.2, zero_mul]
        · rw [hyb q (by omega), mul_zero]

  set ystar : Fin (m + 1) → Fin (2 * (m + 1) + k + 1) → ℂ := fun a p => if m + 1 + k < p.val then y a p else 0 with hystar
  have hdec : ∀ a'' : Fin m, ystar (i.succAbove a'') =
      ∑ b : Fin m, Y' a'' b • bvec (esI k (m + 1) (i.succAbove b)) := by
    intro a''
    funext p
    simp only [ystar, Finset.sum_apply, Pi.smul_apply, smul_eq_mul, bvec, Pi.single_apply]
    by_cases hp : m + 1 + k < p.val
    · rw [if_pos hp]
      by_cases hpi : (NFOne.sg k (m + 1) p).val = i.val
      · have hpe : p = esI k (m + 1) i := by ext; rw [sg_val'] at hpi; simp [esI]; omega
        rw [hpe, hyi _ (Fin.succAbove_ne i a'')]
        symm; apply Finset.sum_eq_zero; intro b _
        rw [if_neg, mul_zero]
        intro h; have := congrArg Fin.val h; simp [esI] at this
        exact hsne b (by have := (i.succAbove b).isLt; omega)
      · have hc : (NFOne.sg k (m + 1) p).val < m + 1 ∧ (NFOne.sg k (m + 1) p).val ≠ i.val := ⟨by rw [sg_val']; omega, hpi⟩
        have hsb := succAbove_pidx m i _ hc
        have hsv : (NFOne.sg k (m + 1) p).val = 2 * (m + 1) + k - p.val := sg_val' m p
        have hpe : p = esI k (m + 1) (i.succAbove (pidx m i _ hc)) := by
          ext; show p.val = 2 * (m + 1) + k - (i.succAbove (pidx m i _ hc)).val; rw [hsb, hsv]; omega
        rw [Finset.sum_eq_single (pidx m i _ hc)]
        · rw [if_pos hpe, mul_one]; exact congrArg (y (i.succAbove a'')) hpe
        · intro b _ hb
          rw [if_neg, mul_zero]
          intro h; apply hb
          rw [hpe] at h
          have hv := congrArg Fin.val h
          simp only [esI] at hv
          have h2 : i.succAbove (pidx m i _ hc) = i.succAbove b := by
            ext; have h3 := (i.succAbove b).isLt; have h4 := (i.succAbove (pidx m i _ hc)).isLt; omega
          exact (Fin.succAbove_right_injective h2).symm
        · simp
    · rw [if_neg hp]
      symm; apply Finset.sum_eq_zero; intro b _
      rw [if_neg, mul_zero]
      intro h; apply hp; rw [h]; simp [esI]; have := (i.succAbove b).isLt; omega
  have hn1y : ∀ a'' : Fin m, n1 *ᵥ ystar (i.succAbove a'') = y (i.succAbove a'') := by
    intro a''
    rw [hdec, Matrix.mulVec_sum]
    simp only [Matrix.mulVec_smul, hn1col, hV1c, Vc, Finset.smul_sum, smul_smul]
    rw [Finset.sum_comm]
    simp only [← Finset.sum_smul]
    rw [Finset.sum_eq_single a'']
    · have := congrFun (congrFun hYN a'') a''
      rw [Matrix.mul_apply, Matrix.one_apply, if_pos rfl] at this
      rw [this, one_smul]
    · intro a' _ ha'
      have := congrFun (congrFun hYN a'') a'
      rw [Matrix.mul_apply, Matrix.one_apply, if_neg (Ne.symm ha')] at this
      rw [this, zero_smul]
    · simp
  have hn2y : ∀ a'' : Fin m, n2 *ᵥ ystar (i.succAbove a'') = ystar (i.succAbove a'') := by
    intro a''
    rw [hdec, Matrix.mulVec_sum]
    simp only [Matrix.mulVec_smul, hn2col]
    refine Finset.sum_congr rfl (fun b _ => ?_)
    rcases V2_cases (i.succAbove b).val (i.succAbove b).isLt with ⟨hbi, _⟩ | ⟨_, hv⟩
    · exact absurd hbi (hsne b)
    · rw [hv]
  refine ⟨n1 * n2, mul_mem_isotropic_unipotent_set z' (m + 1) (m + 1) V1 V2 hn1 hn2, fun a => if a = i then yb else ystar a, fun a => ?_⟩
  by_cases ha : a = i
  · subst ha
    simp only [if_true]
    refine ⟨by rw [← Matrix.mulVec_mulVec, hn2yb, hnu], fun h => absurd rfl h, fun _ => ⟨hyb, yb_z⟩⟩
  · simp only [if_neg ha]
    obtain ⟨a'', rfl⟩ := Fin.exists_succAbove_eq ha
    refine ⟨by rw [← Matrix.mulVec_mulVec, hn2y, hn1y], fun _ => ⟨?_, ?_⟩, fun h => absurd h ha⟩
    · intro p hp; simp only [ystar]; rw [if_neg (by omega)]
    · intro p hp; simp only [ystar]; rw [if_pos hp]

end

end Formalism.FourierDecayAlt.P.SignAntidiagonal
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.IsotropicNormalFormFullStatement =====
