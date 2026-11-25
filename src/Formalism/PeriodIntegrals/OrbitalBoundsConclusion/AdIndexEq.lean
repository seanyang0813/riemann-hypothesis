module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.LocSplitChiOf
public import Mathlib.Data.Matrix.PEquiv
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.Commensurated
public import Formalism.SatakeDualWeyl.Statement
public import Mathlib.LinearAlgebra.Dimension.OrzechProperty
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.ChiEqOneOfClosure
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.CommensuratedOfIsOpenIsCompact
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.CompactLocalGlobal
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.LiftMatMapSame
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.Reduce
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.InertPowDefs
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.InertPow
public import Formalism.LocalRingCardinality.SpanPowerMembership.Adelic
public import Mathlib.RingTheory.AdicCompletion.Topology
public import Formalism.PeriodIntegrals.AdIndexEq
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.LocalRingCardinality.SpanPowerMembership.LocAtA

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.GLDelta, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.ModQOneOfClosure, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.ModQEqOneOfMemNormalizer, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.Assemble, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.InertGen, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.InertQRG, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.Partial, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.IndexEqOfTraceInt, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.InertPowD, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AdIndexEq

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.GLDelta =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.GLDelta", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.LocSplitChiOf\npublic import Mathlib.Data.Matrix.PEquiv\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.AdIndexEq

namespace GLChiPf

open Matrix

variable {k : Type} [Field k] {n : ℕ}

def glOf (M : Matrix (Fin n) (Fin n) k) (h : M.det ≠ 0) : GL (Fin n) k :=
  ⟨M, M⁻¹, Matrix.mul_nonsing_inv M (isUnit_iff_ne_zero.mpr h),
    Matrix.nonsing_inv_mul M (isUnit_iff_ne_zero.mpr h)⟩

theorem chi_conj (χ : GL (Fin n) k →* ℚ) (s x : GL (Fin n) k) : χ (s * x * s⁻¹) = χ x := by
  rw [map_mul, map_mul, mul_comm (χ s), mul_assoc, ← map_mul, mul_inv_cancel, map_one, mul_one]

theorem diag_transvection [CharZero k] (i j : Fin n) (hij : i ≠ j) (c : k) :
    diagonal (Function.update (1 : Fin n → k) i 2) * transvection i j c *
      diagonal (Function.update (1 : Fin n → k) i 2⁻¹) = transvection i j (2 * c) := by
  ext a b
  simp only [mul_diagonal, diagonal_mul, transvection, Matrix.add_apply, Matrix.one_apply,
    Matrix.single_apply, Function.update_apply, Pi.one_apply, eq_comm (a := i) (b := a),
    eq_comm (a := j) (b := b)]
  have h2 : (2 : k) ≠ 0 := two_ne_zero
  by_cases ha : a = i <;> by_cases hb : b = i <;> by_cases hab : a = b <;>
    by_cases hjb : b = j <;> simp_all

theorem chi_transvection [CharZero k] (χ : GL (Fin n) k →* ℚ) (hpos : ∀ g, 0 < χ g)
    (t : TransvectionStruct (Fin n) k) (h : t.toMatrix.det ≠ 0) : χ (glOf t.toMatrix h) = 1 := by
  obtain ⟨i, j, hij, c⟩ := t
  have h2 : (2 : k) ≠ 0 := two_ne_zero
  have key : ∀ a : k, a ≠ 0 → diagonal (Function.update (1 : Fin n → k) i a) *
      diagonal (Function.update (1 : Fin n → k) i a⁻¹) = 1 := by
    intro a ha
    rw [diagonal_mul_diagonal, ← diagonal_one]
    congr 1
    funext x
    by_cases hx : x = i
    · subst hx; simp [ha]
    · simp [hx]
  have key' : diagonal (Function.update (1 : Fin n → k) i 2⁻¹) *
      diagonal (Function.update (1 : Fin n → k) i 2) = 1 := by
    simpa using key 2⁻¹ (inv_ne_zero h2)
  let s : GL (Fin n) k := ⟨diagonal (Function.update (1 : Fin n → k) i 2),
    diagonal (Function.update (1 : Fin n → k) i 2⁻¹), key 2 h2, key'⟩
  have hsq : s * glOf _ h * s⁻¹ = glOf _ h * glOf _ h := by
    apply Units.ext
    change diagonal (Function.update (1 : Fin n → k) i 2) * transvection i j c *
      diagonal (Function.update (1 : Fin n → k) i 2⁻¹) = transvection i j c * transvection i j c
    rw [diag_transvection i j hij c, two_mul]
    symm
    apply transvection_mul_transvection_same
    all_goals exact hij
  have e := chi_conj χ s (glOf _ h)
  rw [hsq, map_mul] at e
  exact mul_left_cancel₀ (ne_of_gt (hpos _)) (e.trans (mul_one _).symm)

def dU : (Fin n → kˣ) →* GL (Fin n) k :=
  (Units.map (Matrix.diagonalRingHom (Fin n) k).toMonoidHom).comp MulEquiv.piUnits.symm.toMonoidHom

theorem dU_val (D : Fin n → kˣ) :
    ((dU D : GL (Fin n) k) : Matrix (Fin n) (Fin n) k) = diagonal (fun i => (D i : k)) := rfl

theorem perm_conj (σ : Equiv.Perm (Fin n)) (hσ : σ.symm = σ) (M : Matrix (Fin n) (Fin n) k) :
    σ.toPEquiv.toMatrix * M * σ.toPEquiv.toMatrix = M.submatrix σ σ := by
  rw [PEquiv.toMatrix_toPEquiv_mul, PEquiv.mul_toMatrix_toPEquiv, hσ]
  rfl

theorem perm_sq (σ : Equiv.Perm (Fin n)) (hσ : σ.symm = σ) :
    σ.toPEquiv.toMatrix * σ.toPEquiv.toMatrix = (1 : Matrix (Fin n) (Fin n) k) := by
  have e := perm_conj σ hσ (1 : Matrix (Fin n) (Fin n) k)
  rwa [Matrix.mul_one, Matrix.submatrix_one_equiv] at e

def sU (σ : Equiv.Perm (Fin n)) (hσ : σ.symm = σ) : GL (Fin n) k :=
  ⟨σ.toPEquiv.toMatrix, σ.toPEquiv.toMatrix, perm_sq σ hσ, perm_sq σ hσ⟩

theorem sU_conj_dU (σ : Equiv.Perm (Fin n)) (hσ : σ.symm = σ) (D : Fin n → kˣ) :
    sU σ hσ * dU D * (sU σ hσ)⁻¹ = dU (D ∘ σ) := by
  apply Units.ext
  show σ.toPEquiv.toMatrix * ((dU D : GL (Fin n) k) : Matrix (Fin n) (Fin n) k) * σ.toPEquiv.toMatrix =
    ((dU (D ∘ σ) : GL (Fin n) k) : Matrix (Fin n) (Fin n) k)
  rw [dU_val, dU_val, perm_conj σ hσ, Matrix.submatrix_diagonal_equiv]
  rfl

theorem mulSingle_comp_swap (i j : Fin n) (d : kˣ) :
    (Pi.mulSingle i d : Fin n → kˣ) ∘ (Equiv.swap i j) = Pi.mulSingle j d := by
  funext x
  simp only [Function.comp_apply]
  by_cases hxj : x = j
  · subst hxj; simp
  · by_cases hxi : x = i
    · subst hxi
      rw [Equiv.swap_apply_left, Pi.mulSingle_eq_of_ne (Ne.symm hxj), Pi.mulSingle_eq_of_ne hxj]
    · rw [Equiv.swap_apply_of_ne_of_ne hxi hxj, Pi.mulSingle_eq_of_ne hxi, Pi.mulSingle_eq_of_ne hxj]

theorem chi_single_eq (χ : GL (Fin n) k →* ℚ) (i j : Fin n) (d : kˣ) :
    χ (dU (Pi.mulSingle i d)) = χ (dU (Pi.mulSingle j d)) := by
  have h := chi_conj χ (sU (Equiv.swap i j) (Equiv.symm_swap i j)) (dU (Pi.mulSingle i d))
  rw [sU_conj_dU, mulSingle_comp_swap] at h
  exact h.symm

theorem chi_single (χ : GL (Fin n) k →* ℚ) (hpos : ∀ g, 0 < χ g)
    (hz : ∀ d : kˣ, χ (Units.map (algebraMap k (Matrix (Fin n) (Fin n) k)).toMonoidHom d) = 1)
    (i : Fin n) (d : kˣ) : χ (dU (Pi.mulSingle i d)) = 1 := by
  have hn : n ≠ 0 := by rintro rfl; exact i.elim0
  have hsc : Units.map (algebraMap k (Matrix (Fin n) (Fin n) k)).toMonoidHom d = dU (fun _ => d) := by
    apply Units.ext
    rw [dU_val]
    ext a b
    simp [Matrix.algebraMap_matrix_apply, Matrix.diagonal_apply]
  have hprod : (fun _ : Fin n => d) = ∏ l, Pi.mulSingle l d := (Finset.univ_prod_mulSingle (fun _ => d)).symm
  have h1 : (χ.comp dU) (fun _ => d) = 1 := by rw [MonoidHom.comp_apply, ← hsc]; exact hz d
  rw [hprod, map_prod] at h1
  simp only [MonoidHom.comp_apply] at h1
  have h2 : ∏ l : Fin n, χ (dU (Pi.mulSingle l d)) = ∏ _l : Fin n, χ (dU (Pi.mulSingle i d)) :=
    Finset.prod_congr rfl (fun l _ => chi_single_eq χ l i d)
  rw [h2, Finset.prod_const, Finset.card_univ, Fintype.card_fin] at h1
  exact (pow_eq_one_iff_of_nonneg (hpos _).le hn).mp h1

theorem chi_diag (χ : GL (Fin n) k →* ℚ) (hpos : ∀ g, 0 < χ g)
    (hz : ∀ d : kˣ, χ (Units.map (algebraMap k (Matrix (Fin n) (Fin n) k)).toMonoidHom d) = 1)
    (D : Fin n → kˣ) : χ (dU D) = 1 := by
  have e : χ (dU D) = (χ.comp dU) (∏ i, Pi.mulSingle i (D i)) := by
    rw [Finset.univ_prod_mulSingle]; rfl
  rw [e, map_prod]
  exact Finset.prod_eq_one (fun i _ => chi_single χ hpos hz i (D i))

