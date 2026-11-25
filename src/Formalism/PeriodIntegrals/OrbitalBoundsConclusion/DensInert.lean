module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.FinrankInfKerAddOne
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.ExistsTraceNeZero
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.ValMain
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.AnisoPeelAlt
public import Mathlib.FieldTheory.Finite.Basic
public import Mathlib.Algebra.CharP.Algebra
public import Mathlib.Algebra.CharP.Lemmas
public import Mathlib.Algebra.Polynomial.Roots
public import Mathlib.Algebra.CharP.Frobenius
public import Formalism.LocalToGlobal.SiegelLatticeTheory.SiegelMassRatios.DensExact
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.AnisoPeel, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.DensExactInertOf, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.DensityProductAddTwoSuccSucc, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.HermitianDiagonalization, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.IsoPeel, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.RepCountCongruenceInvariant, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.DensInert

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.AnisoPeel =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.AnisoPeel", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.FinrankInfKerAddOne\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.ExistsTraceNeZero\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.ValMain\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Finset Module

noncomputable section

namespace DensInertW

open DensInertW.Sub

section
variable {L : Type} [Field L]

def anP {n m : ℕ} (q : ℕ) (M : Matrix (Fin n) (Fin n) L) (W : Submodule L (Fin n → L))
    (B : Matrix (Fin m) (Fin m) L) (X : Fin m → Fin n → L) : Prop :=
  (∀ i, X i ∈ W) ∧ LinearIndependent L X ∧ ∀ i j, hf q M (X i) (X j) = B i j

open Classical in
theorem an_cntT_eq [Fintype L] {n m q : ℕ} (M : Matrix (Fin n) (Fin n) L)
    (W : Submodule L (Fin n → L)) (B : Matrix (Fin m) (Fin m) L) :
    cntT q M W B = (Finset.univ.filter (anP q M W B)).card := by
  unfold cntT
  rw [← Set.ncard_coe_finset]
  congr 1
  ext X
  simp [anP]

