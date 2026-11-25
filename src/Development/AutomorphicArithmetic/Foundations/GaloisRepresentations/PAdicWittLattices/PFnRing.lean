module

public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.PAdicWittLattices.IsAdmissibleIntegralBasisChangeOne
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
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.RegularLocalRing.Defs
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

@[expose] public section

open CategoryTheory Limits AlgebraicGeometry UpperTheory.Gal.G3

namespace UpperTheory.Gal.G3.FunctionRings

variable {G R : Type} [Group G] [Field R] {K : Subgroup G}

variable {B : Scheme.{0}} (X : Tower B G)

end UpperTheory.Gal.G3.FunctionRings

private theorem apply_out_mk_eq_of_tower_biinvariant {B : Scheme} {G : Type} [Group G] (X : Tower B G) {R : Type} [Field R]
    (j : X.ι) (f : G → R) (hf : ∀ k ∈ X.K j, ∀ g : G, f (k * g) = f g ∧ f (g * k) = f g) (w : G) :
    f ((QuotientGroup.mk w : G ⧸ X.K j).out) = f w := by
  obtain ⟨u, hu⟩ := QuotientGroup.mk_out_eq_mul (X.K j) w
  rw [hu]
  exact (hf _ u.2 w).2

private theorem tower_isFn_ind_inv_of_mem {B : Scheme} {G : Type} [Group G] (X : Tower B G) (R : Type) [Field R]
    (j : X.ι) (h : G) (hh : h ∈ X.Δ) : X.IsFn j (ind R (X.K j) h⁻¹) := by
  classical
  have key : ∀ g, ind R (X.K j) h⁻¹ g ≠ 0 ↔
      g ∈ DoubleCoset.doubleCoset h⁻¹ (X.K j : Set G) (X.K j) := by
    intro g
    unfold ind
    rw [Set.indicator_apply]
    split_ifs with hg <;> simp [hg]
  have eqv : ∀ g, g ∈ DoubleCoset.doubleCoset h⁻¹ (X.K j : Set G) (X.K j) ↔
      DoubleCoset.mk (X.K j) (X.K j) h⁻¹ = DoubleCoset.mk (X.K j) (X.K j) g := fun g =>
    DoubleCoset.mem_doubleCoset.trans DoubleCoset.eq.symm
  refine ⟨fun k hk g => ⟨?_, ?_⟩, fun g hg => ?_, ?_⟩
  · unfold ind
    simp only [Set.indicator_apply, eqv, DoubleCoset.mk_mem_mul ⟨k, hk⟩ g, Pi.one_apply]
  · unfold ind
    simp only [Set.indicator_apply, eqv, DoubleCoset.mk_mul_mem ⟨k, hk⟩ g, Pi.one_apply]
  · obtain ⟨x, hx, y, hy, e⟩ := DoubleCoset.mem_doubleCoset.mp ((key g).mp hg)
    rw [e, show (x * h⁻¹ * y)⁻¹ = y⁻¹ * (h * x⁻¹) by group]
    exact X.Δ.mul_mem (X.K_le _ _ ((X.K j).inv_mem hy))
      (X.Δ.mul_mem hh (X.K_le _ _ ((X.K j).inv_mem hx)))
  · obtain ⟨m, -, -, hS⟩ := X.deep j {(j, h)}
    have hu : ∀ u ∈ X.K m, h * u * h⁻¹ ∈ X.K j :=
      fun u hu => hS (j, h) (Finset.mem_singleton_self _) u hu
    have fin : Finite (X.K j ⧸ (X.K m).subgroupOf (X.K j)) := by
      have := X.idx m j
      rw [Subgroup.relIndex, Subgroup.index] at this
      exact (Nat.card_ne_zero.mp this).2
    refine (Set.finite_range (fun q : X.K j ⧸ (X.K m).subgroupOf (X.K j) =>
      (QuotientGroup.mk (((q.out : X.K j) : G) * h⁻¹) : G ⧸ X.K j))).subset ?_
    intro y hy
    obtain ⟨x, hx, z, hz, e⟩ := DoubleCoset.mem_doubleCoset.mp ((key _).mp hy)
    refine ⟨QuotientGroup.mk ⟨x, hx⟩, ?_⟩
    obtain ⟨u, hu'⟩ := QuotientGroup.mk_out_eq_mul ((X.K m).subgroupOf (X.K j)) ⟨x, hx⟩
    have hum : ((u : X.K j) : G) ∈ X.K m := Subgroup.mem_subgroupOf.mp u.2
    have hc := hu _ hum
    simp only
    rw [hu']
    conv_rhs => rw [← QuotientGroup.out_eq' y]
    rw [e, QuotientGroup.eq]
    rw [show ((⟨x, hx⟩ * (u : X.K j) : X.K j) : G) = x * ((u : X.K j) : G) from rfl]
    rw [show (x * ((u : X.K j) : G) * h⁻¹)⁻¹ * (x * h⁻¹ * z) =
      (h * ((u : X.K j) : G) * h⁻¹)⁻¹ * z by group]
    exact (X.K j).mul_mem ((X.K j).inv_mem hc) hz

private theorem tower_isFn_add {B : Scheme} {G : Type} [Group G] (X : Tower B G) {R : Type} [Field R]
    (j : X.ι) (f f' : G → R) (hf : X.IsFn j f) (hf' : X.IsFn j f') : X.IsFn j (f + f') := by
  obtain ⟨a1, b1, c1⟩ := hf
  obtain ⟨a2, b2, c2⟩ := hf'
  refine ⟨fun k hk g => ?_, fun g hg => ?_, (c1.union c2).subset ?_⟩
  · simp [(a1 k hk g).1, (a1 k hk g).2, (a2 k hk g).1, (a2 k hk g).2]
  · by_cases h1 : f g = 0
    · exact b2 g (by simpa [h1] using hg)
    · exact b1 g h1
  · intro y hy
    by_contra hn
    simp only [Set.mem_union, Set.mem_ofPred_eq, not_or, not_not] at hn
    exact hy (by simp [hn.1, hn.2])

private theorem tower_isFn_conv {B : Scheme} {G : Type} [Group G] (X : Tower B G) {R : Type} [Field R]
    (j : X.ι) (f f' : G → R) (hf : X.IsFn j f) (hf' : X.IsFn j f') :
    X.IsFn j (conv (X.K j) f f') := by
  obtain ⟨a1, b1, c1⟩ := hf
  obtain ⟨a2, b2, c2⟩ := hf'
  have nz : ∀ x, conv (X.K j) f f' x ≠ 0 →
      ∃ y : G ⧸ X.K j, f y.out ≠ 0 ∧ f' (y.out⁻¹ * x) ≠ 0 := by
    intro x hx
    by_contra hn
    push Not at hn
    apply hx
    have h0 : ∀ y : G ⧸ X.K j, f y.out * f' (y.out⁻¹ * x) = 0 := by
      intro y
      by_cases h : f y.out = 0
      · simp [h]
      · simp [hn y h]
    simp only [conv, h0, finsum_zero]
  refine ⟨fun k hk g => ⟨?_, ?_⟩, fun g hg => ?_, ?_⟩
  · unfold conv
    rw [← finsum_comp_equiv (MulAction.toPerm k : Equiv.Perm (G ⧸ X.K j))]
    refine finsum_congr (fun z => ?_)
    have e1 : (MulAction.toPerm k : Equiv.Perm (G ⧸ X.K j)) z =
        (QuotientGroup.mk (k * z.out) : G ⧸ X.K j) := by
      conv_lhs => rw [← QuotientGroup.out_eq' z]
      rfl
    obtain ⟨u, hu⟩ := QuotientGroup.mk_out_eq_mul (X.K j) (k * z.out)
    rw [e1, hu, (a1 _ u.2 _).2, (a1 k hk _).1]
    congr 1
    rw [show (k * z.out * (u : G))⁻¹ * (k * g) = (u : G)⁻¹ * (z.out⁻¹ * g) by group]
    exact (a2 _ ((X.K j).inv_mem u.2) _).1
  · unfold conv
    refine finsum_congr (fun y => ?_)
    rw [← mul_assoc, (a2 k hk _).2]
  · obtain ⟨y, h1, h2⟩ := nz g hg
    have := X.Δ.mul_mem (b2 _ h2) (b1 _ h1)
    rwa [show (y.out⁻¹ * g)⁻¹ * y.out⁻¹ = g⁻¹ by group] at this
  · refine (Set.Finite.biUnion (t := fun y : G ⧸ X.K j =>
      (fun w => (y.out : G) • w) '' {z : G ⧸ X.K j | f' z.out ≠ 0}) c1
      (fun y _ => c2.image _)).subset ?_
    intro x hx
    obtain ⟨y, h1, h2⟩ := nz _ hx
    simp only [Set.mem_iUnion, Set.mem_image, Set.mem_ofPred_eq]
    refine ⟨y, h1, QuotientGroup.mk (y.out⁻¹ * x.out), ?_, ?_⟩
    · rw [apply_out_mk_eq_of_tower_biinvariant X j f' a2]
      exact h2
    · rw [MulAction.Quotient.smul_mk, smul_eq_mul, mul_inv_cancel_left, QuotientGroup.out_eq']

private theorem tower_isFn_smul {B : Scheme} {G : Type} [Group G] (X : Tower B G) {R : Type} [Field R]
    (j : X.ι) (c : R) (f : G → R) (hf : X.IsFn j f) : X.IsFn j (c • f) := by
  obtain ⟨a1, b1, c1⟩ := hf
  refine ⟨fun k hk g => ?_, fun g hg => b1 g ?_, c1.subset ?_⟩
  · simp [(a1 k hk g).1, (a1 k hk g).2]
  · intro h0
    apply hg
    simp [h0]
  · intro y hy h0
    apply hy
    simp [h0]

open UpperTheory.Gal.G3.FunctionRings in
theorem UpperTheory.Gal.G3.pFnRing : FnRing := by
  intro B G _ X R _ j
  refine ⟨fun h hh => tower_isFn_ind_inv_of_mem X R j h hh, ?_,
    fun f f' hf hf' => ⟨tower_isFn_add X j f f' hf hf', tower_isFn_conv X j f f' hf hf'⟩,
    fun c f hf => tower_isFn_smul X j c f hf⟩
  refine ⟨fun k _ g => ⟨rfl, rfl⟩, fun g hg => (hg rfl).elim, ?_⟩
  simp
