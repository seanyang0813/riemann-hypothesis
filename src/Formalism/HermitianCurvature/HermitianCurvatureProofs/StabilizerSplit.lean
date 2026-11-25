module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerFlagSplitting.SubFlag
public import Formalism.FormalDegreeBessel.FormalDegreeRatio.GBasic
public import Formalism.FormalDegreeBessel.FinalG
public import Formalism.FormalDegreeBessel.FormalDegreeRatio.UnitaryWeylNormalHolds
public import Formalism.FormalDegreeBessel.FormalDegreeRatio.GroupFactorizationHolds
public import Mathlib.Algebra.Star.Basic
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerFlagSplitting.MulVecColOfMul
public import Formalism.HermitianCurvature.FiniteOrderIntersectionInSmooth
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Analysis.CStarAlgebra.CStarMatrix

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerFlagSplitting.FixFlag, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerFlagSplitting.FixSub, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerFlagSplitting.NilpotentOrthogonalComplement, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerFlagSplitting.UnitR, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerFlagSplitting.StabilizerSplittingOfParts, Formalism.HermitianCurvature.HermitianCurvatureProofs.StabilizerSplit

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerFlagSplitting.FixFlag =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerFlagSplitting.FixFlag", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerFlagSplitting.SubFlag\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.C2

noncomputable section

namespace PI.StabSplit

