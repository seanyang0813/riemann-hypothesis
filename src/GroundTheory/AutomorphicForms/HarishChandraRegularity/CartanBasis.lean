module

public import GroundTheory.AutomorphicForms.RealGroupsLie
public import Mathlib.Algebra.Lie.OfAssociative
import Mathlib.Analysis.Normed.Algebra.MatrixExponential
import Mathlib.Tactic.TypeStar

@[expose] public section

namespace GroundTheory.Automorphic

open Matrix

set_option linter.unusedSectionVars false

attribute [local instance 100] LieRing.ofAssociativeRing

section TraceForm

variable {𝕜 : Type*} [RCLike 𝕜] {ι : Type*} [Fintype ι] [DecidableEq ι]

variable (L : LieSubalgebra ℝ (Matrix ι ι 𝕜))

variable {L}

end TraceForm

section Positivity

variable {𝕜 : Type*} [RCLike 𝕜] {ι : Type*} [Fintype ι] [DecidableEq ι]

end Positivity

section Cartan

variable {𝕜 : Type*} [RCLike 𝕜] {ι : Type*} [Fintype ι] [DecidableEq ι]

variable (L : LieSubalgebra ℝ (Matrix ι ι 𝕜))

variable {L}

theorem exists_signed_basis {V : Type*} [AddCommGroup V] [Module ℝ V] [FiniteDimensional ℝ V]
    (B : LinearMap.BilinForm ℝ V) (hB : ∀ x y, B x y = B y x) {s : ℝ} (hs : s * s = 1)
    (hpos : ∀ v : V, v ≠ 0 → 0 < s * B v v) :
    ∃ b : Module.Basis (Fin (Module.finrank ℝ V)) ℝ V,
      ∀ i j, B (b i) (b j) = if i = j then s else 0 := by
  have : Invertible (2 : ℝ) := invertibleOfNonzero two_ne_zero
  obtain ⟨v, hv⟩ := LinearMap.BilinForm.exists_orthogonal_basis (B := B)
    ⟨fun x y => by rw [RingHom.id_apply]; exact hB x y⟩
  have hpos' : ∀ i, 0 < s * B (v i) (v i) := fun i => hpos _ (v.ne_zero i)
  set w : Fin (Module.finrank ℝ V) → ℝ := fun i => (Real.sqrt (s * B (v i) (v i)))⁻¹
  have hw : ∀ i, IsUnit (w i) := fun i =>
    (inv_ne_zero (Real.sqrt_pos.2 (hpos' i)).ne').isUnit
  refine ⟨v.isUnitSMul hw, fun i j => ?_⟩
  rw [Module.Basis.isUnitSMul_apply, Module.Basis.isUnitSMul_apply, map_smul, map_smul,
    LinearMap.smul_apply, smul_eq_mul, smul_eq_mul]
  split_ifs with hij
  · subst hij
    have hsq : Real.sqrt (s * B (v i) (v i)) ^ 2 = s * B (v i) (v i) := Real.sq_sqrt (hpos' i).le
    have hst : s * B (v i) (v i) ≠ 0 := (hpos' i).ne'
    have ht : B (v i) (v i) ≠ 0 := right_ne_zero_of_mul hst
    simp only [w]
    rw [← mul_assoc, ← sq, inv_pow, hsq, mul_inv, mul_assoc, inv_mul_cancel₀ ht, mul_one]
    exact inv_eq_of_mul_eq_one_right hs
  · rw [hv hij, mul_zero, mul_zero]

end Cartan

section MaxCompact

variable {𝕜 : Type*} [RCLike 𝕜] {ι : Type*} [Fintype ι] [DecidableEq ι]

def maxCompact (G : Subgroup (Matrix ι ι 𝕜)ˣ) : Subgroup G where
  carrier := {g | ((g : (Matrix ι ι 𝕜)ˣ) : Matrix ι ι 𝕜) ∈ Matrix.unitaryGroup ι 𝕜}
  mul_mem' {a b} ha hb := by
    change ((a : (Matrix ι ι 𝕜)ˣ) : Matrix ι ι 𝕜) * ((b : (Matrix ι ι 𝕜)ˣ) : Matrix ι ι 𝕜) ∈
      Matrix.unitaryGroup ι 𝕜
    exact Submonoid.mul_mem _ ha hb
  one_mem' := by
    change ((1 : (Matrix ι ι 𝕜)ˣ) : Matrix ι ι 𝕜) ∈ Matrix.unitaryGroup ι 𝕜
    rw [Units.val_one]
    exact Submonoid.one_mem _
  inv_mem' {a} ha := by
    change (((a : (Matrix ι ι 𝕜)ˣ)⁻¹ : (Matrix ι ι 𝕜)ˣ) : Matrix ι ι 𝕜) ∈ Matrix.unitaryGroup ι 𝕜
    have hmul : ((a : (Matrix ι ι 𝕜)ˣ) : Matrix ι ι 𝕜) *
        star ((a : (Matrix ι ι 𝕜)ˣ) : Matrix ι ι 𝕜) = 1 := Matrix.mem_unitaryGroup_iff.1 ha
    rw [Units.inv_eq_of_mul_eq_one_right hmul]
    exact Unitary.star_mem ha

theorem exp_mem_unitaryGroup {X : Matrix ι ι 𝕜} (hX : Xᴴ = -X) :
    NormedSpace.exp X ∈ Matrix.unitaryGroup ι 𝕜 := by
  rw [Matrix.mem_unitaryGroup_iff', Matrix.star_eq_conjTranspose, ← Matrix.exp_conjTranspose, hX,
    ← Matrix.exp_add_of_commute _ _ (Commute.neg_left (Commute.refl X)), neg_add_cancel,
    NormedSpace.exp_zero]

end MaxCompact

section Groups

open NormedSpace
open scoped Matrix.Norms.L2Operator

theorem isExpLieAlgebra_top {𝔸 : Type*} [NormedRing 𝔸] [NormedAlgebra ℝ 𝔸] [CompleteSpace 𝔸]
    [FiniteDimensional ℝ 𝔸] : IsExpLieAlgebra (⊤ : Subgroup 𝔸ˣ) (⊤ : Submodule ℝ 𝔸) := by
  refine ⟨fun _ _ => Subgroup.mem_top _, ?_⟩
  exact ⟨(expPartialHomeomorph ℝ 𝔸).source, (expPartialHomeomorph ℝ 𝔸).open_source,
    zero_mem_expPartialHomeomorph_source ℝ 𝔸, Set.Subset.rfl, fun _ _ _ => Submodule.mem_top⟩

variable {ι : Type*} [Fintype ι] [DecidableEq ι]

end Groups

end GroundTheory.Automorphic
