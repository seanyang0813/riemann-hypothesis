module

public import Formalism.LocalRingCardinality.DataSpaces
public import Formalism.SharpRestriction.CuspSpanNormBounds.IsPrimitiveSub
public import Mathlib.Data.Matrix.Mul
import Formalism.SharpRestriction.CuspSpanNormBounds.Point
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.TvMapApply, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.ExistsMulEqOneAddSmulOfRowsGe, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.ActsByFrameAct

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.TvMapApply =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.TvMapApply", "h": "module\n\npublic import Formalism.LocalRingCardinality.DataSpaces\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.SharpRestriction.CuspSpanNormBounds.IsPrimitiveSub\nimport Formalism.SharpRestriction.CuspSpanNormBounds.Point\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

namespace PI.NRL

open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat

variable {E : Type} [Field E] [NumberField E] [StarRing E] {S : HSpace E}

def tvMap (e v : S.V) (l : E) : S.V →ₗ[E] S.V :=
  LinearMap.id + (S.hT v).smulRight e - (S.hT e).smulRight v + l • (S.hT e).smulRight e

theorem tvMap_apply (e v : S.V) (l : E) (y : S.V) :
    tvMap e v l y = y + S.hT v y • e - S.hT e y • v + (l * S.hT e y) • e := by
  simp only [tvMap, LinearMap.add_apply, LinearMap.sub_apply, LinearMap.id_apply,
    LinearMap.smulRight_apply, LinearMap.smul_apply, smul_smul]

theorem tvMap_comp (e v : S.V) (l μ : E) (hee : S.hT e e = 0) (hev : S.hT e v = 0)
    (hve : S.hT v e = 0) (y : S.V) :
    tvMap e (-v) μ (tvMap e v l y) = y + (S.hT e y * (l + S.hT v v + μ)) • e := by
  rw [tvMap_apply, tvMap_apply]
  simp only [map_add (f := _), map_sub, map_smul, map_neg, LinearMap.neg_apply, hee, hev, hve, smul_eq_mul, mul_zero, add_zero,
    sub_zero]
  module

end PI.NRL
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.TvMapApply =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.ExistsMulEqOneAddSmulOfRowsGe =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.ExistsMulEqOneAddSmulOfRowsGe", "h": "module\n\npublic import Mathlib.Data.Matrix.Mul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.NRL

open Matrix

variable {R : Type*} [CommRing R] {r : ℕ}

def UniUp (ξ : Matrix (Fin (r + 1)) (Fin (r + 1)) R) : Prop :=
  (∀ a b, b < a → ξ a b = 0) ∧ ∀ a, ξ a a = 1

def rowMat (a : Fin (r + 1)) (w : Fin (r + 1) → R) : Matrix (Fin (r + 1)) (Fin (r + 1)) R :=
  fun d c => if d = a then w c else 0

