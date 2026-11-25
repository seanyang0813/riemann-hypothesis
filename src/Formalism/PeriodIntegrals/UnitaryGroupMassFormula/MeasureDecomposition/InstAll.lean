module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstDefs
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.HJMulVecGen
public import Mathlib.Analysis.Matrix.Spectrum
public import Mathlib.Analysis.Normed.Algebra.MatrixExponential
public import Formalism.RealPlaceAnalysis.FinalF
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstDecomp
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.AdaptedBasisInstance
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.FrameGramInstance, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstExp, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstPlace, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstTop, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstAll

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.FrameGramInstance =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.FrameGramInstance", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstDefs\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.HJMulVecGen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix

namespace PI.ScMuExists.UnitaryGroupMassFormula

theorem gram_entry (I : Formalism.MainNotions.S.AutInst) (v : NumberField.InfinitePlace I.F) {r : ℕ}
    (e f : Fin r → Fin I.n → I.E) (z : Fin I.n → I.E) (j k : Fin r ⊕ Fin r ⊕ Unit) :
    ((instBmat I v e f z)ᴴ * Formalism.REAL.Jm (I.ε v) * instBmat I v e f z) j k =
      hJ (I.ε v) (rv I v (instFvec e f z j)) (rv I v (instFvec e f z k)) := by
  unfold instBmat hJ
  rw [Matrix.mul_assoc]
  simp [Matrix.mul_apply, dotProduct, mulVec, Finset.mul_sum]

