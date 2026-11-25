module

import Development.AbelianVarietyTheory.Proofs.FlagMeasures.NormalFormFlagLatticesNearUnderStabiliser
public import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.NormalFormDualOrthogonalLast
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
import Mathlib.Topology.Sheaves.Init

@[expose] public section

noncomputable section
open NumberField Formalism.HermitianLatticeCounting.S6 GlobalTheory.DegCnt
open scoped Pointwise nonZeroDivisors

namespace GlobalTheory.RowStab

section Gen
variable {K V ι : Type} [Field K] [StarRing K] [AddCommGroup V] [Module K V]

def gen (H : HermSpace K V) (J : Finset ι) (e ρ : ι → V) (c : ι → ι → K) : V →ₗ[K] V :=
  LinearMap.id + ∑ b ∈ J, ((H.B.flip (e b)).smulRight (ρ b) - (H.B.flip (ρ b)).smulRight (e b) +
    ∑ a ∈ J, (c a b • H.B.flip (e b)).smulRight (e a))

theorem gen_apply (H : HermSpace K V) (J : Finset ι) (e ρ : ι → V) (c : ι → ι → K) (v : V) :
    gen H J e ρ c v = v + ∑ b ∈ J, (H.B v (e b) • ρ b - H.B v (ρ b) • e b +
      ∑ a ∈ J, (c a b * H.B v (e b)) • e a) := by
  simp [gen, LinearMap.sum_apply, mul_smul]

end Gen

section Ideal
variable {K : Type} [Field K] [NumberField K]

theorem ipow_mul_mem {𝔡 : Ideal (𝓞 K)} (h𝔡 : 𝔡 ≠ ⊥) {m n : ℤ} {x y : K} (hx : x ∈ ipow 𝔡 m)
    (hy : y ∈ ipow 𝔡 n) : x * y ∈ ipow 𝔡 (m + n) := by
  have h0 : ((𝔡 : FractionalIdeal (𝓞 K)⁰ K)) ≠ 0 := by
    simpa using h𝔡
  unfold ipow at *
  rw [zpow_add₀ h0, FractionalIdeal.coe_mul]
  exact Submodule.mul_mem_mul hx hy

theorem one_mem_ipow_mul {𝔡 : Ideal (𝓞 K)} (h𝔡 : 𝔡 ≠ ⊥) (m : ℤ) :
    (1 : K) ∈ ipow 𝔡 m * ipow 𝔡 (-m) := by
  have h0 : ((𝔡 : FractionalIdeal (𝓞 K)⁰ K)) ≠ 0 := by
    simpa using h𝔡
  unfold ipow
  rw [← FractionalIdeal.coe_mul, ← zpow_add₀ h0, add_neg_cancel, zpow_zero, FractionalIdeal.coe_one]
  exact Submodule.one_le.mp le_rfl

theorem ipow_zero (𝔡 : Ideal (𝓞 K)) : ipow 𝔡 0 = 1 := by
  simp [ipow]

theorem mem_ipow_of_mul {𝔡 : Ideal (𝓞 K)} (h𝔡 : 𝔡 ≠ ⊥) {m n : ℤ} {x : K}
    (h : ∀ t ∈ ipow 𝔡 (-m), t * x ∈ ipow 𝔡 n) : x ∈ ipow 𝔡 (m + n) := by
  have key : ∀ y ∈ ipow 𝔡 m * ipow 𝔡 (-m), y * x ∈ ipow 𝔡 (m + n) := by
    intro y hy
    refine Submodule.mul_induction_on hy ?_ ?_
    · intro a ha t ht
      rw [mul_assoc]
      exact ipow_mul_mem h𝔡 ha (h t ht)
    · intro a b ha hb
      rw [add_mul]
      exact Submodule.add_mem _ ha hb
  simpa using key 1 (one_mem_ipow_mul h𝔡 m)

end Ideal

section Smul
variable {K V : Type} [Field K] [NumberField K] [AddCommGroup V] [Module K V] [Module (𝓞 K) V]
  [IsScalarTower (𝓞 K) K V]

theorem smul_mem_of_mem_ipow_smul {𝔡 : Ideal (𝓞 K)} (h𝔡 : 𝔡 ≠ ⊥) {m : ℤ} {M : Submodule (𝓞 K) V} {v : V}
    (hv : v ∈ ipow 𝔡 m • M) {t : K} (ht : t ∈ ipow 𝔡 (-m)) : t • v ∈ M := by
  refine Submodule.smul_induction_on hv ?_ ?_
  · intro a ha n hn
    have h1 : t * a ∈ ipow 𝔡 0 := by
      simpa [add_comm] using ipow_mul_mem h𝔡 ht ha
    rw [ipow_zero] at h1
    obtain ⟨o, ho⟩ := Submodule.mem_one.mp h1
    rw [smul_smul, ← ho, algebraMap_smul]
    exact M.smul_mem o hn
  · intro x y hx hy
    rw [smul_add]
    exact M.add_mem hx hy

theorem mem_ipow_smul_of_smul_mem {𝔡 : Ideal (𝓞 K)} (h𝔡 : 𝔡 ≠ ⊥) {m : ℤ} {M : Submodule (𝓞 K) V} {v : V}
    (h : ∀ t ∈ ipow 𝔡 (-m), t • v ∈ M) : v ∈ ipow 𝔡 m • M := by
  have key : ∀ y ∈ ipow 𝔡 m * ipow 𝔡 (-m), y • v ∈ ipow 𝔡 m • M := by
    intro y hy
    refine Submodule.mul_induction_on hy ?_ ?_
    · intro a ha t ht
      rw [mul_smul]
      exact Submodule.smul_mem_smul ha (h t ht)
    · intro a b ha hb
      rw [add_smul]
      exact Submodule.add_mem _ ha hb
  simpa using key 1 (one_mem_ipow_mul h𝔡 m)

end Smul

section Star
variable {K : Type} [Field K] [NumberField K] [StarRing K]

theorem star_integral (y : 𝓞 K) : ∃ y' : 𝓞 K, (y' : K) = star (y : K) := by
  have h : IsIntegral ℤ (star (y : K)) := by
    exact (RingOfIntegers.isIntegral_coe y).map ((starRingEnd K).toIntAlgHom)
  exact ⟨⟨star (y : K), h⟩, rfl⟩

theorem star_mem_one {x : K} (hx : x ∈ (1 : FractionalIdeal (𝓞 K)⁰ K)) :
    star x ∈ (1 : FractionalIdeal (𝓞 K)⁰ K) := by
  rw [FractionalIdeal.mem_one_iff] at *
  obtain ⟨y, rfl⟩ := hx
  obtain ⟨y', hy'⟩ := star_integral y
  exact ⟨y', hy'⟩

theorem star_mem_ipow {𝔡 : Ideal (𝓞 K)} (h𝔡 : 𝔡 ≠ ⊥)
    (h𝔡s : ∀ x ∈ 𝔡, ∃ y ∈ 𝔡, (y : K) = star (x : K)) (n : ℤ) {x : K} (hx : x ∈ ipow 𝔡 n) :
    star x ∈ ipow 𝔡 n := by
  apply GlobalTheory.DegCnt.PosJ.star_mem_ipow <;> assumption

end Star

end GlobalTheory.RowStab
