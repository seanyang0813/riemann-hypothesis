module

public import Formalism.LatticeRigidity.StatementC
public import Formalism.LatticeTheta.Statement

@[expose] public section

namespace Formalism.FourierDecayAlt.F7

open Finset Polynomial

noncomputable section

abbrev Sesq (M : Type) [AddCommGroup M] [Module ℂ M] : Type := M →ₗ[ℂ] M →ₛₗ[starRingEnd ℂ] ℂ

section Defs

variable {R M : Type} [Ring R] [Algebra ℂ R] [AddCommGroup M] [Module ℂ M] [Module R M]

end Defs

def lagCo {d : ℕ} (y : Fin (d + 1) → ℝ) (j : Fin (d + 1)) : ℝ := ∏ i ∈ univ.erase j, (y j - y i)⁻¹

def PolyStep {V : Type} [AddCommGroup V] [Module ℂ V] (K d : ℕ) (s : Fin K → ℂ)
    (W : ℕ → (Fin K → ℝ) → V) : Prop :=
  ∀ (a : Fin K) (y : Fin K → ℝ), ∃ c : Fin (d + 1) → V, c (Fin.last d) = s a • W (a : ℕ) y ∧
    ∀ t : ℝ, W ((a : ℕ) + 1) (Function.update y a t) = ∑ k : Fin (d + 1), ((t : ℂ) ^ (k : ℕ)) • c k

def ExtractK : Prop :=
  ∀ (V : Type) [AddCommGroup V] [Module ℂ V] (K d : ℕ) (s : Fin K → ℂ)
    (W : ℕ → (Fin K → ℝ) → V) (grid : Fin K → Fin (d + 1) → ℝ),
    PolyStep K d s W → (∀ a, Function.Injective (grid a)) → ∀ y₀ : Fin K → ℝ,
    (∏ a, s a) • W 0 y₀ =
      ∑ j : Fin K → Fin (d + 1), ((∏ a, lagCo (grid a) (j a) : ℝ) : ℂ) • W K fun a => grid a (j a)

def thGrid {K d : ℕ} (grid : Fin K → Fin (d + 1) → ℝ) (j : Fin K → Fin (d + 1)) : ℝ :=
  ∏ a, (|lagCo (grid a) (j a)| / ∑ i, |lagCo (grid a) i|)

