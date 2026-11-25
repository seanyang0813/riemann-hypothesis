module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftDefs
public import Formalism.GradedWeylDivisibility.DualWeylDominanceOf
public import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Wlocal
public import Formalism.GradedWeylDivisibility.StatementE
public import Formalism.PeriodIntegrals.HwIrred
public import Formalism.GradedWeylDivisibility.FockSpaceTableaux.FockQRowDivAdj
public import Formalism.GradedWeylDivisibility.FockSpaceTableaux.LBidetMinor
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftTupleA
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftTupleM
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftTupleD
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftTupleE
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftTupleC
public import Formalism.GradedWeylDivisibility.FockSpaceTableaux.LRowdivLemmas
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ZScalarVanish
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftAsm
import Formalism.LocalRingCardinality.Params
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftDecomp, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftEqvDiv, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftEqvWt, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftFock, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftTupleF, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftTupleB, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftTuple, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.NablaSqLeOfGen, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ConstructionLift

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftDecomp =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftDecomp", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftDefs\npublic import Formalism.GradedWeylDivisibility.DualWeylDominanceOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalRingCardinality.Params\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.WGL

open Formalism.BasicNotions Formalism.GradedWeylDivisibility MvPolynomial

theorem dominant_weight_ext {N : ℕ} (a b : DomWeight N) (hab : a.w = b.w) : a = b := by
  obtain ⟨w, hw⟩ := a
  obtain ⟨w', hw'⟩ := b
  simp only at hab
  subst hab
  rfl

theorem extremal_mem_nablaSq' (n : ℕ) (mu : DomWeight n) : extremal ℂ n mu ∈ nablaSq ℂ n mu :=
  Formalism.GradedWeylDivisibility.hwMem ℂ n n le_rfl mu.natW (fun i j hij => Int.toNat_le_toNat (by have := mu.anti hij; omega))

theorem degree_sub_det_shift_nonneg {n N : ℕ} (h : n + 1 = N) (lam : DomWeight N) (mu : DomWeight n)
    (hmu : Interlace h lam mu) : 0 ≤ degZ lam mu - lam.detShift := by
  subst h
  have hle : ∀ i : Fin n, mu.w i ≤ lam.w (Fin.castSucc i) := fun i => (hmu i).1
  have hsum := Finset.sum_le_sum (fun i (_ : i ∈ (Finset.univ : Finset (Fin n))) => hle i)
  have hl : lam.detShift = lam.w (Fin.last n) := by
    unfold DomWeight.detShift
    rw [dite_eq_left (by omega)]
    congr 1
  unfold degZ wsum
  rw [hl, Fin.sum_univ_castSucc]
  linarith

theorem weight_sum_eq_of_last_gap {n N : ℕ} (h : n + 1 = N) (lam : DomWeight N) (mu sg : DomWeight n)
    (hmu : Interlace h lam mu) (hsg : Interlace h lam sg) (hd : dLast lam mu = dLast lam sg) :
    wsum mu = wsum sg := by
  have h1 := degree_sub_det_shift_nonneg h lam mu hmu
  have h2 := degree_sub_det_shift_nonneg h lam sg hsg
  unfold dLast at hd
  have h3 : degZ lam mu - lam.detShift = degZ lam sg - lam.detShift := by
    rw [← Int.toNat_of_nonneg h1, ← Int.toNat_of_nonneg h2, hd]
  unfold degZ at h3
  linarith

theorem decomp_of (h4 : PI.GTBranch) (hL : EqvLast) : Decomp := by
  intro n N h lam sg hsg io0 hio hne f hf hfw
  classical
  let T : Submodule ℂ (MvPolynomial (Fin N × Fin N) ℂ) := (nablaSq ℂ n sg).map io0 ⊔ OtherPart h lam sg
  have key : nablaSq ℂ N lam ≤ T.comap (weightedHomogeneousComponent (lastW N) (dLast lam sg)) := by
    rw [(h4 n N h lam).2]
    refine iSup_le fun mu => iSup_le fun hmu => iSup_le fun φ => iSup_le fun hφ => ?_
    rw [Submodule.map_le_iff_le_comap]
    intro s hs
    rw [Submodule.mem_comap, Submodule.mem_comap]
    have hφ' : IsEqv h mu lam φ := hφ
    have hhom := hL n N h lam mu hmu φ hφ' s hs
    by_cases hd : dLast lam mu = dLast lam sg
    · rw [hd] at hhom
      rw [hhom.weightedHomogeneousComponent_same]
      have hw : wsum mu = wsum sg := weight_sum_eq_of_last_gap h lam mu sg hmu hsg hd
      by_cases hmw : mu.w = sg.w
      · have hms : mu = sg := dominant_weight_ext mu sg hmw
        subst hms
        have hboth : ∀ ψ ∈ ({φ, io0} : Set (MvPolynomial (Fin n × Fin n) ℂ →ₗ[ℂ] MvPolynomial (Fin N × Fin N) ℂ)),
            (∀ s ∈ nablaSq ℂ n mu, ψ s ∈ nablaSq ℂ N lam) ∧
            ∀ (g : GL (Fin n) ℂ), ∀ s ∈ nablaSq ℂ n mu,
              ψ (sqAct ℂ n mu g s) = sqAct ℂ N lam (embGL ℂ n N h g) (ψ s) := by
          intro ψ hψ
          simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hψ
          rcases hψ with rfl | rfl
          · exact hφ'
          · exact hio
        obtain ⟨_, c, hc⟩ := (h4 n N h lam).1 mu φ io0 hboth ⟨extremal ℂ n mu, extremal_mem_nablaSq' n mu, hne⟩
        refine Submodule.mem_sup_left ?_
        rw [hc s hs, ← map_smul]
        exact Submodule.mem_map_of_mem (Submodule.smul_mem _ c hs)
      · refine Submodule.mem_sup_right ?_
        unfold OtherPart
        exact Submodule.mem_iSup_of_mem mu (Submodule.mem_iSup_of_mem hmu (Submodule.mem_iSup_of_mem hmw
          (Submodule.mem_iSup_of_mem hw (Submodule.mem_iSup_of_mem φ (Submodule.mem_iSup_of_mem hφ'
            (Submodule.mem_map_of_mem hs))))))
    · rw [hhom.weightedHomogeneousComponent_ne (dLast lam sg) (Ne.symm hd)]
      exact zero_mem _
  have hfT := key hf
  rw [Submodule.mem_comap, hfw.weightedHomogeneousComponent_same] at hfT
  obtain ⟨y, hy, z, hz, hyz⟩ := Submodule.mem_sup.1 hfT
  obtain ⟨u, hu, rfl⟩ := Submodule.mem_map.1 hy
  refine ⟨u, hu, ?_⟩
  rw [← hyz, add_sub_cancel_left]
  exact hz

end PI.WGL
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftDecomp =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftEqvDiv =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftEqvDiv", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftDefs\npublic import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.Wlocal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Formalism.LocalRingCardinality.Params\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.WGL

open Formalism.BasicNotions Formalism.GradedWeylDivisibility MvPolynomial

section SlopeTestRemainingChoices

def tvU {r : ℕ} (a b : Fin r) (hab : a ≠ b) (t : ℂ) : GL (Fin r) ℂ where
  val := Formalism.UG.P.wlocal_E a b t
  inv := Formalism.UG.P.wlocal_E a b (-t)
  val_inv := by
    rw [Formalism.UG.P.wlocal_E_mul_E, if_neg hab, add_neg_cancel, add_zero, Formalism.UG.P.wlocal_E_zero]
  inv_val := by
    rw [Formalism.UG.P.wlocal_E_mul_E, if_neg hab, neg_add_cancel, add_zero, Formalism.UG.P.wlocal_E_zero]

lemma wlocal_E_eq_tv {r : ℕ} (a b : Fin r) (t : ℂ) :
    Formalism.UG.P.wlocal_E a b t = Matrix.transvection a b t := by
  ext i j
  simp [Formalism.UG.P.wlocal_E, Matrix.transvection, Matrix.one_apply]
  rw [Matrix.single_apply]
  exact if_congr (by constructor <;> rintro ⟨h1, h2⟩ <;> exact ⟨h1.symm, h2.symm⟩) rfl rfl

lemma wlocal_E_transpose {r : ℕ} (a b : Fin r) (t : ℂ) :
    (Formalism.UG.P.wlocal_E a b t).transpose = Formalism.UG.P.wlocal_E b a t := by
  ext i j
  simp only [Matrix.transpose_apply, Formalism.UG.P.wlocal_E]
  congr 1
  · exact if_congr eq_comm rfl rfl
  · exact if_congr and_comm rfl rfl

lemma sqAct_tv {r : ℕ} (ν : DomWeight r) (a b : Fin r) (hab : a ≠ b) (t : ℂ) (u : GL (Fin r) ℂ)
    (hu : (u : Matrix (Fin r) (Fin r) ℂ) = Formalism.UG.P.wlocal_E a b t) (f : MvPolynomial (Fin r × Fin r) ℂ) :
    sqAct ℂ r ν u f = Polynomial.eval (C t) (rowGen ℂ a b f) := by
  have hdet : Matrix.GeneralLinearGroup.det u = 1 := by
    ext
    simp [Matrix.GeneralLinearGroup.val_det_apply, hu, wlocal_E_eq_tv,
      Matrix.det_transvection_of_ne _ _ hab]
  unfold sqAct detPow
  rw [hdet, one_zpow, Units.val_one, one_smul, hu, wlocal_E_transpose]
  induction f using MvPolynomial.induction_on
  next c => simp [Formalism.GradedWeylDivisibility.rowAct, Formalism.GradedWeylDivisibility.rowGen]
  next p q hp hq => simp only [map_add (f := _), Polynomial.eval_add, hp, hq]
  next p v hp =>
    rw [map_mul, map_mul, Polynomial.eval_mul, hp]
    congr 1
    obtain ⟨i, j⟩ := v
    simp only [Formalism.GradedWeylDivisibility.rowAct, Formalism.GradedWeylDivisibility.rowGen, MvPolynomial.aeval_X]
    by_cases hi : i = b
    · subst hi
      simp [Formalism.UG.P.wlocal_E, add_mul, Finset.sum_add_distrib]
      rw [Finset.sum_eq_single a (fun x _ hx => by simp [hx]) (by simp), if_pos rfl, mul_comm]
    · simp [Formalism.UG.P.wlocal_E, hi]

lemma embGL_tv {n N : ℕ} (h : n + 1 = N) (a b : Fin n) (hab : a ≠ b) (t : ℂ) :
    ((PI.embGL ℂ n N h (tvU a b hab t) : GL (Fin N) ℂ) : Matrix (Fin N) (Fin N) ℂ) =
      Formalism.UG.P.wlocal_E (eRow h a) (eRow h b) t := by
  subst h
  have he : ∀ x : Fin n, eRow (rfl : n + 1 = n + 1) x = Fin.castSucc x := fun x => Fin.ext rfl
  have hl : ∀ x : Fin n, (Fin.last n = Fin.castSucc x) ↔ False :=
    fun x => ⟨fun e => (Fin.castSucc_lt_last x).ne' e, False.elim⟩
  ext i j
  simp only [he]
  simp [PI.embGL, PI.blkHom, Matrix.reindexAlgEquiv_apply, Matrix.reindex_apply, tvU]
  refine Fin.lastCases ?_ (fun i => ?_) i <;> refine Fin.lastCases ?_ (fun j => ?_) j <;>
    simp [Formalism.UG.P.wlocal_E, hl]

end SlopeTestRemainingChoices

