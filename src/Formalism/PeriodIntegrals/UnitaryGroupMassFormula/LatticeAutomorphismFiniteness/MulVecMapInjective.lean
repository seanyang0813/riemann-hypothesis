module

public import Formalism.SatakeDualWeyl.Statement
public import Formalism.LocalRingCardinality.DataSpaces
public import Lemmata.GeneralBFactUpperAltForm.Imports
import Mathlib.Tactic.Linter.Style
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountPositivity.CardLeOfNegFamily

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismFiniteness.SylvesterLe, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismFiniteness.MulVecMapInjective

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismFiniteness.SylvesterLe =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismFiniteness.SylvesterLe", "h": "module\n\npublic import Formalism.SatakeDualWeyl.Statement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.AutLzFinite.SlopeTestRemainingChoices

open Matrix

theorem cT_conj_eq {m p : Type} (M : Matrix m p ℂ) : Formalism.UG.cT (starRingEnd ℂ) M = Mᴴ := by
  ext i j
  simp [Formalism.UG.cT]

theorem form_Jpq (p q : ℕ) (y : Fin p ⊕ Fin q → ℂ) :
    star y ⬝ᵥ (Formalism.UG.Jpq p q *ᵥ y) =
      (∑ i, star (y (Sum.inl i)) * y (Sum.inl i)) - ∑ j, star (y (Sum.inr j)) * y (Sum.inr j) := by
  unfold Formalism.UG.Jpq
  simp [dotProduct, Fintype.sum_sum_type, Matrix.fromBlocks_mulVec, Matrix.neg_mulVec,
    Function.comp_def, sub_eq_add_neg]

theorem sylvester_le {n k : Type} [Fintype n] [DecidableEq n] [Fintype k] [DecidableEq k]
    (J : Matrix n n ℂ) {p q : ℕ} (hJ : Formalism.UG.HasSignature J p q) (B : Matrix n k ℂ)
    (hB : Function.Injective B.mulVec)
    (hneg : ∀ v : k → ℂ, (star (B *ᵥ v) ⬝ᵥ (J *ᵥ (B *ᵥ v))).re ≤ 0) : Fintype.card k ≤ q := by
  classical
  obtain ⟨e, P, hP⟩ := hJ
  rw [cT_conj_eq] at hP
  by_contra hcon
  push_neg at hcon
  let T : (k → ℂ) →ₗ[ℂ] (Fin q → ℂ) := (LinearMap.funLeft ℂ ℂ Sum.inr) ∘ₗ
    (Matrix.mulVecLin ((P⁻¹ : GL (Fin p ⊕ Fin q) ℂ) : Matrix (Fin p ⊕ Fin q) (Fin p ⊕ Fin q) ℂ)) ∘ₗ
    (LinearMap.funLeft ℂ ℂ e.symm) ∘ₗ (Matrix.mulVecLin B)
  have hker : LinearMap.ker T ≠ ⊥ := by
    apply LinearMap.ker_ne_bot_of_finrank_lt
    rw [Module.finrank_fin_fun, Module.finrank_fintype_fun_eq_card]
    exact hcon
  obtain ⟨v, hvK, hv0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hker
  have hTv : T v = 0 := LinearMap.mem_ker.1 hvK
  have hyr : ∀ j, (((P⁻¹ : GL (Fin p ⊕ Fin q) ℂ) : Matrix (Fin p ⊕ Fin q) (Fin p ⊕ Fin q) ℂ) *ᵥ
      ((B *ᵥ v) ∘ e.symm)) (Sum.inr j) = 0 := fun j => congrFun hTv j
  set w : n → ℂ := B *ᵥ v with hwdef
  set y : Fin p ⊕ Fin q → ℂ :=
    ((P⁻¹ : GL (Fin p ⊕ Fin q) ℂ) : Matrix (Fin p ⊕ Fin q) (Fin p ⊕ Fin q) ℂ) *ᵥ (w ∘ e.symm) with hydef
  have hw : w ∘ e.symm = (P : Matrix (Fin p ⊕ Fin q) (Fin p ⊕ Fin q) ℂ) *ᵥ y := by
    rw [hydef, Matrix.mulVec_mulVec, Units.mul_inv, Matrix.one_mulVec]
  have hwne : w ≠ 0 := by
    intro h
    apply hv0
    apply hB
    show B *ᵥ v = B *ᵥ 0
    rw [Matrix.mulVec_zero]
    exact h
  have hyne : y ≠ 0 := by
    intro h
    apply hwne
    funext i
    have h3 := congrFun hw (e i)
    rw [h, Matrix.mulVec_zero] at h3
    simpa using h3
  obtain ⟨i, hi⟩ : ∃ i, y (Sum.inl i) ≠ 0 := by
    by_contra hall
    push_neg at hall
    apply hyne
    funext s
    cases s with
    | inl i => exact hall i
    | inr j => exact hyr j
  have h1 : star w ⬝ᵥ (J *ᵥ w) = star (w ∘ e.symm) ⬝ᵥ (J.reindex e e *ᵥ (w ∘ e.symm)) := by
    simp only [dotProduct, mulVec, Matrix.reindex_apply, Matrix.submatrix_apply, Function.comp_apply,
      Pi.star_apply]
    refine Fintype.sum_equiv e _ _ (fun a => ?_)
    simp only [Equiv.symm_apply_apply]
    congr 1
    exact Fintype.sum_equiv e _ _ (fun b => by simp only [Equiv.symm_apply_apply])
  have hform : star w ⬝ᵥ (J *ᵥ w) = star y ⬝ᵥ (Formalism.UG.Jpq p q *ᵥ y) := by
    rw [h1, hw, Matrix.star_mulVec, ← Matrix.dotProduct_mulVec, Matrix.mulVec_mulVec,
      Matrix.mulVec_mulVec, hP]
  have hre : ∀ z : ℂ, (star z * z).re = Complex.normSq z := fun z => by
    rw [Complex.star_def, Complex.mul_re, Complex.conj_re, Complex.conj_im, Complex.normSq_apply]
    ring
  have hpos : 0 < (star w ⬝ᵥ (J *ᵥ w)).re := by
    rw [hform, form_Jpq]
    simp only [hyr, mul_zero, Finset.sum_const_zero, sub_zero, Complex.re_sum, hre]
    exact Finset.sum_pos' (fun j _ => Complex.normSq_nonneg _)
      ⟨i, Finset.mem_univ _, Complex.normSq_pos.2 hi⟩
  have := hneg v
  linarith

