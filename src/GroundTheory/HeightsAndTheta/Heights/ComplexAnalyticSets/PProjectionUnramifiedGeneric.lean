module

public import Mathlib.LinearAlgebra.Matrix.Rank
public import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ExistsRowsLinearIndependent
public import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.StProjectionUnramifiedGeneric
public import Mathlib.Algebra.CharP.Algebra
import Mathlib.RingTheory.LocalProperties.Reduced
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.HeightsAndTheta.Theta.SplitLinear.RankMinors, GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PProjectionUnramifiedGeneric

-- ===== clump member: GroundTheory.HeightsAndTheta.Theta.SplitLinear.RankMinors =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Theta.SplitLinear.RankMinors", "h": "module\n\npublic import Mathlib.LinearAlgebra.Matrix.Rank\npublic import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ExistsRowsLinearIndependent\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Theta

namespace SplitLinear

open Matrix Module

universe u

variable {K : Type*} [Field K]

theorem exists_minor_ne_zero {r c : Type*} [Fintype r] [Fintype c] (P : Matrix r c K) {k : ℕ}
    (hk : k ≤ P.rank) : ∃ (I : Fin k → r) (J : Fin k → c), (P.submatrix I J).det ≠ 0 := by
  classical
  obtain ⟨I, hI⟩ := _root_.UpperTheory.Reformulated.B.Qm10.exists_rows_linearIndependent P hk
  set N : Matrix (Fin k) c K := P.submatrix I id with hNdef
  have hN : N.rank = k := by
    have := LinearIndependent.rank_matrix (M := N) hI
    simpa using this
  have hNt : k ≤ Nᵀ.rank := by rw [rank_transpose, hN]
  obtain ⟨J, hJ⟩ := _root_.UpperTheory.Reformulated.B.Qm10.exists_rows_linearIndependent Nᵀ hNt
  refine ⟨I, J, ?_⟩
  have hQ : IsUnit (Nᵀ.submatrix J id) := linearIndependent_rows_iff_isUnit.1 hJ
  have e : P.submatrix I J = (Nᵀ.submatrix J id)ᵀ := by ext p q; rfl
  rw [e, det_transpose]
  exact ((isUnit_iff_isUnit_det _).1 hQ).ne_zero

end SplitLinear

end GroundTheory.Heights₂.Theta
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Theta.SplitLinear.RankMinors =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PProjectionUnramifiedGeneric =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PProjectionUnramifiedGeneric", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.StProjectionUnramifiedGeneric\npublic import GroundTheory.HeightsAndTheta.Theta.SplitLinear.RankMinors\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.LocalProperties.Reduced\nimport Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.CharP.Algebra\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open MvPolynomial

noncomputable section

namespace ProjectionUnramifiedGeneric

