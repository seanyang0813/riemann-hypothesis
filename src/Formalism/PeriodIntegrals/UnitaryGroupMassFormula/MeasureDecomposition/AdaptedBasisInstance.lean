module

public import Formalism.RealPlaceAnalysis.Complexify
public import Mathlib.LinearAlgebra.Matrix.Rank
public import Mathlib.Analysis.Matrix.Spectrum
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstDefs
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.BitVec
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstAdapt, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.AdaptedBasisInstance

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstAdapt =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstAdapt", "h": "module\n\npublic import Formalism.RealPlaceAnalysis.Complexify\npublic import Mathlib.LinearAlgebra.Matrix.Rank\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.Matrix.Spectrum\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix

namespace PI.ScMuExists.UnitaryGroupMassFormula

theorem inst_gram_entry {n : ℕ} (X J Y : Matrix (Fin n) (Fin n) ℂ) (a b : Fin n) :
    (Xᴴ * J * Y) a b = ∑ s, ∑ r, star (X r a) * J r s * Y s b := by
  simp only [Matrix.mul_apply, Matrix.conjTranspose_apply, Finset.sum_mul]

theorem inst_sign_real (l : ℝ) (hl : l ≠ 0) :
    (Real.sqrt |l|)⁻¹ * l * (Real.sqrt |l|)⁻¹ = if 0 < l then 1 else -1 := by
  have hpos : 0 < |l| := abs_pos.mpr hl
  have hs : Real.sqrt |l| * Real.sqrt |l| = |l| := Real.mul_self_sqrt hpos.le
  have h1 : (Real.sqrt |l|)⁻¹ * l * (Real.sqrt |l|)⁻¹ = l / |l| := by
    calc (Real.sqrt |l|)⁻¹ * l * (Real.sqrt |l|)⁻¹ = l * (Real.sqrt |l| * Real.sqrt |l|)⁻¹ := by
          rw [mul_inv]; ring
      _ = l / |l| := by rw [hs, div_eq_mul_inv]
  rw [h1]
  split_ifs with h
  · rw [abs_of_pos h, div_self hl]
  · rw [abs_of_neg (lt_of_le_of_ne (not_lt.mp h) hl), div_neg, div_self hl]

theorem inst_rank_add_le {n : ℕ} (X Y : Matrix (Fin n) (Fin n) ℂ) : (X + Y).rank ≤ X.rank + Y.rank := by
  first
    | (simp only [← Matrix.finrank_range_mulVecLin]
       rw [Matrix.mulVecLin_add]
       exact (Submodule.finrank_mono (LinearMap.range_add_le _ _)).trans
         (Submodule.finrank_add_le_finrank_add_finrank _ _))

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