end PI.AutLzFinite.SlopeTestRemainingChoices
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismFiniteness.SylvesterLe =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismFiniteness.MulVecMapInjective =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismFiniteness.MulVecMapInjective", "h": "module\n\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.CountPositivity.CardLeOfNegFamily\npublic import Formalism.LocalRingCardinality.DataSpaces\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismFiniteness.SylvesterLe\npublic import Lemmata.GeneralBFactUpperAltForm.Imports\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.AutLzFinite.SlopeTestRemainingChoices

open Matrix Formalism.BasicNotions

variable {E : Type} [Field E] [NumberField E] [StarRing E] (S : HSpace E)

theorem hT_expand (x y : S.V) :
    S.hT x y = ∑ i, ∑ j, star (S.frame.repr x i) * S.gram i j * S.frame.repr y j := by
  apply PI.CntNotPosW.hT_expand'

theorem herm_swap (x y : S.V) : S.hT y x = star (S.hT x y) := by
  rw [← S.herm.eq x y]; rfl

def coordC {k : Type} (τ : E →+* ℂ) (u : k → S.V) : Matrix (Fin S.rank) k ℂ :=
  Matrix.of fun i a => τ (S.frame.repr (u a) i)

theorem gram_entry (hstar : ∀ (τ : E →+* ℂ) (a : E), τ (star a) = starRingEnd ℂ (τ a))
    {k : Type} (τ : E →+* ℂ) (u : k → S.V) (a b : k) :
    ((coordC S τ u)ᴴ * S.gram.map τ * coordC S τ u) a b = τ (S.hT (u a) (u b)) := by
  rw [hT_expand, Matrix.mul_apply]

  simp only [Matrix.mul_apply, Matrix.conjTranspose_apply, coordC, Matrix.of_apply, Matrix.map_apply,
  map_sum, map_mul, hstar, Finset.sum_mul]
  rw [Finset.sum_comm]
  rfl

theorem form_eq {n k : Type} [Fintype n] [Fintype k] (B : Matrix n k ℂ) (J : Matrix n n ℂ) (v : k → ℂ) :
    star (B *ᵥ v) ⬝ᵥ (J *ᵥ (B *ᵥ v)) = star v ⬝ᵥ ((Bᴴ * J * B) *ᵥ v) := by
  rw [Matrix.star_mulVec, ← Matrix.dotProduct_mulVec, ← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec]

theorem coord_injective {k : Type} [Fintype k] (u : k → S.V) (hu : LinearIndependent E u) :
    Function.Injective (Matrix.of fun i a => S.frame.repr (u a) i).mulVec := by
  intro c d hcd
  have key : ∀ c : k → E, (Matrix.of fun i a => S.frame.repr (u a) i) *ᵥ c = S.frame.repr (∑ a, c a • u a) := by
    intro c; ext i

    simp [Matrix.mulVec, dotProduct, map_sum, mul_comm]
  rw [key, key] at hcd
  have h2 := S.frame.repr.injective (Finsupp.ext fun i => congrFun hcd i)
  rw [← sub_eq_zero, ← Finset.sum_sub_distrib] at h2
  simp_rw [← sub_smul] at h2
  have h3 := (Fintype.linearIndependent_iff.mp hu) (fun a => c a - d a) h2
  funext a; exact sub_eq_zero.mp (h3 a)

