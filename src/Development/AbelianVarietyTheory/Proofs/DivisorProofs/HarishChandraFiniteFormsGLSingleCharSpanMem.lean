module

public import Development.AbelianVarietyTheory.Definitions.Divisors.CentralNilGL
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqZeroOfMemWeakIn

@[expose] public section

open NumberField GlobalTheory.CuspRep GlobalTheory.HCF GlobalTheory.CuspQuot MeasureTheory

noncomputable section

namespace GlobalTheory.HCF.FormsSub

variable {E : Type} [Field E] [NumberField E] [_root_.NumberField.IsTotallyComplex E] {a : ℕ}

theorem isAutForm_zero : IsAutForm (0 : Sm E a) := by
  constructor
  · intro γ g
    rfl
  · have : {k | finRep E a k (0 : Sm E a) = 0} = Set.univ := Set.eq_univ_of_forall fun k => map_zero _
    rw [this]; exact isOpen_univ
  · refine Submodule.finiteDimensional_of_le (S₂ := ⊥) (Submodule.span_le.2 ?_)
    rintro _ ⟨k, rfl⟩
    simp
  · refine Submodule.finiteDimensional_of_le (S₂ := ⊥) (Submodule.span_le.2 ?_)
    rintro _ ⟨z, hz, rfl⟩
    simp
  · intro g
    exact ⟨0, 0, fun y => by simp⟩

theorem isAutForm_add {φ ψ : Sm E a} (hφ : IsAutForm φ) (hψ : IsAutForm ψ) : IsAutForm (φ + ψ) := by
  constructor
  · intro γ g
    change φ.1 _ + ψ.1 _ = φ.1 _ + ψ.1 _
    rw [hφ.left, hψ.left]
  · exact isOpen_stab_of_mem_nhds _ _ <| Filter.mem_of_superset
      ((hφ.level.inter hψ.level).mem_nhds ⟨by simp, by simp⟩) fun k hk => by
        have h1 : finRep E a k φ = φ := hk.1
        have h2 : finRep E a k ψ = ψ := hk.2
        change finRep E a k (φ + ψ) = φ + ψ
        rw [map_add (f := _), h1, h2]
  · have := hφ.kfin
    have := hψ.kfin
    refine Submodule.finiteDimensional_of_le (S₂ := Submodule.span ℂ (Set.range fun k => cptRep E a k φ) ⊔
      Submodule.span ℂ (Set.range fun k => cptRep E a k ψ)) (Submodule.span_le.2 ?_)
    rintro _ ⟨k, rfl⟩
    simp only [SetLike.mem_coe, map_add (f := _)]
    exact Submodule.add_mem_sup (Submodule.subset_span ⟨k, rfl⟩) (Submodule.subset_span ⟨k, rfl⟩)
  · have := hφ.zfin
    have := hψ.zfin
    refine Submodule.finiteDimensional_of_le (S₂ := Submodule.span ℂ ((fun z : Module.End ℂ (Sm E a) => z φ) '' Zalg E a) ⊔
      Submodule.span ℂ ((fun z : Module.End ℂ (Sm E a) => z ψ) '' Zalg E a)) (Submodule.span_le.2 ?_)
    rintro _ ⟨z, hz, rfl⟩
    simp only [SetLike.mem_coe, map_add (f := _)]
    exact Submodule.add_mem_sup (Submodule.subset_span ⟨z, hz, rfl⟩) (Submodule.subset_span ⟨z, hz, rfl⟩)
  · intro g
    obtain ⟨C1, N1, h1⟩ := hφ.growth g
    obtain ⟨C2, N2, h2⟩ := hψ.growth g
    refine ⟨|C1| + |C2|, N1 + N2, fun y => ?_⟩
    have hy := one_le_height y
    have e1 : height y ^ N1 ≤ height y ^ (N1 + N2) := pow_le_pow_right₀ hy (by omega)
    have e2 : height y ^ N2 ≤ height y ^ (N1 + N2) := pow_le_pow_right₀ hy (by omega)
    have p1 : 0 ≤ height y ^ N1 := by positivity
    have p2 : 0 ≤ height y ^ N2 := by positivity
    change ‖φ.1 _ + ψ.1 _‖ ≤ _
    calc ‖φ.1 (g * infGL E a y) + ψ.1 (g * infGL E a y)‖
        ≤ ‖φ.1 (g * infGL E a y)‖ + ‖ψ.1 (g * infGL E a y)‖ := norm_add_le _ _
      _ ≤ C1 * height y ^ N1 + C2 * height y ^ N2 := add_le_add (h1 y) (h2 y)
      _ ≤ |C1| * height y ^ (N1 + N2) + |C2| * height y ^ (N1 + N2) := by
          exact add_le_add ((mul_le_mul_of_nonneg_right (le_abs_self C1) p1).trans
              (mul_le_mul_of_nonneg_left e1 (abs_nonneg _)))
            ((mul_le_mul_of_nonneg_right (le_abs_self C2) p2).trans
              (mul_le_mul_of_nonneg_left e2 (abs_nonneg _)))
      _ = _ := by ring

theorem isAutForm_smul (c : ℂ) {φ : Sm E a} (hφ : IsAutForm φ) : IsAutForm (c • φ) := by
  constructor
  · intro γ g
    change c • φ.1 _ = c • φ.1 _
    rw [hφ.left]
  · exact isOpen_stab_of_mem_nhds _ _ <| Filter.mem_of_superset
      (hφ.level.mem_nhds (by simp)) fun k hk => by
        have h1 : finRep E a k φ = φ := hk
        change finRep E a k (c • φ) = c • φ
        rw [map_smul, h1]
  · have := hφ.kfin
    refine Submodule.finiteDimensional_of_le (S₂ := Submodule.span ℂ (Set.range fun k => cptRep E a k φ))
      (Submodule.span_le.2 ?_)
    rintro _ ⟨k, rfl⟩
    simp only [SetLike.mem_coe, map_smul]
    exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨k, rfl⟩)
  · have := hφ.zfin
    refine Submodule.finiteDimensional_of_le (S₂ := Submodule.span ℂ ((fun z : Module.End ℂ (Sm E a) => z φ) '' Zalg E a))
      (Submodule.span_le.2 ?_)
    rintro _ ⟨z, hz, rfl⟩
    simp only [SetLike.mem_coe, map_smul]
    exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨z, hz, rfl⟩)
  · intro g
    obtain ⟨C, N, h1⟩ := hφ.growth g
    refine ⟨‖c‖ * C, N, fun y => ?_⟩
    change ‖c • φ.1 _‖ ≤ _
    rw [norm_smul, mul_assoc]
    exact mul_le_mul_of_nonneg_left (h1 y) (norm_nonneg _)

end GlobalTheory.HCF.FormsSub