theorem inst_qfamily {n : ℕ} (ε : Fin n → Bool) (Q : Matrix (Fin n) (Fin n) ℂ) (hQQ : Q * Q = Q)
    (hQJ : Qᴴ * Formalism.REAL.Jm ε = Formalism.REAL.Jm ε * Q) :
    ∃ (W : Matrix (Fin n) (Fin n) ℂ) (lam : Fin n → ℝ),
      Wᴴ * Formalism.REAL.Jm ε * W =
        diagonal (fun i => if lam i = 0 then (0 : ℂ) else if 0 < lam i then 1 else -1) ∧
      Q * W = W ∧
      (∀ x : Fin n → ℂ, Q *ᵥ x = x → ∃ y : Fin n → ℂ, (∀ i, lam i = 0 → y i = 0) ∧ x = W *ᵥ y) ∧
      Fintype.card {i // lam i ≠ 0} = Q.rank ∧
      ∃ (U : Matrix (Fin n) (Fin n) ℂ) (s : Fin n → ℂ), W = Q * U * diagonal s := by
  have hJJ : Formalism.REAL.Jm ε * Formalism.REAL.Jm ε = 1 := by
    simp only [Formalism.REAL.Jm, Matrix.diagonal_mul_diagonal]
    rw [← Matrix.diagonal_one]
    congr 1
    funext a
    split_ifs <;> norm_num
  have hJs : (Formalism.REAL.Jm ε)ᴴ = Formalism.REAL.Jm ε := by
    simp only [Formalism.REAL.Jm, Matrix.diagonal_conjTranspose]
    congr 1
    funext a
    by_cases h : ε a <;> simp [h]
  set J := Formalism.REAL.Jm ε with hJdef
  have hQJQ : Qᴴ * J * Q = J * Q := by rw [hQJ, Matrix.mul_assoc, hQQ]
  have hMh : (Qᴴ * J * Q).IsHermitian := by
    show (Qᴴ * J * Q)ᴴ = Qᴴ * J * Q
    rw [Matrix.conjTranspose_mul, Matrix.conjTranspose_mul, Matrix.conjTranspose_conjTranspose, hJs,
      Matrix.mul_assoc]
  obtain ⟨V, μ, hVV, hVV', hM⟩ := exists_unitary_diagonal_of_isHermitian (Qᴴ * J * Q) hMh
  rw [hQJQ] at hM
  set s : Fin n → ℂ := fun i => if μ i = 0 then 0 else (((Real.sqrt |μ i|)⁻¹ : ℝ) : ℂ) with hsdef
  refine ⟨Q * V * diagonal s, μ, ?_, ?_, ?_, ?_, V, s, rfl⟩
  · have hD : star V * (J * Q) * V = diagonal (fun i => (μ i : ℂ)) := by
      rw [hM]
      calc star V * (V * diagonal (fun i => (μ i : ℂ)) * star V) * V
          = (star V * V) * diagonal (fun i => (μ i : ℂ)) * (star V * V) := by
            simp only [Matrix.mul_assoc]
        _ = _ := by rw [hVV, Matrix.one_mul, Matrix.mul_one]
    have h1 : (Q * V * diagonal s)ᴴ * J * (Q * V * diagonal s) =
        (diagonal s)ᴴ * (star V * (Qᴴ * J * Q) * V) * diagonal s := by
      simp only [Matrix.conjTranspose_mul, Matrix.star_eq_conjTranspose, Matrix.mul_assoc]
    rw [h1, hQJQ, hD, Matrix.diagonal_conjTranspose, Matrix.diagonal_mul_diagonal,
      Matrix.diagonal_mul_diagonal]
    congr 1
    funext i
    by_cases hμ : μ i = 0
    · simp [hsdef, hμ]
    · have hsr := inst_sign_real (μ i) hμ
      have hc : star (s i) * (μ i : ℂ) * s i =
          (((Real.sqrt |μ i|)⁻¹ * μ i * (Real.sqrt |μ i|)⁻¹ : ℝ) : ℂ) := by
        simp only [hsdef, hμ, if_false, Complex.star_def, Complex.conj_ofReal]
        first
          | (push_cast; ring)
      simp only [Pi.star_apply]
      rw [hc, hsr, if_neg hμ]
      split_ifs <;> simp
  · rw [← Matrix.mul_assoc, ← Matrix.mul_assoc, hQQ]
  · intro x hx
    obtain ⟨z, hz⟩ : ∃ z : Fin n → ℂ, z = star V *ᵥ x := ⟨_, rfl⟩
    obtain ⟨w2, hw2⟩ : ∃ w2 : Fin n → ℂ, w2 = fun i => if μ i = 0 then z i else 0 := ⟨_, rfl⟩
    refine ⟨fun i => if μ i = 0 then 0 else (Real.sqrt |μ i| : ℂ) * z i, fun i hi => by simp [hi], ?_⟩
    have hVz : V *ᵥ z = x := by rw [hz, Matrix.mulVec_mulVec, hVV', Matrix.one_mulVec]
    have h1 : (J * Q) *ᵥ (V *ᵥ w2) = 0 := by
      rw [hM, ← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, Matrix.mulVec_mulVec w2 (star V) V, hVV,
        Matrix.one_mulVec]
      have h2 : diagonal (fun i => (μ i : ℂ)) *ᵥ w2 = 0 := by
        funext i
        rw [Matrix.mulVec_diagonal, hw2]
        by_cases hμ : μ i = 0 <;> simp [hμ]
      rw [h2, Matrix.mulVec_zero]
    have hkill : Q *ᵥ (V *ᵥ w2) = 0 := by
      calc Q *ᵥ (V *ᵥ w2) = (J * J * Q) *ᵥ (V *ᵥ w2) := by rw [hJJ, Matrix.one_mul]
        _ = J *ᵥ ((J * Q) *ᵥ (V *ᵥ w2)) := by simp only [Matrix.mulVec_mulVec, Matrix.mul_assoc]
        _ = 0 := by rw [h1, Matrix.mulVec_zero]
    have hSy : diagonal s *ᵥ (fun i => if μ i = 0 then 0 else (Real.sqrt |μ i| : ℂ) * z i) =
        fun i => if μ i = 0 then 0 else z i := by
      funext i
      rw [Matrix.mulVec_diagonal]
      by_cases hμ : μ i = 0
      · simp [hμ]
      · have hpos : 0 < Real.sqrt |μ i| := Real.sqrt_pos.mpr (abs_pos.mpr hμ)
        simp only [hsdef, hμ, if_false]
        rw [← mul_assoc, ← Complex.ofReal_mul, inv_mul_cancel₀ hpos.ne', Complex.ofReal_one, one_mul]
    have hsplit : z = (fun i => if μ i = 0 then 0 else z i) + w2 := by
      funext i
      rw [hw2]
      simp only [Pi.add_apply]
      split_ifs <;> simp
    calc x = Q *ᵥ x := hx.symm
      _ = Q *ᵥ (V *ᵥ z) := by rw [hVz]
      _ = Q *ᵥ (V *ᵥ (fun i => if μ i = 0 then 0 else z i)) + Q *ᵥ (V *ᵥ w2) := by
          conv_lhs => rw [hsplit]
          rw [Matrix.mulVec_add, Matrix.mulVec_add]
      _ = Q *ᵥ (V *ᵥ (fun i => if μ i = 0 then 0 else z i)) := by rw [hkill, add_zero]
      _ = (Q * V * diagonal s) *ᵥ
            (fun i => if μ i = 0 then 0 else (Real.sqrt |μ i| : ℂ) * z i) := by
          rw [← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, hSy]
  · have hrk1 : (J * Q).rank = Q.rank :=
      Matrix.rank_mul_eq_right_of_isUnit_det J Q (Matrix.isUnit_det_of_left_inverse hJJ)
    have hVunit : IsUnit V.det := Matrix.isUnit_det_of_left_inverse hVV
    have hsVunit : IsUnit (star V).det := Matrix.isUnit_det_of_left_inverse hVV'
    rw [← hrk1, hM, Matrix.rank_mul_eq_left_of_isUnit_det _ _ hsVunit,
      Matrix.rank_mul_eq_right_of_isUnit_det _ _ hVunit, Matrix.rank_diagonal]
    exact Fintype.card_congr (Equiv.subtypeEquivRight fun i => Complex.ofReal_ne_zero.symm)

end PI.ScMuExists.UnitaryGroupMassFormula
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstAdapt =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.AdaptedBasisInstance =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.AdaptedBasisInstance", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstDefs\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.InstAdapt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.BitVec\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix

namespace PI.ScMuExists.UnitaryGroupMassFormula

theorem adapted_basis_instance : InstAdaptBasis := by
  intro n ε ι _ _ B hG
  have hJJ : Formalism.REAL.Jm ε * Formalism.REAL.Jm ε = 1 := by
    simp only [Formalism.REAL.Jm, Matrix.diagonal_mul_diagonal]
    rw [← Matrix.diagonal_one]
    congr 1
    funext a
    split_ifs <;> norm_num
  have hJs : (Formalism.REAL.Jm ε)ᴴ = Formalism.REAL.Jm ε := by
    simp only [Formalism.REAL.Jm, Matrix.diagonal_conjTranspose]
    congr 1
    funext a
    by_cases h : ε a <;> simp [h]
  set J := Formalism.REAL.Jm ε with hJdef
  set G := Bᴴ * J * B with hGdef
  have hdet : IsUnit G.det := (Matrix.isUnit_iff_isUnit_det G).mp hG
  have hGi : G⁻¹ * G = 1 := Matrix.nonsing_inv_mul G hdet
  have hGh : Gᴴ = G := by
    rw [hGdef, Matrix.conjTranspose_mul, Matrix.conjTranspose_mul, Matrix.conjTranspose_conjTranspose,
      hJs, Matrix.mul_assoc]
  have hGih : (G⁻¹)ᴴ = G⁻¹ := by rw [Matrix.conjTranspose_nonsing_inv, hGh]
  set Q := B * G⁻¹ * Bᴴ * J with hQdef
  have hQB : Q * B = B := by
    calc Q * B = B * (G⁻¹ * (Bᴴ * J * B)) := by simp only [hQdef, Matrix.mul_assoc]
      _ = B := by rw [← hGdef, hGi, Matrix.mul_one]
  have hQQ : Q * Q = Q := by
    calc Q * Q = (Q * B) * (G⁻¹ * Bᴴ * J) := by simp only [hQdef, Matrix.mul_assoc]
      _ = Q := by rw [hQB]; simp only [hQdef, Matrix.mul_assoc]
  have hQJ : Qᴴ * J = J * Q := by
    simp only [hQdef, Matrix.conjTranspose_mul, hJs, hGih, Matrix.conjTranspose_conjTranspose,
      Matrix.mul_assoc]
  set P := 1 - Q with hPdef
  have hPP : P * P = P := by
    simp only [hPdef, Matrix.sub_mul, Matrix.mul_sub, Matrix.one_mul, Matrix.mul_one, hQQ]
    abel
  have hPJ : Pᴴ * J = J * P := by
    rw [hPdef, Matrix.conjTranspose_sub, Matrix.conjTranspose_one, Matrix.sub_mul, Matrix.mul_sub, hQJ,
      Matrix.one_mul, Matrix.mul_one]
  have hQP : Q * P = 0 := by rw [hPdef, Matrix.mul_sub, Matrix.mul_one, hQQ, sub_self]
  have hPQ : P * Q = 0 := by rw [hPdef, Matrix.sub_mul, Matrix.one_mul, hQQ, sub_self]
  obtain ⟨W1, l1, hW1J, hQW1, hsp1, hcard1, -⟩ := inst_qfamily ε Q hQQ hQJ
  obtain ⟨W2, l2, hW2J, hPW2, -, hcard2, -⟩ := inst_qfamily ε P hPP hPJ
  have hcross : W1ᴴ * J * W2 = 0 := by
    calc W1ᴴ * J * W2 = (Q * W1)ᴴ * J * (P * W2) := by rw [hQW1, hPW2]
      _ = W1ᴴ * (Qᴴ * J) * P * W2 := by simp only [Matrix.conjTranspose_mul, Matrix.mul_assoc]
      _ = 0 := by
        rw [hQJ]
        simp only [Matrix.mul_assoc]
        rw [← Matrix.mul_assoc Q P, hQP]
        simp
  have hcross' : W2ᴴ * J * W1 = 0 := by
    calc W2ᴴ * J * W1 = (P * W2)ᴴ * J * (Q * W1) := by rw [hQW1, hPW2]
      _ = W2ᴴ * (Pᴴ * J) * Q * W1 := by simp only [Matrix.conjTranspose_mul, Matrix.mul_assoc]
      _ = 0 := by
        rw [hPJ]
        simp only [Matrix.mul_assoc]
        rw [← Matrix.mul_assoc P Q, hPQ]
        simp
  have hrk : Q.rank + P.rank = n := by
    apply le_antisymm
    · have h1 : LinearMap.range P.mulVecLin ≤ LinearMap.ker Q.mulVecLin := by
        rintro _ ⟨x, rfl⟩
        rw [LinearMap.mem_ker, Matrix.mulVecLin_apply, Matrix.mulVecLin_apply, Matrix.mulVec_mulVec,
          hQP, Matrix.zero_mulVec]
      have h2 := LinearMap.finrank_range_add_finrank_ker Q.mulVecLin
      have h3 := Submodule.finrank_mono h1
      have h4 : Module.finrank ℂ (Fin n → ℂ) = n := by
        first
          | exact Module.finrank_fin_fun ℂ
      simp only [← Matrix.finrank_range_mulVecLin]
      omega
    · have h := inst_rank_add_le Q P
      have hsum : Q + P = 1 := by rw [hPdef]; abel
      rw [hsum, Matrix.rank_one, Fintype.card_fin] at h
      exact h
  have hcardsum : Fintype.card ({i // l1 i ≠ 0} ⊕ {i // l2 i ≠ 0}) = n := by
    refine Eq.trans ?_ hrk
    rw [Fintype.card_sum]
    convert congrArg₂ (· + ·) hcard1 hcard2 using 2
  obtain ⟨e⟩ : Nonempty (Fin n ≃ ({i // l1 i ≠ 0} ⊕ {i // l2 i ≠ 0})) :=
    ⟨(Fintype.equivFinOfCardEq hcardsum).symm⟩
  obtain ⟨A, hAe⟩ : ∃ A : Matrix (Fin n) (Fin n) ℂ, ∀ r k, A r k =
      Sum.elim (fun j : {i // l1 i ≠ 0} => W1 r j) (fun j : {i // l2 i ≠ 0} => W2 r j) (e k) :=
    ⟨Matrix.of fun r k =>
      Sum.elim (fun j : {i // l1 i ≠ 0} => W1 r j) (fun j : {i // l2 i ≠ 0} => W2 r j) (e k),
      fun _ _ => rfl⟩
  obtain ⟨ε', hε'⟩ : ∃ ε' : Fin n → Bool, ∀ k, ε' k =
      Sum.elim (fun j : {i // l1 i ≠ 0} => decide (0 < l1 j))
        (fun j : {i // l2 i ≠ 0} => decide (0 < l2 j)) (e k) :=
    ⟨fun k => Sum.elim (fun j : {i // l1 i ≠ 0} => decide (0 < l1 j))
        (fun j : {i // l2 i ≠ 0} => decide (0 < l2 j)) (e k), fun _ => rfl⟩
  have hcol : ∀ (M : Matrix (Fin n) (Fin n) ℂ) (k : Fin n), M *ᵥ Pi.single k 1 = fun r => M r k := by
    intro M k
    funext r
    simp only [Matrix.mulVec, dotProduct, Pi.single_apply, mul_ite, mul_one, mul_zero,
      Finset.sum_ite_eq', Finset.mem_univ, if_true]
  refine ⟨A, ε', Finset.univ.filter (fun k => (e k).isLeft = true), ?_, ?_, ?_⟩
  · ext k k'
    rw [inst_gram_entry]
    simp only [Formalism.REAL.Jm, Matrix.diagonal_apply, hAe, hε']
    rcases hk : e k with j | j <;> rcases hk' : e k' with j' | j' <;>
      simp only [Sum.elim_inl, Sum.elim_inr]
    · rw [← inst_gram_entry W1 J W1 (j : Fin n) j', hW1J, Matrix.diagonal_apply]
      have hkk : k = k' ↔ (j : Fin n) = j' := by
        rw [← e.apply_eq_iff_eq, hk, hk', Sum.inl.injEq, Subtype.ext_iff]
      by_cases h : (j : Fin n) = j'
      · rw [if_pos h, if_pos (hkk.mpr h), if_neg j.2]
        by_cases hp : 0 < l1 j <;> simp [hp]
      · rw [if_neg h, if_neg (fun h' => h (hkk.mp h'))]
    · rw [← inst_gram_entry W1 J W2 (j : Fin n) j', hcross, Matrix.zero_apply, if_neg]
      intro h
      subst h
      rw [hk] at hk'
      exact Sum.inl_ne_inr hk'
    · rw [← inst_gram_entry W2 J W1 (j : Fin n) j', hcross', Matrix.zero_apply, if_neg]
      intro h
      subst h
      rw [hk] at hk'
      exact Sum.inr_ne_inl hk'
    · rw [← inst_gram_entry W2 J W2 (j : Fin n) j', hW2J, Matrix.diagonal_apply]
      have hkk : k = k' ↔ (j : Fin n) = j' := by
        rw [← e.apply_eq_iff_eq, hk, hk', Sum.inr.injEq, Subtype.ext_iff]
      by_cases h : (j : Fin n) = j'
      · rw [if_pos h, if_pos (hkk.mpr h), if_neg j.2]
        by_cases hp : 0 < l2 j <;> simp [hp]
      · rw [if_neg h, if_neg (fun h' => h (hkk.mp h'))]
  · intro i hi
    simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hi
    rcases hk : e i with j | j
    · refine ⟨G⁻¹ *ᵥ (Bᴴ *ᵥ (J *ᵥ (W1 *ᵥ Pi.single (j : Fin n) 1))), ?_⟩
      have h1 : A *ᵥ Pi.single i 1 = W1 *ᵥ Pi.single (j : Fin n) 1 := by
        rw [hcol, hcol]
        funext r
        show A r i = W1 r (j : Fin n)
        rw [hAe, hk, Sum.elim_inl]
      rw [h1]
      calc W1 *ᵥ Pi.single (j : Fin n) 1 = (Q * W1) *ᵥ Pi.single (j : Fin n) 1 := by rw [hQW1]
        _ = _ := by simp only [hQdef, Matrix.mulVec_mulVec, Matrix.mul_assoc]
    · rw [hk] at hi
      simp at hi
  · intro j
    have hb : Q *ᵥ (B *ᵥ Pi.single j 1) = B *ᵥ Pi.single j 1 := by rw [Matrix.mulVec_mulVec, hQB]
    obtain ⟨y, hy0, hy⟩ := hsp1 _ hb
    refine ⟨fun k => Sum.elim (fun j' : {i // l1 i ≠ 0} => y j') (fun _ => (0 : ℂ)) (e k), ?_, ?_⟩
    · intro k hk
      simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hk
      rcases he : e k with j' | j'
      · rw [he] at hk
        simp at hk
      · simp only [he, Sum.elim_inr]
    · rw [hy]
      funext r
      simp only [Matrix.mulVec, dotProduct, hAe]
      symm
      rw [Fintype.sum_equiv e _ (fun x => Sum.elim (fun j : {i // l1 i ≠ 0} => W1 r j)
        (fun j : {i // l2 i ≠ 0} => W2 r j) x *
          Sum.elim (fun j' : {i // l1 i ≠ 0} => y j') (fun _ => (0 : ℂ)) x) (fun k => rfl)]
      rw [Fintype.sum_sum_type]
      simp only [Sum.elim_inl, Sum.elim_inr, mul_zero, Finset.sum_const_zero, add_zero]
      rw [← Fintype.sum_subtype_add_sum_subtype (fun i => l1 i ≠ 0) (fun i => W1 r i * y i)]
      have h0 : ∑ i : {i // ¬ l1 i ≠ 0}, W1 r i * y i = 0 :=
        Finset.sum_eq_zero fun i _ => by rw [hy0 i (not_not.mp i.2), mul_zero]
      rw [h0, add_zero]

end PI.ScMuExists.UnitaryGroupMassFormula
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MeasureDecomposition.AdaptedBasisInstance =====
