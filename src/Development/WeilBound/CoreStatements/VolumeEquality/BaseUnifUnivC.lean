module

public import Development.AutomorphicSpectrum.Proofs.MetricProofs.BigZe
public import Mathlib.Analysis.Matrix.Hermitian
public import Development.AutomorphicSpectrum.Definitions.MetricPeriods.IsEigFrames
public import Development.WeilBound.CoreStatements.VolumeEquality.BaseUnifRiem
import Development.AutomorphicSpectrum.Proofs.MetricProofs.BallMobiusHolomorphicPotentialChange
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Tactic.ReduceModChar
import GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PUnipotentModulusMatrix
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Polynomial.Basic
import Development.WeilBound.CoreStatements.PlurisubharmonicCones.EmbEquivSymmApply
import Mathlib.Tactic.Linter.HaveILetI
import Development.AutomorphicSpectrum.Proofs.MetricProofs.RiemannLatticeEigenProjection
import Mathlib.RingTheory.Etale.Weakly
import Mathlib.RingTheory.Finiteness.ModuleFinitePresentation
import Mathlib.RingTheory.TotallySplit

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.MetricProofs.BallDomainIffPosDef, Development.AutomorphicSpectrum.Proofs.MetricProofs.ConjugateEmbeddingsCriterion, Development.AutomorphicSpectrum.Proofs.MetricProofs.ExistsNormalizedRiemannLattice, Development.AutomorphicSpectrum.Proofs.MetricProofs.LogDetEqBallPotential, Development.AutomorphicSpectrum.Proofs.MetricProofs.SiegelNormalFormOfHermitian, Development.AutomorphicSpectrum.Proofs.MetricProofs.SiegelTransformCommutesAction, Development.AutomorphicSpectrum.Proofs.MetricProofs.SiegelTransformSymplecticImaginary, Development.AutomorphicSpectrum.Proofs.MetricProofs.SpanStandardBasisEigenspace, Development.AutomorphicSpectrum.Proofs.MetricProofs.SymmetricMatrixInBallImage, Development.WeilBound.CoreStatements.VolumeEquality.BaseUnifUnivA, Development.WeilBound.CoreStatements.VolumeEquality.BaseUnifUnivB, Development.WeilBound.CoreStatements.VolumeEquality.BaseUnifUnivC

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.MetricProofs.BallDomainIffPosDef =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.MetricProofs.BallDomainIffPosDef", "h": "module\n\nimport Development.AutomorphicSpectrum.Proofs.MetricProofs.BallMobiusHolomorphicPotentialChange\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.BigZe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PUnipotentModulusMatrix\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix MeasureTheory Filter Topology GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Cusp ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor GroundTheory.Heights₂.Heights.FiniteCovolume
open scoped ENNReal InnerProductSpace
open scoped ComplexOrder
open GlobalTheory.CompanionTheory.Ar.Cusp.Univ

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Cusp.Univ.MemBall

theorem posDef_adjoint {m n : Type} [Fintype m] [Fintype n] [DecidableEq m] [DecidableEq n] (A : Matrix m n ℂ)
    (h : (1 - Aᴴ * A).PosDef) : (1 - A * Aᴴ).PosDef := by
  apply GlobalTheory.CompanionTheory.Ar.Cusp.Dict.Moeb.posDef_one_sub_swap <;> assumption

theorem posDef_adjoint_iff {m n : Type} [Fintype m] [Fintype n] [DecidableEq m] [DecidableEq n] (A : Matrix m n ℂ) :
    (1 - Aᴴ * A).PosDef ↔ (1 - A * Aᴴ).PosDef :=
  ⟨posDef_adjoint A, fun h => by simpa using posDef_adjoint Aᴴ (by simpa using h)⟩

theorem posDef_blockDiagonal_iff {m o : Type} [Fintype m] [Fintype o] [DecidableEq m] [DecidableEq o]
    (M : o → Matrix m m ℂ) : (blockDiagonal M).PosDef ↔ ∀ k, (M k).PosDef := by
  constructor
  · intro h k
    have hinj : Function.Injective (fun i : m => (i, k)) := fun a b hab => (Prod.ext_iff.1 hab).1
    have := h.submatrix hinj
    convert this using 1
    ext a b
    simp [blockDiagonal_apply]
  · intro h
    refine posDef_iff_dotProduct_mulVec.2 ⟨?_, fun x hx => ?_⟩
    · rw [IsHermitian, blockDiagonal_conjTranspose]
      congr 1
      funext k
      exact (h k).1
    have hmv : ∀ i k, (blockDiagonal M *ᵥ x) (i, k) = (M k *ᵥ fun i => x (i, k)) i := by
      intro i k
      simp only [mulVec, dotProduct, Fintype.sum_prod_type_right, blockDiagonal_apply]
      rw [Finset.sum_eq_single k]
      · simp
      · intro c _ hc
        simp [Ne.symm hc]
      · simp
    have hsum : star x ⬝ᵥ (blockDiagonal M *ᵥ x) =
        ∑ k, star (fun i => x (i, k)) ⬝ᵥ (M k *ᵥ fun i => x (i, k)) := by
      simp only [dotProduct, Fintype.sum_prod_type_right, hmv]
      rfl
    rw [hsum]
    obtain ⟨⟨i, k⟩, hp⟩ := Function.ne_iff.1 hx
    refine Finset.sum_pos' (fun k _ => (h k).posSemidef.dotProduct_mulVec_nonneg _) ⟨k, Finset.mem_univ _, ?_⟩
    refine (posDef_iff_dotProduct_mulVec.1 (h k)).2 (Function.ne_iff.2 ⟨i, ?_⟩)
    simpa using hp

theorem posDef_fromBlocks_diag_iff {m n : Type} [Fintype m] [Fintype n] [DecidableEq m] [DecidableEq n]
    (A : Matrix m m ℂ) (D : Matrix n n ℂ) : (fromBlocks A 0 0 D).PosDef ↔ A.PosDef ∧ D.PosDef := by
  constructor
  · intro h
    constructor
    · have h1 : (fromBlocks A 0 0 D).submatrix (Sum.inl : m → m ⊕ n) Sum.inl = A := by
        ext a c; simp
      exact h1 ▸ h.submatrix Sum.inl_injective
    · have h1 : (fromBlocks A 0 0 D).submatrix (Sum.inr : n → m ⊕ n) Sum.inr = D := by
        ext a c; simp
      exact h1 ▸ h.submatrix Sum.inr_injective
  · rintro ⟨hA, hD⟩
    refine posDef_iff_dotProduct_mulVec.2 ⟨?_, fun x hx => ?_⟩
    · rw [IsHermitian, fromBlocks_conjTranspose, hA.1, hD.1]
      simp
    have hsum : star x ⬝ᵥ (fromBlocks A 0 0 D *ᵥ x) =
        star (x ∘ Sum.inl) ⬝ᵥ (A *ᵥ (x ∘ Sum.inl)) + star (x ∘ Sum.inr) ⬝ᵥ (D *ᵥ (x ∘ Sum.inr)) := by
      rw [fromBlocks_mulVec]
      simp [dotProduct, Fintype.sum_sum_type]
    rw [hsum]
    have h1 := hA.posSemidef.dotProduct_mulVec_nonneg (x ∘ Sum.inl)
    have h2 := hD.posSemidef.dotProduct_mulVec_nonneg (x ∘ Sum.inr)
    obtain ⟨p, hp⟩ := Function.ne_iff.1 hx
    rcases p with i | i
    · refine add_pos_of_pos_of_nonneg ((posDef_iff_dotProduct_mulVec.1 hA).2 (Function.ne_iff.2 ⟨i, ?_⟩)) h2
      simpa using hp
    · refine add_pos_of_nonneg_of_pos h1 ((posDef_iff_dotProduct_mulVec.1 hD).2 (Function.ne_iff.2 ⟨i, ?_⟩))
      simpa using hp

theorem posDef_transpose_block {m n : Type} [Fintype m] [Fintype n] [DecidableEq m] [DecidableEq n] (Z : Matrix m n ℂ) :
    (1 - Zᵀᴴ * Zᵀ).PosDef ↔ (1 - Zᴴ * Z).PosDef := by
  rw [posDef_adjoint_iff Z, ← PosDef.transpose_iff (M := 1 - Z * Zᴴ)]
  have : (1 - Z * Zᴴ)ᵀ = 1 - Zᵀᴴ * Zᵀ := by
    rw [transpose_sub, transpose_one, transpose_mul]
    congr 2
  rw [this]

end GlobalTheory.CompanionTheory.Ar.Cusp.Univ.MemBall

namespace GlobalTheory.CompanionTheory.Ar.Cusp.Univ


