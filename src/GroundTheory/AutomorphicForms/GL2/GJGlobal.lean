module

public import GroundTheory.AutomorphicForms.AutomorphicFormSpaces.ConstantTerm
public import GroundTheory.AutomorphicForms.GL2.GJGlobalDefs
public import GroundTheory.AutomorphicForms.GL2.GJMatrixSchwartz
public import GroundTheory.AutomorphicForms.GL2.GJGlobalLatticeBounds
public import GroundTheory.AutomorphicForms.GL2.GJGlobalMellin
public import GroundTheory.AutomorphicForms.GL2.GJGlobalTheta
public import Mathlib.Analysis.CStarAlgebra.Classes
public import Mathlib.Analysis.MellinTransform
import Aesop.Main
import GroundTheory.AutomorphicForms.AutomorphicFormSpaces.Uniform
import GroundTheory.AutomorphicForms.GL2.GJGlobalHaar
import GroundTheory.AutomorphicForms.GL2.GJGlobalLatticeCont

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.AutomorphicForms.GL2.GJGlobalBound, GroundTheory.AutomorphicForms.GL2.GJGlobalEntire, GroundTheory.AutomorphicForms.GL2.GJGlobal

-- ===== clump member: GroundTheory.AutomorphicForms.GL2.GJGlobalBound =====
-- clump-header: {"m": "GroundTheory.AutomorphicForms.GL2.GJGlobalBound", "h": "module\n\npublic import GroundTheory.AutomorphicForms.AutomorphicFormSpaces.ConstantTerm\npublic import GroundTheory.AutomorphicForms.GL2.GJGlobalDefs\npublic import GroundTheory.AutomorphicForms.GL2.GJMatrixSchwartz\nimport Aesop.Main\npublic import GroundTheory.AutomorphicForms.GL2.GJGlobalLatticeBounds\npublic import GroundTheory.AutomorphicForms.GL2.GJGlobalMellin\npublic import GroundTheory.AutomorphicForms.GL2.GJGlobalTheta\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Set Filter NumberField ComplexConjugate
open scoped NumberField.AdeleRing

namespace GroundTheory.Automorphic

noncomputable section

namespace GJGlobal

open Reduction AutomorphicForm RightCosetSpace GJMatrix

variable {K : Type*} [Field K] [NumberField K] {n : ℕ}

theorem integrableOn_rpow_mul_ite {A B a b σ : ℝ} (ha : -σ < a) (hb : b < -σ) :
    IntegrableOn (fun t : ℝ => t ^ (σ - 1) * (if t < 1 then A * t ^ a else B * t ^ b)) (Ioi 0) := by
  have hsplit : Ioi (0 : ℝ) = Ioo 0 1 ∪ Ici 1 := by
    ext t
    simp only [mem_Ioi, mem_union, mem_Ioo, mem_Ici]
    constructor
    · intro ht
      by_cases h : t < 1
      · exact Or.inl ⟨ht, h⟩
      · exact Or.inr (not_lt.1 h)
    · rintro (h | h)
      · exact h.1
      · linarith
  rw [hsplit]
  refine IntegrableOn.union ?_ ?_
  · have h1 : IntegrableOn (fun t : ℝ => A * t ^ (σ - 1 + a)) (Ioo 0 1) :=
      ((intervalIntegral.integrableOn_Ioo_rpow_iff one_pos).2 (by linarith)).const_mul A
    refine h1.congr_fun (fun t ht => ?_) measurableSet_Ioo
    simp only [if_pos ht.2]
    rw [Real.rpow_add ht.1]
    ring
  · rw [integrableOn_Ici_iff_integrableOn_Ioi]
    have h1 : IntegrableOn (fun t : ℝ => B * t ^ (σ - 1 + b)) (Ioi 1) :=
      ((integrableOn_Ioi_rpow_iff one_pos).2 (by linarith)).const_mul B
    refine h1.congr_fun (fun t ht => ?_) measurableSet_Ioi
    have ht' : ¬ t < 1 := not_lt.2 (le_of_lt ht)
    simp only [if_neg ht']
    rw [Real.rpow_add (lt_trans one_pos ht)]
    ring

theorem tsum_norm_GL_le {Ψ : Matrix (Fin n) (Fin n) 𝔸[K] → ℂ} (a b : Matrix (Fin n) (Fin n) 𝔸[K])
    (hs : Summable fun ξ : Matrix (Fin n) (Fin n) K => ‖Ψ (a * ratMat ξ * b)‖) :
    Summable (fun γ : GL (Fin n) K => ‖Ψ (a * ratMat (γ : Matrix (Fin n) (Fin n) K) * b)‖) ∧
      ∑' γ : GL (Fin n) K, ‖Ψ (a * ratMat (γ : Matrix (Fin n) (Fin n) K) * b)‖ ≤
        ∑' ξ : Matrix (Fin n) (Fin n) K, ‖Ψ (a * ratMat ξ * b)‖ := by
  have hs' := hs.comp_injective (Units.val_injective (α := Matrix (Fin n) (Fin n) K))
  exact ⟨hs', Summable.tsum_le_tsum_of_inj _ Units.val_injective (fun _ _ => norm_nonneg _)
    (fun _ => le_rfl) hs' hs⟩

theorem tsum_norm_inv_eq (Ψ : Matrix (Fin n) (Fin n) 𝔸[K] → ℂ) (t : {r : ℝ // 0 < r})
    (x y : AdelicGLn.AdelicGL K n) :
    ∑' γ : GL (Fin n) K, ‖Ψ (((centralSection K n t * x⁻¹ * AdelicGLn.diagonal K n γ * y)⁻¹ :
      AdelicGLn.AdelicGL K n) : Matrix (Fin n) (Fin n) 𝔸[K])‖ =
    ∑' γ : GL (Fin n) K, ‖Ψ (((centralSection K n t⁻¹ * y⁻¹ : AdelicGLn.AdelicGL K n) :
      Matrix (Fin n) (Fin n) 𝔸[K]) * ratMat (γ : Matrix (Fin n) (Fin n) K) *
        (x : Matrix (Fin n) (Fin n) 𝔸[K]))‖ := by
  rw [← (Equiv.inv (GL (Fin n) K)).tsum_eq]
  refine tsum_congr fun γ => ?_
  congr 2
  simp only [Equiv.inv_apply]
  have e : (centralSection K n t * x⁻¹ * AdelicGLn.diagonal K n γ⁻¹ * y)⁻¹ =
      centralSection K n t⁻¹ * y⁻¹ * AdelicGLn.diagonal K n γ * x := by
    rw [map_inv (AdelicGLn.diagonal K n)]
    have e1 : (centralSection K n t * x⁻¹ * (AdelicGLn.diagonal K n γ)⁻¹ * y)⁻¹ =
        (y⁻¹ * AdelicGLn.diagonal K n γ * x) * (centralSection K n t)⁻¹ := by group
    rw [e1, ← map_inv, ← centralSection_mul_comm t⁻¹ (y⁻¹ * AdelicGLn.diagonal K n γ * x)]
    simp only [mul_assoc]
  rw [e, Units.val_mul, Units.val_mul, coe_diagonal]

