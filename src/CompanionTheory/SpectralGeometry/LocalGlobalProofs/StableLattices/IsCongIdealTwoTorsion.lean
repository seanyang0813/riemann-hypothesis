module

public import CompanionTheory.RealGroups.UnitaryAdmissibility.ArchimedeanUnitaryDual.StSandwich

@[expose] public section

open CompanionTheory.Rg.FlB

noncomputable section

namespace GlobalTheory.CompanionTheory.Iwahori

structure IsPieces {E ι : Type} [Ring E] [Fintype ι] (P : ι → E) : Prop where
  orth : ∀ i j, i ≠ j → P i * P j = 0
  idem : ∀ i, P i * P i = P i
  sum : ∑ i, P i = 1

def IsLower {E ι : Type} [Ring E] (wt : ι → ℕ) (P : ι → E) (b : E) : Prop :=
  ∀ i j, wt i < wt j → P i * b * P j = 0

def IsLowerUni {E ι : Type} [Ring E] (wt : ι → ℕ) (P : ι → E) (b : E) : Prop :=
  IsLower wt P b ∧ ∀ i, P i * b * P i = P i

end GlobalTheory.CompanionTheory.Iwahori

end
