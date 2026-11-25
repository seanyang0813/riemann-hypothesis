module

public import GroundTheory.AutomorphicForms.RealGroupsLie
public import Mathlib.Analysis.LocallyConvex.AbsConvexOpen
public import GroundTheory.AutomorphicForms.HarishChandraRegularity.CartanBasis
public import GroundTheory.AutomorphicForms.RealGroupsKAK
public import Mathlib.Analysis.Calculus.Deriv.Add
public import Mathlib.Analysis.Calculus.Deriv.Mul
public import Mathlib.Analysis.Calculus.MeanValue
public import Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv

@[expose] public section

namespace GroundTheory.Automorphic.ArchWhittaker

open Matrix NormedSpace
open scoped Matrix.Norms.L2Operator

abbrev FiltrationCocycleLiftCriterion : Subgroup (GL (Fin 2) ℝ) := ⊤

abbrev gl2 : Submodule ℝ (Matrix (Fin 2) (Fin 2) ℝ) := ⊤

theorem hGL2 : IsExpLieAlgebra FiltrationCocycleLiftCriterion gl2 := isExpLieAlgebra_top

noncomputable def toGL (A : Matrix (Fin 2) (Fin 2) ℝ) (hA : A.det ≠ 0) : FiltrationCocycleLiftCriterion :=
  ⟨Matrix.GeneralLinearGroup.mkOfDetNeZero A hA, Subgroup.mem_top _⟩

@[simp] theorem coe_toGL (A : Matrix (Fin 2) (Fin 2) ℝ) (hA : A.det ≠ 0) :
    (((toGL A hA : FiltrationCocycleLiftCriterion) : GL (Fin 2) ℝ) : Matrix (Fin 2) (Fin 2) ℝ) = A := rfl