theorem inv_centralSection_mul (t : {r : ℝ // 0 < r}) (x y : AdelicGLn.AdelicGL K n)
    (γ : GL (Fin n) K) :
    (centralSection K n t * x⁻¹ * AdelicGLn.diagonal K n γ * y)⁻¹ =
      centralSection K n t⁻¹ * y⁻¹ * AdelicGLn.diagonal K n γ⁻¹ * x := by
  rw [map_inv (AdelicGLn.diagonal K n)]
  have e1 : (centralSection K n t * x⁻¹ * AdelicGLn.diagonal K n γ * y)⁻¹ =
      (y⁻¹ * (AdelicGLn.diagonal K n γ)⁻¹ * x) * (centralSection K n t)⁻¹ := by group
  rw [e1, ← map_inv (centralSection K n) t,
    ← centralSection_mul_comm t⁻¹ (y⁻¹ * (AdelicGLn.diagonal K n γ)⁻¹ * x)]
  simp only [mul_assoc]

theorem rpow_le_of_one_lt {s M : ℝ} (hs : 1 ≤ s) : s ^ M ≤ s ^ max M 0 :=
  Real.rpow_le_rpow_of_exponent_le hs (le_max_left _ _)

theorem exists_bound_GL (hn0 : 0 < n) {Φ : Matrix (Fin n) (Fin n) 𝔸[K] → ℂ}
    (hΦ : Φ ∈ matrixSchwartzBruhat K n) {φ₁ φ₂ : AdelicGLn.AdelicGL K n → ℂ}
    (h₁ : φ₁ ∈ cuspForms K n) (h₂ : φ₂ ∈ cuspForms K n) (N : ℝ) :
    ∃ C M D : ℝ, ∀ (t : {r : ℝ // 0 < r}) (x y : normOneGL (K := K) (n := n)),
      Summable (fun γ : GL (Fin n) K => ‖Φ ((centralSection K n t * (x : AdelicGLn.AdelicGL K n)⁻¹ *
        AdelicGLn.diagonal K n γ * (y : AdelicGLn.AdelicGL K n) : AdelicGLn.AdelicGL K n) :
          Matrix (Fin n) (Fin n) 𝔸[K])‖) ∧
      ‖φ₂ (x : AdelicGLn.AdelicGL K n)‖ * ‖φ₁ (y : AdelicGLn.AdelicGL K n)‖ *
        ∑' γ : GL (Fin n) K, ‖Φ ((centralSection K n t * (x : AdelicGLn.AdelicGL K n)⁻¹ *
          AdelicGLn.diagonal K n γ * (y : AdelicGLn.AdelicGL K n) : AdelicGLn.AdelicGL K n) :
            Matrix (Fin n) (Fin n) 𝔸[K])‖ ≤
        (if (t : ℝ) < 1 then C * (t : ℝ) ^ (-max M 0) else D * (t : ℝ) ^ (-N)) := by
  obtain ⟨C₁, M₁, hC₁0, hC₁⟩ := exists_bound_tsum hΦ h₁ h₂
  obtain ⟨D, -, hD⟩ := exists_decay_tsum hn0 hΦ h₁ h₂ N
  refine ⟨C₁, M₁, D, fun t x y => ?_⟩
  obtain ⟨hs, hb⟩ := hC₁ x x.2 y y.2 t
  have hGL := tsum_norm_GL_le _ _ hs
  have e : ∀ γ : GL (Fin n) K, ‖Φ ((centralSection K n t * (x : AdelicGLn.AdelicGL K n)⁻¹ *
      AdelicGLn.diagonal K n γ * (y : AdelicGLn.AdelicGL K n) : AdelicGLn.AdelicGL K n) :
        Matrix (Fin n) (Fin n) 𝔸[K])‖ =
      ‖Φ (((centralSection K n t * (x : AdelicGLn.AdelicGL K n)⁻¹ : AdelicGLn.AdelicGL K n) :
        Matrix (Fin n) (Fin n) 𝔸[K]) * ratMat (γ : Matrix (Fin n) (Fin n) K) *
          ((y : AdelicGLn.AdelicGL K n) : Matrix (Fin n) (Fin n) 𝔸[K]))‖ := fun γ => by
    rw [coe_mul_diagonal_mul]
  simp_rw [e]
  refine ⟨hGL.1, ?_⟩
  split_ifs with ht
  · have ht0 : (0 : ℝ) < t := t.2
    have h1 : 1 ≤ (t : ℝ)⁻¹ := (one_le_inv₀ ht0).2 ht.le
    have hmax : max 1 (t : ℝ)⁻¹ = (t : ℝ)⁻¹ := max_eq_right h1
    calc _ ≤ ‖φ₂ (x : AdelicGLn.AdelicGL K n)‖ * ‖φ₁ (y : AdelicGLn.AdelicGL K n)‖ *
          ∑' ξ : Matrix (Fin n) (Fin n) K, ‖Φ (((centralSection K n t *
            (x : AdelicGLn.AdelicGL K n)⁻¹ : AdelicGLn.AdelicGL K n) :
              Matrix (Fin n) (Fin n) 𝔸[K]) * ratMat ξ *
                ((y : AdelicGLn.AdelicGL K n) : Matrix (Fin n) (Fin n) 𝔸[K]))‖ :=
          mul_le_mul_of_nonneg_left hGL.2 (mul_nonneg (norm_nonneg _) (norm_nonneg _))
      _ ≤ C₁ * (max 1 (t : ℝ)⁻¹) ^ M₁ := hb
      _ ≤ C₁ * (t : ℝ) ^ (-max M₁ 0) := by
          rw [hmax, Real.rpow_neg ht0.le, ← Real.inv_rpow ht0.le]
          exact mul_le_mul_of_nonneg_left (rpow_le_of_one_lt h1) hC₁0
  · have := (hD x x.2 y y.2 t (not_lt.1 ht)).2
    simp_rw [e] at this
    exact this

