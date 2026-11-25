module

public import Mathlib.Basic.Complex.Basic
public import Mathlib.LinearAlgebra.Matrix.ConjTranspose
public import Mathlib.Analysis.Matrix.Spectrum
public import Mathlib.Algebra.Star.Unitary
public import Mathlib.Analysis.Complex.Exponential
public import Formalism.HermitianCurvature.StatementB
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.JInvGroupA
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.StDiagExists
public import ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.UnitaryGroupStructuralFacts

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.JTransMA, ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.JTransMB, ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.JTransM

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.JTransMA =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.JTransMA", "h": "module\n\npublic import Mathlib.Basic.Complex.Basic\npublic import Mathlib.LinearAlgebra.Matrix.ConjTranspose\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.Matrix.Spectrum\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.Algebra.Star.Unitary\npublic import Mathlib.Analysis.Complex.Exponential\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix
open scoped InnerProductSpace ComplexConjugate

namespace ReciprocityTheory.ChartRestriction.DS.Mult1

namespace TransM

variable {S : Type} [Fintype S] [DecidableEq S]

private theorem exists_orthonormal_eigenvectors :
    ∀ (n : ℕ) {E : Type} [NormedAddCommGroup E] [InnerProductSpace ℂ E] [FiniteDimensional ℂ E],
      Module.finrank ℂ E = n →
      ∀ (T : E →ₗ[ℂ] E), (∀ x y, ⟪T x, T y⟫_ℂ = ⟪x, y⟫_ℂ) →
      ∃ (v : Fin n → E) (d : Fin n → ℂ),
        Orthonormal ℂ v ∧ (∀ i, conj (d i) * d i = 1) ∧ ∀ i, T (v i) = d i • v i
  | 0, _, _, _, _, _, _, _ =>
    ⟨Fin.elim0, Fin.elim0, orthonormal_iff_ite.mpr fun i => i.elim0,
      fun i => i.elim0, fun i => i.elim0⟩
  | n + 1, E, _, _, _, hfin, T, hT => by
    have : Nontrivial E := Module.nontrivial_of_finrank_pos (R := ℂ) (by omega)
    obtain ⟨μ, x, hx0, hTx⟩ : ∃ (μ : ℂ) (x : E), x ≠ 0 ∧ T x = μ • x := by
      have hint : IsIntegral ℂ T := Algebra.IsIntegral.isIntegral T
      obtain ⟨μ, hμ⟩ := IsAlgClosed.exists_root (minpoly ℂ T) (minpoly.degree_pos hint).ne'
      obtain ⟨q, hq⟩ := Polynomial.dvd_iff_isRoot.mpr hμ
      have hqm : q.Monic := by
        simpa [Polynomial.Monic, hq, Polynomial.leadingCoeff_mul,
          Polynomial.monic_X_sub_C μ] using minpoly.monic hint
      have hqne : Polynomial.aeval T q ≠ 0 := fun hq0 => by
        have hlt : q.degree < (minpoly ℂ T).degree := by
          rw [hq, Polynomial.degree_mul, Polynomial.degree_X_sub_C,
            Polynomial.degree_eq_natDegree hqm.ne_zero]
          exact_mod_cast Nat.lt_add_of_pos_left Nat.one_pos
        exact hlt.not_ge (minpoly.min ℂ T hqm hq0)
      obtain ⟨y, hy⟩ : ∃ y : E, Polynomial.aeval T q y ≠ 0 := by
        by_contra h; push Not at h; exact hqne (LinearMap.ext h)
      refine ⟨μ, Polynomial.aeval T q y, hy, ?_⟩
      have h0 : (T - μ • (1 : Module.End ℂ E)) (Polynomial.aeval T q y) = 0 := by
        have := congrArg (fun f : Module.End ℂ E => f y) (minpoly.aeval ℂ T)
        rwa [hq, map_mul, map_sub, Polynomial.aeval_X, Polynomial.aeval_C,
          Algebra.algebraMap_eq_smul_one] at this
      exact sub_eq_zero.mp (by simpa using h0)
    let u : E := (‖x‖⁻¹ : ℂ) • x
    have hu : ‖u‖ = 1 := by
      simp [u, norm_smul, inv_mul_cancel₀ (norm_ne_zero_iff.mpr hx0)]
    have hu0 : u ≠ 0 := norm_ne_zero_iff.mp (by simp [hu])
    have hTu : T u = μ • u := by
      simp only [u, map_smul, hTx]
      exact smul_comm _ _ _
    have hμ1 : conj μ * μ = 1 := by
      have h1 := hT u u
      rw [hTu, inner_smul_left, inner_smul_right, inner_self_eq_norm_sq_to_K, hu] at h1
      simpa [mul_assoc] using h1
    set K : Submodule ℂ E := (ℂ ∙ u)ᗮ
    have hK : ∀ y ∈ K, T y ∈ K := fun y hy => by
      rw [Submodule.mem_orthogonal_singleton_iff_inner_right] at hy ⊢
      have h0 : conj μ * ⟪u, T y⟫_ℂ = 0 := by rw [← inner_smul_left, ← hTu, hT, hy]
      exact (mul_eq_zero.mp h0).resolve_left fun h => by simp [h] at hμ1
    have hfinK : Module.finrank ℂ K = n := by
      have hadd : Module.finrank ℂ (ℂ ∙ u) + Module.finrank ℂ K = Module.finrank ℂ E :=
        Submodule.finrank_add_finrank_orthogonal (ℂ ∙ u)
      have h1 : Module.finrank ℂ (ℂ ∙ u) = 1 := finrank_span_singleton hu0
      omega
    obtain ⟨v', d', hv', hd', hTv'⟩ :=
      exists_orthonormal_eigenvectors n hfinK (T.restrict hK) fun a b => hT a b
    refine ⟨Fin.cons u fun i => (v' i : E), Fin.cons μ d', ?_,
      Fin.cases hμ1 hd', Fin.cases hTu fun i => congrArg Subtype.val (hTv' i)⟩
    rw [orthonormal_iff_ite]
    refine Fin.cases (Fin.cases ?_ fun j => ?_) fun i => Fin.cases ?_ fun j => ?_
    · simp [inner_self_eq_norm_sq_to_K, hu]
    · simp [(Fin.succ_ne_zero j).symm, Submodule.mem_orthogonal_singleton_iff_inner_right.mp (v' j).2]
    · simp [Submodule.mem_orthogonal_singleton_iff_inner_left.mp (v' i).2]
    · simpa using orthonormal_iff_ite.mp hv' i j

private theorem unitary_exists_diagonalization (m : Matrix S S ℂ) (hm : mᴴ * m = 1) :
    ∃ (V : Matrix S S ℂ) (d : S → ℂ), Vᴴ * V = 1 ∧ V * Vᴴ = 1 ∧
      (∀ i, conj (d i) * d i = 1) ∧ m = V * Matrix.diagonal d * Vᴴ := by
  have hT : ∀ x y : EuclideanSpace ℂ S,
      ⟪Matrix.toEuclideanLin m x, Matrix.toEuclideanLin m y⟫_ℂ = ⟪x, y⟫_ℂ := fun x y => by
    rw [EuclideanSpace.inner_eq_star_dotProduct, EuclideanSpace.inner_eq_star_dotProduct]
    change (m *ᵥ y.ofLp) ⬝ᵥ star (m *ᵥ x.ofLp) = y.ofLp ⬝ᵥ star x.ofLp
    rw [dotProduct_comm, star_mulVec, dotProduct_mulVec, Matrix.vecMul_vecMul, hm,
      Matrix.vecMul_one, dotProduct_comm]
  obtain ⟨v, d, hv, hd, hTv⟩ := exists_orthonormal_eigenvectors (Fintype.card S)
    (finrank_euclideanSpace (𝕜 := ℂ) (ι := S)) (Matrix.toEuclideanLin m) hT
  let eqv := Fintype.equivFin S
  let V : Matrix S S ℂ := Matrix.of fun i j => (v (eqv j)) i
  have hV1 : Vᴴ * V = 1 := by
    ext j k
    have hjk : (Vᴴ * V) j k = ⟪v (eqv j), v (eqv k)⟫_ℂ := by
      rw [EuclideanSpace.inner_eq_star_dotProduct]
      simp [V, Matrix.mul_apply, dotProduct, Matrix.conjTranspose_apply, mul_comm]
    rw [hjk, orthonormal_iff_ite.mp hv, Matrix.one_apply]
    simp [eqv.injective.eq_iff]
  have hV2 : V * Vᴴ = 1 := mul_eq_one_comm.mp hV1
  have hmV : m * V = V * Matrix.diagonal (d ∘ eqv) := by
    ext i j
    rw [Matrix.mul_diagonal]
    have h1 := congrFun (congrArg WithLp.ofLp (hTv (eqv j))) i
    simpa [V, Matrix.mul_apply, Matrix.mulVec, dotProduct, mul_comm] using h1
  refine ⟨V, d ∘ eqv, hV1, hV2, fun i => hd (eqv i), ?_⟩
  rw [← hmV, Matrix.mul_assoc, hV2, Matrix.mul_one]

theorem exists_transpose_mat (m : Matrix S S ℂ) (hm : mᴴ * m = 1) (w : S → ℂ) (hw : ∀ s, conj (w s) = w s) :
    ∃ U : Matrix S S ℂ, Uᴴ * U = 1 ∧ U *ᵥ w = w ∧ m.map (starRingEnd ℂ) * U * m = U := by
  obtain ⟨V, d, hV1, hV2, hd, rfl⟩ := unitary_exists_diagonalization m hm
  let x : S → ℂ := Vᴴ *ᵥ w
  let e : S → ℂ := fun i => if x i = 0 then 1 else conj (x i) / x i
  have he1 (i : S) : e i * x i = conj (x i) := by
    by_cases h : x i = 0 <;> simp [e, h]
  have he2 (i : S) : conj (e i) * e i = 1 := by
    by_cases h : x i = 0
    · simp [e, h]
    · simp only [e, h, ↓reduceIte, map_div₀, starRingEnd_self_apply]
      field_simp [h, (map_ne_zero (starRingEnd ℂ)).mpr h]
  have hVT : Vᴴ.map (starRingEnd ℂ) = Vᵀ := by ext i j; simp [Matrix.conjTranspose_apply]
  have hcVH : (V.map (starRingEnd ℂ))ᴴ = Vᵀ := by ext i j; simp [Matrix.conjTranspose_apply]
  have hcV : Vᵀ * V.map (starRingEnd ℂ) = 1 := by
    simpa [Matrix.map_mul, hVT, Matrix.map_one _ (map_zero _) (map_one _)] using
      congrArg (Matrix.map · (starRingEnd ℂ)) hV1
  have hEE : (Matrix.diagonal e)ᴴ * Matrix.diagonal e = 1 := by
    rw [Matrix.diagonal_conjTranspose, Matrix.diagonal_mul_diagonal, ← Matrix.diagonal_one]
    exact congrArg Matrix.diagonal (funext he2)
  refine ⟨V.map (starRingEnd ℂ) * Matrix.diagonal e * Vᴴ, ?_, ?_, ?_⟩
  · rw [Matrix.conjTranspose_mul, Matrix.conjTranspose_mul, Matrix.conjTranspose_conjTranspose, hcVH]
    simp only [Matrix.mul_assoc]
    rw [← Matrix.mul_assoc Vᵀ, hcV, Matrix.one_mul, ← Matrix.mul_assoc (Matrix.diagonal e)ᴴ, hEE,
      Matrix.one_mul, hV2]
  · rw [← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec]
    have hEx : Matrix.diagonal e *ᵥ x = fun i => conj (x i) := funext fun i => by
      rw [Matrix.mulVec_diagonal]; exact he1 i
    change V.map (starRingEnd ℂ) *ᵥ (Matrix.diagonal e *ᵥ x) = w
    rw [hEx]
    ext i
    have hVx : (V *ᵥ x) i = w i := congrFun (by rw [Matrix.mulVec_mulVec, hV2, Matrix.one_mulVec]) i
    rw [← hw i, ← hVx]
    simp [Matrix.mulVec, dotProduct, map_sum]
  · rw [Matrix.map_mul, Matrix.map_mul, hVT, Matrix.diagonal_map (map_zero _)]
    simp only [Matrix.mul_assoc]
    rw [← Matrix.mul_assoc Vᵀ, hcV, Matrix.one_mul, ← Matrix.mul_assoc Vᴴ V, hV1, Matrix.one_mul,
      ← Matrix.mul_assoc (Matrix.diagonal e) (Matrix.diagonal d), Matrix.diagonal_mul_diagonal,
      ← Matrix.mul_assoc (Matrix.diagonal _) (Matrix.diagonal _), Matrix.diagonal_mul_diagonal]
    have hde (i : S) : conj (d i) * (e i * d i) = e i := by
      rw [← mul_assoc, mul_comm (conj (d i)), mul_assoc, hd i, mul_one]
    simp only [hde]

end TransM

end ReciprocityTheory.ChartRestriction.DS.Mult1
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.JTransMA =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.JTransMB =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.JTransMB", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.JInvGroupA\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix
open scoped ComplexConjugate

namespace ReciprocityTheory.ChartRestriction.DS.Mult1

open Formalism.QuantumDeterminants Formalism.FourierDecayAlt.B Formalism.FourierDecayAlt.B2

namespace TransM

variable {k r : ℕ}

def pK (k r : ℕ) (i : Fin (2 * r + k + 1)) : Prop := r ≤ i.val ∧ i.val < r + k

instance (k r : ℕ) : DecidablePred (pK k r) := fun i => inferInstanceAs (Decidable (r ≤ i.val ∧ i.val < r + k))

def Qm (a : Matrix {i // pK k r i} {i // pK k r i} ℂ) (b : Matrix {i // ¬ pK k r i} {i // ¬ pK k r i} ℂ) :
    Mat k r :=
  Matrix.reindex (Equiv.sumCompl (pK k r)) (Equiv.sumCompl (pK k r)) (fromBlocks a 0 0 b)

theorem Qm_apply (a : Matrix {i // pK k r i} {i // pK k r i} ℂ) (b : Matrix {i // ¬ pK k r i} {i // ¬ pK k r i} ℂ)
    (i j : Fin (2 * r + k + 1)) :
    Qm a b i j = if hi : pK k r i then (if hj : pK k r j then a ⟨i, hi⟩ ⟨j, hj⟩ else 0)
      else (if hj : pK k r j then 0 else b ⟨i, hi⟩ ⟨j, hj⟩) := by
  simp only [Qm, Matrix.reindex_apply, Matrix.submatrix_apply]
  by_cases hi : pK k r i <;> by_cases hj : pK k r j <;>
    simp [hi, hj, Equiv.sumCompl_symm_apply_of_pos, Equiv.sumCompl_symm_apply_of_neg]

theorem Qm_mul (a c : Matrix {i // pK k r i} {i // pK k r i} ℂ) (b d : Matrix {i // ¬ pK k r i} {i // ¬ pK k r i} ℂ) :
    Qm a b * Qm c d = Qm (a * c) (b * d) := by
  simp only [Qm, Matrix.reindex_apply]
  rw [Matrix.submatrix_mul_equiv, Matrix.fromBlocks_multiply]
  simp

theorem Qm_conjTranspose (a : Matrix {i // pK k r i} {i // pK k r i} ℂ) (b : Matrix {i // ¬ pK k r i} {i // ¬ pK k r i} ℂ) :
    (Qm a b)ᴴ = Qm aᴴ bᴴ := by
  simp [Qm, Matrix.reindex_apply, Matrix.conjTranspose_submatrix, Matrix.fromBlocks_conjTranspose]

theorem Qm_map (a : Matrix {i // pK k r i} {i // pK k r i} ℂ) (b : Matrix {i // ¬ pK k r i} {i // ¬ pK k r i} ℂ) :
    (Qm a b).map (starRingEnd ℂ) = Qm (a.map (starRingEnd ℂ)) (b.map (starRingEnd ℂ)) := by
  simp only [Qm, Matrix.reindex_apply, ← Matrix.submatrix_map, Matrix.fromBlocks_map]
  simp

theorem Qm_one : Qm (1 : Matrix {i // pK k r i} {i // pK k r i} ℂ) 1 = (1 : Mat k r) := by
  simp [Qm, Matrix.reindex_apply, Matrix.fromBlocks_one, Matrix.submatrix_one_equiv]

theorem Qm_left_inj {a c : Matrix {i // pK k r i} {i // pK k r i} ℂ} {b d : Matrix {i // ¬ pK k r i} {i // ¬ pK k r i} ℂ}
    (h : Qm a b = Qm c d) : a = c := by
  have h' := (Matrix.reindex (Equiv.sumCompl (pK k r)) (Equiv.sumCompl (pK k r))).injective h
  exact (Matrix.fromBlocks_inj.mp h').1

theorem Hpk_left (i j : Fin (2 * r + k + 1)) (hi : pK k r i) : Hpk k r i j = if i = j then 1 else 0 := by
  obtain ⟨h1, h2⟩ := hi
  unfold Hpk
  by_cases hij : i = j
  · subst hij
    rw [if_neg (by omega), if_neg (by omega), if_pos ⟨h1, by omega, rfl⟩, if_neg (by omega), if_pos rfl]
  · rw [if_neg (by omega), if_neg (fun h => by have : i.val ≠ j.val := fun e => hij (Fin.ext e); omega),
      if_neg (fun h => hij h.2.2), if_neg hij]

theorem Hpk_right (i j : Fin (2 * r + k + 1)) (hj : pK k r j) : Hpk k r i j = if i = j then 1 else 0 := by
  obtain ⟨h1, h2⟩ := hj
  unfold Hpk
  by_cases hij : i = j
  · subst hij
    rw [if_neg (by omega), if_neg (by omega), if_pos ⟨h1, by omega, rfl⟩, if_neg (by omega), if_pos rfl]
  · rw [if_neg (fun h => by have : i.val ≠ j.val := fun e => hij (Fin.ext e); omega), if_neg (by omega),
      if_neg (fun h => hij h.2.2), if_neg hij]

theorem Hpk_eq_Qm : Hpk k r = Qm 1 ((Hpk k r).submatrix Subtype.val Subtype.val) := by
  ext i j
  rw [Qm_apply]
  by_cases hi : pK k r i
  · rw [Hpk_left i j hi, dite_eq_left hi]
    by_cases hj : pK k r j
    · rw [dite_eq_left hj, Matrix.one_apply]
      by_cases h : i = j
      · subst h; simp
      · simp [h]
    · rw [dite_eq_right hj, if_neg]
      rintro rfl
      exact hj hi
  · rw [dite_eq_right hi]
    by_cases hj : pK k r j
    · rw [dite_eq_left hj, Hpk_right i j hj, if_neg]
      rintro rfl
      exact hi hj
    · rw [dite_eq_right hj]
      rfl

theorem col_fix (x : Mat k r) (j : Fin (2 * r + k + 1)) (h : x *ᵥ bvec j = bvec j) (i : Fin (2 * r + k + 1)) :
    x i j = if i = j then 1 else 0 := by
  rw [← InvGrp.col_apply x i j, h]
  simp [bvec, Pi.single_apply]

theorem row_fix (x : Mat k r) (hx : x ∈ UH (Hpk k r)) (i j : Fin (2 * r + k + 1)) (s : ℂ) (hs : s ≠ 0)
    (hcol : x *ᵥ bvec j = bvec j) (hH : ∀ l, Hpk k r j l = if l = i then s else 0) (l : Fin (2 * r + k + 1)) :
    x i l = if i = l then 1 else 0 := by
  have hc := col_fix x j hcol
  have hrow : ∀ n, (xᴴ * Hpk k r) j n = Hpk k r j n := by
    intro n
    rw [Matrix.mul_apply, Finset.sum_eq_single j]
    · simp [Matrix.conjTranspose_apply, hc]
    · intro m _ hm
      simp [Matrix.conjTranspose_apply, hc, hm]
    · simp
  have key : (xᴴ * Hpk k r * x) j l = s * x i l := by
    rw [Matrix.mul_apply, Finset.sum_eq_single i]
    · rw [hrow, hH, if_pos rfl]
    · intro n _ hn
      rw [hrow, hH, if_neg hn, zero_mul]
    · simp
  have hx2 : xᴴ * Hpk k r * x = Hpk k r := hx
  rw [hx2, hH] at key
  by_cases hil : i = l
  · subst hil
    rw [if_pos rfl] at key
    rw [if_pos rfl]
    exact mul_left_cancel₀ hs (key.symm.trans (mul_one s).symm)
  · rw [if_neg (Ne.symm hil)] at key
    rw [if_neg hil]
    exact (mul_eq_zero.mp key.symm).resolve_left hs

theorem Hpk_esI (a : Fin r) (l : Fin (2 * r + k + 1)) : Hpk k r (esI k r a) l = if l = eI k r a then 1 else 0 := by
  have he : (esI k r a).val = 2 * r + k - a.val := rfl
  have he2 : (eI k r a).val = a.val := rfl
  have ha := a.isLt
  unfold Hpk
  by_cases hl : l = eI k r a
  · have hv : l.val = a.val := by rw [hl, he2]
    rw [if_neg (by omega), if_pos (by omega), if_pos hl]
  · have hv : l.val ≠ a.val := fun h => hl (Fin.ext (h.trans he2.symm))
    rw [if_neg (by omega), if_neg (by omega), if_neg (fun h => by obtain ⟨_, h2, _⟩ := h; omega), if_neg hl]

theorem Hpk_eI (a : Fin r) (l : Fin (2 * r + k + 1)) : Hpk k r (eI k r a) l = if l = esI k r a then 1 else 0 := by
  have he : (esI k r a).val = 2 * r + k - a.val := rfl
  have he2 : (eI k r a).val = a.val := rfl
  have ha := a.isLt
  have hlt := l.isLt
  unfold Hpk
  by_cases hl : l = esI k r a
  · have hv : l.val = 2 * r + k - a.val := by rw [hl, he]
    rw [if_pos (by omega), if_pos hl]
  · have hv : l.val ≠ 2 * r + k - a.val := fun h => hl (Fin.ext (h.trans he.symm))
    rw [if_neg (by omega), if_neg (by omega), if_neg (fun h => by obtain ⟨h1, _, _⟩ := h; omega), if_neg hl]

theorem Hpk_wlast (l : Fin (2 * r + k + 1)) :
    Hpk k r (wI k r (Fin.last k)) l = if l = wI k r (Fin.last k) then -1 else 0 := by
  have hw : (wI k r (Fin.last k)).val = r + k := rfl
  unfold Hpk
  by_cases hl : l = wI k r (Fin.last k)
  · subst hl
    rw [if_neg (by omega), if_neg (by omega), if_pos ⟨by omega, by omega, rfl⟩, if_pos hw, if_pos rfl]
  · rw [if_neg (by omega), if_neg (by omega), if_neg (fun h => hl h.2.2.symm), if_neg hl]

theorem not_pK_cases (j : Fin (2 * r + k + 1)) (hj : ¬ pK k r j) :
    (∃ a : Fin r, j = eI k r a) ∨ (∃ a : Fin r, j = esI k r a) ∨ j = wI k r (Fin.last k) := by
  unfold pK at hj
  have hjlt := j.isLt
  by_cases h1 : j.val < r
  · exact Or.inl ⟨⟨j.val, h1⟩, Fin.ext rfl⟩
  · by_cases h2 : j.val = r + k
    · exact Or.inr (Or.inr (Fin.ext h2))
    · refine Or.inr (Or.inl ⟨⟨2 * r + k - j.val, by omega⟩, Fin.ext ?_⟩)
      show j.val = 2 * r + k - (2 * r + k - j.val)
      omega

private theorem mulVec_bvec_eq_of_fix_e_es_last_not_pK (x : Mat k r)
    (he : ∀ a : Fin r, x *ᵥ bvec (eI k r a) = bvec (eI k r a) ∧ x *ᵥ bvec (esI k r a) = bvec (esI k r a))
    (hl : x *ᵥ bvec (wI k r (Fin.last k)) = bvec (wI k r (Fin.last k)))
    (j : Fin (2 * r + k + 1)) (hj : ¬ pK k r j) : x *ᵥ bvec j = bvec j := by
  rcases not_pK_cases j hj with ⟨a, rfl⟩ | ⟨a, rfl⟩ | rfl
  · exact (he a).1
  · exact (he a).2
  · exact hl

private theorem apply_eq_ite_of_fix_e_es_last_not_pK (x : Mat k r) (hx : x ∈ UH (Hpk k r))
    (he : ∀ a : Fin r, x *ᵥ bvec (eI k r a) = bvec (eI k r a) ∧ x *ᵥ bvec (esI k r a) = bvec (esI k r a))
    (hl : x *ᵥ bvec (wI k r (Fin.last k)) = bvec (wI k r (Fin.last k)))
    (i : Fin (2 * r + k + 1)) (hi : ¬ pK k r i) (l : Fin (2 * r + k + 1)) :
    x i l = if i = l then 1 else 0 := by
  rcases not_pK_cases i hi with ⟨a, rfl⟩ | ⟨a, rfl⟩ | rfl
  · exact row_fix x hx (eI k r a) (esI k r a) 1 one_ne_zero (he a).2 (Hpk_esI a) l
  · exact row_fix x hx (esI k r a) (eI k r a) 1 one_ne_zero (he a).1 (Hpk_eI a) l
  · exact row_fix x hx _ _ (-1) (neg_ne_zero.mpr one_ne_zero) hl (fun l => Hpk_wlast l) l

theorem eq_Qm (x : Mat k r) (hx : x ∈ UH (Hpk k r))
    (he : ∀ a : Fin r, x *ᵥ bvec (eI k r a) = bvec (eI k r a) ∧ x *ᵥ bvec (esI k r a) = bvec (esI k r a))
    (hl : x *ᵥ bvec (wI k r (Fin.last k)) = bvec (wI k r (Fin.last k))) :
    x = Qm (x.submatrix Subtype.val Subtype.val) 1 := by
  ext i j
  rw [Qm_apply]
  by_cases hi : pK k r i
  · rw [dite_eq_left hi]
    by_cases hj : pK k r j
    · rw [dite_eq_left hj]
      rfl
    · rw [dite_eq_right hj, col_fix x j (mulVec_bvec_eq_of_fix_e_es_last_not_pK x he hl j hj) i, if_neg]
      rintro rfl
      exact hj hi
  · rw [dite_eq_right hi, apply_eq_ite_of_fix_e_es_last_not_pK x hx he hl i hi j]
    by_cases hj : pK k r j
    · rw [dite_eq_left hj, if_neg]
      rintro rfl
      exact hi hj
    · rw [dite_eq_right hj, Matrix.one_apply]
      by_cases h : i = j
      · subst h; simp
      · simp [h]

theorem unitary_of_Qm (m : Matrix {i // pK k r i} {i // pK k r i} ℂ) (hx : Qm m 1 ∈ UH (Hpk k r)) : mᴴ * m = 1 := by
  have h : (Qm m 1)ᴴ * Hpk k r * Qm m 1 = Hpk k r := hx
  rw [Hpk_eq_Qm, Qm_conjTranspose, Qm_mul, Qm_mul] at h
  simp only [Matrix.conjTranspose_one, Matrix.mul_one, Matrix.one_mul] at h
  exact Qm_left_inj h

theorem Qm_mem_UH (U : Matrix {i // pK k r i} {i // pK k r i} ℂ) (hU : Uᴴ * U = 1) : Qm U 1 ∈ UH (Hpk k r) := by
  show (Qm U 1)ᴴ * Hpk k r * Qm U 1 = Hpk k r
  rw [Hpk_eq_Qm, Qm_conjTranspose, Qm_mul, Qm_mul]
  simp only [Matrix.conjTranspose_one, Matrix.mul_one, Matrix.one_mul, hU]

theorem Qm_fix_off (U : Matrix {i // pK k r i} {i // pK k r i} ℂ) (j : Fin (2 * r + k + 1)) (hj : ¬ pK k r j) :
    Qm U 1 *ᵥ bvec j = bvec j := by
  ext i
  rw [InvGrp.col_apply, Qm_apply]
  simp only [bvec, Pi.single_apply]
  by_cases hi : pK k r i
  · rw [dite_eq_left hi, dite_eq_right hj, if_neg]
    rintro rfl
    exact hj hi
  · rw [dite_eq_right hi, dite_eq_right hj, Matrix.one_apply]
    by_cases h : i = j
    · subst h; simp
    · simp [h]

theorem Qm_fix_vec (U : Matrix {i // pK k r i} {i // pK k r i} ℂ) (j : Fin (2 * r + k + 1))
    (hU : U *ᵥ (fun s => bvec j s.1) = fun s => bvec j s.1) : Qm U 1 *ᵥ bvec j = bvec j := by
  by_cases hj : pK k r j
  · ext i
    rw [InvGrp.col_apply, Qm_apply]
    have h2 : (fun s : {i // pK k r i} => bvec j s.1) = Pi.single ⟨j, hj⟩ 1 := by
      ext s
      simp only [bvec, Pi.single_apply, Subtype.ext_iff]
    rw [h2] at hU
    by_cases hi : pK k r i
    · rw [dite_eq_left hi, dite_eq_left hj]
      have := congrFun hU ⟨i, hi⟩
      simp [Matrix.mulVec, dotProduct, Pi.single_apply] at this
      simp [bvec, Pi.single_apply, this]
    · rw [dite_eq_right hi, dite_eq_left hj]
      simp only [bvec, Pi.single_apply]
      rw [if_neg]
      rintro rfl
      exact hi hj
  · exact Qm_fix_off U j hj

end TransM

end ReciprocityTheory.ChartRestriction.DS.Mult1
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.JTransMB =====

-- ===== clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.JTransM =====
-- clump-header: {"m": "ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.JTransM", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.StDiagExists\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.UnitaryGroupStructuralFacts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.JInvGroupA\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.JTransMA\npublic import ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.JTransMB\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Matrix
open scoped ComplexConjugate

namespace ReciprocityTheory.ChartRestriction.DS.Mult1

open Formalism.QuantumDeterminants Formalism.FourierDecayAlt.B Formalism.FourierDecayAlt.B2

theorem stTransM (h : UnitaryGroupStructuralFacts) : StTransM := by
  obtain ⟨hB2, -, -, -, hUWb, -⟩ := h
  obtain ⟨-, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, -, hCG, -⟩ := hB2
  intro k r Wp _ _ _ D X _ _ γ hγ y hy
  have hG := hCG k r
  have hEG : embWb k r γ ∈ GV k r := by
    have hmem : embWb k r γ ∈ UWb k r := by rw [(hUWb k r).1]; exact ⟨γ, hγ.1, rfl⟩
    exact hmem.1
  have hE := hG.unit _ hEG
  set E := embWb k r γ with hEdef
  have hEiG : E⁻¹ ∈ GV k r := hG.inv_mem _ hEG
  have hc : ∀ B : Mat k r, E⁻¹ * (E * B) = B := fun B => Matrix.nonsing_inv_mul_cancel_left E B hE
  have hEE : ∀ v, E⁻¹ *ᵥ (E *ᵥ v) = v := fun v => by
    rw [Matrix.mulVec_mulVec, Matrix.nonsing_inv_mul _ hE, Matrix.one_mulVec]
  have hEfix : ∀ j, ¬ InvGrp.isW k r j → E *ᵥ bvec j = bvec j := fun j hj =>
    InvGrp.embWb_fix_offW γ _ (InvGrp.bvec_offW j hj)
  have hEifix : ∀ j, ¬ InvGrp.isW k r j → E⁻¹ *ᵥ bvec j = bvec j := fun j hj =>
    InvGrp.embWb_inv_fix_offW hE _ (InvGrp.bvec_offW j hj)
  have hwl : ¬ InvGrp.isW k r (wI k r (Fin.last k)) → False := fun h => h ⟨by simp [wI], by simp [wI]⟩
  set b := bvec (wI k r (Fin.last k)) with hbdef
  have hs0 : ((Real.sqrt (Tz k r D.z) : ℝ) : ℂ) ≠ 0 := by
    exact_mod_cast (Real.sqrt_pos.mpr D.T_pos).ne'
  have hzE : D.z = ((Real.sqrt (Tz k r D.z) : ℝ) : ℂ) • (E *ᵥ b) := by
    rw [hγ.2, smul_smul, Complex.ofReal_inv, mul_inv_cancel₀ hs0, one_smul]

  set x := E⁻¹ * y * E with hxdef
  have hxG : x ∈ GV k r := hG.mul_mem _ (hG.mul_mem _ hEiG _ hy.1) _ hEG
  have hxv : ∀ v, x *ᵥ v = E⁻¹ *ᵥ (y *ᵥ (E *ᵥ v)) := fun v => by
    rw [Matrix.mulVec_mulVec, Matrix.mulVec_mulVec]
  have hxe : ∀ a : Fin r, x *ᵥ bvec (eI k r a) = bvec (eI k r a) ∧ x *ᵥ bvec (esI k r a) = bvec (esI k r a) := by
    intro a
    constructor
    · rw [hxv, hEfix _ (InvGrp.not_isW_eI a), (hy.2.1 a).1, hEifix _ (InvGrp.not_isW_eI a)]
    · rw [hxv, hEfix _ (InvGrp.not_isW_esI a), (hy.2.1 a).2, hEifix _ (InvGrp.not_isW_esI a)]
  have hxl : x *ᵥ b = b := by
    rw [hxv, hγ.2, Matrix.mulVec_smul, hy.2.2, ← hγ.2, hEE]
  have hxeq := TransM.eq_Qm x hxG hxe hxl
  set m := x.submatrix (Subtype.val : {i // TransM.pK k r i} → _) Subtype.val with hmdef
  have hm : mᴴ * m = 1 := TransM.unitary_of_Qm m (hxeq ▸ hxG)
  have hw : ∀ s : {i // TransM.pK k r i}, conj (bvec (wI k r 0) s.1) = bvec (wI k r 0) s.1 := by
    intro s
    simp only [bvec, Pi.single_apply]
    split_ifs <;> simp
  obtain ⟨U, hU1, hUw, hUc⟩ := TransM.exists_transpose_mat m hm (fun s => bvec (wI k r 0) s.1) hw
  set PU := TransM.Qm U 1 with hPUdef
  have hPUG : PU ∈ GV k r := TransM.Qm_mem_UH U hU1
  have hPUs : TransM.Qm Uᴴ 1 * PU = 1 := by
    rw [hPUdef, TransM.Qm_mul, hU1, Matrix.one_mul, TransM.Qm_one]
  have hPUs' : PU * TransM.Qm Uᴴ 1 = 1 := by
    rw [hPUdef, TransM.Qm_mul, mul_eq_one_comm.mp hU1, Matrix.one_mul, TransM.Qm_one]
  have hkey : x.map (starRingEnd ℂ) * PU * x = PU := by
    rw [hxeq, TransM.Qm_map, hPUdef, TransM.Qm_mul, TransM.Qm_mul, hUc]
    simp
  have hyx : y = E * x * E⁻¹ := by
    rw [hxdef]
    simp only [Matrix.mul_assoc]
    rw [Matrix.mul_nonsing_inv_cancel_left E _ hE, Matrix.mul_nonsing_inv _ hE, Matrix.mul_one]
  have hnotK : ∀ j, ¬ InvGrp.isW k r j → ¬ TransM.pK k r j := fun j hj hK =>
    hj ⟨hK.1, by have := hK.2; omega⟩
  have hnotKl : ¬ TransM.pK k r (wI k r (Fin.last k)) := fun hK => by
    have := hK.2; simp [wI] at this
  refine ⟨E * PU * E⁻¹, ⟨⟨hG.mul_mem _ (hG.mul_mem _ hEG _ hPUG) _ hEiG, fun a => ⟨?_, ?_⟩, ?_⟩, ?_⟩, ?_⟩
  · rw [← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, hEifix _ (InvGrp.not_isW_eI a),
      TransM.Qm_fix_off U _ (hnotK _ (InvGrp.not_isW_eI a)), hEfix _ (InvGrp.not_isW_eI a)]
  · rw [← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, hEifix _ (InvGrp.not_isW_esI a),
      TransM.Qm_fix_off U _ (hnotK _ (InvGrp.not_isW_esI a)), hEfix _ (InvGrp.not_isW_esI a)]
  · conv_lhs => rw [hzE]
    rw [Matrix.mulVec_smul, ← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, hEE, TransM.Qm_fix_off U _ hnotKl, ← hzE]
  · show (E * PU * E⁻¹) *ᵥ (E *ᵥ bvec (wI k r 0)) = E *ᵥ bvec (wI k r 0)
    rw [← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, hEE, TransM.Qm_fix_vec U _ hUw]
  · have hinv : (E * PU * E⁻¹)⁻¹ = E * TransM.Qm Uᴴ 1 * E⁻¹ := by
      apply Matrix.inv_eq_left_inv
      simp only [Matrix.mul_assoc, hc]
      rw [← Matrix.mul_assoc (TransM.Qm Uᴴ 1) PU, hPUs, Matrix.one_mul, Matrix.mul_nonsing_inv _ hE]
    have hgb : gbar k r γ y = E * x.map (starRingEnd ℂ) * E⁻¹ := rfl
    show (gbar k r γ y)⁻¹ = _
    rw [hinv, hgb]
    apply Matrix.inv_eq_right_inv
    rw [hyx]
    simp only [Matrix.mul_assoc, hc]
    rw [← Matrix.mul_assoc (x.map (starRingEnd ℂ)) PU, ← Matrix.mul_assoc (x.map (starRingEnd ℂ) * PU) x, hkey,
      ← Matrix.mul_assoc PU, hPUs', Matrix.one_mul, Matrix.mul_nonsing_inv _ hE]

end ReciprocityTheory.ChartRestriction.DS.Mult1
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.ReductiveGroups.DiscreteSeries.MultiplicityOne.JTransM =====
