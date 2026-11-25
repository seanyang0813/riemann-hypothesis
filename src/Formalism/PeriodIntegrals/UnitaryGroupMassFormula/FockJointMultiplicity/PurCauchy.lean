module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockJointMultiplicity.PurElim
public import Mathlib.Algebra.MvPolynomial.Funext
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockJointMultiplicity.PurInv
import Mathlib.Tactic.Linter.HaveILetI
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockJointMultiplicity.PurDiag, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockJointMultiplicity.PurCauchy

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockJointMultiplicity.PurDiag =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockJointMultiplicity.PurDiag", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockJointMultiplicity.PurElim\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockJointMultiplicity.PurInv\npublic import Mathlib.Algebra.MvPolynomial.Funext\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Classical

namespace PI.FJMB

variable {σ : Type*}

private theorem aeval_fill_sub_multiple_of_zeroth_line {m n : ℕ} (ι : Fin (m + 1) × Fin n → σ) (hι : Function.Injective ι)
    (f : MvPolynomial σ ℂ) (hf : ∀ b : Fin (m + 1), 0 < b → PI.FJM.bRow ι 0 b f = 0)
    (M : Fin (m + 1) → Fin n → ℂ) (p : σ → ℂ) (c : Fin n) :
    ∀ S : Finset (Fin (m + 1)), (0 : Fin (m + 1)) ∉ S →
      aeval (fill ι (fun i k => if i ∈ S then M i k - M i c / M 0 c * M 0 k else M i k) p) f =
        aeval (fill ι M p) f := by
  intro S
  refine Finset.induction_on S ?_ ?_
  · intro _
    simp
  · intro b S hb ih hS
    have hb0 : b ≠ 0 := by
      rintro rfl
      exact hS (Finset.mem_insert_self _ _)
    have hS0 : (0 : Fin (m + 1)) ∉ S := fun h => hS (Finset.mem_insert_of_mem h)
    rw [← ih hS0]
    have hfun : (fun i k => if i ∈ insert b S then M i k - M i c / M 0 c * M 0 k else M i k) =
        rowAddM (fun i k => if i ∈ S then M i k - M i c / M 0 c * M 0 k else M i k) 0 b
          (-(M b c / M 0 c)) := by
      funext i k
      by_cases hib : i = b
      · subst hib
        simp [rowAddM, hb, hS0] <;> ring
      · simp [rowAddM, hib]
    rw [hfun]
    exact row_inv ι hι 0 b (Ne.symm hb0) f (hf b (Fin.pos_of_ne_zero hb0)) _ p _

private theorem aeval_fill_column_elimination {m n : ℕ} (ι : Fin m × Fin (n + 1) → σ) (hι : Function.Injective ι)
    (f : MvPolynomial σ ℂ) (hf : ∀ d : Fin (n + 1), 0 < d → PI.FJM.bCol ι 0 d f = 0)
    (M : Fin m → Fin (n + 1) → ℂ) (p : σ → ℂ) (r : Fin m) :
    ∀ T : Finset (Fin (n + 1)), (0 : Fin (n + 1)) ∉ T →
      aeval (fill ι (fun i k => if k ∈ T then M i k - M r k / M r 0 * M i 0 else M i k) p) f =
        aeval (fill ι M p) f := by
  intro T
  refine Finset.induction_on T ?_ ?_
  · intro _
    simp
  · intro b T hb ih hT
    have hb0 : b ≠ 0 := by
      rintro rfl
      exact hT (Finset.mem_insert_self _ _)
    have hT0 : (0 : Fin (n + 1)) ∉ T := fun h => hT (Finset.mem_insert_of_mem h)
    rw [← ih hT0]
    have hfun : (fun i k => if k ∈ insert b T then M i k - M r k / M r 0 * M i 0 else M i k) =
        colAddM (fun i k => if k ∈ T then M i k - M r k / M r 0 * M i 0 else M i k) 0 b
          (-(M r b / M r 0)) := by
      funext i k
      by_cases hkb : k = b
      · subst hkb
        simp [colAddM, hb, hT0] <;> ring
      · simp [colAddM, hkb]
    rw [hfun]
    exact col_inv ι hι 0 b (Ne.symm hb0) f (hf b (Fin.pos_of_ne_zero hb0)) _ p _

