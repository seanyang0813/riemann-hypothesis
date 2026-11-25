module

public import Formalism.PeriodIntegrals.BetaLUniq

@[expose] public section

noncomputable section

open NumberField Module Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat

namespace PI.UnitaryGroupMassFormula.BetaLUniq

section Gen

def GramNondeg : Prop :=
  ∀ {E : Type} [Field E] [NumberField E] [StarRing E] (S : HSpace E) (Λ : Submodule (𝓞 E) S.V) {r : ℕ} {T T' : E} (F : LFlag S r T) (F' : LFlag S r T'),
    Submodule.IsFullLattice E Λ → IsLift Λ F → IsLift Λ F' → Gval F F' ≠ 0 →
      finrank E (UUE Λ F F') = 2 * r + 2 ∧ UUE Λ F F' ⊓ orth S (UUE Λ F F') = ⊥

def AgreeOnH : Prop :=
  ∀ {E : Type} [Field E] [NumberField E] [StarRing E] (S : HSpace E) (Λ : Submodule (𝓞 E) S.V) {r : ℕ} {T T' : E} (F : LFlag S r T) (F' F'' : LFlag S r T')
    (β₁ β₂ : S.V ≃ₗ[E] S.V) (k : ℕ), Submodule.IsFullLattice E Λ → IsLift Λ F → IsLift Λ F'' →
    finrank E S.V = k + 2 * r + 1 →
    (finrank E (UUE Λ F F') = 2 * r + 2 ∧ UUE Λ F F' ⊓ orth S (UUE Λ F F') = ⊥) →
    (finrank E (UUE Λ F F'') = 2 * r + 2 ∧ UUE Λ F F'' ⊓ orth S (UUE Λ F F'') = ⊥) →
    s0 Λ F F' F'' β₁ k = 1 → s0 Λ F F' F'' β₂ k = 1 →
      ∀ x ∈ Hp Λ F F', β₂ x - β₁ x ∈ Xsp F''

def EigenOne {E : Type} [Field E] [NumberField E] [StarRing E] {S : HSpace E} (Λ : Submodule (𝓞 E) S.V) {r : ℕ} {T T' : E} (F : LFlag S r T)
    (F' : LFlag S r T') (β₁ β₂ : S.V ≃ₗ[E] S.V) : Prop :=
  ∀ v ∈ orth S (Xplus F'), v ∉ Xsp F' → (∀ h ∈ Hp Λ F F', S.hT h v = 0) →
    ∀ μ : E, β₁.symm (β₂ v) - μ • v ∈ Xsp F' → μ = 1

end Gen

section D7

open PI.BetaLUniq

def WAniso : Prop :=
  ∀ (D : D7) (u' : D.what₂.Word) (F' : Fl D (Tu D u')) (w : (hS D).V),
    w ∈ orth (hS D) (Xplus F') → (hS D).hT w w = 0 → w ∈ Xsp F'

def EigenvalueLastLineOne : Prop :=
  ∀ (D : D7) (u u' : D.what₂.Word),
  ∀ (Λ : Lt D) (F : Fl D (Tu D u)) (F' F'' : Fl D (Tu D u')) (β₁ β₂ : (hS D).V ≃ₗ[D.host.E] (hS D).V),
    FixedHyp D Λ F → IsTerm Λ (gS D) F F' → IsTerm Λ (gS D) F F'' → IsGeneric Λ (gS D) F F' →
    IsGeneric Λ (gS D) F F'' → IsPair Λ F F' F'' β₁ (gS D) → IsPair Λ F F' F'' β₂ (gS D) →
    Lat.s0 Λ F F' F'' β₁ D.R.k = 1 → Lat.s0 Λ F F' F'' β₂ D.R.k = 1 →
      EigenOne Λ F F' β₁ β₂

theorem finrank_hS (D : D7) : finrank D.host.E (hS D).V = D.R.k + 2 * D.R.rS + 1 := by
  rw [(hS D).rank_eq, D.sp.Y_rank 0 (Nat.zero_le _)]
  obtain ⟨j, hj⟩ := D.R.m_even
  have h2 := D.R.two_le_m
  simp only [Ranks.rankY, Ranks.r, Ranks.rS, zero_mul, add_zero]
  omega

end D7

end PI.UnitaryGroupMassFormula.BetaLUniq