end GLChiPf

open GLChiPf in
theorem gl_character : GLChi := by
  intro k _ _ n χ hpos hz g
  obtain ⟨L, L', D, hM⟩ :=
    Matrix.Pivot.exists_list_transvec_mul_diagonal_mul_list_transvec (g : Matrix (Fin n) (Fin n) k)
  have htd : ∀ t : Matrix.TransvectionStruct (Fin n) k, t.toMatrix.det ≠ 0 := fun t => by
    rw [t.det]; exact one_ne_zero
  have lu_val : ∀ l : List (Matrix.TransvectionStruct (Fin n) k),
      (((l.map fun t => glOf t.toMatrix (htd t)).prod : Matrix.GeneralLinearGroup (Fin n) k) :
        Matrix (Fin n) (Fin n) k) = (l.map Matrix.TransvectionStruct.toMatrix).prod := by
    intro l
    induction l with
    | nil => rfl
    | cons t l ih =>
      simp only [List.map_cons, List.prod_cons, Units.val_mul, ih]
      try rfl
  have lu_chi : ∀ l : List (Matrix.TransvectionStruct (Fin n) k),
      χ ((l.map fun t => glOf t.toMatrix (htd t)).prod) = 1 := by
    intro l
    induction l with
    | nil => simp
    | cons t l ih =>
      rw [List.map_cons, List.prod_cons, map_mul, ih, chi_transvection χ hpos t (htd t), one_mul]
  have det_l : ∀ l : List (Matrix.TransvectionStruct (Fin n) k),
      (l.map Matrix.TransvectionStruct.toMatrix).prod.det = 1 := by
    intro l
    induction l with
    | nil => simp
    | cons t l ih => rw [List.map_cons, List.prod_cons, Matrix.det_mul, t.det, ih, one_mul]
  have hg0 : (g : Matrix (Fin n) (Fin n) k).det ≠ 0 :=
    ((Matrix.isUnit_iff_isUnit_det _).mp (Units.isUnit g)).ne_zero
  have hdet : (g : Matrix (Fin n) (Fin n) k).det = ∏ j, D j := by
    rw [hM, Matrix.det_mul, Matrix.det_mul, det_l, det_l, Matrix.det_diagonal, one_mul, mul_one]
  have hD : ∀ i, D i ≠ 0 := by
    intro i
    rw [hdet] at hg0
    exact Finset.prod_ne_zero_iff.mp hg0 i (Finset.mem_univ i)
  have hg : g = (L.map fun t => glOf t.toMatrix (htd t)).prod * dU (fun i => Units.mk0 (D i) (hD i)) *
      (L'.map fun t => glOf t.toMatrix (htd t)).prod := by
    apply Units.ext
    rw [Units.val_mul, Units.val_mul, lu_val, lu_val, dU_val]
    exact hM
  rw [hg, map_mul, map_mul, lu_chi, lu_chi, chi_diag χ hpos hz, one_mul, one_mul]

end PI.UnitaryGroupMassFormula.AdIndexEq
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.GLDelta =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.ModQOneOfClosure =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.ModQOneOfClosure", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.Commensurated\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.AdIndexEq

open NumberField IsDedekindDomain
open Formalism.MainNotions.S

def ModQHom : Prop :=
  ∀ (G : Type) [Group G] (K : Subgroup G), Commensurated K →
    (∀ x y : G, modQ K (x * y) = modQ K x * modQ K y) ∧ (∀ k ∈ K, modQ K k = 1) ∧
      (∀ x : G, modQ K x = 1 → dIdx K x = dIdx K x⁻¹)

end PI.UnitaryGroupMassFormula.AdIndexEq

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.ModQOneOfClosure =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.ModQEqOneOfMemNormalizer =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.ModQEqOneOfMemNormalizer", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.Commensurated\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.AdIndexEq

section Delta

variable {G : Type} [Group G]

def idxRatio (A B : Subgroup G) : ℚ := (B.relIndex A : ℚ) / (A.relIndex B : ℚ)

theorem idxRatio_eq_of_le (A B D : Subgroup G) (hDA : D ≤ A) (hDB : D ≤ B)
    (hA : D.relIndex A ≠ 0) :
    idxRatio A B = (D.relIndex A : ℚ) / (D.relIndex B : ℚ) := by
  have h1 : D.relIndex (A ⊓ B) * (A ⊓ B).relIndex A = D.relIndex A :=
    Subgroup.relIndex_mul_relIndex (hHK := le_inf hDA hDB) (hKL := inf_le_left)
  have h2 : D.relIndex (A ⊓ B) * (A ⊓ B).relIndex B = D.relIndex B :=
    Subgroup.relIndex_mul_relIndex (hHK := le_inf hDA hDB) (hKL := inf_le_right)
  rw [Subgroup.inf_relIndex_left] at h1
  rw [Subgroup.inf_relIndex_right] at h2
  have hc0 : D.relIndex (A ⊓ B) ≠ 0 := by
    intro h0
    apply hA
    rw [← h1, h0, zero_mul]
  have hc : (D.relIndex (A ⊓ B) : ℚ) ≠ 0 := Nat.cast_ne_zero.mpr hc0
  unfold idxRatio
  rw [← h1, ← h2, Nat.cast_mul, Nat.cast_mul, mul_div_mul_left _ _ hc]

theorem relIndex_inf_three_ne_zero {A B C L : Subgroup G} (hA : A.relIndex L ≠ 0)
    (hB : B.relIndex L ≠ 0) (hC : C.relIndex L ≠ 0) : (A ⊓ B ⊓ C).relIndex L ≠ 0 := by
  exact Subgroup.relIndex_inf_ne_zero (Subgroup.relIndex_inf_ne_zero hA hB) hC

theorem relIndex_self_ne_zero (A : Subgroup G) : A.relIndex A ≠ 0 := by
  rw [Subgroup.relIndex_self]
  exact one_ne_zero

theorem idxRatio_mul (A B C : Subgroup G)
    (hAB : B.relIndex A ≠ 0) (hAC : C.relIndex A ≠ 0) (hBA : A.relIndex B ≠ 0)
    (hBC : C.relIndex B ≠ 0) :
    idxRatio A B * idxRatio B C = idxRatio A C := by
  have hDA := relIndex_inf_three_ne_zero (relIndex_self_ne_zero A) hAB hAC
  have hDB := relIndex_inf_three_ne_zero hBA (relIndex_self_ne_zero B) hBC
  rw [idxRatio_eq_of_le A B (A ⊓ B ⊓ C) (le_trans inf_le_left inf_le_left)
      (le_trans inf_le_left inf_le_right) hDA,
    idxRatio_eq_of_le B C (A ⊓ B ⊓ C) (le_trans inf_le_left inf_le_right) inf_le_right hDB,
    idxRatio_eq_of_le A C (A ⊓ B ⊓ C) (le_trans inf_le_left inf_le_left) inf_le_right hDA,
    div_mul_div_comm, mul_comm ((A ⊓ B ⊓ C).relIndex A : ℚ),
    mul_div_mul_left _ _ (Nat.cast_ne_zero.mpr hDB)]

private theorem relIndex_map_of_injective (X Y : Subgroup G) (f : G →* G) (hf : Function.Injective f) :
    (X.map f).relIndex (Y.map f) = X.relIndex Y := by
  rw [← Subgroup.relIndex_comap, Subgroup.comap_map_eq_self_of_injective hf]

theorem idxRatio_map (A B : Subgroup G) (f : G →* G) (hf : Function.Injective f) :
    idxRatio (A.map f) (B.map f) = idxRatio A B := by
  unfold idxRatio
  rw [relIndex_map_of_injective _ _ f hf, relIndex_map_of_injective _ _ f hf]

theorem map_conj_mul' (K : Subgroup G) (a b : G) :
    (K.map (MulAut.conj b).toMonoidHom).map (MulAut.conj a).toMonoidHom =
      K.map (MulAut.conj (a * b)).toMonoidHom := by
  rw [Subgroup.map_map]
  congr 1
  ext y
  simp [MulAut.conj_apply, mul_assoc]

theorem map_conj_one' (K : Subgroup G) : K.map (MulAut.conj (1 : G)).toMonoidHom = K := by
  ext x
  simp [Subgroup.mem_map]

theorem relIndex_conj_conj_ne_zero (K : Subgroup G) (hK : Commensurated K) (x y : G) :
    (K.map (MulAut.conj x).toMonoidHom).relIndex (K.map (MulAut.conj y).toMonoidHom) ≠ 0 := by
  have h1 : K.map (MulAut.conj x).toMonoidHom =
      (K.map (MulAut.conj (y⁻¹ * x)).toMonoidHom).map (MulAut.conj y).toMonoidHom := by
    rw [map_conj_mul', mul_inv_cancel_left]
  rw [h1, relIndex_map_of_injective _ _ _ (by intro a b h; simpa using h)]
  exact hK (y⁻¹ * x)

theorem relIndex_conj_right_ne_zero (K : Subgroup G) (hK : Commensurated K) (a : G) :
    K.relIndex (K.map (MulAut.conj a).toMonoidHom) ≠ 0 := by
  have h := relIndex_conj_conj_ne_zero K hK 1 a
  rwa [map_conj_one'] at h

theorem dIdx_inv_eq (K : Subgroup G) (x : G) :
    dIdx K x⁻¹ = K.relIndex (K.map (MulAut.conj x).toMonoidHom) := by
  unfold dIdx
  rw [← relIndex_map_of_injective _ _ (MulAut.conj x).toMonoidHom (by intro a b h; simpa using h),
    map_conj_mul', mul_inv_cancel, map_conj_one']

theorem modQ_eq_idxRatio (K : Subgroup G) (x : G) :
    modQ K x = idxRatio K (K.map (MulAut.conj x).toMonoidHom) := by
  unfold modQ idxRatio
  rw [dIdx_inv_eq]
  rfl

theorem dIdx_one (K : Subgroup G) : dIdx K 1 = 1 := by
  unfold dIdx
  rw [map_conj_one', Subgroup.relIndex_self]

theorem modQ_one (K : Subgroup G) : modQ K 1 = 1 := by
  unfold modQ
  simp [dIdx_one]

theorem modQ_mul (K : Subgroup G) (hK : Commensurated K) (x y : G) :
    modQ K (x * y) = modQ K x * modQ K y := by
  rw [modQ_eq_idxRatio, modQ_eq_idxRatio, modQ_eq_idxRatio,
    ← idxRatio_map K (K.map (MulAut.conj y).toMonoidHom) (MulAut.conj x).toMonoidHom
      (by intro a b h; simpa using h), map_conj_mul']
  exact (idxRatio_mul K (K.map (MulAut.conj x).toMonoidHom) (K.map (MulAut.conj (x * y)).toMonoidHom)
    (hK x) (hK (x * y)) (relIndex_conj_right_ne_zero K hK x)
    (relIndex_conj_conj_ne_zero K hK (x * y) x)).symm

end Delta

end PI.UnitaryGroupMassFormula.AdIndexEq
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.ModQEqOneOfMemNormalizer =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.Assemble =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.Assemble", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.ModQOneOfClosure\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.ModQEqOneOfMemNormalizer\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.AdIndexEq

open NumberField IsDedekindDomain
open scoped TensorProduct
open Formalism.MainNotions.S

theorem mod_q_hom : ModQHom := by
  unfold ModQHom
  intro G _ K hK
  have hk1 : ∀ k ∈ K, dIdx K k = 1 := by
    intro k hk
    unfold dIdx
    rw [Subgroup.relIndex_eq_one]
    intro y hy
    refine Subgroup.mem_map.2 ⟨k⁻¹ * y * k, K.mul_mem (K.mul_mem (K.inv_mem hk) hy) hk, ?_⟩
    simp [MulAut.conj_apply, mul_assoc]
  refine ⟨fun x y => modQ_mul K hK x y, fun k hk => ?_, fun x hx => ?_⟩
  · unfold modQ
    rw [hk1 k hk, hk1 k⁻¹ (K.inv_mem hk)]
    norm_num
  · unfold modQ at hx
    have hne : (dIdx K x⁻¹ : ℚ) ≠ 0 := by exact_mod_cast hK x⁻¹
    rw [div_eq_one_iff_eq hne] at hx
    exact_mod_cast hx

section Lift

variable (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F))

def liftFn (hL : LiftU) (g : Uv I v) : I.Gf := Classical.choose (hL I v g g.2)

theorem liftFn_spec (hL : LiftU) (g : Uv I v) :
    matV I v ((liftFn I v hL g : I.Gf) : GL (Fin I.n) (I.E ⊗[I.F] Af I.F)) = g ∧ SuppAt I v (liftFn I v hL g) :=
  Classical.choose_spec (hL I v g g.2)

theorem eq_liftFn (hL : LiftU) (hJ : MatVInj) (g : Uv I v) (y : I.Gf)
    (hy : matV I v (y : GL (Fin I.n) (I.E ⊗[I.F] Af I.F)) = g) (hs : SuppAt I v y) :
    y = liftFn I v hL g := by
  apply hJ I
  intro w
  by_cases hw : w = v
  · rw [hw, hy, (liftFn_spec I v hL g).1]
  · rw [hs w hw, (liftFn_spec I v hL g).2 w hw]

def liftHom (hL : LiftU) (hJ : MatVInj) : Uv I v →* I.Gf where
  toFun := liftFn I v hL
  map_one' := by
    symm
    apply eq_liftFn I v hL hJ 1 1
    · simp
    · intro w _
      simp
  map_mul' := by
    intro g h
    symm
    apply eq_liftFn I v hL hJ (g * h)
    · simp only [Subgroup.coe_mul, map_mul, Subgroup.coe_mul]
      rw [(liftFn_spec I v hL g).1, (liftFn_spec I v hL h).1]
    · intro w hw
      simp only [Subgroup.coe_mul, map_mul]
      rw [(liftFn_spec I v hL g).2 w hw, (liftFn_spec I v hL h).2 w hw, one_mul]

theorem liftHom_apply (hL : LiftU) (hJ : MatVInj) (g : Uv I v) :
    liftHom I v hL hJ g = liftFn I v hL g := rfl

def chiV (hC : KComm) (hL : LiftU) (hJ : MatVInj) : Uv I v →* ℚ where
  toFun g := modQ (PI.AdIndexEq.Ksub I) (liftHom I v hL hJ g)
  map_one' := by simp [modQ_one]
  map_mul' g h := by simp only [map_mul]; exact modQ_mul _ (hC I) _ _

private theorem modQ_eq_one_of_central {G : Type} [Group G] (K : Subgroup G) (y : G)
    (hy : ∀ x : G, y * x * y⁻¹ = x) : modQ K y = 1 := by
  have h1 : ∀ z : G, (∀ x : G, z * x * z⁻¹ = x) → dIdx K z = 1 := by
    intro z hz
    unfold dIdx
    rw [Subgroup.relIndex_eq_one]
    intro k hk
    exact Subgroup.mem_map.2 ⟨k, hk, by simp [MulAut.conj_apply, hz k]⟩
  have h2 : ∀ x : G, y⁻¹ * x * y⁻¹⁻¹ = x := by
    intro x
    have hx := hy x
    rw [inv_inv]
    calc y⁻¹ * x * y = y⁻¹ * (y * x * y⁻¹) * y := by rw [hx]
      _ = x := by group
  unfold modQ
  rw [h1 y hy, h1 y⁻¹ h2]
  norm_num

theorem chiV_props (hC : KComm) (hL : LiftU) (hJ : MatVInj) (hU : MatVU) (hK : KLocGlob) :
    (∀ g, 0 < chiV I v hC hL hJ g) ∧
    (∀ s : Uv I v, (∀ t : Uv I v, s * t = t * s) → chiV I v hC hL hJ s = 1) ∧
    (∀ s : Uv I v, (∃ m : ℕ, 1 ≤ m ∧
        (((s ^ m : Uv I v) : GL (Fin I.n) (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v ⊗[I.F] I.E)) ∈ Kv I v)) →
        chiV I v hC hL hJ s = 1) := by
  have hM := mod_q_hom I.Gf (PI.AdIndexEq.Ksub I) (hC I)
  have hpos : ∀ g, 0 < chiV I v hC hL hJ g := by
    intro g
    show 0 < modQ (PI.AdIndexEq.Ksub I) (liftHom I v hL hJ g)
    unfold modQ
    apply div_pos
    · exact_mod_cast Nat.pos_of_ne_zero (hC I _)
    · exact_mod_cast Nat.pos_of_ne_zero (hC I _)
  refine ⟨hpos, fun s hs => ?_, fun s hs => ?_⟩
  · show modQ (PI.AdIndexEq.Ksub I) (liftHom I v hL hJ s) = 1
    have hyv : matV I v ((liftHom I v hL hJ s : I.Gf) : GL (Fin I.n) (I.E ⊗[I.F] Af I.F)) = s := by
      rw [liftHom_apply]
      exact (liftFn_spec I v hL s).1
    have hys : SuppAt I v (liftHom I v hL hJ s) := by
      rw [liftHom_apply]
      exact (liftFn_spec I v hL s).2
    apply modQ_eq_one_of_central
    intro x
    apply hJ I
    intro w
    simp only [Subgroup.coe_mul, Subgroup.coe_inv, map_mul, map_inv]
    by_cases hw : w = v
    · rw [hw]
      have hc := congrArg Subtype.val (hs ⟨_, hU I v x⟩)
      simp only [Subgroup.coe_mul] at hc
      rw [hyv, hc, mul_inv_cancel_right]
    · rw [hys w hw, one_mul, inv_one, mul_one]
  · obtain ⟨m, hm, hsm⟩ := hs
    have hpow : chiV I v hC hL hJ (s ^ m) = 1 := by
      show modQ (PI.AdIndexEq.Ksub I) (liftHom I v hL hJ (s ^ m)) = 1
      apply hM.2.1
      refine (hK I _).2 fun w => ?_
      rw [liftHom_apply]
      by_cases hw : w = v
      · rw [hw, (liftFn_spec I v hL (s ^ m)).1]
        exact hsm
      · rw [(liftFn_spec I v hL (s ^ m)).2 w hw]
        exact (Kv I w).one_mem
    rw [map_pow] at hpow
    exact (pow_eq_one_iff_of_nonneg (hpos s).le (by omega)).1 hpow

theorem modQ_of_supp (hC : KComm) (hL : LiftU) (hJ : MatVInj) (hU : MatVU) (y : I.Gf) (hy : SuppAt I v y) :
    modQ (PI.AdIndexEq.Ksub I) y = chiV I v hC hL hJ ⟨_, hU I v y⟩ := by
  show modQ (PI.AdIndexEq.Ksub I) y = modQ (PI.AdIndexEq.Ksub I) (liftHom I v hL hJ ⟨_, hU I v y⟩)
  rw [liftHom_apply, ← eq_liftFn I v hL hJ ⟨_, hU I v y⟩ y rfl hy]

end Lift

theorem locInert_of (hC : KComm) (hL : LiftU) (hJ : MatVInj) (hU : MatVU) (hK : KLocGlob)
    (h : LocInertChi) : LocInert := by
  unfold LocInert
  intro I v hv y hy
  obtain ⟨h1, h2, h3⟩ := chiV_props I v hC hL hJ hU hK
  rw [modQ_of_supp I v hC hL hJ hU y hy]
  exact h I v hv _ h1 h2 h3 _

theorem locSplit_of (hC : KComm) (hL : LiftU) (hJ : MatVInj) (hU : MatVU) (hK : KLocGlob)
    (h : LocSplitChi) : LocSplit := by
  unfold LocSplit
  intro I v hv y hy
  obtain ⟨h1, h2, h3⟩ := chiV_props I v hC hL hJ hU hK
  rw [modQ_of_supp I v hC hL hJ hU y hy]
  exact h I v hv _ h1 h2 h3 _

theorem indexEq_of_loc (hC : KComm) (hL : LiftU) (hJ : MatVInj) (hU : MatVU) (hK : KLocGlob)
    (hR : ReduceLoc) (hS : LocSplitChi) (hI : LocInertChi) : PI.AdIndexEq.IndexEq := by
  unfold PI.AdIndexEq.IndexEq
  intro I x
  have hM := mod_q_hom I.Gf (PI.AdIndexEq.Ksub I) (hC I)
  have hloc : ∀ v (y : I.Gf), SuppAt I v y → modQ (PI.AdIndexEq.Ksub I) y = 1 := by
    intro v y hy
    by_cases hv : IsFieldAt I v
    · exact locInert_of hC hL hJ hU hK hI I v hv y hy
    · exact locSplit_of hC hL hJ hU hK hS I v hv y hy
  have hxm := hR I x
  have hx : modQ (PI.AdIndexEq.Ksub I) x = 1 := by
    induction hxm using Subgroup.closure_induction with
    | mem y hy =>
      rcases hy with ⟨v, hv⟩ | hy
      · exact hloc v y hv
      · exact hM.2.1 y hy
    | one => exact modQ_one _
    | mul a b _ _ ha hb => rw [hM.1, ha, hb, one_mul]
    | inv a _ ha =>
      have h1 := hM.1 a a⁻¹
      rw [mul_inv_cancel, modQ_one, ha, one_mul] at h1
      exact h1.symm
  exact hM.2.2 x hx

end PI.UnitaryGroupMassFormula.AdIndexEq

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.Assemble =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.InertGen =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.InertGen", "h": "module\n\npublic import Formalism.SatakeDualWeyl.Statement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.Dimension.OrzechProperty\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.AdIndexEq.QRG

open Matrix Formalism.UG

variable {K : Type} [Field K] {n : ℕ}

def H (σ : K →+* K) (J : Matrix (Fin n) (Fin n) K) (x y : Fin n → K) : K :=
  (σ ∘ x) ⬝ᵥ (J *ᵥ y)

section Form

variable (σ : K →+* K) (J : Matrix (Fin n) (Fin n) K)

theorem H_add_right (x y z : Fin n → K) : H σ J x (y + z) = H σ J x y + H σ J x z := by
  simp [H, Matrix.mulVec_add, dotProduct_add]

theorem H_smul_right (x y : Fin n → K) (c : K) : H σ J x (c • y) = c * H σ J x y := by
  simp [H, Matrix.mulVec_smul, dotProduct_smul]

theorem H_neg_right (x y : Fin n → K) : H σ J x (-y) = - H σ J x y := by
  simp [H, Matrix.mulVec_neg, dotProduct_neg]

theorem H_sub_right (x y z : Fin n → K) : H σ J x (y - z) = H σ J x y - H σ J x z := by
  simp [H, Matrix.mulVec_sub, dotProduct_sub]

theorem comp_add' (x y : Fin n → K) : σ ∘ (x + y) = σ ∘ x + σ ∘ y := by
  funext i
  simp

theorem comp_smul' (c : K) (x : Fin n → K) : σ ∘ (c • x) = σ c • (σ ∘ x) := by
  funext i
  simp

theorem comp_neg' (x : Fin n → K) : σ ∘ (-x) = -(σ ∘ x) := by
  funext i
  simp

theorem H_add_left (x y z : Fin n → K) : H σ J (x + y) z = H σ J x z + H σ J y z := by
  unfold H
  rw [comp_add' σ, add_dotProduct]

theorem H_smul_left (x y : Fin n → K) (c : K) : H σ J (c • x) y = σ c * H σ J x y := by
  unfold H
  rw [comp_smul' σ, smul_dotProduct, smul_eq_mul]

theorem H_neg_left (x y : Fin n → K) : H σ J (-x) y = - H σ J x y := by
  unfold H
  rw [comp_neg' σ, neg_dotProduct]

theorem H_sub_left (x y z : Fin n → K) : H σ J (x - y) z = H σ J x z - H σ J y z := by
  rw [sub_eq_add_neg, H_add_left, H_neg_left, ← sub_eq_add_neg]

theorem H_zero_right (x : Fin n → K) : H σ J x 0 = 0 := by
  simp [H]

theorem H_sum_right {ι : Type} (s : Finset ι) (x : Fin n → K) (v : ι → Fin n → K) :
    H σ J x (∑ i ∈ s, v i) = ∑ i ∈ s, H σ J x (v i) := by
  simp [H, Matrix.mulVec_sum, dotProduct_sum]

theorem H_symm (hσ : ∀ a, σ (σ a) = a) (hJ : cT σ J = J) (x y : Fin n → K) :
    H σ J y x = σ (H σ J x y) := by
  have hJ' : ∀ i j, σ (J i j) = J j i := by
    intro i j
    have h := congrFun (congrFun hJ j) i
    simpa [cT] using h
  unfold H

  simp only [dotProduct, Matrix.mulVec, Function.comp_apply, map_sum, map_mul, hσ, hJ',
  Finset.mul_sum]
  rw [Finset.sum_comm]
  exact Finset.sum_congr rfl (fun i _ => Finset.sum_congr rfl (fun j _ => by ring))

theorem H_mulVec (M : Matrix (Fin n) (Fin n) K) (x y : Fin n → K) :
    H σ J (M *ᵥ x) (M *ᵥ y) = H σ (cT σ M * J * M) x y := by
  have e1 : σ ∘ (M *ᵥ x) = (M.map σ) *ᵥ (σ ∘ x) := by
    funext i

    simp [Matrix.mulVec, dotProduct, map_sum]
  unfold H
  rw [e1]
  conv_rhs => rw [← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, Matrix.dotProduct_mulVec]
  simp only [cT, Matrix.vecMul_transpose]

theorem H_single (A : Matrix (Fin n) (Fin n) K) (i j : Fin n) :
    H σ A (Pi.single i 1) (Pi.single j 1) = A i j := by
  simp [H, dotProduct, Matrix.mulVec, Pi.single_apply, apply_ite σ]

theorem mem_UJ_of (g : GL (Fin n) K)
    (h : ∀ x y, H σ J ((g : Matrix (Fin n) (Fin n) K) *ᵥ x) ((g : Matrix (Fin n) (Fin n) K) *ᵥ y) =
      H σ J x y) : g ∈ UJ σ J := by
  show cT σ (g : Matrix (Fin n) (Fin n) K) * J * (g : Matrix (Fin n) (Fin n) K) = J
  ext i j
  have h1 := h (Pi.single i 1) (Pi.single j 1)
  rw [H_mulVec, H_single, H_single] at h1
  exact h1

theorem H_of_mem (g : GL (Fin n) K) (hg : g ∈ UJ σ J) (x y : Fin n → K) :
    H σ J ((g : Matrix (Fin n) (Fin n) K) *ᵥ x) ((g : Matrix (Fin n) (Fin n) K) *ᵥ y) = H σ J x y := by
  have hg' : cT σ (g : Matrix (Fin n) (Fin n) K) * J * (g : Matrix (Fin n) (Fin n) K) = J := hg
  rw [H_mulVec, hg']

theorem eq_zero_of_H (hdet : J.det ≠ 0) (w : Fin n → K) (h : ∀ z, H σ J w z = 0) : w = 0 := by
  have h1 : (σ ∘ w) ᵥ* J = 0 := by
    funext k
    have h2 := h (Pi.single k 1)
    rw [H, Matrix.dotProduct_mulVec, dotProduct_single, mul_one] at h2
    exact h2
  have h2 := Matrix.eq_zero_of_vecMul_eq_zero hdet h1
  funext i
  have h3 := congrFun h2 i
  simpa using h3

end Form

section Refl

variable (σ : K →+* K) (J : Matrix (Fin n) (Fin n) K)

def Pm (a : Fin n → K) : Matrix (Fin n) (Fin n) K :=
  (H σ J a a)⁻¹ • vecMulVec a ((σ ∘ a) ᵥ* J)

theorem Pm_mulVec (a z : Fin n → K) : Pm σ J a *ᵥ z = ((H σ J a a)⁻¹ * H σ J a z) • a := by
  have hb : ((σ ∘ a) ᵥ* J) ⬝ᵥ z = H σ J a z := by
    unfold H
    rw [Matrix.dotProduct_mulVec]
  funext k
  rw [← hb]
  simp only [Pm, Matrix.mulVec, dotProduct, Matrix.smul_apply, vecMulVec_apply, smul_eq_mul,
    Pi.smul_apply, Finset.mul_sum, Finset.sum_mul]
  exact Finset.sum_congr rfl (fun j _ => by ring)

theorem Pm_idem (a : Fin n → K) (ha : H σ J a a ≠ 0) : Pm σ J a * Pm σ J a = Pm σ J a := by
  have key : ∀ v, (Pm σ J a * Pm σ J a) *ᵥ v = Pm σ J a *ᵥ v := by
    intro v
    rw [← Matrix.mulVec_mulVec, Pm_mulVec σ J a v, Matrix.mulVec_smul, Pm_mulVec σ J a a,
      inv_mul_cancel₀ ha, one_smul]
  ext i j
  have h1 := congrFun (key (Pi.single j 1)) i
  simpa [Matrix.mulVec_single_one] using h1

def Rm (a : Fin n → K) (α : K) : Matrix (Fin n) (Fin n) K := 1 + (α - 1) • Pm σ J a

theorem Rm_mulVec (a z : Fin n → K) (α : K) :
    Rm σ J a α *ᵥ z = z + ((α - 1) * ((H σ J a a)⁻¹ * H σ J a z)) • a := by
  have e : ((α - 1) • Pm σ J a) *ᵥ z = (α - 1) • (Pm σ J a *ᵥ z) := by
    funext k
    simp [Matrix.mulVec, dotProduct, Finset.mul_sum, mul_assoc]
  rw [Rm, Matrix.add_mulVec, Matrix.one_mulVec, e, Pm_mulVec, smul_smul]

theorem one_add_smul_mul (P : Matrix (Fin n) (Fin n) K) (hP : P * P = P) (u w : K) :
    (1 + u • P) * (1 + w • P) = 1 + (u + w + u * w) • P := by
  simp only [add_mul, mul_add, Matrix.one_mul, Matrix.mul_one, Matrix.smul_mul, Matrix.mul_smul,
    smul_smul, hP, add_smul, mul_comm w u]
  abel

def Rgl (a : Fin n → K) (α : K) (hα : σ α * α = 1) (ha : H σ J a a ≠ 0) : GL (Fin n) K where
  val := Rm σ J a α
  inv := Rm σ J a (σ α)
  val_inv := by
    rw [Rm, Rm, one_add_smul_mul _ (Pm_idem σ J a ha)]
    have : α - 1 + (σ α - 1) + (α - 1) * (σ α - 1) = 0 := by linear_combination hα
    rw [this, zero_smul, add_zero]
  inv_val := by
    rw [Rm, Rm, one_add_smul_mul _ (Pm_idem σ J a ha)]
    have : σ α - 1 + (α - 1) + (σ α - 1) * (α - 1) = 0 := by linear_combination hα
    rw [this, zero_smul, add_zero]

theorem Rm_H (hσ : ∀ a, σ (σ a) = a) (hJ : cT σ J = J) (a : Fin n → K) (α : K) (hα : σ α * α = 1)
    (x y : Fin n → K) : H σ J (Rm σ J a α *ᵥ x) (Rm σ J a α *ᵥ y) = H σ J x y := by
  rw [Rm_mulVec, Rm_mulVec]
  by_cases hc : H σ J a a = 0
  · simp [hc]
  have hxa : H σ J x a = σ (H σ J a x) := H_symm σ J hσ hJ a x
  have hcs : σ (H σ J a a) = H σ J a a := (H_symm σ J hσ hJ a a).symm
  have hcc : (H σ J a a)⁻¹ * H σ J a a = 1 := inv_mul_cancel₀ hc
  rw [H_add_left, H_add_right, H_add_right, H_smul_left, H_smul_right, H_smul_right, H_smul_left, hxa]
  simp only [map_mul, map_sub, map_one, map_inv₀, hcs]
  linear_combination (σ (H σ J a x) * H σ J a y * (H σ J a a)⁻¹) * hα +
    ((σ α - 1) * (α - 1) * σ (H σ J a x) * H σ J a y * (H σ J a a)⁻¹) * hcc

theorem move (hσ : ∀ a, σ (σ a) = a) (hJ : cT σ J = J) (u y : Fin n → K)
    (huy : H σ J u u = H σ J y y) (ha : H σ J (u - y) (u - y) ≠ 0) :
    ∃ α : K, σ α * α = 1 ∧ Rm σ J (u - y) α *ᵥ u = y ∧
      ∀ z, H σ J (u - y) z = 0 → Rm σ J (u - y) α *ᵥ z = z := by
  have hD : H σ J (u - y) u = H σ J u u - H σ J y u := H_sub_left σ J u y u
  have hsD : σ (H σ J (u - y) u) = H σ J u u - H σ J u y := by
    rw [hD, map_sub, ← H_symm σ J hσ hJ u u, ← H_symm σ J hσ hJ y u]
  have hc : H σ J (u - y) (u - y) = H σ J (u - y) u + σ (H σ J (u - y) u) := by
    rw [hsD, hD, H_sub_right, H_sub_left, H_sub_left, huy]
    ring
  have hD0 : H σ J (u - y) u ≠ 0 := by
    intro h0
    apply ha
    rw [hc, h0, map_zero, add_zero]
  have hsD0 : σ (H σ J (u - y) u) ≠ 0 := (map_ne_zero σ).mpr hD0
  refine ⟨-(σ (H σ J (u - y) u)) / H σ J (u - y) u, ?_, ?_, ?_⟩
  · rw [map_div₀, map_neg, hσ]
    field_simp
  · rw [Rm_mulVec]
    have hcoef : (-(σ (H σ J (u - y) u)) / H σ J (u - y) u - 1) *
        ((H σ J (u - y) (u - y))⁻¹ * H σ J (u - y) u) = -1 := by
      rw [hc]
      have hsum : H σ J (u - y) u + σ (H σ J (u - y) u) ≠ 0 := by rw [← hc]; exact ha
      field_simp
      ring
    rw [hcoef, neg_one_smul]
    abel
  · intro z hz
    rw [Rm_mulVec, hz, mul_zero, mul_zero, zero_smul, add_zero]

end Refl

section Gen

variable (σ : K →+* K) (J : Matrix (Fin n) (Fin n) K)

def S : Subgroup (UJ σ J) :=
  Subgroup.closure {s : UJ σ J | ∃ (P : Matrix (Fin n) (Fin n) K) (α : K), P * P = P ∧ σ α * α = 1 ∧
    ((s : GL (Fin n) K) : Matrix (Fin n) (Fin n) K) = 1 + (α - 1) • P}

def gm (g : UJ σ J) : Matrix (Fin n) (Fin n) K := ((g : GL (Fin n) K) : Matrix (Fin n) (Fin n) K)

theorem gm_mul (g g' : UJ σ J) : gm σ J (g * g') = gm σ J g * gm σ J g' := rfl

theorem H_gm (g : UJ σ J) (x y : Fin n → K) : H σ J (gm σ J g *ᵥ x) (gm σ J g *ᵥ y) = H σ J x y := by exact H_of_mem σ J g.1 g.2 x y

def Rel (hσ : ∀ a, σ (σ a) = a) (hJ : cT σ J = J) (a : Fin n → K) (α : K) (hα : σ α * α = 1)
    (ha : H σ J a a ≠ 0) : UJ σ J :=
  ⟨Rgl σ J a α hα ha, mem_UJ_of σ J _ (fun x y => Rm_H σ J hσ hJ a α hα x y)⟩

theorem gm_Rel (hσ : ∀ a, σ (σ a) = a) (hJ : cT σ J = J) (a : Fin n → K) (α : K) (hα : σ α * α = 1)
    (ha : H σ J a a ≠ 0) : gm σ J (Rel σ J hσ hJ a α hα ha) = Rm σ J a α := rfl

theorem Rel_mem (hσ : ∀ a, σ (σ a) = a) (hJ : cT σ J = J) (a : Fin n → K) (α : K) (hα : σ α * α = 1)
    (ha : H σ J a a ≠ 0) : Rel σ J hσ hJ a α hα ha ∈ S σ J := by exact Subgroup.subset_closure ⟨Pm σ J a, α, Pm_idem σ J a ha, hα, rfl⟩

theorem card_le {m : ℕ} (f : Fin m → Fin n → K)
    (hf : ∀ i, H σ J (f i) (f i) ≠ 0) (ho : ∀ i j, i ≠ j → H σ J (f i) (f j) = 0) : m ≤ n := by
  have hli : LinearIndependent K f := by
    rw [Fintype.linearIndependent_iff]
    intro g hg j
    have h1 := congrArg (H σ J (f j)) hg
    rw [H_sum_right, H_zero_right] at h1
    simp_rw [H_smul_right] at h1
    rw [Finset.sum_eq_single j (fun i _ hij => by rw [ho j i (Ne.symm hij), mul_zero]) (by simp)] at h1
    exact (mul_eq_zero.mp h1).resolve_right (hf j)
  have h2 := hli.fintype_card_le_finrank
  simpa using h2

theorem main (hσ : ∀ a, σ (σ a) = a) (hJ : cT σ J = J) (hdet : J.det ≠ 0) (h2 : (2 : K) ≠ 0)
    (d : ℕ) : ∀ (k : ℕ) (e : Fin k → Fin n → K), n - k = d → (∀ i, H σ J (e i) (e i) ≠ 0) →
      (∀ i j, i ≠ j → H σ J (e i) (e j) = 0) →
      ∀ g : UJ σ J, (∀ i, gm σ J g *ᵥ e i = e i) → g ∈ S σ J := by
  classical
  have hHsymm := H_symm σ J hσ hJ
  have horth_rev : ∀ x v, H σ J x v = 0 → H σ J v x = 0 := by
    intro x v h
    rw [hHsymm x v, h, map_zero]
  have hlin : ∀ {m : ℕ} (f : Fin m → Fin n → K), (∀ i, H σ J (f i) (f i) ≠ 0) →
      (∀ i j, i ≠ j → H σ J (f i) (f j) = 0) → LinearIndependent K f := by
    intro m f hf ho
    rw [Fintype.linearIndependent_iff]
    intro c hc j
    have h1 := congrArg (H σ J (f j)) hc
    rw [H_sum_right, H_zero_right] at h1
    simp_rw [H_smul_right] at h1
    rw [Finset.sum_eq_single j (fun i _ hij => by rw [ho j i (Ne.symm hij), mul_zero]) (by simp)] at h1
    exact (mul_eq_zero.mp h1).resolve_right (hf j)
  have fixS : ∀ g : UJ σ J, gm σ J g = 1 → g ∈ S σ J := by
    intro g hg
    have h1 : g = 1 := Subtype.ext (Units.ext hg)
    rw [h1]
    exact (S σ J).one_mem
  have gm_eq_one : ∀ g : UJ σ J, (∀ v, gm σ J g *ᵥ v = v) → gm σ J g = 1 := by
    intro g hv
    ext i j
    have h1 := congrFun (hv (Pi.single j 1)) i
    rw [Matrix.mulVec_single_one] at h1
    simpa [Matrix.one_apply, Pi.single_apply] using h1
  have proj : ∀ {k : ℕ} (e : Fin k → Fin n → K), (∀ i, H σ J (e i) (e i) ≠ 0) →
      (∀ i j, i ≠ j → H σ J (e i) (e j) = 0) →
      ∀ z, ∃ v, (∀ i, H σ J (e i) v = 0) ∧ z - v ∈ Submodule.span K (Set.range e) := by
    intro k e he ho z
    refine ⟨z - ∑ i, ((H σ J (e i) (e i))⁻¹ * H σ J (e i) z) • e i, ?_, ?_⟩
    · intro j
      rw [H_sub_right, H_sum_right]
      simp_rw [H_smul_right]
      rw [Finset.sum_eq_single j (fun i _ hij => by rw [ho j i (Ne.symm hij), mul_zero]) (by simp)]
      rw [mul_comm ((H σ J (e j) (e j))⁻¹), mul_assoc, inv_mul_cancel₀ (he j), mul_one, sub_self]
    · rw [sub_sub_cancel]
      exact Submodule.sum_mem _ (fun i _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨i, rfl⟩))
  have aniso : ∀ {k : ℕ} (e : Fin k → Fin n → K), k < n → (∀ i, H σ J (e i) (e i) ≠ 0) →
      (∀ i j, i ≠ j → H σ J (e i) (e j) = 0) →
      ∃ w, (∀ i, H σ J (e i) w = 0) ∧ H σ J w w ≠ 0 := by
    intro k e hk he ho
    have hspan : Submodule.span K (Set.range e) ≠ ⊤ := by
      intro htop
      have h1 := finrank_range_le_card (R := K) e
      unfold Set.finrank at h1
      rw [htop, finrank_top, Module.finrank_fin_fun, Fintype.card_fin] at h1
      omega
    obtain ⟨z, hz⟩ : ∃ z, z ∉ Submodule.span K (Set.range e) := by
      by_contra hall
      push_neg at hall
      exact hspan (eq_top_iff.mpr (fun z _ => hall z))
    obtain ⟨v, hvW, hzv⟩ := proj e he ho z
    have hv0 : v ≠ 0 := by
      rintro rfl
      rw [sub_zero] at hzv
      exact hz hzv
    obtain ⟨z2, hz2⟩ : ∃ z2, H σ J v z2 ≠ 0 := by
      by_contra hall
      push_neg at hall
      exact hv0 (eq_zero_of_H σ J hdet v hall)
    obtain ⟨v2, hv2W, hzv2⟩ := proj e he ho z2
    have hvspan : ∀ x ∈ Submodule.span K (Set.range e), H σ J v x = 0 := by
      intro x hx
      induction hx using Submodule.span_induction with
      | mem x hx =>
        obtain ⟨i, rfl⟩ := hx
        exact horth_rev _ _ (hvW i)
      | zero => exact H_zero_right σ J v
      | add x y _ _ hx hy => rw [H_add_right, hx, hy, add_zero]
      | smul c x _ hx => rw [H_smul_right, hx, mul_zero]
    have hvv2 : H σ J v v2 ≠ 0 := by
      intro h0
      apply hz2
      have e1 : z2 = v2 + (z2 - v2) := by abel
      rw [e1, H_add_right, h0, hvspan _ hzv2, add_zero]
    by_cases h1 : H σ J v v = 0
    · by_cases h2' : H σ J v2 v2 = 0
      · refine ⟨v + σ (H σ J v v2) • v2, ?_, ?_⟩
        · intro i
          rw [H_add_right, H_smul_right, hvW i, hv2W i, mul_zero, add_zero]
        · have hsb : σ (H σ J v v2) ≠ 0 := (map_ne_zero σ).mpr hvv2
          intro h0
          rw [H_add_left, H_add_right, H_add_right, H_smul_left, H_smul_right, H_smul_right,
            H_smul_left, h1, h2', hσ, hHsymm v v2] at h0
          exact mul_ne_zero h2 (mul_ne_zero hvv2 hsb) (by linear_combination h0)
      · exact ⟨v2, hv2W, h2'⟩
    · exact ⟨v, hvW, h1⟩
  induction d with
  | zero =>
    intro k e hnk he ho g hg
    have hkn : k ≤ n := card_le σ J e he ho
    have hk : k = n := by omega
    apply fixS
    apply gm_eq_one
    have hli := hlin e he ho
    have h3 : Module.finrank K (Submodule.span K (Set.range e)) = n := by
      have h4 := linearIndependent_iff_card_eq_finrank_span.mp hli
      unfold Set.finrank at h4
      rw [Fintype.card_fin] at h4
      exact h4.symm.trans hk
    have hspan : Submodule.span K (Set.range e) = ⊤ :=
      Submodule.eq_top_of_finrank_eq (by rw [h3, Module.finrank_fin_fun])
    intro v
    have hv : v ∈ Submodule.span K (Set.range e) := by rw [hspan]; exact Submodule.mem_top
    induction hv using Submodule.span_induction with
    | mem x hx =>
      obtain ⟨i, rfl⟩ := hx
      exact hg i
    | zero => exact Matrix.mulVec_zero _
    | add x y _ _ hx hy => rw [Matrix.mulVec_add, hx, hy]
    | smul c x _ hx => rw [Matrix.mulVec_smul, hx]
  | succ d ih =>
    intro k e hnk he ho g hg
    obtain ⟨w, hwe, hww⟩ := aniso e (by omega) he ho
    have he'a : ∀ i, H σ J ((Fin.snoc e w : Fin (k + 1) → Fin n → K) i)
        ((Fin.snoc e w : Fin (k + 1) → Fin n → K) i) ≠ 0 := by
      intro i
      refine Fin.lastCases ?_ (fun j => ?_) i
      · simpa using hww
      · simpa using he j
    have he'o : ∀ i j, i ≠ j → H σ J ((Fin.snoc e w : Fin (k + 1) → Fin n → K) i)
        ((Fin.snoc e w : Fin (k + 1) → Fin n → K) j) = 0 := by
      intro i j
      refine Fin.lastCases ?_ (fun i' => ?_) i <;> refine Fin.lastCases ?_ (fun j' => ?_) j
      · intro hij
        exact absurd rfl hij
      · intro _
        simp only [Fin.snoc_last, Fin.snoc_castSucc]
        exact horth_rev _ _ (hwe j')
      · intro _
        simp only [Fin.snoc_last, Fin.snoc_castSucc]
        exact hwe i'
      · intro hij
        simp only [Fin.snoc_castSucc]
        exact ho i' j' (fun h => hij (by rw [h]))
    have hnk' : n - (k + 1) = d := by omega
    have key : ∀ g' : UJ σ J, (∀ i, gm σ J g' *ᵥ e i = e i) → gm σ J g' *ᵥ w = w → g' ∈ S σ J := by
      intro g' hg'e hg'w
      apply ih (k + 1) (Fin.snoc e w) hnk' he'a he'o g'
      intro i
      refine Fin.lastCases ?_ (fun j => ?_) i
      · simpa using hg'w
      · simpa using hg'e j
    have huu : H σ J (gm σ J g *ᵥ w) (gm σ J g *ᵥ w) = H σ J w w := H_gm σ J g w w
    have hue : ∀ i, H σ J (gm σ J g *ᵥ w) (e i) = 0 := by
      intro i
      calc H σ J (gm σ J g *ᵥ w) (e i) = H σ J (gm σ J g *ᵥ w) (gm σ J g *ᵥ e i) := by rw [hg i]
        _ = H σ J w (e i) := H_gm σ J g w (e i)
        _ = 0 := horth_rev _ _ (hwe i)
    by_cases hA : H σ J (gm σ J g *ᵥ w - w) (gm σ J g *ᵥ w - w) = 0
    · have hpw : H σ J (gm σ J g *ᵥ w - -w) (gm σ J g *ᵥ w - -w) ≠ 0 := by
        rw [sub_neg_eq_add]
        intro h0
        apply mul_ne_zero (mul_ne_zero h2 h2) hww
        have e1 : H σ J (gm σ J g *ᵥ w + w) (gm σ J g *ᵥ w + w) +
            H σ J (gm σ J g *ᵥ w - w) (gm σ J g *ᵥ w - w) =
            2 * H σ J (gm σ J g *ᵥ w) (gm σ J g *ᵥ w) + 2 * H σ J w w := by
          rw [H_add_left, H_add_right, H_add_right, H_sub_left, H_sub_right, H_sub_right]
          ring
        rw [huu, h0, hA] at e1
        linear_combination -e1
      obtain ⟨α, hα, hαu, hαfix⟩ := move σ J hσ hJ (gm σ J g *ᵥ w) (-w)
        (by rw [H_neg_left, H_neg_right, neg_neg, huu]) hpw
      have hR1 := Rel_mem σ J hσ hJ _ α hα hpw
      have hm1 : σ (-1) * (-1 : K) = 1 := by simp
      have hR2 := Rel_mem σ J hσ hJ w (-1) hm1 hww
      have hR2w : Rm σ J w (-1) *ᵥ (-w) = w := by
        rw [Rm_mulVec, H_neg_right, mul_neg, inv_mul_cancel₀ hww,
          show ((-1 : K) - 1) * -1 = 2 by ring, two_smul]
        abel
      have hR2e : ∀ i, Rm σ J w (-1) *ᵥ e i = e i := by
        intro i
        rw [Rm_mulVec, horth_rev _ _ (hwe i), mul_zero, mul_zero, zero_smul, add_zero]
      have hR1e : ∀ i, Rm σ J (gm σ J g *ᵥ w - -w) α *ᵥ e i = e i := fun i =>
        hαfix (e i) (by rw [H_sub_left, H_neg_left, hue i, horth_rev _ _ (hwe i), neg_zero, sub_zero])
      have hTS : (Rel σ J hσ hJ w (-1) hm1 hww * Rel σ J hσ hJ _ α hα hpw) * g ∈ S σ J := by
        apply key
        · intro i
          rw [gm_mul, gm_mul, ← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, hg i, gm_Rel, gm_Rel,
            hR1e, hR2e]
        · rw [gm_mul, gm_mul, ← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, gm_Rel, gm_Rel, hαu, hR2w]
      have e2 : g = (Rel σ J hσ hJ w (-1) hm1 hww * Rel σ J hσ hJ _ α hα hpw)⁻¹ *
          ((Rel σ J hσ hJ w (-1) hm1 hww * Rel σ J hσ hJ _ α hα hpw) * g) := by group
      rw [e2]
      exact (S σ J).mul_mem ((S σ J).inv_mem ((S σ J).mul_mem hR2 hR1)) hTS
    · obtain ⟨α, hα, hαu, hαfix⟩ := move σ J hσ hJ (gm σ J g *ᵥ w) w huu hA
      have hR := Rel_mem σ J hσ hJ _ α hα hA
      have hR1e : ∀ i, Rm σ J (gm σ J g *ᵥ w - w) α *ᵥ e i = e i := fun i =>
        hαfix (e i) (by rw [H_sub_left, hue i, horth_rev _ _ (hwe i), sub_zero])
      have hTS : Rel σ J hσ hJ _ α hα hA * g ∈ S σ J := by
        apply key
        · intro i
          rw [gm_mul, ← Matrix.mulVec_mulVec, hg i, gm_Rel, hR1e]
        · rw [gm_mul, ← Matrix.mulVec_mulVec, gm_Rel, hαu]
      have e2 : g = (Rel σ J hσ hJ _ α hα hA)⁻¹ * (Rel σ J hσ hJ _ α hα hA * g) := by group
      rw [e2]
      exact (S σ J).mul_mem ((S σ J).inv_mem hR) hTS

theorem mem_S (hσ : ∀ a, σ (σ a) = a) (hJ : cT σ J = J) (hdet : J.det ≠ 0) (h2 : (2 : K) ≠ 0)
    (g : UJ σ J) : g ∈ S σ J := by exact main σ J hσ hJ hdet h2 n 0 Fin.elim0 (by simp) (fun i => i.elim0) (fun i => i.elim0) g (fun i => i.elim0)

end Gen

end PI.UnitaryGroupMassFormula.AdIndexEq.QRG

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.InertGen =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.InertQRG =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.InertQRG", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.ChiEqOneOfClosure\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.InertGen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.AdIndexEq

open NumberField IsDedekindDomain
open scoped TensorProduct
open Formalism.MainNotions.S

theorem sigV_tmul (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) (x : Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v)
    (e : I.E) : sigV I v (x ⊗ₜ e) = x ⊗ₜ star e := by
  change (Algebra.TensorProduct.map (AlgHom.id I.F _) I.cm.sig) (x ⊗ₜ e) = _
  exact Algebra.TensorProduct.map_tmul _ _ _ _

theorem sigV_invol (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F))
    (a : Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v ⊗[I.F] I.E) : sigV I v (sigV I v a) = a := by
  induction a using TensorProduct.induction_on with
  | zero => rw [map_zero, map_zero]
  | tmul x e => rw [sigV_tmul, sigV_tmul, star_star]
  | add x y hx hy => rw [map_add (f := _), map_add (f := _), hx, hy]

theorem sigV_inclV (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) (e : I.E) :
    sigV I v (inclV I v e) = inclV I v (star e) := by
  exact sigV_tmul I v 1 e

theorem herm_V (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) :
    Formalism.UG.cT (sigV I v) (I.J.map (inclV I v)) = I.J.map (inclV I v) := by
  funext i j
  have h : starRingEnd I.E (I.J j i) = I.J i j := congrFun (congrFun I.J_herm i) j
  show sigV I v (inclV I v (I.J j i)) = inclV I v (I.J i j)
  rw [sigV_inclV]
  exact congrArg (inclV I v) h

theorem q_reflection_generation : QReflGen := by
  intro I v hv g
  let _ : Field (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v ⊗[I.F] I.E) := hv.toField
  have hinj : Function.Injective (inclV I v) := (inclV I v).injective
  have hdet : (I.J.map (inclV I v)).det ≠ 0 := by
    rw [← RingHom.mapMatrix_apply, ← RingHom.map_det]
    intro h
    exact I.J_det (hinj (by rw [h, map_zero]))
  have h2 : (2 : Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v ⊗[I.F] I.E) ≠ 0 := by
    intro h
    have : inclV I v 2 = inclV I v 0 := by rw [map_ofNat, map_zero]; exact h
    exact two_ne_zero (hinj this)
  exact QRG.mem_S (sigV I v) (I.J.map (inclV I v)) (sigV_invol I v) (herm_V I v) hdet h2 g

theorem locInertChi_of_qReflPow (hP : QReflPow) : LocInertChi := by
  intro I v hv χ _ _ hK g
  have hq : {s : Uv I v | IsQRefl I v s} ⊆ (χ.ker : Set (Uv I v)) := by
    intro s hs
    obtain ⟨m, hm, hmK⟩ := hP I v hv s hs
    exact MonoidHom.mem_ker.mpr (hK s ⟨m, hm, hmK⟩)
  exact MonoidHom.mem_ker.mp ((Subgroup.closure_le _).mpr hq (q_reflection_generation I v hv g))

end PI.UnitaryGroupMassFormula.AdIndexEq

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.InertQRG =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.Partial =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.Partial", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.LocSplitChiOf\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.ChiEqOneOfClosure\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.Assemble\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.CommensuratedOfIsOpenIsCompact\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.CompactLocalGlobal\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.InertQRG\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.LiftMatMapSame\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.Reduce\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.AdIndexEq

theorem indexEq_of_open (hG : GLChi) (hQ : QReflPow) : PI.AdIndexEq.IndexEq :=
  indexEq_of_loc compact_commensurated lift_unitary' matrix_v_injective matrix_v_unitary compact_local_global reduce_local
    (locSplitChi_of hG) (locInertChi_of_qReflPow hQ)

end PI.UnitaryGroupMassFormula.AdIndexEq

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.Partial =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.IndexEqOfTraceInt =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.IndexEqOfTraceInt", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.InertPowDefs\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.GLDelta\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.InertPow\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.Partial\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.AdIndexEq

theorem indexEq_of_traceInt (h : TraceInt) : PI.AdIndexEq.IndexEq :=
  indexEq_of_open gl_character (qReflPow_of h)

end PI.UnitaryGroupMassFormula.AdIndexEq

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.IndexEqOfTraceInt =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.InertPowD =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.InertPowD", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.InertPowDefs\npublic import Formalism.LocalRingCardinality.SpanPowerMembership.Adelic\nimport Formalism.LocalRingCardinality.SpanPowerMembership.LocAtA\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\npublic import Mathlib.RingTheory.AdicCompletion.Topology\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Connected.Separation\nimport Mathlib.Topology.MetricSpace.Ultra.TotallySeparated\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.AdIndexEq

open NumberField IsDedekindDomain Polynomial
open scoped TensorProduct
open Formalism.MainNotions.S

theorem exists_nonfixed (I : AutInst) : ∃ θ : I.E, star θ ≠ θ := by
  by_contra h
  push Not at h
  have htop : (⊥ : Subalgebra I.F I.E) = ⊤ := by
    refine eq_top_iff.2 fun x _ => ?_
    obtain ⟨a, ha⟩ := RingHom.mem_range.1 ((I.cm.fixed x).1 (h x))
    exact Algebra.mem_bot.2 ⟨a, ha⟩
  have h1 := Subalgebra.bot_eq_top_iff_finrank_eq_one.1 htop
  rw [I.cm.deg2] at h1
  exact absurd h1 (by norm_num)

theorem decompE (I : AutInst) (θ : I.E) (hθ : star θ ≠ θ) (e : I.E) :
    ∃ f g : I.F, e = f • (1 : I.E) + g • θ := by
  have hli : LinearIndependent I.F ![(1 : I.E), θ] := by
    rw [LinearIndependent.pair_iff]
    intro s t hst
    have ht : t = 0 := by
      by_contra ht
      apply hθ
      have h' : s • (1 : I.E) = -(t • θ) := eq_neg_of_add_eq_zero_left hst
      have hθeq : algebraMap I.F I.E (-(t⁻¹ * s)) = θ := by
        rw [Algebra.algebraMap_eq_smul_one, neg_smul, mul_smul, h', smul_neg, neg_neg,
          smul_smul, inv_mul_cancel₀ ht, one_smul]
      exact (I.cm.fixed θ).2 (RingHom.mem_range.2 ⟨_, hθeq⟩)
    refine ⟨?_, ht⟩
    subst ht
    rw [zero_smul, add_zero, smul_eq_zero] at hst
    exact hst.resolve_right one_ne_zero
  have hsp := hli.span_eq_top_of_card_eq_finrank (by simp [I.cm.deg2])
  have he : e ∈ Submodule.span I.F (Set.range ![(1 : I.E), θ]) := by
    rw [hsp]; exact Submodule.mem_top
  obtain ⟨c, hc⟩ := (Submodule.mem_span_range_iff_exists_fun I.F).1 he
  refine ⟨c 0, c 1, ?_⟩
  rw [← hc, Fin.sum_univ_two]
  simp

theorem decompV (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) (θ : I.E) (hθ : star θ ≠ θ)
    (x : Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v ⊗[I.F] I.E) :
    ∃ p q : Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v, x = p ⊗ₜ 1 + q ⊗ₜ θ := by
  induction x using TensorProduct.inductionOn with
  | tmul a e =>
    obtain ⟨f, g, rfl⟩ := decompE I θ hθ e
    exact ⟨f • a, g • a, by rw [TensorProduct.tmul_add, TensorProduct.smul_tmul, TensorProduct.smul_tmul]⟩
  | add x y hx hy =>
    obtain ⟨p, q, rfl⟩ := hx
    obtain ⟨p', q', rfl⟩ := hy
    exact ⟨p + p', q + q', by simp only [TensorProduct.add_tmul]; abel⟩

theorem incL_apply (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) (p : Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v) :
    incL I v p = p ⊗ₜ 1 := rfl

theorem sigV_incL (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) (p : Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v) :
    sigV I v (incL I v p) = incL I v p := by
  rw [incL_apply]
  simp [sigV]

theorem fixed_incL (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) (hv : IsFieldAt I v)
    (x : Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v ⊗[I.F] I.E) (hx : sigV I v x = x) :
    ∃ p, x = incL I v p := by
  obtain ⟨θ, hθ⟩ := exists_nonfixed I
  obtain ⟨p, q, rfl⟩ := decompV I v θ hθ x
  refine ⟨p, ?_⟩
  have : Nontrivial (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v ⊗[I.F] I.E) := ⟨hv.exists_pair_ne⟩
  have hsig : I.cm.sig θ = star θ := rfl
  have hs : sigV I v (p ⊗ₜ 1 + q ⊗ₜ θ) = p ⊗ₜ 1 + q ⊗ₜ star θ := by
    simp [sigV, hsig]
  have hq : q ⊗ₜ[I.F] (θ - star θ) = 0 := by
    rw [TensorProduct.tmul_sub, sub_eq_zero]
    have h2 := hx
    rw [hs] at h2
    exact (add_left_cancel h2).symm
  have hu : θ - star θ ≠ 0 := sub_ne_zero.2 (Ne.symm hθ)
  have hq1 : incL I v q = 0 := by
    rw [incL_apply]
    calc q ⊗ₜ[I.F] (1 : I.E)
        = (q ⊗ₜ[I.F] (θ - star θ)) * ((1 : Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v) ⊗ₜ[I.F] (θ - star θ)⁻¹) := by
          rw [Algebra.TensorProduct.tmul_mul_tmul, mul_one, mul_inv_cancel₀ hu]
      _ = 0 := by rw [hq, zero_mul]
  have hq0 : q = 0 := (incL I v).injective (hq1.trans (map_zero _).symm)
  rw [hq0, TensorProduct.zero_tmul, add_zero, incL_apply]

theorem trace_integral' : TraceInt := by
  intro I v hv α hα
  have : Nontrivial (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v ⊗[I.F] I.E) := ⟨hv.exists_pair_ne⟩
  have hinv : ∀ y : Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v ⊗[I.F] I.E, sigV I v (sigV I v y) = y := by
    intro y
    induction y using TensorProduct.inductionOn with
    | tmul a e =>
      have h1 : ∀ e' : I.E, I.cm.sig e' = star e' := fun _ => rfl
      simp [sigV, h1]
    | add x y hx hy => rw [map_add (f := _), map_add (f := _), hx, hy]
  obtain ⟨τ, hτ⟩ := fixed_incL I v hv (α + sigV I v α) (by rw [map_add (f := _), hinv, add_comm])
  by_cases hτi : τ ∈ v.adicCompletionIntegers I.F
  · exact ⟨τ, hτi, hτ⟩

  have key : ∀ r₀ : v.adicCompletion I.F, α = incL I v r₀ →
      ∃ t ∈ v.adicCompletionIntegers I.F, α + sigV I v α = incL I v t := by
    rintro r₀ rfl
    have h1 : incL I v (r₀ * r₀) = incL I v 1 := by
      rw [map_mul, map_one, ← hα, sigV_incL]
    have hr0 : r₀ * r₀ = 1 := (incL I v).injective h1
    have hmem : r₀ ∈ v.adicCompletionIntegers I.F := by
      rcases ValuationSubring.mem_or_inv_mem (v.adicCompletionIntegers I.F) r₀ with h | h
      · exact h
      · rwa [inv_eq_of_mul_eq_one_right hr0] at h
    exact ⟨r₀ + r₀, add_mem hmem hmem, by rw [sigV_incL, map_add (f := _)]⟩
  have hdom : ∀ x y : Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v ⊗[I.F] I.E, x * y = 0 → x = 0 ∨ y = 0 := by
    intro x y hxy
    by_cases hx : x = 0
    · exact Or.inl hx
    · obtain ⟨b, hb⟩ := hv.mul_inv_cancel hx
      right
      calc y = (x * b) * y := by rw [hb, one_mul]
        _ = b * (x * y) := by ring
        _ = 0 := by rw [hxy, mul_zero]
  have hτinv : τ⁻¹ ∈ v.adicCompletionIntegers I.F :=
    (ValuationSubring.mem_or_inv_mem _ τ).resolve_left hτi
  have hτ0 : τ ≠ 0 := by
    rintro rfl
    exact hτi (zero_mem _)
  set s : v.adicCompletionIntegers I.F := ⟨τ⁻¹ * τ⁻¹, mul_mem hτinv hτinv⟩ with hs
  have hsK : (s : v.adicCompletion I.F) = τ⁻¹ * τ⁻¹ := rfl
  have hsm : s ∈ IsLocalRing.maximalIdeal (v.adicCompletionIntegers I.F) := by
    rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
    rintro ⟨u, hu⟩
    apply hτi
    have h1 : ((u⁻¹ : (v.adicCompletionIntegers I.F)ˣ) : v.adicCompletionIntegers I.F) * s = 1 := by
      rw [← hu, Units.inv_mul]
    have h3 := congrArg (v.adicCompletionIntegers I.F).subtype h1
    rw [map_mul, map_one] at h3
    change (((u⁻¹ : (v.adicCompletionIntegers I.F)ˣ) : v.adicCompletionIntegers I.F) :
      v.adicCompletion I.F) * (τ⁻¹ * τ⁻¹) = 1 at h3
    have hw : (((u⁻¹ : (v.adicCompletionIntegers I.F)ˣ) : v.adicCompletionIntegers I.F) :
        v.adicCompletion I.F) = τ * τ := by
      field_simp at h3
      linear_combination h3
    have hτeq : τ = (((u⁻¹ : (v.adicCompletionIntegers I.F)ˣ) : v.adicCompletionIntegers I.F) :
        v.adicCompletion I.F) * τ⁻¹ := by
      rw [hw]
      field_simp
    rw [hτeq]
    exact mul_mem (((u⁻¹ : (v.adicCompletionIntegers I.F)ˣ) : v.adicCompletionIntegers I.F)).2 hτinv
  let K := v.adicCompletion I.F
  let O := ↥(v.adicCompletionIntegers I.F)
  let w : Valuation K (WithZero (Multiplicative ℤ)) := Valued.v
  let m := IsLocalRing.maximalIdeal O
  have hcomplete : IsAdicComplete m O := by
    have hIntegers := IsDedekindDomain.HeightOneSpectrum.adicCompletionIntegers.integers (K := I.F) v
    obtain ⟨π, hπ⟩ := Formalism.BasicNotions.Examples₂.adicInt_exists_unif (K := I.F) v
    have hm : m = Ideal.span {π} := by
      ext x
      change x ∈ IsLocalRing.maximalIdeal _ ↔ x ∈ Ideal.span {π}
      rw [Formalism.BasicNotions.Examples₂.adicInt_mem_max_iff v x,
        Ideal.mem_span_singleton, hIntegers.dvd_iff_le]
      change Valued.v (x : K) < 1 ↔ Valued.v (x : K) ≤ Valued.v (π : K)
      rw [hπ]
      exact Formalism.BasicNotions.Examples₂.wz_lt_one_iff _
    have hpow (n : ℕ) (x : O) : x ∈ m ^ n ↔ w (x : K) ≤ w ((π : K) ^ n) := by
      rw [hm, Ideal.span_singleton_pow, Ideal.mem_span_singleton, hIntegers.dvd_iff_le]
      rfl
    have hAdic : IsAdic m := by
      rw [isAdic_iff]
      constructor
      · intro n
        have hπ0 : (π : K) ≠ 0 := by
          apply (map_ne_zero w).mp
          change Valued.v (π : K) ≠ 0
          rw [hπ]
          exact WithZero.exp_ne_zero
        have hopen := Valued.isOpen_closedBall K
          (r := w.restrict ((π : K) ^ n)) ((map_ne_zero w.restrict).mpr (pow_ne_zero n hπ0))
        convert hopen.preimage (continuous_subtype_val : Continuous (fun x : O => (x : K))) using 1
        ext x
        exact (hpow n x).trans (w.restrict_le_iff).symm
      · intro U hU
        rw [show nhds (0 : O) = Filter.comap (fun x : O => (x : K)) (nhds (0 : K)) from
          nhds_subtype_eq_comap] at hU
        obtain ⟨γ, -, hγ⟩ :=
          ((Valued.hasBasis_nhds_zero K (WithZero (Multiplicative ℤ))).comap _).mem_iff.mp hU
        have hγ0 : MonoidWithZeroHom.ValueGroup₀.embedding γ.1 ≠ 0 := by
          exact (_root_.map_ne_zero MonoidWithZeroHom.ValueGroup₀.embedding).mpr γ.ne_zero
        obtain ⟨n, hn⟩ := @WithZero.exists_exp_neg_natCast_lt _ hγ0
        have hπn : w ((π : K) ^ n) = WithZero.exp (-(n : ℤ)) := by
          change Valued.v ((π : K) ^ n) = _
          rw [map_pow, hπ, ← WithZero.exp_nsmul]
          simp
        refine ⟨n, fun x hx => hγ ?_⟩
        apply w.restrict_lt_iff_lt_embedding.mpr
        refine ((hpow n x).mp hx).trans_lt ?_
        rwa [hπn]
    exact hAdic.isAdicComplete_iff.mpr
      ⟨completeSpace_coe_iff_isComplete.mpr (Valued.isClosed_valuationSubring K).isComplete,
        inferInstance⟩
  obtain ⟨a, ha, -⟩ := HenselianRing.is_henselian (I := m)
    (Polynomial.X ^ 2 + (Polynomial.C s - Polynomial.X)) (by monicity!) 0
    (by simpa [m] using hsm) (by simp)
  have ha2 : a ^ 2 + (s - a) = 0 := by simpa using ha
  have haK : (a : v.adicCompletion I.F) ^ 2 + (τ⁻¹ * τ⁻¹ - a) = 0 := by
    have h := congrArg (v.adicCompletionIntegers I.F).subtype ha2
    rw [map_add (f := _), map_pow, map_sub, map_zero] at h
    exact h
  have hr : (τ * a) * (τ - τ * a) = 1 := by
    have e1 : (a : v.adicCompletion I.F) - a ^ 2 = τ⁻¹ * τ⁻¹ := by linear_combination -haK
    calc (τ * a) * (τ - τ * a) = τ * τ * ((a : v.adicCompletion I.F) - a ^ 2) := by ring
      _ = τ * τ * (τ⁻¹ * τ⁻¹) := by rw [e1]
      _ = 1 := by field_simp
  have e2 : incL I v (τ * a) * incL I v (τ - τ * a) = 1 := by
    rw [← map_mul, hr, map_one]
  have e3 : incL I v (τ * a) + incL I v (τ - τ * a) = α + sigV I v α := by
    rw [← map_add (f := _), show τ * a + (τ - τ * a) = τ by ring, hτ]
  have hprod : (α - incL I v (τ * a)) * (α - incL I v (τ - τ * a)) = 0 := by
    linear_combination (-α) * e3 + e2 - hα
  rcases hdom _ _ hprod with h | h
  · exact key _ (sub_eq_zero.1 h)
  · exact key _ (sub_eq_zero.1 h)

end PI.UnitaryGroupMassFormula.AdIndexEq

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.InertPowD =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AdIndexEq =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AdIndexEq", "h": "module\n\npublic import Formalism.PeriodIntegrals.AdIndexEq\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.IndexEqOfTraceInt\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.InertPowD\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI

theorem adelic_index_eq : PI.AdIndexEq.IndexEq :=
  PI.UnitaryGroupMassFormula.AdIndexEq.indexEq_of_traceInt PI.UnitaryGroupMassFormula.AdIndexEq.trace_integral'

end PI

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.AdIndexEq =====