private lemma mem_flagSpan_of_eq_zero_of_le {k r : ℕ} (z : Fin (2 * r + k + 1) → ℂ) (a : Fin (r + 1))
    (w : Fin (2 * r + k + 1) → ℂ) (hw : ∀ i : Fin (2 * r + k + 1), a.val ≤ i.val → w i = 0) :
    w ∈ flagSpan k r z a := by
  have hw' : w = ∑ i : Fin (2 * r + k + 1), w i • bvec i := by
    ext j
    simp [bvec, Pi.single_apply, Finset.sum_apply]
  rw [hw']
  refine Submodule.sum_mem _ (fun i _ => ?_)
  by_cases hi : a.val ≤ i.val
  · simp [hw i hi]
  · push_neg at hi
    have hr : i.val < r := by omega
    refine Submodule.smul_mem _ _ (Submodule.subset_span ⟨⟨⟨i.val, by omega⟩, Fin.lt_def.mpr hi⟩, ?_⟩)
    have hr' : (⟨i.val, by omega⟩ : Fin (r + 1)).val < r := hr
    simp only [fvec, dif_pos hr']
    congr 1

private lemma mulVec_mem_flagSpan_of_fixes_fvec {k r : ℕ} (z : Fin (2 * r + k + 1) → ℂ) (a : Fin (r + 1))
    (h : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ)
    (hf : ∀ b, h *ᵥ fvec k r z b = fvec k r z b) (w : Fin (2 * r + k + 1) → ℂ)
    (hw : w ∈ flagSpan k r z a) : h *ᵥ w ∈ flagSpan k r z a := by
  unfold flagSpan at *
  have hle : Submodule.span ℂ (Set.range fun b : {b : Fin (r + 1) // b < a} => fvec k r z b.1) ≤
      (Submodule.span ℂ (Set.range fun b : {b : Fin (r + 1) // b < a} => fvec k r z b.1)).comap
        (Matrix.mulVecLin h) := by
    rw [Submodule.span_le]
    rintro _ ⟨b, rfl⟩
    simp only [SetLike.mem_coe, Submodule.mem_comap, Matrix.mulVecLin_apply]
    rw [hf]
    exact Submodule.subset_span ⟨b, rfl⟩
  exact hle hw

theorem stabilizer_subgroup_flag : SubFlag := by
  unfold SubFlag
  intro k r z hz s hs
  obtain ⟨h, hh, m, hm, rfl⟩ := hs
  obtain ⟨hhU, hhe, hhz⟩ := hh
  obtain ⟨hmU, hmc, hmd⟩ := hm
  have hhU' : hᴴ * Hpk k r * h = Hpk k r := hhU
  have hmU' : mᴴ * Hpk k r * m = Hpk k r := hmU
  have hfix : ∀ b, h *ᵥ fvec k r z b = fvec k r z b := by
    intro b
    unfold fvec
    split_ifs with hb
    · exact (hhe ⟨b.val, hb⟩).1
    · exact hhz
  refine ⟨?_, fun a => ?_⟩
  · show (h * m)ᴴ * Hpk k r * (h * m) = Hpk k r
    rw [Matrix.conjTranspose_mul]
    calc mᴴ * hᴴ * Hpk k r * (h * m) = mᴴ * (hᴴ * Hpk k r * h) * m := by
          simp only [Matrix.mul_assoc]
      _ = Hpk k r := by rw [hhU']; exact hmU'
  · have hm1 : m *ᵥ fvec k r z a - fvec k r z a ∈ flagSpan k r z a := by
      apply mem_flagSpan_of_eq_zero_of_le
      intro i hi
      rw [Pi.sub_apply, sub_eq_zero]
      unfold fvec
      split_ifs with ha
      · simp only [Matrix.mulVec, dotProduct, bvec, Pi.single_apply, mul_ite, mul_one, mul_zero,
          Finset.sum_ite_eq', Finset.mem_univ, if_true]
        exact hmc ⟨a.val, ha⟩ i hi
      · have hri : r ≤ i.val := by omega
        simp only [Matrix.mulVec, dotProduct]
        rw [Finset.sum_eq_single i]
        · by_cases hzi : z i = 0
          · simp [hzi]
          · have hik : i.val ≤ r + k := by
              by_contra hc
              exact hzi (hz i (Or.inr (by omega)))
            rw [hmd i i hri hik hri, if_pos rfl, one_mul]
        · intro j _ hji
          by_cases hzj : z j = 0
          · simp [hzj]
          · have h1 : r ≤ j.val := by
              by_contra hc
              exact hzj (hz j (Or.inl (by omega)))
            have h2 : j.val ≤ r + k := by
              by_contra hc
              exact hzj (hz j (Or.inr (by omega)))
            rw [hmd i j h1 h2 hri, if_neg (Ne.symm hji), zero_mul]
        · intro hi'
          exact absurd (Finset.mem_univ i) hi'
    have heq : (h * m) *ᵥ fvec k r z a - fvec k r z a =
        h *ᵥ (m *ᵥ fvec k r z a - fvec k r z a) := by
      rw [← Matrix.mulVec_mulVec, Matrix.mulVec_sub, hfix]
    rw [heq]
    exact mulVec_mem_flagSpan_of_fixes_fvec z a h hfix _ hm1

end PI.StabSplit
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerFlagSplitting.FixFlag =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerFlagSplitting.FixSub =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerFlagSplitting.FixSub", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerFlagSplitting.SubFlag\npublic import Formalism.FormalDegreeBessel.FormalDegreeRatio.GBasic\npublic import Formalism.FormalDegreeBessel.FinalG\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.C2 Formalism.QuantumDeterminants.GBasic

noncomputable section

namespace PI.StabSplit.FixW

def uOf (k r : ℕ) (g : B.Mat k r) : B.Mat k r :=
  Matrix.of fun i j =>
    if (r ≤ i.val ∧ i.val ≤ r + k) ∧ (r ≤ j.val ∧ j.val ≤ r + k) then g i j
    else if i = j then 1 else 0

lemma uOf_out_col {k r : ℕ} (g : B.Mat k r) (i j : Fin (2 * r + k + 1))
    (hj : j.val < r ∨ r + k < j.val) : uOf k r g i j = if i = j then 1 else 0 := by
  simp only [uOf, of_apply]
  rw [if_neg (by omega)]

lemma uOf_out_row {k r : ℕ} (g : B.Mat k r) (i j : Fin (2 * r + k + 1))
    (hi : i.val < r ∨ r + k < i.val) : uOf k r g i j = if i = j then 1 else 0 := by
  simp only [uOf, of_apply]
  rw [if_neg (by omega)]

lemma uOf_in {k r : ℕ} (g : B.Mat k r) (i j : Fin (2 * r + k + 1))
    (hi1 : r ≤ i.val) (hi2 : i.val ≤ r + k) (hj1 : r ≤ j.val) (hj2 : j.val ≤ r + k) :
    uOf k r g i j = g i j := by
  simp only [uOf, of_apply]
  rw [if_pos ⟨⟨hi1, hi2⟩, hj1, hj2⟩]

lemma uOf_W_out {k r : ℕ} (g : B.Mat k r) (i j : Fin (2 * r + k + 1))
    (hi1 : r ≤ i.val) (hi2 : i.val ≤ r + k) (hj : j.val < r ∨ r + k < j.val) :
    uOf k r g i j = 0 := by
  rw [uOf_out_col g i j hj, if_neg]
  intro h; subst h; omega

lemma herm_entry {k r : ℕ} (A C : B.Mat k r) (i j : Fin (2 * r + k + 1)) :
    (Aᴴ * Hpk k r * C) i j = ∑ p, star (A p i) * sgn k r p * C (sig k r p) j := by
  rw [Matrix.mul_apply]
  simp_rw [Matrix.mul_apply, conjTranspose_apply, Hpk_eq, Finset.sum_mul]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl (fun p _ => ?_)
  simp [mul_ite, ite_mul, Finset.sum_ite_eq']

lemma mulVec_bvec {m : ℕ} (A : Matrix (Fin m) (Fin m) ℂ) (j : Fin m) :
    A *ᵥ bvec j = fun i => A i j := by
  ext i; simp [bvec, mulVec, dotProduct, Pi.single_apply]

lemma fix_col {k r : ℕ} {z : Fin (2 * r + k + 1) → ℂ} {g : B.Mat k r} (hg : g ∈ FixSet k r z)
    (j : Fin (2 * r + k + 1)) (hj : j.val < r) (i : Fin (2 * r + k + 1)) :
    g i j = if i = j then 1 else 0 := by
  have h := congrFun (hg.2 ⟨j.val, by omega⟩) i
  have e : eI k r ⟨j.val, hj⟩ = j := Fin.ext rfl
  simp only [fvec, dif_pos hj, e, mulVec_bvec] at h
  rw [h]; simp [bvec, Pi.single_apply]

lemma isometry_fix_flagAnisotropicVector_of_fix_frame {k r : ℕ} {z : Fin (2 * r + k + 1) → ℂ} {g : B.Mat k r} (hg : g ∈ FixSet k r z) :
    g *ᵥ z = z := by
  have h := hg.2 (Fin.last r)
  simpa [fvec] using h

lemma fix_zero {k r : ℕ} {z : Fin (2 * r + k + 1) → ℂ} {g : B.Mat k r} (hg : g ∈ FixSet k r z)
    (i j : Fin (2 * r + k + 1)) (hi : r + k < i.val) (hj2 : j.val ≤ r + k) : g i j = 0 := by
  have hU : gᴴ * Hpk k r * g = Hpk k r := hg.1
  set a := sig k r i with ha
  have har : a.val < r := by rw [ha, sig_hi k r i hi]; have := i.isLt; omega
  have e := congrFun (congrFun hU a) j
  rw [herm_entry, Finset.sum_eq_single a] at e
  · rw [fix_col hg a har a, if_pos rfl, ha, sig_sig] at e
    have hs : sgn k r (sig k r i) = 1 := by
      unfold sgn; rw [if_neg]; rw [sig_hi k r i hi]; have := i.isLt; omega
    rw [hs, star_one, one_mul, one_mul, Hpk_eq, if_neg] at e
    · exact e
    · rw [← ha, sig_sig]; intro h; subst h; omega
  · intro p _ hp
    rw [fix_col hg a har p, if_neg hp, star_zero, zero_mul, zero_mul]
  · intro h; exact absurd (Finset.mem_univ _) h

lemma uOf_mem {k r : ℕ} {z : Fin (2 * r + k + 1) → ℂ} {g : B.Mat k r} (hg : g ∈ FixSet k r z) :
    uOf k r g ∈ UH (Hpk k r) := by
  have hU : gᴴ * Hpk k r * g = Hpk k r := hg.1
  show (uOf k r g)ᴴ * Hpk k r * uOf k r g = Hpk k r
  ext i j
  rw [herm_entry]
  by_cases hi : r ≤ i.val ∧ i.val ≤ r + k
  · by_cases hj : r ≤ j.val ∧ j.val ≤ r + k
    · rw [← congrFun (congrFun hU i) j, herm_entry]
      refine Finset.sum_congr rfl (fun p _ => ?_)
      by_cases hp : r ≤ p.val ∧ p.val ≤ r + k
      · rw [sig_mid k r p hp.1 hp.2, uOf_in g p i hp.1 hp.2 hi.1 hi.2, uOf_in g p j hp.1 hp.2 hj.1 hj.2]
      · rw [uOf_out_row g p i (by omega), if_neg (by intro h; subst h; omega), star_zero, zero_mul,
          zero_mul]
        rcases (show p.val < r ∨ r + k < p.val by omega) with hp' | hp'
        · rw [fix_zero hg (sig k r p) j (by rw [sig_lo k r p hp']; omega) hj.2, mul_zero]
        · rw [fix_zero hg p i hp' hi.2, star_zero, zero_mul, zero_mul]
    · rw [Finset.sum_eq_single (sig k r j)]
      · rw [sig_sig, uOf_out_col g j j (by omega), if_pos rfl, mul_one]
        have hsj : (sig k r j).val < r ∨ r + k < (sig k r j).val := by
          have := j.isLt; rw [sig_val]; split_ifs <;> omega
        rw [uOf_out_row g (sig k r j) i hsj, if_neg (by intro h; rw [← h] at hi; omega), star_zero,
          zero_mul, Hpk_eq, if_neg]
        rw [sig_mid k r i hi.1 hi.2]; intro h; subst h; omega
      · intro p _ hp
        rw [uOf_out_col g _ j (by omega), if_neg (by intro h; apply hp; rw [← h, sig_sig]), mul_zero]
      · intro h; exact absurd (Finset.mem_univ _) h
  · rw [Finset.sum_eq_single i]
    · rw [uOf_out_col g i i (by omega), if_pos rfl, star_one, one_mul]
      have hsi : (sig k r i).val < r ∨ r + k < (sig k r i).val := by
        have := i.isLt; rw [sig_val]; split_ifs <;> omega
      rw [uOf_out_row g (sig k r i) j hsi, Hpk_eq]
      by_cases h : sig k r i = j
      · rw [if_pos h, if_pos h.symm, mul_one]
      · rw [if_neg h, if_neg (Ne.symm h), mul_zero]
    · intro p _ hp
      rw [uOf_out_col g p i (by omega), if_neg hp, star_zero, zero_mul, zero_mul]
    · intro h; exact absurd (Finset.mem_univ _) h

lemma uOf_fix_out {k r : ℕ} (g : B.Mat k r) (c : Fin (2 * r + k + 1))
    (hc : c.val < r ∨ r + k < c.val) : uOf k r g *ᵥ bvec c = bvec c := by
  rw [mulVec_bvec]; ext i
  rw [uOf_out_col g i c hc]; simp [bvec, Pi.single_apply]

lemma unipotent_part_fixes_vector {k r : ℕ} {z : Fin (2 * r + k + 1) → ℂ} (hz : inWb k r z) {g : B.Mat k r}
    (hg : g ∈ FixSet k r z) : uOf k r g *ᵥ z = z := by
  ext i
  have hgz := congrFun (isometry_fix_flagAnisotropicVector_of_fix_frame hg) i
  by_cases hi : r ≤ i.val ∧ i.val ≤ r + k
  · rw [← hgz]
    simp only [mulVec, dotProduct]
    refine Finset.sum_congr rfl (fun l _ => ?_)
    by_cases hl : r ≤ l.val ∧ l.val ≤ r + k
    · rw [uOf_in g i l hi.1 hi.2 hl.1 hl.2]
    · rw [hz l (by omega), mul_zero, mul_zero]
  · simp only [mulVec, dotProduct]
    rw [Finset.sum_eq_single i]
    · rw [uOf_out_row g i i (by omega), if_pos rfl, one_mul]
    · intro l _ hl
      rw [uOf_out_row g i l (by omega), if_neg (Ne.symm hl), zero_mul]
    · intro h; exact absurd (Finset.mem_univ _) h

lemma uOf_UW {k r : ℕ} {z : Fin (2 * r + k + 1) → ℂ} (hz : inWb k r z) {g : B.Mat k r}
    (hg : g ∈ FixSet k r z) : uOf k r g ∈ UWset k r z := by
  refine ⟨uOf_mem hg, fun a => ⟨?_, ?_⟩, unipotent_part_fixes_vector hz hg⟩
  · exact uOf_fix_out g _ (Or.inl (by simp [eI]))
  · exact uOf_fix_out g _ (Or.inr (by simp [esI]; omega))

def yv (k r : ℕ) (g : B.Mat k r) (j : Fin (2 * r + k + 1)) : Fin (2 * r + k + 1) → ℂ :=
  fun i => if i.val < r then g i j else if i = j then 1 else 0

lemma uOf_yv {k r : ℕ} {z : Fin (2 * r + k + 1) → ℂ} {g : B.Mat k r} (hg : g ∈ FixSet k r z)
    (j : Fin (2 * r + k + 1)) (hj : j.val ≤ r + k) : uOf k r g *ᵥ yv k r g j = fun i => g i j := by
  ext i
  simp only [mulVec, dotProduct]
  by_cases hi : r ≤ i.val ∧ i.val ≤ r + k
  · have key : ∀ l, uOf k r g i l * yv k r g j l =
        if l = j then (if r ≤ j.val then g i j else 0) else 0 := by
      intro l
      by_cases hl : r ≤ l.val ∧ l.val ≤ r + k
      · rw [uOf_in g i l hi.1 hi.2 hl.1 hl.2]
        simp only [yv, if_neg (show ¬ l.val < r by omega)]
        by_cases hlj : l = j
        · subst hlj; rw [if_pos rfl, if_pos rfl, if_pos hl.1, mul_one]
        · rw [if_neg hlj, if_neg hlj, mul_zero]
      · rw [uOf_W_out g i l hi.1 hi.2 (by omega), zero_mul]
        by_cases hlj : l = j
        · subst hlj; rw [if_pos rfl, if_neg (by omega)]
        · rw [if_neg hlj]
    rw [Finset.sum_congr rfl (fun l _ => key l), Finset.sum_ite_eq' Finset.univ j, if_pos (Finset.mem_univ _)]
    by_cases hjr : r ≤ j.val
    · rw [if_pos hjr]
    · rw [if_neg hjr, fix_col hg j (by omega) i, if_neg]; intro h; subst h; omega
  · rw [Finset.sum_eq_single i]
    · rw [uOf_out_row g i i (by omega), if_pos rfl, one_mul]
      simp only [yv]
      by_cases hir : i.val < r
      · rw [if_pos hir]
      · rw [if_neg hir, if_neg (by intro h; subst h; omega)]
        by_cases hjr : j.val < r
        · rw [fix_col hg j hjr i, if_neg (by intro h; subst h; omega)]
        · rw [fix_zero hg i j (by omega) hj]
    · intro l _ hl
      rw [uOf_out_row g i l (by omega), if_neg (Ne.symm hl), zero_mul]
    · intro h; exact absurd (Finset.mem_univ _) h

theorem fixed_point_subgroup : FixSub := by
  intro k r z hz g hg
  have hu := uOf_UW hz hg
  have hH : (Hpk k r).det ≠ 0 := by
    have h2 := congrArg Matrix.det (Hpk_sq k r)
    rw [det_mul, det_one] at h2
    exact left_ne_zero_of_mul_eq_one h2
  have hdet : IsUnit (uOf k r g).det := by
    have h := congrArg Matrix.det hu.1
    rw [det_mul, det_mul, det_conjTranspose] at h
    refine isUnit_iff_ne_zero.mpr (fun h0 => hH ?_)
    rw [← h, h0, mul_zero]
  refine ⟨uOf k r g, hu, (uOf k r g)⁻¹ * g, ?_, ?_⟩
  · have hm : (uOf k r g)⁻¹ * g ∈ UH (Hpk k r) := by
      have hinv := (uHGroup (2 * r + k + 1) (Hpk k r) (isUnit_iff_ne_zero.mpr hH)).2
      exact hinv.1 _ (hinv.2 _ hu.1).2 _ hg.1
    refine ⟨hm, fun a i hi => ?_, fun i j h1 h2 h3 => ?_⟩
    · have e : (eI k r a).val < r := by simp [eI]
      have hy := congrFun (uOf_yv hg (eI k r a) (by omega)) i
      have hc : ((uOf k r g)⁻¹ * g) i (eI k r a) = yv k r g (eI k r a) i := by
        rw [← congrFun (mulVec_bvec ((uOf k r g)⁻¹ * g) (eI k r a)) i, ← mulVec_mulVec,
          mulVec_bvec g, ← uOf_yv hg (eI k r a) (by omega), mulVec_mulVec,
          nonsing_inv_mul _ hdet, one_mulVec]
      rw [hc]; simp only [yv]
      by_cases hir : i.val < r
      · rw [if_pos hir, fix_col hg _ e i]
      · rw [if_neg hir]
    · have hc : ((uOf k r g)⁻¹ * g) i j = yv k r g j i := by
        rw [← congrFun (mulVec_bvec ((uOf k r g)⁻¹ * g) j) i, ← mulVec_mulVec,
          mulVec_bvec g, ← uOf_yv hg j h2, mulVec_mulVec, nonsing_inv_mul _ hdet, one_mulVec]
      rw [hc]; simp only [yv, if_neg (show ¬ i.val < r by omega)]
  · rw [← Matrix.mul_assoc, mul_nonsing_inv _ hdet, Matrix.one_mul]

end PI.StabSplit.FixW

namespace PI.StabSplit

alias fixed_point_subgroup := _root_.PI.StabSplit.FixW.fixed_point_subgroup

end PI.StabSplit
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerFlagSplitting.FixSub =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerFlagSplitting.NilpotentOrthogonalComplement =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerFlagSplitting.NilpotentOrthogonalComplement", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerFlagSplitting.SubFlag\npublic import Formalism.FormalDegreeBessel.FormalDegreeRatio.GBasic\npublic import Formalism.FormalDegreeBessel.FormalDegreeRatio.UnitaryWeylNormalHolds\npublic import Formalism.FormalDegreeBessel.FormalDegreeRatio.GroupFactorizationHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.C2 Formalism.QuantumDeterminants.GBasic

noncomputable section

namespace PI.StabSplit.UnipW

def perpX (k r : ℕ) (v : Fin (2 * r + k + 1) → ℂ) : Prop := ∀ i : Fin (2 * r + k + 1), r + k < i.val → v i = 0

def inX (k r : ℕ) (v : Fin (2 * r + k + 1) → ℂ) : Prop := ∀ i : Fin (2 * r + k + 1), r ≤ i.val → v i = 0

def Lk (k r : ℕ) : Fin (2 * r + k + 1) := ⟨r + k, by omega⟩

lemma mulVec_bvec {m : ℕ} (A : Matrix (Fin m) (Fin m) ℂ) (j : Fin m) :
    A *ᵥ bvec j = fun i => A i j := by
  funext i
  simp [bvec, Matrix.mulVec]

lemma sig_gt {k r : ℕ} (i : Fin (2 * r + k + 1)) (h : i.val < r) : r + k < (sig k r i).val := by
  unfold sig
  rw [if_pos (Or.inl h)]
  show r + k < 2 * r + k - i.val
  omega

lemma sig_ge {k r : ℕ} (i : Fin (2 * r + k + 1)) (h : i.val ≤ r + k) : r ≤ (sig k r i).val := by
  unfold sig
  split_ifs with h'
  · show r ≤ 2 * r + k - i.val
    omega
  · push_neg at h'
    exact h'.1

private lemma hpk_apply_of_outer_index (k r : ℕ) (i j : Fin (2 * r + k + 1)) :
    Hpk k r i j = if j = sig k r i then sgn k r i else 0 := by
  by_cases hi : i.val < r ∨ r + k < i.val
  · have hsig : sig k r i = ⟨2 * r + k - i.val, by omega⟩ := by
      unfold sig
      rw [if_pos hi]
    rw [hsig]
    have hj : (j = (⟨2 * r + k - i.val, by omega⟩ : Fin (2 * r + k + 1))) ↔ i.val + j.val = 2 * r + k := by
      rw [Fin.ext_iff]
      simp only
      omega
    simp only [Hpk, sgn, hj]
    split_ifs <;> first | rfl | (exfalso; omega)
  · have hsig : sig k r i = i := by
      unfold sig
      rw [if_neg hi]
    rw [hsig]
    push_neg at hi
    simp only [Hpk, sgn]
    by_cases hij : j = i
    · subst hij
      simp only [if_true, and_true]
      split_ifs <;> first | rfl | (exfalso; omega)
    · have hij' : ¬ i = j := fun h => hij h.symm
      simp only [hij, hij', if_false, and_false]
      split_ifs <;> first | rfl | (exfalso; omega)

lemma herm_coord {k r : ℕ} (v w : Fin (2 * r + k + 1) → ℂ) :
    herm (Hpk k r) v w = ∑ i, star (w i) * (sgn k r i * v (sig k r i)) := by
  unfold herm
  simp only [dotProduct, Pi.star_apply]
  refine Finset.sum_congr rfl fun i _ => ?_
  congr 1
  simp only [Matrix.mulVec, dotProduct, hpk_apply_of_outer_index, ite_mul, zero_mul, Finset.sum_ite_eq',
    Finset.mem_univ, if_true]

lemma star_dotProduct_Hpk_mulVec_eq_sum_sub {k r : ℕ} {v w : Fin (2 * r + k + 1) → ℂ} (hv : perpX k r v) (hw : perpX k r w) :
    herm (Hpk k r) v w =
      ∑ i, if (r ≤ i.val ∧ i.val ≤ r + k) then star (w i) * (sgn k r i * v i) else 0 := by
  rw [herm_coord]
  refine Finset.sum_congr rfl fun i _ => ?_
  split_ifs with h
  · have hs : sig k r i = i := by
      unfold sig
      rw [if_neg (by omega)]
    rw [hs]
  · by_cases hi : i.val < r
    · rw [hv _ (sig_gt i hi)]
      ring
    · rw [hw i (by omega)]
      simp

lemma herm_perp_inX {k r : ℕ} {v x : Fin (2 * r + k + 1) → ℂ} (hv : perpX k r v) (hx : inX k r x) :
    herm (Hpk k r) v x = 0 := by
  rw [herm_coord]
  refine Finset.sum_eq_zero fun i _ => ?_
  by_cases hi : i.val < r
  · rw [hv _ (sig_gt i hi)]
    ring
  · rw [hx i (by omega)]
    simp

lemma herm_inX_perp {k r : ℕ} {v x : Fin (2 * r + k + 1) → ℂ} (hv : perpX k r v) (hx : inX k r x) :
    herm (Hpk k r) x v = 0 := by
  rw [herm_coord]
  refine Finset.sum_eq_zero fun i _ => ?_
  by_cases hi : i.val ≤ r + k
  · rw [hx _ (sig_ge i hi)]
    ring
  · rw [hv i (by omega)]
    simp

lemma star_sgn {k r : ℕ} (i : Fin (2 * r + k + 1)) : star (sgn k r i) = sgn k r i := by
  unfold sgn
  split_ifs <;> simp

lemma herm_conjW {k r : ℕ} {v w : Fin (2 * r + k + 1) → ℂ} (hv : perpX k r v) (hw : perpX k r w) :
    herm (Hpk k r) w v = star (herm (Hpk k r) v w) := by
  rw [star_dotProduct_Hpk_mulVec_eq_sum_sub hw hv, star_dotProduct_Hpk_mulVec_eq_sum_sub hv hw, star_sum]
  refine Finset.sum_congr rfl fun i _ => ?_
  split_ifs
  · simp only [star_mul', star_star, star_sgn]
    ring
  · simp

lemma herm_self_re {k r : ℕ} {w : Fin (2 * r + k + 1) → ℂ} (hw : perpX k r w) (hL : w (Lk k r) = 0) :
    (herm (Hpk k r) w w).re =
      ∑ i, if (r ≤ i.val ∧ i.val ≤ r + k) then Complex.normSq (w i) else 0 := by
  rw [star_dotProduct_Hpk_mulVec_eq_sum_sub hw hw, Complex.re_sum]
  refine Finset.sum_congr rfl fun i _ => ?_
  split_ifs with h
  · by_cases hi : i.val = r + k
    · have e : i = Lk k r := Fin.ext hi
      rw [e, hL]
      simp
    · simp only [sgn, if_neg hi, one_mul]
      rw [mul_comm, Complex.star_def, Complex.mul_conj, Complex.ofReal_re]
  · simp

lemma sum_W_nonneg {k r : ℕ} (w : Fin (2 * r + k + 1) → ℂ) :
    0 ≤ ∑ i : Fin (2 * r + k + 1), if (r ≤ i.val ∧ i.val ≤ r + k) then Complex.normSq (w i) else 0 := Finset.sum_nonneg fun i _ => by
    split_ifs <;> first | exact Complex.normSq_nonneg _ | exact le_refl _

lemma herm_expand {m : ℕ} (H : Matrix (Fin m) (Fin m) ℂ) (y z : Fin m → ℂ) (c : ℂ) :
    herm H (y - c • z) (y - c • z) =
      herm H y y - star c * herm H y z - c * herm H z y + c * star c * herm H z z := by
  unfold herm
  simp only [Matrix.mulVec_sub, Matrix.mulVec_smul, star_sub, star_smul, dotProduct_sub,
    sub_dotProduct, dotProduct_smul, smul_dotProduct, smul_eq_mul]
  ring

lemma herm_add_left {m : ℕ} (H : Matrix (Fin m) (Fin m) ℂ) (a b w : Fin m → ℂ) :
    herm H (a + b) w = herm H a w + herm H b w := by
  unfold herm
  rw [Matrix.mulVec_add, dotProduct_add]

lemma herm_add_right {m : ℕ} (H : Matrix (Fin m) (Fin m) ℂ) (v a b : Fin m → ℂ) :
    herm H v (a + b) = herm H v a + herm H v b := by
  unfold herm
  rw [star_add, add_dotProduct]

lemma herm_inv {m : ℕ} {H g : Matrix (Fin m) (Fin m) ℂ} (hg : gᴴ * H * g = H) (v w : Fin m → ℂ) :
    herm H (g *ᵥ v) (g *ᵥ w) = herm H v w := by
  unfold herm
  rw [Matrix.star_mulVec, ← Matrix.dotProduct_mulVec, Matrix.mulVec_mulVec, Matrix.mulVec_mulVec]
  first | rw [hg]

lemma definite {k r : ℕ} {y z : Fin (2 * r + k + 1) → ℂ} (hy : perpX k r y) (hz : inWb k r z)
    (hT : 0 < Tz k r z) (h1 : herm (Hpk k r) y y = 0) (h2 : herm (Hpk k r) y z = 0) : inX k r y := by
  have hzp : perpX k r z := fun i hi => hz i (Or.inr hi)
  have hzL : z (Lk k r) ≠ 0 := by
    intro h0
    have hnn : 0 ≤ (herm (Hpk k r) z z).re := by rw [herm_self_re hzp h0]; exact sum_W_nonneg z
    unfold Tz at hT; linarith
  set c := y (Lk k r) / z (Lk k r) with hc
  have hwp : perpX k r (y - c • z) := fun i hi => by simp [hy i hi, hzp i hi]
  have hwL : (y - c • z) (Lk k r) = 0 := by
    rw [Pi.sub_apply, Pi.smul_apply, smul_eq_mul, hc, div_mul_cancel₀ _ hzL, sub_self]
  have hzy : herm (Hpk k r) z y = 0 := by rw [herm_conjW hy hzp, h2, star_zero]
  have hexp : herm (Hpk k r) (y - c • z) (y - c • z) = (Complex.normSq c : ℂ) * herm (Hpk k r) z z := by
    rw [herm_expand, h1, h2, hzy, Complex.star_def, Complex.mul_conj]; ring
  have hre : (herm (Hpk k r) (y - c • z) (y - c • z)).re = -(Complex.normSq c * Tz k r z) := by
    rw [hexp, Complex.re_ofReal_mul]; unfold Tz; ring
  have hnn : 0 ≤ (herm (Hpk k r) (y - c • z) (y - c • z)).re := by
    rw [herm_self_re hwp hwL]; exact sum_W_nonneg _
  have hc0 : Complex.normSq c = 0 := by
    by_contra hne
    have hpos : 0 < Complex.normSq c := lt_of_le_of_ne (Complex.normSq_nonneg c) (Ne.symm hne)
    have := mul_pos hpos hT
    linarith
  have hyL : y (Lk k r) = 0 := by
    have h0 := Complex.normSq_eq_zero.mp hc0
    rw [hc, div_eq_zero_iff] at h0
    exact h0.resolve_right hzL
  have hsum := herm_self_re hy hyL
  rw [h1, Complex.zero_re] at hsum
  intro i hi
  by_cases hik : r + k < i.val
  · exact hy i hik
  · have hall := (Finset.sum_eq_zero_iff_of_nonneg (fun j _ => by
      split_ifs <;> [exact Complex.normSq_nonneg _; exact le_refl _])).mp hsum.symm i (Finset.mem_univ _)
    rw [if_pos ⟨hi, by omega⟩] at hall
    exact Complex.normSq_eq_zero.mp hall

lemma key {k r : ℕ} {z : Fin (2 * r + k + 1) → ℂ} (hz : inWb k r z) (hT : 0 < Tz k r z)
    {g : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ} (hgU : gᴴ * Hpk k r * g = Hpk k r)
    (hperp : ∀ v, perpX k r v → perpX k r (g *ᵥ v)) (hgz : inX k r (g *ᵥ z - z)) :
    ∀ q : ℕ, ∀ v, perpX k r v → (g - 1) ^ q *ᵥ v = 0 → inX k r (g *ᵥ v - v) := by
  intro q
  induction q with
  | zero =>
    intro v _ hv0
    rw [pow_zero, Matrix.one_mulVec] at hv0
    subst hv0
    intro i _
    simp
  | succ q ih =>
    intro v hv hq
    have hv' : perpX k r (g *ᵥ v - v) := fun i hi => by
      simp only [Pi.sub_apply]
      rw [hperp v hv i hi, hv i hi, sub_zero]
    have hgv : (g - 1) *ᵥ v = g *ᵥ v - v := by rw [Matrix.sub_mulVec, Matrix.one_mulVec]
    have hq' : (g - 1) ^ q *ᵥ (g *ᵥ v - v) = 0 := by
      rw [← hgv, Matrix.mulVec_mulVec, ← pow_succ]
      exact hq
    have hx := ih (g *ᵥ v - v) hv' hq'
    set v' := g *ᵥ v - v with hv'def
    set x := g *ᵥ v' - v' with hxdef
    have hgv' : g *ᵥ v' = v' + x := by rw [hxdef]; abel
    have hgv2 : g *ᵥ v = v + v' := by rw [hv'def]; abel
    have e1 := herm_inv hgU v' v
    rw [hgv', hgv2, herm_add_left, herm_add_right, herm_add_right, herm_inX_perp hv hx,
      herm_inX_perp hv' hx] at e1
    have h1 : herm (Hpk k r) v' v' = 0 := by linear_combination e1
    have e2 := herm_inv hgU v z
    have hgz' : g *ᵥ z = z + (g *ᵥ z - z) := by abel
    rw [hgv2, hgz', herm_add_left, herm_add_right, herm_add_right, herm_perp_inX hv hgz,
      herm_perp_inX hv' hgz] at e2
    have h2 : herm (Hpk k r) v' z = 0 := by linear_combination e2
    exact definite hv' hz hT h1 h2

lemma m_perp {k r : ℕ} {m : Matrix (Fin (2 * r + k + 1)) (Fin (2 * r + k + 1)) ℂ}
    (hm : Formalism.QuantumDeterminants.WeylGroupFacts.col k r m) {v : Fin (2 * r + k + 1) → ℂ} (hv : perpX k r v) :
    inX k r (m *ᵥ v - v) := by
  intro i hi
  simp only [Pi.sub_apply, Matrix.mulVec, dotProduct]
  rw [Finset.sum_eq_single i (fun j _ hji => ?_) (fun h => absurd (Finset.mem_univ i) h), sub_eq_zero]
  · by_cases hik : i.val ≤ r + k
    · rw [hm i i hik (Or.inr hi), if_pos rfl, one_mul]
    · rw [hv i (by omega), mul_zero]
  · by_cases hjk : j.val ≤ r + k
    · rw [hm i j hjk (Or.inr hi), if_neg (Ne.symm hji), zero_mul]
    · rw [hv j (by omega), mul_zero]

lemma inX_mem {k r : ℕ} {x : Fin (2 * r + k + 1) → ℂ} (hx : inX k r x) : x ∈ Xsp k r := by
  have hx' : x = ∑ a : Fin r, x (eI k r a) • bvec (eI k r a) := by
    funext i
    rw [Finset.sum_apply]
    simp only [Pi.smul_apply, bvec, Pi.single_apply, smul_eq_mul, mul_ite, mul_one, mul_zero]
    by_cases hi : i.val < r
    · rw [Finset.sum_eq_single ⟨i.val, hi⟩]
      · have e : i = eI k r ⟨i.val, hi⟩ := Fin.ext rfl
        rw [if_pos e, ← e]
      · intro a _ ha
        rw [if_neg]
        intro h
        apply ha
        ext
        have := congrArg Fin.val h
        simp only [eI] at this
        simp only
        omega
      · intro h
        exact absurd (Finset.mem_univ _) h
    · rw [hx i (by omega)]
      symm
      apply Finset.sum_eq_zero
      intro a _
      rw [if_neg]
      intro h
      apply hi
      rw [h]
      exact a.2
  rw [hx']
  exact Submodule.sum_mem _ fun a _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨a, rfl⟩)

end PI.StabSplit.UnipW

namespace PI.StabSplit

open UnipW in
theorem nilpotent_orthogonal_complement : NPerp := by
  intro k r g hg v hv
  obtain ⟨_, h1, h2⟩ := hg
  have hcol : Formalism.QuantumDeterminants.WeylGroupFacts.col k r g := by
    intro i j hj hji
    by_cases hjr : j.val < r
    · have h3 := h1 ⟨j.val, hjr⟩ i (by show j.val ≤ i.val; omega)
      have e : eI k r ⟨j.val, hjr⟩ = j := Fin.ext rfl
      rw [e] at h3
      exact h3
    · exact h2 i j (by omega) hj (by omega)
  have hperp : UnipW.perpX k r v := by
    intro i hi
    have hir : 2 * r + k - i.val < r := by omega
    have h4 := hv ⟨2 * r + k - i.val, hir⟩
    rw [herm_coord, Finset.sum_eq_single (eI k r ⟨2 * r + k - i.val, hir⟩)] at h4
    · have hs : sig k r (eI k r ⟨2 * r + k - i.val, hir⟩) = i := by
        have hc : (eI k r ⟨2 * r + k - i.val, hir⟩).val < r ∨
            r + k < (eI k r ⟨2 * r + k - i.val, hir⟩).val := Or.inl hir
        unfold sig
        rw [if_pos hc]
        apply Fin.ext
        show 2 * r + k - (2 * r + k - i.val) = i.val
        omega
      have hsg : sgn k r (eI k r ⟨2 * r + k - i.val, hir⟩) = 1 := by
        have hc : ¬ (eI k r ⟨2 * r + k - i.val, hir⟩).val = r + k := by
          show ¬ 2 * r + k - i.val = r + k
          omega
        unfold sgn
        rw [if_neg hc]
      rw [hs, hsg] at h4
      simpa [bvec] using h4
    · intro j _ hj
      simp [bvec, hj]
    · intro h
      exact absurd (Finset.mem_univ _) h
  have h5 := m_perp hcol hperp
  rw [Matrix.sub_mulVec, Matrix.one_mulVec]
  exact inX_mem h5

open UnipW in
theorem unipotent_nilpotent_radical : UnipN := by
  intro k r z hzs g hg p hp
  have hz := hzs.1
  have hT := hzs.2
  have hgU : gᴴ * Hpk k r * g = Hpk k r := Sset_UH hg
  obtain ⟨u, hu, m, hm, rfl⟩ := hg
  have hb := Formalism.QuantumDeterminants.WeylGroupFacts.uw_block hu
  have hmc := ((Formalism.QuantumDeterminants.WeylGroupFacts.nset_iff m).1 hm).2
  have hzp : perpX k r z := fun i hi => hz i (Or.inr hi)
  have row_out : ∀ i j, (i.val < r ∨ r + k < i.val) → (u * m) i j = m i j := by
    intro i j hi
    rw [Matrix.mul_apply, Finset.sum_eq_single i]
    · rw [hb.2 i i hi, if_pos rfl, one_mul]
    · intro l _ hl; rw [hb.2 i l hi, if_neg (Ne.symm hl), zero_mul]
    · intro h; exact absurd (Finset.mem_univ _) h
  have xcol : ∀ i j : Fin (2 * r + k + 1), j.val < r → j.val ≤ i.val →
      (u * m) i j = if i = j then 1 else 0 := by
    intro i j hj hij
    by_cases hi : i.val < r ∨ r + k < i.val
    · rw [row_out i j hi]; exact hmc i j (by omega) (Or.inl hij)
    · have hne : i ≠ j := by intro h; subst h; omega
      rw [if_neg hne, Matrix.mul_apply]
      refine Finset.sum_eq_zero (fun l _ => ?_)
      by_cases hl : l.val < r ∨ r + k < l.val
      · rw [hb.1 i l hl, if_neg (by intro h; subst h; omega), zero_mul]
      · rw [hmc l j (by omega) (Or.inr (by omega)), if_neg (by intro h; subst h; omega), mul_zero]
  have u_fix : ∀ x, inX k r x → u *ᵥ x = x := by
    intro x hx
    ext i
    simp only [mulVec, dotProduct]
    rw [Finset.sum_eq_single i]
    · by_cases hi : i.val < r
      · rw [hb.1 i i (Or.inl hi), if_pos rfl, one_mul]
      · rw [hx i (by omega), mul_zero]
    · intro l _ hl
      by_cases hlr : l.val < r
      · rw [hb.1 i l (Or.inl hlr), if_neg (Ne.symm hl), zero_mul]
      · rw [hx l (by omega), mul_zero]
    · intro h; exact absurd (Finset.mem_univ _) h
  have hperp : ∀ v, perpX k r v → perpX k r ((u * m) *ᵥ v) := by
    intro v hv i hi
    have h1 : ((u * m) *ᵥ v) i = (m *ᵥ v) i := by
      simp only [mulVec, dotProduct]
      exact Finset.sum_congr rfl (fun j _ => by rw [row_out i j (Or.inr hi)])
    have h2 := m_perp hmc hv i (by omega)
    rw [Pi.sub_apply, sub_eq_zero] at h2
    rw [h1, h2, hv i hi]
  have hgz : inX k r ((u * m) *ᵥ z - z) := by
    have hx := m_perp hmc hzp
    have e : (u * m) *ᵥ z - z = m *ᵥ z - z := by
      rw [← mulVec_mulVec]
      have e2 : m *ᵥ z = z + (m *ᵥ z - z) := by abel
      rw [e2, mulVec_add, hu.2.2, u_fix _ hx]
    rw [e]; exact hx
  have hkey := key hz hT hgU hperp hgz p
  refine (Formalism.QuantumDeterminants.WeylGroupFacts.nset_iff _).2 ⟨hgU, ?_⟩
  intro i j hj hij
  by_cases hjr : j.val < r
  · exact xcol i j hjr (by omega)
  · have hir : r ≤ i.val := by omega
    have hbp : perpX k r (bvec j) := by
      intro l hl
      simp only [bvec, Pi.single_apply]
      rw [if_neg]; intro h; subst h; omega
    have h := hkey (bvec j) hbp (by rw [hp, zero_mulVec]) i hir
    rw [Pi.sub_apply, sub_eq_zero, mulVec_bvec] at h
    have h' : (u * m) i j = bvec j i := h
    rw [h']; simp [bvec, Pi.single_apply]

end PI.StabSplit
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerFlagSplitting.NilpotentOrthogonalComplement =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerFlagSplitting.UnitR =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerFlagSplitting.UnitR", "h": "module\n\npublic import Mathlib.Algebra.Star.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.StabSplit.Alg

variable {R : Type*} [Ring R]

theorem decomp (h P : R) (hPP : P * P = P) (hU : P * h * (1 - P) = 0) :
    (h * P + (1 - P)) * (h * (1 - P) + P) = h := by
  have r : P * P - P = 0 := sub_eq_zero.mpr hPP
  have e : (h * P + (1 - P)) * (h * (1 - P) + P) - h =
      h * (P * h * (1 - P)) + h * (P * P - P) - P * h * (1 - P) - (P * P - P) := by
    noncomm_ring
  have z : h * (P * h * (1 - P)) + h * (P * P - P) - P * h * (1 - P) - (P * P - P) = 0 := by
    simp only [hU, r, mul_zero, add_zero, sub_zero]
  exact sub_eq_zero.mp (e.trans z)

theorem uniq (h P ρ κ : R) (hρκ : ρ * κ = h) (hρ : ρ * (1 - P) = 1 - P) (hκ : κ * P = P)
    (hκU : P * κ * (1 - P) = 0) :
    ρ = h * P + (1 - P) ∧ κ = h * (1 - P) + P := by
  have a : ρ * κ - h = 0 := sub_eq_zero.mpr hρκ
  have b : ρ * (1 - P) - (1 - P) = 0 := sub_eq_zero.mpr hρ
  have c : κ * P - P = 0 := sub_eq_zero.mpr hκ
  constructor
  · have e : ρ - (h * P + (1 - P)) = (ρ * κ - h) * P - ρ * (κ * P - P) + (ρ * (1 - P) - (1 - P)) := by
      noncomm_ring
    have z : (ρ * κ - h) * P - ρ * (κ * P - P) + (ρ * (1 - P) - (1 - P)) = 0 := by
      simp only [a, b, c, mul_zero, zero_mul, add_zero, sub_zero]
    exact sub_eq_zero.mp (e.trans z)
  · have e : κ - (h * (1 - P) + P) = (κ * P - P) + P * κ * (1 - P) + (ρ * κ - h) * (1 - P)
        - ρ * (P * κ * (1 - P)) - (ρ * (1 - P) - (1 - P)) * κ * (1 - P) := by
      noncomm_ring
    have z : (κ * P - P) + P * κ * (1 - P) + (ρ * κ - h) * (1 - P)
        - ρ * (P * κ * (1 - P)) - (ρ * (1 - P) - (1 - P)) * κ * (1 - P) = 0 := by
      simp only [a, b, c, hκU, mul_zero, zero_mul, add_zero, sub_zero]
    exact sub_eq_zero.mp (e.trans z)

theorem comm (P ρ κ : R) (hρ : ρ * (1 - P) = 1 - P) (hκ : κ * P = P)
    (hρM : (1 - P) * ρ * P = 0) (hκU : P * κ * (1 - P) = 0) : ρ * κ = κ * ρ := by
  have b : ρ * (1 - P) - (1 - P) = 0 := sub_eq_zero.mpr hρ
  have c : κ * P - P = 0 := sub_eq_zero.mpr hκ
  have e : ρ * κ - κ * ρ = ρ * (κ * P - P) + ρ * (P * κ * (1 - P)) - P * κ * (1 - P)
      + (ρ * (1 - P) - (1 - P)) * κ * (1 - P) + (1 - P) * ρ * P - (κ * P - P) * ρ * P
      - κ * ((1 - P) * ρ * P) - κ * (ρ * (1 - P) - (1 - P)) := by
    noncomm_ring
  have z : ρ * (κ * P - P) + ρ * (P * κ * (1 - P)) - P * κ * (1 - P)
      + (ρ * (1 - P) - (1 - P)) * κ * (1 - P) + (1 - P) * ρ * P - (κ * P - P) * ρ * P
      - κ * ((1 - P) * ρ * P) - κ * (ρ * (1 - P) - (1 - P)) = 0 := by
    simp only [b, c, hρM, hκU, mul_zero, zero_mul, add_zero, sub_zero]
  exact sub_eq_zero.mp (e.trans z)

theorem nilp (P g : R) (m : ℕ) (hPP : P * P = P) (hgQ : (g - 1) * (1 - P) = 0)
    (hgM : (1 - P) * g * P = 0) (hm : (g - 1) ^ m * P = 0) : (g - 1) ^ (m + 1) = 0 := by
  have r : P * P - P = 0 := sub_eq_zero.mpr hPP
  have h1 : (g - 1) * P = P * ((g - 1) * P) := by
    have e : (g - 1) * P - P * ((g - 1) * P) = (1 - P) * g * P + (P * P - P) := by noncomm_ring
    rw [hgM, r, add_zero] at e
    exact sub_eq_zero.mp e
  have h2 : g - 1 = (g - 1) * P := by
    have e : (g - 1) - (g - 1) * P = (g - 1) * (1 - P) := by noncomm_ring
    rw [hgQ] at e
    exact sub_eq_zero.mp e
  calc (g - 1) ^ (m + 1) = (g - 1) ^ m * (g - 1) := pow_succ _ _
    _ = (g - 1) ^ m * ((g - 1) * P) := by rw [← h2]
    _ = (g - 1) ^ m * (P * ((g - 1) * P)) := by rw [← h1]
    _ = ((g - 1) ^ m * P) * ((g - 1) * P) := (mul_assoc _ _ _).symm
    _ = 0 := by rw [hm, zero_mul]

variable [StarRing R]

theorem unitK (H P h : R) (hH : star H = H) (hPH : star P * H = H * P) (hPP : P * P = P)
    (hh : star h * H * h = H) (hU : P * h * (1 - P) = 0) :
    star (h * (1 - P) + P) * H * (h * (1 - P) + P) = H := by
  have r1 : star P * H - H * P = 0 := sub_eq_zero.mpr hPH
  have r2 : P * P - P = 0 := sub_eq_zero.mpr hPP
  have r3 : star h * H * h - H = 0 := sub_eq_zero.mpr hh
  have r5 : (1 - star P) * (star h * star P) = 0 := by
    simpa only [star_mul, star_sub, star_one, star_zero] using congrArg star hU
  have e : star (h * (1 - P) + P) * H * (h * (1 - P) + P) - H =
      H * (P * P - P) + H * (P * P - P) - (star P * H - H * P) * (1 - P)
      + (1 - star P) * (star h * H * h - H) * (1 - P) + (1 - star P) * (star h * star P) * H
      - (1 - star P) * star h * (star P * H - H * P) + H * (P * h * (1 - P))
      + (star P * H - H * P) * h * (1 - P) + (star P * H - H * P) * P := by
    simp only [star_add, star_mul, star_sub, star_one]
    noncomm_ring
  have z : H * (P * P - P) + H * (P * P - P) - (star P * H - H * P) * (1 - P)
      + (1 - star P) * (star h * H * h - H) * (1 - P) + (1 - star P) * (star h * star P) * H
      - (1 - star P) * star h * (star P * H - H * P) + H * (P * h * (1 - P))
      + (star P * H - H * P) * h * (1 - P) + (star P * H - H * P) * P = 0 := by
    simp only [r1, r2, r3, r5, hU, mul_zero, zero_mul, add_zero, sub_zero]
  exact sub_eq_zero.mp (e.trans z)

end PI.StabSplit.Alg
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerFlagSplitting.UnitR =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerFlagSplitting.StabilizerSplittingOfParts =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerFlagSplitting.StabilizerSplittingOfParts", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerFlagSplitting.MulVecColOfMul\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerFlagSplitting.SubFlag\nimport Formalism.FormalDegreeBessel.FinalG\nimport Formalism.FormalDegreeBessel.FormalDegreeRatio.GBasic\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerFlagSplitting.UnitR\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.CStarMatrix\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.C2

noncomputable section

namespace PI.StabSplit

theorem stabilizer_splitting_of_parts (hFS : FixSub) (hSF : SubFlag) (hUN : UnipN) (hNP : NPerp) : C1ii := by
  intro k r z z' γ hs hp
  have hz : inWb k r z := hs.2.1.1
  have hz' : inWb k r z' := hs.2.2.1
  have hγ : γ ∈ B.GV k r := hp.1
  have hγu : IsUnit γ.det := GV_unit k r hγ
  have hγ1 : γ⁻¹ * γ = 1 := nonsing_inv_mul γ hγu
  have hγ2 : γ * γ⁻¹ = 1 := mul_nonsing_inv γ hγu
  have hG : IsUnit ((Ym k r z z' γ)ᴴ * Hpk k r * Ym k r z z' γ).det := gram_unit k r z z' γ hs hp
  have hPY : Pm k r z z' γ * Ym k r z z' γ = Ym k r z z' γ := Proj.prj_Y _ _ hG
  have hPP : Pm k r z z' γ * Pm k r z z' γ = Pm k r z z' γ := Proj.prj_sq _ _ hG
  have hHh : (Hpk k r)ᴴ = Hpk k r := GBasic.Hpk_herm k r
  have hPH : (Pm k r z z' γ)ᴴ * Hpk k r = Hpk k r * Pm k r z z' γ := Proj.prj_star _ _ hHh
  have hLQ : ((Ym k r z z' γ)ᴴ * Hpk k r) * (1 - Pm k r z z' γ) = 0 := Proj.L_one_sub _ _ hG
  set Y := Ym k r z z' γ with hY
  set P := Pm k r z z' γ with hP

  have UW1 : ∀ w, (1 : B.Mat k r) ∈ UWset k r w := fun w => ⟨GV_one k r, fun a => by simp, by simp⟩
  have NS : ∀ w, ∀ g ∈ Nset k r, g ∈ Sset k r w := fun w g hg => ⟨1, UW1 w, g, hg, by simp⟩
  have Hmul : ∀ g ∈ Hst k r z z' γ, ∀ h ∈ Hst k r z z' γ, g * h ∈ Hst k r z z' γ := by
    rintro g ⟨hgS, s, hs1, rfl⟩ h ⟨hhS, t, ht1, rfl⟩
    refine ⟨(sGroup k r z hz).2.1 _ hgS _ hhS, s * t, (sGroup k r z' hz').2.1 _ hs1 _ ht1, ?_⟩
    calc γ * s * γ⁻¹ * (γ * t * γ⁻¹) = γ * s * (γ⁻¹ * γ) * t * γ⁻¹ := by noncomm_ring
      _ = γ * (s * t) * γ⁻¹ := by rw [hγ1]; noncomm_ring
  have Hinv : ∀ g ∈ Hst k r z z' γ, g⁻¹ ∈ Hst k r z z' γ := by
    rintro g ⟨hgS, s, hs1, rfl⟩
    refine ⟨(sGroup k r z hz).2.2 _ hgS, s⁻¹, (sGroup k r z' hz').2.2 _ hs1, ?_⟩
    rw [Matrix.mul_inv_rev, Matrix.mul_inv_rev, nonsing_inv_nonsing_inv γ hγu, Matrix.mul_assoc]
  have H_GV : ∀ g ∈ Hst k r z z' γ, g ∈ B.GV k r := fun g hg => (hSF k r z hz hg.1).1

  have spanF : ∀ a, flagSpan k r z a ≤ Submodule.span ℂ (Set.range (gramVec k r z z' γ)) := by
    intro a; rw [flagSpan, Submodule.span_le]; rintro _ ⟨b, rfl⟩
    exact Submodule.subset_span ⟨Sum.inl b.1, rfl⟩
  have spanF' : ∀ b, flagSpan k r z' b ≤
      (Submodule.span ℂ (Set.range (gramVec k r z z' γ))).comap (Matrix.mulVecLin γ) := by
    intro b; rw [flagSpan, Submodule.span_le]; rintro _ ⟨c, rfl⟩
    exact Submodule.mem_comap.2 (Submodule.subset_span ⟨Sum.inr c.1, rfl⟩)
  have Hcol : ∀ g ∈ Hst k r z z' γ, ∀ j,
      g *ᵥ gramVec k r z z' γ j ∈ Submodule.span ℂ (Set.range (gramVec k r z z' γ)) := by
    rintro g ⟨hgS, s, hs1, hgs⟩ j
    have hF := hSF k r z hz hgS
    have hF' := hSF k r z' hz' hs1
    rcases j with a | b
    · have h1 := spanF a (hF.2 a)
      have h2 : fvec k r z a ∈ Submodule.span ℂ (Set.range (gramVec k r z z' γ)) :=
        Submodule.subset_span ⟨Sum.inl a, rfl⟩
      have e : g *ᵥ gramVec k r z z' γ (Sum.inl a) = (g *ᵥ fvec k r z a - fvec k r z a) + fvec k r z a := by
        rw [sub_add_cancel]; rfl
      rw [e]; exact Submodule.add_mem _ h1 h2
    · have h1 : Matrix.mulVecLin γ (s *ᵥ fvec k r z' b - fvec k r z' b) ∈
          Submodule.span ℂ (Set.range (gramVec k r z z' γ)) := spanF' b (hF'.2 b)
      have h2 : γ *ᵥ fvec k r z' b ∈ Submodule.span ℂ (Set.range (gramVec k r z z' γ)) :=
        Submodule.subset_span ⟨Sum.inr b, rfl⟩
      rw [Matrix.mulVecLin_apply] at h1
      have e : g *ᵥ gramVec k r z z' γ (Sum.inr b) =
          γ *ᵥ (s *ᵥ fvec k r z' b - fvec k r z' b) + γ *ᵥ fvec k r z' b := by
        rw [← mulVec_add, sub_add_cancel, hgs]
        show (γ * s * γ⁻¹) *ᵥ (γ *ᵥ fvec k r z' b) = γ *ᵥ (s *ᵥ fvec k r z' b)
        rw [mulVec_mulVec, mulVec_mulVec, Matrix.mul_assoc, hγ1, Matrix.mul_one]
      rw [e]; exact Submodule.add_mem _ h1 h2
  have HC : ∀ g ∈ Hst k r z z' γ, ∃ C, g * Y = Y * C := by
    intro g hg
    refine Proj.exists_C Y (g * Y) (fun j => ?_)
    have e : (fun i => (g * Y) i j) = g *ᵥ gramVec k r z z' γ j := by
      ext i; simp [hY, Ym, Matrix.mul_apply, mulVec, dotProduct]
    rw [e]; exact Hcol g hg j
  have HM : ∀ g ∈ Hst k r z z' γ, (1 - P) * g * P = 0 := fun g hg => by
    obtain ⟨C, hC⟩ := HC g hg; exact Proj.presM _ Y hG g C hC
  have HU : ∀ g ∈ Hst k r z z' γ, P * g * (1 - P) = 0 := fun g hg => by
    obtain ⟨C, hC⟩ := HC g⁻¹ (Hinv g hg)
    exact Proj.presU _ Y hG g (H_GV g hg) (GV_unit k r (H_GV g hg)) C hC

  have U_P : ∀ v ∈ Uperp k r z z' γ, P *ᵥ v = 0 := fun v hv =>
    Proj.prj_mulVec_of_L _ Y ((mem_U_iff k r z z' γ v).1 hv)
  have Q_U : ∀ j, (fun i => (1 - P) i j) ∈ Uperp k r z z' γ := by
    intro j; rw [mem_U_iff]; ext l
    have := congrFun (congrFun hLQ l) j
    simpa [mulVec, dotProduct, Matrix.mul_apply] using this
  have fixU : ∀ g : B.Mat k r, (∀ v ∈ Uperp k r z z' γ, g *ᵥ v = v) → g * (1 - P) = 1 - P :=
    fun g hg => mul_eq_of_cols k r g (1 - P) (fun j => hg _ (Q_U j))
  have fixM : ∀ g : B.Mat k r, g * Y = Y → g * P = P := by
    intro g hg
    simp only [hP, Pm, Proj.prj, ← Matrix.mul_assoc]
    rw [hg]

  have hKH : KU k r z z' γ ⊆ Hst k r z z' γ := by
    rintro κ ⟨hκG, hκf⟩
    refine ⟨hFS k r z hz ⟨hκG, fun a => hκf (Sum.inl a)⟩, γ⁻¹ * κ * γ,
      hFS k r z' hz' ⟨GV_mul k r (GV_mul k r (GV_inv k r hγ) hκG) hγ, fun b => ?_⟩, ?_⟩
    · have h1 : κ *ᵥ (γ *ᵥ fvec k r z' b) = γ *ᵥ fvec k r z' b := hκf (Sum.inr b)
      rw [← mulVec_mulVec, ← mulVec_mulVec, h1, mulVec_mulVec, hγ1, one_mulVec]
    · calc κ = (γ * γ⁻¹) * κ * (γ * γ⁻¹) := by rw [hγ2]; simp
        _ = γ * (γ⁻¹ * κ * γ) * γ⁻¹ := by noncomm_ring

  have Rnil : ∀ g ∈ Rst k r z z' γ, (g - 1) ^ (r + 2) = 0 := by
    rintro g ⟨hgH, hgU⟩
    obtain ⟨hgS, s, hs1, hgs⟩ := hgH
    have hF := hSF k r z hz hgS
    have hF' := hSF k r z' hz' hs1
    have n1 : ∀ a, ((g - 1) ^ (r + 1)) *ᵥ fvec k r z a = 0 := flag_nilp_all g (fvec k r z) hF.2
    have n2 : ∀ b, ((g - 1) ^ (r + 1)) *ᵥ (γ *ᵥ fvec k r z' b) = 0 := by
      refine flag_nilp_all g (fun b => γ *ᵥ fvec k r z' b) (fun b => ?_)
      have e : g *ᵥ (γ *ᵥ fvec k r z' b) - γ *ᵥ fvec k r z' b =
          Matrix.mulVecLin γ (s *ᵥ fvec k r z' b - fvec k r z' b) := by
        rw [Matrix.mulVecLin_apply, mulVec_sub, hgs, mulVec_mulVec, mulVec_mulVec, Matrix.mul_assoc,
          hγ1, Matrix.mul_one]
      rw [e]
      have hle : flagSpan k r z' b ≤ (Submodule.span ℂ (Set.range fun c : {c : Fin (r + 1) // c < b} =>
          γ *ᵥ fvec k r z' c.1)).comap (Matrix.mulVecLin γ) := by
        rw [flagSpan, Submodule.span_le]; rintro _ ⟨c, rfl⟩
        exact Submodule.mem_comap.2 (Submodule.subset_span ⟨c, rfl⟩)
      exact hle (hF'.2 b)
    have hY0 : (g - 1) ^ (r + 1) * Y = 0 := by
      ext i j
      rcases j with a | b
      · have := congrFun (n1 a) i
        simpa [hY, Ym, Matrix.mul_apply, mulVec, dotProduct, gramVec] using this
      · have := congrFun (n2 b) i
        simpa [hY, Ym, Matrix.mul_apply, mulVec, dotProduct, gramVec] using this
    have hP0 : (g - 1) ^ (r + 1) * P = 0 := by
      simp only [hP, Pm, Proj.prj, ← Matrix.mul_assoc]
      rw [← hY, hY0]; simp
    have hQ : (g - 1) * (1 - P) = 0 := by
      rw [Matrix.sub_mul, fixU g hgU, Matrix.one_mul, sub_self]
    exact Alg.nilp P g (r + 1) hPP hQ (HM g ⟨hgS, s, hs1, hgs⟩) hP0

  have hli : LinearIndependent ℂ (gramVec k r z z' γ) := by
    rw [Fintype.linearIndependent_iff]; intro c hc
    have h0 : c = 0 := Proj.Y_inj _ Y hG c (by rw [hY, Ym_mulVec]; exact hc)
    intro i; rw [h0]; rfl
  have hdis := hli.disjoint_span_image Set.isCompl_range_inl_range_inr.disjoint
  have hXl : Xsp k r ≤ Submodule.span ℂ (gramVec k r z z' γ '' Set.range Sum.inl) := by
    rw [Xsp, Submodule.span_le]; rintro _ ⟨a, rfl⟩
    exact Submodule.subset_span ⟨Sum.inl ⟨a.val, by omega⟩, ⟨_, rfl⟩, fvec_lt k r z a⟩
  have hXr : Xsp k r ≤ (Submodule.span ℂ (gramVec k r z z' γ '' Set.range Sum.inr)).comap
      (Matrix.mulVecLin γ) := by
    rw [Xsp, Submodule.span_le]; rintro _ ⟨a, rfl⟩
    refine Submodule.mem_comap.2 (Submodule.subset_span ⟨Sum.inr ⟨a.val, by omega⟩, ⟨_, rfl⟩, ?_⟩)
    show γ *ᵥ fvec k r z' ⟨a.val, _⟩ = _
    rw [fvec_lt k r z' a]; rfl
  have hR : Rst k r z z' γ = {g | g ∈ Nset k r ∧ ∃ n ∈ Nset k r, g = γ * n * γ⁻¹} := by
    ext g; constructor
    · intro hg
      have hn := Rnil g hg
      obtain ⟨⟨hgS, s, hs1, hgs⟩, -⟩ := hg
      refine ⟨hUN k r z hs.2.1 g hgS (r + 2) hn, s, hUN k r z' hs.2.2 s hs1 (r + 2) ?_, hgs⟩
      have hsg : s = γ⁻¹ * g * γ := by
        rw [hgs]
        calc s = (γ⁻¹ * γ) * s * (γ⁻¹ * γ) := by rw [hγ1]; simp
          _ = γ⁻¹ * (γ * s * γ⁻¹) * γ := by noncomm_ring
      have e : s - 1 = γ⁻¹ * (g - 1) * γ := by
        calc s - 1 = γ⁻¹ * g * γ - γ⁻¹ * γ := by rw [hγ1, ← hsg]
          _ = γ⁻¹ * (g - 1) * γ := by noncomm_ring
      rw [e]
      have hp : ∀ n : ℕ, (γ⁻¹ * (g - 1) * γ) ^ n = γ⁻¹ * (g - 1) ^ n * γ := by
        intro n
        induction n with
        | zero => simp [hγ1]
        | succ n ih =>
          rw [pow_succ, ih, pow_succ]
          calc
            γ⁻¹ * (g - 1) ^ n * γ * (γ⁻¹ * (g - 1) * γ) =
                γ⁻¹ * ((g - 1) ^ n * (γ * γ⁻¹)) * (g - 1) * γ := by noncomm_ring
            _ = γ⁻¹ * ((g - 1) ^ n * (g - 1)) * γ := by rw [hγ2]; noncomm_ring
            _ = γ⁻¹ * (g - 1) ^ (n + 1) * γ := by rw [pow_succ]
      rw [hp (r + 2), hn]
      simp
    · rintro ⟨hgN, n, hnN, hgn⟩
      refine ⟨⟨NS z g hgN, n, NS z' n hnN, hgn⟩, fun v hv => ?_⟩
      have hL : ∀ j, herm (Hpk k r) v (gramVec k r z z' γ j) = 0 := fun j => by
        rw [← L_mulVec, (mem_U_iff k r z z' γ v).1 hv]; rfl
      have h1 : (g - 1) *ᵥ v ∈ Xsp k r := hNP k r g hgN v (fun a => by
        have := hL (Sum.inl ⟨a.val, by omega⟩)
        rw [← fvec_lt k r z a]; exact this)
      have h2 : (n - 1) *ᵥ (γ⁻¹ *ᵥ v) ∈ Xsp k r := hNP k r n hnN _ (fun a => by
        have := hL (Sum.inr ⟨a.val, by omega⟩)
        rw [← herm_unit k r hγ, mulVec_mulVec, hγ2, one_mulVec, ← fvec_lt k r z' a]
        exact this)
      have e : (g - 1) *ᵥ v = Matrix.mulVecLin γ ((n - 1) *ᵥ (γ⁻¹ *ᵥ v)) := by
        rw [Matrix.mulVecLin_apply, mulVec_mulVec, mulVec_mulVec, hgn]
        congr 1
        calc γ * n * γ⁻¹ - 1 = γ * n * γ⁻¹ - γ * γ⁻¹ := by rw [hγ2]
          _ = γ * (n - 1) * γ⁻¹ := by noncomm_ring
      have m1 := hXl h1
      have m2 : (g - 1) *ᵥ v ∈ Submodule.span ℂ (gramVec k r z z' γ '' Set.range Sum.inr) := by
        rw [e]; exact hXr h2
      have h0 := Submodule.disjoint_def.1 hdis _ m1 m2
      have : g *ᵥ v - v = 0 := by rw [← h0, sub_mulVec, one_mulVec]
      exact sub_eq_zero.1 this

  have hc : ∀ h ∈ Hst k r z z' γ, ∃! p : B.Mat k r × B.Mat k r,
      p.1 ∈ Rst k r z z' γ ∧ p.2 ∈ KU k r z z' γ ∧ h = p.1 * p.2 := by
    intro h hh
    have hhG := H_GV h hh
    have hU := HU h hh
    have hκG : h * (1 - P) + P ∈ B.GV k r := Alg.unitK (Hpk k r) P h hHh hPH hPP hhG hU
    have hκY : (h * (1 - P) + P) * Y = Y := by
      rw [Matrix.add_mul, Matrix.mul_assoc, Matrix.sub_mul, Matrix.one_mul, hPY, sub_self,
        Matrix.mul_zero, zero_add]
    have hκK : h * (1 - P) + P ∈ KU k r z z' γ := ⟨hκG, fun i => mulVec_col_of_mul k r _ Y hκY i⟩
    have hdec : (h * P + (1 - P)) * (h * (1 - P) + P) = h := Alg.decomp h P hPP hU
    have hκu : IsUnit (h * (1 - P) + P).det := GV_unit k r hκG
    have hρeq : h * P + (1 - P) = h * (h * (1 - P) + P)⁻¹ := by
      calc h * P + (1 - P) = (h * P + (1 - P)) * ((h * (1 - P) + P) * (h * (1 - P) + P)⁻¹) := by
            rw [mul_nonsing_inv _ hκu, Matrix.mul_one]
        _ = h * (h * (1 - P) + P)⁻¹ := by rw [← Matrix.mul_assoc, hdec]
    have hρH : h * P + (1 - P) ∈ Hst k r z z' γ := by
      rw [hρeq]; exact Hmul h hh _ (Hinv _ (hKH hκK))
    have hρR : h * P + (1 - P) ∈ Rst k r z z' γ := ⟨hρH, fun v hv => by
      rw [add_mulVec, ← mulVec_mulVec, U_P v hv, mulVec_zero, zero_add, sub_mulVec, one_mulVec,
        U_P v hv, sub_zero]⟩
    refine ⟨(h * P + (1 - P), h * (1 - P) + P), ⟨hρR, hκK, hdec.symm⟩, ?_⟩
    rintro ⟨ρ₁, κ₁⟩ ⟨hρ₁, hκ₁, h₁⟩
    have u := Alg.uniq h P ρ₁ κ₁ h₁.symm (fixU ρ₁ hρ₁.2)
      (fixM κ₁ (mul_eq_of_cols k r κ₁ Y hκ₁.2)) (HU κ₁ (hKH hκ₁))
    exact Prod.ext u.1 u.2

  have hd : ∀ ρ ∈ Rst k r z z' γ, ∀ κ ∈ KU k r z z' γ, ρ * κ = κ * ρ := fun ρ hρ κ hκ =>
    Alg.comm P ρ κ (fixU ρ hρ.2) (fixM κ (mul_eq_of_cols k r κ Y hκ.2)) (HM ρ hρ.1) (HU κ (hKH hκ))

  have he : ∀ ρ ∈ Rst k r z z' γ, (ρ - 1) ^ (2 * r + k + 1) = 0 := fun ρ hρ => by
    have e : r + 2 ≤ 2 * r + k + 1 := by have := hs.1; omega
    exact pow_eq_zero_of_le e (Rnil ρ hρ)
  exact ⟨hKH, hR, hc, hd, he⟩

end PI.StabSplit
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerFlagSplitting.StabilizerSplittingOfParts =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.StabilizerSplit =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.StabilizerSplit", "h": "module\n\npublic import Formalism.HermitianCurvature.FiniteOrderIntersectionInSmooth\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerFlagSplitting.FixFlag\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerFlagSplitting.FixSub\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerFlagSplitting.NilpotentOrthogonalComplement\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerFlagSplitting.StabilizerSplittingOfParts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem Formalism.FourierDecayAlt.P.stabilizer_split : Formalism.FourierDecayAlt.C2.C1ii :=
  PI.StabSplit.stabilizer_splitting_of_parts PI.StabSplit.fixed_point_subgroup PI.StabSplit.stabilizer_subgroup_flag
    PI.StabSplit.unipotent_nilpotent_radical PI.StabSplit.nilpotent_orthogonal_complement
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.StabilizerSplit =====
