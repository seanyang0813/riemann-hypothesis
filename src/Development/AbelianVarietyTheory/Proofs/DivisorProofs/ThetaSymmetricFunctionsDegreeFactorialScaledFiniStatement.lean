module

public import Development.AbelianVarietyTheory.Definitions.Divisors.SymTupOne
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
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
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsOverIff
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaSymmetricFunctionsDegreeFactorialScaledFini, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaSymmetricFunctionsDegreeFactorialScaledFiniStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaSymmetricFunctionsDegreeFactorialScaledFini =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaSymmetricFunctionsDegreeFactorialScaledFini", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SymTupOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsOverIff\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.ZM GlobalTheory.ZH GlobalTheory.UMin GlobalTheory.UPoinc GlobalTheory.Ex.OneGen
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.UMin

open Polynomial

private theorem symTup_mul_left {R : Type} [CommRing R] {N : ℕ} (c : Fin N → R) (a : R) (j : Fin N) :
    symTup (fun b => a * c b) j = a ^ N.factorial * symTup c j := by
  have h : (Finset.univ.val.map fun b => a * c b) = (Finset.univ.val.map c).map (fun x => a • x) := by
    rw [Multiset.map_map]; rfl
  have hd : ((j : ℕ) + 1) ∣ N.factorial := Nat.dvd_factorial (Nat.succ_pos _) j.isLt
  unfold symTup
  rw [h, ← Multiset.pow_smul_esymm, smul_eq_mul, mul_pow, ← pow_mul, Nat.mul_div_cancel' hd]

theorem symTup_eq_finite (K : Type) [Field K] (N : ℕ) (e : Fin N → K) :
    {c : Fin N → K | symTup c = e}.Finite := by
  classical

  let A : Fin (N + 1) → Set K := fun k =>
    {x | ((k : ℕ) = 0 → x = 1) ∧ ∀ j : Fin N, (j : ℕ) + 1 = k → x ^ (N.factorial / ((j : ℕ) + 1)) = e j}
  have hA : ∀ k, (A k).Finite := by
    intro k
    by_cases hk : (k : ℕ) = 0
    · exact (Set.finite_singleton (1 : K)).subset fun x hx => hx.1 hk
    · have hk1 : (k : ℕ) - 1 < N := by omega
      let j : Fin N := ⟨(k : ℕ) - 1, hk1⟩
      have hj : (j : ℕ) + 1 = k := by simp [j]; omega
      have hpos : 0 < N.factorial / ((j : ℕ) + 1) :=
        Nat.div_pos ((Nat.succ_le_of_lt j.isLt).trans (Nat.self_le_factorial N)) (Nat.succ_pos _)
      refine (Polynomial.finite_setOf_isRoot (X_pow_sub_C_ne_zero hpos (e j))).subset ?_
      intro x hx
      simp [IsRoot, hx.2 j hj]
  let V : Set (Fin (N + 1) → K) := Set.pi Set.univ A
  have hV : V.Finite := Set.Finite.pi hA
  let poly : (Fin (N + 1) → K) → K[X] := fun s =>
    ∑ k : Fin (N + 1), (-1) ^ (k : ℕ) * (C (s k) * X ^ (N - (k : ℕ)))
  let R : Set K := ⋃ p ∈ poly '' V, {x | x ∈ p.roots}
  have hR : R.Finite := (hV.image poly).biUnion fun p _ => Multiset.finite_toSet p.roots
  refine (Set.Finite.pi (t := fun _ : Fin N => R) fun _ => hR).subset ?_
  intro c hc
  simp only [Set.mem_setOf_eq] at hc
  let m : Multiset K := Finset.univ.val.map c
  have hm : Multiset.card m = N := by simp [m]
  let s : Fin (N + 1) → K := fun k => m.esymm k
  have hs : s ∈ V := by
    intro k _
    refine ⟨fun hk => ?_, fun j hj => ?_⟩
    · simp [s, hk, Multiset.esymm]
    · have := congrFun hc j
      simp only [symTup] at this
      simp only [s, ← hj]
      exact this
  have hpoly : poly s = (m.map fun t => X - C t).prod := by
    rw [Multiset.prod_X_sub_X_eq_sum_esymm, hm, Finset.sum_range (fun j => (-1) ^ j * (C (m.esymm j) * X ^ (N - j)))]
  intro a _
  simp only [R, Set.mem_iUnion, Set.mem_image]
  refine ⟨poly s, ⟨s, hs, rfl⟩, ?_⟩
  simp only [Set.mem_setOf_eq, hpoly, Polynomial.roots_multiset_prod_X_sub_C]
  exact Multiset.mem_map_of_mem c (Finset.mem_univ a)

theorem symTup_scale_finite : ∀ (K : Type) [Field K] [IsAlgClosed K] (N : ℕ) (e : Fin N → K), ∃ T : Finset (Fin N → K),
    ∀ (c : Fin N → K) (a : K), a ≠ 0 → (∀ j, symTup c j = a * e j) → ∃ mu : K, mu ≠ 0 ∧ (fun b => mu * c b) ∈ T := by
  intro K _ _ N e
  refine ⟨(symTup_eq_finite K N e).toFinset, ?_⟩
  intro c a ha hc
  obtain ⟨mu, hmu⟩ := IsAlgClosed.exists_pow_nat_eq a⁻¹ (Nat.factorial_pos N)
  have hmu0 : mu ≠ 0 := by
    rintro rfl
    rw [zero_pow (Nat.factorial_pos N).ne'] at hmu
    exact inv_ne_zero ha hmu.symm
  refine ⟨mu, hmu0, ?_⟩
  rw [Set.Finite.mem_toFinset, Set.mem_setOf_eq]
  funext j
  rw [symTup_mul_left, hmu, hc, ← _root_.mul_assoc, inv_mul_cancel₀ ha, _root_.one_mul]

end GlobalTheory.UMin
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaSymmetricFunctionsDegreeFactorialScaledFini =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaSymmetricFunctionsDegreeFactorialScaledFiniStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaSymmetricFunctionsDegreeFactorialScaledFiniStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SymTupOne\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaSymmetricFunctionsDegreeFactorialScaledFini\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsOverIff\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.ZM GlobalTheory.ZH GlobalTheory.UMin GlobalTheory.UPoinc GlobalTheory.Ex.OneGen
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaSymmetricFunctionsDegreeFactorialScaledFiniStatement =====
