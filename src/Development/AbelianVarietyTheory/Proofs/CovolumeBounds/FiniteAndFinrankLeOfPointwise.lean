module

public import Mathlib.Analysis.CStarAlgebra.Module.Constructions
public import Mathlib.Analysis.InnerProductSpace.Adjoint
public import Mathlib.MeasureTheory.Integral.Bochner.Basic
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Algebra.Ring.IsFormallyReal
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.HaveILetI
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.TypeStar
import Mathlib.Topology.Sheaves.Init
public import Mathlib.MeasureTheory.Group.Integral
public import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap

@[expose] public section

open MeasureTheory Module
open scoped InnerProductSpace BigOperators

namespace GlobalTheory.Bergman

section Pointwise

variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℂ V]
variable {ι κ : Type*} [Fintype ι] [Fintype κ]

variable {E : Type*} [NormedAddCommGroup E] [InnerProductSpace ℂ E]

theorem sum_norm_sq_eq_adjoint [FiniteDimensional ℂ V] [FiniteDimensional ℂ E]
    (b : OrthonormalBasis ι ℂ V) (e : OrthonormalBasis κ ℂ E) (l : V →ₗ[ℂ] E) :
    ∑ i, ‖l (b i)‖ ^ 2 = ∑ k, ‖LinearMap.adjoint l (e k)‖ ^ 2 := by
  have h1 : ∀ i, ‖l (b i)‖ ^ 2 = ∑ k, ‖⟪b i, LinearMap.adjoint l (e k)⟫_ℂ‖ ^ 2 := by
    intro i
    rw [← e.sum_sq_norm_inner_left]
    simp [LinearMap.adjoint_inner_right]
  simp_rw [h1]
  rw [Finset.sum_comm]
  exact Finset.sum_congr rfl fun k _ => b.sum_sq_norm_inner_right _

theorem adjoint_sq_sq_le [FiniteDimensional ℂ V] [FiniteDimensional ℂ E] (l : V →ₗ[ℂ] E)
    {e : E} (he : ‖e‖ = 1) :
    ‖LinearMap.adjoint l e‖ ^ 2 ≤ ‖l (LinearMap.adjoint l e)‖ := by
  have h1 : ⟪LinearMap.adjoint l e, LinearMap.adjoint l e⟫_ℂ
      = ⟪e, l (LinearMap.adjoint l e)⟫_ℂ := LinearMap.adjoint_inner_left _ _ _
  have h2 := norm_inner_le_norm (𝕜 := ℂ) e (l (LinearMap.adjoint l e))
  rw [← h1, inner_self_eq_norm_sq_to_K, he, one_mul] at h2
  simpa using h2

theorem sum_norm_sq_le [FiniteDimensional ℂ E] (b : OrthonormalBasis ι ℂ V) (l : V →ₗ[ℂ] E)
    {C : ℝ} (hC : 0 ≤ C) (h : ∀ f, ‖l f‖ ^ 2 ≤ C * ‖f‖ ^ 2) :
    ∑ i, ‖l (b i)‖ ^ 2 ≤ finrank ℂ E * C := by
  haveI : FiniteDimensional ℂ V := Module.Finite.of_basis b.toBasis
  rw [sum_norm_sq_eq_adjoint b (stdOrthonormalBasis ℂ E) l]
  have : ∀ k, ‖LinearMap.adjoint l (stdOrthonormalBasis ℂ E k)‖ ^ 2 ≤ C := by
    intro k
    have h1 := adjoint_sq_sq_le l ((stdOrthonormalBasis ℂ E).orthonormal.1 k)
    set u := LinearMap.adjoint l (stdOrthonormalBasis ℂ E k)
    have h2 := h u
    by_contra hlt
    push_neg at hlt
    have hpos : 0 < ‖u‖ ^ 2 := lt_of_le_of_lt hC hlt
    have h3 : (‖u‖ ^ 2) ^ 2 ≤ ‖l u‖ ^ 2 := by gcongr
    nlinarith
  calc _ ≤ ∑ _k : Fin (finrank ℂ E), C := Finset.sum_le_sum fun k _ => this k
    _ = _ := by simp

end Pointwise

section Hilbert