theorem exists_bound_GL_inv (hn0 : 0 < n) {Φ : Matrix (Fin n) (Fin n) 𝔸[K] → ℂ}
    (hΦ : Φ ∈ matrixSchwartzBruhat K n) {φ₁ φ₂ : AdelicGLn.AdelicGL K n → ℂ}
    (h₁ : φ₁ ∈ cuspForms K n) (h₂ : φ₂ ∈ cuspForms K n) (N : ℝ) :
    ∃ C M D : ℝ, ∀ (t : {r : ℝ // 0 < r}) (x y : normOneGL (K := K) (n := n)),
      Summable (fun γ : GL (Fin n) K => ‖adelicMatrixFourier K Φ
        (((centralSection K n t * (x : AdelicGLn.AdelicGL K n)⁻¹ * AdelicGLn.diagonal K n γ *
          (y : AdelicGLn.AdelicGL K n))⁻¹ : AdelicGLn.AdelicGL K n) :
            Matrix (Fin n) (Fin n) 𝔸[K])‖) ∧
      ‖φ₂ (x : AdelicGLn.AdelicGL K n)‖ * ‖φ₁ (y : AdelicGLn.AdelicGL K n)‖ *
        ∑' γ : GL (Fin n) K, ‖adelicMatrixFourier K Φ
          (((centralSection K n t * (x : AdelicGLn.AdelicGL K n)⁻¹ * AdelicGLn.diagonal K n γ *
            (y : AdelicGLn.AdelicGL K n))⁻¹ : AdelicGLn.AdelicGL K n) :
              Matrix (Fin n) (Fin n) 𝔸[K])‖ ≤
        (if (t : ℝ) < 1 then D * (t : ℝ) ^ N else C * (t : ℝ) ^ max M 0) := by
  have hΦh := adelicMatrixFourier_mem hΦ
  obtain ⟨C₂, M₂, hC₂0, hC₂⟩ := exists_bound_tsum hΦh h₂ h₁
  obtain ⟨D, -, hD⟩ := exists_decay_tsum hn0 hΦh h₂ h₁ N
  refine ⟨C₂, M₂, D, fun t x y => ?_⟩
  set Φh := adelicMatrixFourier K Φ
  obtain ⟨hs, hb⟩ := hC₂ y y.2 x x.2 t⁻¹
  have hGL := tsum_norm_GL_le _ _ hs
  have e : ∀ γ : GL (Fin n) K, ‖Φh (((centralSection K n t * (x : AdelicGLn.AdelicGL K n)⁻¹ *
      AdelicGLn.diagonal K n γ * (y : AdelicGLn.AdelicGL K n))⁻¹ : AdelicGLn.AdelicGL K n) :
        Matrix (Fin n) (Fin n) 𝔸[K])‖ =
      (fun δ : GL (Fin n) K => ‖Φh (((centralSection K n t⁻¹ * (y : AdelicGLn.AdelicGL K n)⁻¹ :
        AdelicGLn.AdelicGL K n) : Matrix (Fin n) (Fin n) 𝔸[K]) *
          ratMat (δ : Matrix (Fin n) (Fin n) K) *
            ((x : AdelicGLn.AdelicGL K n) : Matrix (Fin n) (Fin n) 𝔸[K]))‖) γ⁻¹ := fun γ => by
    simp only
    rw [inv_centralSection_mul, coe_mul_diagonal_mul]
  have hsum : Summable (fun γ : GL (Fin n) K => ‖Φh (((centralSection K n t *
      (x : AdelicGLn.AdelicGL K n)⁻¹ * AdelicGLn.diagonal K n γ *
        (y : AdelicGLn.AdelicGL K n))⁻¹ : AdelicGLn.AdelicGL K n) :
          Matrix (Fin n) (Fin n) 𝔸[K])‖) := by
    simp_rw [e]
    exact (Equiv.inv (GL (Fin n) K)).summable_iff.2 hGL.1
  refine ⟨hsum, ?_⟩
  rw [tsum_norm_inv_eq]
  have ht0 : (0 : ℝ) < t := t.2
  have hti : ((t⁻¹ : {r : ℝ // 0 < r}) : ℝ) = (t : ℝ)⁻¹ := Positive.coe_inv t
  split_ifs with ht
  · have h1 : 1 ≤ ((t⁻¹ : {r : ℝ // 0 < r}) : ℝ) := by
      rw [hti]
      exact (one_le_inv₀ ht0).2 ht.le
    have := (hD y y.2 x x.2 t⁻¹ h1).2
    have e2 : ∀ γ : GL (Fin n) K, ‖Φh ((centralSection K n t⁻¹ * (y : AdelicGLn.AdelicGL K n)⁻¹ *
        AdelicGLn.diagonal K n γ * (x : AdelicGLn.AdelicGL K n) : AdelicGLn.AdelicGL K n) :
          Matrix (Fin n) (Fin n) 𝔸[K])‖ =
        ‖Φh (((centralSection K n t⁻¹ * (y : AdelicGLn.AdelicGL K n)⁻¹ : AdelicGLn.AdelicGL K n) :
          Matrix (Fin n) (Fin n) 𝔸[K]) * ratMat (γ : Matrix (Fin n) (Fin n) K) *
            ((x : AdelicGLn.AdelicGL K n) : Matrix (Fin n) (Fin n) 𝔸[K]))‖ := fun γ => by
      rw [coe_mul_diagonal_mul]
    simp_rw [e2] at this
    rw [mul_comm ‖φ₂ _‖]
    calc _ ≤ D * ((t⁻¹ : {r : ℝ // 0 < r}) : ℝ) ^ (-N) := this
      _ = D * (t : ℝ) ^ N := by
          rw [hti, Real.inv_rpow ht0.le, Real.rpow_neg ht0.le, inv_inv]
  · have h1 : 1 ≤ (t : ℝ) := not_lt.1 ht
    rw [mul_comm ‖φ₂ _‖]
    calc _ ≤ ‖φ₁ (y : AdelicGLn.AdelicGL K n)‖ * ‖φ₂ (x : AdelicGLn.AdelicGL K n)‖ *
          ∑' ξ : Matrix (Fin n) (Fin n) K, ‖Φh (((centralSection K n t⁻¹ *
            (y : AdelicGLn.AdelicGL K n)⁻¹ : AdelicGLn.AdelicGL K n) :
              Matrix (Fin n) (Fin n) 𝔸[K]) * ratMat ξ *
                ((x : AdelicGLn.AdelicGL K n) : Matrix (Fin n) (Fin n) 𝔸[K]))‖ :=
          mul_le_mul_of_nonneg_left hGL.2 (mul_nonneg (norm_nonneg _) (norm_nonneg _))
      _ ≤ C₂ * (max 1 ((t⁻¹ : {r : ℝ // 0 < r}) : ℝ)⁻¹) ^ M₂ := hb
      _ ≤ C₂ * (t : ℝ) ^ max M₂ 0 := by
          rw [hti, inv_inv, max_eq_right h1]
          exact mul_le_mul_of_nonneg_left (rpow_le_of_one_lt h1) hC₂0

local notation "Γ₁" => rationalGLOne (K := K) (n := n)

variable (μ : Measure (normOneGL (K := K) (n := n))) [μ.IsHaarMeasure]

theorem norm_thetaPairing_le {φ₁ φ₂ Ξ : AdelicGLn.AdelicGL K n → ℂ} (t : {r : ℝ // 0 < r}) {b : ℝ}
    (hb : ∀ x y : normOneGL (K := K) (n := n),
      Summable (fun γ : GL (Fin n) K => ‖Ξ (centralSection K n t * (x : AdelicGLn.AdelicGL K n)⁻¹ *
        AdelicGLn.diagonal K n γ * (y : AdelicGLn.AdelicGL K n))‖) ∧
      ‖φ₂ (x : AdelicGLn.AdelicGL K n)‖ * ‖φ₁ (y : AdelicGLn.AdelicGL K n)‖ *
        ∑' γ : GL (Fin n) K, ‖Ξ (centralSection K n t * (x : AdelicGLn.AdelicGL K n)⁻¹ *
          AdelicGLn.diagonal K n γ * (y : AdelicGLn.AdelicGL K n))‖ ≤ b) :
    ‖thetaPairing μ φ₁ φ₂ Ξ t‖ ≤ (μ (fundamentalDomain Γ₁)).toReal ^ 2 * b := by
  have hF : μ (fundamentalDomain Γ₁) < ⊤ := measure_fundamentalDomain_rationalGLOne_lt_top μ
  have hT : ∀ x y : normOneGL (K := K) (n := n), ‖conj (φ₂ (x : AdelicGLn.AdelicGL K n)) *
      φ₁ (y : AdelicGLn.AdelicGL K n) * ∑' γ : GL (Fin n) K,
        Ξ (centralSection K n t * (x : AdelicGLn.AdelicGL K n)⁻¹ *
          AdelicGLn.diagonal K n γ * (y : AdelicGLn.AdelicGL K n))‖ ≤ b := by
    intro x y
    obtain ⟨hs, hle⟩ := hb x y
    rw [norm_mul, norm_mul, Complex.norm_conj]
    exact le_trans (mul_le_mul_of_nonneg_left (norm_tsum_le_tsum_norm hs)
      (mul_nonneg (norm_nonneg _) (norm_nonneg _))) hle
  unfold thetaPairing
  have hin : ∀ x : normOneGL (K := K) (n := n), ‖∫ y in fundamentalDomain Γ₁,
      conj (φ₂ (x : AdelicGLn.AdelicGL K n)) * φ₁ (y : AdelicGLn.AdelicGL K n) *
        ∑' γ : GL (Fin n) K, Ξ (centralSection K n t * (x : AdelicGLn.AdelicGL K n)⁻¹ *
          AdelicGLn.diagonal K n γ * (y : AdelicGLn.AdelicGL K n)) ∂μ‖ ≤
        b * (μ (fundamentalDomain Γ₁)).toReal := fun x =>
    norm_setIntegral_le_of_norm_le_const hF fun y _ => hT x y
  calc _ ≤ (b * (μ (fundamentalDomain Γ₁)).toReal) * (μ (fundamentalDomain Γ₁)).toReal :=
        norm_setIntegral_le_of_norm_le_const hF fun x _ => hin x
    _ = _ := by ring

end GJGlobal

end

end GroundTheory.Automorphic
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.AutomorphicForms.GL2.GJGlobalBound =====

-- ===== clump member: GroundTheory.AutomorphicForms.GL2.GJGlobalEntire =====
-- clump-header: {"m": "GroundTheory.AutomorphicForms.GL2.GJGlobalEntire", "h": "module\n\npublic import Mathlib.Analysis.CStarAlgebra.Classes\npublic import Mathlib.Analysis.MellinTransform\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Set Filter Asymptotics Complex
open scoped Topology

namespace GroundTheory.Automorphic

noncomputable section

namespace GJGlobal

variable {J J' : ℝ → ℂ}

theorem locallyIntegrableOn_indicator_Ici (hJ : ContinuousOn J (Ioi 0)) :
    LocallyIntegrableOn ((Ici (1 : ℝ)).indicator J) (Ioi 0) := by
  rw [locallyIntegrableOn_iff (isOpen_Ioi.isLocallyClosed)]
  intro k hk hkc
  exact ((hJ.mono hk).integrableOn_compact hkc).indicator measurableSet_Ici

theorem locallyIntegrableOn_indicator_Ioi (hJ : ContinuousOn J (Ioi 0)) :
    LocallyIntegrableOn ((Ioi (1 : ℝ)).indicator J) (Ioi 0) := by
  rw [locallyIntegrableOn_iff (isOpen_Ioi.isLocallyClosed)]
  intro k hk hkc
  exact ((hJ.mono hk).integrableOn_compact hkc).indicator measurableSet_Ioi

theorem isBigO_indicator_atTop {A : Set ℝ} (hA : A ∈ atTop) {a : ℝ}
    (h : J =O[atTop] (· ^ (-a))) : A.indicator J =O[atTop] (· ^ (-a)) := by
  refine EventuallyEq.trans_isBigO ?_ h
  filter_upwards [hA] with t ht
  exact indicator_of_mem ht J

theorem isBigO_indicator_nhdsGT {A : Set ℝ} (hA : A ⊆ Ici 1) (b : ℝ) :
    A.indicator J =O[𝓝[>] 0] (· ^ (-b)) := by
  refine EventuallyEq.trans_isBigO (f₂ := fun _ => (0 : ℂ)) ?_ (isBigO_zero _ _)
  filter_upwards [Ioo_mem_nhdsGT (show (0 : ℝ) < 1 by norm_num)] with t ht
  exact indicator_of_notMem (fun h => absurd (hA h) (not_le.2 ht.2)) J

theorem differentiable_mellin_indicator {A : Set ℝ} (hA : A ⊆ Ici 1) (hAt : A ∈ atTop)
    (hloc : LocallyIntegrableOn (A.indicator J) (Ioi 0))
    (hd : ∀ a : ℝ, J =O[atTop] (· ^ (-a))) : Differentiable ℂ (mellin (A.indicator J)) := by
  intro w
  exact mellin_differentiableAt_of_isBigO_rpow hloc (isBigO_indicator_atTop hAt (hd (w.re + 1)))
    (lt_add_one _) (isBigO_indicator_nhdsGT hA (w.re - 1)) (sub_one_lt _)

theorem mellinConvergent_indicator {A : Set ℝ} (hA : MeasurableSet A) {w : ℂ}
    (hc : MellinConvergent J w) : MellinConvergent (A.indicator J) w := by
  have : (fun t : ℝ => (t : ℂ) ^ (w - 1) • A.indicator J t) =
      A.indicator (fun t : ℝ => (t : ℂ) ^ (w - 1) • J t) := by
    funext t
    by_cases ht : t ∈ A <;> simp [ht]
  unfold MellinConvergent
  rw [this]
  exact hc.indicator hA

theorem mellin_eq_add_of_convergent {w : ℂ} (hc : MellinConvergent J w) :
    mellin J w = mellin ((Ici (1 : ℝ)).indicator J) w + mellin ((Iio (1 : ℝ)).indicator J) w := by
  have h1 := mellinConvergent_indicator (J := J) (A := Ici 1) measurableSet_Ici hc
  have h2 := mellinConvergent_indicator (J := J) (A := Iio 1) measurableSet_Iio hc
  unfold mellin
  rw [← integral_add h1 h2]
  refine setIntegral_congr_fun measurableSet_Ioi fun t _ => ?_
  rw [← smul_add]
  congr 1
  have := Set.indicator_self_add_compl (Ici (1 : ℝ)) J
  rw [compl_Ici] at this
  exact (congrFun this t).symm

theorem mellin_indicator_Iio_eq {κ : ℝ} (hsym : ∀ t : ℝ, 0 < t → J t = (t : ℂ) ^ (-(κ : ℂ)) * J' t⁻¹)
    (w : ℂ) :
    mellin ((Iio (1 : ℝ)).indicator J) w = mellin ((Ioi (1 : ℝ)).indicator J') (κ - w) := by
  have e : mellin ((Iio (1 : ℝ)).indicator J) w =
      mellin (fun t : ℝ => (t : ℂ) ^ (-(κ : ℂ)) • (fun u : ℝ => (Ioi (1 : ℝ)).indicator J' u⁻¹) t) w := by
    unfold mellin
    refine setIntegral_congr_fun measurableSet_Ioi fun t (ht : 0 < t) => ?_
    simp only [smul_eq_mul]
    congr 1
    by_cases h1 : t < 1
    · have : 1 < t⁻¹ := one_lt_inv₀ ht |>.2 h1
      rw [indicator_of_mem (show t ∈ Iio 1 from h1), indicator_of_mem (show t⁻¹ ∈ Ioi 1 from this),
        hsym t ht]
    · have : ¬ 1 < t⁻¹ := fun h => h1 ((one_lt_inv₀ ht).1 h)
      rw [indicator_of_notMem (show t ∉ Iio 1 from h1),
        indicator_of_notMem (show t⁻¹ ∉ Ioi 1 from this), mul_zero]
  rw [e, mellin_cpow_smul, mellin_comp_inv]
  congr 1
  ring

theorem mellin_indicator_Ici_eq_Ioi (f : ℝ → ℂ) (w : ℂ) :
    mellin ((Ici (1 : ℝ)).indicator f) w = mellin ((Ioi (1 : ℝ)).indicator f) w := by
  unfold mellin
  refine setIntegral_congr_ae measurableSet_Ioi ?_
  have h : ∀ᵐ t : ℝ, t ≠ 1 := by
    simp [ae_iff, measure_singleton]
  filter_upwards [h] with t ht _
  congr 1
  by_cases h1 : 1 < t
  · rw [indicator_of_mem (show t ∈ Ici 1 from h1.le), indicator_of_mem (show t ∈ Ioi 1 from h1)]
  · have h2 : ¬ 1 ≤ t := fun h => h1 (lt_of_le_of_ne h (Ne.symm ht))
    rw [indicator_of_notMem (show t ∉ Ici 1 from h2), indicator_of_notMem (show t ∉ Ioi 1 from h1)]

theorem symm_of_symm {κ : ℝ} (hsym : ∀ t : ℝ, 0 < t → J t = (t : ℂ) ^ (-(κ : ℂ)) * J' t⁻¹) :
    ∀ t : ℝ, 0 < t → J' t = (t : ℂ) ^ (-(κ : ℂ)) * J t⁻¹ := by
  intro t ht
  have harg : (t : ℂ).arg ≠ Real.pi := by
    rw [arg_ofReal_of_nonneg ht.le]
    exact Real.pi_pos.ne
  rw [hsym t⁻¹ (inv_pos.2 ht), inv_inv, ← mul_assoc, ofReal_inv, inv_cpow _ _ harg,
    mul_inv_cancel₀ (cpow_ne_zero_iff.2 (Or.inl (ofReal_ne_zero.2 ht.ne'))), one_mul]

theorem exists_entire_of_symm {κ : ℝ} (hJ : ContinuousOn J (Ioi 0)) (hJ' : ContinuousOn J' (Ioi 0))
    (hsym : ∀ t : ℝ, 0 < t → J t = (t : ℂ) ^ (-(κ : ℂ)) * J' t⁻¹)
    (hdJ : ∀ a : ℝ, J =O[atTop] (· ^ (-a))) (hdJ' : ∀ a : ℝ, J' =O[atTop] (· ^ (-a))) :
    ∃ Λ Λ' : ℂ → ℂ, Differentiable ℂ Λ ∧ Differentiable ℂ Λ' ∧
      (∀ w, MellinConvergent J w → Λ w = mellin J w) ∧
      (∀ w, MellinConvergent J' w → Λ' w = mellin J' w) ∧ ∀ w, Λ w = Λ' (κ - w) := by
  have hsym' := symm_of_symm hsym
  have hIoi : Ioi (1 : ℝ) ∈ atTop := Ioi_mem_atTop 1
  have hIci : Ici (1 : ℝ) ∈ atTop := Ici_mem_atTop 1
  have d1 := differentiable_mellin_indicator (subset_refl _) hIci
    (locallyIntegrableOn_indicator_Ici hJ) hdJ
  have d2 := differentiable_mellin_indicator Ioi_subset_Ici_self hIoi
    (locallyIntegrableOn_indicator_Ioi hJ') hdJ'
  have d1' := differentiable_mellin_indicator (subset_refl _) hIci
    (locallyIntegrableOn_indicator_Ici hJ') hdJ'
  have d2' := differentiable_mellin_indicator Ioi_subset_Ici_self hIoi
    (locallyIntegrableOn_indicator_Ioi hJ) hdJ
  refine ⟨fun w => mellin ((Ici (1 : ℝ)).indicator J) w + mellin ((Ioi (1 : ℝ)).indicator J') (κ - w),
    fun w => mellin ((Ici (1 : ℝ)).indicator J') w + mellin ((Ioi (1 : ℝ)).indicator J) (κ - w),
    d1.add (d2.comp ((differentiable_const _).sub differentiable_id)),
    d1'.add (d2'.comp ((differentiable_const _).sub differentiable_id)), ?_, ?_, ?_⟩
  · intro w hc
    rw [mellin_eq_add_of_convergent hc, mellin_indicator_Iio_eq hsym]
  · intro w hc
    rw [mellin_eq_add_of_convergent hc, mellin_indicator_Iio_eq hsym']
  · intro w
    simp only [sub_sub_cancel]
    rw [add_comm, mellin_indicator_Ici_eq_Ioi J, mellin_indicator_Ici_eq_Ioi J']

end GJGlobal

end

end GroundTheory.Automorphic
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.AutomorphicForms.GL2.GJGlobalEntire =====

-- ===== clump member: GroundTheory.AutomorphicForms.GL2.GJGlobal =====
-- clump-header: {"m": "GroundTheory.AutomorphicForms.GL2.GJGlobal", "h": "module\n\npublic import GroundTheory.AutomorphicForms.AutomorphicFormSpaces.ConstantTerm\npublic import GroundTheory.AutomorphicForms.GL2.GJGlobalDefs\npublic import GroundTheory.AutomorphicForms.GL2.GJMatrixSchwartz\npublic import Mathlib.Analysis.MellinTransform\nimport GroundTheory.AutomorphicForms.AutomorphicFormSpaces.Uniform\npublic import GroundTheory.AutomorphicForms.GL2.GJGlobalBound\npublic import GroundTheory.AutomorphicForms.GL2.GJGlobalEntire\nimport GroundTheory.AutomorphicForms.GL2.GJGlobalHaar\nimport GroundTheory.AutomorphicForms.GL2.GJGlobalLatticeBounds\nimport GroundTheory.AutomorphicForms.GL2.GJGlobalLatticeCont\nimport GroundTheory.AutomorphicForms.GL2.GJGlobalMellin\nimport GroundTheory.AutomorphicForms.GL2.GJGlobalTheta\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MeasureTheory Set Filter NumberField ComplexConjugate Asymptotics
open scoped NumberField.AdeleRing

namespace GroundTheory.Automorphic

noncomputable section

namespace GJGlobal

open Reduction AutomorphicForm RightCosetSpace GJMatrix

variable {K : Type*} [Field K] [NumberField K] {n : ℕ}

theorem continuousOn_dite {f : {r : ℝ // 0 < r} → ℂ} (hf : Continuous f) :
    ContinuousOn (fun t : ℝ => if h : 0 < t then f ⟨t, h⟩ else 0) (Ioi 0) := by
  rw [continuousOn_iff_continuous_domRestrict]
  have e : (Ioi (0 : ℝ)).domRestrict (fun t : ℝ => if h : 0 < t then f ⟨t, h⟩ else 0) =
      fun t : Ioi (0 : ℝ) => f ⟨t.1, t.2⟩ := by
    funext t
    rw [Set.domRestrict_apply, dif_pos (show (0 : ℝ) < t.1 from t.2)]
  rw [e]
  exact hf.comp (continuous_subtype_val.subtype_mk _)

theorem mellinConvergent_of_bound {J : ℝ → ℂ} (hJ : ContinuousOn J (Ioi 0)) {B : ℝ → ℝ} {V : ℝ}
    (hB : ∀ t : ℝ, 0 < t → ‖J t‖ ≤ V * B t) {w : ℂ}
    (hint : IntegrableOn (fun t : ℝ => t ^ (w.re - 1) * B t) (Ioi 0)) :
    MellinConvergent J w := by
  unfold MellinConvergent
  have hc : ContinuousOn (fun t : ℝ => (t : ℂ) ^ (w - 1) • J t) (Ioi 0) := by
    refine ContinuousOn.smul (f := fun t : ℝ => (t : ℂ) ^ (w - 1)) (g := J) (fun t ht => ?_) hJ
    exact (Complex.continuousAt_ofReal_cpow_const t (w - 1)
      (Or.inr (ne_of_gt (show (0 : ℝ) < t from ht)))).continuousWithinAt
  refine Integrable.mono' (hint.const_mul V) (hc.aestronglyMeasurable measurableSet_Ioi) ?_
  refine (ae_restrict_iff' measurableSet_Ioi).2 (Eventually.of_forall fun t (ht : 0 < t) => ?_)
  rw [norm_smul, Complex.norm_cpow_eq_rpow_re_of_pos ht, Complex.sub_re, Complex.one_re]
  calc t ^ (w.re - 1) * ‖J t‖ ≤ t ^ (w.re - 1) * (V * B t) :=
        mul_le_mul_of_nonneg_left (hB t ht) (Real.rpow_nonneg ht.le _)
    _ = V * (t ^ (w.re - 1) * B t) := by ring

theorem continuous_posInv : Continuous fun s : {r : ℝ // 0 < r} => s⁻¹ := by
  have h : Continuous fun s : {r : ℝ // 0 < r} => ((s : ℝ))⁻¹ :=
    continuous_subtype_val.inv₀ fun s => s.2.ne'
  exact h.subtype_mk _

theorem continuous_tsum_inv {Φ : Matrix (Fin n) (Fin n) 𝔸[K] → ℂ}
    (hΦ : Φ ∈ matrixSchwartzBruhat K n) :
    Continuous (fun p : {r : ℝ // 0 < r} × AdelicGLn.AdelicGL K n × AdelicGLn.AdelicGL K n =>
      ∑' γ : GL (Fin n) K, Φ (((centralSection K n p.1 * p.2.1 * AdelicGLn.diagonal K n γ *
        p.2.2)⁻¹ : AdelicGLn.AdelicGL K n) : Matrix (Fin n) (Fin n) 𝔸[K])) := by
  have hc := continuous_tsum_GL hΦ
  have hm : Continuous fun p : {r : ℝ // 0 < r} × AdelicGLn.AdelicGL K n × AdelicGLn.AdelicGL K n =>
      (p.1⁻¹, p.2.2⁻¹, p.2.1⁻¹) :=
    (continuous_posInv.comp continuous_fst).prodMk
      ((continuous_snd.comp continuous_snd).inv.prodMk (continuous_fst.comp continuous_snd).inv)
  have h := hc.comp hm
  refine h.congr fun p => ?_
  simp only [Function.comp_apply]
  rw [← (Equiv.inv (GL (Fin n) K)).tsum_eq]
  refine tsum_congr fun γ => ?_
  have e := inv_centralSection_mul p.1 p.2.1⁻¹ p.2.2 γ
  rw [inv_inv] at e
  simp only [Equiv.inv_apply]
  rw [e]



theorem globalZeta_entire_functionalEquation (hn : 2 ≤ n) (μ : Measure (normOneGL (K := K) (n := n)))
    [μ.IsHaarMeasure] (ν : Measure (AdelicGLn.AdelicGL K n)) [ν.IsHaarMeasure]
    {φ₁ φ₂ : AdelicGLn.AdelicGL K n → ℂ} (h₁ : φ₁ ∈ cuspForms K n) (h₂ : φ₂ ∈ cuspForms K n)
    (hA : ∀ (s : {r : ℝ // 0 < r}) (x : AdelicGLn.AdelicGL K n),
      φ₁ (centralSection K n s * x) = φ₁ x)
    {Φ : Matrix (Fin n) (Fin n) 𝔸[K] → ℂ} (hΦ : Φ ∈ matrixSchwartzBruhat K n) :
    ∃ σ₀ : ℝ, ∃ Λ Λ' : ℂ → ℂ, Differentiable ℂ Λ ∧ Differentiable ℂ Λ' ∧
      (∀ s : ℂ, σ₀ < s.re → Integrable (zetaIntegrand Φ (matrixCoeff μ φ₁ φ₂) s) ν ∧
        globalZeta ν Φ (matrixCoeff μ φ₁ φ₂) s = Λ s) ∧
      (∀ s : ℂ, σ₀ < s.re → Integrable (zetaIntegrand (adelicMatrixFourier K Φ)
          (fun g => matrixCoeff μ φ₁ φ₂ g⁻¹) s) ν ∧
        globalZeta ν (adelicMatrixFourier K Φ) (fun g => matrixCoeff μ φ₁ φ₂ g⁻¹) s = Λ' s) ∧
      ∀ s : ℂ, Λ s = Λ' (1 - s) := by
  have norm_thetaPairing_le (μ : Measure (normOneGL (K := K) (n := n))) [μ.IsHaarMeasure] {φ₁ φ₂ Ξ : AdelicGLn.AdelicGL K n → ℂ} (t : {r : ℝ // 0 < r}) {b : ℝ}
      (hb : ∀ x y : normOneGL (K := K) (n := n),
        Summable (fun γ : GL (Fin n) K => ‖Ξ (centralSection K n t * (x : AdelicGLn.AdelicGL K n)⁻¹ *
          AdelicGLn.diagonal K n γ * (y : AdelicGLn.AdelicGL K n))‖) ∧
        ‖φ₂ (x : AdelicGLn.AdelicGL K n)‖ * ‖φ₁ (y : AdelicGLn.AdelicGL K n)‖ *
          ∑' γ : GL (Fin n) K, ‖Ξ (centralSection K n t * (x : AdelicGLn.AdelicGL K n)⁻¹ *
            AdelicGLn.diagonal K n γ * (y : AdelicGLn.AdelicGL K n))‖ ≤ b) :
      ‖thetaPairing μ φ₁ φ₂ Ξ t‖ ≤ (μ (fundamentalDomain (rationalGLOne (K := K) (n := n)))).toReal ^ 2 * b := by
    have hF : μ (fundamentalDomain (rationalGLOne (K := K) (n := n))) < ⊤ := measure_fundamentalDomain_rationalGLOne_lt_top μ
    have hT : ∀ x y : normOneGL (K := K) (n := n), ‖conj (φ₂ (x : AdelicGLn.AdelicGL K n)) *
        φ₁ (y : AdelicGLn.AdelicGL K n) * ∑' γ : GL (Fin n) K,
          Ξ (centralSection K n t * (x : AdelicGLn.AdelicGL K n)⁻¹ *
            AdelicGLn.diagonal K n γ * (y : AdelicGLn.AdelicGL K n))‖ ≤ b := by
      intro x y
      obtain ⟨hs, hle⟩ := hb x y
      rw [norm_mul, norm_mul, Complex.norm_conj]
      exact le_trans (mul_le_mul_of_nonneg_left (norm_tsum_le_tsum_norm hs)
        (mul_nonneg (norm_nonneg _) (norm_nonneg _))) hle
    unfold thetaPairing
    have hin : ∀ x : normOneGL (K := K) (n := n), ‖∫ y in fundamentalDomain (rationalGLOne (K := K) (n := n)),
        conj (φ₂ (x : AdelicGLn.AdelicGL K n)) * φ₁ (y : AdelicGLn.AdelicGL K n) *
          ∑' γ : GL (Fin n) K, Ξ (centralSection K n t * (x : AdelicGLn.AdelicGL K n)⁻¹ *
            AdelicGLn.diagonal K n γ * (y : AdelicGLn.AdelicGL K n)) ∂μ‖ ≤
          b * (μ (fundamentalDomain (rationalGLOne (K := K) (n := n)))).toReal := fun x =>
      norm_setIntegral_le_of_norm_le_const hF fun y _ => hT x y
    calc _ ≤ (b * (μ (fundamentalDomain (rationalGLOne (K := K) (n := n)))).toReal) * (μ (fundamentalDomain (rationalGLOne (K := K) (n := n)))).toReal :=
          norm_setIntegral_le_of_norm_le_const hF fun x _ => hin x
      _ = _ := by ring

  have hn0 : 0 < n := by omega
  have hΦh := adelicMatrixFourier_mem hΦ
  have hΦc : Continuous Φ := continuous_of_mem_matrixSchwartzBruhat hΦ
  have hΦhc : Continuous (adelicMatrixFourier K Φ) := continuous_of_mem_matrixSchwartzBruhat hΦh
  have h₁c : Continuous φ₁ := h₁.1.continuous
  have h₂c : Continuous φ₂ := h₂.1.continuous
  set V : ℝ := (μ (fundamentalDomain (rationalGLOne (K := K) (n := n)))).toReal ^ 2 with hV

  set Ξ₁ : AdelicGLn.AdelicGL K n → ℂ := fun g => Φ (g : Matrix (Fin n) (Fin n) 𝔸[K]) with hΞ₁
  set Ξ₂ : AdelicGLn.AdelicGL K n → ℂ := fun g => adelicMatrixFourier K Φ
    ((g⁻¹ : AdelicGLn.AdelicGL K n) : Matrix (Fin n) (Fin n) 𝔸[K]) with hΞ₂
  have hΞ₁c : Continuous Ξ₁ := hΦc.comp Units.continuous_val
  have hΞ₂c : Continuous Ξ₂ := hΦhc.comp (Units.continuous_val.comp continuous_inv)
  set J₁ : ℝ → ℂ := fun t => if h : 0 < t then thetaPairing μ φ₁ φ₂ Ξ₁ ⟨t, h⟩ else 0 with hJ₁
  set J₂ : ℝ → ℂ := fun t => if h : 0 < t then thetaPairing μ φ₁ φ₂ Ξ₂ ⟨t, h⟩ else 0 with hJ₂
  set J' : ℝ → ℂ := fun u => J₂ u⁻¹ with hJ'

  obtain ⟨C₁, M₁, -, hC₁⟩ := exists_bound_tsum hΦ h₁ h₂
  obtain ⟨C₂, M₂, -, hC₂⟩ := exists_bound_tsum hΦh h₂ h₁
  obtain ⟨_, _, _, hsum₂⟩ := exists_bound_GL_inv hn0 hΦ h₁ h₂ 0
  have hB₁ : ∀ (t : {r : ℝ // 0 < r}) (x y : normOneGL (K := K) (n := n)),
      ‖φ₂ (x : AdelicGLn.AdelicGL K n)‖ * ‖φ₁ (y : AdelicGLn.AdelicGL K n)‖ *
        ‖∑' γ : GL (Fin n) K, Ξ₁ (centralSection K n t * (x : AdelicGLn.AdelicGL K n)⁻¹ *
          AdelicGLn.diagonal K n γ * (y : AdelicGLn.AdelicGL K n))‖ ≤
        C₁ * (max 1 (t : ℝ)⁻¹) ^ M₁ := by
    intro t x y
    obtain ⟨hs, hb⟩ := hC₁ x x.2 y y.2 t
    have hGL := tsum_norm_GL_le _ _ hs
    refine le_trans ?_ hb
    refine mul_le_mul_of_nonneg_left ?_ (mul_nonneg (norm_nonneg _) (norm_nonneg _))
    simp only [hΞ₁, coe_mul_diagonal_mul]
    exact (norm_tsum_le_tsum_norm hGL.1).trans hGL.2
  have hB₂ : ∀ (t : {r : ℝ // 0 < r}) (x y : normOneGL (K := K) (n := n)),
      ‖φ₂ (x : AdelicGLn.AdelicGL K n)‖ * ‖φ₁ (y : AdelicGLn.AdelicGL K n)‖ *
        ‖∑' γ : GL (Fin n) K, Ξ₂ (centralSection K n t * (x : AdelicGLn.AdelicGL K n)⁻¹ *
          AdelicGLn.diagonal K n γ * (y : AdelicGLn.AdelicGL K n))‖ ≤
        C₂ * (max 1 (t : ℝ)) ^ M₂ := by
    intro t x y
    obtain ⟨hs, hb⟩ := hC₂ y y.2 x x.2 t⁻¹
    have hGL := tsum_norm_GL_le _ _ hs
    have hsm := (hsum₂ t x y).1
    rw [mul_comm ‖φ₂ _‖]
    have e : ((t⁻¹ : {r : ℝ // 0 < r}) : ℝ)⁻¹ = (t : ℝ) := inv_inv (t : ℝ)
    rw [e] at hb
    refine le_trans ?_ hb
    refine mul_le_mul_of_nonneg_left ?_ (mul_nonneg (norm_nonneg _) (norm_nonneg _))
    refine (norm_tsum_le_tsum_norm hsm).trans ?_
    rw [tsum_norm_inv_eq]
    exact hGL.2
  have hB₁c : Continuous fun t : {r : ℝ // 0 < r} => C₁ * (max 1 (t : ℝ)⁻¹) ^ M₁ :=
    continuous_const.mul ((continuous_const.max (continuous_subtype_val.inv₀ fun t => t.2.ne')).rpow_const
      fun t => Or.inl (ne_of_gt (lt_of_lt_of_le one_pos (le_max_left _ _))))
  have hB₂c : Continuous fun t : {r : ℝ // 0 < r} => C₂ * (max 1 (t : ℝ)) ^ M₂ :=
    continuous_const.mul ((continuous_const.max continuous_subtype_val).rpow_const
      fun t => Or.inl (ne_of_gt (lt_of_lt_of_le one_pos (le_max_left _ _))))
  have hTP₁c : Continuous (thetaPairing μ φ₁ φ₂ Ξ₁) :=
    continuous_thetaPairing μ h₁c h₂c (continuous_tsum_GL hΦ) hB₁c hB₁
  have hTP₂c : Continuous (thetaPairing μ φ₁ φ₂ Ξ₂) :=
    continuous_thetaPairing μ h₁c h₂c (continuous_tsum_inv hΦh) hB₂c hB₂
  have hJ₁c : ContinuousOn J₁ (Ioi 0) := continuousOn_dite hTP₁c
  have hJ₂c : ContinuousOn J₂ (Ioi 0) := continuousOn_dite hTP₂c
  have hJ'c : ContinuousOn J' (Ioi 0) :=
    hJ₂c.comp (continuousOn_inv₀.mono fun t (ht : 0 < t) => ht.ne') fun t (ht : 0 < t) =>
      (show (0 : ℝ) < t⁻¹ from inv_pos.2 ht)

  have hsym : ∀ t : ℝ, 0 < t → J₁ t = (t : ℂ) ^ (-((n : ℝ) : ℂ)) * J' t⁻¹ := by
    intro t ht
    have hti : (0 : ℝ) < t⁻¹⁻¹ := by rw [inv_inv]; exact ht
    simp only [hJ₁, hJ', hJ₂, dif_pos ht, dif_pos hti]
    have e : (⟨t⁻¹⁻¹, hti⟩ : {r : ℝ // 0 < r}) = ⟨t, ht⟩ := Subtype.ext (inv_inv t)
    rw [e, thetaPairing_eq μ hn h₁ h₂ hΦ ⟨t, ht⟩]
    congr 1
    rw [Complex.ofReal_natCast, Complex.cpow_neg, Complex.cpow_natCast]
    push_cast
    rfl

  have hdec₁ : ∀ a : ℝ, J₁ =O[atTop] (· ^ (-a)) := by
    intro a
    obtain ⟨C, M, D, hb⟩ := exists_bound_GL hn0 hΦ h₁ h₂ a
    refine IsBigO.of_bound (V * D) ?_
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with t ht
    have ht0 : 0 < t := lt_of_lt_of_le one_pos ht
    simp only [hJ₁, dif_pos ht0]
    have h := norm_thetaPairing_le μ (Ξ := Ξ₁) (φ₁ := φ₁) (φ₂ := φ₂) ⟨t, ht0⟩
      (b := D * t ^ (-a)) fun x y => by
        have := hb ⟨t, ht0⟩ x y
        rw [if_neg (not_lt.2 ht)] at this
        exact this
    rw [Real.norm_eq_abs, abs_of_pos (Real.rpow_pos_of_pos ht0 _)]
    calc _ ≤ V * (D * t ^ (-a)) := h
      _ = V * D * t ^ (-a) := by ring
  have hdec' : ∀ a : ℝ, J' =O[atTop] (· ^ (-a)) := by
    intro a
    obtain ⟨C, M, D, hb⟩ := exists_bound_GL_inv hn0 hΦ h₁ h₂ a
    refine IsBigO.of_bound (V * D) ?_
    filter_upwards [eventually_gt_atTop (1 : ℝ)] with u hu
    have hu0 : 0 < u := lt_trans one_pos hu
    have hi0 : 0 < u⁻¹ := inv_pos.2 hu0
    have hi1 : u⁻¹ < 1 := inv_lt_one_of_one_lt₀ hu
    simp only [hJ', hJ₂, dif_pos hi0]
    have h := norm_thetaPairing_le μ (Ξ := Ξ₂) (φ₁ := φ₁) (φ₂ := φ₂) ⟨u⁻¹, hi0⟩
      (b := D * (u⁻¹) ^ a) fun x y => by
        have := hb ⟨u⁻¹, hi0⟩ x y
        rw [if_pos hi1] at this
        exact this
    rw [Real.norm_eq_abs, abs_of_pos (Real.rpow_pos_of_pos hu0 _)]
    calc _ ≤ V * (D * (u⁻¹) ^ a) := h
      _ = V * D * u ^ (-a) := by rw [Real.inv_rpow hu0.le, Real.rpow_neg hu0.le]; ring
  obtain ⟨Λw, Λw', hΛ, hΛ', hΛeq, hΛ'eq, hfe⟩ :=
    exists_entire_of_symm (κ := (n : ℝ)) hJ₁c hJ'c hsym hdec₁ hdec'

  obtain ⟨c, -, hK⟩ := exists_integral_eq_mellin_thetaPairing μ hn0 ν
  obtain ⟨C₁', M₁', D₀, hb₁₀⟩ := exists_bound_GL hn0 hΦ h₁ h₂ 0
  obtain ⟨C₂', M₂', D₀', hb₂₀⟩ := exists_bound_GL_inv hn0 hΦ h₁ h₂ 0
  set w₀ : ℂ := ((n : ℂ) - 1) / 2 with hw₀
  refine ⟨max (max M₁' 0) (max M₂' 0) - ((n : ℝ) - 1) / 2,
    fun s => (c : ℂ) * Λw (s + w₀), fun s => (c : ℂ) * Λw' (s + w₀),
    (hΛ.comp (differentiable_id.add_const _)).const_mul _,
    (hΛ'.comp (differentiable_id.add_const _)).const_mul _, ?_, ?_, ?_⟩
  ·
    intro s hs
    set σ : ℝ := (s + w₀).re with hσ
    have hσre : σ = s.re + ((n : ℝ) - 1) / 2 := by
      rw [hσ, Complex.add_re, hw₀]
      simp
    have hσM : max M₁' 0 < σ := by
      have := le_max_left (max M₁' 0) (max M₂' 0)
      linarith
    obtain ⟨C, M, D, hb⟩ := exists_bound_GL hn0 hΦ h₁ h₂ (σ + 1)
    set B : ℝ → ℝ := fun t => if t < 1 then C₁' * t ^ (-max M₁' 0) else D * t ^ (-(σ + 1))
      with hBdef
    have hbB : ∀ (t : {r : ℝ // 0 < r}) (x y : normOneGL (K := K) (n := n)),
        Summable (fun γ : GL (Fin n) K => ‖Ξ₁ (centralSection K n t *
          (x : AdelicGLn.AdelicGL K n)⁻¹ * AdelicGLn.diagonal K n γ *
            (y : AdelicGLn.AdelicGL K n))‖) ∧
        ‖φ₂ (x : AdelicGLn.AdelicGL K n)‖ * ‖φ₁ (y : AdelicGLn.AdelicGL K n)‖ *
          ∑' γ : GL (Fin n) K, ‖Ξ₁ (centralSection K n t * (x : AdelicGLn.AdelicGL K n)⁻¹ *
            AdelicGLn.diagonal K n γ * (y : AdelicGLn.AdelicGL K n))‖ ≤ B t := by
      intro t x y
      refine ⟨(hb t x y).1, ?_⟩
      by_cases ht : (t : ℝ) < 1
      · have := (hb₁₀ t x y).2
        rw [if_pos ht] at this
        simp only [hBdef, if_pos ht]
        exact this
      · have := (hb t x y).2
        rw [if_neg ht] at this
        simp only [hBdef, if_neg ht]
        exact this
    have hint : IntegrableOn (fun t : ℝ => t ^ ((s + w₀).re - 1) * B t) (Ioi 0) :=
      integrableOn_rpow_mul_ite (by linarith) (by linarith)
    obtain ⟨hI, hEq⟩ := hK φ₁ φ₂ Ξ₁ (s + w₀) B h₁c h₂c hΞ₁c h₁.1.isLeftInvariant hA
      (fun t x y hx hy => hbB t ⟨x, hx⟩ ⟨y, hy⟩) hint
    refine ⟨hI, ?_⟩
    have hconv : MellinConvergent J₁ (s + w₀) := by
      refine mellinConvergent_of_bound hJ₁c (V := V) (fun t ht => ?_) hint
      simp only [hJ₁, dif_pos ht]
      exact norm_thetaPairing_le μ ⟨t, ht⟩ fun x y => hbB ⟨t, ht⟩ x y
    show ∫ g, Ξ₁ g * matrixCoeff μ φ₁ φ₂ g * detPow g (s + w₀) ∂ν = (c : ℂ) * Λw (s + w₀)
    rw [hEq]
    show (c : ℂ) * mellin J₁ (s + w₀) = (c : ℂ) * Λw (s + w₀)
    rw [hΛeq _ hconv]
  ·
    intro s hs
    set σ : ℝ := (s + w₀).re with hσ
    have hσre : σ = s.re + ((n : ℝ) - 1) / 2 := by
      rw [hσ, Complex.add_re, hw₀]
      simp
    have hσM : max M₂' 0 < σ := by
      have := le_max_right (max M₁' 0) (max M₂' 0)
      linarith
    obtain ⟨C, M, D, hb⟩ := exists_bound_GL_inv hn0 hΦ h₁ h₂ (σ + 1)
    set B : ℝ → ℝ := fun t => if t < 1 then D * t ^ (σ + 1) else C₂' * t ^ max M₂' 0
      with hBdef
    have hbB : ∀ (t : {r : ℝ // 0 < r}) (x y : normOneGL (K := K) (n := n)),
        Summable (fun γ : GL (Fin n) K => ‖Ξ₂ (centralSection K n t *
          (x : AdelicGLn.AdelicGL K n)⁻¹ * AdelicGLn.diagonal K n γ *
            (y : AdelicGLn.AdelicGL K n))‖) ∧
        ‖φ₂ (x : AdelicGLn.AdelicGL K n)‖ * ‖φ₁ (y : AdelicGLn.AdelicGL K n)‖ *
          ∑' γ : GL (Fin n) K, ‖Ξ₂ (centralSection K n t * (x : AdelicGLn.AdelicGL K n)⁻¹ *
            AdelicGLn.diagonal K n γ * (y : AdelicGLn.AdelicGL K n))‖ ≤ B t := by
      intro t x y
      refine ⟨(hb t x y).1, ?_⟩
      by_cases ht : (t : ℝ) < 1
      · have := (hb t x y).2
        rw [if_pos ht] at this
        simp only [hBdef, if_pos ht]
        exact this
      · have := (hb₂₀ t x y).2
        rw [if_neg ht] at this
        simp only [hBdef, if_neg ht]
        exact this
    have hint : IntegrableOn (fun t : ℝ => t ^ ((-(s + w₀)).re - 1) * B t) (Ioi 0) := by
      rw [Complex.neg_re]
      exact integrableOn_rpow_mul_ite (by linarith) (by linarith)
    obtain ⟨hI, hEq⟩ := hK φ₁ φ₂ Ξ₂ (-(s + w₀)) B h₁c h₂c hΞ₂c h₁.1.isLeftInvariant hA
      (fun t x y hx hy => hbB t ⟨x, hx⟩ ⟨y, hy⟩) hint
    have := isInvInvariant_haar ν hn0
    have hfun : zetaIntegrand (adelicMatrixFourier K Φ) (fun g => matrixCoeff μ φ₁ φ₂ g⁻¹) s =
        fun g => (fun h => Ξ₂ h * matrixCoeff μ φ₁ φ₂ h * detPow h (-(s + w₀))) g⁻¹ := by
      funext g
      simp only [zetaIntegrand, hΞ₂, inv_inv, detPow_inv, neg_neg, ← hw₀]
    refine ⟨?_, ?_⟩
    · rw [hfun]
      exact hI.comp_inv
    · have hconv2 : MellinConvergent J₂ (-(s + w₀)) := by
        refine mellinConvergent_of_bound hJ₂c (V := V) (fun t ht => ?_) hint
        simp only [hJ₂, dif_pos ht]
        exact norm_thetaPairing_le μ ⟨t, ht⟩ fun x y => hbB ⟨t, ht⟩ x y
      have hconv : MellinConvergent J' (s + w₀) := by
        have h := (MellinConvergent.comp_rpow (f := J₂) (s := s + w₀) (a := -1)
          (by norm_num)).2 (by
            rw [show (s + w₀) / ((-1 : ℝ) : ℂ) = -(s + w₀) by push_cast; ring]
            exact hconv2)
        unfold MellinConvergent at h ⊢
        refine h.congr_fun (fun t _ => ?_) measurableSet_Ioi
        simp only [hJ', Real.rpow_neg_one]
      show ∫ g, zetaIntegrand (adelicMatrixFourier K Φ) (fun g => matrixCoeff μ φ₁ φ₂ g⁻¹) s g ∂ν =
        (c : ℂ) * Λw' (s + w₀)
      rw [hfun, integral_comp_inv ν hn0 (fun h => Ξ₂ h * matrixCoeff μ φ₁ φ₂ h * detPow h (-(s + w₀))), hEq]
      show (c : ℂ) * mellin J₂ (-(s + w₀)) = (c : ℂ) * Λw' (s + w₀)
      rw [hΛ'eq _ hconv, hJ', mellin_comp_inv]
  · intro s
    simp only
    rw [hfe]
    congr 2
    rw [hw₀]
    push_cast
    ring

end GJGlobal

end

end GroundTheory.Automorphic
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.AutomorphicForms.GL2.GJGlobal =====