theorem GL2_ext {g g' : FiltrationCocycleLiftCriterion}
    (h : ((g : GL (Fin 2) ℝ) : Matrix (Fin 2) (Fin 2) ℝ) = ((g' : GL (Fin 2) ℝ) : Matrix (Fin 2) (Fin 2) ℝ)) :
    g = g' := Subtype.ext (Units.ext h)

noncomputable def kMat (θ : ℝ) : FiltrationCocycleLiftCriterion :=
  toGL !![Real.cos θ, Real.sin θ; -Real.sin θ, Real.cos θ] (by
    simp [Matrix.det_fin_two_of]; nlinarith [Real.sin_sq_add_cos_sq θ])

@[simp] theorem coe_kMat (θ : ℝ) : (((kMat θ : FiltrationCocycleLiftCriterion) : GL (Fin 2) ℝ) : Matrix (Fin 2) (Fin 2) ℝ) =
    !![Real.cos θ, Real.sin θ; -Real.sin θ, Real.cos θ] := rfl

theorem kMat_add (a b : ℝ) : kMat (a + b) = kMat a * kMat b := by
  apply GL2_ext; simp only [Subgroup.coe_mul, Units.val_mul, coe_kMat]
  ext i j; fin_cases i <;> fin_cases j <;>
    simp [Matrix.mul_apply, Fin.sum_univ_two, Real.cos_add, Real.sin_add] <;> ring

theorem kMat_zero : kMat 0 = 1 := by
  apply GL2_ext; simp only [coe_kMat, Subgroup.coe_one, Units.val_one]
  ext i j; fin_cases i <;> fin_cases j <;> simp

theorem kMat_two_pi : kMat (2 * Real.pi) = 1 := by
  apply GL2_ext; simp only [coe_kMat, Subgroup.coe_one, Units.val_one]
  ext i j; fin_cases i <;> fin_cases j <;> simp

end GroundTheory.Automorphic.ArchWhittaker

namespace GroundTheory.Automorphic.ArchWhittaker

open Matrix NormedSpace
open scoped Matrix.Norms.L2Operator

def lW : gl2 := ⟨!![0, 1; -1, 0], Submodule.mem_top⟩

@[simp] theorem coe_lW : ((lW : gl2) : Matrix (Fin 2) (Fin 2) ℝ) = !![0, 1; -1, 0] := rfl

theorem exp_eq_of_hasDerivAt {X : Matrix (Fin 2) (Fin 2) ℝ} {c : ℝ → Matrix (Fin 2) (Fin 2) ℝ}
    (hc : ∀ t, HasDerivAt c (X * c t) t) (h0 : c 0 = 1) (t : ℝ) : exp (t • X) = c t := by
  have hcomm : ∀ s : ℝ, exp (s • X) * X = X * exp (s • X) := fun s =>
    (hasDerivAt_exp_smul_const (𝕂 := ℝ) X s).unique (hasDerivAt_exp_smul_const' (𝕂 := ℝ) X s)
  set D : ℝ → Matrix (Fin 2) (Fin 2) ℝ := fun s => exp ((-s) • X) * c s with hD
  have hDd : ∀ s, HasDerivAt D 0 s := by
    intro s
    have h1 : HasDerivAt (fun s : ℝ => exp ((-s) • X)) ((-1 : ℝ) • (X * exp ((-s) • X))) s :=
      (hasDerivAt_exp_smul_const' (𝕂 := ℝ) X (-s)).scomp s (hasDerivAt_neg s)
    have h2 := h1.mul (hc s)
    refine h2.congr_deriv ?_
    rw [neg_one_smul, neg_mul, ← mul_assoc, hcomm, mul_assoc, neg_add_cancel]
  have hconst : D t = D 0 := is_const_of_deriv_eq_zero
    (fun s => (hDd s).differentiableAt) (fun s => (hDd s).deriv) t 0
  have hD0 : D 0 = 1 := by simp [hD, h0]
  have hinv : exp (t • X) * exp ((-t) • X) = 1 := by
    rw [← exp_add_of_commute' ℝ ((Commute.refl X).smul_left t |>.smul_right (-t)), ← add_smul,
      add_neg_cancel, zero_smul, exp_zero]
  calc exp (t • X) = exp (t • X) * D t := by rw [hconst, hD0, mul_one]
    _ = exp (t • X) * exp ((-t) • X) * c t := by simp [hD, mul_assoc]
    _ = c t := by rw [hinv, one_mul]

theorem expG_lW (θ : ℝ) : hGL2.expG (θ • lW) = kMat θ := by
  apply GL2_ext
  rw [IsExpLieAlgebra.coe_expG, coe_kMat, Submodule.coe_smul, coe_lW]
  have hc : ∀ s : ℝ, HasDerivAt (fun s : ℝ => Real.cos s • (1 : Matrix (Fin 2) (Fin 2) ℝ) +
      Real.sin s • !![0, 1; -1, 0])
      (!![0, 1; -1, 0] * (Real.cos s • (1 : Matrix (Fin 2) (Fin 2) ℝ) + Real.sin s • !![0, 1; -1, 0])) s := by
    intro s
    refine (((Real.hasDerivAt_cos s).smul_const (1 : Matrix (Fin 2) (Fin 2) ℝ)).add
      ((Real.hasDerivAt_sin s).smul_const (!![0, 1; -1, 0] : Matrix (Fin 2) (Fin 2) ℝ))).congr_deriv ?_
    ext i j; fin_cases i <;> fin_cases j <;> simp [Matrix.mul_apply, Fin.sum_univ_two]
  rw [exp_eq_of_hasDerivAt hc (by simp) θ]
  ext i j; fin_cases i <;> fin_cases j <;> simp

end GroundTheory.Automorphic.ArchWhittaker

namespace GroundTheory.Automorphic.ArchWhittaker

open Matrix NormedSpace
open scoped Matrix.Norms.L2Operator

theorem kMat_inv (θ : ℝ) : (kMat θ)⁻¹ = kMat (-θ) := by
  rw [inv_eq_iff_mul_eq_one, ← kMat_add, add_neg_cancel, kMat_zero]

end GroundTheory.Automorphic.ArchWhittaker

namespace GroundTheory.Automorphic.ArchWhittaker

open Matrix NormedSpace
open scoped Matrix.Norms.L2Operator

theorem exists_cos_sin {p r : ℝ} (h : p ^ 2 + r ^ 2 = 1) :
    ∃ θ : ℝ, Real.cos θ = p ∧ Real.sin θ = r := by
  set z : ℂ := ⟨p, r⟩ with hz
  have hn : ‖z‖ = 1 := by
    rw [Complex.norm_def, Complex.normSq_apply]; simp [hz]; nlinarith
  have hz0 : z ≠ 0 := by intro h0; rw [h0, norm_zero] at hn; norm_num at hn
  refine ⟨Complex.arg z, ?_, ?_⟩
  · rw [Complex.cos_arg hz0, hn, div_one]
  · rw [Complex.sin_arg, hn, div_one]

end GroundTheory.Automorphic.ArchWhittaker

namespace GroundTheory.Automorphic.ArchWhittaker

open Matrix NormedSpace
open scoped Matrix.Norms.L2Operator

theorem orthogonal_cases {O : Matrix (Fin 2) (Fin 2) ℝ} (hO : O ∈ Matrix.unitaryGroup (Fin 2) ℝ) :
    ∃ θ : ℝ, O = !![Real.cos θ, Real.sin θ; -Real.sin θ, Real.cos θ] ∨
      O = !![Real.cos θ, Real.sin θ; -Real.sin θ, Real.cos θ] * !![1, 0; 0, -1] := by
  rw [Matrix.mem_unitaryGroup_iff', Matrix.star_eq_conjTranspose] at hO
  set p := O 0 0
  set q := O 0 1
  set r := O 1 0
  set s := O 1 1
  have h00 := congrFun (congrFun hO 0) 0
  have h01 := congrFun (congrFun hO 0) 1
  have h11 := congrFun (congrFun hO 1) 1
  simp [Matrix.mul_apply, Fin.sum_univ_two] at h00 h01 h11

  have e1 : p ^ 2 + r ^ 2 = 1 := by nlinarith
  have e2 : p * q + r * s = 0 := by nlinarith
  have e3 : q ^ 2 + s ^ 2 = 1 := by nlinarith
  obtain ⟨θ, hc, hs⟩ := exists_cos_sin (p := p) (r := -r) (by nlinarith)
  set μ := p * s - q * r with hμ
  have hq : q = -μ * r := by linear_combination p * e2 - q * e1 + r * hμ
  have hs' : s = μ * p := by linear_combination r * e2 - s * e1 - p * hμ
  have hμ2 : μ ^ 2 = 1 := by
    have : μ ^ 2 * (p ^ 2 + r ^ 2) = q ^ 2 + s ^ 2 := by rw [hq, hs']; ring
    rwa [e1, e3, mul_one] at this
  have hμ' : μ = 1 ∨ μ = -1 := by
    have : (μ - 1) * (μ + 1) = 0 := by nlinarith
    rcases mul_eq_zero.1 this with h | h
    · left; linarith
    · right; linarith
  refine ⟨θ, ?_⟩
  rcases hμ' with h1 | h1
  · left
    ext i j; fin_cases i <;> fin_cases j <;> simp
    · exact hc.symm
    · show q = Real.sin θ; rw [hq, h1, hs]; ring
    · show r = -Real.sin θ; rw [hs]; ring
    · show s = Real.cos θ; rw [hs', h1, hc]; ring
  · right
    ext i j; fin_cases i <;> fin_cases j <;> simp [Matrix.mul_apply, Fin.sum_univ_two]
    · exact hc.symm
    · show q = -Real.sin θ; rw [hq, h1, hs]; ring
    · show r = -Real.sin θ; rw [hs]; ring
    · show s = -Real.cos θ; rw [hs', h1, hc]; ring

def iotaMat (A : Matrix (Fin 2) (Fin 2) ℝ) : Matrix (Fin 2) (Fin 2) ℝ :=
  !![1, 0; 0, -1] * Aᵀ * !![1, 0; 0, -1]

theorem det_iotaMat (A : Matrix (Fin 2) (Fin 2) ℝ) : (iotaMat A).det = A.det := by
  rw [iotaMat, Matrix.det_mul, Matrix.det_mul, Matrix.det_transpose]
  simp [Matrix.det_fin_two_of]

noncomputable def iotaG (g : FiltrationCocycleLiftCriterion) : FiltrationCocycleLiftCriterion :=
  toGL (iotaMat ((g : GL (Fin 2) ℝ) : Matrix (Fin 2) (Fin 2) ℝ))
    (by rw [det_iotaMat]; exact (Matrix.GeneralLinearGroup.det_ne_zero (g : GL (Fin 2) ℝ)))

theorem iotaG_mul (g g' : FiltrationCocycleLiftCriterion) : iotaG (g * g') = iotaG g' * iotaG g := by
  apply GL2_ext
  simp only [iotaG, coe_toGL, Subgroup.coe_mul, Units.val_mul, iotaMat, Matrix.transpose_mul]
  have e : (!![1, 0; 0, -1] : Matrix (Fin 2) (Fin 2) ℝ) * !![1, 0; 0, -1] = 1 := by
    ext i j; fin_cases i <;> fin_cases j <;> simp [Matrix.mul_apply, Fin.sum_univ_two]
  simp only [Matrix.mul_assoc]
  rw [← Matrix.mul_assoc (!![1, 0; 0, -1] : Matrix (Fin 2) (Fin 2) ℝ) !![1, 0; 0, -1], e,
    Matrix.one_mul]

theorem iotaG_kMat (θ : ℝ) : iotaG (kMat θ) = kMat θ := by
  apply GL2_ext
  simp only [iotaG, coe_toGL, coe_kMat]
  ext i j
  simp only [iotaMat, Matrix.mul_apply, Fin.sum_univ_two, Matrix.transpose_apply]
  fin_cases i <;> fin_cases j <;> simp

theorem iotaG_diag (d₁ d₂ : ℝ) (hd : (!![d₁, 0; 0, d₂] : Matrix (Fin 2) (Fin 2) ℝ).det ≠ 0) :
    iotaG (toGL !![d₁, 0; 0, d₂] hd) = toGL !![d₁, 0; 0, d₂] hd := by
  apply GL2_ext
  simp only [iotaG, coe_toGL]
  ext i j
  simp only [iotaMat, Matrix.mul_apply, Fin.sum_univ_two, Matrix.transpose_apply]
  fin_cases i <;> fin_cases j <;> simp

theorem exists_kak (g : FiltrationCocycleLiftCriterion) : ∃ (α β : ℝ) (D : FiltrationCocycleLiftCriterion), iotaG D = D ∧ g = kMat α * D * kMat β := by
  obtain ⟨k₁, k₂, a, -, hg⟩ := exists_KAK (g : GL (Fin 2) ℝ)
  obtain ⟨θ₁, h₁⟩ := orthogonal_cases k₁.2
  obtain ⟨θ₂, h₂⟩ := orthogonal_cases k₂.2
  simp only [RCLike.ofReal_real_eq_id, id] at hg

  have key : ∀ (e₁ e₂ : Matrix (Fin 2) (Fin 2) ℝ) (θ : ℝ),
      (e₁ = 1 ∨ e₁ = !![1, 0; 0, -1]) → (e₂ = 1 ∨ e₂ = !![1, 0; 0, -1]) →
      (k₁ : Matrix (Fin 2) (Fin 2) ℝ) = !![Real.cos θ₁, Real.sin θ₁; -Real.sin θ₁, Real.cos θ₁] * e₁ →
      (k₂ : Matrix (Fin 2) (Fin 2) ℝ) = e₂ * !![Real.cos θ, Real.sin θ; -Real.sin θ, Real.cos θ] →
      ∃ (α β : ℝ) (D : FiltrationCocycleLiftCriterion), iotaG D = D ∧ g = kMat α * D * kMat β := by
    intro e₁ e₂ θ he₁ he₂ hk₁ hk₂
    set M := e₁ * Matrix.diagonal (fun i => a i) * e₂ with hM
    have hMd : ∃ d₁ d₂ : ℝ, M = !![d₁, 0; 0, d₂] := by
      have h01 : M 0 1 = 0 := by
        rcases he₁ with rfl | rfl <;> rcases he₂ with rfl | rfl <;>
          simp only [hM, Matrix.mul_apply, Fin.sum_univ_two, Matrix.diagonal_apply, Matrix.one_apply] <;>
          simp
      have h10 : M 1 0 = 0 := by
        rcases he₁ with rfl | rfl <;> rcases he₂ with rfl | rfl <;>
          simp only [hM, Matrix.mul_apply, Fin.sum_univ_two, Matrix.diagonal_apply, Matrix.one_apply] <;>
          simp
      refine ⟨M 0 0, M 1 1, ?_⟩
      ext i j; fin_cases i <;> fin_cases j <;> simp [h01, h10]
    obtain ⟨d₁, d₂, hd⟩ := hMd
    have hgM : ((g : GL (Fin 2) ℝ) : Matrix (Fin 2) (Fin 2) ℝ) =
        !![Real.cos θ₁, Real.sin θ₁; -Real.sin θ₁, Real.cos θ₁] * !![d₁, 0; 0, d₂] *
          !![Real.cos θ, Real.sin θ; -Real.sin θ, Real.cos θ] := by
      rw [hg, hk₁, hk₂, ← hd, hM]; simp only [Matrix.mul_assoc]
    have hdet : (!![d₁, 0; 0, d₂] : Matrix (Fin 2) (Fin 2) ℝ).det ≠ 0 := by
      intro h0
      have := Matrix.GeneralLinearGroup.det_ne_zero (g : GL (Fin 2) ℝ)
      rw [hgM, Matrix.det_mul, Matrix.det_mul, h0] at this
      simp at this
    refine ⟨θ₁, θ, toGL _ hdet, iotaG_diag d₁ d₂ hdet, ?_⟩
    apply GL2_ext
    simp only [Subgroup.coe_mul, Units.val_mul, coe_kMat, coe_toGL]
    exact hgM
  have hε : (!![1, 0; 0, -1] : Matrix (Fin 2) (Fin 2) ℝ) * !![1, 0; 0, -1] = 1 := by
    ext i j; fin_cases i <;> fin_cases j <;> simp [Matrix.mul_apply, Fin.sum_univ_two]
  have hrot : ∀ θ : ℝ, !![Real.cos θ, Real.sin θ; -Real.sin θ, Real.cos θ] * (!![1, 0; 0, -1] : Matrix (Fin 2) (Fin 2) ℝ) =
      !![1, 0; 0, -1] * !![Real.cos (-θ), Real.sin (-θ); -Real.sin (-θ), Real.cos (-θ)] := by
    intro θ; ext i j; fin_cases i <;> fin_cases j <;> simp [Matrix.mul_apply, Fin.sum_univ_two]
  rcases h₁ with h₁ | h₁ <;> rcases h₂ with h₂ | h₂
  · exact key 1 1 θ₂ (Or.inl rfl) (Or.inl rfl) (by rw [h₁, Matrix.mul_one]) (by rw [h₂, Matrix.one_mul])
  · exact key 1 _ (-θ₂) (Or.inl rfl) (Or.inr rfl) (by rw [h₁, Matrix.mul_one]) (by rw [h₂, hrot])
  · exact key _ 1 θ₂ (Or.inr rfl) (Or.inl rfl) h₁ (by rw [h₂, Matrix.one_mul])
  · exact key _ _ (-θ₂) (Or.inr rfl) (Or.inr rfl) h₁ (by rw [h₂, hrot])

end GroundTheory.Automorphic.ArchWhittaker
