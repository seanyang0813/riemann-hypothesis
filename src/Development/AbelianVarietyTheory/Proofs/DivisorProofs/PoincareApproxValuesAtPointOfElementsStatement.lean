module

import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsApproximateSeriesLeadingTermFourierSystem
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsCorrectionApproximateIdealSections
public import Development.AbelianVarietyTheory.Definitions.Divisors.IsUnimodMod
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSmoothConeInteriorDefiniteBalancedForm
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothConeFaceOfInteriorCommonPoint
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NonnegSumSmulIntBilinFormToRealMemPsdCone
public import Development.AbelianVarietyTheory.Definitions.Divisors.OrdGeOfForall
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsometryEqReflOfCongrModGeThree
public import Mathlib.Algebra.Algebra.Operations
public import Mathlib.RingTheory.LocalRing.MaximalIdeal.Defs
public import Mathlib.RingTheory.Noetherian.Defs
public import Mathlib.RingTheory.Filtration
public import Development.AbelianVarietyTheory.Definitions.Divisors.IsChartMember
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeightedLatticeQuadraticSumGeDiagonal
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Order.Star.Int
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
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
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Basify
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
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.Topology.Sheaves.Init
import Mathlib.Algebra.Module.StablyFree.Basic
import Mathlib.Tactic.Linter.Style
import Development.AbelianVarietyTheory.Definitions.Divisors.FromBase
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSupportingFormGapOffSmoothCone, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDominantTuplePrescribedMemberLinearForm, Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemOfForallMemSupPow, Development.AbelianVarietyTheory.Proofs.DivisorProofs.PoincareApproxValuesAtPointOfElements, Development.AbelianVarietyTheory.Proofs.DivisorProofs.PoincareApproxValuesAtPointOfElementsStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSupportingFormGapOffSmoothCone =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSupportingFormGapOffSmoothCone", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsUnimodMod\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSmoothConeInteriorDefiniteBalancedForm\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SmoothConeFaceOfInteriorCommonPoint\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NonnegSumSmulIntBilinFormToRealMemPsdCone\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.Poinc

namespace GlobalTheory.Poinc.Gap

section Bound

variable {X : Type} [AddCommGroup X] {m : ℕ} {a : Fin m → X}

