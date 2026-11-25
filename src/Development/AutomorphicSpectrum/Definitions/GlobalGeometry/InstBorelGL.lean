module

public import Mathlib.MeasureTheory.Constructions.BorelSpace.Basic
public import Mathlib.NumberTheory.LocalField.Basic
public import Mathlib.Topology.Instances.Matrix

@[expose] public section

noncomputable section

open MeasureTheory Matrix
open scoped ComplexConjugate ValuativeRel

namespace GlobalTheory.CompanionTheory.QL

section Base

variable {F : Type} [Field F]

def IsInt {n : ℕ} (R : Subring F) (Z : Matrix (Fin n) (Fin n) F) : Prop := ∀ a b, Z a b ∈ R

theorem isInt_mul' (O : Subring F) {a : ℕ} {x y : Matrix (Fin a) (Fin a) F} (hx : IsInt O x)
    (hy : IsInt O y) : IsInt O (x * y) := by
  intro a b
  rw [Matrix.mul_apply]
  exact sum_mem fun k _ => O.mul_mem (hx a k) (hy k b)

def GLint (O : Subring F) (a : ℕ) : Subgroup (GL (Fin a) F) where
  carrier := {g | IsInt O (g : Matrix (Fin a) (Fin a) F) ∧
    IsInt O ((g⁻¹ : GL (Fin a) F) : Matrix (Fin a) (Fin a) F)}
  one_mem' := by
    constructor <;> intro i j <;> by_cases h : i = j <;> simp [h, O.one_mem, O.zero_mem]
  mul_mem' := by
    rintro x y ⟨hx, hx'⟩ ⟨hy, hy'⟩
    refine ⟨by simpa using isInt_mul' O hx hy, ?_⟩
    simpa [_root_.mul_inv_rev] using isInt_mul' O hy' hx'
  inv_mem' := by
    rintro x ⟨hx, hx'⟩
    exact ⟨by simpa using hx', by simpa using hx⟩

instance instMeasGL {K : Type} [CommRing K] [TopologicalSpace K] [IsTopologicalRing K] (n : ℕ) :
    MeasurableSpace (GL (Fin n) K) := borel _
instance instBorelGL {K : Type} [CommRing K] [TopologicalSpace K] [IsTopologicalRing K] (n : ℕ) :
    BorelSpace (GL (Fin n) K) := ⟨rfl⟩

def omegaS {a : ℕ} {m : Type} [Fintype m] (χ : Fˣ →* ℂˣ) (nrm : AbsoluteValue F ℝ) (g : GL (Fin a) F)
    (Φ : Matrix m (Fin a) F → ℂ) : Matrix m (Fin a) F → ℂ :=
  fun x => ((χ (Matrix.GeneralLinearGroup.det g) : ℂˣ) : ℂ) *
    (((nrm ((Matrix.GeneralLinearGroup.det g : Fˣ) : F)) ^ ((Fintype.card m : ℝ) / 2) : ℝ) : ℂ) *
    Φ (x * (g : Matrix (Fin a) (Fin a) F))

end Base

section Local

variable {F : Type} [Field F]

def chi0 (δ : Fˣ →* ℂˣ) (x : F) : ℂ :=
  open Classical in if h : x = 0 then 0 else ((δ (Units.mk0 x h) : ℂˣ) : ℂ)

def bAA {r d c : ℕ} (x : Matrix (Fin (r + d)) (Fin (r + c)) F) : Matrix (Fin r) (Fin r) F :=
  x.submatrix (Fin.castAdd d) (Fin.castAdd c)
def bAD {r d c : ℕ} (x : Matrix (Fin (r + d)) (Fin (r + c)) F) : Matrix (Fin r) (Fin c) F :=
  x.submatrix (Fin.castAdd d) (Fin.natAdd r)
def bDA {r d c : ℕ} (x : Matrix (Fin (r + d)) (Fin (r + c)) F) : Matrix (Fin d) (Fin r) F :=
  x.submatrix (Fin.natAdd r) (Fin.castAdd c)