variable {X : Type*} [MeasurableSpace X] {μ : Measure X}
variable {E : X → Type*} [∀ x, NormedAddCommGroup (E x)] [∀ x, InnerProductSpace ℂ (E x)]
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℂ V]

theorem integral_sum_eq_finrank' {ι : Type*} [Fintype ι] (l : ∀ x, V →ₗ[ℂ] E x)
    (hint : ∀ f, Integrable (fun x => ‖l x f‖ ^ 2) μ)
    (hnorm : ∀ f, ‖f‖ ^ 2 = ∫ x, ‖l x f‖ ^ 2 ∂μ) (b : OrthonormalBasis ι ℂ V) :
    ∫ x, ∑ i, ‖l x (b i)‖ ^ 2 ∂μ = finrank ℂ V := by
  rw [integral_finsetSum _ fun i _ => hint (b i)]
  simp_rw [← hnorm, b.orthonormal.1]
  simp [finrank_eq_card_basis b.toBasis]

theorem finrank_le_of_finite' [IsFiniteMeasure μ] [FiniteDimensional ℂ V]
    [∀ x, FiniteDimensional ℂ (E x)] {r : ℕ} (hr : ∀ x, finrank ℂ (E x) ≤ r)
    (l : ∀ x, V →ₗ[ℂ] E x) (hint : ∀ f, Integrable (fun x => ‖l x f‖ ^ 2) μ)
    (hnorm : ∀ f, ‖f‖ ^ 2 = ∫ x, ‖l x f‖ ^ 2 ∂μ) {C : ℝ} (hC : 0 ≤ C)
    (h : ∀ f x, ‖l x f‖ ^ 2 ≤ C * ‖f‖ ^ 2) :
    (finrank ℂ V : ℝ) ≤ r * C * μ.real Set.univ := by
  rw [← integral_sum_eq_finrank' l hint hnorm (stdOrthonormalBasis ℂ V)]
  calc _ ≤ ∫ _x, (r * C : ℝ) ∂μ := by
        refine integral_mono (integrable_finsetSum _ fun i _ => hint _) (integrable_const _) ?_
        intro x
        refine (sum_norm_sq_le _ (l x) hC fun f => h f x).trans ?_
        have : (finrank ℂ (E x) : ℝ) ≤ r := by exact_mod_cast hr x
        exact mul_le_mul_of_nonneg_right this hC
    _ = _ := by simp [mul_comm]

theorem finite_and_finrank_le' [IsFiniteMeasure μ]
    [∀ x, FiniteDimensional ℂ (E x)] {r : ℕ} (hr : ∀ x, finrank ℂ (E x) ≤ r)
    (l : ∀ x, V →ₗ[ℂ] E x) (hint : ∀ f, Integrable (fun x => ‖l x f‖ ^ 2) μ)
    (hnorm : ∀ f, ‖f‖ ^ 2 = ∫ x, ‖l x f‖ ^ 2 ∂μ) {C : ℝ} (hC : 0 ≤ C)
    (h : ∀ f x, ‖l x f‖ ^ 2 ≤ C * ‖f‖ ^ 2) :
    FiniteDimensional ℂ V ∧ (finrank ℂ V : ℝ) ≤ r * C * μ.real Set.univ := by
  have hfin : FiniteDimensional ℂ V := by
    have hrank : Module.rank ℂ V ≤ (⌊r * C * μ.real Set.univ⌋₊ : ℕ) := by
      refine rank_le fun s hs => ?_
      let W : Submodule ℂ V := Submodule.span ℂ (s : Set V)
      have hW : finrank ℂ W = s.card := finrank_span_finset_eq_card hs
      have := finrank_le_of_finite' (μ := μ) (V := W) hr (fun x => (l x).comp W.subtype)
        (fun f => hint f) (fun f => hnorm f) hC (fun f x => h f x)
      rw [hW] at this
      exact Nat.le_floor this
    exact Module.rank_lt_aleph0_iff.1 (hrank.trans_lt Cardinal.natCast_lt_aleph0)
  exact ⟨hfin, finrank_le_of_finite' hr l hint hnorm hC h⟩

end Hilbert

section Plain

variable {X : Type*} [MeasurableSpace X] {μ : Measure X}
variable {E : X → Type*} [∀ x, NormedAddCommGroup (E x)] [∀ x, InnerProductSpace ℂ (E x)]
variable {V : Type*} [AddCommGroup V] [Module ℂ V]

theorem integrable_inner (l : ∀ x, V →ₗ[ℂ] E x)
    (hint : ∀ f, Integrable (fun x => ‖l x f‖ ^ 2) μ) (f g : V) :
    Integrable (fun x => ⟪l x f, l x g⟫_ℂ) μ := by
  have hc : ∀ f, Integrable (fun x => ((‖l x f‖ : ℂ)) ^ 2) μ := fun f => by
    have := (hint f).ofReal (𝕜 := ℂ)
    simpa using this
  have : (fun x => ⟪l x f, l x g⟫_ℂ) = fun x =>
      (((‖l x (f + g)‖ : ℂ)) ^ 2 - ((‖l x (f - g)‖ : ℂ)) ^ 2 +
        (((‖l x (f - Complex.I • g)‖ : ℂ)) ^ 2 - ((‖l x (f + Complex.I • g)‖ : ℂ)) ^ 2)
          * Complex.I) / 4 := by
    funext x
    simpa using inner_eq_sum_norm_sq_div_four (𝕜 := ℂ) (l x f) (l x g)
  rw [this]
  exact (((hc _).sub (hc _)).add (((hc _).sub (hc _)).mul_const _)).div_const _

theorem integral_inner_self (l : ∀ x, V →ₗ[ℂ] E x) (f : V) :
    ∫ x, ⟪l x f, l x f⟫_ℂ ∂μ = ((∫ x, ‖l x f‖ ^ 2 ∂μ : ℝ) : ℂ) := by
  rw [← integral_complex_ofReal]
  simp [inner_self_eq_norm_sq_to_K]

@[reducible] noncomputable def l2InnerCore (μ : Measure X) (l : ∀ x, V →ₗ[ℂ] E x)
    (hint : ∀ f, Integrable (fun x => ‖l x f‖ ^ 2) μ)
    (hpos : ∀ f, ∫ x, ‖l x f‖ ^ 2 ∂μ = 0 → f = 0) : InnerProductSpace.Core ℂ V where
  inner f g := ∫ x, ⟪l x f, l x g⟫_ℂ ∂μ
  conj_inner_symm f g := by
    rw [← integral_conj]
    simp
  re_inner_nonneg f := by
    rw [integral_inner_self]
    simpa using integral_nonneg fun x => by positivity
  add_left f g h := by
    rw [← integral_add (integrable_inner l hint _ _) (integrable_inner l hint _ _)]
    simp
  smul_left f g c := by
    rw [← integral_const_mul]
    simp [mul_comm]
  definite f hf := by
    rw [integral_inner_self] at hf
    exact hpos f (by exact_mod_cast hf)

theorem l2_inner_product_norm_sq_eq_integral (l : ∀ x, V →ₗ[ℂ] E x)
    (hint : ∀ f, Integrable (fun x => ‖l x f‖ ^ 2) μ)
    (hpos : ∀ f, ∫ x, ‖l x f‖ ^ 2 ∂μ = 0 → f = 0) (f : V) :
    letI := (l2InnerCore μ l hint hpos).toNormedAddCommGroup
    ‖f‖ ^ 2 = ∫ x, ‖l x f‖ ^ 2 ∂μ := by
  letI := (l2InnerCore μ l hint hpos).toNormedAddCommGroup
  letI : InnerProductSpace ℂ V := InnerProductSpace.ofCore (l2InnerCore μ l hint hpos).toCore
  have h : ⟪f, f⟫_ℂ = ∫ x, ⟪l x f, l x f⟫_ℂ ∂μ := rfl
  rw [integral_inner_self, inner_self_eq_norm_sq_to_K] at h
  exact Complex.ofReal_injective (by simpa using h)

variable {ι : Type*} [Fintype ι] [DecidableEq ι]

theorem finite_and_finrank_le_mul [IsFiniteMeasure μ]
    [∀ x, FiniteDimensional ℂ (E x)] {r : ℕ} (hr : ∀ x, finrank ℂ (E x) ≤ r)
    (l : ∀ x, V →ₗ[ℂ] E x) (hmeas : ∀ f, AEStronglyMeasurable (fun x => ‖l x f‖) μ)
    (hsep : ∀ f, (∀ x, l x f = 0) → f = 0) {C : ℝ} (hC : 0 ≤ C)
    (h : ∀ f x, ‖l x f‖ ^ 2 ≤ C * ∫ y, ‖l y f‖ ^ 2 ∂μ) :
    FiniteDimensional ℂ V ∧ (finrank ℂ V : ℝ) ≤ r * C * μ.real Set.univ := by
  have hint : ∀ f, Integrable (fun x => ‖l x f‖ ^ 2) μ := fun f =>
    Integrable.of_bound ((hmeas f).pow 2) (C * ∫ y, ‖l y f‖ ^ 2 ∂μ)
      (Filter.Eventually.of_forall fun x => by
        rw [Real.norm_of_nonneg (by positivity)]; exact h f x)
  have hpos : ∀ f, ∫ x, ‖l x f‖ ^ 2 ∂μ = 0 → f = 0 := fun f hf => hsep f fun x => by
    have := h f x
    rw [hf, mul_zero] at this
    exact norm_eq_zero.1 (pow_eq_zero_iff two_ne_zero |>.1 (le_antisymm this (by positivity)))
  letI := (l2InnerCore μ l hint hpos).toNormedAddCommGroup
  letI : InnerProductSpace ℂ V := InnerProductSpace.ofCore (l2InnerCore μ l hint hpos).toCore
  exact finite_and_finrank_le' hr l hint (l2_inner_product_norm_sq_eq_integral l hint hpos) hC
    fun f x => by rw [l2_inner_product_norm_sq_eq_integral l hint hpos f]; exact h f x

theorem finite_and_finrank_le [IsProbabilityMeasure μ]
    [∀ x, FiniteDimensional ℂ (E x)] (hE : ∀ x, finrank ℂ (E x) ≤ 1)
    (l : ∀ x, V →ₗ[ℂ] E x) (hmeas : ∀ f, AEStronglyMeasurable (fun x => ‖l x f‖) μ)
    (hsep : ∀ f, (∀ x, l x f = 0) → f = 0) {C : ℝ} (hC : 0 ≤ C)
    (h : ∀ f x, ‖l x f‖ ^ 2 ≤ C * ∫ y, ‖l y f‖ ^ 2 ∂μ) :
    FiniteDimensional ℂ V ∧ (finrank ℂ V : ℝ) ≤ C := by
  simpa using finite_and_finrank_le_mul hE l hmeas hsep hC h

section Transitive

variable {G : Type*} [Group G] [MulAction G X] [MulAction.IsPretransitive G X]
  [MeasurableConstSMul G X] [SMulInvariantMeasure G X μ] [IsProbabilityMeasure μ]

end Transitive

end Plain

section Seminorm

variable {X : Type*} [MeasurableSpace X] {μ : Measure X} [IsProbabilityMeasure μ]
variable {V : Type*} [AddCommGroup V] [Module ℂ V]

theorem finite_and_finrank_le_of_pointwise (p : X → V → ℝ)
    (hp : ∀ x, ∃ l : V →ₗ[ℂ] ℂ, ∀ f, p x f = ‖l f‖)
    (hmeas : ∀ f, AEStronglyMeasurable (fun x => p x f) μ)
    (hsep : ∀ f, (∀ x, p x f = 0) → f = 0) {C : ℝ} (hC : 0 ≤ C)
    (h : ∀ f x, p x f ^ 2 ≤ C * ∫ y, p y f ^ 2 ∂μ) :
    FiniteDimensional ℂ V ∧ (finrank ℂ V : ℝ) ≤ C := by
  choose l hl using hp
  simp_rw [hl] at hmeas hsep h
  exact finite_and_finrank_le (E := fun _ => ℂ) (fun _ => by simp) l hmeas
    (fun f hf => hsep f fun x => by simp [hf x]) hC h

end Seminorm

section Functions

variable {X : Type*} [MeasurableSpace X] {μ : Measure X}

variable [IsProbabilityMeasure μ]

end Functions

end GlobalTheory.Bergman