private theorem coeff_eq_of_eval_lemma {σ τ : Type*}
    (φ : MvPolynomial σ ℂ →ₗ[ℂ] MvPolynomial τ ℂ)
    (P : Polynomial (MvPolynomial σ ℂ)) (Q : Polynomial (MvPolynomial τ ℂ))
    (hPQ : ∀ t : ℂ, φ (P.eval (C t)) = Q.eval (C t)) (k : ℕ) :
    φ (P.coeff k) = Q.coeff k := by
  obtain ⟨d, hdP, hdQ⟩ : ∃ d, P.natDegree < d ∧ Q.natDegree < d :=
    ⟨P.natDegree + Q.natDegree + 1, by omega, by omega⟩
  have hP : ∀ t : ℂ, P.eval (C t) = ∑ i ∈ Finset.range d, t ^ i • P.coeff i := by
    intro t
    rw [Polynomial.eval_eq_sum_range' hdP]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [MvPolynomial.smul_eq_C_mul, map_pow, mul_comm]
  have hQ : ∀ t : ℂ, Q.eval (C t) = ∑ i ∈ Finset.range d, t ^ i • Q.coeff i := by
    intro t
    rw [Polynomial.eval_eq_sum_range' hdQ]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [MvPolynomial.smul_eq_C_mul, map_pow, mul_comm]
  by_cases hk : k < d
  · refine MvPolynomial.ext _ _ fun m => ?_
    let p : Polynomial ℂ :=
      ∑ i ∈ Finset.range d, Polynomial.monomial i (AddMonoidAlgebra.coeff (φ (P.coeff i)) m)
    let q : Polynomial ℂ :=
      ∑ i ∈ Finset.range d, Polynomial.monomial i (AddMonoidAlgebra.coeff (Q.coeff i) m)
    have hpq : p = q := by
      apply Polynomial.funext
      intro t
      have e := congrArg (AddMonoidAlgebra.coeff · m) (hPQ t)

      rw [hP t, hQ t, map_sum] at e
      simp only [map_smul, MvPolynomial.coeff_sum, MvPolynomial.coeff_smul, smul_eq_mul] at e
      simp only [p, q, Polynomial.eval_finsetSum, Polynomial.eval_monomial]
      simpa [mul_comm] using e
    have e2 := congrArg (fun r : Polynomial ℂ => r.coeff k) hpq
    simpa only [p, q, Polynomial.finsetSum_coeff, Polynomial.coeff_monomial_apply,
      Finset.sum_ite_eq', Finset.mem_range, hk, if_true] using e2
  · have h1 : P.coeff k = 0 := Polynomial.coeff_eq_zero_of_natDegree_lt (by omega)
    have h2 : Q.coeff k = 0 := Polynomial.coeff_eq_zero_of_natDegree_lt (by omega)
    rw [h1, h2, map_zero]

theorem equivariant_divisibility : EqvDiv := by
  intro n N h mu lam φ hφ a b hab k s hs
  unfold IsEqv at hφ
  have hab' : eRow h a ≠ eRow h b := fun he =>
    hab (Fin.ext (by simpa [eRow] using congrArg Fin.val he))
  exact coeff_eq_of_eval_lemma φ (rowGen ℂ a b s) (rowGen ℂ (eRow h a) (eRow h b) (φ s))
    (fun t => by
      have e1 := hφ.2 (tvU a b hab t) s hs
      rwa [sqAct_tv mu a b hab t _ rfl s,
        sqAct_tv lam (eRow h a) (eRow h b) hab' t _ (embGL_tv h a b hab t) (φ s)] at e1) k

end PI.WGL
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftEqvDiv =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftEqvWt =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftEqvWt", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Formalism.LocalRingCardinality.Params\nimport Formalism.GradedWeylDivisibility.DualWeylDominanceOf\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.WGL

open Formalism.BasicNotions Formalism.GradedWeylDivisibility MvPolynomial

namespace EqvWt

theorem coeff_aeval_scale {σ : Type} (e : σ → ℂ) (f : MvPolynomial σ ℂ) (m : σ →₀ ℕ) :
    AddMonoidAlgebra.coeff (aeval (fun v => C (e v) * X v) f) m = (m.prod fun v k => e v ^ k) * AddMonoidAlgebra.coeff f m := by
  classical
  refine MvPolynomial.induction_on' f (fun u a => ?_) (fun p q hp hq => ?_)
  · have key : aeval (fun v => C (e v) * X v) (monomial u a) =
        monomial u (a * u.prod fun v k => e v ^ k) := by
      rw [aeval_monomial, monomial_eq]
      simp only [Finsupp.prod, mul_pow, Finset.prod_mul_distrib, map_mul, map_prod, map_pow,
        MvPolynomial.algebraMap_eq]
      ring
    rw [key, coeff_monomial, coeff_monomial]
    split_ifs with h
    · subst h; ring
    · simp
  · rw [map_add (f := _), MvPolynomial.coeff_add, MvPolynomial.coeff_add, hp, hq, mul_add]

theorem coeff_sqAct_diag {r : ℕ} (lam : DomWeight r) (t : Fin r → ℂˣ) (f : MvPolynomial (Fin r × Fin r) ℂ)
    (m : Fin r × Fin r →₀ ℕ) :
    AddMonoidAlgebra.coeff (sqAct ℂ r lam (diagGL ℂ r t) f) m =
      (∏ a, (t a : ℂ)) ^ lam.detShift * ((∏ a, (t a : ℂ) ^ rowDeg m a) * AddMonoidAlgebra.coeff f m) := by
  have hdet : detPow ℂ r (diagGL ℂ r t) lam.detShift = (∏ a, (t a : ℂ)) ^ lam.detShift := by
    unfold detPow
    rw [Units.val_zpow_eq_zpow_val]
    congr 1
    show Matrix.det (Matrix.diagonal fun a => (t a : ℂ)) = _
    exact Matrix.det_diagonal
  have htr : ((diagGL ℂ r t : GL (Fin r) ℂ) : Matrix (Fin r) (Fin r) ℂ).transpose =
      Matrix.diagonal fun a => (t a : ℂ) :=
    Matrix.diagonal_transpose _
  unfold sqAct
  rw [MvPolynomial.coeff_smul, smul_eq_mul, hdet, htr, _root_.Formalism.GradedWeylDivisibility.ldiag_rowAct_diag_eq, coeff_aeval_scale,
    _root_.Formalism.GradedWeylDivisibility.ldiag_prod_rowDeg (fun a => (t a : ℂ)) m]

theorem weight_rowW_apply {r c : ℕ} (m : Fin r × Fin c →₀ ℕ) (a : Fin r) :
    Finsupp.weight (rowW r c) m a = rowDeg m a := by
  rw [Finsupp.weight_apply, Finsupp.sum_fintype _ _ (by simp), Finset.sum_apply,
    Fintype.sum_prod_type]
  unfold rowDeg
  rw [Finset.sum_eq_single a]
  · refine Finset.sum_congr rfl fun s _ => ?_
    simp [rowW]
  · intro b _ hb
    refine Finset.sum_eq_zero fun s _ => ?_
    simp [rowW, Ne.symm hb]
  · simp

theorem weight_colW_apply {r c : ℕ} (m : Fin r × Fin c →₀ ℕ) (j : Fin c) :
    Finsupp.weight (colW r c) m j = ∑ a, m (a, j) := by
  rw [Finsupp.weight_apply, Finsupp.sum_fintype _ _ (by simp), Finset.sum_apply,
    Fintype.sum_prod_type]
  refine Finset.sum_congr rfl fun a _ => ?_
  rw [Finset.sum_eq_single j]
  · simp [colW]
  · intro b _ hb
    simp [colW, Ne.symm hb]
  · simp

theorem weight_lastW {n : ℕ} (m : Fin (n + 1) × Fin (n + 1) →₀ ℕ) :
    Finsupp.weight (lastW (n + 1)) m = rowDeg m (Fin.last n) := by
  rw [Finsupp.weight_apply, Finsupp.sum_fintype _ _ (by simp), Fintype.sum_prod_type]
  unfold rowDeg
  rw [Finset.sum_eq_single (Fin.last n)]
  · refine Finset.sum_congr rfl fun s _ => ?_
    simp [lastW]
  · intro b _ hb
    refine Finset.sum_eq_zero fun s _ => ?_
    have hb' : ¬ (b.1 = n) := fun h => hb (Fin.ext (by simp [h]))
    simp [lastW, hb']
  · simp

theorem sum_rowDeg_of_mem {r : ℕ} (lam : DomWeight r) (f : MvPolynomial (Fin r × Fin r) ℂ)
    (hf : f ∈ nablaSq ℂ r lam) (m : Fin r × Fin r →₀ ℕ) (hm : AddMonoidAlgebra.coeff f m ≠ 0) :
    ∑ a, rowDeg m a = ∑ j, lam.natW j := by
  have hf' : f ∈ Formalism.GradedWeylDivisibility.dualWeyl ℂ r r lam.natW := hf
  have hw : Finsupp.weight (colW r r) m = lam.natW :=
    (mem_weightedHomogeneousSubmodule _ _ _ _).mp (Submodule.mem_inf.mp hf').1 hm
  calc ∑ a, rowDeg m a = ∑ a, ∑ j, m (a, j) := rfl
    _ = ∑ j, ∑ a, m (a, j) := Finset.sum_comm
    _ = ∑ j, Finsupp.weight (colW r r) m j := by simp only [weight_colW_apply]
    _ = ∑ j, lam.natW j := by rw [hw]

theorem sum_natW {r : ℕ} (lam : DomWeight r) :
    ((∑ j, lam.natW j : ℕ) : ℤ) = wsum lam - r * lam.detShift := by
  push_cast
  have h : ∀ j : Fin r, ((lam.natW j : ℕ) : ℤ) = lam.w j - lam.detShift := by
    intro j
    have hj := j.isLt
    have hle : lam.detShift ≤ lam.w j := by
      unfold DomWeight.detShift
      rw [dif_pos (by omega : 0 < r)]
      exact lam.anti (Fin.le_iff_val_le_val.mpr (by show j.1 ≤ r - 1; omega))
    unfold DomWeight.natW
    omega
  rw [Finset.sum_congr rfl (fun j _ => h j), Finset.sum_sub_distrib]
  simp [wsum]

theorem two_zpow_inj {k l : ℤ} (e : (2 : ℂ) ^ k = (2 : ℂ) ^ l) : k = l := by
  have h : (((2 : ℝ) ^ k : ℝ) : ℂ) = (((2 : ℝ) ^ l : ℝ) : ℂ) := by
    push_cast
    exact e
  exact zpow_right_injective₀ (by norm_num) (by norm_num) (Complex.ofReal_injective h)

theorem embGL_diagGL {n : ℕ} (t : Fin n → ℂˣ) :
    embGL ℂ n (n + 1) rfl (diagGL ℂ n t) =
      diagGL ℂ (n + 1) (fun a => if ha : a.1 < n then t ⟨a.1, ha⟩ else 1) := by
  apply Units.ext
  ext i j
  induction i using Fin.lastCases <;> induction j using Fin.lastCases <;>
    simp [embGL, blkHom, diagGL, Matrix.diagonal_apply, Matrix.reindexAlgEquiv_apply,
      Matrix.reindex_apply, Matrix.submatrix_apply, Fin.ext_iff] <;> omega

theorem coeff_eq_of_eqv {n : ℕ} (lam : DomWeight (n + 1)) (mu : DomWeight n)
    (φ : MvPolynomial (Fin n × Fin n) ℂ →ₗ[ℂ] MvPolynomial (Fin (n + 1) × Fin (n + 1)) ℂ)
    (hφ : IsEqv rfl mu lam φ) (t : Fin n → ℂˣ) (s : MvPolynomial (Fin n × Fin n) ℂ) (hs : s ∈ nablaSq ℂ n mu)
    (κ : ℂ) (hκ : sqAct ℂ n mu (diagGL ℂ n t) s = κ • s) (m : Fin (n + 1) × Fin (n + 1) →₀ ℕ)
    (hm : AddMonoidAlgebra.coeff (φ s) m ≠ 0) :
    (∏ i, (t i : ℂ)) ^ lam.detShift * ∏ i, (t i : ℂ) ^ rowDeg m (Fin.castSucc i) = κ := by
  have h1 := hφ.2 (diagGL ℂ n t) s hs
  rw [hκ, map_smul, embGL_diagGL] at h1
  have h2 := congrArg (AddMonoidAlgebra.coeff · m) h1
  rw [MvPolynomial.coeff_smul, coeff_sqAct_diag, smul_eq_mul, Fin.prod_univ_castSucc, Fin.prod_univ_castSucc] at h2
  simp only [Fin.coe_castSucc, Fin.is_lt, dif_pos, Fin.eta, Fin.val_last, lt_self_iff_false,
    dite_false, Units.val_one, one_pow, mul_one] at h2
  exact mul_right_cancel₀ hm (by linear_combination (-1 : ℂ) * h2)

theorem equivariant_last_degree_coeff {n : ℕ} (lam : DomWeight (n + 1)) (mu : DomWeight n)
    (φ : MvPolynomial (Fin n × Fin n) ℂ →ₗ[ℂ] MvPolynomial (Fin (n + 1) × Fin (n + 1)) ℂ)
    (hφ : IsEqv rfl mu lam φ) (s : MvPolynomial (Fin n × Fin n) ℂ) (hs : s ∈ nablaSq ℂ n mu)
    (m : Fin (n + 1) × Fin (n + 1) →₀ ℕ) (hm : AddMonoidAlgebra.coeff (φ s) m ≠ 0) :
    ((rowDeg m (Fin.last n) : ℕ) : ℤ) = wsum lam - wsum mu - lam.detShift := by
  set t : Fin n → ℂˣ := fun _ => Units.mk0 (2 : ℂ) two_ne_zero with ht
  have htv : ∀ i, (t i : ℂ) = 2 := fun _ => rfl
  have hκ : sqAct ℂ n mu (diagGL ℂ n t) s =
      ((∏ i : Fin n, (t i : ℂ)) ^ mu.detShift * (2 : ℂ) ^ (∑ j, mu.natW j)) • s := by
    ext m'
    rw [coeff_sqAct_diag, MvPolynomial.coeff_smul, smul_eq_mul]
    by_cases h0 : AddMonoidAlgebra.coeff s m' = 0
    · simp [h0]
    · have hs' := sum_rowDeg_of_mem mu s hs m' h0
      simp only [htv, Finset.prod_pow_eq_pow_sum, hs']
      ring
  have h1 := coeff_eq_of_eqv lam mu φ hφ t s hs _ hκ m hm
  simp only [htv, Finset.prod_const, Finset.card_univ, Fintype.card_fin,
    Finset.prod_pow_eq_pow_sum] at h1
  have hz : ∀ (a : ℕ) (d : ℤ), ((2 : ℂ) ^ a) ^ d = (2 : ℂ) ^ ((a : ℤ) * d) := by
    intro a d
    rw [← zpow_natCast, ← zpow_mul]
  have hn : ∀ a : ℕ, (2 : ℂ) ^ a = (2 : ℂ) ^ (a : ℤ) := fun a => (zpow_natCast 2 a).symm
  rw [hz, hz, hn (∑ i : Fin n, rowDeg m (Fin.castSucc i)), hn (∑ j, mu.natW j),
    ← zpow_add₀ (two_ne_zero : (2 : ℂ) ≠ 0), ← zpow_add₀ (two_ne_zero : (2 : ℂ) ≠ 0)] at h1
  have E := two_zpow_inj h1
  have hmem : φ s ∈ nablaSq ℂ (n + 1) lam := hφ.1 s hs
  have T := sum_rowDeg_of_mem lam (φ s) hmem m hm
  rw [Fin.sum_univ_castSucc] at T
  have SL := sum_natW lam
  have SM := sum_natW mu
  have T' : ((∑ i : Fin n, rowDeg m (Fin.castSucc i) : ℕ) : ℤ) + (rowDeg m (Fin.last n) : ℤ) =
      ((∑ j, lam.natW j : ℕ) : ℤ) := by exact_mod_cast T
  push_cast at E SL SM T' ⊢
  linear_combination (-1 : ℤ) * E + T' + SL - SM

end EqvWt

open EqvWt in
theorem equivariant_last_degree : EqvLast := by
  intro n N h lam mu _ φ hφ s hs
  subst h
  intro m hm
  rw [weight_lastW]
  have := equivariant_last_degree_coeff lam mu φ hφ s hs m hm
  show rowDeg m (Fin.last n) = (wsum lam - wsum mu - lam.detShift).toNat
  omega

open EqvWt in
theorem equivariant_partial_weight : EqvRowWt := by
  intro n N h lam mu hI φ hφ ω s hs hω
  subst h
  intro m hm
  funext a
  rw [weight_rowW_apply]
  induction a using Fin.lastCases with
  | last =>
    have := equivariant_last_degree_coeff lam mu φ hφ s hs m hm
    unfold liftWt
    rw [dite_eq_right (by simp)]
    show rowDeg m (Fin.last n) = (wsum lam - wsum mu - lam.detShift).toNat
    omega
  | cast i =>
    have hi := i.isLt
    let t : Fin n → ℂˣ := fun j => if j = i then Units.mk0 (2 : ℂ) two_ne_zero else 1
    have hp : ∀ f : Fin n → ℕ, ∏ j, (t j : ℂ) ^ f j = 2 ^ f i := by
      intro f
      rw [Finset.prod_eq_single i]
      · simp [t]
      · intro j _ hj
        simp [t, hj]
      · simp
    have hp0 : ∏ j, (t j : ℂ) = 2 := by simpa using hp (fun _ => 1)
    have hκ : sqAct ℂ n mu (diagGL ℂ n t) s =
        ((∏ j, (t j : ℂ)) ^ mu.detShift * ∏ j, (t j : ℂ) ^ ω j) • s := by
      ext m'
      rw [coeff_sqAct_diag, MvPolynomial.coeff_smul, smul_eq_mul]
      by_cases h0 : AddMonoidAlgebra.coeff s m' = 0
      · simp [h0]
      · have hw := hω h0
        have hr : ∀ j, rowDeg m' j = ω j := fun j => by rw [← weight_rowW_apply, hw]
        simp only [hr]
        ring
    have h1 := coeff_eq_of_eqv lam mu φ hφ t s hs _ hκ m hm
    rw [hp0, hp (fun j => rowDeg m (Fin.castSucc j)), hp ω] at h1
    rw [← zpow_natCast, ← zpow_natCast (2 : ℂ) (ω i), ← zpow_add₀ (two_ne_zero : (2 : ℂ) ≠ 0),
      ← zpow_add₀ (two_ne_zero : (2 : ℂ) ≠ 0)] at h1
    have E := two_zpow_inj h1
    have hle : lam.detShift ≤ mu.detShift := by
      have h2 := (hI ⟨n - 1, by omega⟩).2
      unfold DomWeight.detShift
      rw [dif_pos (by omega : 0 < n + 1), dif_pos (by omega : 0 < n)]
      exact (le_of_eq (congrArg lam.w (Fin.ext (by show n + 1 - 1 = n - 1 + 1; omega)))).trans h2
    unfold liftWt
    rw [dif_pos (by simp)]
    simp only [Fin.coe_castSucc, Fin.eta]
    omega

end PI.WGL
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftEqvWt =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftFock =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftFock", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftDefs\npublic import Formalism.GradedWeylDivisibility.StatementE\npublic import Formalism.PeriodIntegrals.HwIrred\nimport Formalism.GradedWeylDivisibility.DualWeylDominanceOf\npublic import Formalism.GradedWeylDivisibility.FockSpaceTableaux.FockQRowDivAdj\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Formalism.LocalRingCardinality.Params\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.WGL

open Formalism.BasicNotions Formalism.GradedWeylDivisibility Formalism.REAL MvPolynomial

namespace Fock6

def wa {r n : ℕ} (c : Fin r) : Fin r × Fin n → ℕ := fun v => if v.1 = c then 1 else 0

def rw1 {r n : ℕ} (c : Fin r) : Fin r × Fin n → ℤ := fun v => ((wa c v : ℕ) : ℤ)

theorem applyWord_cons {R : Type*} [CommRing R] {r n : ℕ} (x : Fin r × Fin r × ℕ) (w : List (Fin r × Fin r × ℕ))
    (f : MvPolynomial (Fin r × Fin n) R) :
    applyWord R (x :: w) f = rowDiv R x.1 x.2.1 x.2.2 (applyWord R w f) := rfl

theorem applyWord_append {R : Type*} [CommRing R] {r n : ℕ} (l1 l2 : List (Fin r × Fin r × ℕ))
    (f : MvPolynomial (Fin r × Fin n) R) :
    applyWord R (l1 ++ l2) f = applyWord R l1 (applyWord R l2 f) := by
  unfold applyWord
  exact List.foldr_append ..

theorem weight_indicator_eq_degree {r n : ℕ} (m : Fin r × Fin n →₀ ℕ) (c : Fin r) :
    Finsupp.weight (rw1 c) m = ((Finsupp.weight (rowW r n) m c : ℕ) : ℤ) := by
  rw [Finsupp.weight_apply, Finsupp.weight_apply, Finsupp.sum, Finsupp.sum, Finset.sum_apply]
  push_cast
  refine Finset.sum_congr rfl fun v _ => ?_
  by_cases hv : v.1 = c
  · simp [rw1, wa, rowW, hv]
  · simp [rw1, wa, rowW, hv, Ne.symm hv]

theorem weight_rw1_eq_weight_wa {r n : ℕ} (m : Fin r × Fin n →₀ ℕ) (c : Fin r) :
    Finsupp.weight (rw1 c) m = ((Finsupp.weight (wa c) m : ℕ) : ℤ) := by
  rw [Finsupp.weight_apply, Finsupp.weight_apply, Finsupp.sum, Finsupp.sum]
  push_cast
  refine Finset.sum_congr rfl fun v _ => ?_
  simp [rw1]

theorem rowGen_diag_X {r n : ℕ} (a : Fin r) (v : Fin r × Fin n) :
    rowGen ℂ a a (X v) = Polynomial.C (X v) * (1 + Polynomial.X) ^ (wa (n := n) a v) := by
  unfold rowGen
  rw [aeval_X]
  by_cases hv : v.1 = a
  · have hv' : (a, v.2) = v := Prod.ext hv.symm rfl
    simp [wa, hv, hv']
    ring
  · simp [wa, hv]

theorem rowGen_diag_C {r n : ℕ} (a : Fin r) (c : ℂ) :
    rowGen ℂ a a (C c : MvPolynomial (Fin r × Fin n) ℂ) = Polynomial.C (C c) := by
  unfold rowGen
  rw [aeval_C, Polynomial.algebraMap_apply, MvPolynomial.algebraMap_eq]

theorem rowGen_diag_monomial {r n : ℕ} (a : Fin r) (m : Fin r × Fin n →₀ ℕ) (c : ℂ) :
    rowGen ℂ a a (monomial m c) =
      Polynomial.C (monomial m c) * (1 + Polynomial.X) ^ (Finsupp.weight (wa a) m) := by
  classical
  have hw : Finsupp.weight (wa a) m = ∑ v ∈ m.support, wa (n := n) a v * m v := by
    rw [Finsupp.weight_apply, Finsupp.sum]
    exact Finset.sum_congr rfl (fun v _ => by rw [smul_eq_mul, mul_comm])
  simp only [monomial_eq, Finsupp.prod, map_mul, map_prod, map_pow, rowGen_diag_C, rowGen_diag_X, mul_pow,
    Finset.prod_mul_distrib, ← pow_mul, Finset.prod_pow_eq_pow_sum, hw]
  ring

theorem rowDiv_diag {r n : ℕ} (a : Fin r) (k : ℕ) (f : MvPolynomial (Fin r × Fin n) ℂ) (H : ℤ)
    (hf : IsWeightedHomogeneous (rw1 a) f H) :
    rowDiv ℂ a a k f = ((H.toNat.choose k : ℕ) : ℂ) • f := by
  classical
  unfold rowDiv
  conv_lhs => rw [f.as_sum]

  rw [map_sum, Polynomial.finsetSum_coeff]
  conv_rhs => rw [f.as_sum, Finset.smul_sum]
  refine Finset.sum_congr rfl fun m hm => ?_
  rw [rowGen_diag_monomial, Polynomial.coeff_C_mul, Polynomial.coeff_one_add_X_pow]
  have hw := hf (mem_support_iff.mp hm)
  rw [weight_rw1_eq_weight_wa] at hw
  have hw' : Finsupp.weight (wa a) m = H.toNat := by omega
  rw [hw', MvPolynomial.smul_eq_C_mul, map_natCast, mul_comm]

private theorem isWeightedHomogeneous_coeff_mul_rw1 {r n : ℕ} (c : Fin r) (s D E : ℤ) (P Q : Polynomial (MvPolynomial (Fin r × Fin n) ℂ))
    (hP : ∀ j : ℕ, IsWeightedHomogeneous (rw1 c) (P.coeff j) (D + j * s))
    (hQ : ∀ j : ℕ, IsWeightedHomogeneous (rw1 c) (Q.coeff j) (E + j * s)) (j : ℕ) :
    IsWeightedHomogeneous (rw1 c) ((P * Q).coeff j) ((D + E) + j * s) := by
  rw [Polynomial.coeff_mul, ← mem_weightedHomogeneousSubmodule]
  refine Submodule.sum_mem _ fun x hx => ?_
  rw [mem_weightedHomogeneousSubmodule]
  have hx' : x.1 + x.2 = j := by simpa using hx
  rw [show (D + E) + (j : ℤ) * s = (D + (x.1 : ℤ) * s) + (E + (x.2 : ℤ) * s) by
    rw [← hx']
    push_cast
    ring]
  exact (hP x.1).mul (hQ x.2)

private theorem isWeightedHomogeneous_coeff_one_rw1 {r n : ℕ} (c : Fin r) (s : ℤ) (j : ℕ) :
    IsWeightedHomogeneous (rw1 c) ((1 : Polynomial (MvPolynomial (Fin r × Fin n) ℂ)).coeff j) (0 + j * s) := by
  by_cases hj : j = 0
  · subst hj
    simpa using isWeightedHomogeneous_one ℂ (rw1 (n := n) c)
  · rw [show (1 : Polynomial (MvPolynomial (Fin r × Fin n) ℂ)).coeff j = 0 by simp [Polynomial.coeff_one, hj]]
    exact isWeightedHomogeneous_zero ℂ _ _

private theorem isWeightedHomogeneous_coeff_rowGen_X {r n : ℕ} (a b c : Fin r) (v : Fin r × Fin n) (j : ℕ) :
    IsWeightedHomogeneous (rw1 c) ((rowGen ℂ a b (X v : MvPolynomial (Fin r × Fin n) ℂ)).coeff j)
      (rw1 c v + j * ((if a = c then 1 else 0) - (if b = c then 1 else 0))) := by
  have hX : ∀ u : Fin r × Fin n, IsWeightedHomogeneous (rw1 c) (X u : MvPolynomial (Fin r × Fin n) ℂ) (rw1 c u) :=
    fun u => isWeightedHomogeneous_X ℂ _ u
  have hdeg : ∀ (φ : MvPolynomial (Fin r × Fin n) ℂ) (d d' : ℤ), d = d' →
      IsWeightedHomogeneous (rw1 c) φ d → IsWeightedHomogeneous (rw1 c) φ d' := fun φ d d' e h => e ▸ h
  unfold rowGen
  rw [aeval_X]
  by_cases hv : v.1 = b
  · rw [if_pos hv]
    have hr : ∀ u : Fin r × Fin n, rw1 c u = if u.1 = c then 1 else 0 := fun u => by
      unfold rw1 wa
      split_ifs <;> simp
    rcases j with _ | _ | k
    · rw [Polynomial.coeff_add, Polynomial.coeff_C_zero, Polynomial.coeff_X_mul_zero, add_zero]
      exact hdeg _ _ _ (by simp) (hX v)
    · rw [Polynomial.coeff_add, Polynomial.coeff_C, if_neg (by omega), zero_add, Polynomial.coeff_X_mul,
        Polynomial.coeff_C_zero]
      refine hdeg _ _ _ ?_ (hX (a, v.2))
      rw [hr, hr, hv]
      dsimp only
      split_ifs <;> norm_num
    · rw [Polynomial.coeff_add, Polynomial.coeff_C, if_neg (by omega), zero_add, Polynomial.coeff_X_mul,
        Polynomial.coeff_C, if_neg (by omega)]
      exact isWeightedHomogeneous_zero ℂ _ _
  · rw [if_neg hv, add_zero, Polynomial.coeff_C]
    by_cases hj : j = 0
    · rw [if_pos hj]
      subst hj
      exact hdeg _ _ _ (by simp) (hX v)
    · rw [if_neg hj]
      exact isWeightedHomogeneous_zero ℂ _ _

private theorem isWeightedHomogeneous_coeff_pow_rw1 {r n : ℕ} (c : Fin r) (s D : ℤ) (P : Polynomial (MvPolynomial (Fin r × Fin n) ℂ))
    (hP : ∀ j : ℕ, IsWeightedHomogeneous (rw1 c) (P.coeff j) (D + j * s)) (e : ℕ) :
    ∀ j : ℕ, IsWeightedHomogeneous (rw1 c) ((P ^ e).coeff j) ((e : ℤ) * D + j * s) := by
  induction e with
  | zero =>
    intro j
    simpa using isWeightedHomogeneous_coeff_one_rw1 (n := n) c s j
  | succ e ih =>
    intro j
    rw [pow_succ, show ((e + 1 : ℕ) : ℤ) * D + (j : ℤ) * s = ((e : ℤ) * D + D) + j * s by push_cast; ring]
    exact isWeightedHomogeneous_coeff_mul_rw1 c s _ _ (P ^ e) P ih hP j

private theorem isWeightedHomogeneous_coeff_prod_rowGen_X_pow {r n : ℕ} (a b c : Fin r) (m : Fin r × Fin n →₀ ℕ) (t : Finset (Fin r × Fin n)) :
    ∀ j : ℕ, IsWeightedHomogeneous (rw1 c)
      ((∏ v ∈ t, (rowGen ℂ a b (X v : MvPolynomial (Fin r × Fin n) ℂ)) ^ (m v)).coeff j)
      ((∑ v ∈ t, (m v : ℤ) * rw1 c v) + j * ((if a = c then 1 else 0) - (if b = c then 1 else 0))) := by
  classical
  refine Finset.induction_on t ?_ ?_
  · intro j
    simpa using isWeightedHomogeneous_coeff_one_rw1 (n := n) c _ j
  · intro v t hv ih j
    rw [Finset.prod_insert hv, Finset.sum_insert hv]
    exact isWeightedHomogeneous_coeff_mul_rw1 c _ _ _ _ _ (isWeightedHomogeneous_coeff_pow_rw1 c _ _ _ (isWeightedHomogeneous_coeff_rowGen_X a b c v) (m v)) ih j

private theorem isWeightedHomogeneous_coeff_rowGen {r n : ℕ} (a b c : Fin r) (g : MvPolynomial (Fin r × Fin n) ℂ) (H : ℤ)
    (hg : IsWeightedHomogeneous (rw1 c) g H) (j : ℕ) :
    IsWeightedHomogeneous (rw1 c) ((rowGen ℂ a b g).coeff j)
      (H + j * ((if a = c then 1 else 0) - (if b = c then 1 else 0))) := by
  classical

  rw [g.as_sum, map_sum, Polynomial.finsetSum_coeff, ← mem_weightedHomogeneousSubmodule]
  refine Submodule.sum_mem _ fun m hm => ?_
  rw [mem_weightedHomogeneousSubmodule]
  have hw := hg (mem_support_iff.mp hm)
  have hC : rowGen ℂ a b (C (AddMonoidAlgebra.coeff g m) : MvPolynomial (Fin r × Fin n) ℂ) = Polynomial.C (C (AddMonoidAlgebra.coeff g m)) := by
    unfold rowGen
    rw [aeval_C, Polynomial.algebraMap_apply, MvPolynomial.algebraMap_eq]
  rw [monomial_eq, map_mul, Finsupp.prod, map_prod]
  simp only [map_pow]
  rw [hC, Polynomial.coeff_C_mul]
  have hp := isWeightedHomogeneous_coeff_prod_rowGen_X_pow a b c m m.support j
  have hsum : (∑ v ∈ m.support, (m v : ℤ) * rw1 c v) = H := by
    rw [← hw, Finsupp.weight_apply, Finsupp.sum]
    exact Finset.sum_congr rfl (fun v _ => by rw [nsmul_eq_mul])
  rw [hsum] at hp
  rw [MvPolynomial.C_mul', ← mem_weightedHomogeneousSubmodule]
  exact Submodule.smul_mem _ _ ((mem_weightedHomogeneousSubmodule _ _ _ _).mpr hp)

theorem word_homog {r n : ℕ} (w : List (Fin r × Fin r × ℕ)) (f : MvPolynomial (Fin r × Fin n) ℂ)
    (hf : ∀ c : Fin r, ∃ H : ℤ, IsWeightedHomogeneous (rw1 c) f H) :
    ∀ c : Fin r, ∃ H : ℤ, IsWeightedHomogeneous (rw1 c) (applyWord ℂ w f) H := by
  induction w with
  | nil => exact hf
  | cons x w ih =>
    intro c
    obtain ⟨H, hH⟩ := ih c
    exact ⟨_, isWeightedHomogeneous_coeff_rowGen x.1 x.2.1 c (applyWord ℂ w f) H hH x.2.2⟩

theorem word_reduce {r n : ℕ} (f : MvPolynomial (Fin r × Fin n) ℂ)
    (hf : ∀ c : Fin r, ∃ H : ℤ, IsWeightedHomogeneous (rw1 c) f H) (w : List (Fin r × Fin r × ℕ)) :
    ∃ w', OffDiag w' ∧ ∃ z : ℂ, applyWord ℂ w f = z • applyWord ℂ w' f := by
  have hsm : ∀ (a b : Fin r) (k : ℕ) (z : ℂ) (g : MvPolynomial (Fin r × Fin n) ℂ),
      rowDiv ℂ a b k (z • g) = z • rowDiv ℂ a b k g := by
    intro a b k z g
    unfold rowDiv
    rw [map_smul, Polynomial.coeff_smul]
  induction w with
  | nil => exact ⟨[], fun x hx => by simp at hx, 1, by rw [one_smul]⟩
  | cons x w ih =>
    obtain ⟨w', hw', z, hz⟩ := ih
    obtain ⟨a, b, k⟩ := x
    by_cases hab : a = b
    · subst hab
      obtain ⟨H, hH⟩ := word_homog w' f hf a
      refine ⟨w', hw', z * ((H.toNat.choose k : ℕ) : ℂ), ?_⟩
      show rowDiv ℂ a a k (applyWord ℂ w f) = _
      rw [hz, hsm, rowDiv_diag a k _ H hH, smul_smul]
    · refine ⟨(a, b, k) :: w', ?_, z, ?_⟩
      · intro y hy
        rcases List.mem_cons.mp hy with rfl | hy
        · exact hab
        · exact hw' y hy
      · show rowDiv ℂ a b k (applyWord ℂ w f) = z • rowDiv ℂ a b k (applyWord ℂ w' f)
        rw [hz, hsm]

theorem word_adj {r n : ℕ} (w : List (Fin r × Fin r × ℕ)) :
    ∀ F G : MvPolynomial (Fin r × Fin n) ℂ,
      fockF (applyWord ℂ w F) G = fockF F (applyWord ℂ (transposeWord w) G) := by
  induction w with
  | nil => intro F G; rfl
  | cons x w ih =>
    intro F G
    rw [applyWord_cons, Formalism.GradedWeylDivisibility.lfockq_adjC, ih]
    congr 1
    unfold transposeWord
    rw [List.map_cons, List.reverse_cons, applyWord_append]
    rfl

theorem transposeWord_transposeWord {r : ℕ} (w : List (Fin r × Fin r × ℕ)) :
    transposeWord (transposeWord w) = w := by
  unfold transposeWord
  simp [List.map_map, Function.comp_def, List.map_reverse]

theorem transposeWord_liftWord {n N : ℕ} (h : n + 1 = N) (w : List (Fin n × Fin n × ℕ)) :
    transposeWord (liftWord h w) = liftWord h (transposeWord w) := by
  unfold transposeWord liftWord
  simp [List.map_map, Function.comp_def, List.map_reverse]

theorem offDiag_transpose {r : ℕ} {w : List (Fin r × Fin r × ℕ)} (hw : OffDiag w) :
    OffDiag (transposeWord w) := by
  intro x hx
  unfold transposeWord at hx
  simp only [List.mem_map, List.mem_reverse] at hx
  obtain ⟨y, hy, rfl⟩ := hx
  exact fun h => hw y hy h.symm

theorem natW_anti {n : ℕ} (sg : DomWeight n) : Antitone sg.natW := by
  intro i j hij
  unfold DomWeight.natW
  exact Int.toNat_le_toNat (by linarith [sg.anti hij])

theorem eqv_word (hD : EqvDiv) {n N : ℕ} (h : n + 1 = N) (mu : DomWeight n) (lam : DomWeight N)
    (φ : MvPolynomial (Fin n × Fin n) ℂ →ₗ[ℂ] MvPolynomial (Fin N × Fin N) ℂ) (hφ : IsEqv h mu lam φ)
    (w : List (Fin n × Fin n × ℕ)) (hw : OffDiag w) (s : MvPolynomial (Fin n × Fin n) ℂ)
    (hs : s ∈ nablaSq ℂ n mu) :
    applyWord ℂ w s ∈ nablaSq ℂ n mu ∧ φ (applyWord ℂ w s) = applyWord ℂ (liftWord h w) (φ s) := by
  induction w with
  | nil => exact ⟨hs, rfl⟩
  | cons x w ih =>
    have hx : x.1 ≠ x.2.1 := hw x (by simp)
    obtain ⟨hm, he⟩ := ih (fun y hy => hw y (by simp [hy]))
    refine ⟨?_, ?_⟩
    · rw [applyWord_cons]
      exact Formalism.GradedWeylDivisibility.rowDivStable ℂ n n mu.natW x.1 x.2.1 x.2.2 _ hm
    · rw [applyWord_cons, hD n N h mu lam φ hφ x.1 x.2.1 hx x.2.2 _ hm, he]
      rfl

end Fock6

open Fock6 in
theorem fockDetect_of (h3 : PI.HwIrred) (hD : EqvDiv) : FockDetect := by
  intro n N h lam sg _ io0 hEqv hext u hu hort
  set E : MvPolynomial (Fin n × Fin n) ℂ := extremal ℂ n sg with hE
  have hEmem : E ∈ nablaSq ℂ n sg := hwMem ℂ n n le_rfl sg.natW (natW_anti sg)
  have hErow : ∀ c : Fin n, ∃ H : ℤ, IsWeightedHomogeneous (rw1 c) E H := by
    intro c
    refine ⟨((rowNu (r := n) sg.natW c : ℕ) : ℤ), fun m hm => ?_⟩
    have := hwRowWeight ℂ n n le_rfl sg.natW (natW_anti sg) hm
    rw [weight_indicator_eq_degree]
    exact congrArg (fun v : Fin n → ℕ => ((v c : ℕ) : ℤ)) this

  have key : ∀ w, OffDiag w → fockF (io0 u) (io0 (applyWord ℂ w E)) = 0 := by
    intro w hw
    rw [(eqv_word hD h sg lam io0 hEqv w hw E hEmem).2, hext]
    have e := word_adj (transposeWord (liftWord h w)) (io0 u) (xi ℂ h lam sg)
    rw [transposeWord_transposeWord, transposeWord_liftWord] at e
    rw [← e]
    exact hort _ (offDiag_transpose hw)

  let S : Set (MvPolynomial (Fin n × Fin n) ℂ) := {f | ∃ w, OffDiag w ∧ f = applyWord ℂ w E}
  have hspan : u ∈ Submodule.span ℂ S := by
    have hu' : u ∈ delSq ℂ n sg := (h3 n sg).1 ▸ hu
    refine (Submodule.span_le.mpr ?_) hu'
    rintro _ ⟨w, rfl⟩
    obtain ⟨w', hw', z, hz⟩ := word_reduce E hErow w
    show applyWord ℂ w E ∈ Submodule.span ℂ S
    rw [hz]
    exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨w', hw', rfl⟩)

  let P : Submodule ℂ (MvPolynomial (Fin n × Fin n) ℂ) :=
    { carrier := {y | fockF (io0 u) (io0 y) = 0}
      zero_mem' := by simp [fockF]
      add_mem' := by
        intro a b ha hb
        simp only [Set.mem_ofPred_eq, map_add (f := _)] at *
        unfold fockF at *
        rw [← zero_add (0 : ℂ)]
        nth_rewrite 1 [← ha]
        rw [← hb, ← Finset.sum_add_distrib]
        refine Finset.sum_congr rfl fun m _ => ?_
        simp only [MvPolynomial.coeff_add, star_add]
        ring
      smul_mem' := by
        intro c a ha
        simp only [Set.mem_ofPred_eq, map_smul] at *
        unfold fockF at *
        have : ∑ m ∈ (io0 u).support, (io0 u).coeff m * star ((c • io0 a).coeff m) *
            ((∏ k ∈ m.support, (m k).factorial : ℕ) : ℂ) =
            star c * ∑ m ∈ (io0 u).support, (io0 u).coeff m * star ((io0 a).coeff m) *
              ((∏ k ∈ m.support, (m k).factorial : ℕ) : ℂ) := by
          rw [Finset.mul_sum]
          refine Finset.sum_congr rfl fun m _ => ?_
          simp only [MvPolynomial.coeff_smul, smul_eq_mul, star_mul']
          ring
        rw [this, ha, mul_zero] }
  have hSP : Submodule.span ℂ S ≤ P := by
    rw [Submodule.span_le]
    rintro _ ⟨w, hw, rfl⟩
    exact key w hw
  have h0 : fockF (io0 u) (io0 u) = 0 := hSP hspan
  by_contra hne
  have := (fockPos _ (io0 u) hne).1
  rw [h0] at this
  simp at this

end PI.WGL
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftFock =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftTupleF =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftTupleF", "h": "module\n\npublic import Formalism.GradedWeylDivisibility.FockSpaceTableaux.LBidetMinor\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftTupleA\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftTupleM\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftTupleD\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftTupleE\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Formalism.LocalRingCardinality.Params\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftTupleC\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.WGL.LTF

open Formalism.BasicNotions Formalism.GradedWeylDivisibility MvPolynomial PI.WGL.LTA PI.WGL.LTM PI.WGL.LTC PI.WGL.LTD PI.WGL.LTE

theorem gmin_rowW {r c m : ℕ} (ρ : Fin m → Fin r) (κ : Fin m → Fin c) :
    IsWeightedHomogeneous (rowW r c) (gmin ρ κ) (∑ p, (Pi.single (ρ p) 1 : Fin r → ℕ)) := by
  classical
  unfold gmin
  rw [Matrix.det_apply, ← mem_weightedHomogeneousSubmodule]
  refine Submodule.sum_mem _ fun σ _ => ?_
  refine Submodule.smul_of_tower_mem _ _ ?_
  rw [mem_weightedHomogeneousSubmodule]
  have hp := IsWeightedHomogeneous.prod Finset.univ
    (fun p => (X (ρ (σ p), κ p) : MvPolynomial (Fin r × Fin c) ℤ))
    (fun p => rowW r c (ρ (σ p), κ p)) (fun p _ => isWeightedHomogeneous_X ℤ _ _)
  have hsum : ∑ p, rowW r c (ρ (σ p), κ p) = ∑ p, (Pi.single (ρ p) 1 : Fin r → ℕ) := by
    simp only [rowW]
    exact Equiv.sum_comp σ (fun p => (Pi.single (ρ p) 1 : Fin r → ℕ))
  rw [hsum] at hp
  simpa [Matrix.of_apply] using hp

theorem bidet_rowW {n K : ℕ} (sz : Fin K → ℕ) (hsz : ∀ k, sz k ≤ n) (I : ∀ k, Fin (sz k) → Fin n) :
    IsWeightedHomogeneous (rowW n n) (bideterminant ℤ sz hsz I) (tupCnt I) := by
  unfold bideterminant
  have hp := IsWeightedHomogeneous.prod Finset.univ (fun k => initMinor ℤ (n := n) (I k) (hsz k))
    (fun k => ∑ p, (Pi.single (I k p) 1 : Fin n → ℕ)) (fun k _ => gmin_rowW (I k) (Fin.castLE (hsz k)))
  convert hp using 1
  ext a
  unfold tupCnt
  simp only [Finset.sum_apply, Finset.card_filter, Pi.single_apply, eq_comm]

def w0r {n N : ℕ} (h : n + 1 = N) (lam : DomWeight N) (sg : DomWeight n) : Fin N → ℕ :=
  ∑ i : Fin n, ((if i.1 + 1 = n then (aa h lam sg i).toNat else 0) • initW N (i.1 + 1) +
    (if i.1 = 0 then (bb h lam sg i).toNat else 0) • (∑ p, (Pi.single (rowsZ h i p) 1 : Fin N → ℕ)))

theorem ite_pow_rowW {N : ℕ} (c : Prop) [Decidable c] (f : MvPolynomial (Fin N × Fin N) ℤ) (w : Fin N → ℕ)
    (hf : IsWeightedHomogeneous (rowW N N) f w) (e : ℕ) :
    IsWeightedHomogeneous (rowW N N) (if c then f ^ e else 1) ((if c then e else 0) • w) := by
  split_ifs
  · exact hf.pow e
  · simpa using isWeightedHomogeneous_one ℤ (rowW N N)

theorem constant_weighted_homogeneous {n N : ℕ} (h : n + 1 = N) (lam : DomWeight N) (sg : DomWeight n) :
    IsWeightedHomogeneous (rowW N N) (C0 h lam sg) (w0r h lam sg) := by
  have hlp : ∀ (s : ℕ) (hr : s ≤ N) (hc : s ≤ N),
      IsWeightedHomogeneous (rowW N N) (lpMinor ℤ s hr hc) (initW N s) := by
    intro s hr hc
    have hg : IsWeightedHomogeneous (rowW N N) (lpMinor ℤ s hr hc)
        (∑ p, (Pi.single (Fin.castLE hr p) 1 : Fin N → ℕ)) := gmin_rowW (Fin.castLE hr) (Fin.castLE hc)
    have hw : (∑ p, (Pi.single (Fin.castLE hr p) 1 : Fin N → ℕ)) = initW N s := by
      funext t
      simp only [Finset.sum_apply, Pi.single_apply, initW, Fin.ext_iff, Fin.coe_castLE]
      rw [show (∑ p : Fin s, if (t : ℕ) = (p : ℕ) then 1 else 0) = ∑ p : Fin s, if (p : ℕ) = t.1 then 1 else 0 from
        Finset.sum_congr rfl (fun p _ => by simp only [eq_comm])]
      rw [sum_ite_val (fun _ => 1) t.1]
      simp
    rw [hw] at hg
    exact hg
  unfold C0 w0r
  refine IsWeightedHomogeneous.prod Finset.univ _ _ fun i _ => ?_
  refine IsWeightedHomogeneous.mul ?_ ?_
  · exact ite_pow_rowW _ _ _ (hlp _ _ _) _
  · exact ite_pow_rowW _ _ _ (gmin_rowW (rowsZ h i) (Fin.castLE _)) _

def wk {n N : ℕ} (h : n + 1 = N) {m : ℕ} (ρ : Fin m → Fin n) (lifted : Prop) [Decidable lifted] : Fin N → ℕ :=
  (∑ q, (Pi.single (eRow h (ρ q)) 1 : Fin N → ℕ)) +
    (if lifted then (Pi.single (⟨N - 1, by omega⟩ : Fin N) 1 : Fin N → ℕ) else 0)

theorem G_rowW {n N : ℕ} (h : n + 1 = N) {K : ℕ} (sz : Fin K → ℕ) (hsz : ∀ k, sz k ≤ n) (L : Finset (Fin K))
    (k : Fin K) (ρ : Fin (sz k) → Fin n) :
    IsWeightedHomogeneous (rowW N N)
      (if k ∈ L then lif h ρ (by have := hsz k; omega) else unl h ρ (by have := hsz k; omega))
      (wk h ρ (k ∈ L)) := by
  unfold wk
  split_ifs with hk
  · unfold lif
    have hg : IsWeightedHomogeneous (rowW N N)
        (initMinor ℤ (liftRows h ρ) (by have := hsz k; omega : sz k + 1 ≤ N))
        (∑ p, (Pi.single (liftRows h ρ p) 1 : Fin N → ℕ)) :=
      gmin_rowW (liftRows h ρ) (Fin.castLE (by have := hsz k; omega : sz k + 1 ≤ N))
    have hw : (∑ p, (Pi.single (liftRows h ρ p) 1 : Fin N → ℕ)) =
        (∑ q, (Pi.single (eRow h (ρ q)) 1 : Fin N → ℕ)) + Pi.single (⟨N - 1, by omega⟩ : Fin N) 1 := by
      rw [Fin.sum_univ_castSucc]
      simp [liftRows]
    rw [hw] at hg
    exact hg
  · unfold unl
    have hg : IsWeightedHomogeneous (rowW N N)
        (initMinor ℤ (eRow h ∘ ρ) (by have := hsz k; omega : sz k ≤ N))
        (∑ p, (Pi.single (eRow h (ρ p)) 1 : Fin N → ℕ)) :=
      gmin_rowW (eRow h ∘ ρ) (Fin.castLE (by have := hsz k; omega : sz k ≤ N))
    rw [add_zero]
    exact hg

theorem constant_weight_apply {n N : ℕ} (h : n + 1 = N) (lam : DomWeight N) (sg : DomWeight n) (av : ℕ) (hav : av < N) :
    w0r h lam sg ⟨av, hav⟩ =
      (if hn : n - 1 < n then (aa h lam sg ⟨n - 1, hn⟩).toNat * (if av < n then 1 else 0) else 0) +
      (if hn : 0 < n then (bb h lam sg ⟨0, hn⟩).toNat * (if av = n then 1 else 0) else 0) := by
  unfold w0r
  have key : ∀ i : Fin n, (((if i.1 + 1 = n then (aa h lam sg i).toNat else 0) • initW N (i.1 + 1) +
      (if i.1 = 0 then (bb h lam sg i).toNat else 0) • (∑ p, (Pi.single (rowsZ h i p) 1 : Fin N → ℕ)))
        ⟨av, hav⟩) =
      (if i.1 = n - 1 then (aa h lam sg i).toNat * (if av < n then 1 else 0) else 0) +
      (if i.1 = 0 then (bb h lam sg i).toNat * (if av = n then 1 else 0) else 0) := by
    intro i
    have hi2 := i.2
    simp only [Pi.add_apply, Pi.smul_apply, smul_eq_mul]
    congr 1
    · by_cases hi : i.1 + 1 = n
      · rw [if_pos hi, if_pos (by omega)]
        simp only [initW, hi]
      · rw [if_neg hi, if_neg (by omega), zero_mul]
    · by_cases hi : i.1 = 0
      · rw [if_pos hi, if_pos hi]
        congr 1
        rw [Finset.sum_apply]
        have e : ∀ p : Fin (i.1 + 1), (Pi.single (rowsZ h i p) 1 : Fin N → ℕ) ⟨av, hav⟩ =
            if av = n then 1 else 0 := by
          intro p
          have hp := p.2
          have hr : rowsZ h i p = ⟨N - 1, by omega⟩ := by
            simp only [rowsZ]
            rw [if_pos (by omega)]
          rw [hr, Pi.single_apply]
          by_cases hav' : av = n
          · rw [if_pos (Fin.ext (by simp only; omega)), if_pos hav']
          · rw [if_neg (fun he => hav' (by have := congrArg Fin.val he; simp only at this; omega)), if_neg hav']
        rw [Finset.sum_congr rfl (fun p _ => e p), Finset.sum_const, Finset.card_univ, Fintype.card_fin, hi,
          smul_eq_mul, zero_add, one_mul]
      · rw [if_neg hi, if_neg hi, zero_mul]
  rw [Finset.sum_apply, Finset.sum_congr rfl (fun i _ => key i), Finset.sum_add_distrib, sum_ite_val,
    sum_ite_val]

theorem cardL {n N : ℕ} (h : n + 1 = N) (lam : DomWeight N) (sg : DomWeight n) {K : ℕ} (sz : Fin K → ℕ)
    (hsz : ∀ k, sz k ≤ n) (hshape : shapeDeg sz = sg.natW) (L : Finset (Fin K)) (hL : GoodL h lam sg sz L) :
    L.card = ∑ i : Fin n, (if i.1 = 0 then 0 else (bb h lam sg i).toNat) := by
  classical
  rw [Finset.card_eq_sum_card_fiberwise (f := sz) (t := Finset.range n) ?_]
  · rw [Finset.sum_range]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [← hL.2 i]
    congr 1
    ext k
    simp [Finset.mem_filter]
  · intro k hk
    rw [Finset.mem_coe, Finset.mem_range]
    replace hk := Finset.mem_coe.mp hk
    rcases sz_lt sg sz hsz hshape k with h1 | h1
    · exact h1
    · exact absurd h1 (Nat.pos_iff_ne_zero.mp (hL.1 k hk))

theorem sumB {n N : ℕ} (h : n + 1 = N) (lam : DomWeight N) (sg : DomWeight n) (hI : Interlace h lam sg) :
    ((∑ i : Fin n, (bb h lam sg i).toNat : ℕ) : ℤ) = degZ lam sg - lam.detShift := by
  subst h
  have hb : ∀ i : Fin n, (((bb rfl lam sg i).toNat : ℕ) : ℤ) = lam.w (Fin.castSucc i) - sg.w i :=
    fun i => b_val rfl lam sg hI i.1 i.2
  push_cast
  rw [Finset.sum_congr rfl (fun i _ => hb i), Finset.sum_sub_distrib]
  unfold degZ wsum
  rw [Fin.sum_univ_castSucc (f := lam.w), lam_detShift rfl lam,
    show (Fin.last n) = (⟨n, by omega⟩ : Fin (n + 1)) from rfl]
  ring

end PI.WGL.LTF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftTupleF =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftTupleB =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftTupleB", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftTupleM\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Formalism.LocalRingCardinality.Params\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.WGL.LTB

open Formalism.BasicNotions Formalism.GradedWeylDivisibility MvPolynomial PI.WGL.LTM

theorem initMinor_perm {R : Type*} [CommRing R] {r m s : ℕ} (I : Fin s → Fin r) (hs : s ≤ m)
    (σ : Equiv.Perm (Fin s)) :
    initMinor R (n := m) (I ∘ σ) hs = (Equiv.Perm.sign σ : ℤ) • initMinor R (n := m) I hs := by
  unfold initMinor
  first
  | (rw [zsmul_eq_mul, ← Matrix.det_permute]; rfl)

theorem initMinor_not_inj {R : Type*} [CommRing R] {r m s : ℕ} (I : Fin s → Fin r) (hs : s ≤ m)
    (hI : ¬ Function.Injective I) : initMinor R (n := m) I hs = 0 := by
  unfold initMinor
  unfold Function.Injective at hI
  push_neg at hI
  obtain ⟨i, j, hij, hne⟩ := hI
  exact Matrix.det_zero_of_row_eq hne (by ext q; simp [hij])

theorem initMinor_std {R : Type*} [CommRing R] {r m s : ℕ} (hr : s ≤ r) (hs : s ≤ m) :
    initMinor R (n := m) (fun p : Fin s => (⟨p.1, lt_of_lt_of_le p.2 hr⟩ : Fin r)) hs = lpMinor R s hr hs := by
  rfl

theorem unl_perm {n N : ℕ} (h : n + 1 = N) {m : ℕ} (ρ : Fin m → Fin n) (hm : m ≤ N) (σ : Equiv.Perm (Fin m)) :
    unl h (ρ ∘ σ) hm = (Equiv.Perm.sign σ : ℤ) • unl h ρ hm := by
  unfold unl
  exact initMinor_perm (eRow h ∘ ρ) hm σ

theorem liftRows_perm {n N : ℕ} (h : n + 1 = N) {m : ℕ} (ρ : Fin m → Fin n) (σ : Equiv.Perm (Fin m)) :
    liftRows h (ρ ∘ σ) = liftRows h ρ ∘ (σ.viaFintypeEmbedding Fin.castSuccEmb) := by
  funext p
  induction p using Fin.lastCases with
  | last =>
    have hnot : Fin.last m ∉ Set.range (Fin.castSuccEmb : Fin m ↪ Fin (m + 1)) := by
      rintro ⟨y, hy⟩
      have h1 : y.val = m := by
        have := congrArg Fin.val hy
        exact this
      have h2 := y.2
      omega
    rw [Function.comp_apply]
    first
    | rw [Equiv.Perm.viaFintypeEmbedding_apply_notMem_range _ _ hnot]
    simp [liftRows]
  | cast i =>
    rw [Function.comp_apply]
    have e := Equiv.Perm.viaFintypeEmbedding_apply_image σ (Fin.castSuccEmb : Fin m ↪ Fin (m + 1)) i
    rw [show Fin.castSucc i = (Fin.castSuccEmb : Fin m ↪ Fin (m + 1)) i from rfl, e]
    simp [liftRows]

theorem lif_perm {n N : ℕ} (h : n + 1 = N) {m : ℕ} (ρ : Fin m → Fin n) (hm : m + 1 ≤ N)
    (σ : Equiv.Perm (Fin m)) :
    lif h (ρ ∘ σ) hm = (Equiv.Perm.sign σ : ℤ) • lif h ρ hm := by
  unfold lif
  rw [liftRows_perm, initMinor_perm]
  rw [show Equiv.Perm.sign (σ.viaFintypeEmbedding Fin.castSuccEmb) = Equiv.Perm.sign σ from
    Equiv.Perm.sign_extendDomain σ _]

theorem unl_not_inj {n N : ℕ} (h : n + 1 = N) {m : ℕ} (ρ : Fin m → Fin n) (hm : m ≤ N)
    (hρ : ¬ Function.Injective ρ) : unl h ρ hm = 0 := by
  unfold unl
  exact initMinor_not_inj _ hm (fun hinj => hρ hinj.of_comp)

theorem lif_not_inj {n N : ℕ} (h : n + 1 = N) {m : ℕ} (ρ : Fin m → Fin n) (hm : m + 1 ≤ N)
    (hρ : ¬ Function.Injective ρ) : lif h ρ hm = 0 := by
  unfold lif
  refine initMinor_not_inj _ hm (fun hinj => hρ (fun a b hab => ?_))
  have h2 : liftRows h ρ (Fin.castSucc a) = liftRows h ρ (Fin.castSucc b) := by
    simp [liftRows, hab]
  exact Fin.castSucc_inj.mp (hinj h2)

theorem sum_cnt_lt {n K : ℕ} {sz : Fin K → ℕ} (J : ∀ k, Fin (sz k) → Fin n) (t : ℕ) :
    ∑ k, (Finset.univ.filter fun p : Fin (sz k) => (J k p).1 < t).card =
      ∑ a ∈ Finset.univ.filter (fun a : Fin n => a.1 < t), tupCnt J a := by
  unfold tupCnt
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl (fun k _ => ?_)
  rw [Finset.card_eq_sum_card_fiberwise (f := J k) (t := Finset.univ.filter fun a : Fin n => a.1 < t)
    (by intro p hp; simpa using hp)]
  refine Finset.sum_congr rfl (fun a ha => ?_)
  simp only [Finset.mem_filter, Finset.mem_univ, true_and] at ha
  apply congrArg Finset.card
  ext p
  simp only [Finset.mem_filter, Finset.mem_univ, true_and]
  constructor
  · exact fun hp => hp.2
  · intro hp
    exact ⟨by rw [hp]; exact ha, hp⟩

private theorem card_filter_fin_val_lt' {n c : ℕ} (hc : c ≤ n) :
    (Finset.univ.filter fun a : Fin n => a.1 < c).card = c := by
  have e : (Finset.univ.filter fun a : Fin n => a.1 < c).card = (Finset.range c).card := by
    apply Finset.card_bij (fun a _ => a.1)
    · intro a ha
      simpa using ha
    · intro a _ b _ hab
      exact Fin.ext hab
    · intro b hb
      have hb' : b < c := by simpa using hb
      exact ⟨⟨b, by omega⟩, by simpa using hb', rfl⟩
  rw [e, Finset.card_range]

theorem sum_shape_lt {n K : ℕ} (sz : Fin K → ℕ) (hsz : ∀ k, sz k ≤ n) (t : ℕ) (ht : t ≤ n) :
    ∑ a ∈ Finset.univ.filter (fun a : Fin n => a.1 < t), shapeDeg sz a = ∑ k, min t (sz k) := by
  unfold shapeDeg
  have e : ∀ k : Fin K, min t (sz k) = (Finset.univ.filter fun a : Fin n => a.1 < t ∧ a.1 < sz k).card := by
    intro k
    rw [← card_filter_fin_val_lt' (n := n) (c := min t (sz k)) (le_trans (min_le_left _ _) ht)]
    apply congrArg Finset.card
    ext a
    simp [lt_min_iff]
  simp only [e]
  simp only [Finset.card_eq_sum_ones, Finset.sum_filter]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl (fun a _ => ?_)
  by_cases ha : a.1 < t <;> simp [ha]

theorem top_entries {n K : ℕ} (sz : Fin K → ℕ) (hsz : ∀ k, sz k ≤ n) (J : ∀ k, Fin (sz k) → Fin n)
    (hinj : ∀ k, Function.Injective (J k)) (hc : tupCnt J = shapeDeg sz) : ∀ k p, (J k p).1 < sz k := by
  intro k p
  have key : ∀ t, t ≤ n → ∀ k, (Finset.univ.filter fun p : Fin (sz k) => (J k p).1 < t).card = min t (sz k) := by
    intro t ht
    have hle : ∀ k ∈ Finset.univ, (Finset.univ.filter fun p : Fin (sz k) => (J k p).1 < t).card ≤ min t (sz k) := by
      intro k _
      refine le_min ?_ ?_
      · calc _ ≤ (Finset.univ.filter fun a : Fin n => a.1 < t).card :=
              Finset.card_le_card_of_injOn (J k) (by intro p hp; simpa using hp)
                (by intro a _ b _ hab; exact hinj k hab)
          _ = t := card_filter_fin_val_lt' ht
      · exact (Finset.card_filter_le _ _).trans (by simp)
    have hsum : ∑ k, (Finset.univ.filter fun p : Fin (sz k) => (J k p).1 < t).card = ∑ k, min t (sz k) := by
      rw [sum_cnt_lt J t, hc, sum_shape_lt sz hsz t ht]
    exact fun k => (Finset.sum_eq_sum_iff_of_le hle).mp hsum k (Finset.mem_univ _)
  have h1 := key (sz k) (hsz k) k
  rw [min_self] at h1
  have h2 : (Finset.univ.filter fun q : Fin (sz k) => (J k q).1 < sz k) = Finset.univ := by
    apply Finset.eq_univ_of_card
    rw [h1]
    simp
  have h3 : p ∈ Finset.univ.filter fun q : Fin (sz k) => (J k q).1 < sz k := by
    rw [h2]
    exact Finset.mem_univ _
  simpa using h3

theorem top_perm {n K : ℕ} (sz : Fin K → ℕ) (hsz : ∀ k, sz k ≤ n) (J : ∀ k, Fin (sz k) → Fin n)
    (hinj : ∀ k, Function.Injective (J k)) (hlt : ∀ k p, (J k p).1 < sz k) :
    ∀ k, ∃ σ : Equiv.Perm (Fin (sz k)), J k = stdT sz hsz k ∘ σ := by
  intro k
  let f : Fin (sz k) → Fin (sz k) := fun p => ⟨(J k p).1, hlt k p⟩
  have hf : Function.Injective f := by
    intro a b hab
    apply hinj k
    exact Fin.ext (by simpa [f] using congrArg Fin.val hab)
  refine ⟨Equiv.ofBijective f (Finite.injective_iff_bijective.mp hf), ?_⟩
  funext p
  exact Fin.ext rfl

theorem card_eq_val {m n : ℕ} (a : Fin n) :
    (Finset.univ.filter fun p : Fin m => p.1 = a.1).card = if a.1 < m then 1 else 0 := by
  split_ifs with h
  · rw [Finset.card_eq_one]
    refine ⟨⟨a.1, h⟩, ?_⟩
    ext p
    simp [Fin.ext_iff]
  · rw [Finset.card_eq_zero, Finset.filter_eq_empty_iff]
    intro p _ hp
    exact h (by have := p.2; omega)

theorem tupCnt_std {n K : ℕ} (sz : Fin K → ℕ) (hsz : ∀ k, sz k ≤ n) : tupCnt (stdT sz hsz) = shapeDeg sz := by
  funext a
  unfold tupCnt shapeDeg
  rw [Finset.card_filter (fun k : Fin K => a.1 < sz k)]
  refine Finset.sum_congr rfl (fun k _ => ?_)
  rw [← card_eq_val (m := sz k) a]
  apply congrArg Finset.card
  ext p
  simp [stdT, Fin.ext_iff]

theorem prod_sz {M : Type*} [CommMonoid M] {K : ℕ} (sz : Fin K → ℕ) (s : Finset (Fin K)) (bnd : ℕ)
    (hb : ∀ k ∈ s, sz k < bnd) (F : ℕ → M) :
    ∏ k ∈ s, F (sz k) = ∏ y ∈ Finset.range bnd, F y ^ (s.filter fun k => sz k = y).card := by
  rw [Finset.prod_comp F sz]
  apply Finset.prod_subset
  · intro y hy
    rw [Finset.mem_image] at hy
    obtain ⟨k, hk, rfl⟩ := hy
    exact Finset.mem_range.mpr (hb k hk)
  · intro y _ hy
    rw [Finset.mem_image] at hy
    have e : s.filter (fun k => sz k = y) = ∅ := by
      rw [Finset.filter_eq_empty_iff]
      intro k hk hky
      exact hy ⟨k, hk, hky⟩
    rw [e, Finset.card_empty, pow_zero]

theorem count_succ {n K : ℕ} (sz : Fin K → ℕ) (hsz : ∀ k, sz k ≤ n) (s : Fin n) :
    (Finset.univ.filter fun k => sz k = s.1 + 1).card = shapeDeg sz s - nuNext (shapeDeg sz) s := by
  unfold nuNext shapeDeg
  split_ifs with h
  · try simp only
    have hsub : (Finset.univ.filter fun k : Fin K => s.1 + 1 < sz k) ⊆ Finset.univ.filter fun k : Fin K => s.1 < sz k := by
      intro k hk
      simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hk ⊢
      omega
    first
    | rw [← Finset.card_sdiff_of_subset hsub]
    apply congrArg Finset.card
    ext k
    simp only [Finset.mem_filter, Finset.mem_univ, true_and, Finset.mem_sdiff]
    omega
  · rw [Nat.sub_zero]
    apply congrArg Finset.card
    ext k
    simp only [Finset.mem_filter, Finset.mem_univ, true_and]
    have h1 := hsz k
    have h2 := s.2
    omega

theorem bidet_std {n K : ℕ} (sz : Fin K → ℕ) (hsz : ∀ k, sz k ≤ n) (ν : Fin n → ℕ) (hsh : shapeDeg sz = ν) :
    bideterminant ℤ sz hsz (stdT sz hsz) = hw ℤ (r := n) le_rfl ν := by
  subst hsh
  unfold bideterminant hw
  let F : ℕ → MvPolynomial (Fin n × Fin n) ℤ := fun y => if hy : y ≤ n then lpMinor ℤ y hy hy else 1
  have h1 : ∀ k, initMinor ℤ (stdT sz hsz k) (hsz k) = F (sz k) := by
    intro k
    have e : F (sz k) = lpMinor ℤ (sz k) (hsz k) (hsz k) := dif_pos (hsz k)
    rw [e]
    exact initMinor_std (hsz k) (hsz k)
  simp only [h1]
  rw [prod_sz sz Finset.univ (n + 1) (fun k _ => Nat.lt_succ_of_le (hsz k)) F, Finset.prod_range_succ']
  have h0 : F 0 = 1 := by
    have e : F 0 = lpMinor ℤ 0 (Nat.zero_le n) (Nat.zero_le n) := dif_pos (Nat.zero_le n)
    rw [e]
    simp [lpMinor]
  rw [h0, one_pow, mul_one, ← Fin.prod_univ_eq_prod_range]
  refine Finset.prod_congr rfl (fun s _ => ?_)
  rw [count_succ sz hsz s]
  have e : F (s.1 + 1) = lpMinor ℤ (s.1 + 1) (by have := s.2; omega) (by have := s.2; omega) :=
    dif_pos (by have := s.2; omega)
  rw [e]

theorem prod_zsmul' {R : Type*} [CommRing R] {K : ℕ} (a : Fin K → ℤ) (x : Fin K → R) :
    ∏ k, (a k • x k) = (∏ k, a k) • ∏ k, x k := by
  simp only [zsmul_eq_mul, Finset.prod_mul_distrib, Int.cast_prod]

theorem natW_last {n : ℕ} (sg : DomWeight n) (hn : 0 < n) : sg.natW ⟨n - 1, by omega⟩ = 0 := by
  simp [Formalism.BasicNotions.DomWeight.natW, Formalism.BasicNotions.DomWeight.detShift, hn]

theorem natW_add {n : ℕ} (sg : DomWeight n) (i : Fin n) : ((sg.natW i : ℕ) : ℤ) + sg.detShift = sg.w i := by
  have hn : 0 < n := lt_of_le_of_lt (Nat.zero_le _) i.2
  have hle : sg.detShift ≤ sg.w i := by
    unfold Formalism.BasicNotions.DomWeight.detShift
    rw [dif_pos hn]
    exact sg.anti (Fin.le_iff_val_le_val.mpr (by show i.1 ≤ n - 1; have := i.2; omega))
  simp only [Formalism.BasicNotions.DomWeight.natW]
  rw [Int.toNat_of_nonneg (sub_nonneg.mpr hle)]
  ring

theorem sz_lt {n K : ℕ} (sg : DomWeight n) (sz : Fin K → ℕ) (hsz : ∀ k, sz k ≤ n)
    (hsh : shapeDeg sz = sg.natW) (k : Fin K) (hk : 0 < sz k) : sz k < n := by
  have hn : 0 < n := lt_of_lt_of_le hk (hsz k)
  by_contra hcon
  have heq : sz k = n := le_antisymm (hsz k) (not_lt.mp hcon)
  have h1 := congrFun hsh ⟨n - 1, by omega⟩
  rw [natW_last sg hn] at h1
  unfold shapeDeg at h1
  rw [Finset.card_eq_zero, Finset.filter_eq_empty_iff] at h1
  exact h1 (Finset.mem_univ k) (by simp; omega)

theorem lif_std {n N : ℕ} (h : n + 1 = N) {K : ℕ} (sz : Fin K → ℕ) (hsz : ∀ k, sz k ≤ n) (k : Fin K)
    (hk : sz k < n) (hm : sz k + 1 ≤ N) :
    lif h (stdT sz hsz k) hm = initMinor ℤ (n := N) (rowsZ h ⟨sz k, hk⟩) hm := by
  unfold lif
  congr 1
  funext p
  simp [liftRows, rowsZ, stdT, eRow]
  have hp := p.2
  split_ifs <;> first | rfl | (exfalso; omega)

theorem unl_std {n N : ℕ} (h : n + 1 = N) {K : ℕ} (sz : Fin K → ℕ) (hsz : ∀ k, sz k ≤ n) (k : Fin K)
    (hm : sz k ≤ N) : unl h (stdT sz hsz k) hm = lpMinor ℤ (r := N) (n := N) (sz k) hm hm := by
  unfold unl
  exact initMinor_std hm hm

private theorem card_filter_not_mem_sz_eq_succ {n N : ℕ} (h : n + 1 = N) (lam : DomWeight N) (sg : DomWeight n)
    (hI : Interlace h lam sg) {K : ℕ} (sz : Fin K → ℕ) (hsz : ∀ k, sz k ≤ n)
    (hsh : shapeDeg sz = sg.natW) (L : Finset (Fin K)) (hL : GoodL h lam sg sz L) (s : Fin n) :
    (Finset.univ.filter fun k => ¬ k ∈ L ∧ sz k = s.1 + 1).card =
      if s.1 + 1 = n then 0 else (aa h lam sg s).toNat := by
  unfold Interlace at hI
  unfold GoodL at hL
  have hs0 := s.2
  have e1 : ((Finset.univ.filter fun k : Fin K => sz k = s.1 + 1).filter fun k => k ∈ L) =
      Finset.univ.filter fun k => k ∈ L ∧ sz k = s.1 + 1 := by
    ext k
    simp only [Finset.mem_filter, Finset.mem_univ, true_and]
    exact and_comm
  have e2 : ((Finset.univ.filter fun k : Fin K => sz k = s.1 + 1).filter fun k => ¬ k ∈ L) =
      Finset.univ.filter fun k => ¬ k ∈ L ∧ sz k = s.1 + 1 := by
    ext k
    simp only [Finset.mem_filter, Finset.mem_univ, true_and]
    exact and_comm
  have htot : (Finset.univ.filter fun k => k ∈ L ∧ sz k = s.1 + 1).card +
      (Finset.univ.filter fun k => ¬ k ∈ L ∧ sz k = s.1 + 1).card =
      (Finset.univ.filter fun k : Fin K => sz k = s.1 + 1).card := by
    rw [← e1, ← e2]
    first
    | exact Finset.card_filter_add_card_filter_not _
  have hc := count_succ sz hsz s
  rw [hsh] at hc
  unfold nuNext at hc
  split_ifs with hs
  · rw [dite_eq_right (show ¬ (s.1 + 1 < n) by omega)] at hc
    have hlast : sg.natW s = 0 := by
      have e : s = ⟨n - 1, by omega⟩ := Fin.ext (by simp; omega)
      rw [e]
      exact natW_last sg (by omega)
    omega
  · have hs' : s.1 + 1 < n := by omega
    have hL1 : s.1 + 1 < N := by omega
    rw [dif_pos hs'] at hc
    have hb : (Finset.univ.filter fun k => k ∈ L ∧ sz k = s.1 + 1).card =
        (lam.w ⟨s.1 + 1, hL1⟩ - sg.w ⟨s.1 + 1, hs'⟩).toNat := by
      have := hL.2 ⟨s.1 + 1, hs'⟩
      rw [if_neg (show ¬ (((⟨s.1 + 1, hs'⟩ : Fin n) : ℕ) = 0) by simp)] at this
      exact this
    have hI1 : lam.w ⟨s.1 + 1, hL1⟩ ≤ sg.w s := (hI s).2
    have hI2 : sg.w ⟨s.1 + 1, hs'⟩ ≤ lam.w ⟨s.1 + 1, hL1⟩ := (hI ⟨s.1 + 1, hs'⟩).1
    have ha : ((sg.natW s : ℕ) : ℤ) + sg.detShift = sg.w s := natW_add sg s
    have hb2 : ((sg.natW ⟨s.1 + 1, hs'⟩ : ℕ) : ℤ) + sg.detShift = sg.w ⟨s.1 + 1, hs'⟩ := natW_add sg _
    have hX := Int.toNat_of_nonneg (sub_nonneg.mpr hI1)
    have hY := Int.toNat_of_nonneg (sub_nonneg.mpr hI2)
    show _ = (sg.w s - lam.w ⟨s.1 + 1, hL1⟩).toNat
    omega

theorem mlift_std {n N : ℕ} (h : n + 1 = N) (lam : DomWeight N) (sg : DomWeight n) (hI : Interlace h lam sg)
    {K : ℕ} (sz : Fin K → ℕ) (hsz : ∀ k, sz k ≤ n) (hsh : shapeDeg sz = sg.natW) (L : Finset (Fin K))
    (hL : GoodL h lam sg sz L) : Mlift h lam sg sz hsz L (stdT sz hsz) = xi ℤ h lam sg := by
  have hL' := hL
  unfold GoodL at hL'
  have hN : ∀ k, sz k + 1 ≤ N := fun k => by have := hsz k; omega
  unfold Mlift xi
  rw [Finset.prod_ite]
  let A : ℕ → MvPolynomial (Fin N × Fin N) ℤ := fun j =>
    if hj : j < n then initMinor ℤ (n := N) (rowsZ h ⟨j, hj⟩) (by show j + 1 ≤ N; omega) else 1
  let B : ℕ → MvPolynomial (Fin N × Fin N) ℤ := fun j =>
    if hj : j ≤ N then lpMinor ℤ (r := N) (n := N) j hj hj else 1
  have hA : ∀ k ∈ Finset.univ.filter (fun k => k ∈ L), lif h (stdT sz hsz k) (hN k) = A (sz k) := by
    intro k hk
    simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hk
    have hk' : sz k < n := sz_lt sg sz hsz hsh k (hL'.1 k hk)
    rw [lif_std h sz hsz k hk' (hN k)]
    have e : A (sz k) = initMinor ℤ (n := N) (rowsZ h ⟨sz k, hk'⟩) (hN k) := dif_pos hk'
    rw [e]
  have hB : ∀ k ∈ Finset.univ.filter (fun k => ¬ k ∈ L),
      unl h (stdT sz hsz k) (by have := hsz k; omega) = B (sz k) := by
    intro k _
    have hk' : sz k ≤ N := by have := hsz k; omega
    rw [unl_std h sz hsz k hk']
    have e : B (sz k) = lpMinor ℤ (r := N) (n := N) (sz k) hk' hk' := dif_pos hk'
    rw [e]
  rw [Finset.prod_congr rfl hA, Finset.prod_congr rfl hB]
  rw [prod_sz sz (Finset.univ.filter fun k => k ∈ L) n
    (fun k hk => sz_lt sg sz hsz hsh k (hL'.1 k (by simpa using hk))) A]
  rw [prod_sz sz (Finset.univ.filter fun k => ¬ k ∈ L) (n + 1) (fun k _ => Nat.lt_succ_of_le (hsz k)) B,
    Finset.prod_range_succ']
  have hB0 : B 0 = 1 := by
    have e : B 0 = lpMinor ℤ (r := N) (n := N) 0 (Nat.zero_le N) (Nat.zero_le N) := dif_pos (Nat.zero_le N)
    rw [e]
    simp [lpMinor]
  rw [hB0, one_pow, mul_one, ← Fin.prod_univ_eq_prod_range, ← Fin.prod_univ_eq_prod_range]
  unfold C0
  rw [← Finset.prod_mul_distrib, ← Finset.prod_mul_distrib]
  refine Finset.prod_congr rfl (fun i _ => ?_)
  have hi := i.2
  have cL : ((Finset.univ.filter fun k => k ∈ L).filter fun k => sz k = i.1).card =
      if i.1 = 0 then 0 else (bb h lam sg i).toNat := by
    rw [Finset.filter_filter]
    exact hL'.2 i
  have cN : ((Finset.univ.filter fun k => ¬ k ∈ L).filter fun k => sz k = i.1 + 1).card =
      if i.1 + 1 = n then 0 else (aa h lam sg i).toNat := by
    rw [Finset.filter_filter]
    exact card_filter_not_mem_sz_eq_succ h lam sg hI sz hsz hsh L hL i
  have eA : A i.1 = initMinor ℤ (n := N) (rowsZ h i) (by omega) := dif_pos hi
  have eB : B (i.1 + 1) = lpMinor ℤ (r := N) (n := N) (i.1 + 1) (by omega) (by omega) := dif_pos (by omega)
  rw [cL, cN, eA, eB]
  split_ifs <;> ring

theorem top_component_formula : TopPart := by
  intro n N h lam sg hI K sz hsz hsh L hL
  have hext : bideterminant ℤ sz hsz (stdT sz hsz) = extremal ℤ n sg := by
    rw [bidet_std sz hsz _ hsh]
    unfold extremal
    rfl
  refine ⟨?_, (tupCnt_std sz hsz).trans hsh, hext, mlift_std h lam sg hI sz hsz hsh L hL⟩
  intro J hJ
  by_cases hinj : ∀ k, Function.Injective (J k)
  · have hlt := top_entries sz hsz J hinj (hJ.trans hsh.symm)
    choose σ hσ using top_perm sz hsz J hinj hlt
    refine ⟨∏ k, (Equiv.Perm.sign (σ k) : ℤ), ?_, ?_⟩
    · have e1 : bideterminant ℤ sz hsz J = (∏ k, (Equiv.Perm.sign (σ k) : ℤ)) • bideterminant ℤ sz hsz (stdT sz hsz) := by
        unfold bideterminant
        rw [← prod_zsmul']
        refine Finset.prod_congr rfl (fun k _ => ?_)
        rw [hσ k, initMinor_perm]
      rw [e1, hext]
    · have e2 : Mlift h lam sg sz hsz L J =
          (∏ k, (Equiv.Perm.sign (σ k) : ℤ)) • Mlift h lam sg sz hsz L (stdT sz hsz) := by
        unfold Mlift
        rw [← mul_smul_comm, ← prod_zsmul']
        congr 1
        refine Finset.prod_congr rfl (fun k _ => ?_)
        rw [hσ k]
        split_ifs
        · exact lif_perm h _ _ _
        · exact unl_perm h _ _ _
      rw [e2, mlift_std h lam sg hI sz hsz hsh L hL]
  · obtain ⟨k0, hk0⟩ := not_forall.mp hinj
    refine ⟨0, ?_, ?_⟩
    · rw [zero_smul]
      unfold bideterminant
      exact Finset.prod_eq_zero (Finset.mem_univ k0) (initMinor_not_inj _ _ hk0)
    · rw [zero_smul]
      unfold Mlift
      apply mul_eq_zero_of_right
      apply Finset.prod_eq_zero (Finset.mem_univ k0)
      try dsimp only
      split_ifs
      · exact lif_not_inj h _ _ hk0
      · exact unl_not_inj h _ _ hk0

end PI.WGL.LTB
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftTupleB =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftTuple =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftTuple", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftTupleF\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftTupleB\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftTupleC\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftTupleD\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftTupleE\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalRingCardinality.Params\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.WGL

open Formalism.BasicNotions Formalism.GradedWeylDivisibility MvPolynomial

namespace LTF

open PI.WGL.LTA PI.WGL.LTM PI.WGL.LTC PI.WGL.LTD PI.WGL.LTE

theorem Mlift_rowW {n N : ℕ} (h : n + 1 = N) (lam : DomWeight N) (sg : DomWeight n) (hI : Interlace h lam sg)
    {K : ℕ} (sz : Fin K → ℕ) (hsz : ∀ k, sz k ≤ n) (hshape : shapeDeg sz = sg.natW) (L : Finset (Fin K))
    (hL : GoodL h lam sg sz L) (I : ∀ k, Fin (sz k) → Fin n) :
    IsWeightedHomogeneous (rowW N N) (Mlift h lam sg sz hsz L I) (liftWt h lam sg (tupCnt I)) := by
  classical
  have hH : IsWeightedHomogeneous (rowW N N) (Mlift h lam sg sz hsz L I)
      (w0r h lam sg + ∑ k, wk h (I k) (k ∈ L)) :=
    (constant_weighted_homogeneous h lam sg).mul (IsWeightedHomogeneous.prod _ _ _ (fun k _ => G_rowW h sz hsz L k (I k)))
  convert hH using 1
  funext a
  obtain ⟨av, hav⟩ := a
  simp only [Pi.add_apply, Finset.sum_apply, wk, constant_weight_apply, Pi.single_apply, ite_apply, Pi.zero_apply,
    Finset.sum_add_distrib, liftWt]
  by_cases ha : av < n
  · have hn : 0 < n := by omega
    rw [dite_eq_left ha, dite_eq_left (by omega), dite_eq_left hn, if_pos ha, if_neg (by omega)]
    have hS2 : (∑ k : Fin K, if k ∈ L then (if (⟨av, hav⟩ : Fin N) = ⟨N - 1, by omega⟩ then 1 else 0) else 0) = 0 := by
      apply Finset.sum_eq_zero
      intro k _
      have hne : (⟨av, hav⟩ : Fin N) ≠ ⟨N - 1, by omega⟩ := fun e => by rw [Fin.mk.injEq] at e; omega
      simp [hne]
    have hS1 : (∑ k : Fin K, ∑ q : Fin (sz k), if (⟨av, hav⟩ : Fin N) = eRow h (I k q) then 1 else 0) =
        tupCnt I ⟨av, ha⟩ := by
      simp only [tupCnt, Finset.card_filter]
      apply Finset.sum_congr rfl
      intro k _
      apply Finset.sum_congr rfl
      intro q _
      have : ((⟨av, hav⟩ : Fin N) = eRow h (I k q)) ↔ (I k q = ⟨av, ha⟩) := by
        simp only [eRow, Fin.ext_iff]; exact eq_comm
      by_cases hq : I k q = ⟨av, ha⟩
      · rw [if_pos (this.2 hq), if_pos hq]
      · rw [if_neg (fun e => hq (this.1 e)), if_neg hq]
    rw [hS1, hS2]
    have e3 := aLast_val h lam sg hI hn
    have e4 := sg_detShift sg hn
    have e5 := lam_detShift h lam
    omega
  · have hav' : av = n := by omega
    simp only [dif_neg ha, if_neg ha, if_pos hav', mul_zero, mul_one]
    have hS1 : (∑ k : Fin K, ∑ q : Fin (sz k), if (⟨av, hav⟩ : Fin N) = eRow h (I k q) then 1 else 0) = 0 := by
      apply Finset.sum_eq_zero; intro k _
      apply Finset.sum_eq_zero; intro q _
      rw [if_neg]
      intro e
      simp only [eRow, Fin.ext_iff] at e
      have := (I k q).2
      omega
    have hS2 : (∑ k : Fin K, if k ∈ L then (if (⟨av, hav⟩ : Fin N) = ⟨N - 1, by omega⟩ then 1 else 0) else 0) =
        L.card := by
      rw [Finset.sum_congr rfl (g := fun k => if k ∈ L then 1 else 0)]
      · rw [← Finset.card_filter]; congr 1; ext k; simp
      · intro k _
        rw [if_pos (Fin.ext (by simp; omega))]
    rw [hS1, hS2, cardL h lam sg sz hsz hshape L hL]
    have hsplit : (∑ i : Fin n, (bb h lam sg i).toNat) =
        (∑ i : Fin n, if i.1 = 0 then (bb h lam sg i).toNat else 0) +
          ∑ i : Fin n, (if i.1 = 0 then 0 else (bb h lam sg i).toNat) := by
      rw [← Finset.sum_add_distrib]
      apply Finset.sum_congr rfl
      intro i _
      split_ifs <;> simp
    rw [sum_ite_val (fun i : Fin n => (bb h lam sg i).toNat) 0] at hsplit
    have e6 := sumB h lam sg hI
    unfold dLast
    split_ifs at hsplit ⊢ with h1 h2 <;> omega

end LTF

theorem tuple_decomposition_formula : TupleCore := by
  intro n N h lam sg hI K sz hsz hshape
  obtain ⟨L, hL⟩ := LTD.goodL_exists h lam sg hI sz hshape
  obtain ⟨htop, hstd1, hstd2, hstd3⟩ := LTB.top_component_formula n N h lam sg hI K sz hsz hshape L hL
  refine ⟨LTM.Mlift h lam sg sz hsz L, fun I => ⟨?_, LTF.Mlift_rowW h lam sg hI sz hsz hshape L hL I,
    LTF.bidet_rowW sz hsz I⟩, fun I w hw => LTC.word_clause h lam sg sz hsz L I w hw, htop,
    ⟨LTM.stdT sz hsz, hstd1, hstd2, hstd3⟩⟩
  have hm := LTE.Mlift_mem_colWt h lam sg sz hsz L I
  rw [LTE.colWt_eq h lam sg hI sz hsz hshape L hL] at hm
  exact hm

end PI.WGL
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftTuple =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.NablaSqLeOfGen =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.NablaSqLeOfGen", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftDefs\npublic import Formalism.GradedWeylDivisibility.DualWeylDominanceOf\npublic import Formalism.GradedWeylDivisibility.FockSpaceTableaux.LRowdivLemmas\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalRingCardinality.Params\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.WGL

open Formalism.BasicNotions Formalism.GradedWeylDivisibility MvPolynomial

theorem nablaSq_le_of_gen (h4 : PI.GTBranch) {n N : ℕ} (h : n + 1 = N) (lam : DomWeight N)
    (P : Submodule ℂ (MvPolynomial (Fin N × Fin N) ℂ))
    (hP : ∀ (mu : DomWeight n), Interlace h lam mu →
      ∀ (φ : MvPolynomial (Fin n × Fin n) ℂ →ₗ[ℂ] MvPolynomial (Fin N × Fin N) ℂ), IsEqv h mu lam φ →
        ∀ s ∈ nablaSq ℂ n mu, φ s ∈ P) :
    nablaSq ℂ N lam ≤ P := by
  rw [(h4 n N h lam).2]
  refine iSup_le fun mu => iSup_le fun hmu => iSup_le fun φ => iSup_le fun hφ => ?_
  rw [Submodule.map_le_iff_le_comap]
  intro s hs
  exact hP mu hmu φ hφ s hs

theorem comp_gen (hW : EqvRowWt) {n N : ℕ} (h : n + 1 = N) (lam : DomWeight N) (mu : DomWeight n)
    (hmu : Interlace h lam mu)
    (φ : MvPolynomial (Fin n × Fin n) ℂ →ₗ[ℂ] MvPolynomial (Fin N × Fin N) ℂ) (hφ : IsEqv h mu lam φ)
    (Z : MvPolynomial (Fin N × Fin N) ℂ →ₗ[ℂ] MvPolynomial (Fin N × Fin N) ℂ) (z : ℂ)
    (hz : ∀ s ∈ nablaSq ℂ n mu, Z (φ s) = z • φ s) (ν : Fin N → ℕ) (s : MvPolynomial (Fin n × Fin n) ℂ)
    (hs : s ∈ nablaSq ℂ n mu) :
    Z (weightedHomogeneousComponent (rowW N N) ν (φ s)) =
      weightedHomogeneousComponent (rowW N N) ν (Z (φ s)) := by

  have hterm : ∀ ω : Fin n → ℕ,
      Z (weightedHomogeneousComponent (rowW N N) ν (φ (weightedHomogeneousComponent (rowW n n) ω s))) =
        z • weightedHomogeneousComponent (rowW N N) ν (φ (weightedHomogeneousComponent (rowW n n) ω s)) := by
    intro ω
    have hc : weightedHomogeneousComponent (rowW n n) ω s ∈ nablaSq ℂ n mu :=
      dualWeylRowGraded ℂ n n mu.natW ω s hs
    have hhom : IsWeightedHomogeneous (rowW N N)
        (φ (weightedHomogeneousComponent (rowW n n) ω s)) (liftWt h lam mu ω) :=
      hW n N h lam mu hmu φ hφ ω _ hc (weightedHomogeneousComponent_isWeightedHomogeneous ω s)
    by_cases hν : ν = liftWt h lam mu ω
    · subst hν
      rw [hhom.weightedHomogeneousComponent_same]
      exact hz _ hc
    · rw [hhom.weightedHomogeneousComponent_ne ν hν, map_zero, smul_zero]
  have hsum : s = ∑ ω ∈ (weightedHomogeneousComponent_finsupp (w := rowW n n) s).toFinset,
      weightedHomogeneousComponent (rowW n n) ω s := by
    conv_lhs => rw [← finsum_weightedHomogeneousComponent (rowW n n) s]
    exact finsum_eq_sum _ _
  rw [hz s hs, map_smul]
  conv_lhs => rw [hsum]
  conv_rhs => rw [hsum]

  simp only [map_sum, Finset.smul_sum]
  exact Finset.sum_congr rfl fun ω _ => hterm ω

theorem zComm_of (h4 : PI.GTBranch) (hD : EqvDiv) (hW : EqvRowWt) : ZComm := by
  intro n N h lam Z hZ

  have hcomp : ∀ ν : Fin N → ℕ, ∀ f ∈ nablaSq ℂ N lam,
      Z (weightedHomogeneousComponent (rowW N N) ν f) = weightedHomogeneousComponent (rowW N N) ν (Z f) := by
    intro ν f hf
    have hle := nablaSq_le_of_gen h4 h lam
      (LinearMap.eqLocus (Z ∘ₗ weightedHomogeneousComponent (rowW N N) ν)
        (weightedHomogeneousComponent (rowW N N) ν ∘ₗ Z)) (by
        intro mu hmu φ hφ s hs
        obtain ⟨z, hz⟩ := hZ mu hmu φ hφ
        rw [LinearMap.mem_eqLocus]
        exact comp_gen hW h lam mu hmu φ hφ Z z hz ν s hs)
    have := hle hf
    rw [LinearMap.mem_eqLocus] at this
    exact this
  refine ⟨?_, ?_, ?_⟩
  · intro f hf
    have hle := nablaSq_le_of_gen h4 h lam ((nablaSq ℂ N lam).comap Z) (by
      intro mu hmu φ hφ s hs
      obtain ⟨z, hz⟩ := hZ mu hmu φ hφ
      rw [Submodule.mem_comap, hz s hs]
      exact Submodule.smul_mem _ z (hφ.1 s hs))
    exact hle hf
  · intro a b hab k f hf
    have hle := nablaSq_le_of_gen h4 h lam
      (LinearMap.eqLocus (Z ∘ₗ rowDivL ℂ (eRow h a) (eRow h b) k)
        (rowDivL ℂ (eRow h a) (eRow h b) k ∘ₗ Z)) (by
        intro mu hmu φ hφ s hs
        obtain ⟨z, hz⟩ := hZ mu hmu φ hφ
        rw [LinearMap.mem_eqLocus]
        simp only [LinearMap.comp_apply, rowDivL_apply]
        have hs' : rowDiv ℂ a b k s ∈ nablaSq ℂ n mu := rowDivStable ℂ n n mu.natW a b k s hs
        rw [← hD n N h mu lam φ hφ a b hab k s hs, hz _ hs', hz s hs, rowDiv_smul,
          hD n N h mu lam φ hφ a b hab k s hs])
    have := hle hf
    rw [LinearMap.mem_eqLocus] at this
    simpa only [LinearMap.comp_apply, rowDivL_apply] using this
  · intro ω f hf hhom
    rw [← hhom.weightedHomogeneousComponent_same, hcomp ω f hf]
    exact weightedHomogeneousComponent_isWeightedHomogeneous ω _

end PI.WGL
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.NablaSqLeOfGen =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ConstructionLift =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ConstructionLift", "h": "module\n\npublic import Formalism.PeriodIntegrals.HwIrred\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ZScalarVanish\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftAsm\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftDecomp\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftEqvDiv\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftEqvWt\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftFock\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.LiftTuple\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.NablaSqLeOfGen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalRingCardinality.Params\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.WGL

open Formalism.BasicNotions MvPolynomial

theorem liftMod_of (h3 : PI.HwIrred) (h4 : PI.GTBranch) (hZ : CapelliZ) (hV : ZScalarVanish)
    (hN : Numbers) (hX : XiFacts) : LiftMod :=
  liftMod_asm hZ hV hN hX equivariant_divisibility equivariant_partial_weight (decomp_of h4 equivariant_last_degree)
    (zComm_of h4 equivariant_divisibility equivariant_partial_weight) (fockDetect_of h3 equivariant_divisibility) tuple_decomposition_formula

end PI.WGL
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.GelfandTsetlinLowering.ConstructionLift =====