def bDD {r d c : ℕ} (x : Matrix (Fin (r + d)) (Fin (r + c)) F) : Matrix (Fin d) (Fin c) F :=
  x.submatrix (Fin.natAdd r) (Fin.natAdd r)

variable (O : Subring F) (ϖ : F) (nrm : AbsoluteValue F ℝ)

def IsSphFn {c : ℕ} (χ : Fin c → F → ℂ) (φ : GL (Fin c) F → ℂ) : Prop :=
  ∀ b : GL (Fin c) F, (b : Matrix (Fin c) (Fin c) F).BlockTriangular id → ∀ k ∈ GLint O c,
    φ (b * k) = ∏ i : Fin c, χ i ((b : Matrix (Fin c) (Fin c) F) i i) *
      ((nrm ((b : Matrix (Fin c) (Fin c) F) i i) ^ (((c : ℝ) - 1) / 2 - (i : ℕ)) : ℝ) : ℂ)

variable [TopologicalSpace F] [IsTopologicalRing F]

end Local

section More

variable {F : Type} [Field F]

def Mint (O : Subring F) (c : ℕ) : Set (GL (Fin c) F) := {g | IsInt O (g : Matrix (Fin c) (Fin c) F)}

def pEl {r c : ℕ} (m₁ : GL (Fin r) F) (B : Matrix (Fin r) (Fin c) F) (m₂ : GL (Fin c) F) : GL (Fin (r + c)) F where
  val := Matrix.reindex finSumFinEquiv finSumFinEquiv
    (Matrix.fromBlocks (m₁ : Matrix (Fin r) (Fin r) F) B 0 (m₂ : Matrix (Fin c) (Fin c) F))
  inv := Matrix.reindex finSumFinEquiv finSumFinEquiv
    (Matrix.fromBlocks ((m₁⁻¹ : GL (Fin r) F) : Matrix (Fin r) (Fin r) F)
      (-(((m₁⁻¹ : GL (Fin r) F) : Matrix (Fin r) (Fin r) F) * B * ((m₂⁻¹ : GL (Fin c) F) : Matrix (Fin c) (Fin c) F))) 0
      ((m₂⁻¹ : GL (Fin c) F) : Matrix (Fin c) (Fin c) F))
  val_inv := by
    simp only [Matrix.reindex_apply, Matrix.submatrix_mul_equiv, Matrix.fromBlocks_multiply, Matrix.mul_neg,
      ← Matrix.mul_assoc, Units.mul_inv, Matrix.one_mul, Matrix.zero_mul, Matrix.mul_zero, add_zero, zero_add,
      neg_add_cancel, neg_zero, Matrix.fromBlocks_one, Matrix.submatrix_one_equiv]
  inv_val := by
    simp only [Matrix.reindex_apply, Matrix.submatrix_mul_equiv, Matrix.fromBlocks_multiply, Matrix.neg_mul,
      Matrix.mul_assoc, Units.inv_mul, Matrix.mul_one, Matrix.zero_mul, Matrix.mul_zero, add_zero, zero_add,
      add_neg_cancel, Matrix.fromBlocks_one, Matrix.submatrix_one_equiv]

def UnrChar (nrm : AbsoluteValue F ℝ) (q : ℕ) {c : ℕ} (χ : Fin c → F → ℂ) (α : Fin c → ℂ) : Prop :=
  (∀ i, α i ≠ 0) ∧ ∀ i (x : F) (e : ℤ), nrm x = (q : ℝ) ^ (-e) → χ i x = α i ^ e

structure LF [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]
    (O : Subring F) (ϖ : F) (nrm : AbsoluteValue F ℝ) (q : ℕ) : Prop where
  O_eq : O = 𝒪[F]
  ne : ϖ ≠ 0
  lt_one : ∀ x : F, ValuativeRel.valuation F x < 1 ↔ ∃ o ∈ O, x = ϖ * o
  card : q = Nat.card 𝓀[F]
  nrm_unit : ∀ x : F, ValuativeRel.valuation F x = 1 → nrm x = 1
  nrm_pi : nrm ϖ = (q : ℝ)⁻¹

end More

end GlobalTheory.CompanionTheory.QL