theorem exists_mul_eq_one_add_smul_of_rows_ge (g : R) (P : Matrix (Fin (r + 1)) (Fin (r + 1)) R → Prop)
    (h1 : P 1) (hmul : ∀ M N, P M → P N → P (M * N))
    (hrow : ∀ a : Fin (r + 1), a.val < r → ∀ t : Fin (r + 1) → R, ∃ w : Fin (r + 1) → R,
      (∀ c, c ≤ a → w c = 0) ∧ (∀ c, a < c → ∃ q, w c = t c + g * q) ∧ P (1 + rowMat a w)) :
    ∀ k : ℕ, k ≤ r → ∀ ξ : Matrix (Fin (r + 1)) (Fin (r + 1)) R, UniUp ξ →
      (∀ d c : Fin (r + 1), k ≤ d.val → ξ d c = if d = c then 1 else 0) →
      ∃ M, P M ∧ ∃ Q, M * ξ = 1 + g • Q := by
  intro k
  induction k with
  | zero =>
    intro _ ξ _ hid
    refine ⟨1, h1, 0, ?_⟩
    rw [Matrix.one_mul, smul_zero, add_zero]
    ext d c
    rw [hid d c (Nat.zero_le _), Matrix.one_apply]
  | succ k ih =>
    intro hk ξ hξ hid
    let a : Fin (r + 1) := ⟨k, by omega⟩
    have hak : a.val < r := by show k < r; omega
    obtain ⟨w, hw0, hw1, hP⟩ := hrow a hak (fun c => -ξ a c)
    choose! q hq using hw1
    let ξ₀ : Matrix (Fin (r + 1)) (Fin (r + 1)) R :=
      fun d c => if d = a then (if d = c then 1 else 0) else ξ d c
    let Q₁ : Matrix (Fin (r + 1)) (Fin (r + 1)) R :=
      fun d c => if d = a then (if a < c then q c else 0) else 0
    have hsum : ∀ c, ∑ e, w e * ξ e c = w c := by
      intro c
      have he' : ∀ e, w e * ξ e c = w e * (if e = c then 1 else 0) := by
        intro e
        by_cases he : e ≤ a
        · rw [hw0 e he, zero_mul, zero_mul]
        · rw [hid e c (Fin.lt_iff_val_lt_val.mp (not_le.mp he))]
      rw [Finset.sum_congr rfl (fun e _ => he' e)]
      simp
    have hE : (1 + rowMat a w) * ξ = ξ₀ + g • Q₁ := by
      ext d c
      have hrm : ∑ e, rowMat a w d e * ξ e c = if d = a then w c else 0 := by
        simp only [rowMat]
        split_ifs with hd
        · exact hsum c
        · simp
      rw [Matrix.add_mul, Matrix.one_mul, Matrix.add_apply, Matrix.mul_apply, hrm]
      show ξ d c + (if d = a then w c else 0) =
        (if d = a then (if d = c then 1 else 0) else ξ d c) + g * (if d = a then (if a < c then q c else 0) else 0)
      by_cases hd : d = a
      · rw [hd, if_pos rfl, if_pos rfl, if_pos rfl]
        rcases lt_trichotomy c a with hca | hca | hca
        · rw [hξ.1 a c hca, hw0 c hca.le, if_neg (ne_of_lt hca).symm, if_neg (not_lt.mpr hca.le)]
          simp
        · rw [hca, hξ.2 a, hw0 a le_rfl, if_pos rfl, if_neg (lt_irrefl a)]
          simp
        · rw [hq c hca, if_neg (ne_of_lt hca), if_pos hca]
          ring
      · rw [if_neg hd, if_neg hd, if_neg hd]
        simp
    have hξ₀ : UniUp ξ₀ := by
      refine ⟨fun d c hcd => ?_, fun d => ?_⟩
      · show (if d = a then (if d = c then 1 else 0) else ξ d c) = 0
        by_cases h1' : d = a
        · rw [if_pos h1', if_neg (ne_of_lt hcd).symm]
        · rw [if_neg h1']
          exact hξ.1 d c hcd
      · show (if d = a then (if d = d then 1 else 0) else ξ d d) = 1
        by_cases h1' : d = a
        · rw [if_pos h1', if_pos rfl]
        · rw [if_neg h1']
          exact hξ.2 d
    have hid₀ : ∀ d c : Fin (r + 1), k ≤ d.val → ξ₀ d c = if d = c then 1 else 0 := by
      intro d c hdk
      show (if d = a then (if d = c then 1 else 0) else ξ d c) = _
      by_cases h1' : d = a
      · rw [if_pos h1']
      · rw [if_neg h1']
        apply hid d c
        have hne : d.val ≠ k := fun h' => h1' (Fin.ext h')
        omega
    obtain ⟨M, hM, Q, hMQ⟩ := ih (by omega) ξ₀ hξ₀ hid₀
    refine ⟨M * (1 + rowMat a w), hmul _ _ hM hP, Q + M * Q₁, ?_⟩
    rw [Matrix.mul_assoc, hE, Matrix.mul_add, hMQ, Matrix.mul_smul, smul_add, add_assoc]

theorem row_elim (g : R) (P : Matrix (Fin (r + 1)) (Fin (r + 1)) R → Prop)
    (h1 : P 1) (hmul : ∀ M N, P M → P N → P (M * N))
    (hrow : ∀ a : Fin (r + 1), a.val < r → ∀ t : Fin (r + 1) → R, ∃ w : Fin (r + 1) → R,
      (∀ c, c ≤ a → w c = 0) ∧ (∀ c, a < c → ∃ q, w c = t c + g * q) ∧ P (1 + rowMat a w))
    (ξ : Matrix (Fin (r + 1)) (Fin (r + 1)) R) (hξ : UniUp ξ) :
    ∃ M, P M ∧ ∃ Q, M * ξ = 1 + g • Q := by
  refine exists_mul_eq_one_add_smul_of_rows_ge g P h1 hmul hrow r le_rfl ξ hξ fun d c hd => ?_
  have hdl : d = Fin.last r := Fin.ext (by have := d.isLt; simp only [Fin.val_last]; omega)
  subst hdl
  split_ifs with hc
  · subst hc
    exact hξ.2 _
  · exact hξ.1 _ _ (lt_of_le_of_ne (Fin.le_last c) (fun h' => hc h'.symm))

end PI.NRL
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.ExistsMulEqOneAddSmulOfRowsGe =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.ActsByFrameAct =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.ActsByFrameAct", "h": "module\n\npublic import Formalism.SharpRestriction.CuspSpanNormBounds.IsPrimitiveSub\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.TvMapApply\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.ExistsMulEqOneAddSmulOfRowsGe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

namespace PI.NRL

open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat

variable {E : Type} [Field E] [NumberField E] [StarRing E] {S : HSpace E}

theorem smul_coe (o : 𝓞 E) (w : S.V) : (o : E) • w = o • w := by
  exact IsScalarTower.algebraMap_smul E o w

theorem herm_eq (x y : S.V) : S.hT y x = star (S.hT x y) :=
  (S.herm.eq x y).symm

theorem tvMap_isom (e v : S.V) (l : E) (hee : S.hT e e = 0) (hev : S.hT e v = 0)
    (hl : l + star l = -S.hT v v) (x y : S.V) :
    S.hT (tvMap e v l x) (tvMap e v l y) = S.hT x y := by
  have hve : S.hT v e = 0 := by rw [herm_eq, hev, star_zero]
  have hxe : S.hT x e = star (S.hT e x) := herm_eq e x
  have hxv : S.hT x v = star (S.hT v x) := herm_eq v x
  rw [tvMap_apply, tvMap_apply]
  simp only [map_add (f := _), map_sub, map_smul, map_smulₛₗ, LinearMap.add_apply, LinearMap.sub_apply,
    LinearMap.smul_apply, hee, hev, hve, hxe, hxv, smul_eq_mul, starRingEnd_apply, star_mul',
    mul_zero, add_zero, sub_zero]
  linear_combination (star (S.hT e x) * S.hT e y) * hl

def IntLat (Λ : Submodule (𝓞 E) S.V) : Prop := ∀ x ∈ Λ, ∀ y ∈ Λ, ∃ o : 𝓞 E, S.hT x y = (o : E)

theorem tvMap_mem {Λ : Submodule (𝓞 E) S.V} (hint : IntLat Λ) {e v : S.V} (he : e ∈ Λ) (hv : v ∈ Λ)
    (l : 𝓞 E) {y : S.V} (hy : y ∈ Λ) : tvMap e v (l : E) y ∈ Λ := by
  obtain ⟨oa, ha⟩ := hint v hv y hy
  obtain ⟨ob, hb⟩ := hint e he y hy
  rw [tvMap_apply, ha, hb, mul_smul]
  simp only [smul_coe]
  exact Λ.add_mem (Λ.sub_mem (Λ.add_mem hy (Λ.smul_mem oa he)) (Λ.smul_mem ob hv))
    (Λ.smul_mem l (Λ.smul_mem ob he))

theorem gmap_eq_iff (n : S.V ≃ₗ[E] S.V) (Λ : Submodule (𝓞 E) S.V) :
    Formalism.HermitianLatticesTheory.gmap n Λ = Λ ↔ (∀ y ∈ Λ, n y ∈ Λ) ∧ (∀ y ∈ Λ, ∃ w ∈ Λ, n w = y) := by
  unfold Formalism.HermitianLatticesTheory.gmap
  constructor
  · intro h
    refine ⟨fun y hy => ?_, fun y hy => ?_⟩
    · rw [← h]
      exact Submodule.mem_map_of_mem hy
    · rw [← h] at hy
      obtain ⟨w, hw, hwy⟩ := Submodule.mem_map.mp hy
      exact ⟨w, hw, hwy⟩
  · rintro ⟨h1, h2⟩
    apply le_antisymm
    · intro x hx
      obtain ⟨w, hw, rfl⟩ := Submodule.mem_map.mp hx
      exact h1 w hw
    · intro y hy
      obtain ⟨w, hw, hwy⟩ := h2 y hy
      exact Submodule.mem_map.mpr ⟨w, hw, hwy⟩

def tvEquiv (e v : S.V) (l : E) (hee : S.hT e e = 0) (hev : S.hT e v = 0) (hve : S.hT v e = 0) :
    S.V ≃ₗ[E] S.V :=
  LinearEquiv.ofLinearMap (tvMap e v l) (tvMap e (-v) (-S.hT v v - l))
    (by
      ext y
      have h := tvMap_comp e (-v) (-S.hT v v - l) l hee (by simp [hev]) (by simp [hve]) y
      rw [neg_neg] at h
      have hc : -S.hT v v - l + S.hT (-v) (-v) + l = 0 := by
        simp only [map_neg, LinearMap.neg_apply, neg_neg]; ring
      simp only [LinearMap.comp_apply, LinearMap.id_apply, h, hc]
      simp)
    (by
      ext y
      have h := tvMap_comp e v l (-S.hT v v - l) hee hev hve y
      have hc : l + S.hT v v + (-S.hT v v - l) = 0 := by ring
      simp only [LinearMap.comp_apply, LinearMap.id_apply, h, hc]
      simp)

theorem tvEquiv_apply (e v : S.V) (l : E) (hee hev hve) (y : S.V) :
    tvEquiv (S := S) e v l hee hev hve y = tvMap e v l y := rfl

theorem span_zero {s : Set S.V} {φ : S.V →ₗ[E] E} (h : ∀ y ∈ s, φ y = 0) {x : S.V}
    (hx : x ∈ Submodule.span E s) : φ x = 0 := by
  have hle : Submodule.span E s ≤ LinearMap.ker φ :=
    Submodule.span_le.mpr fun y hy => LinearMap.mem_ker.mpr (h y hy)
  exact LinearMap.mem_ker.mp (hle hx)

variable {r : ℕ} {T : E}

theorem e_mem_Xflag (F : LFlag S r T) (a : Fin r) (j : ℕ) (h : a.val < j) : F.fl.e a ∈ Xflag F j := by
  exact Submodule.subset_span ⟨a, h, rfl⟩

theorem e_mem_Xsp (F : LFlag S r T) (a : Fin r) : F.fl.e a ∈ Xsp F := by
  exact Submodule.subset_span ⟨a, rfl⟩

theorem hT_e_frame (F : LFlag S r T) (a : Fin r) (b : Fin (r + 1)) : S.hT (F.fl.e a) (frame F b) = 0 := by
  show S.hT (F.fl.e a) (Fin.snoc (α := fun _ => S.V) F.fl.e F.fl.z b) = 0
  cases b using Fin.lastCases with
  | last =>
    simpa [Fin.snoc_last] using F.fl.z_orth a
  | cast c =>
    simpa [Fin.snoc_castSucc] using F.fl.e_iso a c

theorem tv_mem_NLam (Λ : Submodule (𝓞 E) S.V) (hint : IntLat Λ) (F : LFlag S r T) (a : Fin r)
    (hea : F.fl.e a ∈ Λ) (v : S.V) (hv : v ∈ Λ) (hperp : ∀ i : Fin r, i ≤ a → S.hT v (F.fl.e i) = 0)
    (l : 𝓞 E) (hl : (l : E) + star (l : E) = -S.hT v v) (hee hev hve) :
    tvEquiv (F.fl.e a) v (l : E) hee hev hve ∈ NLam Λ F := by
  simp only [NLam, IsAutLam, Set.mem_setOf_eq]
  refine ⟨⟨?_, ?_⟩, ?_, ?_⟩
  · intro x y
    exact tvMap_isom (F.fl.e a) v (l : E) hee hev hl x y
  · rw [gmap_eq_iff]
    refine ⟨fun y hy => tvMap_mem hint hea hv l hy, fun y hy => ?_⟩
    obtain ⟨ov, hov⟩ := hint v hv v hv
    refine ⟨tvMap (F.fl.e a) (-v) ((-ov - l : 𝓞 E) : E) y,
      tvMap_mem hint hea (Λ.neg_mem hv) (-ov - l) hy, ?_⟩
    have hc : ((-ov - l : 𝓞 E) : E) = -S.hT v v - (l : E) := by
      first
        | (rw [hov]; push_cast; ring)
    have h := tvMap_comp (F.fl.e a) (-v) (-S.hT v v - (l : E)) (l : E) hee (by simp [hev])
      (by simp [hve]) y
    rw [neg_neg] at h
    have hz : -S.hT v v - (l : E) + S.hT (-v) (-v) + (l : E) = 0 := by
      simp only [map_neg, LinearMap.neg_apply, neg_neg]
      ring
    rw [tvEquiv_apply, hc, h, hz, mul_zero, zero_smul, add_zero]
  · intro j x hx
    have hex : S.hT (F.fl.e a) x = 0 :=
      span_zero (fun y hy => by
        obtain ⟨i, _, rfl⟩ := hy
        exact F.fl.e_iso a i) hx
    rw [tvEquiv_apply, tvMap_apply, hex, zero_smul, sub_zero, mul_zero, zero_smul, add_zero,
      add_sub_cancel_left]
    by_cases haj : a.val < j
    · exact Submodule.smul_mem _ _ (e_mem_Xflag F a j haj)
    · have hvx : S.hT v x = 0 :=
        span_zero (φ := S.hT v) (fun y hy => by
          obtain ⟨i, hi, rfl⟩ := hy
          have hi' : i.val < j + 1 := hi
          exact hperp i (by rw [Fin.le_def]; omega)) hx
      rw [hvx, zero_smul]
      exact Submodule.zero_mem _
  · intro x hx
    simp only [orth, Submodule.mem_iInf, LinearMap.mem_ker] at hx
    have hex : S.hT (F.fl.e a) x = 0 := hx _ (e_mem_Xsp F a)
    rw [tvEquiv_apply, tvMap_apply, hex, zero_smul, sub_zero, mul_zero, zero_smul, add_zero,
      add_sub_cancel_left]
    exact Submodule.smul_mem _ _ (e_mem_Xsp F a)

def ActsBy {n : ℕ} (φ : S.V ≃ₗ[E] S.V) (f : Fin n → S.V) (M : Matrix (Fin n) (Fin n) (𝓞 E)) : Prop :=
  ∀ b, φ (f b) = frameAct f M b

theorem actsBy_frameAct {n : ℕ} {φ : S.V ≃ₗ[E] S.V} {f : Fin n → S.V} {M : Matrix (Fin n) (Fin n) (𝓞 E)}
    (h : ActsBy φ f M) (ξ : Matrix (Fin n) (Fin n) (𝓞 E)) (b : Fin n) :
    φ (frameAct f ξ b) = frameAct f (M * ξ) b := by
  have hcoe : ∀ c, ((((M * ξ) c b : 𝓞 E)) : E) = ∑ a, (M c a : E) * (ξ a b : E) := by
    intro c
    rw [Matrix.mul_apply]
    first
      | (push_cast; rfl)
  unfold ActsBy at h

  simp only [frameAct, map_sum, map_smul, h, Finset.smul_sum, smul_smul, hcoe, Finset.sum_smul]
  rw [Finset.sum_comm]
  exact Finset.sum_congr rfl fun c _ => Finset.sum_congr rfl fun a _ => by rw [mul_comm]

theorem actsBy_mul {n : ℕ} {φ ψ : S.V ≃ₗ[E] S.V} {f : Fin n → S.V} {M N : Matrix (Fin n) (Fin n) (𝓞 E)}
    (h1 : ActsBy φ f M) (h2 : ActsBy ψ f N) : ActsBy (φ * ψ) f (M * N) := by
  intro b
  show φ (ψ (f b)) = _
  rw [h2 b, actsBy_frameAct h1 N b]

theorem frameAct_one {n : ℕ} (f : Fin n → S.V) (b : Fin n) : frameAct f 1 b = f b := by
  simp [frameAct, Matrix.one_apply, Finset.sum_ite_eq']

theorem actsBy_one {n : ℕ} (f : Fin n → S.V) : ActsBy (1 : S.V ≃ₗ[E] S.V) f 1 := by
  intro b
  exact (frameAct_one f b).symm

theorem tv_actsBy (F : LFlag S r T) (a : Fin r) (v : S.V) (l : E) (hee hev hve)
    (w : Fin (r + 1) → 𝓞 E) (hw : ∀ c, S.hT v (frame F c) = (w c : E)) :
    ActsBy (tvEquiv (F.fl.e a) v l hee hev hve) (frame F) (1 + rowMat (Fin.castSucc a) w) := by
  intro c
  rw [tvEquiv_apply, tvMap_apply, hT_e_frame, hw c, zero_smul, sub_zero, mul_zero, zero_smul,
    add_zero]
  have hfa := frameAct_one (frame F) c
  have hfr : frame F (Fin.castSucc a) = F.fl.e a := by
    show Fin.snoc (α := fun _ => S.V) F.fl.e F.fl.z (Fin.castSucc a) = F.fl.e a
    exact Fin.snoc_castSucc ..
  unfold frameAct at hfa ⊢
  simp only [smul_coe] at hfa ⊢
  simp only [Matrix.add_apply, add_smul, Finset.sum_add_distrib, hfa, rowMat, ite_smul, zero_smul,
    Finset.sum_ite_eq', Finset.mem_univ, if_true, hfr]

end PI.NRL
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.NormRepresentationLift.ActsByFrameAct =====
