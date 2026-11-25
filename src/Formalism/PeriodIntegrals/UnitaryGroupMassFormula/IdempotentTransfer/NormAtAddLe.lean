module

public import Formalism.HermitianLattices.StatementMaj

@[expose] public section

noncomputable section

namespace PI.Dv.Tr

open PI.Dv Module NumberField

section Sandwich

variable {K : Type} [Field K] {W : Type} [AddCommGroup W] [Module K W] [FiniteDimensional K W]

end Sandwich

section GroupAlg

variable {K : Type} [Field K] [CharZero K] {G : Type} [Group G] [Fintype G]





end GroupAlg

section Norms

variable {K : Type} [Field K] [NumberField K] [StarRing K] {V ι : Type} [AddCommGroup V] [Module K V]
  [Fintype ι] [DecidableEq ι]

lemma normAt_add_le' (b : Basis ι K V) (X : InfinitePlace K → Matrix ι ι ℂ) (v : InfinitePlace K) (x y : V) :
    Formalism.HermitianLatticesTheory.normAt b X v (x + y) ≤ Formalism.HermitianLatticesTheory.normAt b X v x + Formalism.HermitianLatticesTheory.normAt b X v y := by
  have hc : ∀ u : ι → ℂ, Formalism.HermitianLatticesTheory.cnorm u = ‖(WithLp.equiv 2 (ι → ℂ)).symm u‖ := by
    intro u
    rw [EuclideanSpace.norm_eq]
    rfl
  have h : Formalism.HermitianLatticesTheory.fcoord b X v (x + y) = Formalism.HermitianLatticesTheory.fcoord b X v x + Formalism.HermitianLatticesTheory.fcoord b X v y := by
    unfold Formalism.HermitianLatticesTheory.fcoord
    rw [← Matrix.mulVec_add]
    congr 1
    funext i
    simp [Formalism.HermitianLatticesTheory.vecAt]
  unfold Formalism.HermitianLatticesTheory.normAt
  rw [h, hc, hc, hc]
  exact norm_add_le ((WithLp.equiv 2 (ι → ℂ)).symm (Formalism.HermitianLatticesTheory.fcoord b X v x))
    ((WithLp.equiv 2 (ι → ℂ)).symm (Formalism.HermitianLatticesTheory.fcoord b X v y))

lemma normAt_zero' (b : Basis ι K V) (X : InfinitePlace K → Matrix ι ι ℂ) (v : InfinitePlace K) :
    Formalism.HermitianLatticesTheory.normAt b X v 0 = 0 := by
  unfold Formalism.HermitianLatticesTheory.normAt Formalism.HermitianLatticesTheory.cnorm Formalism.HermitianLatticesTheory.fcoord
  have h : Formalism.HermitianLatticesTheory.vecAt b v (0 : V) = 0 := by
    funext i
    simp [Formalism.HermitianLatticesTheory.vecAt]
  rw [h, Matrix.mulVec_zero]
  simp

lemma normAt_sum_le' {α : Type} (b : Basis ι K V) (X : InfinitePlace K → Matrix ι ι ℂ) (v : InfinitePlace K)
    (s : Finset α) (f : α → V) :
    Formalism.HermitianLatticesTheory.normAt b X v (∑ i ∈ s, f i) ≤ ∑ i ∈ s, Formalism.HermitianLatticesTheory.normAt b X v (f i) := by
  exact Finset.le_sum_of_subadditive (Formalism.HermitianLatticesTheory.normAt b X v) (normAt_zero' b X v).le (normAt_add_le' b X v) s f

end Norms

end PI.Dv.Tr