theorem elim_step {m n : ℕ} (ι : Fin (m + 1) × Fin (n + 1) → σ) (hι : Function.Injective ι)
    (f : MvPolynomial σ ℂ) (hf : HWB ι f) (hg : aeval (killS (edge ι)) f = 0) : f = 0 := by
  haveI : Infinite ℂ := Infinite.of_injective (Nat.cast : ℕ → ℂ) Nat.cast_injective
  have key : ∀ y : σ → ℂ, y (ι (0, 0)) ≠ 0 → aeval y f = 0 := by
    intro y hc
    let M : Fin (m + 1) → Fin (n + 1) → ℂ := fun i k => y (ι (i, k))
    let M1 : Fin (m + 1) → Fin (n + 1) → ℂ := fun i k =>
      if i ∈ Finset.univ.erase (0 : Fin (m + 1)) then M i k - M i 0 / M 0 0 * M 0 k else M i k
    let M2 : Fin (m + 1) → Fin (n + 1) → ℂ := fun i k =>
      if k ∈ Finset.univ.erase (0 : Fin (n + 1)) then M1 i k - M1 0 k / M1 0 0 * M1 i 0 else M1 i k
    have hy : fill ι M y = y := by
      funext v
      by_cases hv : ∃ x, ι x = v
      · obtain ⟨x, rfl⟩ := hv
        exact fill_ι hι M y x
      · push_neg at hv
        exact fill_not ι M y v hv
    have h1 : aeval (fill ι M1 y) f = aeval (fill ι M y) f :=
      aeval_fill_sub_multiple_of_zeroth_line ι hι f (fun b hb => hf.1 0 b hb) M y 0 (Finset.univ.erase 0) (by simp)
    have h2 : aeval (fill ι M2 y) f = aeval (fill ι M1 y) f :=
      aeval_fill_column_elimination ι hι f (fun d hd => hf.2 0 d hd) M1 y 0 (Finset.univ.erase 0) (by simp)
    have hvan : ∀ v ∈ edge ι, fill ι M2 y v = 0 := by
      intro v hv
      simp only [edge, Set.mem_setOf_eq] at hv
      rcases hv with ⟨l, rfl⟩ | ⟨j, rfl⟩
      · rw [fill_ι hι]
        simp [M2, M1, M]
        all_goals first
          | (field_simp; done)
          | (field_simp; ring)
      · rw [fill_ι hι]
        simp [M2, M1, M]
        all_goals first
          | (field_simp; done)
          | (field_simp; ring)
    have h3 := aeval_killS_of_zero (edge ι) (fill ι M2 y) hvan f
    rw [hg, map_zero] at h3
    calc aeval y f = aeval (fill ι M y) f := by rw [hy]
      _ = aeval (fill ι M1 y) f := h1.symm
      _ = aeval (fill ι M2 y) f := h2.symm
      _ = 0 := h3.symm
  have hmul : f * X (ι (0, 0)) = 0 := by
    apply MvPolynomial.funext
    intro y
    rw [map_mul, MvPolynomial.eval_X, map_zero]
    by_cases hy0 : y (ι (0, 0)) = 0
    · rw [hy0, mul_zero]
    · have e : MvPolynomial.eval y f = aeval y f := by
        first
          | rfl
      rw [e, key y hy0, zero_mul]
  exact (mul_eq_zero.mp hmul).resolve_right (MvPolynomial.X_ne_zero _)