open Classical in
theorem an_fiber [Fintype L] {n m q : ℕ} {M : Matrix (Fin n) (Fin n) L}
    (hadd : ∀ a b : L, (a + b) ^ q = a ^ q + b ^ q) (hinv : ∀ a : L, (a ^ q) ^ q = a)
    (hM : IsHerm q M) (W : Submodule L (Fin n → L)) (b : L) (w : Fin m → L) (x : Fin n → L)
    (hxW : x ∈ W) (hxx : hf q M x x = b) (hb : b ≠ 0) :
    (Finset.univ.filter (fun X : Fin (m + 1) → Fin n → L =>
        anP q M W (Matrix.diagonal (Fin.cons b w : Fin (m + 1) → L)) X ∧ X 0 = x)).card =
      (Finset.univ.filter (anP q M (W ⊓ LinearMap.ker (hfL q M x)) (Matrix.diagonal w))).card := by
  have hq := q_ne_zero_of_inv hinv
  symm
  refine Finset.card_nbij' (fun U : Fin m → Fin n → L => (Fin.cons x U : Fin (m + 1) → Fin n → L))
    (fun X : Fin (m + 1) → Fin n → L => (fun i : Fin m => X i.succ)) ?_ ?_ ?_ ?_
  · intro U hU
    have hU' := (Finset.mem_filter.1 (Finset.mem_coe.1 hU)).2
    obtain ⟨hUW, hUi, hUg⟩ := hU'
    have hUx : ∀ i, hf q M (U i) x = 0 := fun i => (hUW i).2
    have hxU : ∀ i, hf q M x (U i) = 0 := fun i => by
      rw [hf_symm hadd hinv hM, hUx i, zero_pow hq]
    rw [Finset.mem_coe, Finset.mem_filter]
    refine ⟨Finset.mem_univ _, ⟨?_, ?_, ?_⟩, rfl⟩
    · intro i
      induction i using Fin.cases with
      | zero => exact hxW
      | succ i => exact (hUW i).1
    · rw [linearIndependent_finCons]
      refine ⟨hUi, fun hmem => ?_⟩
      have hle : Submodule.span L (Set.range U) ≤ W ⊓ LinearMap.ker (hfL q M x) := by
        rw [Submodule.span_le]
        rintro _ ⟨j, rfl⟩
        exact hUW j
      have := (hle hmem).2
      change hf q M x x = 0 at this
      exact hb (hxx ▸ this)
    · intro i j
      induction i using Fin.cases with
      | zero =>
        induction j using Fin.cases with
        | zero => simpa [Matrix.diagonal_apply] using hxx
        | succ j =>
          simp only [Fin.cons_zero, Fin.cons_succ, Matrix.diagonal_apply,
            (Fin.succ_ne_zero j).symm, if_false]
          exact hxU j
      | succ i =>
        induction j using Fin.cases with
        | zero =>
          simp only [Fin.cons_zero, Fin.cons_succ, Matrix.diagonal_apply, Fin.succ_ne_zero,
            if_false]
          exact hUx i
        | succ j =>
          simp only [Fin.cons_succ, Matrix.diagonal_apply, Fin.succ_inj]
          rw [hUg i j, Matrix.diagonal_apply]
  · intro X hX
    have hX' := (Finset.mem_filter.1 (Finset.mem_coe.1 hX)).2
    obtain ⟨⟨hXW, hXi, hXg⟩, hX0⟩ := hX'
    rw [Finset.mem_coe, Finset.mem_filter]
    refine ⟨Finset.mem_univ _, fun i => ⟨hXW _, ?_⟩, hXi.comp _ (Fin.succ_injective _), ?_⟩
    · change hf q M (X i.succ) x = 0
      rw [← hX0, hXg, Matrix.diagonal_apply, if_neg (Fin.succ_ne_zero i)]
    · intro i j
      rw [hXg, Matrix.diagonal_apply, Matrix.diagonal_apply]
      simp only [Fin.succ_inj, Fin.cons_succ]
  · intro U _
    rfl
  · intro X hX
    have hX' := (Finset.mem_filter.1 (Finset.mem_coe.1 hX)).2
    rw [← hX'.2]
    exact Fin.cons_self_tail X

end

theorem anisoPeel_of_valCount (hv : ValCount) : AnisoPeel := by
  intro K L _ _ _ _ _ h2 n M W hM hW m b w k hbf hb0 hk
  classical
  have hadd : ∀ a b : L, (a + b) ^ Fintype.card K = a ^ Fintype.card K + b ^ Fintype.card K :=
    fun a b => frob_add (K := K) a b
  have hinv : ∀ a : L, (a ^ Fintype.card K) ^ Fintype.card K = a := frob_frob h2
  rw [an_cntT_eq]
  rw [Finset.card_eq_sum_card_fiberwise (f := fun X : Fin (m + 1) → Fin n → L => X 0)
    (t := Finset.univ.filter (fun x : Fin n → L => x ∈ W ∧ hf (Fintype.card K) M x x = b))]
  · push_cast
    have hterm : ∀ x ∈ Finset.univ.filter (fun x : Fin n → L =>
        x ∈ W ∧ hf (Fintype.card K) M x x = b),
        (((Finset.univ.filter (anP (Fintype.card K) M W
          (Matrix.diagonal (Fin.cons b w : Fin (m + 1) → L)))).filter
          (fun X : Fin (m + 1) → Fin n → L => X 0 = x)).card : ℤ) = k := by
      intro x hx
      simp only [Finset.mem_filter, Finset.mem_univ, true_and] at hx
      obtain ⟨hxW, hxx⟩ := hx
      have hee : hf (Fintype.card K) M x x ≠ 0 := hxx ▸ hb0
      rw [Finset.filter_filter, an_fiber hadd hinv hM W b w x hxW hxx hb0]
      rw [← an_cntT_eq]
      exact hk _ (nondeg_perp_aniso hadd W hW x hxW hee) (finrank_perp_aniso W x hxW hee)
    rw [Finset.sum_congr rfl hterm, Finset.sum_const, nsmul_eq_mul]
    have hcard : ((Finset.univ.filter (fun x : Fin n → L =>
        x ∈ W ∧ hf (Fintype.card K) M x x = b)).card : ℤ) =
        valN (Fintype.card K) (Module.finrank L W) := by
      have h0 := hv K L h2 n M W hM hW b hbf
      rw [if_neg hb0] at h0
      rw [← h0, ← Set.ncard_coe_finset]
      congr 2
      ext v
      simp
    rw [hcard]
  · intro X hX
    have hX' := (Finset.mem_filter.1 (Finset.mem_coe.1 hX)).2
    rw [Finset.mem_coe, Finset.mem_filter]
    refine ⟨Finset.mem_univ _, hX'.1 0, ?_⟩
    rw [hX'.2.2 0 0, Matrix.diagonal_apply_eq, Fin.cons_zero]

theorem anisotropic_valuation_peel : AnisoPeel := anisoPeel_of_valCount valuation_count

end DensInertW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.AnisoPeel =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.DensExactInertOf =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.DensExactInertOf", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.AnisoPeelAlt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.FieldTheory.Finite.Basic\n\n"}
section -- clump:auto
@[expose] public section

open Finset

noncomputable section

namespace DensInertW

theorem Fr_zero_zero (q d : ℕ) : Fr q d 0 0 = 1 := by
  rw [Fr]

theorem Fr_succ (q d r c : ℕ) : Fr q d (r + 1) c = valN q d * Fr q (d - 1) r c := by
  rw [Fr]

theorem Fr_zero_succ (q d c : ℕ) :
    Fr q d 0 (c + 1) = (valZ q d - 1) * (q : ℤ) ^ (2 * c) * Fr q (d - 2) 0 c := by
  rw [Fr]

theorem top_cnt_fin_zero {L : Type} [Field L] {n : ℕ} (q : ℕ) (M : Matrix (Fin n) (Fin n) L)
    (W : Submodule L (Fin n → L)) (B : Matrix (Fin 0) (Fin 0) L) : cntT q M W B = 1 := by
  unfold cntT
  have h : {X : Fin 0 → Fin n → L | (∀ i, X i ∈ W) ∧ LinearIndependent L X ∧
      ∀ i j, hf q M (X i) (X j) = B i j} = Set.univ := by
    ext X
    simp only [Set.mem_setOf_eq, Set.mem_univ, iff_true]
    exact ⟨fun i => i.elim0, linearIndependent_empty_type, fun i => i.elim0⟩
  rw [h, Set.ncard_univ]
  simp

theorem top_diag_count (hA : AnisoPeel) (hI : IsoPeel) (K L : Type) [Field K] [Fintype K]
    [Field L] [Fintype L] [Algebra K L] (h2 : Module.finrank K L = 2) (n : ℕ)
    (M : Matrix (Fin n) (Fin n) L) (hM : IsHerm (Fintype.card K) M) :
    ∀ (m : ℕ) (w : Fin m → L) (r : ℕ), r ≤ m → (∀ i, w i ≠ 0 ↔ i.val < r) →
      (∀ i, w i ^ Fintype.card K = w i) →
      ∀ W : Submodule L (Fin n → L), NonDeg (Fintype.card K) M W →
        (cntT (Fintype.card K) M W (Matrix.diagonal w) : ℤ) =
          Fr (Fintype.card K) (Module.finrank L W) r (m - r) := by
  intro m
  induction m with
  | zero =>
    intro w r hr _ _ W _
    obtain rfl : r = 0 := by omega
    rw [top_cnt_fin_zero, Fr_zero_zero]
    rfl
  | succ c ih =>
    intro w r hr hw hwq W hW
    rcases Nat.eq_zero_or_pos r with h0 | hpos
    · subst h0
      have hw0 : w = 0 := by
        funext i
        by_contra h
        have := (hw i).mp h
        omega
      have hdiag : Matrix.diagonal w = (0 : Matrix (Fin (c + 1)) (Fin (c + 1)) L) := by
        rw [hw0]; exact Matrix.diagonal_zero
      rw [hdiag]
      have hk := hI K L h2 n M W hM hW c (Fr (Fintype.card K) (Module.finrank L W - 2) 0 c)
        (fun W' hW' hrk => by
          have h1 := ih (fun _ => 0) 0 (Nat.zero_le _) (fun i => by simp)
            (fun i => by simp [zero_pow Fintype.card_ne_zero]) W' hW'
          rw [Matrix.diagonal_zero] at h1
          rw [h1, show Module.finrank L W' = Module.finrank L W - 2 by omega, Nat.sub_zero])
      rw [hk, Nat.sub_zero, Fr_zero_succ]
    · obtain ⟨r', rfl⟩ : ∃ r', r = r' + 1 := ⟨r - 1, by omega⟩
      have hw0 : w 0 ≠ 0 := (hw 0).mpr (by simp)
      have hcons : Matrix.diagonal w =
          Matrix.diagonal (Fin.cons (w 0) (Fin.tail w) : Fin (c + 1) → L) := by
        rw [Fin.cons_self_tail]
      rw [hcons]
      have hk := hA K L h2 n M W hM hW c (w 0) (Fin.tail w)
        (Fr (Fintype.card K) (Module.finrank L W - 1) r' (c - r')) (hwq 0) hw0
        (fun W' hW' hrk => by
          have h1 := ih (Fin.tail w) r' (by omega)
            (fun i => by simp only [Fin.tail]; rw [hw i.succ]; simp [Fin.val_succ])
            (fun i => hwq i.succ) W' hW'
          rw [h1, show Module.finrank L W' = Module.finrank L W - 1 by omega])
      rw [hk, show c + 1 - (r' + 1) = c - r' by omega, Fr_succ]

theorem top_nondeg_top {L : Type} [Field L] {n : ℕ} (q : ℕ) (hq : 0 < q)
    (M : Matrix (Fin n) (Fin n) L) (hdet : IsUnit M.det) : NonDeg q M ⊤ := by
  intro w _ hw
  have h0 : Matrix.vecMul w M = 0 := by
    funext l0
    have h := hw (Pi.single l0 1) Submodule.mem_top
    simp only [hf, Pi.single_apply, ite_pow, one_pow, zero_pow hq.ne', mul_ite, mul_one,
      mul_zero, Finset.sum_ite_eq', Finset.mem_univ, if_true] at h
    simpa [Matrix.vecMul, dotProduct] using h
  calc w = Matrix.vecMul w (M * M⁻¹) := by rw [Matrix.mul_nonsing_inv _ hdet, Matrix.vecMul_one]
    _ = Matrix.vecMul (Matrix.vecMul w M) M⁻¹ := by rw [Matrix.vecMul_vecMul]
    _ = 0 := by rw [h0, Matrix.zero_vecMul]

theorem top_rank (K L : Type) [Field K] [Fintype K] [Field L] [Fintype L] [Algebra K L]
    (m : ℕ) (B P : Matrix (Fin m) (Fin m) L) (hP : IsUnit P.det) :
    (P * B * (P.map (fun y => y ^ Fintype.card K)).transpose).rank = B.rank := by
  have hF : P.map (fun y => y ^ Fintype.card K) =
      P.map ((FiniteField.frobeniusAlgHom K L : L →ₐ[K] L) : L →+* L) := by
    ext i j
    simp [FiniteField.frobeniusAlgHom_apply]
  have hu : IsUnit (P.map (fun y => y ^ Fintype.card K)).transpose.det := by
    rw [Matrix.det_transpose, hF, ← RingHom.mapMatrix_apply, ← RingHom.map_det]
    exact hP.map _
  rw [Matrix.rank_mul_eq_left_of_isUnit_det _ _ hu, Matrix.rank_mul_eq_right_of_isUnit_det _ _ hP]

theorem densExactInert_of (hD : Diag) (hC : Congr) (hA : AnisoPeel) (hI : IsoPeel)
    (hR : Arith) : Formalism.L2.SG.DensExact.DensExactInert := by
  classical
  intro K L _ _ _ _ _ h2 n m Ph Gm hPh hPhH hGm
  obtain ⟨P, hP, w, r, hrm, hdiag, hw, hwq⟩ := hD K L h2 m Gm hGm
  have hq : 1 < Fintype.card K := Fintype.one_lt_card
  have hcnt : Formalism.L2.SG.DensExact.countInert K L n m Ph Gm = cntT (Fintype.card K) Ph ⊤ Gm := by
    unfold Formalism.L2.SG.DensExact.countInert cntT
    congr 1
    ext X
    simp [hf]
  have hcong := hC K L h2 n Ph ⊤ m Gm P hP
  rw [hdiag] at hcong
  have hrank : Gm.rank = r := by
    rw [← top_rank K L m Gm P hP, hdiag, Matrix.rank_diagonal,
      Fintype.card_congr (Equiv.subtypeEquivRight hw)]
    have e : {i : Fin m // i.val < r} ≃ Fin r :=
      { toFun := fun i => ⟨i.1.val, i.2⟩
        invFun := fun j => ⟨⟨j.val, by omega⟩, j.2⟩
        left_inv := fun i => rfl
        right_inv := fun j => rfl }
    rw [Fintype.card_congr e, Fintype.card_fin]
  have hcount := top_diag_count hA hI K L h2 n Ph hPhH m w r hrm hw hwq ⊤
    (top_nondeg_top _ (by omega) Ph hPh)
  rw [finrank_top, Module.finrank_fin_fun] at hcount
  rw [hcnt, ← hcong, hrank, ← hR (Fintype.card K) n m r hq hrm, ← hcount]
  norm_cast

end DensInertW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.DensExactInertOf =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.DensityProductAddTwoSuccSucc =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.DensityProductAddTwoSuccSucc", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.AnisoPeelAlt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Finset

noncomputable section

namespace DensInertW

def arF (q i : ℕ) : ℝ := 1 - (-1 : ℝ) ^ i * ((q : ℝ) ^ i)⁻¹

theorem ar_valN (q n : ℕ) (hq : 0 < q) :
    ((valN q (n + 1) : ℤ) : ℝ) = (q : ℝ) ^ (2 * n + 1) * arF q (n + 1) := by
  have hq' : (q : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr hq.ne'
  have hb : (q : ℝ) ^ (n + 1) * ((q : ℝ) ^ (n + 1))⁻¹ = 1 := mul_inv_cancel₀ (pow_ne_zero _ hq')
  simp only [valN, arF, Nat.add_sub_cancel]
  push_cast
  linear_combination ((-1 : ℝ) ^ (n + 1) * (q : ℝ) ^ n) * hb

theorem ar_valN_zero (q : ℕ) : valN q 0 = 0 := by
  simp [valN]

theorem ar_valZ (q N : ℕ) (hq : 0 < q) :
    ((valZ q (N + 2) : ℤ) : ℝ) - 1 = (q : ℝ) ^ (2 * N + 3) * arF q (N + 2) * arF q (N + 1) := by
  have hq' : (q : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr hq.ne'
  have ha : (q : ℝ) ^ (N + 2) * ((q : ℝ) ^ (N + 2))⁻¹ = 1 := mul_inv_cancel₀ (pow_ne_zero _ hq')
  have hb : (q : ℝ) ^ (N + 1) * ((q : ℝ) ^ (N + 1))⁻¹ = 1 := mul_inv_cancel₀ (pow_ne_zero _ hq')
  have hs : (-1 : ℝ) ^ N * (-1 : ℝ) ^ N = 1 := by rw [← mul_pow]; norm_num
  simp only [valZ, arF]
  rw [show 2 * (N + 2) - 1 = 2 * N + 3 by omega, show N + 2 - 1 = N + 1 by omega]
  push_cast
  linear_combination hs + (-((-1 : ℝ) ^ N) * (q : ℝ) ^ (N + 2) + ((-1 : ℝ) ^ N) ^ 2) * hb +
    ((-1 : ℝ) ^ N * (q : ℝ) ^ (N + 1) + ((-1 : ℝ) ^ N) ^ 2 +
      ((-1 : ℝ) ^ N) ^ 2 * ((q : ℝ) ^ (N + 1) * ((q : ℝ) ^ (N + 1))⁻¹ - 1)) * ha

theorem ar_valZ_zero (q : ℕ) : valZ q 0 - 1 = 0 := by
  simp [valZ]

theorem ar_valZ_one (q : ℕ) : valZ q 1 - 1 = 0 := by
  simp [valZ]

theorem densityProduct_succ_succ_add (q n r c : ℕ) :
    Formalism.L2.SG.DensExact.densProd q (-1) (n + 1) (r + 1 + c) c =
      arF q (n + 1) * Formalism.L2.SG.DensExact.densProd q (-1) n (r + c) c := by
  unfold Formalism.L2.SG.DensExact.densProd
  rw [show n + 1 + 1 - (r + 1 + c + c) = n + 1 - (r + c + c) by omega,
    Finset.prod_Icc_succ_top (by omega), mul_comm]
  rfl

theorem densityProduct_add_two_succ_succ (q N c : ℕ) :
    Formalism.L2.SG.DensExact.densProd q (-1) (N + 2) (c + 1) (c + 1) =
      arF q (N + 2) * arF q (N + 1) * Formalism.L2.SG.DensExact.densProd q (-1) N c c := by
  unfold Formalism.L2.SG.DensExact.densProd arF
  rw [show N + 2 + 1 - (c + 1 + (c + 1)) = N + 1 - (c + c) by omega, show N + 2 = N + 1 + 1 from rfl,
    Finset.prod_Icc_succ_top (by omega), Finset.prod_Icc_succ_top (by omega)]
  ring

theorem ar_zero_prod (q n m c : ℕ) (h : n + 1 ≤ m + c) :
    Formalism.L2.SG.DensExact.densProd q (-1) n m c = 0 := by
  unfold Formalism.L2.SG.DensExact.densProd
  exact Finset.prod_eq_zero (i := 0) (Finset.mem_Icc.mpr ⟨by omega, Nat.zero_le _⟩) (by simp)

theorem frameCount_zero_mul_pow (q : ℕ) (hq : 0 < q) : ∀ c n : ℕ,
    ((Fr q n 0 c : ℤ) : ℝ) * (q : ℝ) ^ (c ^ 2) =
      (q : ℝ) ^ (2 * n * c) * Formalism.L2.SG.DensExact.densProd q (-1) n c c := by
  intro c
  induction c with
  | zero =>
    intro n
    have h0 : Fr q n 0 0 = 1 := by simp [Fr]
    unfold Formalism.L2.SG.DensExact.densProd
    rw [h0, Finset.Icc_eq_empty (by omega), Finset.prod_empty]
    simp
  | succ c ih =>
    intro n
    match n with
    | 0 =>
      rw [ar_zero_prod q 0 (c + 1) (c + 1) (by omega)]
      have h0 : Fr q 0 0 (c + 1) = 0 := by simp only [Fr, ar_valZ_zero, zero_mul]
      rw [h0]
      simp
    | 1 =>
      rw [ar_zero_prod q 1 (c + 1) (c + 1) (by omega)]
      have h0 : Fr q 1 0 (c + 1) = 0 := by simp only [Fr, ar_valZ_one, zero_mul]
      rw [h0]
      simp
    | N + 2 =>
      have hF : ((Fr q (N + 2) 0 (c + 1) : ℤ) : ℝ) =
          (((valZ q (N + 2) : ℤ) : ℝ) - 1) * (q : ℝ) ^ (2 * c) * ((Fr q N 0 c : ℤ) : ℝ) := by
        simp [Fr]
      rw [hF, ar_valZ q N hq, densityProduct_add_two_succ_succ]
      have e2 := ih N
      calc _ = (q : ℝ) ^ (2 * N + 4 * c + 4) * arF q (N + 2) * arF q (N + 1) *
            (((Fr q N 0 c : ℤ) : ℝ) * (q : ℝ) ^ (c ^ 2)) := by ring
        _ = _ := by rw [e2]; ring

theorem ar_main (q : ℕ) (hq : 0 < q) : ∀ r c n : ℕ,
    ((Fr q n r c : ℤ) : ℝ) * (q : ℝ) ^ ((r + c) ^ 2) =
      (q : ℝ) ^ (2 * n * (r + c)) * Formalism.L2.SG.DensExact.densProd q (-1) n (r + c) c := by
  intro r
  induction r with
  | zero =>
    intro c n
    simpa only [zero_add] using frameCount_zero_mul_pow q hq c n
  | succ r ih =>
    intro c n
    match n with
    | 0 =>
      rw [ar_zero_prod q 0 (r + 1 + c) c (by omega)]
      have h0 : Fr q 0 (r + 1) c = 0 := by simp only [Fr, ar_valN_zero, zero_mul]
      rw [h0]
      simp
    | N + 1 =>
      have hF : ((Fr q (N + 1) (r + 1) c : ℤ) : ℝ) = ((valN q (N + 1) : ℤ) : ℝ) * ((Fr q N r c : ℤ) : ℝ) := by
        simp [Fr]
      rw [hF, ar_valN q N hq, densityProduct_succ_succ_add]
      have e2 := ih c N
      calc _ = (q : ℝ) ^ (2 * N + 2 * r + 2 * c + 2) * arF q (N + 1) *
            (((Fr q N r c : ℤ) : ℝ) * (q : ℝ) ^ ((r + c) ^ 2)) := by ring
        _ = _ := by rw [e2]; ring

theorem quadraticDifferenceArith : Arith := by
  intro q n m r hq hrm
  have hq0 : 0 < q := by omega
  have e := ar_main q hq0 r (m - r) n
  rw [show r + (m - r) = m by omega] at e
  have hA : (q : ℝ) ^ (2 * n * m) ≠ 0 := pow_ne_zero _ (Nat.cast_ne_zero.mpr (by omega))
  rw [div_div_eq_mul_div, e, mul_div_cancel_left₀ _ hA]

end DensInertW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.DensityProductAddTwoSuccSucc =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.HermitianDiagonalization =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.HermitianDiagonalization", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.AnisoPeelAlt\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.FinrankInfKerAddOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.Algebra.CharP.Algebra\npublic import Mathlib.Algebra.CharP.Lemmas\npublic import Mathlib.Algebra.Polynomial.Roots\npublic import Mathlib.FieldTheory.Finite.Basic\n\n"}
section -- clump:auto
@[expose] public section

open Finset Module

namespace DensInertW

open DensInertW.Sub

section
variable {L : Type} [Field L]

theorem diag_orth_family {m q : ℕ} {B : Matrix (Fin m) (Fin m) L}
    (hadd : ∀ a b : L, (a + b) ^ q = a ^ q + b ^ q) (hinv : ∀ a : L, (a ^ q) ^ q = a)
    (hB : IsHerm q B) (htr : ∀ z : L, z ≠ 0 → ∃ c : L, c * z + (c * z) ^ q ≠ 0) :
    ∀ (d : ℕ) (W : Submodule L (Fin m → L)), finrank L W = d →
      ∃ (v : Fin d → Fin m → L) (r : ℕ), r ≤ d ∧ (∀ i, v i ∈ W) ∧ LinearIndependent L v ∧
        (∀ i j, i ≠ j → hf q B (v i) (v j) = 0) ∧ (∀ i, hf q B (v i) (v i) ≠ 0 ↔ i.val < r) := by
  have hq : q ≠ 0 := by
    rintro rfl
    have h := hinv 0
    simp at h

  have iso : ∀ (d : ℕ) (W : Submodule L (Fin m → L)), finrank L W = d → (∀ e ∈ W, hf q B e e = 0) →
      ∃ (v : Fin d → Fin m → L) (r : ℕ), r ≤ d ∧ (∀ i, v i ∈ W) ∧ LinearIndependent L v ∧
        (∀ i j, i ≠ j → hf q B (v i) (v j) = 0) ∧ (∀ i, hf q B (v i) (v i) ≠ 0 ↔ i.val < r) := by
    intro d W hW h0
    have hz := hf_eq_zero_of_diag hadd hinv hB htr W h0
    let b := Module.finBasisOfFinrankEq L W hW
    refine ⟨fun i => (b i : Fin m → L), 0, Nat.zero_le _, fun i => (b i).2, ?_,
      fun i j _ => hz _ (b i).2 _ (b j).2, fun i => ?_⟩
    · exact b.linearIndependent.map' W.subtype (Submodule.ker_subtype W)
    · simp [hz _ (b i).2 _ (b i).2]
  intro d
  induction d with
  | zero =>
    intro W hW
    by_cases h : ∃ e ∈ W, hf q B e e ≠ 0
    · obtain ⟨e, he, hee⟩ := h
      have := finrank_perp_aniso W e he hee
      omega
    · push Not at h
      exact iso 0 W hW h
  | succ d ih =>
    intro W hW
    by_cases h : ∃ e ∈ W, hf q B e e ≠ 0
    · obtain ⟨e, he, hee⟩ := h
      have hd : finrank L ↥(W ⊓ LinearMap.ker (hfL q B e)) = d := by
        have := finrank_perp_aniso W e he hee
        omega
      obtain ⟨v, r, hr, hvW, hli, horth, hdiag⟩ := ih _ hd
      have hvk : ∀ i, hf q B (v i) e = 0 := fun i => by
        rw [← hfL_apply]
        exact LinearMap.mem_ker.mp (Submodule.mem_inf.mp (hvW i)).2
      have hek : ∀ i, hf q B e (v i) = 0 := fun i => by
        rw [hf_symm hadd hinv hB, hvk i, zero_pow hq]
      refine ⟨Fin.cons e v, r + 1, by omega, fun i => ?_, ?_, fun i j hij => ?_, fun i => ?_⟩
      · induction i using Fin.cases with
        | zero => simpa using he
        | succ j => simpa using (Submodule.mem_inf.mp (hvW j)).1
      · rw [linearIndependent_finCons]
        refine ⟨hli, fun hmem => hee ?_⟩
        have hle : Submodule.span L (Set.range v) ≤ LinearMap.ker (hfL q B e) := by
          rw [Submodule.span_le]
          rintro _ ⟨i, rfl⟩
          exact (Submodule.mem_inf.mp (hvW i)).2
        have h1 := LinearMap.mem_ker.mp (hle hmem)
        rwa [hfL_apply] at h1
      · induction i using Fin.cases with
        | zero =>
          induction j using Fin.cases with
          | zero => exact absurd rfl hij
          | succ j => simpa using hek j
        | succ i =>
          induction j using Fin.cases with
          | zero => simpa using hvk i
          | succ j => simpa using horth i j fun h => hij (by rw [h])
      · induction i using Fin.cases with
        | zero => simpa using hee
        | succ i =>
          simp only [Fin.cons_succ, Fin.val_succ]
          rw [hdiag i]
          omega
    · push Not at h
      exact iso _ W hW h

theorem diag_of_hyps {m q : ℕ} (B : Matrix (Fin m) (Fin m) L)
    (hadd : ∀ a b : L, (a + b) ^ q = a ^ q + b ^ q) (hinv : ∀ a : L, (a ^ q) ^ q = a)
    (hB : IsHerm q B) (htr : ∀ z : L, z ≠ 0 → ∃ c : L, c * z + (c * z) ^ q ≠ 0) :
    ∃ P : Matrix (Fin m) (Fin m) L, IsUnit P.det ∧ ∃ (w : Fin m → L) (r : ℕ), r ≤ m ∧
        P * B * (P.map (fun y => y ^ q)).transpose = Matrix.diagonal w ∧
        (∀ i, w i ≠ 0 ↔ i.val < r) ∧ (∀ i, w i ^ q = w i) := by
  obtain ⟨v, r, hr, -, hli, horth, hdiag⟩ := diag_orth_family hadd hinv hB htr m ⊤
    (by rw [finrank_top, Module.finrank_fin_fun])
  refine ⟨Matrix.of fun i => v i, ?_, fun i => hf q B (v i) (v i), r, hr, ?_, hdiag, fun i => ?_⟩
  · exact (Matrix.isUnit_iff_isUnit_det _).mp (Matrix.linearIndependent_row_iff_isUnit.mp hli)
  · ext i j
    have e : (Matrix.of (fun i => v i) * B * ((Matrix.of fun i => v i).map fun y => y ^ q).transpose) i j =
        hf q B (v i) (v j) := by
      simp only [Matrix.mul_apply, Matrix.transpose_apply, Matrix.map_apply, Matrix.of_apply, hf,
        Finset.sum_mul]
      exact Finset.sum_comm
    rw [e, Matrix.diagonal_apply]
    split_ifs with h
    · rw [h]
    · exact horth i j h
  · exact (hf_symm hadd hinv hB (v i) (v i)).symm
end

theorem hermitianDiagonalization : Diag := by
  intro K L _ _ _ _ _ h2 m B hB
  obtain ⟨n, hp, hcard⟩ := FiniteField.card K (ringChar K)
  haveI : Fact (ringChar K).Prime := ⟨hp⟩
  haveI : CharP L (ringChar K) := charP_of_injective_algebraMap (algebraMap K L).injective _
  have hadd : ∀ a b : L, (a + b) ^ Fintype.card K = a ^ Fintype.card K + b ^ Fintype.card K := fun a b => by
    rw [hcard]
    exact add_pow_char_pow a b _ _
  have hcL : Fintype.card L = Fintype.card K ^ 2 := by
    rw [Module.card_eq_pow_finrank (K := K) (V := L), h2]
  have hinv : ∀ a : L, (a ^ Fintype.card K) ^ Fintype.card K = a := fun a => by
    rw [← pow_mul, ← sq, ← hcL, FiniteField.pow_card]
  have hq2 : 2 ≤ Fintype.card K := Fintype.one_lt_card

  have htr : ∀ z : L, z ≠ 0 → ∃ c : L, c * z + (c * z) ^ Fintype.card K ≠ 0 := by
    intro z hz
    by_contra hall
    push Not at hall
    let P : Polynomial L := Polynomial.X ^ Fintype.card K + Polynomial.X
    have hroot : ∀ y : L, P.eval y = 0 := fun y => by
      have h := hall (y / z)
      rw [div_mul_cancel₀ y hz] at h
      simp only [P, Polynomial.eval_add, Polynomial.eval_pow, Polynomial.eval_X]
      linear_combination h
    have hP0 : P ≠ 0 := by
      intro h0
      have h := congrArg (fun p : Polynomial L => p.coeff 1) h0
      simp only [P, Polynomial.coeff_add, Polynomial.coeff_X_pow, Polynomial.coeff_X_one,
        Polynomial.coeff_zero] at h
      split_ifs at h with hh
      · omega
      · norm_num at h
    have hdeg : P.natDegree ≤ Fintype.card K :=
      (Polynomial.natDegree_add_le _ _).trans (max_le (by simp) (by simp; omega))
    have hsub : (Finset.univ : Finset L).val ≤ P.roots :=
      (Multiset.le_iff_subset Finset.univ.nodup).mpr fun y _ => (Polynomial.mem_roots hP0).mpr (hroot y)
    have hc := (Multiset.card_le_card hsub).trans ((Polynomial.card_roots' P).trans hdeg)
    rw [Finset.card_val, Finset.card_univ, hcL] at hc
    nlinarith
  exact diag_of_hyps B hadd hinv hB htr

end DensInertW
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.HermitianDiagonalization =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.IsoPeel =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.IsoPeel", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.FinrankInfKerAddOne\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.ValMain\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Finset Module

noncomputable section

namespace DensInertW

open DensInertW.Sub

section
variable {L : Type} [Field L]

theorem iso_li_tail {n c : ℕ} (x : Fin n → L) (X' : Fin c → Fin n → L) (a : Fin c → L)
    (h : LinearIndependent L (Fin.cons x X' : Fin (c + 1) → Fin n → L)) :
    LinearIndependent L (fun i => X' i - a i • x) := by
  rw [Fintype.linearIndependent_iff] at h ⊢
  intro g hg i
  simpa using (h (Fin.cons (-(∑ j, g j * a j)) g) (by
    rw [Fin.sum_univ_succ]
    simp only [Fin.cons_zero, Fin.cons_succ]
    rw [← hg]
    simp only [smul_sub, Finset.sum_sub_distrib, smul_smul, ← Finset.sum_smul, neg_smul]
    abel) i.succ)

theorem iso_li_cons {n c : ℕ} (x : Fin n → L) (U : Fin c → Fin n → L) (a : Fin c → L)
    (φ : (Fin n → L) →ₗ[L] L) (hφx : φ x = 1) (hφU : ∀ i, φ (U i) = 0)
    (hU : LinearIndependent L U) :
    LinearIndependent L (Fin.cons x (fun i => U i + a i • x) : Fin (c + 1) → Fin n → L) := by
  rw [Fintype.linearIndependent_iff] at hU ⊢
  intro g hg
  rw [Fin.sum_univ_succ] at hg
  simp only [Fin.cons_zero, Fin.cons_succ] at hg
  have h1 := congrArg φ hg

  simp only [map_add (f := _), map_sum, map_smul, hφx, hφU, smul_eq_mul, mul_one, mul_add, mul_zero,
  map_zero] at h1
  have h2 : ∑ i, g i.succ • U i = 0 := by
    have e : ∑ i, g i.succ • U i + (g 0 + ∑ i, g i.succ * a i) • x = 0 := by
      rw [← hg]
      simp only [smul_add, Finset.sum_add_distrib, add_smul, Finset.sum_smul, smul_smul]
      abel
    have h1' : g 0 + ∑ i, g i.succ * a i = 0 := by simpa using h1
    rw [h1', zero_smul, add_zero] at e
    exact e
  have hs := hU _ h2
  intro i
  refine Fin.cases ?_ (fun j => hs j) i
  simpa [hs] using h1

def isoP {n m : ℕ} (q : ℕ) (M : Matrix (Fin n) (Fin n) L) (W : Submodule L (Fin n → L))
    (X : Fin m → Fin n → L) : Prop :=
  (∀ i, X i ∈ W) ∧ LinearIndependent L X ∧ ∀ i j, hf q M (X i) (X j) = 0

open Classical in
theorem iso_cntT_zero_eq [Fintype L] {n m q : ℕ} (M : Matrix (Fin n) (Fin n) L)
    (W : Submodule L (Fin n → L)) :
    cntT q M W (0 : Matrix (Fin m) (Fin m) L) = (Finset.univ.filter (isoP (m := m) q M W)).card := by
  rw [cntT, ← Set.ncard_coe_finset]
  congr 1
  ext X
  simp [isoP]

open Classical in
theorem iso_fiber [Fintype L] {n c q : ℕ} {M : Matrix (Fin n) (Fin n) L}
    (hadd : ∀ a b : L, (a + b) ^ q = a ^ q + b ^ q) (hinv : ∀ a : L, (a ^ q) ^ q = a)
    (hM : IsHerm q M) (W : Submodule L (Fin n → L)) (x y : Fin n → L)
    (hxW : x ∈ W) (hyW : y ∈ W) (hxx : hf q M x x = 0) (hxy : hf q M x y = 1) :
    (Finset.univ.filter (fun X : Fin (c + 1) → Fin n → L => isoP q M W X ∧ X 0 = x)).card =
      Fintype.card (Fin c → L) * (Finset.univ.filter (isoP (m := c) q M
        (W ⊓ LinearMap.ker (hfL q M x) ⊓ LinearMap.ker (hfL q M y)))).card := by
  have hq : q ≠ 0 := by
    rintro rfl
    have := hinv 0
    simp at this
  have hzero : ∀ v w, hf q M v w = 0 → hf q M w v = 0 := fun v w h => by
    rw [hf_symm hadd hinv hM v w, h, zero_pow hq]
  rw [← Finset.card_univ, ← Finset.card_product]
  refine Finset.card_nbij'
    (fun X => ((fun i => hf q M (X i.succ) y), fun i => X i.succ - hf q M (X i.succ) y • x))
    (fun p => Fin.cons x (fun i => p.2 i + p.1 i • x)) ?_ ?_ ?_ ?_
  · rintro X hX
    simp only [Finset.coe_filter, Finset.mem_univ, true_and, Set.mem_setOf_eq] at hX
    obtain ⟨⟨hW, hli, hiso⟩, hX0⟩ := hX
    simp only [Finset.coe_product, Finset.coe_univ, Finset.coe_filter, Finset.mem_univ, true_and,
      Set.mem_prod, Set.mem_univ, Set.mem_setOf_eq]
    refine ⟨fun i => ?_, ?_, fun i j => ?_⟩
    · refine Submodule.mem_inf.2 ⟨Submodule.mem_inf.2 ⟨?_, ?_⟩, ?_⟩
      · exact W.sub_mem (hW _) (W.smul_mem _ hxW)
      · show hf q M _ x = 0
        rw [hf_sub_left, hf_smul_left, hxx, mul_zero, sub_zero, ← hX0]
        exact hiso _ _
      · show hf q M _ y = 0
        rw [hf_sub_left, hf_smul_left, hxy, mul_one, sub_self]
    · have h := hli
      rw [← Fin.cons_self_tail X, hX0] at h
      exact iso_li_tail x _ _ h
    · simp only [hf_sub_left, hf_sub_right hq hadd, hf_smul_left, hf_smul_right]
      rw [← hX0]
      simp [hiso]
  · rintro ⟨a, U⟩ hp
    simp only [Finset.coe_product, Finset.coe_univ, Finset.coe_filter, Finset.mem_univ, true_and,
      Set.mem_prod, Set.mem_univ, Set.mem_setOf_eq] at hp
    obtain ⟨hUW, hUli, hUiso⟩ := hp
    have hU : ∀ i, U i ∈ W ∧ hf q M (U i) x = 0 ∧ hf q M (U i) y = 0 := fun i => by
      have := hUW i
      simp only [Submodule.mem_inf, LinearMap.mem_ker] at this
      exact ⟨this.1.1, this.1.2, this.2⟩
    simp only [Finset.coe_filter, Finset.mem_univ, true_and, Set.mem_setOf_eq]
    refine ⟨⟨fun i => ?_, ?_, fun i j => ?_⟩, rfl⟩
    · refine Fin.cases ?_ (fun j => ?_) i
      · simpa using hxW
      · simp only [Fin.cons_succ]
        exact W.add_mem (hU j).1 (W.smul_mem _ hxW)
    · exact iso_li_cons x U a (hfL q M y) hxy (fun i => (hU i).2.2) hUli
    · refine Fin.cases ?_ (fun i' => ?_) i <;> refine Fin.cases ?_ (fun j' => ?_) j <;>
        simp only [Fin.cons_zero, Fin.cons_succ]
      · exact hxx
      · simp only [hf_add_right hadd, hf_smul_right, hxx, mul_zero, add_zero]
        exact hzero _ _ (hU j').2.1
      · simp only [hf_add_left, hf_smul_left, hxx, mul_zero, add_zero]
        exact (hU i').2.1
      · simp only [hf_add_left, hf_add_right hadd, hf_smul_left, hf_smul_right, hxx, (hU i').2.1,
          hzero _ _ (hU j').2.1, hUiso]
        ring
  · intro X hX
    simp only [Finset.coe_filter, Finset.mem_univ, true_and, Set.mem_setOf_eq] at hX
    funext i
    refine Fin.cases ?_ (fun j => ?_) i
    · simp [hX.2]
    · simp
  · rintro ⟨a, U⟩ hp
    simp only [Finset.coe_product, Finset.coe_univ, Finset.coe_filter, Finset.mem_univ, true_and,
      Set.mem_prod, Set.mem_univ, Set.mem_setOf_eq] at hp
    have hUy : ∀ i, hf q M (U i) y = 0 := fun i => by
      have := hp.1 i
      simp only [Submodule.mem_inf, LinearMap.mem_ker] at this
      exact this.2
    have ha : ∀ i, hf q M (U i + a i • x) y = a i := fun i => by
      rw [hf_add_left, hf_smul_left, hxy, hUy, mul_one, zero_add]
    simp only [Fin.cons_succ]
    refine Prod.ext (funext fun i => ha i) (funext fun i => ?_)
    simp only [ha]
    simp

end

theorem isoPeel_of_valCount (hv : ValCount) : IsoPeel := by
  intro K L _ _ _ _ _ hKL n M W hM hW c k hk
  classical
  set q := Fintype.card K with hq_def
  have hcardL : Fintype.card L = q ^ 2 := by
    rw [Module.card_eq_pow_finrank (K := K), hKL]
  have hinv : ∀ a : L, (a ^ q) ^ q = a := fun a => by
    rw [← pow_mul, ← sq, ← hcardL, FiniteField.pow_card]
  have hadd : ∀ a b : L, (a + b) ^ q = a ^ q + b ^ q := by
    obtain ⟨nn, hp, hpn⟩ := FiniteField.card K (ringChar K)
    haveI : Fact (ringChar K).Prime := ⟨hp⟩
    haveI : CharP L (ringChar K) :=
      charP_of_injective_algebraMap (algebraMap K L).injective (ringChar K)
    intro a b
    rw [hq_def, hpn]
    exact add_pow_char_pow a b (ringChar K) nn
  have hq0 : q ≠ 0 := Fintype.card_ne_zero
  have hsymm : ∀ a b, hf q M b a = (hf q M a b) ^ q := hf_symm hadd hinv hM
  rw [iso_cntT_zero_eq]
  set S : Finset (Fin n → L) := Finset.univ.filter (fun v => v ∈ W ∧ v ≠ 0 ∧ hf q M v v = 0) with hS
  have hmaps : ∀ X ∈ Finset.univ.filter (isoP (m := c + 1) q M W), X 0 ∈ S := by
    intro X hX
    simp only [Finset.mem_filter, Finset.mem_univ, true_and, isoP] at hX
    simp only [hS, Finset.mem_filter, Finset.mem_univ, true_and]
    exact ⟨hX.1 0, hX.2.1.ne_zero 0, hX.2.2 0 0⟩
  rw [Finset.card_eq_sum_card_fiberwise hmaps]

  have hfib : ∀ x ∈ S, (((Finset.univ.filter (isoP (m := c + 1) q M W)).filter
      (fun X => X 0 = x)).card : ℤ) = (q : ℤ) ^ (2 * c) * k := by
    intro x hx
    simp only [hS, Finset.mem_filter, Finset.mem_univ, true_and] at hx
    obtain ⟨hxW, hx0, hxx⟩ := hx
    have hex : ∃ v ∈ W, hf q M x v ≠ 0 := by
      by_contra h
      push_neg at h
      exact hx0 (hW x hxW h)
    obtain ⟨v, hvW, hv⟩ := hex
    obtain ⟨y, hy⟩ : ∃ y : Fin n → L, y = ((hf q M x v)⁻¹ ^ q) • v := ⟨_, rfl⟩
    have hxy : hf q M x y = 1 := by
      rw [hy, hf_smul_right, hinv, inv_mul_cancel₀ hv]
    have hyW : y ∈ W := by
      rw [hy]
      exact W.smul_mem _ hvW
    have hyx : hf q M y x = 1 := by rw [hsymm, hxy, one_pow]
    set W' : Submodule L (Fin n → L) :=
      W ⊓ LinearMap.ker (hfL q M x) ⊓ LinearMap.ker (hfL q M y) with hW'
    have hmemW' : ∀ u, u ∈ W' ↔ u ∈ W ∧ hf q M u x = 0 ∧ hf q M u y = 0 := fun u => by
      simp only [hW', Submodule.mem_inf, LinearMap.mem_ker]
      exact ⟨fun h => ⟨h.1.1, h.1.2, h.2⟩, fun h => ⟨⟨h.1, h.2.1⟩, h.2.2⟩⟩

    have hdec : ∀ u ∈ W, ∃ u' ∈ W', ∃ α β : L, u = u' + α • x + β • y := by
      intro u hu
      refine ⟨u - (hf q M u y - hf q M u x * hf q M y y) • x - hf q M u x • y, ?_,
        hf q M u y - hf q M u x * hf q M y y, hf q M u x, by abel⟩
      rw [hmemW']
      refine ⟨W.sub_mem (W.sub_mem hu (W.smul_mem _ hxW)) (W.smul_mem _ hyW), ?_, ?_⟩
      · rw [hf_sub_left, hf_sub_left, hf_smul_left, hf_smul_left, hxx, hyx]
        ring
      · rw [hf_sub_left, hf_sub_left, hf_smul_left, hf_smul_left, hxy]
        ring
    have hnd : NonDeg q M W' := by
      intro w hw hwall
      rw [hmemW'] at hw
      obtain ⟨hwW, hwx, hwy⟩ := hw
      apply hW w hwW
      intro u hu
      obtain ⟨u', hu', α, β, rfl⟩ := hdec u hu
      rw [hf_add_right hadd, hf_add_right hadd, hf_smul_right, hf_smul_right, hwall u' hu', hwx, hwy]
      ring

    have hdim : Module.finrank L W' + 2 = Module.finrank L W := by
      let ψ : W →ₗ[L] L × L := LinearMap.prod ((hfL q M x).comp W.subtype) ((hfL q M y).comp W.subtype)
      have hψ : ∀ w : W, ψ w = (hf q M w x, hf q M w y) := fun w => rfl
      have hsurj : Function.Surjective ψ := by
        rintro ⟨s, t⟩
        refine ⟨(t - s * hf q M y y) • ⟨x, hxW⟩ + s • ⟨y, hyW⟩, ?_⟩
        rw [hψ]
        simp only [Submodule.coe_add, Submodule.coe_smul, hf_add_left, hf_smul_left, hxx, hyx, hxy]
        ext <;> simp
      have hrange : LinearMap.range ψ = ⊤ := LinearMap.range_eq_top.2 hsurj
      have hrn := LinearMap.finrank_range_add_finrank_ker ψ
      rw [hrange, finrank_top, Module.finrank_prod, Module.finrank_self] at hrn
      have hmap : (LinearMap.ker ψ).map W.subtype = W' := by
        ext u
        rw [hmemW', Submodule.mem_map]
        constructor
        · rintro ⟨w, hw, rfl⟩
          rw [LinearMap.mem_ker, hψ, Prod.mk_eq_zero] at hw
          exact ⟨w.2, hw.1, hw.2⟩
        · rintro ⟨huW, hux, huy⟩
          refine ⟨⟨u, huW⟩, ?_, rfl⟩
          rw [LinearMap.mem_ker, hψ, Prod.mk_eq_zero]
          exact ⟨hux, huy⟩
      have hfr : Module.finrank L W' = Module.finrank L (LinearMap.ker ψ) := by
        rw [← hmap]
        exact (Submodule.equivMapOfInjective _ W.injective_subtype _).finrank_eq.symm
      omega
    have hkW' := hk W' hnd hdim
    rw [iso_cntT_zero_eq] at hkW'
    rw [Finset.filter_filter, iso_fiber hadd hinv hM W x y hxW hyW hxx hxy]
    push_cast
    rw [hkW', Fintype.card_fun, Fintype.card_fin, hcardL]
    push_cast
    ring

  have hval := hv K L hKL n M W hM hW 0 (by rw [zero_pow hq0])
  simp only [if_true] at hval
  have hT : ({v : Fin n → L | v ∈ W ∧ hf q M v v = 0}.ncard) =
      (Finset.univ.filter fun v => v ∈ W ∧ hf q M v v = 0).card := by
    rw [← Set.ncard_coe_finset]
    congr 1
    ext v
    simp
  have hS' : S = (Finset.univ.filter fun v => v ∈ W ∧ hf q M v v = 0).erase 0 := by
    ext v
    simp only [hS, Finset.mem_filter, Finset.mem_univ, true_and, Finset.mem_erase]
    tauto
  have h0mem : (0 : Fin n → L) ∈ Finset.univ.filter fun v => v ∈ W ∧ hf q M v v = 0 := by
    simp [hf_zero_left]
  have hcardS := Finset.card_erase_add_one h0mem
  rw [← hS'] at hcardS
  rw [hT] at hval
  push_cast
  rw [Finset.sum_congr rfl hfib, Finset.sum_const, nsmul_eq_mul]
  have hScast : (S.card : ℤ) = valZ q (Module.finrank L W) - 1 := by
    have h1 : (S.card : ℤ) + 1 = ((Finset.univ.filter fun v => v ∈ W ∧ hf q M v v = 0).card : ℤ) := by
      exact_mod_cast hcardS
    rw [← hq_def] at hval
    linarith
  rw [hScast]
  ring

theorem isotropic_valuation_peel : IsoPeel := isoPeel_of_valCount valuation_count

end DensInertW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.IsoPeel =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.RepCountCongruenceInvariant =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.RepCountCongruenceInvariant", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.AnisoPeelAlt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.CharP.Algebra\npublic import Mathlib.Algebra.CharP.Frobenius\npublic import Mathlib.FieldTheory.Finite.Basic\n\n"}
section -- clump:auto
@[expose] public section

open Finset

noncomputable section

namespace DensInertW

def cgComb {L : Type} [Field L] {m n : ℕ} (Q : Matrix (Fin m) (Fin m) L) (X : Fin m → Fin n → L) :
    Fin m → Fin n → L :=
  fun i => ∑ k, Q i k • X k

theorem cg_comb_comb {L : Type} [Field L] {m n : ℕ} (P Q : Matrix (Fin m) (Fin m) L)
    (X : Fin m → Fin n → L) : cgComb P (cgComb Q X) = cgComb (P * Q) X := by
  funext i
  simp only [cgComb, Finset.smul_sum, smul_smul, Matrix.mul_apply, Finset.sum_smul]
  exact Finset.sum_comm

theorem cg_comb_one {L : Type} [Field L] {m n : ℕ} (X : Fin m → Fin n → L) :
    cgComb (1 : Matrix (Fin m) (Fin m) L) X = X := by
  funext i
  simp [cgComb, Matrix.one_apply, ite_smul]

theorem cg_mem {L : Type} [Field L] {m n : ℕ} (Q : Matrix (Fin m) (Fin m) L)
    (X : Fin m → Fin n → L) (W : Submodule L (Fin n → L)) (hX : ∀ i, X i ∈ W) :
    ∀ i, cgComb Q X i ∈ W := by
  intro i
  exact Submodule.sum_mem _ fun k _ => Submodule.smul_mem _ _ (hX k)

theorem cg_lincomb {L : Type} [Field L] {m n : ℕ} (Q : Matrix (Fin m) (Fin m) L)
    (X : Fin m → Fin n → L) (g : Fin m → L) :
    ∑ i, g i • cgComb Q X i = ∑ k, (Matrix.vecMul g Q) k • X k := by
  simp only [cgComb, Finset.smul_sum, smul_smul, Matrix.vecMul, dotProduct, Finset.sum_smul]
  exact Finset.sum_comm

theorem cg_indep {L : Type} [Field L] {m n : ℕ} (Q : Matrix (Fin m) (Fin m) L)
    (X : Fin m → Fin n → L) (hQ : Q.det ≠ 0) (hX : LinearIndependent L X) :
    LinearIndependent L (cgComb Q X) := by
  rw [Fintype.linearIndependent_iff] at hX ⊢
  intro g hg i
  rw [cg_lincomb] at hg
  have h0 : Matrix.vecMul g Q = 0 := funext (hX _ hg)
  have hg' : g = Matrix.vecMul (Matrix.vecMul g Q) Q⁻¹ := by
    rw [Matrix.vecMul_vecMul, Matrix.mul_nonsing_inv _ hQ.isUnit, Matrix.vecMul_one]
  rw [hg', h0, Matrix.zero_vecMul, Pi.zero_apply]

theorem cg_hf_left {L : Type} [Field L] {m n : ℕ} (q : ℕ) (M : Matrix (Fin n) (Fin n) L)
    (c : Fin m → L) (x : Fin m → Fin n → L) (y : Fin n → L) :
    hf q M (∑ k, c k • x k) y = ∑ k, c k * hf q M (x k) y := by
  have e1 : ∀ a b, (∑ k, c k * x k a) * M a b * y b ^ q =
      ∑ k, c k * (x k a * M a b * y b ^ q) := fun a b => by
    rw [Finset.sum_mul, Finset.sum_mul]
    exact Finset.sum_congr rfl fun k _ => by ring
  simp only [hf, Finset.sum_apply, Pi.smul_apply, smul_eq_mul, e1, Finset.mul_sum]
  calc _ = ∑ a, ∑ k, ∑ b, c k * (x k a * M a b * y b ^ q) :=
        Finset.sum_congr rfl fun a _ => Finset.sum_comm
    _ = _ := Finset.sum_comm

theorem cg_hf_right (K L : Type) [Field K] [Fintype K] [Field L] [Algebra K L] {m n : ℕ}
    (M : Matrix (Fin n) (Fin n) L) (c : Fin m → L) (x : Fin n → L) (y : Fin m → Fin n → L) :
    hf (Fintype.card K) M x (∑ l, c l • y l) =
      ∑ l, c l ^ Fintype.card K * hf (Fintype.card K) M x (y l) := by
  obtain ⟨p, hch⟩ := CharP.exists K
  obtain ⟨n, hp, hq⟩ := FiniteField.card K p
  haveI := Fact.mk hp
  haveI : CharP L p := charP_of_injective_algebraMap (algebraMap K L).injective p
  have hfr : ∀ (s : Finset (Fin m)) (f : Fin m → L),
      (∑ i ∈ s, f i) ^ Fintype.card K = ∑ i ∈ s, f i ^ Fintype.card K := by
    intro s f
    rw [hq]
    first
    | (haveI : ExpChar L p := ExpChar.prime hp
       have h := map_sum (iterateFrobenius L p n) f s
       simp only [iterateFrobenius_def] at h
       exact h)
  have hfrob : ∀ b, (∑ l, c l * y l b) ^ Fintype.card K =
      ∑ l, c l ^ Fintype.card K * y l b ^ Fintype.card K := by
    intro b
    rw [hfr]
    simp [mul_pow]
  simp only [hf, Finset.sum_apply, Pi.smul_apply, smul_eq_mul, hfrob, Finset.mul_sum]
  calc _ = ∑ a, ∑ l, ∑ b, x a * M a b * (c l ^ Fintype.card K * y l b ^ Fintype.card K) :=
        Finset.sum_congr rfl fun a _ => Finset.sum_comm
    _ = ∑ l, ∑ a, ∑ b, x a * M a b * (c l ^ Fintype.card K * y l b ^ Fintype.card K) :=
        Finset.sum_comm
    _ = _ := Finset.sum_congr rfl fun l _ => Finset.sum_congr rfl fun a _ =>
        Finset.sum_congr rfl fun b _ => by ring

theorem cg_gram (K L : Type) [Field K] [Fintype K] [Field L] [Algebra K L] {m n : ℕ}
    (M : Matrix (Fin n) (Fin n) L) (Q G : Matrix (Fin m) (Fin m) L) (X : Fin m → Fin n → L)
    (hX : ∀ k l, hf (Fintype.card K) M (X k) (X l) = G k l) (i j : Fin m) :
    hf (Fintype.card K) M (cgComb Q X i) (cgComb Q X j) =
      (Q * G * (Q.map (fun y => y ^ Fintype.card K)).transpose) i j := by
  show hf (Fintype.card K) M (∑ k, Q i k • X k) (∑ l, Q j l • X l) = _
  rw [cg_hf_left]
  simp only [cg_hf_right K L, hX, Matrix.mul_apply, Matrix.transpose_apply, Matrix.map_apply,
    Finset.sum_mul, Finset.mul_sum]
  calc _ = ∑ l, ∑ k, Q i k * (Q j l ^ Fintype.card K * G k l) := Finset.sum_comm
    _ = _ := Finset.sum_congr rfl fun l _ => Finset.sum_congr rfl fun k _ => by ring

theorem cg_map_mul (K L : Type) [Field K] [Fintype K] [Field L] [Algebra K L] {m : ℕ}
    (A C : Matrix (Fin m) (Fin m) L) :
    (A * C).map (fun y => y ^ Fintype.card K) =
      A.map (fun y => y ^ Fintype.card K) * C.map (fun y => y ^ Fintype.card K) := by
  obtain ⟨p, hch⟩ := CharP.exists K
  obtain ⟨n, hp, hq⟩ := FiniteField.card K p
  haveI := Fact.mk hp
  haveI : CharP L p := charP_of_injective_algebraMap (algebraMap K L).injective p
  have hfr : ∀ (s : Finset (Fin m)) (f : Fin m → L),
      (∑ i ∈ s, f i) ^ Fintype.card K = ∑ i ∈ s, f i ^ Fintype.card K := by
    intro s f
    rw [hq]
    first
    | (haveI : ExpChar L p := ExpChar.prime hp
       have h := map_sum (iterateFrobenius L p n) f s
       simp only [iterateFrobenius_def] at h
       exact h)
  ext i j
  simp only [Matrix.map_apply, Matrix.mul_apply]
  rw [hfr]
  simp [mul_pow]

theorem repCountCongruenceInvariant : Congr := by
  intro K L _ _ _ _ _ _ n M W m B P hP
  have hdet : P.det ≠ 0 := hP.ne_zero
  have hq1 : 0 < Fintype.card K := Fintype.card_pos
  have hmap1 : (1 : Matrix (Fin m) (Fin m) L).map (fun y => y ^ Fintype.card K) = 1 := by
    ext i j
    by_cases h : i = j <;> simp [Matrix.one_apply, h, zero_pow hq1.ne']
  have hPinv : P * P⁻¹ = 1 := Matrix.mul_nonsing_inv P hP
  have hPinv' : P⁻¹ * P = 1 := Matrix.nonsing_inv_mul P hP
  have hinj : Function.Injective (fun X : Fin m → Fin n → L => cgComb P X) := fun X Y h => by
    have h2 := congrArg (cgComb P⁻¹) h
    simpa [cg_comb_comb, hPinv', cg_comb_one] using h2
  have e : (P.map (fun y => y ^ Fintype.card K)).transpose *
      (P⁻¹.map (fun y => y ^ Fintype.card K)).transpose = 1 := by
    rw [← Matrix.transpose_mul, ← cg_map_mul K L, hPinv', hmap1, Matrix.transpose_one]
  have e2 : P⁻¹ * (P * B * (P.map (fun y => y ^ Fintype.card K)).transpose) *
      (P⁻¹.map (fun y => y ^ Fintype.card K)).transpose = B := by
    simp only [Matrix.mul_assoc, e, Matrix.mul_one]
    rw [← Matrix.mul_assoc, hPinv', Matrix.one_mul]
  unfold cntT
  convert Set.ncard_image_of_injective _ hinj using 2
  ext Y
  constructor
  · rintro ⟨hW, hI, hG⟩
    refine ⟨cgComb P⁻¹ Y, ⟨cg_mem _ _ _ hW,
      cg_indep _ _ (Matrix.isUnit_nonsing_inv_det P hP).ne_zero hI, fun i j => ?_⟩, ?_⟩
    · rw [cg_gram K L M P⁻¹ _ Y hG, e2]
    · show cgComb P (cgComb P⁻¹ Y) = Y
      rw [cg_comb_comb, hPinv, cg_comb_one]
  · rintro ⟨X, ⟨hW, hI, hG⟩, rfl⟩
    exact ⟨cg_mem _ _ _ hW, cg_indep _ _ hdet hI, fun i j => cg_gram K L M P B X hG i j⟩

end DensInertW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.RepCountCongruenceInvariant =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.DensInert =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.DensInert", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.SiegelMassRatios.DensExact\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.AnisoPeel\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.DensExactInertOf\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.DensityProductAddTwoSuccSucc\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.HermitianDiagonalization\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.IsoPeel\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.InertDensity.RepCountCongruenceInvariant\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem density_exact_inert : Formalism.L2.SG.DensExact.DensExactInert :=
  DensInertW.densExactInert_of DensInertW.hermitianDiagonalization DensInertW.repCountCongruenceInvariant
    DensInertW.anisotropic_valuation_peel DensInertW.isotropic_valuation_peel DensInertW.quadraticDifferenceArith
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.DensInert =====
