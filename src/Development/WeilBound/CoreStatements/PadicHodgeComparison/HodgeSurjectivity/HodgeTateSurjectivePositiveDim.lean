module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.HodgeSurjectivity.HodgeKill
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.IsEtaleFirstChernUntwisted

@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry GlobalTheory.LogCris

namespace CrystallineSemistableComparison.Onto

open Pb HT

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

structure Sq (M : Model l K) (d : ℕ) where
  P : Model l K
  Y : Model l K
  p₁ : P.X ⟶ M.X
  p₂ : P.X ⟶ M.X
  Δ : M.X ⟶ P.X
  π : Y.X ⟶ P.X
  h₁ : p₁ ≫ M.p = P.p
  h₂ : p₂ ≫ M.p = P.p
  hΔ : Δ ≫ P.p = M.p
  hπ : π ≫ P.p = Y.p
  Δ₁ : Δ ≫ p₁ = 𝟙 _
  Δ₂ : Δ ≫ p₂ = 𝟙 _
  prod : IsPullback p₁ p₂ M.p M.p
  smP : P.Sm
  smY : Y.Sm
  D : E.LineData Y.X
  loc : sSup (𝒱D D) = ⊤
  blow : Nonempty (Blow P.q (Model.genMap Δ hΔ) (Model.genMap π hπ) (genD D) d)

def SqEx : Prop := ∀ (l : ℕ) [Fact l.Prime] (K : IntermediateField ℚ_[l] (PadicAlgCl l)) [FiniteDimensional ℚ_[l] K] (M : Model l K)
  (d : ℕ), M.Sm → SmoothOfRelativeDimension (d + 1) M.p → Nonempty (Sq M (d + 1))

def castT {M : Model l K} {i j : ℕ} (h : i = j) (x : M.T i) : M.T j := h ▸ x

def EtFin : Prop := ∀ (l : ℕ) [Fact l.Prime] (K : IntermediateField ℚ_[l] (PadicAlgCl l)) [FiniteDimensional ℚ_[l] K] (M : Model l K),
  M.Sm → ∀ n, FiniteDimensional ℚ_[l] (M.V n)

def Surj (P : HTPre l K) (M : Model l K) (n : ℕ) : Prop :=
  ∀ {m : ℕ → ℕ} (b : ∀ a, Module.Basis (Fin (m a)) K (Hdg M.q a n)) (z : ∀ a, Fin (m a) → ℂ_[l]),
    (∀ v : M.V n, ∑ a ∈ Finset.range (n + 1), ∑ s, z a s * P.h M a n v ((b a).coord s) = 0) → ∀ a ≤ n, z a = 0

def HodgeTateDimensionEquality : Prop := ∀ (l : ℕ) [Fact l.Prime] (K : IntermediateField ℚ_[l] (PadicAlgCl l)) [FiniteDimensional ℚ_[l] K]
  (P : HTPre l K) (M : Model l K) (n : ℕ), M.Sm → FiniteDimensional ℚ_[l] (M.V n) → P.Inj M n → Surj P M n →
  Module.finrank ℚ_[l] (M.V n) = ∑ a ∈ Finset.range (n + 1), Module.finrank K (Hdg M.q a n)

end CrystallineSemistableComparison.Onto

end