theorem diag_zero : ∀ (m n : ℕ) (ι : Fin m × Fin n → σ), Function.Injective ι → ∀ f : MvPolynomial σ ℂ,
    HWB ι f → aeval (killS (offD ι)) f = 0 → f = 0 := by
  intro m
  induction m with
  | zero =>
    intro n ι _ f _ hg
    have hempty : offD ι = ∅ := by
      ext v
      simp only [offD, Set.mem_setOf_eq, Set.mem_empty_iff_false, iff_false]
      rintro ⟨i, _, _, _⟩
      exact Fin.elim0 i
    rw [hempty, aeval_killS_empty] at hg
    exact hg
  | succ m ih =>
    intro n
    cases n with
    | zero =>
      intro ι _ f _ hg
      have hempty : offD ι = ∅ := by
        ext v
        simp only [offD, Set.mem_setOf_eq, Set.mem_empty_iff_false, iff_false]
        rintro ⟨_, k, _, _⟩
        exact Fin.elim0 k
      rw [hempty, aeval_killS_empty] at hg
      exact hg
    | succ n =>
      intro ι hι f hf hg
      have hinj : Function.Injective (fun x : Fin m × Fin n => ι (x.1.succ, x.2.succ)) := by
        intro x y hxy
        have h := hι hxy
        simp only [Prod.mk.injEq, Fin.succ_inj] at h
        exact Prod.ext h.1 h.2
      apply elim_step ι hι f hf
      apply ih n (fun x : Fin m × Fin n => ι (x.1.succ, x.2.succ)) hinj _ (hwb_restrict ι hι f hf)
      rw [aeval_killS_union, offD_step ι hι]
      exact hg

end PI.FJMB
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockJointMultiplicity.PurDiag =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockJointMultiplicity.PurCauchy =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockJointMultiplicity.PurCauchy", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockJointMultiplicity.PurElim\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockJointMultiplicity.PurDiag\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Classical

namespace PI.FJMB

def HypAnti : Prop := ∀ (σ : Type) (m n : ℕ) (ι : Fin m × Fin n → σ), Function.Injective ι →
  ∀ (α : Fin m → ℕ) (P : MvPolynomial σ ℂ), P ≠ 0 → (∀ a b : Fin m, a < b → PI.FJM.bRow ι a b P = 0) →
  (∀ e ∈ P.support, ∀ i, ∑ k : Fin n, e (ι (i, k)) = α i) → Antitone α

def HypShape : Prop := ∀ (σ : Type) (m : ℕ) (ι : Fin m × Fin m → σ), Function.Injective ι →
  ∀ (α : Fin m → ℕ), Antitone α →
  HWB ι (PI.FJM.shapeProd (Matrix.of fun (i : Fin m) (k : Fin m) => (X (ι (i, k)) : MvPolynomial σ ℂ))
    (List.ofFn α)) ∧
  aeval (killS (offD ι)) (PI.FJM.shapeProd (Matrix.of fun (i : Fin m) (k : Fin m) =>
    (X (ι (i, k)) : MvPolynomial σ ℂ)) (List.ofFn α)) = ∏ i, X (ι (i, i)) ^ α i

def diagOne' {σ : Type*} {m n : ℕ} (ι : Fin m × Fin n → σ) : σ → MvPolynomial σ ℂ := fun v =>
  if v ∈ offD ι then 0 else if ∃ i k, ι (i, k) = v ∧ (i : ℕ) = k then 1 else X v

