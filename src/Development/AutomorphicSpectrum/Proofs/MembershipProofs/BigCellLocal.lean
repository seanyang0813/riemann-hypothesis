module

public import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
public import Mathlib.LinearAlgebra.Matrix.NonsingularInverse
public import Mathlib.LinearAlgebra.Matrix.ToLinearEquiv
public import Mathlib.CategoryTheory.Category.Basic
public import Mathlib.RingTheory.LocalRing.Defs
public import Mathlib.RingTheory.LocalRing.ResidueField.Basic
import Development.AutomorphicSpectrum.Definitions.MembershipCriteria.GoodChar
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.MembershipProofs.ExistsSkewOfDiagonal, Development.AutomorphicSpectrum.Proofs.MembershipProofs.BigCellLocal

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.MembershipProofs.ExistsSkewOfDiagonal =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.MembershipProofs.ExistsSkewOfDiagonal", "h": "module\n\npublic import Mathlib.LinearAlgebra.Matrix.Determinant.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Definitions.MembershipCriteria.GoodChar\npublic import Mathlib.LinearAlgebra.Matrix.NonsingularInverse\npublic import Mathlib.LinearAlgebra.Matrix.ToLinearEquiv\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.CompanionTheory.VacLoc GlobalTheory.CompanionTheory.FinHeis GlobalTheory.WeilM MeasureTheory Matrix

namespace GlobalTheory.CompanionTheory.CommonTransversal