theorem frame_gram_instance : InstFrameGram := by
  intro I r e f z hF v
  obtain ⟨hee, hff, hef, hz, hzz⟩ := rv_frame (I := I) hF v
  have hJH : (Formalism.REAL.Jm (I.ε v))ᴴ = Formalism.REAL.Jm (I.ε v) := by
    unfold Formalism.REAL.Jm
    rw [Matrix.diagonal_conjTranspose]
    congr 1
    funext a
    by_cases h : I.ε v a <;> simp [h]
  have hH : ((instBmat I v e f z)ᴴ * Formalism.REAL.Jm (I.ε v) * instBmat I v e f z)ᴴ =
      (instBmat I v e f z)ᴴ * Formalism.REAL.Jm (I.ε v) * instBmat I v e f z := by
    simp only [Matrix.conjTranspose_mul, Matrix.conjTranspose_conjTranspose, hJH, Matrix.mul_assoc]
  have hent := gram_entry I v e f z
  generalize (instBmat I v e f z)ᴴ * Formalism.REAL.Jm (I.ε v) * instBmat I v e f z = G at hH hent ⊢
  have hS : ∀ j k, G j k = star (G k j) := by
    intro j k
    have hjk := congrFun (congrFun hH j) k
    rw [Matrix.conjTranspose_apply] at hjk
    exact hjk.symm
  have h1 : ∀ a b, G (Sum.inl a) (Sum.inl b) = 0 := fun a b => by rw [hent]; exact hee a b
  have h3 : ∀ a b, G (Sum.inl a) (Sum.inr (Sum.inl b)) = if a = b then 1 else 0 :=
    fun a b => by rw [hent]; exact hef a b
  have h4 : ∀ a (u : Unit), G (Sum.inl a) (Sum.inr (Sum.inr u)) = 0 :=
    fun a u => by rw [hent]; exact (hz a).1
  have h5 : ∀ a (u : Unit), G (Sum.inr (Sum.inl a)) (Sum.inr (Sum.inr u)) = 0 :=
    fun a u => by rw [hent]; exact (hz a).2
  have h3' : ∀ a b, G (Sum.inr (Sum.inl a)) (Sum.inl b) = if b = a then 1 else 0 := by
    intro a b
    rw [hS, h3]
    split_ifs <;> simp
  have h4' : ∀ a (u : Unit), G (Sum.inr (Sum.inr u)) (Sum.inl a) = 0 := by
    intro a u
    rw [hS, h4, star_zero]
  have h5' : ∀ a (u : Unit), G (Sum.inr (Sum.inr u)) (Sum.inr (Sum.inl a)) = 0 := by
    intro a u
    rw [hS, h5, star_zero]
  have h6 : ∀ u u' : Unit, G (Sum.inr (Sum.inr u)) (Sum.inr (Sum.inr u')) ≠ 0 := by
    intro u u'
    rw [hent]
    exact hzz
  have hker : ∀ w, G *ᵥ w = 0 → w = 0 := by
    intro w hw
    have hf : ∀ a, w (Sum.inr (Sum.inl a)) = 0 := by
      intro a
      have := congrFun hw (Sum.inl a)
      simpa [Matrix.mulVec, dotProduct, Fintype.sum_sum_type, h1, h3, h4] using this
    have he : ∀ a, w (Sum.inl a) = 0 := by
      intro a
      have := congrFun hw (Sum.inr (Sum.inl a))
      simpa [Matrix.mulVec, dotProduct, Fintype.sum_sum_type, h3', h5, hf] using this
    have hzw : ∀ u : Unit, w (Sum.inr (Sum.inr u)) = 0 := by
      intro u
      have := congrFun hw (Sum.inr (Sum.inr u))
      simp only [Matrix.mulVec, dotProduct, Fintype.sum_sum_type, h4', h5', zero_mul,
        Finset.sum_const_zero, zero_add, Pi.zero_apply] at this
      rw [Fintype.sum_unique] at this
      rcases (mul_eq_zero.mp this) with h | h
      · exact absurd h (h6 _ _)
      · cases u
        exact h
    funext j
    rcases j with a | a | u
    · exact he a
    · exact hf a
    · exact hzw u
  refine Matrix.mulVec_injective_iff_isUnit.mp ?_
  intro w₁ w₂ h
  have h0 : G *ᵥ (w₁ - w₂) = 0 := by rw [Matrix.mulVec_sub, h, sub_self]
  exact sub_eq_zero.mp (hker _ h0)

end PI.ScMuExists.UnitaryGroupMassFormula
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.FrameGramInstance =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstExp =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstExp", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.Matrix.Spectrum\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\npublic import Mathlib.Analysis.Normed.Algebra.MatrixExponential\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix

namespace PI.ScMuExists.UnitaryGroupMassFormula

theorem inst_exp_real_entry (l : ℝ) (y : ℂ) :
    NormedSpace.exp (l : ℂ) * y = y ↔ (l : ℂ) * y = 0 := by
  have hE : NormedSpace.exp (l : ℂ) = ((Real.exp l : ℝ) : ℂ) := by
    rw [Complex.ofReal_exp]
    first
      | rw [Complex.exp_eq_exp_ℂ]
  rw [hE]
  constructor
  · intro h
    by_cases hy : y = 0
    · simp [hy]
    · have h1 : ((Real.exp l : ℝ) : ℂ) = 1 := mul_right_cancel₀ hy (h.trans (one_mul y).symm)
      have h2 : Real.exp l = 1 := by exact_mod_cast h1
      have h3 : l = 0 := Real.exp_eq_one_iff l |>.mp h2
      simp [h3]
  · intro h
    rcases mul_eq_zero.mp h with hl | hy
    · have h3 : l = 0 := by exact_mod_cast hl
      simp [h3]
    · simp [hy]

private theorem exists_unitary_diagonal_of_isHermitian {n : ℕ} (X : Matrix (Fin n) (Fin n) ℂ) (hX : X.IsHermitian) :
    ∃ (U : Matrix (Fin n) (Fin n) ℂ) (d : Fin n → ℝ), star U * U = 1 ∧ U * star U = 1 ∧
      X = U * diagonal (fun i => (d i : ℂ)) * star U := by
  have h1 : star (hX.eigenvectorUnitary : Matrix (Fin n) (Fin n) ℂ) *
      (hX.eigenvectorUnitary : Matrix (Fin n) (Fin n) ℂ) = 1 := by
    first
      | exact hX.eigenvectorUnitary.2.1
  have h2 : (hX.eigenvectorUnitary : Matrix (Fin n) (Fin n) ℂ) *
      star (hX.eigenvectorUnitary : Matrix (Fin n) (Fin n) ℂ) = 1 := by
    first
      | exact hX.eigenvectorUnitary.2.2
  refine ⟨hX.eigenvectorUnitary, hX.eigenvalues, h1, h2, ?_⟩
  first
    | (conv_lhs => rw [hX.spectral_theorem]); simp [Function.comp_def]
    | (conv_lhs => rw [hX.spectral_theorem]); simp [Function.comp_def, Unitary.conjStarAlgAut_apply]

theorem exponent_fixed_instance : InstExpFix := by
  intro n X hX w
  obtain ⟨U, d, hUU, hUU', hX'⟩ := exists_unitary_diagonal_of_isHermitian X hX
  have hexp : NormedSpace.exp X = U * diagonal (fun i => NormedSpace.exp (d i : ℂ)) * star U := by
    have hunit : IsUnit U := ⟨⟨U, star U, hUU', hUU⟩, rfl⟩
    have hinv : U⁻¹ = star U := Matrix.inv_eq_left_inv hUU
    rw [hX', ← hinv]
    have hd : NormedSpace.exp (diagonal (fun i => (d i : ℂ))) =
        diagonal (fun i => NormedSpace.exp (d i : ℂ)) := by
      rw [Matrix.exp_diagonal]
      congr 1
      funext i
      first
        | simp
    first
      | rw [Matrix.exp_conj _ _ hunit, hd]
  have inj : ∀ a b : Fin n → ℂ, U *ᵥ a = U *ᵥ b → a = b := by
    intro a b h
    have h2 := congrArg (fun v => star U *ᵥ v) h
    simpa only [Matrix.mulVec_mulVec, hUU, Matrix.one_mulVec] using h2
  obtain ⟨y, hy⟩ : ∃ y, y = star U *ᵥ w := ⟨_, rfl⟩
  have hw : w = U *ᵥ y := by rw [hy, Matrix.mulVec_mulVec, hUU', Matrix.one_mulVec]
  have hXw : X *ᵥ w = U *ᵥ (fun i => (d i : ℂ) * y i) := by
    rw [hX', ← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, ← hy]
    congr 1
    funext i
    rw [Matrix.mulVec_diagonal]
  have hEw : NormedSpace.exp X *ᵥ w = U *ᵥ (fun i => NormedSpace.exp (d i : ℂ) * y i) := by
    rw [hexp, ← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, ← hy]
    congr 1
    funext i
    rw [Matrix.mulVec_diagonal]
  constructor
  · intro h
    have h1 : (fun i => NormedSpace.exp (d i : ℂ) * y i) = y := by
      apply inj
      rw [← hEw, h]
      exact hw
    rw [hXw]
    have h0 : (fun i => (d i : ℂ) * y i) = 0 := by
      funext i
      exact (inst_exp_real_entry (d i) (y i)).mp (congrFun h1 i)
    rw [h0, Matrix.mulVec_zero]
  · intro h
    rw [hXw] at h
    have h2 : (fun i => (d i : ℂ) * y i) = 0 := inj _ 0 (by rw [h, Matrix.mulVec_zero])
    rw [hEw]
    have h3 : (fun i => NormedSpace.exp (d i : ℂ) * y i) = y := by
      funext i
      exact (inst_exp_real_entry (d i) (y i)).mpr (congrFun h2 i)
    rw [h3, ← hw]

end PI.ScMuExists.UnitaryGroupMassFormula
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstExp =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstPlace =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstPlace", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstDefs\npublic import Formalism.RealPlaceAnalysis.FinalF\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.Normed.Algebra.MatrixExponential\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Finiteness.ModuleFinitePresentation\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix

namespace PI.ScMuExists.UnitaryGroupMassFormula

theorem inst_Kset_star {n : ℕ} (ε : Fin n → Bool) {g : Matrix (Fin n) (Fin n) ℂ} (hg : g ∈ Formalism.REAL.Kset ε) :
    star g ∈ Formalism.REAL.Kset ε := by
  refine ⟨Unitary.star_mem hg.1, ?_⟩
  have h := congrArg star hg.2
  simp only [star_mul, Matrix.star_eq_conjTranspose, Formalism.REAL.Jm_conjTranspose] at h
  simpa [Matrix.star_eq_conjTranspose] using h.symm

theorem inst_Jm_single {n : ℕ} (ε : Fin n → Bool) (i : Fin n) :
    Formalism.REAL.Jm ε *ᵥ Pi.single i 1 = (if ε i then (1 : ℂ) else -1) • Pi.single i 1 := by
  funext r
  simp only [Formalism.REAL.Jm, Matrix.mulVec_diagonal, Pi.smul_apply, Pi.single_apply, smul_eq_mul]
  by_cases h : r = i
  · subst h; simp
  · simp [h]

theorem inst_fix_sum {n : ℕ} (m : Matrix (Fin n) (Fin n) ℂ) (T : Finset (Fin n))
    (hm : ∀ i ∈ T, m *ᵥ Pi.single i 1 = Pi.single i 1) (c : Fin n → ℂ) (hc : ∀ i ∉ T, c i = 0) :
    m *ᵥ c = c := by
  have hc' : c = ∑ i ∈ T, c i • Pi.single i (1 : ℂ) := by
    funext r
    simp only [Finset.sum_apply, Pi.smul_apply, Pi.single_apply, smul_eq_mul, mul_ite, mul_one, mul_zero]
    rw [Finset.sum_ite_eq]
    split_ifs with h
    · rfl
    · exact hc r h
  rw [hc', Matrix.mulVec_sum]
  refine Finset.sum_congr rfl fun i hi => ?_
  rw [Matrix.mulVec_smul, hm i hi]

theorem inst_col_entry {n : ℕ} (m : Matrix (Fin n) (Fin n) ℂ) (i : Fin n)
    (hm : m *ᵥ Pi.single i 1 = Pi.single i 1) (r : Fin n) : m r i = if r = i then 1 else 0 := by
  have := congrFun hm r
  simpa [Matrix.mulVec_single_one, Pi.single_apply] using this

theorem placeDecomp_of (hE : InstExpFix) (hAB : InstAdaptBasis) : InstPlaceDecomp := by
  intro n ε ι _ _ B hBG g hg hgB
  obtain ⟨A, ε', T, hA, hT1, hT2⟩ := hAB n ε ι B hBG
  have hJ'J' : Formalism.REAL.Jm ε' * Formalism.REAL.Jm ε' = 1 := Formalism.REAL.Jm_mul_self ε'

  have hAdet : IsUnit A.det := by
    have h1 : IsUnit (Aᴴ * Formalism.REAL.Jm ε * A).det := by
      rw [hA]; exact (Matrix.isUnit_iff_isUnit_det _).mp ⟨⟨_, _, hJ'J', hJ'J'⟩, rfl⟩
    rw [Matrix.det_mul] at h1
    exact isUnit_of_mul_isUnit_right h1
  obtain ⟨Ai, hAi⟩ : ∃ Ai, Ai = A⁻¹ := ⟨_, rfl⟩
  have hAAi : A * Ai = 1 := by rw [hAi]; exact Matrix.mul_nonsing_inv A hAdet
  have hAiA : Ai * A = 1 := by rw [hAi]; exact Matrix.nonsing_inv_mul A hAdet
  have hAiJ : Aiᴴ * Formalism.REAL.Jm ε' * Ai = Formalism.REAL.Jm ε := by
    rw [← hA]
    have h2 : Aiᴴ * Aᴴ = 1 := by rw [← Matrix.conjTranspose_mul, hAAi, Matrix.conjTranspose_one]
    calc Aiᴴ * (Aᴴ * Formalism.REAL.Jm ε * A) * Ai = (Aiᴴ * Aᴴ) * Formalism.REAL.Jm ε * (A * Ai) := by
          simp only [Matrix.mul_assoc]
      _ = Formalism.REAL.Jm ε := by rw [h2, hAAi, Matrix.one_mul, Matrix.mul_one]
  have tr1 : ∀ m, Formalism.REAL.inUJ ε m → Formalism.REAL.inUJ ε' (Ai * m * A) := by
    intro m hm
    unfold Formalism.REAL.inUJ at *
    have : (Ai * m * A)ᴴ * Formalism.REAL.Jm ε' * (Ai * m * A) =
        Aᴴ * (mᴴ * (Aiᴴ * Formalism.REAL.Jm ε' * Ai) * m) * A := by
      simp only [Matrix.conjTranspose_mul, Matrix.mul_assoc]
    rw [this, hAiJ, hm, hA]
  have tr2 : ∀ m, Formalism.REAL.inUJ ε' m → Formalism.REAL.inUJ ε (A * m * Ai) := by
    intro m hm
    unfold Formalism.REAL.inUJ at *
    have : (A * m * Ai)ᴴ * Formalism.REAL.Jm ε * (A * m * Ai) =
        Aiᴴ * (mᴴ * (Aᴴ * Formalism.REAL.Jm ε * A) * m) * Ai := by
      simp only [Matrix.conjTranspose_mul, Matrix.mul_assoc]
    rw [this, hA, hm, hAiJ]
  have back : ∀ m, (∀ i ∈ T, m *ᵥ Pi.single i 1 = Pi.single i 1) → A * m * Ai * B = B := by
    intro m hm
    refine Matrix.ext_of_mulVec_single fun j => ?_
    obtain ⟨c, hc0, hc⟩ := hT2 j
    simp only [← Matrix.mulVec_mulVec]
    rw [hc, Matrix.mulVec_mulVec c Ai A, hAiA, Matrix.one_mulVec, inst_fix_sum m T hm c hc0]

  obtain ⟨g', hg'def⟩ : ∃ g', g' = Ai * g * A := ⟨_, rfl⟩
  have hg' : Formalism.REAL.inUJ ε' g' := hg'def ▸ tr1 g hg
  have hg'fix : ∀ i ∈ T, g' *ᵥ Pi.single i 1 = Pi.single i 1 := by
    intro i hi
    obtain ⟨c, hc⟩ := hT1 i hi
    rw [hg'def, ← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, hc, Matrix.mulVec_mulVec c g B, hgB, ← hc,
      Matrix.mulVec_mulVec, hAiA, Matrix.one_mulVec]

  obtain ⟨k', X', hk', hX', hgkX⟩ := (Formalism.REAL.polar n ε').1 g' hg'
  have hXc := ((Formalism.REAL.pChar n ε' X').1.mp hX')
  have hXh : X'.IsHermitian := hXc.1
  obtain ⟨p', hp'def⟩ : ∃ p', p' = NormedSpace.exp X' := ⟨_, rfl⟩
  rw [← hp'def] at hgkX
  have hk'u : star k' * k' = 1 := Matrix.mem_unitaryGroup_iff'.mp hk'.1
  have hk'u2 : k' * star k' = 1 := Matrix.mem_unitaryGroup_iff.mp hk'.1
  have hp'H : p'ᴴ = p' := by rw [hp'def]; exact hXh.exp
  have hgg : g'ᴴ * g' = NormedSpace.exp (X' + X') := by
    rw [Matrix.exp_add_of_commute X' X' (Commute.refl X'), ← hp'def, hgkX, Matrix.conjTranspose_mul, hp'H,
      ← Matrix.star_eq_conjTranspose]
    calc p' * star k' * (k' * p') = p' * (star k' * k') * p' := by simp only [Matrix.mul_assoc]
      _ = p' * p' := by rw [hk'u, Matrix.mul_one]
  have hgHfix : ∀ i ∈ T, g'ᴴ *ᵥ Pi.single i 1 = Pi.single i 1 := by
    intro i hi
    have h1 := congrArg (fun M => M *ᵥ Pi.single i (1 : ℂ)) hg'
    simp only [← Matrix.mulVec_mulVec, hg'fix i hi, inst_Jm_single, Matrix.mulVec_smul] at h1
    have hs : (if ε' i then (1 : ℂ) else -1) ≠ 0 := by split_ifs <;> norm_num
    exact smul_right_injective _ hs h1
  have hXfix : ∀ i ∈ T, X' *ᵥ Pi.single i 1 = 0 := by
    intro i hi
    have h2 : NormedSpace.exp (X' + X') *ᵥ Pi.single i 1 = Pi.single i 1 := by
      rw [← hgg, ← Matrix.mulVec_mulVec, hg'fix i hi, hgHfix i hi]
    have h3 := (hE n (X' + X') (hXh.add hXh) _).mp h2
    have h4 : (2 : ℂ) • (X' *ᵥ Pi.single i 1) = 0 := by rw [two_smul, ← Matrix.add_mulVec]; exact h3
    exact (smul_eq_zero.mp h4).resolve_left two_ne_zero
  have hpfix : ∀ i ∈ T, p' *ᵥ Pi.single i 1 = Pi.single i 1 := fun i hi => by
    rw [hp'def]; exact (hE n X' hXh _).mpr (hXfix i hi)
  have hkfix : ∀ i ∈ T, k' *ᵥ Pi.single i 1 = Pi.single i 1 := by
    intro i hi
    have h1 := hg'fix i hi
    rw [hgkX, ← Matrix.mulVec_mulVec, hpfix i hi] at h1
    exact h1

  obtain ⟨σ', hσdef⟩ : ∃ σ' : Matrix (Fin n) (Fin n) ℂ,
      σ' = Matrix.diagonal fun i => if i ∈ T then (1 : ℂ) else (if ε' i then 1 else -1) := ⟨_, rfl⟩
  have hσσ' : σ' * σ' = 1 := by
    rw [hσdef, Matrix.diagonal_mul_diagonal, ← Matrix.diagonal_one]
    congr 1; funext i; split_ifs <;> norm_num
  have hσ'UJ : Formalism.REAL.inUJ ε' σ' := by
    unfold Formalism.REAL.inUJ Formalism.REAL.Jm
    rw [hσdef, Matrix.diagonal_conjTranspose, Matrix.diagonal_mul_diagonal, Matrix.diagonal_mul_diagonal]
    congr 1; funext i; simp only [Pi.star_apply]; split_ifs <;> simp
  have hσfix : ∀ i ∈ T, σ' *ᵥ Pi.single i 1 = Pi.single i 1 := by
    intro i hi
    funext r
    rw [hσdef, Matrix.mulVec_diagonal]
    by_cases hr : r = i
    · subst hr; simp [hi]
    · simp [hr]
  have hcol : ∀ i ∈ T, ∀ r, p' r i = if r = i then 1 else 0 := fun i hi r =>
    inst_col_entry p' i (hpfix i hi) r
  have hrow : ∀ i ∈ T, ∀ r, p' i r = if r = i then 1 else 0 := by
    intro i hi r
    have h1 : p' i r = star (p' r i) := by
      conv_lhs => rw [← hp'H]
      rfl
    rw [h1, hcol i hi r]
    split_ifs <;> simp
  have hkey : σ' * p' * σ' = Formalism.REAL.Jm ε' * p' * Formalism.REAL.Jm ε' := by
    ext r c
    simp only [hσdef, Formalism.REAL.Jm, Matrix.diagonal_mul, Matrix.mul_diagonal]
    by_cases hr : r ∈ T
    · rw [hrow r hr c]
      by_cases hrc : c = r
      · subst hrc; simp only [hr, if_true]; split_ifs <;> norm_num
      · simp [hrc]
    · by_cases hc : c ∈ T
      · rw [hcol c hc r]
        by_cases hrc : r = c
        · subst hrc; exact absurd hc hr
        · simp [hrc]
      · simp [hr, hc]
  have hJinv : (Formalism.REAL.Jm ε')⁻¹ = Formalism.REAL.Jm ε' := Matrix.inv_eq_left_inv hJ'J'
  have hJX : Formalism.REAL.Jm ε' * X' * Formalism.REAL.Jm ε' = -X' := ((Formalism.REAL.pChar n ε' X').2 hX')
  have hJp : Formalism.REAL.Jm ε' * p' * Formalism.REAL.Jm ε' = NormedSpace.exp (-X') := by
    have := Matrix.exp_conj (Formalism.REAL.Jm ε') X' ⟨⟨_, _, hJ'J', hJ'J'⟩, rfl⟩
    rw [hJinv, hJX] at this
    rw [hp'def, this]
  have hσp' : σ' * p' * σ' * p' = 1 := by
    rw [hkey, hJp, hp'def, ← Matrix.exp_add_of_commute _ _ (Commute.refl X').neg_left, neg_add_cancel,
      NormedSpace.exp_zero]
  have hk'UJ : Formalism.REAL.inUJ ε' k' := (Formalism.REAL.kFacts n ε').1 k' hk'
  have hp'UJ : Formalism.REAL.inUJ ε' p' := by
    have := Formalism.REAL.expUJ n ε' X' hX'.1 1
    simpa [hp'def] using this

  refine ⟨A * k' * Ai, A * p' * Ai, A * σ' * Ai, tr2 _ hk'UJ, tr2 _ hp'UJ, tr2 _ hσ'UJ, back _ hkfix,
    back _ hpfix, back _ hσfix, ?_, ?_, ?_, ?_⟩
  · have : g = A * g' * Ai := by
      rw [hg'def]
      calc g = (A * Ai) * g * (A * Ai) := by rw [hAAi, Matrix.one_mul, Matrix.mul_one]
        _ = A * (Ai * g * A) * Ai := by simp only [Matrix.mul_assoc]
    rw [this, hgkX]
    simp only [Matrix.mul_assoc]
    rw [← Matrix.mul_assoc Ai A, hAiA, Matrix.one_mul]
  · simp only [Matrix.mul_assoc]
    rw [← Matrix.mul_assoc Ai A, hAiA, Matrix.one_mul, ← Matrix.mul_assoc σ' σ', hσσ', Matrix.one_mul, hAAi]
  · have : A * σ' * Ai * (A * p' * Ai) * (A * σ' * Ai) * (A * p' * Ai) = A * (σ' * p' * σ' * p') * Ai := by
      simp only [Matrix.mul_assoc]
      rw [← Matrix.mul_assoc Ai A, hAiA, Matrix.one_mul, ← Matrix.mul_assoc Ai A, hAiA, Matrix.one_mul,
        ← Matrix.mul_assoc Ai A, hAiA, Matrix.one_mul]
    rw [this, hσp', Matrix.mul_one, hAAi]
  ·
    set R : ℝ := (n : ℝ) + 1 with hR
    have hemb := (Formalism.REAL.uJEmb n ε).1
    refine ⟨{x : Formalism.REAL.UJ ε | Formalism.REAL.hs (Ai * Formalism.MainNotions.S.uMat x * A) ≤ R}, ?_, ?_, ?_⟩
    · have hcomp : IsCompact ((fun m => A * m * Ai) '' {m | Formalism.REAL.inUJ ε' m ∧ Formalism.REAL.hs m ≤ R}) :=
        ((Formalism.REAL.hSBall n ε').1 R).image ((continuous_const.mul continuous_id).mul continuous_const)
      have hset : {x : Formalism.REAL.UJ ε | Formalism.REAL.hs (Ai * Formalism.MainNotions.S.uMat x * A) ≤ R} =
          (fun g : Formalism.REAL.UJ ε => ((g : (Matrix (Fin n) (Fin n) ℂ)ˣ) : Matrix (Fin n) (Fin n) ℂ)) ⁻¹'
            ((fun m => A * m * Ai) '' {m | Formalism.REAL.inUJ ε' m ∧ Formalism.REAL.hs m ≤ R}) := by
        ext x
        simp only [Set.mem_ofPred_eq, Set.mem_preimage, Set.mem_image]
        constructor
        · intro hx
          refine ⟨Ai * Formalism.MainNotions.S.uMat x * A, ⟨tr1 _ x.2, hx⟩, ?_⟩
          simp only [Matrix.mul_assoc]
          rw [hAAi, Matrix.mul_one, ← Matrix.mul_assoc, hAAi, Matrix.one_mul]
        · rintro ⟨m, ⟨_, hm2⟩, hm⟩
          have : Ai * Formalism.MainNotions.S.uMat x * A = m := by
            have hx : Formalism.MainNotions.S.uMat x = A * m * Ai := hm.symm
            rw [hx]
            simp only [Matrix.mul_assoc]
            rw [hAiA, Matrix.mul_one, ← Matrix.mul_assoc, hAiA, Matrix.one_mul]
          rw [this]; exact hm2
      rw [hset]
      exact hemb.isCompact_preimage hcomp
    · obtain ⟨U, hUo, h1U, hU⟩ := _root_.Formalism.REAL.ball_open_holds n R (by rw [hR]; linarith)
      refine mem_interior.mpr ⟨(fun x : Formalism.REAL.UJ ε => Ai * Formalism.MainNotions.S.uMat x * A) ⁻¹' U, ?_, ?_, ?_⟩
      · intro x hx
        exact (hU _ hx).le
      · exact hUo.preimage ((continuous_const.mul hemb.continuous).mul continuous_const)
      · show Ai * Formalism.MainNotions.S.uMat (1 : Formalism.REAL.UJ ε) * A ∈ U
        have h1 : Formalism.MainNotions.S.uMat (1 : Formalism.REAL.UJ ε) = 1 := rfl
        rw [h1, Matrix.mul_one, hAiA]
        exact h1U
    · intro x y hxy
      have h1 : Ai * Formalism.MainNotions.S.uMat y * A * k' = k' * (Ai * Formalism.MainNotions.S.uMat x * A) := by
        have := congrArg (fun M => Ai * M * A) hxy
        simp only [Matrix.mul_assoc] at this ⊢
        rw [hAiA, Matrix.mul_one, ← Matrix.mul_assoc Ai A, hAiA, Matrix.one_mul] at this
        exact this
      have h2 : Ai * Formalism.MainNotions.S.uMat y * A = k' * (Ai * Formalism.MainNotions.S.uMat x * A) * star k' := by
        rw [← h1, Matrix.mul_assoc _ k', hk'u2, Matrix.mul_one]
      have h3 : Formalism.REAL.hs (Ai * Formalism.MainNotions.S.uMat y * A) = Formalism.REAL.hs (Ai * Formalism.MainNotions.S.uMat x * A) := by
        rw [h2, ((Formalism.REAL.hSBall n ε').2 _ _ (inst_Kset_star ε' hk')).1,
          ((Formalism.REAL.hSBall n ε').2 _ _ hk').2]
      simp only [Set.mem_ofPred_eq, h3]

end PI.ScMuExists.UnitaryGroupMassFormula
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstPlace =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstTop =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstTop", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MeasureTheory NumberField Matrix
open scoped ENNReal Pointwise

namespace PI.ScMuExists.UnitaryGroupMassFormula

theorem inst_mem_frameSet {I : Formalism.MainNotions.S.AutInst} {r : ℕ} (e f : Fin r → Fin I.n → I.E) (z : Fin I.n → I.E)
    (j : Fin r ⊕ Fin r ⊕ Unit) : instFvec e f z j ∈ frameSet I e f z := by
  rcases j with a | a | u <;> simp [instFvec, frameSet]

theorem inst_col {I : Formalism.MainNotions.S.AutInst} (v : InfinitePlace I.F) {r : ℕ} (e f : Fin r → Fin I.n → I.E)
    (z : Fin I.n → I.E) (j : Fin r ⊕ Fin r ⊕ Unit) :
    instBmat I v e f z *ᵥ Pi.single j 1 = rv I v (instFvec e f z j) := by
  ext i
  rw [Matrix.mulVec_single_one]
  simp [instBmat]

theorem inst_fix_of {I : Formalism.MainNotions.S.AutInst} (v : InfinitePlace I.F) {r : ℕ} (e f : Fin r → Fin I.n → I.E)
    (z : Fin I.n → I.E) (m : Matrix (Fin I.n) (Fin I.n) ℂ) (hm : m * instBmat I v e f z = instBmat I v e f z) :
    ∀ x ∈ frameSet I e f z, m *ᵥ rv I v x = rv I v x := by
  intro x hx
  obtain ⟨j, rfl⟩ : ∃ j, instFvec e f z j = x := by
    rcases hx with (⟨a, rfl⟩ | ⟨a, rfl⟩) | hx
    · exact ⟨Sum.inl a, rfl⟩
    · exact ⟨Sum.inr (Sum.inl a), rfl⟩
    · exact ⟨Sum.inr (Sum.inr ()), (Set.mem_singleton_iff.1 hx).symm⟩
  rw [← inst_col v e f z j, Matrix.mulVec_mulVec, hm]

theorem inst_fixB_of {I : Formalism.MainNotions.S.AutInst} (v : InfinitePlace I.F) {r : ℕ} (e f : Fin r → Fin I.n → I.E)
    (z : Fin I.n → I.E) (m : Matrix (Fin I.n) (Fin I.n) ℂ)
    (hm : ∀ x ∈ frameSet I e f z, m *ᵥ rv I v x = rv I v x) : m * instBmat I v e f z = instBmat I v e f z := by
  have hcol : ∀ j, (m * instBmat I v e f z) *ᵥ Pi.single j 1 = instBmat I v e f z *ᵥ Pi.single j 1 := by
    intro j
    rw [← Matrix.mulVec_mulVec, inst_col v e f z j, hm _ (inst_mem_frameSet e f z j)]
  ext i j
  have h := congrFun (hcol j) i
  simpa [Matrix.mulVec_single_one, Matrix.transpose_apply] using h

theorem instDecomp_of (hP : InstPlaceDecomp) (hG : InstFrameGram) : InstDecomp := by
  intro I r e f z hF h hh
  have key := fun v : InfinitePlace I.F =>
    hP I.n (I.ε v) (Fin r ⊕ Fin r ⊕ Unit) (instBmat I v e f z) (hG I r e f z hF v)
      (Formalism.MainNotions.S.uMat (h v)) (h v).2 (inst_fixB_of v e f z _ (hh v))
  choose k p σ hk hp hσ hkB hpB hσB hkp hσσ hσp C hCc hC1 hCk using key
  have Jsq : ∀ v, Formalism.REAL.Jm (I.ε v) * Formalism.REAL.Jm (I.ε v) = 1 := by
    intro v
    ext a b
    by_cases hab : a = b
    · subst hab
      by_cases hε : I.ε v a <;> simp [Formalism.REAL.Jm, hε]
    · simp [Formalism.REAL.Jm, hab]
  have hU : ∀ v (m : Matrix (Fin I.n) (Fin I.n) ℂ), Formalism.REAL.inUJ (I.ε v) m →
      ∃ u : Formalism.REAL.UJ (I.ε v), (((u : (Matrix (Fin I.n) (Fin I.n) ℂ)ˣ)) : Matrix (Fin I.n) (Fin I.n) ℂ) = m := by
    intro v m hm
    have hl : (Formalism.REAL.Jm (I.ε v) * mᴴ * Formalism.REAL.Jm (I.ε v)) * m = 1 := by
      have : Formalism.REAL.Jm (I.ε v) * mᴴ * Formalism.REAL.Jm (I.ε v) * m =
          Formalism.REAL.Jm (I.ε v) * (mᴴ * Formalism.REAL.Jm (I.ε v) * m) := by
        simp only [Matrix.mul_assoc]
      rw [this, show mᴴ * Formalism.REAL.Jm (I.ε v) * m = Formalism.REAL.Jm (I.ε v) from hm, Jsq v]
    have hr : m * (Formalism.REAL.Jm (I.ε v) * mᴴ * Formalism.REAL.Jm (I.ε v)) = 1 := by
      first
      | exact mul_eq_one_comm.1 hl
    exact ⟨⟨⟨m, _, hr, hl⟩, hm⟩, rfl⟩
  choose ku hku using fun v => hU v (k v) (hk v)
  choose pu hpu using fun v => hU v (p v) (hp v)
  choose su hsu using fun v => hU v (σ v) (hσ v)
  let K : I.Ginf := fun v => ku v
  let P : I.Ginf := fun v => pu v
  let S : I.Ginf := fun v => su v
  have memH : ∀ (X : I.Ginf) (m : ∀ v, Matrix (Fin I.n) (Fin I.n) ℂ),
      (∀ v, (((X v : (Matrix (Fin I.n) (Fin I.n) ℂ)ˣ)) : Matrix (Fin I.n) (Fin I.n) ℂ) = m v) →
      (∀ v, m v * instBmat I v e f z = instBmat I v e f z) → X ∈ Hset I (frameSet I e f z) := by
    intro X m hX hmB v x hx
    show (((X v : (Matrix (Fin I.n) (Fin I.n) ℂ)ˣ)) : Matrix (Fin I.n) (Fin I.n) ℂ) *ᵥ _ = _
    rw [hX v]
    exact inst_fix_of v e f z (m v) (hmB v) x hx
  have ext' : ∀ X Y : I.Ginf, (∀ v, (((X v : (Matrix (Fin I.n) (Fin I.n) ℂ)ˣ)) : Matrix (Fin I.n) (Fin I.n) ℂ) =
      (((Y v : (Matrix (Fin I.n) (Fin I.n) ℂ)ˣ)) : Matrix (Fin I.n) (Fin I.n) ℂ)) → X = Y := by
    intro X Y hXY
    funext v
    exact Subtype.ext (Units.ext (hXY v))
  have hSS : S * S = 1 := ext' _ _ fun v => by
    simp only [Pi.mul_apply, Pi.one_apply, Subgroup.coe_mul, Subgroup.coe_one, Units.val_mul, Units.val_one, S, hsu]
    exact hσσ v
  have hSPSP : S * P * S * P = 1 := ext' _ _ fun v => by
    simp only [Pi.mul_apply, Pi.one_apply, Subgroup.coe_mul, Subgroup.coe_one, Units.val_mul, Units.val_one, S, P, hsu, hpu]
    exact hσp v
  refine ⟨K, memH K k hku hkB, P, memH P p hpu hpB, S, memH S σ hsu hσB, ?_, ?_, ?_⟩
  · refine ext' _ _ fun v => ?_
    simp only [Pi.mul_apply, Subgroup.coe_mul, Units.val_mul, K, P, hku, hpu]
    exact hkp v
  · have hSi : S⁻¹ = S := inv_eq_of_mul_eq_one_right hSS
    rw [hSi]
    exact eq_inv_of_mul_eq_one_left hSPSP
  · refine ⟨Set.pi Set.univ C, isCompact_univ_pi hCc, ?_, ?_⟩
    · rw [interior_pi_set Set.finite_univ]
      intro v _
      exact hC1 v
    · intro x
      simp only [Set.mem_univ_pi]
      refine forall_congr' fun v => hCk v _ _ ?_
      have hg : (K * x * K⁻¹) v * ku v = ku v * x v := by
        simp [K]
      have := congrArg (fun g : Formalism.REAL.UJ (I.ε v) =>
        (((g : (Matrix (Fin I.n) (Fin I.n) ℂ)ˣ)) : Matrix (Fin I.n) (Fin I.n) ℂ)) hg
      simp only [Subgroup.coe_mul, Units.val_mul, hku] at this
      exact this

end PI.ScMuExists.UnitaryGroupMassFormula
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstTop =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstAll =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstAll", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstDecomp\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.AdaptedBasisInstance\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.FrameGramInstance\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstExp\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstPlace\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstTop\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.ScMuExists.UnitaryGroupMassFormula

theorem place_decomposition_instance : InstDecomp :=
  instDecomp_of (placeDecomp_of exponent_fixed_instance adapted_basis_instance) frame_gram_instance

end PI.ScMuExists.UnitaryGroupMassFormula
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstAll =====