def HypDiag : Prop := ∀ (σ : Type) (m : ℕ) (ι : Fin m × Fin m → σ), Function.Injective ι →
  ∀ (α : Fin m → ℕ) (P : MvPolynomial σ ℂ), (∀ e ∈ P.support, ∀ i, ∑ k : Fin m, e (ι (i, k)) = α i) →
  aeval (killS (offD ι)) P = (∏ i, X (ι (i, i)) ^ α i) * aeval (diagOne' ι) P

def HypFree : Prop := ∀ (σ : Type) (m n : ℕ) (ι : Fin m × Fin n → σ), Function.Injective ι →
  ∀ P : MvPolynomial σ ℂ, ∀ e ∈ (aeval (diagOne' ι) P).support, ∀ x, e (ι x) = 0

variable {σ : Type*}

theorem exists_support_of_killS {S : Set σ} {P : MvPolynomial σ ℂ} (h : aeval (killS S) P ≠ 0) :
    ∃ e ∈ P.support, ∀ v ∈ S, e v = 0 := by
  by_contra hne
  push_neg at hne
  apply h
  conv_lhs => rw [P.as_sum]

  rw [map_sum]
  refine Finset.sum_eq_zero fun e he => ?_
  obtain ⟨v, hvS, hv⟩ := hne e he
  rw [aeval_monomial, Finsupp.prod]
  refine mul_eq_zero_of_right _ ?_
  refine Finset.prod_eq_zero (Finsupp.mem_support_iff.mpr hv) ?_
  simp [killS, hvS, hv]

theorem aeval_killS_free {S : Set σ} {Q : MvPolynomial σ ℂ} (h : ∀ e ∈ Q.support, ∀ v ∈ S, e v = 0) :
    aeval (killS S) Q = Q := by
  conv_rhs => rw [Q.as_sum]
  conv_lhs => rw [Q.as_sum]

  rw [map_sum]
  refine Finset.sum_congr rfl fun e he => ?_
  rw [aeval_monomial, monomial_eq, Finsupp.prod, Finsupp.prod, algebraMap_eq]
  congr 1
  refine Finset.prod_congr rfl fun v hv => ?_
  have hvS : v ∉ S := fun hvS => (Finsupp.mem_support_iff.mp hv) (h e he v hvS)
  simp only [killS, if_neg hvS]

private theorem pderiv_eq_zero_of_forall_support_apply_eq_zero {v : σ} {Q : MvPolynomial σ ℂ} (h : ∀ e ∈ Q.support, e v = 0) :
    pderiv v Q = 0 := by
  conv_lhs => rw [Q.as_sum]

  rw [map_sum]
  refine Finset.sum_eq_zero fun e he => ?_
  simp [pderiv_monomial, h e he]

theorem bRow_mul_free {m n : ℕ} (ι : Fin m × Fin n → σ) (a b : Fin m) (S Q : MvPolynomial σ ℂ)
    (hQ : ∀ e ∈ Q.support, ∀ x, e (ι x) = 0) : PI.FJM.bRow ι a b (S * Q) = PI.FJM.bRow ι a b S * Q := by
  show (∑ k : Fin n, LinearMap.mulLeft ℂ (X (ι (a, k))) * (pderiv (ι (b, k))).toLinearMap : Module.End ℂ (MvPolynomial σ ℂ)) (S * Q) =
    (∑ k : Fin n, LinearMap.mulLeft ℂ (X (ι (a, k))) * (pderiv (ι (b, k))).toLinearMap : Module.End ℂ (MvPolynomial σ ℂ)) S * Q
  rw [LinearMap.sum_apply, LinearMap.sum_apply, Finset.sum_mul]
  refine Finset.sum_congr rfl fun k _ => ?_
  change X (ι (a, k)) * pderiv (ι (b, k)) (S * Q) = X (ι (a, k)) * pderiv (ι (b, k)) S * Q
  have hl := (pderiv (ι (b, k))).leibniz S Q
  rw [pderiv_eq_zero_of_forall_support_apply_eq_zero fun e he => hQ e he (b, k), smul_zero, zero_add, smul_eq_mul] at hl
  rw [hl]
  ring

theorem bCol_mul_free {m n : ℕ} (ι : Fin m × Fin n → σ) (c d : Fin n) (S Q : MvPolynomial σ ℂ)
    (hQ : ∀ e ∈ Q.support, ∀ x, e (ι x) = 0) : PI.FJM.bCol ι c d (S * Q) = PI.FJM.bCol ι c d S * Q := by
  show (∑ i : Fin m, LinearMap.mulLeft ℂ (X (ι (i, c))) * (pderiv (ι (i, d))).toLinearMap : Module.End ℂ (MvPolynomial σ ℂ)) (S * Q) =
    (∑ i : Fin m, LinearMap.mulLeft ℂ (X (ι (i, c))) * (pderiv (ι (i, d))).toLinearMap : Module.End ℂ (MvPolynomial σ ℂ)) S * Q
  rw [LinearMap.sum_apply, LinearMap.sum_apply, Finset.sum_mul]
  refine Finset.sum_congr rfl fun i _ => ?_
  change X (ι (i, c)) * pderiv (ι (i, d)) (S * Q) = X (ι (i, c)) * pderiv (ι (i, d)) S * Q
  have hl := (pderiv (ι (i, d))).leibniz S Q
  rw [pderiv_eq_zero_of_forall_support_apply_eq_zero fun e he => hQ e he (i, d), smul_zero, zero_add, smul_eq_mul] at hl
  rw [hl]
  ring

theorem cauchyHW_of (hA : HypAnti) (hS : HypShape) (hD : HypDiag) (hF : HypFree) : PI.FJM.CauchyHW := by
  intro τ m n ι hι α β P hP hrow hcol hsum hα hβ
  have hinvP : HWB ι P := ⟨hrow, hcol⟩
  have hne : aeval (killS (offD ι)) P ≠ 0 := fun h0 =>
    hP (diag_zero m n ι hι P hinvP h0)
  obtain ⟨e, heP, he0⟩ := exists_support_of_killS hne
  have hoff : ∀ (i : Fin m) (k : Fin n), (i : ℕ) ≠ k → e (ι (i, k)) = 0 :=
    fun i k h => he0 _ ⟨i, k, rfl, h⟩
  have hrowsum : ∀ (i : Fin m) (k : Fin n), (i : ℕ) = k → α i = e (ι (i, k)) := by
    intro i k hik
    rw [← (hsum e heP).1 i, Finset.sum_eq_single k]
    · intro k' _ hk'
      exact hoff i k' fun h => hk' (Fin.ext (h.symm.trans hik))
    · intro h
      exact absurd (Finset.mem_univ k) h
  have hcolsum : ∀ (i : Fin m) (k : Fin n), (i : ℕ) = k → β k = e (ι (i, k)) := by
    intro i k hik
    rw [← (hsum e heP).2 k, Finset.sum_eq_single i]
    · intro i' _ hi'
      exact hoff i' k fun h => hi' (Fin.ext (h.trans hik.symm))
    · intro h
      exact absurd (Finset.mem_univ i) h
  have hrowlt : ∀ i : Fin m, (i : ℕ) < n := by
    intro i
    by_contra hi
    push_neg at hi
    have h0 : α i = 0 := by
      rw [← (hsum e heP).1 i]
      exact Finset.sum_eq_zero fun k _ => hoff i k (by have := k.isLt; omega)
    exact (hα i).ne' h0
  have hcollt : ∀ k : Fin n, (k : ℕ) < m := by
    intro k
    by_contra hk
    push_neg at hk
    have h0 : β k = 0 := by
      rw [← (hsum e heP).2 k]
      exact Finset.sum_eq_zero fun i _ => hoff i k (by have := i.isLt; omega)
    exact (hβ k).ne' h0
  have hmn : m = n := by
    apply le_antisymm
    · by_contra h
      push_neg at h
      exact lt_irrefl n (hrowlt ⟨n, h⟩)
    · by_contra h
      push_neg at h
      exact lt_irrefl m (hcollt ⟨m, h⟩)
  have hanti : Antitone α := hA τ m n ι hι α P hP hrow fun e he i => (hsum e he).1 i
  refine ⟨hmn, hanti, fun i k h => (hrowsum i k h).trans (hcolsum i k h).symm, ?_⟩
  subst n
  obtain ⟨hMinv, hMdiag⟩ := hS τ m ι hι α hanti
  obtain ⟨hMr, hMc⟩ := hMinv
  have hDP := hD τ m ι hι α P fun e he i => (hsum e he).1 i
  have hFP := hF τ m m ι hι P
  obtain ⟨Q, hQ⟩ : ∃ Q, Q = aeval (diagOne' ι) P := ⟨_, rfl⟩
  rw [← hQ] at hDP hFP
  refine ⟨Q, hFP, ?_⟩
  rw [← sub_eq_zero]
  refine diag_zero m m ι hι _ ⟨fun a b hab => ?_, fun c d hcd => ?_⟩ ?_
  · rw [map_sub, bRow_mul_free ι a b _ Q hFP, hrow a b hab, hMr a b hab, zero_mul, sub_zero]
  · rw [map_sub, bCol_mul_free ι c d _ Q hFP, hcol c d hcd, hMc c d hcd, zero_mul, sub_zero]
  · have hQfree : ∀ f ∈ Q.support, ∀ v ∈ offD ι, f v = 0 := by
      rintro f hf v ⟨i, k, rfl, -⟩
      exact hFP f hf (i, k)
    rw [map_sub, map_mul, hMdiag, aeval_killS_free hQfree, hDP, sub_self]

end PI.FJMB
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FockJointMultiplicity.PurCauchy =====
