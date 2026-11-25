module

public import Formalism.ConjugateSelfDual.Statement
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.Style
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
import Mathlib.Tactic.TypeStar
import Mathlib.Topology.Sheaves.Init
import Std.Tactic.BVDecide.Normalize.Prop

@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Pointwise

namespace Formalism.MainNotions.V.Lang

open Formalism.ConjugateSelfDual

variable {F Ω : Type*} [Field F] [NumberField F] [Field Ω] [Algebra F Ω]

def Dec (A : ValuationSubring (Ω)) : Subgroup (G F Ω) := A.decompositionSubgroup F

theorem apply_mem_iff_of_mem_Dec {A : ValuationSubring (Ω)} {σ : G F Ω}
    (hσ : σ ∈ Dec (F := F) A) (x : Ω) : σ x ∈ A ↔ x ∈ A := by
  have h : σ • A = A := hσ
  rw [← AlgEquiv.smul_def]
  conv_lhs => rw [← h]
  exact ValuationSubring.smul_mem_pointwise_smul_iff

theorem valuation_lt_one_iff' (A : ValuationSubring (Ω)) (y : Ω) :
    A.valuation y < 1 ↔ y ∈ A ∧ (y = 0 ∨ y⁻¹ ∉ A) := by
  rw [← A.valuation_le_one_iff, ← A.valuation_le_one_iff, map_inv₀]
  rcases eq_or_ne y 0 with rfl | hy
  · simp
  · have h0 : A.valuation y ≠ 0 := by simpa using hy
    simp only [hy, false_or]
    constructor
    · intro h
      refine ⟨h.le, fun h' => ?_⟩
      have : (1 : A.ValueGroup) ≤ A.valuation y := by
        simpa using (inv_le_one₀ (zero_lt_iff.mpr h0)).mp h'
      exact absurd h (not_lt.mpr this)
    · rintro ⟨h1, h2⟩
      refine lt_of_le_of_ne h1 fun he => h2 ?_
      rw [he, inv_one]

theorem valuation_apply_lt_one_iff {A : ValuationSubring (Ω)} {σ : G F Ω}
    (hσ : σ ∈ Dec (F := F) A) (y : Ω) :
    A.valuation (σ y) < 1 ↔ A.valuation y < 1 := by
  rw [valuation_lt_one_iff', valuation_lt_one_iff', apply_mem_iff_of_mem_Dec hσ,
    ← map_inv₀, apply_mem_iff_of_mem_Dec hσ, map_eq_zero_iff _ σ.injective]

theorem mul_inv_apply {σ : G F Ω} (x : Ω) : σ ((σ⁻¹ : G F Ω) x) = x := by
  show (σ * σ⁻¹) x = x
  simp

def Ine (A : ValuationSubring (Ω)) : Subgroup (G F Ω) where
  carrier := Inertia (F := F) A
  one_mem' := ⟨(Dec (F := F) A).one_mem, fun x _ => by simp⟩
  mul_mem' := by
    rintro σ τ ⟨hσ, hσ'⟩ ⟨hτ, hτ'⟩
    refine ⟨(Dec (F := F) A).mul_mem hσ hτ, fun x hx => ?_⟩
    have e : (σ * τ) x - x = σ (τ x - x) + (σ x - x) := by
      simp [AlgEquiv.mul_apply, map_sub]
    rw [e]
    exact Valuation.map_add_lt _ ((valuation_apply_lt_one_iff hσ _).mpr (hτ' x hx)) (hσ' x hx)
  inv_mem' := by
    rintro σ ⟨hσ, hσ'⟩
    refine ⟨(Dec (F := F) A).inv_mem hσ, fun x hx => ?_⟩
    have hy : A.valuation ((σ⁻¹ : G F Ω) x) ≤ 1 := by
      rw [A.valuation_le_one_iff, ← apply_mem_iff_of_mem_Dec hσ, mul_inv_apply]
      exact (A.valuation_le_one_iff x).mp hx
    have e : (σ⁻¹ : G F Ω) x - x = -(σ ((σ⁻¹ : G F Ω) x) - (σ⁻¹ : G F Ω) x) := by
      rw [mul_inv_apply]; ring
    rw [e, Valuation.map_neg]
    exact hσ' _ hy


variable (F Ω) in
def cycZ (l : ℕ) [Fact l.Prime] : G F Ω →* ℤ_[l]ˣ :=
  (cyclotomicCharacter (Ω) l).comp
    (MulSemiringAction.toRingAut (G F Ω) (Ω))


variable (F Ω) in
def cycMod (l : ℕ) [Fact l.Prime] (r : ℕ) : G F Ω →* (ZMod (l ^ r))ˣ :=
  (Units.map (PadicInt.toZModPow r : ℤ_[l] →+* ZMod (l ^ r)).toMonoidHom).comp (cycZ F Ω l)

section unram

variable (S : Set (HeightOneSpectrum (𝓞 F)))

end unram

end Formalism.MainNotions.V.Lang