theorem pderiv_inr_rename_inl {α β : Type} (b : β) (a : MvPolynomial α ℂ) :
    pderiv (Sum.inr b) (rename (Sum.inl : α → α ⊕ β) a) = 0 := by
  classical
  induction a using MvPolynomial.induction_on with
  | C c => simp
  | add p p' hp hp' => simp [hp, hp']
  | mul_X p i hp => simp [hp, pderiv_X]

theorem proof : ProjectionUnramifiedGeneric.Statement := by
  classical
  intro α β _ _ Q r q t hQ hint hqQ htQ hgen
  let L := FractionRing (MvPolynomial (α ⊕ β) ℂ ⧸ Q)
  let φ : MvPolynomial (α ⊕ β) ℂ →+* L := (algebraMap (MvPolynomial (α ⊕ β) ℂ ⧸ Q) L).comp (Ideal.Quotient.mk Q)
  have hφ : ∀ p, φ p = 0 ↔ p ∈ Q := by
    intro p
    have hinj := IsFractionRing.injective (MvPolynomial (α ⊕ β) ℂ ⧸ Q) L
    simp only [φ, RingHom.comp_apply]
    rw [← Ideal.Quotient.eq_zero_iff_mem, ← map_zero (algebraMap (MvPolynomial (α ⊕ β) ℂ ⧸ Q) L)]
    exact hinj.eq_iff
  let ι : MvPolynomial α ℂ →+* MvPolynomial (α ⊕ β) ℂ := (rename Sum.inl : MvPolynomial α ℂ →ₐ[ℂ] MvPolynomial (α ⊕ β) ℂ).toRingHom

  let D : (β → L) → MvPolynomial (α ⊕ β) ℂ → L := fun c p => ∑ b, φ (pderiv (Sum.inr b) p) * c b
  have hDadd : ∀ c p p', D c (p + p') = D c p + D c p' := by
    intro c p p'
    simp only [D, map_add (f := _), add_mul, Finset.sum_add_distrib]
  have hDmul : ∀ c p p', D c (p * p') = φ p * D c p' + φ p' * D c p := by
    intro c p p'
    simp only [D]
    rw [Finset.mul_sum, Finset.mul_sum, ← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl fun b _ => ?_
    rw [pderiv_mul]
    simp only [map_add (f := _), map_mul]
    ring
  have hDsum : ∀ c (f : Fin r → MvPolynomial (α ⊕ β) ℂ), D c (∑ j, f j) = ∑ j, D c (f j) := by
    intro c f

    simp only [D, map_sum, Finset.sum_mul]
    rw [Finset.sum_comm]
  have hDX : ∀ c b, D c (X (Sum.inr b)) = c b := by
    intro c b
    simp [D, pderiv_X, Pi.single_apply]
  have hDι : ∀ c a, D c (ι a) = 0 := by
    intro c a
    simp [D, ι, pderiv_inr_rename_inl]
  have hDpoly : ∀ c b (G : Polynomial (MvPolynomial α ℂ)),
      D c (G.eval₂ ι (X (Sum.inr b))) =
        φ ((Polynomial.derivative G).eval₂ ι (X (Sum.inr b))) * c b := by
    intro c b G
    induction G using Polynomial.induction_on with
    | C a => simp [hDι]
    | add f g hf hg => simp only [Polynomial.eval₂_add, hDadd, hf, hg, map_add, add_mul]
    | monomial n a h =>
      have e : (Polynomial.C a * Polynomial.X ^ (n + 1) : Polynomial (MvPolynomial α ℂ)) =
          Polynomial.C a * Polynomial.X ^ n * Polynomial.X := by ring
      rw [e, Polynomial.eval₂_mul, hDmul, h, Polynomial.eval₂_X, hDX]
      simp only [Polynomial.derivative_mul, Polynomial.derivative_X, Polynomial.eval₂_add,
        Polynomial.eval₂_mul, Polynomial.eval₂_X, map_add, map_mul, mul_one]
      ring

  have hker : ∀ c : β → L, (∀ j, D c (q j) = 0) → c = 0 := by
    intro c hc
    have hDQ : ∀ p ∈ Q, D c p = 0 := by
      intro p hp
      obtain ⟨i, hi⟩ := hgen p hp
      obtain ⟨g, hg⟩ := (Ideal.mem_span_range_iff_exists_fun).1 hi
      have h1 : D c (t ^ i * p) = 0 := by
        rw [← hg, hDsum]
        refine Finset.sum_eq_zero fun j _ => ?_
        rw [hDmul, hc j, (hφ _).2 (hqQ j)]
        ring
      rw [hDmul, (hφ p).2 hp, zero_mul, add_zero] at h1
      have ht : φ t ≠ 0 := fun h => htQ ((hφ t).1 h)
      rw [map_pow] at h1
      exact (mul_eq_zero.1 h1).resolve_left (pow_ne_zero _ ht)
    funext b
    obtain ⟨F, hFm, hF⟩ := hint b
    set y : L := φ (X (Sum.inr b))
    set Fb : Polynomial L := F.map (φ.comp ι)
    have hFb0 : Fb ≠ 0 := (hFm.map _).ne_zero
    have hev : ∀ G : Polynomial (MvPolynomial α ℂ),
        φ (G.eval₂ ι (X (Sum.inr b))) = (G.map (φ.comp ι)).eval y := by
      intro G
      rw [Polynomial.eval_map, Polynomial.hom_eval₂]
    have hroot : Fb.IsRoot y := by
      show Fb.eval y = 0
      rw [← hev]
      exact (hφ _).2 hF
    set k := Polynomial.rootMultiplicity y Fb
    have hk : 0 < k := (Polynomial.rootMultiplicity_pos hFb0).2 hroot
    set G := Polynomial.derivative^[k - 1] F
    have hG : G.eval₂ ι (X (Sum.inr b)) ∈ Q := by
      rw [← hφ, hev, ← Polynomial.iterate_derivative_map]
      exact Polynomial.isRoot_iterate_derivative_of_lt_rootMultiplicity (Nat.sub_lt hk one_pos)
    have hG' : φ ((Polynomial.derivative G).eval₂ ι (X (Sum.inr b))) ≠ 0 := by
      have e : Polynomial.derivative G = Polynomial.derivative^[k] F := by
        rw [show k = (k - 1) + 1 from (Nat.sub_add_cancel hk).symm, Function.iterate_succ_apply']
      rw [e, hev, ← Polynomial.iterate_derivative_map, Polynomial.eval_iterate_derivative_rootMultiplicity]
      have : CharZero L := charZero_of_injective_ringHom (φ.comp MvPolynomial.C).injective
      rw [nsmul_eq_mul]
      exact mul_ne_zero (Nat.cast_ne_zero.2 (Nat.factorial_ne_zero _))
        (Polynomial.eval_divByMonic_pow_rootMultiplicity_ne_zero y hFb0)
    have h0 := hDQ _ hG
    rw [hDpoly] at h0
    exact (mul_eq_zero.1 h0).resolve_left hG'

  let M : Matrix (Fin r) β L := Matrix.of fun j b => φ (pderiv (Sum.inr b) (q j))
  have hMinj : Function.Injective M.mulVecLin := by
    rw [injective_iff_map_eq_zero]
    intro c hc
    apply hker c
    intro j
    have := congrFun hc j
    simpa [M, Matrix.mulVec, dotProduct, D] using this
  have hrank : M.rank = Fintype.card β := by
    rw [← Matrix.finrank_range_mulVecLin, LinearMap.finrank_range_of_inj hMinj, Module.finrank_fintype_fun_eq_card]
  obtain ⟨I, J, hIJ⟩ := GroundTheory.Heights₂.Theta.SplitLinear.exists_minor_ne_zero M hrank.ge
  have hJinj : Function.Injective J := by
    intro x x' hxx'
    by_contra hne
    exact hIJ (Matrix.det_zero_of_column_eq hne fun p => by simp [M, hxx'])
  have hJbij : Function.Bijective J :=
    (Fintype.bijective_iff_injective_and_card J).2 ⟨hJinj, by simp⟩
  let e := Equiv.ofBijective J hJbij
  let μ : MvPolynomial (α ⊕ β) ℂ := (Matrix.of fun p p' => pderiv (Sum.inr (J p')) (q (I p))).det
  refine ⟨μ, ?_, ?_⟩
  · intro hμ
    apply hIJ
    rw [← (hφ μ).2 hμ, RingHom.map_det]
    congr 1
  · intro w _ hw v hvX hv
    have hdet : (Matrix.of fun p p' => eval w (pderiv (Sum.inr (J p')) (q (I p)))).det ≠ 0 := by
      rw [RingHom.map_det] at hw
      convert hw using 2
      ext p p'
      simp [RingHom.mapMatrix_apply]
    have hsub : Matrix.mulVec (Matrix.of fun p p' => eval w (pderiv (Sum.inr (J p')) (q (I p))))
        (fun p => v (Sum.inr (J p))) = 0 := by
      funext p
      have h1 := hv (I p)
      rw [Fintype.sum_sum_type] at h1
      simp only [hvX, mul_zero, Finset.sum_const_zero, zero_add] at h1
      rw [← Equiv.sum_comp e] at h1
      simpa [Matrix.mulVec, dotProduct, e] using h1
    have hz := Matrix.eq_zero_of_mulVec_eq_zero hdet hsub
    funext s
    cases s with
    | inl a => exact hvX a
    | inr b =>
      have h1 : v (Sum.inr (J (e.symm b))) = 0 := congrFun hz (e.symm b)
      have h2 : J (e.symm b) = b := e.apply_symm_apply b
      rwa [h2] at h1

end ProjectionUnramifiedGeneric

end

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PProjectionUnramifiedGeneric =====