def DualWeights : Prop :=
  ∀ (Ls : Type) [Fintype Ls] (ω N N' : Ls → ℝ), (∀ L, 0 ≤ ω L) → (∀ L, 0 ≤ N L) → (∀ L, 0 ≤ N' L) →
    0 < ∑ L, ω L →
    (∑ L, (ω L / (2 * ∑ L', ω L') + ω L / (2 * ∑ L', ω L'))) = 1 ∧
    (∑ L, ω L * √(N L * N' L)) ≤
      (∑ L, ω L) * (∑ L, (ω L / (2 * ∑ L', ω L') * N L + ω L / (2 * ∑ L', ω L') * N' L))

def ExtractCheb : Prop :=
  ∀ (V : Type) [SeminormedAddCommGroup V] [NormedSpace ℂ V] (K d : ℕ) (s : Fin K → ℂ)
    (W : ℕ → (Fin K → ℝ) → V) (α β : Fin K → ℝ),
    1 ≤ d → (∀ a, α a < β a) → PolyStep K d s W → ∀ (y₀ : Fin K → ℝ) (B : ℝ),
    (∀ j : Fin K → Fin (d + 1), ‖W K fun a => Formalism.SA.C.chebPt (α a) (β a) d (j a)‖ ≤ B) →
    (∏ a, ‖s a‖) * ‖W 0 y₀‖ ≤ (∏ a, (1 / 2) * (4 / (β a - α a)) ^ d) * B

def ChebSharp : Prop :=
  ∀ (α β : ℝ) (n : ℕ), α < β → 1 ≤ n →
    Function.Injective (Formalism.SA.C.chebPt α β n) ∧
      ∑ j, |lagCo (Formalism.SA.C.chebPt α β n) j| = (1 / 2) * (4 / (β - α)) ^ n

def ChebCoValue : Prop :=
  ∀ (α β : ℝ) (n : ℕ), α < β → 1 ≤ n → ∀ j : Fin (n + 1),
    lagCo (Formalism.SA.C.chebPt α β n) j =
      (-1) ^ (j : ℕ) * (if (j : ℕ) = 0 ∨ (j : ℕ) = n then 1 / 2 else 1) *
        ((2 : ℝ) ^ (n - 1) / n) * (2 / (β - α)) ^ n

section Poisson

open MeasureTheory Formalism.H
open scoped FourierTransform RealInnerProductSpace

def PoissonAt {V : Type} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [MeasurableSpace V]
    [BorelSpace V] [FiniteDimensional ℝ V] (Λ : Submodule ℤ V) [DiscreteTopology Λ] [IsZLattice ℝ Λ]
    (φ : V → ℂ) (x : V) : Prop :=
  Summable (fun μ : dual Λ =>
      (𝓕 φ : V → ℂ) μ * Complex.exp (2 * Real.pi * Complex.I * (⟪(μ : V), x⟫ : ℝ))) ∧
  HasSum (fun l : Λ => φ ((l : V) + x))
    ((ZLattice.covolume Λ : ℂ)⁻¹ * ∑' μ : dual Λ,
      (𝓕 φ : V → ℂ) μ * Complex.exp (2 * Real.pi * Complex.I * (⟪(μ : V), x⟫ : ℝ)))

def poissonBound {V : Type} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [MeasurableSpace V]
    [BorelSpace V] [FiniteDimensional ℝ V] (Λ : Submodule ℤ V) [DiscreteTopology Λ] [IsZLattice ℝ Λ]
    (φ : V → ℝ) : ℝ :=
  (ZLattice.covolume Λ)⁻¹ * (((𝓕 (fun v => (φ v : ℂ)) : V → ℂ) 0).re +
    ∑' μ : {μ : dual Λ // μ ≠ 0}, ‖(𝓕 (fun v => (φ v : ℂ)) : V → ℂ) (μ : dual Λ)‖)

def PoissonStep : Prop :=
  ∀ (V : Type) [NormedAddCommGroup V] [InnerProductSpace ℝ V] [MeasurableSpace V] [BorelSpace V]
    [FiniteDimensional ℝ V] (Λ : Submodule ℤ V) [DiscreteTopology Λ] [IsZLattice ℝ Λ]
    (φ : V → ℝ) (x : V),
    PoissonAt Λ (fun v => (φ v : ℂ)) x → (∀ l : Λ, 0 ≤ φ ((l : V) + x)) →
    ∀ S : Finset Λ, ∑ l ∈ S, φ ((l : V) + x) ≤ poissonBound Λ φ

def LocSummable {V : Type} [NormedAddCommGroup V] (Λ : Submodule ℤ V) (φ : V → ℂ) : Prop :=
  ∀ Kc : Set V, IsCompact Kc → ∃ b : Λ → ℝ, Summable b ∧ ∀ (l : Λ), ∀ x ∈ Kc, ‖φ ((l : V) + x)‖ ≤ b l

def PoissonSummable : Prop :=
  ∀ (V : Type) [NormedAddCommGroup V] [InnerProductSpace ℝ V] [MeasurableSpace V] [BorelSpace V]
    [FiniteDimensional ℝ V] (Λ : Submodule ℤ V) [DiscreteTopology Λ] [IsZLattice ℝ Λ] (φ : V → ℂ),
    Continuous φ → LocSummable Λ φ → Summable (fun μ : dual Λ => ‖(𝓕 φ : V → ℂ) μ‖) →
    ∀ x : V, PoissonAt Λ φ x

def ProductDecaySummable : Prop :=
  ∀ (V : Type) [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
    (ι : Type) [Fintype ι] (π : ι → V →L[ℝ] ℂ), (Function.Bijective fun (c : V) (v : ι) => π v c) →
    ∀ (Λ : Submodule ℤ V) [DiscreteTopology Λ] [IsZLattice ℝ Λ] (φ : V → ℂ) (C : ℝ),
    (∀ c, ‖φ c‖ ≤ C * ∏ v, ((1 + ‖π v c‖) ^ 3)⁻¹) → LocSummable Λ φ

def PoissonStepText : Prop :=
  ∀ (V : Type) [NormedAddCommGroup V] [InnerProductSpace ℝ V] [MeasurableSpace V] [BorelSpace V]
    [FiniteDimensional ℝ V] (ι : Type) [Fintype ι] (π : ι → V →L[ℝ] ℂ),
    (Function.Bijective fun (c : V) (v : ι) => π v c) →
    ∀ (Λ : Submodule ℤ V) [DiscreteTopology Λ] [IsZLattice ℝ Λ] (φ : V → ℝ) (C : ℝ) (x : V),
    Continuous φ → (∀ c, |φ c| ≤ C * ∏ v, ((1 + ‖π v c‖) ^ 3)⁻¹) →
    Summable (fun μ : dual Λ => ‖(𝓕 (fun v => (φ v : ℂ)) : V → ℂ) μ‖) →
    (∀ l : Λ, 0 ≤ φ ((l : V) + x)) →
    PoissonAt Λ (fun v => (φ v : ℂ)) x ∧
      ∀ S : Finset Λ, ∑ l ∈ S, φ ((l : V) + x) ≤ poissonBound Λ φ

end Poisson

structure WLetter (K : Type) where

  plus : Bool

  pt : K

  first : Bool

section Weights

variable {K : Type} [Field K]

def qW (q : K → K) : List (WLetter K) → K → K
  | [], Y => q Y
  | l :: w, Y => qW q w Y *
      (if l.plus then (Y - l.pt + 1) / (Y - l.pt) else (l.pt - Y) / (l.pt - Y - 1))

end Weights

end

end Formalism.FourierDecayAlt.F7