open MemBall in
theorem mem_ballDom_iff_posDef_bigZe {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {j j' n g : ℕ} (e : Ix Ψ j j' ≃ Fin g)
    (q : Ψ × Fin j × Fin j' ≃ Fin n) (t : Fin n → ℂ) :
    t ∈ ballDom q ↔ (1 - (bigZe e q t)ᴴ * bigZe e q t).PosDef := by
  have hblk : (1 : Matrix (Ix Ψ j j') (Ix Ψ j j') ℂ) - (bigZ q t)ᴴ * bigZ q t =
      blockDiagonal fun τ => fromBlocks (1 - (ballMat q t τ)ᴴ * ballMat q t τ) 0 0
        (1 - (ballMat q t τ)ᵀᴴ * (ballMat q t τ)ᵀ) := by
    rw [bigZ, blockDiagonal_conjTranspose, ← blockDiagonal_mul, ← blockDiagonal_one, ← blockDiagonal_sub]
    congr 1
    funext τ
    simp only [Pi.sub_apply, Pi.one_apply]
    rw [fromBlocks_conjTranspose, fromBlocks_multiply]
    simp only [conjTranspose_zero, mul_zero, add_zero, zero_add, ← fromBlocks_one]
    ext (a | a) (c | c) <;> simp [Matrix.one_apply]
  have hsub : (1 : Matrix (Fin g) (Fin g) ℂ) - (bigZe e q t)ᴴ * bigZe e q t =
      ((1 : Matrix (Ix Ψ j j') (Ix Ψ j j') ℂ) - (bigZ q t)ᴴ * bigZ q t).submatrix e.symm e.symm := by
    rw [bigZe, conjTranspose_submatrix, submatrix_mul_equiv]
    ext a c
    simp [Matrix.one_apply]
  have hequiv : ((1 - (bigZ q t)ᴴ * bigZ q t).submatrix e.symm e.symm).PosDef ↔
      (1 - (bigZ q t)ᴴ * bigZ q t).PosDef :=
    ⟨fun h => by simpa using h.submatrix e.injective, fun h => h.submatrix e.symm.injective⟩
  rw [hsub, hequiv, hblk, MemBall.posDef_blockDiagonal_iff]
  simp only [MemBall.posDef_fromBlocks_diag_iff, MemBall.posDef_transpose_block, and_self]
  rfl

end GlobalTheory.CompanionTheory.Ar.Cusp.Univ
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.MetricProofs.BallDomainIffPosDef =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.MetricProofs.ConjugateEmbeddingsCriterion =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.MetricProofs.ConjugateEmbeddingsCriterion", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.BigZe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PUnipotentModulusMatrix\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix MeasureTheory Filter Topology GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Cusp ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor GroundTheory.Heights₂.Heights.FiniteCovolume
open scoped ENNReal InnerProductSpace
open scoped ComplexOrder
open GlobalTheory.CompanionTheory.Ar.Cusp.Univ

namespace GlobalTheory.CompanionTheory.Ar.Cusp.Univ.EmbConj

theorem not_eq_conj {E : Type} [Field E] [NumberField E] [IsCMField E] {Ψ : Type} [Fintype Ψ]
    {σ : Ψ → (𝓞 E →+* ℂ)} (hσ : IsCMFam σ) (τ τ' : Ψ) (h : ∀ a : 𝓞 E, σ τ a = star (σ τ' a)) : False := by
  have h1 : σ τ = (starRingEnd ℂ).comp (σ τ') := RingHom.ext h
  exact ((hσ.2 (σ τ')).1 ⟨τ', rfl⟩) ⟨τ, h1⟩

theorem emb_eq_star_iff {E : Type} [Field E] [NumberField E] [IsCMField E] {Ψ : Type} [Fintype Ψ] {j j' : ℕ}
    (σ : Ψ → (𝓞 E →+* ℂ)) (hσ : IsCMFam σ) (i k : Ix Ψ j j') :
    (∀ a : 𝓞 E, emb σ i a = star (emb σ k a)) ↔ (i.2 = k.2 ∧ i.1.isLeft ≠ k.1.isLeft) := by
  obtain ⟨s, τ⟩ := i
  obtain ⟨t, τ'⟩ := k
  cases s with
  | inl s =>
    cases t with
    | inl t =>
      simp only [emb, Sum.elim_inl, Sum.isLeft_inl, ne_eq, not_true_eq_false, and_false, iff_false]
      intro h
      exact not_eq_conj hσ τ τ' h
    | inr t =>
      simp only [emb, Sum.elim_inl, Sum.elim_inr, Sum.isLeft_inl, Sum.isLeft_inr, RingHom.comp_apply,
        starRingEnd_apply, star_star, ne_eq, Bool.true_eq_false, not_false_eq_true, and_true]
      constructor
      · intro h
        exact hσ.1 (RingHom.ext h)
      · rintro rfl a
        rfl
  | inr s =>
    cases t with
    | inl t =>
      simp only [emb, Sum.elim_inl, Sum.elim_inr, Sum.isLeft_inl, Sum.isLeft_inr, RingHom.comp_apply,
        starRingEnd_apply, ne_eq, Bool.false_eq_true, not_false_eq_true, and_true]
      constructor
      · intro h
        exact hσ.1 (RingHom.ext fun a => star_injective (h a))
      · rintro rfl a
        rfl
    | inr t =>
      simp only [emb, Sum.elim_inr, Sum.isLeft_inr, RingHom.comp_apply, starRingEnd_apply, star_star,
        ne_eq, not_true_eq_false, and_false, iff_false]
      intro h
      exact not_eq_conj hσ τ' τ fun a => (h a).symm

end GlobalTheory.CompanionTheory.Ar.Cusp.Univ.EmbConj
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.MetricProofs.ConjugateEmbeddingsCriterion =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.MetricProofs.ExistsNormalizedRiemannLattice =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.MetricProofs.ExistsNormalizedRiemannLattice", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.BigZe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PUnipotentModulusMatrix\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\nimport Development.WeilBound.CoreStatements.PlurisubharmonicCones.EmbEquivSymmApply\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix MeasureTheory Filter Topology GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Cusp ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor GroundTheory.Heights₂.Heights.FiniteCovolume
open scoped ENNReal InnerProductSpace
open scoped ComplexOrder
open GlobalTheory.CompanionTheory.Ar.Cusp.Univ

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Cusp.Univ.CoordLat

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {g : ℕ} {Λ : Type} [AddCommGroup Λ] [Module (𝓞 E) Λ]

def ipLin (R : RiemLat E g Λ) (x : Fin g → ℂ) : (Fin g → ℂ) →ₗ[ℂ] ℂ where
  toFun := R.ip x
  map_add' y y' := by simp [RiemLat.ip, add_dotProduct]
  map_smul' c y := by simp [RiemLat.ip, smul_dotProduct]

theorem ip_eq_ipLin (R : RiemLat E g Λ) (x y : Fin g → ℂ) : R.ip x y = ipLin R x y := rfl

def diagAct (s : Fin g → (𝓞 E →+* ℂ)) : 𝓞 E →+* Module.End ℂ (Fin g → ℂ) where
  toFun a :=
    { toFun := fun x k => s k a * x k
      map_add' := fun x y => funext fun k => by simp [mul_add]
      map_smul' := fun r x => funext fun k => by simp [mul_left_comm] }
  map_one' := LinearMap.ext fun x => funext fun k => by simp
  map_mul' a b := LinearMap.ext fun x => funext fun k => by simp [mul_assoc]
  map_zero' := LinearMap.ext fun x => funext fun k => by simp
  map_add' a b := LinearMap.ext fun x => funext fun k => by simp [add_mul]

theorem diagAct_apply (s : Fin g → (𝓞 E →+* ℂ)) (a : 𝓞 E) (x : Fin g → ℂ) (k : Fin g) :
    diagAct s a x k = s k a * x k := rfl

section Frame

variable {ι : Type} [Fintype ι] [DecidableEq ι] (R : RiemLat E g Λ) (e : ι ≃ Fin g) (c : ι → Fin g → ℂ)

include e

theorem sum_ip_smul (hc : ∀ i i', R.ip (c i) (c i') = if i = i' then 1 else 0) (z : Fin g → ℂ) :
    ∑ i, R.ip (c i) z • c i = z := by
  have hli : LinearIndependent ℂ c := by
    rw [Fintype.linearIndependent_iff]
    intro a ha k
    have h := congrArg (ipLin R (c k)) ha

    rw [map_zero, map_sum] at h
    simp only [map_smul, ← ip_eq_ipLin, hc, smul_eq_mul] at h
    simpa using h
  have hspan : Submodule.span ℂ (Set.range c) = ⊤ :=
    hli.span_eq_top_of_card_eq_finrank' (by simp [Fintype.card_congr e])
  have hz : z ∈ Submodule.span ℂ (Set.range c) := hspan ▸ Submodule.mem_top
  obtain ⟨a, rfl⟩ := (Submodule.mem_span_range_iff_exists_fun ℂ).1 hz
  refine Finset.sum_congr rfl fun i _ => ?_
  congr 1

  rw [ip_eq_ipLin, map_sum]
  simp only [map_smul, ← ip_eq_ipLin, hc, smul_eq_mul]
  simp

theorem sum_ip_mul_conj (hc : ∀ i i', R.ip (c i) (c i') = if i = i' then 1 else 0) (u v : Fin g → ℂ) :
    ∑ i, R.ip (c i) u * starRingEnd ℂ (R.ip (c i) v) = R.ip v u := by
  conv_rhs => rw [← sum_ip_smul R e c hc u]

  rw [ip_eq_ipLin, map_sum]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [map_smul, ← ip_eq_ipLin, _root_.LevelTowerAlt.ip_conj, smul_eq_mul]

theorem ip_act (hc : ∀ i i', R.ip (c i) (c i') = if i = i' then 1 else 0) (s : ι → (𝓞 E →+* ℂ))
    (hs : ∀ i, c i ∈ eigSp R.B (s i)) (a : 𝓞 E) (i : ι) (z : Fin g → ℂ) :
    R.ip (c i) (R.B a z) = s i a * R.ip (c i) z := by
  have hB : ∀ l, R.B a (c l) = s l a • c l := fun l => by
    have h := (Submodule.mem_iInf _).1 (hs l) a
    have h' := LinearMap.mem_ker.1 h
    simpa [sub_eq_zero] using h'
  conv_lhs => rw [← sum_ip_smul R e c hc z]

  rw [map_sum, ip_eq_ipLin, map_sum]
  simp only [map_smul, hB, ← ip_eq_ipLin, hc, smul_eq_mul]
  simp [mul_comm]

end Frame

variable {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {j j' : ℕ}

theorem exists_riemLat_coord (R₀ : RiemLat E g Λ) (σ : Ψ → (𝓞 E →+* ℂ)) (e : Ix Ψ j j' ≃ Fin g)
    (c : Ix Ψ j j' → Fin g → ℂ) (hs : ∀ i, c i ∈ eigSp R₀.B (emb σ i))
    (hc : ∀ i i', R₀.ip (c i) (c i') = if i = i' then 1 else 0) :
    ∃ R₁ : RiemLat E g Λ, R₁.form = R₀.form ∧ R₁.Hm = 1 ∧ ∀ a x k, R₁.B a x k = emb σ (e.symm k) a * x k := by
  let P : Λ →+ (Fin g → ℂ) :=
    { toFun := fun x k => R₀.ip (c (e.symm k)) (R₀.P x)
      map_zero' := funext fun k => by simp [ip_eq_ipLin]
      map_add' := fun x y => funext fun k => by simp [ip_eq_ipLin] }
  have hP : ∀ x k, P x k = R₀.ip (c (e.symm k)) (R₀.P x) := fun _ _ => rfl
  refine ⟨{ free := R₀.free, fin := R₀.fin, rank := R₀.rank, form := R₀.form, alt := R₀.alt, unimod := R₀.unimod,
            adj := R₀.adj, P := P, Hm := 1, herm := isHermitian_one, pos := ?_, im := ?_,
            B := diagAct fun k => emb σ (e.symm k), act := ?_ }, rfl, rfl, fun _ _ _ => rfl⟩
  · intro z hz
    obtain ⟨k, hk⟩ := Function.ne_iff.1 hz
    have hk' : z k ≠ 0 := hk
    have : (z ⬝ᵥ (1 : Matrix (Fin g) (Fin g) ℂ) *ᵥ star z).re = ∑ l, Complex.normSq (z l) := by
      simp [dotProduct, Complex.mul_conj]
    rw [this]
    exact Finset.sum_pos' (fun l _ => Complex.normSq_nonneg _) ⟨k, Finset.mem_univ _, Complex.normSq_pos.2 hk'⟩
  · intro x y
    have key : P x ⬝ᵥ (1 : Matrix (Fin g) (Fin g) ℂ) *ᵥ star (P y) = R₀.P x ⬝ᵥ R₀.Hm *ᵥ star (R₀.P y) := by
      have h := sum_ip_mul_conj R₀ e c hc (R₀.P x) (R₀.P y)
      rw [← e.symm.sum_comp] at h
      rw [one_mulVec]
      exact h
    rw [key]
    exact R₀.im x y
  · intro a x
    funext k
    rw [diagAct_apply, hP, hP, R₀.act]
    exact ip_act R₀ e c hc (emb σ) hs a (e.symm k) (R₀.P x)

theorem coord_lat : ∀ {E : Type} [Field E] [NumberField E] [IsCMField E] {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {j j' g : ℕ} {Λ : Type} [AddCommGroup Λ] [Module (𝓞 E) Λ] (R₀ : RiemLat E g Λ) (σ : Ψ → (𝓞 E →+* ℂ)) (e : Ix Ψ j j' ≃ Fin g) (c : Ix Ψ j j' → Fin g → ℂ), (∀ i, c i ∈ eigSp R₀.B (emb σ i)) → (∀ i i', R₀.ip (c i) (c i') = if i = i' then 1 else 0) → ∃ R₁ : RiemLat E g Λ, R₁.form = R₀.form ∧ R₁.Hm = 1 ∧ ∀ a x k, R₁.B a x k = emb σ (e.symm k) a * x k :=
  fun R₀ σ e c hs hc => exists_riemLat_coord R₀ σ e c hs hc

end GlobalTheory.CompanionTheory.Ar.Cusp.Univ.CoordLat
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.MetricProofs.ExistsNormalizedRiemannLattice =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.MetricProofs.LogDetEqBallPotential =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.MetricProofs.LogDetEqBallPotential", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.BigZe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PUnipotentModulusMatrix\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix MeasureTheory Filter Topology GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Cusp ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor GroundTheory.Heights₂.Heights.FiniteCovolume
open scoped ENNReal InnerProductSpace
open scoped ComplexOrder
open GlobalTheory.CompanionTheory.Ar.Cusp.Univ

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Cusp.Univ.GramPot

theorem one_sub_bigZ {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {j j' n : ℕ} (q : Ψ × Fin j × Fin j' ≃ Fin n) (t : Fin n → ℂ) :
    1 - (bigZ q t)ᴴ * bigZ q t = blockDiagonal fun τ =>
      fromBlocks (1 - (ballMat q t τ)ᴴ * ballMat q t τ) 0 0 (1 - ((ballMat q t τ)ᵀ)ᴴ * (ballMat q t τ)ᵀ) := by
  unfold bigZ
  rw [blockDiagonal_conjTranspose, ← blockDiagonal_mul, ← blockDiagonal_one, ← blockDiagonal_sub]
  congr 1
  funext τ
  rw [Pi.sub_apply, Pi.one_apply, fromBlocks_conjTranspose, fromBlocks_multiply, ← fromBlocks_one, sub_eq_add_neg, fromBlocks_neg, fromBlocks_add]
  simp [sub_eq_add_neg]

theorem inv_blockDiagonal_fromBlocks {o a b : Type} [Fintype o] [DecidableEq o] [Fintype a] [DecidableEq a]
    [Fintype b] [DecidableEq b] (A : o → Matrix a a ℂ) (D : o → Matrix b b ℂ)
    (hA : ∀ k, (A k).det ≠ 0) (hD : ∀ k, (D k).det ≠ 0) :
    (blockDiagonal fun k => fromBlocks (A k) 0 0 (D k))⁻¹ =
      blockDiagonal fun k => fromBlocks (A k)⁻¹ 0 0 (D k)⁻¹ := by
  apply Matrix.inv_eq_left_inv
  rw [← blockDiagonal_mul, ← blockDiagonal_one]
  congr 1
  funext k
  rw [fromBlocks_multiply, Pi.one_apply, ← fromBlocks_one]
  have h1 : (A k)⁻¹ * A k = 1 := Matrix.nonsing_inv_mul _ (isUnit_iff_ne_zero.mpr (hA k))
  have h2 : (D k)⁻¹ * D k = 1 := Matrix.nonsing_inv_mul _ (isUnit_iff_ne_zero.mpr (hD k))
  simp [h1, h2]

theorem det_conj_block {a b : Type} [Fintype a] [DecidableEq a] [Fintype b] [DecidableEq b] (Z : Matrix b a ℂ) :
    (1 - (Zᵀ)ᴴ * Zᵀ).det = (1 - Zᴴ * Z).det := by
  rw [Matrix.det_one_sub_mul_comm, ← Matrix.det_transpose (1 - Zᴴ * Z)]
  congr 1
  rw [transpose_sub, transpose_one, transpose_mul]
  congr 1

theorem inv_apply_inl {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {j j' n : ℕ} (q : Ψ × Fin j × Fin j' ≃ Fin n) (t : Fin n → ℂ)
    (ht : t ∈ ballDom q) (τ : Ψ) (a b : Fin j') :
    (1 - (bigZ q t)ᴴ * bigZ q t)⁻¹ (Sum.inl a, τ) (Sum.inl b, τ) =
      ((1 - (ballMat q t τ)ᴴ * ballMat q t τ)⁻¹ : Matrix (Fin j') (Fin j') ℂ) a b := by
  have hA : ∀ k, (1 - (ballMat q t k)ᴴ * ballMat q t k).det ≠ 0 := fun k => (ht k).det_pos.ne'
  have hD : ∀ k, (1 - ((ballMat q t k)ᵀ)ᴴ * (ballMat q t k)ᵀ).det ≠ 0 := fun k => by
    rw [det_conj_block]; exact hA k
  rw [one_sub_bigZ, inv_blockDiagonal_fromBlocks _ _ hA hD]
  simp

theorem one_sub_bigZe {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {j j' n g : ℕ} (e : Ix Ψ j j' ≃ Fin g)
    (q : Ψ × Fin j × Fin j' ≃ Fin n) (t : Fin n → ℂ) :
    (1 - (bigZe e q t)ᴴ * bigZe e q t)⁻¹ = ((1 - (bigZ q t)ᴴ * bigZ q t)⁻¹).submatrix e.symm e.symm := by
  have h : 1 - (bigZe e q t)ᴴ * bigZe e q t = (1 - (bigZ q t)ᴴ * bigZ q t).submatrix e.symm e.symm := by
    unfold bigZe
    have h1 : (1 : Matrix (Fin g) (Fin g) ℂ) = (1 : Matrix (Ix Ψ j j') (Ix Ψ j j') ℂ).submatrix e.symm e.symm :=
      (submatrix_one_equiv e.symm).symm
    rw [conjTranspose_submatrix, submatrix_mul_equiv, h1]
    rfl
  rw [h, inv_submatrix_equiv]

theorem log_det_inv {a : Type} [Fintype a] [DecidableEq a] (A : Matrix a a ℂ) (hA : A.PosDef) :
    Real.log (A⁻¹).det.re = -Real.log A.det.re := by
  have hpos : 0 < A.det := hA.det_pos
  obtain ⟨hre, him⟩ := Complex.pos_iff.mp hpos
  have hreal : A.det = (A.det.re : ℂ) := by
    apply Complex.ext <;> simp [← him]
  have hinv : (A⁻¹).det = ((A.det.re)⁻¹ : ℝ) := by
    rw [Matrix.det_nonsing_inv, Ring.inverse_eq_inv', hreal]
    simp
  rw [hinv, Complex.ofReal_re, Real.log_inv]

theorem logDet_coord {E : Type} [Field E] [NumberField E] [IsCMField E] {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ]
    {j j' n g : ℕ} {Λ : Type} [AddCommGroup Λ] [Module (𝓞 E) Λ] (e : Ix Ψ j j' ≃ Fin g)
    (q : Ψ × Fin j × Fin j' ≃ Fin n) (t : Fin n → ℂ) (R : RiemLat E g Λ) (ht : t ∈ ballDom q)
    (hH : R.Hm = (1 - (bigZe e q t)ᴴ * bigZe e q t)⁻¹) :
    R.logDet (fun τ (i : Fin j') => (Pi.single (e (Sum.inl i, τ)) 1 : Fin g → ℂ)) = ballPot q t := by
  unfold RiemLat.logDet ballPot
  rw [← Finset.sum_neg_distrib]
  refine Finset.sum_congr rfl fun τ _ => ?_
  have hG : R.gram (fun i : Fin j' => (Pi.single (e (Sum.inl i, τ)) 1 : Fin g → ℂ)) =
      ((1 - (ballMat q t τ)ᴴ * ballMat q t τ)⁻¹)ᵀ := by
    ext a b
    have hs : star (Pi.single (e (Sum.inl a, τ)) 1 : Fin g → ℂ) = Pi.single (e (Sum.inl a, τ)) 1 := by
      ext i
      by_cases h : i = e (Sum.inl a, τ)
      · subst h; simp
      · simp [Pi.single_eq_of_ne h]
    simp only [RiemLat.gram, RiemLat.ip, Matrix.of_apply, hs, transpose_apply]
    rw [Matrix.mulVec_single_one, single_one_dotProduct, hH, one_sub_bigZe]
    simp [inv_apply_inl q t ht]
  rw [hG, det_transpose, log_det_inv _ (ht τ)]

end GlobalTheory.CompanionTheory.Ar.Cusp.Univ.GramPot
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.MetricProofs.LogDetEqBallPotential =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.MetricProofs.SiegelNormalFormOfHermitian =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.MetricProofs.SiegelNormalFormOfHermitian", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.BigZe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\npublic import Mathlib.Analysis.Matrix.Hermitian\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PUnipotentModulusMatrix\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix MeasureTheory Filter Topology GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Cusp ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor GroundTheory.Heights₂.Heights.FiniteCovolume
open scoped ENNReal InnerProductSpace
open scoped ComplexOrder
open GlobalTheory.CompanionTheory.Ar.Cusp.Univ

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Cusp.Univ.PeriodCoord

variable {I : Type} [Fintype I] [DecidableEq I]

theorem im_terms_separate (P Q R S : Matrix I I ℂ)
    (h : ∀ z w : I → ℂ, (z ⬝ᵥ P *ᵥ star w + z ⬝ᵥ Q *ᵥ w + star z ⬝ᵥ R *ᵥ star w
      + star z ⬝ᵥ S *ᵥ w).im = 0) :
    P = S.map star ∧ Q = R.map star := by
  have hs : ∀ (c : I) (γ : ℂ), star (Pi.single c γ : I → ℂ) = Pi.single c (star γ) := by
    intro c γ; ext i; by_cases hi : i = c
    · subst hi; simp
    · simp [hi]
  have he : ∀ (T : Matrix I I ℂ) (a b : I) (α β : ℂ),
      (Pi.single a α : I → ℂ) ⬝ᵥ T *ᵥ (Pi.single b β : I → ℂ) = α * β * T a b := by
    intro T a b α β
    simp [single_dotProduct]
    ring
  have key : ∀ (a b : I) (α β : ℂ), (α * star β * P a b + α * β * Q a b
      + star α * star β * R a b + star α * β * S a b).im = 0 := by
    intro a b α β
    have := h (Pi.single a α) (Pi.single b β)
    rw [hs, hs, he, he, he, he] at this
    exact this
  have h4 : ∀ a b, (P a b).re = (S a b).re ∧ (P a b).im = -(S a b).im ∧
      (Q a b).re = (R a b).re ∧ (Q a b).im = -(R a b).im := by
    intro a b
    have h1 := key a b 1 1
    have h2 := key a b Complex.I 1
    have h3 := key a b 1 Complex.I
    have h4 := key a b Complex.I Complex.I
    simp [Complex.mul_im, Complex.add_im] at h1 h2 h3 h4
    refine ⟨?_, ?_, ?_, ?_⟩ <;> linarith
  constructor
  · ext a b
    apply Complex.ext
    · simpa using (h4 a b).1
    · simpa using (h4 a b).2.1
  · ext a b
    apply Complex.ext
    · simpa using (h4 a b).2.2.1
    · simpa using (h4 a b).2.2.2

theorem exists_linear_antilinear (L : (I → ℂ) →ₗ[ℝ] (I → ℂ)) :
    ∃ M D : Matrix I I ℂ, ∀ z, L z = M *ᵥ z + D *ᵥ star z := by
  refine ⟨Matrix.of fun i j => (L (Pi.single j 1) i - Complex.I * L (Pi.single j Complex.I) i) / 2,
    Matrix.of fun i j => (L (Pi.single j 1) i + Complex.I * L (Pi.single j Complex.I) i) / 2, ?_⟩
  intro z
  have hz : z = ∑ j, ((z j).re • (Pi.single j 1 : I → ℂ) + (z j).im • (Pi.single j Complex.I : I → ℂ)) := by
    ext i
    simp [Finset.sum_apply, Pi.single_apply, Finset.sum_add_distrib]
  have hL : L z = ∑ j, ((z j).re • L (Pi.single j 1) + (z j).im • L (Pi.single j Complex.I)) := by
    conv_lhs => rw [hz]

    simp [map_sum, map_add (f := _), map_smul]
  rw [hL]
  ext i
  simp only [Finset.sum_apply, Pi.add_apply, Pi.smul_apply, mulVec, dotProduct, Matrix.of_apply,
    Pi.star_apply, ← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun j _ => ?_
  have aux : ∀ (a b : ℂ) (x y : ℝ), (x : ℂ) * a + y * b =
      (a - Complex.I * b) / 2 * (x + y * Complex.I) + (a + Complex.I * b) / 2 * (x - y * Complex.I) := by
    intro a b x y
    have hI := Complex.I_mul_I
    linear_combination ((y : ℂ) * b) * hI
  have hc : star (z j) = (z j).re - (z j).im * Complex.I := by
    apply Complex.ext <;> simp
  have hz' : z j = (z j).re + (z j).im * Complex.I := (Complex.re_add_im _).symm
  simp only [Complex.real_smul]
  rw [aux, hc, ← hz']

theorem star_mulVec_star (Z : Matrix I I ℂ) (w : I → ℂ) :
    star (Z *ᵥ star w) = Z.map star *ᵥ w := by
  ext i
  simp [mulVec, dotProduct]

theorem form_tz (G Z : Matrix I I ℂ) (z w : I → ℂ) :
    tz Z z ⬝ᵥ G *ᵥ star (tz Z w) = z ⬝ᵥ G *ᵥ star w + z ⬝ᵥ (-(G * Z.map star)) *ᵥ w
      + star z ⬝ᵥ (-(Zᵀ * G)) *ᵥ star w + star z ⬝ᵥ (Zᵀ * G * Z.map star) *ᵥ w := by
  have hv : ∀ (y v : I → ℂ), (Z *ᵥ y) ⬝ᵥ v = y ⬝ᵥ Zᵀ *ᵥ v := by
    intro y v
    rw [dotProduct_mulVec, vecMul_transpose]
  simp only [tz, star_sub, star_mulVec_star, mulVec_sub, sub_dotProduct, dotProduct_sub, hv,
    mulVec_mulVec, neg_mulVec, dotProduct_neg, Matrix.mul_assoc]
  ring

theorem form_pullback (H M : Matrix I I ℂ) (a b : I → ℂ) :
    (M *ᵥ a) ⬝ᵥ H *ᵥ star (M *ᵥ b) = a ⬝ᵥ (Mᵀ * H * M.map star) *ᵥ star b := by
  have h1 : star (M *ᵥ b) = M.map star *ᵥ star b := by
    have := star_mulVec_star M (star b)
    rwa [star_star] at this
  have hv : ∀ (y v : I → ℂ), (M *ᵥ y) ⬝ᵥ v = y ⬝ᵥ Mᵀ *ᵥ v := by
    intro y v
    rw [dotProduct_mulVec, vecMul_transpose]
  rw [h1, hv, mulVec_mulVec, mulVec_mulVec, Matrix.mul_assoc]

theorem posDef_of_form (G : Matrix I I ℂ) (hG : G.IsHermitian)
    (hp : ∀ z : I → ℂ, z ≠ 0 → 0 < (z ⬝ᵥ G *ᵥ star z).re) : G.PosDef := by
  refine Matrix.PosDef.of_dotProduct_mulVec_pos hG fun x hx => ?_
  have h := hp (star x) (by simpa using hx)
  rw [star_star] at h
  rw [Complex.lt_def]
  exact ⟨by simpa using h, by simpa using (hG.im_star_dotProduct_mulVec_self x).symm⟩

theorem symm_posDef_of_relations (G Z : Matrix I I ℂ) (hG : G.PosDef)
    (e1 : G - 1 = (Zᵀ * G * Z.map star).map star)
    (e2 : -(G * Z.map star) = (-(Zᵀ * G)).map star) :
    Zᵀ = Z ∧ (1 - Zᴴ * Z).PosDef := by
  set Zc := Z.map star with hZc
  set Gc := G.map star with hGc
  have hcc : Zc.map star = Z := by ext; simp [hZc]
  have hgc : Gc.map star = G := by ext; simp [hGc]
  have hct : Zᴴ = Zcᵀ := by ext; simp [hZc, conjTranspose_apply]
  have mapmul : ∀ A B : Matrix I I ℂ, (A * B).map star = A.map star * B.map star := by
    intro A B; ext i j; simp [Matrix.mul_apply]
  have mapone : (1 : Matrix I I ℂ).map star = 1 := by
    ext i j; by_cases h : i = j <;> simp [Matrix.one_apply, h]
  have mapsub : ∀ A B : Matrix I I ℂ, (A - B).map star = A.map star - B.map star := by
    intro A B; ext i j; simp
  have mapneg : ∀ A : Matrix I I ℂ, (-A).map star = -A.map star := by
    intro A; ext i j; simp
  have maptr : Zᵀ.map star = Zᴴ := by ext; simp [conjTranspose_apply]

  have r1 : G - 1 = Zᴴ * Gc * Z := by rw [e1, mapmul, mapmul, maptr, hcc]
  have r2 : G * Zc = Zᴴ * Gc := by
    have := e2
    rw [mapneg, mapmul, maptr] at this
    exact neg_injective this
  have hU : G * (1 - Zc * Z) = 1 := by
    have : G - 1 = G * Zc * Z := by rw [r1, r2]
    rw [mul_sub, mul_one, ← mul_assoc, ← this]
    abel
  have hV : Gc * (1 - Z * Zc) = 1 := by
    have := congrArg (Matrix.map · star) hU
    simp only [mapmul, mapsub, mapone, hcc] at this
    exact this
  have hU' : (1 - Zc * Z) * G = 1 := mul_eq_one_comm.mp hU
  have hV' : (1 - Z * Zc) * Gc = 1 := mul_eq_one_comm.mp hV
  have hcomm : (1 - Zc * Z) * Zc = Zc * (1 - Z * Zc) := by
    simp only [sub_mul, mul_sub, one_mul, mul_one, mul_assoc]
  have h3 : G * Zc = Zc * Gc := by
    calc G * Zc = G * Zc * ((1 - Z * Zc) * Gc) := by rw [hV', mul_one]
      _ = G * (Zc * (1 - Z * Zc)) * Gc := by simp only [mul_assoc]
      _ = G * ((1 - Zc * Z) * Zc) * Gc := by rw [hcomm]
      _ = (G * (1 - Zc * Z)) * Zc * Gc := by simp only [mul_assoc]
      _ = Zc * Gc := by rw [hU, one_mul]
  have h4 : Zc = Zᴴ := by
    have : Zc * Gc = Zᴴ * Gc := by rw [← h3, r2]
    calc Zc = Zc * (Gc * (1 - Z * Zc)) := by rw [hV, mul_one]
      _ = (Zc * Gc) * (1 - Z * Zc) := by rw [mul_assoc]
      _ = (Zᴴ * Gc) * (1 - Z * Zc) := by rw [this]
      _ = Zᴴ * (Gc * (1 - Z * Zc)) := by rw [mul_assoc]
      _ = Zᴴ := by rw [hV, mul_one]
  refine ⟨?_, ?_⟩
  · have := congrArg (Matrix.map · star) h4
    simp only [hcc] at this
    ext i j
    have h := congrFun (congrFun this j) i
    simpa [conjTranspose_apply] using h
  · rw [← h4]
    have hinv : (1 - Zc * Z) = G⁻¹ := (Matrix.inv_eq_right_inv hU).symm
    rw [hinv]
    exact hG.inv

theorem linear_part_injective (L : (I → ℂ) →ₗ[ℝ] (I → ℂ)) (H M D : Matrix I I ℂ)
    (hpos : ∀ z : I → ℂ, z ≠ 0 → 0 < (z ⬝ᵥ H *ᵥ star z).re)
    (hform : ∀ z w : I → ℂ, (L z ⬝ᵥ H *ᵥ star (L w)).im = (z ⬝ᵥ star w).im)
    (hL : ∀ z, L z = M *ᵥ z + D *ᵥ star z) : Function.Injective M.mulVec := by
  have hker : ∀ x : I → ℂ, M *ᵥ x = 0 → x = 0 := by
    intro x hx
    by_contra hne
    have h1 : L x = D *ᵥ star x := by rw [hL, hx, zero_add]
    have hsI : ∀ y : I → ℂ, star (Complex.I • y) = (-Complex.I) • star y := by
      intro y; ext i; simp
    have h2 : L (Complex.I • x) = (-Complex.I) • L x := by
      rw [hL, hsI, mulVec_smul, mulVec_smul, hx, smul_zero, zero_add, h1]
    have hsI' : star ((-Complex.I) • L x) = Complex.I • star (L x) := by
      ext i; simp
    have h3 := hform x (Complex.I • x)
    rw [h2, hsI', hsI, mulVec_smul, dotProduct_smul, dotProduct_smul] at h3
    have h4 : 0 ≤ (L x ⬝ᵥ H *ᵥ star (L x)).re := by
      by_cases h0 : L x = 0
      · simp [h0]
      · exact (hpos _ h0).le
    have h5 : 0 < x ⬝ᵥ star x := by
      rw [dotProduct_comm]; exact dotProduct_star_self_pos_iff.mpr hne
    rw [Complex.lt_def] at h5
    simp at h3 h5
    linarith [h5.1]
  intro x y hxy
  have : M *ᵥ (x - y) = 0 := by rw [mulVec_sub, hxy, sub_self]
  exact sub_eq_zero.mp (hker _ this)

theorem exists_linearEquiv_tz {I : Type} [Fintype I] [DecidableEq I]
    (L : (I → ℂ) →ₗ[ℝ] (I → ℂ)) (H : Matrix I I ℂ) (hH : H.IsHermitian)
    (hpos : ∀ z : I → ℂ, z ≠ 0 → 0 < (z ⬝ᵥ H *ᵥ star z).re)
    (hform : ∀ z w : I → ℂ, (L z ⬝ᵥ H *ᵥ star (L w)).im = (z ⬝ᵥ star w).im) :
    ∃ (A : (I → ℂ) ≃ₗ[ℂ] (I → ℂ)) (Z : Matrix I I ℂ), Zᵀ = Z ∧ (1 - Zᴴ * Z).PosDef ∧
      ∀ z, L z = A (tz Z z) := by
  obtain ⟨M, D, hL⟩ := exists_linear_antilinear L
  have hinj := linear_part_injective L H M D hpos hform hL
  have hU : IsUnit M := mulVec_injective_iff_isUnit.mp hinj
  have hdet : IsUnit M.det := (Matrix.isUnit_iff_isUnit_det M).mp hU
  set Z : Matrix I I ℂ := -(M⁻¹ * D) with hZ
  have hLZ : ∀ z, L z = M *ᵥ tz Z z := by
    intro z
    rw [hL, tz, mulVec_sub, mulVec_mulVec, hZ, Matrix.mul_neg, ← Matrix.mul_assoc,
      Matrix.mul_nonsing_inv M hdet, Matrix.one_mul, neg_mulVec, sub_neg_eq_add]
  set G : Matrix I I ℂ := Mᵀ * H * M.map star with hGdef
  have hGh : G.IsHermitian := by
    have hM : (M.map star)ᴴ = Mᵀ := by ext; simp [conjTranspose_apply]
    have hM' : (Mᵀ)ᴴ = M.map star := by ext; simp [conjTranspose_apply]
    rw [IsHermitian, hGdef, conjTranspose_mul, conjTranspose_mul, hM, hM', hH.eq, Matrix.mul_assoc]
  have hGpd : G.PosDef := by
    refine posDef_of_form G hGh fun z hz => ?_
    rw [hGdef, ← form_pullback]
    refine hpos _ fun h0 => hz (hinj ?_)
    rw [h0, mulVec_zero]
  have hrel : ∀ z w : I → ℂ, (z ⬝ᵥ (G - 1) *ᵥ star w + z ⬝ᵥ (-(G * Z.map star)) *ᵥ w
      + star z ⬝ᵥ (-(Zᵀ * G)) *ᵥ star w + star z ⬝ᵥ (Zᵀ * G * Z.map star) *ᵥ w).im = 0 := by
    intro z w
    have h := hform z w
    rw [hLZ, hLZ, form_pullback, form_tz] at h
    rw [sub_mulVec, one_mulVec, dotProduct_sub]
    simp only [Complex.add_im, Complex.sub_im] at h ⊢
    linarith
  obtain ⟨e1, e2⟩ := im_terms_separate _ _ _ _ hrel
  obtain ⟨hs, hp⟩ := symm_posDef_of_relations G Z hGpd e1 e2
  refine ⟨LinearEquiv.ofInjectiveEndo (Matrix.toLin' M) ?_, Z, hs, hp, fun z => ?_⟩
  · intro a b h
    rw [Matrix.toLin'_apply, Matrix.toLin'_apply] at h
    exact hinj h
  · rw [hLZ]
    exact (Matrix.toLin'_apply M (tz Z z)).symm

end GlobalTheory.CompanionTheory.Ar.Cusp.Univ.PeriodCoord
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.MetricProofs.SiegelNormalFormOfHermitian =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.MetricProofs.SiegelTransformCommutesAction =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.MetricProofs.SiegelTransformCommutesAction", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.BigZe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PUnipotentModulusMatrix\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix MeasureTheory Filter Topology GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Cusp ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor GroundTheory.Heights₂.Heights.FiniteCovolume
open scoped ENNReal InnerProductSpace
open scoped ComplexOrder
open GlobalTheory.CompanionTheory.Ar.Cusp.Univ

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Cusp.Univ

theorem emb_mul_bigZ {E : Type} [Field E] [NumberField E] {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {j j' n : ℕ}
    (σ : Ψ → (𝓞 E →+* ℂ)) (q : Ψ × Fin j × Fin j' ≃ Fin n) (t : Fin n → ℂ) (a : 𝓞 E) (i k : Ix Ψ j j') :
    emb σ i a * bigZ q t i k = bigZ q t i k * star (emb σ k a) := by
  obtain ⟨i1, τ⟩ := i
  obtain ⟨k1, τ'⟩ := k
  by_cases h : τ = τ'
  · subst h
    rcases i1 with i1 | i1 <;> rcases k1 with k1 | k1 <;>
      simp [bigZ, emb, blockDiagonal_apply, mul_comm]
  · simp [bigZ, blockDiagonal_apply_ne _ _ _ h]

theorem tz_bigZe_comm : ∀ {E : Type} [Field E] [NumberField E] [IsCMField E] {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {j j' n g : ℕ} (σ : Ψ → (𝓞 E →+* ℂ)) (e : Ix Ψ j j' ≃ Fin g) (q : Ψ × Fin j × Fin j' ≃ Fin n) (t : Fin n → ℂ) (B : 𝓞 E →+* Module.End ℂ (Fin g → ℂ)), IsCMFam σ → (∀ a x k, B a x k = emb σ (e.symm k) a * x k) → ∀ a x, tz (bigZe e q t) (B a x) = B a (tz (bigZe e q t) x) := by
  intro E _ _ _ Ψ _ _ j j' n g σ e q t B _ hB a x
  funext i
  have hsub : B a (tz (bigZe e q t) x) i
      = B a x i - B a (bigZe e q t *ᵥ star x) i := by
    simp only [tz, map_sub, Pi.sub_apply]
  rw [hsub]
  simp only [tz, Pi.sub_apply]
  congr 1
  rw [hB a (bigZe e q t *ᵥ star x) i]
  simp only [mulVec, dotProduct, Finset.mul_sum]
  refine Finset.sum_congr rfl fun k _ => ?_
  have hk := emb_mul_bigZ σ q t a (e.symm i) (e.symm k)
  have hx : star (B a x) k = star (emb σ (e.symm k) a) * star (x k) := by
    simp [hB, mul_comm]
  rw [hx, ← mul_assoc, ← mul_assoc]
  simp only [bigZe, submatrix_apply, Pi.star_apply]
  rw [hk]

end GlobalTheory.CompanionTheory.Ar.Cusp.Univ
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.MetricProofs.SiegelTransformCommutesAction =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.MetricProofs.SiegelTransformSymplecticImaginary =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.MetricProofs.SiegelTransformSymplecticImaginary", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.BigZe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PUnipotentModulusMatrix\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix MeasureTheory Filter Topology GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Cusp ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor GroundTheory.Heights₂.Heights.FiniteCovolume
open scoped ENNReal InnerProductSpace
open scoped ComplexOrder
open GlobalTheory.CompanionTheory.Ar.Cusp.Univ

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Cusp.Univ

theorem star_dotProduct_mulVec_eq {I : Type} [Fintype I] (M : Matrix I I ℂ) (a b : I → ℂ) :
    star (a ⬝ᵥ M *ᵥ b) = star a ⬝ᵥ (Mᴴ)ᵀ *ᵥ star b := by
  simp only [dotProduct, mulVec, star_sum, star_mul', Pi.star_apply, transpose_apply,
    conjTranspose_apply, Finset.mul_sum, RCLike.star_def]

theorem im_tz_form {I : Type} [Fintype I] [DecidableEq I] (Z : Matrix I I ℂ) (hZ : Zᵀ = Z)
    (hP : (1 - Zᴴ * Z).PosDef) (z w : I → ℂ) :
    (tz Z z ⬝ᵥ (1 - Zᴴ * Z)⁻¹ *ᵥ star (tz Z w)).im = (z ⬝ᵥ star w).im := by
  obtain ⟨B, hBdef⟩ : ∃ B, B = Zᴴ := ⟨_, rfl⟩
  rw [← hBdef] at hP ⊢
  have hBt : Bᵀ = B := by
    rw [hBdef]; ext i j
    simp only [transpose_apply, conjTranspose_apply]
    rw [← transpose_apply Z i j, hZ]
  have hBh : Bᴴ = Z := by rw [hBdef, conjTranspose_conjTranspose]
  have hdet : IsUnit (1 - B * Z).det := (Matrix.isUnit_iff_isUnit_det _).1 hP.isUnit
  obtain ⟨H, hHdef⟩ : ∃ H, H = (1 - B * Z)⁻¹ := ⟨_, rfl⟩
  rw [← hHdef]
  have h1 : H * (1 - B * Z) = 1 := by rw [hHdef]; exact Matrix.nonsing_inv_mul _ hdet
  have h2 : (1 - B * Z) * H = 1 := by rw [hHdef]; exact Matrix.mul_nonsing_inv _ hdet
  have hHh : Hᴴ = H := by rw [hHdef]; exact hP.inv.isHermitian.eq
  have hT : (1 - B * Z)ᵀ = 1 - Z * B := by
    rw [transpose_sub, transpose_one, transpose_mul, hZ, hBt]
  have h3 : Hᵀ * (1 - Z * B) = 1 := by
    have := congrArg transpose h2
    rwa [transpose_mul, hT, transpose_one] at this
  have h4 : (1 - Z * B) * Hᵀ = 1 := by
    have := congrArg transpose h1
    rwa [transpose_mul, hT, transpose_one] at this
  have c1 : B * (1 - Z * B) = (1 - B * Z) * B := by
    simp only [Matrix.mul_sub, Matrix.sub_mul, Matrix.mul_one, Matrix.one_mul, Matrix.mul_assoc]
  have c2 : Z * (1 - B * Z) = (1 - Z * B) * Z := by
    simp only [Matrix.mul_sub, Matrix.sub_mul, Matrix.mul_one, Matrix.one_mul, Matrix.mul_assoc]
  have K : H * B = B * Hᵀ := by
    calc H * B = H * B * ((1 - Z * B) * Hᵀ) := by rw [h4, Matrix.mul_one]
      _ = H * (B * (1 - Z * B)) * Hᵀ := by simp only [Matrix.mul_assoc]
      _ = H * (1 - B * Z) * (B * Hᵀ) := by rw [c1]; simp only [Matrix.mul_assoc]
      _ = B * Hᵀ := by rw [h1, Matrix.one_mul]
  have K2 : Z * H = Hᵀ * Z := by
    calc Z * H = Hᵀ * (1 - Z * B) * (Z * H) := by rw [h3, Matrix.one_mul]
      _ = Hᵀ * ((1 - Z * B) * Z) * H := by simp only [Matrix.mul_assoc]
      _ = Hᵀ * Z * ((1 - B * Z) * H) := by rw [← c2]; simp only [Matrix.mul_assoc]
      _ = Hᵀ * Z := by rw [h2, Matrix.mul_one]
  have hHB : H = 1 + H * B * Z := by
    have : H * (1 - B * Z) = H - H * B * Z := by
      rw [Matrix.mul_sub, Matrix.mul_one, Matrix.mul_assoc]
    rw [this] at h1
    rw [← h1]; abel
  have hs : star (tz Z w) = star w - B *ᵥ w := by
    unfold tz
    rw [star_sub, star_mulVec, star_star, ← hBdef, ← mulVec_transpose, hBt]
  have dz : ∀ y : I → ℂ, (Z *ᵥ star z) ⬝ᵥ y = star z ⬝ᵥ Z *ᵥ y := by
    intro y
    rw [dotProduct_mulVec (star z), ← mulVec_transpose, hZ]
  have e1 : z ⬝ᵥ H *ᵥ star w = z ⬝ᵥ star w + z ⬝ᵥ (H * B * Z) *ᵥ star w := by
    conv_lhs => rw [hHB]
    rw [add_mulVec, one_mulVec, dotProduct_add]
  have e2 : z ⬝ᵥ H *ᵥ B *ᵥ w = z ⬝ᵥ (H * B) *ᵥ w := by rw [mulVec_mulVec]
  have e3 : (Z *ᵥ star z) ⬝ᵥ H *ᵥ star w = star z ⬝ᵥ (Z * H) *ᵥ star w := by
    rw [dz, mulVec_mulVec]
  have e4 : (Z *ᵥ star z) ⬝ᵥ H *ᵥ B *ᵥ w = star z ⬝ᵥ (Z * H * B) *ᵥ w := by
    rw [dz, mulVec_mulVec, mulVec_mulVec, Matrix.mul_assoc]
  have s3 : star (z ⬝ᵥ (H * B) *ᵥ w) = star z ⬝ᵥ (Z * H) *ᵥ star w := by
    rw [star_dotProduct_mulVec_eq, conjTranspose_mul, hBh, hHh, transpose_mul, hZ, ← K2]
  have s4 : star (star z ⬝ᵥ (Z * H * B) *ᵥ w) = z ⬝ᵥ (H * B * Z) *ᵥ star w := by
    rw [star_dotProduct_mulVec_eq, star_star, conjTranspose_mul, conjTranspose_mul, hBh, hHh, ← hBdef,
      transpose_mul, transpose_mul, hZ, hBt, ← K]
  have main : tz Z z ⬝ᵥ H *ᵥ star (tz Z w) = z ⬝ᵥ star w + star (star z ⬝ᵥ (Z * H * B) *ᵥ w)
      - z ⬝ᵥ (H * B) *ᵥ w - star (z ⬝ᵥ (H * B) *ᵥ w) + star z ⬝ᵥ (Z * H * B) *ᵥ w := by
    rw [hs, s3, s4]
    unfold tz
    rw [mulVec_sub, sub_dotProduct, dotProduct_sub, dotProduct_sub, e1, e2, e3, e4]
    ring
  rw [main]
  simp only [Complex.add_im, Complex.sub_im, Complex.star_def, Complex.conj_im]
  ring

theorem im_tz_form' : ∀ {I : Type} [Fintype I] [DecidableEq I] (Z : Matrix I I ℂ), Zᵀ = Z → (1 - Zᴴ * Z).PosDef → ∀ z w : I → ℂ, (tz Z z ⬝ᵥ (1 - Zᴴ * Z)⁻¹ *ᵥ star (tz Z w)).im = (z ⬝ᵥ star w).im :=
  fun Z hZ hP z w => im_tz_form Z hZ hP z w

end GlobalTheory.CompanionTheory.Ar.Cusp.Univ
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.MetricProofs.SiegelTransformSymplecticImaginary =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.MetricProofs.SpanStandardBasisEigenspace =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.MetricProofs.SpanStandardBasisEigenspace", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.BigZe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PUnipotentModulusMatrix\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix MeasureTheory Filter Topology GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Cusp ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor GroundTheory.Heights₂.Heights.FiniteCovolume
open scoped ENNReal InnerProductSpace
open scoped ComplexOrder
open GlobalTheory.CompanionTheory.Ar.Cusp.Univ

namespace GlobalTheory.CompanionTheory.Ar.Cusp.Univ.Frames

variable {E : Type} [Field E] [NumberField E] {Ψ : Type} {j j' g : ℕ}

theorem span_single_eq_eigSp {ι : Type} (σ : Ψ → (𝓞 E →+* ℂ)) (e : Ix Ψ j j' ≃ Fin g)
    (B : 𝓞 E →+* Module.End ℂ (Fin g → ℂ)) (hB : ∀ a x k, B a x k = emb σ (e.symm k) a * x k)
    (s : 𝓞 E →+* ℂ) (f : ι → Fin g) (h1 : ∀ i, emb σ (e.symm (f i)) = s)
    (h2 : ∀ k, emb σ (e.symm k) = s → ∃ i, f i = k) :
    Submodule.span ℂ (Set.range fun i : ι => (Pi.single (f i) 1 : Fin g → ℂ)) = eigSp B s := by
  have hmem : ∀ x : Fin g → ℂ, x ∈ eigSp B s ↔ ∀ a, B a x = s a • x := by
    intro x
    simp [eigSp, Submodule.mem_iInf, sub_eq_zero]
  apply le_antisymm
  · rw [Submodule.span_le]
    rintro _ ⟨i, rfl⟩
    refine (hmem _).2 fun a => ?_
    funext k
    rw [hB]
    by_cases hk : k = f i
    · subst hk
      simp [h1 i]
    · simp [Pi.single_eq_of_ne hk]
  · intro x hx
    have hx' := (hmem x).1 hx
    have hsum : x = ∑ k, x k • (Pi.single k 1 : Fin g → ℂ) := by
      funext m
      simp [Finset.sum_apply, Pi.single_apply]
    rw [hsum]
    refine Submodule.sum_mem _ fun k _ => ?_
    by_cases hk : x k = 0
    · simp [hk]
    · have hs : emb σ (e.symm k) = s := by
        ext a
        have h := congrFun (hx' a) k
        rw [hB, Pi.smul_apply, smul_eq_mul] at h
        exact mul_right_cancel₀ hk h
      obtain ⟨i, rfl⟩ := h2 k hs
      exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨i, rfl⟩)


omit [NumberField E] in
theorem conj_ne (σ : Ψ → (𝓞 E →+* ℂ)) (h : IsCMFam σ) (τ τ' : Ψ) : σ τ' ≠ (starRingEnd ℂ).comp (σ τ) :=
  fun hc => ((h.2 (σ τ)).1 ⟨τ, rfl⟩) ⟨τ', hc⟩


omit [NumberField E] in
theorem conj_comp_inj {s t : 𝓞 E →+* ℂ} (h : (starRingEnd ℂ).comp s = (starRingEnd ℂ).comp t) : s = t := by
  ext a
  have := congrArg (starRingEnd ℂ) (RingHom.congr_fun h a)
  simpa using this


omit [NumberField E] in
theorem conj_conj_comp (s : 𝓞 E →+* ℂ) : (starRingEnd ℂ).comp ((starRingEnd ℂ).comp s) = s := by
  ext a
  simp

theorem span_single_eigenspace [IsCMField E] [Fintype Ψ] (σ : Ψ → (𝓞 E →+* ℂ)) (e : Ix Ψ j j' ≃ Fin g)
    (B : 𝓞 E →+* Module.End ℂ (Fin g → ℂ)) (hcm : IsCMFam σ) (hB : ∀ a x k, B a x k = emb σ (e.symm k) a * x k) (τ : Ψ) :
    Submodule.span ℂ (Set.range fun i : Fin j' => (Pi.single (e (Sum.inl i, τ)) 1 : Fin g → ℂ)) = eigSp B (σ τ) ∧
      Submodule.span ℂ (Set.range fun i : Fin j => (Pi.single (e (Sum.inr i, τ)) 1 : Fin g → ℂ)) =
        eigSp B ((starRingEnd ℂ).comp (σ τ)) := by
  constructor
  · refine span_single_eq_eigSp σ e B hB (σ τ) (fun i : Fin j' => e (Sum.inl i, τ)) (fun i => ?_) fun k hk => ?_
    · simp [emb]
    · obtain ⟨⟨u, τ'⟩, rfl⟩ := e.surjective k
      rw [Equiv.symm_apply_apply] at hk
      rcases u with b | b
      · have h : σ τ' = σ τ := hk
        obtain rfl := hcm.1 h
        exact ⟨b, rfl⟩
      · have h : (starRingEnd ℂ).comp (σ τ') = σ τ := hk
        refine absurd ?_ (conj_ne σ hcm τ τ')
        rw [← h, conj_conj_comp]
  · refine span_single_eq_eigSp σ e B hB _ (fun i : Fin j => e (Sum.inr i, τ)) (fun i => ?_) fun k hk => ?_
    · simp [emb]
    · obtain ⟨⟨u, τ'⟩, rfl⟩ := e.surjective k
      rw [Equiv.symm_apply_apply] at hk
      rcases u with b | b
      · exact absurd (show σ τ' = (starRingEnd ℂ).comp (σ τ) from hk) (conj_ne σ hcm τ τ')
      · have h : (starRingEnd ℂ).comp (σ τ') = (starRingEnd ℂ).comp (σ τ) := hk
        obtain rfl := hcm.1 (conj_comp_inj h)
        exact ⟨b, rfl⟩

theorem span_single_eigSp : ∀ {E : Type} [Field E] [NumberField E] [IsCMField E] {Ψ : Type} [Fintype Ψ] {j j' g : ℕ} (σ : Ψ → (𝓞 E →+* ℂ)) (e : Ix Ψ j j' ≃ Fin g) (B : 𝓞 E →+* Module.End ℂ (Fin g → ℂ)), IsCMFam σ → (∀ a x k, B a x k = emb σ (e.symm k) a * x k) → ∀ τ, Submodule.span ℂ (Set.range fun i : Fin j' => (Pi.single (e (Sum.inl i, τ)) 1 : Fin g → ℂ)) = eigSp B (σ τ) ∧ Submodule.span ℂ (Set.range fun i : Fin j => (Pi.single (e (Sum.inr i, τ)) 1 : Fin g → ℂ)) = eigSp B ((starRingEnd ℂ).comp (σ τ)) :=
  fun σ e B h hB τ => span_single_eigenspace σ e B h hB τ

end GlobalTheory.CompanionTheory.Ar.Cusp.Univ.Frames
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.MetricProofs.SpanStandardBasisEigenspace =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.MetricProofs.SymmetricMatrixInBallImage =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.MetricProofs.SymmetricMatrixInBallImage", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.BigZe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PUnipotentModulusMatrix\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix MeasureTheory Filter Topology GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Cusp ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor GroundTheory.Heights₂.Heights.FiniteCovolume
open scoped ENNReal InnerProductSpace
open scoped ComplexOrder
open GlobalTheory.CompanionTheory.Ar.Cusp.Univ

namespace GlobalTheory.CompanionTheory.Ar.Cusp.Univ

theorem exists_bigZe_eq {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {j j' n g : ℕ} (e : Ix Ψ j j' ≃ Fin g)
    (q : Ψ × Fin j × Fin j' ≃ Fin n) (Z : Matrix (Fin g) (Fin g) ℂ) (hs : Zᵀ = Z)
    (hZ : ∀ i k, Z i k ≠ 0 → (e.symm i).2 = (e.symm k).2 ∧ (e.symm i).1.isLeft ≠ (e.symm k).1.isLeft) :
    ∃ t, bigZe e q t = Z := by
  have hz : ∀ i k, ¬ ((e.symm i).2 = (e.symm k).2 ∧ (e.symm i).1.isLeft ≠ (e.symm k).1.isLeft) → Z i k = 0 :=
    fun i k h => by_contra fun h0 => h (hZ i k h0)
  have hsym : ∀ i k, Z i k = Z k i := fun i k => by
    have := congrFun (congrFun hs k) i
    simpa [Matrix.transpose_apply] using this
  let t : Fin n → ℂ := fun m => Z (e (Sum.inr (q.symm m).2.1, (q.symm m).1)) (e (Sum.inl (q.symm m).2.2, (q.symm m).1))
  have hb : ∀ τ a b, ballMat q t τ a b = Z (e (Sum.inr a, τ)) (e (Sum.inl b, τ)) := by
    intro τ a b
    simp [ballMat, t]
  refine ⟨t, ?_⟩
  ext i k
  obtain ⟨⟨x, τ⟩, rfl⟩ := e.surjective i
  obtain ⟨⟨y, τ'⟩, rfl⟩ := e.surjective k
  simp only [bigZe, bigZ, Matrix.submatrix_apply, Equiv.symm_apply_apply]
  by_cases hτ : τ = τ'
  · subst hτ
    rw [Matrix.blockDiagonal_apply_eq]
    rcases x with a | a <;> rcases y with b | b
    · rw [Matrix.fromBlocks_apply₁₁, Matrix.zero_apply]
      exact (hz _ _ (by simp)).symm
    · rw [Matrix.fromBlocks_apply₁₂, Matrix.transpose_apply, hb, hsym]
    · rw [Matrix.fromBlocks_apply₂₁, hb]
    · rw [Matrix.fromBlocks_apply₂₂, Matrix.zero_apply]
      exact (hz _ _ (by simp)).symm
  · rw [Matrix.blockDiagonal_apply_ne _ _ _ hτ]
    exact (hz _ _ (by simp [hτ])).symm

end GlobalTheory.CompanionTheory.Ar.Cusp.Univ
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.MetricProofs.SymmetricMatrixInBallImage =====

-- ===== clump member: Development.WeilBound.CoreStatements.VolumeEquality.BaseUnifUnivA =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.VolumeEquality.BaseUnifUnivA", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.MetricPeriods.IsEigFrames\npublic import Development.WeilBound.CoreStatements.VolumeEquality.BaseUnifRiem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AutomorphicSpectrum.Proofs.MetricProofs.BigZe\nimport GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PUnipotentModulusMatrix\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\nimport Development.AutomorphicSpectrum.Proofs.MetricProofs.RiemannLatticeEigenProjection\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix MeasureTheory Filter Topology GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Cusp ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor GroundTheory.Heights₂.Heights.FiniteCovolume
open scoped ENNReal InnerProductSpace
open scoped ComplexOrder
open GlobalTheory.CompanionTheory.Ar.Cusp.Univ

noncomputable section

namespace SheetDecomposition.Univ

theorem imH_add_left {g : ℕ} (M : Matrix (Fin g) (Fin g) ℂ) (z z' w : Fin g → ℂ) :
    ((z + z') ⬝ᵥ M *ᵥ star w).im = (z ⬝ᵥ M *ᵥ star w).im + (z' ⬝ᵥ M *ᵥ star w).im := by
  rw [add_dotProduct, Complex.add_im]

theorem imH_smul_left {g : ℕ} (M : Matrix (Fin g) (Fin g) ℂ) (r : ℝ) (z w : Fin g → ℂ) :
    ((r • z) ⬝ᵥ M *ᵥ star w).im = r * (z ⬝ᵥ M *ᵥ star w).im := by
  rw [smul_dotProduct, Complex.smul_im, smul_eq_mul]

theorem imH_add_right {g : ℕ} (M : Matrix (Fin g) (Fin g) ℂ) (z w w' : Fin g → ℂ) :
    (z ⬝ᵥ M *ᵥ star (w + w')).im = (z ⬝ᵥ M *ᵥ star w).im + (z ⬝ᵥ M *ᵥ star w').im := by
  rw [star_add, mulVec_add, dotProduct_add, Complex.add_im]

theorem imH_smul_right {g : ℕ} (M : Matrix (Fin g) (Fin g) ℂ) (r : ℝ) (z w : Fin g → ℂ) :
    (z ⬝ᵥ M *ᵥ star (r • w)).im = r * (z ⬝ᵥ M *ᵥ star w).im := by
  have h : star (r • w) = (r : ℂ) • star w := by
    ext i
    simp
  rw [h, mulVec_smul, dotProduct_smul, smul_eq_mul, Complex.im_ofReal_mul]

theorem exists_realExt {E : Type} [Field E] [NumberField E] [IsCMField E] {g : ℕ} {Λ : Type} [AddCommGroup Λ]
    [Module (𝓞 E) Λ] (R R' : RiemLat E g Λ) (hf : R'.form = R.form) :
    ∃ L : (Fin g → ℂ) →ₗ[ℝ] (Fin g → ℂ), (∀ x, L (R.P x) = R'.P x) ∧
      (∀ z w, (L z ⬝ᵥ R'.Hm *ᵥ star (L w)).im = (z ⬝ᵥ R.Hm *ᵥ star w).im) ∧
      ∀ a z, L (R.B a z) = R'.B a (L z) := by
  classical
  haveI := R.free
  haveI := R.fin
  have hspan : Submodule.span ℝ (Set.range R.P) = ⊤ := (_root_.LevelTowerAlt.riemann_lattice_eigen_projections E g Λ Unit R).2.1
  let b : Module.Basis (Fin (2 * g)) ℤ Λ := Module.finBasisOfFinrankEq ℤ Λ R.rank
  let v : Fin (2 * g) → Fin g → ℂ := fun k => R.P (b k)
  have hsum : ∀ (Q : Λ →+ (Fin g → ℂ)) (x : Λ), Q x = ∑ k, (b.repr x k : ℝ) • Q (b k) := by
    intro Q x

    conv_lhs => rw [← b.sum_repr x, map_sum]
    refine Finset.sum_congr rfl fun k _ => ?_
    rw [map_zsmul, Int.cast_smul_eq_zsmul]
  have hv : (⊤ : Submodule ℝ (Fin g → ℂ)) ≤ Submodule.span ℝ (Set.range v) := by
    rw [← hspan, Submodule.span_le]
    rintro _ ⟨x, rfl⟩
    rw [hsum R.P x]
    exact Submodule.sum_mem _ fun k _ =>
      Submodule.smul_mem _ _ (Submodule.subset_span ⟨k, rfl⟩)
  have hcard : Fintype.card (Fin (2 * g)) = Module.finrank ℝ (Fin g → ℂ) := by
    simp [Module.finrank_pi_fintype, Complex.finrank_real_complex, mul_comm]
  let c : Module.Basis (Fin (2 * g)) ℝ (Fin g → ℂ) := basisOfTopLeSpanOfCardEqFinrank v hv hcard
  have hc : ∀ k, c k = R.P (b k) := fun k => by
    simp [c, v, coe_basisOfTopLeSpanOfCardEqFinrank]
  let L : (Fin g → ℂ) →ₗ[ℝ] (Fin g → ℂ) := c.constr ℝ fun k => R'.P (b k)
  have hLb : ∀ k, L (R.P (b k)) = R'.P (b k) := fun k => by
    rw [← hc k]
    exact c.constr_basis ℝ _ k
  have hL : ∀ x, L (R.P x) = R'.P x := by
    intro x

    rw [hsum R.P x, hsum R'.P x, map_sum]
    refine Finset.sum_congr rfl fun k _ => ?_
    rw [map_smul, hLb]
  have hall : ∀ z : Fin g → ℂ, z ∈ Submodule.span ℝ (Set.range R.P) := fun z => hspan ▸ Submodule.mem_top
  refine ⟨L, hL, ?_, ?_⟩
  · have h1 : ∀ (x : Λ) (w : Fin g → ℂ),
        (L (R.P x) ⬝ᵥ R'.Hm *ᵥ star (L w)).im = (R.P x ⬝ᵥ R.Hm *ᵥ star w).im := by
      intro x w
      induction hall w using Submodule.span_induction with
      | mem w hw =>
        obtain ⟨y, rfl⟩ := hw
        rw [hL, hL, R'.im, R.im, hf]
      | zero => simp
      | add w w' _ _ h h' => rw [map_add (f := _), imH_add_right, imH_add_right, h, h']
      | smul r w _ h => rw [map_smul, imH_smul_right, imH_smul_right, h]
    intro z w
    induction hall z using Submodule.span_induction with
    | mem z hz =>
      obtain ⟨x, rfl⟩ := hz
      exact h1 x w
    | zero => simp
    | add z z' _ _ h h' => rw [map_add (f := _), imH_add_left, imH_add_left, h, h']
    | smul r z _ h => rw [map_smul, imH_smul_left, imH_smul_left, h]
  · intro a z
    induction hall z using Submodule.span_induction with
    | mem z hz =>
      obtain ⟨x, rfl⟩ := hz
      rw [← R.act, hL, hL, R'.act]
    | zero => simp
    | add z z' _ _ h h' => simp only [map_add (f := _), h, h']
    | smul r z _ h =>
      rw [LinearMap.map_smul_of_tower, map_smul, h, map_smul, LinearMap.map_smul_of_tower]

end SheetDecomposition.Univ
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.VolumeEquality.BaseUnifUnivA =====

-- ===== clump member: Development.WeilBound.CoreStatements.VolumeEquality.BaseUnifUnivB =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.VolumeEquality.BaseUnifUnivB", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.BigZe\npublic import Development.WeilBound.CoreStatements.VolumeEquality.BaseUnifRiem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PUnipotentModulusMatrix\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\nimport Development.AutomorphicSpectrum.Proofs.MetricProofs.RiemannLatticeEigenProjection\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix MeasureTheory Filter Topology GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Cusp ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor GroundTheory.Heights₂.Heights.FiniteCovolume
open scoped ENNReal InnerProductSpace
open scoped ComplexOrder
open GlobalTheory.CompanionTheory.Ar.Cusp.Univ

noncomputable section

namespace SheetDecomposition.Univ.Frame

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {g : ℕ} {Λ : Type} [AddCommGroup Λ] [Module (𝓞 E) Λ]

def Tan (_ : RiemLat E g Λ) : Type := Fin g → ℂ

instance (R : RiemLat E g Λ) : AddCommGroup (Tan R) := inferInstanceAs (AddCommGroup (Fin g → ℂ))

instance (R : RiemLat E g Λ) : Module ℂ (Tan R) := inferInstanceAs (Module ℂ (Fin g → ℂ))

instance (R : RiemLat E g Λ) : FiniteDimensional ℂ (Tan R) := inferInstanceAs (FiniteDimensional ℂ (Fin g → ℂ))

theorem ip_conj' (R : RiemLat E g Λ) (x y : Fin g → ℂ) : starRingEnd ℂ (R.ip x y) = R.ip y x := by
  show star (y ⬝ᵥ R.Hm *ᵥ star x) = x ⬝ᵥ R.Hm *ᵥ star y
  rw [← star_dotProduct_star, star_mulVec, star_star, R.herm.eq, dotProduct_mulVec]

theorem ip_add_right' (R : RiemLat E g Λ) (x y y' : Fin g → ℂ) : R.ip x (y + y') = R.ip x y + R.ip x y' := by
  simp [RiemLat.ip, add_dotProduct]

theorem ip_smul_right' (R : RiemLat E g Λ) (c : ℂ) (x y : Fin g → ℂ) : R.ip x (c • y) = c * R.ip x y := by
  simp [RiemLat.ip, smul_dotProduct]

theorem ip_add_left' (R : RiemLat E g Λ) (x x' y : Fin g → ℂ) : R.ip (x + x') y = R.ip x y + R.ip x' y := by
  rw [← ip_conj' R y, ip_add_right', map_add (f := _), ip_conj', ip_conj']

theorem ip_smul_left' (R : RiemLat E g Λ) (c : ℂ) (x y : Fin g → ℂ) :
    R.ip (c • x) y = starRingEnd ℂ c * R.ip x y := by
  rw [← ip_conj' R y, ip_smul_right', map_mul, ip_conj']

theorem ip_self_nonneg' (R : RiemLat E g Λ) (x : Fin g → ℂ) : 0 ≤ (R.ip x x).re := by
  by_cases hx : x = 0
  · subst hx
    simp [RiemLat.ip]
  · exact (R.pos x hx).le

theorem ip_self_zero' (R : RiemLat E g Λ) {x : Fin g → ℂ} (h : R.ip x x = 0) : x = 0 := by
  by_contra hx
  have := R.pos x hx
  change 0 < (R.ip x x).re at this
  rw [h] at this
  simp at this

def core (R : RiemLat E g Λ) : InnerProductSpace.Core ℂ (Tan R) where
  inner x y := R.ip x y
  conj_inner_symm x y := ip_conj' R y x
  re_inner_nonneg x := ip_self_nonneg' R x
  add_left x y z := ip_add_left' R x y z
  smul_left x y r := ip_smul_left' R r x y
  definite x h := ip_self_zero' R h

theorem exists_orthoBasis (R : RiemLat E g Λ) (S : Submodule ℂ (Fin g → ℂ)) (m : ℕ)
    (h : Module.finrank ℂ S = m) :
    ∃ e : Fin m → Fin g → ℂ, (∀ c, e c ∈ S) ∧ (∀ a b, R.ip (e a) (e b) = if a = b then 1 else 0) ∧
      S ≤ Submodule.span ℂ (Set.range e) := by
  letI : NormedAddCommGroup (Tan R) := (core R).toNormedAddCommGroup
  letI : InnerProductSpace ℂ (Tan R) := InnerProductSpace.ofCore (core R).toCore
  let S' : Submodule ℂ (Tan R) := S
  have h' : Module.finrank ℂ S' = m := h
  let b := (stdOrthonormalBasis ℂ S').reindex (finCongr h')
  refine ⟨fun c => ((b c : S') : Tan R), fun c => (b c).2, fun x y => ?_, fun x hx => ?_⟩
  · exact orthonormal_iff_ite.1 b.orthonormal x y
  · have hb : Submodule.span ℂ (Set.range b) = ⊤ := by simpa using b.toBasis.span_eq
    have hm := congrArg (Submodule.map S'.subtype) hb
    rw [Submodule.map_span, Submodule.map_top, Submodule.range_subtype, ← Set.range_comp] at hm
    have hx' : x ∈ S' := hx
    rw [← hm] at hx'
    exact hx'

theorem linearIndependent_of_ortho (R : RiemLat E g Λ) {I : Type} [DecidableEq I] (c : I → Fin g → ℂ)
    (h : ∀ i i', R.ip (c i) (c i') = if i = i' then 1 else 0) : LinearIndependent ℂ c := by
  letI : NormedAddCommGroup (Tan R) := (core R).toNormedAddCommGroup
  letI : InnerProductSpace ℂ (Tan R) := InnerProductSpace.ofCore (core R).toCore
  let c' : I → Tan R := c
  have ho : Orthonormal ℂ c' := orthonormal_iff_ite.2 h
  exact ho.linearIndependent

variable {Ψ : Type} [Fintype Ψ]

theorem cm_ne {σ : Ψ → (𝓞 E →+* ℂ)} (hσ : IsCMFam σ) (τ τ' : Ψ) :
    σ τ ≠ (starRingEnd ℂ).comp (σ τ') := fun h =>
  ((hσ.2 (σ τ')).1 ⟨τ', rfl⟩) ⟨τ, h⟩

theorem conj_comp_conj (s : 𝓞 E →+* ℂ) : (starRingEnd ℂ).comp ((starRingEnd ℂ).comp s) = s := by
  ext a
  simp

theorem cm_cover {σ : Ψ → (𝓞 E →+* ℂ)} (hσ : IsCMFam σ) (s : 𝓞 E →+* ℂ) :
    (∃ τ, σ τ = s) ∨ ∃ τ, (starRingEnd ℂ).comp (σ τ) = s := by
  by_cases h : ∃ τ, σ τ = s
  · exact Or.inl h
  · right
    have h2 : ∃ τ, σ τ = (starRingEnd ℂ).comp s := by
      by_contra h3
      exact h ((hσ.2 s).2 h3)
    obtain ⟨τ, hτ⟩ := h2
    exact ⟨τ, by rw [hτ, conj_comp_conj]⟩

theorem exists_ortho_frame {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {j j' g : ℕ} {Λ : Type} [AddCommGroup Λ]
    [Module (𝓞 E) Λ] (R₀ : RiemLat E g Λ) (σ : Ψ → (𝓞 E →+* ℂ)) (hσ : IsCMFam σ) (hs : R₀.HasSig σ j j') :
    ∃ (e : Ix Ψ j j' ≃ Fin g) (c : Ix Ψ j j' → Fin g → ℂ), (∀ i, c i ∈ eigSp R₀.B (emb σ i)) ∧
      ∀ i i', R₀.ip (c i) (c i') = if i = i' then 1 else 0 := by
  obtain ⟨-, -, h3, h4, h5⟩ := _root_.LevelTowerAlt.riemann_lattice_eigen_projections E g Λ Ψ R₀
  choose f hf1 hf2 hf3 using fun τ => exists_orthoBasis R₀ _ j' (hs τ).1
  choose f' hf1' hf2' hf3' using fun τ => exists_orthoBasis R₀ _ j (hs τ).2
  let c : Ix Ψ j j' → Fin g → ℂ := fun i => Sum.elim (f i.2) (f' i.2) i.1
  have hmem : ∀ i, c i ∈ eigSp R₀.B (emb σ i) := by
    rintro ⟨a | a, τ⟩
    · exact hf1 τ a
    · exact hf1' τ a
  have hinj' : ∀ {τ τ' : Ψ}, τ ≠ τ' → (starRingEnd ℂ).comp (σ τ) ≠ (starRingEnd ℂ).comp (σ τ') := by
    intro τ τ' hne h
    apply hne
    apply hσ.1
    rw [← conj_comp_conj (σ τ), h, conj_comp_conj]
  have hort : ∀ i i', R₀.ip (c i) (c i') = if i = i' then 1 else 0 := by
    rintro ⟨a | a, τ⟩ ⟨b | b, τ'⟩
    · by_cases ht : τ = τ'
      · subst ht
        have := hf2 τ a b
        simpa [c] using this
      · have := h5 _ _ (fun h => ht (hσ.1 h)) _ (hf1 τ a) _ (hf1 τ' b)
        simpa [c, ht] using this
    · have := h5 _ _ (cm_ne hσ τ τ') _ (hf1 τ a) _ (hf1' τ' b)
      simpa [c] using this
    · have := h5 _ _ (cm_ne hσ τ' τ).symm _ (hf1' τ a) _ (hf1 τ' b)
      simpa [c] using this
    · by_cases ht : τ = τ'
      · subst ht
        have := hf2' τ a b
        simpa [c] using this
      · have := h5 _ _ (hinj' ht) _ (hf1' τ a) _ (hf1' τ' b)
        simpa [c, ht] using this
  have hli : LinearIndependent ℂ c := linearIndependent_of_ortho R₀ c hort
  have hsp1 : ∀ τ, eigSp R₀.B (σ τ) ≤ Submodule.span ℂ (Set.range c) := fun τ =>
    (hf3 τ).trans (Submodule.span_mono (by
      rintro _ ⟨a, rfl⟩
      exact ⟨(Sum.inl a, τ), rfl⟩))
  have hsp2 : ∀ τ, eigSp R₀.B ((starRingEnd ℂ).comp (σ τ)) ≤ Submodule.span ℂ (Set.range c) := fun τ =>
    (hf3' τ).trans (Submodule.span_mono (by
      rintro _ ⟨a, rfl⟩
      exact ⟨(Sum.inr a, τ), rfl⟩))
  have hsp : ∀ s : 𝓞 E →+* ℂ, eigSp R₀.B s ≤ Submodule.span ℂ (Set.range c) := by
    intro s
    rcases cm_cover hσ s with ⟨τ, rfl⟩ | ⟨τ, rfl⟩
    · exact hsp1 τ
    · exact hsp2 τ
  have htop : ⊤ ≤ Submodule.span ℂ (Set.range c) := by
    intro x _
    rw [← h4 x]
    exact Submodule.sum_mem _ fun s _ => hsp _ ((h3 _).1 x)
  have hcard : Fintype.card (Ix Ψ j j') = g := by
    have := Module.finrank_eq_card_basis (Module.Basis.mk hli htop)
    simpa using this.symm
  exact ⟨Fintype.equivFinOfCardEq hcard, c, hmem, hort⟩

end SheetDecomposition.Univ.Frame
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.VolumeEquality.BaseUnifUnivB =====

-- ===== clump member: Development.WeilBound.CoreStatements.VolumeEquality.BaseUnifUnivC =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.VolumeEquality.BaseUnifUnivC", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.BigZe\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.BallDomainIffPosDef\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.ConjugateEmbeddingsCriterion\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.ExistsNormalizedRiemannLattice\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.LogDetEqBallPotential\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.SiegelNormalFormOfHermitian\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.SiegelTransformCommutesAction\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.SiegelTransformSymplecticImaginary\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.SpanStandardBasisEigenspace\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.SymmetricMatrixInBallImage\npublic import Development.WeilBound.CoreStatements.VolumeEquality.BaseUnifRiem\npublic import Development.WeilBound.CoreStatements.VolumeEquality.BaseUnifUnivA\npublic import Development.WeilBound.CoreStatements.VolumeEquality.BaseUnifUnivB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Finiteness.ModuleFinitePresentation\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport GroundTheory.HeightsAndTheta.Heights.FiniteCovolume.PUnipotentModulusMatrix\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\n\n"}
section -- clump:auto
@[expose] public section

open NumberField Matrix MeasureTheory Filter Topology GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Cusp ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.Geo.Tor GroundTheory.Heights₂.Heights.FiniteCovolume
open scoped ENNReal InnerProductSpace
open scoped ComplexOrder
open GlobalTheory.CompanionTheory.Ar.Cusp.Univ

noncomputable section

namespace SheetDecomposition.Univ

section Tz

variable {I : Type} [Fintype I]

theorem tz_add (Z : Matrix I I ℂ) (z w : I → ℂ) : tz Z (z + w) = tz Z z + tz Z w := by
  simp only [tz, star_add, mulVec_add]
  abel

theorem tz_I (Z : Matrix I I ℂ) (z : I → ℂ) :
    tz Z (Complex.I • z) = Complex.I • (z + Z *ᵥ star z) := by
  have h : star (Complex.I • z) = (-Complex.I) • star z := by
    funext i
    simp
  rw [tz, h, mulVec_smul, smul_add]
  funext i
  simp

def tzR (Z : Matrix I I ℂ) : (I → ℂ) →ₗ[ℝ] (I → ℂ) where
  toFun := tz Z
  map_add' := tz_add Z
  map_smul' r z := by
    have h : star (r • z) = r • star z := by
      funext i
      simp
    simp only [tz, h, RingHom.id_apply, smul_sub]
    rw [mulVec_smul]

theorem tz_support [DecidableEq I] (Z : Matrix I I ℂ) (d : I → ℂ) (M : (I → ℂ) →ₗ[ℂ] (I → ℂ))
    (h : ∀ z, tz Z (d * z) = M (tz Z z)) (i k : I) : d i * Z i k = Z i k * star (d k) := by
  have h2 : ∀ z : I → ℂ, d * z + Z *ᵥ star (d * z) = M z + M (Z *ᵥ star z) := by
    intro z
    have e : d * (Complex.I • z) = Complex.I • (d * z) := by
      funext i
      simp only [Pi.mul_apply, Pi.smul_apply, smul_eq_mul]
      ring
    have := h (Complex.I • z)
    rw [e, tz_I, tz_I, map_smul, map_add (f := _)] at this
    exact smul_right_injective _ Complex.I_ne_zero this
  have h1 : ∀ z : I → ℂ, d * z - Z *ᵥ star (d * z) = M z - M (Z *ᵥ star z) := by
    intro z
    have := h z
    rwa [tz, tz, map_sub] at this
  have h3 : ∀ z : I → ℂ, d * z = M z := by
    intro z
    funext a
    have a1 := congrFun (h1 z) a
    have a2 := congrFun (h2 z) a
    simp only [Pi.sub_apply, Pi.add_apply] at a1 a2
    linear_combination (a1 + a2) / 2
  have h4 : ∀ z : I → ℂ, Z *ᵥ star (d * z) = d * (Z *ᵥ star z) := by
    intro z
    rw [h3 (Z *ᵥ star z)]
    funext a
    have a1 := congrFun (h1 z) a
    have a2 := congrFun (h2 z) a
    simp only [Pi.sub_apply, Pi.add_apply] at a1 a2
    linear_combination (a2 - a1) / 2
  have := congrFun (h4 (Pi.single k 1)) i
  have s1 : star (d * (Pi.single k 1 : I → ℂ)) = Pi.single k (star (d k)) := by
    funext a
    by_cases hak : a = k
    · subst hak
      simp
    · simp [Pi.single_eq_of_ne hak]
  have s2 : star (Pi.single k 1 : I → ℂ) = Pi.single k 1 := by
    funext a
    by_cases hak : a = k
    · subst hak
      simp
    · simp [Pi.single_eq_of_ne hak]
  rw [s1, s2] at this
  simp only [Pi.mul_apply, mulVec_single] at this
  simpa [mul_comm] using this.symm

theorem tz_unique [DecidableEq I] (S : Set (I → ℂ)) (hS : Submodule.span ℝ S = ⊤) (A A' : (I → ℂ) ≃ₗ[ℂ] (I → ℂ))
    (Z Z' : Matrix I I ℂ) (h : ∀ z ∈ S, A (tz Z z) = A' (tz Z' z)) : Z = Z' := by
  have hall : ∀ z, A (tz Z z) = A' (tz Z' z) := by
    have hf : (A.toLinearMap.restrictScalars ℝ) ∘ₗ tzR Z = (A'.toLinearMap.restrictScalars ℝ) ∘ₗ tzR Z' :=
      LinearMap.ext_on hS fun z hz => h z hz
    exact fun z => LinearMap.congr_fun hf z
  have h2 : ∀ z : I → ℂ, A (z + Z *ᵥ star z) = A' (z + Z' *ᵥ star z) := by
    intro z
    have := hall (Complex.I • z)
    rw [tz_I, tz_I, map_smul, map_smul] at this
    exact smul_right_injective _ Complex.I_ne_zero this
  have h3 : ∀ z : I → ℂ, A z = A' z := by
    intro z
    funext a
    have a1 := congrFun (hall z) a
    have a2 := congrFun (h2 z) a
    simp only [tz, map_sub, map_add (f := _), Pi.sub_apply, Pi.add_apply] at a1 a2
    linear_combination (a1 + a2) / 2
  have h4 : ∀ z : I → ℂ, Z *ᵥ star z = Z' *ᵥ star z := by
    intro z
    apply A.injective
    have := h2 z
    rw [map_add (f := _), map_add (f := _), h3 z] at this
    rw [h3 (Z' *ᵥ star z)]
    exact add_left_cancel this
  ext i k
  have := congrFun (h4 (Pi.single k 1)) i
  have s2 : star (Pi.single k 1 : I → ℂ) = Pi.single k 1 := by
    funext a
    by_cases hak : a = k
    · subst hak
      simp
    · simp [Pi.single_eq_of_ne hak]
  rw [s2] at this
  simpa using this

end Tz

section Big

variable {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {j j' n g : ℕ}

theorem bigZe_symm (e : Ix Ψ j j' ≃ Fin g) (q : Ψ × Fin j × Fin j' ≃ Fin n) (t : Fin n → ℂ) :
    (bigZe e q t)ᵀ = bigZe e q t := by
  unfold bigZe bigZ
  rw [transpose_submatrix, blockDiagonal_transpose]
  congr 2
  funext τ
  rw [fromBlocks_transpose]
  simp

theorem bigZ_entry (q : Ψ × Fin j × Fin j' ≃ Fin n) (t : Fin n → ℂ) (τ : Ψ) (a : Fin j) (b : Fin j') :
    bigZ q t (Sum.inr a, τ) (Sum.inl b, τ) = t (q (τ, a, b)) := by
  simp [bigZ, blockDiagonal_apply_eq, ballMat]

theorem bigZe_injective (e : Ix Ψ j j' ≃ Fin g) (q : Ψ × Fin j × Fin j' ≃ Fin n) :
    Function.Injective (bigZe e q) := by
  intro t t' h
  funext k
  obtain ⟨⟨τ, a, b⟩, rfl⟩ := q.surjective k
  have := congrFun (congrFun h (e (Sum.inr a, τ))) (e (Sum.inl b, τ))
  simpa [bigZe, bigZ_entry] using this

theorem bigZ_hol (q : Ψ × Fin j × Fin j' ≃ Fin n) (i k : Ix Ψ j j') :
    Differentiable ℂ (fun t => bigZ q t i k) := by
  obtain ⟨a, τ⟩ := i
  obtain ⟨b, τ'⟩ := k
  by_cases h : τ = τ'
  · subst h
    rcases a with a | a <;> rcases b with b | b <;>
      simp [bigZ, blockDiagonal_apply_eq, ballMat, differentiable_apply]
  · simp [bigZ, blockDiagonal_apply_ne _ _ _ h]

theorem bigZe_hol (e : Ix Ψ j j' ≃ Fin g) (q : Ψ × Fin j × Fin j' ≃ Fin n) (z : Fin g → ℂ) :
    Differentiable ℂ (fun t => tz (bigZe e q t) z) := by
  refine differentiable_pi.2 fun i => ?_
  simp only [tz, Pi.sub_apply, mulVec, dotProduct, bigZe, submatrix_apply]
  refine (differentiable_const _).sub (Differentiable.fun_sum fun k _ => ?_)
  exact (bigZ_hol q _ _).mul_const _

end Big

theorem member {E : Type} [Field E] [NumberField E] [IsCMField E] {g : ℕ} {Λ : Type} [AddCommGroup Λ] [Module (𝓞 E) Λ]
    (R₁ : RiemLat E g Λ) (Z : Matrix (Fin g) (Fin g) ℂ) (hH : R₁.Hm = 1) (hs : Zᵀ = Z) (hp : (1 - Zᴴ * Z).PosDef)
    (hc : ∀ a x, tz Z (R₁.B a x) = R₁.B a (tz Z x)) :
    ∃ R : RiemLat E g Λ, R.form = R₁.form ∧ R.B = R₁.B ∧ R.Hm = (1 - Zᴴ * Z)⁻¹ ∧ ∀ x, R.P x = tz Z (R₁.P x) := by
  have hinv : ((1 - Zᴴ * Z)⁻¹).PosDef := hp.inv
  let P : Λ →+ (Fin g → ℂ) :=
    { toFun := fun x => tz Z (R₁.P x)
      map_zero' := by simp [tz]
      map_add' := fun x y => by rw [map_add (f := _), tz_add] }
  refine ⟨{ free := R₁.free, fin := R₁.fin, rank := R₁.rank, form := R₁.form, alt := R₁.alt, unimod := R₁.unimod,
            adj := R₁.adj, P := P, Hm := (1 - Zᴴ * Z)⁻¹, herm := hinv.isHermitian, pos := ?_, im := ?_, B := R₁.B,
            act := ?_ }, rfl, rfl, rfl, fun _ => rfl⟩
  · intro z hz
    have h := (Matrix.posDef_iff_dotProduct_mulVec.1 hinv).2 (x := star z) (by simpa using hz)
    rw [star_star, Complex.lt_def] at h
    exact h.1
  · intro x y
    show (tz Z (R₁.P x) ⬝ᵥ (1 - Zᴴ * Z)⁻¹ *ᵥ star (tz Z (R₁.P y))).im = _
    rw [_root_.GlobalTheory.CompanionTheory.Ar.Cusp.Univ.im_tz_form' Z hs hp, ← R₁.im, hH, one_mulVec]
  · intro a x
    show tz Z (R₁.P (a • x)) = R₁.B a (tz Z (R₁.P x))
    rw [R₁.act, hc]

theorem exists_univFam : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (Ψ : Type) [Fintype Ψ] (j j' n g : ℕ) (Λ : Type) [AddCommGroup Λ] [Module (𝓞 E) Λ] (R₀ : RiemLat E g Λ) (σ : Ψ → (𝓞 E →+* ℂ)) (q : Ψ × Fin j × Fin j' ≃ Fin n), IsCMFam σ → R₀.HasSig σ j j' → ∃ F : UnivFam E Ψ j j' n g Λ, F.q = q ∧ F.σ = σ ∧ F.form = R₀.form := by
  intro E _ _ _ Ψ _ j j' n g Λ _ _ R₀ σ q hσ hsig
  classical
  obtain ⟨e, c, hc, hco⟩ := Frame.exists_ortho_frame R₀ σ hσ hsig
  obtain ⟨R₁, hform, hHm, hB⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Cusp.Univ.CoordLat.coord_lat R₀ σ e c hc hco
  have hmem : ∀ t, ∃ R : RiemLat E g Λ, R.form = R₀.form ∧ (t ∈ ballDom q → R.B = R₁.B ∧
      R.Hm = (1 - (bigZe e q t)ᴴ * bigZe e q t)⁻¹ ∧ ∀ x, R.P x = tz (bigZe e q t) (R₁.P x)) := by
    intro t
    by_cases ht : t ∈ ballDom q
    · obtain ⟨R, h1, h2, h3, h4⟩ := member R₁ (bigZe e q t) hHm (bigZe_symm e q t)
        ((_root_.GlobalTheory.CompanionTheory.Ar.Cusp.Univ.mem_ballDom_iff_posDef_bigZe e q t).1 ht) (_root_.GlobalTheory.CompanionTheory.Ar.Cusp.Univ.tz_bigZe_comm σ e q t R₁.B hσ hB)
      exact ⟨R, h1.trans hform, fun _ => ⟨h2, h3, h4⟩⟩
    · exact ⟨R₁, hform, fun h => absurd h ht⟩
  choose R hRf hR using hmem
  have hfr := _root_.GlobalTheory.CompanionTheory.Ar.Cusp.Univ.Frames.span_single_eigSp σ e R₁.B hσ hB
  have hli : ∀ {m : ℕ} (f : Fin m → Ix Ψ j j'), Function.Injective f →
      LinearIndependent ℂ (fun i : Fin m => (Pi.single (e (f i)) 1 : Fin g → ℂ)) := by
    intro m f hf
    have := (Pi.basisFun ℂ (Fin g)).linearIndependent.comp (fun i => e (f i))
      (e.injective.comp hf)
    simpa [Function.comp_def, Pi.basisFun_apply] using this
  have hl : ∀ τ, LinearIndependent ℂ (fun i : Fin j' => (Pi.single (e (Sum.inl i, τ)) 1 : Fin g → ℂ)) := fun τ =>
    hli (fun i => (Sum.inl i, τ)) (fun a b h => by simpa using h)
  have hr : ∀ τ, LinearIndependent ℂ (fun i : Fin j => (Pi.single (e (Sum.inr i, τ)) 1 : Fin g → ℂ)) := fun τ =>
    hli (fun i => (Sum.inr i, τ)) (fun a b h => by simpa using h)
  refine ⟨{ q := q, σ := σ, cm := hσ, form := R₀.form, R := R, form_eq := hRf,
            hol := ?_, sig := ?_, b := fun τ i _ => Pi.single (e (Sum.inl i, τ)) 1,
            frames := ?_, logDet_eq := ?_, univ := ?_ }, rfl, rfl, rfl⟩
  · refine ⟨fun t _ t' _ => (hRf t).trans (hRf t').symm, fun x => ?_⟩
    exact ((bigZe_hol e q (R₁.P x)).differentiableOn).congr fun t ht => (hR t ht).2.2 x
  · intro t ht τ
    rw [(hR t ht).1, ← (hfr τ).1, ← (hfr τ).2]
    exact ⟨by rw [finrank_span_eq_card (hl τ)]; simp, by rw [finrank_span_eq_card (hr τ)]; simp⟩
  · refine ⟨fun τ i => differentiableOn_const _, fun t ht τ => ⟨hl τ, ?_⟩⟩
    show _ = eigSp (R t).B (σ τ)
    rw [(hR t ht).1]
    exact (hfr τ).1
  · intro t ht
    exact _root_.GlobalTheory.CompanionTheory.Ar.Cusp.Univ.GramPot.logDet_coord e q t (R t) ht (hR t ht).2.1
  · intro R' hR' _
    obtain ⟨L, hL1, hL2, hL3⟩ := exists_realExt R₁ R' (hR'.trans hform.symm)
    obtain ⟨A, Z, hZs, hZp, hLZ⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Cusp.Univ.PeriodCoord.exists_linearEquiv_tz L R'.Hm R'.herm R'.pos (by
      intro z w
      rw [hL2, hHm, one_mulVec])
    have hsupp : ∀ (a : 𝓞 E) i k, emb σ (e.symm i) a * Z i k = Z i k * star (emb σ (e.symm k) a) := by
      intro a
      refine tz_support Z (fun k => emb σ (e.symm k) a)
        (A.symm.toLinearMap ∘ₗ (R'.B a) ∘ₗ A.toLinearMap) fun z => ?_
      have hz : (fun k => emb σ (e.symm k) a) * z = R₁.B a z := by
        funext k
        simp [hB]
      apply A.injective
      rw [hz]
      simp only [LinearMap.comp_apply, LinearEquiv.coe_coe, LinearEquiv.apply_symm_apply]
      rw [← hLZ, ← hLZ, hL3]
    have hZ0 : ∀ i k, Z i k ≠ 0 → (e.symm i).2 = (e.symm k).2 ∧ (e.symm i).1.isLeft ≠ (e.symm k).1.isLeft := by
      intro i k hik
      refine (_root_.GlobalTheory.CompanionTheory.Ar.Cusp.Univ.EmbConj.emb_eq_star_iff σ hσ (e.symm i) (e.symm k)).1 fun a => ?_
      have := hsupp a i k
      rw [mul_comm] at this
      exact mul_left_cancel₀ hik this
    obtain ⟨t, rfl⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Cusp.Univ.exists_bigZe_eq e q Z hZs hZ0
    have ht : t ∈ ballDom q := (_root_.GlobalTheory.CompanionTheory.Ar.Cusp.Univ.mem_ballDom_iff_posDef_bigZe e q t).2 hZp
    refine ⟨t, ⟨ht, A, fun x => ?_⟩, ?_⟩
    · rw [(hR t ht).2.2 x, ← hLZ, hL1]
      rfl
    · rintro t' ⟨ht', h', hh⟩
      have hspan := (SheetDecomposition.riemBasic E g Λ Ψ R₁).2.1
      refine bigZe_injective e q (tz_unique _ hspan h' A _ _ ?_)
      rintro _ ⟨x, rfl⟩
      rw [← (hR t' ht').2.2 x, ← hh x, ← hLZ, hL1]
      rfl

end SheetDecomposition.Univ

end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.VolumeEquality.BaseUnifUnivC =====