theorem exists_abs_apply_le (ha : Submodule.span ℤ (Set.range a) = ⊤) (x y : X) :
    ∃ C : ℕ, ∀ β : LinearMap.BilinForm ℤ X, (∀ y z, β y z = β z y) → (∀ y, 0 ≤ β y y) →
      |β x y| ≤ C * ∑ i, β (a i) (a i) := by
  have hx : x ∈ Submodule.span ℤ (Set.range a) := ha ▸ Submodule.mem_top
  have hy : y ∈ Submodule.span ℤ (Set.range a) := ha ▸ Submodule.mem_top
  have hl : ∀ β : LinearMap.BilinForm ℤ X, (∀ y, 0 ≤ β y y) → 0 ≤ ∑ i, β (a i) (a i) :=
    fun β hp => Finset.sum_nonneg fun i _ => hp _
  induction hx using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨i, rfl⟩ := hx
    induction hy using Submodule.span_induction with
    | mem y hy =>
      obtain ⟨j, rfl⟩ := hy
      refine ⟨1, fun β hs hp => ?_⟩
      have h1 := hp (a i + a j)
      have h2 := hp (a i - a j)
      simp only [map_add (f := _), map_sub, LinearMap.add_apply, LinearMap.sub_apply, hs (a j) (a i)] at h1 h2
      have h3 := Finset.single_le_sum (f := fun i => β (a i) (a i)) (fun i _ => hp _) (Finset.mem_univ i)
      have h4 := Finset.single_le_sum (f := fun i => β (a i) (a i)) (fun i _ => hp _) (Finset.mem_univ j)
      rw [abs_le]
      constructor <;> push_cast <;> linarith
    | zero => exact ⟨0, fun β _ _ => by simp⟩
    | add y z _ _ h1 h2 =>
      obtain ⟨C, hC⟩ := h1
      obtain ⟨C', hC'⟩ := h2
      refine ⟨C + C', fun β hs hp => ?_⟩
      rw [map_add (f := _), Nat.cast_add, add_mul]
      exact (abs_add_le _ _).trans (add_le_add (hC β hs hp) (hC' β hs hp))
    | smul n y _ h1 =>
      obtain ⟨C, hC⟩ := h1
      refine ⟨n.natAbs * C, fun β hs hp => ?_⟩
      rw [map_smul, smul_eq_mul, abs_mul, Nat.cast_mul, Int.natCast_natAbs, mul_assoc]
      exact mul_le_mul_of_nonneg_left (hC β hs hp) (abs_nonneg _)
  | zero => exact ⟨0, fun β _ _ => by simp⟩
  | add x z _ _ h1 h2 =>
    obtain ⟨C, hC⟩ := h1
    obtain ⟨C', hC'⟩ := h2
    refine ⟨C + C', fun β hs hp => ?_⟩
    rw [map_add (f := _), LinearMap.add_apply, Nat.cast_add, add_mul]
    exact (abs_add_le _ _).trans (add_le_add (hC β hs hp) (hC' β hs hp))
  | smul n x _ h1 =>
    obtain ⟨C, hC⟩ := h1
    refine ⟨n.natAbs * C, fun β hs hp => ?_⟩
    rw [map_smul, LinearMap.smul_apply, smul_eq_mul, abs_mul, Nat.cast_mul, Int.natCast_natAbs, mul_assoc]
    exact mul_le_mul_of_nonneg_left (hC β hs hp) (abs_nonneg _)

theorem exists_abs_lin_le [Module.Free ℤ X] [Module.Finite ℤ X] (ha : Submodule.span ℤ (Set.range a) = ⊤)
    (lam : LinearMap.BilinForm ℤ X →ₗ[ℤ] ℤ) :
    ∃ C : ℕ, ∀ β : LinearMap.BilinForm ℤ X, (∀ y z, β y z = β z y) → (∀ y, 0 ≤ β y y) →
      |lam β| ≤ C * ∑ i, β (a i) (a i) := by
  classical
  let b := Module.Free.chooseBasis ℤ X
  let E : _ → _ → LinearMap.BilinForm ℤ X := fun i j => (LinearMap.mul ℤ ℤ).compl₁₂ (b.coord i) (b.coord j)
  have hE : ∀ β : LinearMap.BilinForm ℤ X, β = ∑ i, ∑ j, β (b i) (b j) • E i j := fun β =>
    b.ext fun k => b.ext fun l => by
      simp [E, LinearMap.sum_apply, Finsupp.single_apply]
  choose C hC using exists_abs_apply_le ha
  refine ⟨∑ i, ∑ j, C (b i) (b j) * (lam (E i j)).natAbs, fun β hs hp => ?_⟩
  conv_lhs => rw [hE β]

  simp only [map_sum, map_smul, smul_eq_mul]
  push_cast
  rw [Finset.sum_mul]
  refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun i _ => ?_)
  rw [Finset.sum_mul]
  refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun j _ => ?_)
  rw [abs_mul, mul_right_comm]
  exact mul_le_mul_of_nonneg_right (hC _ _ β hs hp) (abs_nonneg _)

end Bound

section Fan

variable {O : Type} [CommRing O] {bar : O → O} {φ : InvFun O} {X : Type} [AddCommGroup X] [Module O X]
  [Module.Finite O X]

theorem exists_ray_bound (hF : IsPolFanOn bar φ X) :
    ∃ M : ℕ, ∀ ρ : LinearMap.BilinForm ℤ X, IsCone bar φ ![ρ] → φ.evalZ ρ ≤ M := by
  obtain ⟨S, hS, h⟩ := hF.finite
  obtain ⟨M, hM⟩ := (hS.image fun β => φ.evalZ β).bddAbove
  obtain ⟨N, hN⟩ := exists_nat_ge M
  refine ⟨N, fun ρ hρ => ?_⟩
  obtain ⟨e, he⟩ := h 1 _ hρ
  have h1 := hM ⟨_, he 0, rfl⟩
  simp only [evalZ_pull φ (r := e.toLinearMap) e.surjective, Matrix.cons_val_zero] at h1
  exact h1.trans hN

theorem exists_cone_nat [IsDedekindDomain O] [CharZero O] [Module.Finite ℤ O] (hF : IsPolFanOn bar φ X)
    {β : LinearMap.BilinForm ℤ X} (hβ : β ∈ balForms bar X) (hp : ∀ y, 0 ≤ β y y) :
    ∃ (s : ℕ) (δ : Fin s → LinearMap.BilinForm ℤ X) (n : Fin s → ℕ), IsCone bar φ δ ∧ β = ∑ i, n i • δ i := by
  have hB : toReal β ∈ psdCone (bar := bar) (X := X) := by
    simpa using ConeSub.sum_smul_toReal_mem_psdCone O bar X 1 ![β] ![1] (by simp [hβ]) (by simp [hp]) (by simp)
  obtain ⟨m, γ, c, hγ, hc, hsum⟩ := hF.cover _ hB
  obtain ⟨nZ, hnZ⟩ := Cover.coeff_int hγ.mem hγ.basis hβ hsum
  have hn0 : ∀ i, 0 ≤ nZ i := fun i => by exact_mod_cast (hnZ i) ▸ hc i
  let n : Fin m → ℕ := fun i => (nZ i).toNat
  have hn : ∀ i, ((n i : ℤ) : ℝ) = c i := fun i => by simp [n, Int.toNat_of_nonneg (hn0 i), hnZ i]
  refine ⟨m, γ, n, hγ, LinearMap.ext₂ fun a b => ?_⟩
  have h1 := LinearMap.congr_fun₂ hsum a b
  simp only [toReal_apply, LinearMap.sum_apply, LinearMap.smul_apply, smul_eq_mul, ← hn] at h1
  simp only [LinearMap.sum_apply, LinearMap.smul_apply, nsmul_eq_mul]
  exact_mod_cast h1

end Fan

theorem exists_gap : ∀ (O : Type) [CommRing O] [IsDedekindDomain O] [CharZero O] [Module.Finite ℤ O] (bar : O → O) (φ : InvFun O) (d : ℕ) (X : Type) [AddCommGroup X] [Module O X] [Module.Finite O X] [Module.Projective O X] [Module.Free ℤ X] [Module.Finite ℤ X], IsPolFanOn bar φ X → ∀ (r m : ℕ) (γ : Fin r → LinearMap.BilinForm ℤ X) (a : Fin m → X), IsCone bar φ γ → Supports bar φ d γ a → ∀ lam : LinearMap.BilinForm ℤ X →ₗ[ℤ] ℤ, (∀ j, 0 ≤ lam (γ j)) → ∀ K : ℤ, ∃ D₀ : ℕ, ∀ D, D₀ ≤ D → (∀ β ∈ balForms bar X, (∀ y, 0 ≤ β y y) → (D * d : ℝ) * φ.evalZ β ≤ (D * ∑ i, β (a i) (a i) + lam β : ℤ)) ∧ ∀ (ρ : LinearMap.BilinForm ℤ X), IsCone bar φ ![ρ] → (∀ j, ρ ≠ γ j) → (D * d : ℝ) * φ.evalZ ρ + K ≤ (D * ∑ i, ρ (a i) (a i) + lam ρ : ℤ) := by
  intro O _ _ _ _ bar φ d X _ _ _ _ _ _ hF r m γ a hγ hS lam hlam K
  obtain ⟨C, hC⟩ := exists_abs_lin_le hS.span lam
  obtain ⟨M, hM⟩ := exists_ray_bound hF
  refine ⟨C + K.natAbs + C * d * M, fun D hD => ?_⟩
  have hray : ∀ ρ : LinearMap.BilinForm ℤ X, IsCone bar φ ![ρ] → (∀ j, ρ ≠ γ j) →
      (D * d : ℝ) * φ.evalZ ρ + (K.natAbs : ℕ) ≤ (D * ∑ i, ρ (a i) (a i) + lam ρ : ℤ) := by
    intro ρ hρ hne
    have hm : ρ ∈ balForms bar X := hρ.mem 0
    have hp : ∀ y, 0 ≤ ρ y y := hρ.nonneg 0
    obtain ⟨n, hn⟩ := hF.exists_nat hm hp
    have h1 := hS.le ρ hm hp
    have h2 : (d : ℝ) * φ.evalZ ρ ≠ (∑ i, ρ (a i) (a i) : ℤ) := fun he => by
      obtain ⟨k, c, hk, hc⟩ := hS.only ρ hm hp he
      obtain ⟨j, hj⟩ := intCone_face O bar φ X hF 1 r ![ρ] γ hρ hγ ![k] c (by simp [hk]) (by simpa using hc) 0
      exact hne j hj
    have h3 := hM ρ hρ
    have h4 := (abs_le.1 (hC ρ hm.1 hp)).1
    rw [hn] at h1 h2 h3 ⊢
    generalize ∑ i, ρ (a i) (a i) = L at *
    have h1' : (d : ℤ) * n ≤ L := by exact_mod_cast h1
    have h2' : (d : ℤ) * n ≠ L := by exact_mod_cast h2
    have h3' : (n : ℤ) ≤ M := by exact_mod_cast h3
    have hD' : (C : ℤ) + (K.natAbs : ℕ) + C * d * M ≤ D := by exact_mod_cast hD
    have h5 : 0 ≤ L - d * n - 1 := by omega
    have h6 : (C : ℤ) * d * n ≤ C * d * M := mul_le_mul_of_nonneg_left h3' (by positivity)
    have h7 : (0 : ℤ) ≤ C * d * M := by positivity
    have h8 : (0 : ℤ) ≤ (K.natAbs : ℕ) := by positivity
    have h9 : 0 ≤ ((D : ℤ) - C) * (L - d * n - 1) := mul_nonneg (by linarith) h5
    have : (D * d : ℤ) * n + (K.natAbs : ℕ) ≤ D * L + lam ρ := by nlinarith
    have h10 := (Int.cast_le (R := ℝ)).2 this
    rwa [Int.cast_add, Int.cast_mul, Int.cast_mul, Int.cast_natCast, Int.cast_natCast, Int.cast_natCast,
      Int.cast_natCast] at h10
  refine ⟨fun β hβ hp => ?_, fun ρ hρ hne => le_trans ?_ (hray ρ hρ hne)⟩
  · obtain ⟨s, δ, n, hδ, rfl⟩ := exists_cone_nat hF hβ hp
    have hall : ∀ i, (D * d : ℝ) * φ.evalZ (δ i) ≤ (D * ∑ l, δ i (a l) (a l) + lam (δ i) : ℤ) := by
      intro i
      by_cases h : ∃ j, δ i = γ j
      · obtain ⟨j, hj⟩ := h
        rw [hj, mul_assoc, hS.eq j]
        have := hlam j
        exact_mod_cast (le_add_of_nonneg_right this)
      · push_neg at h
        have hc : IsCone bar φ ![δ i] := by
          have := hF.face _ _ δ ⟨fun _ : Fin 1 => i, fun _ _ _ => Subsingleton.elim _ _⟩ hδ
          convert this using 1
          funext u
          fin_cases u
          rfl
        exact le_trans (le_add_of_nonneg_right (Nat.cast_nonneg _)) (hray _ hc h)
    rw [intCone_evalZ_sum hδ.linear, Finset.mul_sum]
    have e : (D * ∑ l, (∑ i, n i • δ i) (a l) (a l) + lam (∑ i, n i • δ i) : ℤ) =
        ∑ i, (n i : ℤ) * (D * ∑ l, δ i (a l) (a l) + lam (δ i)) := by

      simp only [LinearMap.sum_apply, LinearMap.smul_apply, map_sum, map_nsmul, nsmul_eq_mul, mul_add,
      Finset.sum_add_distrib, Finset.mul_sum]
      rw [Finset.sum_comm]
      congr 1
      exact Finset.sum_congr rfl fun _ _ => Finset.sum_congr rfl fun _ _ => by ring
    rw [e, Int.cast_sum]
    refine Finset.sum_le_sum fun i _ => ?_
    rw [Int.cast_mul, Int.cast_natCast, mul_left_comm]
    exact mul_le_mul_of_nonneg_left (hall i) (Nat.cast_nonneg _)
  · have : (K : ℝ) ≤ (K.natAbs : ℕ) := by
      have h := (Int.cast_le (R := ℝ)).2 (Int.le_natAbs : K ≤ (K.natAbs : ℕ))
      rwa [Int.cast_natCast] at h
    linarith

end GlobalTheory.Poinc.Gap
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSupportingFormGapOffSmoothCone =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDominantTuplePrescribedMemberLinearForm =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDominantTuplePrescribedMemberLinearForm", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.OrdGeOfForall\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsUnimodMod\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSupportingFormGapOffSmoothCone\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsometryEqReflOfCongrModGeThree\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.TorRef GlobalTheory.Poinc

namespace GlobalTheory.Poinc.DomTuple

section Squares

variable {X : Type} [AddCommGroup X]

def IsSumSq (F : LinearMap.BilinForm ℤ X → ℤ) : Prop :=
  ∃ (ι : Type) (_ : Fintype ι) (x : ι → X), ∀ β : LinearMap.BilinForm ℤ X, (∀ y z, β y z = β z y) → F β = ∑ i, β (x i) (x i)

theorem IsSumSq.congr {F G : LinearMap.BilinForm ℤ X → ℤ} (h : IsSumSq F)
    (e : ∀ β : LinearMap.BilinForm ℤ X, (∀ y z, β y z = β z y) → G β = F β) : IsSumSq G := by
  obtain ⟨ι, _, x, hx⟩ := h
  exact ⟨ι, _, x, fun β hβ => (e β hβ).trans (hx β hβ)⟩

theorem IsSumSq.add {F G : LinearMap.BilinForm ℤ X → ℤ} (h : IsSumSq F) (h' : IsSumSq G) :
    IsSumSq fun β => F β + G β := by
  obtain ⟨ι, _, x, hx⟩ := h
  obtain ⟨κ, _, y, hy⟩ := h'
  exact ⟨ι ⊕ κ, inferInstance, Sum.elim x y, fun β hβ => by
    simp only [Fintype.sum_sum_type, Sum.elim_inl, Sum.elim_inr, hx β hβ, hy β hβ]⟩

theorem IsSumSq.nsmul {F : LinearMap.BilinForm ℤ X → ℤ} (h : IsSumSq F) (n : ℕ) : IsSumSq fun β => n * F β := by
  obtain ⟨ι, _, x, hx⟩ := h
  exact ⟨Fin n × ι, inferInstance, fun p => x p.2, fun β hβ => by
    simp [Fintype.sum_prod_type, hx β hβ]⟩

theorem isSumSq_one (v : X) : IsSumSq fun β => β v v :=
  ⟨Unit, inferInstance, fun _ => v, fun β _ => by simp⟩

variable {m : ℕ} (a : Fin m → X)

def Absorbed (F : LinearMap.BilinForm ℤ X → ℤ) : Prop :=
  ∃ C : ℕ, IsSumSq fun β => C * ∑ i, β (a i) (a i) + F β

variable {a}

theorem Absorbed.congr {F G : LinearMap.BilinForm ℤ X → ℤ} (h : Absorbed a F)
    (e : ∀ β : LinearMap.BilinForm ℤ X, (∀ y z, β y z = β z y) → G β = F β) : Absorbed a G := by
  obtain ⟨C, h⟩ := h
  exact ⟨C, h.congr fun β hβ => by rw [e β hβ]⟩

theorem Absorbed.add {F G : LinearMap.BilinForm ℤ X → ℤ} (h : Absorbed a F) (h' : Absorbed a G) :
    Absorbed a fun β => F β + G β := by
  obtain ⟨C, h⟩ := h
  obtain ⟨C', h'⟩ := h'
  exact ⟨C + C', (h.add h').congr fun β _ => by push_cast; ring⟩

theorem Absorbed.nsmul {F : LinearMap.BilinForm ℤ X → ℤ} (h : Absorbed a F) (n : ℕ) : Absorbed a fun β => n * F β := by
  obtain ⟨C, h⟩ := h
  exact ⟨n * C, (h.nsmul n).congr fun β _ => by push_cast; ring⟩

theorem absorbed_sq (v : X) : Absorbed a fun β => β v v :=
  ⟨0, (isSumSq_one v).congr fun β _ => by simp⟩

theorem absorbed_zero : Absorbed a fun _ => 0 :=
  (absorbed_sq 0).congr fun β _ => by simp

theorem absorbed_sum {ι : Type} (S : Finset ι) (F : ι → LinearMap.BilinForm ℤ X → ℤ) (h : ∀ i, Absorbed a (F i)) :
    Absorbed a fun β => ∑ i ∈ S, F i β := by
  classical
  induction S using Finset.induction_on with
  | empty => simpa using absorbed_zero
  | insert i S hi ih => exact ((h i).add ih).congr fun β _ => Finset.sum_insert hi

theorem absorbed_neg_sq (ha : Submodule.span ℤ (Set.range a) = ⊤) (v : X) : Absorbed a fun β => - β v v := by
  have hv : v ∈ Submodule.span ℤ (Set.range a) := ha ▸ Submodule.mem_top
  induction hv using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨j, rfl⟩ := hx
    refine ⟨1, {i // i ≠ j}, inferInstance, fun i => a i.1, fun β _ => ?_⟩
    have := Fintype.sum_eq_add_sum_subtype_ne (fun i => β (a i) (a i)) j
    simp only [Nat.cast_one, one_mul]
    rw [this]; ring
  | zero => exact absorbed_zero.congr fun β _ => by simp
  | add x y _ _ hx hy =>
    refine (((hx.nsmul 2).add (hy.nsmul 2)).add (absorbed_sq (x - y))).congr fun β _ => ?_
    simp only [map_add (f := _), map_sub, LinearMap.add_apply, LinearMap.sub_apply]
    push_cast; ring
  | smul n x _ hx =>
    refine (hx.nsmul (n.natAbs ^ 2)).congr fun β _ => ?_
    simp only [map_smul, LinearMap.smul_apply, smul_eq_mul]
    push_cast; rw [sq_abs]; ring

theorem absorbed_two_mul_apply (ha : Submodule.span ℤ (Set.range a) = ⊤) (u v : X) : Absorbed a fun β => 2 * β u v := by
  refine (((absorbed_sq (u + v)).add (absorbed_neg_sq ha u)).add (absorbed_neg_sq ha v)).congr fun β hβ => ?_
  simp only [map_add (f := _), LinearMap.add_apply, hβ v u]
  ring

theorem absorbed_two_mul [Module.Free ℤ X] [Module.Finite ℤ X] (ha : Submodule.span ℤ (Set.range a) = ⊤)
    (F : LinearMap.BilinForm ℤ X →ₗ[ℤ] ℤ) : Absorbed a fun β => 2 * F β := by
  classical
  let b := Module.Free.chooseBasis ℤ X
  let E : _ → _ → LinearMap.BilinForm ℤ X := fun i j => (LinearMap.mul ℤ ℤ).compl₁₂ (b.coord i) (b.coord j)
  have hE : ∀ β : LinearMap.BilinForm ℤ X, β = ∑ i, ∑ j, β (b i) (b j) • E i j := fun β => by
    refine LinearMap.BilinForm.ext_basis b fun k l => ?_
    simp [E, LinearMap.sum_apply, Finsupp.single_apply]
  refine (absorbed_sum Finset.univ _ fun i => absorbed_sum Finset.univ _ fun j =>
    absorbed_two_mul_apply ha (F (E i j) • b i) (b j)).congr fun β _ => ?_
  conv_lhs => rw [hE β]

  simp only [map_sum, map_smul, LinearMap.smul_apply, smul_eq_mul, Finset.mul_sum]
  exact Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => by ring

end Squares

theorem exists_tuple {X : Type} [AddCommGroup X] [Module.Free ℤ X] [Module.Finite ℤ X] {m : ℕ} {a₀ : Fin m → X}
    (ha : Submodule.span ℤ (Set.range a₀) = ⊤) {s : ℕ} (W : Matrix (Fin (s + 1)) (Fin (s + 1)) ℤ) {w : ℕ} (hw : 1 ≤ w)
    (hW : W 0 0 = w) (lam : LinearMap.BilinForm ℤ X →ₗ[ℤ] ℤ) (μ : Fin (s + 1) → X) (D₀ : ℕ) :
    ∃ (D l : ℕ) (a : Fin l × Fin (s + 1) → X) (i₀ : Fin l), D₀ < D ∧ (∀ u, a (i₀, u) = μ u) ∧
      Submodule.span ℤ (Set.range a) = ⊤ ∧ ∀ β : LinearMap.BilinForm ℤ X, (∀ y z, β y z = β z y) →
        lin W a β = D * ∑ i, β (a₀ i) (a₀ i) + (2 * w : ℕ) * lam β := by
  classical
  have h1 : Absorbed a₀ fun β => 2 * lam β + ∑ u, ∑ v, 2 * β (-W u v • μ u) (μ v) :=
    (absorbed_two_mul ha lam).add (absorbed_sum _ _ fun u => absorbed_sum _ _ fun v => absorbed_two_mul_apply ha _ _)
  obtain ⟨C, ι, _, x, hx⟩ := h1
  let κ := Fin (2 * w) ⊕ (Fin (D₀ + 1) × Fin m) ⊕ ι
  let t : κ → Fin (s + 1) → X :=
    Sum.elim (fun _ => μ) (Sum.elim (fun p => Pi.single 0 (a₀ p.2)) fun i => Pi.single 0 (x i))
  let e := (Fintype.equivFin κ).symm
  refine ⟨w * (C + D₀ + 1), _, fun p => t (e p.1) p.2, e.symm (Sum.inl ⟨0, by omega⟩), by nlinarith, fun u => by simp [t],
    ?_, fun β hβ => ?_⟩
  · rw [eq_top_iff, ← ha]
    refine Submodule.span_mono ?_
    rintro _ ⟨i, rfl⟩
    exact ⟨(e.symm (Sum.inr (Sum.inl (0, i))), 0), by simp [t]⟩
  · have hs : ∀ v : X, qW W β (Pi.single 0 v) = w * β v v := fun v => by
      simp [qW, Fin.sum_univ_succ, hW]
    have h2 : lin W (fun p : _ × _ => t (e p.1) p.2) β = ∑ k, qW W β (t k) := e.sum_comp fun k => qW W β (t k)
    have h3 := hx β hβ
    have h4 : ∑ u, ∑ v, 2 * β (-W u v • μ u) (μ v) = -2 * qW W β μ := by
      simp only [qW, Finset.mul_sum, map_smul, LinearMap.smul_apply, smul_eq_mul]
      exact Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => by ring
    simp only [h4] at h3
    rw [h2]
    simp only [κ, t, Fintype.sum_sum_type, Fintype.sum_prod_type, Sum.elim_inl, Sum.elim_inr, hs, ← Finset.mul_sum,
      Finset.sum_const, Finset.card_univ, Fintype.card_fin, nsmul_eq_mul, ← h3]
    push_cast; ring

theorem exists_dominant (O : Type) [CommRing O] [IsDedekindDomain O] [CharZero O] [Module.Finite ℤ O] (bar : O → O)
    (φ : InvFun O) (d : ℕ) (X : Type) [AddCommGroup X] [Module O X] [Module.Finite O X] [Module.Projective O X]
    [Module.Free ℤ X] [Module.Finite ℤ X] (hφ : IsPolFanOn bar φ X) (r m : ℕ) (γ : Fin r → LinearMap.BilinForm ℤ X)
    (a₀ : Fin m → X) (hγ : IsCone bar φ γ) (hne : NoEquivRays O γ) (hpos : ∀ x, x ≠ 0 → ∃ j, 0 < γ j x x)
    (hs : Supports bar φ d γ a₀) (s : ℕ) (W : Matrix (Fin (s + 1)) (Fin (s + 1)) ℤ) (hW : PosW W) (N₁ : ℕ) (hN : 3 ≤ N₁)
    (lam : LinearMap.BilinForm ℤ X →ₗ[ℤ] ℤ) (hlam : ∀ j, 0 ≤ lam (γ j)) (μ : Fin (s + 1) → X) :
    ∃ (D D' l : ℕ) (a : Fin l × Fin (s + 1) → X) (i₀ : Fin l), 1 ≤ D ∧ 1 ≤ D' ∧ (∀ u, a (i₀, u) = μ u) ∧
      Dominant bar φ (D * d) N₁ W γ a ∧
      ∀ β ∈ balForms bar X, lin W a β = D * ∑ i, β (a₀ i) (a₀ i) + D' * lam β := by
  have hW0 : 0 < W 0 0 := by
    have h : (0 : ℝ) < ((W + W.transpose).map (Int.cast : ℤ → ℝ)) 0 0 := Matrix.PosDef.diag_pos hW
    simp only [Matrix.map_apply, Matrix.add_apply, Matrix.transpose_apply, Int.cast_pos] at h
    omega
  obtain ⟨w, hw⟩ : ∃ w : ℕ, W 0 0 = w := ⟨_, (Int.toNat_of_nonneg hW0.le).symm⟩
  have hw1 : 1 ≤ w := by omega
  let lam' : LinearMap.BilinForm ℤ X →ₗ[ℤ] ℤ := ((2 * w : ℕ) : ℤ) • lam
  have hlam' : ∀ j, 0 ≤ lam' (γ j) := fun j => mul_nonneg (Int.natCast_nonneg _) (hlam j)
  obtain ⟨D₀, hD₀⟩ := _root_.GlobalTheory.Poinc.Gap.exists_gap O bar φ d X hφ r m γ a₀ hγ hs lam' hlam' (∑ j, lam' (γ j) + 1)
  obtain ⟨D, l, a, i₀, hD, hμ, hsp, hlin⟩ := exists_tuple hs.span W hw1 hw lam μ D₀
  obtain ⟨hle, hgap⟩ := hD₀ D hD.le
  have hlin' : ∀ β ∈ balForms bar X, lin W a β = D * ∑ i, β (a₀ i) (a₀ i) + lam' β := fun β hβ => hlin β hβ.1
  have key : ∀ (e : X ≃ₗ[O] X) j, pull e.toLinearMap (γ j) = γ j ∨
      lin W a (γ j) < lin W (fun i => e (a i)) (γ j) := fun e j => by
    by_cases h : ∃ j', pull e.toLinearMap (γ j) = γ j'
    · obtain ⟨j', h⟩ := h
      exact Or.inl (hne e j j' h ▸ h)
    right
    have hc : IsCone bar φ ![pull e.toLinearMap (γ j)] := by
      have := (hφ.face _ 1 γ ⟨fun _ => j, fun _ _ _ => Subsingleton.elim _ _⟩ hγ).pull_equiv e
      have h0 : ![pull e.toLinearMap (γ j)] = fun _ : Fin 1 => pull e.toLinearMap (γ j) := funext fun i => by simp
      rw [h0]
      exact this
    have h1 := hgap _ hc fun j' hj => h ⟨j', hj⟩
    rw [← hlin' _ (pull_mem _ (hγ.mem j)), evalZ_pull φ (r := e.toLinearMap) e.surjective, mul_assoc, hs.eq j] at h1
    have h2 : D * ∑ i, γ j (a₀ i) (a₀ i) + (∑ j, lam' (γ j) + 1) ≤ lin W a (pull e.toLinearMap (γ j)) := by
      exact_mod_cast h1
    have h3 : lam' (γ j) ≤ ∑ j, lam' (γ j) := Finset.single_le_sum (fun j _ => hlam' j) (Finset.mem_univ j)
    change _ < lin W a (pull e.toLinearMap (γ j))
    rw [hlin' _ (hγ.mem j)]
    omega
  refine ⟨D, 2 * w, l, a, i₀, by omega, by omega, hμ, ⟨hsp, fun β hβ hp => ?_, fun e _ j => ?_, fun e he hx => ?_⟩,
    fun β hβ => hlin β hβ.1⟩
  · rw [hlin' β hβ, Nat.cast_mul]
    exact hle β hβ hp
  · rcases key e j with h | h
    · change _ ≤ lin W a (pull e.toLinearMap (γ j))
      rw [h]
    · exact h.le
  · by_contra hn
    have hfix : ∀ j, pull e.toLinearMap (γ j) = γ j := fun j => (key e j).resolve_right fun h => hn ⟨j, h⟩
    have := GlobalTheory.Poinc.eq_refl_of_isometry_congMod X (∑ j, γ j) (fun x hx => by
      obtain ⟨j, hj⟩ := hpos x hx
      simp only [LinearMap.sum_apply]
      exact Finset.sum_pos' (fun i _ => hγ.nonneg i x) ⟨j, Finset.mem_univ j, hj⟩) e.toAddEquiv.toIntLinearEquiv
      (fun x y => by
        simp only [LinearMap.sum_apply]
        exact Finset.sum_congr rfl fun j _ => LinearMap.congr_fun₂ (hfix j) x y) N₁ hN he
    obtain ⟨x, hx⟩ := hx
    exact hx (LinearEquiv.congr_fun this x)

end GlobalTheory.Poinc.DomTuple
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDominantTuplePrescribedMemberLinearForm =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemOfForallMemSupPow =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemOfForallMemSupPow", "h": "module\n\npublic import Mathlib.Algebra.Algebra.Operations\npublic import Mathlib.RingTheory.LocalRing.MaximalIdeal.Defs\npublic import Mathlib.RingTheory.Noetherian.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.RingTheory.Filtration\n\n"}
section -- clump:auto
@[expose] public section

open IsLocalRing

namespace GlobalTheory.Poinc

open IsLocalRing in
variable {V : Type} [CommRing V] [IsLocalRing V] [IsNoetherianRing V] in
private theorem mem_of_forall_mem_sup_maximalIdeal_pow' (N : Ideal V) (x : V)
    (hx : ∀ e : ℕ, x ∈ N ⊔ maximalIdeal V ^ e) : x ∈ N := by
  apply _root_.GlobalTheory.ApproxCorr.mem_of_forall_mem_sup <;> assumption

open IsLocalRing in
variable {V : Type} [CommRing V] [IsLocalRing V] [IsNoetherianRing V] in
private theorem exists_not_mem_span_mul_maximalIdeal_sup_pow [IsDomain V] {g : V} (hg : g ≠ 0) :
    ∃ e : ℕ, g ∉ Ideal.span {g} * maximalIdeal V ⊔ maximalIdeal V ^ e := by
  by_contra h
  push_neg at h
  have hg' := mem_of_forall_mem_sup_maximalIdeal_pow' _ g h
  obtain ⟨z, hz, hgz⟩ := Ideal.mem_span_singleton_mul.1 hg'
  have hz1 : z = 1 := by
    have : g * (z - 1) = 0 := by rw [mul_sub, hgz, mul_one, sub_self]
    rcases mul_eq_zero.1 this with h0 | h0
    · exact absurd h0 hg
    · exact sub_eq_zero.1 h0
  exact (maximalIdeal.isMaximal V).ne_top ((Ideal.eq_top_iff_one _).2 (hz1 ▸ hz))


open IsLocalRing in
theorem _root_.GlobalTheory.Poinc.const_mod_prime_of_approx (V : Type) [CommRing V] [IsDomain V]
    [IsLocalRing V] [IsNoetherianRing V] (p : Ideal V) [p.IsPrime] (O' : Subring V)
    (hO : ∀ h ∈ O', h ∈ maximalIdeal V → h ∈ p) (g b u : V) (I : Ideal V) (hg : g ≠ 0)
    (hI : I ≤ maximalIdeal V)
    (H : ∀ e : ℕ, ∃ h ∈ O',
      h * g - u * (b * g) ∈ Ideal.span {b * g} * I ⊔ maximalIdeal V ^ e) :
    (IsUnit u → b ∈ maximalIdeal V → b ∈ p) ∧ (I ≤ p → ∃ h ∈ O', h - u * b ∈ p) := by
  obtain ⟨e₀, he₀⟩ := exists_not_mem_span_mul_maximalIdeal_sup_pow hg
  choose a haO haH using H
  have hspan : Ideal.span {b * g} ≤ Ideal.span {g} :=
    Ideal.span_singleton_le_span_singleton.2 ⟨b, mul_comm b g⟩
  have hbgI : Ideal.span {b * g} * I ≤ Ideal.span {g} * maximalIdeal V := Ideal.mul_mono hspan hI
  have hpow : ∀ {e : ℕ}, e₀ ≤ e → maximalIdeal V ^ e ≤ maximalIdeal V ^ e₀ :=
    fun h => Ideal.pow_le_pow_right h

  have hunit : ∀ x ∈ O', x * g ∈ Ideal.span {g} * maximalIdeal V ⊔ maximalIdeal V ^ e₀ →
      x ∈ p := by
    intro x hxO hx
    by_contra hxp
    have hxu : IsUnit x := by
      by_contra hnu
      exact hxp (hO x hxO ((mem_maximalIdeal x).2 hnu))
    apply he₀
    have key : ((hxu.unit⁻¹ : Vˣ) : V) * (x * g) = g := by
      rw [← mul_assoc, hxu.val_inv_mul, one_mul]
    have hmul := Ideal.mul_mem_left _ ((hxu.unit⁻¹ : Vˣ) : V) hx
    rwa [key] at hmul
  refine ⟨fun hu hb => ?_, fun hIp => ?_⟩
  · have hap : ∀ e, e₀ ≤ e → a e ∈ p := by
      intro e he
      refine hunit (a e) (haO e) ?_
      have h1 : a e * g = (a e * g - u * (b * g)) + g * (u * b) := by ring
      rw [h1]
      refine Ideal.add_mem _ ?_ (Ideal.mem_sup_left (Ideal.mem_span_singleton_mul.2
        ⟨u * b, Ideal.mul_mem_left _ _ hb, rfl⟩))
      exact sup_le_sup hbgI (hpow he) (haH e)
    have hN : u * (b * g) ∈ Ideal.span {g} * p ⊔ Ideal.span {b * g} * maximalIdeal V := by
      refine mem_of_forall_mem_sup_maximalIdeal_pow' _ _ fun e => ?_
      have h1 : u * (b * g) = g * a (max e e₀) - (a (max e e₀) * g - u * (b * g)) := by ring
      rw [h1]
      refine Ideal.sub_mem _ (Ideal.mem_sup_left (Ideal.mem_sup_left
        (Ideal.mem_span_singleton_mul.2 ⟨_, hap _ (le_max_right _ _), rfl⟩))) ?_
      refine sup_le_sup (le_sup_of_le_right (Ideal.mul_mono_right hI))
        (Ideal.pow_le_pow_right (le_max_left e e₀)) (haH (max e e₀))
    obtain ⟨y, hy, z, hz, hyz⟩ := Submodule.mem_sup.1 hN
    obtain ⟨q, hq, rfl⟩ := Ideal.mem_span_singleton_mul.1 hy
    obtain ⟨r, hr, rfl⟩ := Ideal.mem_span_singleton_mul.1 hz
    have hcancel : b * (u - r) = q := by
      apply mul_left_cancel₀ hg
      linear_combination hyz.symm
    have hur : IsUnit (u - r) := by
      by_contra hnu
      have hm : u - r ∈ maximalIdeal V := (mem_maximalIdeal _).2 hnu
      have : u ∈ maximalIdeal V := by
        simpa using Ideal.add_mem _ hm hr
      exact (mem_maximalIdeal u).1 this hu
    rcases (inferInstance : p.IsPrime).mem_or_mem (hcancel ▸ hq) with h | h
    · exact h
    · exact absurd (Ideal.eq_top_of_isUnit_mem _ h hur) (inferInstance : p.IsPrime).ne_top
  · have hdiff : ∀ e, e₀ ≤ e → a e - a e₀ ∈ p := by
      intro e he
      refine hunit _ (Subring.sub_mem _ (haO e) (haO e₀)) ?_
      have h1 : (a e - a e₀) * g =
          (a e * g - u * (b * g)) - (a e₀ * g - u * (b * g)) := by ring
      rw [h1]
      exact Ideal.sub_mem _ (sup_le_sup hbgI (hpow he) (haH e)) (sup_le_sup hbgI le_rfl (haH e₀))
    refine ⟨a e₀, haO e₀, ?_⟩
    have hN : (a e₀ - u * b) * g ∈ Ideal.span {g} * p := by
      refine mem_of_forall_mem_sup_maximalIdeal_pow' _ _ fun e => ?_
      have h1 : (a e₀ - u * b) * g =
          g * (-(a (max e e₀) - a e₀)) + (a (max e e₀) * g - u * (b * g)) := by ring
      rw [h1]
      refine Ideal.add_mem _ (Ideal.mem_sup_left (Ideal.mem_span_singleton_mul.2
        ⟨_, neg_mem (hdiff _ (le_max_right _ _)), rfl⟩)) ?_
      exact sup_le_sup (Ideal.mul_mono hspan hIp) (Ideal.pow_le_pow_right (le_max_left e e₀))
        (haH (max e e₀))
    obtain ⟨q, hq, hgq⟩ := Ideal.mem_span_singleton_mul.1 hN
    have : a e₀ - u * b = q := by
      apply mul_left_cancel₀ hg
      rw [hgq, mul_comm]
    exact this ▸ hq

end GlobalTheory.Poinc
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemOfForallMemSupPow =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PoincareApproxValuesAtPointOfElements =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PoincareApproxValuesAtPointOfElements", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsChartMember\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.OrdGeOfForall\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDominantTuplePrescribedMemberLinearForm\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MemOfForallMemSupPow\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsUnimodMod\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeightedLatticeQuadraticSumGeDiagonal\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.FromBase\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.Poinc.ValuationRepresentative

theorem exists_dual_pos {M : Type} [AddCommGroup M] [Module.Finite ℤ M] {m : ℕ} (v : Fin m → M)
    (hv : LinearIndependent ℤ v) (k : Fin m) :
    ∃ f : M →ₗ[ℤ] ℤ, (∀ j, j ≠ k → f (v j) = 0) ∧ 0 < f (v k) := by
  classical
  let p : Submodule ℤ M := Submodule.span ℤ (v '' {j | j ≠ k})
  have hx : p.mkQ (v k) ∉ Submodule.torsion ℤ (M ⧸ p) := by
    intro h
    obtain ⟨⟨a, ha⟩, hax⟩ := (Submodule.mem_torsion_iff _).1 h
    have h1 : a • v k ∈ p := by
      rw [← Submodule.Quotient.mk_eq_zero]
      simpa using hax
    obtain ⟨l, hl, hle⟩ := (Finsupp.mem_span_image_iff_linearCombination ℤ).1 h1
    have h2 : Finsupp.linearCombination ℤ v (l - Finsupp.single k a) = 0 := by
      simp [map_sub, hle]
    have h3 := linearIndependent_iff.1 hv _ h2
    have h4 : l k = 0 := (Finsupp.mem_supported' ℤ l).1 hl k (by simp)
    have h5 := congrArg (fun f => f k) h3
    simp [h4] at h5
    exact nonZeroDivisors.ne_zero ha h5
  haveI : Module.IsTorsionFree ℤ ((M ⧸ p) ⧸ Submodule.torsion ℤ (M ⧸ p)) :=
    Submodule.isTorsionFree_iff_torsion_eq_bot.2 Submodule.QuotientTorsion.torsion_eq_bot
  obtain ⟨f, hf, hf0⟩ := Submodule.exists_dual_map_eq_bot_of_notMem hx inferInstance
  let g : M →ₗ[ℤ] ℤ := f ∘ₗ p.mkQ
  have hg : ∀ j, j ≠ k → g (v j) = 0 := fun j hj => by
    have : p.mkQ (v j) = 0 := by
      rw [Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero]
      exact Submodule.subset_span ⟨j, hj, rfl⟩
    simp only [g, LinearMap.comp_apply, this, map_zero]
  have hgk : g (v k) ≠ 0 := hf
  rcases lt_or_gt_of_ne hgk with hn | hp
  · exact ⟨-g, fun j hj => by simp [hg j hj], by simp; omega⟩
  · exact ⟨g, hg, hp⟩

theorem sum_rep {R : Type} [AddCommMonoid R] {l n : ℕ} (f : Fin l → R) :
    ∑ i : Fin (l * n), f (finProdFinEquiv.symm i).1 = n • ∑ i, f i := by
  rw [finProdFinEquiv.symm.sum_comp (fun p : Fin l × Fin n => f p.1), Fintype.sum_prod_type]
  simp [Finset.smul_sum]

theorem prod_rep {R : Type} [CommMonoid R] {l n : ℕ} (f : Fin l → R) :
    ∏ i : Fin (l * n), f (finProdFinEquiv.symm i).1 = (∏ i, f i) ^ n := by
  rw [finProdFinEquiv.symm.prod_comp (fun p : Fin l × Fin n => f p.1), Fintype.prod_prod_type]
  simp [Finset.prod_pow]

theorem supports_rep {O : Type} [CommRing O] {bar : O → O} {φ : InvFun O} {d : ℕ} {X : Type} [AddCommGroup X]
    [Module O X] [Module.Finite O X] {r : ℕ} {ga : Fin r → LinearMap.BilinForm ℤ X} {m : ℕ} {a : Fin m → X}
    (h : Supports bar φ d ga a) (n : ℕ) (hn : 1 ≤ n) :
    Supports bar φ (d * n) ga (fun i : Fin (m * n) => a (finProdFinEquiv.symm i).1) := by
  have hs : ∀ β : LinearMap.BilinForm ℤ X, (∑ i : Fin (m * n), β (a (finProdFinEquiv.symm i).1)
      (a (finProdFinEquiv.symm i).1)) = n * ∑ i, β (a i) (a i) := fun β => by
    rw [sum_rep (fun j => β (a j) (a j)), nsmul_eq_mul]
  have hn' : (0 : ℝ) < n := by exact_mod_cast hn
  refine ⟨?_, fun β hβ hp => ?_, fun j => ?_, fun β hβ hp he => ?_⟩
  · rw [eq_top_iff, ← h.span]
    refine Submodule.span_mono ?_
    rintro _ ⟨j, rfl⟩
    exact ⟨finProdFinEquiv (j, ⟨0, by omega⟩), by simp⟩
  · rw [hs, Int.cast_mul, Int.cast_natCast, Nat.cast_mul]
    have := mul_le_mul_of_nonneg_left (h.le β hβ hp) hn'.le
    linarith
  · rw [hs, Int.cast_mul, Int.cast_natCast, ← h.eq j, Nat.cast_mul]; ring
  · rw [hs, Int.cast_mul, Int.cast_natCast, Nat.cast_mul] at he
    refine h.only β hβ hp ?_
    have : (n : ℝ) * (d * φ.evalZ β) = n * ((∑ i, β (a i) (a i) : ℤ) : ℝ) := by rw [← he]; ring
    exact mul_left_cancel₀ hn'.ne' this

theorem lin_smul {s l : ℕ} (W : Matrix (Fin s) (Fin s) ℤ) {X : Type} [AddCommGroup X]
    (a : Fin l × Fin s → X) (M : ℤ) (δ : LinearMap.BilinForm ℤ X) : lin W a (M • δ) = M * lin W a δ := by
  simp only [lin, qW, LinearMap.smul_apply, Finset.mul_sum, smul_eq_mul]
  refine Finset.sum_congr rfl fun _ _ => Finset.sum_congr rfl fun _ _ => Finset.sum_congr rfl fun _ _ => ?_
  ring

theorem prod_mono {s l m : ℕ} (W : Matrix (Fin s) (Fin s) ℤ) {X V : Type} [AddCommGroup X] [CommRing V] (t : Fin m → V)
    (δ : Fin m → LinearMap.BilinForm ℤ X) (h : ∀ i y, 0 ≤ qW W (δ i) y) (a : Fin l × Fin s → X) :
    ∏ i, mono W t δ (fun v => a (i, v)) = ∏ j, t j ^ (lin W a (δ j)).toNat := by
  apply _root_.GlobalTheory.Poinc.leadingTermLemmas.prod_mono <;> assumption

end GlobalTheory.Poinc.ValuationRepresentative


open GlobalTheory.Poinc.ValuationRepresentative in
theorem GlobalTheory.Poinc.Sep.values_of_elements : ∀ (O : Type) [CommRing O] [IsDedekindDomain O] [CharZero O] [Module.Finite ℤ O] (bar : O → O) (q : ℕ) (φ : InvFun O), IsPolFan bar q φ → NoSelfInt bar q φ → ∀ d₀ d : ℕ, 1 ≤ d₀ → 1 ≤ d → HasSupports bar q φ d₀ → ∀ (s : ℕ) (W : Matrix (Fin (s + 1)) (Fin (s + 1)) ℤ), PosW W → ∀ N₁ : ℕ, 3 ≤ N₁ → ∀ (A : Type) [CommRing A] [IsLocalRing A] (Φ : VSys bar q W N₁ A) (y : Φ.Y) (ga : Fin (Φ.m y) → LinearMap.BilinForm ℤ (Φ.X y)) (M : ℕ), 1 ≤ M → IsCone bar φ ga → (∀ k, Φ.δ y k = (M : ℤ) • ga k) → ∀ (K : Type) [Field K] (ev : Φ.V y →+* K) (k₀ : Subfield K), Elements Φ y φ d ga ev k₀ → Values Φ y ev k₀ := by
  classical
  intro O _ _ _ _ bar q φ hF hNS d₀ d hd₀ hd hSupp s W hW N₁ hN₁ A _ _ Φ y ga M hM hcone hδ K _ ev k₀ hE
  obtain ⟨O', g₀, b, hO', hb, ⟨w, hw⟩, happ⟩ := hE
  obtain ⟨m₀, a₀, hs₀⟩ := hSupp (Φ.X y) (Φ.rank_le y) _ ga hcone
  obtain ⟨m₁, a₁, hs₁⟩ : ∃ (m₁ : ℕ) (a₁ : Fin m₁ → Φ.X y), Supports bar φ (d₀ * d) ga a₁ :=
    ⟨_, _, supports_rep hs₀ d hd⟩
  have hφX : IsPolFanOn bar φ (Φ.X y) := hF (Φ.X y) (Φ.rank_le y)
  have hne : NoEquivRays O ga := hNS (Φ.X y) (Φ.rank_le y) _ ga hcone
  have hpos : ∀ x, x ≠ 0 → ∃ j, 0 < ga j x x := fun x hx => by
    obtain ⟨i, hi⟩ := Φ.pos y x hx
    refine ⟨i, ?_⟩
    rw [hδ i] at hi
    simp only [LinearMap.smul_apply, smul_eq_mul] at hi
    exact pos_of_mul_pos_right hi (by positivity)
  obtain ⟨cW, hcW0, hcW⟩ := _root_.GlobalTheory.Poinc.QWDom.qW_ge (s + 1) W hW
  have hq : ∀ k mv, 0 ≤ qW W (Φ.δ y k) mv := fun k mv => by
    have h1 := hcW (Φ.X y) (Φ.δ y k) (Φ.bal y k).1 (Φ.nonneg y k) mv
    have h2 : (0 : ℝ) ≤ ((∑ u, Φ.δ y k (mv u) (mv u) : ℤ) : ℝ) := by
      exact_mod_cast Finset.sum_nonneg fun u _ => Φ.nonneg y k _
    exact_mod_cast (mul_nonneg hcW0.le h2).trans h1
  haveI : IsNoetherianRing (Φ.V y) := (Φ.cn y).1
  haveI hp : (RingHom.ker ev).IsPrime := RingHom.ker_isPrime ev
  have hOp : ∀ h ∈ O', h ∈ maximalIdeal (Φ.V y) → h ∈ RingHom.ker ev := fun h hh hm =>
    RingHom.mem_ker.2 ((hO' h hh).2 hm)
  have hg₀0 : g₀ ≠ 0 := by
    intro h0
    rw [h0, zero_mul] at hw
    exact (Finset.prod_ne_zero_iff.2 fun k _ => pow_ne_zero _ (Φ.t_mem y k).2) hw.symm
  have hI : Ideal.span (Set.range (Φ.t y)) ≤ maximalIdeal (Φ.V y) :=
    Ideal.span_le.2 (by rintro _ ⟨k, rfl⟩; exact (Φ.t_mem y k).1)
  have hexp : ∀ (D : ℕ) k, (M : ℤ) * (D * ∑ i, ga k (a₁ i) (a₁ i)) = ((D * d₀ * b k : ℕ) : ℤ) := by
    intro D k
    have h1 : ((∑ i, ga k (a₁ i) (a₁ i) : ℤ) : ℝ) = d₀ * d * φ.evalZ (ga k) := by
      rw [← hs₁.eq k]; push_cast; ring
    have h2 : ((b k : ℕ) : ℝ) = d * (M * φ.evalZ (ga k)) := by
      rw [hb k, hδ k, hcone.evalZ_smul]
    have : ((M * (D * ∑ i, ga k (a₁ i) (a₁ i)) : ℤ) : ℝ) = ((D * d₀ * b k : ℕ) : ℝ) := by
      rw [Int.cast_mul, Int.cast_mul, h1, Nat.cast_mul, h2]; push_cast; ring
    exact_mod_cast this
  have key : ∀ lam : LinearMap.BilinForm ℤ (Φ.X y) →ₗ[ℤ] ℤ, (∀ j, 0 ≤ lam (ga j)) → ∀ mv : Fin (s + 1) → Φ.X y,
      ∃ (D D' l : ℕ) (a : Fin l × Fin (s + 1) → Φ.X y) (i₀ : Fin l), 1 ≤ D ∧ 1 ≤ D' ∧ (∀ u, a (i₀, u) = mv u) ∧
        (∀ β ∈ balForms bar (Φ.X y), lin W a β = D * ∑ i, β (a₁ i) (a₁ i) + D' * lam β) ∧
        ∀ c : Fin l → Φ.Q,
          (IsUnit (Φ.coefT y a c) →
            (w : Φ.V y) ^ (D * d₀) * ∏ k, Φ.t y k ^ (M * D' * (lam (ga k)).toNat) ∈ maximalIdeal (Φ.V y) →
            (w : Φ.V y) ^ (D * d₀) * ∏ k, Φ.t y k ^ (M * D' * (lam (ga k)).toNat) ∈ RingHom.ker ev) ∧
          (Ideal.span (Set.range (Φ.t y)) ≤ RingHom.ker ev → ∃ h ∈ O',
            h - Φ.coefT y a c * ((w : Φ.V y) ^ (D * d₀) * ∏ k, Φ.t y k ^ (M * D' * (lam (ga k)).toNat)) ∈
              RingHom.ker ev) := by
    intro lam hlam mv
    obtain ⟨D, D', l, a, i₀, hD, hD', hmv, hdom, hlin⟩ :=
      _root_.GlobalTheory.Poinc.DomTuple.exists_dominant O bar φ (d₀ * d) (Φ.X y) hφX (Φ.m y) m₁ ga a₁ hcone hne hpos hs₁ s W hW N₁ hN₁ lam hlam mv
    refine ⟨D, D', l, a, i₀, hD, hD', hmv, hlin, fun c => ?_⟩
    set T := (w : Φ.V y) ^ (D * d₀) * ∏ k, Φ.t y k ^ (M * D' * (lam (ga k)).toNat) with hT
    have hmono : Φ.monoT y a = T * g₀ ^ (D * d₀) := by
      have e1 : Φ.monoT y a = ∏ k, Φ.t y k ^ (D * d₀ * b k + M * D' * (lam (ga k)).toNat) := by
        show ∏ i, mono W (Φ.t y) (Φ.δ y) (fun v => a (i, v)) = _
        rw [prod_mono W _ _ hq a]
        refine Finset.prod_congr rfl fun k _ => congrArg _ ?_
        have : lin W a (Φ.δ y k) = ((D * d₀ * b k + M * D' * (lam (ga k)).toNat : ℕ) : ℤ) := by
          rw [hδ k, lin_smul, hlin _ (hcone.mem k)]
          push_cast
          rw [Int.toNat_of_nonneg (hlam k)]
          have h3 := hexp D k
          push_cast at h3
          linear_combination h3
        rw [this, Int.toNat_natCast]
      have e2 : ∀ k, Φ.t y k ^ (D * d₀ * b k + M * D' * (lam (ga k)).toNat) =
          (Φ.t y k ^ b k) ^ (D * d₀) * Φ.t y k ^ (M * D' * (lam (ga k)).toNat) := fun k => by
        rw [← pow_mul, pow_add, mul_comm (b k)]
      rw [e1, Finset.prod_congr rfl fun k _ => e2 k, Finset.prod_mul_distrib, Finset.prod_pow, ← hw, mul_pow, hT]
      ring
    have H : ∀ e : ℕ, ∃ h ∈ O', h * g₀ ^ (D * d₀) - Φ.coefT y a c * (T * g₀ ^ (D * d₀)) ∈
        Ideal.span {T * g₀ ^ (D * d₀)} * Ideal.span (Set.range (Φ.t y)) ⊔ maximalIdeal (Φ.V y) ^ e := by
      intro e
      have hdom' : Dominant bar φ (D * d₀ * d) N₁ W ga a := by rwa [_root_.mul_assoc]
      obtain ⟨h, hh, hm⟩ := happ (D * d₀) l a hdom' c e
      exact ⟨h, hh, by rwa [hmono] at hm⟩
    exact GlobalTheory.Poinc.const_mod_prime_of_approx (Φ.V y) (RingHom.ker ev) O' hOp (g₀ ^ (D * d₀)) T _ _
      (pow_ne_zero _ hg₀0) hI H
  have hunit : ∀ {l : ℕ} (a : Fin l × Fin (s + 1) → Φ.X y),
      IsUnit (Φ.coefT y a fun i => (Φ.u_unit y (fun v => a (i, v))).choose) := fun a =>
    Finset.prod_induction _ IsUnit (fun _ _ => IsUnit.mul) isUnit_one fun i _ => (Φ.u_unit y _).choose_spec
  have hwne : ∀ n : ℕ, ev ((w : Φ.V y) ^ n) ≠ 0 := fun n => ((w.isUnit.pow n).map ev).ne_zero
  have ht : ∀ k, Φ.t y k ∈ RingHom.ker ev := by
    intro k
    obtain ⟨lam, hl0, hlk⟩ := exists_dual_pos ga hcone.linearIndependent k
    have hlam : ∀ j, 0 ≤ lam (ga j) := fun j => by
      by_cases hj : j = k
      · subst hj; exact hlk.le
      · rw [hl0 j hj]
    obtain ⟨D, D', l, a, i₀, hD, hD', -, -, hc⟩ := key lam hlam 0
    have hprod : ∏ j, Φ.t y j ^ (M * D' * (lam (ga j)).toNat) = Φ.t y k ^ (M * D' * (lam (ga k)).toNat) :=
      Fintype.prod_eq_single k fun j hj => by rw [hl0 j hj]; simp
    have hn : 0 < M * D' * (lam (ga k)).toNat := by
      have : 0 < (lam (ga k)).toNat := by omega
      positivity
    have hTm : (w : Φ.V y) ^ (D * d₀) * ∏ j, Φ.t y j ^ (M * D' * (lam (ga j)).toNat) ∈ maximalIdeal (Φ.V y) := by
      rw [hprod]
      exact Ideal.mul_mem_left _ _ (Ideal.pow_mem_of_mem _ (Φ.t_mem y k).1 _ hn)
    have h1 := (hc _).1 (hunit a) hTm
    rw [hprod] at h1
    have hw' : (w : Φ.V y) ^ (D * d₀) ∉ RingHom.ker ev := fun h => hwne _ (RingHom.mem_ker.1 h)
    exact hp.mem_of_pow_mem _ ((hp.mem_or_mem h1).resolve_left hw')
  have hIp : Ideal.span (Set.range (Φ.t y)) ≤ RingHom.ker ev :=
    Ideal.span_le.2 (by rintro _ ⟨k, rfl⟩; exact ht k)
  have hzero : ∀ D' : ℕ, ∏ k, Φ.t y k ^ (M * D' * ((0 : LinearMap.BilinForm ℤ (Φ.X y) →ₗ[ℤ] ℤ) (ga k)).toNat) = 1 :=
    fun D' => by simp
  refine ⟨fun k => RingHom.mem_ker.1 (ht k), fun mu c c' hc' => ?_, fun lam hlam => ?_⟩
  · obtain ⟨D, D', l, a, i₀, -, -, hmv, -, hc⟩ := key 0 (fun j => le_rfl) mu
    let c₀ : Fin l → Φ.Q := fun i => (Φ.u_unit y (fun v => a (i, v))).choose
    have hsplit : ∀ e : Φ.Q, Φ.coefT y a (Function.update c₀ i₀ e) =
        Φ.u y mu e * ∏ i ∈ Finset.univ.erase i₀, Φ.u y (fun v => a (i, v)) (c₀ i) := by
      intro e
      rw [VSys.coefT, ← Finset.mul_prod_erase Finset.univ _ (Finset.mem_univ i₀)]
      congr 1
      · rw [Function.update_self]
        congr 1
        funext v
        exact hmv v
      · refine Finset.prod_congr rfl fun i hi => ?_
        rw [Function.update_of_ne (Finset.ne_of_mem_erase hi)]
    have hU : IsUnit (∏ i ∈ Finset.univ.erase i₀, Φ.u y (fun v => a (i, v)) (c₀ i)) :=
      Finset.prod_induction _ IsUnit (fun _ _ => IsUnit.mul) isUnit_one fun i _ => (Φ.u_unit y _).choose_spec
    obtain ⟨h, hh, hhp⟩ := (hc (Function.update c₀ i₀ c)).2 hIp
    obtain ⟨h', hh', hhp'⟩ := (hc (Function.update c₀ i₀ c')).2 hIp
    rw [hsplit, hzero, _root_.mul_one] at hhp hhp'
    rw [RingHom.mem_ker, map_sub, sub_eq_zero] at hhp hhp'
    have hUe : ev (∏ i ∈ Finset.univ.erase i₀, Φ.u y (fun v => a (i, v)) (c₀ i)) ≠ 0 := (hU.map ev).ne_zero
    have hce : ev (Φ.u y mu c') ≠ 0 := (hc'.map ev).ne_zero
    refine ⟨ev h / ev h', div_mem (hO' h hh).1 (hO' h' hh').1, ?_⟩
    rw [hhp, hhp']
    simp only [map_mul]
    rw [div_mul_eq_mul_div, eq_div_iff (mul_ne_zero (mul_ne_zero hce hUe) (by simpa using hwne (D * d₀)))]
    ring
  · have hlam0 : ∀ j, lam (ga j) = 0 := fun j => by
      have := hlam j
      rw [hδ j, map_smul, smul_eq_mul] at this
      rcases mul_eq_zero.1 this with h | h
      · omega
      · exact h
    obtain ⟨D, D', l, a, -, -, hD', -, hlin, hc⟩ := key lam (fun j => (hlam0 j).ge) 0
    obtain ⟨E, E', l', a', -, hE, -, -, hlin', hc'⟩ := key 0 (fun j => le_rfl) 0
    obtain ⟨h, hh, hhp⟩ := (hc fun i => (Φ.u_unit y (fun v => a (i, v))).choose).2 hIp
    obtain ⟨h', hh', hhp'⟩ := (hc' fun i => (Φ.u_unit y (fun v => a' (i, v))).choose).2 hIp
    have hprod1 : ∏ k, Φ.t y k ^ (M * D' * (lam (ga k)).toNat) = 1 := by simp [hlam0]
    rw [hprod1, _root_.mul_one, RingHom.mem_ker, map_sub, sub_eq_zero] at hhp
    rw [hzero, _root_.mul_one, RingHom.mem_ker, map_sub, sub_eq_zero] at hhp'
    have hce' := ((hunit a').map ev).ne_zero
    have hrepc : ∀ {l n : ℕ} (a : Fin l × Fin (s + 1) → Φ.X y) (c : Fin l → Φ.Q),
        Φ.coefT y (fun p : Fin (l * n) × Fin (s + 1) => a ((finProdFinEquiv.symm p.1).1, p.2))
          (fun i => c (finProdFinEquiv.symm i).1) = Φ.coefT y a c ^ n := fun a c =>
      prod_rep (fun j => Φ.u y (fun v => a (j, v)) (c j))
    have hrepl : ∀ {l n : ℕ} (a : Fin l × Fin (s + 1) → Φ.X y) (β : LinearMap.BilinForm ℤ (Φ.X y)),
        lin W (fun p : Fin (l * n) × Fin (s + 1) => a ((finProdFinEquiv.symm p.1).1, p.2)) β = n * lin W a β :=
      fun a β => (sum_rep (fun j => qW W β fun u => a (j, u))).trans (nsmul_eq_mul _ _)
    refine ⟨l * E, l' * D, E * D', fun p => a ((finProdFinEquiv.symm p.1).1, p.2),
      fun p => a' ((finProdFinEquiv.symm p.1).1, p.2), fun i => (Φ.u_unit y (fun v => a ((finProdFinEquiv.symm i).1, v))).choose,
      fun i => (Φ.u_unit y (fun v => a' ((finProdFinEquiv.symm i).1, v))).choose, Nat.mul_le_mul hE hD', ?_⟩
    have eA : Φ.coefT y (fun p : Fin (l * E) × Fin (s + 1) => a ((finProdFinEquiv.symm p.1).1, p.2))
        (fun i => (Φ.u_unit y (fun v => a ((finProdFinEquiv.symm i).1, v))).choose) =
        Φ.coefT y a (fun i => (Φ.u_unit y (fun v => a (i, v))).choose) ^ E := hrepc (n := E) a (fun i => (Φ.u_unit y (fun v => a (i, v))).choose)
    have eA' : Φ.coefT y (fun p : Fin (l' * D) × Fin (s + 1) => a' ((finProdFinEquiv.symm p.1).1, p.2))
        (fun i => (Φ.u_unit y (fun v => a' ((finProdFinEquiv.symm i).1, v))).choose) =
        Φ.coefT y a' (fun i => (Φ.u_unit y (fun v => a' (i, v))).choose) ^ D := hrepc (n := D) a' (fun i => (Φ.u_unit y (fun v => a' (i, v))).choose)
    have hwe : ev (w : Φ.V y) ≠ 0 := by simpa using hwne 1
    refine ⟨?_, ?_, fun β hβ => ?_, ⟨ev h ^ E / ev h' ^ D, div_mem (pow_mem (hO' h hh).1 _) (pow_mem (hO' h' hh').1 _), ?_⟩⟩
    · rw [eA]; exact (hunit a).pow _
    · rw [eA']; exact (hunit a').pow _
    · rw [hrepl a β, hrepl a' β, hlin β hβ, hlin' β hβ, LinearMap.zero_apply]
      push_cast; ring
    · rw [eA, eA', map_pow, map_pow, hhp, hhp']
      simp only [map_mul, map_pow]
      rw [div_mul_eq_mul_div, eq_div_iff (pow_ne_zero _ (mul_ne_zero hce' (pow_ne_zero _ hwe)))]
      ring
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PoincareApproxValuesAtPointOfElements =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PoincareApproxValuesAtPointOfElementsStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.PoincareApproxValuesAtPointOfElementsStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsChartMember\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PoincareApproxValuesAtPointOfElements\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.FromBase\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg
open scoped CategoryTheory.Obj
open ReciprocityTheory.AnForm.R GlobalTheory.ZH GlobalTheory.Poinc GlobalTheory.Poinc.Sep
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.PoincareApproxValuesAtPointOfElementsStatement =====