theorem pos_perp (hstar : ∀ (τ : E →+* ℂ) (a : E), τ (star a) = starRingEnd ℂ (τ a))
    (τ : E →+* ℂ) {p q : ℕ} (hsig : Formalism.UG.HasSignature (S.gram.map τ) p q) {r : ℕ} (hq : q ≤ r + 1)
    (e : Fin r → S.V) (he : LinearIndependent E e) (hee : ∀ a b, S.hT (e a) (e b) = 0)
    (z : S.V) (hez : ∀ a, S.hT (e a) z = 0) (hzz : (τ (S.hT z z)).re < 0)
    (y : S.V) (hey : ∀ a, S.hT (e a) y = 0) (hzy : S.hT z y = 0)
    (hyX : y ∉ Submodule.span E (Set.range e)) : 0 < (τ (S.hT y y)).re := by
  by_contra hle'
  have hle := not_lt.mp hle'
  have hzz0 : S.hT z z ≠ 0 := by
    intro h; rw [h, map_zero] at hzz; simp at hzz
  have hze : ∀ a, S.hT z (e a) = 0 := fun a => by rw [herm_swap, hez, star_zero]
  have hye : ∀ a, S.hT y (e a) = 0 := fun a => by rw [herm_swap, hey, star_zero]
  have hyz : S.hT y z = 0 := by rw [herm_swap, hzy, star_zero]

  have hXz : ∀ x ∈ Submodule.span E (Set.range e), S.hT z x = 0 := by
    intro x hx
    induction hx using Submodule.span_induction with
    | mem x hx => obtain ⟨a, rfl⟩ := hx; exact hze a
    | zero => simp
    | add x y _ _ h1 h2 => simp [map_add (f := _), h1, h2]
    | smul c x _ h => simp [h]
  let u : Fin r ⊕ Fin 2 → S.V := Sum.elim e ![z, y]
  have hpair : LinearIndependent E ![z, y] := by
    rw [LinearIndependent.pair_iff]
    intro s t hst
    have h1 := congrArg (S.hT z) hst
    simp [map_add (f := _), hzy] at h1
    have hs : s = 0 := by
      rcases h1 with h1 | h1
      · exact h1
      · exact absurd h1 hzz0
    subst hs
    refine ⟨rfl, ?_⟩
    simp at hst
    rcases hst with h | h
    · exact h
    · exact absurd (h ▸ Submodule.zero_mem _) hyX
  have hdisj : Disjoint (Submodule.span E (Set.range e)) (Submodule.span E (Set.range ![z, y])) := by
    rw [Submodule.disjoint_def]
    intro w hw1 hw2
    rw [Matrix.range_cons, Matrix.range_cons, Matrix.range_empty, Set.union_empty,
      Set.singleton_union, Submodule.mem_span_pair] at hw2
    obtain ⟨s, t, rfl⟩ := hw2
    have h1 := hXz _ hw1
    simp [map_add (f := _), hzy] at h1
    have hs : s = 0 := by
      rcases h1 with h1 | h1
      · exact h1
      · exact absurd h1 hzz0
    subst hs
    simp only [zero_smul, zero_add] at hw1 ⊢
    by_cases ht : t = 0
    · simp [ht]
    · exfalso; apply hyX
      have := Submodule.smul_mem _ t⁻¹ hw1
      rwa [smul_smul, inv_mul_cancel₀ ht, one_smul] at this
  have hind : LinearIndependent E u := he.sum_type hpair hdisj
  have hB : Function.Injective (coordC S τ u).mulVec :=
    _root_.Bl.general_b_fact_upper_alt_form.goal1 τ _ (coord_injective S u hind)
  have hneg : ∀ v : Fin r ⊕ Fin 2 → ℂ,
      (star (coordC S τ u *ᵥ v) ⬝ᵥ (S.gram.map τ *ᵥ (coordC S τ u *ᵥ v))).re ≤ 0 := by
    intro v
    rw [form_eq]
    have hM : ∀ a b, ((coordC S τ u)ᴴ * S.gram.map τ * coordC S τ u) a b = τ (S.hT (u a) (u b)) :=
      gram_entry S hstar τ u
    simp only [dotProduct, Matrix.mulVec, hM, Fintype.sum_sum_type, Fin.sum_univ_two, u,
      Sum.elim_inl, Sum.elim_inr, Matrix.cons_val_zero, Matrix.cons_val_one,
      hee, hez, hey, hze, hye, hzy, hyz, map_zero, zero_mul, mul_zero, Finset.sum_const_zero, zero_add,
      add_zero]
    have hn : ∀ w : ℂ, ∀ c : ℂ, (star w * (c * w)).re = Complex.normSq w * c.re := by
      intro w c
      rw [Complex.star_def, mul_comm c w, ← mul_assoc, mul_comm (starRingEnd ℂ w) w, Complex.mul_conj]
      rw [Complex.re_ofReal_mul]
    rw [Pi.star_apply, Pi.star_apply, Complex.add_re, hn, hn]
    have := Complex.normSq_nonneg (v (Sum.inr 0))
    have := Complex.normSq_nonneg (v (Sum.inr 1))
    nlinarith
  have hc := sylvester_le _ hsig _ hB hneg
  simp at hc
  omega

end PI.AutLzFinite.SlopeTestRemainingChoices
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LatticeAutomorphismFiniteness.MulVecMapInjective =====