theorem exists_skew_isUnit_det {F : Type} [Field F] (σ : F →+* F) {β : Type} [Fintype β]
    [DecidableEq β] (a b : Matrix β β F) (hσ : ∀ z, σ (σ z) = z) (hz : ∃ z, σ z ≠ z)
    (h : a * (b.map σ)ᵀ + b * (a.map σ)ᵀ = 0)
    (hv : ∀ v : β → F, Matrix.vecMul v a = 0 → Matrix.vecMul v b = 0 → v = 0) :
    ∃ s : Matrix β β F, (s.map σ)ᵀ = -s ∧ IsUnit (a + b * s).det := by
  classical
  obtain ⟨L, L', D, hD⟩ := Matrix.Pivot.exists_list_transvec_mul_diagonal_mul_list_transvec a
  obtain ⟨P, hP⟩ : ∃ P, P = (L.map Matrix.TransvectionStruct.toMatrix).prod := ⟨_, rfl⟩
  obtain ⟨Q, hQ⟩ : ∃ Q, Q = (L'.map Matrix.TransvectionStruct.toMatrix).prod := ⟨_, rfl⟩
  rw [← hP, ← hQ] at hD
  have hP1 : P.det = 1 := by rw [hP]; exact Matrix.TransvectionStruct.det_toMatrix_prod L
  have hQ1 : Q.det = 1 := by rw [hQ]; exact Matrix.TransvectionStruct.det_toMatrix_prod L'
  have hst1 : ∀ M : Matrix β β F, M.det = 1 → ((M.map σ)ᵀ).det = 1 := by
    intro M hM
    rw [Matrix.det_transpose]
    have e : (M.map σ).det = σ M.det := (RingHom.map_det σ M).symm
    rw [e, hM, map_one]
  have cancel : ∀ (M : Matrix β β F) (x : β → F), M.det = 1 → x ᵥ* M = 0 → x = 0 := by
    intro M x hM hx
    have hu : IsUnit M.det := by rw [hM]; exact isUnit_one
    calc x = x ᵥ* (M * M⁻¹) := by rw [Matrix.mul_nonsing_inv (A := M) hu, Matrix.vecMul_one]
      _ = 0 := by rw [← Matrix.vecMul_vecMul, hx, Matrix.zero_vecMul]
  obtain ⟨z, hz⟩ := hz
  obtain ⟨c, hcdef⟩ : ∃ c, c = z - σ z := ⟨_, rfl⟩
  have hc : c ≠ 0 := by rw [hcdef]; exact sub_ne_zero.2 (Ne.symm hz)
  have hσc : σ c = -c := by rw [hcdef, map_sub, hσ]; ring
  obtain ⟨s0, hs0⟩ : ∃ s0 : Matrix β β F, s0 = diagonal (fun i => if D i = 0 then c else 0) :=
    ⟨_, rfl⟩
  have hss : (s0.map σ)ᵀ = -s0 := by
    rw [hs0, Matrix.diagonal_map (map_zero σ), Matrix.diagonal_transpose, Matrix.diagonal_neg]
    congr 1
    funext i
    split_ifs <;> simp [hσc]
  have hQQ : ((((Q.map σ)ᵀ).map σ)ᵀ) = Q := by
    ext i j
    simp [hσ]
  have hsta : (a.map σ)ᵀ = (Q.map σ)ᵀ * diagonal (fun i => σ (D i)) * (P.map σ)ᵀ := by
    rw [hD, Matrix.map_mul, Matrix.map_mul, Matrix.transpose_mul, Matrix.transpose_mul,
      Matrix.diagonal_map (map_zero σ), Matrix.diagonal_transpose, Matrix.mul_assoc]
  refine ⟨(Q.map σ)ᵀ * s0 * Q, ?_, ?_⟩
  · rw [Matrix.map_mul, Matrix.map_mul, Matrix.transpose_mul, Matrix.transpose_mul, hss, hQQ,
      Matrix.neg_mul, Matrix.mul_neg, ← Matrix.mul_assoc]
  · rw [isUnit_iff_ne_zero]
    intro hdet
    obtain ⟨v, hv0, hvM⟩ := Matrix.exists_vecMul_eq_zero_iff.2 hdet
    apply hv0
    have e1 : a + b * ((Q.map σ)ᵀ * s0 * Q) = (P * diagonal D + b * (Q.map σ)ᵀ * s0) * Q := by
      rw [hD]
      simp only [Matrix.add_mul, Matrix.mul_assoc]
    have h0 : v ᵥ* (P * diagonal D + b * (Q.map σ)ᵀ * s0) = 0 :=
      cancel Q _ hQ1 (by rw [Matrix.vecMul_vecMul, ← e1]; exact hvM)
    have h0' : (v ᵥ* P) ᵥ* diagonal D + ((v ᵥ* b) ᵥ* (Q.map σ)ᵀ) ᵥ* s0 = 0 := by
      simpa only [Matrix.vecMul_vecMul, Matrix.vecMul_add] using h0
    have hE : ∀ j, (v ᵥ* P) j * D j +
        ((v ᵥ* b) ᵥ* (Q.map σ)ᵀ) j * (if D j = 0 then c else 0) = 0 := by
      intro j
      have e := congr_fun h0' j
      rw [Pi.add_apply, Matrix.vecMul_diagonal, hs0, Matrix.vecMul_diagonal] at e
      exact e
    have hwD : (v ᵥ* P) ᵥ* diagonal D = 0 := by
      funext j
      rw [Matrix.vecMul_diagonal, Pi.zero_apply]
      by_cases hDj : D j = 0
      · rw [hDj, mul_zero]
      · have e := hE j
        rw [if_neg hDj, mul_zero, add_zero] at e
        rw [(mul_eq_zero.1 e).resolve_right hDj, zero_mul]
    have hva : v ᵥ* a = 0 := by
      rw [hD, ← Matrix.vecMul_vecMul, ← Matrix.vecMul_vecMul, hwD, Matrix.zero_vecMul]
    have hc1 : v ᵥ* (a * (b.map σ)ᵀ + b * (a.map σ)ᵀ) = 0 := by rw [h, Matrix.vecMul_zero]
    rw [Matrix.vecMul_add, ← Matrix.vecMul_vecMul, ← Matrix.vecMul_vecMul, hva, Matrix.zero_vecMul,
      zero_add, hsta, ← Matrix.vecMul_vecMul, ← Matrix.vecMul_vecMul] at hc1
    have hud : ((v ᵥ* b) ᵥ* (Q.map σ)ᵀ) ᵥ* diagonal (fun i => σ (D i)) = 0 :=
      cancel _ _ (hst1 P hP1) hc1
    have hu : (v ᵥ* b) ᵥ* (Q.map σ)ᵀ = 0 := by
      funext j
      rw [Pi.zero_apply]
      by_cases hDj : D j = 0
      · have e := hE j
        rw [if_pos hDj, hDj, mul_zero, zero_add] at e
        exact (mul_eq_zero.1 e).resolve_right hc
      · have e := congr_fun hud j
        rw [Matrix.vecMul_diagonal, Pi.zero_apply] at e
        exact (mul_eq_zero.1 e).resolve_right ((map_ne_zero σ).2 hDj)
    exact hv v hva (cancel _ _ (hst1 Q hQ1) hu)

end GlobalTheory.CompanionTheory.CommonTransversal
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.MembershipProofs.ExistsSkewOfDiagonal =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.MembershipProofs.BigCellLocal =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.MembershipProofs.BigCellLocal", "h": "module\n\npublic import Mathlib.CategoryTheory.Category.Basic\npublic import Mathlib.LinearAlgebra.Matrix.Determinant.Basic\npublic import Mathlib.RingTheory.LocalRing.Defs\npublic import Development.AutomorphicSpectrum.Proofs.MembershipProofs.ExistsSkewOfDiagonal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Definitions.MembershipCriteria.GoodChar\npublic import Mathlib.RingTheory.LocalRing.ResidueField.Basic\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.CompanionTheory.VacLoc GlobalTheory.CompanionTheory.FinHeis GlobalTheory.WeilM MeasureTheory Matrix

namespace GlobalTheory.CompanionTheory.VacLoc.BigCellLocal

section Iso

variable {A : Type} [CommRing A] (σ : A →+* A) {ι : Type} [Fintype ι] [DecidableEq ι]

def Iso (D₁ D₂ M : Matrix ι ι A) : Prop := Mᵀ * D₁ * M.map σ = D₂

variable {σ}

omit [DecidableEq ι] in
theorem Iso.mul {D₁ D₂ D₃ M N : Matrix ι ι A} (h : Iso σ D₁ D₂ M) (h' : Iso σ D₂ D₃ N) : Iso σ D₁ D₃ (M * N) := by
  unfold Iso at *
  rw [transpose_mul, Matrix.map_mul, ← h', ← h]
  simp only [Matrix.mul_assoc]

theorem Iso.inv {D₁ D₂ M N : Matrix ι ι A} (h : Iso σ D₁ D₂ M) (hN : M * N = 1) : Iso σ D₂ D₁ N := by
  unfold Iso at *
  have h1 : M.map σ * N.map σ = 1 := by
    rw [← Matrix.map_mul, hN]; exact Matrix.map_one _ (map_zero σ) (map_one σ)
  have h2 : Nᵀ * Mᵀ = 1 := by rw [← transpose_mul, hN, transpose_one]
  calc _ = (Nᵀ * Mᵀ) * D₁ * (M.map σ * N.map σ) := by rw [← h]; simp only [Matrix.mul_assoc]
    _ = D₁ := by rw [h1, h2, Matrix.one_mul, Matrix.mul_one]

theorem Iso.isUnit_det {D₁ D₂ M : Matrix ι ι A} (h : Iso σ D₁ D₂ M) (hD : IsUnit D₂.det) : IsUnit M.det := by
  unfold Iso at h
  rw [← h, det_mul, det_mul, det_transpose] at hD
  exact isUnit_of_mul_isUnit_left (isUnit_of_mul_isUnit_left hD)

end Iso

section Split

variable {A : Type} [CommRing A] {σ : A →+* A} {β : Type} [Fintype β] [DecidableEq β]

def Wm (A : Type) [CommRing A] (β : Type) [DecidableEq β] : Matrix (β ⊕ β) (β ⊕ β) A := fromBlocks 0 1 1 0

theorem Wm_mul_self : Wm A β * Wm A β = 1 := by
  simp [Wm, fromBlocks_multiply]

theorem Wm_det : IsUnit (Wm A β).det := by
  have := congrArg det (Wm_mul_self (A := A) (β := β))
  rw [det_mul, det_one] at this
  exact IsUnit.of_mul_eq_one _ this

theorem map_one' : (1 : Matrix β β A).map σ = 1 := Matrix.map_one _ (map_zero σ) (map_one σ)

theorem iso_Wm : Iso σ (Wm A β) (Wm A β) (Wm A β) := by
  simp [Iso, Wm, fromBlocks_multiply, fromBlocks_transpose, fromBlocks_map]

theorem iso_n {s : Matrix β β A} (hs : s.map σ = -sᵀ) : Iso σ (Wm A β) (Wm A β) (fromBlocks 1 s 0 1) := by
  simp [Iso, Wm, fromBlocks_multiply, fromBlocks_transpose, fromBlocks_map, hs]

theorem iso_col {a b c d : Matrix β β A} (h : Iso σ (Wm A β) (Wm A β) (fromBlocks a b c d)) :
    cᵀ * a.map σ + aᵀ * c.map σ = 0 := by
  simp only [Iso, Wm, fromBlocks_multiply, fromBlocks_transpose, fromBlocks_map] at h
  simpa using (fromBlocks_inj.mp h).1

theorem exists_skew [IsLocalRing A] (hσ : ∀ z, σ (σ z) = z) {w : A} (hw : w + σ w = 1) {z : A} (hz : IsUnit (z - σ z))
    {a b c d : Matrix β β A} (h : Iso σ (Wm A β) (Wm A β) (fromBlocks a b c d)) :
    ∃ s : Matrix β β A, s.map σ = -sᵀ ∧ IsUnit (a + s * c).det := by
  haveI : IsLocalHom σ := ⟨fun x hx => by simpa [hσ] using hx.map σ⟩
  set π := IsLocalRing.residue A with hπ
  set τ := IsLocalRing.ResidueField.map σ with hτ
  have hc : ∀ x, τ (π x) = π (σ x) := fun x => IsLocalRing.ResidueField.map_residue σ x
  have hm : ∀ m : Matrix β β A, (m.map π).map τ = (m.map σ).map π := fun m => by
    ext i j; simp [hc]
  have hdet := (h.isUnit_det Wm_det).map π
  rw [RingHom.map_det, RingHom.mapMatrix_apply, fromBlocks_map] at hdet
  obtain ⟨s, hs1, hs2⟩ := GlobalTheory.CompanionTheory.CommonTransversal.exists_skew_isUnit_det τ (a.map π)ᵀ (c.map π)ᵀ
    (fun x => by
      obtain ⟨x, rfl⟩ := IsLocalRing.residue_surjective x
      rw [← hπ, hc, hc, hσ])
    ⟨π z, fun e => by
      have := hz.map π
      rw [map_sub, ← hc, e, sub_self] at this
      exact not_isUnit_zero this⟩
    (by
      have := congrArg (fun m => m.map π) (iso_col h)
      simp only [Matrix.map_add _ (map_add π), Matrix.map_mul, Matrix.map_zero _ (map_zero π)] at this
      rw [transpose_map, transpose_map, transpose_transpose, transpose_transpose, hm, hm, add_comm]
      exact this)
    (fun v h1 h2 => by
      rw [vecMul_transpose] at h1 h2
      have h3 : fromBlocks (a.map π) (b.map π) (c.map π) (d.map π) *ᵥ Sum.elim v 0 = 0 := by
        rw [fromBlocks_mulVec]
        simp [h1, h2]
      have h4 := Matrix.eq_zero_of_mulVec_eq_zero hdet.ne_zero h3
      ext i
      exact congrFun h4 (Sum.inl i))
  choose f hf using (IsLocalRing.residue_surjective (R := A))
  refine ⟨Matrix.of fun i j => w * f (s j i) - σ (w * f (s i j)), ?_, ?_⟩
  · ext i j
    simp [hσ]
  · have e : (Matrix.of fun i j => w * f (s j i) - σ (w * f (s i j))).map π = sᵀ := by
      ext i j
      have h5 : τ (s i j) = - s j i := congrFun (congrFun hs1 j) i
      have h6 : π w + τ (π w) = 1 := by rw [hc, ← map_add (f := _), hw, map_one]
      have hf' : ∀ x, π (f x) = x := hf
      simp only [map_apply, of_apply, map_sub, ← hc, map_mul, hf', h5, transpose_apply]
      linear_combination s j i * h6
    rw [← IsLocalRing.residue_ne_zero_iff_isUnit, ← hπ, RingHom.map_det, RingHom.mapMatrix_apply,
      Matrix.map_add _ (map_add π), Matrix.map_mul, e, ← det_transpose, transpose_add, transpose_mul, transpose_transpose]
    exact hs2.ne_zero

theorem decomp_split [IsLocalRing A] (hσ : ∀ z, σ (σ z) = z) {w : A} (hw : w + σ w = 1) {z : A} (hz : IsUnit (z - σ z))
    {h : Matrix (β ⊕ β) (β ⊕ β) A} (hh : Iso σ (Wm A β) (Wm A β) h) :
    ∃ s u t b d : Matrix β β A, Iso σ (Wm A β) (Wm A β) (fromBlocks 1 s 0 1) ∧
      Iso σ (Wm A β) (Wm A β) (fromBlocks 1 u 0 1) ∧ Iso σ (Wm A β) (Wm A β) (fromBlocks t b 0 d) ∧ IsUnit t.det ∧
      h = fromBlocks 1 s 0 1 * (Wm A β * fromBlocks 1 u 0 1 * Wm A β) * fromBlocks t b 0 d := by
  rw [← fromBlocks_toBlocks h] at hh ⊢
  generalize h.toBlocks₁₁ = a at *
  generalize h.toBlocks₁₂ = b at *
  generalize h.toBlocks₂₁ = c at *
  generalize h.toBlocks₂₂ = d at *
  obtain ⟨s, hs, ha⟩ := exists_skew hσ hw hz hh
  have h1 := (iso_n hs).mul hh
  simp only [fromBlocks_multiply, Matrix.one_mul, Matrix.zero_mul, zero_add] at h1
  set a' := a + s * c with ha'
  have h2 := iso_col h1
  have i1 : a' * a'⁻¹ = 1 := mul_nonsing_inv _ ha
  have i2 : a'⁻¹ * a' = 1 := nonsing_inv_mul _ ha
  have i3 : a'.map σ * a'⁻¹.map σ = 1 := by rw [← Matrix.map_mul, i1, map_one']
  have i4 : a'⁻¹ᵀ * a'ᵀ = 1 := by rw [← transpose_mul, i1, transpose_one]
  have hu : (c * a'⁻¹).map σ = -(c * a'⁻¹)ᵀ := by
    have := congrArg (fun m => a'⁻¹ᵀ * m * a'⁻¹.map σ) h2
    simp only [Matrix.mul_add, Matrix.add_mul, Matrix.mul_zero, Matrix.zero_mul] at this
    rw [← Matrix.mul_assoc, ← Matrix.mul_assoc, i4, Matrix.mul_assoc _ (a'.map σ), i3] at this
    rw [Matrix.map_mul, transpose_mul, eq_neg_iff_add_eq_zero, add_comm]
    simpa using this
  have hs' : (-s).map σ = -(-s)ᵀ := by rw [Matrix.map_neg _ (map_neg σ), hs, transpose_neg]
  have hu' : (-(c * a'⁻¹)).map σ = -(-(c * a'⁻¹))ᵀ := by rw [Matrix.map_neg _ (map_neg σ), hu, transpose_neg]
  have h3 := ((iso_Wm.mul (iso_n hu')).mul iso_Wm).mul h1
  have e3 : Wm A β * fromBlocks 1 (-(c * a'⁻¹)) 0 1 * Wm A β * fromBlocks a' (b + s * d) c d =
      fromBlocks a' (b + s * d) 0 (d - c * a'⁻¹ * (b + s * d)) := by
    simp [Wm, fromBlocks_multiply, Matrix.mul_assoc, i2, sub_eq_neg_add]
  rw [e3] at h3
  refine ⟨-s, c * a'⁻¹, a', _, _, iso_n hs', iso_n hu, h3, ha, ?_⟩
  rw [Matrix.mul_assoc]
  have e4 : Wm A β * fromBlocks 1 (c * a'⁻¹) 0 1 * Wm A β * fromBlocks a' (b + s * d) 0 (d - c * a'⁻¹ * (b + s * d)) =
      fromBlocks a' (b + s * d) c d := by
    simp [Wm, fromBlocks_multiply, Matrix.mul_assoc, i2]
  rw [e4]
  simp [fromBlocks_multiply, ha']

end Split

section Lift

variable {R : Type} [CommRing R] {E : Type} [CommRing E] [Algebra R E] {c : E →ₐ[R] E} {A : Subring E} {σ : A →+* A}
  {ι : Type} [Fintype ι] [DecidableEq ι]

end Lift

end GlobalTheory.CompanionTheory.VacLoc.BigCellLocal
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.MembershipProofs.BigCellLocal =====
